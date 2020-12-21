<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d018f155-a8e1-4632-87ac-0cbc89a1f1c2(org.fbme.ide.richediting.lang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
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
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" />
    <import index="xpi8" ref="r:9a9b929e-1b8b-403c-99cb-9e49e4b8f68b(org.fbme.ide.iec61499.lang.editor)" />
    <import index="5kh9" ref="r:fb13b7e5-37c8-4188-96ed-057d5b8154fd(org.fbme.ide.st.lang.editor)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(org.fbme.ide.iec61499.adapter.fbnetwork)" />
    <import index="lv7i" ref="r:5472e35e-027d-42bb-bcce-32726ec4c9a9(org.fbme.ide.iec61499.adapter.ecc)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(org.fbme.ide.richediting.plugin)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="g136" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.ecc(org.fbme.lib/)" />
    <import index="74cb" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.instances(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="v900" ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(org.fbme.ide.platform)" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="sli2" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.cells(org.fbme.scenes/)" />
    <import index="ar7i" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers.scene(org.fbme.scenes/)" />
    <import index="kdnk" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers(org.fbme.scenes/)" />
    <import index="2w4" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers.components(org.fbme.scenes/)" />
    <import index="tamd" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers.diagram(org.fbme.scenes/)" />
    <import index="gl2l" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.viewmodel(org.fbme.scenes/)" />
    <import index="56zl" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.adapters.ecc(org.fbme.ide.richediting/)" />
    <import index="ek6x" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.inspections(org.fbme.ide.richediting/)" />
    <import index="s1eo" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.adapters.fb(org.fbme.ide.richediting/)" />
    <import index="p24u" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.adapters.fbnetwork(org.fbme.ide.richediting/)" />
    <import index="je9f" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.editor(org.fbme.ide.richediting/)" />
    <import index="1hzy" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.viewmodel(org.fbme.ide.richediting/)" />
    <import index="uvki" ref="5aff85f5-c1e8-49b6-a1f1-66d79702cceb/java:org.fbme.ide.iec61499.repository(org.fbme.ide.iec61499.adapter/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1210180874794" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyReference" flags="nn" index="34pFcN" />
      <concept id="1210184105060" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentType" flags="in" index="34_ZPX">
        <reference id="1210184138184" name="componentDeclaration" index="34A7Nh" />
      </concept>
    </language>
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
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="681855071694758168" name="jetbrains.mps.lang.plugin.standalone.structure.GetPreferencesComponentInProjectOperation" flags="nn" index="LR4Ub">
        <reference id="681855071694758169" name="componentDeclaration" index="LR4Ua" />
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
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
    </language>
    <language id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="org.fbme.ide.meta.editor">
      <concept id="3981577588227981882" name="org.fbme.ide.meta.editor.structure.CellCreateOperation" flags="ng" index="2CJim2">
        <child id="3981577588228006890" name="editor" index="2CJshi" />
        <child id="3981577588228006886" name="contextNode" index="2CJshu" />
      </concept>
      <concept id="3981577588228006907" name="org.fbme.ide.meta.editor.structure.CellCreateOperationInlineEditor" flags="ig" index="2CJsh3" />
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
                            <ref role="37wK5l" node="1R4IoyQIIIZ" resolve="createEccEditor" />
                            <ref role="1Pybhc" node="1R4IoyQHXu5" resolve="ECCEditors" />
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
                            <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                            <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
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
                              <ref role="37wK5l" to="s1eo:~FBTypeTemplateCellComponent.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.lib.iec61499.descriptors.FBTypeDescriptor)" resolve="FBTypeTemplateCellComponent" />
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
                          <node concept="liA8E" id="1cTKxMSaDDD" role="2OqNvi">
                            <ref role="37wK5l" to="s1eo:~FBTypeTemplateCellComponent.getRootCell()" resolve="getRootCell" />
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
                                <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                                <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
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
                            <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                            <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
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
                              <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                              <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
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
                                  <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                                  <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
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
                            <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                            <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
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
                                <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                                <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
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
    <node concept="2YIFZL" id="2hWn4IdSWSS" role="jymVt">
      <property role="TrG5h" value="createCellForetworkInstance" />
      <node concept="3clFbS" id="2hWn4IdSWST" role="3clF47">
        <node concept="3cpWs8" id="2hWn4IdSWSU" role="3cqZAp">
          <node concept="3cpWsn" id="2hWn4IdSWSV" role="3cpWs9">
            <property role="TrG5h" value="scene" />
            <node concept="3uibUv" id="3HKLJNSgTsR" role="1tU5fm">
              <ref role="3uigEE" to="sli2:~EditorCell_Scene" resolve="EditorCell_Scene" />
            </node>
            <node concept="2ShNRf" id="2hWn4IdSWSX" role="33vP2m">
              <node concept="1pGfFk" id="2hWn4IdSWSY" role="2ShVmc">
                <ref role="37wK5l" to="sli2:~EditorCell_Scene.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="EditorCell_Scene" />
                <node concept="37vLTw" id="2hWn4IdSWSZ" role="37wK5m">
                  <ref role="3cqZAo" node="2hWn4IdSWTd" resolve="context" />
                </node>
                <node concept="37vLTw" id="2hWn4IdTFu_" role="37wK5m">
                  <ref role="3cqZAo" node="2hWn4IdTE6P" resolve="node" />
                </node>
                <node concept="37vLTw" id="2hWn4IdSWT1" role="37wK5m">
                  <ref role="3cqZAo" node="2hWn4IdSWTh" resolve="layout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2hWn4IdT9ja" role="3cqZAp" />
        <node concept="3cpWs8" id="2hWn4IdT9v2" role="3cqZAp">
          <node concept="3cpWsn" id="2hWn4IdT9v3" role="3cpWs9">
            <property role="TrG5h" value="networkInstance" />
            <node concept="3uibUv" id="5oxN2jlFNj5" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2YIFZM" id="4dM3MZ7poLm" role="33vP2m">
              <ref role="1Pybhc" to="je9f:~RichEditorDataKeys" resolve="RichEditorDataKeys" />
              <ref role="37wK5l" to="je9f:~RichEditorDataKeys.contextNetworkInstance(jetbrains.mps.openapi.editor.EditorContext)" resolve="contextNetworkInstance" />
              <node concept="37vLTw" id="4dM3MZ7poXk" role="37wK5m">
                <ref role="3cqZAo" node="2hWn4IdSWTd" resolve="context" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2hWn4IdTd13" role="3cqZAp">
          <node concept="3cpWsn" id="2hWn4IdTd14" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="2hWn4IdTd15" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="2hWn4IdT_BT" role="33vP2m">
              <node concept="37vLTw" id="2hWn4IdT$P5" role="2Oq$k0">
                <ref role="3cqZAo" node="2hWn4IdSWSV" resolve="scene" />
              </node>
              <node concept="liA8E" id="2hWn4IdTBg5" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2hWn4IdT9vd" role="3cqZAp">
          <node concept="3clFbS" id="2hWn4IdT9ve" role="3clFbx">
            <node concept="3clFbF" id="2hWn4IdT9vf" role="3cqZAp">
              <node concept="2OqwBi" id="2hWn4IdT9vg" role="3clFbG">
                <node concept="37vLTw" id="2hWn4IdTIxl" role="2Oq$k0">
                  <ref role="3cqZAo" node="2hWn4IdTd14" resolve="style" />
                </node>
                <node concept="liA8E" id="2hWn4IdT9vi" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
                  <node concept="10M0yZ" id="6SLp5w3M1Wu" role="37wK5m">
                    <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                    <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  </node>
                  <node concept="37vLTw" id="2hWn4IdT9vk" role="37wK5m">
                    <ref role="3cqZAo" node="2hWn4IdT9v3" resolve="networkInstance" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2hWn4IdSWT2" role="3cqZAp">
              <node concept="1rXfSq" id="2hWn4IdSWT3" role="3clFbG">
                <ref role="37wK5l" node="7oJsd9x52MO" resolve="initializeSceneCell" />
                <node concept="37vLTw" id="2hWn4IdSWT4" role="37wK5m">
                  <ref role="3cqZAo" node="2hWn4IdSWSV" resolve="scene" />
                </node>
                <node concept="37vLTw" id="2hWn4IdTMsT" role="37wK5m">
                  <ref role="3cqZAo" node="2hWn4IdT9v3" resolve="networkInstance" />
                </node>
                <node concept="37vLTw" id="2hWn4IdSWT8" role="37wK5m">
                  <ref role="3cqZAo" node="2hWn4IdSWTd" resolve="context" />
                </node>
                <node concept="37vLTw" id="2hWn4IdSWT9" role="37wK5m">
                  <ref role="3cqZAo" node="2hWn4IdSWTh" resolve="layout" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2hWn4IdTNam" role="3clFbw">
            <node concept="2ZW3vV" id="2hWn4IdTOju" role="3uHU7w">
              <node concept="3uibUv" id="2hWn4IdTPsY" role="2ZW6by">
                <ref role="3uigEE" to="rwq3:1R4IoyQA3Yn" resolve="FBNetworkByNode" />
              </node>
              <node concept="2OqwBi" id="2hWn4IdTNNI" role="2ZW6bz">
                <node concept="37vLTw" id="2hWn4IdTNyo" role="2Oq$k0">
                  <ref role="3cqZAo" node="2hWn4IdT9v3" resolve="networkInstance" />
                </node>
                <node concept="liA8E" id="4kSwwtSC72H" role="2OqNvi">
                  <ref role="37wK5l" to="74cb:~NetworkInstance.getNetworkDeclaration()" resolve="getNetworkDeclaration" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2hWn4IdT9vl" role="3uHU7B">
              <node concept="37vLTw" id="2hWn4IdT9vn" role="3uHU7B">
                <ref role="3cqZAo" node="2hWn4IdT9v3" resolve="networkInstance" />
              </node>
              <node concept="10Nm6u" id="2hWn4IdT9vm" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2hWn4IdT6Eo" role="3cqZAp" />
        <node concept="3cpWs6" id="2hWn4IdSWTa" role="3cqZAp">
          <node concept="37vLTw" id="2hWn4IdSWTb" role="3cqZAk">
            <ref role="3cqZAo" node="2hWn4IdSWSV" resolve="scene" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2hWn4IdSWTc" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="2hWn4IdSWTd" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2hWn4IdSWTe" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2hWn4IdTE6P" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2hWn4IdTEuM" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
        </node>
      </node>
      <node concept="37vLTG" id="2hWn4IdSWTh" role="3clF46">
        <property role="TrG5h" value="layout" />
        <node concept="3uibUv" id="3HKLJNSk2fa" role="1tU5fm">
          <ref role="3uigEE" to="ar7i:~SceneLayout" resolve="SceneLayout" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2hWn4IdSWTj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2hWn4IdT24S" role="jymVt" />
    <node concept="2YIFZL" id="7oJsd9wVN1g" role="jymVt">
      <property role="TrG5h" value="createFBNetworkCell" />
      <node concept="3clFbS" id="7oJsd9wVN1i" role="3clF47">
        <node concept="3cpWs8" id="7oJsd9wVN1l" role="3cqZAp">
          <node concept="3cpWsn" id="7oJsd9wVN1m" role="3cpWs9">
            <property role="TrG5h" value="scene" />
            <node concept="3uibUv" id="3HKLJNSk3lp" role="1tU5fm">
              <ref role="3uigEE" to="sli2:~EditorCell_Scene" resolve="EditorCell_Scene" />
            </node>
            <node concept="2ShNRf" id="7oJsd9wVN1o" role="33vP2m">
              <node concept="1pGfFk" id="7oJsd9wVN1p" role="2ShVmc">
                <ref role="37wK5l" to="sli2:~EditorCell_Scene.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="EditorCell_Scene" />
                <node concept="37vLTw" id="7oJsd9wVN1q" role="37wK5m">
                  <ref role="3cqZAo" node="7oJsd9wVN3E" resolve="context" />
                </node>
                <node concept="37vLTw" id="7oJsd9wVN1r" role="37wK5m">
                  <ref role="3cqZAo" node="7oJsd9wVN3G" resolve="node" />
                </node>
                <node concept="37vLTw" id="bRdTVIcQNF" role="37wK5m">
                  <ref role="3cqZAo" node="bRdTVIcPcl" resolve="layout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2yJZQx2yZaq" role="3cqZAp">
          <node concept="3cpWsn" id="2yJZQx2yZar" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="QE5KxyEYow" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
            </node>
            <node concept="2YIFZM" id="2yJZQx2yZBl" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="2OqwBi" id="2yJZQx2yXrD" role="37wK5m">
                <node concept="2OqwBi" id="2yJZQx2yWRG" role="2Oq$k0">
                  <node concept="37vLTw" id="2yJZQx2yW$0" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9wVN3E" resolve="context" />
                  </node>
                  <node concept="liA8E" id="2yJZQx2yXdU" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                  </node>
                </node>
                <node concept="liA8E" id="2yJZQx2yXQA" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
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
            <node concept="2YIFZM" id="2yJZQx2yVX6" role="37wK5m">
              <ref role="1Pybhc" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
              <ref role="37wK5l" to="74cb:~NetworkInstance.createForDeclaration(org.fbme.lib.common.Declaration)" resolve="createForDeclaration" />
              <node concept="2OqwBi" id="2yJZQx2z0AQ" role="37wK5m">
                <node concept="37vLTw" id="2yJZQx2z0mz" role="2Oq$k0">
                  <ref role="3cqZAo" node="2yJZQx2yZar" resolve="repository" />
                </node>
                <node concept="liA8E" id="2yJZQx2z0Pg" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                  <node concept="37vLTw" id="2yJZQx2z0WV" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9wVN3G" resolve="node" />
                  </node>
                  <node concept="3VsKOn" id="2yJZQx2z1cx" role="37wK5m">
                    <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7oJsd9x55U0" role="37wK5m">
              <ref role="3cqZAo" node="7oJsd9wVN3E" resolve="context" />
            </node>
            <node concept="37vLTw" id="bRdTVIcWhB" role="37wK5m">
              <ref role="3cqZAo" node="bRdTVIcPcl" resolve="layout" />
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
      <node concept="37vLTG" id="bRdTVIcPcl" role="3clF46">
        <property role="TrG5h" value="layout" />
        <node concept="3uibUv" id="3tHZ0yHuRyr" role="1tU5fm">
          <ref role="3uigEE" to="ar7i:~SceneLayout" resolve="SceneLayout" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7oJsd9wVN3C" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7oJsd9x4jvm" role="jymVt" />
    <node concept="2YIFZL" id="7oJsd9x52MO" role="jymVt">
      <property role="TrG5h" value="initializeSceneCell" />
      <node concept="3clFbS" id="7oJsd9x52MQ" role="3clF47">
        <node concept="3cpWs8" id="2hWn4IdU1wx" role="3cqZAp">
          <node concept="3cpWsn" id="2hWn4IdU1wy" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="2hWn4IdU1wz" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="2hWn4IdU1w$" role="33vP2m">
              <node concept="37vLTw" id="2hWn4IdU1w_" role="2Oq$k0">
                <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
              </node>
              <node concept="liA8E" id="2hWn4IdU1wA" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TLRNr" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TLWEv" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdU3Pn" role="2Oq$k0">
              <ref role="3cqZAo" node="2hWn4IdU1wy" resolve="style" />
            </node>
            <node concept="liA8E" id="3DiEZ8TLZx0" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
              <node concept="10M0yZ" id="6SLp5w3M24y" role="37wK5m">
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
              </node>
              <node concept="2OqwBi" id="19RKY2xC9g4" role="37wK5m">
                <node concept="37vLTw" id="2hWn4IdTUxg" role="2Oq$k0">
                  <ref role="3cqZAo" node="7oJsd9x52P1" resolve="networkInstance" />
                </node>
                <node concept="liA8E" id="5oxN2jlFVgV" role="2OqNvi">
                  <ref role="37wK5l" to="74cb:~NetworkInstance.getNetworkDeclaration()" resolve="getNetworkDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xC757" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xC758" role="3clFbG">
            <node concept="37vLTw" id="19RKY2xC759" role="2Oq$k0">
              <ref role="3cqZAo" node="2hWn4IdU1wy" resolve="style" />
            </node>
            <node concept="liA8E" id="19RKY2xC75a" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
              <node concept="10M0yZ" id="6SLp5w3M2hl" role="37wK5m">
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
              </node>
              <node concept="37vLTw" id="19RKY2xC75c" role="37wK5m">
                <ref role="3cqZAo" node="7oJsd9x52P1" resolve="networkInstance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4gibKcM$sdl" role="3cqZAp">
          <node concept="2OqwBi" id="4gibKcM$tI9" role="3clFbG">
            <node concept="37vLTw" id="4gibKcM$sdj" role="2Oq$k0">
              <ref role="3cqZAo" node="2hWn4IdU1wy" resolve="style" />
            </node>
            <node concept="liA8E" id="4gibKcM$vBO" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
              <node concept="10M0yZ" id="3tHZ0yHuTFa" role="37wK5m">
                <ref role="3cqZAo" to="sli2:~SceneStyleAttributes.SCENE_BACKGROUND" resolve="SCENE_BACKGROUND" />
                <ref role="1PxDUh" to="sli2:~SceneStyleAttributes" resolve="SceneStyleAttributes" />
              </node>
              <node concept="10M0yZ" id="4gibKcM$wBw" role="37wK5m">
                <ref role="3cqZAo" to="lzb2:~JBColor.WHITE" resolve="WHITE" />
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yJZQx2zuF$" role="3cqZAp" />
        <node concept="3cpWs8" id="2hWn4IdTWnB" role="3cqZAp">
          <node concept="3cpWsn" id="2hWn4IdTWnC" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="2hWn4IdTWnD" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="0kSF2" id="2hWn4IdTWnE" role="33vP2m">
              <node concept="3uibUv" id="2hWn4IdTWnF" role="0kSFW">
                <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
              </node>
              <node concept="2OqwBi" id="2hWn4IdTWnG" role="0kSFX">
                <node concept="37vLTw" id="2hWn4IdTWnH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7oJsd9x52P3" resolve="context" />
                </node>
                <node concept="liA8E" id="2hWn4IdTWnI" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2yJZQx2z7iv" role="3cqZAp">
          <node concept="3cpWsn" id="2yJZQx2z7iw" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="2yJZQx2z6H9" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="2yJZQx2z7ix" role="33vP2m">
              <node concept="2OqwBi" id="2yJZQx2z7iy" role="2Oq$k0">
                <node concept="37vLTw" id="2yJZQx2z7iz" role="2Oq$k0">
                  <ref role="3cqZAo" node="7oJsd9x52P3" resolve="context" />
                </node>
                <node concept="liA8E" id="2yJZQx2z7i$" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                </node>
              </node>
              <node concept="liA8E" id="2yJZQx2z7i_" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2yJZQx2zspD" role="3cqZAp">
          <node concept="3cpWsn" id="2yJZQx2zspE" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="739Y6csNUgy" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="2yJZQx2z_YV" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="37vLTw" id="2yJZQx2zAdz" role="37wK5m">
                <ref role="3cqZAo" node="2yJZQx2z7iw" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TM2G4" role="3cqZAp" />
        <node concept="3J1_TO" id="7oJsd9x52MR" role="3cqZAp">
          <node concept="3clFbS" id="7oJsd9x52MS" role="1zxBo7">
            <node concept="3clFbH" id="2yJZQx2zowq" role="3cqZAp" />
            <node concept="3cpWs8" id="1R4IoyQFFNK" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQFFNL" role="3cpWs9">
                <property role="TrG5h" value="networkView" />
                <node concept="3uibUv" id="6SLp5w3M2IZ" role="1tU5fm">
                  <ref role="3uigEE" to="1hzy:~NetworkView" resolve="NetworkView" />
                </node>
                <node concept="2ShNRf" id="1R4IoyQFHSa" role="33vP2m">
                  <node concept="1pGfFk" id="1hwo9XLGpZ9" role="2ShVmc">
                    <ref role="37wK5l" to="1hzy:~NetworkView.&lt;init&gt;(org.fbme.lib.iec61499.IEC61499Factory,org.fbme.lib.iec61499.fbnetwork.FBNetwork,boolean)" resolve="NetworkView" />
                    <node concept="2OqwBi" id="2yJZQx2zBT0" role="37wK5m">
                      <node concept="37vLTw" id="2yJZQx2zAAG" role="2Oq$k0">
                        <ref role="3cqZAo" node="2yJZQx2zspE" resolve="repository" />
                      </node>
                      <node concept="liA8E" id="2yJZQx2zD03" role="2OqNvi">
                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getIEC61499Factory()" resolve="getIEC61499Factory" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="19RKY2xBXf2" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQFI1g" role="2Oq$k0">
                        <ref role="3cqZAo" node="7oJsd9x52P1" resolve="networkInstance" />
                      </node>
                      <node concept="liA8E" id="5oxN2jlFUw1" role="2OqNvi">
                        <ref role="37wK5l" to="74cb:~NetworkInstance.getNetworkDeclaration()" resolve="getNetworkDeclaration" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="1hwo9XLGDri" role="37wK5m">
                      <node concept="10Nm6u" id="1hwo9XLGINC" role="3uHU7w" />
                      <node concept="2OqwBi" id="1hwo9XLGAzE" role="3uHU7B">
                        <node concept="37vLTw" id="1hwo9XLG_cd" role="2Oq$k0">
                          <ref role="3cqZAo" node="7oJsd9x52P1" resolve="networkInstance" />
                        </node>
                        <node concept="liA8E" id="1hwo9XLGHv9" role="2OqNvi">
                          <ref role="37wK5l" to="74cb:~Instance.getParent()" resolve="getParent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7oJsd9x52MT" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52MU" role="3cpWs9">
                <property role="TrG5h" value="backgroundLayer" />
                <node concept="3uibUv" id="3tHZ0yHuTYK" role="1tU5fm">
                  <ref role="3uigEE" to="ar7i:~Layer" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="7oJsd9x52MW" role="33vP2m">
                  <node concept="37vLTw" id="7oJsd9x52MX" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="7oJsd9x52MY" role="2OqNvi">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.createLayer(float)" resolve="createLayer" />
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
                <node concept="3uibUv" id="3tHZ0yHuUn5" role="1tU5fm">
                  <ref role="3uigEE" to="ar7i:~Layer" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="7oJsd9x52N3" role="33vP2m">
                  <node concept="37vLTw" id="7oJsd9x52N4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="7oJsd9x52N5" role="2OqNvi">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.createLayer(float)" resolve="createLayer" />
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
                <node concept="3uibUv" id="3tHZ0yHuUJm" role="1tU5fm">
                  <ref role="3uigEE" to="ar7i:~Layer" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="7oJsd9x52Na" role="33vP2m">
                  <node concept="37vLTw" id="7oJsd9x52Nb" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="7oJsd9x52Nc" role="2OqNvi">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.createLayer(float)" resolve="createLayer" />
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
                <node concept="3uibUv" id="3tHZ0yHuV7x" role="1tU5fm">
                  <ref role="3uigEE" to="ar7i:~Layer" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="7oJsd9x52Nh" role="33vP2m">
                  <node concept="37vLTw" id="7oJsd9x52Ni" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="7oJsd9x52Nj" role="2OqNvi">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.createLayer(float)" resolve="createLayer" />
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
                <node concept="3uibUv" id="3tHZ0yHuVvA" role="1tU5fm">
                  <ref role="3uigEE" to="ar7i:~Layer" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRr9q$" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyRr9q_" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRr9qA" role="2OqNvi">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.createLayer(float)" resolve="createLayer" />
                    <node concept="2$xPTn" id="1R4IoyRr9qB" role="37wK5m">
                      <property role="2$xPTl" value="4.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7oJsd9x52Nl" role="3cqZAp" />
            <node concept="3cpWs8" id="1y1FD3qGTVc" role="3cqZAp">
              <node concept="3cpWsn" id="1y1FD3qGTVd" role="3cpWs9">
                <property role="TrG5h" value="ideaProject" />
                <node concept="3uibUv" id="1y1FD3qGTyy" role="1tU5fm">
                  <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                </node>
                <node concept="2YIFZM" id="1y1FD3qGTVe" role="33vP2m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="37vLTw" id="2yJZQx2z7iA" role="37wK5m">
                    <ref role="3cqZAo" node="2yJZQx2z7iw" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7H$5i_Y6U8A" role="3cqZAp">
              <node concept="3cpWsn" id="7H$5i_Y6U8B" role="3cpWs9">
                <property role="TrG5h" value="scaleComponent" />
                <node concept="34_ZPX" id="7H$5i_Y6SIv" role="1tU5fm">
                  <ref role="34A7Nh" to="5z5t:1y1FD3qDmMX" resolve="NetworkPresentationSetting" />
                </node>
                <node concept="3K4zz7" id="7H$5i_Y765f" role="33vP2m">
                  <node concept="10Nm6u" id="7H$5i_Y777y" role="3K4E3e" />
                  <node concept="3clFbC" id="7H$5i_Y73uZ" role="3K4Cdx">
                    <node concept="10Nm6u" id="7H$5i_Y74zV" role="3uHU7w" />
                    <node concept="37vLTw" id="7H$5i_Y71BB" role="3uHU7B">
                      <ref role="3cqZAo" node="1y1FD3qGTVd" resolve="ideaProject" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7H$5i_Y6U8C" role="3K4GZi">
                    <node concept="LR4Ub" id="7H$5i_Y6U8D" role="2OqNvi">
                      <ref role="LR4Ua" to="5z5t:1y1FD3qDmMX" resolve="NetworkPresentationSetting" />
                    </node>
                    <node concept="37vLTw" id="7H$5i_Y6U8E" role="2Oq$k0">
                      <ref role="3cqZAo" node="1y1FD3qGTVd" resolve="ideaProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1y1FD3qG6Zy" role="3cqZAp">
              <node concept="3cpWsn" id="1y1FD3qG6Z_" role="3cpWs9">
                <property role="TrG5h" value="scale" />
                <node concept="10OMs4" id="1y1FD3qGZFZ" role="1tU5fm" />
                <node concept="3K4zz7" id="1y1FD3qI3kA" role="33vP2m">
                  <node concept="2$xPTn" id="1y1FD3qI3kB" role="3K4E3e">
                    <property role="2$xPTl" value="1.0f" />
                  </node>
                  <node concept="3clFbC" id="1y1FD3qI3kC" role="3K4Cdx">
                    <node concept="10Nm6u" id="1y1FD3qI3kD" role="3uHU7w" />
                    <node concept="37vLTw" id="7H$5i_Y79FP" role="3uHU7B">
                      <ref role="3cqZAo" node="7H$5i_Y6U8B" resolve="scaleComponent" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1y1FD3qI3kF" role="3K4GZi">
                    <node concept="37vLTw" id="7H$5i_Y6U8F" role="2Oq$k0">
                      <ref role="3cqZAo" node="7H$5i_Y6U8B" resolve="scaleComponent" />
                    </node>
                    <node concept="34pFcN" id="1y1FD3qI3kJ" role="2OqNvi">
                      <ref role="2WH_rO" to="5z5t:1y1FD3qDoAN" resolve="scale" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1y1FD3qGWiS" role="3cqZAp" />
            <node concept="3cpWs8" id="61SA$zecHOM" role="3cqZAp">
              <node concept="3cpWsn" id="61SA$zecHON" role="3cpWs9">
                <property role="TrG5h" value="viewpoint" />
                <node concept="3uibUv" id="3tHZ0yHuVZq" role="1tU5fm">
                  <ref role="3uigEE" to="kdnk:~SceneViewpoint" resolve="SceneViewpoint" />
                </node>
                <node concept="3K4zz7" id="61SA$zecHOP" role="33vP2m">
                  <node concept="2OqwBi" id="61SA$zecHOQ" role="3K4GZi">
                    <node concept="37vLTw" id="61SA$zecHOR" role="2Oq$k0">
                      <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                    </node>
                    <node concept="liA8E" id="61SA$zecHOS" role="2OqNvi">
                      <ref role="37wK5l" to="sli2:~EditorCell_Scene.getImplicitViewpoint()" resolve="getImplicitViewpoint" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="61SA$zecHOT" role="3K4Cdx">
                    <node concept="Rm8GO" id="3tHZ0yHuWya" role="3uHU7w">
                      <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                      <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                    </node>
                    <node concept="37vLTw" id="61SA$zecHOV" role="3uHU7B">
                      <ref role="3cqZAo" node="bRdTVIcSJa" resolve="layout" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="61SA$zecHOW" role="3K4E3e">
                    <node concept="1pGfFk" id="61SA$zecHOX" role="2ShVmc">
                      <ref role="37wK5l" to="kdnk:~SceneViewpointByCell.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="SceneViewpointByCell" />
                      <node concept="37vLTw" id="61SA$zecHOY" role="37wK5m">
                        <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                      </node>
                      <node concept="37vLTw" id="61SA$zecHOZ" role="37wK5m">
                        <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="61SA$zecHP1" role="3cqZAp">
              <node concept="3cpWsn" id="61SA$zecHP2" role="3cpWs9">
                <property role="TrG5h" value="focus" />
                <node concept="3uibUv" id="61SA$zecHP3" role="1tU5fm">
                  <ref role="3uigEE" to="kdnk:~SceneFocusModel" resolve="SceneFocusModel" />
                </node>
                <node concept="2ShNRf" id="61SA$zecHP4" role="33vP2m">
                  <node concept="1pGfFk" id="3tHZ0yHv0Lt" role="2ShVmc">
                    <ref role="37wK5l" to="kdnk:~DefaultFocusModel.&lt;init&gt;()" resolve="DefaultFocusModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="61SA$zecHP6" role="3cqZAp">
              <node concept="3clFbS" id="61SA$zecHP7" role="3clFbx">
                <node concept="3clFbF" id="61SA$zecHP8" role="3cqZAp">
                  <node concept="2ShNRf" id="61SA$zecHP9" role="3clFbG">
                    <node concept="1pGfFk" id="61SA$zecHPa" role="2ShVmc">
                      <ref role="37wK5l" to="ar7i:~WindowedBackgroundDragFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,org.fbme.scenes.controllers.SceneViewpointByCell,org.fbme.scenes.controllers.scene.Layer)" resolve="WindowedBackgroundDragFacility" />
                      <node concept="37vLTw" id="61SA$zecHPb" role="37wK5m">
                        <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                      </node>
                      <node concept="10QFUN" id="61SA$zecHPc" role="37wK5m">
                        <node concept="3uibUv" id="61SA$zecHPd" role="10QFUM">
                          <ref role="3uigEE" to="kdnk:~SceneViewpointByCell" resolve="SceneViewpointByCell" />
                        </node>
                        <node concept="37vLTw" id="61SA$zecHPe" role="10QFUP">
                          <ref role="3cqZAo" node="61SA$zecHON" resolve="viewpoint" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="61SA$zecHPf" role="37wK5m">
                        <ref role="3cqZAo" node="7oJsd9x52MU" resolve="backgroundLayer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="61SA$zecHPg" role="3clFbw">
                <node concept="Rm8GO" id="3tHZ0yHv26b" role="3uHU7w">
                  <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                  <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                </node>
                <node concept="37vLTw" id="61SA$zecHPi" role="3uHU7B">
                  <ref role="3cqZAo" node="bRdTVIcSJa" resolve="layout" />
                </node>
              </node>
              <node concept="9aQIb" id="61SA$zecHPj" role="9aQIa">
                <node concept="3clFbS" id="61SA$zecHPk" role="9aQI4">
                  <node concept="3clFbF" id="61SA$zecHPl" role="3cqZAp">
                    <node concept="2ShNRf" id="61SA$zecHPm" role="3clFbG">
                      <node concept="1pGfFk" id="61SA$zecHPn" role="2ShVmc">
                        <ref role="37wK5l" to="ar7i:~FullEditorBackgroundDragFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,jetbrains.mps.openapi.editor.cells.EditorCell,javax.swing.JViewport,org.fbme.scenes.controllers.scene.Layer)" resolve="FullEditorBackgroundDragFacility" />
                        <node concept="37vLTw" id="61SA$zecHPo" role="37wK5m">
                          <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                        </node>
                        <node concept="37vLTw" id="61SA$zecHPp" role="37wK5m">
                          <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                        </node>
                        <node concept="2OqwBi" id="61SA$zecHPq" role="37wK5m">
                          <node concept="37vLTw" id="2hWn4IdTZns" role="2Oq$k0">
                            <ref role="3cqZAo" node="2hWn4IdTWnC" resolve="component" />
                          </node>
                          <node concept="liA8E" id="61SA$zecHPw" role="2OqNvi">
                            <ref role="37wK5l" to="exr9:~EditorComponent.getViewport()" resolve="getViewport" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="61SA$zecHPx" role="37wK5m">
                          <ref role="3cqZAo" node="7oJsd9x52MU" resolve="backgroundLayer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="61SA$zecHPy" role="3cqZAp">
              <node concept="2ShNRf" id="61SA$zecHPz" role="3clFbG">
                <node concept="1pGfFk" id="61SA$zecHP$" role="2ShVmc">
                  <ref role="37wK5l" to="ar7i:~BackgroundFocusLossFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,org.fbme.scenes.controllers.SceneFocusModel,org.fbme.scenes.controllers.scene.Layer)" resolve="BackgroundFocusLossFacility" />
                  <node concept="37vLTw" id="61SA$zecHP_" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="37vLTw" id="61SA$zecHPA" role="37wK5m">
                    <ref role="3cqZAo" node="61SA$zecHP2" resolve="focus" />
                  </node>
                  <node concept="37vLTw" id="61SA$zecHPB" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52MU" resolve="backgroundLayer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7oJsd9x52ND" role="3cqZAp" />
            <node concept="3cpWs8" id="7oJsd9x52NE" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52NF" role="3cpWs9">
                <property role="TrG5h" value="componentsSelection" />
                <node concept="3uibUv" id="7oJsd9x52NG" role="1tU5fm">
                  <ref role="3uigEE" to="kdnk:~DefaultSelectionModel" resolve="DefaultSelectionModel" />
                  <node concept="3uibUv" id="6SLp5w3M72Z" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7oJsd9x52NH" role="33vP2m">
                  <node concept="1pGfFk" id="3tHZ0yHv0Lv" role="2ShVmc">
                    <ref role="37wK5l" to="kdnk:~DefaultSelectionModel.&lt;init&gt;()" resolve="DefaultSelectionModel" />
                    <node concept="3uibUv" id="6SLp5w3M8NQ" role="1pMfVU">
                      <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejr8xVy" role="3cqZAp">
              <node concept="2OqwBi" id="1DfKejr8zqB" role="3clFbG">
                <node concept="37vLTw" id="1DfKejr8xVw" role="2Oq$k0">
                  <ref role="3cqZAo" node="2hWn4IdU1wy" resolve="style" />
                </node>
                <node concept="liA8E" id="1DfKejr8$2v" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
                  <node concept="10M0yZ" id="6SLp5w3M9Q0" role="37wK5m">
                    <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                    <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  </node>
                  <node concept="37vLTw" id="1DfKejr8_fr" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52NF" resolve="componentsSelection" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1DfKejr8vU_" role="3cqZAp" />
            <node concept="3cpWs8" id="7oJsd9x52NJ" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52NK" role="3cpWs9">
                <property role="TrG5h" value="componentsLayout" />
                <node concept="3uibUv" id="7oJsd9x52NL" role="1tU5fm">
                  <ref role="3uigEE" to="kdnk:~DefaultLayoutModel" resolve="DefaultLayoutModel" />
                  <node concept="3uibUv" id="6SLp5w3M9Vf" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7oJsd9x52NM" role="33vP2m">
                  <node concept="1pGfFk" id="7oJsd9x52NN" role="2ShVmc">
                    <ref role="37wK5l" to="kdnk:~DefaultLayoutModel.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="DefaultLayoutModel" />
                    <node concept="2OqwBi" id="7oJsd9x52NO" role="37wK5m">
                      <node concept="37vLTw" id="7oJsd9x52NP" role="2Oq$k0">
                        <ref role="3cqZAo" node="7oJsd9x52P3" resolve="context" />
                      </node>
                      <node concept="liA8E" id="7oJsd9x52NQ" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="6SLp5w3Ma0u" role="1pMfVU">
                      <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
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
                  <ref role="3uigEE" to="2w4:~ComponentsFacility" resolve="ComponentsFacility" />
                  <node concept="3uibUv" id="6SLp5w3Ma5H" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                  <node concept="3uibUv" id="2syzu7r7_Ow" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7oJsd9x52NU" role="33vP2m">
                  <node concept="1pGfFk" id="7oJsd9x52NV" role="2ShVmc">
                    <ref role="37wK5l" to="2w4:~ComponentsFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,org.fbme.scenes.viewmodel.ComponentsView,org.fbme.scenes.controllers.components.ComponentControllerFactory,org.fbme.scenes.controllers.components.ComponentSynchronizer,org.fbme.scenes.controllers.LayoutModel,org.fbme.scenes.controllers.SelectionModel,org.fbme.scenes.controllers.SceneFocusModel,org.fbme.scenes.controllers.scene.Layer,org.fbme.scenes.controllers.scene.Layer)" resolve="ComponentsFacility" />
                    <node concept="37vLTw" id="7oJsd9x52NW" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                    </node>
                    <node concept="2OqwBi" id="2syzu7r4aSh" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQFJ3O" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQFFNL" resolve="networkView" />
                      </node>
                      <node concept="liA8E" id="4Hbpy_flADG" role="2OqNvi">
                        <ref role="37wK5l" to="1hzy:~NetworkView.getComponentsView()" resolve="getComponentsView" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1R4IoyQzDap" role="37wK5m">
                      <ref role="3cqZAo" node="6oXN8hZZXZ9" resolve="COMPONENT_CONTROLLER_FACTORY" />
                    </node>
                    <node concept="2ShNRf" id="7oJsd9x52NZ" role="37wK5m">
                      <node concept="1pGfFk" id="7oJsd9x52O0" role="2ShVmc">
                        <ref role="37wK5l" to="p24u:~FBNetworkComponentSynhcronizer.&lt;init&gt;(org.fbme.scenes.controllers.SceneViewpoint,float)" resolve="FBNetworkComponentSynhcronizer" />
                        <node concept="37vLTw" id="7oJsd9x52O1" role="37wK5m">
                          <ref role="3cqZAo" node="61SA$zecHON" resolve="viewpoint" />
                        </node>
                        <node concept="37vLTw" id="61SA$ze30mX" role="37wK5m">
                          <ref role="3cqZAo" node="1y1FD3qG6Z_" resolve="scale" />
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
                      <ref role="3cqZAo" node="61SA$zecHP2" resolve="focus" />
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52O5" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52N8" resolve="componentsLayer" />
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52O6" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52N1" resolve="tracesLayer" />
                    </node>
                    <node concept="3uibUv" id="6SLp5w3MaaX" role="1pMfVU">
                      <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
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
                  <ref role="37wK5l" to="sli2:~EditorCell_Scene.addCompletionProvider(org.fbme.scenes.controllers.scene.SceneCompletionProvider)" resolve="addCompletionProvider" />
                  <node concept="2ShNRf" id="7oJsd9x52Oc" role="37wK5m">
                    <node concept="1pGfFk" id="7oJsd9x52Od" role="2ShVmc">
                      <ref role="37wK5l" to="ar7i:~CompletionProviderByViewpoint.&lt;init&gt;(org.fbme.scenes.controllers.SceneViewpoint,java.util.function.Supplier)" resolve="CompletionProviderByViewpoint" />
                      <node concept="37vLTw" id="7oJsd9x52Oe" role="37wK5m">
                        <ref role="3cqZAo" node="61SA$zecHON" resolve="viewpoint" />
                      </node>
                      <node concept="1bVj0M" id="1R4IoyQydnH" role="37wK5m">
                        <node concept="3clFbS" id="1R4IoyQydnJ" role="1bW5cS">
                          <node concept="3clFbF" id="1R4IoyQyd__" role="3cqZAp">
                            <node concept="1rXfSq" id="1R4IoyQyd_$" role="3clFbG">
                              <ref role="37wK5l" node="1R4IoyQxYca" resolve="getCompletion" />
                              <node concept="1eOMI4" id="19RKY2xHRx3" role="37wK5m">
                                <node concept="10QFUN" id="19RKY2xHRx0" role="1eOMHV">
                                  <node concept="3uibUv" id="19RKY2xHRXw" role="10QFUM">
                                    <ref role="3uigEE" to="rwq3:1R4IoyQA3Yn" resolve="FBNetworkByNode" />
                                  </node>
                                  <node concept="2OqwBi" id="19RKY2xHPek" role="10QFUP">
                                    <node concept="37vLTw" id="1R4IoyQydOc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7oJsd9x52P1" resolve="networkInstance" />
                                    </node>
                                    <node concept="liA8E" id="5oxN2jlFUsU" role="2OqNvi">
                                      <ref role="37wK5l" to="74cb:~NetworkInstance.getNetworkDeclaration()" resolve="getNetworkDeclaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="6kcQr5wySCZ" role="37wK5m">
                                <ref role="3cqZAo" node="1y1FD3qG6Z_" resolve="scale" />
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
                  <ref role="3uigEE" to="gl2l:~ComponentExtsView" resolve="ComponentExtsView" />
                  <node concept="3uibUv" id="6SLp5w3Malx" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                  <node concept="3uibUv" id="6SLp5w3MaqL" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2syzu7r7KZp" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQFKoc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQFFNL" resolve="networkView" />
                  </node>
                  <node concept="liA8E" id="4Hbpy_fr1P8" role="2OqNvi">
                    <ref role="37wK5l" to="1hzy:~NetworkView.getExtensionsView()" resolve="getExtensionsView" />
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
                  <ref role="3uigEE" to="2w4:~ComponentsExtensionsFacility" resolve="ComponentsExtensionsFacility" />
                  <node concept="3uibUv" id="6SLp5w3Maw1" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                  </node>
                  <node concept="3uibUv" id="6SLp5w3Ma_i" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                  <node concept="3uibUv" id="2syzu7rfUdD" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2syzu7r4zFf" role="33vP2m">
                  <node concept="1pGfFk" id="2syzu7r4$eB" role="2ShVmc">
                    <ref role="37wK5l" to="2w4:~ComponentsExtensionsFacility.&lt;init&gt;(org.fbme.scenes.viewmodel.ComponentExtsView,org.fbme.scenes.controllers.components.ComponentsFacility,org.fbme.scenes.controllers.components.ComponentExtControllerFactory,org.fbme.scenes.controllers.scene.Layer,org.fbme.scenes.controllers.scene.Layer)" resolve="ComponentsExtensionsFacility" />
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
                <property role="TrG5h" value="componentProvider" />
                <node concept="3uibUv" id="1R4IoyRrtLh" role="1tU5fm">
                  <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
                  <node concept="3uibUv" id="6SLp5w3MaEz" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                  <node concept="3uibUv" id="6SLp5w3MaJN" role="11_B2D">
                    <ref role="3uigEE" to="p24u:~FBNetworkComponentController" resolve="FBNetworkComponentController" />
                  </node>
                </node>
                <node concept="1bVj0M" id="1R4IoyRrlha" role="33vP2m">
                  <node concept="3clFbS" id="1R4IoyRrlhb" role="1bW5cS">
                    <node concept="3clFbJ" id="1R4IoyRrlhc" role="3cqZAp">
                      <node concept="3clFbS" id="1R4IoyRrlhd" role="3clFbx">
                        <node concept="3cpWs6" id="1R4IoyRrlhe" role="3cqZAp">
                          <node concept="10QFUN" id="1R4IoyRrlhf" role="3cqZAk">
                            <node concept="3uibUv" id="6SLp5w3Mb4K" role="10QFUM">
                              <ref role="3uigEE" to="p24u:~FBNetworkComponentController" resolve="FBNetworkComponentController" />
                            </node>
                            <node concept="2OqwBi" id="1R4IoyRrlhh" role="10QFUP">
                              <node concept="37vLTw" id="1R4IoyRrlhi" role="2Oq$k0">
                                <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                              </node>
                              <node concept="liA8E" id="1R4IoyRrlhj" role="2OqNvi">
                                <ref role="37wK5l" to="2w4:~ComponentsExtensionsFacility.getController(java.lang.Object)" resolve="getController" />
                                <node concept="37vLTw" id="1R4IoyRrlhm" role="37wK5m">
                                  <ref role="3cqZAo" node="1R4IoyRrlhx" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="22lmx$" id="4Hbpy_frvyg" role="3clFbw">
                        <node concept="2ZW3vV" id="4Hbpy_frx3M" role="3uHU7w">
                          <node concept="3uibUv" id="6SLp5w3MaZx" role="2ZW6by">
                            <ref role="3uigEE" to="1hzy:~BrokenPortView" resolve="BrokenPortView" />
                          </node>
                          <node concept="37vLTw" id="4Hbpy_frwfA" role="2ZW6bz">
                            <ref role="3cqZAo" node="1R4IoyRrlhx" resolve="it" />
                          </node>
                        </node>
                        <node concept="2ZW3vV" id="1R4IoyRrlhn" role="3uHU7B">
                          <node concept="3uibUv" id="6SLp5w3MaUi" role="2ZW6by">
                            <ref role="3uigEE" to="1hzy:~InlineValueView" resolve="InlineValueView" />
                          </node>
                          <node concept="37vLTw" id="1R4IoyRrlhp" role="2ZW6bz">
                            <ref role="3cqZAo" node="1R4IoyRrlhx" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1R4IoyRrlhq" role="3cqZAp">
                      <node concept="10QFUN" id="1R4IoyRrlhr" role="3clFbG">
                        <node concept="3uibUv" id="6SLp5w3Mb9Z" role="10QFUM">
                          <ref role="3uigEE" to="p24u:~FBNetworkComponentController" resolve="FBNetworkComponentController" />
                        </node>
                        <node concept="2OqwBi" id="1R4IoyRrlht" role="10QFUP">
                          <node concept="37vLTw" id="1R4IoyRrlhu" role="2Oq$k0">
                            <ref role="3cqZAo" node="7oJsd9x52NS" resolve="componentsFacility" />
                          </node>
                          <node concept="liA8E" id="1R4IoyRrlhv" role="2OqNvi">
                            <ref role="37wK5l" to="2w4:~ComponentsFacility.getController(java.lang.Object)" resolve="getController" />
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
                    <node concept="3uibUv" id="6SLp5w3MaP3" role="1tU5fm">
                      <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2wHo_lFTuXA" role="3cqZAp" />
            <node concept="3clFbH" id="1R4IoyRrrv$" role="3cqZAp" />
            <node concept="3cpWs8" id="7oJsd9x52Oj" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52Ok" role="3cpWs9">
                <property role="TrG5h" value="portSettings" />
                <node concept="3uibUv" id="6SLp5w3Mbfe" role="1tU5fm">
                  <ref role="3uigEE" to="p24u:~FBPortSettingProvider" resolve="FBPortSettingProvider" />
                </node>
                <node concept="2ShNRf" id="2syzu7rgjob" role="33vP2m">
                  <node concept="1pGfFk" id="2syzu7rgkme" role="2ShVmc">
                    <ref role="37wK5l" to="p24u:~FBPortSettingProvider.&lt;init&gt;(java.util.function.Function)" resolve="FBPortSettingProvider" />
                    <node concept="37vLTw" id="1R4IoyRrlhz" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRrlh9" resolve="componentProvider" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2syzu7rgam8" role="3cqZAp">
              <node concept="3cpWsn" id="2syzu7rgam9" role="3cpWs9">
                <property role="TrG5h" value="diagramComponentSettings" />
                <node concept="3uibUv" id="2syzu7rgam7" role="1tU5fm">
                  <ref role="3uigEE" to="tamd:~DiagramComponentSettingProvider" resolve="DiagramComponentSettingProvider" />
                  <node concept="3uibUv" id="6SLp5w3MbpL" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                  <node concept="3uibUv" id="2syzu7rgaj8" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2syzu7rgama" role="33vP2m">
                  <node concept="YeOm9" id="2syzu7rgamb" role="2ShVmc">
                    <node concept="1Y3b0j" id="2syzu7rgamc" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="tamd:~DiagramComponentSettingProvider" resolve="DiagramComponentSettingProvider" />
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
                          <node concept="3uibUv" id="6SLp5w3MbLx" role="1tU5fm">
                            <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                          </node>
                          <node concept="2AHcQZ" id="2syzu7rgamk" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2syzu7rgaml" role="3clF47">
                          <node concept="3clFbJ" id="2syzu7rgamm" role="3cqZAp">
                            <node concept="22lmx$" id="4Hbpy_fwlaP" role="3clFbw">
                              <node concept="2ZW3vV" id="4Hbpy_fwnmB" role="3uHU7w">
                                <node concept="3uibUv" id="6SLp5w3Mc9f" role="2ZW6by">
                                  <ref role="3uigEE" to="1hzy:~BrokenPortView" resolve="BrokenPortView" />
                                </node>
                                <node concept="37vLTw" id="4Hbpy_fwmhw" role="2ZW6bz">
                                  <ref role="3cqZAo" node="2syzu7rgami" resolve="component" />
                                </node>
                              </node>
                              <node concept="2ZW3vV" id="2syzu7rgamn" role="3uHU7B">
                                <node concept="3uibUv" id="6SLp5w3MbXo" role="2ZW6by">
                                  <ref role="3uigEE" to="1hzy:~InlineValueView" resolve="InlineValueView" />
                                </node>
                                <node concept="37vLTw" id="2syzu7rgamp" role="2ZW6bz">
                                  <ref role="3cqZAo" node="2syzu7rgami" resolve="component" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="2syzu7rgamq" role="3clFbx">
                              <node concept="3cpWs6" id="2syzu7rgamr" role="3cqZAp">
                                <node concept="2OqwBi" id="2syzu7rgams" role="3cqZAk">
                                  <node concept="37vLTw" id="2syzu7rgamt" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                                  </node>
                                  <node concept="liA8E" id="2syzu7rgamu" role="2OqNvi">
                                    <ref role="37wK5l" to="2w4:~ComponentsExtensionsFacility.getModelForm(java.lang.Object)" resolve="getModelForm" />
                                    <node concept="37vLTw" id="2syzu7rgamx" role="37wK5m">
                                      <ref role="3cqZAo" node="2syzu7rgami" resolve="component" />
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
                                <ref role="37wK5l" to="2w4:~ComponentsFacility.getModelForm(java.lang.Object)" resolve="getModelForm" />
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
                          <node concept="3uibUv" id="6SLp5w3Me$S" role="1tU5fm">
                            <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                          </node>
                          <node concept="2AHcQZ" id="2syzu7rgamH" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2syzu7rgamI" role="3clF47">
                          <node concept="3clFbJ" id="2syzu7rgamJ" role="3cqZAp">
                            <node concept="3clFbS" id="2syzu7rgamN" role="3clFbx">
                              <node concept="3cpWs6" id="2syzu7rgamO" role="3cqZAp">
                                <node concept="2OqwBi" id="2syzu7rgamP" role="3cqZAk">
                                  <node concept="37vLTw" id="2syzu7rgamQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                                  </node>
                                  <node concept="liA8E" id="2syzu7rgamR" role="2OqNvi">
                                    <ref role="37wK5l" to="2w4:~ComponentsExtensionsFacility.getTransformedForm(java.lang.Object)" resolve="getTransformedForm" />
                                    <node concept="37vLTw" id="2syzu7rgamU" role="37wK5m">
                                      <ref role="3cqZAo" node="2syzu7rgamF" resolve="component" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="22lmx$" id="4Hbpy_fwpOy" role="3clFbw">
                              <node concept="2ZW3vV" id="4Hbpy_fwpOz" role="3uHU7w">
                                <node concept="3uibUv" id="6SLp5w3MeWA" role="2ZW6by">
                                  <ref role="3uigEE" to="1hzy:~BrokenPortView" resolve="BrokenPortView" />
                                </node>
                                <node concept="37vLTw" id="4Hbpy_fwpO_" role="2ZW6bz">
                                  <ref role="3cqZAo" node="2syzu7rgamF" resolve="component" />
                                </node>
                              </node>
                              <node concept="2ZW3vV" id="4Hbpy_fwpOA" role="3uHU7B">
                                <node concept="3uibUv" id="6SLp5w3MeKJ" role="2ZW6by">
                                  <ref role="3uigEE" to="1hzy:~InlineValueView" resolve="InlineValueView" />
                                </node>
                                <node concept="37vLTw" id="4Hbpy_fwpOC" role="2ZW6bz">
                                  <ref role="3cqZAo" node="2syzu7rgamF" resolve="component" />
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
                                <ref role="37wK5l" to="2w4:~ComponentsFacility.getTransformedForm(java.lang.Object)" resolve="getTransformedForm" />
                                <node concept="37vLTw" id="2syzu7rgamZ" role="37wK5m">
                                  <ref role="3cqZAo" node="2syzu7rgamF" resolve="component" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="6SLp5w3Mb_D" role="2Ghqu4">
                        <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
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
                  <ref role="3uigEE" to="tamd:~DiagramFacility" resolve="DiagramFacility" />
                  <node concept="3uibUv" id="6SLp5w3Mf1P" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                  <node concept="3uibUv" id="6SLp5w3Mf77" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkPortView" resolve="NetworkPortView" />
                  </node>
                  <node concept="3uibUv" id="6SLp5w3Mfcp" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkConnectionView" resolve="NetworkConnectionView" />
                  </node>
                  <node concept="3uibUv" id="2syzu7reiv2" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7oJsd9x52Or" role="33vP2m">
                  <node concept="1pGfFk" id="7oJsd9x52Os" role="2ShVmc">
                    <ref role="37wK5l" to="tamd:~DiagramFacility.&lt;init&gt;(org.fbme.scenes.controllers.diagram.DiagramView,org.fbme.scenes.controllers.diagram.PortSettingProvider,org.fbme.scenes.controllers.diagram.DiagramComponentSettingProvider)" resolve="DiagramFacility" />
                    <node concept="2OqwBi" id="2syzu7r4jNT" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQFL_M" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQFFNL" resolve="networkView" />
                      </node>
                      <node concept="liA8E" id="2syzu7r4kAT" role="2OqNvi">
                        <ref role="37wK5l" to="1hzy:~NetworkView.getDiagramView()" resolve="getDiagramView" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52Ov" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52Ok" resolve="portSettings" />
                    </node>
                    <node concept="37vLTw" id="2syzu7rgan2" role="37wK5m">
                      <ref role="3cqZAo" node="2syzu7rgam9" resolve="diagramComponentSettings" />
                    </node>
                    <node concept="3uibUv" id="6SLp5w3MfhF" role="1pMfVU">
                      <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                    </node>
                    <node concept="3uibUv" id="6SLp5w3MfmX" role="1pMfVU">
                      <ref role="3uigEE" to="1hzy:~NetworkPortView" resolve="NetworkPortView" />
                    </node>
                    <node concept="3uibUv" id="6SLp5w3Mfsf" role="1pMfVU">
                      <ref role="3uigEE" to="1hzy:~NetworkConnectionView" resolve="NetworkConnectionView" />
                    </node>
                    <node concept="3uibUv" id="4Hbpy_fwsOo" role="1pMfVU">
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
                  <ref role="3uigEE" to="kdnk:~ROLayoutModel" resolve="ROLayoutModel" />
                  <node concept="3uibUv" id="6SLp5w3Mfxx" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2syzu7r4nQb" role="33vP2m">
                  <node concept="1pGfFk" id="2syzu7r4opn" role="2ShVmc">
                    <ref role="37wK5l" to="kdnk:~ExtendedLayoutModel.&lt;init&gt;(org.fbme.scenes.controllers.LayoutModel,java.util.function.BiFunction,java.util.function.BiFunction,java.util.function.Function)" resolve="ExtendedLayoutModel" />
                    <node concept="37vLTw" id="2syzu7r4txA" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52NK" resolve="componentsLayout" />
                    </node>
                    <node concept="1bVj0M" id="2syzu7r5Ss9" role="37wK5m">
                      <node concept="3clFbS" id="2syzu7r5Ssb" role="1bW5cS">
                        <node concept="3clFbF" id="2syzu7r5Xg6" role="3cqZAp">
                          <node concept="2OqwBi" id="2syzu7r5Z7A" role="3clFbG">
                            <node concept="1eOMI4" id="2syzu7r60CI" role="2Oq$k0">
                              <node concept="10QFUN" id="2syzu7r61B2" role="1eOMHV">
                                <node concept="3uibUv" id="6SLp5w3MfVM" role="10QFUM">
                                  <ref role="3uigEE" to="p24u:~InlineValueController" resolve="InlineValueController" />
                                </node>
                                <node concept="2OqwBi" id="2syzu7r5Xvd" role="10QFUP">
                                  <node concept="37vLTw" id="2syzu7r5Xg5" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                                  </node>
                                  <node concept="liA8E" id="2syzu7r5XNw" role="2OqNvi">
                                    <ref role="37wK5l" to="2w4:~ComponentsExtensionsFacility.getController(java.lang.Object)" resolve="getController" />
                                    <node concept="37vLTw" id="2syzu7r5Y2v" role="37wK5m">
                                      <ref role="3cqZAo" node="2syzu7r5VUu" resolve="view" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="2syzu7r6wgn" role="2OqNvi">
                              <ref role="37wK5l" to="p24u:~InlineValueController.getCoordinates(java.awt.Point)" resolve="getCoordinates" />
                              <node concept="37vLTw" id="2syzu7r6wBZ" role="37wK5m">
                                <ref role="3cqZAo" node="2syzu7r62qu" resolve="compPosition" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7r5VUu" role="1bW2Oz">
                        <property role="TrG5h" value="view" />
                        <node concept="3uibUv" id="6SLp5w3MfQz" role="1tU5fm">
                          <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
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
                                <node concept="3uibUv" id="6SLp5w3Mg6D" role="10QFUM">
                                  <ref role="3uigEE" to="p24u:~InlineValueController" resolve="InlineValueController" />
                                </node>
                                <node concept="2OqwBi" id="2syzu7r7GyJ" role="10QFUP">
                                  <node concept="37vLTw" id="2syzu7r7GyK" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                                  </node>
                                  <node concept="liA8E" id="2syzu7r7GyL" role="2OqNvi">
                                    <ref role="37wK5l" to="2w4:~ComponentsExtensionsFacility.getController(java.lang.Object)" resolve="getController" />
                                    <node concept="37vLTw" id="2syzu7r7GyM" role="37wK5m">
                                      <ref role="3cqZAo" node="2syzu7r7GyP" resolve="view" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="2syzu7r7GyN" role="2OqNvi">
                              <ref role="37wK5l" to="p24u:~InlineValueController.getBounds(java.awt.Point)" resolve="getBounds" />
                              <node concept="37vLTw" id="2syzu7r7GyO" role="37wK5m">
                                <ref role="3cqZAo" node="2syzu7r7GyR" resolve="compPosition" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7r7GyP" role="1bW2Oz">
                        <property role="TrG5h" value="view" />
                        <node concept="3uibUv" id="6SLp5w3Mg1q" role="1tU5fm">
                          <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7r7GyR" role="1bW2Oz">
                        <property role="TrG5h" value="compPosition" />
                        <node concept="3uibUv" id="2syzu7r7GyS" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="6SLp5w3MfAK" role="1pMfVU">
                      <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                    </node>
                    <node concept="3uibUv" id="6SLp5w3MfG1" role="1pMfVU">
                      <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                    </node>
                    <node concept="3uibUv" id="6SLp5w3MfLi" role="1pMfVU">
                      <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                    </node>
                    <node concept="1bVj0M" id="2syzu7r7Nz4" role="37wK5m">
                      <node concept="3clFbS" id="2syzu7r7Nz6" role="1bW5cS">
                        <node concept="3clFbF" id="2syzu7r7OSP" role="3cqZAp">
                          <node concept="2OqwBi" id="2syzu7r7QyD" role="3clFbG">
                            <node concept="37vLTw" id="2syzu7r7OSO" role="2Oq$k0">
                              <ref role="3cqZAo" node="2syzu7r7KZo" resolve="inlineValuesView" />
                            </node>
                            <node concept="liA8E" id="2syzu7r7RdV" role="2OqNvi">
                              <ref role="37wK5l" to="gl2l:~ComponentExtsView.getExtensions(java.lang.Object)" resolve="getExtensions" />
                              <node concept="37vLTw" id="2syzu7r7RGf" role="37wK5m">
                                <ref role="3cqZAo" node="2syzu7r7NYo" resolve="view" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7r7NYo" role="1bW2Oz">
                        <property role="TrG5h" value="view" />
                        <node concept="3uibUv" id="6SLp5w3Mgch" role="1tU5fm">
                          <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2syzu7r4lxI" role="3cqZAp" />
            <node concept="3cpWs8" id="2wHo_lFU6jV" role="3cqZAp">
              <node concept="3cpWsn" id="2wHo_lFU6jW" role="3cpWs9">
                <property role="TrG5h" value="connectionsFacility" />
                <node concept="3uibUv" id="3tHZ0yHv9QO" role="1tU5fm">
                  <ref role="3uigEE" to="tamd:~ConnectionsFacility" resolve="ConnectionsFacility" />
                </node>
                <node concept="2ShNRf" id="2wHo_lFU6jX" role="33vP2m">
                  <node concept="1pGfFk" id="2wHo_lFU6jY" role="2ShVmc">
                    <ref role="37wK5l" to="tamd:~ConnectionsFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,org.fbme.scenes.controllers.diagram.ConnectionControllerFactory,java.util.function.BiFunction,java.util.function.BiConsumer,org.fbme.scenes.controllers.diagram.ConnectionPathSyncronizer,org.fbme.scenes.controllers.ROLayoutModel,org.fbme.scenes.controllers.SelectionModel,org.fbme.scenes.controllers.diagram.DiagramController,org.fbme.scenes.controllers.scene.Layer,org.fbme.scenes.controllers.scene.Layer,org.fbme.scenes.controllers.SceneFocusModel)" resolve="ConnectionsFacility" />
                    <node concept="37vLTw" id="2wHo_lFU6jZ" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                    </node>
                    <node concept="37vLTw" id="2wHo_lFU6k0" role="37wK5m">
                      <ref role="3cqZAo" node="4y$DvIXmGPh" resolve="CONNECTION_CONTROLLER_FACTORY" />
                    </node>
                    <node concept="2YIFZM" id="2wHo_lFU6k1" role="37wK5m">
                      <ref role="1Pybhc" to="p24u:~FBConnectionUtils" resolve="FBConnectionUtils" />
                      <ref role="37wK5l" to="p24u:~FBConnectionUtils.getPathFactory(jetbrains.mps.openapi.editor.style.Style)" resolve="getPathFactory" />
                      <node concept="37vLTw" id="2wHo_lFU6k2" role="37wK5m">
                        <ref role="3cqZAo" node="2hWn4IdU1wy" resolve="style" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="2wHo_lFU6k3" role="37wK5m">
                      <ref role="1Pybhc" to="p24u:~FBConnectionUtils" resolve="FBConnectionUtils" />
                      <ref role="37wK5l" to="p24u:~FBConnectionUtils.getPathPainter(jetbrains.mps.openapi.editor.style.Style)" resolve="getPathPainter" />
                      <node concept="37vLTw" id="2wHo_lFU6k4" role="37wK5m">
                        <ref role="3cqZAo" node="2hWn4IdU1wy" resolve="style" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="2wHo_lFU6k5" role="37wK5m">
                      <node concept="1pGfFk" id="2wHo_lFU6k6" role="2ShVmc">
                        <ref role="37wK5l" to="p24u:~FBConnectionPathSyncronizer.&lt;init&gt;(org.fbme.scenes.controllers.SceneViewpoint,float)" resolve="FBConnectionPathSyncronizer" />
                        <node concept="37vLTw" id="2wHo_lFU6k7" role="37wK5m">
                          <ref role="3cqZAo" node="61SA$zecHON" resolve="viewpoint" />
                        </node>
                        <node concept="37vLTw" id="2wHo_lFU6k8" role="37wK5m">
                          <ref role="3cqZAo" node="1y1FD3qG6Z_" resolve="scale" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2wHo_lFU6k9" role="37wK5m">
                      <ref role="3cqZAo" node="2syzu7r4n08" resolve="extendedLayout" />
                    </node>
                    <node concept="37vLTw" id="2wHo_lFU6ka" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52NF" resolve="componentsSelection" />
                    </node>
                    <node concept="2OqwBi" id="2wHo_lFU6kb" role="37wK5m">
                      <node concept="37vLTw" id="2wHo_lFU6kc" role="2Oq$k0">
                        <ref role="3cqZAo" node="7oJsd9x52Op" resolve="diagramFacility" />
                      </node>
                      <node concept="liA8E" id="2wHo_lFU6kd" role="2OqNvi">
                        <ref role="37wK5l" to="tamd:~DiagramFacility.getDiagramController()" resolve="getDiagramController" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2wHo_lFU6ke" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52Nf" resolve="connectionsLayer" />
                    </node>
                    <node concept="37vLTw" id="2wHo_lFU6kf" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52N1" resolve="tracesLayer" />
                    </node>
                    <node concept="37vLTw" id="2wHo_lFU6kg" role="37wK5m">
                      <ref role="3cqZAo" node="61SA$zecHP2" resolve="focus" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyRrbvF" role="3cqZAp" />
            <node concept="3cpWs8" id="2wHo_lFTwNw" role="3cqZAp">
              <node concept="3cpWsn" id="2wHo_lFTwNz" role="3cpWs9">
                <property role="TrG5h" value="connectionProvider" />
                <node concept="3uibUv" id="2wHo_lFTwN$" role="1tU5fm">
                  <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
                  <node concept="3uibUv" id="6SLp5w3Mgqg" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkConnectionView" resolve="NetworkConnectionView" />
                  </node>
                  <node concept="3uibUv" id="6SLp5w3Mgvw" role="11_B2D">
                    <ref role="3uigEE" to="p24u:~FBConnectionController" resolve="FBConnectionController" />
                  </node>
                </node>
                <node concept="1bVj0M" id="2wHo_lFTwNB" role="33vP2m">
                  <node concept="3clFbS" id="2wHo_lFTwNC" role="1bW5cS">
                    <node concept="3clFbF" id="2wHo_lFUbXo" role="3cqZAp">
                      <node concept="10QFUN" id="2wHo_lFVEGG" role="3clFbG">
                        <node concept="3uibUv" id="6SLp5w3MgDZ" role="10QFUM">
                          <ref role="3uigEE" to="p24u:~FBConnectionController" resolve="FBConnectionController" />
                        </node>
                        <node concept="2OqwBi" id="2wHo_lFUcXa" role="10QFUP">
                          <node concept="37vLTw" id="2wHo_lFUbXm" role="2Oq$k0">
                            <ref role="3cqZAo" node="2wHo_lFU6jW" resolve="connectionsFacility" />
                          </node>
                          <node concept="liA8E" id="2wHo_lFVCPD" role="2OqNvi">
                            <ref role="37wK5l" to="tamd:~ConnectionsFacility.getController(java.lang.Object)" resolve="getController" />
                            <node concept="37vLTw" id="2wHo_lFVDKI" role="37wK5m">
                              <ref role="3cqZAo" node="2wHo_lFTwO0" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="2wHo_lFTwO0" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="3uibUv" id="6SLp5w3Mg$K" role="1tU5fm">
                      <ref role="3uigEE" to="1hzy:~NetworkConnectionView" resolve="NetworkConnectionView" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2wHo_lFU3Um" role="3cqZAp" />
            <node concept="3clFbF" id="1R4IoyRtLpc" role="3cqZAp">
              <node concept="2ShNRf" id="1R4IoyRrE0E" role="3clFbG">
                <node concept="1pGfFk" id="1R4IoyRrE0F" role="2ShVmc">
                  <ref role="37wK5l" to="ek6x:~NetworkInspectionsFacility.&lt;init&gt;(org.fbme.ide.richediting.viewmodel.NetworkView,org.fbme.lib.iec61499.instances.NetworkInstance,org.fbme.scenes.controllers.scene.SceneEditor,java.util.function.Function,java.util.function.Function,org.fbme.scenes.controllers.ROLayoutModel,org.fbme.scenes.controllers.scene.Layer)" resolve="NetworkInspectionsFacility" />
                  <node concept="37vLTw" id="4Hbpy_fJLWB" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQFFNL" resolve="networkView" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRrE0G" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52P1" resolve="networkInstance" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRrE0H" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRrE0I" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRrlh9" resolve="componentProvider" />
                  </node>
                  <node concept="37vLTw" id="2wHo_lFVIr2" role="37wK5m">
                    <ref role="3cqZAo" node="2wHo_lFTwNz" resolve="connectionProvider" />
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
          <node concept="3uVAMA" id="7oJsd9x52OO" role="1zxBo5">
            <node concept="XOnhg" id="7oJsd9x52OP" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="2JUoCFFNLKG" role="1tU5fm">
                <node concept="3uibUv" id="7oJsd9x52OQ" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7oJsd9x52OR" role="1zc67A">
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
        <node concept="3uibUv" id="3tHZ0yHuROG" role="1tU5fm">
          <ref role="3uigEE" to="sli2:~EditorCell_Scene" resolve="EditorCell_Scene" />
        </node>
      </node>
      <node concept="37vLTG" id="7oJsd9x52P1" role="3clF46">
        <property role="TrG5h" value="networkInstance" />
        <node concept="3uibUv" id="19RKY2xBTBd" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="7oJsd9x52P3" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7oJsd9x52P4" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="bRdTVIcSJa" role="3clF46">
        <property role="TrG5h" value="layout" />
        <node concept="3uibUv" id="3tHZ0yHuT3i" role="1tU5fm">
          <ref role="3uigEE" to="ar7i:~SceneLayout" resolve="SceneLayout" />
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
        <ref role="3uigEE" to="tamd:~ConnectionControllerFactory" resolve="ConnectionControllerFactory" />
        <node concept="3uibUv" id="6SLp5w3MgOy" role="11_B2D">
          <ref role="3uigEE" to="1hzy:~NetworkConnectionView" resolve="NetworkConnectionView" />
        </node>
        <node concept="3uibUv" id="6SLp5w3MgTN" role="11_B2D">
          <ref role="3uigEE" to="p24u:~FBConnectionCursor" resolve="FBConnectionCursor" />
        </node>
        <node concept="3uibUv" id="6SLp5w3MgZ4" role="11_B2D">
          <ref role="3uigEE" to="p24u:~FBConnectionPath" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="2ShNRf" id="4y$DvIXmPzd" role="33vP2m">
        <node concept="YeOm9" id="4y$DvIXmQD2" role="2ShVmc">
          <node concept="1Y3b0j" id="4y$DvIXmQD5" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="tamd:~ConnectionControllerFactory" resolve="ConnectionControllerFactory" />
            <node concept="3Tm1VV" id="4y$DvIXmQD6" role="1B3o_S" />
            <node concept="3clFb_" id="4y$DvIXmQD8" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="4y$DvIXmQDa" role="1B3o_S" />
              <node concept="3uibUv" id="3tHZ0yHvcvv" role="3clF45">
                <ref role="3uigEE" to="tamd:~ConnectionController" resolve="ConnectionController" />
              </node>
              <node concept="37vLTG" id="4y$DvIXmQDc" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="4y$DvIXmQDd" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                </node>
              </node>
              <node concept="37vLTG" id="4y$DvIXmQDe" role="3clF46">
                <property role="TrG5h" value="view" />
                <node concept="3uibUv" id="6SLp5w3MhPg" role="1tU5fm">
                  <ref role="3uigEE" to="1hzy:~NetworkConnectionView" resolve="NetworkConnectionView" />
                </node>
              </node>
              <node concept="3clFbS" id="4y$DvIXmQDi" role="3clF47">
                <node concept="3cpWs6" id="7PF$iX$pNhn" role="3cqZAp">
                  <node concept="2ShNRf" id="7PF$iX$pNho" role="3cqZAk">
                    <node concept="1pGfFk" id="7PF$iX$pNhp" role="2ShVmc">
                      <ref role="37wK5l" to="p24u:~FBConnectionController.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.fbme.ide.richediting.viewmodel.NetworkConnectionView)" resolve="FBConnectionController" />
                      <node concept="37vLTw" id="1pJxKgrwqVW" role="37wK5m">
                        <ref role="3cqZAo" node="4y$DvIXmQDc" resolve="context" />
                      </node>
                      <node concept="37vLTw" id="4Hbpy_ft9La" role="37wK5m">
                        <ref role="3cqZAo" node="4y$DvIXmQDe" resolve="view" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="6SLp5w3MhcB" role="2Ghqu4">
              <ref role="3uigEE" to="1hzy:~NetworkConnectionView" resolve="NetworkConnectionView" />
            </node>
            <node concept="3uibUv" id="6SLp5w3Mhqa" role="2Ghqu4">
              <ref role="3uigEE" to="p24u:~FBConnectionCursor" resolve="FBConnectionCursor" />
            </node>
            <node concept="3uibUv" id="6SLp5w3MhBH" role="2Ghqu4">
              <ref role="3uigEE" to="p24u:~FBConnectionPath" resolve="FBConnectionPath" />
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
        <ref role="3uigEE" to="2w4:~ComponentExtControllerFactory" resolve="ComponentExtControllerFactory" />
        <node concept="3uibUv" id="6SLp5w3MiiM" role="11_B2D">
          <ref role="3uigEE" to="1hzy:~InlineValueView" resolve="InlineValueView" />
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
            <ref role="1Y3XeK" to="2w4:~ComponentExtControllerFactory" resolve="ComponentExtControllerFactory" />
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
                <node concept="3uibUv" id="6SLp5w3MiEy" role="1tU5fm">
                  <ref role="3uigEE" to="1hzy:~InlineValueView" resolve="InlineValueView" />
                </node>
              </node>
              <node concept="37vLTG" id="2syzu7r0IIH" role="3clF46">
                <property role="TrG5h" value="compController" />
                <node concept="3uibUv" id="2syzu7r0III" role="1tU5fm">
                  <ref role="3uigEE" to="2w4:~ComponentController" resolve="ComponentController" />
                  <node concept="3uibUv" id="2syzu7r0IIV" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="2syzu7r0IIL" role="3clF45">
                <ref role="3uigEE" to="2w4:~ComponentExtController" resolve="ComponentExtController" />
                <node concept="3uibUv" id="2syzu7r0IIW" role="11_B2D">
                  <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                </node>
              </node>
              <node concept="3clFbS" id="2syzu7r0IIN" role="3clF47">
                <node concept="3clFbJ" id="2syzu7r3vPv" role="3cqZAp">
                  <node concept="3fqX7Q" id="2syzu7r3xgQ" role="3clFbw">
                    <node concept="1eOMI4" id="2syzu7r3xIj" role="3fr31v">
                      <node concept="2ZW3vV" id="2syzu7r3xgS" role="1eOMHV">
                        <node concept="3uibUv" id="6SLp5w3MiQp" role="2ZW6by">
                          <ref role="3uigEE" to="p24u:~FunctionBlockController" resolve="FunctionBlockController" />
                        </node>
                        <node concept="37vLTw" id="2syzu7r3xgU" role="2ZW6bz">
                          <ref role="3cqZAo" node="2syzu7r0IIH" resolve="compController" />
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
                <node concept="3clFbH" id="2yJZQx2yrPp" role="3cqZAp" />
                <node concept="3cpWs8" id="2yJZQx2yONe" role="3cqZAp">
                  <node concept="3cpWsn" id="2yJZQx2yONf" role="3cpWs9">
                    <property role="TrG5h" value="repository" />
                    <node concept="3uibUv" id="739Y6csO1z_" role="1tU5fm">
                      <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
                    </node>
                    <node concept="2YIFZM" id="2yJZQx2yRES" role="33vP2m">
                      <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                      <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                      <node concept="2OqwBi" id="2yJZQx2yJ3D" role="37wK5m">
                        <node concept="2OqwBi" id="2yJZQx2yIne" role="2Oq$k0">
                          <node concept="37vLTw" id="2yJZQx2yxid" role="2Oq$k0">
                            <ref role="3cqZAo" node="2syzu7r0IID" resolve="context" />
                          </node>
                          <node concept="liA8E" id="2yJZQx2yIUV" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2yJZQx2yJAt" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2yJZQx2ytPV" role="3cqZAp" />
                <node concept="3cpWs8" id="5HzRr7EMgeA" role="3cqZAp">
                  <node concept="3cpWsn" id="5HzRr7EMgeB" role="3cpWs9">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="5HzRr7EMefc" role="1tU5fm" />
                    <node concept="2OqwBi" id="5HzRr7EMgeC" role="33vP2m">
                      <node concept="37vLTw" id="4Hbpy_fsqd7" role="2Oq$k0">
                        <ref role="3cqZAo" node="2syzu7r0IIF" resolve="extView" />
                      </node>
                      <node concept="liA8E" id="6SLp5w3Mkge" role="2OqNvi">
                        <ref role="37wK5l" to="1hzy:~InlineValueView.getAssociatedNode()" resolve="getAssociatedNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5HzRr7EMQuy" role="3cqZAp">
                  <node concept="3cpWsn" id="5HzRr7EMQuz" role="3cpWs9">
                    <property role="TrG5h" value="parameterNode" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3Tqbb2" id="5HzRr7EMQu$" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
                    </node>
                    <node concept="1PxgMI" id="5HzRr7EMQu_" role="33vP2m">
                      <node concept="chp4Y" id="5HzRr7EN648" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
                      </node>
                      <node concept="2OqwBi" id="4Hbpy_fsQGG" role="1m5AlR">
                        <node concept="37vLTw" id="5HzRr7EMQuB" role="2Oq$k0">
                          <ref role="3cqZAo" node="5HzRr7EMgeB" resolve="node" />
                        </node>
                        <node concept="1mfA1w" id="4Hbpy_fsR21" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4FdYnQCbitu" role="3cqZAp">
                  <node concept="3cpWsn" id="4FdYnQCbitv" role="3cpWs9">
                    <property role="TrG5h" value="parameter" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="4FdYnQCbkt1" role="1tU5fm">
                      <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
                    </node>
                    <node concept="2OqwBi" id="4FdYnQCbitx" role="33vP2m">
                      <node concept="37vLTw" id="2yJZQx2yVPN" role="2Oq$k0">
                        <ref role="3cqZAo" node="2yJZQx2yONf" resolve="repository" />
                      </node>
                      <node concept="liA8E" id="4FdYnQCbit_" role="2OqNvi">
                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                        <node concept="37vLTw" id="4FdYnQCbjQ8" role="37wK5m">
                          <ref role="3cqZAo" node="5HzRr7EMQuz" resolve="parameterNode" />
                        </node>
                        <node concept="3VsKOn" id="4FdYnQCbitD" role="37wK5m">
                          <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
                        </node>
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
                    <node concept="2OqwBi" id="5HzRr7EMQuE" role="33vP2m">
                      <node concept="37vLTw" id="5HzRr7EMQuF" role="2Oq$k0">
                        <ref role="3cqZAo" node="2syzu7r0IID" resolve="context" />
                      </node>
                      <node concept="2CJim2" id="5HzRr7EMQuG" role="2OqNvi">
                        <node concept="37vLTw" id="5HzRr7EMQuH" role="2CJshu">
                          <ref role="3cqZAo" node="5HzRr7EMQuz" resolve="parameterNode" />
                        </node>
                        <node concept="2CJsh3" id="5HzRr7EMQuI" role="2CJshi">
                          <node concept="3F1sOY" id="5HzRr7EMQuJ" role="2wV5jI">
                            <ref role="1NtTu8" to="xiqq:2lwHqHkyF7f" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5HzRr7EMQuL" role="3cqZAp">
                  <node concept="3clFbS" id="5HzRr7EMQuM" role="3clFbx">
                    <node concept="3cpWs8" id="5HzRr7EMQuN" role="3cqZAp">
                      <node concept="3cpWsn" id="5HzRr7EMQuO" role="3cpWs9">
                        <property role="TrG5h" value="action" />
                        <node concept="3uibUv" id="5HzRr7EMQuP" role="1tU5fm">
                          <ref role="3uigEE" to="f4zo:~CellAction" resolve="CellAction" />
                        </node>
                        <node concept="2ShNRf" id="5HzRr7EMQuQ" role="33vP2m">
                          <node concept="YeOm9" id="5HzRr7EMQuR" role="2ShVmc">
                            <node concept="1Y3b0j" id="5HzRr7EMQuS" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="f4zo:~CellAction" resolve="CellAction" />
                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                              <node concept="3Tm1VV" id="5HzRr7EMQuT" role="1B3o_S" />
                              <node concept="3clFb_" id="5HzRr7EMQuU" role="jymVt">
                                <property role="TrG5h" value="getDescriptionText" />
                                <node concept="3Tm1VV" id="5HzRr7EMQuV" role="1B3o_S" />
                                <node concept="3uibUv" id="5HzRr7EMQuW" role="3clF45">
                                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                </node>
                                <node concept="3clFbS" id="5HzRr7EMQuX" role="3clF47">
                                  <node concept="3clFbF" id="5HzRr7EMQuY" role="3cqZAp">
                                    <node concept="Xl_RD" id="5HzRr7EMQuZ" role="3clFbG">
                                      <property role="Xl_RC" value="Delete empty constant" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="5HzRr7EMQv0" role="jymVt">
                                <property role="TrG5h" value="executeInCommand" />
                                <node concept="3Tm1VV" id="5HzRr7EMQv1" role="1B3o_S" />
                                <node concept="10P_77" id="5HzRr7EMQv2" role="3clF45" />
                                <node concept="3clFbS" id="5HzRr7EMQv3" role="3clF47">
                                  <node concept="3clFbF" id="5HzRr7EMQv4" role="3cqZAp">
                                    <node concept="3clFbT" id="5HzRr7EMQv5" role="3clFbG">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="5HzRr7EMQv6" role="jymVt">
                                <property role="TrG5h" value="canExecute" />
                                <node concept="3Tm1VV" id="5HzRr7EMQv7" role="1B3o_S" />
                                <node concept="10P_77" id="5HzRr7EMQv8" role="3clF45" />
                                <node concept="37vLTG" id="5HzRr7EMQv9" role="3clF46">
                                  <property role="TrG5h" value="context" />
                                  <node concept="3uibUv" id="5HzRr7EMQva" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="5HzRr7EMQvb" role="3clF47">
                                  <node concept="3clFbF" id="5HzRr7EMQvc" role="3cqZAp">
                                    <node concept="3clFbT" id="5HzRr7EMQvd" role="3clFbG">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="5HzRr7EMQve" role="jymVt">
                                <property role="TrG5h" value="execute" />
                                <node concept="3Tm1VV" id="5HzRr7EMQvf" role="1B3o_S" />
                                <node concept="3cqZAl" id="5HzRr7EMQvg" role="3clF45" />
                                <node concept="37vLTG" id="5HzRr7EMQvh" role="3clF46">
                                  <property role="TrG5h" value="context" />
                                  <node concept="3uibUv" id="5HzRr7EMQvi" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="5HzRr7EMQvj" role="3clF47">
                                  <node concept="3clFbF" id="5HzRr7EMQvk" role="3cqZAp">
                                    <node concept="2OqwBi" id="5HzRr7EMQvl" role="3clFbG">
                                      <node concept="37vLTw" id="4FdYnQCbmeG" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4FdYnQCbitv" resolve="parameter" />
                                      </node>
                                      <node concept="liA8E" id="2yJZQx2yojh" role="2OqNvi">
                                        <ref role="37wK5l" to="7adg:~ContainedElement.remove()" resolve="remove" />
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
                    <node concept="3clFbF" id="5HzRr7EMQvq" role="3cqZAp">
                      <node concept="2OqwBi" id="5HzRr7EMQvr" role="3clFbG">
                        <node concept="37vLTw" id="5HzRr7EMQvs" role="2Oq$k0">
                          <ref role="3cqZAo" node="uP0FLzJyaL" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="5HzRr7EMQvt" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.setAction(jetbrains.mps.openapi.editor.cells.CellActionType,jetbrains.mps.openapi.editor.cells.CellAction)" resolve="setAction" />
                          <node concept="Rm8GO" id="5HzRr7EMQvu" role="37wK5m">
                            <ref role="Rm8GQ" to="f4zo:~CellActionType.DELETE" resolve="DELETE" />
                            <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                          </node>
                          <node concept="37vLTw" id="5HzRr7EMQvv" role="37wK5m">
                            <ref role="3cqZAo" node="5HzRr7EMQuO" resolve="action" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5HzRr7EMQvw" role="3cqZAp">
                      <node concept="2OqwBi" id="5HzRr7EMQvx" role="3clFbG">
                        <node concept="37vLTw" id="5HzRr7EMQvy" role="2Oq$k0">
                          <ref role="3cqZAo" node="uP0FLzJyaL" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="5HzRr7EMQvz" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.setAction(jetbrains.mps.openapi.editor.cells.CellActionType,jetbrains.mps.openapi.editor.cells.CellAction)" resolve="setAction" />
                          <node concept="Rm8GO" id="5HzRr7EMQv$" role="37wK5m">
                            <ref role="Rm8GQ" to="f4zo:~CellActionType.BACKSPACE" resolve="BACKSPACE" />
                            <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                          </node>
                          <node concept="37vLTw" id="5HzRr7EMQv_" role="37wK5m">
                            <ref role="3cqZAo" node="5HzRr7EMQuO" resolve="action" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="22lmx$" id="5HzRr7EMQvA" role="3clFbw">
                    <node concept="2OqwBi" id="5HzRr7EMQvB" role="3uHU7B">
                      <node concept="2OqwBi" id="5HzRr7EMQvC" role="2Oq$k0">
                        <node concept="37vLTw" id="5HzRr7EMQvD" role="2Oq$k0">
                          <ref role="3cqZAo" node="5HzRr7EMQuz" resolve="parameterNode" />
                        </node>
                        <node concept="3TrEf2" id="5HzRr7EN77D" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="5HzRr7EMQvF" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="5HzRr7EMQvG" role="3uHU7w">
                      <node concept="2OqwBi" id="5HzRr7EMQvH" role="2Oq$k0">
                        <node concept="2OqwBi" id="5HzRr7EMQvI" role="2Oq$k0">
                          <node concept="37vLTw" id="5HzRr7EMQvJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="5HzRr7EMQuz" resolve="parameterNode" />
                          </node>
                          <node concept="3TrEf2" id="5HzRr7EN7jI" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
                          </node>
                        </node>
                        <node concept="2yIwOk" id="5HzRr7EMQvL" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="5HzRr7EMQvM" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5HzRr7EQFX5" role="3cqZAp">
                  <node concept="2OqwBi" id="5HzRr7EQHOx" role="3clFbG">
                    <node concept="37vLTw" id="5HzRr7EQFX3" role="2Oq$k0">
                      <ref role="3cqZAo" node="uP0FLzJyaL" resolve="cell" />
                    </node>
                    <node concept="liA8E" id="5HzRr7EQIuJ" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.setBig(boolean)" resolve="setBig" />
                      <node concept="3clFbT" id="5HzRr7EQIS5" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="2syzu7r3yRw" role="3cqZAp">
                  <node concept="2ShNRf" id="2syzu7r3yZ2" role="3cqZAk">
                    <node concept="1pGfFk" id="2syzu7r3zIo" role="2ShVmc">
                      <ref role="37wK5l" to="p24u:~InlineValueController.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.fbme.ide.richediting.viewmodel.InlineValueView,org.fbme.ide.richediting.adapters.fbnetwork.FunctionBlockController,jetbrains.mps.nodeEditor.cells.EditorCell)" resolve="InlineValueController" />
                      <node concept="37vLTw" id="2syzu7r3$dz" role="37wK5m">
                        <ref role="3cqZAo" node="2syzu7r0IID" resolve="context" />
                      </node>
                      <node concept="37vLTw" id="2syzu7r47Pf" role="37wK5m">
                        <ref role="3cqZAo" node="2syzu7r0IIF" resolve="extView" />
                      </node>
                      <node concept="10QFUN" id="2syzu7r492N" role="37wK5m">
                        <node concept="3uibUv" id="6SLp5w3MnwW" role="10QFUM">
                          <ref role="3uigEE" to="p24u:~FunctionBlockController" resolve="FunctionBlockController" />
                        </node>
                        <node concept="37vLTw" id="2syzu7r48CC" role="10QFUP">
                          <ref role="3cqZAo" node="2syzu7r0IIH" resolve="compController" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="uP0FLzKrQC" role="37wK5m">
                        <node concept="3uibUv" id="uP0FLzKtid" role="10QFUM">
                          <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                        </node>
                        <node concept="37vLTw" id="5HzRr7EMVnq" role="10QFUP">
                          <ref role="3cqZAo" node="uP0FLzJyaL" resolve="cell" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tm1VV" id="2syzu7r0J6M" role="1B3o_S" />
            </node>
            <node concept="3uibUv" id="6SLp5w3MiuE" role="2Ghqu4">
              <ref role="3uigEE" to="1hzy:~InlineValueView" resolve="InlineValueView" />
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
        <ref role="3uigEE" to="2w4:~ComponentControllerFactory" resolve="ComponentControllerFactory" />
        <node concept="3uibUv" id="6SLp5w3MnAb" role="11_B2D">
          <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
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
            <ref role="1Y3XeK" to="2w4:~ComponentControllerFactory" resolve="ComponentControllerFactory" />
            <node concept="2tJIrI" id="7PF$iX$hzSf" role="jymVt" />
            <node concept="3clFb_" id="6oXN8hZZGqx" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="6oXN8hZZGqy" role="1B3o_S" />
              <node concept="3uibUv" id="4y$DvIXm6_O" role="3clF45">
                <ref role="3uigEE" to="2w4:~ComponentController" resolve="ComponentController" />
              </node>
              <node concept="37vLTG" id="4O0ojQq3jvs" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="1cTKxMS9NKD" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                </node>
              </node>
              <node concept="37vLTG" id="4y$DvIVPduo" role="3clF46">
                <property role="TrG5h" value="view" />
                <node concept="3uibUv" id="6SLp5w3MnXV" role="1tU5fm">
                  <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                </node>
              </node>
              <node concept="3clFbS" id="6oXN8hZZGqC" role="3clF47">
                <node concept="3clFbJ" id="6oXN8hZZGqD" role="3cqZAp">
                  <node concept="2ZW3vV" id="6oXN8hZZGqE" role="3clFbw">
                    <node concept="3uibUv" id="6SLp5w3Mo9M" role="2ZW6by">
                      <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIXm9pL" role="2ZW6bz">
                      <ref role="3cqZAo" node="4y$DvIVPduo" resolve="view" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6oXN8hZZGqH" role="3clFbx">
                    <node concept="3cpWs6" id="6oXN8hZZGqO" role="3cqZAp">
                      <node concept="2ShNRf" id="6oXN8hZZGqP" role="3cqZAk">
                        <node concept="1pGfFk" id="6oXN8hZZGqQ" role="2ShVmc">
                          <ref role="37wK5l" to="p24u:~FunctionBlockController.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.fbme.ide.richediting.viewmodel.FunctionBlockView)" resolve="FunctionBlockController" />
                          <node concept="37vLTw" id="4y$DvIXmdDE" role="37wK5m">
                            <ref role="3cqZAo" node="4O0ojQq3jvs" resolve="context" />
                          </node>
                          <node concept="10QFUN" id="4Hbpy_frTNS" role="37wK5m">
                            <node concept="3uibUv" id="6SLp5w3MoE9" role="10QFUM">
                              <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                            </node>
                            <node concept="37vLTw" id="4Hbpy_frTNU" role="10QFUP">
                              <ref role="3cqZAo" node="4y$DvIVPduo" resolve="view" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6tmlia_XDeZ" role="3cqZAp">
                  <node concept="3clFbS" id="6tmlia_XDf1" role="3clFbx">
                    <node concept="3cpWs6" id="6tmlia_XFoA" role="3cqZAp">
                      <node concept="2ShNRf" id="6tmlia_XFoB" role="3cqZAk">
                        <node concept="1pGfFk" id="6tmlia_XFoC" role="2ShVmc">
                          <ref role="37wK5l" to="p24u:~InterfaceEndpointController.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.fbme.ide.richediting.viewmodel.InterfaceEndpointView)" resolve="InterfaceEndpointController" />
                          <node concept="37vLTw" id="4y$DvIXn47C" role="37wK5m">
                            <ref role="3cqZAo" node="4O0ojQq3jvs" resolve="context" />
                          </node>
                          <node concept="10QFUN" id="4Hbpy_fs6qh" role="37wK5m">
                            <node concept="3uibUv" id="6SLp5w3Mpmn" role="10QFUM">
                              <ref role="3uigEE" to="1hzy:~InterfaceEndpointView" resolve="InterfaceEndpointView" />
                            </node>
                            <node concept="37vLTw" id="4Hbpy_fs6qj" role="10QFUP">
                              <ref role="3cqZAo" node="4y$DvIVPduo" resolve="view" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="6tmlia_XEAQ" role="3clFbw">
                    <node concept="3uibUv" id="6SLp5w3MoQ0" role="2ZW6by">
                      <ref role="3uigEE" to="1hzy:~InterfaceEndpointView" resolve="InterfaceEndpointView" />
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
            <node concept="3uibUv" id="6SLp5w3MnM3" role="2Ghqu4">
              <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
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
                    <node concept="2OqwBi" id="19RKY2xHM$z" role="37wK5m">
                      <node concept="37vLTw" id="19RKY2xHM6E" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQy1gf" resolve="fbnetwork" />
                      </node>
                      <node concept="liA8E" id="19RKY2xHNdb" role="2OqNvi">
                        <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
                      </node>
                    </node>
                    <node concept="359W_D" id="5jb5jNBPC4L" role="37wK5m">
                      <ref role="359W_E" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
                      <ref role="359W_F" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                    </node>
                    <node concept="3cmrfG" id="5jb5jNBPC4M" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="359W_D" id="5jb5jNBPC4N" role="37wK5m">
                      <ref role="359W_E" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
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
              <node concept="3uibUv" id="3tHZ0yHvdOs" role="_ZDj9">
                <ref role="3uigEE" to="gl2l:~PositionalCompletionItem" resolve="PositionalCompletionItem" />
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
                              <ref role="1Y3XeK" to="gl2l:~PositionalCompletionItem" resolve="PositionalCompletionItem" />
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
                                      <property role="Xl_RC" value="create function block" />
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
                                  <node concept="3cpWs8" id="4FdYnQC9yly" role="3cqZAp">
                                    <node concept="3cpWsn" id="4FdYnQC9ylz" role="3cpWs9">
                                      <property role="TrG5h" value="node" />
                                      <node concept="3Tqbb2" id="4FdYnQC9yiW" role="1tU5fm">
                                        <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                                      </node>
                                      <node concept="2ShNRf" id="4FdYnQC9yl$" role="33vP2m">
                                        <node concept="3zrR0B" id="4FdYnQC9yl_" role="2ShVmc">
                                          <node concept="3Tqbb2" id="4FdYnQC9ylA" role="3zrR0E">
                                            <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4FdYnQCaKYF" role="3cqZAp">
                                    <node concept="2OqwBi" id="4FdYnQCaMM4" role="3clFbG">
                                      <node concept="2OqwBi" id="4FdYnQCaLo3" role="2Oq$k0">
                                        <node concept="37vLTw" id="4FdYnQCaKYD" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4FdYnQC9ylz" resolve="node" />
                                        </node>
                                        <node concept="3TrEf2" id="4FdYnQCaMBP" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:3IX4BsKatOx" resolve="position" />
                                        </node>
                                      </node>
                                      <node concept="zfrQC" id="4FdYnQCaNkD" role="2OqNvi" />
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4FdYnQC9yZP" role="3cqZAp">
                                    <node concept="2OqwBi" id="4FdYnQC9$7O" role="3clFbG">
                                      <node concept="2OqwBi" id="4FdYnQC9zp4" role="2Oq$k0">
                                        <node concept="37vLTw" id="4FdYnQC9yZN" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4FdYnQC9ylz" resolve="node" />
                                        </node>
                                        <node concept="3TrEf2" id="4FdYnQC9zXh" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:3IX4BsKatOx" resolve="position" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="4FdYnQC9$s9" role="2OqNvi">
                                        <ref role="37wK5l" to="t4dg:5fP$Xwj3jp5" resolve="setX" />
                                        <node concept="10QFUN" id="6kcQr5wxV2U" role="37wK5m">
                                          <node concept="10Oyi0" id="6kcQr5wxVym" role="10QFUM" />
                                          <node concept="1eOMI4" id="6kcQr5wxUMr" role="10QFUP">
                                            <node concept="FJ1c_" id="6kcQr5wxTiJ" role="1eOMHV">
                                              <node concept="37vLTw" id="6kcQr5wxTAS" role="3uHU7w">
                                                <ref role="3cqZAo" node="6kcQr5wxOrJ" resolve="scale" />
                                              </node>
                                              <node concept="37vLTw" id="4FRweWLnMYt" role="3uHU7B">
                                                <ref role="3cqZAo" node="5jb5jNBPC5w" resolve="x" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4FdYnQC9Ah3" role="3cqZAp">
                                    <node concept="2OqwBi" id="4FdYnQC9Ah4" role="3clFbG">
                                      <node concept="2OqwBi" id="4FdYnQC9Ah5" role="2Oq$k0">
                                        <node concept="37vLTw" id="4FdYnQC9Ah6" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4FdYnQC9ylz" resolve="node" />
                                        </node>
                                        <node concept="3TrEf2" id="4FdYnQC9Ah7" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:3IX4BsKatOx" resolve="position" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="4FdYnQC9Ah8" role="2OqNvi">
                                        <ref role="37wK5l" to="t4dg:5fP$Xwj3lay" resolve="setY" />
                                        <node concept="10QFUN" id="4FdYnQC9Ah9" role="37wK5m">
                                          <node concept="10Oyi0" id="4FdYnQC9Aha" role="10QFUM" />
                                          <node concept="1eOMI4" id="4FdYnQC9Ahb" role="10QFUP">
                                            <node concept="FJ1c_" id="4FdYnQC9Ahc" role="1eOMHV">
                                              <node concept="37vLTw" id="4FdYnQC9Ahd" role="3uHU7w">
                                                <ref role="3cqZAo" node="6kcQr5wxOrJ" resolve="scale" />
                                              </node>
                                              <node concept="37vLTw" id="4FdYnQC9AWn" role="3uHU7B">
                                                <ref role="3cqZAo" node="5jb5jNBPC5y" resolve="y" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4FdYnQC9BzV" role="3cqZAp">
                                    <node concept="37vLTI" id="4FdYnQC9Dfu" role="3clFbG">
                                      <node concept="37vLTw" id="4FdYnQC9DPh" role="37vLTx">
                                        <ref role="3cqZAo" node="5jb5jNBPC51" resolve="type" />
                                      </node>
                                      <node concept="2OqwBi" id="4FdYnQC9BZy" role="37vLTJ">
                                        <node concept="37vLTw" id="4FdYnQC9BzT" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4FdYnQC9ylz" resolve="node" />
                                        </node>
                                        <node concept="3TrEf2" id="4FdYnQC9CtM" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4FdYnQCb0xn" role="3cqZAp">
                                    <node concept="2OqwBi" id="4FdYnQCb2u3" role="3clFbG">
                                      <node concept="2OqwBi" id="4FdYnQCb1g1" role="2Oq$k0">
                                        <node concept="37vLTw" id="4FdYnQCb0xl" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1R4IoyQy1gf" resolve="fbnetwork" />
                                        </node>
                                        <node concept="liA8E" id="2yJZQx2ynl4" role="2OqNvi">
                                          <ref role="37wK5l" to="rwq3:6YcNwH3wmYk" resolve="getFunctionBlocks" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4FdYnQCb4jx" role="2OqNvi">
                                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                        <node concept="2OqwBi" id="4FdYnQCaPFu" role="37wK5m">
                                          <node concept="2OqwBi" id="4FdYnQCaPst" role="2Oq$k0">
                                            <node concept="37vLTw" id="4FdYnQCaP1P" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1R4IoyQy1gf" resolve="fbnetwork" />
                                            </node>
                                            <node concept="liA8E" id="4Hbpy_fs8nF" role="2OqNvi">
                                              <ref role="37wK5l" to="fcfa:1IuIrLUoZ41" resolve="getOwner" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="4FdYnQCaPX9" role="2OqNvi">
                                            <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                            <node concept="37vLTw" id="4FdYnQCaQeo" role="37wK5m">
                                              <ref role="3cqZAo" node="4FdYnQC9ylz" resolve="node" />
                                            </node>
                                            <node concept="3VsKOn" id="4FdYnQCaR6L" role="37wK5m">
                                              <ref role="3VsUkX" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
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
        <node concept="3uibUv" id="19RKY2xHKcO" role="1tU5fm">
          <ref role="3uigEE" to="rwq3:1R4IoyQA3Yn" resolve="FBNetworkByNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6kcQr5wxOrJ" role="3clF46">
        <property role="TrG5h" value="scale" />
        <node concept="10OMs4" id="6kcQr5wxRDt" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5jb5jNBPC4$" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3tHZ0yHvdvH" role="11_B2D">
          <ref role="3uigEE" to="gl2l:~PositionalCompletionItem" resolve="PositionalCompletionItem" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7oJsd9wVHpr" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1R4IoyQHXu5">
    <property role="TrG5h" value="ECCEditors" />
    <property role="3GE5qa" value="fbtype.basic" />
    <node concept="2tJIrI" id="1R4IoyQHXuS" role="jymVt" />
    <node concept="2YIFZL" id="1R4IoyQIIIZ" role="jymVt">
      <property role="TrG5h" value="createEccEditor" />
      <node concept="3clFbS" id="1R4IoyQIIJ1" role="3clF47">
        <node concept="3J1_TO" id="1R4IoyQIIJ2" role="3cqZAp">
          <node concept="3clFbS" id="1R4IoyQIIJ3" role="1zxBo7">
            <node concept="3cpWs8" id="1T4bYS8pn7F" role="3cqZAp">
              <node concept="3cpWsn" id="1T4bYS8pn7G" role="3cpWs9">
                <property role="TrG5h" value="repository" />
                <node concept="3uibUv" id="739Y6csNHQP" role="1tU5fm">
                  <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
                </node>
                <node concept="2YIFZM" id="1T4bYS8ps$j" role="33vP2m">
                  <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                  <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                  <node concept="2OqwBi" id="1T4bYS8ppDc" role="37wK5m">
                    <node concept="2OqwBi" id="1T4bYS8pp2_" role="2Oq$k0">
                      <node concept="37vLTw" id="1T4bYS8poJQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQIIMk" resolve="context" />
                      </node>
                      <node concept="liA8E" id="1T4bYS8pppL" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1T4bYS8ppU8" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1T4bYS8peqK" role="3cqZAp">
              <node concept="2OqwBi" id="1T4bYS8pifC" role="3clFbG">
                <node concept="2OqwBi" id="1T4bYS8pfRJ" role="2Oq$k0">
                  <node concept="37vLTw" id="1T4bYS8peqI" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQIIMk" resolve="context" />
                  </node>
                  <node concept="liA8E" id="1T4bYS8pi4V" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                  </node>
                </node>
                <node concept="liA8E" id="1T4bYS8pi$3" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIJ4" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJ5" role="3cpWs9">
                <property role="TrG5h" value="scene" />
                <node concept="3uibUv" id="1R4IoyQIIJ6" role="1tU5fm">
                  <ref role="3uigEE" to="sli2:~EditorCell_Scene" resolve="EditorCell_Scene" />
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIJ7" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQIIJ8" role="2ShVmc">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="EditorCell_Scene" />
                    <node concept="37vLTw" id="1R4IoyQIIJ9" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIMk" resolve="context" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIJa" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIMm" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="bRdTVIcIIG" role="37wK5m">
                      <ref role="3cqZAo" node="bRdTVIcFaG" resolve="layout" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIJb" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJc" role="3cpWs9">
                <property role="TrG5h" value="backgroundLayer" />
                <node concept="3uibUv" id="1R4IoyQIIJd" role="1tU5fm">
                  <ref role="3uigEE" to="ar7i:~Layer" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyQIIJe" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQIIJf" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQIIJg" role="2OqNvi">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.createLayer(float)" resolve="createLayer" />
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
                  <ref role="3uigEE" to="ar7i:~Layer" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyQIIJl" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQIIJm" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQIIJn" role="2OqNvi">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.createLayer(float)" resolve="createLayer" />
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
                  <ref role="3uigEE" to="ar7i:~Layer" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyQIIJs" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQIIJt" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQIIJu" role="2OqNvi">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.createLayer(float)" resolve="createLayer" />
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
                  <ref role="3uigEE" to="ar7i:~Layer" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyQIIJz" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQIIJ$" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQIIJ_" role="2OqNvi">
                    <ref role="37wK5l" to="sli2:~EditorCell_Scene.createLayer(float)" resolve="createLayer" />
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
                <node concept="3uibUv" id="61SA$ze56hb" role="1tU5fm">
                  <ref role="3uigEE" to="kdnk:~SceneViewpoint" resolve="SceneViewpoint" />
                </node>
                <node concept="3K4zz7" id="61SA$ze5fEH" role="33vP2m">
                  <node concept="2OqwBi" id="61SA$ze5kHE" role="3K4GZi">
                    <node concept="37vLTw" id="61SA$ze5i44" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                    </node>
                    <node concept="liA8E" id="61SA$ze5n2_" role="2OqNvi">
                      <ref role="37wK5l" to="sli2:~EditorCell_Scene.getImplicitViewpoint()" resolve="getImplicitViewpoint" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="61SA$ze5bAb" role="3K4Cdx">
                    <node concept="Rm8GO" id="3tHZ0yHvmw4" role="3uHU7w">
                      <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                      <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                    </node>
                    <node concept="37vLTw" id="61SA$ze5af6" role="3uHU7B">
                      <ref role="3cqZAo" node="bRdTVIcFaG" resolve="layout" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="1R4IoyQIIJF" role="3K4E3e">
                    <node concept="1pGfFk" id="1R4IoyQIIJG" role="2ShVmc">
                      <ref role="37wK5l" to="kdnk:~SceneViewpointByCell.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="SceneViewpointByCell" />
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
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIJJ" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJK" role="3cpWs9">
                <property role="TrG5h" value="focus" />
                <node concept="3uibUv" id="1R4IoyQIIJL" role="1tU5fm">
                  <ref role="3uigEE" to="kdnk:~SceneFocusModel" resolve="SceneFocusModel" />
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIJM" role="33vP2m">
                  <node concept="1pGfFk" id="3tHZ0yHvkGW" role="2ShVmc">
                    <ref role="37wK5l" to="kdnk:~DefaultFocusModel.&lt;init&gt;()" resolve="DefaultFocusModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="61SA$ze4S8D" role="3cqZAp">
              <node concept="3clFbS" id="61SA$ze4S8F" role="3clFbx">
                <node concept="3clFbF" id="1R4IoyQIIJO" role="3cqZAp">
                  <node concept="2ShNRf" id="1R4IoyQIIJP" role="3clFbG">
                    <node concept="1pGfFk" id="1R4IoyQIIJQ" role="2ShVmc">
                      <ref role="37wK5l" to="ar7i:~WindowedBackgroundDragFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,org.fbme.scenes.controllers.SceneViewpointByCell,org.fbme.scenes.controllers.scene.Layer)" resolve="WindowedBackgroundDragFacility" />
                      <node concept="37vLTw" id="1R4IoyQIIJR" role="37wK5m">
                        <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                      </node>
                      <node concept="10QFUN" id="61SA$ze57Fz" role="37wK5m">
                        <node concept="3uibUv" id="61SA$ze8keP" role="10QFUM">
                          <ref role="3uigEE" to="kdnk:~SceneViewpointByCell" resolve="SceneViewpointByCell" />
                        </node>
                        <node concept="37vLTw" id="1R4IoyQIIJU" role="10QFUP">
                          <ref role="3cqZAo" node="1R4IoyQIIJD" resolve="viewpoint" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1R4IoyQIIJT" role="37wK5m">
                        <ref role="3cqZAo" node="1R4IoyQIIJc" resolve="backgroundLayer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="61SA$ze4U1i" role="3clFbw">
                <node concept="Rm8GO" id="61SA$ze4UR9" role="3uHU7w">
                  <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                  <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                </node>
                <node concept="37vLTw" id="61SA$ze4Tw7" role="3uHU7B">
                  <ref role="3cqZAo" node="bRdTVIcFaG" resolve="layout" />
                </node>
              </node>
              <node concept="9aQIb" id="61SA$ze4WKb" role="9aQIa">
                <node concept="3clFbS" id="61SA$ze4WKc" role="9aQI4">
                  <node concept="3clFbF" id="61SA$ze54OM" role="3cqZAp">
                    <node concept="2ShNRf" id="61SA$ze54OO" role="3clFbG">
                      <node concept="1pGfFk" id="61SA$ze54OP" role="2ShVmc">
                        <ref role="37wK5l" to="ar7i:~FullEditorBackgroundDragFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,jetbrains.mps.openapi.editor.cells.EditorCell,javax.swing.JViewport,org.fbme.scenes.controllers.scene.Layer)" resolve="FullEditorBackgroundDragFacility" />
                        <node concept="37vLTw" id="61SA$ze54OQ" role="37wK5m">
                          <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                        </node>
                        <node concept="37vLTw" id="61SA$ze8gUI" role="37wK5m">
                          <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                        </node>
                        <node concept="2OqwBi" id="61SA$ze8ioA" role="37wK5m">
                          <node concept="0kSF2" id="61SA$ze8dN1" role="2Oq$k0">
                            <node concept="3uibUv" id="61SA$ze8hgz" role="0kSFW">
                              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                            </node>
                            <node concept="2OqwBi" id="61SA$ze55IS" role="0kSFX">
                              <node concept="37vLTw" id="61SA$ze55u1" role="2Oq$k0">
                                <ref role="3cqZAo" node="1R4IoyQIIMk" resolve="context" />
                              </node>
                              <node concept="liA8E" id="61SA$ze568q" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="61SA$ze8jdb" role="2OqNvi">
                            <ref role="37wK5l" to="exr9:~EditorComponent.getViewport()" resolve="getViewport" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="61SA$ze54OS" role="37wK5m">
                          <ref role="3cqZAo" node="1R4IoyQIIJc" resolve="backgroundLayer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="61SA$ze4MWI" role="3cqZAp">
              <node concept="2ShNRf" id="61SA$ze4MWJ" role="3clFbG">
                <node concept="1pGfFk" id="61SA$ze4MWK" role="2ShVmc">
                  <ref role="37wK5l" to="ar7i:~BackgroundFocusLossFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,org.fbme.scenes.controllers.SceneFocusModel,org.fbme.scenes.controllers.scene.Layer)" resolve="BackgroundFocusLossFacility" />
                  <node concept="37vLTw" id="61SA$ze4MWL" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="37vLTw" id="61SA$ze4MWM" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJK" resolve="focus" />
                  </node>
                  <node concept="37vLTw" id="61SA$ze4MWN" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJc" resolve="backgroundLayer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyQIIJV" role="3cqZAp" />
            <node concept="3cpWs8" id="1R4IoyQIIJW" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJX" role="3cpWs9">
                <property role="TrG5h" value="componentsSelection" />
                <node concept="3uibUv" id="1R4IoyQIIJY" role="1tU5fm">
                  <ref role="3uigEE" to="kdnk:~DefaultSelectionModel" resolve="DefaultSelectionModel" />
                  <node concept="3uibUv" id="4Hbpy_fGs3o" role="11_B2D">
                    <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIK0" role="33vP2m">
                  <node concept="1pGfFk" id="3tHZ0yHvkGY" role="2ShVmc">
                    <ref role="37wK5l" to="kdnk:~DefaultSelectionModel.&lt;init&gt;()" resolve="DefaultSelectionModel" />
                    <node concept="3uibUv" id="3tHZ0yHvkGZ" role="1pMfVU">
                      <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIK3" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIK4" role="3cpWs9">
                <property role="TrG5h" value="componentsLayout" />
                <node concept="3uibUv" id="1R4IoyQIIK5" role="1tU5fm">
                  <ref role="3uigEE" to="kdnk:~DefaultLayoutModel" resolve="DefaultLayoutModel" />
                  <node concept="3uibUv" id="4Hbpy_fGtft" role="11_B2D">
                    <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIK7" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQIIK8" role="2ShVmc">
                    <ref role="37wK5l" to="kdnk:~DefaultLayoutModel.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="DefaultLayoutModel" />
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
            <node concept="3clFbH" id="1R4IoyQIIKh" role="3cqZAp" />
            <node concept="3cpWs8" id="2yJZQx2vbYp" role="3cqZAp">
              <node concept="3cpWsn" id="2yJZQx2vbYq" role="3cpWs9">
                <property role="TrG5h" value="declarationFactory" />
                <node concept="3uibUv" id="4Hbpy_fGvtD" role="1tU5fm">
                  <ref role="3uigEE" to="v4vf:~IEC61499Factory" resolve="IEC61499Factory" />
                </node>
                <node concept="2OqwBi" id="2yJZQx2vbYr" role="33vP2m">
                  <node concept="37vLTw" id="2yJZQx2vbYs" role="2Oq$k0">
                    <ref role="3cqZAo" node="1T4bYS8pn7G" resolve="repository" />
                  </node>
                  <node concept="liA8E" id="2yJZQx2vbYt" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getIEC61499Factory()" resolve="getIEC61499Factory" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2yJZQx2viBv" role="3cqZAp">
              <node concept="3cpWsn" id="2yJZQx2viBw" role="3cpWs9">
                <property role="TrG5h" value="ecc" />
                <node concept="3uibUv" id="2yJZQx2virv" role="1tU5fm">
                  <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
                </node>
                <node concept="2OqwBi" id="2yJZQx2viBx" role="33vP2m">
                  <node concept="2OqwBi" id="2yJZQx2viBy" role="2Oq$k0">
                    <node concept="37vLTw" id="2yJZQx2viBz" role="2Oq$k0">
                      <ref role="3cqZAo" node="1T4bYS8pn7G" resolve="repository" />
                    </node>
                    <node concept="liA8E" id="2yJZQx2viB$" role="2OqNvi">
                      <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                      <node concept="37vLTw" id="2yJZQx2viB_" role="37wK5m">
                        <ref role="3cqZAo" node="1R4IoyQIIMm" resolve="node" />
                      </node>
                      <node concept="3VsKOn" id="2yJZQx2viBA" role="37wK5m">
                        <ref role="3VsUkX" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2yJZQx2viBB" role="2OqNvi">
                    <ref role="37wK5l" to="cwd8:~BasicFBTypeDeclaration.getEcc()" resolve="getEcc" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIKi" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIKj" role="3cpWs9">
                <property role="TrG5h" value="eccAdapter" />
                <node concept="2ShNRf" id="1R4IoyQJ9ue" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQJaYs" role="2ShVmc">
                    <ref role="37wK5l" to="56zl:~ECCViewAdapter.&lt;init&gt;(org.fbme.lib.iec61499.ecc.ECC,org.fbme.lib.iec61499.IEC61499Factory)" resolve="ECCViewAdapter" />
                    <node concept="37vLTw" id="2yJZQx2viBC" role="37wK5m">
                      <ref role="3cqZAo" node="2yJZQx2viBw" resolve="ecc" />
                    </node>
                    <node concept="37vLTw" id="2yJZQx2vbYu" role="37wK5m">
                      <ref role="3cqZAo" node="2yJZQx2vbYq" resolve="declarationFactory" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6SLp5w3LDj6" role="1tU5fm">
                  <ref role="3uigEE" to="56zl:~ECCViewAdapter" resolve="ECCViewAdapter" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIKo" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIKp" role="3cpWs9">
                <property role="TrG5h" value="componentsFacility" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1R4IoyQIIKq" role="1tU5fm">
                  <ref role="3uigEE" to="2w4:~ComponentsFacility" resolve="ComponentsFacility" />
                  <node concept="3uibUv" id="4Hbpy_fGwHA" role="11_B2D">
                    <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIKs" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIKt" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQIIKu" role="2ShVmc">
                    <ref role="37wK5l" to="2w4:~ComponentsFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,org.fbme.scenes.viewmodel.ComponentsView,org.fbme.scenes.controllers.components.ComponentControllerFactory,org.fbme.scenes.controllers.components.ComponentSynchronizer,org.fbme.scenes.controllers.LayoutModel,org.fbme.scenes.controllers.SelectionModel,org.fbme.scenes.controllers.SceneFocusModel,org.fbme.scenes.controllers.scene.Layer,org.fbme.scenes.controllers.scene.Layer)" resolve="ComponentsFacility" />
                    <node concept="37vLTw" id="1R4IoyQIIKv" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIKw" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIKj" resolve="eccAdapter" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIKx" role="37wK5m">
                      <ref role="3cqZAo" node="5jb5jNCcmQv" resolve="STATE_CONTROLLER_FACTORY" />
                    </node>
                    <node concept="2ShNRf" id="1R4IoyQIIKy" role="37wK5m">
                      <node concept="1pGfFk" id="1R4IoyQIIKz" role="2ShVmc">
                        <ref role="37wK5l" to="56zl:~ECCSynchronizer.&lt;init&gt;(org.fbme.scenes.controllers.SceneViewpoint)" resolve="ECCSynchronizer" />
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
                    <node concept="3uibUv" id="4Hbpy_fGxOA" role="1pMfVU">
                      <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
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
                  <ref role="37wK5l" to="sli2:~EditorCell_Scene.addCompletionProvider(org.fbme.scenes.controllers.scene.SceneCompletionProvider)" resolve="addCompletionProvider" />
                  <node concept="2ShNRf" id="1R4IoyQIIKL" role="37wK5m">
                    <node concept="1pGfFk" id="1R4IoyQIIKM" role="2ShVmc">
                      <ref role="37wK5l" to="ar7i:~CompletionProviderByViewpoint.&lt;init&gt;(org.fbme.scenes.controllers.SceneViewpoint,java.util.function.Supplier)" resolve="CompletionProviderByViewpoint" />
                      <node concept="37vLTw" id="1R4IoyQIIKN" role="37wK5m">
                        <ref role="3cqZAo" node="1R4IoyQIIJD" resolve="viewpoint" />
                      </node>
                      <node concept="1bVj0M" id="1R4IoyQIIKO" role="37wK5m">
                        <node concept="3clFbS" id="1R4IoyQIIKP" role="1bW5cS">
                          <node concept="3clFbF" id="1R4IoyQIIKQ" role="3cqZAp">
                            <node concept="1rXfSq" id="1R4IoyQIIKR" role="3clFbG">
                              <ref role="37wK5l" node="1R4IoyQI9Vb" resolve="getCompletion" />
                              <node concept="37vLTw" id="2yJZQx2vlb8" role="37wK5m">
                                <ref role="3cqZAo" node="2yJZQx2viBw" resolve="ecc" />
                              </node>
                              <node concept="37vLTw" id="2yJZQx2vdU8" role="37wK5m">
                                <ref role="3cqZAo" node="2yJZQx2vbYq" resolve="declarationFactory" />
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
                <node concept="3uibUv" id="6SLp5w3LGYE" role="1tU5fm">
                  <ref role="3uigEE" to="56zl:~ECPortSettingProvider" resolve="ECPortSettingProvider" />
                </node>
                <node concept="2YIFZM" id="1R4IoyQIIKX" role="33vP2m">
                  <ref role="1Pybhc" to="56zl:~ECPortSettingProvider" resolve="ECPortSettingProvider" />
                  <ref role="37wK5l" to="56zl:~ECPortSettingProvider.create(org.fbme.scenes.controllers.components.ComponentsFacility)" resolve="create" />
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
                  <ref role="3uigEE" to="tamd:~DiagramFacility" resolve="DiagramFacility" />
                  <node concept="3uibUv" id="4Hbpy_fGyGh" role="11_B2D">
                    <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                  </node>
                  <node concept="3uibUv" id="4Hbpy_fGzzj" role="11_B2D">
                    <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                  </node>
                  <node concept="3uibUv" id="4Hbpy_fGAP6" role="11_B2D">
                    <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIL5" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIL6" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQIIL7" role="2ShVmc">
                    <ref role="37wK5l" to="tamd:~DiagramFacility.&lt;init&gt;(org.fbme.scenes.controllers.diagram.DiagramView,org.fbme.scenes.controllers.diagram.PortSettingProvider,org.fbme.scenes.controllers.diagram.DiagramComponentSettingProvider)" resolve="DiagramFacility" />
                    <node concept="37vLTw" id="1R4IoyQIIL9" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIKj" resolve="eccAdapter" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIILa" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIKV" resolve="portSettings" />
                    </node>
                    <node concept="2ShNRf" id="1R4IoyQIILb" role="37wK5m">
                      <node concept="YeOm9" id="1R4IoyQIILc" role="2ShVmc">
                        <node concept="1Y3b0j" id="1R4IoyQIILd" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <ref role="1Y3XeK" to="tamd:~DiagramComponentSettingProvider" resolve="DiagramComponentSettingProvider" />
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
                              <node concept="3uibUv" id="4Hbpy_fGDLb" role="1tU5fm">
                                <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
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
                                    <ref role="37wK5l" to="2w4:~ComponentsFacility.getModelForm(java.lang.Object)" resolve="getModelForm" />
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
                              <node concept="3uibUv" id="4Hbpy_fGE8b" role="1tU5fm">
                                <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
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
                                    <ref role="37wK5l" to="2w4:~ComponentsFacility.getTransformedForm(java.lang.Object)" resolve="getTransformedForm" />
                                    <node concept="37vLTw" id="1R4IoyQIILC" role="37wK5m">
                                      <ref role="3cqZAo" node="1R4IoyQIILw" resolve="component" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="4Hbpy_fGCL3" role="2Ghqu4">
                            <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                          </node>
                          <node concept="3uibUv" id="1R4IoyQIILE" role="2Ghqu4">
                            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="4Hbpy_fGBKo" role="1pMfVU">
                      <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                    </node>
                    <node concept="3uibUv" id="4Hbpy_fGBKp" role="1pMfVU">
                      <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                    </node>
                    <node concept="3uibUv" id="4Hbpy_fGBKq" role="1pMfVU">
                      <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
                    </node>
                    <node concept="3uibUv" id="1R4IoyQIILI" role="1pMfVU">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="38F6aFupE_o" role="3cqZAp">
              <node concept="3cpWsn" id="38F6aFupE_p" role="3cpWs9">
                <property role="TrG5h" value="connectionsFacility" />
                <node concept="3uibUv" id="38F6aFupA_F" role="1tU5fm">
                  <ref role="3uigEE" to="tamd:~ConnectionsFacility" resolve="ConnectionsFacility" />
                  <node concept="3uibUv" id="38F6aFupA_R" role="11_B2D">
                    <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                  </node>
                  <node concept="3uibUv" id="38F6aFupA_Q" role="11_B2D">
                    <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                  </node>
                  <node concept="3uibUv" id="38F6aFupA_T" role="11_B2D">
                    <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
                  </node>
                  <node concept="3uibUv" id="6SLp5w3LJKg" role="11_B2D">
                    <ref role="3uigEE" to="56zl:~ECTransitionCursor" resolve="ECTransitionCursor" />
                  </node>
                  <node concept="3uibUv" id="6SLp5w3LKNa" role="11_B2D">
                    <ref role="3uigEE" to="56zl:~ECTransitionPath" resolve="ECTransitionPath" />
                  </node>
                </node>
                <node concept="2ShNRf" id="38F6aFupE_q" role="33vP2m">
                  <node concept="1pGfFk" id="38F6aFupE_r" role="2ShVmc">
                    <ref role="37wK5l" to="tamd:~ConnectionsFacility.&lt;init&gt;(org.fbme.scenes.controllers.scene.SceneEditor,org.fbme.scenes.controllers.diagram.ConnectionControllerFactory,java.util.function.BiFunction,java.util.function.BiConsumer,org.fbme.scenes.controllers.diagram.ConnectionPathSyncronizer,org.fbme.scenes.controllers.ROLayoutModel,org.fbme.scenes.controllers.SelectionModel,org.fbme.scenes.controllers.diagram.DiagramController,org.fbme.scenes.controllers.scene.Layer,org.fbme.scenes.controllers.scene.Layer,org.fbme.scenes.controllers.SceneFocusModel)" resolve="ConnectionsFacility" />
                    <node concept="37vLTw" id="38F6aFupE_s" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                    </node>
                    <node concept="37vLTw" id="38F6aFupE_t" role="37wK5m">
                      <ref role="3cqZAo" node="38k27IRLnsq" resolve="TRANSITION_CONTROLLER_FACTORY" />
                    </node>
                    <node concept="10M0yZ" id="6SLp5w3LMTQ" role="37wK5m">
                      <ref role="3cqZAo" to="56zl:~ECTransitionUtils.PATH_FACTORY" resolve="PATH_FACTORY" />
                      <ref role="1PxDUh" to="56zl:~ECTransitionUtils" resolve="ECTransitionUtils" />
                    </node>
                    <node concept="10M0yZ" id="6SLp5w3LNrT" role="37wK5m">
                      <ref role="3cqZAo" to="56zl:~ECTransitionUtils.PATH_PAINTER" resolve="PATH_PAINTER" />
                      <ref role="1PxDUh" to="56zl:~ECTransitionUtils" resolve="ECTransitionUtils" />
                    </node>
                    <node concept="2ShNRf" id="38F6aFupE_w" role="37wK5m">
                      <node concept="1pGfFk" id="38F6aFupE_x" role="2ShVmc">
                        <ref role="37wK5l" to="56zl:~ECTransitionPathSynchronizer.&lt;init&gt;(org.fbme.scenes.controllers.SceneViewpoint)" resolve="ECTransitionPathSynchronizer" />
                        <node concept="37vLTw" id="38F6aFupE_y" role="37wK5m">
                          <ref role="3cqZAo" node="1R4IoyQIIJD" resolve="viewpoint" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="38F6aFupE_z" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIK4" resolve="componentsLayout" />
                    </node>
                    <node concept="37vLTw" id="38F6aFupE_$" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJX" resolve="componentsSelection" />
                    </node>
                    <node concept="2OqwBi" id="38F6aFupE__" role="37wK5m">
                      <node concept="37vLTw" id="38F6aFupE_A" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQIIL0" resolve="diagramFacility" />
                      </node>
                      <node concept="liA8E" id="38F6aFupE_B" role="2OqNvi">
                        <ref role="37wK5l" to="tamd:~DiagramFacility.getDiagramController()" resolve="getDiagramController" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="38F6aFupE_C" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJx" resolve="connectionsLayer" />
                    </node>
                    <node concept="37vLTw" id="38F6aFupE_D" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJj" resolve="tracesLayer" />
                    </node>
                    <node concept="37vLTw" id="38F6aFupE_E" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJK" resolve="focus" />
                    </node>
                    <node concept="3uibUv" id="38F6aFupE_F" role="1pMfVU">
                      <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                    </node>
                    <node concept="3uibUv" id="38F6aFupE_G" role="1pMfVU">
                      <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                    </node>
                    <node concept="3uibUv" id="38F6aFupE_H" role="1pMfVU">
                      <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
                    </node>
                    <node concept="3uibUv" id="6SLp5w3LLn2" role="1pMfVU">
                      <ref role="3uigEE" to="56zl:~ECTransitionCursor" resolve="ECTransitionCursor" />
                    </node>
                    <node concept="3uibUv" id="6SLp5w3LLUM" role="1pMfVU">
                      <ref role="3uigEE" to="56zl:~ECTransitionPath" resolve="ECTransitionPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyQIIM6" role="3cqZAp" />
            <node concept="3clFbF" id="38F6aFup$gp" role="3cqZAp">
              <node concept="2ShNRf" id="38F6aFup$gl" role="3clFbG">
                <node concept="1pGfFk" id="38F6aFupBvA" role="2ShVmc">
                  <ref role="37wK5l" to="ek6x:~ECCInspectionsFacility.&lt;init&gt;(org.fbme.lib.iec61499.ecc.ECC,org.fbme.scenes.controllers.scene.SceneEditor,java.util.function.Function)" resolve="ECCInspectionsFacility" />
                  <node concept="37vLTw" id="38F6aFupBJ1" role="37wK5m">
                    <ref role="3cqZAo" node="2yJZQx2viBw" resolve="ecc" />
                  </node>
                  <node concept="37vLTw" id="38F6aFupDie" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="1bVj0M" id="38F6aFupZkb" role="37wK5m">
                    <node concept="3clFbS" id="38F6aFupZkd" role="1bW5cS">
                      <node concept="3clFbF" id="38F6aFuq5wG" role="3cqZAp">
                        <node concept="10QFUN" id="38F6aFuqBE9" role="3clFbG">
                          <node concept="3uibUv" id="6SLp5w3LPW6" role="10QFUM">
                            <ref role="3uigEE" to="56zl:~ECTransitionController" resolve="ECTransitionController" />
                          </node>
                          <node concept="2OqwBi" id="38F6aFuq5YR" role="10QFUP">
                            <node concept="37vLTw" id="38F6aFuq5wF" role="2Oq$k0">
                              <ref role="3cqZAo" node="38F6aFupE_p" resolve="connectionsFacility" />
                            </node>
                            <node concept="liA8E" id="38F6aFuq6ms" role="2OqNvi">
                              <ref role="37wK5l" to="tamd:~ConnectionsFacility.getController(java.lang.Object)" resolve="getController" />
                              <node concept="37vLTw" id="38F6aFuq6Bn" role="37wK5m">
                                <ref role="3cqZAo" node="38F6aFuq0Ib" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="38F6aFuq0Ib" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="3uibUv" id="38F6aFuq0Ia" role="1tU5fm">
                        <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="38F6aFupyb5" role="3cqZAp" />
            <node concept="3cpWs6" id="1R4IoyQIIM7" role="3cqZAp">
              <node concept="37vLTw" id="1R4IoyQIIM8" role="3cqZAk">
                <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1R4IoyQIIM9" role="1zxBo5">
            <node concept="XOnhg" id="1R4IoyQIIMa" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="fKHW3X4$DXj" role="1tU5fm">
                <node concept="3uibUv" id="1R4IoyQIIMb" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1R4IoyQIIMc" role="1zc67A">
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
      <node concept="37vLTG" id="bRdTVIcFaG" role="3clF46">
        <property role="TrG5h" value="layout" />
        <node concept="3uibUv" id="3tHZ0yHvgmW" role="1tU5fm">
          <ref role="3uigEE" to="ar7i:~SceneLayout" resolve="SceneLayout" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQIIMi" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5jb5jNCcmQv" role="jymVt">
      <property role="TrG5h" value="STATE_CONTROLLER_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5jb5jNCcmQw" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNCcmQx" role="1tU5fm">
        <ref role="3uigEE" to="2w4:~ComponentControllerFactory" resolve="ComponentControllerFactory" />
        <node concept="3uibUv" id="4Hbpy_fH6XD" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
        <node concept="3uibUv" id="5jb5jNCcmQz" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="2ShNRf" id="5jb5jNCcmQ$" role="33vP2m">
        <node concept="YeOm9" id="5jb5jNCcmQ_" role="2ShVmc">
          <node concept="1Y3b0j" id="5jb5jNCcmQA" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="2w4:~ComponentControllerFactory" resolve="ComponentControllerFactory" />
            <node concept="2tJIrI" id="5jb5jNCcmQB" role="jymVt" />
            <node concept="3clFb_" id="5jb5jNCcmQC" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="5jb5jNCcmQD" role="1B3o_S" />
              <node concept="3uibUv" id="5jb5jNCcmQE" role="3clF45">
                <ref role="3uigEE" to="2w4:~ComponentController" resolve="ComponentController" />
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
                <node concept="3uibUv" id="4Hbpy_fH6NV" role="1tU5fm">
                  <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                </node>
              </node>
              <node concept="3clFbS" id="5jb5jNCcmQJ" role="3clF47">
                <node concept="3clFbJ" id="5jb5jNCcmQK" role="3cqZAp">
                  <node concept="2ZW3vV" id="5jb5jNCcmQL" role="3clFbw">
                    <node concept="3uibUv" id="5jb5jNCcq9Y" role="2ZW6by">
                      <ref role="3uigEE" to="lv7i:5jb5jNC4nmA" resolve="StateDeclarationByNode" />
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
                                <ref role="3uigEE" to="lv7i:5jb5jNC4nmA" resolve="StateDeclarationByNode" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="5jb5jNCcAZq" role="2OqNvi">
                            <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
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
                          <ref role="37wK5l" to="56zl:~ECStateController.&lt;init&gt;(org.fbme.ide.richediting.adapters.ecc.ECStateCellHandle)" resolve="ECStateController" />
                          <node concept="2ShNRf" id="2RGdDg_ItXm" role="37wK5m">
                            <node concept="YeOm9" id="2RGdDg_ItXn" role="2ShVmc">
                              <node concept="1Y3b0j" id="2RGdDg_ItXo" role="YeSDq">
                                <property role="2bfB8j" value="true" />
                                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                <ref role="1Y3XeK" to="56zl:~ECStateCellHandle" resolve="ECStateCellHandle" />
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
                                    <node concept="3clFbF" id="6O98XsLlV9K" role="3cqZAp">
                                      <node concept="2OqwBi" id="6O98XsLlVXU" role="3clFbG">
                                        <node concept="37vLTw" id="6O98XsLlV9I" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3Sv$YXY1ycu" resolve="cell" />
                                        </node>
                                        <node concept="liA8E" id="6O98XsLlWPG" role="2OqNvi">
                                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.relayout()" resolve="relayout" />
                                        </node>
                                      </node>
                                    </node>
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
            <node concept="3uibUv" id="4Hbpy_fH8$t" role="2Ghqu4">
              <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
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
        <ref role="3uigEE" to="tamd:~ConnectionControllerFactory" resolve="ConnectionControllerFactory" />
        <node concept="3uibUv" id="4Hbpy_fGFi6" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
        <node concept="3uibUv" id="6SLp5w3L_7B" role="11_B2D">
          <ref role="3uigEE" to="56zl:~ECTransitionCursor" resolve="ECTransitionCursor" />
        </node>
        <node concept="3uibUv" id="6SLp5w3LAbd" role="11_B2D">
          <ref role="3uigEE" to="56zl:~ECTransitionPath" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="2ShNRf" id="38k27IRLr93" role="33vP2m">
        <node concept="YeOm9" id="38k27IRLtKt" role="2ShVmc">
          <node concept="1Y3b0j" id="38k27IRLtKw" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="tamd:~ConnectionControllerFactory" resolve="ConnectionControllerFactory" />
            <node concept="3Tm1VV" id="38k27IRLtKx" role="1B3o_S" />
            <node concept="3clFb_" id="38k27IRLtKz" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="38k27IRLtK_" role="1B3o_S" />
              <node concept="3uibUv" id="38k27IRLtKA" role="3clF45">
                <ref role="3uigEE" to="tamd:~ConnectionController" resolve="ConnectionController" />
                <node concept="3uibUv" id="6SLp5w3LSlX" role="11_B2D">
                  <ref role="3uigEE" to="56zl:~ECTransitionCursor" resolve="ECTransitionCursor" />
                </node>
                <node concept="3uibUv" id="6SLp5w3LSHn" role="11_B2D">
                  <ref role="3uigEE" to="56zl:~ECTransitionPath" resolve="ECTransitionPath" />
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
                <node concept="3uibUv" id="4Hbpy_fGHCp" role="1tU5fm">
                  <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
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
                            <ref role="3uigEE" to="lv7i:38k27IRGoEB" resolve="StateTransitionByNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="38k27IRLuvN" role="2OqNvi">
                        <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
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
                      <ref role="37wK5l" to="56zl:~ECTransitionController.&lt;init&gt;(org.fbme.ide.richediting.adapters.ecc.ECTransitionConditionCellHandle)" resolve="ECTransitionController" />
                      <node concept="2ShNRf" id="38k27IRLDQl" role="37wK5m">
                        <node concept="YeOm9" id="38k27IRLFjl" role="2ShVmc">
                          <node concept="1Y3b0j" id="38k27IRLFjo" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <ref role="1Y3XeK" to="56zl:~ECTransitionConditionCellHandle" resolve="ECTransitionConditionCellHandle" />
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
            <node concept="3uibUv" id="4Hbpy_fGGtV" role="2Ghqu4">
              <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
            </node>
            <node concept="3uibUv" id="6SLp5w3LQlx" role="2Ghqu4">
              <ref role="3uigEE" to="56zl:~ECTransitionCursor" resolve="ECTransitionCursor" />
            </node>
            <node concept="3uibUv" id="6SLp5w3LRme" role="2Ghqu4">
              <ref role="3uigEE" to="56zl:~ECTransitionPath" resolve="ECTransitionPath" />
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
            <node concept="2ShNRf" id="5jb5jNC5$86" role="37wK5m">
              <node concept="YeOm9" id="5jb5jNC5$87" role="2ShVmc">
                <node concept="1Y3b0j" id="5jb5jNC5$88" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="gl2l:~PositionalCompletionItem" resolve="PositionalCompletionItem" />
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
                      <node concept="3cpWs8" id="2yJZQx2u_97" role="3cqZAp">
                        <node concept="3cpWsn" id="2yJZQx2u_98" role="3cpWs9">
                          <property role="TrG5h" value="state" />
                          <node concept="3uibUv" id="4Hbpy_fGJ8F" role="1tU5fm">
                            <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                          </node>
                          <node concept="2OqwBi" id="2yJZQx2u_99" role="33vP2m">
                            <node concept="37vLTw" id="2yJZQx2u_9a" role="2Oq$k0">
                              <ref role="3cqZAo" node="1T4bYS8pL5S" resolve="factory" />
                            </node>
                            <node concept="liA8E" id="4Hbpy_fGIvJ" role="2OqNvi">
                              <ref role="37wK5l" to="v4vf:~IEC61499Factory.createStateDeclaration(org.fbme.lib.common.Identifier)" resolve="createStateDeclaration" />
                              <node concept="10Nm6u" id="4Hbpy_fGIN8" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2yJZQx2u_LD" role="3cqZAp">
                        <node concept="2OqwBi" id="2yJZQx2uA7P" role="3clFbG">
                          <node concept="37vLTw" id="2yJZQx2u_LB" role="2Oq$k0">
                            <ref role="3cqZAo" node="2yJZQx2u_98" resolve="state" />
                          </node>
                          <node concept="liA8E" id="2yJZQx2v4te" role="2OqNvi">
                            <ref role="37wK5l" to="7adg:~Declaration.setName(java.lang.String)" resolve="setName" />
                            <node concept="37vLTw" id="2yJZQx2v4WL" role="37wK5m">
                              <ref role="3cqZAo" node="5jb5jNC64Ln" resolve="pattern" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2yJZQx2v5rL" role="3cqZAp">
                        <node concept="2OqwBi" id="2yJZQx2v5Up" role="3clFbG">
                          <node concept="37vLTw" id="2yJZQx2v5rJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="2yJZQx2u_98" resolve="state" />
                          </node>
                          <node concept="liA8E" id="2yJZQx2v69n" role="2OqNvi">
                            <ref role="37wK5l" to="g136:~StateDeclaration.setX(int)" resolve="setX" />
                            <node concept="37vLTw" id="2yJZQx2v6pH" role="37wK5m">
                              <ref role="3cqZAo" node="5jb5jNC5$8p" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2yJZQx2v6v$" role="3cqZAp">
                        <node concept="2OqwBi" id="2yJZQx2v6v_" role="3clFbG">
                          <node concept="37vLTw" id="2yJZQx2v6vA" role="2Oq$k0">
                            <ref role="3cqZAo" node="2yJZQx2u_98" resolve="state" />
                          </node>
                          <node concept="liA8E" id="2yJZQx2v6vB" role="2OqNvi">
                            <ref role="37wK5l" to="g136:~StateDeclaration.setY(int)" resolve="setY" />
                            <node concept="37vLTw" id="2yJZQx2v6Uk" role="37wK5m">
                              <ref role="3cqZAo" node="5jb5jNC5$8r" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1T4bYS8pKuw" role="3cqZAp">
                        <node concept="2OqwBi" id="2yJZQx2v7Zz" role="3clFbG">
                          <node concept="2OqwBi" id="1T4bYS8pKQC" role="2Oq$k0">
                            <node concept="37vLTw" id="1T4bYS8pKuu" role="2Oq$k0">
                              <ref role="3cqZAo" node="1R4IoyQIbNZ" resolve="ecc" />
                            </node>
                            <node concept="liA8E" id="1T4bYS8pL1e" role="2OqNvi">
                              <ref role="37wK5l" to="g136:~ECC.getStates()" resolve="getStates" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2yJZQx2v8V_" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                            <node concept="37vLTw" id="2yJZQx2v9aQ" role="37wK5m">
                              <ref role="3cqZAo" node="2yJZQx2u_98" resolve="state" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2yJZQx2va37" role="3PaCim">
              <ref role="3uigEE" to="gl2l:~PositionalCompletionItem" resolve="PositionalCompletionItem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQI96z" role="1B3o_S" />
      <node concept="37vLTG" id="1R4IoyQIbNZ" role="3clF46">
        <property role="TrG5h" value="ecc" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1T4bYS8pJrP" role="1tU5fm">
          <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
        </node>
      </node>
      <node concept="37vLTG" id="1T4bYS8pL5S" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="4Hbpy_fGI1U" role="1tU5fm">
          <ref role="3uigEE" to="v4vf:~IEC61499Factory" resolve="IEC61499Factory" />
        </node>
      </node>
      <node concept="3uibUv" id="1R4IoyQId4x" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQIdJM" role="11_B2D">
          <ref role="3uigEE" to="gl2l:~PositionalCompletionItem" resolve="PositionalCompletionItem" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQHXu6" role="1B3o_S" />
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
                        <node concept="2YIFZM" id="2hWn4IdU$0_" role="3clFbG">
                          <ref role="37wK5l" node="2hWn4IdSWSS" resolve="createCellForetworkInstance" />
                          <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                          <node concept="37vLTw" id="2hWn4IdU$0A" role="37wK5m">
                            <ref role="3cqZAo" node="bRdTVHYPhL" resolve="context" />
                          </node>
                          <node concept="pncrf" id="2hWn4IdU$0B" role="37wK5m" />
                          <node concept="Rm8GO" id="3tHZ0yHyb$9" role="37wK5m">
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
                          <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                          <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
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
                          <ref role="37wK5l" node="1R4IoyQIIIZ" resolve="createEccEditor" />
                          <ref role="1Pybhc" node="1R4IoyQHXu5" resolve="ECCEditors" />
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
                      <ref role="37wK5l" to="t4dg:1zB5ET5xzsQ" resolve="languageTypeSafe" />
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
                        <node concept="2YIFZM" id="4gibKcMtUFe" role="3clFbG">
                          <ref role="37wK5l" node="2hWn4IdSWSS" resolve="createCellForetworkInstance" />
                          <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                          <node concept="37vLTw" id="4gibKcMtUFf" role="37wK5m">
                            <ref role="3cqZAo" node="2SU8oJdHhUs" resolve="context" />
                          </node>
                          <node concept="pncrf" id="4gibKcMtUFg" role="37wK5m" />
                          <node concept="Rm8GO" id="3tHZ0yHxAmB" role="37wK5m">
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
                        <node concept="2YIFZM" id="2SP6YJBXzMe" role="3clFbG">
                          <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                          <ref role="37wK5l" node="2hWn4IdSWSS" resolve="createCellForetworkInstance" />
                          <node concept="37vLTw" id="2SP6YJBXzMf" role="37wK5m">
                            <ref role="3cqZAo" node="2SP6YJBXzMa" resolve="context" />
                          </node>
                          <node concept="pncrf" id="2SP6YJBXzMg" role="37wK5m" />
                          <node concept="Rm8GO" id="3tHZ0yHxAQe" role="37wK5m">
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
</model>

