<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d018f155-a8e1-4632-87ac-0cbc89a1f1c2(richediting.lang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables" version="0" />
    <use id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="mps.lang.meta.editor" version="-1" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.interfacepart)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
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
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables">
      <concept id="3981577588227981882" name="de.slisson.mps.tables.structure.CellCreateOperation" flags="ng" index="2CJim2">
        <child id="3981577588228006890" name="editor" index="2CJshi" />
        <child id="3981577588228006886" name="contextNode" index="2CJshu" />
      </concept>
      <concept id="3981577588228006907" name="de.slisson.mps.tables.structure.CellCreateOperationInlineEditor" flags="ig" index="2CJsh3" />
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
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
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
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
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
        <property id="2423417345669755629" name="whichError" index="1eyWvh" />
      </concept>
    </language>
    <language id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="mps.lang.meta.editor">
      <concept id="5470706472885221121" name="mps.lang.meta.editor.structure.CellModel_Syncronizer" flags="ng" index="paMQc">
        <child id="5470706472885240693" name="cellToSyncronize" index="paDBS" />
      </concept>
      <concept id="5470706472879246300" name="mps.lang.meta.editor.structure.CellModel_CustomSyncronized" flags="sg" stub="5470706472879246460" index="pzx5h" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="5jb5jNC4ggq">
    <property role="3GE5qa" value="fbtype.basic.rich" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="2aJ2om" id="5jb5jNC4ggs" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="5jb5jNC4gBk" role="2wV5jI">
      <node concept="2iRkQZ" id="5jb5jNC4gBl" role="2iSdaV" />
      <node concept="paMQc" id="5jb5jNC4gBm" role="3EZMnx">
        <node concept="3EZMnI" id="5jb5jNC4gBn" role="paDBS">
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
      </node>
      <node concept="3F0ifn" id="5jb5jNC4gBv" role="3EZMnx">
        <node concept="VPM3Z" id="5jb5jNC4gBw" role="3F10Kt" />
      </node>
      <node concept="paMQc" id="5jb5jNC4gBx" role="3EZMnx">
        <node concept="PMmxH" id="5jb5jNC4gBy" role="paDBS">
          <ref role="PMmxG" node="5jb5jNC4a_Z" resolve="DeclarationWithInterfaceAndAdapters_InterfacePart" />
        </node>
      </node>
      <node concept="3F0ifn" id="5jb5jNC4gBz" role="3EZMnx" />
      <node concept="3F0ifn" id="5jb5jNC4gB$" role="3EZMnx">
        <property role="3F0ifm" value="ECC:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="pzx5h" id="5jb5jNC4gB_" role="3EZMnx">
        <node concept="3VJUX4" id="5jb5jNC4gBA" role="3YsKMw">
          <node concept="3clFbS" id="5jb5jNC4gBB" role="2VODD2">
            <node concept="3clFbF" id="5jb5jNC4gBC" role="3cqZAp">
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
                        <node concept="SfApY" id="5jb5jNC4gBN" role="3cqZAp">
                          <node concept="3clFbS" id="5jb5jNC4gBO" role="SfCbr">
                            <node concept="3cpWs8" id="5jb5jNC4gBP" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gBQ" role="3cpWs9">
                                <property role="TrG5h" value="scene" />
                                <node concept="3uibUv" id="5jb5jNC4gBR" role="1tU5fm">
                                  <ref role="3uigEE" to="ee2c:7qPnRGFqlIs" resolve="EditorCell_Scene" />
                                </node>
                                <node concept="2ShNRf" id="5jb5jNC4gBS" role="33vP2m">
                                  <node concept="1pGfFk" id="5jb5jNC4gBT" role="2ShVmc">
                                    <ref role="37wK5l" to="ee2c:7qPnRGFqmUN" resolve="EditorCell_Scene" />
                                    <node concept="37vLTw" id="5jb5jNC4gBU" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gBK" resolve="context" />
                                    </node>
                                    <node concept="pncrf" id="5jb5jNC4gBV" role="37wK5m" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNC4gBW" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gBX" role="3cpWs9">
                                <property role="TrG5h" value="backgroundLayer" />
                                <node concept="3uibUv" id="5jb5jNC4gBY" role="1tU5fm">
                                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                                </node>
                                <node concept="2OqwBi" id="5jb5jNC4gBZ" role="33vP2m">
                                  <node concept="37vLTw" id="5jb5jNC4gC0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                  </node>
                                  <node concept="liA8E" id="5jb5jNC4gC1" role="2OqNvi">
                                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                                    <node concept="2$xPTn" id="5jb5jNC4gC2" role="37wK5m">
                                      <property role="2$xPTl" value="0.f" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNC4gC3" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gC4" role="3cpWs9">
                                <property role="TrG5h" value="tracesLayer" />
                                <node concept="3uibUv" id="5jb5jNC4gC5" role="1tU5fm">
                                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                                </node>
                                <node concept="2OqwBi" id="5jb5jNC4gC6" role="33vP2m">
                                  <node concept="37vLTw" id="5jb5jNC4gC7" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                  </node>
                                  <node concept="liA8E" id="5jb5jNC4gC8" role="2OqNvi">
                                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                                    <node concept="2$xPTn" id="5jb5jNC4gC9" role="37wK5m">
                                      <property role="2$xPTl" value="1.f" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNC4gCa" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gCb" role="3cpWs9">
                                <property role="TrG5h" value="componentsLayer" />
                                <node concept="3uibUv" id="5jb5jNC4gCc" role="1tU5fm">
                                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                                </node>
                                <node concept="2OqwBi" id="5jb5jNC4gCd" role="33vP2m">
                                  <node concept="37vLTw" id="5jb5jNC4gCe" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                  </node>
                                  <node concept="liA8E" id="5jb5jNC4gCf" role="2OqNvi">
                                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                                    <node concept="2$xPTn" id="5jb5jNC4gCg" role="37wK5m">
                                      <property role="2$xPTl" value="3.f" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNC4gCh" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gCi" role="3cpWs9">
                                <property role="TrG5h" value="connectionsLayer" />
                                <node concept="3uibUv" id="5jb5jNC4gCj" role="1tU5fm">
                                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                                </node>
                                <node concept="2OqwBi" id="5jb5jNC4gCk" role="33vP2m">
                                  <node concept="37vLTw" id="5jb5jNC4gCl" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                  </node>
                                  <node concept="liA8E" id="5jb5jNC4gCm" role="2OqNvi">
                                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                                    <node concept="2$xPTn" id="5jb5jNC4gCn" role="37wK5m">
                                      <property role="2$xPTl" value="2.f" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="5jb5jNC4gCo" role="3cqZAp" />
                            <node concept="3cpWs8" id="5jb5jNC4gCp" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gCq" role="3cpWs9">
                                <property role="TrG5h" value="viewpoint" />
                                <node concept="3uibUv" id="5jb5jNC4gCr" role="1tU5fm">
                                  <ref role="3uigEE" to="rvgs:1iOpS24$iQB" resolve="ModifiableSceneViewpoint" />
                                </node>
                                <node concept="2ShNRf" id="5jb5jNC4gCs" role="33vP2m">
                                  <node concept="1pGfFk" id="5jb5jNC4gCt" role="2ShVmc">
                                    <ref role="37wK5l" to="rvgs:17nGqbJdQpZ" resolve="SceneViewpointByCell" />
                                    <node concept="37vLTw" id="5jb5jNC4gCu" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                    </node>
                                    <node concept="37vLTw" id="5jb5jNC4gCv" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNC4gCw" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gCx" role="3cpWs9">
                                <property role="TrG5h" value="focus" />
                                <node concept="3uibUv" id="5jb5jNC4gCy" role="1tU5fm">
                                  <ref role="3uigEE" to="rvgs:4y$DvIXWfQg" resolve="SceneFocusModel" />
                                </node>
                                <node concept="2ShNRf" id="5jb5jNC4gCz" role="33vP2m">
                                  <node concept="HV5vD" id="5jb5jNC4gC$" role="2ShVmc">
                                    <ref role="HV5vE" to="rvgs:4y$DvIXWgRV" resolve="DefaultFocusModel" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5jb5jNC4gC_" role="3cqZAp">
                              <node concept="2ShNRf" id="5jb5jNC4gCA" role="3clFbG">
                                <node concept="1pGfFk" id="5jb5jNC4gCB" role="2ShVmc">
                                  <ref role="37wK5l" to="3bo0:4y$DvIYmY27" resolve="BackgroundFacility" />
                                  <node concept="37vLTw" id="5jb5jNC4gCC" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNC4gCD" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gCx" resolve="focus" />
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNC4gCE" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gBX" resolve="backgroundLayer" />
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNC4gCF" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gCq" resolve="viewpoint" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="5jb5jNC4gCG" role="3cqZAp" />
                            <node concept="3cpWs8" id="5jb5jNC4gCH" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gCI" role="3cpWs9">
                                <property role="TrG5h" value="componentsSelection" />
                                <node concept="3uibUv" id="5jb5jNC4gCJ" role="1tU5fm">
                                  <ref role="3uigEE" to="rvgs:2XwVnrt199s" resolve="DefaultSelectionModel" />
                                  <node concept="3uibUv" id="38k27IRSr3$" role="11_B2D">
                                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                  </node>
                                </node>
                                <node concept="2ShNRf" id="5jb5jNC4gCK" role="33vP2m">
                                  <node concept="HV5vD" id="5jb5jNC4gCL" role="2ShVmc">
                                    <ref role="HV5vE" to="rvgs:2XwVnrt199s" resolve="DefaultSelectionModel" />
                                    <node concept="3uibUv" id="38k27IRStmw" role="HU9BZ">
                                      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNC4gCM" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gCN" role="3cpWs9">
                                <property role="TrG5h" value="componentsLayout" />
                                <node concept="3uibUv" id="5jb5jNC4gCO" role="1tU5fm">
                                  <ref role="3uigEE" to="rvgs:1KCfUoKSK2B" resolve="DefaultLayoutModel" />
                                  <node concept="3uibUv" id="5jb5jNCcjqI" role="11_B2D">
                                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                  </node>
                                </node>
                                <node concept="2ShNRf" id="5jb5jNC4gCP" role="33vP2m">
                                  <node concept="1pGfFk" id="5jb5jNC4gCQ" role="2ShVmc">
                                    <ref role="37wK5l" to="rvgs:2JpbWDsR2ER" resolve="DefaultLayoutModel" />
                                    <node concept="2OqwBi" id="5jb5jNC4gCR" role="37wK5m">
                                      <node concept="37vLTw" id="5jb5jNC4gCS" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5jb5jNC4gBK" resolve="context" />
                                      </node>
                                      <node concept="liA8E" id="5jb5jNC4gCT" role="2OqNvi">
                                        <ref role="37wK5l" to="cj4x:~EditorContext.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNC4gCU" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gCV" role="3cpWs9">
                                <property role="TrG5h" value="ecc" />
                                <node concept="3uibUv" id="5jb5jNC5mdx" role="1tU5fm">
                                  <ref role="3uigEE" node="5jb5jNC4n69" resolve="ECCModelByNode" />
                                </node>
                                <node concept="2ShNRf" id="5jb5jNC4gCX" role="33vP2m">
                                  <node concept="1pGfFk" id="5jb5jNC4gCY" role="2ShVmc">
                                    <ref role="37wK5l" node="5jb5jNC4z8M" resolve="ECCModelByNode" />
                                    <node concept="pncrf" id="5jb5jNC5psI" role="37wK5m" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNC4gD0" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gD1" role="3cpWs9">
                                <property role="TrG5h" value="componentsFacility" />
                                <property role="3TUv4t" value="true" />
                                <node concept="3uibUv" id="5jb5jNC4gD2" role="1tU5fm">
                                  <ref role="3uigEE" to="xxy3:3vyG44ANA6n" resolve="ComponentsFacility" />
                                  <node concept="3uibUv" id="5jb5jNCcgJ4" role="11_B2D">
                                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                  </node>
                                  <node concept="3uibUv" id="5jb5jNCcht0" role="11_B2D">
                                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                  </node>
                                </node>
                                <node concept="2ShNRf" id="5jb5jNC4gD3" role="33vP2m">
                                  <node concept="1pGfFk" id="5jb5jNC4gD4" role="2ShVmc">
                                    <ref role="37wK5l" to="xxy3:3vyG44ANZeI" resolve="ComponentsFacility" />
                                    <node concept="37vLTw" id="5jb5jNC4gD5" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                    </node>
                                    <node concept="37vLTw" id="5jb5jNC4gD6" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gCV" resolve="ecc" />
                                    </node>
                                    <node concept="10M0yZ" id="5jb5jNCeYb$" role="37wK5m">
                                      <ref role="1PxDUh" node="5jb5jNC4n69" resolve="ECCModelByNode" />
                                      <ref role="3cqZAo" node="5jb5jNCcmQv" resolve="STATE_CONTROLLER_FACTORY" />
                                    </node>
                                    <node concept="2ShNRf" id="5jb5jNC4gD8" role="37wK5m">
                                      <node concept="1pGfFk" id="5jb5jNC4gD9" role="2ShVmc">
                                        <ref role="37wK5l" to="4n2q:5jb5jNCfCVN" resolve="ECCSynchronizer" />
                                        <node concept="37vLTw" id="5jb5jNC4gDa" role="37wK5m">
                                          <ref role="3cqZAo" node="5jb5jNC4gCq" resolve="viewpoint" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="5jb5jNC4gDb" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gCN" resolve="componentsLayout" />
                                    </node>
                                    <node concept="37vLTw" id="5jb5jNC4gDc" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gCI" resolve="componentsSelection" />
                                    </node>
                                    <node concept="37vLTw" id="5jb5jNC4gDd" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gCx" resolve="focus" />
                                    </node>
                                    <node concept="37vLTw" id="5jb5jNC4gDe" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gCb" resolve="componentsLayer" />
                                    </node>
                                    <node concept="37vLTw" id="5jb5jNC4gDf" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gC4" resolve="tracesLayer" />
                                    </node>
                                    <node concept="3uibUv" id="5jb5jNCcin3" role="1pMfVU">
                                      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                    </node>
                                    <node concept="3uibUv" id="5jb5jNCcin4" role="1pMfVU">
                                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="5jb5jNC4gDg" role="3cqZAp" />
                            <node concept="3clFbF" id="5jb5jNC4gDh" role="3cqZAp">
                              <node concept="2OqwBi" id="5jb5jNC4gDi" role="3clFbG">
                                <node concept="37vLTw" id="5jb5jNC4gDj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                </node>
                                <node concept="liA8E" id="5jb5jNC4gDk" role="2OqNvi">
                                  <ref role="37wK5l" to="ee2c:17nGqbJmuOx" resolve="addCompletionProvider" />
                                  <node concept="2ShNRf" id="5jb5jNC4gDl" role="37wK5m">
                                    <node concept="1pGfFk" id="5jb5jNC4gDm" role="2ShVmc">
                                      <ref role="37wK5l" to="3bo0:5jb5jNBO$52" resolve="CompletionProviderByViewpoint" />
                                      <node concept="37vLTw" id="5jb5jNC4gDn" role="37wK5m">
                                        <ref role="3cqZAo" node="5jb5jNC4gCq" resolve="viewpoint" />
                                      </node>
                                      <node concept="2OqwBi" id="5jb5jNC4gDo" role="37wK5m">
                                        <node concept="37vLTw" id="5jb5jNC4gDp" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5jb5jNC4gCV" resolve="ecc" />
                                        </node>
                                        <node concept="2OwXpG" id="5jb5jNC5V3K" role="2OqNvi">
                                          <ref role="2Oxat5" node="5jb5jNC5$7w" resolve="completionProvider" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="5jb5jNC4gDr" role="3cqZAp" />
                            <node concept="3cpWs8" id="5jb5jNC4gDs" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gDt" role="3cpWs9">
                                <property role="TrG5h" value="portSettings" />
                                <node concept="3uibUv" id="38k27IRR3Jf" role="1tU5fm">
                                  <ref role="3uigEE" to="4n2q:38k27IRCmW1" resolve="ECPortSettingProvider" />
                                </node>
                                <node concept="2YIFZM" id="7pEplJksbXI" role="33vP2m">
                                  <ref role="1Pybhc" to="4n2q:38k27IRCmW1" resolve="ECPortSettingProvider" />
                                  <ref role="37wK5l" to="4n2q:38k27IRCmWn" resolve="create" />
                                  <node concept="37vLTw" id="5jb5jNC4gDw" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gD1" resolve="componentsFacility" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNC4gDx" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNC4gDy" role="3cpWs9">
                                <property role="TrG5h" value="diagramFacility" />
                                <node concept="3uibUv" id="5jb5jNC4gDz" role="1tU5fm">
                                  <ref role="3uigEE" to="5lkm:4O0ojQpH3gw" resolve="DiagramFacility" />
                                  <node concept="3uibUv" id="38k27IRRhWu" role="11_B2D">
                                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                  </node>
                                  <node concept="3uibUv" id="38k27IRRhWv" role="11_B2D">
                                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                  </node>
                                  <node concept="3uibUv" id="38k27IRRhWw" role="11_B2D">
                                    <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
                                  </node>
                                  <node concept="3uibUv" id="38k27IRRhWx" role="11_B2D">
                                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                  </node>
                                </node>
                                <node concept="2ShNRf" id="5jb5jNC4gD$" role="33vP2m">
                                  <node concept="1pGfFk" id="5jb5jNC4gD_" role="2ShVmc">
                                    <ref role="37wK5l" to="5lkm:4O0ojQpHDXN" resolve="DiagramFacility" />
                                    <node concept="37vLTw" id="5jb5jNC4gDA" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                    </node>
                                    <node concept="37vLTw" id="5jb5jNC4gDB" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gCV" resolve="ecc" />
                                    </node>
                                    <node concept="37vLTw" id="5jb5jNC4gDC" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNC4gDt" resolve="portSettings" />
                                    </node>
                                    <node concept="2ShNRf" id="2syzu7rhG0V" role="37wK5m">
                                      <node concept="YeOm9" id="2syzu7rhHln" role="2ShVmc">
                                        <node concept="1Y3b0j" id="2syzu7rhHlq" role="YeSDq">
                                          <property role="2bfB8j" value="true" />
                                          <ref role="1Y3XeK" to="5lkm:2syzu7rdoTh" resolve="DiagramComponentSettingProvider" />
                                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                          <node concept="3Tm1VV" id="2syzu7rhHlr" role="1B3o_S" />
                                          <node concept="3clFb_" id="2syzu7rhHlt" role="jymVt">
                                            <property role="TrG5h" value="getModelForm" />
                                            <node concept="3Tm1VV" id="2syzu7rhHlv" role="1B3o_S" />
                                            <node concept="3uibUv" id="2syzu7rhHm1" role="3clF45">
                                              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                            </node>
                                            <node concept="2AHcQZ" id="2syzu7rhHlx" role="2AJF6D">
                                              <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                                            </node>
                                            <node concept="37vLTG" id="2syzu7rhHly" role="3clF46">
                                              <property role="TrG5h" value="component" />
                                              <node concept="3uibUv" id="2syzu7rhHlY" role="1tU5fm">
                                                <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                              </node>
                                              <node concept="2AHcQZ" id="2syzu7rhHl$" role="2AJF6D">
                                                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="2syzu7rhHl_" role="3clF47">
                                              <node concept="3clFbF" id="2syzu7rhKyv" role="3cqZAp">
                                                <node concept="2OqwBi" id="2syzu7rhKRe" role="3clFbG">
                                                  <node concept="37vLTw" id="2syzu7rhKyu" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="5jb5jNC4gD1" resolve="componentsFacility" />
                                                  </node>
                                                  <node concept="liA8E" id="2syzu7rhLcV" role="2OqNvi">
                                                    <ref role="37wK5l" to="xxy3:1iOpS24Xk6r" resolve="getModelForm" />
                                                    <node concept="37vLTw" id="2syzu7rhLyr" role="37wK5m">
                                                      <ref role="3cqZAo" node="2syzu7rhHly" resolve="component" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFb_" id="2syzu7rhHlB" role="jymVt">
                                            <property role="TrG5h" value="getTransformedForm" />
                                            <node concept="3Tm1VV" id="2syzu7rhHlD" role="1B3o_S" />
                                            <node concept="3uibUv" id="2syzu7rhHm2" role="3clF45">
                                              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                            </node>
                                            <node concept="2AHcQZ" id="2syzu7rhHlF" role="2AJF6D">
                                              <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                            </node>
                                            <node concept="37vLTG" id="2syzu7rhHlG" role="3clF46">
                                              <property role="TrG5h" value="component" />
                                              <node concept="3uibUv" id="2syzu7rhHlZ" role="1tU5fm">
                                                <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                              </node>
                                              <node concept="2AHcQZ" id="2syzu7rhHlI" role="2AJF6D">
                                                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="2syzu7rhHlJ" role="3clF47">
                                              <node concept="3clFbF" id="2syzu7rhMv4" role="3cqZAp">
                                                <node concept="2OqwBi" id="2syzu7rhMv5" role="3clFbG">
                                                  <node concept="37vLTw" id="2syzu7rhMv6" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="5jb5jNC4gD1" resolve="componentsFacility" />
                                                  </node>
                                                  <node concept="liA8E" id="2syzu7rhMv7" role="2OqNvi">
                                                    <ref role="37wK5l" to="xxy3:1iOpS24XIhe" resolve="getTransformedForm" />
                                                    <node concept="37vLTw" id="2syzu7rhMv8" role="37wK5m">
                                                      <ref role="3cqZAo" node="2syzu7rhHlG" resolve="component" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3uibUv" id="2syzu7rhHlX" role="2Ghqu4">
                                            <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                          </node>
                                          <node concept="3uibUv" id="2syzu7rhHm0" role="2Ghqu4">
                                            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="38k27IRRf6C" role="1pMfVU">
                                      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                    </node>
                                    <node concept="3uibUv" id="38k27IRRfDk" role="1pMfVU">
                                      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                    </node>
                                    <node concept="3uibUv" id="38k27IRRgdU" role="1pMfVU">
                                      <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
                                    </node>
                                    <node concept="3uibUv" id="38k27IRRh8e" role="1pMfVU">
                                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5jb5jNC4gDE" role="3cqZAp">
                              <node concept="2ShNRf" id="5jb5jNC4gDF" role="3clFbG">
                                <node concept="1pGfFk" id="5jb5jNC4gDG" role="2ShVmc">
                                  <ref role="37wK5l" to="5lkm:2JpbWDsR2ER" resolve="ConnectionsFacility" />
                                  <node concept="37vLTw" id="5jb5jNC4gDH" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                                  </node>
                                  <node concept="10M0yZ" id="38k27IRRTu3" role="37wK5m">
                                    <ref role="3cqZAo" node="38k27IRLnsq" resolve="TRANSITION_CONTROLLER_FACTORY" />
                                    <ref role="1PxDUh" node="5jb5jNC4n69" resolve="ECCModelByNode" />
                                  </node>
                                  <node concept="10M0yZ" id="7pEplJksbXG" role="37wK5m">
                                    <ref role="1PxDUh" to="4n2q:38k27IRRUQX" resolve="ECTransitionUtils" />
                                    <ref role="3cqZAo" to="4n2q:38k27IRRUR4" resolve="PATH_FACTORY" />
                                  </node>
                                  <node concept="10M0yZ" id="7pEplJksbXH" role="37wK5m">
                                    <ref role="1PxDUh" to="4n2q:38k27IRRUQX" resolve="ECTransitionUtils" />
                                    <ref role="3cqZAo" to="4n2q:38k27IRRUSR" resolve="PATH_PAINTER" />
                                  </node>
                                  <node concept="2ShNRf" id="5jb5jNC4gDL" role="37wK5m">
                                    <node concept="1pGfFk" id="5jb5jNC4gDM" role="2ShVmc">
                                      <ref role="37wK5l" to="4n2q:38k27IRQ3Jd" resolve="ECTransitionPathSyncronizer" />
                                      <node concept="37vLTw" id="5jb5jNC4gDN" role="37wK5m">
                                        <ref role="3cqZAo" node="5jb5jNC4gCq" resolve="viewpoint" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNC4gDO" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gCN" resolve="componentsLayout" />
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNC4gDP" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gCI" resolve="componentsSelection" />
                                  </node>
                                  <node concept="2OqwBi" id="5jb5jNC4gDQ" role="37wK5m">
                                    <node concept="37vLTw" id="5jb5jNC4gDR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5jb5jNC4gDy" resolve="diagramFacility" />
                                    </node>
                                    <node concept="liA8E" id="5jb5jNC4gDS" role="2OqNvi">
                                      <ref role="37wK5l" to="5lkm:4y$DvIX$zw5" resolve="getDiagramController" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNC4gDT" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gCi" resolve="connectionsLayer" />
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNC4gDU" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gC4" resolve="tracesLayer" />
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNC4gDV" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC4gCx" resolve="focus" />
                                  </node>
                                  <node concept="3uibUv" id="38k27IRRGqn" role="1pMfVU">
                                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                  </node>
                                  <node concept="3uibUv" id="38k27IRRGqo" role="1pMfVU">
                                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                                  </node>
                                  <node concept="3uibUv" id="38k27IRRGqp" role="1pMfVU">
                                    <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
                                  </node>
                                  <node concept="3uibUv" id="38k27IRRHOe" role="1pMfVU">
                                    <ref role="3uigEE" to="4n2q:38k27IRy1n0" resolve="ECTransitionCursor" />
                                  </node>
                                  <node concept="3uibUv" id="38k27IRRJ85" role="1pMfVU">
                                    <ref role="3uigEE" to="4n2q:38k27IRy0tz" resolve="ECTransitionPath" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="5jb5jNC4gDW" role="3cqZAp" />
                            <node concept="3cpWs6" id="5jb5jNC4gDX" role="3cqZAp">
                              <node concept="37vLTw" id="5jb5jNC4gDY" role="3cqZAk">
                                <ref role="3cqZAo" node="5jb5jNC4gBQ" resolve="scene" />
                              </node>
                            </node>
                          </node>
                          <node concept="TDmWw" id="5jb5jNC4gDZ" role="TEbGg">
                            <node concept="3cpWsn" id="5jb5jNC4gE0" role="TDEfY">
                              <property role="TrG5h" value="e" />
                              <node concept="3uibUv" id="5jb5jNC4gE1" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="5jb5jNC4gE2" role="TDEfX">
                              <node concept="2xdQw9" id="5jb5jNC4gE3" role="3cqZAp">
                                <property role="2xdLsb" value="error" />
                                <node concept="Xl_RD" id="5jb5jNC4gE4" role="9lYJi">
                                  <property role="Xl_RC" value="Error during cell creation" />
                                </node>
                                <node concept="37vLTw" id="5jb5jNC4gE5" role="9lYJj">
                                  <ref role="3cqZAo" node="5jb5jNC4gE0" resolve="e" />
                                </node>
                              </node>
                              <node concept="YS8fn" id="5jb5jNC4gE6" role="3cqZAp">
                                <node concept="37vLTw" id="5jb5jNC4gE7" role="YScLw">
                                  <ref role="3cqZAo" node="5jb5jNC4gE0" resolve="e" />
                                </node>
                              </node>
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
      <node concept="paMQc" id="38k27IRjoAr" role="3EZMnx">
        <node concept="3F2HdR" id="38k27IRjplw" role="paDBS">
          <ref role="1NtTu8" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
          <node concept="2iRkQZ" id="38k27IRjplE" role="2czzBx" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5jb5jNC4n69">
    <property role="3GE5qa" value="fbtype.basic.rich" />
    <property role="TrG5h" value="ECCModelByNode" />
    <node concept="2tJIrI" id="5jb5jNC4nlJ" role="jymVt" />
    <node concept="312cEg" id="5jb5jNC4z7U" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5jb5jNC4yHW" role="1B3o_S" />
      <node concept="3Tqbb2" id="5jb5jNC4z7G" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4z8c" role="jymVt" />
    <node concept="3Tm1VV" id="5jb5jNC4n6a" role="1B3o_S" />
    <node concept="3clFbW" id="5jb5jNC4z8M" role="jymVt">
      <node concept="3cqZAl" id="5jb5jNC4z8N" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNC4z8O" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4z8Q" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4z8U" role="3cqZAp">
          <node concept="37vLTI" id="5jb5jNC4z8W" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNC4zgZ" role="37vLTJ">
              <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="5jb5jNC4z93" role="37vLTx">
              <ref role="3cqZAo" node="5jb5jNC4z8T" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNC4z8T" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5jb5jNC4z8S" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4zuD" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4zs9" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="5jb5jNC4zsa" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
      <node concept="3Tm1VV" id="5jb5jNC4zsb" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4zsc" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4zsd" role="3cqZAp">
          <node concept="37vLTw" id="5jb5jNC4zs8" role="3clFbG">
            <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRFY9a" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4zzY" role="jymVt">
      <property role="TrG5h" value="components" />
      <node concept="3Tm1VV" id="5jb5jNC4z$0" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNC4z$1" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5jb5jNC4z$3" role="11_B2D">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNC4z$4" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4zYU" role="3cqZAp">
          <node concept="2ShNRf" id="5jb5jNC4XBt" role="3clFbG">
            <node concept="1pGfFk" id="5jb5jNC4YjF" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
              <node concept="2OqwBi" id="5jb5jNC4Z77" role="37wK5m">
                <node concept="2OqwBi" id="5jb5jNC4F36" role="2Oq$k0">
                  <node concept="2OqwBi" id="5jb5jNC4$jc" role="2Oq$k0">
                    <node concept="37vLTw" id="5jb5jNC4zYT" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
                    </node>
                    <node concept="3Tsc0h" id="5jb5jNC4$U2" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WX" resolve="states" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="5jb5jNC4HTf" role="2OqNvi">
                    <node concept="1bVj0M" id="5jb5jNC4HTh" role="23t8la">
                      <node concept="3clFbS" id="5jb5jNC4HTi" role="1bW5cS">
                        <node concept="3clFbF" id="5jb5jNC4I95" role="3cqZAp">
                          <node concept="2ShNRf" id="5jb5jNC4I93" role="3clFbG">
                            <node concept="1pGfFk" id="5jb5jNC4IVS" role="2ShVmc">
                              <ref role="37wK5l" node="5jb5jNC4nxG" resolve="ECStateByNode" />
                              <node concept="37vLTw" id="5jb5jNC4J8q" role="37wK5m">
                                <ref role="3cqZAo" node="5jb5jNC4HTj" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5jb5jNC4HTj" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5jb5jNC4HTk" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="5jb5jNC5cJf" role="2OqNvi" />
              </node>
              <node concept="3uibUv" id="5jb5jNC5gU9" role="1pMfVU">
                <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNC4z$5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="38k27IRG1ew" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC5hlJ" role="jymVt" />
    <node concept="3clFb_" id="38k27IRG7hF" role="jymVt">
      <property role="TrG5h" value="edges" />
      <node concept="3Tm1VV" id="38k27IRG7hH" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRG7hI" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="38k27IRG7hR" role="11_B2D">
          <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRG7hK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRG7hS" role="3clF47">
        <node concept="3clFbF" id="38k27IRG94d" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRG94f" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRG94g" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
              <node concept="2OqwBi" id="38k27IRG94h" role="37wK5m">
                <node concept="2OqwBi" id="38k27IRG94i" role="2Oq$k0">
                  <node concept="2OqwBi" id="38k27IRG94j" role="2Oq$k0">
                    <node concept="37vLTw" id="38k27IRG94k" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
                    </node>
                    <node concept="3Tsc0h" id="38k27IRGeD$" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="38k27IRG94m" role="2OqNvi">
                    <node concept="1bVj0M" id="38k27IRG94n" role="23t8la">
                      <node concept="3clFbS" id="38k27IRG94o" role="1bW5cS">
                        <node concept="3clFbF" id="38k27IRG94p" role="3cqZAp">
                          <node concept="2ShNRf" id="38k27IRG94q" role="3clFbG">
                            <node concept="1pGfFk" id="38k27IRG94r" role="2ShVmc">
                              <ref role="37wK5l" node="38k27IRGoEJ" resolve="ECTransitionByNode" />
                              <node concept="37vLTw" id="38k27IRG94s" role="37wK5m">
                                <ref role="3cqZAo" node="38k27IRG94t" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="38k27IRG94t" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="38k27IRG94u" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="38k27IRG94v" role="2OqNvi" />
              </node>
              <node concept="3uibUv" id="38k27IRGfjI" role="1pMfVU">
                <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRG7hT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGgnW" role="jymVt" />
    <node concept="3clFb_" id="38k27IRG7hW" role="jymVt">
      <property role="TrG5h" value="addEdge" />
      <node concept="37vLTG" id="38k27IRG7hX" role="3clF46">
        <property role="TrG5h" value="sourceState" />
        <node concept="3uibUv" id="38k27IRG7if" role="1tU5fm">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRG7hZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRG7i0" role="3clF46">
        <property role="TrG5h" value="targetState" />
        <node concept="3uibUv" id="38k27IRG7id" role="1tU5fm">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRG7i2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRG7i4" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRG7ie" role="3clF45">
        <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
      </node>
      <node concept="2AHcQZ" id="38k27IRG7i6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="38k27IRG7ig" role="3clF47">
        <node concept="3cpWs8" id="38k27IRJq3s" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRJq3t" role="3cpWs9">
            <property role="TrG5h" value="transition" />
            <node concept="3Tqbb2" id="38k27IRJq3p" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
            </node>
            <node concept="2OqwBi" id="38k27IRJq3u" role="33vP2m">
              <node concept="2OqwBi" id="38k27IRJq3v" role="2Oq$k0">
                <node concept="37vLTw" id="38k27IRJq3w" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="38k27IRJq3x" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
                </node>
              </node>
              <node concept="WFELt" id="38k27IRJq3y" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRIQXF" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRKpy3" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRJsKs" role="37vLTJ">
              <node concept="37vLTw" id="38k27IRJq3z" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRJq3t" resolve="transition" />
              </node>
              <node concept="3TrEf2" id="38k27IRJt0D" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
              </node>
            </node>
            <node concept="2OqwBi" id="38k27IRKqJ7" role="37vLTx">
              <node concept="liA8E" id="38k27IRKqJ8" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC4nGo" resolve="getNode" />
              </node>
              <node concept="1eOMI4" id="38k27IRKqJ9" role="2Oq$k0">
                <node concept="10QFUN" id="38k27IRKqJa" role="1eOMHV">
                  <node concept="3uibUv" id="38k27IRKqJb" role="10QFUM">
                    <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                  </node>
                  <node concept="37vLTw" id="38k27IRKrvb" role="10QFUP">
                    <ref role="3cqZAo" node="38k27IRG7hX" resolve="sourceState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRKrKl" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRKrKm" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRKrKn" role="37vLTJ">
              <node concept="37vLTw" id="38k27IRKrKo" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRJq3t" resolve="transition" />
              </node>
              <node concept="3TrEf2" id="38k27IRLdqV" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
              </node>
            </node>
            <node concept="2OqwBi" id="38k27IRKrKq" role="37vLTx">
              <node concept="liA8E" id="38k27IRKrKr" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC4nGo" resolve="getNode" />
              </node>
              <node concept="1eOMI4" id="38k27IRKrKs" role="2Oq$k0">
                <node concept="10QFUN" id="38k27IRKrKt" role="1eOMHV">
                  <node concept="3uibUv" id="38k27IRKrKu" role="10QFUM">
                    <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                  </node>
                  <node concept="37vLTw" id="38k27IRLdX1" role="10QFUP">
                    <ref role="3cqZAo" node="38k27IRG7i0" resolve="targetState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRLeJt" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRLeJp" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRLfTg" role="2ShVmc">
              <ref role="37wK5l" node="38k27IRGoEJ" resolve="ECTransitionByNode" />
              <node concept="37vLTw" id="38k27IRLgbH" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRJq3t" resolve="transition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRG7ih" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC5zDa" role="jymVt" />
    <node concept="312cEg" id="5jb5jNC5$7w" role="jymVt">
      <property role="TrG5h" value="completionProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5jb5jNC5$7x" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
        <node concept="3uibUv" id="5jb5jNC5$7y" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5jb5jNC5$7z" role="11_B2D">
            <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
          </node>
        </node>
      </node>
      <node concept="1bVj0M" id="5jb5jNC5$7$" role="33vP2m">
        <node concept="3clFbS" id="5jb5jNC5$7_" role="1bW5cS">
          <node concept="3clFbF" id="5jb5jNC5X8k" role="3cqZAp">
            <node concept="2YIFZM" id="5jb5jNC5Y$O" role="3clFbG">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
              <node concept="1eOMI4" id="5jb5jNC69Of" role="37wK5m">
                <node concept="10QFUN" id="5jb5jNC69Oc" role="1eOMHV">
                  <node concept="3uibUv" id="5jb5jNC6aRF" role="10QFUM">
                    <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
                  </node>
                  <node concept="2ShNRf" id="5jb5jNC5$86" role="10QFUP">
                    <node concept="YeOm9" id="5jb5jNC5$87" role="2ShVmc">
                      <node concept="1Y3b0j" id="5jb5jNC5$88" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
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
                                    <node concept="37vLTw" id="5jb5jNC5$8_" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
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
                                      <node concept="3cpWs3" id="5jb5jNC5$8V" role="2pJxcZ">
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
                                      <node concept="3cpWs3" id="5jb5jNC5$8Z" role="2pJxcZ">
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
      </node>
      <node concept="3Tm1VV" id="5jb5jNC5$9b" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5jb5jNC5zEd" role="jymVt" />
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
                <node concept="3uibUv" id="5jb5jNCcmQG" role="1tU5fm">
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
                      <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
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
                                <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="5jb5jNCcAZq" role="2OqNvi">
                            <ref role="37wK5l" node="5jb5jNC4nGo" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5jb5jNCcCuD" role="3cqZAp">
                      <node concept="3cpWsn" id="5jb5jNCcCuE" role="3cpWs9">
                        <property role="TrG5h" value="cell" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="5jb5jNCcHnv" role="1tU5fm">
                          <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                        </node>
                        <node concept="10QFUN" id="5jb5jNCcDh2" role="33vP2m">
                          <node concept="3uibUv" id="5jb5jNCcGGY" role="10QFUM">
                            <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                          </node>
                          <node concept="2OqwBi" id="5jb5jNCcCuF" role="10QFUP">
                            <node concept="37vLTw" id="5jb5jNCcCuG" role="2Oq$k0">
                              <ref role="3cqZAo" node="5jb5jNCcmQF" resolve="context" />
                            </node>
                            <node concept="2CJim2" id="5jb5jNCcCuH" role="2OqNvi">
                              <node concept="37vLTw" id="5jb5jNCcCuI" role="2CJshu">
                                <ref role="3cqZAo" node="5jb5jNCczZS" resolve="stateNode" />
                              </node>
                              <node concept="2CJsh3" id="5jb5jNCcCuJ" role="2CJshi">
                                <node concept="paMQc" id="2RGdDg_LgiW" role="2wV5jI">
                                  <node concept="3EZMnI" id="5jb5jNCcFOG" role="paDBS">
                                    <node concept="3F0A7n" id="5jb5jNCcFPJ" role="3EZMnx">
                                      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                                      <node concept="Veino" id="2RGdDgA14hP" role="3F10Kt">
                                        <property role="Vb096" value="LIGHT_BLUE" />
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
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2RGdDg_ZfLQ" role="3cqZAp">
                      <node concept="2OqwBi" id="2RGdDg_Zh81" role="3clFbG">
                        <node concept="37vLTw" id="2RGdDg_ZfLO" role="2Oq$k0">
                          <ref role="3cqZAo" node="5jb5jNCcCuE" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="2RGdDg_ZleD" role="2OqNvi">
                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.setBig(boolean):void" resolve="setBig" />
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
                                        <ref role="3cqZAo" node="5jb5jNCcCuE" resolve="cell" />
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
                                          <node concept="0kSF2" id="2RGdDg_VOS9" role="2Oq$k0">
                                            <node concept="3uibUv" id="2RGdDg_VOSa" role="0kSFW">
                                              <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                                            </node>
                                            <node concept="2OqwBi" id="2RGdDg_VOSb" role="0kSFX">
                                              <node concept="37vLTw" id="2RGdDg_VOSc" role="2Oq$k0">
                                                <ref role="3cqZAo" node="5jb5jNCcCuE" resolve="cell" />
                                              </node>
                                              <node concept="liA8E" id="2RGdDg_VOSd" role="2OqNvi">
                                                <ref role="37wK5l" to="g51k:~EditorCell_Collection.firstCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="firstCell" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="2RGdDg_VOSe" role="2OqNvi">
                                            <ref role="37wK5l" to="g51k:~EditorCell_Collection.firstCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="firstCell" />
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
                                            <ref role="37wK5l" to="f4zo:~EditorCell.getWidth():int" resolve="getWidth" />
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
                                            <ref role="37wK5l" to="f4zo:~EditorCell.getHeight():int" resolve="getHeight" />
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
                                          <node concept="0kSF2" id="2RGdDg_VHzG" role="2Oq$k0">
                                            <node concept="3uibUv" id="2RGdDg_VI5P" role="0kSFW">
                                              <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                                            </node>
                                            <node concept="2OqwBi" id="2RGdDg_ItYh" role="0kSFX">
                                              <node concept="37vLTw" id="2RGdDg_ItYi" role="2Oq$k0">
                                                <ref role="3cqZAo" node="5jb5jNCcCuE" resolve="cell" />
                                              </node>
                                              <node concept="liA8E" id="2RGdDg_ItYj" role="2OqNvi">
                                                <ref role="37wK5l" to="g51k:~EditorCell_Collection.firstCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="firstCell" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="2RGdDg_VOyb" role="2OqNvi">
                                            <ref role="37wK5l" to="g51k:~EditorCell_Collection.firstCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="firstCell" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="2RGdDg_ItYk" role="2OqNvi">
                                          <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
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
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="5lkm:4y$DvIW4oYS" resolve="ConnectionControllerFactory" />
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
                            <ref role="3uigEE" node="38k27IRGoEB" resolve="ECTransitionByNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="38k27IRLuvN" role="2OqNvi">
                        <ref role="37wK5l" node="38k27IRGoEU" resolve="getNode" />
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
                        <node concept="2CJim2" id="38k27IRLw2N" role="2OqNvi">
                          <node concept="37vLTw" id="38k27IRLwJT" role="2CJshu">
                            <ref role="3cqZAo" node="38k27IRLuvG" resolve="transitionNode" />
                          </node>
                          <node concept="2CJsh3" id="38k27IRLw2P" role="2CJshi">
                            <node concept="paMQc" id="38k27IRLw2Q" role="2wV5jI">
                              <node concept="3F1sOY" id="38k27IRLxqv" role="paDBS">
                                <ref role="1NtTu8" to="xiqq:3HBlKeoZaIs" resolve="condition" />
                              </node>
                            </node>
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
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.setBig(boolean):void" resolve="setBig" />
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
                                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth():int" resolve="getWidth" />
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
                                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight():int" resolve="getHeight" />
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
    <node concept="2tJIrI" id="5jb5jNCcm3C" role="jymVt" />
    <node concept="3uibUv" id="38k27IRFR_d" role="1zkMxy">
      <ref role="3uigEE" to="4n2q:38k27IREOjP" resolve="ECCView" />
    </node>
  </node>
  <node concept="312cEu" id="5jb5jNC4nmA">
    <property role="3GE5qa" value="fbtype.basic.rich" />
    <property role="TrG5h" value="ECStateByNode" />
    <node concept="2tJIrI" id="5jb5jNC4nny" role="jymVt" />
    <node concept="312cEg" id="5jb5jNC4nw_" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="5jb5jNC4nwg" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
      </node>
      <node concept="3Tm6S6" id="5jb5jNC4nwP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5jb5jNC4nx1" role="jymVt" />
    <node concept="3Tm1VV" id="5jb5jNC4nmB" role="1B3o_S" />
    <node concept="3uibUv" id="5jb5jNC4nnm" role="EKbjA">
      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
    </node>
    <node concept="3clFbW" id="5jb5jNC4nxG" role="jymVt">
      <node concept="3cqZAl" id="5jb5jNC4nxH" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNC4nxI" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4nxK" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4nxO" role="3cqZAp">
          <node concept="37vLTI" id="5jb5jNC4nxQ" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNC4nAt" role="37vLTJ">
              <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="5jb5jNC4nxX" role="37vLTx">
              <ref role="3cqZAo" node="5jb5jNC4nxN" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNC4nxN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5jb5jNC4nxM" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4nDZ" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4nGo" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="5jb5jNC4nGp" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
      </node>
      <node concept="3Tm1VV" id="5jb5jNC4nGq" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4nGr" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4nGs" role="3cqZAp">
          <node concept="37vLTw" id="5jb5jNC4nGn" role="3clFbG">
            <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNCf0pu" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNCf0$m" role="jymVt">
      <property role="TrG5h" value="getX" />
      <node concept="3Tm1VV" id="5jb5jNCf0$o" role="1B3o_S" />
      <node concept="10Oyi0" id="5jb5jNCf0$p" role="3clF45" />
      <node concept="3clFbS" id="5jb5jNCf0$q" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCf127" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCf5E6" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNCf1oD" role="2Oq$k0">
              <node concept="37vLTw" id="5jb5jNCf126" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="5jb5jNCf1O$" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="5jb5jNCfdQJ" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3isp" resolve="getX" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCf0$r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5jb5jNCf0$s" role="jymVt">
      <property role="TrG5h" value="setX" />
      <node concept="3Tm1VV" id="5jb5jNCf0$t" role="1B3o_S" />
      <node concept="3cqZAl" id="5jb5jNCf0$u" role="3clF45" />
      <node concept="37vLTG" id="5jb5jNCf0$v" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="5jb5jNCf0$w" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5jb5jNCf0$y" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCfeuk" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCfeul" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNCfeum" role="2Oq$k0">
              <node concept="37vLTw" id="5jb5jNCfeun" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="5jb5jNCfeuo" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="5jb5jNCfeZF" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3jp5" resolve="setX" />
              <node concept="37vLTw" id="5jb5jNCffb8" role="37wK5m">
                <ref role="3cqZAo" node="5jb5jNCf0$v" resolve="x" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCf0$z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5jb5jNCf0$$" role="jymVt">
      <property role="TrG5h" value="getY" />
      <node concept="3Tm1VV" id="5jb5jNCf0$A" role="1B3o_S" />
      <node concept="10Oyi0" id="5jb5jNCf0$B" role="3clF45" />
      <node concept="3clFbS" id="5jb5jNCf0$C" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCfgm2" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCfgm3" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNCfgm4" role="2Oq$k0">
              <node concept="37vLTw" id="5jb5jNCfgm5" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="5jb5jNCfgm6" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="5jb5jNCfkUT" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3iXb" resolve="getY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCf0$D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5jb5jNCf0$E" role="jymVt">
      <property role="TrG5h" value="setY" />
      <node concept="3Tm1VV" id="5jb5jNCf0$F" role="1B3o_S" />
      <node concept="3cqZAl" id="5jb5jNCf0$G" role="3clF45" />
      <node concept="37vLTG" id="5jb5jNCf0$H" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="5jb5jNCf0$I" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5jb5jNCf0$K" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCffuL" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCffuM" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNCffuN" role="2Oq$k0">
              <node concept="37vLTw" id="5jb5jNCffuO" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="5jb5jNCffuP" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="5jb5jNCffuQ" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3lay" resolve="setY" />
              <node concept="37vLTw" id="5jb5jNCffR$" role="37wK5m">
                <ref role="3cqZAo" node="5jb5jNCf0$H" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCf0$L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4nLq" role="jymVt" />
    <node concept="3clFb_" id="38k27IRFHUp" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="38k27IRFHUr" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRFHUs" role="3clF45" />
      <node concept="3clFbS" id="38k27IRFHUt" role="3clF47">
        <node concept="3clFbF" id="38k27IRFIPx" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRFJ2p" role="3clFbG">
            <node concept="37vLTw" id="38k27IRFIPw" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="38k27IRFNul" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRFHUu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRFIl9" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4nO8" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5jb5jNC4nO9" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNC4nOa" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4nOb" role="3clF47">
        <node concept="3clFbJ" id="5jb5jNC4nOc" role="3cqZAp">
          <node concept="3clFbS" id="5jb5jNC4nOd" role="3clFbx">
            <node concept="3cpWs6" id="5jb5jNC4nOe" role="3cqZAp">
              <node concept="3clFbT" id="5jb5jNC4nOf" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5jb5jNC4nOg" role="3clFbw">
            <node concept="Xjq3P" id="5jb5jNC4nO7" role="3uHU7B" />
            <node concept="37vLTw" id="5jb5jNC4nOh" role="3uHU7w">
              <ref role="3cqZAo" node="5jb5jNC4nOC" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jb5jNC4nOi" role="3cqZAp">
          <node concept="3clFbS" id="5jb5jNC4nOj" role="3clFbx">
            <node concept="3cpWs6" id="5jb5jNC4nOk" role="3cqZAp">
              <node concept="3clFbT" id="5jb5jNC4nOl" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="5jb5jNC4oCh" role="3clFbw">
            <node concept="1eOMI4" id="5jb5jNC4oSR" role="3fr31v">
              <node concept="2ZW3vV" id="5jb5jNC4pgM" role="1eOMHV">
                <node concept="3uibUv" id="5jb5jNC4pqD" role="2ZW6by">
                  <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                </node>
                <node concept="37vLTw" id="5jb5jNC4p5_" role="2ZW6bz">
                  <ref role="3cqZAo" node="5jb5jNC4nOC" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jb5jNC4nOx" role="3cqZAp" />
        <node concept="3cpWs8" id="5jb5jNC4nOy" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNC4nOz" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5jb5jNC4nO$" role="1tU5fm">
              <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
            </node>
            <node concept="10QFUN" id="5jb5jNC4nO_" role="33vP2m">
              <node concept="3uibUv" id="5jb5jNC4nOA" role="10QFUM">
                <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
              </node>
              <node concept="37vLTw" id="5jb5jNC4nOB" role="10QFUP">
                <ref role="3cqZAo" node="5jb5jNC4nOC" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jb5jNC4nOM" role="3cqZAp">
          <node concept="3clFbS" id="5jb5jNC4nON" role="3clFbx">
            <node concept="3cpWs6" id="5jb5jNC4nOO" role="3cqZAp">
              <node concept="3clFbT" id="5jb5jNC4nOP" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="5jb5jNC4qUU" role="3clFbw">
            <node concept="2OqwBi" id="5jb5jNC4rpm" role="3uHU7w">
              <node concept="37vLTw" id="5jb5jNC4r8_" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nOz" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5jb5jNC4seA" role="2OqNvi">
                <ref role="2Oxat5" node="5jb5jNC4nw_" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="5jb5jNC4pGH" role="3uHU7B">
              <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jb5jNC4nP4" role="3cqZAp" />
        <node concept="3clFbF" id="5jb5jNC4nP5" role="3cqZAp">
          <node concept="3clFbT" id="5jb5jNC4nP6" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNC4nOC" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5jb5jNC4nOD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNC4nOE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4skk" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4nP7" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5jb5jNC4nP8" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNC4nP9" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4nPa" role="3clF47">
        <node concept="3cpWs6" id="5jb5jNC4ylR" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNC4tqF" role="3cqZAk">
            <node concept="liA8E" id="5jb5jNC4x$i" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
            </node>
            <node concept="2JrnkZ" id="5jb5jNC4tqK" role="2Oq$k0">
              <node concept="37vLTw" id="5jb5jNC4sQQ" role="2JrQYb">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNC4nPb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="38k27IRGoEB">
    <property role="3GE5qa" value="fbtype.basic.rich" />
    <property role="TrG5h" value="ECTransitionByNode" />
    <node concept="2tJIrI" id="38k27IRGoEC" role="jymVt" />
    <node concept="312cEg" id="38k27IRGoED" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="38k27IRGoEE" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
      </node>
      <node concept="3Tm6S6" id="38k27IRGoEF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="38k27IRGoEG" role="jymVt" />
    <node concept="3Tm1VV" id="38k27IRGoEH" role="1B3o_S" />
    <node concept="3uibUv" id="38k27IRGqfj" role="EKbjA">
      <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
    </node>
    <node concept="3clFbW" id="38k27IRGoEJ" role="jymVt">
      <node concept="3cqZAl" id="38k27IRGoEK" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRGoEL" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRGoEM" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoEN" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRGoEO" role="3clFbG">
            <node concept="37vLTw" id="38k27IRGoEP" role="37vLTJ">
              <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="38k27IRGoEQ" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRGoER" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRGoER" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="38k27IRGoES" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoET" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoEU" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="38k27IRGoEV" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
      </node>
      <node concept="3Tm1VV" id="38k27IRGoEW" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRGoEX" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoEY" role="3cqZAp">
          <node concept="37vLTw" id="38k27IRGoEZ" role="3clFbG">
            <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoF0" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoF1" role="jymVt">
      <property role="TrG5h" value="getCenterX" />
      <node concept="3Tm1VV" id="38k27IRGoF2" role="1B3o_S" />
      <node concept="10Oyi0" id="38k27IRGoF3" role="3clF45" />
      <node concept="3clFbS" id="38k27IRGoF4" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoF5" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoF6" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGoF7" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IRGoF8" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IRGsFD" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="38k27IRGoFa" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3isp" resolve="getX" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoFb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGoFc" role="jymVt">
      <property role="TrG5h" value="setCenterX" />
      <node concept="3Tm1VV" id="38k27IRGoFd" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGoFe" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGoFf" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRGoFg" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRGoFh" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoFi" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoFj" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGoFk" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IRGoFl" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IS0JfH" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="38k27IRGoFn" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3jp5" resolve="setX" />
              <node concept="37vLTw" id="38k27IRGoFo" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRGoFf" resolve="x" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoFp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGoFq" role="jymVt">
      <property role="TrG5h" value="getCenterY" />
      <node concept="3Tm1VV" id="38k27IRGoFr" role="1B3o_S" />
      <node concept="10Oyi0" id="38k27IRGoFs" role="3clF45" />
      <node concept="3clFbS" id="38k27IRGoFt" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoFu" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoFv" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGoFw" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IRGoFx" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IS0JC8" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="38k27IRGoFz" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3iXb" resolve="getY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoF$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGoF_" role="jymVt">
      <property role="TrG5h" value="setCenterY" />
      <node concept="3Tm1VV" id="38k27IRGoFA" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGoFB" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGoFC" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRGoFD" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRGoFE" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoFF" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoFG" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGoFH" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IRGoFI" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IS0JZ0" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="38k27IRGoFK" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3lay" resolve="setY" />
              <node concept="37vLTw" id="38k27IRGoFL" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRGoFC" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoFM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoFN" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoFO" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="38k27IRGoFP" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGoFQ" role="3clF45" />
      <node concept="3clFbS" id="38k27IRGoFR" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoFS" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoFT" role="3clFbG">
            <node concept="37vLTw" id="38k27IRGoFU" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="38k27IRGoFV" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoFW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGuKG" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGvbj" role="jymVt">
      <property role="TrG5h" value="getSourceState" />
      <node concept="3Tm1VV" id="38k27IRGvbl" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRGvbm" role="3clF45">
        <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRGvbo" role="3clF47">
        <node concept="3clFbF" id="38k27IRGwiH" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRGwiF" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRGwZg" role="2ShVmc">
              <ref role="37wK5l" node="5jb5jNC4nxG" resolve="ECStateByNode" />
              <node concept="2OqwBi" id="38k27IRGxyf" role="37wK5m">
                <node concept="37vLTw" id="38k27IRGx6u" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="38k27IRGy3o" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGvbs" role="jymVt">
      <property role="TrG5h" value="setSourceState" />
      <node concept="3Tm1VV" id="38k27IRGvbu" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGvbv" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGvbw" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="38k27IRGvbx" role="1tU5fm">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRGvby" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRGvbz" role="3clF47">
        <node concept="3clFbF" id="38k27IRGAcz" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRGKJ1" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGD7I" role="37vLTJ">
              <node concept="37vLTw" id="38k27IRGCDr" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IRGGOD" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
              </node>
            </node>
            <node concept="2OqwBi" id="38k27IRGAl9" role="37vLTx">
              <node concept="liA8E" id="38k27IRGCoB" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC4nGo" resolve="getNode" />
              </node>
              <node concept="1eOMI4" id="38k27IRGBk6" role="2Oq$k0">
                <node concept="10QFUN" id="38k27IRGA_6" role="1eOMHV">
                  <node concept="3uibUv" id="38k27IRGBAl" role="10QFUM">
                    <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                  </node>
                  <node concept="37vLTw" id="38k27IRGAcy" role="10QFUP">
                    <ref role="3cqZAo" node="38k27IRGvbw" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvb$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGvb_" role="jymVt">
      <property role="TrG5h" value="getTargetState" />
      <node concept="3Tm1VV" id="38k27IRGvbB" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRGvbC" role="3clF45">
        <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRGvbE" role="3clF47">
        <node concept="3clFbF" id="38k27IRGy7w" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRGy7x" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRGy7y" role="2ShVmc">
              <ref role="37wK5l" node="5jb5jNC4nxG" resolve="ECStateByNode" />
              <node concept="2OqwBi" id="38k27IRGy7z" role="37wK5m">
                <node concept="37vLTw" id="38k27IRGy7$" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="38k27IRGA04" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGvbI" role="jymVt">
      <property role="TrG5h" value="setTargetState" />
      <node concept="3Tm1VV" id="38k27IRGvbK" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGvbL" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGvbM" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="38k27IRGvbN" role="1tU5fm">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRGvbO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRGvbP" role="3clF47">
        <node concept="3clFbF" id="38k27IRGLlU" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRGLlV" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGLlW" role="37vLTJ">
              <node concept="37vLTw" id="38k27IRGLlX" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IRGLU4" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
              </node>
            </node>
            <node concept="2OqwBi" id="38k27IRGLlZ" role="37vLTx">
              <node concept="liA8E" id="38k27IRGLm0" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC4nGo" resolve="getNode" />
              </node>
              <node concept="1eOMI4" id="38k27IRGLm1" role="2Oq$k0">
                <node concept="10QFUN" id="38k27IRGLm2" role="1eOMHV">
                  <node concept="3uibUv" id="38k27IRGLm3" role="10QFUM">
                    <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                  </node>
                  <node concept="37vLTw" id="38k27IRGLm4" role="10QFUP">
                    <ref role="3cqZAo" node="38k27IRGvbM" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoFX" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoFY" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="38k27IRGoFZ" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRGoG0" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRGoG1" role="3clF47">
        <node concept="3clFbJ" id="38k27IRGoG2" role="3cqZAp">
          <node concept="3clFbS" id="38k27IRGoG3" role="3clFbx">
            <node concept="3cpWs6" id="38k27IRGoG4" role="3cqZAp">
              <node concept="3clFbT" id="38k27IRGoG5" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="38k27IRGoG6" role="3clFbw">
            <node concept="Xjq3P" id="38k27IRGoG7" role="3uHU7B" />
            <node concept="37vLTw" id="38k27IRGoG8" role="3uHU7w">
              <ref role="3cqZAo" node="38k27IRGoG_" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38k27IRGoG9" role="3cqZAp">
          <node concept="3clFbS" id="38k27IRGoGa" role="3clFbx">
            <node concept="3cpWs6" id="38k27IRGoGb" role="3cqZAp">
              <node concept="3clFbT" id="38k27IRGoGc" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="38k27IRGoGd" role="3clFbw">
            <node concept="1eOMI4" id="38k27IRGoGe" role="3fr31v">
              <node concept="2ZW3vV" id="38k27IRGoGf" role="1eOMHV">
                <node concept="3uibUv" id="38k27IRGoGg" role="2ZW6by">
                  <ref role="3uigEE" node="38k27IRGoEB" resolve="ECTransitionByNode" />
                </node>
                <node concept="37vLTw" id="38k27IRGoGh" role="2ZW6bz">
                  <ref role="3cqZAo" node="38k27IRGoG_" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27IRGoGi" role="3cqZAp" />
        <node concept="3cpWs8" id="38k27IRGoGj" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRGoGk" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="38k27IRGoGl" role="1tU5fm">
              <ref role="3uigEE" node="38k27IRGoEB" resolve="ECTransitionByNode" />
            </node>
            <node concept="10QFUN" id="38k27IRGoGm" role="33vP2m">
              <node concept="3uibUv" id="38k27IRGoGn" role="10QFUM">
                <ref role="3uigEE" node="38k27IRGoEB" resolve="ECTransitionByNode" />
              </node>
              <node concept="37vLTw" id="38k27IRGoGo" role="10QFUP">
                <ref role="3cqZAo" node="38k27IRGoG_" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38k27IRGoGp" role="3cqZAp">
          <node concept="3clFbS" id="38k27IRGoGq" role="3clFbx">
            <node concept="3cpWs6" id="38k27IRGoGr" role="3cqZAp">
              <node concept="3clFbT" id="38k27IRGoGs" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="38k27IRGoGt" role="3clFbw">
            <node concept="2OqwBi" id="38k27IRGoGu" role="3uHU7w">
              <node concept="37vLTw" id="38k27IRGoGv" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoGk" resolve="that" />
              </node>
              <node concept="2OwXpG" id="38k27IRGoGw" role="2OqNvi">
                <ref role="2Oxat5" node="38k27IRGoED" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="38k27IRGoGx" role="3uHU7B">
              <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27IRGoGy" role="3cqZAp" />
        <node concept="3clFbF" id="38k27IRGoGz" role="3cqZAp">
          <node concept="3clFbT" id="38k27IRGoG$" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRGoG_" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="38k27IRGoGA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoGB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoGC" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoGD" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="38k27IRGoGE" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRGoGF" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRGoGG" role="3clF47">
        <node concept="3cpWs6" id="38k27IRGoGH" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoGI" role="3cqZAk">
            <node concept="liA8E" id="38k27IRGoGJ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
            </node>
            <node concept="2JrnkZ" id="38k27IRGoGK" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IRGoGL" role="2JrQYb">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoGM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
      <node concept="paMQc" id="6LU90BQu6Yn" role="3EZMnx">
        <node concept="3EZMnI" id="6LU90BQoFJp" role="paDBS">
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
      </node>
      <node concept="3F0ifn" id="6LU90BQoFJv" role="3EZMnx">
        <node concept="VPM3Z" id="6LU90BQoFJw" role="3F10Kt" />
      </node>
      <node concept="paMQc" id="5jb5jNC4duA" role="3EZMnx">
        <node concept="PMmxH" id="5jb5jNC4aBs" role="paDBS">
          <ref role="PMmxG" node="5jb5jNC4a_Z" resolve="DeclarationWithInterfaceAndAdapters_InterfacePart" />
        </node>
      </node>
      <node concept="3F0ifn" id="5jb5jNC4cy3" role="3EZMnx" />
      <node concept="3F0ifn" id="6LU90BQoFKZ" role="3EZMnx">
        <property role="3F0ifm" value="Network:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="pzx5h" id="6LU90BQoFL0" role="3EZMnx">
        <node concept="3VJUX4" id="6LU90BQoFL1" role="3YsKMw">
          <node concept="3clFbS" id="6LU90BQoFL2" role="2VODD2">
            <node concept="3clFbF" id="6LU90BQoFL3" role="3cqZAp">
              <node concept="2ShNRf" id="6LU90BQoFL4" role="3clFbG">
                <node concept="YeOm9" id="6LU90BQoFL5" role="2ShVmc">
                  <node concept="1Y3b0j" id="6LU90BQoFL6" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                    <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
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
                            <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                            <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
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
        <node concept="paMQc" id="5jb5jNC4aBp" role="3EZMnx">
          <node concept="PMmxH" id="5jb5jNC4aBq" role="paDBS">
            <ref role="PMmxG" node="1HEL0zWg4im" resolve="DeclarationWithInterfaceAndAdapters_Preview" />
          </node>
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
                      <node concept="3uibUv" id="1HEL0zWg5no" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1HEL0zWg5np" role="3clF47">
                      <node concept="3clFbF" id="1HEL0zWg5IP" role="3cqZAp">
                        <node concept="2ShNRf" id="1HEL0zWg5IN" role="3clFbG">
                          <node concept="1pGfFk" id="1HEL0zWg6PY" role="2ShVmc">
                            <ref role="37wK5l" to="ubo9:~EditorCell_Basic.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode)" resolve="EditorCell_FBTypeTemplate" />
                            <node concept="1Q80Hx" id="1HEL0zWg70_" role="37wK5m" />
                            <node concept="pncrf" id="1HEL0zWg7p7" role="37wK5m" />
                            <node concept="2ShNRf" id="1HEL0zWg8GS" role="37wK5m">
                              <node concept="1pGfFk" id="1HEL0zWg9ZH" role="2ShVmc">
                                <ref role="37wK5l" node="1HEL0zWfTiI" resolve="InterfaceTemplateByNode" />
                                <node concept="pncrf" id="1HEL0zWga8T" role="37wK5m" />
                              </node>
                            </node>
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
      <node concept="paMQc" id="7oJsd9wY1CY" role="3EZMnx">
        <node concept="3EZMnI" id="7oJsd9wWOOL" role="paDBS">
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
          <node concept="paMQc" id="7oJsd9wWQjn" role="3EZMnx">
            <node concept="3F2HdR" id="7oJsd9wWOOW" role="paDBS">
              <ref role="1NtTu8" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
              <node concept="2iRkQZ" id="7oJsd9wWOOX" role="2czzBx" />
            </node>
          </node>
          <node concept="3F0ifn" id="7oJsd9wWOOY" role="3EZMnx" />
          <node concept="3F0ifn" id="7oJsd9wWOOZ" role="3EZMnx">
            <property role="3F0ifm" value="Network:" />
            <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
          </node>
          <node concept="3F0ifn" id="7oJsd9x59qn" role="3EZMnx" />
          <node concept="pzx5h" id="7oJsd9wWOP0" role="3EZMnx">
            <node concept="3VJUX4" id="7oJsd9wWOP1" role="3YsKMw">
              <node concept="3clFbS" id="7oJsd9wWOP2" role="2VODD2">
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
                                <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                                <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
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
      <node concept="paMQc" id="7oJsd9wSEd1" role="3EZMnx">
        <node concept="3EZMnI" id="7oJsd9wSEd2" role="paDBS">
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
      <node concept="pzx5h" id="7oJsd9wWgeX" role="3EZMnx">
        <node concept="3VJUX4" id="7oJsd9wWgeY" role="3YsKMw">
          <node concept="3clFbS" id="7oJsd9wWgeZ" role="2VODD2">
            <node concept="3clFbF" id="7oJsd9wWgf0" role="3cqZAp">
              <node concept="2ShNRf" id="7oJsd9wWgf1" role="3clFbG">
                <node concept="YeOm9" id="7oJsd9wWgf2" role="2ShVmc">
                  <node concept="1Y3b0j" id="7oJsd9wWgf3" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                    <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
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
          <property role="Vbekb" value="ITALIC" />
        </node>
      </node>
      <node concept="1HlG4h" id="38k27IRjp_B" role="3EZMnx">
        <node concept="Vb9p2" id="38k27IRjsjN" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
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
          <property role="Vbekb" value="ITALIC" />
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
  <node concept="312cEu" id="3IX4BsKu5jS">
    <property role="TrG5h" value="DiagramConnecitonByNode" />
    <node concept="2tJIrI" id="3IX4BsKu5l0" role="jymVt" />
    <node concept="312cEg" id="3IX4BsKu5By" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3IX4BsKu5qe" role="1B3o_S" />
      <node concept="3Tqbb2" id="3IX4BsKu5Bk" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:4KieeRVlhii" resolve="Connection" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKu5BV" role="jymVt" />
    <node concept="3clFbW" id="3IX4BsKu5KP" role="jymVt">
      <node concept="3cqZAl" id="3IX4BsKu5KR" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsKu5KS" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsKu5KT" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKu67h" role="3cqZAp">
          <node concept="37vLTI" id="3IX4BsKu6VB" role="3clFbG">
            <node concept="37vLTw" id="3IX4BsKu75k" role="37vLTx">
              <ref role="3cqZAo" node="3IX4BsKu5TQ" resolve="node" />
            </node>
            <node concept="37vLTw" id="3IX4BsKu67g" role="37vLTJ">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKu5TQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3IX4BsKu5TP" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:4KieeRVlhii" resolve="Connection" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKutkd" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKutwG" role="jymVt">
      <property role="TrG5h" value="isTemplate" />
      <node concept="3Tm1VV" id="3IX4BsKutwI" role="1B3o_S" />
      <node concept="10P_77" id="3IX4BsKutwJ" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKutwK" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKutwN" role="3cqZAp">
          <node concept="3clFbT" id="3IX4BsKutwM" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKutwL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKuu8v" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKutwO" role="jymVt">
      <property role="TrG5h" value="getSourcePort" />
      <node concept="3Tm1VV" id="3IX4BsKutwQ" role="1B3o_S" />
      <node concept="3uibUv" id="5FPxgJnzaxD" role="3clF45">
        <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="3clFbS" id="3IX4BsKutwS" role="3clF47">
        <node concept="3clFbJ" id="6oXN8hZQKG2" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZQKG4" role="3clFbx">
            <node concept="3cpWs8" id="6oXN8hZQPvO" role="3cqZAp">
              <node concept="3cpWsn" id="6oXN8hZQPvP" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="6oXN8hZQPvN" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
                </node>
                <node concept="2OqwBi" id="6oXN8hZQPvS" role="33vP2m">
                  <node concept="1PxgMI" id="6tmliaA5yEa" role="2Oq$k0">
                    <node concept="chp4Y" id="6tmliaA5zHo" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                    </node>
                    <node concept="37vLTw" id="6oXN8hZQPvT" role="1m5AlR">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6tmliaA5_aV" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA5Bxw" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA5Bxy" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA5NPz" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA5NP$" role="3cpWs9">
                    <property role="TrG5h" value="componentSource" />
                    <node concept="3Tqbb2" id="6tmliaA5NPq" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA5NP_" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA5NPA" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA5NPB" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6oXN8hZQQbD" role="3cqZAp">
                  <node concept="2ShNRf" id="6oXN8hZQQiQ" role="3cqZAk">
                    <node concept="1pGfFk" id="6oXN8hZQRuy" role="2ShVmc">
                      <ref role="37wK5l" to="tphl:7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
                      <node concept="2YIFZM" id="6LU90BOz2hq" role="37wK5m">
                        <ref role="1Pybhc" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                        <ref role="37wK5l" node="6LU90BOyCVQ" resolve="create" />
                        <node concept="2OqwBi" id="6oXN8hZQWIZ" role="37wK5m">
                          <node concept="37vLTw" id="6tmliaA5NPC" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA5NP$" resolve="componentSource" />
                          </node>
                          <node concept="3TrEf2" id="6oXN8hZQXDy" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="6LU90BOz8wl" role="37wK5m" />
                      </node>
                      <node concept="2OqwBi" id="6oXN8hZRcKp" role="37wK5m">
                        <node concept="2OqwBi" id="6oXN8hZR6kV" role="2Oq$k0">
                          <node concept="37vLTw" id="6tmliaA5X1b" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA5NP$" resolve="componentSource" />
                          </node>
                          <node concept="3TrEf2" id="6tmliaA5Yz1" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                          </node>
                        </node>
                        <node concept="2bSWHS" id="6oXN8hZRixd" role="2OqNvi" />
                      </node>
                      <node concept="Rm8GO" id="6oXN8hZRjKQ" role="37wK5m">
                        <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                        <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                      </node>
                      <node concept="3clFbT" id="6oXN8hZRl53" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6tmliaA5CN$" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA5CCy" role="2Oq$k0">
                  <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA5K8i" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA5Kby" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA62mV" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA62mX" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA6b8_" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA6b8A" role="3cpWs9">
                    <property role="TrG5h" value="contextSource" />
                    <node concept="3Tqbb2" id="6tmliaA6b8B" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA6b8C" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA6uAM" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA6b8E" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6tmliaA6dul" role="3cqZAp">
                  <node concept="2ShNRf" id="6tmliaA6dum" role="3cqZAk">
                    <node concept="1pGfFk" id="6tmliaA6dun" role="2ShVmc">
                      <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                      <node concept="2OqwBi" id="6tmliaA6t31" role="37wK5m">
                        <node concept="37vLTw" id="6tmliaA6sjf" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tmliaA6b8A" resolve="contextSource" />
                        </node>
                        <node concept="3TrEf2" id="6tmliaA6xiU" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6tmliaA63GT" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA63xR" role="2Oq$k0">
                  <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA6b1h" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA6b4x" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZQLdJ" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZQKPo" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZQOUu" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZQP07" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6oXN8hZRmW9" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRmWa" role="3clFbx">
            <node concept="3cpWs8" id="6oXN8hZRmWb" role="3cqZAp">
              <node concept="3cpWsn" id="6oXN8hZRmWc" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="6oXN8hZRmWd" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
                </node>
                <node concept="2OqwBi" id="6oXN8hZRmWg" role="33vP2m">
                  <node concept="1PxgMI" id="6tmliaA6AF9" role="2Oq$k0">
                    <node concept="chp4Y" id="6tmliaA6BS7" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                    </node>
                    <node concept="37vLTw" id="6oXN8hZRmWh" role="1m5AlR">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6tmliaA6Dqk" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA6Pd0" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA6Pd2" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA70H8" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA70Hb" role="3cpWs9">
                    <property role="TrG5h" value="componentSource" />
                    <node concept="3Tqbb2" id="6tmliaA70Hc" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA70Hd" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA73i1" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA70Hf" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6oXN8hZRmWj" role="3cqZAp">
                  <node concept="2ShNRf" id="6oXN8hZRmWk" role="3cqZAk">
                    <node concept="1pGfFk" id="6oXN8hZRmWl" role="2ShVmc">
                      <ref role="37wK5l" to="tphl:7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
                      <node concept="2YIFZM" id="6LU90BOza$k" role="37wK5m">
                        <ref role="1Pybhc" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                        <ref role="37wK5l" node="6LU90BOyCVQ" resolve="create" />
                        <node concept="2OqwBi" id="6LU90BOza$l" role="37wK5m">
                          <node concept="37vLTw" id="6LU90BOza$m" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA70Hb" resolve="componentSource" />
                          </node>
                          <node concept="3TrEf2" id="6LU90BOzd13" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="6LU90BOza$o" role="37wK5m" />
                      </node>
                      <node concept="2OqwBi" id="6oXN8hZRmWt" role="37wK5m">
                        <node concept="2OqwBi" id="6oXN8hZRmWu" role="2Oq$k0">
                          <node concept="37vLTw" id="6tmliaA73nt" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA70Hb" resolve="componentSource" />
                          </node>
                          <node concept="3TrEf2" id="6tmliaA774D" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                          </node>
                        </node>
                        <node concept="2bSWHS" id="6oXN8hZRmWx" role="2OqNvi" />
                      </node>
                      <node concept="Rm8GO" id="6oXN8hZRp5a" role="37wK5m">
                        <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                        <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                      </node>
                      <node concept="3clFbT" id="6oXN8hZRmWz" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6tmliaA6QEz" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA6QuQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA6XZ$" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA6Y3v" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA79Pu" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA79Pw" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA7lts" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA7ltt" role="3cpWs9">
                    <property role="TrG5h" value="contextSource" />
                    <node concept="3Tqbb2" id="6tmliaA7ltu" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA7ltv" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA7mWJ" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA7ltx" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6tmliaA7lty" role="3cqZAp">
                  <node concept="2ShNRf" id="6tmliaA7lt$" role="3cqZAk">
                    <node concept="1pGfFk" id="6tmliaA7lt_" role="2ShVmc">
                      <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                      <node concept="2OqwBi" id="6tmliaA7ltA" role="37wK5m">
                        <node concept="37vLTw" id="6tmliaA7ltB" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tmliaA7ltt" resolve="contextSource" />
                        </node>
                        <node concept="3TrEf2" id="6tmliaA7ltC" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6tmliaA7bmV" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA7bbe" role="2Oq$k0">
                  <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA7iH6" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA7iL1" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2syzu7riLzC" role="3cqZAp">
              <node concept="3clFbS" id="2syzu7riLzD" role="3clFbx">
                <node concept="3cpWs8" id="2syzu7riLzE" role="3cqZAp">
                  <node concept="3cpWsn" id="2syzu7riLzF" role="3cpWs9">
                    <property role="TrG5h" value="constantSource" />
                    <node concept="3Tqbb2" id="2syzu7riLzG" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                    </node>
                    <node concept="1PxgMI" id="2syzu7riLzH" role="33vP2m">
                      <node concept="chp4Y" id="2syzu7riSls" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                      </node>
                      <node concept="37vLTw" id="2syzu7riLzJ" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="2syzu7riLzK" role="3cqZAp">
                  <node concept="2ShNRf" id="2syzu7riLzL" role="3cqZAk">
                    <node concept="1pGfFk" id="2syzu7riLzM" role="2ShVmc">
                      <ref role="37wK5l" node="2syzu7qTgYV" resolve="InlineValueByNode" />
                      <node concept="37vLTw" id="2syzu7riLzO" role="37wK5m">
                        <ref role="3cqZAo" node="2syzu7riLzF" resolve="constantSource" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2syzu7riLzQ" role="3clFbw">
                <node concept="37vLTw" id="2syzu7riLzR" role="2Oq$k0">
                  <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                </node>
                <node concept="1mIQ4w" id="2syzu7riLzS" role="2OqNvi">
                  <node concept="chp4Y" id="2syzu7riNrk" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZRmW$" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRmW_" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRmWA" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRnBj" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6oXN8hZRrf2" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRrf3" role="3clFbx">
            <node concept="3cpWs8" id="6oXN8hZRrf4" role="3cqZAp">
              <node concept="3cpWsn" id="6oXN8hZRrf5" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="6oXN8hZRrf6" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                </node>
                <node concept="1PxgMI" id="6oXN8hZRrf7" role="33vP2m">
                  <node concept="chp4Y" id="6oXN8hZRsuv" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                  </node>
                  <node concept="2OqwBi" id="6oXN8hZRrf9" role="1m5AlR">
                    <node concept="37vLTw" id="6oXN8hZRrfa" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                    <node concept="3TrEf2" id="6oXN8hZRrfb" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6oXN8hZRrfc" role="3cqZAp">
              <node concept="2ShNRf" id="6oXN8hZRrfd" role="3cqZAk">
                <node concept="1pGfFk" id="6oXN8hZRrfe" role="2ShVmc">
                  <ref role="37wK5l" to="tphl:7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
                  <node concept="2ShNRf" id="6oXN8hZRrff" role="37wK5m">
                    <node concept="1pGfFk" id="6oXN8hZRrfg" role="2ShVmc">
                      <ref role="37wK5l" node="3IX4BsKa1$Q" resolve="FBInstanceByFBNode" />
                      <node concept="1PxgMI" id="6oXN8hZRrfh" role="37wK5m">
                        <node concept="chp4Y" id="6oXN8hZRrfi" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                        </node>
                        <node concept="2OqwBi" id="6oXN8hZRrfj" role="1m5AlR">
                          <node concept="37vLTw" id="6oXN8hZRrfk" role="2Oq$k0">
                            <ref role="3cqZAo" node="6oXN8hZRrf5" resolve="source" />
                          </node>
                          <node concept="3TrEf2" id="6oXN8hZRucm" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="7PF$iX$jCAu" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6oXN8hZRrfm" role="37wK5m">
                    <node concept="2OqwBi" id="6oXN8hZRrfn" role="2Oq$k0">
                      <node concept="37vLTw" id="6oXN8hZRrfo" role="2Oq$k0">
                        <ref role="3cqZAo" node="6oXN8hZRrf5" resolve="source" />
                      </node>
                      <node concept="3TrEf2" id="6oXN8hZRxpE" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:75nMhMfIWB0" resolve="declaration" />
                      </node>
                    </node>
                    <node concept="2bSWHS" id="6oXN8hZRrfq" role="2OqNvi" />
                  </node>
                  <node concept="Rm8GO" id="6oXN8hZRyal" role="37wK5m">
                    <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                  </node>
                  <node concept="3clFbT" id="6oXN8hZRrfs" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZRrft" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRrfu" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRrfv" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRrWX" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6oXN8hZRpRb" role="3cqZAp">
          <node concept="10Nm6u" id="6oXN8hZRq_a" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKutwT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKuuqs" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKutwW" role="jymVt">
      <property role="TrG5h" value="getTargetPort" />
      <node concept="3Tm1VV" id="3IX4BsKutwY" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy5nj0K" role="3clF45">
        <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="3clFbS" id="3IX4BsKutx0" role="3clF47">
        <node concept="3clFbJ" id="6oXN8hZRySQ" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRySR" role="3clFbx">
            <node concept="3cpWs8" id="6tmliaA7H0Q" role="3cqZAp">
              <node concept="3cpWsn" id="6tmliaA7H0R" role="3cpWs9">
                <property role="TrG5h" value="destination" />
                <node concept="3Tqbb2" id="6tmliaA7H0S" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                </node>
                <node concept="2OqwBi" id="6tmliaA7H0T" role="33vP2m">
                  <node concept="1PxgMI" id="6tmliaA7H0U" role="2Oq$k0">
                    <node concept="chp4Y" id="6tmliaA7H0V" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                    </node>
                    <node concept="37vLTw" id="6tmliaA7H0W" role="1m5AlR">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6tmliaA7IQH" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA7H0Y" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA7H0Z" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA7H10" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA7H11" role="3cpWs9">
                    <property role="TrG5h" value="componentDestination" />
                    <node concept="3Tqbb2" id="6tmliaA7H12" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA7H13" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA7TWo" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA7H15" role="1m5AlR">
                        <ref role="3cqZAo" node="6tmliaA7H0R" resolve="destination" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6tmliaA7H16" role="3cqZAp">
                  <node concept="2ShNRf" id="6tmliaA7H17" role="3cqZAk">
                    <node concept="1pGfFk" id="6tmliaA7H18" role="2ShVmc">
                      <ref role="37wK5l" to="tphl:7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
                      <node concept="2YIFZM" id="6LU90BOzlLE" role="37wK5m">
                        <ref role="1Pybhc" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                        <ref role="37wK5l" node="6LU90BOyCVQ" resolve="create" />
                        <node concept="2OqwBi" id="6LU90BOzlLF" role="37wK5m">
                          <node concept="37vLTw" id="6LU90BOznT3" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA7H11" resolve="componentDestination" />
                          </node>
                          <node concept="3TrEf2" id="6LU90BOzlLH" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="6LU90BOzlLI" role="37wK5m" />
                      </node>
                      <node concept="2OqwBi" id="6tmliaA7H1h" role="37wK5m">
                        <node concept="2OqwBi" id="6tmliaA7H1i" role="2Oq$k0">
                          <node concept="37vLTw" id="6tmliaA7H1j" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA7H11" resolve="componentDestination" />
                          </node>
                          <node concept="3TrEf2" id="6tmliaA7H1k" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                          </node>
                        </node>
                        <node concept="2bSWHS" id="6tmliaA7H1l" role="2OqNvi" />
                      </node>
                      <node concept="Rm8GO" id="6tmliaA7H1m" role="37wK5m">
                        <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                        <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                      </node>
                      <node concept="3clFbT" id="6tmliaA7H1n" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6tmliaA7H1o" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA7H1p" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaA7H0R" resolve="destination" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA7H1q" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA7OlN" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA7H1s" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA7H1t" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA7H1u" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA7H1v" role="3cpWs9">
                    <property role="TrG5h" value="contextDestination" />
                    <node concept="3Tqbb2" id="6tmliaA7H1w" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA7H1x" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA82Ok" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA7H1z" role="1m5AlR">
                        <ref role="3cqZAo" node="6tmliaA7H0R" resolve="destination" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6tmliaA7H1$" role="3cqZAp">
                  <node concept="2ShNRf" id="6tmliaA7H1A" role="3cqZAk">
                    <node concept="1pGfFk" id="6tmliaA7H1B" role="2ShVmc">
                      <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                      <node concept="2OqwBi" id="6tmliaA7H1C" role="37wK5m">
                        <node concept="37vLTw" id="6tmliaA7H1D" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tmliaA7H1v" resolve="contextDestination" />
                        </node>
                        <node concept="3TrEf2" id="6tmliaA7H1E" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6tmliaA7H1G" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA7H1H" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaA7H0R" resolve="destination" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA7H1I" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA7Yfx" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZRyTh" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRyTi" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRyTj" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRyTk" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6oXN8hZRyTl" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRyTm" role="3clFbx">
            <node concept="3cpWs8" id="6tmliaA8a$Q" role="3cqZAp">
              <node concept="3cpWsn" id="6tmliaA8a$R" role="3cpWs9">
                <property role="TrG5h" value="destination" />
                <node concept="3Tqbb2" id="6tmliaA8a$S" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
                </node>
                <node concept="2OqwBi" id="6tmliaA8a$T" role="33vP2m">
                  <node concept="1PxgMI" id="6tmliaA8a$U" role="2Oq$k0">
                    <node concept="chp4Y" id="6tmliaA8dUr" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                    </node>
                    <node concept="37vLTw" id="6tmliaA8a$W" role="1m5AlR">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6tmliaA8a$X" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA88Vl" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA88Vm" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA88Vn" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA88Vo" role="3cpWs9">
                    <property role="TrG5h" value="componentDestination" />
                    <node concept="3Tqbb2" id="6tmliaA88Vp" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA88Vq" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA8jgS" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA88Vs" role="1m5AlR">
                        <ref role="3cqZAo" node="6tmliaA8a$R" resolve="destination" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6tmliaA88Vt" role="3cqZAp">
                  <node concept="2ShNRf" id="6tmliaA88Vu" role="3cqZAk">
                    <node concept="1pGfFk" id="6tmliaA88Vv" role="2ShVmc">
                      <ref role="37wK5l" to="tphl:7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
                      <node concept="2YIFZM" id="6LU90BOzpJv" role="37wK5m">
                        <ref role="37wK5l" node="6LU90BOyCVQ" resolve="create" />
                        <ref role="1Pybhc" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                        <node concept="2OqwBi" id="6LU90BOzpJw" role="37wK5m">
                          <node concept="37vLTw" id="6LU90BOzpJx" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA88Vo" resolve="componentDestination" />
                          </node>
                          <node concept="3TrEf2" id="6LU90BOzpJy" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="6LU90BOzpJz" role="37wK5m" />
                      </node>
                      <node concept="2OqwBi" id="6tmliaA88VC" role="37wK5m">
                        <node concept="2OqwBi" id="6tmliaA88VD" role="2Oq$k0">
                          <node concept="37vLTw" id="6tmliaA88VE" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA88Vo" resolve="componentDestination" />
                          </node>
                          <node concept="3TrEf2" id="6tmliaAaz2x" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                          </node>
                        </node>
                        <node concept="2bSWHS" id="6tmliaA88VG" role="2OqNvi" />
                      </node>
                      <node concept="Rm8GO" id="6tmliaA8kTE" role="37wK5m">
                        <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                        <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                      </node>
                      <node concept="3clFbT" id="6tmliaA88VI" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6tmliaA88VJ" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA88VK" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaA8a$R" resolve="destination" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA88VL" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA8hxr" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA88VN" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA88VO" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA88VP" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA88VQ" role="3cpWs9">
                    <property role="TrG5h" value="contextDestination" />
                    <node concept="3Tqbb2" id="6tmliaA88VR" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA88VS" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA8okB" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA88VU" role="1m5AlR">
                        <ref role="3cqZAo" node="6tmliaA8a$R" resolve="destination" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6tmliaA88VV" role="3cqZAp">
                  <node concept="2ShNRf" id="6tmliaA88VX" role="3cqZAk">
                    <node concept="1pGfFk" id="6tmliaA88VY" role="2ShVmc">
                      <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                      <node concept="2OqwBi" id="6tmliaA88VZ" role="37wK5m">
                        <node concept="37vLTw" id="6tmliaA88W0" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tmliaA88VQ" resolve="contextDestination" />
                        </node>
                        <node concept="3TrEf2" id="6tmliaAa_0c" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6tmliaA88W3" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA88W4" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaA8a$R" resolve="destination" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA88W5" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA8myn" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZRyTK" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRyTL" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRyTM" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRyTN" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6oXN8hZRyTO" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRyTP" role="3clFbx">
            <node concept="3cpWs8" id="6oXN8hZRyTQ" role="3cqZAp">
              <node concept="3cpWsn" id="6oXN8hZRyTR" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3Tqbb2" id="6oXN8hZRyTS" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                </node>
                <node concept="1PxgMI" id="6oXN8hZRyTT" role="33vP2m">
                  <node concept="chp4Y" id="6oXN8hZREYv" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                  </node>
                  <node concept="2OqwBi" id="6oXN8hZRyTV" role="1m5AlR">
                    <node concept="37vLTw" id="6oXN8hZRyTW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                    <node concept="3TrEf2" id="6oXN8hZRCrq" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6oXN8hZRyTY" role="3cqZAp">
              <node concept="2ShNRf" id="6oXN8hZRyTZ" role="3cqZAk">
                <node concept="1pGfFk" id="6oXN8hZRyU0" role="2ShVmc">
                  <ref role="37wK5l" to="tphl:7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
                  <node concept="2ShNRf" id="6oXN8hZRyU1" role="37wK5m">
                    <node concept="1pGfFk" id="6oXN8hZRyU2" role="2ShVmc">
                      <ref role="37wK5l" node="3IX4BsKa1$Q" resolve="FBInstanceByFBNode" />
                      <node concept="1PxgMI" id="6oXN8hZRyU3" role="37wK5m">
                        <node concept="chp4Y" id="6oXN8hZRyU4" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                        </node>
                        <node concept="2OqwBi" id="6oXN8hZRyU5" role="1m5AlR">
                          <node concept="37vLTw" id="6oXN8hZRyU6" role="2Oq$k0">
                            <ref role="3cqZAo" node="6oXN8hZRyTR" resolve="target" />
                          </node>
                          <node concept="3TrEf2" id="6oXN8hZRyU7" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="7PF$iX$jGPn" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6oXN8hZRyU8" role="37wK5m">
                    <node concept="2OqwBi" id="6oXN8hZRyU9" role="2Oq$k0">
                      <node concept="37vLTw" id="6oXN8hZRyUa" role="2Oq$k0">
                        <ref role="3cqZAo" node="6oXN8hZRyTR" resolve="target" />
                      </node>
                      <node concept="3TrEf2" id="6oXN8hZRyUb" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                      </node>
                    </node>
                    <node concept="2bSWHS" id="6oXN8hZRyUc" role="2OqNvi" />
                  </node>
                  <node concept="Rm8GO" id="6oXN8hZRyUd" role="37wK5m">
                    <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                  </node>
                  <node concept="3clFbT" id="6oXN8hZRyUe" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZRyUf" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRyUg" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRyUh" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRyUi" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6oXN8hZRyUj" role="3cqZAp">
          <node concept="10Nm6u" id="6oXN8hZRyUk" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKutx1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKuuGq" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKutx4" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="3Tm1VV" id="3IX4BsKutx6" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy5A5vT" role="3clF45">
        <ref role="3uigEE" to="tphl:6$FGuy5_Djq" resolve="ConnectionPath" />
      </node>
      <node concept="3clFbS" id="3IX4BsKutx8" role="3clF47">
        <node concept="3cpWs8" id="6$FGuy5A8Fh" role="3cqZAp">
          <node concept="3cpWsn" id="6$FGuy5A8Fi" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3Tqbb2" id="6$FGuy5A8Fg" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3IX4BsKohXi" resolve="ConnectionPath" />
            </node>
            <node concept="2OqwBi" id="6$FGuy5A8Fj" role="33vP2m">
              <node concept="37vLTw" id="1CY1mmAXFsD" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="6$FGuy5A8Fl" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6$FGuy5A7QB" role="3cqZAp">
          <node concept="3clFbS" id="6$FGuy5A7QD" role="3clFbx">
            <node concept="3cpWs6" id="1CY1mmAXGvq" role="3cqZAp">
              <node concept="2ShNRf" id="6$FGuy5AcZB" role="3cqZAk">
                <node concept="1pGfFk" id="6$FGuy5AcV9" role="2ShVmc">
                  <ref role="37wK5l" to="tphl:6$FGuy5_SPt" resolve="ConnectionPath" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6$FGuy5A8X3" role="3clFbw">
            <node concept="37vLTw" id="6$FGuy5A8Fm" role="2Oq$k0">
              <ref role="3cqZAo" node="6$FGuy5A8Fi" resolve="path" />
            </node>
            <node concept="1mIQ4w" id="6$FGuy5A9wW" role="2OqNvi">
              <node concept="chp4Y" id="6$FGuy5A9zj" role="cj9EA">
                <ref role="cht4Q" to="xiqq:3IX4BsKoiap" resolve="StraightConnectionPath" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6$FGuy5Ado5" role="3eNLev">
            <node concept="3clFbS" id="6$FGuy5Ado7" role="3eOfB_">
              <node concept="3cpWs6" id="1CY1mmAXU5Q" role="3cqZAp">
                <node concept="2ShNRf" id="6$FGuy5AdD9" role="3cqZAk">
                  <node concept="1pGfFk" id="6$FGuy5AdDa" role="2ShVmc">
                    <ref role="37wK5l" to="tphl:6$FGuy5_SjL" resolve="ConnectionPath" />
                    <node concept="2OqwBi" id="6$FGuy5AePn" role="37wK5m">
                      <node concept="1PxgMI" id="6$FGuy5AkHj" role="2Oq$k0">
                        <node concept="chp4Y" id="6$FGuy5AkHk" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
                        </node>
                        <node concept="37vLTw" id="6$FGuy5AkHl" role="1m5AlR">
                          <ref role="3cqZAo" node="6$FGuy5A8Fi" resolve="path" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="6$FGuy5Akhf" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:3IX4BsKoiH9" resolve="getDX" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6$FGuy5Adut" role="3eO9$A">
              <node concept="37vLTw" id="6$FGuy5Aduu" role="2Oq$k0">
                <ref role="3cqZAo" node="6$FGuy5A8Fi" resolve="path" />
              </node>
              <node concept="1mIQ4w" id="6$FGuy5Aduv" role="2OqNvi">
                <node concept="chp4Y" id="6$FGuy5AdzP" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="6$FGuy5AknH" role="3eNLev">
            <node concept="3clFbS" id="6$FGuy5AknJ" role="3eOfB_">
              <node concept="3cpWs8" id="6$FGuy5AmGG" role="3cqZAp">
                <node concept="3cpWsn" id="6$FGuy5AmGH" role="3cpWs9">
                  <property role="TrG5h" value="fourAngle" />
                  <node concept="3Tqbb2" id="6$FGuy5AmGF" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                  </node>
                  <node concept="1PxgMI" id="6$FGuy5AmGI" role="33vP2m">
                    <node concept="chp4Y" id="6$FGuy5AmGJ" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                    </node>
                    <node concept="37vLTw" id="6$FGuy5AmGK" role="1m5AlR">
                      <ref role="3cqZAo" node="6$FGuy5A8Fi" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1CY1mmAXYnc" role="3cqZAp">
                <node concept="2ShNRf" id="6$FGuy5Amgv" role="3cqZAk">
                  <node concept="1pGfFk" id="6$FGuy5Amdl" role="2ShVmc">
                    <ref role="37wK5l" to="tphl:6$FGuy5_RCC" resolve="ConnectionPath" />
                    <node concept="2OqwBi" id="6$FGuy5An5j" role="37wK5m">
                      <node concept="37vLTw" id="6$FGuy5AmGL" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5AmGH" resolve="fourAngle" />
                      </node>
                      <node concept="2qgKlT" id="6$FGuy5Asxb" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:3IX4BsKoo4v" resolve="getDX1" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6$FGuy5At1g" role="37wK5m">
                      <node concept="37vLTw" id="6$FGuy5AsOw" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5AmGH" resolve="fourAngle" />
                      </node>
                      <node concept="2qgKlT" id="6$FGuy5AyxI" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:3IX4BsKoqdS" resolve="getDY" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6$FGuy5Azs6" role="37wK5m">
                      <node concept="37vLTw" id="6$FGuy5AyPA" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5AmGH" resolve="fourAngle" />
                      </node>
                      <node concept="2qgKlT" id="6$FGuy5ACWN" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:3IX4BsKoq$j" resolve="getDX2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6$FGuy5AkyC" role="3eO9$A">
              <node concept="37vLTw" id="6$FGuy5AkyD" role="2Oq$k0">
                <ref role="3cqZAo" node="6$FGuy5A8Fi" resolve="path" />
              </node>
              <node concept="1mIQ4w" id="6$FGuy5AkyE" role="2OqNvi">
                <node concept="chp4Y" id="6$FGuy5AkC2" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6$FGuy5ADxf" role="9aQIa">
            <node concept="3clFbS" id="6$FGuy5ADxg" role="9aQI4">
              <node concept="YS8fn" id="6$FGuy5ADQR" role="3cqZAp">
                <node concept="2ShNRf" id="6$FGuy5ADUm" role="YScLw">
                  <node concept="1pGfFk" id="6$FGuy5AEAm" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="6$FGuy5AFci" role="37wK5m">
                      <property role="Xl_RC" value="unknown path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKutx9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5_zE$" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5__Lk" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3Tm1VV" id="6$FGuy5__Lm" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5__Ln" role="3clF45" />
      <node concept="37vLTG" id="6$FGuy5__Lo" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="6$FGuy5AFYd" role="1tU5fm">
          <ref role="3uigEE" to="tphl:6$FGuy5_Djq" resolve="ConnectionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="6$FGuy5__Lq" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5AV4q" role="3cqZAp">
          <node concept="37vLTI" id="6$FGuy5AV4r" role="3clFbG">
            <node concept="2OqwBi" id="6$FGuy5AV4v" role="37vLTJ">
              <node concept="37vLTw" id="6$FGuy5AV4w" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="6$FGuy5AV4x" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
              </node>
            </node>
            <node concept="2YIFZM" id="6$FGuy5WdWj" role="37vLTx">
              <ref role="37wK5l" node="6$FGuy5sILr" resolve="serializeConnectionPath" />
              <ref role="1Pybhc" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
              <node concept="37vLTw" id="6$FGuy5We36" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5__Lo" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5__Lr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5wbSO" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5BcFu" role="jymVt">
      <property role="TrG5h" value="setSourcePort" />
      <node concept="3Tm1VV" id="6$FGuy5BcFw" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5BcFx" role="3clF45" />
      <node concept="37vLTG" id="6$FGuy5BcFy" role="3clF46">
        <property role="TrG5h" value="sourcePort" />
        <node concept="3uibUv" id="6$FGuy5BcFA" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="6$FGuy5BcFB" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5WePL" role="3cqZAp">
          <node concept="37vLTI" id="6$FGuy5WePM" role="3clFbG">
            <node concept="2OqwBi" id="6$FGuy5WePN" role="37vLTJ">
              <node concept="37vLTw" id="6$FGuy5WePO" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="6$FGuy5WhBc" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
              </node>
            </node>
            <node concept="2YIFZM" id="6$FGuy5WgcT" role="37vLTx">
              <ref role="37wK5l" node="6$FGuy5qK2l" resolve="serializeSourcePort" />
              <ref role="1Pybhc" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
              <node concept="37vLTw" id="6$FGuy5WgcU" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5BcFy" resolve="sourcePort" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5BcFC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5BgMs" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5BcFD" role="jymVt">
      <property role="TrG5h" value="setTargetPort" />
      <node concept="3Tm1VV" id="6$FGuy5BcFF" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5BcFG" role="3clF45" />
      <node concept="37vLTG" id="6$FGuy5BcFH" role="3clF46">
        <property role="TrG5h" value="targetPort" />
        <node concept="3uibUv" id="6$FGuy5BcFL" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="6$FGuy5BcFM" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5WhGA" role="3cqZAp">
          <node concept="37vLTI" id="6$FGuy5WhGB" role="3clFbG">
            <node concept="2OqwBi" id="6$FGuy5WhGC" role="37vLTJ">
              <node concept="37vLTw" id="6$FGuy5WhGD" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="6$FGuy5Wio_" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
              </node>
            </node>
            <node concept="2YIFZM" id="6$FGuy5Wiuh" role="37vLTx">
              <ref role="37wK5l" node="6$FGuy5smqM" resolve="serializeDestinationPort" />
              <ref role="1Pybhc" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
              <node concept="37vLTw" id="6$FGuy5WjJz" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5BcFH" resolve="targetPort" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5BcFN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5BiMi" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5wd_D" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="6$FGuy5wd_F" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5wd_G" role="3clF45" />
      <node concept="3clFbS" id="6$FGuy5wd_I" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5wgYQ" role="3cqZAp">
          <node concept="2OqwBi" id="6$FGuy5whaK" role="3clFbG">
            <node concept="37vLTw" id="6$FGuy5wgYP" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="6$FGuy5wkTI" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5wd_J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5wbZY" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKutxc" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="3IX4BsKutxe" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKutxf" role="3clF45">
        <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="3IX4BsKutxg" role="3clF47">
        <node concept="3clFbJ" id="3IX4BsKuvmU" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKuvNp" role="3clFbw">
            <node concept="37vLTw" id="3IX4BsKuvtw" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="3IX4BsKuztE" role="2OqNvi">
              <node concept="chp4Y" id="3IX4BsKuzxa" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3IX4BsKuvmW" role="3clFbx">
            <node concept="3cpWs6" id="3IX4BsKuzIs" role="3cqZAp">
              <node concept="Rm8GO" id="3IX4BsKu$yE" role="3cqZAk">
                <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3IX4BsKu$K$" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKu$K_" role="3clFbw">
            <node concept="37vLTw" id="3IX4BsKu$KA" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="3IX4BsKu$KB" role="2OqNvi">
              <node concept="chp4Y" id="3IX4BsKu_89" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3IX4BsKu$KD" role="3clFbx">
            <node concept="3cpWs6" id="3IX4BsKu$KE" role="3cqZAp">
              <node concept="Rm8GO" id="3IX4BsKu_fx" role="3cqZAk">
                <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3IX4BsKu_xj" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKu_xk" role="3clFbw">
            <node concept="37vLTw" id="3IX4BsKu_xl" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="3IX4BsKu_xm" role="2OqNvi">
              <node concept="chp4Y" id="3IX4BsKu_WU" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3IX4BsKu_xo" role="3clFbx">
            <node concept="3cpWs6" id="3IX4BsKu_xp" role="3cqZAp">
              <node concept="Rm8GO" id="3IX4BsKuA4k" role="3cqZAk">
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3IX4BsKuB90" role="3cqZAp">
          <node concept="10Nm6u" id="3IX4BsKuByO" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKutxh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7PF$iX$pQny" role="jymVt" />
    <node concept="3clFb_" id="7PF$iX$pRuG" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="7PF$iX$pRuH" role="3clF45">
        <ref role="ehGHo" to="xiqq:4KieeRVlhii" resolve="Connection" />
      </node>
      <node concept="3Tm1VV" id="7PF$iX$pRuI" role="1B3o_S" />
      <node concept="3clFbS" id="7PF$iX$pRuJ" role="3clF47">
        <node concept="3clFbF" id="7PF$iX$pRuK" role="3cqZAp">
          <node concept="37vLTw" id="7PF$iX$pRuF" role="3clFbG">
            <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7PF$iX$pQs_" role="jymVt" />
    <node concept="3Tm1VV" id="3IX4BsKu5jT" role="1B3o_S" />
    <node concept="3uibUv" id="7PF$iX$jL6W" role="EKbjA">
      <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
    </node>
    <node concept="3clFb_" id="3IX4BsKu79A" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="3IX4BsKu79B" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsKu79C" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsKu79D" role="3clF47">
        <node concept="3cpWs6" id="3IX4BsKu8fw" role="3cqZAp">
          <node concept="22lmx$" id="3IX4BsKu9zO" role="3cqZAk">
            <node concept="1eOMI4" id="3IX4BsKufBx" role="3uHU7w">
              <node concept="1Wc70l" id="3IX4BsKubHm" role="1eOMHV">
                <node concept="3clFbC" id="3IX4BsKud7J" role="3uHU7w">
                  <node concept="37vLTw" id="3IX4BsKuc2G" role="3uHU7B">
                    <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                  </node>
                  <node concept="2OqwBi" id="3IX4BsKuej0" role="3uHU7w">
                    <node concept="2OwXpG" id="3IX4BsKuh79" role="2OqNvi">
                      <ref role="2Oxat5" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                    <node concept="1eOMI4" id="3IX4BsKufBv" role="2Oq$k0">
                      <node concept="10QFUN" id="3IX4BsKueCY" role="1eOMHV">
                        <node concept="3uibUv" id="3IX4BsKufZJ" role="10QFUM">
                          <ref role="3uigEE" node="3IX4BsKu5jS" resolve="DiagramConnecitonByNode" />
                        </node>
                        <node concept="37vLTw" id="3IX4BsKue8S" role="10QFUP">
                          <ref role="3cqZAo" node="3IX4BsKu7a6" resolve="o" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="3IX4BsKuatp" role="3uHU7B">
                  <node concept="3uibUv" id="3IX4BsKuaLS" role="2ZW6by">
                    <ref role="3uigEE" node="3IX4BsKu5jS" resolve="DiagramConnecitonByNode" />
                  </node>
                  <node concept="37vLTw" id="3IX4BsKua7$" role="2ZW6bz">
                    <ref role="3cqZAo" node="3IX4BsKu7a6" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3IX4BsKu8Xd" role="3uHU7B">
              <node concept="Xjq3P" id="3IX4BsKu8xO" role="3uHU7B" />
              <node concept="37vLTw" id="3IX4BsKu9eP" role="3uHU7w">
                <ref role="3cqZAo" node="3IX4BsKu7a6" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKu7a6" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="3IX4BsKu7a7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKu7a8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKuhBC" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKu7a_" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="3IX4BsKu7aA" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsKu7aB" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsKu7aC" role="3clF47">
        <node concept="3cpWs6" id="3IX4BsKusZq" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKuiQE" role="3cqZAk">
            <node concept="2JrnkZ" id="3IX4BsKuo_R" role="2Oq$k0">
              <node concept="37vLTw" id="3IX4BsKuiqL" role="2JrQYb">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
            </node>
            <node concept="liA8E" id="3IX4BsKusne" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKu7aD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
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
          <property role="Q2I2d" value="punctuation" />
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
  <node concept="312cEu" id="3IX4BsK9W3D">
    <property role="TrG5h" value="FBInstanceByFBNode" />
    <node concept="2tJIrI" id="3IX4BsK9WnL" role="jymVt" />
    <node concept="3clFbW" id="3IX4BsKa1$Q" role="jymVt">
      <node concept="3cqZAl" id="3IX4BsKa1$R" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsKa1$S" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsKa1$T" role="3clF47">
        <node concept="XkiVB" id="6LU90BOj2bC" role="3cqZAp">
          <ref role="37wK5l" node="6LU90BOirFr" resolve="FBInstanceByNode" />
          <node concept="37vLTw" id="6LU90BOj30Q" role="37wK5m">
            <ref role="3cqZAo" node="3IX4BsKa1$Y" resolve="node" />
          </node>
          <node concept="37vLTw" id="6LU90BOj3g7" role="37wK5m">
            <ref role="3cqZAo" node="2_D_3xXufst" resolve="prototype" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKa1$Y" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3IX4BsKa1$Z" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="2_D_3xXufst" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="10P_77" id="2_D_3xXufX$" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOjpEQ" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOjkMv" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tmbuc" id="6LU90BOjkMx" role="1B3o_S" />
      <node concept="3Tqbb2" id="6LU90BOjkMy" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3clFbS" id="6LU90BOjkMz" role="3clF47">
        <node concept="3clFbF" id="6LU90BOjmTR" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOjn6l" role="3clFbG">
            <node concept="1rXfSq" id="6LU90BOjmTQ" role="2Oq$k0">
              <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
            </node>
            <node concept="3TrEf2" id="6LU90BOjoyb" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:3IX4BsKatOx" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOjkM$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOj7nj" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKbji4" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3Tm1VV" id="3IX4BsKbji5" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKbji6" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3IX4BsKbji7" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsKbji8" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKbji9" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbjia" role="3clFbG">
            <node concept="2OqwBi" id="3IX4BsKbjib" role="2Oq$k0">
              <node concept="2OqwBi" id="3IX4BsKbjic" role="2Oq$k0">
                <node concept="2OqwBi" id="3IX4BsKbogv" role="2Oq$k0">
                  <node concept="1rXfSq" id="6LU90BOjeu2" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                  <node concept="3TrEf2" id="3IX4BsKbttY" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3IX4BsKbjie" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="3$u5V9" id="3IX4BsKbjif" role="2OqNvi">
                <node concept="1bVj0M" id="3IX4BsKbjig" role="23t8la">
                  <node concept="3clFbS" id="3IX4BsKbjih" role="1bW5cS">
                    <node concept="3clFbF" id="3IX4BsKbjii" role="3cqZAp">
                      <node concept="2ShNRf" id="3IX4BsKbjij" role="3clFbG">
                        <node concept="1pGfFk" id="3IX4BsKbjik" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="3IX4BsKbjil" role="37wK5m">
                            <node concept="37vLTw" id="3IX4BsKbjim" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjiq" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3IX4BsKbjin" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="3IX4BsKbjio" role="37wK5m" />
                          <node concept="Rm8GO" id="3IX4BsKbjip" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3IX4BsKbjiq" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3IX4BsKbjir" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="3IX4BsKbjis" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKbjit" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKbkAE" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKbjiu" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3Tm1VV" id="3IX4BsKbjiv" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKbjiw" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3IX4BsKbjix" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsKbjiy" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKbjiz" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbji$" role="3clFbG">
            <node concept="2OqwBi" id="3IX4BsKbji_" role="2Oq$k0">
              <node concept="2OqwBi" id="3IX4BsKbjiA" role="2Oq$k0">
                <node concept="2OqwBi" id="3IX4BsKbu08" role="2Oq$k0">
                  <node concept="3TrEf2" id="3IX4BsKbzgi" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOjf2_" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3IX4BsKbjiC" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
              <node concept="3$u5V9" id="3IX4BsKbjiD" role="2OqNvi">
                <node concept="1bVj0M" id="3IX4BsKbjiE" role="23t8la">
                  <node concept="3clFbS" id="3IX4BsKbjiF" role="1bW5cS">
                    <node concept="3clFbF" id="3IX4BsKbjiG" role="3cqZAp">
                      <node concept="2ShNRf" id="3IX4BsKbjiH" role="3clFbG">
                        <node concept="1pGfFk" id="3IX4BsKbjiI" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="3IX4BsKbjiJ" role="37wK5m">
                            <node concept="37vLTw" id="3IX4BsKbjiK" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjiO" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3IX4BsKbjiL" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="3IX4BsKbjiM" role="37wK5m" />
                          <node concept="Rm8GO" id="3IX4BsKbjiN" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3IX4BsKbjiO" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3IX4BsKbjiP" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="3IX4BsKbjiQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKbjiR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKblJc" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKbjiS" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3Tm1VV" id="3IX4BsKbjiT" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKbjiU" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3IX4BsKbjiV" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsKbjiW" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKbjiX" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbjiY" role="3clFbG">
            <node concept="2OqwBi" id="3IX4BsKbjiZ" role="2Oq$k0">
              <node concept="2OqwBi" id="3IX4BsKbjj0" role="2Oq$k0">
                <node concept="2OqwBi" id="3IX4BsKbzLk" role="2Oq$k0">
                  <node concept="3TrEf2" id="3IX4BsKbCYQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOjfBk" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3IX4BsKbjj2" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="3IX4BsKbjj3" role="2OqNvi">
                <node concept="1bVj0M" id="3IX4BsKbjj4" role="23t8la">
                  <node concept="3clFbS" id="3IX4BsKbjj5" role="1bW5cS">
                    <node concept="3clFbF" id="3IX4BsKbjj6" role="3cqZAp">
                      <node concept="2ShNRf" id="3IX4BsKbjj7" role="3clFbG">
                        <node concept="1pGfFk" id="3IX4BsKbjj8" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="3IX4BsKbjj9" role="37wK5m">
                            <node concept="37vLTw" id="3IX4BsKbjja" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjje" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3IX4BsKbjjb" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="3IX4BsKbjjc" role="37wK5m" />
                          <node concept="Rm8GO" id="3IX4BsKbjjd" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3IX4BsKbjje" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3IX4BsKbjjf" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="3IX4BsKbjjg" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKbjjh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKbmRJ" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKbjji" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3Tm1VV" id="3IX4BsKbjjj" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKbjjk" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3IX4BsKbjjl" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsKbjjm" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKbjjn" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbjjo" role="3clFbG">
            <node concept="2OqwBi" id="3IX4BsKbjjp" role="2Oq$k0">
              <node concept="2OqwBi" id="3IX4BsKbjjq" role="2Oq$k0">
                <node concept="2OqwBi" id="3IX4BsKbDx3" role="2Oq$k0">
                  <node concept="3TrEf2" id="3IX4BsKbILg" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOjgcl" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3IX4BsKbjjs" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="3IX4BsKbjjt" role="2OqNvi">
                <node concept="1bVj0M" id="3IX4BsKbjju" role="23t8la">
                  <node concept="3clFbS" id="3IX4BsKbjjv" role="1bW5cS">
                    <node concept="3clFbF" id="3IX4BsKbjjw" role="3cqZAp">
                      <node concept="2ShNRf" id="3IX4BsKbjjx" role="3clFbG">
                        <node concept="1pGfFk" id="3IX4BsKbjjy" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="3IX4BsKbjjz" role="37wK5m">
                            <node concept="37vLTw" id="3IX4BsKbjj$" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjjC" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3IX4BsKbjj_" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="3IX4BsKbjjA" role="37wK5m" />
                          <node concept="Rm8GO" id="3IX4BsKbjjB" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3IX4BsKbjjC" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3IX4BsKbjjD" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="3IX4BsKbjjE" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKbjjF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNRYEv" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNRYP_" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="6LU90BNRYPA" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNRYPB" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNRYPC" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BNRYPD" role="3clF47">
        <node concept="3clFbF" id="6LU90BNRYPE" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNRYPF" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BNRYPG" role="2Oq$k0">
              <node concept="2OqwBi" id="6LU90BNRYPH" role="2Oq$k0">
                <node concept="3Tsc0h" id="6LU90BNRYPI" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
                <node concept="2OqwBi" id="6LU90BNS490" role="2Oq$k0">
                  <node concept="3TrEf2" id="6LU90BNSb3R" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOjgMJ" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="6LU90BNRYPK" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BNRYPL" role="23t8la">
                  <node concept="3clFbS" id="6LU90BNRYPM" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BNRYPN" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BNRYPO" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BNRYPP" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BNRYPQ" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BNRYPR" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BNRYPV" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BNRYPS" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BNRYPT" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BNRYPU" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BNRYPV" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BNRYPW" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BNRYPX" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BNRYPY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNRYPZ" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNRYQ0" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="6LU90BNRYQ1" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNRYQ2" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNRYQ3" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BNRYQ4" role="3clF47">
        <node concept="3clFbF" id="6LU90BNRYQ5" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNRYQ6" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BNRYQ7" role="2Oq$k0">
              <node concept="2OqwBi" id="6LU90BNRYQ8" role="2Oq$k0">
                <node concept="2OqwBi" id="6LU90BNScE0" role="2Oq$k0">
                  <node concept="3TrEf2" id="6LU90BNSjs0" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOjhqI" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6LU90BNRYQa" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                </node>
              </node>
              <node concept="3$u5V9" id="6LU90BNRYQb" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BNRYQc" role="23t8la">
                  <node concept="3clFbS" id="6LU90BNRYQd" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BNRYQe" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BNRYQf" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BNRYQg" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BNRYQh" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BNRYQi" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BNRYQm" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BNRYQj" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BNRYQk" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BNRYQl" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BNRYQm" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BNRYQn" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BNRYQo" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BNRYQp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKa0o3" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsK9Wq5" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="3IX4BsK9Wq7" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsK9Wq8" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3IX4BsK9Wqb" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKb7NJ" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbdnV" role="3clFbG">
            <node concept="2OqwBi" id="3IX4BsKb86d" role="2Oq$k0">
              <node concept="3TrEf2" id="3IX4BsKb8UA" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
              <node concept="1rXfSq" id="6LU90BOji2U" role="2Oq$k0">
                <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
              </node>
            </node>
            <node concept="3TrcHB" id="3IX4BsKbhOY" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsK9Wqc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3IX4BsK9W3E" role="1B3o_S" />
    <node concept="3uibUv" id="6LU90BOiYJM" role="1zkMxy">
      <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
      <node concept="3Tqbb2" id="6LU90BOjKcc" role="11_B2D">
        <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6LU90BOirFi">
    <property role="TrG5h" value="FBInstanceByNode" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6LU90BOirFj" role="jymVt" />
    <node concept="312cEg" id="6LU90BOirFk" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6LU90BOirFl" role="1B3o_S" />
      <node concept="16syzq" id="6LU90BOjvVo" role="1tU5fm">
        <ref role="16sUi3" node="6LU90BOjrhe" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOi$Vx" role="jymVt" />
    <node concept="312cEg" id="6LU90BOirFn" role="jymVt">
      <property role="TrG5h" value="myPrototype" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6LU90BOjVmH" role="1B3o_S" />
      <node concept="10P_77" id="6LU90BOirFp" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="6LU90BOirFq" role="jymVt" />
    <node concept="3clFbW" id="6LU90BOirFr" role="jymVt">
      <node concept="3cqZAl" id="6LU90BOirFs" role="3clF45" />
      <node concept="3Tm1VV" id="6LU90BOirFt" role="1B3o_S" />
      <node concept="3clFbS" id="6LU90BOirFu" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirFv" role="3cqZAp">
          <node concept="37vLTI" id="6LU90BOirFw" role="3clFbG">
            <node concept="37vLTw" id="6LU90BOirFx" role="37vLTJ">
              <ref role="3cqZAo" node="6LU90BOirFk" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="6LU90BOirFy" role="37vLTx">
              <ref role="3cqZAo" node="6LU90BOirFB" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BOirFz" role="3cqZAp">
          <node concept="37vLTI" id="6LU90BOirF$" role="3clFbG">
            <node concept="37vLTw" id="6LU90BOirF_" role="37vLTx">
              <ref role="3cqZAo" node="6LU90BOirFD" resolve="prototype" />
            </node>
            <node concept="37vLTw" id="6LU90BOirFA" role="37vLTJ">
              <ref role="3cqZAo" node="6LU90BOirFn" resolve="myPrototype" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6LU90BOirFB" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="6LU90BOjwSD" role="1tU5fm">
          <ref role="16sUi3" node="6LU90BOjrhe" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="6LU90BOirFD" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="10P_77" id="6LU90BOirFE" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirFF" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOiIR6" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="6LU90BOiIR9" role="3clF47" />
      <node concept="3Tmbuc" id="6LU90BOiLRM" role="1B3o_S" />
      <node concept="3Tqbb2" id="6LU90BOiEL_" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOiAxw" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirFG" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="3Tm1VV" id="6LU90BOirFH" role="1B3o_S" />
      <node concept="10Oyi0" id="6LU90BOirFI" role="3clF45" />
      <node concept="3clFbS" id="6LU90BOirFJ" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirFK" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOjCd6" role="3clFbG">
            <node concept="1eOMI4" id="6LU90BOjALX" role="2Oq$k0">
              <node concept="10QFUN" id="6LU90BOjBn0" role="1eOMHV">
                <node concept="3uibUv" id="6LU90BOjC0w" role="10QFUM">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="37vLTw" id="6LU90BOirFN" role="10QFUP">
                  <ref role="3cqZAo" node="6LU90BOirFk" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6LU90BOjHpK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirFP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirFQ" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirFR" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="3Tm1VV" id="6LU90BOirFS" role="1B3o_S" />
      <node concept="10P_77" id="6LU90BOirFT" role="3clF45" />
      <node concept="37vLTG" id="6LU90BOirFU" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="6LU90BOirFV" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BOirFW" role="3clF47">
        <node concept="3cpWs6" id="6LU90BOirFX" role="3cqZAp">
          <node concept="1Wc70l" id="6LU90BOirFY" role="3cqZAk">
            <node concept="3clFbC" id="6LU90BOirFZ" role="3uHU7w">
              <node concept="37vLTw" id="6LU90BOirG0" role="3uHU7B">
                <ref role="3cqZAo" node="6LU90BOirFk" resolve="myNode" />
              </node>
              <node concept="2OqwBi" id="6LU90BOirG1" role="3uHU7w">
                <node concept="1eOMI4" id="6LU90BOirG2" role="2Oq$k0">
                  <node concept="10QFUN" id="6LU90BOirG3" role="1eOMHV">
                    <node concept="3uibUv" id="6LU90BOirG4" role="10QFUM">
                      <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                    </node>
                    <node concept="37vLTw" id="6LU90BOirG5" role="10QFUP">
                      <ref role="3cqZAo" node="6LU90BOirFU" resolve="o" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="6LU90BOirG6" role="2OqNvi">
                  <ref role="2Oxat5" node="6LU90BOirFk" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="6LU90BOirG7" role="3uHU7B">
              <node concept="3uibUv" id="6LU90BOirG8" role="2ZW6by">
                <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
              </node>
              <node concept="37vLTw" id="6LU90BOirG9" role="2ZW6bz">
                <ref role="3cqZAo" node="6LU90BOirFU" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirGa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirGb" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirGc" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="16syzq" id="6LU90BOjybu" role="3clF45">
        <ref role="16sUi3" node="6LU90BOjrhe" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="6LU90BOirGe" role="1B3o_S" />
      <node concept="3clFbS" id="6LU90BOirGf" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirGg" role="3cqZAp">
          <node concept="37vLTw" id="6LU90BOirGh" role="3clFbG">
            <ref role="3cqZAo" node="6LU90BOirFk" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirGi" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirGj" role="jymVt">
      <property role="TrG5h" value="isPrototype" />
      <node concept="3Tm1VV" id="6LU90BOirGk" role="1B3o_S" />
      <node concept="10P_77" id="6LU90BOirGl" role="3clF45" />
      <node concept="3clFbS" id="6LU90BOirGm" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirGn" role="3cqZAp">
          <node concept="37vLTw" id="6LU90BOirGo" role="3clFbG">
            <ref role="3cqZAo" node="6LU90BOirFn" resolve="myPrototype" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirGp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirGq" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirGr" role="jymVt">
      <property role="TrG5h" value="getInstanceName" />
      <node concept="3Tm1VV" id="6LU90BOirGs" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BOirGt" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6LU90BOirGu" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirGv" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOirGw" role="3clFbG">
            <node concept="37vLTw" id="6LU90BOirGx" role="2Oq$k0">
              <ref role="3cqZAo" node="6LU90BOirFk" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="6LU90BOirGy" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirGz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirG$" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirG_" role="jymVt">
      <property role="TrG5h" value="setInstanceName" />
      <node concept="3Tm1VV" id="6LU90BOirGA" role="1B3o_S" />
      <node concept="3cqZAl" id="6LU90BOirGB" role="3clF45" />
      <node concept="37vLTG" id="6LU90BOirGC" role="3clF46">
        <property role="TrG5h" value="newName" />
        <node concept="3uibUv" id="6LU90BOirGD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BOirGE" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirGF" role="3cqZAp">
          <node concept="37vLTI" id="6LU90BOirGG" role="3clFbG">
            <node concept="37vLTw" id="6LU90BOirGH" role="37vLTx">
              <ref role="3cqZAo" node="6LU90BOirGC" resolve="newName" />
            </node>
            <node concept="2OqwBi" id="6LU90BOirGI" role="37vLTJ">
              <node concept="37vLTw" id="6LU90BOirGJ" role="2Oq$k0">
                <ref role="3cqZAo" node="6LU90BOirFk" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="6LU90BOirGK" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirGL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirGM" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirGN" role="jymVt">
      <property role="TrG5h" value="getX" />
      <node concept="3Tm1VV" id="6LU90BOirGO" role="1B3o_S" />
      <node concept="10Oyi0" id="6LU90BOirGP" role="3clF45" />
      <node concept="3clFbS" id="6LU90BOirGQ" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirGR" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOirGS" role="3clFbG">
            <node concept="1rXfSq" id="6LU90BOiOd9" role="2Oq$k0">
              <ref role="37wK5l" node="6LU90BOiIR6" resolve="getPosition" />
            </node>
            <node concept="2qgKlT" id="6LU90BOirGW" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3isp" resolve="getX" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirGX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirGY" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirGZ" role="jymVt">
      <property role="TrG5h" value="getY" />
      <node concept="3Tm1VV" id="6LU90BOirH0" role="1B3o_S" />
      <node concept="10Oyi0" id="6LU90BOirH1" role="3clF45" />
      <node concept="3clFbS" id="6LU90BOirH2" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirH3" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOirH4" role="3clFbG">
            <node concept="2qgKlT" id="6LU90BOirH8" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3iXb" resolve="getY" />
            </node>
            <node concept="1rXfSq" id="6LU90BOiONW" role="2Oq$k0">
              <ref role="37wK5l" node="6LU90BOiIR6" resolve="getPosition" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirH9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirHa" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirHb" role="jymVt">
      <property role="TrG5h" value="setX" />
      <node concept="3Tm1VV" id="6LU90BOirHc" role="1B3o_S" />
      <node concept="3cqZAl" id="6LU90BOirHd" role="3clF45" />
      <node concept="37vLTG" id="6LU90BOirHe" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6LU90BOirHf" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6LU90BOirHg" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirHh" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOirHi" role="3clFbG">
            <node concept="2qgKlT" id="6LU90BOirHm" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3jp5" resolve="setX" />
              <node concept="37vLTw" id="6LU90BOirHn" role="37wK5m">
                <ref role="3cqZAo" node="6LU90BOirHe" resolve="x" />
              </node>
            </node>
            <node concept="1rXfSq" id="6LU90BOiPsV" role="2Oq$k0">
              <ref role="37wK5l" node="6LU90BOiIR6" resolve="getPosition" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirHo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOirHp" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirHq" role="jymVt">
      <property role="TrG5h" value="setY" />
      <node concept="3Tm1VV" id="6LU90BOirHr" role="1B3o_S" />
      <node concept="3cqZAl" id="6LU90BOirHs" role="3clF45" />
      <node concept="37vLTG" id="6LU90BOirHt" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6LU90BOirHu" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6LU90BOirHv" role="3clF47">
        <node concept="3clFbF" id="6LU90BOirHw" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOirHx" role="3clFbG">
            <node concept="2qgKlT" id="6LU90BOirH_" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3lay" resolve="setY" />
              <node concept="37vLTw" id="6LU90BOirHA" role="37wK5m">
                <ref role="3cqZAo" node="6LU90BOirHt" resolve="y" />
              </node>
            </node>
            <node concept="1rXfSq" id="6LU90BOiQ8T" role="2Oq$k0">
              <ref role="37wK5l" node="6LU90BOiIR6" resolve="getPosition" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirHB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOiUuY" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOirKz" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="6LU90BOirK$" role="1B3o_S" />
      <node concept="3cqZAl" id="6LU90BOirK_" role="3clF45" />
      <node concept="3clFbS" id="6LU90BOirKA" role="3clF47">
        <node concept="3clFbJ" id="6LU90BOiVmF" role="3cqZAp">
          <node concept="3clFbS" id="6LU90BOiVmH" role="3clFbx">
            <node concept="3cpWs6" id="6LU90BOiW58" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="6LU90BOiV$P" role="3clFbw">
            <ref role="3cqZAo" node="6LU90BOirFn" resolve="myPrototype" />
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BOirKB" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOirKC" role="3clFbG">
            <node concept="37vLTw" id="6LU90BOirKD" role="2Oq$k0">
              <ref role="3cqZAo" node="6LU90BOirFk" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="6LU90BOirKE" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOirKF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOy11M" role="jymVt" />
    <node concept="2YIFZL" id="6LU90BOyCVQ" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="3clFbS" id="6LU90BOyCVS" role="3clF47">
        <node concept="3clFbJ" id="6LU90BOyCVT" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOyCVU" role="3clFbw">
            <node concept="37vLTw" id="6LU90BOyCVV" role="2Oq$k0">
              <ref role="3cqZAo" node="6LU90BOyCW$" resolve="component" />
            </node>
            <node concept="1mIQ4w" id="6LU90BOyCVW" role="2OqNvi">
              <node concept="chp4Y" id="6LU90BOyCVX" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6LU90BOyCVY" role="3clFbx">
            <node concept="3cpWs6" id="6LU90BOyCVZ" role="3cqZAp">
              <node concept="2ShNRf" id="6LU90BOyCW0" role="3cqZAk">
                <node concept="1pGfFk" id="6LU90BOyCW1" role="2ShVmc">
                  <ref role="37wK5l" node="3IX4BsKa1$Q" resolve="FBInstanceByFBNode" />
                  <node concept="1PxgMI" id="6LU90BOyCW2" role="37wK5m">
                    <node concept="chp4Y" id="6LU90BOyCW3" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                    </node>
                    <node concept="37vLTw" id="6LU90BOyCW4" role="1m5AlR">
                      <ref role="3cqZAo" node="6LU90BOyCW$" resolve="component" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6LU90BOyCW5" role="37wK5m">
                    <ref role="3cqZAo" node="6LU90BOyCWA" resolve="prototype" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6LU90BOyCW6" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOyCW7" role="3clFbw">
            <node concept="37vLTw" id="6LU90BOyCW8" role="2Oq$k0">
              <ref role="3cqZAo" node="6LU90BOyCW$" resolve="component" />
            </node>
            <node concept="1mIQ4w" id="6LU90BOyCW9" role="2OqNvi">
              <node concept="chp4Y" id="6LU90BOyCWa" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6LU90BOyCWb" role="3clFbx">
            <node concept="3cpWs6" id="6LU90BOyCWc" role="3cqZAp">
              <node concept="2ShNRf" id="6LU90BOyCWd" role="3cqZAk">
                <node concept="1pGfFk" id="6LU90BOyCWe" role="2ShVmc">
                  <ref role="37wK5l" node="6LU90BObniK" resolve="FBInstanceByPlugNode" />
                  <node concept="1PxgMI" id="6LU90BOyCWf" role="37wK5m">
                    <node concept="chp4Y" id="6LU90BOyCWg" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
                    </node>
                    <node concept="37vLTw" id="6LU90BOyCWh" role="1m5AlR">
                      <ref role="3cqZAo" node="6LU90BOyCW$" resolve="component" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6LU90BOyCWi" role="37wK5m">
                    <ref role="3cqZAo" node="6LU90BOyCWA" resolve="prototype" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6LU90BOyCWj" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOyCWk" role="3clFbw">
            <node concept="37vLTw" id="6LU90BOyCWl" role="2Oq$k0">
              <ref role="3cqZAo" node="6LU90BOyCW$" resolve="component" />
            </node>
            <node concept="1mIQ4w" id="6LU90BOyCWm" role="2OqNvi">
              <node concept="chp4Y" id="6LU90BOyCWn" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6LU90BOyCWo" role="3clFbx">
            <node concept="3cpWs6" id="6LU90BOyCWp" role="3cqZAp">
              <node concept="2ShNRf" id="6LU90BOyCWq" role="3cqZAk">
                <node concept="1pGfFk" id="6LU90BOyCWr" role="2ShVmc">
                  <ref role="37wK5l" node="6LU90BOeB4_" resolve="FBInstanceBySocketNode" />
                  <node concept="1PxgMI" id="6LU90BOyCWs" role="37wK5m">
                    <node concept="chp4Y" id="6LU90BOyCWt" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
                    </node>
                    <node concept="37vLTw" id="6LU90BOyCWu" role="1m5AlR">
                      <ref role="3cqZAo" node="6LU90BOyCW$" resolve="component" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6LU90BOyCWv" role="37wK5m">
                    <ref role="3cqZAo" node="6LU90BOyCWA" resolve="prototype" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6LU90BOyCWw" role="3cqZAp">
          <node concept="10Nm6u" id="6LU90BOyCWx" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="6LU90BOyCWz" role="3clF45">
        <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
      </node>
      <node concept="37vLTG" id="6LU90BOyCW$" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3Tqbb2" id="6LU90BOyCW_" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="6LU90BOyCWA" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="10P_77" id="6LU90BOyCWB" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="6LU90BOyCWy" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6LU90BOirKG" role="1B3o_S" />
    <node concept="3uibUv" id="6LU90BOirKH" role="EKbjA">
      <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstanceView" />
    </node>
    <node concept="16euLQ" id="6LU90BOjrhe" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="6LU90BOjtFm" role="3ztrMU">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6LU90BObniB">
    <property role="TrG5h" value="FBInstanceByPlugNode" />
    <node concept="2tJIrI" id="6LU90BObniC" role="jymVt" />
    <node concept="3clFbW" id="6LU90BObniK" role="jymVt">
      <node concept="3cqZAl" id="6LU90BObniL" role="3clF45" />
      <node concept="3Tm1VV" id="6LU90BObniM" role="1B3o_S" />
      <node concept="3clFbS" id="6LU90BObniN" role="3clF47">
        <node concept="XkiVB" id="6LU90BOjZSF" role="3cqZAp">
          <ref role="37wK5l" node="6LU90BOirFr" resolve="FBInstanceByNode" />
          <node concept="37vLTw" id="6LU90BOk0PX" role="37wK5m">
            <ref role="3cqZAo" node="6LU90BObniW" resolve="node" />
          </node>
          <node concept="37vLTw" id="6LU90BOyq07" role="37wK5m">
            <ref role="3cqZAo" node="6LU90BOyp4Y" resolve="prototype" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6LU90BObniW" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6LU90BObniX" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="6LU90BOyp4Y" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="10P_77" id="6LU90BOypBD" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOkdM1" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOkeHk" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tmbuc" id="6LU90BOkeHm" role="1B3o_S" />
      <node concept="3Tqbb2" id="6LU90BOkeHn" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3clFbS" id="6LU90BOkeHo" role="3clF47">
        <node concept="3clFbF" id="6LU90BOkgWF" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOkh8a" role="3clFbG">
            <node concept="1rXfSq" id="6LU90BOkgWE" role="2Oq$k0">
              <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
            </node>
            <node concept="3TrEf2" id="6LU90BOkiD5" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:6LU90BOchbE" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOkeHp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOkiFQ" role="jymVt" />
    <node concept="3clFb_" id="6LU90BObnkY" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3Tm1VV" id="6LU90BObnkZ" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BObnl0" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BObnl1" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BObnl2" role="3clF47">
        <node concept="3clFbF" id="6LU90BObnl3" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BObnl4" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BObnl5" role="2Oq$k0">
              <node concept="2OqwBi" id="6LU90BObXYT" role="2Oq$k0">
                <node concept="2OqwBi" id="6LU90BObCI2" role="2Oq$k0">
                  <node concept="1rXfSq" id="6LU90BOk7l4" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                  <node concept="3TrEf2" id="6LU90BObTjO" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6LU90BOc3GP" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
              <node concept="3$u5V9" id="6LU90BObnlb" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BObnlc" role="23t8la">
                  <node concept="3clFbS" id="6LU90BObnld" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BObnle" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BObnlf" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BObnlg" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BObnlh" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BObnli" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BObnlm" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BObnlj" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BObnlk" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BObnll" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BObnlm" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BObnln" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BObnlo" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BObnlp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BObnlq" role="jymVt" />
    <node concept="3clFb_" id="6LU90BObnlr" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3Tm1VV" id="6LU90BObnls" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BObnlt" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BObnlu" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BObnlv" role="3clF47">
        <node concept="3clFbF" id="6LU90BObnlw" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BObnlx" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BObnly" role="2Oq$k0">
              <node concept="3$u5V9" id="6LU90BObnlC" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BObnlD" role="23t8la">
                  <node concept="3clFbS" id="6LU90BObnlE" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BObnlF" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BObnlG" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BObnlH" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BObnlI" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BObnlJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BObnlN" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BObnlK" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BObnlL" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BObnlM" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BObnlN" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BObnlO" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6LU90BOc41C" role="2Oq$k0">
                <node concept="2OqwBi" id="6LU90BOc41D" role="2Oq$k0">
                  <node concept="3TrEf2" id="6LU90BOc41F" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOk82z" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6LU90BOc5h9" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BObnlP" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BObnlQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BObnlR" role="jymVt" />
    <node concept="3clFb_" id="6LU90BObnlS" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3Tm1VV" id="6LU90BObnlT" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BObnlU" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BObnlV" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BObnlW" role="3clF47">
        <node concept="3clFbF" id="6LU90BObnlX" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BObnlY" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BObnlZ" role="2Oq$k0">
              <node concept="3$u5V9" id="6LU90BObnm5" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BObnm6" role="23t8la">
                  <node concept="3clFbS" id="6LU90BObnm7" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BObnm8" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BObnm9" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BObnma" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BObnmb" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BObnmc" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BObnmg" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BObnmd" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BObnme" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BObnmf" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BObnmg" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BObnmh" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6LU90BOc5yk" role="2Oq$k0">
                <node concept="2OqwBi" id="6LU90BOc5yl" role="2Oq$k0">
                  <node concept="3TrEf2" id="6LU90BOc5yn" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOk8Kj" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6LU90BOc6Ql" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BObnmi" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BObnmj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BObnmk" role="jymVt" />
    <node concept="3clFb_" id="6LU90BObnml" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3Tm1VV" id="6LU90BObnmm" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BObnmn" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BObnmo" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BObnmp" role="3clF47">
        <node concept="3clFbF" id="6LU90BObnmq" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BObnmr" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BObnms" role="2Oq$k0">
              <node concept="3$u5V9" id="6LU90BObnmy" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BObnmz" role="23t8la">
                  <node concept="3clFbS" id="6LU90BObnm$" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BObnm_" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BObnmA" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BObnmB" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BObnmC" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BObnmD" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BObnmH" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BObnmE" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BObnmF" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BObnmG" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BObnmH" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BObnmI" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6LU90BOc78L" role="2Oq$k0">
                <node concept="2OqwBi" id="6LU90BOc78M" role="2Oq$k0">
                  <node concept="3TrEf2" id="6LU90BOc78O" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOk9uo" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6LU90BOc8qm" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BObnmJ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BObnmK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BObnmL" role="jymVt" />
    <node concept="3clFb_" id="6LU90BObnmM" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="6LU90BObnmN" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BObnmO" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BObnmP" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BObnmQ" role="3clF47">
        <node concept="3clFbF" id="6LU90BObnmR" role="3cqZAp">
          <node concept="2ShNRf" id="6LU90BOc9vw" role="3clFbG">
            <node concept="Tc6Ow" id="6LU90BOcauH" role="2ShVmc">
              <node concept="3uibUv" id="6LU90BOccB_" role="HW$YZ">
                <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BObnnd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BObnne" role="jymVt" />
    <node concept="3clFb_" id="6LU90BObnnf" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="6LU90BObnng" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BObnnh" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BObnni" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BObnnj" role="3clF47">
        <node concept="3clFbF" id="6LU90BOcdbn" role="3cqZAp">
          <node concept="2ShNRf" id="6LU90BOcdbo" role="3clFbG">
            <node concept="Tc6Ow" id="6LU90BOcdbp" role="2ShVmc">
              <node concept="3uibUv" id="6LU90BOcdbq" role="HW$YZ">
                <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BObnnE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BObnnG" role="jymVt" />
    <node concept="3clFb_" id="6LU90BObnnH" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="6LU90BObnnI" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BObnnJ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6LU90BObnnK" role="3clF47">
        <node concept="3clFbF" id="6LU90BObnnL" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BObnnM" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BObnnN" role="2Oq$k0">
              <node concept="3TrEf2" id="6LU90BOcfCy" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
              <node concept="1rXfSq" id="6LU90BOkaki" role="2Oq$k0">
                <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
              </node>
            </node>
            <node concept="3TrcHB" id="6LU90BObnnQ" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BObnnR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOcfIQ" role="jymVt" />
    <node concept="3Tm1VV" id="6LU90BObno1" role="1B3o_S" />
    <node concept="3uibUv" id="6LU90BOjVT7" role="1zkMxy">
      <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
      <node concept="3Tqbb2" id="6LU90BOjY1T" role="11_B2D">
        <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6LU90BOeB4v">
    <property role="TrG5h" value="FBInstanceBySocketNode" />
    <node concept="2tJIrI" id="6LU90BOeB4w" role="jymVt" />
    <node concept="3clFbW" id="6LU90BOeB4_" role="jymVt">
      <node concept="3cqZAl" id="6LU90BOeB4A" role="3clF45" />
      <node concept="3Tm1VV" id="6LU90BOeB4B" role="1B3o_S" />
      <node concept="3clFbS" id="6LU90BOeB4C" role="3clF47">
        <node concept="XkiVB" id="6LU90BOksNJ" role="3cqZAp">
          <ref role="37wK5l" node="6LU90BOirFr" resolve="FBInstanceByNode" />
          <node concept="37vLTw" id="6LU90BOktEE" role="37wK5m">
            <ref role="3cqZAo" node="6LU90BOeB4H" resolve="node" />
          </node>
          <node concept="37vLTw" id="6LU90BOysOv" role="37wK5m">
            <ref role="3cqZAo" node="6LU90BOyrTj" resolve="prototype" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6LU90BOeB4H" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6LU90BOeB4I" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="6LU90BOyrTj" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="10P_77" id="6LU90BOysrY" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOkwhb" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOkxi2" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tmbuc" id="6LU90BOkxi4" role="1B3o_S" />
      <node concept="3Tqbb2" id="6LU90BOkxi5" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3clFbS" id="6LU90BOkxi6" role="3clF47">
        <node concept="3clFbF" id="6LU90BOkzsw" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOkzBZ" role="3clFbG">
            <node concept="1rXfSq" id="6LU90BOkzsv" role="2Oq$k0">
              <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
            </node>
            <node concept="3TrEf2" id="6LU90BOk$up" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:6LU90BOcpSo" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOkxi7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOkwmy" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOeB6H" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3Tm1VV" id="6LU90BOeB6I" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BOeB6J" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BOeB6K" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BOeB6L" role="3clF47">
        <node concept="3clFbF" id="6LU90BOeB6M" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOeB6N" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BOeB6O" role="2Oq$k0">
              <node concept="2OqwBi" id="6LU90BOeB6P" role="2Oq$k0">
                <node concept="2OqwBi" id="6LU90BOeB6Q" role="2Oq$k0">
                  <node concept="3TrEf2" id="6LU90BOeB6S" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOk$$E" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6LU90BOeIRI" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="3$u5V9" id="6LU90BOeB6U" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BOeB6V" role="23t8la">
                  <node concept="3clFbS" id="6LU90BOeB6W" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BOeB6X" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BOeB6Y" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BOeB6Z" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BOeB70" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BOeB71" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BOeB75" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BOeB72" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BOeB73" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BOeB74" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BOeB75" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BOeB76" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BOeB77" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOeB78" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOeB79" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOeB7a" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3Tm1VV" id="6LU90BOeB7b" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BOeB7c" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BOeB7d" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BOeB7e" role="3clF47">
        <node concept="3clFbF" id="6LU90BOeB7f" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOeB7g" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BOeB7h" role="2Oq$k0">
              <node concept="3$u5V9" id="6LU90BOeB7i" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BOeB7j" role="23t8la">
                  <node concept="3clFbS" id="6LU90BOeB7k" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BOeB7l" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BOeB7m" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BOeB7n" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BOeB7o" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BOeB7p" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BOeB7t" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BOeB7q" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BOeB7r" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BOeB7s" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BOeB7t" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BOeB7u" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6LU90BOeB7v" role="2Oq$k0">
                <node concept="2OqwBi" id="6LU90BOeB7w" role="2Oq$k0">
                  <node concept="3TrEf2" id="6LU90BOeB7y" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOk_jB" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6LU90BOeJyX" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BOeB7$" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOeB7_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOeB7A" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOeB7B" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3Tm1VV" id="6LU90BOeB7C" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BOeB7D" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BOeB7E" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BOeB7F" role="3clF47">
        <node concept="3clFbF" id="6LU90BOeB7G" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOeB7H" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BOeB7I" role="2Oq$k0">
              <node concept="3$u5V9" id="6LU90BOeB7J" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BOeB7K" role="23t8la">
                  <node concept="3clFbS" id="6LU90BOeB7L" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BOeB7M" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BOeB7N" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BOeB7O" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BOeB7P" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BOeB7Q" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BOeB7U" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BOeB7R" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BOeB7S" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BOeB7T" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BOeB7U" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BOeB7V" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6LU90BOeB7W" role="2Oq$k0">
                <node concept="2OqwBi" id="6LU90BOeB7X" role="2Oq$k0">
                  <node concept="3TrEf2" id="6LU90BOeB7Z" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOkA2Q" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6LU90BOeKec" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BOeB81" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOeB82" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOeB83" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOeB84" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3Tm1VV" id="6LU90BOeB85" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BOeB86" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BOeB87" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BOeB88" role="3clF47">
        <node concept="3clFbF" id="6LU90BOeB89" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOeB8a" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BOeB8b" role="2Oq$k0">
              <node concept="3$u5V9" id="6LU90BOeB8c" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BOeB8d" role="23t8la">
                  <node concept="3clFbS" id="6LU90BOeB8e" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BOeB8f" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BOeB8g" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BOeB8h" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BOeB8i" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BOeB8j" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BOeB8n" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BOeB8k" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BOeB8l" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BOeB8m" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BOeB8n" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BOeB8o" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6LU90BOeB8p" role="2Oq$k0">
                <node concept="2OqwBi" id="6LU90BOeB8q" role="2Oq$k0">
                  <node concept="3TrEf2" id="6LU90BOeB8s" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
                  </node>
                  <node concept="1rXfSq" id="6LU90BOkAMq" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6LU90BOeLgb" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BOeB8u" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOeB8v" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOeB8w" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOeB8x" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="6LU90BOeB8y" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BOeB8z" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BOeB8$" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BOeB8_" role="3clF47">
        <node concept="3clFbF" id="6LU90BOeB8A" role="3cqZAp">
          <node concept="2ShNRf" id="6LU90BOeB8B" role="3clFbG">
            <node concept="Tc6Ow" id="6LU90BOeB8C" role="2ShVmc">
              <node concept="3uibUv" id="6LU90BOeB8D" role="HW$YZ">
                <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOeB8E" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOeB8F" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOeB8G" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="6LU90BOeB8H" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BOeB8I" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BOeB8J" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BOeB8K" role="3clF47">
        <node concept="3clFbF" id="6LU90BOeB8L" role="3cqZAp">
          <node concept="2ShNRf" id="6LU90BOeB8M" role="3clFbG">
            <node concept="Tc6Ow" id="6LU90BOeB8N" role="2ShVmc">
              <node concept="3uibUv" id="6LU90BOeB8O" role="HW$YZ">
                <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOeB8P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BOeB8Q" role="jymVt" />
    <node concept="3clFb_" id="6LU90BOeB8R" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="6LU90BOeB8S" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BOeB8T" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6LU90BOeB8U" role="3clF47">
        <node concept="3clFbF" id="6LU90BOeB8V" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOeB8W" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BOeB8X" role="2Oq$k0">
              <node concept="3TrEf2" id="6LU90BOeB8Z" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
              <node concept="1rXfSq" id="6LU90BOkBzs" role="2Oq$k0">
                <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
              </node>
            </node>
            <node concept="3TrcHB" id="6LU90BOeB90" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BOeB91" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6LU90BOeB9c" role="1B3o_S" />
    <node concept="3uibUv" id="6LU90BOkmbx" role="1zkMxy">
      <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
      <node concept="3Tqbb2" id="6LU90BOkotI" role="11_B2D">
        <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3IX4BsK9E3D">
    <property role="TrG5h" value="FBNetworkModelByNode" />
    <node concept="2tJIrI" id="3IX4BsK9E7x" role="jymVt" />
    <node concept="312cEg" id="3IX4BsK9EDO" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="7oJsd9x2ZGd" role="1B3o_S" />
      <node concept="3Tqbb2" id="3IX4BsK9E_M" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsK9E7G" role="jymVt" />
    <node concept="3clFbW" id="3IX4BsK9EJY" role="jymVt">
      <node concept="3cqZAl" id="3IX4BsK9EJZ" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsK9EK0" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsK9EK2" role="3clF47">
        <node concept="3clFbF" id="3IX4BsK9EK6" role="3cqZAp">
          <node concept="37vLTI" id="3IX4BsK9EK8" role="3clFbG">
            <node concept="37vLTw" id="3IX4BsK9Fi5" role="37vLTJ">
              <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="3IX4BsK9EKf" role="37vLTx">
              <ref role="3cqZAo" node="3IX4BsK9EK5" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsK9EK5" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3IX4BsK9EK4" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsK9EGZ" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsK9E8d" role="jymVt">
      <property role="TrG5h" value="getFirstClassComponents" />
      <node concept="3Tmbuc" id="2syzu7r4ENE" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsK9E8g" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIXfnSH" role="11_B2D">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsK9E8i" role="3clF47">
        <node concept="3cpWs8" id="6tmliaAfmBJ" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaAfmBK" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="2hMVRd" id="4y$DvIXfFAa" role="1tU5fm">
              <node concept="3uibUv" id="4y$DvIXfFAc" role="2hN53Y">
                <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
              </node>
            </node>
            <node concept="2ShNRf" id="6tmliaAfmBL" role="33vP2m">
              <node concept="2i4dXS" id="4y$DvIXfKUP" role="2ShVmc">
                <node concept="3uibUv" id="4y$DvIXfKUR" role="HW$YZ">
                  <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2syzu7qVXyL" role="3cqZAp" />
        <node concept="3clFbF" id="6tmliaAfl7q" role="3cqZAp">
          <node concept="2OqwBi" id="6tmliaAfnK8" role="3clFbG">
            <node concept="37vLTw" id="6tmliaAfmBO" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAfmBK" resolve="res" />
            </node>
            <node concept="X8dFx" id="6tmliaAfrtq" role="2OqNvi">
              <node concept="2OqwBi" id="3IX4BsKbXDL" role="25WWJ7">
                <node concept="2OqwBi" id="3IX4BsK9FUb" role="2Oq$k0">
                  <node concept="37vLTw" id="3IX4BsK9FB1" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="3Tsc0h" id="3IX4BsKbRPt" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                  </node>
                </node>
                <node concept="3$u5V9" id="3IX4BsKc9i1" role="2OqNvi">
                  <node concept="1bVj0M" id="3IX4BsKc9i3" role="23t8la">
                    <node concept="3clFbS" id="3IX4BsKc9i4" role="1bW5cS">
                      <node concept="3clFbF" id="6LU90BOy_GL" role="3cqZAp">
                        <node concept="2YIFZM" id="6LU90BOyHrn" role="3clFbG">
                          <ref role="37wK5l" node="6LU90BOyCVQ" resolve="create" />
                          <ref role="1Pybhc" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                          <node concept="37vLTw" id="6LU90BOyMw3" role="37wK5m">
                            <ref role="3cqZAo" node="3IX4BsKc9i5" resolve="it" />
                          </node>
                          <node concept="3clFbT" id="6LU90BOyKcK" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3IX4BsKc9i5" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3IX4BsKc9i6" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BOeRUc" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BOeRUd" role="3clFbG">
            <node concept="37vLTw" id="6LU90BOeRUe" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAfmBK" resolve="res" />
            </node>
            <node concept="X8dFx" id="6LU90BOeRUf" role="2OqNvi">
              <node concept="2OqwBi" id="6LU90BOeRUg" role="25WWJ7">
                <node concept="3$u5V9" id="6LU90BOeRUk" role="2OqNvi">
                  <node concept="1bVj0M" id="6LU90BOeRUl" role="23t8la">
                    <node concept="3clFbS" id="6LU90BOeRUm" role="1bW5cS">
                      <node concept="3clFbF" id="6LU90BOyKLW" role="3cqZAp">
                        <node concept="2YIFZM" id="6LU90BOyKLY" role="3clFbG">
                          <ref role="1Pybhc" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                          <ref role="37wK5l" node="6LU90BOyCVQ" resolve="create" />
                          <node concept="37vLTw" id="6LU90BOyN3q" role="37wK5m">
                            <ref role="3cqZAo" node="6LU90BOeRUs" resolve="it" />
                          </node>
                          <node concept="3clFbT" id="6LU90BOyKM0" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6LU90BOeRUs" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6LU90BOeRUt" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6LU90BOf98Z" role="2Oq$k0">
                  <node concept="37vLTw" id="6LU90BOf8jy" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="2qgKlT" id="6LU90BOfaiA" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:2lwHqHjRVNr" resolve="contextComponents" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7oJsd9x0$IV" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x0$IW" role="3clFbG">
            <node concept="37vLTw" id="7oJsd9x0$IX" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAfmBK" resolve="res" />
            </node>
            <node concept="X8dFx" id="7oJsd9x0$IY" role="2OqNvi">
              <node concept="2OqwBi" id="7oJsd9x0$IZ" role="25WWJ7">
                <node concept="3$u5V9" id="7oJsd9x0$J0" role="2OqNvi">
                  <node concept="1bVj0M" id="7oJsd9x0$J1" role="23t8la">
                    <node concept="3clFbS" id="7oJsd9x0$J2" role="1bW5cS">
                      <node concept="3clFbF" id="7oJsd9x0$J3" role="3cqZAp">
                        <node concept="2YIFZM" id="7oJsd9x0$J4" role="3clFbG">
                          <ref role="1Pybhc" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                          <ref role="37wK5l" node="6LU90BOyCVQ" resolve="create" />
                          <node concept="37vLTw" id="7oJsd9x0$J5" role="37wK5m">
                            <ref role="3cqZAo" node="7oJsd9x0$J7" resolve="it" />
                          </node>
                          <node concept="3clFbT" id="7oJsd9x0$J6" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7oJsd9x0$J7" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7oJsd9x0$J8" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7oJsd9x0$J9" role="2Oq$k0">
                  <node concept="2OqwBi" id="7oJsd9x0Hdt" role="2Oq$k0">
                    <node concept="37vLTw" id="7oJsd9x0$Ja" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                    </node>
                    <node concept="2qgKlT" id="7oJsd9x0J2r" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:2lwHqHk$skt" resolve="networkPrototype" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="7oJsd9x0K0Q" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7oJsd9x0LgP" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x0LgQ" role="3clFbG">
            <node concept="37vLTw" id="7oJsd9x0LgR" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAfmBK" resolve="res" />
            </node>
            <node concept="X8dFx" id="7oJsd9x0LgS" role="2OqNvi">
              <node concept="2OqwBi" id="7oJsd9x0LgT" role="25WWJ7">
                <node concept="3$u5V9" id="7oJsd9x0LgU" role="2OqNvi">
                  <node concept="1bVj0M" id="7oJsd9x0LgV" role="23t8la">
                    <node concept="3clFbS" id="7oJsd9x0LgW" role="1bW5cS">
                      <node concept="3clFbF" id="7oJsd9x0LgX" role="3cqZAp">
                        <node concept="2YIFZM" id="7oJsd9x0LgY" role="3clFbG">
                          <ref role="1Pybhc" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                          <ref role="37wK5l" node="6LU90BOyCVQ" resolve="create" />
                          <node concept="37vLTw" id="7oJsd9x0LgZ" role="37wK5m">
                            <ref role="3cqZAo" node="7oJsd9x0Lh1" resolve="it" />
                          </node>
                          <node concept="3clFbT" id="7oJsd9x0Lh0" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7oJsd9x0Lh1" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7oJsd9x0Lh2" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7oJsd9x0Lh3" role="2Oq$k0">
                  <node concept="2OqwBi" id="7oJsd9x0Lh4" role="2Oq$k0">
                    <node concept="37vLTw" id="7oJsd9x0Lh5" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                    </node>
                    <node concept="2qgKlT" id="7oJsd9x0Lh6" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:2lwHqHk$skt" resolve="networkPrototype" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="7oJsd9x0YoT" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:2lwHqHjRVNr" resolve="contextComponents" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6LU90BOeOcx" role="3cqZAp" />
        <node concept="3clFbF" id="6tmliaAfszP" role="3cqZAp">
          <node concept="2OqwBi" id="6tmliaAfszQ" role="3clFbG">
            <node concept="37vLTw" id="6tmliaAfszR" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAfmBK" resolve="res" />
            </node>
            <node concept="X8dFx" id="6tmliaAfszS" role="2OqNvi">
              <node concept="2OqwBi" id="6tmliaAfszT" role="25WWJ7">
                <node concept="2OqwBi" id="6tmliaAfszU" role="2Oq$k0">
                  <node concept="37vLTw" id="6tmliaAfszV" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="2qgKlT" id="6tmliaAfwqW" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:2lwHqHjRZ6V" resolve="contextDataSources" />
                  </node>
                </node>
                <node concept="3$u5V9" id="6tmliaAfszX" role="2OqNvi">
                  <node concept="1bVj0M" id="6tmliaAfszY" role="23t8la">
                    <node concept="3clFbS" id="6tmliaAfszZ" role="1bW5cS">
                      <node concept="3clFbF" id="6tmliaAfs$0" role="3cqZAp">
                        <node concept="2ShNRf" id="6tmliaAfs$3" role="3clFbG">
                          <node concept="1pGfFk" id="6tmliaAfs$4" role="2ShVmc">
                            <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                            <node concept="37vLTw" id="6tmliaAfs$5" role="37wK5m">
                              <ref role="3cqZAo" node="6tmliaAfs$7" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6tmliaAfs$7" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6tmliaAfs$8" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmliaAfx$p" role="3cqZAp">
          <node concept="2OqwBi" id="6tmliaAfx$q" role="3clFbG">
            <node concept="37vLTw" id="6tmliaAfx$r" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAfmBK" resolve="res" />
            </node>
            <node concept="X8dFx" id="6tmliaAfx$s" role="2OqNvi">
              <node concept="2OqwBi" id="6tmliaAfx$t" role="25WWJ7">
                <node concept="2OqwBi" id="6tmliaAfx$u" role="2Oq$k0">
                  <node concept="37vLTw" id="6tmliaAfx$v" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="2qgKlT" id="6tmliaAf$BT" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:2lwHqHjRX1R" resolve="contextDataDestinations" />
                  </node>
                </node>
                <node concept="3$u5V9" id="6tmliaAfx$x" role="2OqNvi">
                  <node concept="1bVj0M" id="6tmliaAfx$y" role="23t8la">
                    <node concept="3clFbS" id="6tmliaAfx$z" role="1bW5cS">
                      <node concept="3clFbF" id="6tmliaAfx$$" role="3cqZAp">
                        <node concept="2ShNRf" id="6tmliaAfx$_" role="3clFbG">
                          <node concept="1pGfFk" id="6tmliaAfx$A" role="2ShVmc">
                            <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                            <node concept="37vLTw" id="6tmliaAfx$B" role="37wK5m">
                              <ref role="3cqZAo" node="6tmliaAfx$C" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6tmliaAfx$C" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6tmliaAfx$D" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmliaAfx_A" role="3cqZAp">
          <node concept="2OqwBi" id="6tmliaAfx_B" role="3clFbG">
            <node concept="37vLTw" id="6tmliaAfx_C" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAfmBK" resolve="res" />
            </node>
            <node concept="X8dFx" id="6tmliaAfx_D" role="2OqNvi">
              <node concept="2OqwBi" id="6tmliaAfx_E" role="25WWJ7">
                <node concept="2OqwBi" id="6tmliaAfx_F" role="2Oq$k0">
                  <node concept="37vLTw" id="6tmliaAfx_G" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="2qgKlT" id="6tmliaAf_gJ" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:2lwHqHjRZ9n" resolve="contextEventSources" />
                  </node>
                </node>
                <node concept="3$u5V9" id="6tmliaAfx_I" role="2OqNvi">
                  <node concept="1bVj0M" id="6tmliaAfx_J" role="23t8la">
                    <node concept="3clFbS" id="6tmliaAfx_K" role="1bW5cS">
                      <node concept="3clFbF" id="6tmliaAfx_L" role="3cqZAp">
                        <node concept="2ShNRf" id="6tmliaAfx_M" role="3clFbG">
                          <node concept="1pGfFk" id="6tmliaAfx_N" role="2ShVmc">
                            <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                            <node concept="37vLTw" id="6tmliaAfx_O" role="37wK5m">
                              <ref role="3cqZAo" node="6tmliaAfx_P" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6tmliaAfx_P" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6tmliaAfx_Q" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6tmliaAfyGl" role="3cqZAp">
          <node concept="2OqwBi" id="6tmliaAfyGm" role="3clFbG">
            <node concept="37vLTw" id="6tmliaAfyGn" role="2Oq$k0">
              <ref role="3cqZAo" node="6tmliaAfmBK" resolve="res" />
            </node>
            <node concept="X8dFx" id="6tmliaAfyGo" role="2OqNvi">
              <node concept="2OqwBi" id="6tmliaAfyGp" role="25WWJ7">
                <node concept="2OqwBi" id="6tmliaAfyGq" role="2Oq$k0">
                  <node concept="37vLTw" id="6tmliaAfyGr" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="2qgKlT" id="6tmliaAf_TE" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:2lwHqHjRZn8" resolve="contextEventDestinations" />
                  </node>
                </node>
                <node concept="3$u5V9" id="6tmliaAfyGt" role="2OqNvi">
                  <node concept="1bVj0M" id="6tmliaAfyGu" role="23t8la">
                    <node concept="3clFbS" id="6tmliaAfyGv" role="1bW5cS">
                      <node concept="3clFbF" id="6tmliaAfyGw" role="3cqZAp">
                        <node concept="2ShNRf" id="6tmliaAfyGx" role="3clFbG">
                          <node concept="1pGfFk" id="6tmliaAfyGy" role="2ShVmc">
                            <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                            <node concept="37vLTw" id="6tmliaAfyGz" role="37wK5m">
                              <ref role="3cqZAo" node="6tmliaAfyG$" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6tmliaAfyG$" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6tmliaAfyG_" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2syzu7qWbBb" role="3cqZAp" />
        <node concept="3cpWs6" id="6tmliaAfAuT" role="3cqZAp">
          <node concept="37vLTw" id="6tmliaAfAzA" role="3cqZAk">
            <ref role="3cqZAo" node="6tmliaAfmBK" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsK9E8j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIXhrAA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qS9MU" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qSszQ" role="jymVt">
      <property role="TrG5h" value="getInlineValues" />
      <node concept="3clFbS" id="2syzu7qSszT" role="3clF47">
        <node concept="3cpWs8" id="2syzu7qU0cN" role="3cqZAp">
          <node concept="3cpWsn" id="2syzu7qU0cO" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="2hMVRd" id="2syzu7qU0cP" role="1tU5fm">
              <node concept="3uibUv" id="2syzu7qUhiW" role="2hN53Y">
                <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
              </node>
            </node>
            <node concept="2ShNRf" id="2syzu7qU0cR" role="33vP2m">
              <node concept="2i4dXS" id="2syzu7qU0cS" role="2ShVmc">
                <node concept="3uibUv" id="2syzu7qUoM9" role="HW$YZ">
                  <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2syzu7qVlg9" role="3cqZAp" />
        <node concept="3clFbF" id="2syzu7qU0KA" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qU1rU" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qU0K$" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qU0cO" resolve="res" />
            </node>
            <node concept="X8dFx" id="2syzu7qU4q7" role="2OqNvi">
              <node concept="2OqwBi" id="2syzu7qT4X1" role="25WWJ7">
                <node concept="2OqwBi" id="2syzu7qSYba" role="2Oq$k0">
                  <node concept="37vLTw" id="2syzu7qSX_P" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="2Rf3mk" id="2syzu7qT1QX" role="2OqNvi">
                    <node concept="1xMEDy" id="2syzu7qT1QZ" role="1xVPHs">
                      <node concept="chp4Y" id="2syzu7qT2FY" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="2syzu7qTeUE" role="2OqNvi">
                  <node concept="1bVj0M" id="2syzu7qTeUG" role="23t8la">
                    <node concept="3clFbS" id="2syzu7qTeUH" role="1bW5cS">
                      <node concept="3clFbF" id="2syzu7qTMaN" role="3cqZAp">
                        <node concept="2ShNRf" id="2syzu7qTMaL" role="3clFbG">
                          <node concept="1pGfFk" id="2syzu7qTMQ6" role="2ShVmc">
                            <ref role="37wK5l" node="2syzu7qTgYV" resolve="InlineValueByNode" />
                            <node concept="37vLTw" id="2syzu7qTN15" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qTeUI" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2syzu7qTeUI" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2syzu7qTeUJ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7qURa_" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qURaA" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qURaB" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qU0cO" resolve="res" />
            </node>
            <node concept="X8dFx" id="2syzu7qURaC" role="2OqNvi">
              <node concept="2OqwBi" id="2syzu7qURaD" role="25WWJ7">
                <node concept="2OqwBi" id="2syzu7qURaE" role="2Oq$k0">
                  <node concept="2OqwBi" id="2syzu7qV6kW" role="2Oq$k0">
                    <node concept="37vLTw" id="2syzu7qURaF" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                    </node>
                    <node concept="2qgKlT" id="2syzu7qVaPi" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:2lwHqHk$skt" resolve="networkPrototype" />
                    </node>
                  </node>
                  <node concept="2Rf3mk" id="2syzu7qURaG" role="2OqNvi">
                    <node concept="1xMEDy" id="2syzu7qURaH" role="1xVPHs">
                      <node concept="chp4Y" id="2syzu7qURaI" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="2syzu7qURaJ" role="2OqNvi">
                  <node concept="1bVj0M" id="2syzu7qURaK" role="23t8la">
                    <node concept="3clFbS" id="2syzu7qURaL" role="1bW5cS">
                      <node concept="3clFbF" id="2syzu7qURaM" role="3cqZAp">
                        <node concept="2ShNRf" id="2syzu7qURaN" role="3clFbG">
                          <node concept="1pGfFk" id="2syzu7qURaO" role="2ShVmc">
                            <ref role="37wK5l" node="2syzu7qTgYV" resolve="InlineValueByNode" />
                            <node concept="37vLTw" id="2syzu7qURaP" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qURaQ" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2syzu7qURaQ" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2syzu7qURaR" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2syzu7qVbjO" role="3cqZAp" />
        <node concept="3cpWs6" id="2syzu7qU7c0" role="3cqZAp">
          <node concept="37vLTw" id="2syzu7qU7gT" role="3cqZAk">
            <ref role="3cqZAo" node="2syzu7qU0cO" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2syzu7r4Q58" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qSrMj" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="2syzu7qSX2o" role="11_B2D">
          <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qSBRE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsK9KX8" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsK9E8m" role="jymVt">
      <property role="TrG5h" value="getConnections" />
      <node concept="3Tmbuc" id="2syzu7r54Aa" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsK9E8p" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIXgi53" role="11_B2D">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsK9E8r" role="3clF47">
        <node concept="3cpWs8" id="6oXN8hZU6RU" role="3cqZAp">
          <node concept="3cpWsn" id="6oXN8hZU6RV" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="2hMVRd" id="4y$DvIXgJ9V" role="1tU5fm">
              <node concept="3uibUv" id="4y$DvIXgJ9X" role="2hN53Y">
                <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
              </node>
            </node>
            <node concept="2ShNRf" id="6oXN8hZU6RW" role="33vP2m">
              <node concept="2i4dXS" id="4y$DvIXgD8t" role="2ShVmc">
                <node concept="3uibUv" id="4y$DvIXgD8v" role="HW$YZ">
                  <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2syzu7qVzVr" role="3cqZAp" />
        <node concept="3clFbF" id="6oXN8hZU5w3" role="3cqZAp">
          <node concept="2OqwBi" id="6oXN8hZU846" role="3clFbG">
            <node concept="37vLTw" id="6oXN8hZU6RZ" role="2Oq$k0">
              <ref role="3cqZAo" node="6oXN8hZU6RV" resolve="res" />
            </node>
            <node concept="X8dFx" id="6oXN8hZUbK1" role="2OqNvi">
              <node concept="2OqwBi" id="6LU90BO6AAY" role="25WWJ7">
                <node concept="2OqwBi" id="6LU90BO6AAZ" role="2Oq$k0">
                  <node concept="37vLTw" id="6LU90BO6AB0" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="3Tsc0h" id="6LU90BO6AB1" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                  </node>
                </node>
                <node concept="3$u5V9" id="6LU90BO6AB2" role="2OqNvi">
                  <node concept="1bVj0M" id="6LU90BO6AB3" role="23t8la">
                    <node concept="3clFbS" id="6LU90BO6AB4" role="1bW5cS">
                      <node concept="3clFbF" id="6LU90BO6AB5" role="3cqZAp">
                        <node concept="2ShNRf" id="6LU90BO6AB6" role="3clFbG">
                          <node concept="1pGfFk" id="6LU90BO6AB7" role="2ShVmc">
                            <ref role="37wK5l" node="3IX4BsKu5KP" resolve="DiagramConnecitonByNode" />
                            <node concept="37vLTw" id="6LU90BO6AB8" role="37wK5m">
                              <ref role="3cqZAo" node="6LU90BO6AB9" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6LU90BO6AB9" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6LU90BO6ABa" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6oXN8hZUcqi" role="3cqZAp">
          <node concept="2OqwBi" id="6oXN8hZUcqj" role="3clFbG">
            <node concept="37vLTw" id="6oXN8hZUcqk" role="2Oq$k0">
              <ref role="3cqZAo" node="6oXN8hZU6RV" resolve="res" />
            </node>
            <node concept="X8dFx" id="6oXN8hZUcql" role="2OqNvi">
              <node concept="2OqwBi" id="6LU90BO6F6O" role="25WWJ7">
                <node concept="2OqwBi" id="6LU90BO6F6P" role="2Oq$k0">
                  <node concept="37vLTw" id="6LU90BO6F6Q" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="3Tsc0h" id="6LU90BO6F6R" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                  </node>
                </node>
                <node concept="3$u5V9" id="6LU90BO6F6S" role="2OqNvi">
                  <node concept="1bVj0M" id="6LU90BO6F6T" role="23t8la">
                    <node concept="3clFbS" id="6LU90BO6F6U" role="1bW5cS">
                      <node concept="3clFbF" id="6LU90BO6F6V" role="3cqZAp">
                        <node concept="2ShNRf" id="6LU90BO6F6W" role="3clFbG">
                          <node concept="1pGfFk" id="6LU90BO6F6X" role="2ShVmc">
                            <ref role="37wK5l" node="3IX4BsKu5KP" resolve="DiagramConnecitonByNode" />
                            <node concept="37vLTw" id="6LU90BO6F6Y" role="37wK5m">
                              <ref role="3cqZAo" node="6LU90BO6F6Z" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6LU90BO6F6Z" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6LU90BO6F70" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BO6yfr" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BO6yfs" role="3clFbG">
            <node concept="37vLTw" id="6LU90BO6yft" role="2Oq$k0">
              <ref role="3cqZAo" node="6oXN8hZU6RV" resolve="res" />
            </node>
            <node concept="X8dFx" id="6LU90BO6yfu" role="2OqNvi">
              <node concept="2OqwBi" id="6LU90BO6JaT" role="25WWJ7">
                <node concept="2OqwBi" id="6LU90BO6JaU" role="2Oq$k0">
                  <node concept="37vLTw" id="6LU90BO6JaV" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="3Tsc0h" id="6LU90BO6JaW" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                  </node>
                </node>
                <node concept="3$u5V9" id="6LU90BO6JaX" role="2OqNvi">
                  <node concept="1bVj0M" id="6LU90BO6JaY" role="23t8la">
                    <node concept="3clFbS" id="6LU90BO6JaZ" role="1bW5cS">
                      <node concept="3clFbF" id="6LU90BO6Jb0" role="3cqZAp">
                        <node concept="2ShNRf" id="6LU90BO6Jb1" role="3clFbG">
                          <node concept="1pGfFk" id="6LU90BO6Jb2" role="2ShVmc">
                            <ref role="37wK5l" node="3IX4BsKu5KP" resolve="DiagramConnecitonByNode" />
                            <node concept="37vLTw" id="6LU90BO6Jb3" role="37wK5m">
                              <ref role="3cqZAo" node="6LU90BO6Jb4" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6LU90BO6Jb4" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6LU90BO6Jb5" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7qUyBv" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qUyBw" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qUyBx" role="2Oq$k0">
              <ref role="3cqZAo" node="6oXN8hZU6RV" resolve="res" />
            </node>
            <node concept="X8dFx" id="2syzu7qUyBy" role="2OqNvi">
              <node concept="2OqwBi" id="2syzu7qUyBz" role="25WWJ7">
                <node concept="2OqwBi" id="2syzu7qUyB$" role="2Oq$k0">
                  <node concept="2OqwBi" id="2syzu7qUJuw" role="2Oq$k0">
                    <node concept="37vLTw" id="2syzu7qUyB_" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                    </node>
                    <node concept="2qgKlT" id="2syzu7qUL6S" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:2lwHqHk$skt" resolve="networkPrototype" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="2syzu7qUyBA" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                  </node>
                </node>
                <node concept="3$u5V9" id="2syzu7qUyBB" role="2OqNvi">
                  <node concept="1bVj0M" id="2syzu7qUyBC" role="23t8la">
                    <node concept="3clFbS" id="2syzu7qUyBD" role="1bW5cS">
                      <node concept="3clFbF" id="2syzu7qUyBE" role="3cqZAp">
                        <node concept="2ShNRf" id="2syzu7qUyBF" role="3clFbG">
                          <node concept="1pGfFk" id="2syzu7qUyBG" role="2ShVmc">
                            <ref role="37wK5l" node="3IX4BsKu5KP" resolve="DiagramConnecitonByNode" />
                            <node concept="37vLTw" id="2syzu7qUyBH" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qUyBI" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2syzu7qUyBI" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2syzu7qUyBJ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7qUyBe" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qUyBf" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qUyBg" role="2Oq$k0">
              <ref role="3cqZAo" node="6oXN8hZU6RV" resolve="res" />
            </node>
            <node concept="X8dFx" id="2syzu7qUyBh" role="2OqNvi">
              <node concept="2OqwBi" id="2syzu7qUyBi" role="25WWJ7">
                <node concept="2OqwBi" id="2syzu7qUyBj" role="2Oq$k0">
                  <node concept="2OqwBi" id="2syzu7qUMgH" role="2Oq$k0">
                    <node concept="37vLTw" id="2syzu7qUyBk" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                    </node>
                    <node concept="2qgKlT" id="2syzu7qUNd0" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:2lwHqHk$skt" resolve="networkPrototype" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="2syzu7qUyBl" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                  </node>
                </node>
                <node concept="3$u5V9" id="2syzu7qUyBm" role="2OqNvi">
                  <node concept="1bVj0M" id="2syzu7qUyBn" role="23t8la">
                    <node concept="3clFbS" id="2syzu7qUyBo" role="1bW5cS">
                      <node concept="3clFbF" id="2syzu7qUyBp" role="3cqZAp">
                        <node concept="2ShNRf" id="2syzu7qUyBq" role="3clFbG">
                          <node concept="1pGfFk" id="2syzu7qUyBr" role="2ShVmc">
                            <ref role="37wK5l" node="3IX4BsKu5KP" resolve="DiagramConnecitonByNode" />
                            <node concept="37vLTw" id="2syzu7qUyBs" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qUyBt" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2syzu7qUyBt" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2syzu7qUyBu" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7qUyAX" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qUyAY" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qUyAZ" role="2Oq$k0">
              <ref role="3cqZAo" node="6oXN8hZU6RV" resolve="res" />
            </node>
            <node concept="X8dFx" id="2syzu7qUyB0" role="2OqNvi">
              <node concept="2OqwBi" id="2syzu7qUyB1" role="25WWJ7">
                <node concept="2OqwBi" id="2syzu7qUyB2" role="2Oq$k0">
                  <node concept="2OqwBi" id="2syzu7qUOmO" role="2Oq$k0">
                    <node concept="37vLTw" id="2syzu7qUyB3" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                    </node>
                    <node concept="2qgKlT" id="2syzu7qUPIZ" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:2lwHqHk$skt" resolve="networkPrototype" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="2syzu7qUyB4" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                  </node>
                </node>
                <node concept="3$u5V9" id="2syzu7qUyB5" role="2OqNvi">
                  <node concept="1bVj0M" id="2syzu7qUyB6" role="23t8la">
                    <node concept="3clFbS" id="2syzu7qUyB7" role="1bW5cS">
                      <node concept="3clFbF" id="2syzu7qUyB8" role="3cqZAp">
                        <node concept="2ShNRf" id="2syzu7qUyB9" role="3clFbG">
                          <node concept="1pGfFk" id="2syzu7qUyBa" role="2ShVmc">
                            <ref role="37wK5l" node="3IX4BsKu5KP" resolve="DiagramConnecitonByNode" />
                            <node concept="37vLTw" id="2syzu7qUyBb" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qUyBc" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2syzu7qUyBc" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2syzu7qUyBd" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6oXN8hZUdsT" role="3cqZAp" />
        <node concept="3cpWs6" id="6oXN8hZUf75" role="3cqZAp">
          <node concept="37vLTw" id="6oXN8hZUgqA" role="3cqZAk">
            <ref role="3cqZAo" node="6oXN8hZU6RV" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsK9E8s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIXhy4Q" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="13N5a7yAzGR" role="jymVt" />
    <node concept="2tJIrI" id="4y$DvIXhBqz" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXhJce" role="jymVt">
      <property role="TrG5h" value="addConnection" />
      <node concept="37vLTG" id="4y$DvIXhJcf" role="3clF46">
        <property role="TrG5h" value="sourcePort" />
        <node concept="3uibUv" id="4y$DvIXhJct" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXhJch" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIXhJci" role="3clF46">
        <property role="TrG5h" value="targetPort" />
        <node concept="3uibUv" id="4y$DvIXhJcu" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXhJck" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tmbuc" id="2syzu7r5hpi" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIXhJcs" role="3clF45">
        <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
      </node>
      <node concept="3clFbS" id="4y$DvIXhJcv" role="3clF47">
        <node concept="3clFbJ" id="5MmYuOgITUQ" role="3cqZAp">
          <node concept="3clFbS" id="5MmYuOgITUS" role="3clFbx">
            <node concept="3cpWs6" id="5MmYuOgJ4GB" role="3cqZAp">
              <node concept="10Nm6u" id="5MmYuOgJ4Mo" role="3cqZAk" />
            </node>
          </node>
          <node concept="3y3z36" id="5MmYuOgJ2__" role="3clFbw">
            <node concept="2OqwBi" id="5MmYuOgJ3BQ" role="3uHU7w">
              <node concept="37vLTw" id="5MmYuOgJ37v" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXhJci" resolve="targetPort" />
              </node>
              <node concept="liA8E" id="5MmYuOgJ4wR" role="2OqNvi">
                <ref role="37wK5l" to="tphl:5FPxgJnz8Ag" resolve="getKind" />
              </node>
            </node>
            <node concept="2OqwBi" id="5MmYuOgJ0$J" role="3uHU7B">
              <node concept="37vLTw" id="5MmYuOgJ0ox" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXhJcf" resolve="sourcePort" />
              </node>
              <node concept="liA8E" id="5MmYuOgJ1CF" role="2OqNvi">
                <ref role="37wK5l" to="tphl:5FPxgJnz8Ag" resolve="getKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5MmYuOgJfNC" role="3cqZAp">
          <node concept="3clFbS" id="5MmYuOgJfNE" role="3clFbx">
            <node concept="3cpWs6" id="5MmYuOgJqjw" role="3cqZAp">
              <node concept="10Nm6u" id="5MmYuOgJqpj" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="5MmYuOgJpMf" role="3clFbw">
            <node concept="2OqwBi" id="5MmYuOgJpMh" role="3fr31v">
              <node concept="37vLTw" id="5MmYuOgJpMi" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXhJcf" resolve="sourcePort" />
              </node>
              <node concept="liA8E" id="5MmYuOgJpMj" role="2OqNvi">
                <ref role="37wK5l" to="tphl:5FPxgJnz8w3" resolve="isSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5MmYuOgJLck" role="3cqZAp">
          <node concept="3clFbS" id="5MmYuOgJLcl" role="3clFbx">
            <node concept="3cpWs6" id="5MmYuOgJLcm" role="3cqZAp">
              <node concept="10Nm6u" id="5MmYuOgJLcn" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="5MmYuOgJLcp" role="3clFbw">
            <node concept="37vLTw" id="5MmYuOgJSw3" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIXhJci" resolve="targetPort" />
            </node>
            <node concept="liA8E" id="5MmYuOgJLcr" role="2OqNvi">
              <ref role="37wK5l" to="tphl:5FPxgJnz8w3" resolve="isSource" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5MmYuOgIN47" role="3cqZAp" />
        <node concept="3cpWs8" id="4y$DvIXhR20" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXhR21" role="3cpWs9">
            <property role="TrG5h" value="sourcePortNode" />
            <node concept="3Tqbb2" id="4y$DvIXhR22" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:37fub3vlApO" resolve="Source" />
            </node>
            <node concept="1rXfSq" id="4y$DvIXhR23" role="33vP2m">
              <ref role="37wK5l" node="6$FGuy5qK2l" resolve="serializeSourcePort" />
              <node concept="37vLTw" id="4y$DvIXhSdn" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIXhJcf" resolve="sourcePort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXhR27" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXhR28" role="3cpWs9">
            <property role="TrG5h" value="targetPortNode" />
            <node concept="3Tqbb2" id="4y$DvIXhR29" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:4KieeRVlhj7" resolve="Destination" />
            </node>
            <node concept="1rXfSq" id="4y$DvIXhR2a" role="33vP2m">
              <ref role="37wK5l" node="6$FGuy5smqM" resolve="serializeDestinationPort" />
              <node concept="37vLTw" id="4y$DvIXhSDb" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIXhJci" resolve="targetPort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4y$DvIXhR2l" role="3cqZAp" />
        <node concept="3cpWs8" id="4y$DvIXhR2m" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXhR2n" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="4y$DvIXhR2o" role="1tU5fm">
              <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="2OqwBi" id="4y$DvIXhR2p" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXkbFm" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXhJcf" resolve="sourcePort" />
              </node>
              <node concept="liA8E" id="4y$DvIXhR2r" role="2OqNvi">
                <ref role="37wK5l" to="tphl:5FPxgJnz8Ag" resolve="getKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4y$DvIXhR2s" role="3cqZAp">
          <node concept="3clFbS" id="4y$DvIXhR2t" role="3clFbx">
            <node concept="3cpWs8" id="4y$DvIXi9EL" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXi9EM" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="4y$DvIXi9EE" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                </node>
                <node concept="2pJPEk" id="4y$DvIXi9EN" role="33vP2m">
                  <node concept="2pJPED" id="4y$DvIXi9EO" role="2pJPEn">
                    <ref role="2pJxaS" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                    <node concept="2pIpSj" id="4y$DvIXi9EP" role="2pJxcM">
                      <ref role="2pIpSl" to="xiqq:PI_pXYus41" resolve="source" />
                      <node concept="36biLy" id="4y$DvIXi9EQ" role="2pJxcZ">
                        <node concept="1PxgMI" id="4y$DvIXi9ER" role="36biLW">
                          <node concept="chp4Y" id="4y$DvIXi9ES" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:37fub3vlA5G" resolve="DataSource" />
                          </node>
                          <node concept="37vLTw" id="4y$DvIXi9ET" role="1m5AlR">
                            <ref role="3cqZAo" node="4y$DvIXhR21" resolve="sourcePortNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2pIpSj" id="4y$DvIXi9EU" role="2pJxcM">
                      <ref role="2pIpSl" to="xiqq:PI_pXYus48" resolve="destination" />
                      <node concept="36biLy" id="4y$DvIXi9EV" role="2pJxcZ">
                        <node concept="1PxgMI" id="4y$DvIXi9EW" role="36biLW">
                          <node concept="chp4Y" id="4y$DvIXi9EX" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:37fub3vlApU" resolve="DataDestination" />
                          </node>
                          <node concept="37vLTw" id="4y$DvIXi9EY" role="1m5AlR">
                            <ref role="3cqZAo" node="4y$DvIXhR28" resolve="targetPortNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2pIpSj" id="4y$DvIXi9EZ" role="2pJxcM">
                      <ref role="2pIpSl" to="xiqq:3IX4BsKqy6J" resolve="path" />
                      <node concept="10Nm6u" id="4y$DvIXi9F0" role="2pJxcZ" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4y$DvIXhR2u" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIXhR2v" role="3clFbG">
                <node concept="2OqwBi" id="4y$DvIXhR2w" role="2Oq$k0">
                  <node concept="37vLTw" id="4y$DvIXhR2x" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="3Tsc0h" id="4y$DvIXhR2y" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                  </node>
                </node>
                <node concept="TSZUe" id="4y$DvIXhR2z" role="2OqNvi">
                  <node concept="37vLTw" id="4y$DvIXi9F1" role="25WWJ7">
                    <ref role="3cqZAo" node="4y$DvIXi9EM" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4y$DvIXiaa2" role="3cqZAp">
              <node concept="2ShNRf" id="4y$DvIXjaVa" role="3cqZAk">
                <node concept="1pGfFk" id="4y$DvIXjicG" role="2ShVmc">
                  <ref role="37wK5l" node="3IX4BsKu5KP" resolve="DiagramConnecitonByNode" />
                  <node concept="37vLTw" id="4y$DvIXjq1h" role="37wK5m">
                    <ref role="3cqZAo" node="4y$DvIXi9EM" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4y$DvIXhR2N" role="3clFbw">
            <node concept="Rm8GO" id="4y$DvIXhR2O" role="3uHU7w">
              <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="37vLTw" id="4y$DvIXhR2P" role="3uHU7B">
              <ref role="3cqZAo" node="4y$DvIXhR2n" resolve="kind" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4y$DvIXhR2Q" role="3cqZAp">
          <node concept="3clFbS" id="4y$DvIXhR2R" role="3clFbx">
            <node concept="3cpWs8" id="4y$DvIXipJC" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXipJD" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="4y$DvIXipJt" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                </node>
                <node concept="2pJPEk" id="4y$DvIXipJE" role="33vP2m">
                  <node concept="2pJPED" id="4y$DvIXipJF" role="2pJPEn">
                    <ref role="2pJxaS" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                    <node concept="2pIpSj" id="4y$DvIXipJG" role="2pJxcM">
                      <ref role="2pIpSl" to="xiqq:PI_pXYus2F" resolve="source" />
                      <node concept="36biLy" id="4y$DvIXipJH" role="2pJxcZ">
                        <node concept="1PxgMI" id="4y$DvIXipJI" role="36biLW">
                          <node concept="chp4Y" id="4y$DvIXipJJ" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
                          </node>
                          <node concept="37vLTw" id="4y$DvIXipJK" role="1m5AlR">
                            <ref role="3cqZAo" node="4y$DvIXhR21" resolve="sourcePortNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2pIpSj" id="4y$DvIXipJL" role="2pJxcM">
                      <ref role="2pIpSl" to="xiqq:PI_pXYus2M" resolve="destination" />
                      <node concept="36biLy" id="4y$DvIXipJM" role="2pJxcZ">
                        <node concept="1PxgMI" id="4y$DvIXipJN" role="36biLW">
                          <node concept="chp4Y" id="4y$DvIXipJO" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                          </node>
                          <node concept="37vLTw" id="4y$DvIXipJP" role="1m5AlR">
                            <ref role="3cqZAo" node="4y$DvIXhR28" resolve="targetPortNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2pIpSj" id="4y$DvIXipJQ" role="2pJxcM">
                      <ref role="2pIpSl" to="xiqq:3IX4BsKqy6J" resolve="path" />
                      <node concept="10Nm6u" id="4y$DvIXipJR" role="2pJxcZ" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4y$DvIXhR2S" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIXhR2T" role="3clFbG">
                <node concept="2OqwBi" id="4y$DvIXhR2U" role="2Oq$k0">
                  <node concept="37vLTw" id="4y$DvIXhR2V" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="3Tsc0h" id="4y$DvIXhR2W" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                  </node>
                </node>
                <node concept="TSZUe" id="4y$DvIXhR2X" role="2OqNvi">
                  <node concept="37vLTw" id="4y$DvIXipJS" role="25WWJ7">
                    <ref role="3cqZAo" node="4y$DvIXipJD" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4y$DvIXiq7U" role="3cqZAp">
              <node concept="2ShNRf" id="4y$DvIXjyRq" role="3cqZAk">
                <node concept="1pGfFk" id="4y$DvIXjyRr" role="2ShVmc">
                  <ref role="37wK5l" node="3IX4BsKu5KP" resolve="DiagramConnecitonByNode" />
                  <node concept="37vLTw" id="4y$DvIXjyRs" role="37wK5m">
                    <ref role="3cqZAo" node="4y$DvIXipJD" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4y$DvIXhR3d" role="3clFbw">
            <node concept="Rm8GO" id="4y$DvIXhR3e" role="3uHU7w">
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
            </node>
            <node concept="37vLTw" id="4y$DvIXhR3f" role="3uHU7B">
              <ref role="3cqZAo" node="4y$DvIXhR2n" resolve="kind" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4y$DvIXhR3g" role="3cqZAp">
          <node concept="3clFbS" id="4y$DvIXhR3h" role="3clFbx">
            <node concept="3cpWs8" id="4y$DvIXjFhb" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIXjFhc" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="4y$DvIXjFh5" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                </node>
                <node concept="2pJPEk" id="4y$DvIXjFhd" role="33vP2m">
                  <node concept="2pJPED" id="4y$DvIXjFhe" role="2pJPEn">
                    <ref role="2pJxaS" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                    <node concept="2pIpSj" id="4y$DvIXjFhf" role="2pJxcM">
                      <ref role="2pIpSl" to="xiqq:37fub3vlA5_" resolve="source" />
                      <node concept="36biLy" id="4y$DvIXjFhg" role="2pJxcZ">
                        <node concept="1PxgMI" id="4y$DvIXjFhh" role="36biLW">
                          <node concept="chp4Y" id="4y$DvIXjFhi" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                          </node>
                          <node concept="37vLTw" id="4y$DvIXjFhj" role="1m5AlR">
                            <ref role="3cqZAo" node="4y$DvIXhR21" resolve="sourcePortNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2pIpSj" id="4y$DvIXjFhk" role="2pJxcM">
                      <ref role="2pIpSl" to="xiqq:37fub3vlDzP" resolve="destination" />
                      <node concept="36biLy" id="4y$DvIXjFhl" role="2pJxcZ">
                        <node concept="1PxgMI" id="4y$DvIXjFhm" role="36biLW">
                          <node concept="chp4Y" id="4y$DvIXjFhn" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                          </node>
                          <node concept="37vLTw" id="4y$DvIXjFho" role="1m5AlR">
                            <ref role="3cqZAo" node="4y$DvIXhR28" resolve="targetPortNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2pIpSj" id="4y$DvIXjFhp" role="2pJxcM">
                      <ref role="2pIpSl" to="xiqq:3IX4BsKqy6J" resolve="path" />
                      <node concept="10Nm6u" id="4y$DvIXjFhq" role="2pJxcZ" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4y$DvIXhR3i" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIXhR3j" role="3clFbG">
                <node concept="2OqwBi" id="4y$DvIXhR3k" role="2Oq$k0">
                  <node concept="37vLTw" id="4y$DvIXhR3l" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                  </node>
                  <node concept="3Tsc0h" id="4y$DvIXhR3m" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                  </node>
                </node>
                <node concept="TSZUe" id="4y$DvIXhR3n" role="2OqNvi">
                  <node concept="37vLTw" id="4y$DvIXjFhr" role="25WWJ7">
                    <ref role="3cqZAo" node="4y$DvIXjFhc" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4y$DvIXjFN$" role="3cqZAp">
              <node concept="2ShNRf" id="4y$DvIXjLWG" role="3cqZAk">
                <node concept="1pGfFk" id="4y$DvIXjLWH" role="2ShVmc">
                  <ref role="37wK5l" node="3IX4BsKu5KP" resolve="DiagramConnecitonByNode" />
                  <node concept="37vLTw" id="4y$DvIXjLWI" role="37wK5m">
                    <ref role="3cqZAo" node="4y$DvIXjFhc" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4y$DvIXhR3B" role="3clFbw">
            <node concept="Rm8GO" id="4y$DvIXhR3C" role="3uHU7w">
              <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="37vLTw" id="4y$DvIXhR3D" role="3uHU7B">
              <ref role="3cqZAo" node="4y$DvIXhR2n" resolve="kind" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4y$DvIXkd1e" role="3cqZAp">
          <node concept="10Nm6u" id="4y$DvIXkm3j" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXhJcw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsK9Klb" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsK9Ks0" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="3Tm1VV" id="3IX4BsK9Ks1" role="1B3o_S" />
      <node concept="10Oyi0" id="3IX4BsK9Ks3" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsK9Ks4" role="3clF47">
        <node concept="3clFbF" id="3IX4BsK9Ks7" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsK9LyF" role="3clFbG">
            <node concept="2JrnkZ" id="3IX4BsK9Qpd" role="2Oq$k0">
              <node concept="37vLTw" id="3IX4BsK9Lk1" role="2JrQYb">
                <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
              </node>
            </node>
            <node concept="liA8E" id="3IX4BsK9Rmi" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsK9Ks5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsK9KBK" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsK9Ks8" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="3Tm1VV" id="3IX4BsK9Ks9" role="1B3o_S" />
      <node concept="10P_77" id="3IX4BsK9Ksb" role="3clF45" />
      <node concept="37vLTG" id="3IX4BsK9Ksc" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="3IX4BsK9Ksd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsK9Kse" role="3clF47">
        <node concept="3cpWs6" id="3IX4BsK9RDk" role="3cqZAp">
          <node concept="1Wc70l" id="3IX4BsK9TZR" role="3cqZAk">
            <node concept="3clFbC" id="3IX4BsK9Vzy" role="3uHU7w">
              <node concept="37vLTw" id="3IX4BsK9VP0" role="3uHU7B">
                <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
              </node>
              <node concept="2OqwBi" id="3IX4BsK9UZT" role="3uHU7w">
                <node concept="1eOMI4" id="3IX4BsK9UrS" role="2Oq$k0">
                  <node concept="10QFUN" id="3IX4BsK9UrP" role="1eOMHV">
                    <node concept="3uibUv" id="3IX4BsK9UFr" role="10QFUM">
                      <ref role="3uigEE" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
                    </node>
                    <node concept="37vLTw" id="3IX4BsK9Ud_" role="10QFUP">
                      <ref role="3cqZAo" node="3IX4BsK9Ksc" resolve="o" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="3IX4BsK9VmM" role="2OqNvi">
                  <ref role="2Oxat5" node="3IX4BsK9EDO" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="3IX4BsK9SSI" role="3uHU7B">
              <node concept="3uibUv" id="3IX4BsK9T8S" role="2ZW6by">
                <ref role="3uigEE" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
              </node>
              <node concept="37vLTw" id="3IX4BsK9S1M" role="2ZW6bz">
                <ref role="3cqZAo" node="3IX4BsK9Ksc" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsK9Ksf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5qDXE" role="jymVt" />
    <node concept="2YIFZL" id="6$FGuy5qK2l" role="jymVt">
      <property role="TrG5h" value="serializeSourcePort" />
      <node concept="3clFbS" id="6$FGuy5qK2o" role="3clF47">
        <node concept="3clFbJ" id="6$FGuy5qNPV" role="3cqZAp">
          <node concept="3fqX7Q" id="6$FGuy5OX3b" role="3clFbw">
            <node concept="2OqwBi" id="6$FGuy5OX3d" role="3fr31v">
              <node concept="37vLTw" id="6$FGuy5OX3e" role="2Oq$k0">
                <ref role="3cqZAo" node="6$FGuy5qMQr" resolve="port" />
              </node>
              <node concept="liA8E" id="6$FGuy5OX3f" role="2OqNvi">
                <ref role="37wK5l" to="tphl:5FPxgJnz8w3" resolve="isSource" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6$FGuy5qNPX" role="3clFbx">
            <node concept="3cpWs6" id="6$FGuy5qOr4" role="3cqZAp">
              <node concept="10Nm6u" id="6$FGuy5qOuy" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6$FGuy5rR0e" role="3cqZAp">
          <node concept="3cpWsn" id="6$FGuy5rR0f" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="6$FGuy5rR0d" role="1tU5fm">
              <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="2OqwBi" id="6$FGuy5rR0g" role="33vP2m">
              <node concept="37vLTw" id="6$FGuy5rR0h" role="2Oq$k0">
                <ref role="3cqZAo" node="6$FGuy5qMQr" resolve="port" />
              </node>
              <node concept="liA8E" id="6$FGuy5rR0i" role="2OqNvi">
                <ref role="37wK5l" to="tphl:5FPxgJnz8Ag" resolve="getKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6$FGuy5rS1b" role="3cqZAp">
          <node concept="3cpWsn" id="6$FGuy5rS1c" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="4y$DvIXl8J_" role="1tU5fm">
              <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
            </node>
            <node concept="2OqwBi" id="6$FGuy5rS1d" role="33vP2m">
              <node concept="37vLTw" id="6$FGuy5rS1e" role="2Oq$k0">
                <ref role="3cqZAo" node="6$FGuy5qMQr" resolve="port" />
              </node>
              <node concept="liA8E" id="6$FGuy5rS1f" role="2OqNvi">
                <ref role="37wK5l" to="tphl:4O0ojQq1drw" resolve="getComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6$FGuy5rJMw" role="3cqZAp">
          <node concept="3clFbS" id="6$FGuy5rJMx" role="3clFbx">
            <node concept="3cpWs8" id="6$FGuy5rJMy" role="3cqZAp">
              <node concept="3cpWsn" id="6$FGuy5rJMz" role="3cpWs9">
                <property role="TrG5h" value="fbInstPort" />
                <node concept="3uibUv" id="6$FGuy5rJM$" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
                </node>
                <node concept="10QFUN" id="6$FGuy5rJM_" role="33vP2m">
                  <node concept="3uibUv" id="6$FGuy5rJMA" role="10QFUM">
                    <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
                  </node>
                  <node concept="37vLTw" id="6$FGuy5rJMB" role="10QFUP">
                    <ref role="3cqZAo" node="6$FGuy5qMQr" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6$FGuy5rOaA" role="3cqZAp">
              <node concept="3cpWsn" id="6$FGuy5rOaB" role="3cpWs9">
                <property role="TrG5h" value="position" />
                <node concept="10Oyi0" id="6$FGuy5rOay" role="1tU5fm" />
                <node concept="2OqwBi" id="6$FGuy5rOaC" role="33vP2m">
                  <node concept="37vLTw" id="6$FGuy5rOaD" role="2Oq$k0">
                    <ref role="3cqZAo" node="6$FGuy5rJMz" resolve="fbInstPort" />
                  </node>
                  <node concept="liA8E" id="6$FGuy5rOaE" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:3IX4BsK6WST" resolve="getPosition" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6$FGuy5rJMC" role="3cqZAp">
              <node concept="3cpWsn" id="6$FGuy5rJMD" role="3cpWs9">
                <property role="TrG5h" value="componentNode" />
                <node concept="3Tqbb2" id="6$FGuy5rJME" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
                <node concept="1PxgMI" id="6LU90BOsIBB" role="33vP2m">
                  <node concept="chp4Y" id="6LU90BOsJ0m" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                  </node>
                  <node concept="2OqwBi" id="6$FGuy5rJMF" role="1m5AlR">
                    <node concept="1eOMI4" id="6$FGuy5rJMG" role="2Oq$k0">
                      <node concept="10QFUN" id="6$FGuy5rJMH" role="1eOMHV">
                        <node concept="3uibUv" id="6LU90BOsHvw" role="10QFUM">
                          <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                        </node>
                        <node concept="37vLTw" id="6$FGuy5rS1g" role="10QFUP">
                          <ref role="3cqZAo" node="6$FGuy5rS1c" resolve="component" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6$FGuy5rJMM" role="2OqNvi">
                      <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6$FGuy5rMDB" role="3cqZAp">
              <node concept="3clFbS" id="6$FGuy5rMDD" role="3clFbx">
                <node concept="3cpWs8" id="6$FGuy5rJMN" role="3cqZAp">
                  <node concept="3cpWsn" id="6$FGuy5rJMO" role="3cpWs9">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="6$FGuy5rJMP" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                    </node>
                    <node concept="2ShNRf" id="6$FGuy5rJMQ" role="33vP2m">
                      <node concept="3zrR0B" id="6$FGuy5rJMR" role="2ShVmc">
                        <node concept="3Tqbb2" id="6$FGuy5rJMS" role="3zrR0E">
                          <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6$FGuy5rJMT" role="3cqZAp">
                  <node concept="37vLTI" id="6$FGuy5rJMU" role="3clFbG">
                    <node concept="37vLTw" id="6$FGuy5rJMV" role="37vLTx">
                      <ref role="3cqZAo" node="6$FGuy5rJMD" resolve="componentNode" />
                    </node>
                    <node concept="2OqwBi" id="6$FGuy5rJMW" role="37vLTJ">
                      <node concept="37vLTw" id="6$FGuy5rJMX" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5rJMO" resolve="node" />
                      </node>
                      <node concept="3TrEf2" id="6$FGuy5rJMY" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6$FGuy5rJMZ" role="3cqZAp">
                  <node concept="37vLTI" id="6$FGuy5rJN0" role="3clFbG">
                    <node concept="1y4W85" id="6$FGuy5rJN1" role="37vLTx">
                      <node concept="37vLTw" id="6$FGuy5rOaF" role="1y58nS">
                        <ref role="3cqZAo" node="6$FGuy5rOaB" resolve="position" />
                      </node>
                      <node concept="2OqwBi" id="6$FGuy5rJN6" role="1y566C">
                        <node concept="37vLTw" id="6$FGuy5rJN7" role="2Oq$k0">
                          <ref role="3cqZAo" node="6$FGuy5rJMD" resolve="componentNode" />
                        </node>
                        <node concept="2qgKlT" id="6LU90BOvy8Z" role="2OqNvi">
                          <ref role="37wK5l" to="t4dg:5L1OxDukYe7" resolve="dataSources" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6$FGuy5rJNa" role="37vLTJ">
                      <node concept="37vLTw" id="6$FGuy5rJNb" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5rJMO" resolve="node" />
                      </node>
                      <node concept="3TrEf2" id="6$FGuy5rJNc" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6$FGuy5rJNd" role="3cqZAp">
                  <node concept="37vLTw" id="6$FGuy5rJNe" role="3cqZAk">
                    <ref role="3cqZAo" node="6$FGuy5rJMO" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6$FGuy5rQl7" role="3clFbw">
                <node concept="Rm8GO" id="6$FGuy5rQl8" role="3uHU7w">
                  <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                  <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                </node>
                <node concept="37vLTw" id="6$FGuy5rR0j" role="3uHU7B">
                  <ref role="3cqZAo" node="6$FGuy5rR0f" resolve="kind" />
                </node>
              </node>
              <node concept="3eNFk2" id="6$FGuy5rUBh" role="3eNLev">
                <node concept="3clFbS" id="6$FGuy5rUBj" role="3eOfB_">
                  <node concept="3cpWs8" id="6$FGuy5rVoo" role="3cqZAp">
                    <node concept="3cpWsn" id="6$FGuy5rVop" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="6$FGuy5rVoq" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                      </node>
                      <node concept="2ShNRf" id="6$FGuy5rVor" role="33vP2m">
                        <node concept="3zrR0B" id="6$FGuy5rVos" role="2ShVmc">
                          <node concept="3Tqbb2" id="6$FGuy5rVot" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6$FGuy5rVou" role="3cqZAp">
                    <node concept="37vLTI" id="6$FGuy5rVov" role="3clFbG">
                      <node concept="37vLTw" id="6$FGuy5rVow" role="37vLTx">
                        <ref role="3cqZAo" node="6$FGuy5rJMD" resolve="componentNode" />
                      </node>
                      <node concept="2OqwBi" id="6$FGuy5rVox" role="37vLTJ">
                        <node concept="37vLTw" id="6$FGuy5rVoy" role="2Oq$k0">
                          <ref role="3cqZAo" node="6$FGuy5rVop" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6$FGuy5s0x_" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6$FGuy5rVo$" role="3cqZAp">
                    <node concept="37vLTI" id="6$FGuy5rVo_" role="3clFbG">
                      <node concept="1y4W85" id="6$FGuy5rVoA" role="37vLTx">
                        <node concept="37vLTw" id="6$FGuy5rVoB" role="1y58nS">
                          <ref role="3cqZAo" node="6$FGuy5rOaB" resolve="position" />
                        </node>
                        <node concept="2OqwBi" id="6$FGuy5rVoD" role="1y566C">
                          <node concept="37vLTw" id="6$FGuy5rVoE" role="2Oq$k0">
                            <ref role="3cqZAo" node="6$FGuy5rJMD" resolve="componentNode" />
                          </node>
                          <node concept="2qgKlT" id="6LU90BOvAoq" role="2OqNvi">
                            <ref role="37wK5l" to="t4dg:5L1OxDukYcu" resolve="eventSources" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6$FGuy5rVoH" role="37vLTJ">
                        <node concept="37vLTw" id="6$FGuy5rVoI" role="2Oq$k0">
                          <ref role="3cqZAo" node="6$FGuy5rVop" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6$FGuy5rXTL" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6$FGuy5rVoK" role="3cqZAp">
                    <node concept="37vLTw" id="6$FGuy5rVoL" role="3cqZAk">
                      <ref role="3cqZAo" node="6$FGuy5rVop" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6$FGuy5rV6Y" role="3eO9$A">
                  <node concept="Rm8GO" id="6$FGuy5rVfL" role="3uHU7w">
                    <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                  </node>
                  <node concept="37vLTw" id="6$FGuy5rV70" role="3uHU7B">
                    <ref role="3cqZAo" node="6$FGuy5rR0f" resolve="kind" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="6LU90BO70Jk" role="3eNLev">
                <node concept="3clFbS" id="6LU90BO70Jl" role="3eOfB_">
                  <node concept="3cpWs8" id="6LU90BO70Jm" role="3cqZAp">
                    <node concept="3cpWsn" id="6LU90BO70Jn" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="6LU90BO70Jo" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                      </node>
                      <node concept="2ShNRf" id="6LU90BO70Jp" role="33vP2m">
                        <node concept="3zrR0B" id="6LU90BO70Jq" role="2ShVmc">
                          <node concept="3Tqbb2" id="6LU90BO70Jr" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6LU90BO70Js" role="3cqZAp">
                    <node concept="37vLTI" id="6LU90BO70Jt" role="3clFbG">
                      <node concept="1PxgMI" id="6LU90BOsJyl" role="37vLTx">
                        <node concept="chp4Y" id="6LU90BOsJFI" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                        </node>
                        <node concept="37vLTw" id="6LU90BO70Ju" role="1m5AlR">
                          <ref role="3cqZAo" node="6$FGuy5rJMD" resolve="componentNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6LU90BO70Jv" role="37vLTJ">
                        <node concept="37vLTw" id="6LU90BO70Jw" role="2Oq$k0">
                          <ref role="3cqZAo" node="6LU90BO70Jn" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6LU90BO9brN" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6LU90BO70Jy" role="3cqZAp">
                    <node concept="37vLTI" id="6LU90BO70Jz" role="3clFbG">
                      <node concept="1y4W85" id="6LU90BO70J$" role="37vLTx">
                        <node concept="37vLTw" id="6LU90BO70J_" role="1y58nS">
                          <ref role="3cqZAo" node="6$FGuy5rOaB" resolve="position" />
                        </node>
                        <node concept="2OqwBi" id="6LU90BOvBYd" role="1y566C">
                          <node concept="1PxgMI" id="6LU90BOvB6f" role="2Oq$k0">
                            <node concept="chp4Y" id="6LU90BOvBg3" role="3oSUPX">
                              <ref role="cht4Q" to="xiqq:uLhTRQXdkL" resolve="IComponentWithAdapters" />
                            </node>
                            <node concept="37vLTw" id="6LU90BO70JC" role="1m5AlR">
                              <ref role="3cqZAo" node="6$FGuy5rJMD" resolve="componentNode" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="6LU90BOvCtw" role="2OqNvi">
                            <ref role="37wK5l" to="t4dg:uLhTRQXdlm" resolve="getPlugs" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6LU90BO70JF" role="37vLTJ">
                        <node concept="37vLTw" id="6LU90BO70JG" role="2Oq$k0">
                          <ref role="3cqZAo" node="6LU90BO70Jn" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6LU90BO77jI" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfIWB0" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6LU90BO70JI" role="3cqZAp">
                    <node concept="37vLTw" id="6LU90BO70JJ" role="3cqZAk">
                      <ref role="3cqZAo" node="6LU90BO70Jn" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6LU90BO70JK" role="3eO9$A">
                  <node concept="Rm8GO" id="6LU90BO70JL" role="3uHU7w">
                    <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                    <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                  </node>
                  <node concept="37vLTw" id="6LU90BO70JM" role="3uHU7B">
                    <ref role="3cqZAo" node="6$FGuy5rR0f" resolve="kind" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6$FGuy5rJNf" role="3clFbw">
            <node concept="3uibUv" id="6$FGuy5rJNg" role="2ZW6by">
              <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            </node>
            <node concept="37vLTw" id="6$FGuy5rJNh" role="2ZW6bz">
              <ref role="3cqZAo" node="6$FGuy5qMQr" resolve="port" />
            </node>
          </node>
          <node concept="3eNFk2" id="6$FGuy5rYa6" role="3eNLev">
            <node concept="2ZW3vV" id="6$FGuy5rZdP" role="3eO9$A">
              <node concept="3uibUv" id="4y$DvIXl9id" role="2ZW6by">
                <ref role="3uigEE" to="tphl:6tmlia_XI2H" resolve="InterfaceEndpointView" />
              </node>
              <node concept="37vLTw" id="6$FGuy5rYKK" role="2ZW6bz">
                <ref role="3cqZAo" node="6$FGuy5qMQr" resolve="port" />
              </node>
            </node>
            <node concept="3clFbS" id="6$FGuy5rYa8" role="3eOfB_">
              <node concept="3cpWs8" id="6$FGuy5s5hB" role="3cqZAp">
                <node concept="3cpWsn" id="6$FGuy5s5hC" role="3cpWs9">
                  <property role="TrG5h" value="endpoint" />
                  <node concept="3uibUv" id="6$FGuy5s5h_" role="1tU5fm">
                    <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                  </node>
                  <node concept="10QFUN" id="6$FGuy5s5hE" role="33vP2m">
                    <node concept="3uibUv" id="6$FGuy5s5hF" role="10QFUM">
                      <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                    </node>
                    <node concept="37vLTw" id="6$FGuy5s5hH" role="10QFUP">
                      <ref role="3cqZAo" node="6$FGuy5qMQr" resolve="port" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6$FGuy5s5Yb" role="3cqZAp">
                <node concept="3clFbS" id="6$FGuy5s5Yc" role="3clFbx">
                  <node concept="3cpWs8" id="6$FGuy5s5Yd" role="3cqZAp">
                    <node concept="3cpWsn" id="6$FGuy5s5Ye" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="6$FGuy5s5Yf" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                      </node>
                      <node concept="2ShNRf" id="6$FGuy5s5Yg" role="33vP2m">
                        <node concept="3zrR0B" id="6$FGuy5s5Yh" role="2ShVmc">
                          <node concept="3Tqbb2" id="6$FGuy5s5Yi" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6$FGuy5s5Yp" role="3cqZAp">
                    <node concept="37vLTI" id="6$FGuy5s5Yq" role="3clFbG">
                      <node concept="1PxgMI" id="6$FGuy5sc2p" role="37vLTx">
                        <node concept="chp4Y" id="6$FGuy5sccU" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="6$FGuy5s9bH" role="1m5AlR">
                          <node concept="37vLTw" id="6$FGuy5s8Ou" role="2Oq$k0">
                            <ref role="3cqZAo" node="6$FGuy5s5hC" resolve="endpoint" />
                          </node>
                          <node concept="liA8E" id="6$FGuy5saJW" role="2OqNvi">
                            <ref role="37wK5l" node="6tmlia_XTsN" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6$FGuy5s5Yy" role="37vLTJ">
                        <node concept="37vLTw" id="6$FGuy5s5Yz" role="2Oq$k0">
                          <ref role="3cqZAo" node="6$FGuy5s5Ye" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6$FGuy5saam" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6$FGuy5s5Y_" role="3cqZAp">
                    <node concept="37vLTw" id="6$FGuy5s5YA" role="3cqZAk">
                      <ref role="3cqZAo" node="6$FGuy5s5Ye" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6$FGuy5s5YB" role="3clFbw">
                  <node concept="Rm8GO" id="6$FGuy5s5YC" role="3uHU7w">
                    <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                    <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                  </node>
                  <node concept="37vLTw" id="6$FGuy5s5YD" role="3uHU7B">
                    <ref role="3cqZAo" node="6$FGuy5rR0f" resolve="kind" />
                  </node>
                </node>
                <node concept="3eNFk2" id="6$FGuy5s5YE" role="3eNLev">
                  <node concept="3clFbS" id="6$FGuy5s5YF" role="3eOfB_">
                    <node concept="3cpWs8" id="6$FGuy5scn$" role="3cqZAp">
                      <node concept="3cpWsn" id="6$FGuy5scn_" role="3cpWs9">
                        <property role="TrG5h" value="node" />
                        <node concept="3Tqbb2" id="6$FGuy5scnA" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                        </node>
                        <node concept="2ShNRf" id="6$FGuy5scnB" role="33vP2m">
                          <node concept="3zrR0B" id="6$FGuy5scnC" role="2ShVmc">
                            <node concept="3Tqbb2" id="6$FGuy5scnD" role="3zrR0E">
                              <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6$FGuy5scnE" role="3cqZAp">
                      <node concept="37vLTI" id="6$FGuy5scnF" role="3clFbG">
                        <node concept="1PxgMI" id="6$FGuy5scnG" role="37vLTx">
                          <node concept="chp4Y" id="6$FGuy5se06" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                          </node>
                          <node concept="2OqwBi" id="6$FGuy5scnI" role="1m5AlR">
                            <node concept="37vLTw" id="6$FGuy5scnJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="6$FGuy5s5hC" resolve="endpoint" />
                            </node>
                            <node concept="liA8E" id="6$FGuy5scnK" role="2OqNvi">
                              <ref role="37wK5l" node="6tmlia_XTsN" resolve="getNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6$FGuy5scnL" role="37vLTJ">
                          <node concept="37vLTw" id="6$FGuy5scnM" role="2Oq$k0">
                            <ref role="3cqZAo" node="6$FGuy5scn_" resolve="node" />
                          </node>
                          <node concept="3TrEf2" id="6$FGuy5sdNx" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6$FGuy5s5Z4" role="3cqZAp">
                      <node concept="37vLTw" id="6$FGuy5sedT" role="3cqZAk">
                        <ref role="3cqZAo" node="6$FGuy5scn_" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="6$FGuy5s5Z6" role="3eO9$A">
                    <node concept="Rm8GO" id="6$FGuy5s5Z7" role="3uHU7w">
                      <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                      <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                    </node>
                    <node concept="37vLTw" id="6$FGuy5s5Z8" role="3uHU7B">
                      <ref role="3cqZAo" node="6$FGuy5rR0f" resolve="kind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6$FGuy5sihj" role="3cqZAp">
          <node concept="10Nm6u" id="6$FGuy5sjLk" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy5BnOr" role="1B3o_S" />
      <node concept="37vLTG" id="6$FGuy5qMQr" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="6$FGuy5qMQq" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3Tqbb2" id="6$FGuy5qNa6" role="3clF45">
        <ref role="ehGHo" to="xiqq:37fub3vlApO" resolve="Source" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5sksU" role="jymVt" />
    <node concept="2YIFZL" id="6$FGuy5smqM" role="jymVt">
      <property role="TrG5h" value="serializeDestinationPort" />
      <node concept="3clFbS" id="6$FGuy5smqN" role="3clF47">
        <node concept="3clFbJ" id="6$FGuy5smqO" role="3cqZAp">
          <node concept="2OqwBi" id="6$FGuy5ssgz" role="3clFbw">
            <node concept="37vLTw" id="6$FGuy5ssg$" role="2Oq$k0">
              <ref role="3cqZAo" node="6$FGuy5smtt" resolve="port" />
            </node>
            <node concept="liA8E" id="6$FGuy5ssg_" role="2OqNvi">
              <ref role="37wK5l" to="tphl:5FPxgJnz8w3" resolve="isSource" />
            </node>
          </node>
          <node concept="3clFbS" id="6$FGuy5smqS" role="3clFbx">
            <node concept="3cpWs6" id="6$FGuy5smqT" role="3cqZAp">
              <node concept="10Nm6u" id="6$FGuy5smqU" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6$FGuy5smqV" role="3cqZAp">
          <node concept="3cpWsn" id="6$FGuy5smqW" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="6$FGuy5smqX" role="1tU5fm">
              <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="2OqwBi" id="6$FGuy5smqY" role="33vP2m">
              <node concept="37vLTw" id="6$FGuy5smqZ" role="2Oq$k0">
                <ref role="3cqZAo" node="6$FGuy5smtt" resolve="port" />
              </node>
              <node concept="liA8E" id="6$FGuy5smr0" role="2OqNvi">
                <ref role="37wK5l" to="tphl:5FPxgJnz8Ag" resolve="getKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6$FGuy5smr1" role="3cqZAp">
          <node concept="3cpWsn" id="6$FGuy5smr2" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="4y$DvIXl9Ua" role="1tU5fm">
              <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
            </node>
            <node concept="2OqwBi" id="6$FGuy5smr4" role="33vP2m">
              <node concept="37vLTw" id="6$FGuy5smr5" role="2Oq$k0">
                <ref role="3cqZAo" node="6$FGuy5smtt" resolve="port" />
              </node>
              <node concept="liA8E" id="6$FGuy5smr6" role="2OqNvi">
                <ref role="37wK5l" to="tphl:4O0ojQq1drw" resolve="getComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6$FGuy5smr7" role="3cqZAp">
          <node concept="3clFbS" id="6$FGuy5smr8" role="3clFbx">
            <node concept="3cpWs8" id="6$FGuy5smr9" role="3cqZAp">
              <node concept="3cpWsn" id="6$FGuy5smra" role="3cpWs9">
                <property role="TrG5h" value="fbInstPort" />
                <node concept="3uibUv" id="6$FGuy5smrb" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
                </node>
                <node concept="10QFUN" id="6$FGuy5smrc" role="33vP2m">
                  <node concept="3uibUv" id="6$FGuy5smrd" role="10QFUM">
                    <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
                  </node>
                  <node concept="37vLTw" id="6$FGuy5smre" role="10QFUP">
                    <ref role="3cqZAo" node="6$FGuy5smtt" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6$FGuy5smrf" role="3cqZAp">
              <node concept="3cpWsn" id="6$FGuy5smrg" role="3cpWs9">
                <property role="TrG5h" value="position" />
                <node concept="10Oyi0" id="6$FGuy5smrh" role="1tU5fm" />
                <node concept="2OqwBi" id="6$FGuy5smri" role="33vP2m">
                  <node concept="37vLTw" id="6$FGuy5smrj" role="2Oq$k0">
                    <ref role="3cqZAo" node="6$FGuy5smra" resolve="fbInstPort" />
                  </node>
                  <node concept="liA8E" id="6$FGuy5smrk" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:3IX4BsK6WST" resolve="getPosition" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6$FGuy5smrl" role="3cqZAp">
              <node concept="3cpWsn" id="6$FGuy5smrm" role="3cpWs9">
                <property role="TrG5h" value="componentNode" />
                <node concept="3Tqbb2" id="6$FGuy5smrn" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
                <node concept="1PxgMI" id="6LU90BOsPff" role="33vP2m">
                  <node concept="chp4Y" id="6LU90BOsPCu" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                  </node>
                  <node concept="2OqwBi" id="6$FGuy5smro" role="1m5AlR">
                    <node concept="1eOMI4" id="6$FGuy5smrp" role="2Oq$k0">
                      <node concept="10QFUN" id="6$FGuy5smrq" role="1eOMHV">
                        <node concept="3uibUv" id="6LU90BOv21z" role="10QFUM">
                          <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                        </node>
                        <node concept="37vLTw" id="6$FGuy5smrs" role="10QFUP">
                          <ref role="3cqZAo" node="6$FGuy5smr2" resolve="component" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6$FGuy5smrt" role="2OqNvi">
                      <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6$FGuy5smru" role="3cqZAp">
              <node concept="3clFbS" id="6$FGuy5smrv" role="3clFbx">
                <node concept="3cpWs8" id="6$FGuy5smrw" role="3cqZAp">
                  <node concept="3cpWsn" id="6$FGuy5smrx" role="3cpWs9">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="6$FGuy5smry" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                    </node>
                    <node concept="2ShNRf" id="6$FGuy5smrz" role="33vP2m">
                      <node concept="3zrR0B" id="6$FGuy5smr$" role="2ShVmc">
                        <node concept="3Tqbb2" id="6$FGuy5smr_" role="3zrR0E">
                          <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6$FGuy5smrA" role="3cqZAp">
                  <node concept="37vLTI" id="6$FGuy5smrB" role="3clFbG">
                    <node concept="37vLTw" id="6$FGuy5smrC" role="37vLTx">
                      <ref role="3cqZAo" node="6$FGuy5smrm" resolve="componentNode" />
                    </node>
                    <node concept="2OqwBi" id="6$FGuy5smrD" role="37vLTJ">
                      <node concept="37vLTw" id="6$FGuy5smrE" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5smrx" resolve="node" />
                      </node>
                      <node concept="3TrEf2" id="6$FGuy5smrF" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6$FGuy5smrG" role="3cqZAp">
                  <node concept="37vLTI" id="6$FGuy5smrH" role="3clFbG">
                    <node concept="1y4W85" id="6$FGuy5smrI" role="37vLTx">
                      <node concept="37vLTw" id="6$FGuy5smrJ" role="1y58nS">
                        <ref role="3cqZAo" node="6$FGuy5smrg" resolve="position" />
                      </node>
                      <node concept="2OqwBi" id="6$FGuy5smrL" role="1y566C">
                        <node concept="37vLTw" id="6$FGuy5smrM" role="2Oq$k0">
                          <ref role="3cqZAo" node="6$FGuy5smrm" resolve="componentNode" />
                        </node>
                        <node concept="2qgKlT" id="6LU90BOvbJB" role="2OqNvi">
                          <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6$FGuy5smrP" role="37vLTJ">
                      <node concept="37vLTw" id="6$FGuy5smrQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5smrx" resolve="node" />
                      </node>
                      <node concept="3TrEf2" id="6$FGuy5smrR" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6$FGuy5smrS" role="3cqZAp">
                  <node concept="37vLTw" id="6$FGuy5smrT" role="3cqZAk">
                    <ref role="3cqZAo" node="6$FGuy5smrx" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6$FGuy5smrU" role="3clFbw">
                <node concept="Rm8GO" id="6$FGuy5smrV" role="3uHU7w">
                  <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                  <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                </node>
                <node concept="37vLTw" id="6$FGuy5smrW" role="3uHU7B">
                  <ref role="3cqZAo" node="6$FGuy5smqW" resolve="kind" />
                </node>
              </node>
              <node concept="3eNFk2" id="6$FGuy5smrX" role="3eNLev">
                <node concept="3clFbS" id="6$FGuy5smrY" role="3eOfB_">
                  <node concept="3cpWs8" id="6$FGuy5smrZ" role="3cqZAp">
                    <node concept="3cpWsn" id="6$FGuy5sms0" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="6$FGuy5sms1" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                      </node>
                      <node concept="2ShNRf" id="6$FGuy5sms2" role="33vP2m">
                        <node concept="3zrR0B" id="6$FGuy5sms3" role="2ShVmc">
                          <node concept="3Tqbb2" id="6$FGuy5sms4" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6$FGuy5sms5" role="3cqZAp">
                    <node concept="37vLTI" id="6$FGuy5sms6" role="3clFbG">
                      <node concept="37vLTw" id="6$FGuy5sms7" role="37vLTx">
                        <ref role="3cqZAo" node="6$FGuy5smrm" resolve="componentNode" />
                      </node>
                      <node concept="2OqwBi" id="6$FGuy5sms8" role="37vLTJ">
                        <node concept="37vLTw" id="6$FGuy5sms9" role="2Oq$k0">
                          <ref role="3cqZAo" node="6$FGuy5sms0" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6$FGuy5smsa" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6$FGuy5smsb" role="3cqZAp">
                    <node concept="37vLTI" id="6$FGuy5smsc" role="3clFbG">
                      <node concept="1y4W85" id="6$FGuy5smsd" role="37vLTx">
                        <node concept="37vLTw" id="6$FGuy5smse" role="1y58nS">
                          <ref role="3cqZAo" node="6$FGuy5smrg" resolve="position" />
                        </node>
                        <node concept="2OqwBi" id="6$FGuy5smsg" role="1y566C">
                          <node concept="37vLTw" id="6$FGuy5smsh" role="2Oq$k0">
                            <ref role="3cqZAo" node="6$FGuy5smrm" resolve="componentNode" />
                          </node>
                          <node concept="2qgKlT" id="6LU90BOvhSV" role="2OqNvi">
                            <ref role="37wK5l" to="t4dg:5L1OxDukYdN" resolve="eventDestinations" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6$FGuy5smsk" role="37vLTJ">
                        <node concept="37vLTw" id="6$FGuy5smsl" role="2Oq$k0">
                          <ref role="3cqZAo" node="6$FGuy5sms0" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6$FGuy5smsm" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6$FGuy5smsn" role="3cqZAp">
                    <node concept="37vLTw" id="6$FGuy5smso" role="3cqZAk">
                      <ref role="3cqZAo" node="6$FGuy5sms0" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6$FGuy5smsp" role="3eO9$A">
                  <node concept="Rm8GO" id="6$FGuy5smsq" role="3uHU7w">
                    <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                  </node>
                  <node concept="37vLTw" id="6$FGuy5smsr" role="3uHU7B">
                    <ref role="3cqZAo" node="6$FGuy5smqW" resolve="kind" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="6LU90BO6U0P" role="3eNLev">
                <node concept="3clFbS" id="6LU90BO6U0Q" role="3eOfB_">
                  <node concept="3cpWs8" id="6LU90BO6U0R" role="3cqZAp">
                    <node concept="3cpWsn" id="6LU90BO6U0S" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="6LU90BO6U0T" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                      </node>
                      <node concept="2ShNRf" id="6LU90BO6U0U" role="33vP2m">
                        <node concept="3zrR0B" id="6LU90BO6U0V" role="2ShVmc">
                          <node concept="3Tqbb2" id="6LU90BO6U0W" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6LU90BO6U0X" role="3cqZAp">
                    <node concept="37vLTI" id="6LU90BO6U0Y" role="3clFbG">
                      <node concept="1PxgMI" id="6LU90BOsQcH" role="37vLTx">
                        <node concept="chp4Y" id="6LU90BOsQwU" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                        </node>
                        <node concept="37vLTw" id="6LU90BO6U0Z" role="1m5AlR">
                          <ref role="3cqZAo" node="6$FGuy5smrm" resolve="componentNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6LU90BO6U10" role="37vLTJ">
                        <node concept="37vLTw" id="6LU90BO6U11" role="2Oq$k0">
                          <ref role="3cqZAo" node="6LU90BO6U0S" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6LU90BO72ux" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6LU90BO6U13" role="3cqZAp">
                    <node concept="37vLTI" id="6LU90BO6U14" role="3clFbG">
                      <node concept="1y4W85" id="6LU90BO6U15" role="37vLTx">
                        <node concept="37vLTw" id="6LU90BO6U16" role="1y58nS">
                          <ref role="3cqZAo" node="6$FGuy5smrg" resolve="position" />
                        </node>
                        <node concept="2OqwBi" id="6LU90BO6U18" role="1y566C">
                          <node concept="1PxgMI" id="6LU90BOvjJ_" role="2Oq$k0">
                            <node concept="chp4Y" id="6LU90BOvjVt" role="3oSUPX">
                              <ref role="cht4Q" to="xiqq:uLhTRQXdkL" resolve="IComponentWithAdapters" />
                            </node>
                            <node concept="37vLTw" id="6LU90BO6U19" role="1m5AlR">
                              <ref role="3cqZAo" node="6$FGuy5smrm" resolve="componentNode" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="6LU90BOvktN" role="2OqNvi">
                            <ref role="37wK5l" to="t4dg:uLhTRQXezk" resolve="getSockets" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6LU90BO6U1c" role="37vLTJ">
                        <node concept="37vLTw" id="6LU90BO6U1d" role="2Oq$k0">
                          <ref role="3cqZAo" node="6LU90BO6U0S" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6LU90BO72Ui" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6LU90BO6U1f" role="3cqZAp">
                    <node concept="37vLTw" id="6LU90BO6U1g" role="3cqZAk">
                      <ref role="3cqZAo" node="6LU90BO6U0S" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6LU90BO6U1h" role="3eO9$A">
                  <node concept="Rm8GO" id="6LU90BO6UTr" role="3uHU7w">
                    <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                    <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                  </node>
                  <node concept="37vLTw" id="6LU90BO6U1j" role="3uHU7B">
                    <ref role="3cqZAo" node="6$FGuy5smqW" resolve="kind" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6$FGuy5smss" role="3clFbw">
            <node concept="3uibUv" id="6$FGuy5smst" role="2ZW6by">
              <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            </node>
            <node concept="37vLTw" id="6$FGuy5smsu" role="2ZW6bz">
              <ref role="3cqZAo" node="6$FGuy5smtt" resolve="port" />
            </node>
          </node>
          <node concept="3eNFk2" id="6$FGuy5smsv" role="3eNLev">
            <node concept="2ZW3vV" id="6$FGuy5smsw" role="3eO9$A">
              <node concept="3uibUv" id="4y$DvIXlasN" role="2ZW6by">
                <ref role="3uigEE" to="tphl:6tmlia_XI2H" resolve="InterfaceEndpointView" />
              </node>
              <node concept="37vLTw" id="6$FGuy5smsy" role="2ZW6bz">
                <ref role="3cqZAo" node="6$FGuy5smtt" resolve="port" />
              </node>
            </node>
            <node concept="3clFbS" id="6$FGuy5smsz" role="3eOfB_">
              <node concept="3cpWs8" id="6$FGuy5sms$" role="3cqZAp">
                <node concept="3cpWsn" id="6$FGuy5sms_" role="3cpWs9">
                  <property role="TrG5h" value="endpoint" />
                  <node concept="3uibUv" id="6$FGuy5smsA" role="1tU5fm">
                    <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                  </node>
                  <node concept="10QFUN" id="6$FGuy5smsB" role="33vP2m">
                    <node concept="3uibUv" id="6$FGuy5smsC" role="10QFUM">
                      <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                    </node>
                    <node concept="37vLTw" id="6$FGuy5smsE" role="10QFUP">
                      <ref role="3cqZAo" node="6$FGuy5smtt" resolve="port" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6$FGuy5smsG" role="3cqZAp">
                <node concept="3clFbS" id="6$FGuy5smsH" role="3clFbx">
                  <node concept="3cpWs8" id="6$FGuy5smsI" role="3cqZAp">
                    <node concept="3cpWsn" id="6$FGuy5smsJ" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="6$FGuy5smsK" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                      </node>
                      <node concept="2ShNRf" id="6$FGuy5smsL" role="33vP2m">
                        <node concept="3zrR0B" id="6$FGuy5smsM" role="2ShVmc">
                          <node concept="3Tqbb2" id="6$FGuy5smsN" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6$FGuy5smsO" role="3cqZAp">
                    <node concept="37vLTI" id="6$FGuy5smsP" role="3clFbG">
                      <node concept="1PxgMI" id="6$FGuy5smsQ" role="37vLTx">
                        <node concept="chp4Y" id="6$FGuy5smsR" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="6$FGuy5smsS" role="1m5AlR">
                          <node concept="37vLTw" id="6$FGuy5smsT" role="2Oq$k0">
                            <ref role="3cqZAo" node="6$FGuy5sms_" resolve="endpoint" />
                          </node>
                          <node concept="liA8E" id="6$FGuy5smsU" role="2OqNvi">
                            <ref role="37wK5l" node="6tmlia_XTsN" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6$FGuy5smsV" role="37vLTJ">
                        <node concept="37vLTw" id="6$FGuy5smsW" role="2Oq$k0">
                          <ref role="3cqZAo" node="6$FGuy5smsJ" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="6$FGuy5smsX" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6$FGuy5smsY" role="3cqZAp">
                    <node concept="37vLTw" id="6$FGuy5smsZ" role="3cqZAk">
                      <ref role="3cqZAo" node="6$FGuy5smsJ" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6$FGuy5smt0" role="3clFbw">
                  <node concept="Rm8GO" id="6$FGuy5smt1" role="3uHU7w">
                    <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                    <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                  </node>
                  <node concept="37vLTw" id="6$FGuy5smt2" role="3uHU7B">
                    <ref role="3cqZAo" node="6$FGuy5smqW" resolve="kind" />
                  </node>
                </node>
                <node concept="3eNFk2" id="6$FGuy5smt3" role="3eNLev">
                  <node concept="3clFbS" id="6$FGuy5smt4" role="3eOfB_">
                    <node concept="3cpWs8" id="6$FGuy5smt5" role="3cqZAp">
                      <node concept="3cpWsn" id="6$FGuy5smt6" role="3cpWs9">
                        <property role="TrG5h" value="node" />
                        <node concept="3Tqbb2" id="6$FGuy5smt7" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                        </node>
                        <node concept="2ShNRf" id="6$FGuy5smt8" role="33vP2m">
                          <node concept="3zrR0B" id="6$FGuy5smt9" role="2ShVmc">
                            <node concept="3Tqbb2" id="6$FGuy5smta" role="3zrR0E">
                              <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6$FGuy5smtb" role="3cqZAp">
                      <node concept="37vLTI" id="6$FGuy5smtc" role="3clFbG">
                        <node concept="1PxgMI" id="6$FGuy5smtd" role="37vLTx">
                          <node concept="chp4Y" id="6$FGuy5smte" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                          </node>
                          <node concept="2OqwBi" id="6$FGuy5smtf" role="1m5AlR">
                            <node concept="37vLTw" id="6$FGuy5smtg" role="2Oq$k0">
                              <ref role="3cqZAo" node="6$FGuy5sms_" resolve="endpoint" />
                            </node>
                            <node concept="liA8E" id="6$FGuy5smth" role="2OqNvi">
                              <ref role="37wK5l" node="6tmlia_XTsN" resolve="getNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6$FGuy5smti" role="37vLTJ">
                          <node concept="37vLTw" id="6$FGuy5smtj" role="2Oq$k0">
                            <ref role="3cqZAo" node="6$FGuy5smt6" resolve="node" />
                          </node>
                          <node concept="3TrEf2" id="6$FGuy5smtk" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6$FGuy5smtl" role="3cqZAp">
                      <node concept="37vLTw" id="6$FGuy5smtm" role="3cqZAk">
                        <ref role="3cqZAo" node="6$FGuy5smt6" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="6$FGuy5smtn" role="3eO9$A">
                    <node concept="Rm8GO" id="6$FGuy5smto" role="3uHU7w">
                      <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                      <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                    </node>
                    <node concept="37vLTw" id="6$FGuy5smtp" role="3uHU7B">
                      <ref role="3cqZAo" node="6$FGuy5smqW" resolve="kind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6$FGuy5smtq" role="3cqZAp">
          <node concept="10Nm6u" id="6$FGuy5smtr" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy5BmYp" role="1B3o_S" />
      <node concept="37vLTG" id="6$FGuy5smtt" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="6$FGuy5smtu" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3Tqbb2" id="6$FGuy5smtv" role="3clF45">
        <ref role="ehGHo" to="xiqq:4KieeRVlhj7" resolve="Destination" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5sDbQ" role="jymVt" />
    <node concept="2YIFZL" id="6$FGuy5sILr" role="jymVt">
      <property role="TrG5h" value="serializeConnectionPath" />
      <node concept="3clFbS" id="6$FGuy5sILu" role="3clF47">
        <node concept="3KaCP$" id="6$FGuy5sOes" role="3cqZAp">
          <node concept="3KbdKl" id="6$FGuy5sO_k" role="3KbHQx">
            <node concept="Rm8GO" id="6$FGuy5sOHH" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYOE0" resolve="Straight" />
            </node>
            <node concept="3clFbS" id="6$FGuy5sO_m" role="3Kbo56">
              <node concept="3cpWs6" id="6$FGuy5sQca" role="3cqZAp">
                <node concept="2ShNRf" id="6$FGuy5sPlV" role="3cqZAk">
                  <node concept="3zrR0B" id="6$FGuy5sQ1Q" role="2ShVmc">
                    <node concept="3Tqbb2" id="6$FGuy5sQ1S" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:3IX4BsKoiap" resolve="StraightConnectionPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6$FGuy5sOqt" role="3KbGdf">
            <node concept="37vLTw" id="6$FGuy5sOhS" role="2Oq$k0">
              <ref role="3cqZAo" node="6$FGuy5sLJB" resolve="path" />
            </node>
            <node concept="liA8E" id="6$FGuy5sO$D" role="2OqNvi">
              <ref role="37wK5l" to="tphl:6$FGuy5_Vkd" resolve="getKind" />
            </node>
          </node>
          <node concept="3KbdKl" id="6$FGuy5sQm5" role="3KbHQx">
            <node concept="3clFbS" id="6$FGuy5sQm7" role="3Kbo56">
              <node concept="3cpWs8" id="6$FGuy5sQKE" role="3cqZAp">
                <node concept="3cpWsn" id="6$FGuy5sQKF" role="3cpWs9">
                  <property role="TrG5h" value="twoAngles" />
                  <node concept="3Tqbb2" id="6$FGuy5sQKC" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
                  </node>
                  <node concept="2ShNRf" id="6$FGuy5sQKG" role="33vP2m">
                    <node concept="3zrR0B" id="6$FGuy5sQKH" role="2ShVmc">
                      <node concept="3Tqbb2" id="6$FGuy5sQKI" role="3zrR0E">
                        <ref role="ehGHo" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6$FGuy5sRdg" role="3cqZAp">
                <node concept="2OqwBi" id="6$FGuy5sRoq" role="3clFbG">
                  <node concept="37vLTw" id="6$FGuy5sRde" role="2Oq$k0">
                    <ref role="3cqZAo" node="6$FGuy5sQKF" resolve="twoAngles" />
                  </node>
                  <node concept="2qgKlT" id="6$FGuy5sRPP" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:3IX4BsKojRN" resolve="setDX" />
                    <node concept="2OqwBi" id="6$FGuy5sScI" role="37wK5m">
                      <node concept="37vLTw" id="6$FGuy5sS0$" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5sLJB" resolve="path" />
                      </node>
                      <node concept="liA8E" id="6$FGuy5sSMe" role="2OqNvi">
                        <ref role="37wK5l" to="tphl:6$FGuy5_Vkj" resolve="getDX1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6$FGuy5sQ$i" role="3cqZAp">
                <node concept="37vLTw" id="6$FGuy5sQKJ" role="3cqZAk">
                  <ref role="3cqZAo" node="6$FGuy5sQKF" resolve="twoAngles" />
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="6$FGuy5sQyn" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPrd" resolve="TwoAngles" />
            </node>
          </node>
          <node concept="3KbdKl" id="6$FGuy5sUc9" role="3KbHQx">
            <node concept="3clFbS" id="6$FGuy5sUca" role="3Kbo56">
              <node concept="3cpWs8" id="6$FGuy5sUcb" role="3cqZAp">
                <node concept="3cpWsn" id="6$FGuy5sUcc" role="3cpWs9">
                  <property role="TrG5h" value="fourAngles" />
                  <node concept="3Tqbb2" id="6$FGuy5sUcd" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                  </node>
                  <node concept="2ShNRf" id="6$FGuy5sUce" role="33vP2m">
                    <node concept="3zrR0B" id="6$FGuy5sUcf" role="2ShVmc">
                      <node concept="3Tqbb2" id="6$FGuy5sUcg" role="3zrR0E">
                        <ref role="ehGHo" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6$FGuy5sUch" role="3cqZAp">
                <node concept="2OqwBi" id="6$FGuy5sUci" role="3clFbG">
                  <node concept="37vLTw" id="6$FGuy5sUcj" role="2Oq$k0">
                    <ref role="3cqZAo" node="6$FGuy5sUcc" resolve="fourAngles" />
                  </node>
                  <node concept="2qgKlT" id="6$FGuy5sUck" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:3IX4BsKouNu" resolve="set" />
                    <node concept="2OqwBi" id="6$FGuy5sUcl" role="37wK5m">
                      <node concept="37vLTw" id="6$FGuy5sUcm" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5sLJB" resolve="path" />
                      </node>
                      <node concept="liA8E" id="6$FGuy5sUcn" role="2OqNvi">
                        <ref role="37wK5l" to="tphl:6$FGuy5_Vkj" resolve="getDX1" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6$FGuy5sWFd" role="37wK5m">
                      <node concept="37vLTw" id="6$FGuy5sWsT" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5sLJB" resolve="path" />
                      </node>
                      <node concept="liA8E" id="6$FGuy5sXiV" role="2OqNvi">
                        <ref role="37wK5l" to="tphl:6$FGuy5_Vkp" resolve="getDY" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6$FGuy5sXTn" role="37wK5m">
                      <node concept="37vLTw" id="6$FGuy5sXEK" role="2Oq$k0">
                        <ref role="3cqZAo" node="6$FGuy5sLJB" resolve="path" />
                      </node>
                      <node concept="liA8E" id="6$FGuy5sYeV" role="2OqNvi">
                        <ref role="37wK5l" to="tphl:6$FGuy5_Vkv" resolve="getDX2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6$FGuy5sUco" role="3cqZAp">
                <node concept="37vLTw" id="6$FGuy5sUcp" role="3cqZAk">
                  <ref role="3cqZAo" node="6$FGuy5sUcc" resolve="fourAngles" />
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="6$FGuy5sUw3" role="3Kbmr1">
              <ref role="1Px2BO" to="tphl:1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="tphl:1HEL0zVYPHl" resolve="FourAngles" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6$FGuy5sYRi" role="3cqZAp">
          <node concept="10Nm6u" id="6$FGuy5sZC4" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy5BmA7" role="1B3o_S" />
      <node concept="3Tqbb2" id="6$FGuy5sIxF" role="3clF45">
        <ref role="ehGHo" to="xiqq:3IX4BsKohXi" resolve="ConnectionPath" />
      </node>
      <node concept="37vLTG" id="6$FGuy5sLJB" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="6$FGuy5A3e8" role="1tU5fm">
          <ref role="3uigEE" to="tphl:6$FGuy5_Djq" resolve="ConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6oXN8hZZ_T9" role="jymVt" />
    <node concept="Wx3nA" id="6oXN8hZZXZ9" role="jymVt">
      <property role="TrG5h" value="COMPONENT_CONTROLLER_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6oXN8hZZWd6" role="1B3o_S" />
      <node concept="3uibUv" id="7PF$iX$hsD_" role="1tU5fm">
        <ref role="3uigEE" to="xxy3:4O0ojQq3isP" resolve="ComponentControllerFactory" />
        <node concept="3uibUv" id="4y$DvIXm48l" role="11_B2D">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                <node concept="3uibUv" id="4O0ojQq3jxp" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                </node>
              </node>
              <node concept="37vLTG" id="4y$DvIVPduo" role="3clF46">
                <property role="TrG5h" value="view" />
                <node concept="3uibUv" id="4y$DvIXm8Hf" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                </node>
              </node>
              <node concept="3clFbS" id="6oXN8hZZGqC" role="3clF47">
                <node concept="3clFbJ" id="6oXN8hZZGqD" role="3cqZAp">
                  <node concept="2ZW3vV" id="6oXN8hZZGqE" role="3clFbw">
                    <node concept="3uibUv" id="6LU90BOkRvZ" role="2ZW6by">
                      <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
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
                          <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
                        </node>
                        <node concept="10QFUN" id="6oXN8hZZGqL" role="33vP2m">
                          <node concept="3uibUv" id="6LU90BOqsFY" role="10QFUM">
                            <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
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
                              <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
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
                          <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                        </node>
                        <node concept="10QFUN" id="6tmlia_XFoz" role="33vP2m">
                          <node concept="3uibUv" id="4y$DvIXn3VD" role="10QFUM">
                            <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
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
                              <ref role="37wK5l" node="6tmlia_XTsN" resolve="getNode" />
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
                      <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
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
              <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
            </node>
            <node concept="3uibUv" id="1iOpS25frCD" role="2Ghqu4">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXmryA" role="jymVt" />
    <node concept="Wx3nA" id="4y$DvIXmGPh" role="jymVt">
      <property role="TrG5h" value="CONNECTION_CONTROLLER_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4y$DvIXmynw" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIXmFW0" role="1tU5fm">
        <ref role="3uigEE" to="5lkm:4y$DvIW4oYS" resolve="ConnectionControllerFactory" />
        <node concept="3uibUv" id="4y$DvIXmGum" role="11_B2D">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
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
                  <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
                </node>
              </node>
              <node concept="3clFbS" id="4y$DvIXmQDi" role="3clF47">
                <node concept="3clFbJ" id="7PF$iX$pNhc" role="3cqZAp">
                  <node concept="2ZW3vV" id="7PF$iX$pNhd" role="3clFbw">
                    <node concept="3uibUv" id="7PF$iX$pNIY" role="2ZW6by">
                      <ref role="3uigEE" node="3IX4BsKu5jS" resolve="DiagramConnecitonByNode" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIXmROi" role="2ZW6bz">
                      <ref role="3cqZAo" node="4y$DvIXmQDe" resolve="view" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7PF$iX$pNhg" role="3clFbx">
                    <node concept="3cpWs8" id="7PF$iX$pNhh" role="3cqZAp">
                      <node concept="3cpWsn" id="7PF$iX$pNhi" role="3cpWs9">
                        <property role="TrG5h" value="connecitonByNode" />
                        <node concept="3uibUv" id="7PF$iX$pOfk" role="1tU5fm">
                          <ref role="3uigEE" node="3IX4BsKu5jS" resolve="DiagramConnecitonByNode" />
                        </node>
                        <node concept="10QFUN" id="7PF$iX$pNhk" role="33vP2m">
                          <node concept="3uibUv" id="7PF$iX$pNPI" role="10QFUM">
                            <ref role="3uigEE" node="3IX4BsKu5jS" resolve="DiagramConnecitonByNode" />
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
              <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
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
          <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
        </node>
        <node concept="3uibUv" id="2syzu7r0y5Q" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="2ShNRf" id="2syzu7r0I5_" role="33vP2m">
        <node concept="YeOm9" id="2syzu7r0IIy" role="2ShVmc">
          <node concept="1Y3b0j" id="2syzu7r0II_" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="xxy3:4bHpKVAnjCz" resolve="ComponentExtControllerFactory" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
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
                  <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
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
                            <ref role="3uigEE" node="2syzu7qTf1n" resolve="InlineValueByNode" />
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
                <node concept="3cpWs6" id="2syzu7r3yRw" role="3cqZAp">
                  <node concept="2ShNRf" id="2syzu7r3yZ2" role="3cqZAk">
                    <node concept="1pGfFk" id="2syzu7r3zIo" role="2ShVmc">
                      <ref role="37wK5l" to="vjnt:2syzu7qINCT" resolve="InlineValueController" />
                      <node concept="37vLTw" id="2syzu7r3$dz" role="37wK5m">
                        <ref role="3cqZAo" node="2syzu7r0IID" resolve="context" />
                      </node>
                      <node concept="2OqwBi" id="2syzu7r3HXw" role="37wK5m">
                        <node concept="1eOMI4" id="2syzu7r3GdB" role="2Oq$k0">
                          <node concept="10QFUN" id="2syzu7r3H6g" role="1eOMHV">
                            <node concept="3uibUv" id="2syzu7r3HuU" role="10QFUM">
                              <ref role="3uigEE" node="2syzu7qTf1n" resolve="InlineValueByNode" />
                            </node>
                            <node concept="37vLTw" id="2syzu7r3GHE" role="10QFUP">
                              <ref role="3cqZAo" node="2syzu7r0IIF" resolve="extView" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="2syzu7r3IvQ" role="2OqNvi">
                          <ref role="37wK5l" node="2syzu7r41Xb" resolve="getNode" />
                        </node>
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
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tm1VV" id="2syzu7r0J6M" role="1B3o_S" />
            </node>
            <node concept="3uibUv" id="2syzu7r0IIS" role="2Ghqu4">
              <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
            </node>
            <node concept="3uibUv" id="2syzu7r0IIU" role="2Ghqu4">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBOYpL" role="jymVt" />
    <node concept="312cEg" id="5jb5jNBPC4v" role="jymVt">
      <property role="TrG5h" value="myCompletionProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5jb5jNBPC4z" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
        <node concept="3uibUv" id="5jb5jNBPC4$" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5jb5jNBPC4_" role="11_B2D">
            <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
          </node>
        </node>
      </node>
      <node concept="1bVj0M" id="5jb5jNBPC4A" role="33vP2m">
        <node concept="3clFbS" id="5jb5jNBPC4B" role="1bW5cS">
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
                      <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                      <ref role="37wK5l" to="ykok:~ModelConstraints.getReferenceDescriptor(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,int,org.jetbrains.mps.openapi.language.SReferenceLink):jetbrains.mps.smodel.constraints.ReferenceDescriptor" resolve="getReferenceDescriptor" />
                      <node concept="37vLTw" id="5jb5jNBPC4K" role="37wK5m">
                        <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
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
                      <ref role="37wK5l" to="ykok:~ReferenceDescriptor.getScope():jetbrains.mps.scope.Scope" resolve="getScope" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5jb5jNBPC4P" role="2OqNvi">
                    <ref role="37wK5l" to="35tq:~Scope.getAvailableElements(java.lang.String):java.lang.Iterable" resolve="getAvailableElements" />
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
                                <ref role="1Y3XeK" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
                                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
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
                                            <node concept="37vLTw" id="5jb5jNBPC5G" role="2Oq$k0">
                                              <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
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
                                              <node concept="3cpWs3" id="5jb5jNBPC62" role="2pJxcZ">
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
                                              <node concept="3cpWs3" id="5jb5jNBPC66" role="2pJxcZ">
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
      </node>
      <node concept="3Tm1VV" id="5jb5jNBPC4y" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="3IX4BsK9E3E" role="1B3o_S" />
    <node concept="3uibUv" id="4y$DvIXhkWp" role="1zkMxy">
      <ref role="3uigEE" to="vjnt:4O0ojQq0OIY" resolve="FBNetworkModelView" />
    </node>
  </node>
  <node concept="312cEu" id="1HEL0zWea4T">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="InterfaceTemplateByNode" />
    <node concept="2tJIrI" id="1HEL0zWefNY" role="jymVt" />
    <node concept="312cEg" id="1HEL0zWeg85" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zWefTb" role="1B3o_S" />
      <node concept="3Tqbb2" id="1HEL0zWeg7R" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zWefO0" role="jymVt" />
    <node concept="3clFbW" id="1HEL0zWfTiI" role="jymVt">
      <node concept="3cqZAl" id="1HEL0zWfTiJ" role="3clF45" />
      <node concept="3Tm1VV" id="1HEL0zWfTiK" role="1B3o_S" />
      <node concept="3clFbS" id="1HEL0zWfTiM" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWfTiQ" role="3cqZAp">
          <node concept="37vLTI" id="1HEL0zWfTiS" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWfW85" role="37vLTJ">
              <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="1HEL0zWfTiZ" role="37vLTx">
              <ref role="3cqZAo" node="1HEL0zWfTiP" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zWfTiP" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1HEL0zWfTiO" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zWfSEv" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWeg8S" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3Tm1VV" id="1HEL0zWeg8U" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zWeg8V" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HEL0zWeozu" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="1HEL0zWeg8X" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWeg90" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWfeOX" role="3clFbG">
            <node concept="2OqwBi" id="1HEL0zWew1s" role="2Oq$k0">
              <node concept="2OqwBi" id="1HEL0zWepWm" role="2Oq$k0">
                <node concept="37vLTw" id="1HEL0zWepCy" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1HEL0zWeqzY" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="3$u5V9" id="1HEL0zWeEp0" role="2OqNvi">
                <node concept="1bVj0M" id="1HEL0zWeEp2" role="23t8la">
                  <node concept="3clFbS" id="1HEL0zWeEp3" role="1bW5cS">
                    <node concept="3clFbF" id="1HEL0zWeEE6" role="3cqZAp">
                      <node concept="2ShNRf" id="1HEL0zWeEE4" role="3clFbG">
                        <node concept="1pGfFk" id="1HEL0zWf8_r" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="1HEL0zWf9xH" role="37wK5m">
                            <node concept="37vLTw" id="1HEL0zWf9cP" role="2Oq$k0">
                              <ref role="3cqZAo" node="1HEL0zWeEp4" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="1HEL0zWfeuI" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="1HEL0zWf8Nd" role="37wK5m" />
                          <node concept="Rm8GO" id="5fP$XwiOglf" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1HEL0zWeEp4" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1HEL0zWeEp5" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1HEL0zWfsxQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1HEL0zWeg8Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKbLBa" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWeg91" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3Tm1VV" id="1HEL0zWeg93" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zWeg94" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HEL0zWeoNw" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="1HEL0zWeg96" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWfsGL" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWfsGN" role="3clFbG">
            <node concept="2OqwBi" id="1HEL0zWfsGO" role="2Oq$k0">
              <node concept="2OqwBi" id="1HEL0zWfsGP" role="2Oq$k0">
                <node concept="37vLTw" id="1HEL0zWfsGQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1HEL0zWftwf" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
              <node concept="3$u5V9" id="1HEL0zWfsGS" role="2OqNvi">
                <node concept="1bVj0M" id="1HEL0zWfsGT" role="23t8la">
                  <node concept="3clFbS" id="1HEL0zWfsGU" role="1bW5cS">
                    <node concept="3clFbF" id="1HEL0zWfsGV" role="3cqZAp">
                      <node concept="2ShNRf" id="1HEL0zWfsGW" role="3clFbG">
                        <node concept="1pGfFk" id="1HEL0zWfsGX" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="1HEL0zWfsGY" role="37wK5m">
                            <node concept="37vLTw" id="1HEL0zWfsGZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="1HEL0zWfsH2" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="1HEL0zWfsH0" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="1HEL0zWfsH1" role="37wK5m" />
                          <node concept="Rm8GO" id="5fP$XwiOhbU" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1HEL0zWfsH2" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1HEL0zWfsH3" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1HEL0zWfsH4" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1HEL0zWeg97" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKbNJa" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWeg9a" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3Tm1VV" id="1HEL0zWeg9c" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zWeg9d" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HEL0zWep3$" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="1HEL0zWeg9f" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWftGr" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWftGt" role="3clFbG">
            <node concept="2OqwBi" id="1HEL0zWftGu" role="2Oq$k0">
              <node concept="2OqwBi" id="1HEL0zWftGv" role="2Oq$k0">
                <node concept="3Tsc0h" id="1HEL0zWfvxE" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
                <node concept="37vLTw" id="1HEL0zWftGw" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
                </node>
              </node>
              <node concept="3$u5V9" id="1HEL0zWftGy" role="2OqNvi">
                <node concept="1bVj0M" id="1HEL0zWftGz" role="23t8la">
                  <node concept="3clFbS" id="1HEL0zWftG$" role="1bW5cS">
                    <node concept="3clFbF" id="1HEL0zWftG_" role="3cqZAp">
                      <node concept="2ShNRf" id="1HEL0zWftGA" role="3clFbG">
                        <node concept="1pGfFk" id="1HEL0zWftGB" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="1HEL0zWftGC" role="37wK5m">
                            <node concept="37vLTw" id="1HEL0zWftGD" role="2Oq$k0">
                              <ref role="3cqZAo" node="1HEL0zWftGG" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="1HEL0zWftGE" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="1HEL0zWftGF" role="37wK5m" />
                          <node concept="Rm8GO" id="5fP$XwiOjr3" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1HEL0zWftGG" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1HEL0zWftGH" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1HEL0zWftGI" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1HEL0zWeg9g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKbOus" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWeg9j" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3Tm1VV" id="1HEL0zWeg9l" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zWeg9m" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HEL0zWepjD" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="1HEL0zWeg9o" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWfuGp" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWfuGr" role="3clFbG">
            <node concept="2OqwBi" id="1HEL0zWfuGs" role="2Oq$k0">
              <node concept="2OqwBi" id="1HEL0zWfuGt" role="2Oq$k0">
                <node concept="37vLTw" id="1HEL0zWfuGu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1HEL0zWfuGv" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="1HEL0zWfuGw" role="2OqNvi">
                <node concept="1bVj0M" id="1HEL0zWfuGx" role="23t8la">
                  <node concept="3clFbS" id="1HEL0zWfuGy" role="1bW5cS">
                    <node concept="3clFbF" id="1HEL0zWfuGz" role="3cqZAp">
                      <node concept="2ShNRf" id="1HEL0zWfuG$" role="3clFbG">
                        <node concept="1pGfFk" id="1HEL0zWfuG_" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="1HEL0zWfuGA" role="37wK5m">
                            <node concept="37vLTw" id="1HEL0zWfuGB" role="2Oq$k0">
                              <ref role="3cqZAo" node="1HEL0zWfuGE" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="1HEL0zWfuGC" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="1HEL0zWfuGD" role="37wK5m" />
                          <node concept="Rm8GO" id="5fP$XwiOjOf" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1HEL0zWfuGE" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1HEL0zWfuGF" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1HEL0zWfuGG" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1HEL0zWeg9p" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNRHMI" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNRGPj" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="6LU90BNRGPk" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNRGPl" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNRGPm" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BNRGPn" role="3clF47">
        <node concept="3clFbF" id="6LU90BNRGPo" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNRGPp" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BNRGPq" role="2Oq$k0">
              <node concept="2OqwBi" id="6LU90BNRGPr" role="2Oq$k0">
                <node concept="3Tsc0h" id="6LU90BNRPkb" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
                <node concept="37vLTw" id="6LU90BNRGPt" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
                </node>
              </node>
              <node concept="3$u5V9" id="6LU90BNRGPu" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BNRGPv" role="23t8la">
                  <node concept="3clFbS" id="6LU90BNRGPw" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BNRGPx" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BNRGPy" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BNRGPz" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BNRGP$" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BNRGP_" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BNRGPD" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BNRGPA" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BNRGPB" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BNRV3z" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BNRGPD" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BNRGPE" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BNRGPF" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BNRGPG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNRGPi" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNRGOS" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="6LU90BNRGOT" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNRGOU" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNRGOV" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BNRGOW" role="3clF47">
        <node concept="3clFbF" id="6LU90BNRGOX" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNRGOY" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BNRGOZ" role="2Oq$k0">
              <node concept="2OqwBi" id="6LU90BNRGP0" role="2Oq$k0">
                <node concept="37vLTw" id="6LU90BNRGP1" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="6LU90BNRUso" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                </node>
              </node>
              <node concept="3$u5V9" id="6LU90BNRGP3" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BNRGP4" role="23t8la">
                  <node concept="3clFbS" id="6LU90BNRGP5" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BNRGP6" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BNRGP7" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BNRGP8" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="6LU90BNRGP9" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BNRGPa" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BNRGPe" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BNRGPb" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6LU90BNRGPc" role="37wK5m" />
                          <node concept="Rm8GO" id="6LU90BNRVDF" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BNRGPe" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BNRGPf" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BNRGPg" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BNRGPh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKbQAu" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWeg9G" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="1HEL0zWeg9I" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zWeg9J" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="1HEL0zWeg9K" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWfJhs" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWfJKn" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWfJhr" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="1HEL0zWfOfi" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1HEL0zWeg9L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG$xu5" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGG$y1O" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForInputEvent" />
      <node concept="3Tm1VV" id="7qPnRGG$y1Q" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGG$y1R" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qPnRGG$y1S" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGG$y1T" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="7qPnRGG$y1U" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7qPnRGG$y1V" role="3clF47">
        <node concept="3clFbF" id="7qPnRGG$ztV" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGG_2uR" role="3clFbG">
            <node concept="2OqwBi" id="7qPnRGG$PjG" role="2Oq$k0">
              <node concept="2OqwBi" id="7qPnRGG$In4" role="2Oq$k0">
                <node concept="1y4W85" id="7qPnRGG$Hxc" role="2Oq$k0">
                  <node concept="37vLTw" id="7qPnRGG$HVy" role="1y58nS">
                    <ref role="3cqZAo" node="7qPnRGG$y1T" resolve="eventNumber" />
                  </node>
                  <node concept="2OqwBi" id="7qPnRGG$zVj" role="1y566C">
                    <node concept="37vLTw" id="7qPnRGG$ztU" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
                    </node>
                    <node concept="3Tsc0h" id="7qPnRGG$Cly" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="7qPnRGG$IUr" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="7qPnRGG_07X" role="2OqNvi">
                <node concept="1bVj0M" id="7qPnRGG_07Z" role="23t8la">
                  <node concept="3clFbS" id="7qPnRGG_080" role="1bW5cS">
                    <node concept="3clFbF" id="7qPnRGG_0pS" role="3cqZAp">
                      <node concept="2OqwBi" id="7qPnRGG_0Bg" role="3clFbG">
                        <node concept="37vLTw" id="7qPnRGG_0pR" role="2Oq$k0">
                          <ref role="3cqZAo" node="7qPnRGG_081" resolve="it" />
                        </node>
                        <node concept="2bSWHS" id="7qPnRGG_10F" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7qPnRGG_081" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7qPnRGG_082" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7qPnRGG_h3I" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7qPnRGG$y1W" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG$yEr" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGG$y1Z" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForOutputEvent" />
      <node concept="3Tm1VV" id="7qPnRGG$y21" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGG$y22" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qPnRGG$y23" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGG$y24" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="7qPnRGG$y25" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7qPnRGG$y26" role="3clF47">
        <node concept="3clFbF" id="7qPnRGG_hfd" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGG_hff" role="3clFbG">
            <node concept="2OqwBi" id="7qPnRGG_hfg" role="2Oq$k0">
              <node concept="2OqwBi" id="7qPnRGG_hfh" role="2Oq$k0">
                <node concept="1y4W85" id="7qPnRGG_hfi" role="2Oq$k0">
                  <node concept="37vLTw" id="7qPnRGG_hfj" role="1y58nS">
                    <ref role="3cqZAo" node="7qPnRGG$y24" resolve="eventNumber" />
                  </node>
                  <node concept="2OqwBi" id="7qPnRGG_hfk" role="1y566C">
                    <node concept="37vLTw" id="7qPnRGG_hfl" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zWeg85" resolve="myNode" />
                    </node>
                    <node concept="3Tsc0h" id="7qPnRGG_i5a" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="7qPnRGG_hfn" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="7qPnRGG_hfo" role="2OqNvi">
                <node concept="1bVj0M" id="7qPnRGG_hfp" role="23t8la">
                  <node concept="3clFbS" id="7qPnRGG_hfq" role="1bW5cS">
                    <node concept="3clFbF" id="7qPnRGG_hfr" role="3cqZAp">
                      <node concept="2OqwBi" id="7qPnRGG_hfs" role="3clFbG">
                        <node concept="37vLTw" id="7qPnRGG_hft" role="2Oq$k0">
                          <ref role="3cqZAo" node="7qPnRGG_hfv" resolve="it" />
                        </node>
                        <node concept="2bSWHS" id="7qPnRGG_hfu" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7qPnRGG_hfv" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7qPnRGG_hfw" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7qPnRGG_hfx" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7qPnRGG$y27" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1HEL0zWea4U" role="1B3o_S" />
    <node concept="3uibUv" id="7qPnRGG$tGm" role="EKbjA">
      <ref role="3uigEE" to="2xsi:7qPnRGGphpu" resolve="InterfaceTemplateView" />
    </node>
  </node>
  <node concept="312cEu" id="6tmlia_XSFB">
    <property role="TrG5h" value="InterfaceEndpointByNode" />
    <node concept="2tJIrI" id="6tmlia_XSH5" role="jymVt" />
    <node concept="312cEg" id="6tmlia_XSYT" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6tmlia_XSLM" role="1B3o_S" />
      <node concept="3Tqbb2" id="6tmlia_XSYL" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="6tmlia_XSZg" role="jymVt" />
    <node concept="3Tm1VV" id="6tmlia_XSFC" role="1B3o_S" />
    <node concept="3uibUv" id="6tmlia_XSGU" role="EKbjA">
      <ref role="3uigEE" to="tphl:6tmlia_XI2H" resolve="InterfaceEndpointView" />
    </node>
    <node concept="3clFbW" id="6tmlia_XSZI" role="jymVt">
      <node concept="3cqZAl" id="6tmlia_XSZJ" role="3clF45" />
      <node concept="3Tm1VV" id="6tmlia_XSZK" role="1B3o_S" />
      <node concept="3clFbS" id="6tmlia_XSZM" role="3clF47">
        <node concept="3clFbF" id="6tmlia_XSZQ" role="3cqZAp">
          <node concept="37vLTI" id="6tmlia_XSZS" role="3clFbG">
            <node concept="37vLTw" id="6tmlia_XSZZ" role="37vLTx">
              <ref role="3cqZAo" node="6tmlia_XSZP" resolve="node" />
            </node>
            <node concept="37vLTw" id="6tmlia_XT9Y" role="37vLTJ">
              <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6tmlia_XSZP" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6tmlia_XSZO" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_XTde" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XTsN" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="6tmlia_XTsO" role="3clF45" />
      <node concept="3Tm1VV" id="6tmlia_XTsP" role="1B3o_S" />
      <node concept="3clFbS" id="6tmlia_XTsQ" role="3clF47">
        <node concept="3clFbF" id="6tmlia_XTsR" role="3cqZAp">
          <node concept="37vLTw" id="6tmlia_XTsM" role="3clFbG">
            <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_XUgQ" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XUTE" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3clFbS" id="6tmlia_XUTH" role="3clF47">
        <node concept="3clFbF" id="6tmlia_XVPO" role="3cqZAp">
          <node concept="1PxgMI" id="6tmlia_Y20i" role="3clFbG">
            <node concept="chp4Y" id="6tmlia_Y27x" role="3oSUPX">
              <ref role="cht4Q" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
            </node>
            <node concept="2OqwBi" id="6tmlia_XW2k" role="1m5AlR">
              <node concept="37vLTw" id="6tmlia_XVPN" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
              <node concept="1mfA1w" id="6tmlia_XYUp" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6tmlia_XUum" role="1B3o_S" />
      <node concept="3Tqbb2" id="6tmlia_XUJe" role="3clF45">
        <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_XTNs" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XTPK" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="3Tm1VV" id="6tmlia_XTPM" role="1B3o_S" />
      <node concept="10P_77" id="6tmlia_XTPN" role="3clF45" />
      <node concept="3clFbS" id="6tmlia_XTPO" role="3clF47">
        <node concept="3clFbF" id="6tmlia_YhX$" role="3cqZAp">
          <node concept="22lmx$" id="6tmlia_Yn5D" role="3clFbG">
            <node concept="2OqwBi" id="6tmlia_Yiey" role="3uHU7B">
              <node concept="37vLTw" id="6tmlia_YhXy" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
              <node concept="1BlSNk" id="6tmlia_YloE" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
              </node>
            </node>
            <node concept="2OqwBi" id="6tmlia_Ynci" role="3uHU7w">
              <node concept="37vLTw" id="6tmlia_Yncj" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
              <node concept="1BlSNk" id="6tmlia_Ynck" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmlia_XTPP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_Y8Av" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XTPS" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="6tmlia_XTPU" role="1B3o_S" />
      <node concept="3uibUv" id="6tmlia_XTPV" role="3clF45">
        <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="6tmlia_XTPW" role="3clF47">
        <node concept="3clFbJ" id="6tmlia_Yg3x" role="3cqZAp">
          <node concept="3clFbS" id="6tmlia_Yg3z" role="3clFbx">
            <node concept="3cpWs6" id="6tmlia_YnOv" role="3cqZAp">
              <node concept="Rm8GO" id="6tmlia_YonN" role="3cqZAk">
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6tmlia_Ynv0" role="3clFbw">
            <node concept="2OqwBi" id="6tmlia_Ynv1" role="3uHU7B">
              <node concept="37vLTw" id="6tmlia_Ynv2" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
              <node concept="1BlSNk" id="6tmlia_Ynv3" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
              </node>
            </node>
            <node concept="2OqwBi" id="6tmlia_Ynv4" role="3uHU7w">
              <node concept="37vLTw" id="6tmlia_Ynv5" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
              <node concept="1BlSNk" id="6tmlia_Ynv6" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6tmlia_Yo$S" role="3cqZAp">
          <node concept="3clFbS" id="6tmlia_Yo$T" role="3clFbx">
            <node concept="3cpWs6" id="6tmlia_Yo$U" role="3cqZAp">
              <node concept="Rm8GO" id="6tmlia_YoQB" role="3cqZAk">
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6tmlia_Yo$W" role="3clFbw">
            <node concept="2OqwBi" id="6tmlia_Yo$X" role="3uHU7B">
              <node concept="37vLTw" id="6tmlia_Yo$Y" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
              <node concept="1BlSNk" id="6tmlia_Yo$Z" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
              </node>
            </node>
            <node concept="2OqwBi" id="6tmlia_Yo_0" role="3uHU7w">
              <node concept="37vLTw" id="6tmlia_Yo_1" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
              <node concept="1BlSNk" id="6tmlia_Yo_2" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmlia_YpKe" role="3cqZAp">
          <node concept="10Nm6u" id="6tmlia_Yq1O" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmlia_XTPX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_Y6R4" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XTQ8" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="6tmlia_XTQa" role="1B3o_S" />
      <node concept="3uibUv" id="6tmlia_XTQb" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6tmlia_XTQc" role="3clF47">
        <node concept="3clFbF" id="6tmlia_Y2gW" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_Y2P5" role="3clFbG">
            <node concept="1PxgMI" id="6tmlia_Y2ze" role="2Oq$k0">
              <node concept="chp4Y" id="6tmlia_Y2En" role="3oSUPX">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
              <node concept="37vLTw" id="6tmlia_Y2gV" role="1m5AlR">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
            </node>
            <node concept="3TrcHB" id="6tmlia_Y6NA" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmlia_XTQd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_XU8z" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XTQg" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tm1VV" id="6tmlia_XTQi" role="1B3o_S" />
      <node concept="10Oyi0" id="6tmlia_XTQj" role="3clF45" />
      <node concept="3clFbS" id="6tmlia_XTQl" role="3clF47">
        <node concept="3clFbF" id="6tmlia_YwX$" role="3cqZAp">
          <node concept="3cpWs3" id="6tmlia_YC7i" role="3clFbG">
            <node concept="1eOMI4" id="6tmlia_YCh7" role="3uHU7w">
              <node concept="3K4zz7" id="6tmlia_YFX7" role="1eOMHV">
                <node concept="3cmrfG" id="6tmlia_YQnZ" role="3K4GZi">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3clFbC" id="6tmlia_YDSY" role="3K4Cdx">
                  <node concept="Rm8GO" id="6tmlia_YEZq" role="3uHU7w">
                    <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                  </node>
                  <node concept="1rXfSq" id="6tmlia_YCFj" role="3uHU7B">
                    <ref role="37wK5l" node="6tmlia_XTPS" resolve="getKind" />
                  </node>
                </node>
                <node concept="2YIFZM" id="6tmlia_YSyl" role="3K4E3e">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                  <node concept="2OqwBi" id="6tmlia_YXgG" role="37wK5m">
                    <node concept="2OqwBi" id="6tmlia_YSym" role="2Oq$k0">
                      <node concept="1rXfSq" id="6tmlia_YSyn" role="2Oq$k0">
                        <ref role="37wK5l" node="6tmlia_XUTE" resolve="getContainer" />
                      </node>
                      <node concept="3Tsc0h" id="6tmlia_YSyo" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="6tmlia_Z3He" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="6tmlia_Z7NG" role="37wK5m">
                    <node concept="2OqwBi" id="6tmlia_YSyp" role="2Oq$k0">
                      <node concept="1rXfSq" id="6tmlia_YSyq" role="2Oq$k0">
                        <ref role="37wK5l" node="6tmlia_XUTE" resolve="getContainer" />
                      </node>
                      <node concept="3Tsc0h" id="6tmlia_YSyr" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="6tmlia_ZeFq" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6tmlia_Yyf6" role="3uHU7B">
              <node concept="37vLTw" id="6tmlia_YxXn" role="2Oq$k0">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
              <node concept="2bSWHS" id="6tmlia_Yyyy" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmlia_XTQm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAd1UF" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAd6sA" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="3Tm1VV" id="6tmliaAd6sB" role="1B3o_S" />
      <node concept="10Oyi0" id="6tmliaAd6sC" role="3clF45" />
      <node concept="3clFbS" id="6tmliaAd6sD" role="3clF47">
        <node concept="3clFbF" id="6tmliaAd6sE" role="3cqZAp">
          <node concept="2OqwBi" id="6tmliaAd6sF" role="3clFbG">
            <node concept="2JrnkZ" id="6tmliaAd6sG" role="2Oq$k0">
              <node concept="37vLTw" id="6tmliaAd6sH" role="2JrQYb">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
            </node>
            <node concept="liA8E" id="6tmliaAd6sI" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmliaAd6sJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAd6sK" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAd6sL" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="3Tm1VV" id="6tmliaAd6sM" role="1B3o_S" />
      <node concept="10P_77" id="6tmliaAd6sN" role="3clF45" />
      <node concept="37vLTG" id="6tmliaAd6sO" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="6tmliaAd6sP" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="6tmliaAd6sQ" role="3clF47">
        <node concept="3cpWs6" id="6tmliaAd6sR" role="3cqZAp">
          <node concept="1Wc70l" id="6tmliaAd6sS" role="3cqZAk">
            <node concept="3clFbC" id="6tmliaAd6sT" role="3uHU7w">
              <node concept="37vLTw" id="6tmliaAd6sU" role="3uHU7B">
                <ref role="3cqZAo" node="6tmlia_XSYT" resolve="myNode" />
              </node>
              <node concept="2OqwBi" id="6tmliaAd6sV" role="3uHU7w">
                <node concept="1eOMI4" id="6tmliaAd6sW" role="2Oq$k0">
                  <node concept="10QFUN" id="6tmliaAd6sX" role="1eOMHV">
                    <node concept="3uibUv" id="6tmliaAd7EP" role="10QFUM">
                      <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                    </node>
                    <node concept="37vLTw" id="6tmliaAd6sZ" role="10QFUP">
                      <ref role="3cqZAo" node="6tmliaAd6sO" resolve="o" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="6tmliaAda5j" role="2OqNvi">
                  <ref role="2Oxat5" node="6tmlia_XSYT" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="6tmliaAd6t1" role="3uHU7B">
              <node concept="3uibUv" id="6tmliaAd8GJ" role="2ZW6by">
                <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
              </node>
              <node concept="37vLTw" id="6tmliaAd6t3" role="2ZW6bz">
                <ref role="3cqZAo" node="6tmliaAd6sO" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmliaAd6t4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1CY1mmBj9iO" role="jymVt" />
    <node concept="3clFb_" id="1CY1mmBjarz" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="1CY1mmBjar_" role="1B3o_S" />
      <node concept="3cqZAl" id="1CY1mmBjarA" role="3clF45" />
      <node concept="3clFbS" id="1CY1mmBjarD" role="3clF47">
        <node concept="3SKdUt" id="4y$DvIXHLoL" role="3cqZAp">
          <node concept="3SKdUq" id="4y$DvIXHLoM" role="3SKWNk">
            <property role="3SKdUp" value="do nothing" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1CY1mmBjarE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
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
      <node concept="paMQc" id="7oJsd9wXo35" role="3EZMnx">
        <node concept="3EZMnI" id="7oJsd9wXo36" role="paDBS">
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
      </node>
      <node concept="3F0ifn" id="7oJsd9wXo3f" role="3EZMnx" />
      <node concept="3F0ifn" id="7oJsd9wXo3g" role="3EZMnx">
        <property role="3F0ifm" value="Parameters:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="paMQc" id="7oJsd9wXoy8" role="3EZMnx">
        <node concept="3F2HdR" id="7oJsd9wXo3h" role="paDBS">
          <ref role="1NtTu8" to="xiqq:2lwHqHkyELb" resolve="parameters" />
          <node concept="2iRkQZ" id="7oJsd9wXo3i" role="2czzBx" />
        </node>
      </node>
      <node concept="3F0ifn" id="7oJsd9wXooh" role="3EZMnx" />
      <node concept="paMQc" id="7oJsd9wZ0A$" role="3EZMnx">
        <node concept="3F2HdR" id="7oJsd9wZ1jz" role="paDBS">
          <ref role="1NtTu8" to="xiqq:2lwHqHk$uBA" resolve="resources" />
          <node concept="2iRkQZ" id="7oJsd9wZ1j_" role="2czzBx" />
        </node>
      </node>
      <node concept="3F0ifn" id="7oJsd9wYYxI" role="3EZMnx" />
      <node concept="3F0ifn" id="7oJsd9wXo3D" role="3EZMnx">
        <property role="3F0ifm" value="Instantiable Resources:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="3EZMnI" id="7oJsd9wXo3E" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9wXo3F" role="3F10Kt" />
        <node concept="3XFhqQ" id="7oJsd9wXo3G" role="3EZMnx" />
        <node concept="paMQc" id="7oJsd9wXoej" role="3EZMnx">
          <node concept="3F2HdR" id="7oJsd9wXo3H" role="paDBS">
            <ref role="1NtTu8" to="xiqq:1WTKUmKKVQc" resolve="instantiableResourceTypes" />
            <node concept="2iRkQZ" id="7oJsd9wXo3I" role="2czzBx" />
          </node>
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
        <node concept="pzx5h" id="7oJsd9wXo3l" role="3EZMnx">
          <node concept="3VJUX4" id="7oJsd9wXo3m" role="3YsKMw">
            <node concept="3clFbS" id="7oJsd9wXo3n" role="2VODD2">
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
                              <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                              <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
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
  <node concept="312cEu" id="7oJsd9wVHpq">
    <property role="TrG5h" value="FBNetworkEditors" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="7oJsd9wVHqT" role="jymVt" />
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
                <ref role="37wK5l" node="3IX4BsK9EJY" resolve="FBNetworkModelByNode" />
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
                <ref role="37wK5l" node="7oJsd9x2CPz" resolve="SubappNetworkModelByNode" />
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
        <node concept="SfApY" id="7oJsd9x52MR" role="3cqZAp">
          <node concept="3clFbS" id="7oJsd9x52MS" role="SfCbr">
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
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7oJsd9x52NH" role="33vP2m">
                  <node concept="HV5vD" id="7oJsd9x52NI" role="2ShVmc">
                    <ref role="HV5vE" to="rvgs:2XwVnrt199s" resolve="DefaultSelectionModel" />
                    <node concept="3uibUv" id="2syzu7r7rn$" role="HU9BZ">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                        <ref role="37wK5l" to="cj4x:~EditorContext.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2syzu7r7tdl" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                      <node concept="37vLTw" id="7oJsd9x52NX" role="2Oq$k0">
                        <ref role="3cqZAo" node="7oJsd9x52P1" resolve="network" />
                      </node>
                      <node concept="liA8E" id="2syzu7r4bLU" role="2OqNvi">
                        <ref role="37wK5l" to="vjnt:2syzu7qXWth" resolve="getFCComponentsView" />
                      </node>
                    </node>
                    <node concept="10M0yZ" id="7oJsd9x52NY" role="37wK5m">
                      <ref role="3cqZAo" node="6oXN8hZZXZ9" resolve="COMPONENT_CONTROLLER_FACTORY" />
                      <ref role="1PxDUh" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
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
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                      <node concept="2OqwBi" id="7oJsd9x52Of" role="37wK5m">
                        <node concept="37vLTw" id="7oJsd9x52Og" role="2Oq$k0">
                          <ref role="3cqZAo" node="7oJsd9x52P1" resolve="network" />
                        </node>
                        <node concept="2OwXpG" id="7oJsd9x52Oh" role="2OqNvi">
                          <ref role="2Oxat5" node="5jb5jNBPC4v" resolve="myCompletionProvider" />
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
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                  </node>
                  <node concept="3uibUv" id="2syzu7r7KZd" role="11_B2D">
                    <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2syzu7r7KZp" role="33vP2m">
                  <node concept="37vLTw" id="2syzu7r7KZq" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52P1" resolve="network" />
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
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                  </node>
                  <node concept="3uibUv" id="2syzu7rfS9v" role="11_B2D">
                    <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
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
                    <node concept="10M0yZ" id="2syzu7r5wYW" role="37wK5m">
                      <ref role="3cqZAo" node="2syzu7r0y98" resolve="INLINE_VALUE_CONTROLLER_FACTORY" />
                      <ref role="1PxDUh" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
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
            <node concept="3cpWs8" id="7oJsd9x52Oj" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52Ok" role="3cpWs9">
                <property role="TrG5h" value="portSettings" />
                <node concept="3uibUv" id="7oJsd9x52Ol" role="1tU5fm">
                  <ref role="3uigEE" to="vjnt:4O0ojQq1tYH" resolve="FBPortSettingProvider" />
                </node>
                <node concept="2ShNRf" id="2syzu7rgjob" role="33vP2m">
                  <node concept="1pGfFk" id="2syzu7rgkme" role="2ShVmc">
                    <ref role="37wK5l" to="vjnt:4y$DvIVWOEH" resolve="FBPortSettingProvider" />
                    <node concept="1bVj0M" id="4y$DvIXuvN5" role="37wK5m">
                      <node concept="3clFbS" id="4y$DvIXuvN6" role="1bW5cS">
                        <node concept="3clFbJ" id="2syzu7rgmpJ" role="3cqZAp">
                          <node concept="3clFbS" id="2syzu7rgmpL" role="3clFbx">
                            <node concept="3cpWs6" id="2syzu7rgoP7" role="3cqZAp">
                              <node concept="10QFUN" id="2syzu7rgpnK" role="3cqZAk">
                                <node concept="3uibUv" id="2syzu7rgpnL" role="10QFUM">
                                  <ref role="3uigEE" to="vjnt:5jb5jNBJKHJ" resolve="FBNetworkComponentController" />
                                </node>
                                <node concept="2OqwBi" id="2syzu7rgpnM" role="10QFUP">
                                  <node concept="37vLTw" id="2syzu7rgpZw" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                                  </node>
                                  <node concept="liA8E" id="2syzu7rgpnO" role="2OqNvi">
                                    <ref role="37wK5l" to="xxy3:2syzu7r5L8a" resolve="getController" />
                                    <node concept="10QFUN" id="2syzu7rgs$m" role="37wK5m">
                                      <node concept="3uibUv" id="2syzu7rgtbD" role="10QFUM">
                                        <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
                                      </node>
                                      <node concept="37vLTw" id="2syzu7rgpnP" role="10QFUP">
                                        <ref role="3cqZAo" node="4y$DvIXuvQv" resolve="it" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ZW3vV" id="2syzu7rgnHx" role="3clFbw">
                            <node concept="3uibUv" id="2syzu7rgoig" role="2ZW6by">
                              <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
                            </node>
                            <node concept="37vLTw" id="2syzu7rgmWF" role="2ZW6bz">
                              <ref role="3cqZAo" node="4y$DvIXuvQv" resolve="it" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4y$DvIXuwcQ" role="3cqZAp">
                          <node concept="10QFUN" id="4y$DvIXuwRU" role="3clFbG">
                            <node concept="3uibUv" id="5jb5jNBM$Fp" role="10QFUM">
                              <ref role="3uigEE" to="vjnt:5jb5jNBJKHJ" resolve="FBNetworkComponentController" />
                            </node>
                            <node concept="2OqwBi" id="4y$DvIXuwpT" role="10QFUP">
                              <node concept="37vLTw" id="2syzu7rgtMm" role="2Oq$k0">
                                <ref role="3cqZAo" node="7oJsd9x52NS" resolve="componentsFacility" />
                              </node>
                              <node concept="liA8E" id="4y$DvIXuw_N" role="2OqNvi">
                                <ref role="37wK5l" to="xxy3:4y$DvIVUIFH" resolve="getController" />
                                <node concept="37vLTw" id="4y$DvIXuwIZ" role="37wK5m">
                                  <ref role="3cqZAo" node="4y$DvIXuvQv" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="4y$DvIXuvQv" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="3uibUv" id="5jb5jNBM$se" role="1tU5fm">
                          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                        </node>
                      </node>
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
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                            <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                          </node>
                          <node concept="2AHcQZ" id="2syzu7rgamk" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2syzu7rgaml" role="3clF47">
                          <node concept="3clFbJ" id="2syzu7rgamm" role="3cqZAp">
                            <node concept="2ZW3vV" id="2syzu7rgamn" role="3clFbw">
                              <node concept="3uibUv" id="2syzu7rgamo" role="2ZW6by">
                                <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
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
                                        <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
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
                            <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                          </node>
                          <node concept="2AHcQZ" id="2syzu7rgamH" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2syzu7rgamI" role="3clF47">
                          <node concept="3clFbJ" id="2syzu7rgamJ" role="3cqZAp">
                            <node concept="2ZW3vV" id="2syzu7rgamK" role="3clFbw">
                              <node concept="3uibUv" id="2syzu7rgamL" role="2ZW6by">
                                <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
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
                                        <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
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
                        <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                  </node>
                  <node concept="3uibUv" id="2syzu7reiv0" role="11_B2D">
                    <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
                  </node>
                  <node concept="3uibUv" id="2syzu7reiv1" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
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
                      <node concept="37vLTw" id="7oJsd9x52Ou" role="2Oq$k0">
                        <ref role="3cqZAo" node="7oJsd9x52P1" resolve="network" />
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
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                    </node>
                    <node concept="3uibUv" id="2syzu7recWx" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
                    </node>
                    <node concept="3uibUv" id="2syzu7redxl" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnectionView" />
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
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                          <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
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
                              <ref role="37wK5l" to="vjnt:2syzu7r6jdN" resolve="geBounds" />
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
                          <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
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
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
                    </node>
                    <node concept="3uibUv" id="2syzu7r7mtt" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
                    </node>
                    <node concept="3uibUv" id="2syzu7r7jVL" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
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
                  <node concept="10M0yZ" id="7oJsd9x52O_" role="37wK5m">
                    <ref role="1PxDUh" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
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
            <node concept="3clFbH" id="7oJsd9x52ON" role="3cqZAp" />
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
                <property role="2xdLsb" value="error" />
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
        <node concept="3uibUv" id="7oJsd9x52P2" role="1tU5fm">
          <ref role="3uigEE" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
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
    <node concept="3Tm1VV" id="7oJsd9wVHpr" role="1B3o_S" />
  </node>
  <node concept="24kQdi" id="7oJsd9wY0ER">
    <property role="3GE5qa" value="devices" />
    <ref role="1XX52x" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
    <node concept="2aJ2om" id="7oJsd9wY0ET" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="7oJsd9wY0EV" role="2wV5jI">
      <node concept="paMQc" id="7oJsd9wY19i" role="3EZMnx">
        <node concept="3EZMnI" id="7oJsd9wY0EW" role="paDBS">
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
          <node concept="paMQc" id="7oJsd9wY0Fe" role="3EZMnx">
            <node concept="3F2HdR" id="7oJsd9wY0Ff" role="paDBS">
              <ref role="1NtTu8" to="xiqq:fshQXbRNVN" resolve="parameters" />
              <node concept="2iRkQZ" id="7oJsd9wY0Fg" role="2czzBx" />
            </node>
          </node>
          <node concept="3F0ifn" id="7oJsd9wY0Fh" role="3EZMnx" />
          <node concept="paMQc" id="2syzu7qEC4L" role="3EZMnx">
            <node concept="3F2HdR" id="2syzu7qECrp" role="paDBS">
              <ref role="1NtTu8" to="xiqq:1WTKUmKKVPK" resolve="resources" />
              <node concept="2iRkQZ" id="2syzu7qECrs" role="2czzBx" />
            </node>
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
            <node concept="pzx5h" id="7oJsd9wY0Fj" role="3EZMnx">
              <node concept="3VJUX4" id="7oJsd9wY0Fk" role="3YsKMw">
                <node concept="3clFbS" id="7oJsd9wY0Fl" role="2VODD2">
                  <node concept="3clFbF" id="7oJsd9wY0Fm" role="3cqZAp">
                    <node concept="2ShNRf" id="7oJsd9wY0Fn" role="3clFbG">
                      <node concept="YeOm9" id="7oJsd9wY0Fo" role="2ShVmc">
                        <node concept="1Y3b0j" id="7oJsd9wY0Fp" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                          <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
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
                                  <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                                  <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
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
      <node concept="paMQc" id="7oJsd9wY$iu" role="3EZMnx">
        <node concept="3EZMnI" id="7oJsd9wY$iv" role="paDBS">
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
      </node>
      <node concept="3F0ifn" id="7oJsd9wY$iC" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9wY$iD" role="3F10Kt" />
      </node>
      <node concept="paMQc" id="7oJsd9wY$iE" role="3EZMnx">
        <node concept="PMmxH" id="7oJsd9wY$iF" role="paDBS">
          <ref role="PMmxG" node="5jb5jNC4a_Z" resolve="DeclarationWithInterfaceAndAdapters_InterfacePart" />
        </node>
      </node>
      <node concept="3F0ifn" id="7oJsd9wY$iG" role="3EZMnx" />
      <node concept="3F0ifn" id="7oJsd9wY$iH" role="3EZMnx">
        <property role="3F0ifm" value="Network:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="pzx5h" id="7oJsd9wY$iI" role="3EZMnx">
        <node concept="3VJUX4" id="7oJsd9wY$iJ" role="3YsKMw">
          <node concept="3clFbS" id="7oJsd9wY$iK" role="2VODD2">
            <node concept="3clFbF" id="7oJsd9wY$iL" role="3cqZAp">
              <node concept="2ShNRf" id="7oJsd9wY$iM" role="3clFbG">
                <node concept="YeOm9" id="7oJsd9wY$iN" role="2ShVmc">
                  <node concept="1Y3b0j" id="7oJsd9wY$iO" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                    <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
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
                            <ref role="37wK5l" node="7oJsd9x560s" resolve="createSubappNetworkCell" />
                            <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
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
  <node concept="312cEu" id="7oJsd9x2cgd">
    <property role="TrG5h" value="FBInstanceBySubappNode" />
    <node concept="2tJIrI" id="7oJsd9x2dlu" role="jymVt" />
    <node concept="3clFbW" id="7oJsd9x2eYK" role="jymVt">
      <node concept="3cqZAl" id="7oJsd9x2eYL" role="3clF45" />
      <node concept="3Tm1VV" id="7oJsd9x2eYM" role="1B3o_S" />
      <node concept="3clFbS" id="7oJsd9x2eYN" role="3clF47">
        <node concept="XkiVB" id="7oJsd9x2eYO" role="3cqZAp">
          <ref role="37wK5l" node="6LU90BOirFr" resolve="FBInstanceByNode" />
          <node concept="37vLTw" id="7oJsd9x2eYP" role="37wK5m">
            <ref role="3cqZAo" node="7oJsd9x2eYR" resolve="nod" />
          </node>
          <node concept="3clFbT" id="7oJsd9x3tPx" role="37wK5m" />
        </node>
      </node>
      <node concept="37vLTG" id="7oJsd9x2eYR" role="3clF46">
        <property role="TrG5h" value="nod" />
        <node concept="3Tqbb2" id="7oJsd9x2eYS" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationInstance" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x2eYV" role="jymVt" />
    <node concept="3clFb_" id="7oJsd9x2eYW" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tmbuc" id="7oJsd9x2eYX" role="1B3o_S" />
      <node concept="3Tqbb2" id="7oJsd9x2eYY" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3clFbS" id="7oJsd9x2eYZ" role="3clF47">
        <node concept="3clFbF" id="7oJsd9x2eZ0" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x2eZ1" role="3clFbG">
            <node concept="1rXfSq" id="7oJsd9x2eZ2" role="2Oq$k0">
              <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
            </node>
            <node concept="3TrEf2" id="7oJsd9x2hNx" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:7oJsd9x2gq9" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2eZ4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x2eZ5" role="jymVt" />
    <node concept="3clFb_" id="7oJsd9x2eZ6" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3Tm1VV" id="7oJsd9x2eZ7" role="1B3o_S" />
      <node concept="3uibUv" id="7oJsd9x2eZ8" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7oJsd9x2eZ9" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="7oJsd9x2eZa" role="3clF47">
        <node concept="3clFbF" id="7oJsd9x2eZb" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x2eZc" role="3clFbG">
            <node concept="2OqwBi" id="7oJsd9x2eZd" role="2Oq$k0">
              <node concept="2OqwBi" id="7oJsd9x2eZe" role="2Oq$k0">
                <node concept="2OqwBi" id="7oJsd9x2eZf" role="2Oq$k0">
                  <node concept="1rXfSq" id="7oJsd9x2eZg" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                  <node concept="3TrEf2" id="7oJsd9x2eZh" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="7oJsd9x2eZi" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="3$u5V9" id="7oJsd9x2eZj" role="2OqNvi">
                <node concept="1bVj0M" id="7oJsd9x2eZk" role="23t8la">
                  <node concept="3clFbS" id="7oJsd9x2eZl" role="1bW5cS">
                    <node concept="3clFbF" id="7oJsd9x2eZm" role="3cqZAp">
                      <node concept="2ShNRf" id="7oJsd9x2eZn" role="3clFbG">
                        <node concept="1pGfFk" id="7oJsd9x2eZo" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="7oJsd9x2eZp" role="37wK5m">
                            <node concept="37vLTw" id="7oJsd9x2eZq" role="2Oq$k0">
                              <ref role="3cqZAo" node="7oJsd9x2eZu" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="7oJsd9x2eZr" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="7oJsd9x2eZs" role="37wK5m" />
                          <node concept="Rm8GO" id="7oJsd9x2eZt" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7oJsd9x2eZu" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7oJsd9x2eZv" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7oJsd9x2eZw" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2eZx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x2eZy" role="jymVt" />
    <node concept="3clFb_" id="7oJsd9x2eZz" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3Tm1VV" id="7oJsd9x2eZ$" role="1B3o_S" />
      <node concept="3uibUv" id="7oJsd9x2eZ_" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7oJsd9x2eZA" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="7oJsd9x2eZB" role="3clF47">
        <node concept="3clFbF" id="7oJsd9x2eZC" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x2eZD" role="3clFbG">
            <node concept="2OqwBi" id="7oJsd9x2eZE" role="2Oq$k0">
              <node concept="2OqwBi" id="7oJsd9x2eZF" role="2Oq$k0">
                <node concept="2OqwBi" id="7oJsd9x2eZG" role="2Oq$k0">
                  <node concept="3TrEf2" id="7oJsd9x2eZH" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="7oJsd9x2eZI" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="7oJsd9x2eZJ" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
              <node concept="3$u5V9" id="7oJsd9x2eZK" role="2OqNvi">
                <node concept="1bVj0M" id="7oJsd9x2eZL" role="23t8la">
                  <node concept="3clFbS" id="7oJsd9x2eZM" role="1bW5cS">
                    <node concept="3clFbF" id="7oJsd9x2eZN" role="3cqZAp">
                      <node concept="2ShNRf" id="7oJsd9x2eZO" role="3clFbG">
                        <node concept="1pGfFk" id="7oJsd9x2eZP" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="7oJsd9x2eZQ" role="37wK5m">
                            <node concept="37vLTw" id="7oJsd9x2eZR" role="2Oq$k0">
                              <ref role="3cqZAo" node="7oJsd9x2eZV" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="7oJsd9x2eZS" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="7oJsd9x2eZT" role="37wK5m" />
                          <node concept="Rm8GO" id="7oJsd9x2eZU" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7oJsd9x2eZV" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7oJsd9x2eZW" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7oJsd9x2eZX" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2eZY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x2eZZ" role="jymVt" />
    <node concept="3clFb_" id="7oJsd9x2f00" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3Tm1VV" id="7oJsd9x2f01" role="1B3o_S" />
      <node concept="3uibUv" id="7oJsd9x2f02" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7oJsd9x2f03" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="7oJsd9x2f04" role="3clF47">
        <node concept="3clFbF" id="7oJsd9x2f05" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x2f06" role="3clFbG">
            <node concept="2OqwBi" id="7oJsd9x2f07" role="2Oq$k0">
              <node concept="2OqwBi" id="7oJsd9x2f08" role="2Oq$k0">
                <node concept="2OqwBi" id="7oJsd9x2f09" role="2Oq$k0">
                  <node concept="3TrEf2" id="7oJsd9x2f0a" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="7oJsd9x2f0b" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="7oJsd9x2f0c" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="7oJsd9x2f0d" role="2OqNvi">
                <node concept="1bVj0M" id="7oJsd9x2f0e" role="23t8la">
                  <node concept="3clFbS" id="7oJsd9x2f0f" role="1bW5cS">
                    <node concept="3clFbF" id="7oJsd9x2f0g" role="3cqZAp">
                      <node concept="2ShNRf" id="7oJsd9x2f0h" role="3clFbG">
                        <node concept="1pGfFk" id="7oJsd9x2f0i" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="7oJsd9x2f0j" role="37wK5m">
                            <node concept="37vLTw" id="7oJsd9x2f0k" role="2Oq$k0">
                              <ref role="3cqZAo" node="7oJsd9x2f0o" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="7oJsd9x2f0l" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="7oJsd9x2f0m" role="37wK5m" />
                          <node concept="Rm8GO" id="7oJsd9x2f0n" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7oJsd9x2f0o" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7oJsd9x2f0p" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7oJsd9x2f0q" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2f0r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x2f0s" role="jymVt" />
    <node concept="3clFb_" id="7oJsd9x2f0t" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3Tm1VV" id="7oJsd9x2f0u" role="1B3o_S" />
      <node concept="3uibUv" id="7oJsd9x2f0v" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7oJsd9x2f0w" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="7oJsd9x2f0x" role="3clF47">
        <node concept="3clFbF" id="7oJsd9x2f0y" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x2f0z" role="3clFbG">
            <node concept="2OqwBi" id="7oJsd9x2f0$" role="2Oq$k0">
              <node concept="2OqwBi" id="7oJsd9x2f0_" role="2Oq$k0">
                <node concept="2OqwBi" id="7oJsd9x2f0A" role="2Oq$k0">
                  <node concept="3TrEf2" id="7oJsd9x2f0B" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="7oJsd9x2f0C" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="7oJsd9x2f0D" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="7oJsd9x2f0E" role="2OqNvi">
                <node concept="1bVj0M" id="7oJsd9x2f0F" role="23t8la">
                  <node concept="3clFbS" id="7oJsd9x2f0G" role="1bW5cS">
                    <node concept="3clFbF" id="7oJsd9x2f0H" role="3cqZAp">
                      <node concept="2ShNRf" id="7oJsd9x2f0I" role="3clFbG">
                        <node concept="1pGfFk" id="7oJsd9x2f0J" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="7oJsd9x2f0K" role="37wK5m">
                            <node concept="37vLTw" id="7oJsd9x2f0L" role="2Oq$k0">
                              <ref role="3cqZAo" node="7oJsd9x2f0P" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="7oJsd9x2f0M" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="7oJsd9x2f0N" role="37wK5m" />
                          <node concept="Rm8GO" id="7oJsd9x2f0O" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7oJsd9x2f0P" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7oJsd9x2f0Q" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7oJsd9x2f0R" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2f0S" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x2f0T" role="jymVt" />
    <node concept="3clFb_" id="7oJsd9x2f0U" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="7oJsd9x2f0V" role="1B3o_S" />
      <node concept="3uibUv" id="7oJsd9x2f0W" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7oJsd9x2f0X" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="7oJsd9x2f0Y" role="3clF47">
        <node concept="3clFbF" id="7oJsd9x2f0Z" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x2f10" role="3clFbG">
            <node concept="2OqwBi" id="7oJsd9x2f11" role="2Oq$k0">
              <node concept="2OqwBi" id="7oJsd9x2f12" role="2Oq$k0">
                <node concept="3Tsc0h" id="7oJsd9x2f13" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
                <node concept="2OqwBi" id="7oJsd9x2f14" role="2Oq$k0">
                  <node concept="3TrEf2" id="7oJsd9x2f15" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="7oJsd9x2f16" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="7oJsd9x2f17" role="2OqNvi">
                <node concept="1bVj0M" id="7oJsd9x2f18" role="23t8la">
                  <node concept="3clFbS" id="7oJsd9x2f19" role="1bW5cS">
                    <node concept="3clFbF" id="7oJsd9x2f1a" role="3cqZAp">
                      <node concept="2ShNRf" id="7oJsd9x2f1b" role="3clFbG">
                        <node concept="1pGfFk" id="7oJsd9x2f1c" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="7oJsd9x2f1d" role="37wK5m">
                            <node concept="37vLTw" id="7oJsd9x2f1e" role="2Oq$k0">
                              <ref role="3cqZAo" node="7oJsd9x2f1i" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="7oJsd9x2f1f" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="7oJsd9x2f1g" role="37wK5m" />
                          <node concept="Rm8GO" id="7oJsd9x2f1h" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7oJsd9x2f1i" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7oJsd9x2f1j" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7oJsd9x2f1k" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2f1l" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x2f1m" role="jymVt" />
    <node concept="3clFb_" id="7oJsd9x2f1n" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="7oJsd9x2f1o" role="1B3o_S" />
      <node concept="3uibUv" id="7oJsd9x2f1p" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7oJsd9x2f1q" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
      <node concept="3clFbS" id="7oJsd9x2f1r" role="3clF47">
        <node concept="3clFbF" id="7oJsd9x2f1s" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x2f1t" role="3clFbG">
            <node concept="2OqwBi" id="7oJsd9x2f1u" role="2Oq$k0">
              <node concept="2OqwBi" id="7oJsd9x2f1v" role="2Oq$k0">
                <node concept="2OqwBi" id="7oJsd9x2f1w" role="2Oq$k0">
                  <node concept="3TrEf2" id="7oJsd9x3ua1" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
                  </node>
                  <node concept="1rXfSq" id="7oJsd9x2f1y" role="2Oq$k0">
                    <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="7oJsd9x2f1z" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                </node>
              </node>
              <node concept="3$u5V9" id="7oJsd9x2f1$" role="2OqNvi">
                <node concept="1bVj0M" id="7oJsd9x2f1_" role="23t8la">
                  <node concept="3clFbS" id="7oJsd9x2f1A" role="1bW5cS">
                    <node concept="3clFbF" id="7oJsd9x2f1B" role="3cqZAp">
                      <node concept="2ShNRf" id="7oJsd9x2f1C" role="3clFbG">
                        <node concept="1pGfFk" id="7oJsd9x2f1D" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortView" />
                          <node concept="2OqwBi" id="7oJsd9x2f1E" role="37wK5m">
                            <node concept="37vLTw" id="7oJsd9x2f1F" role="2Oq$k0">
                              <ref role="3cqZAo" node="7oJsd9x2f1J" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="7oJsd9x2f1G" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="7oJsd9x2f1H" role="37wK5m" />
                          <node concept="Rm8GO" id="7oJsd9x2f1I" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7oJsd9x2f1J" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7oJsd9x2f1K" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7oJsd9x2f1L" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2f1M" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x2f1N" role="jymVt" />
    <node concept="3clFb_" id="7oJsd9x2f1O" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="7oJsd9x2f1P" role="1B3o_S" />
      <node concept="3uibUv" id="7oJsd9x2f1Q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7oJsd9x2f1R" role="3clF47">
        <node concept="3clFbF" id="7oJsd9x2f1S" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x2f1T" role="3clFbG">
            <node concept="2OqwBi" id="7oJsd9x2f1U" role="2Oq$k0">
              <node concept="3TrEf2" id="7oJsd9x2f1V" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
              <node concept="1rXfSq" id="7oJsd9x2f1W" role="2Oq$k0">
                <ref role="37wK5l" node="6LU90BOirGc" resolve="getNode" />
              </node>
            </node>
            <node concept="3TrcHB" id="7oJsd9x2f1X" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2f1Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x2dlw" role="jymVt" />
    <node concept="3Tm1VV" id="7oJsd9x2cge" role="1B3o_S" />
    <node concept="3uibUv" id="7oJsd9x2dfC" role="1zkMxy">
      <ref role="3uigEE" node="6LU90BOirFi" resolve="FBInstanceByNode" />
      <node concept="3Tqbb2" id="7oJsd9x2dhW" role="11_B2D">
        <ref role="ehGHo" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationInstance" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7oJsd9x2_UX">
    <property role="TrG5h" value="SubappNetworkModelByNode" />
    <node concept="2tJIrI" id="7oJsd9x2Bmj" role="jymVt" />
    <node concept="3Tm1VV" id="7oJsd9x2_UY" role="1B3o_S" />
    <node concept="3uibUv" id="7oJsd9x2Blt" role="1zkMxy">
      <ref role="3uigEE" node="3IX4BsK9E3D" resolve="FBNetworkModelByNode" />
    </node>
    <node concept="3clFbW" id="7oJsd9x2CPz" role="jymVt">
      <node concept="3cqZAl" id="7oJsd9x2CP$" role="3clF45" />
      <node concept="3Tm1VV" id="7oJsd9x2CP_" role="1B3o_S" />
      <node concept="3clFbS" id="7oJsd9x2CPB" role="3clF47">
        <node concept="XkiVB" id="7oJsd9x2CPD" role="3cqZAp">
          <ref role="37wK5l" node="3IX4BsK9EJY" resolve="FBNetworkModelByNode" />
          <node concept="37vLTw" id="7oJsd9x2CPH" role="37wK5m">
            <ref role="3cqZAo" node="7oJsd9x2CPE" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7oJsd9x2CPE" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7oJsd9x2CPG" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7oJsd9x4d2c" role="jymVt" />
    <node concept="3clFb_" id="7oJsd9x2DGQ" role="jymVt">
      <property role="TrG5h" value="getFirstClassComponents" />
      <node concept="3Tm1VV" id="7oJsd9x2DGR" role="1B3o_S" />
      <node concept="3uibUv" id="7oJsd9x2DGS" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="7oJsd9x2DGT" role="11_B2D">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2DJh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="7oJsd9x2DJi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="7oJsd9x2DJj" role="3clF47">
        <node concept="3cpWs8" id="7oJsd9x2FfE" role="3cqZAp">
          <node concept="3cpWsn" id="7oJsd9x2FfF" role="3cpWs9">
            <property role="TrG5h" value="components" />
            <node concept="2hMVRd" id="7oJsd9x41OT" role="1tU5fm">
              <node concept="3uibUv" id="7oJsd9x2FfD" role="2hN53Y">
                <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponentView" />
              </node>
            </node>
            <node concept="3nyPlj" id="7oJsd9x2FfG" role="33vP2m">
              <ref role="37wK5l" node="3IX4BsK9E8d" resolve="getFirstClassComponents" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7oJsd9x2DJl" role="3cqZAp">
          <node concept="2OqwBi" id="7oJsd9x44pR" role="3clFbG">
            <node concept="37vLTw" id="7oJsd9x2FfH" role="2Oq$k0">
              <ref role="3cqZAo" node="7oJsd9x2FfF" resolve="components" />
            </node>
            <node concept="X8dFx" id="7oJsd9x4aNI" role="2OqNvi">
              <node concept="2OqwBi" id="7oJsd9x3fgo" role="25WWJ7">
                <node concept="2OqwBi" id="7oJsd9x37NA" role="2Oq$k0">
                  <node concept="1PxgMI" id="7oJsd9x379$" role="2Oq$k0">
                    <node concept="chp4Y" id="7oJsd9x37vF" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
                    </node>
                    <node concept="37vLTw" id="7oJsd9x36xy" role="1m5AlR">
                      <ref role="3cqZAo" node="3IX4BsK9EDO" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="7oJsd9x38vC" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
                  </node>
                </node>
                <node concept="3$u5V9" id="7oJsd9x3qCs" role="2OqNvi">
                  <node concept="1bVj0M" id="7oJsd9x3qCu" role="23t8la">
                    <node concept="3clFbS" id="7oJsd9x3qCv" role="1bW5cS">
                      <node concept="3clFbF" id="7oJsd9x3qZX" role="3cqZAp">
                        <node concept="2ShNRf" id="7oJsd9x3qZV" role="3clFbG">
                          <node concept="1pGfFk" id="7oJsd9x3rMO" role="2ShVmc">
                            <ref role="37wK5l" node="7oJsd9x2eYK" resolve="FBInstanceBySubappNode" />
                            <node concept="37vLTw" id="7oJsd9x3seM" role="37wK5m">
                              <ref role="3cqZAo" node="7oJsd9x3qCw" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7oJsd9x3qCw" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7oJsd9x3qCx" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7oJsd9x3vgx" role="3cqZAp">
          <node concept="37vLTw" id="7oJsd9x3v_v" role="3cqZAk">
            <ref role="3cqZAo" node="7oJsd9x2FfF" resolve="components" />
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
      <node concept="paMQc" id="7oJsd9x58QY" role="3EZMnx">
        <node concept="3EZMnI" id="7oJsd9x58QZ" role="paDBS">
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
          <node concept="pzx5h" id="7oJsd9x58Rm" role="3EZMnx">
            <node concept="3VJUX4" id="7oJsd9x58Rn" role="3YsKMw">
              <node concept="3clFbS" id="7oJsd9x58Ro" role="2VODD2">
                <node concept="3clFbF" id="7oJsd9x58Rp" role="3cqZAp">
                  <node concept="2ShNRf" id="7oJsd9x58Rq" role="3clFbG">
                    <node concept="YeOm9" id="7oJsd9x58Rr" role="2ShVmc">
                      <node concept="1Y3b0j" id="7oJsd9x58Rs" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                        <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
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
      <node concept="paMQc" id="7oJsd9x5aDq" role="3EZMnx">
        <node concept="3EZMnI" id="7oJsd9x5aDr" role="paDBS">
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
      </node>
      <node concept="3F0ifn" id="7oJsd9x5aD$" role="3EZMnx" />
      <node concept="paMQc" id="7oJsd9x5aDE" role="3EZMnx">
        <node concept="3F2HdR" id="7oJsd9x5aDF" role="paDBS">
          <ref role="1NtTu8" to="xiqq:uLhTRR7MVq" resolve="applications" />
          <node concept="2iRkQZ" id="7oJsd9x5aDG" role="2czzBx" />
        </node>
      </node>
      <node concept="3F0ifn" id="7oJsd9x5aDH" role="3EZMnx" />
      <node concept="paMQc" id="7oJsd9x5c1U" role="3EZMnx">
        <node concept="3F2HdR" id="7oJsd9x5c1V" role="paDBS">
          <ref role="1NtTu8" to="xiqq:uLhTRR7MVs" resolve="devices" />
          <node concept="2iRkQZ" id="7oJsd9x5c1W" role="2czzBx" />
        </node>
      </node>
      <node concept="2iRkQZ" id="7oJsd9x5aEn" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="7oJsd9x5bme" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
    </node>
  </node>
  <node concept="312cEu" id="2syzu7qTf1n">
    <property role="TrG5h" value="InlineValueByNode" />
    <node concept="2tJIrI" id="2syzu7qTf2y" role="jymVt" />
    <node concept="312cEg" id="2syzu7qTgQb" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="2syzu7qTgHX" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
      </node>
      <node concept="3Tm6S6" id="2syzu7qTgUM" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2syzu7qThaW" role="jymVt" />
    <node concept="3clFbW" id="2syzu7qTgYV" role="jymVt">
      <node concept="3cqZAl" id="2syzu7qTgYW" role="3clF45" />
      <node concept="3Tm1VV" id="2syzu7qTgYX" role="1B3o_S" />
      <node concept="3clFbS" id="2syzu7qTgYZ" role="3clF47">
        <node concept="3clFbF" id="2syzu7qTgZ3" role="3cqZAp">
          <node concept="37vLTI" id="2syzu7qTgZ5" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qTgZc" role="37vLTx">
              <ref role="3cqZAo" node="2syzu7qTgZ2" resolve="node" />
            </node>
            <node concept="37vLTw" id="2syzu7qThHF" role="37vLTJ">
              <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2syzu7qTgZ2" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2syzu7qTgZ1" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qTf2$" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qTf37" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="3Tm1VV" id="2syzu7qTf39" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qTf3a" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="2syzu7qTf3b" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2syzu7qTf3c" role="3clF47">
        <node concept="3clFbF" id="2syzu7qTi8o" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qTmur" role="3clFbG">
            <node concept="2OqwBi" id="2syzu7qTi$s" role="2Oq$k0">
              <node concept="37vLTw" id="2syzu7qTi8n" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="2syzu7qTiVn" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:7DSsXPFKSqX" resolve="value" />
              </node>
            </node>
            <node concept="2qgKlT" id="2syzu7qTqeM" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qTf3d" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qThTc" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qTf3g" role="jymVt">
      <property role="TrG5h" value="getOpppositePort" />
      <node concept="3Tm1VV" id="2syzu7qTf3i" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qTf3j" role="3clF45">
        <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="2AHcQZ" id="2syzu7qTf3k" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2syzu7qTf3l" role="3clF47">
        <node concept="3cpWs8" id="2syzu7rkue1" role="3cqZAp">
          <node concept="3cpWsn" id="2syzu7rkue2" role="3cpWs9">
            <property role="TrG5h" value="destination" />
            <node concept="3Tqbb2" id="2syzu7rkudZ" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
            </node>
            <node concept="1PxgMI" id="2syzu7rkFNc" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="2syzu7rkG5k" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
              </node>
              <node concept="2OqwBi" id="2syzu7rkue3" role="1m5AlR">
                <node concept="1PxgMI" id="2syzu7rkue4" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="2syzu7rkue5" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:4KieeRVlhii" resolve="Connection" />
                  </node>
                  <node concept="2OqwBi" id="2syzu7rkue6" role="1m5AlR">
                    <node concept="37vLTw" id="2syzu7rkue7" role="2Oq$k0">
                      <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
                    </node>
                    <node concept="1mfA1w" id="2syzu7rkue8" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3TrEf2" id="2syzu7rkue9" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7rkIF7" role="3cqZAp">
          <node concept="2ShNRf" id="2syzu7rkIF3" role="3clFbG">
            <node concept="1pGfFk" id="2syzu7rkJq8" role="2ShVmc">
              <ref role="37wK5l" to="tphl:7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
              <node concept="2ShNRf" id="2syzu7rkJwJ" role="37wK5m">
                <node concept="1pGfFk" id="2syzu7rkKcx" role="2ShVmc">
                  <ref role="37wK5l" node="3IX4BsKa1$Q" resolve="FBInstanceByFBNode" />
                  <node concept="1PxgMI" id="2syzu7rkRBr" role="37wK5m">
                    <node concept="chp4Y" id="2syzu7rkRJ2" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                    </node>
                    <node concept="2OqwBi" id="2syzu7rkKJ1" role="1m5AlR">
                      <node concept="37vLTw" id="2syzu7rkKpJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2syzu7rkue2" resolve="destination" />
                      </node>
                      <node concept="3TrEf2" id="2syzu7rkL7M" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="2syzu7rkTgt" role="37wK5m" />
                </node>
              </node>
              <node concept="2OqwBi" id="2syzu7rl2nI" role="37wK5m">
                <node concept="2OqwBi" id="2syzu7rkVlx" role="2Oq$k0">
                  <node concept="37vLTw" id="2syzu7rkUX2" role="2Oq$k0">
                    <ref role="3cqZAo" node="2syzu7rkue2" resolve="destination" />
                  </node>
                  <node concept="3TrEf2" id="2syzu7rkVNt" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                  </node>
                </node>
                <node concept="2bSWHS" id="2syzu7rl8Tq" role="2OqNvi" />
              </node>
              <node concept="Rm8GO" id="2syzu7rl9Jr" role="37wK5m">
                <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              </node>
              <node concept="3clFbT" id="2syzu7rla6v" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qTf3m" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7r41s5" role="jymVt" />
    <node concept="3clFb_" id="2syzu7r41Xb" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="2syzu7r41Xc" role="3clF45">
        <ref role="ehGHo" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
      </node>
      <node concept="3Tm1VV" id="2syzu7r41Xd" role="1B3o_S" />
      <node concept="3clFbS" id="2syzu7r41Xe" role="3clF47">
        <node concept="3clFbF" id="2syzu7r41Xf" role="3cqZAp">
          <node concept="37vLTw" id="2syzu7r41Xa" role="3clFbG">
            <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7r41tu" role="jymVt" />
    <node concept="3clFb_" id="2syzu7r3Jkn" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="3Tm1VV" id="2syzu7r3Jko" role="1B3o_S" />
      <node concept="10P_77" id="2syzu7r3Jkq" role="3clF45" />
      <node concept="37vLTG" id="2syzu7r3Jkr" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="2syzu7r3Jks" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2syzu7r3Jkv" role="3clF47">
        <node concept="3cpWs6" id="2syzu7r3KDF" role="3cqZAp">
          <node concept="1Wc70l" id="2syzu7r3NFv" role="3cqZAk">
            <node concept="3clFbC" id="2syzu7r3Qmh" role="3uHU7w">
              <node concept="37vLTw" id="2syzu7r3TRe" role="3uHU7w">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="2OqwBi" id="2syzu7r3RBD" role="3uHU7B">
                <node concept="1eOMI4" id="2syzu7r3P26" role="2Oq$k0">
                  <node concept="10QFUN" id="2syzu7r3P23" role="1eOMHV">
                    <node concept="3uibUv" id="2syzu7r3SF3" role="10QFUM">
                      <ref role="3uigEE" node="2syzu7qTf1n" resolve="InlineValueByNode" />
                    </node>
                    <node concept="37vLTw" id="2syzu7r3OzK" role="10QFUP">
                      <ref role="3cqZAo" node="2syzu7r3Jkr" resolve="other" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="2syzu7r3Tl5" role="2OqNvi">
                  <ref role="2Oxat5" node="2syzu7qTgQb" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="2syzu7r3Lla" role="3uHU7B">
              <node concept="3uibUv" id="2syzu7r3Sge" role="2ZW6by">
                <ref role="3uigEE" node="2syzu7qTf1n" resolve="InlineValueByNode" />
              </node>
              <node concept="37vLTw" id="2syzu7r3KIm" role="2ZW6bz">
                <ref role="3cqZAo" node="2syzu7r3Jkr" resolve="other" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7r3Jkw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7r40th" role="jymVt" />
    <node concept="3clFb_" id="2syzu7r3Jk$" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="3Tm1VV" id="2syzu7r3Jk_" role="1B3o_S" />
      <node concept="10Oyi0" id="2syzu7r3JkB" role="3clF45" />
      <node concept="3clFbS" id="2syzu7r3JkE" role="3clF47">
        <node concept="3clFbF" id="2syzu7r3UzR" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7r3UOV" role="3clFbG">
            <node concept="2JrnkZ" id="2syzu7r3ZXQ" role="2Oq$k0">
              <node concept="37vLTw" id="2syzu7r3UzQ" role="2JrQYb">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
            </node>
            <node concept="liA8E" id="2syzu7r40hI" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7r3JkF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7r3J1j" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qTf3p" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="2syzu7qTf3r" role="1B3o_S" />
      <node concept="3cqZAl" id="2syzu7qTf3s" role="3clF45" />
      <node concept="3clFbS" id="2syzu7qTf3v" role="3clF47">
        <node concept="3clFbF" id="2syzu7qTEm6" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qTE_6" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qTEm5" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="2syzu7qTIaj" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qTf3w" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2syzu7qTf1o" role="1B3o_S" />
    <node concept="3uibUv" id="2syzu7qTf2l" role="EKbjA">
      <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValueView" />
    </node>
  </node>
</model>

