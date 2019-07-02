<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9a9b929e-1b8b-403c-99cb-9e49e4b8f68b(iec61499.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <use id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram" version="0" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="0" />
    <use id="120e1c9d-4e27-4478-b2af-b2c3bd3850b0" name="com.mbeddr.mpsutil.editor.querylist" version="0" />
    <use id="a0ab8c10-c118-4755-ba27-3853435cf524" name="de.itemis.mps.tooltips" version="0" />
    <use id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables" version="0" />
    <use id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="iec61499.meta.editor" version="0" />
    <use id="b8bb702e-43ed-4090-a902-d180d3e5f292" name="de.slisson.mps.conditionalEditor" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(iec61499.structure)" />
    <import index="nkm5" ref="r:095345ad-6627-42ca-9d3f-fc1b2d9fbd61(de.itemis.mps.editor.diagram.runtime.model)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="22ra" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.update(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="7ou7" ref="r:c2174d48-8423-45ea-b84e-77408df7449d(de.itemis.mps.editor.diagram.runtime.shape)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="kcid" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellLayout(MPS.Editor/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="5usg" ref="r:3838bb8b-fecd-4f7c-841e-325717a43980(de.itemis.mps.tooltips.runtime)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(iec61499.behavior)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(ST.structure)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="5kh9" ref="r:fb13b7e5-37c8-4188-96ed-057d5b8154fd(ST.editor)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="v900" ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(iec61499.ide)" />
    <import index="yg2w" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util.containers(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="6bz1" ref="r:d3905048-7598-4a84-931a-cbbcbcda146d(jetbrains.mps.lang.intentions.methods)" implicit="true" />
  </imports>
  <registry>
    <language id="b8bb702e-43ed-4090-a902-d180d3e5f292" name="de.slisson.mps.conditionalEditor">
      <concept id="2877762237606985499" name="de.slisson.mps.conditionalEditor.structure.EditorCondition" flags="ig" index="RtMap" />
      <concept id="2877762237606934069" name="de.slisson.mps.conditionalEditor.structure.ConditionalConceptEditorDeclaration" flags="ig" index="RtYIR">
        <property id="2877762237607078183" name="priority" index="Rtri_" />
        <child id="2877762237607015161" name="condition" index="RtEXV" />
      </concept>
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="540685334799965957" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenuVariable_Initializer" flags="ig" index="23wN_R" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="1226339751946" name="jetbrains.mps.lang.editor.structure.PaddingTopStyleClassItem" flags="ln" index="27yT$n" />
      <concept id="1226339813308" name="jetbrains.mps.lang.editor.structure.PaddingBottomStyleClassItem" flags="ln" index="27z8qx" />
      <concept id="1226339938453" name="jetbrains.mps.lang.editor.structure.AbstractPaddingStyleClassItem" flags="ln" index="27zB68">
        <property id="1226504838901" name="measure" index="2hoDZC" />
      </concept>
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="7429591467341004871" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Group" flags="ng" index="aenpk">
        <child id="7429591467341004872" name="parts" index="aenpr" />
        <child id="7655327340756279373" name="variables" index="1b80Z_" />
      </concept>
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1156252885376" name="separatorLayoutConstraint" index="Q2I2d" />
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="6046489571270834038" name="foldedCellModel" index="3EmGlc" />
      </concept>
      <concept id="1078308402140" name="jetbrains.mps.lang.editor.structure.CellModel_Custom" flags="sg" stub="8104358048506730068" index="gc7cB">
        <child id="1176795024817" name="cellProvider" index="3YsKMw" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="8954657570917870539" name="jetbrains.mps.lang.editor.structure.TransformationLocation_ContextAssistant" flags="ng" index="2j_NTm" />
      <concept id="3459162043708467089" name="jetbrains.mps.lang.editor.structure.CellActionMap_CanExecuteFunction" flags="in" index="jK8Ss" />
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1948540814635886374" name="jetbrains.mps.lang.editor.structure.AbstractCellSelector" flags="ng" index="lGBME" />
      <concept id="784421273959492578" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeMenu" flags="ng" index="mvV$s">
        <child id="6718020819487784677" name="menuReference" index="A14EM" />
      </concept>
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="4820515453818318288" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReferenceExpression" flags="ng" index="2pYGij">
        <reference id="4820515453818318891" name="hint" index="2pYH_C" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
        <child id="8979250711607012232" name="cellSelector" index="3a7HXU" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
        <property id="5944657839012629576" name="presentation" index="2BUmq6" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1638911550608571617" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Default" flags="ng" index="IW6AY" />
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="ng" index="2SsqMj" />
      <concept id="4323500428136740385" name="jetbrains.mps.lang.editor.structure.CellIdReferenceSelector" flags="ng" index="2TlHUq">
        <reference id="4323500428136742952" name="id" index="2TlMyj" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="4647688914602775700" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_targetNode" flags="ng" index="X5bN_" />
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ng" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1235999440492" name="jetbrains.mps.lang.editor.structure.HorizontalAlign" flags="ln" index="37jFXN">
        <property id="1235999920262" name="align" index="37lx6p" />
      </concept>
      <concept id="3360401466585705291" name="jetbrains.mps.lang.editor.structure.CellModel_ContextAssistant" flags="ng" index="18a60v" />
      <concept id="1154465273778" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_ParentNode" flags="nn" index="3bvxqY" />
      <concept id="1896914160037421068" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_WrapSubstituteMenu" flags="ng" index="3c8P5G">
        <child id="1896914160037421069" name="menuReference" index="3c8P5H" />
        <child id="1896914160037423677" name="handler" index="3c8PHt" />
      </concept>
      <concept id="1896914160037423680" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_WrapperHandler" flags="ig" index="3c8PGw" />
      <concept id="1896914160037437306" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_CreatedNode" flags="ng" index="3c8USq" />
      <concept id="1838685759388685703" name="jetbrains.mps.lang.editor.structure.TransformationFeature_DescriptionText" flags="ng" index="3cqGtN">
        <child id="1838685759388685704" name="query" index="3cqGtW" />
      </concept>
      <concept id="1838685759388690401" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_DescriptionText" flags="ig" index="3cqJkl" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="7342352913006985500" name="jetbrains.mps.lang.editor.structure.TransformationLocation_Completion" flags="ng" index="3eGOoe" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="3459162043708468028" name="canExecuteFunction" index="jK8aL" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="7291101478617127464" name="jetbrains.mps.lang.editor.structure.IExtensibleTransformationMenuPart" flags="ng" index="1joUw2">
        <child id="8954657570916349207" name="features" index="2jZA2a" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="730181322658904464" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_IncludeMenu" flags="ng" index="1s_PAr">
        <child id="730181322658904467" name="menuReference" index="1s_PAo" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="8210508057161359081" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_DefaultWithFunction" flags="ng" index="3tp4HU">
        <child id="8210508057161359082" name="query" index="3tp4HT" />
      </concept>
      <concept id="8210508057161359084" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Concept" flags="in" index="3tp4HZ" />
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="2314756748950088783" name="jetbrains.mps.lang.editor.structure.TransformationMenuVariableReference" flags="ng" index="3yx0qK" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1178539929008" name="jetbrains.mps.lang.editor.structure.TransformationMenuVariableDeclaration" flags="ig" index="1At2My">
        <child id="540685334799973431" name="initializerBlock" index="23wLD5" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
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
      <concept id="5624877018226904808" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Named" flags="ng" index="3ICXOK" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="422708224287891156" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_ReferenceMenu" flags="ng" index="3PzhKR">
        <reference id="422708224287891157" name="referenceLink" index="3PzhKQ" />
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
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1176749715029" name="jetbrains.mps.lang.editor.structure.QueryFunction_CellProvider" flags="in" index="3VJUX4" />
      <concept id="8428109087107030357" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_ReferenceScope" flags="ng" index="3XHNnq">
        <reference id="8428109087107339113" name="reference" index="3XGfJA" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1201370618622" name="jetbrains.mps.baseLanguage.structure.Property" flags="ig" index="2RhdJD">
        <property id="1201371481316" name="propertyName" index="2RkwnN" />
        <child id="1201371521209" name="type" index="2RkE6I" />
        <child id="1201372378714" name="propertyImplementation" index="2RnVtd" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1201372606839" name="jetbrains.mps.baseLanguage.structure.DefaultPropertyImplementation" flags="ng" index="2RoN1w">
        <child id="1202065356069" name="defaultGetAccessor" index="3wFrgM" />
        <child id="1202078082794" name="defaultSetAccessor" index="3xrYvX" />
      </concept>
      <concept id="1201385106094" name="jetbrains.mps.baseLanguage.structure.PropertyReference" flags="nn" index="2S8uIT">
        <reference id="1201385237847" name="property" index="2S8YL0" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
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
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="1202065242027" name="jetbrains.mps.baseLanguage.structure.DefaultGetAccessor" flags="ng" index="3wEZqW" />
      <concept id="1202077725299" name="jetbrains.mps.baseLanguage.structure.DefaultSetAccessor" flags="ng" index="3xqBd$">
        <child id="1202077744034" name="visibility" index="3xqFEP" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="a0ab8c10-c118-4755-ba27-3853435cf524" name="de.itemis.mps.tooltips">
      <concept id="9185659875393567715" name="de.itemis.mps.tooltips.structure.CellModel_Tooltip" flags="ng" index="1j7BWu">
        <property id="4804083432920625643" name="disableLazyEvaluation" index="2oejA6" />
        <child id="9185659875393569181" name="anchor" index="1j7Clw" />
        <child id="9185659875393569179" name="tooltip" index="1j7ClA" />
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
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="8880393040217246788" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodParameterInstance" flags="ig" index="ffn8J">
        <reference id="8880393040217294897" name="decl" index="ffrpq" />
      </concept>
    </language>
    <language id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells">
      <concept id="5083944728298846680" name="com.mbeddr.mpsutil.grammarcells.structure.OptionalCell" flags="ng" index="_tjkj">
        <child id="5083944728298846681" name="option" index="_tjki" />
        <child id="8945098465480008160" name="transformationText" index="ZWbT9" />
      </concept>
      <concept id="8945098465480383073" name="com.mbeddr.mpsutil.grammarcells.structure.OptionalCell_TransformationText" flags="ig" index="ZYGn8" />
      <concept id="7363578995839435357" name="com.mbeddr.mpsutil.grammarcells.structure.WrapperCell" flags="ng" index="1kIj98">
        <child id="7363578995839435358" name="wrapped" index="1kIj9b" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
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
    <language id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram">
      <concept id="6554619383005871291" name="de.itemis.mps.editor.diagram.structure.PortQuery" flags="ng" index="230Hcy">
        <child id="6554619383005871296" name="portFactory" index="230Hdp" />
        <child id="6554619383005871298" name="query" index="230Hdr" />
      </concept>
      <concept id="6554619383005758499" name="de.itemis.mps.editor.diagram.structure.Port" flags="ng" index="2316IU">
        <child id="6554619383005758747" name="label" index="2316E2" />
        <child id="6554619383005758749" name="shape" index="2316E4" />
        <child id="6554619383005758751" name="positionY" index="2316E6" />
        <child id="6554619383005758750" name="positionX" index="2316E7" />
      </concept>
      <concept id="6554619383003875357" name="de.itemis.mps.editor.diagram.structure.InlineEditorComponent" flags="ig" index="238au4" />
      <concept id="8433227566817223068" name="de.itemis.mps.editor.diagram.structure.LayeredLayoutAlgorithm" flags="ng" index="39fpm">
        <property id="7623784619795245948" name="direction" index="1NdBj4" />
      </concept>
      <concept id="6554619383001705551" name="de.itemis.mps.editor.diagram.structure.ConditionalEndpointTarget" flags="ng" index="23g$fm">
        <child id="6554619383001705552" name="condition" index="23g$f9" />
        <child id="6554619383001705554" name="if" index="23g$fb" />
        <child id="6554619383001705557" name="else" index="23g$fc" />
      </concept>
      <concept id="6554619383001456866" name="de.itemis.mps.editor.diagram.structure.PortEndpointTarget" flags="ng" index="23hSXV">
        <child id="6554619383001456867" name="portName" index="23hSXU" />
        <child id="6554619383001456869" name="box" index="23hSXW" />
      </concept>
      <concept id="6554619383001456740" name="de.itemis.mps.editor.diagram.structure.BoxEndpointTarget" flags="ng" index="23hSZX">
        <child id="6554619383001456819" name="targetId" index="23hSWE" />
      </concept>
      <concept id="6554619382999975769" name="de.itemis.mps.editor.diagram.structure.Content_GenericElementQuery_OuterNode" flags="ng" index="23r2z0" />
      <concept id="1110129820007229393" name="de.itemis.mps.editor.diagram.structure.CellModel_Diagram" flags="ng" index="27vDVx">
        <property id="4787596715132191458" name="disableEdgeRouting" index="3ZefsU" />
        <child id="8433227566816393050" name="layoutAlgorithm" index="35U2g" />
        <child id="8637411062076630380" name="connectionTypes" index="1xLlFP" />
        <child id="1981294357059564524" name="paletteSources" index="1RuSHk" />
      </concept>
      <concept id="3155126767690989914" name="de.itemis.mps.editor.diagram.structure.Content_GenericBoxQuery" flags="ng" index="ahg9e">
        <child id="6554619383004026644" name="editorComponent" index="23bJyd" />
        <child id="2863449916465291411" name="allowConnections" index="SH2gk" />
        <child id="5126420796713997777" name="shape" index="3Uta5s" />
      </concept>
      <concept id="3155126767689025629" name="de.itemis.mps.editor.diagram.structure.Content_Childs" flags="ng" index="aDKH9">
        <reference id="3155126767689025691" name="linkDeclaration" index="aDKIf" />
      </concept>
      <concept id="3462102746004176270" name="de.itemis.mps.editor.diagram.structure.DeleteHandler" flags="ig" index="2fs66k" />
      <concept id="8377729485182319155" name="de.itemis.mps.editor.diagram.structure.PaletteSource_EntryQuery" flags="ig" index="gQ1qB" />
      <concept id="9064581101900867235" name="de.itemis.mps.editor.diagram.structure.IEdgeEditor" flags="ng" index="ljJFv">
        <child id="2044706694575458564" name="labelCell" index="3kqczz" />
        <child id="6358960566596428706" name="curved" index="3Czvdj" />
        <child id="8587703283523592228" name="endpointFrom" index="1PN8q7" />
        <child id="8587703283523592242" name="endpointTo" index="1PN8qh" />
      </concept>
      <concept id="7464726264122062011" name="de.itemis.mps.editor.diagram.structure.Function_DrawShadow" flags="ig" index="2x7zL7" />
      <concept id="7464726264122071752" name="de.itemis.mps.editor.diagram.structure.Function_GetShape" flags="ig" index="2x7_8O" />
      <concept id="7464726264117247548" name="de.itemis.mps.editor.diagram.structure.ShapeDefinition" flags="ng" index="2xDbr0">
        <child id="7464726264122072737" name="getShape" index="2x7_pt" />
        <child id="7464726264122072730" name="drawShadow" index="2x7_pA" />
        <child id="7464726264118062179" name="draw" index="2xOiiv" />
        <child id="7592386925311538038" name="defaultSize" index="3pRy3o" />
        <child id="3454709602156469310" name="parameters" index="1xmOgE" />
      </concept>
      <concept id="7464726264117281947" name="de.itemis.mps.editor.diagram.structure.Parameter_Bounds" flags="ng" index="2xDkLB" />
      <concept id="7464726264117345981" name="de.itemis.mps.editor.diagram.structure.Function_DrawShape" flags="ig" index="2xDzp1" />
      <concept id="7464726264117388668" name="de.itemis.mps.editor.diagram.structure.Parameter_Graphics2D" flags="ng" index="2xDIQ0" />
      <concept id="7464726264117677937" name="de.itemis.mps.editor.diagram.structure.ShapeReference" flags="ng" index="2xQOud">
        <reference id="7464726264117677938" name="shape" index="2xQOue" />
        <child id="3454709602159778495" name="parameterValues" index="1xbcaF" />
      </concept>
      <concept id="5383048119156619323" name="de.itemis.mps.editor.diagram.structure.IDiagramElementsProvider" flags="ng" index="HB_m5">
        <child id="3155126767688717334" name="contentList" index="aCds2" />
      </concept>
      <concept id="7859343581441231771" name="de.itemis.mps.editor.diagram.structure.Function_AnnotationExternal" flags="ig" index="2IBfj3" />
      <concept id="7890587897031726207" name="de.itemis.mps.editor.diagram.structure.Content_GenericElementQuery" flags="ng" index="2M4AIt">
        <child id="3462102746004176459" name="deleteHandler" index="2fs69h" />
        <child id="7890587897031726226" name="id" index="2M4AHK" />
        <child id="7890587897031726224" name="parameterType" index="2M4AHM" />
        <child id="7890587897031726225" name="query" index="2M4AHN" />
      </concept>
      <concept id="6237710625713195816" name="de.itemis.mps.editor.diagram.structure.CellModel_DiagramNode" flags="ng" index="2ZK4vF">
        <child id="7464726264117682823" name="shape" index="2xQQDV" />
        <child id="7859343581441586435" name="annotationExternal" index="2IwSDr" />
        <child id="2863449916463668101" name="allowConnections" index="TjlW2" />
        <child id="738815095920065730" name="preservePortOrder" index="1pgz2C" />
        <child id="1315262826372527521" name="editor" index="1ytjkN" />
        <child id="1566844231766602492" name="ports2" index="3DrZTU" />
        <child id="6160055369549989399" name="allowScaling" index="3RJMYJ" />
      </concept>
      <concept id="6237710625713831199" name="de.itemis.mps.editor.diagram.structure.CellModel_DiagramConnector" flags="ng" index="2ZMJ7s" />
      <concept id="6237710625713942002" name="de.itemis.mps.editor.diagram.structure.Content_BLQuery" flags="ig" index="2ZMM4L" />
      <concept id="6237710625713964946" name="de.itemis.mps.editor.diagram.structure.Parameter_Node" flags="ng" index="2ZN8Hh" />
      <concept id="5468226901223973329" name="de.itemis.mps.editor.diagram.structure.PortObject" flags="ng" index="15kUEO" />
      <concept id="8963411245957652387" name="de.itemis.mps.editor.diagram.structure.Content_GenericElementQuery_Query" flags="ig" index="37q72E" />
      <concept id="8963411245958754161" name="de.itemis.mps.editor.diagram.structure.Content_GenericElementQuery_ParameterObject" flags="ng" index="37u81S" />
      <concept id="4277219764978107440" name="de.itemis.mps.editor.diagram.structure.SNodeConncetionType_toNode" flags="ng" index="3m_Ry6" />
      <concept id="4277219764978107398" name="de.itemis.mps.editor.diagram.structure.SNodeConncetionType_fromNode" flags="ng" index="3m_RyK" />
      <concept id="4277219764977337773" name="de.itemis.mps.editor.diagram.structure.SNodeConnectionType_Create" flags="ig" index="3mAF$r" />
      <concept id="4277219764977337122" name="de.itemis.mps.editor.diagram.structure.SNodeConnectionType" flags="ng" index="3mAFYk">
        <property id="4277219764978104391" name="label" index="3m_KjL" />
        <reference id="4277219764978094454" name="toConcept" index="3m_MR0" />
        <reference id="4277219764978086724" name="fromConcept" index="3m_WZM" />
        <child id="4277219764978094783" name="create" index="3m_MS9" />
      </concept>
      <concept id="3454709602156468860" name="de.itemis.mps.editor.diagram.structure.ShapeParameterDeclaration" flags="ng" index="1xmO9C">
        <child id="3454709602156468949" name="type" index="1xmOb1" />
      </concept>
      <concept id="3454709602156593329" name="de.itemis.mps.editor.diagram.structure.ShapeParameterReference" flags="ng" index="1xnly_">
        <reference id="3454709602156593404" name="parameter" index="1xnlzC" />
      </concept>
      <concept id="8637411062076624999" name="de.itemis.mps.editor.diagram.structure.Function_ConnectionTypes" flags="ig" index="1xLmZY" />
      <concept id="6987730699889040828" name="de.itemis.mps.editor.diagram.structure.LineColor" flags="lg" index="3C0NmK" />
      <concept id="6987730699889040827" name="de.itemis.mps.editor.diagram.structure.LineWidth" flags="lg" index="3C0NmR">
        <property id="6987730699889499559" name="value" index="3DY3mF" />
      </concept>
      <concept id="8587703283519920118" name="de.itemis.mps.editor.diagram.structure.ThisNodeExpression" flags="ng" index="1Pxb5l" />
      <concept id="8587703283523590697" name="de.itemis.mps.editor.diagram.structure.ConnectionEndpoint" flags="ng" index="1PNbMa">
        <child id="9064581101900868073" name="target" index="ljJml" />
        <child id="8587703283523590803" name="shape" index="1PNbKK" />
        <child id="3073973028676889051" name="anySideAllowed" index="3XKxJP" />
      </concept>
      <concept id="1981294357059563448" name="de.itemis.mps.editor.diagram.structure.ChildRolePaletteSource" flags="ng" index="1RuTs0">
        <reference id="1981294357059564497" name="linkDeclaration" index="1RuSHD" />
      </concept>
      <concept id="4254343767714424935" name="de.itemis.mps.editor.diagram.structure.InlineCompositeShape" flags="ng" index="3S2pXU">
        <child id="4254343767714425210" name="shapes" index="3S2pTB" />
      </concept>
      <concept id="4254343767714448667" name="de.itemis.mps.editor.diagram.structure.ConditionalShape" flags="ng" index="3S3z86">
        <child id="4254343767714448693" name="shape" index="3S3z8C" />
        <child id="4254343767714448733" name="condition" index="3S3z90" />
      </concept>
      <concept id="6768425860573551803" name="de.itemis.mps.editor.diagram.structure.ContextDeclaration" flags="ng" index="3TSTJe">
        <property id="6768425860573557162" name="variableName" index="3TSVrv" />
        <child id="6768425860573557165" name="variableValue" index="3TSVro" />
      </concept>
      <concept id="6768425860569742030" name="de.itemis.mps.editor.diagram.structure.ContextVariableReference" flags="ng" index="3YfvQV">
        <child id="6768425860569742085" name="type" index="3YfvLK" />
      </concept>
    </language>
    <language id="120e1c9d-4e27-4478-b2af-b2c3bd3850b0" name="com.mbeddr.mpsutil.editor.querylist">
      <concept id="6202678563380238499" name="com.mbeddr.mpsutil.editor.querylist.structure.Function_GetElements" flags="ig" index="s8sZD" />
      <concept id="6202678563380233810" name="com.mbeddr.mpsutil.editor.querylist.structure.CellModel_QueryList" flags="ng" index="s8t4o">
        <property id="730823979356023502" name="duplicatesSafe" index="28Zw97" />
        <property id="1140524450557" name="separatorText" index="2czwfP" />
        <property id="1156252885376" name="separatorLayoutConstraint" index="Q2I2e" />
        <reference id="730823979350682502" name="elementsConcept" index="28F8cf" />
        <child id="1140524464360" name="cellLayout" index="2czzBy" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBJ" />
        <child id="6202678563380433923" name="query" index="sbcd9" />
        <child id="7238779735251877228" name="editorComponent" index="1yzFaX" />
      </concept>
      <concept id="7238779735251712681" name="com.mbeddr.mpsutil.editor.querylist.structure.QueryListInlineEditorComponent" flags="ig" index="1yz3lS" />
    </language>
    <language id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables">
      <concept id="3981577588227981882" name="de.slisson.mps.tables.structure.CellCreateOperation" flags="ng" index="2CJim2">
        <child id="3981577588228006890" name="editor" index="2CJshi" />
        <child id="3981577588228006886" name="contextNode" index="2CJshu" />
      </concept>
      <concept id="3981577588228006907" name="de.slisson.mps.tables.structure.CellCreateOperationInlineEditor" flags="ig" index="2CJsh3" />
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
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="3609773094169249792" name="jetbrains.mps.lang.smodel.structure.Node_GetReferenceOperation" flags="nn" index="37Cfm0">
        <child id="3609773094169252180" name="linkQualifier" index="37CeNk" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
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
      <concept id="3717301156197626279" name="jetbrains.mps.lang.core.structure.BasePlaceholder" flags="ng" index="3DQ70j">
        <child id="3717301156197626301" name="content" index="3DQ709" />
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
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359206929" name="jetbrains.mps.lang.text.structure.Text" flags="ng" index="1Pa9Pv">
        <child id="2535923850359210936" name="lines" index="1PaQFQ" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="iec61499.meta.editor">
      <concept id="5118273348277656319" name="iec61499.meta.editor.structure.CellModel_BorderedRefNodeList" flags="sg" stub="5118273348279960673" index="1ktTy1">
        <child id="5118273348277720092" name="footerCell" index="1ktDpy" />
        <child id="5118273348277720090" name="headerCell" index="1ktDp$" />
      </concept>
      <concept id="3165118101539186033" name="iec61499.meta.editor.structure.SmallPort" flags="ng" index="3Tyytl" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
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
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="24kQdi" id="3HBlKeoYFrq">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="3EZMnI" id="6mpHcZeKwvy" role="2wV5jI">
      <property role="S$Qs1" value="false" />
      <node concept="PMmxH" id="3HBlKeoZHLF" role="3EZMnx">
        <ref role="PMmxG" node="3HBlKeoZHKf" resolve="FBTypeHeader" />
        <node concept="ljvvj" id="6mpHcZeKWFL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pyghasJP" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:3HBlKeoYFAL" resolve="internalVariables" />
        <node concept="ljvvj" id="6mpHcZeKWxV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="3HBlKeoYF$G" role="1ktDp$">
          <property role="3F0ifm" value="VAR" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="3HBlKeoYF$Q" role="1ktDpy">
          <property role="3F0ifm" value="END_VAR" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="4s7KBSjgWP_" role="2czzBI">
          <property role="ilYzB" value="no internal variables" />
          <node concept="Vb9p2" id="4s7KBSjjgYm" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPM3Z" id="4s7KBSjjgYn" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5s_pyghauCJ" role="2czzBx" />
      </node>
      <node concept="PMmxH" id="75nMhMfSUyF" role="3EZMnx">
        <ref role="PMmxG" node="75nMhMfSUmE" resolve="Interface_PlugsAndSockets" />
        <node concept="ljvvj" id="75nMhMfSUyG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pyghatCi" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0WX" resolve="states" />
        <node concept="ljvvj" id="5s_pyghatCj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRkQZ" id="5s_pyghauCL" role="2czzBx" />
        <node concept="3F0ifn" id="5s_pyghatCl" role="1ktDp$">
          <property role="3F0ifm" value="EC_STATES" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pyghatCm" role="1ktDpy">
          <property role="3F0ifm" value="END_STATES" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pyghptOn" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no EC states" />
          <node concept="Vb9p2" id="5s_pyghptOo" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPM3Z" id="5s_pyghptOp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pyghaudE" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
        <node concept="ljvvj" id="5s_pyghauw7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRkQZ" id="5s_pyghauCO" role="2czzBx" />
        <node concept="3F0ifn" id="6mpHcZeKWAx" role="1ktDp$">
          <property role="3F0ifm" value="EC_TRANSITIONS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="6mpHcZeKWAE" role="1ktDpy">
          <property role="3F0ifm" value="END_TRANSITIONS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="4s7KBSjl5aL" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no EC transitions" />
          <node concept="Vb9p2" id="4s7KBSjl9li" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPM3Z" id="4s7KBSjl9lj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6mpHcZeKwvB" role="2iSdaV" />
      <node concept="3F2HdR" id="3HBlKeoZ41Z" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
        <node concept="2iRkQZ" id="3HBlKeoZ421" role="2czzBx" />
        <node concept="ljvvj" id="6mpHcZeKWEr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4s7KBSjf00F" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4s7KBSjf00P" role="3n$kyP">
            <node concept="3clFbS" id="4s7KBSjf00Q" role="2VODD2">
              <node concept="3clFbF" id="4s7KBSjf08h" role="3cqZAp">
                <node concept="2OqwBi" id="4s7KBSjf1ZU" role="3clFbG">
                  <node concept="2OqwBi" id="4s7KBSjf0oC" role="2Oq$k0">
                    <node concept="pncrf" id="4s7KBSjf08g" role="2Oq$k0" />
                    <node concept="Bykcj" id="4s7KBSjf1ng" role="2OqNvi">
                      <node concept="1aIX9F" id="4s7KBSjf1ni" role="1xVPHs">
                        <node concept="26LbJo" id="4s7KBSjf1Co" role="1aIX9E">
                          <ref role="26LbJp" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4s7KBSjf40k" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="4s7KBSjf4rd" role="2czzBI">
          <property role="ilYzB" value="no algorithms" />
          <node concept="Vb9p2" id="4s7KBSjf4yZ" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPM3Z" id="4s7KBSjf4z4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="PI_pXYvaF3" role="3EZMnx">
        <ref role="PMmxG" node="PI_pXYvaBz" resolve="FBTypeFooter" />
      </node>
      <node concept="18a60v" id="2JGKyjiP1vN" role="3EZMnx">
        <node concept="VPM3Z" id="2JGKyjiP1vP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoYKVl">
    <property role="3GE5qa" value="interface" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiT" resolve="ParameterAssociation" />
    <node concept="1iCGBv" id="3HBlKeoYKVn" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:3HBlKeoYsiU" resolve="declaration" />
      <node concept="1sVBvm" id="3HBlKeoYKVp" role="1sWHZn">
        <node concept="3SHvHV" id="3HBlKeoYKVw" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="3HBlKeoYKWO">
    <property role="TrG5h" value="IEC61499DefaultStyles" />
    <node concept="14StLt" id="3HBlKeoYKWR" role="V601i">
      <property role="TrG5h" value="RootKeyword" />
      <node concept="VechU" id="3HBlKeoYLKm" role="3F10Kt">
        <property role="Vb096" value="DARK_GREEN" />
      </node>
      <node concept="Vb9p2" id="3HBlKeoYLKs" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="3HBlKeoYLP6" role="V601i">
      <property role="TrG5h" value="ExpandLabel" />
      <node concept="VechU" id="3HBlKeoYLPk" role="3F10Kt">
        <property role="Vb096" value="gray" />
      </node>
      <node concept="30gYXW" id="3HBlKeoYLPq" role="3F10Kt">
        <property role="Vb096" value="lightGray" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoYLPR">
    <property role="3GE5qa" value="interface" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="3EZMnI" id="3HBlKeoYLPT" role="2wV5jI">
      <node concept="3F0A7n" id="3HBlKeoYLQ0" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="_tjkj" id="PI_pXYb8vF" role="3EZMnx">
        <node concept="3EZMnI" id="PI_pXYb8vO" role="_tjki">
          <node concept="3F0ifn" id="3HBlKeoYLQ6" role="3EZMnx">
            <property role="3F0ifm" value="WITH" />
            <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
          </node>
          <node concept="3F2HdR" id="3HBlKeoYLQ$" role="3EZMnx">
            <property role="2czwfO" value="," />
            <property role="Q2I2d" value="punctuation" />
            <ref role="1NtTu8" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
            <node concept="2iRfu4" id="3HBlKeoYLQA" role="2czzBx" />
          </node>
          <node concept="l2Vlx" id="PI_pXYb8vR" role="2iSdaV" />
          <node concept="VPM3Z" id="PI_pXYb8vS" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="ZYGn8" id="ZbmrF99pnD" role="ZWbT9">
          <node concept="3clFbS" id="ZbmrF99pnE" role="2VODD2">
            <node concept="3clFbF" id="ZbmrF99por" role="3cqZAp">
              <node concept="Xl_RD" id="ZbmrF99poq" role="3clFbG">
                <property role="Xl_RC" value="with" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="7GyesCpsQ26" role="3EZMnx">
        <ref role="PMmxG" to="5kh9:7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="2iRfu4" id="3HBlKeoYLPW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoYM65">
    <property role="3GE5qa" value="interface" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
    <node concept="3EZMnI" id="3HBlKeoYM67" role="2wV5jI">
      <node concept="3F0A7n" id="3HBlKeoYM6e" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3HBlKeoYM6k" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="3HBlKeoYM6u" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3HBlKeoYM6s" resolve="type" />
      </node>
      <node concept="_tjkj" id="2lwHqHks7cy" role="3EZMnx">
        <node concept="3EZMnI" id="2lwHqHks7de" role="_tjki">
          <node concept="3F0ifn" id="2lwHqHks7ec" role="3EZMnx">
            <property role="3F0ifm" value=":=" />
            <ref role="1k5W1q" to="5kh9:7GyesCpx4MI" resolve="Operational" />
          </node>
          <node concept="3F1sOY" id="2lwHqHks4e_" role="3EZMnx">
            <ref role="1NtTu8" to="xiqq:2lwHqHks4d2" resolve="initialValue" />
          </node>
          <node concept="2iRfu4" id="2lwHqHks7dh" role="2iSdaV" />
          <node concept="VPM3Z" id="2lwHqHks7di" role="3F10Kt" />
        </node>
      </node>
      <node concept="PMmxH" id="7GyesCpsQ2n" role="3EZMnx">
        <ref role="PMmxG" to="5kh9:7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="2iRfu4" id="3HBlKeoYM6z" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoZ0UV">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
    <node concept="3EZMnI" id="3HBlKeoZ0UX" role="2wV5jI">
      <node concept="1iCGBv" id="3HBlKeoZ0V4" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0Ut" resolve="algorithm" />
        <node concept="1sVBvm" id="3HBlKeoZ0V6" role="1sWHZn">
          <node concept="3SHvHV" id="3HBlKeoZ0Vd" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="3HBlKeoZ0Vl" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F1sOY" id="2R0WzquVuyi" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2R0WzquVuy5" resolve="event" />
      </node>
      <node concept="l2Vlx" id="3HBlKeoZ0V0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoZ0We">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
    <node concept="3EZMnI" id="3HBlKeoZ0Wg" role="2wV5jI">
      <node concept="3F0A7n" id="3HBlKeoZ0Wn" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="_tjkj" id="PI_pXY9NJS" role="3EZMnx">
        <node concept="3EZMnI" id="PI_pXY9NK_" role="_tjki">
          <node concept="3F0ifn" id="PI_pXY9NKO" role="3EZMnx">
            <property role="3F0ifm" value=":" />
          </node>
          <node concept="3F2HdR" id="3HBlKeoZ0W_" role="3EZMnx">
            <property role="2czwfO" value="," />
            <property role="Q2I2d" value="punctuation" />
            <ref role="1NtTu8" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
            <node concept="l2Vlx" id="3HBlKeoZ0WB" role="2czzBx" />
          </node>
          <node concept="l2Vlx" id="PI_pXY9NKC" role="2iSdaV" />
          <node concept="VPM3Z" id="PI_pXY9NKD" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="7GyesCpsa_0" role="3EZMnx">
        <ref role="PMmxG" to="5kh9:7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="3HBlKeoZ0Wj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoZ44X">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
    <node concept="3EZMnI" id="3tDlCSlV9Z0" role="2wV5jI">
      <node concept="3F0ifn" id="3HBlKeoZ45C" role="3EZMnx">
        <property role="3F0ifm" value="ALGORITHM" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F0A7n" id="3HBlKeoZ45D" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="1zB5ET5xAVN" role="3EZMnx">
        <property role="3F0ifm" value="IN" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="1HlG4h" id="1zB5ET5xAWj" role="3EZMnx">
        <node concept="1HfYo3" id="1zB5ET5xAWl" role="1HlULh">
          <node concept="3TQlhw" id="1zB5ET5xAWn" role="1Hhtcw">
            <node concept="3clFbS" id="1zB5ET5xAWp" role="2VODD2">
              <node concept="3clFbF" id="1zB5ET5xLmG" role="3cqZAp">
                <node concept="2OqwBi" id="1zB5ET5xMtt" role="3clFbG">
                  <node concept="2OqwBi" id="1zB5ET5xL$h" role="2Oq$k0">
                    <node concept="pncrf" id="1zB5ET5xLmF" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1zB5ET5xLXR" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:1zB5ET5xzpJ" resolve="body" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1zB5ET5zrld" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:1zB5ET5xzsQ" resolve="languageTypeSafe" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3HBlKeoZ45E" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="3HBlKeoZ45F" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="3tDlCSlV9ZA" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="VPM3Z" id="3tDlCSlV9ZC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="1zB5ET5xNiD" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:1zB5ET5xzpJ" resolve="body" />
          <node concept="lj46D" id="1zB5ET5xNiH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pVoyu" id="1zB5ET5xNiM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="1zB5ET5xNiU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3HBlKeoZ45S" role="3EZMnx">
          <property role="3F0ifm" value="END_ALGORITHM" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="l2Vlx" id="3tDlCSlV9ZF" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="3tDlCSlV9Z5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoZaGO">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
    <node concept="3EZMnI" id="3HBlKeoZaGQ" role="2wV5jI">
      <node concept="1iCGBv" id="3HBlKeoZaGX" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
        <node concept="1sVBvm" id="3HBlKeoZaGZ" role="1sWHZn">
          <node concept="3SHvHV" id="3HBlKeoZaH6" role="2wV5jI" />
        </node>
      </node>
      <node concept="PMmxH" id="PI_pXYvaHg" role="3EZMnx">
        <ref role="PMmxG" node="PI_pXYvaGi" resolve="ToKeyword" />
      </node>
      <node concept="1iCGBv" id="3HBlKeoZaHF" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
        <node concept="1sVBvm" id="3HBlKeoZaHH" role="1sWHZn">
          <node concept="3SHvHV" id="3HBlKeoZaHU" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="3HBlKeoZaJc" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" to="5kh9:7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="3HBlKeoZaIO" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3HBlKeoZaIs" resolve="condition" />
      </node>
      <node concept="l2Vlx" id="3HBlKeoZaGT" role="2iSdaV" />
      <node concept="PMmxH" id="7GyesCpuu3e" role="3EZMnx">
        <ref role="PMmxG" to="5kh9:7GyesCpsa$X" resolve="Semicolon" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoZeHy">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZeH4" resolve="InputEventGuard" />
    <node concept="1iCGBv" id="3HBlKeoZeH$" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:3HBlKeoZeH5" resolve="inputEvent" />
      <node concept="1sVBvm" id="3HBlKeoZeHA" role="1sWHZn">
        <node concept="3SHvHV" id="3HBlKeoZeHH" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="3HBlKeoZHKf">
    <property role="TrG5h" value="FBTypeHeader" />
    <property role="3GE5qa" value="fbtype" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    <node concept="3EZMnI" id="3tDlCSlUDNt" role="2wV5jI">
      <node concept="3F0ifn" id="3HBlKeoYFrE" role="3EZMnx">
        <property role="3F0ifm" value="FUNCTION_BLOCK" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="3HBlKeoYFrT" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="6mpHcZeKWHR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2ByE74knc0P" role="3EZMnx">
        <ref role="PMmxG" node="2ByE74knc05" resolve="InterfaceList" />
      </node>
      <node concept="VPM3Z" id="3tDlCSlUDNv" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="l2Vlx" id="3tDlCSlUDNy" role="2iSdaV" />
    </node>
  </node>
  <node concept="2ABfQD" id="PI_pXYbMFW">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="FBTypePresentationKinds" />
    <node concept="2BsEeg" id="PI_pXYbMG0" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="ecc_diagram" />
      <property role="2BUmq6" value="Show basic function block's ECC with diagram notation" />
    </node>
    <node concept="2BsEeg" id="PI_pXYAiuF" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="fb_network" />
      <property role="2BUmq6" value="Show composite function block with diagram notation" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYbMG2">
    <property role="3GE5qa" value="fbtype.basic.ecc_diagram" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="3EZMnI" id="PI_pXYbYxn" role="2wV5jI">
      <node concept="3F0ifn" id="PI_pXYbYxu" role="3EZMnx">
        <property role="3F0ifm" value="ECC for function block" />
      </node>
      <node concept="3F0A7n" id="PI_pXYbYx$" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="PI_pXYbYxC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="PI_pXYbYxL" role="3EZMnx">
        <node concept="VPM3Z" id="PI_pXYbYxO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="27vDVx" id="PI_pXYc9X4" role="3EZMnx">
          <property role="3ZefsU" value="true" />
          <node concept="3mAFYk" id="PI_pXYiLw7" role="1xLlFP">
            <property role="3m_KjL" value="transitions" />
            <ref role="3m_WZM" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
            <ref role="3m_MR0" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
            <node concept="3mAF$r" id="PI_pXYiLw9" role="3m_MS9">
              <node concept="3clFbS" id="PI_pXYiLwb" role="2VODD2">
                <node concept="3clFbF" id="PI_pXYiLws" role="3cqZAp">
                  <node concept="2OqwBi" id="PI_pXYiNDn" role="3clFbG">
                    <node concept="2OqwBi" id="PI_pXYiLKX" role="2Oq$k0">
                      <node concept="1Pxb5l" id="PI_pXYiLwr" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="PI_pXYiMat" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="PI_pXYiRjv" role="2OqNvi">
                      <node concept="2pJPEk" id="PI_pXYiRta" role="25WWJ7">
                        <node concept="2pJPED" id="PI_pXYiRHF" role="2pJPEn">
                          <ref role="2pJxaS" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
                          <node concept="2pIpSj" id="PI_pXYiS26" role="2pJxcM">
                            <ref role="2pIpSl" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
                            <node concept="36biLy" id="PI_pXYiScL" role="2pJxcZ">
                              <node concept="3m_RyK" id="PI_pXYiSeI" role="36biLW" />
                            </node>
                          </node>
                          <node concept="2pIpSj" id="PI_pXYiSqT" role="2pJxcM">
                            <ref role="2pIpSl" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
                            <node concept="36biLy" id="PI_pXYiSAR" role="2pJxcZ">
                              <node concept="3m_Ry6" id="PI_pXYiSCO" role="36biLW" />
                            </node>
                          </node>
                          <node concept="2pIpSj" id="PI_pXYkl2N" role="2pJxcM">
                            <ref role="2pIpSl" to="xiqq:3HBlKeoZaIs" resolve="condition" />
                            <node concept="2pJPED" id="6g3sTReVWhb" role="2pJxcZ">
                              <ref role="2pJxaS" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
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
          <node concept="aDKH9" id="PI_pXYc9Xa" role="aCds2">
            <ref role="aDKIf" to="xiqq:3HBlKeoZ0WX" resolve="states" />
          </node>
          <node concept="aDKH9" id="PI_pXYfHmA" role="aCds2">
            <ref role="aDKIf" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
          </node>
          <node concept="1RuTs0" id="PI_pXYdwoN" role="1RuSHk">
            <ref role="1RuSHD" to="xiqq:3HBlKeoZ0WX" resolve="states" />
          </node>
          <node concept="39fpm" id="7t6qmPMGN5l" role="35U2g">
            <property role="1NdBj4" value="DOWN" />
          </node>
        </node>
        <node concept="l2Vlx" id="PI_pXYbYxS" role="2iSdaV" />
        <node concept="lj46D" id="PI_pXYbYy2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="2JGKyjiYUQM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="PI_pXYbYxq" role="2iSdaV" />
      <node concept="18a60v" id="2JGKyjiYUPq" role="3EZMnx">
        <node concept="VPM3Z" id="2JGKyjiYUPs" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="PI_pXYbYxa" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYbMG0" resolve="ecc_diagram" />
    </node>
  </node>
  <node concept="V5hpn" id="PI_pXYbMGe">
    <property role="TrG5h" value="IdeaStyleSheet" />
    <node concept="14StLt" id="PI_pXYbMGi" role="V601i">
      <property role="TrG5h" value="IdeaKeyword" />
      <node concept="VechU" id="PI_pXYbMGj" role="3F10Kt">
        <property role="Vb096" value="DARK_BLUE" />
      </node>
      <node concept="Vb9p2" id="PI_pXYbMGk" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="PI_pXYbMGo" role="V601i">
      <property role="TrG5h" value="IdeaType" />
      <node concept="VechU" id="PI_pXYbMGp" role="3F10Kt">
        <property role="Vb096" value="DARK_BLUE" />
      </node>
      <node concept="Vb9p2" id="PI_pXYbMGq" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYeUNh">
    <property role="3GE5qa" value="fbtype.basic.ecc_diagram" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
    <node concept="2ZK4vF" id="PI_pXYeUPR" role="2wV5jI">
      <node concept="3F0A7n" id="PI_pXYl222" role="1ytjkN">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2IBfj3" id="7UH$k724kr7" role="2IwSDr">
        <node concept="3clFbS" id="7UH$k724kr8" role="2VODD2">
          <node concept="3clFbF" id="DwO13vxahA" role="3cqZAp">
            <node concept="2OqwBi" id="DwO13vxdbA" role="3clFbG">
              <node concept="2OqwBi" id="DwO13vxaFW" role="2Oq$k0">
                <node concept="1Pxb5l" id="DwO13vxah_" role="2Oq$k0" />
                <node concept="3Tsc0h" id="DwO13vxbm_" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
                </node>
              </node>
              <node concept="3GX2aA" id="DwO13vxhOK" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="PI_pXYeUPO" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYbMG0" resolve="ecc_diagram" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYf0RM">
    <property role="3GE5qa" value="fbtype.basic.ecc_diagram" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
    <node concept="2aJ2om" id="PI_pXYf0S0" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYbMG0" resolve="ecc_diagram" />
    </node>
    <node concept="2ZMJ7s" id="PI_pXYf0S3" role="2wV5jI">
      <node concept="3clFbT" id="7t6qmPMMI4x" role="3Czvdj">
        <property role="3clFbU" value="true" />
      </node>
      <node concept="1PNbMa" id="PI_pXYf0S5" role="1PN8q7">
        <node concept="23hSZX" id="PI_pXYf0Sr" role="ljJml">
          <node concept="2OqwBi" id="PI_pXYf17J" role="23hSWE">
            <node concept="1Pxb5l" id="PI_pXYf0T$" role="2Oq$k0" />
            <node concept="3TrEf2" id="PI_pXYf1ht" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
            </node>
          </node>
        </node>
        <node concept="3clFbT" id="2JGKyjiUFnQ" role="3XKxJP">
          <property role="3clFbU" value="true" />
        </node>
      </node>
      <node concept="1PNbMa" id="PI_pXYf0S8" role="1PN8qh">
        <node concept="23hSZX" id="PI_pXYf1jV" role="ljJml">
          <node concept="2OqwBi" id="PI_pXYf1jW" role="23hSWE">
            <node concept="1Pxb5l" id="PI_pXYf1jX" role="2Oq$k0" />
            <node concept="3TrEf2" id="PI_pXYf1vW" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
            </node>
          </node>
        </node>
        <node concept="2xQOud" id="PI_pXYhjat" role="1PNbKK">
          <ref role="2xQOue" node="PI_pXYh60Q" resolve="ArrowHead" />
        </node>
        <node concept="3clFbT" id="2JGKyjiUFnX" role="3XKxJP">
          <property role="3clFbU" value="true" />
        </node>
      </node>
      <node concept="238au4" id="PI_pXYtz2a" role="3kqczz">
        <node concept="3F1sOY" id="PI_pXYtz2i" role="2wV5jI">
          <ref role="1NtTu8" to="xiqq:3HBlKeoZaIs" resolve="condition" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2xDbr0" id="PI_pXYh60Q">
    <property role="3GE5qa" value="fbtype.basic.ecc_diagram" />
    <property role="TrG5h" value="ArrowHead" />
    <node concept="2x7_8O" id="2JGKyji$wef" role="2x7_pt">
      <node concept="3clFbS" id="2JGKyji$weg" role="2VODD2">
        <node concept="3cpWs8" id="PI_pXYh7Sb" role="3cqZAp">
          <node concept="3cpWsn" id="PI_pXYh7Sa" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="PI_pXYh7Sc" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="PI_pXYh8q9" role="33vP2m">
              <node concept="1pGfFk" id="PI_pXYh8qd" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyjixC7v" role="3cqZAp" />
        <node concept="3cpWs8" id="PI_pXYh7Sf" role="3cqZAp">
          <node concept="3cpWsn" id="PI_pXYh7Se" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="PI_pXYh7Sg" role="1tU5fm" />
            <node concept="2OqwBi" id="PI_pXYh9HB" role="33vP2m">
              <node concept="2xDkLB" id="PI_pXYh9oi" role="2Oq$k0" />
              <node concept="liA8E" id="PI_pXYhapc" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth():double" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="PI_pXYh7Sj" role="3cqZAp">
          <node concept="3cpWsn" id="PI_pXYh7Si" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="PI_pXYh7Sk" role="1tU5fm" />
            <node concept="2OqwBi" id="PI_pXYhbsD" role="33vP2m">
              <node concept="2xDkLB" id="PI_pXYhaJ1" role="2Oq$k0" />
              <node concept="liA8E" id="PI_pXYhcjg" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getHeight():double" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="PI_pXYh7Sn" role="3cqZAp">
          <node concept="3cpWsn" id="PI_pXYh7Sm" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="PI_pXYh7So" role="1tU5fm" />
            <node concept="2OqwBi" id="PI_pXYhcYi" role="33vP2m">
              <node concept="2xDkLB" id="PI_pXYhcCX" role="2Oq$k0" />
              <node concept="liA8E" id="PI_pXYhdDR" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getMaxX():double" resolve="getMaxX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="PI_pXYh7Sr" role="3cqZAp">
          <node concept="3cpWsn" id="PI_pXYh7Sq" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="x" />
            <node concept="10P55v" id="PI_pXYh7Ss" role="1tU5fm" />
            <node concept="3cpWsd" id="PI_pXYh7St" role="33vP2m">
              <node concept="37vLTw" id="PI_pXYh7Su" role="3uHU7B">
                <ref role="3cqZAo" node="PI_pXYh7Sm" resolve="x2" />
              </node>
              <node concept="37vLTw" id="PI_pXYh7Sw" role="3uHU7w">
                <ref role="3cqZAo" node="PI_pXYh7Se" resolve="width" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="PI_pXYh7Sz" role="3cqZAp">
          <node concept="3cpWsn" id="PI_pXYh7Sy" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="y" />
            <node concept="10P55v" id="PI_pXYh7S$" role="1tU5fm" />
            <node concept="2OqwBi" id="PI_pXYhep_" role="33vP2m">
              <node concept="2xDkLB" id="PI_pXYhdTn" role="2Oq$k0" />
              <node concept="liA8E" id="PI_pXYhffV" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getY():double" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="PI_pXYh7SB" role="3cqZAp">
          <node concept="3cpWsn" id="PI_pXYh7SA" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="y2" />
            <node concept="10P55v" id="PI_pXYh7SC" role="1tU5fm" />
            <node concept="3cpWs3" id="PI_pXYh7SD" role="33vP2m">
              <node concept="37vLTw" id="PI_pXYh7SE" role="3uHU7B">
                <ref role="3cqZAo" node="PI_pXYh7Sy" resolve="y" />
              </node>
              <node concept="37vLTw" id="PI_pXYh7SF" role="3uHU7w">
                <ref role="3cqZAo" node="PI_pXYh7Si" resolve="height" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="PI_pXYh7SH" role="3cqZAp">
          <node concept="3cpWsn" id="PI_pXYh7SG" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="centerY" />
            <node concept="10P55v" id="PI_pXYh7SI" role="1tU5fm" />
            <node concept="3cpWs3" id="PI_pXYh7SJ" role="33vP2m">
              <node concept="37vLTw" id="PI_pXYh7SK" role="3uHU7B">
                <ref role="3cqZAo" node="PI_pXYh7Sy" resolve="y" />
              </node>
              <node concept="FJ1c_" id="PI_pXYh7SL" role="3uHU7w">
                <node concept="37vLTw" id="PI_pXYh7SM" role="3uHU7B">
                  <ref role="3cqZAo" node="PI_pXYh7Si" resolve="height" />
                </node>
                <node concept="3cmrfG" id="PI_pXYh7SN" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyjixBK7" role="3cqZAp" />
        <node concept="3clFbF" id="PI_pXYh7SO" role="3cqZAp">
          <node concept="2OqwBi" id="PI_pXYh8c5" role="3clFbG">
            <node concept="37vLTw" id="PI_pXYh8c4" role="2Oq$k0">
              <ref role="3cqZAo" node="PI_pXYh7Sa" resolve="shape" />
            </node>
            <node concept="liA8E" id="PI_pXYh8c6" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double):void" resolve="moveTo" />
              <node concept="37vLTw" id="PI_pXYh8c7" role="37wK5m">
                <ref role="3cqZAo" node="PI_pXYh7Sq" resolve="x" />
              </node>
              <node concept="3cpWsd" id="PI_pXYh8c8" role="37wK5m">
                <node concept="37vLTw" id="PI_pXYh8c9" role="3uHU7B">
                  <ref role="3cqZAo" node="PI_pXYh7SG" resolve="centerY" />
                </node>
                <node concept="37vLTw" id="PI_pXYh8cb" role="3uHU7w">
                  <ref role="3cqZAo" node="PI_pXYh7Si" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="PI_pXYh7SW" role="3cqZAp">
          <node concept="2OqwBi" id="PI_pXYh8f3" role="3clFbG">
            <node concept="37vLTw" id="PI_pXYh8f2" role="2Oq$k0">
              <ref role="3cqZAo" node="PI_pXYh7Sa" resolve="shape" />
            </node>
            <node concept="liA8E" id="PI_pXYh8f4" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="PI_pXYh8f5" role="37wK5m">
                <ref role="3cqZAo" node="PI_pXYh7Sm" resolve="x2" />
              </node>
              <node concept="37vLTw" id="PI_pXYh8f6" role="37wK5m">
                <ref role="3cqZAo" node="PI_pXYh7SG" resolve="centerY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="PI_pXYh7T0" role="3cqZAp">
          <node concept="2OqwBi" id="PI_pXYh8jB" role="3clFbG">
            <node concept="37vLTw" id="PI_pXYh8jA" role="2Oq$k0">
              <ref role="3cqZAo" node="PI_pXYh7Sa" resolve="shape" />
            </node>
            <node concept="liA8E" id="PI_pXYh8jC" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="PI_pXYh8jD" role="37wK5m">
                <ref role="3cqZAo" node="PI_pXYh7Sq" resolve="x" />
              </node>
              <node concept="3cpWs3" id="PI_pXYh8jE" role="37wK5m">
                <node concept="37vLTw" id="PI_pXYh8jF" role="3uHU7B">
                  <ref role="3cqZAo" node="PI_pXYh7SG" resolve="centerY" />
                </node>
                <node concept="37vLTw" id="PI_pXYh8jH" role="3uHU7w">
                  <ref role="3cqZAo" node="PI_pXYh7Si" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="PI_pXYh7Tc" role="3cqZAp">
          <node concept="2OqwBi" id="PI_pXYh8OV" role="3clFbG">
            <node concept="37vLTw" id="PI_pXYh8OU" role="2Oq$k0">
              <ref role="3cqZAo" node="PI_pXYh7Sa" resolve="shape" />
            </node>
            <node concept="liA8E" id="PI_pXYh8OW" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath():void" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyji$wHH" role="3cqZAp" />
        <node concept="3cpWs6" id="2JGKyji$wKi" role="3cqZAp">
          <node concept="37vLTw" id="2JGKyji$x6D" role="3cqZAk">
            <ref role="3cqZAo" node="PI_pXYh7Sa" resolve="shape" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYlIIo">
    <property role="3GE5qa" value="fbtype.basic.ecc_diagram" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
    <node concept="3EZMnI" id="PI_pXYlIIq" role="2wV5jI">
      <node concept="1iCGBv" id="PI_pXYlII$" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0Ut" resolve="algorithm" />
        <node concept="Veino" id="PI_pXYphXK" role="3F10Kt">
          <property role="Vb096" value="red" />
        </node>
        <node concept="27yT$n" id="PI_pXYn8rv" role="3F10Kt">
          <property role="3$6WeP" value="5" />
          <property role="2hoDZC" value="PIXELS" />
        </node>
        <node concept="27z8qx" id="PI_pXYn8rw" role="3F10Kt">
          <property role="3$6WeP" value="5" />
          <property role="2hoDZC" value="PIXELS" />
        </node>
        <node concept="1sVBvm" id="PI_pXYlIIA" role="1sWHZn">
          <node concept="3SHvHV" id="PI_pXYlIIK" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F1sOY" id="2R0WzquVuyB" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2R0WzquVuy5" resolve="event" />
        <node concept="Veino" id="PI_pXYphXo" role="3F10Kt">
          <property role="Vb096" value="lightGray" />
        </node>
        <node concept="27yT$n" id="PI_pXYmr_j" role="3F10Kt">
          <property role="3$6WeP" value="5" />
          <property role="2hoDZC" value="PIXELS" />
        </node>
        <node concept="27z8qx" id="PI_pXYmr_C" role="3F10Kt">
          <property role="3$6WeP" value="5" />
          <property role="2hoDZC" value="PIXELS" />
        </node>
      </node>
      <node concept="2iRfu4" id="PI_pXYlIIt" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="PI_pXYlIJt" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYbMG0" resolve="ecc_diagram" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYugbV">
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
    <node concept="3EZMnI" id="PI_pXYvaI4" role="2wV5jI">
      <node concept="3F0A7n" id="PI_pXYvaIU" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="PI_pXYvaIp" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="PI_pXYugbX" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:PI_pXYugbv" resolve="type" />
        <node concept="1sVBvm" id="PI_pXYugbZ" role="1sWHZn">
          <node concept="3SHvHV" id="PI_pXYugc9" role="2wV5jI" />
        </node>
      </node>
      <node concept="PMmxH" id="7GyesCpuuLi" role="3EZMnx">
        <ref role="PMmxG" to="5kh9:7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="2iRfu4" id="PI_pXYvaI5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYvasK">
    <property role="3GE5qa" value="fbtype.composite" />
    <ref role="1XX52x" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
    <node concept="3EZMnI" id="PI_pXYvasM" role="2wV5jI">
      <node concept="PMmxH" id="PI_pXYvax3" role="3EZMnx">
        <ref role="PMmxG" node="3HBlKeoZHKf" resolve="FBTypeHeader" />
        <node concept="ljvvj" id="PI_pXYvax4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHknvs6" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvrQ" resolve="FBNetwork_FBS" />
        <node concept="ljvvj" id="2lwHqHknvt6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="75nMhMfSUx4" role="3EZMnx">
        <ref role="PMmxG" node="75nMhMfSUmE" resolve="Interface_PlugsAndSockets" />
        <node concept="ljvvj" id="75nMhMfSUxX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHknvv4" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvus" resolve="FBNetwork_Connections" />
        <node concept="ljvvj" id="2lwHqHknvvS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="PI_pXYvaDO" role="3EZMnx">
        <ref role="PMmxG" node="PI_pXYvaBz" resolve="FBTypeFooter" />
        <node concept="ljvvj" id="61urdBwEK94" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="18a60v" id="61urdBwz32D" role="3EZMnx">
        <node concept="VPM3Z" id="61urdBwz32F" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="61urdBwz33l" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="PI_pXYvasP" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="PI_pXYvaBz">
    <property role="TrG5h" value="FBTypeFooter" />
    <property role="3GE5qa" value="fbtype" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    <node concept="3F0ifn" id="PI_pXYvaB_" role="2wV5jI">
      <property role="3F0ifm" value="END_FUNCTION_BLOCK" />
      <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
    </node>
  </node>
  <node concept="PKFIW" id="PI_pXYvaGi">
    <property role="TrG5h" value="ToKeyword" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="3F0ifn" id="PI_pXYvaGx" role="2wV5jI">
      <property role="3F0ifm" value="TO" />
      <ref role="1k5W1q" to="5kh9:7GyesCpx4MI" resolve="Operational" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYvaJX">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1XX52x" to="xiqq:4KieeRVlhii" resolve="Connection" />
    <node concept="3EZMnI" id="PI_pXYvaJZ" role="2wV5jI">
      <node concept="3F1sOY" id="PI_pXYvaKn" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:4KieeRVlhj5" resolve="source" />
      </node>
      <node concept="PMmxH" id="PI_pXYvaKC" role="3EZMnx">
        <ref role="PMmxG" node="PI_pXYvaGi" resolve="ToKeyword" />
      </node>
      <node concept="3F1sOY" id="PI_pXYvaKW" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:4KieeRVlhj8" resolve="destination" />
      </node>
      <node concept="PMmxH" id="7GyesCpuuLp" role="3EZMnx">
        <ref role="PMmxG" to="5kh9:7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="2iRfu4" id="PI_pXYvaK2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYvaM_">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1XX52x" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="3EZMnI" id="22$VZ0KxNmV" role="2wV5jI">
      <node concept="1iCGBv" id="22$VZ0KxNnc" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:PI_pXYus3R" resolve="component" />
        <node concept="1sVBvm" id="22$VZ0KxNne" role="1sWHZn">
          <node concept="3SHvHV" id="22$VZ0KxNnl" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="22$VZ0KxNnt" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="22$VZ0KxObw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="DwO13vaY0z" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="22$VZ0KxNnG" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <property role="1$x2rV" value="&lt;no declaration&gt;" />
        <ref role="1NtTu8" to="xiqq:PI_pXYus3O" resolve="declaration" />
        <ref role="1ERwB7" node="2ByE74kjMKu" resolve="Delete" />
        <node concept="1sVBvm" id="22$VZ0KxNnI" role="1sWHZn">
          <node concept="3SHvHV" id="22$VZ0KxNnW" role="2wV5jI" />
        </node>
      </node>
      <node concept="3EZMnI" id="3wAsKTkpeys" role="3EZMnx">
        <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        <node concept="VPM3Z" id="3wAsKTkpeyt" role="3F10Kt" />
        <node concept="gc7cB" id="3wAsKTkpeyw" role="3EZMnx">
          <node concept="3VJUX4" id="3wAsKTkpeyx" role="3YsKMw">
            <node concept="3clFbS" id="3wAsKTkpeyy" role="2VODD2">
              <node concept="3clFbF" id="3wAsKTkpeyz" role="3cqZAp">
                <node concept="2ShNRf" id="3wAsKTkpey$" role="3clFbG">
                  <node concept="1pGfFk" id="3wAsKTkpey_" role="2ShVmc">
                    <ref role="37wK5l" node="3wAsKTk97yU" resolve="WatcherCellProvider" />
                    <node concept="pncrf" id="3wAsKTkpeyA" role="37wK5m" />
                    <node concept="2OqwBi" id="6K_0vqj4TmQ" role="37wK5m">
                      <node concept="pncrf" id="6K_0vqj4Taa" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="6K_0vqj4Uiz" role="2OqNvi">
                        <node concept="1xMEDy" id="6K_0vqj4Ui_" role="1xVPHs">
                          <node concept="chp4Y" id="6K_0vqj4UE2" role="ri$Ld">
                            <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1PxgMI" id="3wAsKTkpeyB" role="37wK5m">
                      <node concept="chp4Y" id="3wAsKTkpeyC" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                      </node>
                      <node concept="2OqwBi" id="3wAsKTkpeyD" role="1m5AlR">
                        <node concept="pncrf" id="3wAsKTkpeyE" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3wAsKTkpeyF" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3wAsKTkpeyG" role="37wK5m">
                      <node concept="2OqwBi" id="3wAsKTkpeyH" role="2Oq$k0">
                        <node concept="pncrf" id="3wAsKTkpeyI" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3wAsKTkpeyJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="3wAsKTkpeyK" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="3wAsKTkpeyN" role="2iSdaV" />
        <node concept="pkWqt" id="3wAsKTkpeyO" role="pqm2j">
          <node concept="3clFbS" id="3wAsKTkpeyP" role="2VODD2">
            <node concept="3clFbF" id="6K_0vqjiRn7" role="3cqZAp">
              <node concept="2OqwBi" id="6K_0vqjiRn8" role="3clFbG">
                <node concept="2OqwBi" id="6K_0vqjiRn9" role="2Oq$k0">
                  <node concept="pncrf" id="6K_0vqjiRna" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="6K_0vqjiRnb" role="2OqNvi">
                    <node concept="1xMEDy" id="6K_0vqjiRnc" role="1xVPHs">
                      <node concept="chp4Y" id="6K_0vqjiRnd" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3x8VRR" id="6K_0vqjiRne" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="22$VZ0KxNmY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYvaPm">
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="1XX52x" to="xiqq:PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="3EZMnI" id="PI_pXYxsO1" role="2wV5jI">
      <node concept="1iCGBv" id="PI_pXYwOz9" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:PI_pXYus4r" resolve="component" />
        <node concept="1sVBvm" id="PI_pXYwOzb" role="1sWHZn">
          <node concept="3SHvHV" id="PI_pXYwOzl" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="PI_pXYwOzL" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="PI_pXYzzbl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="DwO13vkGC1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="PI_pXYvaPz" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:PI_pXYus4s" resolve="declaration" />
        <ref role="1ERwB7" node="2ByE74kjMKu" resolve="Delete" />
        <node concept="1sVBvm" id="PI_pXYvaP$" role="1sWHZn">
          <node concept="3SHvHV" id="PI_pXYvaP_" role="2wV5jI" />
        </node>
      </node>
      <node concept="2iRfu4" id="PI_pXYxsO2" role="2iSdaV" />
      <node concept="3EZMnI" id="3wAsKTk8Q4o" role="3EZMnx">
        <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        <node concept="VPM3Z" id="3wAsKTk8Q4q" role="3F10Kt" />
        <node concept="gc7cB" id="3wAsKTk97e3" role="3EZMnx">
          <node concept="3VJUX4" id="3wAsKTk97e5" role="3YsKMw">
            <node concept="3clFbS" id="3wAsKTk97e7" role="2VODD2">
              <node concept="3clFbF" id="3wAsKTkp8Ro" role="3cqZAp">
                <node concept="2ShNRf" id="3wAsKTkp8Rm" role="3clFbG">
                  <node concept="1pGfFk" id="3wAsKTkp9PD" role="2ShVmc">
                    <ref role="37wK5l" node="3wAsKTk97yU" resolve="WatcherCellProvider" />
                    <node concept="pncrf" id="3wAsKTkpa5I" role="37wK5m" />
                    <node concept="2OqwBi" id="6K_0vqj4VwI" role="37wK5m">
                      <node concept="pncrf" id="6K_0vqj4VwJ" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="6K_0vqj4VwK" role="2OqNvi">
                        <node concept="1xMEDy" id="6K_0vqj4VwL" role="1xVPHs">
                          <node concept="chp4Y" id="6K_0vqj4VwM" role="ri$Ld">
                            <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1PxgMI" id="3wAsKTkpaDg" role="37wK5m">
                      <node concept="chp4Y" id="3wAsKTkpaDh" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                      </node>
                      <node concept="2OqwBi" id="3wAsKTkpaDi" role="1m5AlR">
                        <node concept="pncrf" id="3wAsKTkpaDj" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3wAsKTkpaDk" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3wAsKTkpcHk" role="37wK5m">
                      <node concept="2OqwBi" id="3wAsKTkpb$$" role="2Oq$k0">
                        <node concept="pncrf" id="3wAsKTkpbnM" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3wAsKTkpc4j" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="3wAsKTkpdmN" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="3wAsKTk8Q4t" role="2iSdaV" />
        <node concept="pkWqt" id="3wAsKTk8Q4F" role="pqm2j">
          <node concept="3clFbS" id="3wAsKTk8Q4G" role="2VODD2">
            <node concept="3clFbF" id="5jACUPFK47C" role="3cqZAp">
              <node concept="2OqwBi" id="6K_0vqjiNME" role="3clFbG">
                <node concept="2OqwBi" id="6K_0vqjiMis" role="2Oq$k0">
                  <node concept="pncrf" id="6K_0vqjiM1x" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="6K_0vqjiN8S" role="2OqNvi">
                    <node concept="1xMEDy" id="6K_0vqjiN8U" role="1xVPHs">
                      <node concept="chp4Y" id="6K_0vqjiNtb" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3x8VRR" id="6K_0vqjiQ5Q" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYB6o3">
    <property role="3GE5qa" value="fbtype.composite" />
    <ref role="1XX52x" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
    <node concept="2aJ2om" id="PI_pXYB6ob" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
    <node concept="3EZMnI" id="61urdBwFWdD" role="2wV5jI">
      <node concept="3F0ifn" id="61urdBxlRAS" role="3EZMnx">
        <property role="3F0ifm" value="FUNCTION_BLOCK" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="61urdBwG6rl" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="61urdBwGdBp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHjRDY6" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHjRDLP" resolve="Component_FBNetwork" />
        <node concept="ljvvj" id="2lwHqHkgPT8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="61urdBwGfyu" role="3EZMnx">
        <ref role="PMmxG" node="PI_pXYvaBz" resolve="FBTypeFooter" />
        <node concept="ljvvj" id="61urdBwHjCM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="18a60v" id="61urdBwHjCO" role="3EZMnx">
        <node concept="VPM3Z" id="61urdBwHjCQ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="l2Vlx" id="61urdBwFWdG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYB8Fs">
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
    <node concept="2aJ2om" id="PI_pXYB8F$" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
    <node concept="3EZMnI" id="3wWUd4kieL_" role="2wV5jI">
      <node concept="2ZK4vF" id="PI_pXYB8FB" role="3EZMnx">
        <node concept="230Hcy" id="PI_pXYB8Gi" role="3DrZTU">
          <node concept="2OqwBi" id="PI_pXYB9hW" role="230Hdr">
            <node concept="2OqwBi" id="PI_pXYB8Oa" role="2Oq$k0">
              <node concept="1Pxb5l" id="PI_pXYB8G$" role="2Oq$k0" />
              <node concept="3TrEf2" id="PI_pXYB8Zr" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="PI_pXYB9wV" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
          <node concept="3Tyytl" id="2JGKyjirJpx" role="230Hdp">
            <node concept="2OqwBi" id="2JGKyjirJp_" role="2316E2">
              <node concept="15kUEO" id="2JGKyjirJpA" role="2Oq$k0" />
              <node concept="3TrcHB" id="2JGKyjirJpB" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="2JGKyjirJpz" role="2316E6">
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <ref role="37wK5l" node="1Oxt8drfibZ" resolve="eventPosition" />
              <node concept="15kUEO" id="2JGKyjirJp$" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="2JGKyjiCM$P" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv0hA9" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="PI_pXYBaGd" role="3DrZTU">
          <node concept="2OqwBi" id="PI_pXYBaGe" role="230Hdr">
            <node concept="2OqwBi" id="PI_pXYBaGf" role="2Oq$k0">
              <node concept="1Pxb5l" id="PI_pXYBaGg" role="2Oq$k0" />
              <node concept="3TrEf2" id="PI_pXYBaGh" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="PI_pXYBb3L" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
          <node concept="3Tyytl" id="2JGKyjirKVj" role="230Hdp">
            <node concept="2OqwBi" id="2JGKyjirKVl" role="2316E2">
              <node concept="15kUEO" id="2JGKyjirKVm" role="2Oq$k0" />
              <node concept="3TrcHB" id="2JGKyjirKVn" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3b6qkQ" id="2JGKyjirKVo" role="2316E7">
              <property role="$nhwW" value="1.0" />
            </node>
            <node concept="2YIFZM" id="2JGKyjirKVp" role="2316E6">
              <ref role="37wK5l" node="1Oxt8drfibZ" resolve="eventPosition" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="15kUEO" id="2JGKyjirKVq" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="2JGKyjiCLBb" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv0hCm" role="1xbcaF">
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
                <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="PI_pXYC5gV" role="3DrZTU">
          <node concept="2OqwBi" id="PI_pXYC5gW" role="230Hdr">
            <node concept="2OqwBi" id="PI_pXYC5gX" role="2Oq$k0">
              <node concept="1Pxb5l" id="PI_pXYC5gY" role="2Oq$k0" />
              <node concept="3TrEf2" id="PI_pXYC5gZ" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="PI_pXYC60D" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
          <node concept="3Tyytl" id="2JGKyjirL1L" role="230Hdp">
            <node concept="2OqwBi" id="2JGKyjirL1N" role="2316E2">
              <node concept="15kUEO" id="2JGKyjirL1O" role="2Oq$k0" />
              <node concept="3TrcHB" id="2JGKyjirL1P" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="2JGKyjirL1Q" role="2316E6">
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <ref role="37wK5l" node="1Oxt8drftoQ" resolve="dataPosition" />
              <node concept="15kUEO" id="2JGKyjirL1R" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="2JGKyjiCLk7" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv0hK5" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="PI_pXYC5h6" role="3DrZTU">
          <node concept="2OqwBi" id="PI_pXYC5h7" role="230Hdr">
            <node concept="2OqwBi" id="PI_pXYC5h8" role="2Oq$k0">
              <node concept="1Pxb5l" id="PI_pXYC5h9" role="2Oq$k0" />
              <node concept="3TrEf2" id="PI_pXYC5ha" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="PI_pXYC5Gz" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
          <node concept="3Tyytl" id="2JGKyjirL9Q" role="230Hdp">
            <node concept="2OqwBi" id="2JGKyjirL9S" role="2316E2">
              <node concept="15kUEO" id="2JGKyjirL9T" role="2Oq$k0" />
              <node concept="3TrcHB" id="2JGKyjirL9U" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3b6qkQ" id="2JGKyjirL9V" role="2316E7">
              <property role="$nhwW" value="1.0" />
            </node>
            <node concept="2YIFZM" id="2JGKyjirL9W" role="2316E6">
              <ref role="37wK5l" node="1Oxt8drftoQ" resolve="dataPosition" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="15kUEO" id="2JGKyjirL9X" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="2JGKyjiCLvl" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv4uiG" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="5VLuTnk_Ehs" role="3DrZTU">
          <node concept="2OqwBi" id="5VLuTnk_Eht" role="230Hdr">
            <node concept="2OqwBi" id="5VLuTnk_Ehu" role="2Oq$k0">
              <node concept="1Pxb5l" id="5VLuTnk_Ehv" role="2Oq$k0" />
              <node concept="3TrEf2" id="5VLuTnk_Ehw" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5VLuTnk_KoB" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
            </node>
          </node>
          <node concept="3Tyytl" id="5VLuTnk_Ehy" role="230Hdp">
            <node concept="2OqwBi" id="5VLuTnk_Ehz" role="2316E2">
              <node concept="15kUEO" id="5VLuTnk_Eh$" role="2Oq$k0" />
              <node concept="3TrcHB" id="5VLuTnk_Eh_" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="5VLuTnk_Kyt" role="2316E6">
              <ref role="37wK5l" node="5VLuTnk$Eqz" resolve="socketPosition" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="15kUEO" id="5VLuTnk_Kyu" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="5VLuTnk_EhC" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv0jiD" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm6t" resolve="ADAPTER" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="5VLuTnk_EhE" role="3DrZTU">
          <node concept="2OqwBi" id="5VLuTnk_EhF" role="230Hdr">
            <node concept="2OqwBi" id="5VLuTnk_EhG" role="2Oq$k0">
              <node concept="1Pxb5l" id="5VLuTnk_EhH" role="2Oq$k0" />
              <node concept="3TrEf2" id="5VLuTnk_EhI" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5VLuTnk_KVP" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
            </node>
          </node>
          <node concept="3Tyytl" id="5VLuTnk_EhK" role="230Hdp">
            <node concept="2OqwBi" id="5VLuTnk_EhL" role="2316E2">
              <node concept="15kUEO" id="5VLuTnk_EhM" role="2Oq$k0" />
              <node concept="3TrcHB" id="5VLuTnk_EhN" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3b6qkQ" id="5VLuTnk_EhO" role="2316E7">
              <property role="$nhwW" value="1.0" />
            </node>
            <node concept="2YIFZM" id="5VLuTnk_Ljr" role="2316E6">
              <ref role="37wK5l" node="5VLuTnk$EaN" resolve="plugPosition" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="15kUEO" id="5VLuTnk_Ljs" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="5VLuTnk_EhR" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv4ueq" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm6t" resolve="ADAPTER" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbT" id="PI_pXYOxss" role="1pgz2C">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="3clFbT" id="PI_pXYOxul" role="TjlW2">
          <property role="3clFbU" value="false" />
        </node>
        <node concept="2xQOud" id="1Oxt8dr47H$" role="2xQQDV">
          <ref role="2xQOue" node="1Oxt8dr0eli" resolve="ComponentShape" />
          <node concept="2YIFZM" id="2JGKyji5MNZ" role="1xbcaF">
            <ref role="37wK5l" node="1Oxt8dr0Cdm" resolve="layoutDataPositions" />
            <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
            <node concept="2OqwBi" id="2JGKyjicjge" role="37wK5m">
              <node concept="1Pxb5l" id="2JGKyji5MO0" role="2Oq$k0" />
              <node concept="3TrEf2" id="2JGKyjicjE3" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="2JGKyji5Fwp" role="1xbcaF">
            <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
            <ref role="37wK5l" node="1Oxt8dr0keK" resolve="layoutEventPositions" />
            <node concept="2OqwBi" id="2JGKyjicjO6" role="37wK5m">
              <node concept="1Pxb5l" id="2JGKyji5Me$" role="2Oq$k0" />
              <node concept="3TrEf2" id="2JGKyjickdV" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="1Oxt8dr67pc" role="1ytjkN">
          <node concept="3EZMnI" id="6SHOz3uvRqO" role="3EZMnx">
            <node concept="VPM3Z" id="6SHOz3uvRqP" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="35HoNQ" id="6SHOz3uvRqQ" role="3EZMnx">
              <node concept="37jFXN" id="6SHOz3uzu5E" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
            <node concept="3F0A7n" id="ZbmrF9baHA" role="3EZMnx">
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="37jFXN" id="ZbmrF9dI4F" role="3F10Kt">
                <property role="37lx6p" value="CENTER" />
              </node>
            </node>
            <node concept="35HoNQ" id="6SHOz3uvRqV" role="3EZMnx">
              <node concept="37jFXN" id="6SHOz3uzu5C" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
            <node concept="2iRfu4" id="6SHOz3u_S9H" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="1Oxt8dr67CZ" role="3EZMnx">
            <node concept="VPM3Z" id="1Oxt8dr67D1" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="1Oxt8dr67D4" role="2iSdaV" />
            <node concept="gc7cB" id="61urdByqaMd" role="3EZMnx">
              <node concept="3VJUX4" id="61urdByqaMf" role="3YsKMw">
                <node concept="3clFbS" id="61urdByqaMh" role="2VODD2">
                  <node concept="3clFbF" id="61urdBywqwf" role="3cqZAp">
                    <node concept="2ShNRf" id="61urdBywqwd" role="3clFbG">
                      <node concept="1pGfFk" id="61urdBywr6y" role="2ShVmc">
                        <ref role="37wK5l" node="61urdBywjrw" resolve="EventInstancesCellProvider" />
                        <node concept="pncrf" id="61urdBywraq" role="37wK5m" />
                        <node concept="3clFbT" id="61urdBz1Rbs" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="35HoNQ" id="1Oxt8dre1J1" role="3EZMnx">
              <node concept="VPM3Z" id="61urdBxsA$T" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="gc7cB" id="61urdBz1RfR" role="3EZMnx">
              <node concept="3VJUX4" id="61urdBz1RfS" role="3YsKMw">
                <node concept="3clFbS" id="61urdBz1RfT" role="2VODD2">
                  <node concept="3clFbF" id="61urdBz1RfU" role="3cqZAp">
                    <node concept="2ShNRf" id="61urdBz1RfV" role="3clFbG">
                      <node concept="1pGfFk" id="61urdBz1RfW" role="2ShVmc">
                        <ref role="37wK5l" node="61urdBywjrw" resolve="EventInstancesCellProvider" />
                        <node concept="pncrf" id="61urdBz1RfX" role="37wK5m" />
                        <node concept="3clFbT" id="61urdBz1RfY" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37jFXN" id="6SHOz3ulqn_" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
          </node>
          <node concept="35HoNQ" id="6SHOz3utlQ8" role="3EZMnx" />
          <node concept="3EZMnI" id="6SHOz3us7JS" role="3EZMnx">
            <node concept="VPM3Z" id="6SHOz3us7JU" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="35HoNQ" id="6SHOz3us820" role="3EZMnx" />
            <node concept="1iCGBv" id="3wWUd4kil9h" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:PI_pXYugbv" resolve="type" />
              <node concept="1sVBvm" id="3wWUd4kil9j" role="1sWHZn">
                <node concept="3F0A7n" id="3wWUd4kilrG" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="37jFXN" id="3wWUd4kiqTQ" role="3F10Kt">
                <property role="37lx6p" value="CENTER" />
              </node>
            </node>
            <node concept="35HoNQ" id="6SHOz3us85C" role="3EZMnx" />
            <node concept="2iRfu4" id="6SHOz3us7JX" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="1Oxt8drd19F" role="3EZMnx">
            <node concept="VPM3Z" id="1Oxt8drd19G" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="1Oxt8drd19H" role="2iSdaV" />
            <node concept="3EZMnI" id="5VLuTnkz4RQ" role="3EZMnx">
              <node concept="VPM3Z" id="5VLuTnkz4RS" role="3F10Kt" />
              <node concept="1iCGBv" id="1Oxt8drd19I" role="3EZMnx">
                <ref role="1NtTu8" to="xiqq:PI_pXYugbv" resolve="type" />
                <node concept="1sVBvm" id="1Oxt8drd19J" role="1sWHZn">
                  <node concept="s8t4o" id="1Oxt8drd19K" role="2wV5jI">
                    <property role="28Zw97" value="true" />
                    <ref role="28F8cf" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                    <node concept="xShMh" id="1Oxt8drd19L" role="3F10Kt">
                      <property role="VOm3f" value="true" />
                    </node>
                    <node concept="s8sZD" id="1Oxt8drd19M" role="sbcd9">
                      <node concept="3clFbS" id="1Oxt8drd19N" role="2VODD2">
                        <node concept="3clFbF" id="1Oxt8drd19O" role="3cqZAp">
                          <node concept="2OqwBi" id="1Oxt8drd19P" role="3clFbG">
                            <node concept="pncrf" id="1Oxt8drd19Q" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="1Oxt8drd1Jm" role="2OqNvi">
                              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1yz3lS" id="1Oxt8drd19S" role="1yzFaX">
                      <node concept="3F0A7n" id="1Oxt8drd19T" role="2wV5jI">
                        <property role="1Intyy" value="true" />
                        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                        <node concept="VPM3Z" id="1Oxt8drrBVJ" role="3F10Kt">
                          <property role="VOm3f" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="2iRkQZ" id="1Oxt8drd19U" role="2czzBy" />
                    <node concept="35HoNQ" id="5VLuTnkIe_Y" role="2czzBJ" />
                  </node>
                </node>
              </node>
              <node concept="1iCGBv" id="5VLuTnkz54t" role="3EZMnx">
                <ref role="1NtTu8" to="xiqq:PI_pXYugbv" resolve="type" />
                <node concept="1sVBvm" id="5VLuTnkz54v" role="1sWHZn">
                  <node concept="s8t4o" id="5VLuTnkz56G" role="2wV5jI">
                    <property role="28Zw97" value="true" />
                    <ref role="28F8cf" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
                    <node concept="xShMh" id="5VLuTnkz56I" role="3F10Kt">
                      <property role="VOm3f" value="true" />
                    </node>
                    <node concept="s8sZD" id="5VLuTnkz56J" role="sbcd9">
                      <node concept="3clFbS" id="5VLuTnkz56K" role="2VODD2">
                        <node concept="3clFbF" id="5VLuTnkz5d9" role="3cqZAp">
                          <node concept="2OqwBi" id="5VLuTnkz5oA" role="3clFbG">
                            <node concept="pncrf" id="5VLuTnkz5d4" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="5VLuTnkz6Vp" role="2OqNvi">
                              <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1yz3lS" id="5VLuTnkz7KL" role="1yzFaX">
                      <node concept="1HlG4h" id="5VLuTnkz8_5" role="2wV5jI">
                        <node concept="VPM3Z" id="5VLuTnkze35" role="3F10Kt" />
                        <node concept="1HfYo3" id="5VLuTnkz8_8" role="1HlULh">
                          <node concept="3TQlhw" id="5VLuTnkz8_b" role="1Hhtcw">
                            <node concept="3clFbS" id="5VLuTnkz8_e" role="2VODD2">
                              <node concept="3clFbF" id="5VLuTnkz8J_" role="3cqZAp">
                                <node concept="3cpWs3" id="5VLuTnkz9C_" role="3clFbG">
                                  <node concept="2OqwBi" id="5VLuTnkzard" role="3uHU7w">
                                    <node concept="pncrf" id="5VLuTnkza1U" role="2Oq$k0" />
                                    <node concept="3TrcHB" id="5VLuTnkzb49" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="5VLuTnkz8J$" role="3uHU7B">
                                    <property role="Xl_RC" value="&gt;&gt;" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="35HoNQ" id="5VLuTnkIegF" role="2czzBJ" />
                    <node concept="2iRkQZ" id="G6ZN4N4bgd" role="2czzBy" />
                  </node>
                </node>
              </node>
              <node concept="2iRkQZ" id="5VLuTnkz4TX" role="2iSdaV" />
            </node>
            <node concept="35HoNQ" id="1Oxt8dre1Oc" role="3EZMnx">
              <node concept="VPM3Z" id="61urdBxsAMu" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3EZMnI" id="5VLuTnkz8a7" role="3EZMnx">
              <node concept="1iCGBv" id="1Oxt8drd19V" role="3EZMnx">
                <ref role="1NtTu8" to="xiqq:PI_pXYugbv" resolve="type" />
                <node concept="1sVBvm" id="1Oxt8drd19W" role="1sWHZn">
                  <node concept="s8t4o" id="1Oxt8drd19X" role="2wV5jI">
                    <property role="28Zw97" value="true" />
                    <ref role="28F8cf" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                    <node concept="xShMh" id="1Oxt8drd19Y" role="3F10Kt">
                      <property role="VOm3f" value="true" />
                    </node>
                    <node concept="s8sZD" id="1Oxt8drd19Z" role="sbcd9">
                      <node concept="3clFbS" id="1Oxt8drd1a0" role="2VODD2">
                        <node concept="3clFbF" id="1Oxt8drd1a1" role="3cqZAp">
                          <node concept="2OqwBi" id="1Oxt8drd1a2" role="3clFbG">
                            <node concept="pncrf" id="1Oxt8drd1a3" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="1Oxt8drd2h7" role="2OqNvi">
                              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1yz3lS" id="1Oxt8drd1a5" role="1yzFaX">
                      <node concept="3F0A7n" id="1Oxt8drd1a6" role="2wV5jI">
                        <property role="1Intyy" value="true" />
                        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                        <node concept="VPM3Z" id="1Oxt8drrBZd" role="3F10Kt">
                          <property role="VOm3f" value="false" />
                        </node>
                        <node concept="37jFXN" id="G6ZN4N4cez" role="3F10Kt">
                          <property role="37lx6p" value="RIGHT" />
                        </node>
                      </node>
                    </node>
                    <node concept="2iRkQZ" id="1Oxt8drd1a7" role="2czzBy" />
                    <node concept="35HoNQ" id="5VLuTnkIeG9" role="2czzBJ" />
                  </node>
                </node>
                <node concept="37jFXN" id="1Oxt8drd1a8" role="3F10Kt">
                  <property role="37lx6p" value="RIGHT" />
                </node>
              </node>
              <node concept="1iCGBv" id="5VLuTnkz8tB" role="3EZMnx">
                <ref role="1NtTu8" to="xiqq:PI_pXYugbv" resolve="type" />
                <node concept="37jFXN" id="5VLuTnkzdJy" role="3F10Kt">
                  <property role="37lx6p" value="RIGHT" />
                </node>
                <node concept="1sVBvm" id="5VLuTnkz8tC" role="1sWHZn">
                  <node concept="s8t4o" id="5VLuTnkz8tD" role="2wV5jI">
                    <property role="28Zw97" value="true" />
                    <ref role="28F8cf" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
                    <node concept="xShMh" id="5VLuTnkz8tE" role="3F10Kt">
                      <property role="VOm3f" value="true" />
                    </node>
                    <node concept="s8sZD" id="5VLuTnkz8tF" role="sbcd9">
                      <node concept="3clFbS" id="5VLuTnkz8tG" role="2VODD2">
                        <node concept="3clFbF" id="5VLuTnkz8tH" role="3cqZAp">
                          <node concept="2OqwBi" id="5VLuTnkz8tI" role="3clFbG">
                            <node concept="pncrf" id="5VLuTnkz8tJ" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="G6ZN4N5Rfq" role="2OqNvi">
                              <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1yz3lS" id="5VLuTnkz8tL" role="1yzFaX">
                      <node concept="1HlG4h" id="5VLuTnkzbAx" role="2wV5jI">
                        <node concept="1HfYo3" id="5VLuTnkzbA$" role="1HlULh">
                          <node concept="3TQlhw" id="5VLuTnkzbAB" role="1Hhtcw">
                            <node concept="3clFbS" id="5VLuTnkzbAE" role="2VODD2">
                              <node concept="3clFbF" id="5VLuTnkzbJl" role="3cqZAp">
                                <node concept="3cpWs3" id="5VLuTnkzd6n" role="3clFbG">
                                  <node concept="Xl_RD" id="5VLuTnkzdhl" role="3uHU7w">
                                    <property role="Xl_RC" value="&gt;&gt;" />
                                  </node>
                                  <node concept="2OqwBi" id="5VLuTnkzbXZ" role="3uHU7B">
                                    <node concept="pncrf" id="5VLuTnkzbJk" role="2Oq$k0" />
                                    <node concept="3TrcHB" id="5VLuTnkzcu7" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="VPM3Z" id="5VLuTnkzdO2" role="3F10Kt" />
                        <node concept="37jFXN" id="G6ZN4N4cgl" role="3F10Kt">
                          <property role="37lx6p" value="RIGHT" />
                        </node>
                      </node>
                    </node>
                    <node concept="35HoNQ" id="5VLuTnkIeMk" role="2czzBJ" />
                    <node concept="2iRkQZ" id="G6ZN4N4bA7" role="2czzBy" />
                  </node>
                </node>
              </node>
              <node concept="2iRkQZ" id="5VLuTnkz8aa" role="2iSdaV" />
              <node concept="VPM3Z" id="5VLuTnkz8jt" role="3F10Kt" />
              <node concept="37jFXN" id="5VLuTnkIfyU" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
          </node>
          <node concept="2EHx9g" id="6SHOz3u_SmZ" role="2iSdaV" />
          <node concept="xShMh" id="G6ZN4N7vFX" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3clFbT" id="1Oxt8drb5Xl" role="3RJMYJ">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="2iRkQZ" id="3wWUd4kieLC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYC6wv">
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="1XX52x" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
    <node concept="2ZMJ7s" id="PI_pXYC6BJ" role="2wV5jI">
      <node concept="3C0NmR" id="61urdBxe4xZ" role="3F10Kt">
        <property role="3DY3mF" value="2." />
      </node>
      <node concept="3C0NmK" id="2JGKyjiz2yS" role="3F10Kt">
        <node concept="3ZlJ5R" id="2JGKyjiz2yT" role="VblUZ">
          <node concept="3clFbS" id="2JGKyjiz2yU" role="2VODD2">
            <node concept="3clFbF" id="2JGKyjiz2yV" role="3cqZAp">
              <node concept="10M0yZ" id="2JGKyjiz2Ew" role="3clFbG">
                <ref role="3cqZAo" node="2JGKyjitmC8" resolve="EVENT" />
                <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1PNbMa" id="PI_pXYC6BL" role="1PN8q7">
        <node concept="23g$fm" id="5VLuTnkxooM" role="ljJml">
          <node concept="2OqwBi" id="5VLuTnkxooN" role="23g$f9">
            <node concept="2OqwBi" id="5VLuTnkxooO" role="2Oq$k0">
              <node concept="1Pxb5l" id="5VLuTnkxooP" role="2Oq$k0" />
              <node concept="3TrEf2" id="5VLuTnkxooQ" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
              </node>
            </node>
            <node concept="1mIQ4w" id="5VLuTnkxooR" role="2OqNvi">
              <node concept="chp4Y" id="5VLuTnkxoD1" role="cj9EA">
                <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
              </node>
            </node>
          </node>
          <node concept="23hSZX" id="5VLuTnkxooT" role="23g$fb">
            <node concept="2OqwBi" id="5VLuTnkxooU" role="23hSWE">
              <node concept="1PxgMI" id="5VLuTnkxooV" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="5VLuTnkxoHO" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                </node>
                <node concept="2OqwBi" id="5VLuTnkxooX" role="1m5AlR">
                  <node concept="1Pxb5l" id="5VLuTnkxooY" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5VLuTnkxooZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5VLuTnkxop0" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
              </node>
            </node>
          </node>
          <node concept="23hSXV" id="5VLuTnkxop1" role="23g$fc">
            <node concept="23hSZX" id="5VLuTnkxop2" role="23hSXW">
              <node concept="2OqwBi" id="5VLuTnkxop3" role="23hSWE">
                <node concept="3TrEf2" id="5VLuTnkxop4" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                </node>
                <node concept="1PxgMI" id="5VLuTnkxop5" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VLuTnkxoTh" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                  </node>
                  <node concept="2OqwBi" id="5VLuTnkxop7" role="1m5AlR">
                    <node concept="1Pxb5l" id="5VLuTnkxop8" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5VLuTnkxop9" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5VLuTnkxopa" role="23hSXU">
              <node concept="2OqwBi" id="5VLuTnkxopb" role="2Oq$k0">
                <node concept="1PxgMI" id="5VLuTnkxopc" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VLuTnkxoMJ" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                  </node>
                  <node concept="2OqwBi" id="5VLuTnkxope" role="1m5AlR">
                    <node concept="1Pxb5l" id="5VLuTnkxopf" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5VLuTnkxopg" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="5VLuTnkxoph" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="5VLuTnkxopi" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1PNbMa" id="PI_pXYC6BO" role="1PN8qh">
        <node concept="2xQOud" id="3nFX2lGXCI8" role="1PNbKK">
          <ref role="2xQOue" node="2JGKyji$vl3" resolve="ConnectionTarget" />
          <node concept="3clFbT" id="61urdBx8ZFH" role="1xbcaF">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="23g$fm" id="5VLuTnkxpn0" role="ljJml">
          <node concept="2OqwBi" id="5VLuTnkxpn1" role="23g$f9">
            <node concept="2OqwBi" id="5VLuTnkxpn2" role="2Oq$k0">
              <node concept="1Pxb5l" id="5VLuTnkxpn3" role="2Oq$k0" />
              <node concept="3TrEf2" id="5VLuTnkxpn4" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
              </node>
            </node>
            <node concept="1mIQ4w" id="5VLuTnkxpn5" role="2OqNvi">
              <node concept="chp4Y" id="5VLuTnkxpBv" role="cj9EA">
                <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
              </node>
            </node>
          </node>
          <node concept="23hSZX" id="5VLuTnkxpn7" role="23g$fb">
            <node concept="2OqwBi" id="5VLuTnkxpn8" role="23hSWE">
              <node concept="1PxgMI" id="5VLuTnkxpn9" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="5VLuTnkxpGi" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                </node>
                <node concept="2OqwBi" id="5VLuTnkxpnb" role="1m5AlR">
                  <node concept="1Pxb5l" id="5VLuTnkxpnc" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5VLuTnkxpnd" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5VLuTnkxpne" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
              </node>
            </node>
          </node>
          <node concept="23hSXV" id="5VLuTnkxpnf" role="23g$fc">
            <node concept="23hSZX" id="5VLuTnkxpng" role="23hSXW">
              <node concept="2OqwBi" id="5VLuTnkxpnh" role="23hSWE">
                <node concept="3TrEf2" id="5VLuTnkxpni" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                </node>
                <node concept="1PxgMI" id="5VLuTnkxpnj" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VLuTnkxpRJ" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                  </node>
                  <node concept="2OqwBi" id="5VLuTnkxpnl" role="1m5AlR">
                    <node concept="1Pxb5l" id="5VLuTnkxpnm" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5VLuTnkCHuE" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5VLuTnkxpno" role="23hSXU">
              <node concept="2OqwBi" id="5VLuTnkxpnp" role="2Oq$k0">
                <node concept="1PxgMI" id="5VLuTnkxpnq" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VLuTnkxpLd" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                  </node>
                  <node concept="2OqwBi" id="5VLuTnkxpns" role="1m5AlR">
                    <node concept="1Pxb5l" id="5VLuTnkxpnt" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5VLuTnkxpnu" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="5VLuTnkxpnv" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="5VLuTnkxpnw" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="PI_pXYGHT1" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYGH$8">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1XX52x" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
    <node concept="2aJ2om" id="PI_pXYGI5F" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
    <node concept="2ZMJ7s" id="PI_pXYGI5I" role="2wV5jI">
      <node concept="1PNbMa" id="PI_pXYGI5J" role="1PN8q7">
        <node concept="23g$fm" id="PI_pXYGI5K" role="ljJml">
          <node concept="2OqwBi" id="PI_pXYGI5M" role="23g$f9">
            <node concept="2OqwBi" id="PI_pXYGI5N" role="2Oq$k0">
              <node concept="1Pxb5l" id="PI_pXYGI5O" role="2Oq$k0" />
              <node concept="3TrEf2" id="PI_pXYGI5P" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
              </node>
            </node>
            <node concept="1mIQ4w" id="5VLuTnkxiKf" role="2OqNvi">
              <node concept="chp4Y" id="5VLuTnkxiPS" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
              </node>
            </node>
          </node>
          <node concept="23hSZX" id="PI_pXYGI5S" role="23g$fb">
            <node concept="2OqwBi" id="PI_pXYGI5T" role="23hSWE">
              <node concept="1PxgMI" id="5VLuTnkxkp6" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="5VLuTnkxks6" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                </node>
                <node concept="2OqwBi" id="PI_pXYGI5U" role="1m5AlR">
                  <node concept="1Pxb5l" id="PI_pXYGI5V" role="2Oq$k0" />
                  <node concept="3TrEf2" id="PI_pXYGI5W" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5VLuTnkxkNH" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
              </node>
            </node>
          </node>
          <node concept="23hSXV" id="PI_pXYGI5Y" role="23g$fc">
            <node concept="23hSZX" id="PI_pXYGI5Z" role="23hSXW">
              <node concept="2OqwBi" id="PI_pXYGI60" role="23hSWE">
                <node concept="3TrEf2" id="5VLuTnkxmE9" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                </node>
                <node concept="1PxgMI" id="5VLuTnkxmin" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VLuTnkxmio" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                  </node>
                  <node concept="2OqwBi" id="5VLuTnkxmip" role="1m5AlR">
                    <node concept="1Pxb5l" id="5VLuTnkxmiq" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5VLuTnkxmir" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="PI_pXYGI65" role="23hSXU">
              <node concept="2OqwBi" id="PI_pXYGI66" role="2Oq$k0">
                <node concept="1PxgMI" id="5VLuTnkxluV" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VLuTnkxlzy" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                  </node>
                  <node concept="2OqwBi" id="PI_pXYGI67" role="1m5AlR">
                    <node concept="1Pxb5l" id="PI_pXYGI68" role="2Oq$k0" />
                    <node concept="3TrEf2" id="PI_pXYGI69" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="5VLuTnkxlWK" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="5VLuTnkxmgk" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1PNbMa" id="PI_pXYGI6c" role="1PN8qh">
        <node concept="2xQOud" id="3nFX2lGXCRI" role="1PNbKK">
          <ref role="2xQOue" node="2JGKyji$vl3" resolve="ConnectionTarget" />
          <node concept="3clFbT" id="61urdBx8ZS$" role="1xbcaF">
            <property role="3clFbU" value="false" />
          </node>
        </node>
        <node concept="23g$fm" id="5VLuTnkxmGH" role="ljJml">
          <node concept="2OqwBi" id="5VLuTnkxmGI" role="23g$f9">
            <node concept="2OqwBi" id="5VLuTnkxmGJ" role="2Oq$k0">
              <node concept="1Pxb5l" id="5VLuTnkxmGK" role="2Oq$k0" />
              <node concept="3TrEf2" id="5VLuTnkxnvt" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
              </node>
            </node>
            <node concept="1mIQ4w" id="5VLuTnkxmGM" role="2OqNvi">
              <node concept="chp4Y" id="5VLuTnkxmWu" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
              </node>
            </node>
          </node>
          <node concept="23hSZX" id="5VLuTnkxmGO" role="23g$fb">
            <node concept="2OqwBi" id="5VLuTnkxmGP" role="23hSWE">
              <node concept="1PxgMI" id="5VLuTnkxmGQ" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="5VLuTnkxn1h" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                </node>
                <node concept="2OqwBi" id="5VLuTnkxmGS" role="1m5AlR">
                  <node concept="1Pxb5l" id="5VLuTnkxmGT" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5VLuTnkxnM9" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5VLuTnkxmGV" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
              </node>
            </node>
          </node>
          <node concept="23hSXV" id="5VLuTnkxmGW" role="23g$fc">
            <node concept="23hSZX" id="5VLuTnkxmGX" role="23hSXW">
              <node concept="2OqwBi" id="5VLuTnkxmGY" role="23hSWE">
                <node concept="3TrEf2" id="5VLuTnkxmGZ" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                </node>
                <node concept="1PxgMI" id="5VLuTnkxmH0" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VLuTnkxncI" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                  </node>
                  <node concept="2OqwBi" id="5VLuTnkxmH2" role="1m5AlR">
                    <node concept="1Pxb5l" id="5VLuTnkxmH3" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5VLuTnkCGsC" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5VLuTnkxmH5" role="23hSXU">
              <node concept="2OqwBi" id="5VLuTnkxmH6" role="2Oq$k0">
                <node concept="1PxgMI" id="5VLuTnkxmH7" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5VLuTnkxn6c" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                  </node>
                  <node concept="2OqwBi" id="5VLuTnkxmH9" role="1m5AlR">
                    <node concept="1Pxb5l" id="5VLuTnkxmHa" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5VLuTnkxo4U" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="5VLuTnkxmHc" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="5VLuTnkxmHd" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3C0NmR" id="61urdBxd6Pf" role="3F10Kt">
        <property role="3DY3mF" value="2." />
      </node>
      <node concept="3C0NmK" id="2JGKyjiz08F" role="3F10Kt">
        <node concept="3ZlJ5R" id="2JGKyjiz08T" role="VblUZ">
          <node concept="3clFbS" id="2JGKyjiz08U" role="2VODD2">
            <node concept="3clFbF" id="2JGKyjiz1Xa" role="3cqZAp">
              <node concept="10M0yZ" id="2JGKyjiz2bo" role="3clFbG">
                <ref role="3cqZAo" node="2JGKyjitmM6" resolve="DATA" />
                <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1Oxt8dqZWeT">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="LayoutUtil" />
    <node concept="2tJIrI" id="1Oxt8dqZWm3" role="jymVt" />
    <node concept="2YIFZL" id="1Oxt8dqZWoq" role="jymVt">
      <property role="TrG5h" value="layoutAllPositions" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1Oxt8dqZWot" role="3clF47">
        <node concept="3cpWs6" id="1Oxt8dr0Duj" role="3cqZAp">
          <node concept="3cpWs3" id="1Oxt8drpDzV" role="3cqZAk">
            <node concept="3cpWs3" id="1Oxt8drpDzX" role="3uHU7B">
              <node concept="1rXfSq" id="1Oxt8drpDzY" role="3uHU7B">
                <ref role="37wK5l" node="1Oxt8dr0keK" resolve="layoutEventPositions" />
                <node concept="37vLTw" id="1Oxt8drpDzZ" role="37wK5m">
                  <ref role="3cqZAo" node="1Oxt8dqZZ2f" resolve="decl" />
                </node>
              </node>
              <node concept="1rXfSq" id="1Oxt8drpD$0" role="3uHU7w">
                <ref role="37wK5l" node="1Oxt8dr0Cdm" resolve="layoutDataPositions" />
                <node concept="37vLTw" id="1Oxt8drpD$1" role="37wK5m">
                  <ref role="3cqZAo" node="1Oxt8dqZZ2f" resolve="decl" />
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="6SHOz3uiWPW" role="3uHU7w">
              <property role="3cmrfH" value="3" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Oxt8dqZWn8" role="1B3o_S" />
      <node concept="10Oyi0" id="1Oxt8dr0dZr" role="3clF45" />
      <node concept="ffn8J" id="1Oxt8dqZZ2f" role="3clF46">
        <property role="TrG5h" value="decl" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTKS" resolve="node" />
        <node concept="3Tqbb2" id="1Oxt8dqZZ3s" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Oxt8dr0dWK" role="jymVt" />
    <node concept="2YIFZL" id="1Oxt8dr0keK" role="jymVt">
      <property role="TrG5h" value="layoutEventPositions" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="ffn8J" id="1Oxt8dr0kfU" role="3clF46">
        <property role="TrG5h" value="decl" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTKS" resolve="node" />
        <node concept="3Tqbb2" id="1Oxt8dr0kfV" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
        </node>
      </node>
      <node concept="3clFbS" id="1Oxt8dr0keN" role="3clF47">
        <node concept="3clFbF" id="1Oxt8dr0kjI" role="3cqZAp">
          <node concept="2YIFZM" id="1Oxt8dr0C6E" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <node concept="2OqwBi" id="1Oxt8dr0C6F" role="37wK5m">
              <node concept="2OqwBi" id="1Oxt8dr0C6G" role="2Oq$k0">
                <node concept="37vLTw" id="1Oxt8dr0C6H" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Oxt8dr0kfU" resolve="decl" />
                </node>
                <node concept="3Tsc0h" id="1Oxt8dr0C6I" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="34oBXx" id="1Oxt8dr0C6J" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="1Oxt8dr0C6K" role="37wK5m">
              <node concept="2OqwBi" id="1Oxt8dr0C6L" role="2Oq$k0">
                <node concept="37vLTw" id="1Oxt8dr0C6M" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Oxt8dr0kfU" resolve="decl" />
                </node>
                <node concept="3Tsc0h" id="1Oxt8dr0C6N" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
              <node concept="34oBXx" id="1Oxt8dr0C6O" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Oxt8dr0dXD" role="1B3o_S" />
      <node concept="10Oyi0" id="1Oxt8dr0dZH" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="1Oxt8dr0Cdm" role="jymVt">
      <property role="TrG5h" value="layoutDataPositions" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="ffn8J" id="1Oxt8dr0Cdn" role="3clF46">
        <property role="TrG5h" value="decl" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTKS" resolve="node" />
        <node concept="3Tqbb2" id="1Oxt8dr0Cdo" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
        </node>
      </node>
      <node concept="3clFbS" id="1Oxt8dr0Cdp" role="3clF47">
        <node concept="3cpWs8" id="1rxLtFPobDQ" role="3cqZAp">
          <node concept="3cpWsn" id="1rxLtFPobDR" role="3cpWs9">
            <property role="TrG5h" value="inputs" />
            <node concept="10Oyi0" id="1rxLtFPobDP" role="1tU5fm" />
            <node concept="2OqwBi" id="1rxLtFPobDS" role="33vP2m">
              <node concept="2OqwBi" id="1rxLtFPobDT" role="2Oq$k0">
                <node concept="37vLTw" id="1rxLtFPobDU" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Oxt8dr0Cdn" resolve="decl" />
                </node>
                <node concept="3Tsc0h" id="1rxLtFPobDV" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
              <node concept="34oBXx" id="1rxLtFPobDW" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1rxLtFPom6M" role="3cqZAp">
          <node concept="3cpWsn" id="1rxLtFPom6N" role="3cpWs9">
            <property role="TrG5h" value="outputs" />
            <node concept="10Oyi0" id="1rxLtFPom6L" role="1tU5fm" />
            <node concept="2OqwBi" id="1rxLtFPom6O" role="33vP2m">
              <node concept="2OqwBi" id="1rxLtFPom6P" role="2Oq$k0">
                <node concept="37vLTw" id="1rxLtFPom6Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Oxt8dr0Cdn" resolve="decl" />
                </node>
                <node concept="3Tsc0h" id="1rxLtFPom6R" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
              <node concept="34oBXx" id="1rxLtFPom6S" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1rxLtFPoCPt" role="3cqZAp" />
        <node concept="3cpWs8" id="1rxLtFPoDQW" role="3cqZAp">
          <node concept="3cpWsn" id="1rxLtFPoDQZ" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3Tqbb2" id="1rxLtFPoDQU" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="1PxgMI" id="1rxLtFPoFmb" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="1rxLtFPoFu3" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1rxLtFPoERK" role="1m5AlR">
                <ref role="3cqZAo" node="1Oxt8dr0Cdn" resolve="decl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1rxLtFPotqZ" role="3cqZAp">
          <node concept="d57v9" id="1rxLtFPovQV" role="3clFbG">
            <node concept="37vLTw" id="1rxLtFPotqY" role="37vLTJ">
              <ref role="3cqZAo" node="1rxLtFPobDR" resolve="inputs" />
            </node>
            <node concept="2OqwBi" id="5VLuTnk_cIS" role="37vLTx">
              <node concept="2OqwBi" id="5VLuTnk_6bz" role="2Oq$k0">
                <node concept="37vLTw" id="1rxLtFPoH9s" role="2Oq$k0">
                  <ref role="3cqZAo" node="1rxLtFPoDQZ" resolve="fb" />
                </node>
                <node concept="3Tsc0h" id="1rxLtFPoZZt" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
              </node>
              <node concept="34oBXx" id="5VLuTnk_j1V" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1rxLtFPoIKf" role="3cqZAp">
          <node concept="d57v9" id="1rxLtFPoLqf" role="3clFbG">
            <node concept="2OqwBi" id="1rxLtFPoR5f" role="37vLTx">
              <node concept="2OqwBi" id="1rxLtFPoM8D" role="2Oq$k0">
                <node concept="37vLTw" id="1rxLtFPoLGh" role="2Oq$k0">
                  <ref role="3cqZAo" node="1rxLtFPoDQZ" resolve="fb" />
                </node>
                <node concept="3Tsc0h" id="1rxLtFPoMpj" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                </node>
              </node>
              <node concept="34oBXx" id="1rxLtFPoZh5" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="1rxLtFPoIKd" role="37vLTJ">
              <ref role="3cqZAo" node="1rxLtFPom6N" resolve="outputs" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1rxLtFPp1ua" role="3cqZAp" />
        <node concept="3cpWs6" id="1rxLtFPoasI" role="3cqZAp">
          <node concept="2YIFZM" id="1Oxt8dr0Cdr" role="3cqZAk">
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
            <node concept="37vLTw" id="1rxLtFPobDX" role="37wK5m">
              <ref role="3cqZAo" node="1rxLtFPobDR" resolve="inputs" />
            </node>
            <node concept="37vLTw" id="1rxLtFPom6T" role="37wK5m">
              <ref role="3cqZAo" node="1rxLtFPom6N" resolve="outputs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Oxt8dr0CdA" role="1B3o_S" />
      <node concept="10Oyi0" id="1Oxt8dr0CdB" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1Oxt8drfi4O" role="jymVt" />
    <node concept="2YIFZL" id="1Oxt8drfibZ" role="jymVt">
      <property role="TrG5h" value="eventPosition" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1Oxt8drfic2" role="3clF47">
        <node concept="3cpWs8" id="1Oxt8drfxxp" role="3cqZAp">
          <node concept="3cpWsn" id="1Oxt8drfxxq" role="3cpWs9">
            <property role="TrG5h" value="decl" />
            <node concept="3Tqbb2" id="1Oxt8drfxxk" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
            </node>
            <node concept="1PxgMI" id="1Oxt8drfxxr" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="1rxLtFPp5ri" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
              </node>
              <node concept="2OqwBi" id="1Oxt8drfxxt" role="1m5AlR">
                <node concept="37vLTw" id="1Oxt8drfxxu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Oxt8drfilN" resolve="event" />
                </node>
                <node concept="1mfA1w" id="1Oxt8drfxxv" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Oxt8droEYv" role="3cqZAp">
          <node concept="FJ1c_" id="1Oxt8drg_KR" role="3cqZAk">
            <node concept="1eOMI4" id="1Oxt8drowH1" role="3uHU7B">
              <node concept="10QFUN" id="1Oxt8drox7t" role="1eOMHV">
                <node concept="10P55v" id="1Oxt8droxAh" role="10QFUM" />
                <node concept="1eOMI4" id="1Oxt8drowGY" role="10QFUP">
                  <node concept="3cpWs3" id="1Oxt8drg_KT" role="1eOMHV">
                    <node concept="17qRlL" id="1Oxt8drg_KV" role="3uHU7B">
                      <node concept="3cmrfG" id="1Oxt8drg_KW" role="3uHU7B">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="2OqwBi" id="1Oxt8drg_KX" role="3uHU7w">
                        <node concept="37vLTw" id="1Oxt8drg_KY" role="2Oq$k0">
                          <ref role="3cqZAo" node="1Oxt8drfilN" resolve="event" />
                        </node>
                        <node concept="2bSWHS" id="1Oxt8drg_KZ" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="3wWUd4kuRy3" role="3uHU7w">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="1Oxt8droBAA" role="3uHU7w">
              <node concept="17qRlL" id="1Oxt8drg_L1" role="1eOMHV">
                <node concept="3cmrfG" id="1Oxt8drg_L2" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1rXfSq" id="1Oxt8drg_L3" role="3uHU7w">
                  <ref role="37wK5l" node="1Oxt8dqZWoq" resolve="layoutAllPositions" />
                  <node concept="37vLTw" id="1Oxt8drg_L4" role="37wK5m">
                    <ref role="3cqZAo" node="1Oxt8drfxxq" resolve="decl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Oxt8drfi8Q" role="1B3o_S" />
      <node concept="10P55v" id="1Oxt8drfibO" role="3clF45" />
      <node concept="37vLTG" id="1Oxt8drfilN" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3Tqbb2" id="1Oxt8drfilM" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Oxt8dr0Cct" role="jymVt" />
    <node concept="2YIFZL" id="1Oxt8drftoQ" role="jymVt">
      <property role="TrG5h" value="dataPosition" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1Oxt8drftoR" role="3clF47">
        <node concept="3cpWs8" id="1Oxt8drfwRH" role="3cqZAp">
          <node concept="3cpWsn" id="1Oxt8drfwRI" role="3cpWs9">
            <property role="TrG5h" value="decl" />
            <node concept="3Tqbb2" id="1Oxt8drfwRB" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
            </node>
            <node concept="1PxgMI" id="1Oxt8drfwRJ" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="1rxLtFPp6Y0" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
              </node>
              <node concept="2OqwBi" id="1Oxt8drfwRL" role="1m5AlR">
                <node concept="37vLTw" id="1Oxt8drfwRM" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Oxt8drftpd" resolve="data" />
                </node>
                <node concept="1mfA1w" id="1Oxt8drfwRN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Oxt8droE5f" role="3cqZAp">
          <node concept="FJ1c_" id="1Oxt8droDDY" role="3cqZAk">
            <node concept="1eOMI4" id="1Oxt8droDDZ" role="3uHU7B">
              <node concept="10QFUN" id="1Oxt8droDE0" role="1eOMHV">
                <node concept="10P55v" id="1Oxt8droDE1" role="10QFUM" />
                <node concept="1eOMI4" id="1Oxt8droDE2" role="10QFUP">
                  <node concept="3cpWs3" id="1Oxt8droDE3" role="1eOMHV">
                    <node concept="3cpWs3" id="1Oxt8droDE4" role="3uHU7B">
                      <node concept="17qRlL" id="1Oxt8drqBPe" role="3uHU7B">
                        <node concept="3cmrfG" id="1Oxt8drqC4R" role="3uHU7B">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="1rXfSq" id="1Oxt8droDE5" role="3uHU7w">
                          <ref role="37wK5l" node="1Oxt8dr0keK" resolve="layoutEventPositions" />
                          <node concept="37vLTw" id="1Oxt8droDE6" role="37wK5m">
                            <ref role="3cqZAo" node="1Oxt8drfwRI" resolve="decl" />
                          </node>
                        </node>
                      </node>
                      <node concept="17qRlL" id="1Oxt8droDE7" role="3uHU7w">
                        <node concept="3cmrfG" id="1Oxt8droDE8" role="3uHU7B">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="2OqwBi" id="1Oxt8droDE9" role="3uHU7w">
                          <node concept="37vLTw" id="1Oxt8droDEa" role="2Oq$k0">
                            <ref role="3cqZAo" node="1Oxt8drftpd" resolve="data" />
                          </node>
                          <node concept="2bSWHS" id="1Oxt8droDEb" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="ZbmrF9cvle" role="3uHU7w">
                      <property role="3cmrfH" value="7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="1Oxt8droDEd" role="3uHU7w">
              <node concept="17qRlL" id="1Oxt8droDEe" role="1eOMHV">
                <node concept="3cmrfG" id="1Oxt8droDEf" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1rXfSq" id="1Oxt8droDEg" role="3uHU7w">
                  <ref role="37wK5l" node="1Oxt8dqZWoq" resolve="layoutAllPositions" />
                  <node concept="37vLTw" id="1Oxt8droDEh" role="37wK5m">
                    <ref role="3cqZAo" node="1Oxt8drfwRI" resolve="decl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Oxt8drftpb" role="1B3o_S" />
      <node concept="10P55v" id="1Oxt8drftpc" role="3clF45" />
      <node concept="37vLTG" id="1Oxt8drftpd" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3Tqbb2" id="1Oxt8drftpe" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5VLuTnk$Eqz" role="jymVt">
      <property role="TrG5h" value="socketPosition" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5VLuTnk$Eq$" role="3clF47">
        <node concept="3cpWs8" id="5VLuTnk$Eq_" role="3cqZAp">
          <node concept="3cpWsn" id="5VLuTnk$EqA" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3Tqbb2" id="5VLuTnk$EqB" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="1PxgMI" id="5VLuTnk$EqC" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5VLuTnk$EqD" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="5VLuTnk$EqE" role="1m5AlR">
                <node concept="37vLTw" id="5VLuTnk$EqF" role="2Oq$k0">
                  <ref role="3cqZAo" node="5VLuTnk$Er6" resolve="socket" />
                </node>
                <node concept="1mfA1w" id="5VLuTnk$EqG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5VLuTnk$EqH" role="3cqZAp">
          <node concept="FJ1c_" id="5VLuTnk$EqI" role="3cqZAk">
            <node concept="1eOMI4" id="5VLuTnk$EqJ" role="3uHU7B">
              <node concept="10QFUN" id="5VLuTnk$EqK" role="1eOMHV">
                <node concept="10P55v" id="5VLuTnk$EqL" role="10QFUM" />
                <node concept="1eOMI4" id="5VLuTnk$EqM" role="10QFUP">
                  <node concept="3cpWs3" id="5VLuTnk$EqN" role="1eOMHV">
                    <node concept="3cpWs3" id="5VLuTnk$EqO" role="3uHU7B">
                      <node concept="3cpWs3" id="5VLuTnk$H3t" role="3uHU7B">
                        <node concept="17qRlL" id="5VLuTnk$ICR" role="3uHU7w">
                          <node concept="2OqwBi" id="5VLuTnk$PXL" role="3uHU7w">
                            <node concept="2OqwBi" id="5VLuTnk$J$8" role="2Oq$k0">
                              <node concept="37vLTw" id="5VLuTnk$J1p" role="2Oq$k0">
                                <ref role="3cqZAo" node="5VLuTnk$EqA" resolve="fb" />
                              </node>
                              <node concept="3Tsc0h" id="5VLuTnk$M08" role="2OqNvi">
                                <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                              </node>
                            </node>
                            <node concept="34oBXx" id="5VLuTnk$XDr" role="2OqNvi" />
                          </node>
                          <node concept="3cmrfG" id="5VLuTnk$HsI" role="3uHU7B">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                        <node concept="17qRlL" id="5VLuTnk$EqP" role="3uHU7B">
                          <node concept="3cmrfG" id="5VLuTnk$EqQ" role="3uHU7B">
                            <property role="3cmrfH" value="2" />
                          </node>
                          <node concept="1rXfSq" id="5VLuTnk$EqR" role="3uHU7w">
                            <ref role="37wK5l" node="1Oxt8dr0keK" resolve="layoutEventPositions" />
                            <node concept="37vLTw" id="5VLuTnk$EqS" role="37wK5m">
                              <ref role="3cqZAo" node="5VLuTnk$EqA" resolve="fb" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="17qRlL" id="5VLuTnk$EqT" role="3uHU7w">
                        <node concept="3cmrfG" id="5VLuTnk$EqU" role="3uHU7B">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="2OqwBi" id="5VLuTnk$EqV" role="3uHU7w">
                          <node concept="37vLTw" id="5VLuTnk$EqW" role="2Oq$k0">
                            <ref role="3cqZAo" node="5VLuTnk$Er6" resolve="socket" />
                          </node>
                          <node concept="2bSWHS" id="5VLuTnk$EqX" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5VLuTnk$EqY" role="3uHU7w">
                      <property role="3cmrfH" value="7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="5VLuTnk$EqZ" role="3uHU7w">
              <node concept="17qRlL" id="5VLuTnk$Er0" role="1eOMHV">
                <node concept="3cmrfG" id="5VLuTnk$Er1" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1rXfSq" id="5VLuTnk$Er2" role="3uHU7w">
                  <ref role="37wK5l" node="1Oxt8dqZWoq" resolve="layoutAllPositions" />
                  <node concept="37vLTw" id="5VLuTnk$Er3" role="37wK5m">
                    <ref role="3cqZAo" node="5VLuTnk$EqA" resolve="fb" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5VLuTnk$Er4" role="1B3o_S" />
      <node concept="10P55v" id="5VLuTnk$Er5" role="3clF45" />
      <node concept="37vLTG" id="5VLuTnk$Er6" role="3clF46">
        <property role="TrG5h" value="socket" />
        <node concept="3Tqbb2" id="5VLuTnk$Er7" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5VLuTnk_CqM" role="jymVt" />
    <node concept="2YIFZL" id="5VLuTnk$EaN" role="jymVt">
      <property role="TrG5h" value="plugPosition" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5VLuTnk$EaO" role="3clF47">
        <node concept="3cpWs8" id="5VLuTnk$EaP" role="3cqZAp">
          <node concept="3cpWsn" id="5VLuTnk$EaQ" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3Tqbb2" id="5VLuTnk$EaR" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="1PxgMI" id="5VLuTnk$EaS" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5VLuTnk$EaT" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="5VLuTnk$EaU" role="1m5AlR">
                <node concept="37vLTw" id="5VLuTnk$EaV" role="2Oq$k0">
                  <ref role="3cqZAo" node="5VLuTnk$Ebm" resolve="plug" />
                </node>
                <node concept="1mfA1w" id="5VLuTnk$EaW" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5VLuTnk$EaX" role="3cqZAp">
          <node concept="FJ1c_" id="5VLuTnk$EaY" role="3cqZAk">
            <node concept="1eOMI4" id="5VLuTnk$EaZ" role="3uHU7B">
              <node concept="10QFUN" id="5VLuTnk$Eb0" role="1eOMHV">
                <node concept="10P55v" id="5VLuTnk$Eb1" role="10QFUM" />
                <node concept="1eOMI4" id="5VLuTnk$Eb2" role="10QFUP">
                  <node concept="3cpWs3" id="5VLuTnk$Eb3" role="1eOMHV">
                    <node concept="3cpWs3" id="5VLuTnk$Eb4" role="3uHU7B">
                      <node concept="3cpWs3" id="5VLuTnk$ZLh" role="3uHU7B">
                        <node concept="17qRlL" id="5VLuTnk$Eb5" role="3uHU7B">
                          <node concept="3cmrfG" id="5VLuTnk$Eb6" role="3uHU7B">
                            <property role="3cmrfH" value="2" />
                          </node>
                          <node concept="1rXfSq" id="5VLuTnk$Eb7" role="3uHU7w">
                            <ref role="37wK5l" node="1Oxt8dr0keK" resolve="layoutEventPositions" />
                            <node concept="37vLTw" id="5VLuTnk$Eb8" role="37wK5m">
                              <ref role="3cqZAo" node="5VLuTnk$EaQ" resolve="fb" />
                            </node>
                          </node>
                        </node>
                        <node concept="17qRlL" id="5VLuTnk_08H" role="3uHU7w">
                          <node concept="2OqwBi" id="5VLuTnk_08I" role="3uHU7w">
                            <node concept="2OqwBi" id="5VLuTnk_08J" role="2Oq$k0">
                              <node concept="37vLTw" id="5VLuTnk_08K" role="2Oq$k0">
                                <ref role="3cqZAo" node="5VLuTnk$EaQ" resolve="fb" />
                              </node>
                              <node concept="3Tsc0h" id="5VLuTnk_0Va" role="2OqNvi">
                                <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                              </node>
                            </node>
                            <node concept="34oBXx" id="5VLuTnk_08M" role="2OqNvi" />
                          </node>
                          <node concept="3cmrfG" id="5VLuTnk_08N" role="3uHU7B">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                      </node>
                      <node concept="17qRlL" id="5VLuTnk$Eb9" role="3uHU7w">
                        <node concept="3cmrfG" id="5VLuTnk$Eba" role="3uHU7B">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="2OqwBi" id="5VLuTnk$Ebb" role="3uHU7w">
                          <node concept="37vLTw" id="5VLuTnk$Ebc" role="2Oq$k0">
                            <ref role="3cqZAo" node="5VLuTnk$Ebm" resolve="plug" />
                          </node>
                          <node concept="2bSWHS" id="5VLuTnk$Ebd" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5VLuTnk$Ebe" role="3uHU7w">
                      <property role="3cmrfH" value="7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="5VLuTnk$Ebf" role="3uHU7w">
              <node concept="17qRlL" id="5VLuTnk$Ebg" role="1eOMHV">
                <node concept="3cmrfG" id="5VLuTnk$Ebh" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1rXfSq" id="5VLuTnk$Ebi" role="3uHU7w">
                  <ref role="37wK5l" node="1Oxt8dqZWoq" resolve="layoutAllPositions" />
                  <node concept="37vLTw" id="5VLuTnk$Ebj" role="37wK5m">
                    <ref role="3cqZAo" node="5VLuTnk$EaQ" resolve="fb" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5VLuTnk$Ebk" role="1B3o_S" />
      <node concept="10P55v" id="5VLuTnk$Ebl" role="3clF45" />
      <node concept="37vLTG" id="5VLuTnk$Ebm" role="3clF46">
        <property role="TrG5h" value="plug" />
        <node concept="3Tqbb2" id="5VLuTnk$Ebn" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Oxt8drftmb" role="jymVt" />
    <node concept="2YIFZL" id="61urdBwKDev" role="jymVt">
      <property role="TrG5h" value="getInterfaceInputShape" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="61urdBwKDey" role="3clF47">
        <node concept="3cpWs8" id="61urdBwKDml" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBwKDmm" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="61urdBwKDmn" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="61urdBwKDmo" role="33vP2m">
              <node concept="1pGfFk" id="61urdBwKDmp" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBwKDmq" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBwKDmr" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="61urdBwKDms" role="1tU5fm" />
            <node concept="2OqwBi" id="61urdBwKDmt" role="33vP2m">
              <node concept="liA8E" id="61urdBwKDmv" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth():double" resolve="getWidth" />
              </node>
              <node concept="37vLTw" id="61urdBwKE7o" role="2Oq$k0">
                <ref role="3cqZAo" node="61urdBwKDkI" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBwKDmw" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBwKDmx" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="61urdBwKDmy" role="1tU5fm" />
            <node concept="2OqwBi" id="61urdBwKDmz" role="33vP2m">
              <node concept="37vLTw" id="61urdBwKEov" role="2Oq$k0">
                <ref role="3cqZAo" node="61urdBwKDkI" resolve="bounds" />
              </node>
              <node concept="liA8E" id="61urdBwKDm_" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getHeight():double" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBwKDmA" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBwKDmB" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10P55v" id="61urdBwKDmC" role="1tU5fm" />
            <node concept="2OqwBi" id="61urdBwKDmD" role="33vP2m">
              <node concept="liA8E" id="61urdBwKDmF" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getX():double" resolve="getX" />
              </node>
              <node concept="37vLTw" id="61urdBwKK_8" role="2Oq$k0">
                <ref role="3cqZAo" node="61urdBwKDkI" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBwKDmG" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBwKDmH" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10P55v" id="61urdBwKDmI" role="1tU5fm" />
            <node concept="2OqwBi" id="61urdBwKDmJ" role="33vP2m">
              <node concept="37vLTw" id="61urdBwKKV4" role="2Oq$k0">
                <ref role="3cqZAo" node="61urdBwKDkI" resolve="bounds" />
              </node>
              <node concept="liA8E" id="61urdBwKDmL" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getY():double" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBwKDmM" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBwKDmN" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="61urdBwKDmO" role="1tU5fm" />
            <node concept="3cpWs3" id="61urdBwKDmP" role="33vP2m">
              <node concept="37vLTw" id="61urdBwKDmQ" role="3uHU7w">
                <ref role="3cqZAo" node="61urdBwKDmr" resolve="width" />
              </node>
              <node concept="37vLTw" id="61urdBwKDmR" role="3uHU7B">
                <ref role="3cqZAo" node="61urdBwKDmB" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBwKDmS" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBwKDmT" role="3cpWs9">
            <property role="TrG5h" value="y2" />
            <node concept="10P55v" id="61urdBwKDmU" role="1tU5fm" />
            <node concept="3cpWs3" id="61urdBwKDmV" role="33vP2m">
              <node concept="37vLTw" id="61urdBwKDmW" role="3uHU7w">
                <ref role="3cqZAo" node="61urdBwKDmx" resolve="height" />
              </node>
              <node concept="37vLTw" id="61urdBwKDmX" role="3uHU7B">
                <ref role="3cqZAo" node="61urdBwKDmH" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBwKDmY" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBwKDmZ" role="3cpWs9">
            <property role="TrG5h" value="x3" />
            <node concept="10P55v" id="61urdBwKDn0" role="1tU5fm" />
            <node concept="3cpWsd" id="61urdBwSXgU" role="33vP2m">
              <node concept="3cpWs3" id="61urdBwKDn1" role="3uHU7B">
                <node concept="37vLTw" id="61urdBwKDn2" role="3uHU7B">
                  <ref role="3cqZAo" node="61urdBwKDmB" resolve="x" />
                </node>
                <node concept="37vLTw" id="61urdBwSWYE" role="3uHU7w">
                  <ref role="3cqZAo" node="61urdBwKDmr" resolve="width" />
                </node>
              </node>
              <node concept="FJ1c_" id="61urdBwQNaz" role="3uHU7w">
                <node concept="3cmrfG" id="61urdBwQNcu" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="37vLTw" id="61urdBwQMe4" role="3uHU7B">
                  <ref role="3cqZAo" node="61urdBwKDmx" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBwKDn8" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBwKDn9" role="3cpWs9">
            <property role="TrG5h" value="y3" />
            <node concept="10P55v" id="61urdBwKDna" role="1tU5fm" />
            <node concept="3cpWs3" id="61urdBwKDnb" role="33vP2m">
              <node concept="FJ1c_" id="61urdBwKDnc" role="3uHU7w">
                <node concept="3cmrfG" id="61urdBwKDnd" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="61urdBwKDne" role="3uHU7B">
                  <ref role="3cqZAo" node="61urdBwKDmx" resolve="height" />
                </node>
              </node>
              <node concept="37vLTw" id="61urdBwKDnf" role="3uHU7B">
                <ref role="3cqZAo" node="61urdBwKDmH" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBwKDnm" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBwKDnn" role="3clFbG">
            <node concept="37vLTw" id="61urdBwKDno" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBwKDmm" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBwKDnp" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double):void" resolve="moveTo" />
              <node concept="37vLTw" id="61urdBwKDnq" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDmB" resolve="x" />
              </node>
              <node concept="37vLTw" id="61urdBwKDnr" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDmT" resolve="y2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBwKDns" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBwKDnt" role="3clFbG">
            <node concept="37vLTw" id="61urdBwKDnu" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBwKDmm" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBwKDnv" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="61urdBwKDnw" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDmZ" resolve="x3" />
              </node>
              <node concept="37vLTw" id="61urdBwKDnx" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDmT" resolve="y2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBwKDny" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBwKDnz" role="3clFbG">
            <node concept="37vLTw" id="61urdBwKDn$" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBwKDmm" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBwKDn_" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="61urdBwKDnA" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDmN" resolve="x2" />
              </node>
              <node concept="37vLTw" id="61urdBwKDnB" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDn9" resolve="y3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBwKDnC" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBwKDnD" role="3clFbG">
            <node concept="37vLTw" id="61urdBwKDnE" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBwKDmm" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBwKDnF" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="61urdBwPNsh" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDmZ" resolve="x3" />
              </node>
              <node concept="37vLTw" id="61urdBwPN_f" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDmH" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBwMO5f" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBwMOKc" role="3clFbG">
            <node concept="37vLTw" id="61urdBwMO5d" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBwKDmm" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBwMPvl" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="61urdBwMPBF" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDmB" resolve="x" />
              </node>
              <node concept="37vLTw" id="61urdBwMPPg" role="37wK5m">
                <ref role="3cqZAo" node="61urdBwKDmH" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBwKDnI" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBwKDnJ" role="3clFbG">
            <node concept="37vLTw" id="61urdBwKDnK" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBwKDmm" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBwKDnL" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath():void" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="61urdBwKJSz" role="3cqZAp">
          <node concept="37vLTw" id="61urdBwKJXl" role="3cqZAk">
            <ref role="3cqZAo" node="61urdBwKDmm" resolve="shape" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="61urdBwKD8K" role="1B3o_S" />
      <node concept="3uibUv" id="61urdBwKDeg" role="3clF45">
        <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
      </node>
      <node concept="37vLTG" id="61urdBwKDkI" role="3clF46">
        <property role="TrG5h" value="bounds" />
        <node concept="3uibUv" id="61urdBwKHAl" role="1tU5fm">
          <ref role="3uigEE" to="fbzs:~Rectangle2D" resolve="Rectangle2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="61urdBx9YQ4" role="jymVt" />
    <node concept="2YIFZL" id="61urdBx9Z4B" role="jymVt">
      <property role="TrG5h" value="getInterfaceOutputShape" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="61urdBx9Z4C" role="3clF47">
        <node concept="3cpWs8" id="61urdBx9Z4D" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9Z4E" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="61urdBx9Z4F" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="61urdBx9Z4G" role="33vP2m">
              <node concept="1pGfFk" id="61urdBx9Z4H" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBx9Z4I" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9Z4J" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="61urdBx9Z4K" role="1tU5fm" />
            <node concept="2OqwBi" id="61urdBx9Z4L" role="33vP2m">
              <node concept="liA8E" id="61urdBx9Z4M" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth():double" resolve="getWidth" />
              </node>
              <node concept="37vLTw" id="61urdBx9Z4N" role="2Oq$k0">
                <ref role="3cqZAo" node="61urdBx9Z6a" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBx9Z4O" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9Z4P" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="61urdBx9Z4Q" role="1tU5fm" />
            <node concept="2OqwBi" id="61urdBx9Z4R" role="33vP2m">
              <node concept="37vLTw" id="61urdBx9Z4S" role="2Oq$k0">
                <ref role="3cqZAo" node="61urdBx9Z6a" resolve="bounds" />
              </node>
              <node concept="liA8E" id="61urdBx9Z4T" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getHeight():double" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBx9Z4U" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9Z4V" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10P55v" id="61urdBx9Z4W" role="1tU5fm" />
            <node concept="2OqwBi" id="61urdBx9Z4X" role="33vP2m">
              <node concept="liA8E" id="61urdBx9Z4Y" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getX():double" resolve="getX" />
              </node>
              <node concept="37vLTw" id="61urdBx9Z4Z" role="2Oq$k0">
                <ref role="3cqZAo" node="61urdBx9Z6a" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBx9Z50" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9Z51" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10P55v" id="61urdBx9Z52" role="1tU5fm" />
            <node concept="2OqwBi" id="61urdBx9Z53" role="33vP2m">
              <node concept="37vLTw" id="61urdBx9Z54" role="2Oq$k0">
                <ref role="3cqZAo" node="61urdBx9Z6a" resolve="bounds" />
              </node>
              <node concept="liA8E" id="61urdBx9Z55" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getY():double" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBx9Z56" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9Z57" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="61urdBx9Z58" role="1tU5fm" />
            <node concept="3cpWs3" id="61urdBx9Z59" role="33vP2m">
              <node concept="37vLTw" id="61urdBx9Z5a" role="3uHU7w">
                <ref role="3cqZAo" node="61urdBx9Z4J" resolve="width" />
              </node>
              <node concept="37vLTw" id="61urdBx9Z5b" role="3uHU7B">
                <ref role="3cqZAo" node="61urdBx9Z4V" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBx9Z5c" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9Z5d" role="3cpWs9">
            <property role="TrG5h" value="y2" />
            <node concept="10P55v" id="61urdBx9Z5e" role="1tU5fm" />
            <node concept="3cpWs3" id="61urdBx9Z5f" role="33vP2m">
              <node concept="37vLTw" id="61urdBx9Z5g" role="3uHU7w">
                <ref role="3cqZAo" node="61urdBx9Z4P" resolve="height" />
              </node>
              <node concept="37vLTw" id="61urdBx9Z5h" role="3uHU7B">
                <ref role="3cqZAo" node="61urdBx9Z51" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBx9Z5i" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9Z5j" role="3cpWs9">
            <property role="TrG5h" value="x3" />
            <node concept="10P55v" id="61urdBx9Z5k" role="1tU5fm" />
            <node concept="3cpWs3" id="61urdBxa0r_" role="33vP2m">
              <node concept="37vLTw" id="61urdBx9Z5n" role="3uHU7B">
                <ref role="3cqZAo" node="61urdBx9Z4V" resolve="x" />
              </node>
              <node concept="FJ1c_" id="61urdBx9Z5p" role="3uHU7w">
                <node concept="3cmrfG" id="61urdBx9Z5q" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="37vLTw" id="61urdBx9Z5r" role="3uHU7B">
                  <ref role="3cqZAo" node="61urdBx9Z4P" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBx9Z5s" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9Z5t" role="3cpWs9">
            <property role="TrG5h" value="y3" />
            <node concept="10P55v" id="61urdBx9Z5u" role="1tU5fm" />
            <node concept="3cpWs3" id="61urdBx9Z5v" role="33vP2m">
              <node concept="FJ1c_" id="61urdBx9Z5w" role="3uHU7w">
                <node concept="3cmrfG" id="61urdBx9Z5x" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="61urdBx9Z5y" role="3uHU7B">
                  <ref role="3cqZAo" node="61urdBx9Z4P" resolve="height" />
                </node>
              </node>
              <node concept="37vLTw" id="61urdBx9Z5z" role="3uHU7B">
                <ref role="3cqZAo" node="61urdBx9Z51" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx9Z5$" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx9Z5_" role="3clFbG">
            <node concept="37vLTw" id="61urdBx9Z5A" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBx9Z4E" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBx9Z5B" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double):void" resolve="moveTo" />
              <node concept="37vLTw" id="61urdBxa1Cs" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z4V" resolve="x" />
              </node>
              <node concept="37vLTw" id="61urdBxa1gj" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z5t" resolve="y3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx9Z5E" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx9Z5F" role="3clFbG">
            <node concept="37vLTw" id="61urdBx9Z5G" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBx9Z4E" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBx9Z5H" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="61urdBx9Z5I" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z5j" resolve="x3" />
              </node>
              <node concept="37vLTw" id="61urdBx9Z5J" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z5d" resolve="y2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx9Z5K" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx9Z5L" role="3clFbG">
            <node concept="37vLTw" id="61urdBx9Z5M" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBx9Z4E" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBx9Z5N" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="61urdBx9Z5O" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z57" resolve="x2" />
              </node>
              <node concept="37vLTw" id="61urdBxa1Qi" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z5d" resolve="y2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx9Z5Q" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx9Z5R" role="3clFbG">
            <node concept="37vLTw" id="61urdBx9Z5S" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBx9Z4E" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBx9Z5T" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="61urdBxa1YX" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z57" resolve="x2" />
              </node>
              <node concept="37vLTw" id="61urdBx9Z5V" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z51" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx9Z5W" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx9Z5X" role="3clFbG">
            <node concept="37vLTw" id="61urdBx9Z5Y" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBx9Z4E" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBx9Z5Z" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="61urdBxa2ah" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z5j" resolve="x3" />
              </node>
              <node concept="37vLTw" id="61urdBx9Z61" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9Z51" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx9Z62" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx9Z63" role="3clFbG">
            <node concept="37vLTw" id="61urdBx9Z64" role="2Oq$k0">
              <ref role="3cqZAo" node="61urdBx9Z4E" resolve="shape" />
            </node>
            <node concept="liA8E" id="61urdBx9Z65" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath():void" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="61urdBx9Z66" role="3cqZAp">
          <node concept="37vLTw" id="61urdBx9Z67" role="3cqZAk">
            <ref role="3cqZAo" node="61urdBx9Z4E" resolve="shape" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="61urdBx9Z68" role="1B3o_S" />
      <node concept="3uibUv" id="61urdBx9Z69" role="3clF45">
        <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
      </node>
      <node concept="37vLTG" id="61urdBx9Z6a" role="3clF46">
        <property role="TrG5h" value="bounds" />
        <node concept="3uibUv" id="61urdBx9Z6b" role="1tU5fm">
          <ref role="3uigEE" to="fbzs:~Rectangle2D" resolve="Rectangle2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3wWUd4k$IwL" role="jymVt" />
    <node concept="2YIFZL" id="3wWUd4k$J9i" role="jymVt">
      <property role="TrG5h" value="getComponentShape" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3wWUd4k$J9l" role="3clF47">
        <node concept="3cpWs8" id="3wWUd4k$Ju1" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k$Ju2" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="3wWUd4k$Ju3" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="3wWUd4k$Jx8" role="33vP2m">
              <node concept="1pGfFk" id="3wWUd4k$JZk" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wWUd4k$LrQ" role="3cqZAp" />
        <node concept="3cpWs8" id="3wWUd4k$LtX" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k$LtY" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="3wWUd4k$LtZ" role="1tU5fm" />
            <node concept="2OqwBi" id="3wWUd4k$Lu0" role="33vP2m">
              <node concept="liA8E" id="3wWUd4k$Lu1" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth():double" resolve="getWidth" />
              </node>
              <node concept="37vLTw" id="3wWUd4k$Lu2" role="2Oq$k0">
                <ref role="3cqZAo" node="3wWUd4k$Jmv" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wWUd4k$Lu3" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k$Lu4" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="3wWUd4k$Lu5" role="1tU5fm" />
            <node concept="2OqwBi" id="3wWUd4k$Lu6" role="33vP2m">
              <node concept="37vLTw" id="3wWUd4k$Lu7" role="2Oq$k0">
                <ref role="3cqZAo" node="3wWUd4k$Jmv" resolve="bounds" />
              </node>
              <node concept="liA8E" id="3wWUd4k$Lu8" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getHeight():double" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wWUd4k$Lu9" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k$Lua" role="3cpWs9">
            <property role="TrG5h" value="xLeft" />
            <node concept="10P55v" id="3wWUd4k$Lub" role="1tU5fm" />
            <node concept="2OqwBi" id="3wWUd4k$Luc" role="33vP2m">
              <node concept="liA8E" id="3wWUd4k$Lud" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getX():double" resolve="getX" />
              </node>
              <node concept="37vLTw" id="3wWUd4k$Lue" role="2Oq$k0">
                <ref role="3cqZAo" node="3wWUd4k$Jmv" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wWUd4k$LD7" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k$LDa" role="3cpWs9">
            <property role="TrG5h" value="xRight" />
            <node concept="10P55v" id="3wWUd4k$LD5" role="1tU5fm" />
            <node concept="3cpWs3" id="3wWUd4k$Neb" role="33vP2m">
              <node concept="37vLTw" id="3wWUd4k$Nxn" role="3uHU7w">
                <ref role="3cqZAo" node="3wWUd4k$LtY" resolve="width" />
              </node>
              <node concept="37vLTw" id="3wWUd4k$Nta" role="3uHU7B">
                <ref role="3cqZAo" node="3wWUd4k$Lua" resolve="xLeft" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wWUd4k$Luf" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k$Lug" role="3cpWs9">
            <property role="TrG5h" value="yBottom" />
            <node concept="10P55v" id="3wWUd4k$Luh" role="1tU5fm" />
            <node concept="2OqwBi" id="3wWUd4k$Lui" role="33vP2m">
              <node concept="37vLTw" id="3wWUd4k$Luj" role="2Oq$k0">
                <ref role="3cqZAo" node="3wWUd4k$Jmv" resolve="bounds" />
              </node>
              <node concept="liA8E" id="3wWUd4k$Luk" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getY():double" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wWUd4k$T6s" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k$T6v" role="3cpWs9">
            <property role="TrG5h" value="yTop" />
            <node concept="10P55v" id="3wWUd4k$T6q" role="1tU5fm" />
            <node concept="3cpWs3" id="3wWUd4k$Uk6" role="33vP2m">
              <node concept="37vLTw" id="3wWUd4k$Tyx" role="3uHU7B">
                <ref role="3cqZAo" node="3wWUd4k$Lug" resolve="yBottom" />
              </node>
              <node concept="37vLTw" id="3wWUd4k$Uon" role="3uHU7w">
                <ref role="3cqZAo" node="3wWUd4k$Lu4" resolve="height" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyjifaO1" role="3cqZAp" />
        <node concept="3cpWs8" id="3wWUd4k$K2I" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k$K2L" role="3cpWs9">
            <property role="TrG5h" value="positionSize" />
            <node concept="10P55v" id="3wWUd4k$K2G" role="1tU5fm" />
            <node concept="FJ1c_" id="3wWUd4k$ODP" role="33vP2m">
              <node concept="1eOMI4" id="3wWUd4k$OGh" role="3uHU7w">
                <node concept="3cpWs3" id="3wWUd4k$SjA" role="1eOMHV">
                  <node concept="3cpWs3" id="3wWUd4k$Qw3" role="3uHU7B">
                    <node concept="37vLTw" id="2JGKyji5UtW" role="3uHU7w">
                      <ref role="3cqZAo" node="3wWUd4k$K3e" resolve="dataPositions" />
                    </node>
                    <node concept="37vLTw" id="2JGKyji5W7O" role="3uHU7B">
                      <ref role="3cqZAo" node="2JGKyji5TrE" resolve="eventPositions" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="4z8khhO$aHy" role="3uHU7w">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3wWUd4k$NSf" role="3uHU7B">
                <ref role="3cqZAo" node="3wWUd4k$Lu4" resolve="height" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjifcxa" role="3cqZAp">
          <node concept="d57v9" id="2JGKyjifdTh" role="3clFbG">
            <node concept="37vLTw" id="2JGKyjife38" role="37vLTx">
              <ref role="3cqZAo" node="3wWUd4k$K2L" resolve="positionSize" />
            </node>
            <node concept="37vLTw" id="2JGKyjifcx8" role="37vLTJ">
              <ref role="3cqZAo" node="3wWUd4k$Lug" resolve="yBottom" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyjifbTI" role="3cqZAp" />
        <node concept="3cpWs8" id="3wWUd4k_0Vb" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k_0Ve" role="3cpWs9">
            <property role="TrG5h" value="yCenterB" />
            <node concept="10P55v" id="3wWUd4k_0V9" role="1tU5fm" />
            <node concept="3cpWs3" id="3wWUd4k_2$b" role="33vP2m">
              <node concept="37vLTw" id="3wWUd4k_1Jo" role="3uHU7B">
                <ref role="3cqZAo" node="3wWUd4k$Lug" resolve="yBottom" />
              </node>
              <node concept="17qRlL" id="3wWUd4k_b$V" role="3uHU7w">
                <node concept="37vLTw" id="3wWUd4k_2FE" role="3uHU7B">
                  <ref role="3cqZAo" node="3wWUd4k$K2L" resolve="positionSize" />
                </node>
                <node concept="37vLTw" id="2JGKyjifemb" role="3uHU7w">
                  <ref role="3cqZAo" node="2JGKyji5TrE" resolve="eventPositions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wWUd4k_cr3" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k_cr6" role="3cpWs9">
            <property role="TrG5h" value="yCenterT" />
            <node concept="10P55v" id="3wWUd4k_cr1" role="1tU5fm" />
            <node concept="3cpWs3" id="3wWUd4k_lSI" role="33vP2m">
              <node concept="37vLTw" id="3wWUd4k_m0a" role="3uHU7w">
                <ref role="3cqZAo" node="3wWUd4k$K2L" resolve="positionSize" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_d6U" role="3uHU7B">
                <ref role="3cqZAo" node="3wWUd4k_0Ve" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wWUd4k_mD8" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k_mDb" role="3cpWs9">
            <property role="TrG5h" value="xLeftS" />
            <node concept="10P55v" id="3wWUd4k_mD6" role="1tU5fm" />
            <node concept="3cpWs3" id="3wWUd4k_ots" role="33vP2m">
              <node concept="37vLTw" id="3wWUd4k_o$Y" role="3uHU7w">
                <ref role="3cqZAo" node="3wWUd4k$K2L" resolve="positionSize" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_nCA" role="3uHU7B">
                <ref role="3cqZAo" node="3wWUd4k$Lua" resolve="xLeft" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wWUd4k_pei" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k_pel" role="3cpWs9">
            <property role="TrG5h" value="xRightS" />
            <node concept="10P55v" id="3wWUd4k_peg" role="1tU5fm" />
            <node concept="3cpWsd" id="3wWUd4k_tA7" role="33vP2m">
              <node concept="37vLTw" id="3wWUd4k_tHD" role="3uHU7w">
                <ref role="3cqZAo" node="3wWUd4k$K2L" resolve="positionSize" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_q3C" role="3uHU7B">
                <ref role="3cqZAo" node="3wWUd4k$LDa" resolve="xRight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wWUd4k$Vzw" role="3cqZAp" />
        <node concept="3clFbF" id="3wWUd4k$YnJ" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k$Z6T" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k$YnH" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_007" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double):void" resolve="moveTo" />
              <node concept="37vLTw" id="3wWUd4k_06A" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$Lua" resolve="xLeft" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_0lM" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$Lug" resolve="yBottom" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_ukA" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_v5G" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_uk$" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_vZk" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k_w5J" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$Lua" resolve="xLeft" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_wD4" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_0Ve" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_xgn" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_yy3" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_yy4" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_yy5" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k_z16" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_mDb" resolve="xLeftS" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_yy7" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_0Ve" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_zjj" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_zjk" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_zjl" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_zjm" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k_zjn" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_mDb" resolve="xLeftS" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_zRv" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_cr6" resolve="yCenterT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_zWE" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_zWF" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_zWG" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_zWH" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k_$xh" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$Lua" resolve="xLeft" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_zWJ" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_cr6" resolve="yCenterT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_$BN" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_$BO" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_$BP" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_$BQ" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k_$BR" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$Lua" resolve="xLeft" />
              </node>
              <node concept="37vLTw" id="3wWUd4k__bF" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$T6v" resolve="yTop" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k__ia" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k__ib" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k__ic" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k__id" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k__Qk" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$LDa" resolve="xRight" />
              </node>
              <node concept="37vLTw" id="3wWUd4k__if" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$T6v" resolve="yTop" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k__WR" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k__WS" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k__WT" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k__WU" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k__WV" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$LDa" resolve="xRight" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_A$2" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_cr6" resolve="yCenterT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_ADm" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_ADn" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_ADo" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_ADp" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k_Bem" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_pel" resolve="xRightS" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_ADr" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_cr6" resolve="yCenterT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_BkS" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_BkT" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_BkU" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_BkV" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k_BkW" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_pel" resolve="xRightS" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_BVA" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_0Ve" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_C0K" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_C0L" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_C0M" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_C0N" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k_CBT" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$LDa" resolve="xRight" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_C0P" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_0Ve" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_CH7" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_CH8" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_CH9" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_CHa" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="3wWUd4k_CHb" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$LDa" resolve="xRight" />
              </node>
              <node concept="37vLTw" id="3wWUd4k_DlZ" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k$Lug" resolve="yBottom" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4k_E0h" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4k_EPu" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4k_E0f" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
            </node>
            <node concept="liA8E" id="3wWUd4k_Fo8" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath():void" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wWUd4k$XUz" role="3cqZAp" />
        <node concept="3cpWs6" id="3wWUd4k$WkH" role="3cqZAp">
          <node concept="37vLTw" id="3wWUd4k$X4D" role="3cqZAk">
            <ref role="3cqZAo" node="3wWUd4k$Ju2" resolve="shape" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wWUd4k$ITx" role="1B3o_S" />
      <node concept="3uibUv" id="3wWUd4k$J7k" role="3clF45">
        <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
      </node>
      <node concept="37vLTG" id="3wWUd4k$K3e" role="3clF46">
        <property role="TrG5h" value="dataPositions" />
        <node concept="10Oyi0" id="2JGKyji5Qpp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2JGKyji5TrE" role="3clF46">
        <property role="TrG5h" value="eventPositions" />
        <node concept="10Oyi0" id="2JGKyji5U5w" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3wWUd4k$Jmv" role="3clF46">
        <property role="TrG5h" value="bounds" />
        <node concept="3uibUv" id="3wWUd4k$Jmu" role="1tU5fm">
          <ref role="3uigEE" to="fbzs:~Rectangle2D" resolve="Rectangle2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="61urdBx9YXw" role="jymVt" />
    <node concept="3Tm1VV" id="1Oxt8dqZWeU" role="1B3o_S" />
  </node>
  <node concept="2xDbr0" id="1Oxt8dr0eli">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="ComponentShape" />
    <node concept="1xmO9C" id="1Oxt8dr0es3" role="1xmOgE">
      <property role="TrG5h" value="dataPositions" />
      <node concept="10Oyi0" id="2JGKyji5Ngq" role="1xmOb1" />
    </node>
    <node concept="1xmO9C" id="2JGKyji5Nry" role="1xmOgE">
      <property role="TrG5h" value="eventPositions" />
      <node concept="10Oyi0" id="2JGKyji5N_M" role="1xmOb1" />
    </node>
    <node concept="2xDzp1" id="1Oxt8dr0esa" role="2xOiiv">
      <node concept="3clFbS" id="1Oxt8dr0esb" role="2VODD2">
        <node concept="3cpWs8" id="3wWUd4k_FKh" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4k_FKi" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="3wWUd4k_FKj" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
            </node>
            <node concept="2YIFZM" id="3wWUd4k_FPn" role="33vP2m">
              <ref role="37wK5l" node="3wWUd4k$J9i" resolve="getComponentShape" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="1xnly_" id="3wWUd4k_FPO" role="37wK5m">
                <ref role="1xnlzC" node="1Oxt8dr0es3" resolve="dataPositions" />
              </node>
              <node concept="1xnly_" id="2JGKyji5NL4" role="37wK5m">
                <ref role="1xnlzC" node="2JGKyji5Nry" resolve="eventPositions" />
              </node>
              <node concept="2xDkLB" id="3wWUd4k_FQS" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wWUd4k_FCF" role="3cqZAp" />
        <node concept="3clFbF" id="1Oxt8dr0ijS" role="3cqZAp">
          <node concept="2OqwBi" id="1Oxt8dr0iuo" role="3clFbG">
            <node concept="2xDIQ0" id="1Oxt8dr0ijQ" role="2Oq$k0" />
            <node concept="liA8E" id="1Oxt8dr0iRg" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint):void" resolve="setPaint" />
              <node concept="2YIFZM" id="61urdBx7060" role="37wK5m">
                <ref role="37wK5l" to="7ou7:4Rtv8bOY5mG" resolve="createGradientPaint" />
                <ref role="1Pybhc" to="7ou7:6uo2fN6tnJ2" resolve="ShapeUtil" />
                <node concept="10M0yZ" id="61urdBx7YJX" role="37wK5m">
                  <ref role="3cqZAo" to="z60i:~Color.white" resolve="white" />
                  <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                </node>
                <node concept="2xDkLB" id="2JGKyji7QJP" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Oxt8dr0hHH" role="3cqZAp">
          <node concept="2OqwBi" id="1Oxt8dr0hPR" role="3clFbG">
            <node concept="2xDIQ0" id="1Oxt8dr0hHG" role="2Oq$k0" />
            <node concept="liA8E" id="1Oxt8dr0icz" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
              <node concept="37vLTw" id="3wWUd4k_FSR" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_FKi" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Oxt8dr0iYd" role="3cqZAp">
          <node concept="2OqwBi" id="1Oxt8dr0j92" role="3clFbG">
            <node concept="2xDIQ0" id="1Oxt8dr0iYb" role="2Oq$k0" />
            <node concept="liA8E" id="1Oxt8dr0jyd" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
              <node concept="10M0yZ" id="61urdBx715C" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~Color.DARK_GRAY" resolve="DARK_GRAY" />
                <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Oxt8dr0J5C" role="3cqZAp">
          <node concept="2OqwBi" id="1Oxt8dr0Jh0" role="3clFbG">
            <node concept="2xDIQ0" id="1Oxt8dr0J5A" role="2Oq$k0" />
            <node concept="liA8E" id="1Oxt8dr0JEs" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
              <node concept="37vLTw" id="3wWUd4k_FUX" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4k_FKi" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="17qRlL" id="1Oxt8dr0k1u" role="3pRy3o">
      <node concept="3cmrfG" id="1Oxt8dr0kcK" role="3uHU7B">
        <property role="3cmrfH" value="100" />
      </node>
      <node concept="1eOMI4" id="2JGKyji5WV_" role="3uHU7w">
        <node concept="3cpWs3" id="2JGKyji60zv" role="1eOMHV">
          <node concept="3cpWs3" id="2JGKyji5YlW" role="3uHU7B">
            <node concept="1xnly_" id="2JGKyji5WVK" role="3uHU7B">
              <ref role="1xnlzC" node="1Oxt8dr0es3" resolve="dataPositions" />
            </node>
            <node concept="1xnly_" id="2JGKyji5Yme" role="3uHU7w">
              <ref role="1xnlzC" node="2JGKyji5Nry" resolve="eventPositions" />
            </node>
          </node>
          <node concept="3cmrfG" id="ZbmrF9dIkP" role="3uHU7w">
            <property role="3cmrfH" value="3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2x7zL7" id="2JGKyjimFMX" role="2x7_pA">
      <node concept="3clFbS" id="2JGKyjimFMY" role="2VODD2">
        <node concept="3cpWs8" id="2JGKyjimFN9" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyjimFNa" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="2JGKyjimFNb" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
            </node>
            <node concept="2YIFZM" id="2JGKyjimFNc" role="33vP2m">
              <ref role="37wK5l" node="3wWUd4k$J9i" resolve="getComponentShape" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="1xnly_" id="2JGKyjimFNd" role="37wK5m">
                <ref role="1xnlzC" node="1Oxt8dr0es3" resolve="dataPositions" />
              </node>
              <node concept="1xnly_" id="2JGKyjimFNe" role="37wK5m">
                <ref role="1xnlzC" node="2JGKyji5Nry" resolve="eventPositions" />
              </node>
              <node concept="2xDkLB" id="2JGKyjimFNf" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjimFTo" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjimFTp" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyjimFTq" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyjimFTr" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
              <node concept="37vLTw" id="2JGKyjimFTs" role="37wK5m">
                <ref role="3cqZAo" node="2JGKyjimFNa" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2xDbr0" id="61urdBwKnw2">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="ContextSourceShape" />
    <node concept="1xmO9C" id="61urdBwX1v_" role="1xmOgE">
      <property role="TrG5h" value="kind" />
      <node concept="3uibUv" id="2R0Wzqv0vjD" role="1xmOb1">
        <ref role="3uigEE" node="2R0WzquZm0W" resolve="ConnectionKind" />
      </node>
    </node>
    <node concept="2x7zL7" id="61urdBx0T9_" role="2x7_pA">
      <node concept="3clFbS" id="61urdBx0T9A" role="2VODD2">
        <node concept="3cpWs8" id="61urdBx0T9S" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx0T9T" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="61urdBx0T9U" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
            </node>
            <node concept="2YIFZM" id="61urdBx0T9V" role="33vP2m">
              <ref role="37wK5l" node="61urdBwKDev" resolve="getInterfaceInputShape" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="2xDkLB" id="61urdBx0T9W" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx0Ta5" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx0Ta6" role="3clFbG">
            <node concept="2xDIQ0" id="61urdBx0Ta7" role="2Oq$k0" />
            <node concept="liA8E" id="61urdBx0Ta8" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
              <node concept="37vLTw" id="61urdBx0Ta9" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx0T9T" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xDzp1" id="2JGKyjiuPcn" role="2xOiiv">
      <node concept="3clFbS" id="2JGKyjiuPco" role="2VODD2">
        <node concept="3cpWs8" id="2JGKyjiuPcp" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyjiuPcq" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="2JGKyjiuPcr" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
            </node>
            <node concept="2YIFZM" id="2JGKyjiuPkq" role="33vP2m">
              <ref role="37wK5l" node="61urdBwKDev" resolve="getInterfaceInputShape" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="2xDkLB" id="2JGKyjiuPkr" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiuPcu" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjiuPcv" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyjiuPcw" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyjiuPcx" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint):void" resolve="setPaint" />
              <node concept="2YIFZM" id="2JGKyjiuPcy" role="37wK5m">
                <ref role="37wK5l" to="7ou7:4Rtv8bOY5mG" resolve="createGradientPaint" />
                <ref role="1Pybhc" to="7ou7:6uo2fN6tnJ2" resolve="ShapeUtil" />
                <node concept="2OqwBi" id="2R0Wzqv0vQH" role="37wK5m">
                  <node concept="1xnly_" id="2R0Wzqv0vx2" role="2Oq$k0">
                    <ref role="1xnlzC" node="61urdBwX1v_" resolve="kind" />
                  </node>
                  <node concept="2S8uIT" id="2R0Wzqv0x0E" role="2OqNvi">
                    <ref role="2S8YL0" node="2R0WzquZrQh" resolve="bgColor" />
                  </node>
                </node>
                <node concept="2xDkLB" id="2JGKyjiuPcB" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiuPcC" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjiuPcD" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyjiuPcE" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyjiuPcF" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
              <node concept="37vLTw" id="2JGKyjiuPcG" role="37wK5m">
                <ref role="3cqZAo" node="2JGKyjiuPcq" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiuPcH" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjiuPcI" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyjiuPcJ" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyjiuPcK" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
              <node concept="2OqwBi" id="2R0Wzqv0xpZ" role="37wK5m">
                <node concept="1xnly_" id="2R0Wzqv0x3N" role="2Oq$k0">
                  <ref role="1xnlzC" node="61urdBwX1v_" resolve="kind" />
                </node>
                <node concept="2S8uIT" id="2R0Wzqv0xY8" role="2OqNvi">
                  <ref role="2S8YL0" node="2R0WzquZnQT" resolve="color" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiuPcP" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjiuPcQ" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyjiuPcR" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyjiuPcS" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
              <node concept="37vLTw" id="2JGKyjiuPcT" role="37wK5m">
                <ref role="3cqZAo" node="2JGKyjiuPcq" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2xDbr0" id="61urdBx9XJc">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="ContextDestinationShape" />
    <node concept="1xmO9C" id="61urdBx9XJd" role="1xmOgE">
      <property role="TrG5h" value="kind" />
      <node concept="3uibUv" id="2R0Wzqv0zCe" role="1xmOb1">
        <ref role="3uigEE" node="2R0WzquZm0W" resolve="ConnectionKind" />
      </node>
    </node>
    <node concept="2xDzp1" id="61urdBx9XJf" role="2xOiiv">
      <node concept="3clFbS" id="61urdBx9XJg" role="2VODD2">
        <node concept="3cpWs8" id="61urdBx9XJh" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9XJi" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="61urdBx9XJj" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
            </node>
            <node concept="2YIFZM" id="61urdBxa2ms" role="33vP2m">
              <ref role="37wK5l" node="61urdBx9Z4B" resolve="getInterfaceOutputShape" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="2xDkLB" id="61urdBxa2mt" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx9XJo" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx9XJp" role="3clFbG">
            <node concept="2xDIQ0" id="61urdBx9XJq" role="2Oq$k0" />
            <node concept="liA8E" id="61urdBx9XJr" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint):void" resolve="setPaint" />
              <node concept="2YIFZM" id="61urdBx9XJs" role="37wK5m">
                <ref role="37wK5l" to="7ou7:4Rtv8bOY5mG" resolve="createGradientPaint" />
                <ref role="1Pybhc" to="7ou7:6uo2fN6tnJ2" resolve="ShapeUtil" />
                <node concept="2OqwBi" id="2R0Wzqv0$4I" role="37wK5m">
                  <node concept="1xnly_" id="2R0Wzqv0zJ3" role="2Oq$k0">
                    <ref role="1xnlzC" node="61urdBx9XJd" resolve="kind" />
                  </node>
                  <node concept="2S8uIT" id="2R0Wzqv0$D8" role="2OqNvi">
                    <ref role="2S8YL0" node="2R0WzquZrQh" resolve="bgColor" />
                  </node>
                </node>
                <node concept="2xDkLB" id="61urdBx9XJu" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx9XJw" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx9XJx" role="3clFbG">
            <node concept="2xDIQ0" id="61urdBx9XJy" role="2Oq$k0" />
            <node concept="liA8E" id="61urdBx9XJz" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
              <node concept="37vLTw" id="61urdBx9XJ$" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9XJi" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiuNw9" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjiuNDP" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyjiuNw7" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyjiuO1v" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
              <node concept="2OqwBi" id="2R0Wzqv0$GI" role="37wK5m">
                <node concept="1xnly_" id="2R0Wzqv0$GJ" role="2Oq$k0">
                  <ref role="1xnlzC" node="61urdBx9XJd" resolve="kind" />
                </node>
                <node concept="2S8uIT" id="2R0Wzqv0_h3" role="2OqNvi">
                  <ref role="2S8YL0" node="2R0WzquZnQT" resolve="color" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiuO9s" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjiuOjS" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyjiuO9q" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyjiuOx4" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
              <node concept="37vLTw" id="2JGKyjiuOC9" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9XJi" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2x7zL7" id="61urdBx9XJ_" role="2x7_pA">
      <node concept="3clFbS" id="61urdBx9XJA" role="2VODD2">
        <node concept="3cpWs8" id="61urdBx9XJB" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBx9XJC" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="61urdBx9XJD" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
            </node>
            <node concept="2YIFZM" id="61urdBxa2nY" role="33vP2m">
              <ref role="37wK5l" node="61urdBx9Z4B" resolve="getInterfaceOutputShape" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="2xDkLB" id="61urdBxa2nZ" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBx9XJG" role="3cqZAp">
          <node concept="2OqwBi" id="61urdBx9XJH" role="3clFbG">
            <node concept="2xDIQ0" id="61urdBx9XJI" role="2Oq$k0" />
            <node concept="liA8E" id="61urdBx9XJJ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
              <node concept="37vLTw" id="61urdBx9XJK" role="37wK5m">
                <ref role="3cqZAo" node="61urdBx9XJC" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="61urdBxyoS4">
    <property role="TrG5h" value="EventConnectorTooltip" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="3EZMnI" id="61urdBxyoS5" role="2wV5jI">
      <node concept="3F0A7n" id="61urdBxyoS6" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="_tjkj" id="61urdBxyoS7" role="3EZMnx">
        <node concept="3EZMnI" id="61urdBxyoS8" role="_tjki">
          <node concept="3F0ifn" id="61urdBxyoS9" role="3EZMnx">
            <property role="3F0ifm" value="WITH" />
          </node>
          <node concept="3F2HdR" id="61urdBxyoSa" role="3EZMnx">
            <property role="2czwfO" value="," />
            <property role="Q2I2d" value="punctuation" />
            <ref role="1NtTu8" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
            <node concept="l2Vlx" id="61urdBxyoSb" role="2czzBx" />
          </node>
          <node concept="l2Vlx" id="61urdBxyoSc" role="2iSdaV" />
          <node concept="VPM3Z" id="61urdBxyoSd" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="61urdBxyoSe" role="2iSdaV" />
      <node concept="VPM3Z" id="61urdBxyoSf" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="61urdBywgym">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="EventInstancesCellProvider" />
    <node concept="312cEg" id="61urdBywjjg" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="61urdBywjdF" role="1B3o_S" />
      <node concept="3Tqbb2" id="61urdBywjie" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
      </node>
    </node>
    <node concept="312cEg" id="61urdBz0KbS" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIsSource" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="61urdBz0KbT" role="1B3o_S" />
      <node concept="10P_77" id="61urdBz0NrM" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="61urdBywjnS" role="jymVt" />
    <node concept="2tJIrI" id="61urdBz0Jxz" role="jymVt" />
    <node concept="3clFbW" id="61urdBywjrw" role="jymVt">
      <node concept="3cqZAl" id="61urdBywjrx" role="3clF45" />
      <node concept="3Tm1VV" id="61urdBywjry" role="1B3o_S" />
      <node concept="3clFbS" id="61urdBywjr$" role="3clF47">
        <node concept="XkiVB" id="61urdBywjrA" role="3cqZAp">
          <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
          <node concept="37vLTw" id="61urdBywjrF" role="37wK5m">
            <ref role="3cqZAo" node="61urdBywjrB" resolve="component" />
          </node>
        </node>
        <node concept="3clFbF" id="61urdBywjrI" role="3cqZAp">
          <node concept="37vLTI" id="61urdBywjrK" role="3clFbG">
            <node concept="37vLTw" id="61urdBywjrO" role="37vLTJ">
              <ref role="3cqZAo" node="61urdBywjjg" resolve="myComponent" />
            </node>
            <node concept="37vLTw" id="61urdBywjGq" role="37vLTx">
              <ref role="3cqZAo" node="61urdBywjrB" resolve="component" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61urdBz0Yln" role="3cqZAp">
          <node concept="37vLTI" id="61urdBz0ZZ$" role="3clFbG">
            <node concept="37vLTw" id="61urdBz14TY" role="37vLTx">
              <ref role="3cqZAo" node="61urdByXqjG" resolve="isSource" />
            </node>
            <node concept="37vLTw" id="61urdBz0Yll" role="37vLTJ">
              <ref role="3cqZAo" node="61urdBz0KbS" resolve="myIsSource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="61urdBywjrB" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3Tqbb2" id="61urdBywj_m" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
        </node>
        <node concept="2AHcQZ" id="61urdBywjrE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="61urdByXqjG" role="3clF46">
        <property role="TrG5h" value="isSource" />
        <node concept="10P_77" id="61urdBz0iXS" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="61urdBywgyn" role="1B3o_S" />
    <node concept="2tJIrI" id="61urdBywk9w" role="jymVt" />
    <node concept="3clFb_" id="61urdBywgDS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createEditorCell" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="61urdBywgDT" role="1B3o_S" />
      <node concept="3uibUv" id="61urdBywgDU" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="61urdBywgDV" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="61urdBywgDW" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="61urdBywgDX" role="3clF47">
        <node concept="3cpWs8" id="5VLuTnkqK_1" role="3cqZAp">
          <node concept="3cpWsn" id="5VLuTnkqK_4" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3Tqbb2" id="5VLuTnkqK_5" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
            </node>
            <node concept="1PxgMI" id="5VLuTnkqK_6" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5VLuTnkqK_7" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="5VLuTnkqK_8" role="1m5AlR">
                <node concept="37vLTw" id="5VLuTnkqK_9" role="2Oq$k0">
                  <ref role="3cqZAo" node="61urdBywjjg" resolve="myComponent" />
                </node>
                <node concept="1mfA1w" id="5VLuTnkqK_a" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="61urdBywgDY" role="3cqZAp">
          <node concept="3cpWsn" id="61urdBywgDZ" role="3cpWs9">
            <property role="TrG5h" value="collection" />
            <node concept="3uibUv" id="61urdBywgE0" role="1tU5fm">
              <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
            </node>
            <node concept="2ShNRf" id="61urdBywgE1" role="33vP2m">
              <node concept="1pGfFk" id="61urdBywgE2" role="2ShVmc">
                <ref role="37wK5l" to="g51k:~EditorCell_Collection.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.nodeEditor.cellLayout.CellLayout)" resolve="EditorCell_Collection" />
                <node concept="37vLTw" id="61urdBywgE3" role="37wK5m">
                  <ref role="3cqZAo" node="61urdBywgDV" resolve="e" />
                </node>
                <node concept="37vLTw" id="61urdBywkf$" role="37wK5m">
                  <ref role="3cqZAo" node="61urdBywjjg" resolve="myComponent" />
                </node>
                <node concept="2ShNRf" id="61urdBywgE5" role="37wK5m">
                  <node concept="HV5vD" id="61urdBywgE6" role="2ShVmc">
                    <ref role="HV5vE" to="kcid:~CellLayout_Vertical" resolve="CellLayout_Vertical" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1rxLtFPsR4d" role="3cqZAp">
          <node concept="2GrKxI" id="1rxLtFPsR4f" role="2Gsz3X">
            <property role="TrG5h" value="event" />
          </node>
          <node concept="1rXfSq" id="1rxLtFPsS6O" role="2GsD0m">
            <ref role="37wK5l" node="61urdBz0r_J" resolve="events" />
          </node>
          <node concept="3clFbS" id="1rxLtFPsR4j" role="2LFqv$">
            <node concept="3TSTJe" id="5VLuTnkqwJA" role="3cqZAp">
              <property role="3TSVrv" value="endpoints" />
              <node concept="3clFbS" id="5VLuTnkqwJC" role="9aQI4">
                <node concept="3clFbF" id="61urdBywgEH" role="3cqZAp">
                  <node concept="2OqwBi" id="61urdBywgEI" role="3clFbG">
                    <node concept="37vLTw" id="61urdBywgEJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="61urdBywgDZ" resolve="collection" />
                    </node>
                    <node concept="liA8E" id="61urdBywgEK" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                      <node concept="1rXfSq" id="5VLuTnkulKM" role="37wK5m">
                        <ref role="37wK5l" node="5VLuTnkulKD" resolve="createEventCell" />
                        <node concept="37vLTw" id="5VLuTnkulKK" role="37wK5m">
                          <ref role="3cqZAo" node="61urdBywgDV" resolve="e" />
                        </node>
                        <node concept="2GrUjf" id="1rxLtFPsWrZ" role="37wK5m">
                          <ref role="2Gs0qQ" node="1rxLtFPsR4f" resolve="event" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3K4zz7" id="1rxLtFPsHGI" role="3TSVro">
                <node concept="37vLTw" id="1rxLtFPsHGJ" role="3K4Cdx">
                  <ref role="3cqZAo" node="61urdBz0KbS" resolve="myIsSource" />
                </node>
                <node concept="1rXfSq" id="1rxLtFPsHGK" role="3K4E3e">
                  <ref role="37wK5l" node="1rxLtFPsBtS" resolve="findEventSources" />
                  <node concept="37vLTw" id="1rxLtFPsHGL" role="37wK5m">
                    <ref role="3cqZAo" node="5VLuTnkqK_4" resolve="fb" />
                  </node>
                  <node concept="2GrUjf" id="1rxLtFPsWkI" role="37wK5m">
                    <ref role="2Gs0qQ" node="1rxLtFPsR4f" resolve="event" />
                  </node>
                </node>
                <node concept="1rXfSq" id="1rxLtFPsHGN" role="3K4GZi">
                  <ref role="37wK5l" node="1rxLtFPsA0F" resolve="findEventDestinations" />
                  <node concept="37vLTw" id="1rxLtFPsHGO" role="37wK5m">
                    <ref role="3cqZAo" node="5VLuTnkqK_4" resolve="fb" />
                  </node>
                  <node concept="2GrUjf" id="1rxLtFPsWzr" role="37wK5m">
                    <ref role="2Gs0qQ" node="1rxLtFPsR4f" resolve="event" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wWUd4krMQK" role="3cqZAp">
          <node concept="3cpWsn" id="3wWUd4krMQL" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="2ShNRf" id="3wWUd4krMQM" role="33vP2m">
              <node concept="1pGfFk" id="3wWUd4krMQN" role="2ShVmc">
                <ref role="37wK5l" to="5ueo:~StyleImpl.&lt;init&gt;()" resolve="StyleImpl" />
              </node>
            </node>
            <node concept="3uibUv" id="3wWUd4krMQO" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4krMQP" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4krMQQ" role="3clFbG">
            <node concept="37vLTw" id="3wWUd4krMQR" role="2Oq$k0">
              <ref role="3cqZAo" node="3wWUd4krMQL" resolve="style" />
            </node>
            <node concept="liA8E" id="3wWUd4krMQS" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object):void" resolve="set" />
              <node concept="10M0yZ" id="3wWUd4krMQT" role="37wK5m">
                <ref role="3cqZAo" to="5ueo:~StyleAttributes.HORIZONTAL_ALIGN" resolve="HORIZONTAL_ALIGN" />
                <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
              </node>
              <node concept="3K4zz7" id="3wWUd4krMQU" role="37wK5m">
                <node concept="Rm8GO" id="G6ZN4N0SuJ" role="3K4E3e">
                  <ref role="Rm8GQ" to="5ueo:~CellAlign.RIGHT" resolve="RIGHT" />
                  <ref role="1Px2BO" to="5ueo:~CellAlign" resolve="CellAlign" />
                </node>
                <node concept="37vLTw" id="3wWUd4krMQW" role="3K4Cdx">
                  <ref role="3cqZAo" node="61urdBz0KbS" resolve="myIsSource" />
                </node>
                <node concept="Rm8GO" id="G6ZN4N0SB1" role="3K4GZi">
                  <ref role="Rm8GQ" to="5ueo:~CellAlign.LEFT" resolve="LEFT" />
                  <ref role="1Px2BO" to="5ueo:~CellAlign" resolve="CellAlign" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wWUd4krI5S" role="3cqZAp">
          <node concept="2OqwBi" id="3wWUd4krOog" role="3clFbG">
            <node concept="2OqwBi" id="3wWUd4krJPn" role="2Oq$k0">
              <node concept="37vLTw" id="3wWUd4krI5Q" role="2Oq$k0">
                <ref role="3cqZAo" node="61urdBywgDZ" resolve="collection" />
              </node>
              <node concept="liA8E" id="3wWUd4krLVr" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
              </node>
            </node>
            <node concept="liA8E" id="3wWUd4krPoK" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.putAll(jetbrains.mps.openapi.editor.style.Style):void" resolve="putAll" />
              <node concept="37vLTw" id="3wWUd4krPCE" role="37wK5m">
                <ref role="3cqZAo" node="3wWUd4krMQL" resolve="style" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="61urdBywgEO" role="3cqZAp">
          <node concept="37vLTw" id="61urdBywgEP" role="3cqZAk">
            <ref role="3cqZAo" node="61urdBywgDZ" resolve="collection" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1rxLtFPsCyS" role="jymVt" />
    <node concept="3clFb_" id="1rxLtFPsBtS" role="jymVt">
      <property role="TrG5h" value="findEventSources" />
      <node concept="3Tm6S6" id="1rxLtFPsBtT" role="1B3o_S" />
      <node concept="A3Dl8" id="1rxLtFPsBtU" role="3clF45">
        <node concept="3Tqbb2" id="1rxLtFPsBtV" role="A3Ik2" />
      </node>
      <node concept="37vLTG" id="1rxLtFPsBmR" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3Tqbb2" id="1rxLtFPsBmS" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1rxLtFPsBmT" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3Tqbb2" id="1rxLtFPsBmU" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1rxLtFPsBfl" role="3clF47">
        <node concept="3cpWs6" id="1rxLtFPsBmf" role="3cqZAp">
          <node concept="2OqwBi" id="1rxLtFPsBmg" role="3cqZAk">
            <node concept="2OqwBi" id="1rxLtFPsBmh" role="2Oq$k0">
              <node concept="2OqwBi" id="1rxLtFPsBmi" role="2Oq$k0">
                <node concept="37vLTw" id="1rxLtFPsBmV" role="2Oq$k0">
                  <ref role="3cqZAo" node="1rxLtFPsBmR" resolve="fb" />
                </node>
                <node concept="3Tsc0h" id="1rxLtFPsBmk" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                </node>
              </node>
              <node concept="3zZkjj" id="1rxLtFPsBml" role="2OqNvi">
                <node concept="1bVj0M" id="1rxLtFPsBmm" role="23t8la">
                  <node concept="3clFbS" id="1rxLtFPsBmn" role="1bW5cS">
                    <node concept="3cpWs8" id="1rxLtFPsBmo" role="3cqZAp">
                      <node concept="3cpWsn" id="1rxLtFPsBmp" role="3cpWs9">
                        <property role="TrG5h" value="eventDestination" />
                        <node concept="3Tqbb2" id="1rxLtFPsBmq" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                        </node>
                        <node concept="1PxgMI" id="1rxLtFPsBmr" role="33vP2m">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="1rxLtFPsBms" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                          </node>
                          <node concept="2OqwBi" id="1rxLtFPsBmt" role="1m5AlR">
                            <node concept="37vLTw" id="1rxLtFPsBmu" role="2Oq$k0">
                              <ref role="3cqZAo" node="1rxLtFPsBmG" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="1rxLtFPsBmv" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1rxLtFPsBmw" role="3cqZAp">
                      <node concept="1Wc70l" id="1rxLtFPsBmx" role="3clFbG">
                        <node concept="3clFbC" id="1rxLtFPsBmy" role="3uHU7w">
                          <node concept="37vLTw" id="1rxLtFPsBmW" role="3uHU7w">
                            <ref role="3cqZAo" node="1rxLtFPsBmT" resolve="event" />
                          </node>
                          <node concept="2OqwBi" id="1rxLtFPsBm$" role="3uHU7B">
                            <node concept="37vLTw" id="1rxLtFPsBm_" role="2Oq$k0">
                              <ref role="3cqZAo" node="1rxLtFPsBmp" resolve="eventDestination" />
                            </node>
                            <node concept="3TrEf2" id="1rxLtFPsBmA" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="1rxLtFPsBmB" role="3uHU7B">
                          <node concept="2OqwBi" id="1rxLtFPsBmC" role="3uHU7B">
                            <node concept="37vLTw" id="1rxLtFPsBmD" role="2Oq$k0">
                              <ref role="3cqZAo" node="1rxLtFPsBmp" resolve="eventDestination" />
                            </node>
                            <node concept="3TrEf2" id="1rxLtFPsBmE" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1rxLtFPsBmF" role="3uHU7w">
                            <ref role="3cqZAo" node="61urdBywjjg" resolve="myComponent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1rxLtFPsBmG" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1rxLtFPsBmH" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3$u5V9" id="1rxLtFPsBmI" role="2OqNvi">
              <node concept="1bVj0M" id="1rxLtFPsBmJ" role="23t8la">
                <node concept="3clFbS" id="1rxLtFPsBmK" role="1bW5cS">
                  <node concept="3clFbF" id="1rxLtFPsBmL" role="3cqZAp">
                    <node concept="2OqwBi" id="1rxLtFPsBmM" role="3clFbG">
                      <node concept="37vLTw" id="1rxLtFPsBmN" role="2Oq$k0">
                        <ref role="3cqZAo" node="1rxLtFPsBmP" resolve="it" />
                      </node>
                      <node concept="3TrEf2" id="1rxLtFPsBmO" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1rxLtFPsBmP" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1rxLtFPsBmQ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1rxLtFPsA0F" role="jymVt">
      <property role="TrG5h" value="findEventDestinations" />
      <node concept="3Tm6S6" id="1rxLtFPsA0G" role="1B3o_S" />
      <node concept="A3Dl8" id="1rxLtFPsA0H" role="3clF45">
        <node concept="3Tqbb2" id="1rxLtFPsA0I" role="A3Ik2" />
      </node>
      <node concept="37vLTG" id="1rxLtFPs_TG" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3Tqbb2" id="1rxLtFPs_TH" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1rxLtFPs_TE" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3Tqbb2" id="1rxLtFPs_TF" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1rxLtFPs_M8" role="3clF47">
        <node concept="3cpWs6" id="1rxLtFPs_T2" role="3cqZAp">
          <node concept="2OqwBi" id="1rxLtFPs_T3" role="3cqZAk">
            <node concept="2OqwBi" id="1rxLtFPs_T4" role="2Oq$k0">
              <node concept="2OqwBi" id="1rxLtFPs_T5" role="2Oq$k0">
                <node concept="37vLTw" id="1rxLtFPs_TJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1rxLtFPs_TG" resolve="fb" />
                </node>
                <node concept="3Tsc0h" id="1rxLtFPs_T7" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                </node>
              </node>
              <node concept="3zZkjj" id="1rxLtFPs_T8" role="2OqNvi">
                <node concept="1bVj0M" id="1rxLtFPs_T9" role="23t8la">
                  <node concept="3clFbS" id="1rxLtFPs_Ta" role="1bW5cS">
                    <node concept="3cpWs8" id="1rxLtFPs_Tb" role="3cqZAp">
                      <node concept="3cpWsn" id="1rxLtFPs_Tc" role="3cpWs9">
                        <property role="TrG5h" value="eventSource" />
                        <node concept="3Tqbb2" id="1rxLtFPs_Td" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                        </node>
                        <node concept="1PxgMI" id="1rxLtFPs_Te" role="33vP2m">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="1rxLtFPs_Tf" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                          </node>
                          <node concept="2OqwBi" id="1rxLtFPs_Tg" role="1m5AlR">
                            <node concept="37vLTw" id="1rxLtFPs_Th" role="2Oq$k0">
                              <ref role="3cqZAo" node="1rxLtFPs_Tv" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="1rxLtFPs_Ti" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1rxLtFPs_Tj" role="3cqZAp">
                      <node concept="1Wc70l" id="1rxLtFPs_Tk" role="3clFbG">
                        <node concept="3clFbC" id="1rxLtFPs_Tl" role="3uHU7w">
                          <node concept="37vLTw" id="1rxLtFPs_TI" role="3uHU7w">
                            <ref role="3cqZAo" node="1rxLtFPs_TE" resolve="event" />
                          </node>
                          <node concept="2OqwBi" id="1rxLtFPs_Tn" role="3uHU7B">
                            <node concept="37vLTw" id="1rxLtFPs_To" role="2Oq$k0">
                              <ref role="3cqZAo" node="1rxLtFPs_Tc" resolve="eventSource" />
                            </node>
                            <node concept="3TrEf2" id="1rxLtFPs_Tp" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="1rxLtFPs_Tq" role="3uHU7B">
                          <node concept="2OqwBi" id="1rxLtFPs_Tr" role="3uHU7B">
                            <node concept="37vLTw" id="1rxLtFPs_Ts" role="2Oq$k0">
                              <ref role="3cqZAo" node="1rxLtFPs_Tc" resolve="eventSource" />
                            </node>
                            <node concept="3TrEf2" id="1rxLtFPs_Tt" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1rxLtFPs_Tu" role="3uHU7w">
                            <ref role="3cqZAo" node="61urdBywjjg" resolve="myComponent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1rxLtFPs_Tv" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1rxLtFPs_Tw" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3$u5V9" id="1rxLtFPs_Tx" role="2OqNvi">
              <node concept="1bVj0M" id="1rxLtFPs_Ty" role="23t8la">
                <node concept="3clFbS" id="1rxLtFPs_Tz" role="1bW5cS">
                  <node concept="3clFbF" id="1rxLtFPs_T$" role="3cqZAp">
                    <node concept="2OqwBi" id="1rxLtFPs_T_" role="3clFbG">
                      <node concept="37vLTw" id="1rxLtFPs_TA" role="2Oq$k0">
                        <ref role="3cqZAo" node="1rxLtFPs_TC" resolve="it" />
                      </node>
                      <node concept="3TrEf2" id="1rxLtFPs_TB" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1rxLtFPs_TC" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1rxLtFPs_TD" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1rxLtFPsX7G" role="jymVt" />
    <node concept="3clFb_" id="5VLuTnkulKD" role="jymVt">
      <property role="TrG5h" value="createEventCell" />
      <node concept="3Tm6S6" id="5VLuTnkulKE" role="1B3o_S" />
      <node concept="3uibUv" id="5VLuTnkulKF" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="5VLuTnkulEj" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="5VLuTnkulEk" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="5VLuTnkulEl" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3Tqbb2" id="5VLuTnkulEm" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="5VLuTnkulzm" role="3clF47">
        <node concept="3cpWs6" id="5VLuTnkulDA" role="3cqZAp">
          <node concept="2OqwBi" id="5VLuTnkulDB" role="3cqZAk">
            <node concept="37vLTw" id="5VLuTnkulEo" role="2Oq$k0">
              <ref role="3cqZAo" node="5VLuTnkulEj" resolve="e" />
            </node>
            <node concept="2CJim2" id="5VLuTnkulDD" role="2OqNvi">
              <node concept="37vLTw" id="5VLuTnkup67" role="2CJshu">
                <ref role="3cqZAo" node="5VLuTnkulEl" resolve="event" />
              </node>
              <node concept="2CJsh3" id="5VLuTnkulDF" role="2CJshi">
                <node concept="1j7BWu" id="5VLuTnkulDG" role="2wV5jI">
                  <property role="2oejA6" value="true" />
                  <node concept="3F0A7n" id="5VLuTnkulDH" role="1j7Clw">
                    <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  </node>
                  <node concept="3EZMnI" id="5VLuTnkulDI" role="1j7ClA">
                    <node concept="3EZMnI" id="5VLuTnkulDJ" role="3EZMnx">
                      <node concept="VPM3Z" id="5VLuTnkulDK" role="3F10Kt">
                        <property role="VOm3f" value="false" />
                      </node>
                      <node concept="ljvvj" id="5VLuTnkulDL" role="3F10Kt">
                        <property role="VOm3f" value="true" />
                      </node>
                      <node concept="3F0A7n" id="5VLuTnkulDM" role="3EZMnx">
                        <property role="1Intyy" value="true" />
                        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="3EZMnI" id="5VLuTnkulDN" role="3EZMnx">
                        <node concept="3F0ifn" id="5VLuTnkulDO" role="3EZMnx">
                          <property role="3F0ifm" value="WITH" />
                        </node>
                        <node concept="3F2HdR" id="5VLuTnkulDP" role="3EZMnx">
                          <property role="2czwfO" value="," />
                          <property role="Q2I2d" value="punctuation" />
                          <ref role="1NtTu8" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                        </node>
                        <node concept="l2Vlx" id="5VLuTnkulDQ" role="2iSdaV" />
                        <node concept="VPM3Z" id="5VLuTnkulDR" role="3F10Kt">
                          <property role="VOm3f" value="false" />
                        </node>
                        <node concept="pkWqt" id="5VLuTnkulDS" role="pqm2j">
                          <node concept="3clFbS" id="5VLuTnkulDT" role="2VODD2">
                            <node concept="3clFbF" id="5VLuTnkulDU" role="3cqZAp">
                              <node concept="2OqwBi" id="5VLuTnkulDV" role="3clFbG">
                                <node concept="2OqwBi" id="5VLuTnkulDW" role="2Oq$k0">
                                  <node concept="pncrf" id="5VLuTnkvRHs" role="2Oq$k0" />
                                  <node concept="3Tsc0h" id="5VLuTnkulDY" role="2OqNvi">
                                    <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                                  </node>
                                </node>
                                <node concept="3GX2aA" id="5VLuTnkulDZ" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="l2Vlx" id="5VLuTnkulE0" role="2iSdaV" />
                    </node>
                    <node concept="3F0ifn" id="5VLuTnkulE1" role="3EZMnx">
                      <property role="3F0ifm" value="" />
                      <node concept="ljvvj" id="5VLuTnkulE2" role="3F10Kt">
                        <property role="VOm3f" value="true" />
                      </node>
                    </node>
                    <node concept="3F0ifn" id="5VLuTnkulE3" role="3EZMnx">
                      <property role="3F0ifm" value="connections" />
                    </node>
                    <node concept="3F0ifn" id="5VLuTnkulE4" role="3EZMnx">
                      <property role="3F0ifm" value=":" />
                      <node concept="ljvvj" id="5VLuTnkulE5" role="3F10Kt">
                        <property role="VOm3f" value="true" />
                      </node>
                      <node concept="11L4FC" id="5VLuTnkulE6" role="3F10Kt">
                        <property role="VOm3f" value="true" />
                      </node>
                    </node>
                    <node concept="s8t4o" id="5VLuTnkulE7" role="3EZMnx">
                      <property role="28Zw97" value="true" />
                      <property role="2czwfP" value="," />
                      <property role="Q2I2e" value="punctuation" />
                      <ref role="28F8cf" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      <node concept="xShMh" id="5VLuTnkulE8" role="3F10Kt">
                        <property role="VOm3f" value="true" />
                      </node>
                      <node concept="s8sZD" id="5VLuTnkulE9" role="sbcd9">
                        <node concept="3clFbS" id="5VLuTnkulEa" role="2VODD2">
                          <node concept="3clFbF" id="5VLuTnkulEb" role="3cqZAp">
                            <node concept="3YfvQV" id="5VLuTnkulEc" role="3clFbG">
                              <property role="TrG5h" value="endpoints" />
                              <node concept="A3Dl8" id="5VLuTnkulEd" role="3YfvLK">
                                <node concept="3Tqbb2" id="5VLuTnkulEe" role="A3Ik2" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="l2Vlx" id="5VLuTnkulEf" role="2czzBy" />
                      <node concept="3F0ifn" id="5VLuTnkulEg" role="2czzBJ">
                        <property role="ilYzB" value="no connections" />
                      </node>
                    </node>
                    <node concept="l2Vlx" id="5VLuTnkulEh" role="2iSdaV" />
                    <node concept="VPM3Z" id="5VLuTnkulEi" role="3F10Kt">
                      <property role="VOm3f" value="false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="61urdBywgDJ" role="jymVt" />
    <node concept="2tJIrI" id="61urdBz0p3R" role="jymVt" />
    <node concept="3clFb_" id="61urdBz0r_J" role="jymVt">
      <property role="TrG5h" value="events" />
      <node concept="2I9FWS" id="61urdBz0yAn" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
      <node concept="3Tm1VV" id="61urdBz0r_M" role="1B3o_S" />
      <node concept="3clFbS" id="61urdBz0r_N" role="3clF47">
        <node concept="3clFbJ" id="61urdBz1bdX" role="3cqZAp">
          <node concept="37vLTw" id="61urdBz1dVB" role="3clFbw">
            <ref role="3cqZAo" node="61urdBz0KbS" resolve="myIsSource" />
          </node>
          <node concept="3clFbS" id="61urdBz1bdZ" role="3clFbx">
            <node concept="3cpWs6" id="61urdBz1jAN" role="3cqZAp">
              <node concept="2OqwBi" id="61urdBz1jPQ" role="3cqZAk">
                <node concept="37vLTw" id="61urdBz1jPR" role="2Oq$k0">
                  <ref role="3cqZAo" node="61urdBywjjg" resolve="myComponent" />
                </node>
                <node concept="2qgKlT" id="1rxLtFPqlva" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:5L1OxDukYcu" resolve="eventSources" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="61urdBz1kLR" role="9aQIa">
            <node concept="3clFbS" id="61urdBz1kLS" role="9aQI4">
              <node concept="3cpWs6" id="61urdBz1mbf" role="3cqZAp">
                <node concept="2OqwBi" id="61urdBz1vLn" role="3cqZAk">
                  <node concept="37vLTw" id="61urdBz1vLo" role="2Oq$k0">
                    <ref role="3cqZAo" node="61urdBywjjg" resolve="myComponent" />
                  </node>
                  <node concept="2qgKlT" id="1rxLtFPqm_A" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:5L1OxDukYdN" resolve="eventDestinations" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="61urdBywiLc" role="1zkMxy">
      <ref role="3uigEE" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
    </node>
  </node>
  <node concept="24kQdi" id="61urdBz6Mwh">
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="2aJ2om" id="61urdBz6MDa" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
    <node concept="2ZK4vF" id="61urdBz7iJn" role="2wV5jI">
      <node concept="1j7BWu" id="61urdBz6MDd" role="1ytjkN">
        <property role="2oejA6" value="true" />
        <node concept="3F0A7n" id="61urdBz6MDe" role="1j7Clw">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3EZMnI" id="61urdBz6MDf" role="1j7ClA">
          <node concept="3EZMnI" id="61urdBza3eh" role="3EZMnx">
            <node concept="VPM3Z" id="61urdBza3ej" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="ljvvj" id="61urdBz6MDm" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F0A7n" id="61urdBz6MDg" role="3EZMnx">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
            <node concept="l2Vlx" id="61urdBza3em" role="2iSdaV" />
            <node concept="3EZMnI" id="61urdBz6MDh" role="3EZMnx">
              <node concept="3F0ifn" id="61urdBz6MDi" role="3EZMnx">
                <property role="3F0ifm" value="WITH" />
              </node>
              <node concept="3F2HdR" id="61urdBz6MDj" role="3EZMnx">
                <property role="2czwfO" value="," />
                <property role="Q2I2d" value="punctuation" />
                <ref role="1NtTu8" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
              </node>
              <node concept="l2Vlx" id="61urdBz6MDk" role="2iSdaV" />
              <node concept="VPM3Z" id="61urdBz6MDl" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="pkWqt" id="61urdBz6MDn" role="pqm2j">
                <node concept="3clFbS" id="61urdBz6MDo" role="2VODD2">
                  <node concept="3clFbF" id="61urdBz6MDp" role="3cqZAp">
                    <node concept="2OqwBi" id="61urdBz6MDq" role="3clFbG">
                      <node concept="2OqwBi" id="61urdBz6MDr" role="2Oq$k0">
                        <node concept="pncrf" id="61urdBz6MDs" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="61urdBz6MDt" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                        </node>
                      </node>
                      <node concept="3GX2aA" id="61urdBz6MDu" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="61urdBz6MDv" role="3EZMnx">
            <property role="3F0ifm" value="" />
            <node concept="ljvvj" id="61urdBz6MDw" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="61urdBz6MDx" role="3EZMnx">
            <property role="3F0ifm" value="connections" />
          </node>
          <node concept="3F0ifn" id="61urdBz6MDy" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="ljvvj" id="61urdBz6MDz" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="11L4FC" id="61urdBzbjcf" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="s8t4o" id="61urdBz6MYr" role="3EZMnx">
            <property role="28Zw97" value="true" />
            <property role="2czwfP" value="," />
            <property role="Q2I2e" value="punctuation" />
            <ref role="28F8cf" to="tpck:gw2VY9q" resolve="BaseConcept" />
            <node concept="xShMh" id="61urdBz6MYt" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="s8sZD" id="61urdBz6MYu" role="sbcd9">
              <node concept="3clFbS" id="61urdBz6MYv" role="2VODD2">
                <node concept="3cpWs8" id="61urdBz6Ory" role="3cqZAp">
                  <node concept="3cpWsn" id="61urdBz6Orz" role="3cpWs9">
                    <property role="TrG5h" value="fb" />
                    <node concept="3Tqbb2" id="61urdBz6Oru" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="1PxgMI" id="61urdBz6Or$" role="33vP2m">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="61urdBz6Or_" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                      </node>
                      <node concept="2OqwBi" id="61urdBz6OrA" role="1m5AlR">
                        <node concept="pncrf" id="61urdBz6OrB" role="2Oq$k0" />
                        <node concept="1mfA1w" id="61urdBz6OrC" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="61urdBz6YIg" role="3cqZAp">
                  <node concept="3cpWsn" id="61urdBz6YIh" role="3cpWs9">
                    <property role="TrG5h" value="isSource" />
                    <node concept="10P_77" id="61urdBz6YIc" role="1tU5fm" />
                    <node concept="17R0WA" id="61urdBz6YIi" role="33vP2m">
                      <node concept="359W_D" id="61urdBz6YIj" role="3uHU7w">
                        <ref role="359W_E" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
                        <ref role="359W_F" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                      </node>
                      <node concept="2OqwBi" id="61urdBz6YIk" role="3uHU7B">
                        <node concept="pncrf" id="61urdBz6YIl" role="2Oq$k0" />
                        <node concept="2NL2c5" id="61urdBz6YIm" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="61urdBz6NbZ" role="3cqZAp">
                  <node concept="2OqwBi" id="61urdBz78F8" role="3clFbG">
                    <node concept="2OqwBi" id="61urdBz6RwU" role="2Oq$k0">
                      <node concept="2OqwBi" id="61urdBz6OUg" role="2Oq$k0">
                        <node concept="37vLTw" id="61urdBz6OrD" role="2Oq$k0">
                          <ref role="3cqZAo" node="61urdBz6Orz" resolve="fb" />
                        </node>
                        <node concept="3Tsc0h" id="61urdBz6Pqe" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="61urdBz6TPu" role="2OqNvi">
                        <node concept="1bVj0M" id="61urdBz6TPw" role="23t8la">
                          <node concept="3clFbS" id="61urdBz6TPx" role="1bW5cS">
                            <node concept="3clFbJ" id="61urdBz6Zv6" role="3cqZAp">
                              <node concept="37vLTw" id="61urdBz6ZBI" role="3clFbw">
                                <ref role="3cqZAo" node="61urdBz6YIh" resolve="isSource" />
                              </node>
                              <node concept="3clFbS" id="61urdBz6Zv8" role="3clFbx">
                                <node concept="3cpWs6" id="61urdBz720G" role="3cqZAp">
                                  <node concept="3clFbC" id="61urdBz73x6" role="3cqZAk">
                                    <node concept="2OqwBi" id="61urdBz7174" role="3uHU7B">
                                      <node concept="1PxgMI" id="5VLuTnkLsXd" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="5VLuTnkL$qm" role="3oSUPX">
                                          <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                        </node>
                                        <node concept="2OqwBi" id="61urdBz6ZWG" role="1m5AlR">
                                          <node concept="37vLTw" id="61urdBz6ZKg" role="2Oq$k0">
                                            <ref role="3cqZAo" node="61urdBz6TPy" resolve="it" />
                                          </node>
                                          <node concept="3TrEf2" id="5VLuTnkLjDL" role="2OqNvi">
                                            <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3TrEf2" id="5VLuTnkLFQ8" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                      </node>
                                    </node>
                                    <node concept="pncrf" id="5VLuTnkLuQ9" role="3uHU7w" />
                                  </node>
                                </node>
                              </node>
                              <node concept="9aQIb" id="61urdBz76IF" role="9aQIa">
                                <node concept="3clFbS" id="61urdBz76IG" role="9aQI4">
                                  <node concept="3cpWs6" id="61urdBz76XE" role="3cqZAp">
                                    <node concept="3clFbC" id="5VLuTnkLErh" role="3cqZAk">
                                      <node concept="pncrf" id="5VLuTnkLEYQ" role="3uHU7w" />
                                      <node concept="2OqwBi" id="5VLuTnkLxqM" role="3uHU7B">
                                        <node concept="1PxgMI" id="5VLuTnkLxqN" role="2Oq$k0">
                                          <property role="1BlNFB" value="true" />
                                          <node concept="chp4Y" id="5VLuTnkL_lQ" role="3oSUPX">
                                            <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                          </node>
                                          <node concept="2OqwBi" id="5VLuTnkLxqP" role="1m5AlR">
                                            <node concept="37vLTw" id="5VLuTnkLxqQ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="61urdBz6TPy" resolve="it" />
                                            </node>
                                            <node concept="3TrEf2" id="5VLuTnkLy_g" role="2OqNvi">
                                              <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="5VLuTnkLGJG" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="61urdBz6TPy" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="61urdBz6TPz" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="61urdBz79YD" role="2OqNvi">
                      <node concept="1bVj0M" id="61urdBz79YF" role="23t8la">
                        <node concept="3clFbS" id="61urdBz79YG" role="1bW5cS">
                          <node concept="3clFbF" id="61urdBz7a_r" role="3cqZAp">
                            <node concept="3K4zz7" id="61urdBz7bCI" role="3clFbG">
                              <node concept="2OqwBi" id="61urdBz7crZ" role="3K4E3e">
                                <node concept="37vLTw" id="61urdBz7bVj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="61urdBz79YH" resolve="it" />
                                </node>
                                <node concept="3TrEf2" id="61urdBz7cUD" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="61urdBz7dzo" role="3K4GZi">
                                <node concept="37vLTw" id="61urdBz7ddb" role="2Oq$k0">
                                  <ref role="3cqZAo" node="61urdBz79YH" resolve="it" />
                                </node>
                                <node concept="3TrEf2" id="61urdBz7e2b" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="61urdBz7a_q" role="3K4Cdx">
                                <ref role="3cqZAo" node="61urdBz6YIh" resolve="isSource" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="61urdBz79YH" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="61urdBz79YI" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1yz3lS" id="61urdBz7fa3" role="1yzFaX">
              <node concept="1HlG4h" id="61urdBz7fDm" role="2wV5jI">
                <node concept="1HfYo3" id="61urdBz7fDo" role="1HlULh">
                  <node concept="3TQlhw" id="61urdBz7fDq" role="1Hhtcw">
                    <node concept="3clFbS" id="61urdBz7fDs" role="2VODD2">
                      <node concept="3clFbF" id="61urdBz7fLZ" role="3cqZAp">
                        <node concept="2OqwBi" id="61urdBz7fYM" role="3clFbG">
                          <node concept="pncrf" id="61urdBz7fLY" role="2Oq$k0" />
                          <node concept="2qgKlT" id="61urdBz7gRX" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F0ifn" id="61urdBz8Pj1" role="2czzBJ">
              <property role="3F0ifm" value="no connections" />
              <node concept="Vb9p2" id="61urdBz8PXU" role="3F10Kt">
                <property role="Vbekb" value="ITALIC" />
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="61urdBz6MD$" role="2iSdaV" />
          <node concept="VPM3Z" id="61urdBz6MD_" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="3S2pXU" id="61urdBz7_$g" role="2xQQDV">
        <node concept="3S3z86" id="61urdBz7AdC" role="3S2pTB">
          <node concept="2xQOud" id="61urdBz7AdV" role="3S3z8C">
            <ref role="2xQOue" node="61urdBwKnw2" resolve="ContextSourceShape" />
            <node concept="Rm8GO" id="2R0Wzqv0zeo" role="1xbcaF">
              <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
              <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
            </node>
          </node>
          <node concept="17R0WA" id="61urdBz7B01" role="3S3z90">
            <node concept="359W_D" id="61urdBz7B0C" role="3uHU7w">
              <ref role="359W_E" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              <ref role="359W_F" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
            <node concept="2OqwBi" id="61urdBz7AlH" role="3uHU7B">
              <node concept="1Pxb5l" id="61urdBz7Ae7" role="2Oq$k0" />
              <node concept="2NL2c5" id="61urdBz7AyH" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3S3z86" id="61urdBz7AcO" role="3S2pTB">
          <node concept="2xQOud" id="61urdBxb3Lf" role="3S3z8C">
            <ref role="2xQOue" node="61urdBx9XJc" resolve="ContextDestinationShape" />
            <node concept="Rm8GO" id="2R0Wzqv0zkp" role="1xbcaF">
              <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
              <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
            </node>
          </node>
          <node concept="17R0WA" id="61urdBz7B1v" role="3S3z90">
            <node concept="359W_D" id="61urdBz7B1w" role="3uHU7w">
              <ref role="359W_E" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              <ref role="359W_F" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
            <node concept="2OqwBi" id="61urdBz7B1x" role="3uHU7B">
              <node concept="1Pxb5l" id="61urdBz7B1y" role="2Oq$k0" />
              <node concept="2NL2c5" id="61urdBz7B1z" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbT" id="5VLuTnkNe_F" role="TjlW2">
        <property role="3clFbU" value="true" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2JGKyjit8pv">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="DiagramColors" />
    <property role="1EXbeo" value="true" />
    <node concept="3clFbW" id="2JGKyjit8zB" role="jymVt">
      <node concept="3cqZAl" id="2JGKyjit8zC" role="3clF45" />
      <node concept="3clFbS" id="2JGKyjit8zE" role="3clF47" />
      <node concept="3Tm6S6" id="2JGKyjit8yX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2JGKyjit8zV" role="jymVt" />
    <node concept="Wx3nA" id="2JGKyjit8B2" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="EVENT_BG" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjit8$I" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjit8BH" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="2JGKyjit8E0" role="33vP2m">
        <ref role="3cqZAo" to="z60i:~Color.CYAN" resolve="CYAN" />
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
      </node>
    </node>
    <node concept="Wx3nA" id="2JGKyjitmC8" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="EVENT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjit8EV" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmC1" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="2JGKyjitmEt" role="33vP2m">
        <ref role="3cqZAo" to="z60i:~Color.CYAN" resolve="CYAN" />
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
      </node>
    </node>
    <node concept="2tJIrI" id="2JGKyjitmED" role="jymVt" />
    <node concept="Wx3nA" id="2JGKyjitmJj" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="DATA_BG" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjitmFI" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmJb" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="2JGKyjitmLS" role="33vP2m">
        <ref role="3cqZAo" to="exr9:~MPSColors.LIGHT_BLUE" resolve="LIGHT_BLUE" />
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
      </node>
    </node>
    <node concept="Wx3nA" id="2JGKyjitmM6" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="DATA" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjitmM7" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmM8" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="2JGKyjiwdmh" role="33vP2m">
        <ref role="3cqZAo" to="exr9:~MPSColors.LIGHT_BLUE" resolve="LIGHT_BLUE" />
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
      </node>
    </node>
    <node concept="2tJIrI" id="2JGKyjitmNl" role="jymVt" />
    <node concept="Wx3nA" id="2JGKyjitmSo" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="FB_BG" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjitmOC" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmSe" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="2JGKyjitmVu" role="33vP2m">
        <ref role="3cqZAo" to="z60i:~Color.LIGHT_GRAY" resolve="LIGHT_GRAY" />
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
      </node>
    </node>
    <node concept="Wx3nA" id="2JGKyjitmWd" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="FB" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjitmWe" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmWf" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="2JGKyjitmYm" role="33vP2m">
        <ref role="3cqZAo" to="z60i:~Color.GRAY" resolve="GRAY" />
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
      </node>
    </node>
    <node concept="2tJIrI" id="2R0WzquXqOk" role="jymVt" />
    <node concept="Wx3nA" id="2R0WzquXqPs" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ADAPTER" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2R0WzquXqPt" role="1B3o_S" />
      <node concept="3uibUv" id="2R0WzquXqPu" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2R0WzquZvhy" role="33vP2m">
        <node concept="1pGfFk" id="2R0Wzqv07xk" role="2ShVmc">
          <ref role="37wK5l" to="lzb2:~JBColor.&lt;init&gt;(java.awt.Color,java.awt.Color)" resolve="JBColor" />
          <node concept="2ShNRf" id="2R0Wzqv0dK6" role="37wK5m">
            <node concept="1pGfFk" id="2R0Wzqv0eu0" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
              <node concept="2nou5x" id="2R0Wzqv0exB" role="37wK5m">
                <property role="2noCCI" value="FF8000" />
              </node>
            </node>
          </node>
          <node concept="2ShNRf" id="2R0Wzqv0ePq" role="37wK5m">
            <node concept="1pGfFk" id="2R0Wzqv0ePr" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
              <node concept="2nou5x" id="2R0Wzqv0ePs" role="37wK5m">
                <property role="2noCCI" value="0080FF" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2JGKyjit8pw" role="1B3o_S" />
  </node>
  <node concept="2xDbr0" id="2JGKyji$vl3">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="ConnectionTarget" />
    <node concept="2xDzp1" id="2JGKyji$vl4" role="2xOiiv">
      <node concept="3clFbS" id="2JGKyji$vl5" role="2VODD2">
        <node concept="3clFbF" id="2JGKyji$vl6" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyji$vl7" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyji$vl8" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyji$vl9" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
              <node concept="3K4zz7" id="2JGKyji$vla" role="37wK5m">
                <node concept="10M0yZ" id="2JGKyji$vlb" role="3K4E3e">
                  <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
                  <ref role="3cqZAo" node="2JGKyjitmC8" resolve="EVENT" />
                </node>
                <node concept="10M0yZ" id="2JGKyji$vlc" role="3K4GZi">
                  <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
                  <ref role="3cqZAo" node="2JGKyjitmM6" resolve="DATA" />
                </node>
                <node concept="1xnly_" id="2JGKyji$vld" role="3K4Cdx">
                  <ref role="1xnlzC" node="2JGKyji$vmy" resolve="isEvent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyji$vle" role="3cqZAp" />
        <node concept="3cpWs8" id="2JGKyji$vlf" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyji$vlg" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="2JGKyji$vlh" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="2JGKyji$vli" role="33vP2m">
              <node concept="1pGfFk" id="2JGKyji$vlj" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyji$vlk" role="3cqZAp" />
        <node concept="3cpWs8" id="2JGKyji$vll" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyji$vlm" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="2JGKyji$vln" role="1tU5fm" />
            <node concept="2OqwBi" id="2JGKyji$vlo" role="33vP2m">
              <node concept="2xDkLB" id="2JGKyji$vlp" role="2Oq$k0" />
              <node concept="liA8E" id="2JGKyji$vlq" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth():double" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2JGKyji$vlr" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyji$vls" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="2JGKyji$vlt" role="1tU5fm" />
            <node concept="2OqwBi" id="2JGKyji$vlu" role="33vP2m">
              <node concept="2xDkLB" id="2JGKyji$vlv" role="2Oq$k0" />
              <node concept="liA8E" id="2JGKyji$vlw" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getHeight():double" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2JGKyji$vlx" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyji$vly" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="2JGKyji$vlz" role="1tU5fm" />
            <node concept="2OqwBi" id="2JGKyji$vl$" role="33vP2m">
              <node concept="2xDkLB" id="2JGKyji$vl_" role="2Oq$k0" />
              <node concept="liA8E" id="2JGKyji$vlA" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getMaxX():double" resolve="getMaxX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2JGKyji$vlB" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyji$vlC" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="x" />
            <node concept="10P55v" id="2JGKyji$vlD" role="1tU5fm" />
            <node concept="3cpWsd" id="2JGKyji$vlE" role="33vP2m">
              <node concept="37vLTw" id="2JGKyji$vlF" role="3uHU7B">
                <ref role="3cqZAo" node="2JGKyji$vly" resolve="x2" />
              </node>
              <node concept="37vLTw" id="2JGKyji$vlG" role="3uHU7w">
                <ref role="3cqZAo" node="2JGKyji$vlm" resolve="width" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2JGKyji$vlH" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyji$vlI" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="y" />
            <node concept="10P55v" id="2JGKyji$vlJ" role="1tU5fm" />
            <node concept="2OqwBi" id="2JGKyji$vlK" role="33vP2m">
              <node concept="2xDkLB" id="2JGKyji$vlL" role="2Oq$k0" />
              <node concept="liA8E" id="2JGKyji$vlM" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getY():double" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2JGKyji$vlT" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyji$vlU" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="centerY" />
            <node concept="10P55v" id="2JGKyji$vlV" role="1tU5fm" />
            <node concept="3cpWs3" id="2JGKyji$vlW" role="33vP2m">
              <node concept="37vLTw" id="2JGKyji$vlX" role="3uHU7B">
                <ref role="3cqZAo" node="2JGKyji$vlI" resolve="y" />
              </node>
              <node concept="FJ1c_" id="2JGKyji$vlY" role="3uHU7w">
                <node concept="37vLTw" id="2JGKyji$vlZ" role="3uHU7B">
                  <ref role="3cqZAo" node="2JGKyji$vls" resolve="height" />
                </node>
                <node concept="3cmrfG" id="2JGKyji$vm0" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyji$vm1" role="3cqZAp" />
        <node concept="3clFbF" id="2JGKyji$vm2" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyji$vm3" role="3clFbG">
            <node concept="37vLTw" id="2JGKyji$vm4" role="2Oq$k0">
              <ref role="3cqZAo" node="2JGKyji$vlg" resolve="shape" />
            </node>
            <node concept="liA8E" id="2JGKyji$vm5" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double):void" resolve="moveTo" />
              <node concept="37vLTw" id="2JGKyji$vm6" role="37wK5m">
                <ref role="3cqZAo" node="2JGKyji$vlC" resolve="x" />
              </node>
              <node concept="3cpWsd" id="2JGKyji$vm7" role="37wK5m">
                <node concept="37vLTw" id="2JGKyji$vm8" role="3uHU7B">
                  <ref role="3cqZAo" node="2JGKyji$vlU" resolve="centerY" />
                </node>
                <node concept="37vLTw" id="2JGKyji$vm9" role="3uHU7w">
                  <ref role="3cqZAo" node="2JGKyji$vls" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyji$vma" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyji$vmb" role="3clFbG">
            <node concept="37vLTw" id="2JGKyji$vmc" role="2Oq$k0">
              <ref role="3cqZAo" node="2JGKyji$vlg" resolve="shape" />
            </node>
            <node concept="liA8E" id="2JGKyji$vmd" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="2JGKyji$vme" role="37wK5m">
                <ref role="3cqZAo" node="2JGKyji$vly" resolve="x2" />
              </node>
              <node concept="37vLTw" id="2JGKyji$vmf" role="37wK5m">
                <ref role="3cqZAo" node="2JGKyji$vlU" resolve="centerY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyji$vmg" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyji$vmh" role="3clFbG">
            <node concept="37vLTw" id="2JGKyji$vmi" role="2Oq$k0">
              <ref role="3cqZAo" node="2JGKyji$vlg" resolve="shape" />
            </node>
            <node concept="liA8E" id="2JGKyji$vmj" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
              <node concept="37vLTw" id="2JGKyji$vmk" role="37wK5m">
                <ref role="3cqZAo" node="2JGKyji$vlC" resolve="x" />
              </node>
              <node concept="3cpWs3" id="2JGKyji$vml" role="37wK5m">
                <node concept="37vLTw" id="2JGKyji$vmm" role="3uHU7B">
                  <ref role="3cqZAo" node="2JGKyji$vlU" resolve="centerY" />
                </node>
                <node concept="37vLTw" id="2JGKyji$vmn" role="3uHU7w">
                  <ref role="3cqZAo" node="2JGKyji$vls" resolve="height" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyji$vmo" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyji$vmp" role="3clFbG">
            <node concept="37vLTw" id="2JGKyji$vmq" role="2Oq$k0">
              <ref role="3cqZAo" node="2JGKyji$vlg" resolve="shape" />
            </node>
            <node concept="liA8E" id="2JGKyji$vmr" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath():void" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyji$vms" role="3cqZAp" />
        <node concept="3clFbF" id="2JGKyji$vmt" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyji$vmu" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyji$vmv" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyji$vmw" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
              <node concept="37vLTw" id="2JGKyji$vmx" role="37wK5m">
                <ref role="3cqZAo" node="2JGKyji$vlg" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1xmO9C" id="2JGKyji$vmy" role="1xmOgE">
      <property role="TrG5h" value="isEvent" />
      <node concept="10P_77" id="2JGKyji$vmz" role="1xmOb1" />
    </node>
  </node>
  <node concept="2xDbr0" id="2JGKyjiCFLG">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="FBPortShape" />
    <node concept="1xmO9C" id="2JGKyjiCFRQ" role="1xmOgE">
      <property role="TrG5h" value="kind" />
      <node concept="3uibUv" id="2R0Wzqv0f6G" role="1xmOb1">
        <ref role="3uigEE" node="2R0WzquZm0W" resolve="ConnectionKind" />
      </node>
    </node>
    <node concept="2xDzp1" id="2JGKyjiCFLT" role="2xOiiv">
      <node concept="3clFbS" id="2JGKyjiCFLU" role="2VODD2">
        <node concept="3clFbF" id="2JGKyjiCFRX" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjiCFRY" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyjiCFRZ" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyjiCFS0" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint):void" resolve="setPaint" />
              <node concept="2YIFZM" id="2JGKyjiCFS1" role="37wK5m">
                <ref role="1Pybhc" to="7ou7:6uo2fN6tnJ2" resolve="ShapeUtil" />
                <ref role="37wK5l" to="7ou7:4Rtv8bOY5mG" resolve="createGradientPaint" />
                <node concept="2OqwBi" id="2R0Wzqv0fPI" role="37wK5m">
                  <node concept="1xnly_" id="2JGKyjiCFS4" role="2Oq$k0">
                    <ref role="1xnlzC" node="2JGKyjiCFRQ" resolve="kind" />
                  </node>
                  <node concept="2S8uIT" id="2R0Wzqv0gZV" role="2OqNvi">
                    <ref role="2S8YL0" node="2R0WzquZrQh" resolve="bgColor" />
                  </node>
                </node>
                <node concept="2xDkLB" id="2JGKyjiCFS6" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiCFS7" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjiCFS8" role="3clFbG">
            <node concept="2xDIQ0" id="2JGKyjiCFS9" role="2Oq$k0" />
            <node concept="liA8E" id="2JGKyjiCFSa" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
              <node concept="2xDkLB" id="2JGKyjiCFY8" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="IW6AY" id="2JGKyjiH3WN">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="aqKnT" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="1Qtc8_" id="2JGKyjiH3X0" role="IW6Ez">
      <node concept="aenpk" id="2JGKyjiJimr" role="1Qtc8A">
        <node concept="IWgqT" id="2JGKyjiJims" role="aenpr">
          <node concept="1hCUdq" id="2JGKyjiJimt" role="1hCUd6">
            <node concept="3clFbS" id="2JGKyjiJimu" role="2VODD2">
              <node concept="3clFbF" id="2JGKyjiJimz" role="3cqZAp">
                <node concept="2OqwBi" id="2JGKyjiJim$" role="3clFbG">
                  <node concept="3yx0qK" id="75nMhMfGJhA" role="2Oq$k0">
                    <ref role="3cqZAo" node="2JGKyjiJimL" resolve="switcher" />
                  </node>
                  <node concept="liA8E" id="2JGKyjiJimA" role="2OqNvi">
                    <ref role="37wK5l" node="2JGKyjiIP5q" resolve="getActionText" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="2JGKyjiJimB" role="IWgqQ">
            <node concept="3clFbS" id="2JGKyjiJimC" role="2VODD2">
              <node concept="3clFbF" id="2JGKyjiJimH" role="3cqZAp">
                <node concept="2OqwBi" id="2JGKyjiJimI" role="3clFbG">
                  <node concept="3yx0qK" id="75nMhMfGJ_v" role="2Oq$k0">
                    <ref role="3cqZAo" node="2JGKyjiJimL" resolve="switcher" />
                  </node>
                  <node concept="liA8E" id="2JGKyjiJimK" role="2OqNvi">
                    <ref role="37wK5l" node="2JGKyjiIBnT" resolve="switchPrensetation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1At2My" id="2JGKyjiJimL" role="1b80Z_">
          <property role="TrG5h" value="switcher" />
          <node concept="23wN_R" id="2JGKyjiJimM" role="23wLD5">
            <node concept="3clFbS" id="2JGKyjiJimN" role="2VODD2">
              <node concept="3clFbF" id="2JGKyjiJimO" role="3cqZAp">
                <node concept="2ShNRf" id="2JGKyjiJimP" role="3clFbG">
                  <node concept="1pGfFk" id="2JGKyjiJimQ" role="2ShVmc">
                    <ref role="37wK5l" node="2JGKyjiIuOI" resolve="PresentationSwitcher" />
                    <node concept="2pYGij" id="2JGKyjiJimR" role="37wK5m">
                      <ref role="2pYH_C" node="PI_pXYbMG0" resolve="ecc_diagram" />
                    </node>
                    <node concept="7Obwk" id="2JGKyjiJimS" role="37wK5m" />
                    <node concept="1Q80Hx" id="2JGKyjiJimT" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="2JGKyjiJimU" role="1tU5fm">
            <ref role="3uigEE" node="2JGKyjiH7x_" resolve="PresentationSwitcher" />
          </node>
        </node>
      </node>
      <node concept="2j_NTm" id="2JGKyjiH3X4" role="1Qtc8$" />
    </node>
  </node>
  <node concept="312cEu" id="2JGKyjiH7x_">
    <property role="TrG5h" value="PresentationSwitcher" />
    <node concept="312cEg" id="2JGKyjiH7Fn" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myContextHint" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjiH7EB" role="1B3o_S" />
      <node concept="17QB3L" id="2JGKyjiH7Fg" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2JGKyjiH7HU" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjiH7G$" role="1B3o_S" />
      <node concept="3Tqbb2" id="2JGKyjiH7HN" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2JGKyjiH7L2" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjiH7IQ" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjiIKTQ" role="1tU5fm">
        <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="2JGKyjiH7Q9" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIsEnabled" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjiH7Ol" role="1B3o_S" />
      <node concept="10P_77" id="2JGKyjiH7QW" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2JGKyjiH7N_" role="jymVt" />
    <node concept="3clFbW" id="2JGKyjiIuOI" role="jymVt">
      <node concept="3cqZAl" id="2JGKyjiIuOK" role="3clF45" />
      <node concept="3Tm1VV" id="2JGKyjiIuOL" role="1B3o_S" />
      <node concept="3clFbS" id="2JGKyjiIuOM" role="3clF47">
        <node concept="3clFbF" id="2JGKyjiIuXS" role="3cqZAp">
          <node concept="37vLTI" id="2JGKyjiIvhm" role="3clFbG">
            <node concept="37vLTw" id="2JGKyjiIvrl" role="37vLTx">
              <ref role="3cqZAo" node="2JGKyjiIuPK" resolve="contextHint" />
            </node>
            <node concept="37vLTw" id="2JGKyjiIuXR" role="37vLTJ">
              <ref role="3cqZAo" node="2JGKyjiH7Fn" resolve="myContextHint" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiIvzL" role="3cqZAp">
          <node concept="37vLTI" id="2JGKyjiIw8M" role="3clFbG">
            <node concept="37vLTw" id="2JGKyjiIwd6" role="37vLTx">
              <ref role="3cqZAo" node="2JGKyjiIuQN" resolve="node" />
            </node>
            <node concept="37vLTw" id="2JGKyjiIvzJ" role="37vLTJ">
              <ref role="3cqZAo" node="2JGKyjiH7HU" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiIFqu" role="3cqZAp">
          <node concept="37vLTI" id="2JGKyjiIJiw" role="3clFbG">
            <node concept="2OqwBi" id="2JGKyjiIJTV" role="37vLTx">
              <node concept="37vLTw" id="2JGKyjiIJD_" role="2Oq$k0">
                <ref role="3cqZAo" node="2JGKyjiIuRX" resolve="context" />
              </node>
              <node concept="liA8E" id="2JGKyjiIK$4" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
              </node>
            </node>
            <node concept="37vLTw" id="2JGKyjiIFqs" role="37vLTJ">
              <ref role="3cqZAo" node="2JGKyjiH7L2" resolve="myComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JGKyjiILUt" role="3cqZAp" />
        <node concept="3cpWs8" id="2JGKyjiI$ti" role="3cqZAp">
          <node concept="3cpWsn" id="2JGKyjiI$tj" role="3cpWs9">
            <property role="TrG5h" value="hints" />
            <node concept="10Q1$e" id="2JGKyjiI$tk" role="1tU5fm">
              <node concept="17QB3L" id="2JGKyjiI$tl" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="2JGKyjiI$tm" role="33vP2m">
              <node concept="2OqwBi" id="2JGKyjiI$tn" role="2Oq$k0">
                <node concept="37vLTw" id="2JGKyjiIL5S" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JGKyjiH7L2" resolve="myComponent" />
                </node>
                <node concept="liA8E" id="2JGKyjiI$tp" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorComponent.getUpdater():jetbrains.mps.openapi.editor.update.Updater" resolve="getUpdater" />
                </node>
              </node>
              <node concept="liA8E" id="2JGKyjiI$tq" role="2OqNvi">
                <ref role="37wK5l" to="22ra:~Updater.getExplicitEditorHintsForNode(org.jetbrains.mps.openapi.model.SNodeReference):java.lang.String[]" resolve="getExplicitEditorHintsForNode" />
                <node concept="2OqwBi" id="2JGKyjiI$tr" role="37wK5m">
                  <node concept="2JrnkZ" id="2JGKyjiI$ts" role="2Oq$k0">
                    <node concept="37vLTw" id="2JGKyjiILNb" role="2JrQYb">
                      <ref role="3cqZAo" node="2JGKyjiH7HU" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2JGKyjiI$tu" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiI$tv" role="3cqZAp">
          <node concept="37vLTI" id="2JGKyjiI_TN" role="3clFbG">
            <node concept="37vLTw" id="2JGKyjiIA0d" role="37vLTJ">
              <ref role="3cqZAo" node="2JGKyjiH7Q9" resolve="myIsEnabled" />
            </node>
            <node concept="2OqwBi" id="2JGKyjiI$tx" role="37vLTx">
              <node concept="2OqwBi" id="2JGKyjiI$ty" role="2Oq$k0">
                <node concept="37vLTw" id="2JGKyjiI$tz" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JGKyjiI$tj" resolve="hints" />
                </node>
                <node concept="39bAoz" id="2JGKyjiI$t$" role="2OqNvi" />
              </node>
              <node concept="3JPx81" id="2JGKyjiI$t_" role="2OqNvi">
                <node concept="37vLTw" id="2JGKyjiI_dn" role="25WWJ7">
                  <ref role="3cqZAo" node="2JGKyjiIuPK" resolve="contextHint" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JGKyjiIuPK" role="3clF46">
        <property role="TrG5h" value="contextHint" />
        <node concept="17QB3L" id="2JGKyjiIuPJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2JGKyjiIuQN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2JGKyjiIuRA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2JGKyjiIuRX" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2JGKyjiJcwi" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2JGKyjiIBgv" role="jymVt" />
    <node concept="3clFb_" id="2JGKyjiIBnT" role="jymVt">
      <property role="TrG5h" value="switchPrensetation" />
      <node concept="3cqZAl" id="2JGKyjiIBnV" role="3clF45" />
      <node concept="3Tm1VV" id="2JGKyjiIBnW" role="1B3o_S" />
      <node concept="3clFbS" id="2JGKyjiIBnX" role="3clF47">
        <node concept="3clFbJ" id="2JGKyjiIMOD" role="3cqZAp">
          <node concept="3clFbS" id="2JGKyjiIMOF" role="3clFbx">
            <node concept="3clFbF" id="2JGKyjiINCm" role="3cqZAp">
              <node concept="2OqwBi" id="2JGKyjiINCn" role="3clFbG">
                <node concept="2OqwBi" id="2JGKyjiINCo" role="2Oq$k0">
                  <node concept="37vLTw" id="2JGKyjiINCp" role="2Oq$k0">
                    <ref role="3cqZAo" node="2JGKyjiH7L2" resolve="myComponent" />
                  </node>
                  <node concept="liA8E" id="2JGKyjiINCq" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorComponent.getUpdater():jetbrains.mps.openapi.editor.update.Updater" resolve="getUpdater" />
                  </node>
                </node>
                <node concept="liA8E" id="2JGKyjiINCr" role="2OqNvi">
                  <ref role="37wK5l" to="22ra:~Updater.removeExplicitEditorHintsForNode(org.jetbrains.mps.openapi.model.SNodeReference,java.lang.String...):void" resolve="removeExplicitEditorHintsForNode" />
                  <node concept="2OqwBi" id="2JGKyjiINCs" role="37wK5m">
                    <node concept="2JrnkZ" id="2JGKyjiINCt" role="2Oq$k0">
                      <node concept="37vLTw" id="2JGKyjiINCu" role="2JrQYb">
                        <ref role="3cqZAo" node="2JGKyjiH7HU" resolve="myNode" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2JGKyjiINCv" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2JGKyjiINCw" role="37wK5m">
                    <ref role="3cqZAo" node="2JGKyjiH7Fn" resolve="myContextHint" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2JGKyjiIN0h" role="3clFbw">
            <ref role="3cqZAo" node="2JGKyjiH7Q9" resolve="myIsEnabled" />
          </node>
          <node concept="9aQIb" id="2JGKyjiINbv" role="9aQIa">
            <node concept="3clFbS" id="2JGKyjiINbw" role="9aQI4">
              <node concept="3clFbF" id="2JGKyjiICI6" role="3cqZAp">
                <node concept="2OqwBi" id="2JGKyjiICI7" role="3clFbG">
                  <node concept="2OqwBi" id="2JGKyjiICI8" role="2Oq$k0">
                    <node concept="37vLTw" id="2JGKyjiILrS" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JGKyjiH7L2" resolve="myComponent" />
                    </node>
                    <node concept="liA8E" id="2JGKyjiICIa" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorComponent.getUpdater():jetbrains.mps.openapi.editor.update.Updater" resolve="getUpdater" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2JGKyjiICIb" role="2OqNvi">
                    <ref role="37wK5l" to="22ra:~Updater.addExplicitEditorHintsForNode(org.jetbrains.mps.openapi.model.SNodeReference,java.lang.String...):void" resolve="addExplicitEditorHintsForNode" />
                    <node concept="2OqwBi" id="2JGKyjiICIc" role="37wK5m">
                      <node concept="2JrnkZ" id="2JGKyjiICId" role="2Oq$k0">
                        <node concept="37vLTw" id="2JGKyjiILE6" role="2JrQYb">
                          <ref role="3cqZAo" node="2JGKyjiH7HU" resolve="myNode" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2JGKyjiICIf" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReference():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getReference" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2JGKyjiIMbp" role="37wK5m">
                      <ref role="3cqZAo" node="2JGKyjiH7Fn" resolve="myContextHint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JGKyjiICIh" role="3cqZAp">
          <node concept="2OqwBi" id="2JGKyjiICIi" role="3clFbG">
            <node concept="37vLTw" id="2JGKyjiIL$F" role="2Oq$k0">
              <ref role="3cqZAo" node="2JGKyjiH7L2" resolve="myComponent" />
            </node>
            <node concept="liA8E" id="2JGKyjiICIk" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~EditorComponent.rebuildEditorContent():void" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2JGKyjiIOkt" role="jymVt" />
    <node concept="3clFb_" id="2JGKyjiIP5q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getActionText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2JGKyjiIP5t" role="3clF47">
        <node concept="3cpWs6" id="2JGKyjiIPrE" role="3cqZAp">
          <node concept="3K4zz7" id="2JGKyjiIQPZ" role="3cqZAk">
            <node concept="37vLTw" id="2JGKyjiIPHF" role="3K4Cdx">
              <ref role="3cqZAo" node="2JGKyjiH7Q9" resolve="myIsEnabled" />
            </node>
            <node concept="Xl_RD" id="2JGKyjiIUgS" role="3K4E3e">
              <property role="Xl_RC" value="Switch to textual notation" />
            </node>
            <node concept="Xl_RD" id="2JGKyjiIUvK" role="3K4GZi">
              <property role="Xl_RC" value="Switch to diagram notation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2JGKyjiIOOQ" role="1B3o_S" />
      <node concept="17QB3L" id="2JGKyjiIP5l" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="2JGKyjiH7xA" role="1B3o_S" />
  </node>
  <node concept="24kQdi" id="7t6qmPMwOXE">
    <property role="3GE5qa" value="editor-specific" />
    <ref role="1XX52x" to="xiqq:7UH$k724uxl" resolve="StateActionsEnabler" />
    <node concept="2SsqMj" id="7t6qmPMwOY7" role="2wV5jI" />
  </node>
  <node concept="RtYIR" id="7t6qmPMCr5l">
    <property role="Rtri_" value="100" />
    <property role="3GE5qa" value="editor-specific" />
    <ref role="1XX52x" to="xiqq:7UH$k724uxl" resolve="StateActionsEnabler" />
    <node concept="2aJ2om" id="7t6qmPMCr5M" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYbMG0" resolve="ecc_diagram" />
    </node>
    <node concept="RtMap" id="7t6qmPMCr5O" role="RtEXV">
      <node concept="3clFbS" id="7t6qmPMCr5P" role="2VODD2">
        <node concept="3clFbF" id="7t6qmPMCrcY" role="3cqZAp">
          <node concept="2OqwBi" id="7t6qmPMCuU8" role="3clFbG">
            <node concept="2OqwBi" id="7t6qmPMCsE2" role="2Oq$k0">
              <node concept="1PxgMI" id="7t6qmPMCsgp" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="7t6qmPMCsod" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
                </node>
                <node concept="2OqwBi" id="7t6qmPMCrum" role="1m5AlR">
                  <node concept="pncrf" id="7t6qmPMCrcX" role="2Oq$k0" />
                  <node concept="1mfA1w" id="7t6qmPMCrKw" role="2OqNvi" />
                </node>
              </node>
              <node concept="3Tsc0h" id="7t6qmPMCt07" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
              </node>
            </node>
            <node concept="3GX2aA" id="7t6qmPMCyQV" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="7UH$k72cfpv" role="2wV5jI">
      <node concept="s8t4o" id="7UH$k72aMmT" role="3EZMnx">
        <property role="28Zw97" value="true" />
        <ref role="28F8cf" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
        <node concept="xShMh" id="7t6qmPMuV1b" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="s8sZD" id="7UH$k72aMmW" role="sbcd9">
          <node concept="3clFbS" id="7UH$k72aMmX" role="2VODD2">
            <node concept="3clFbF" id="7UH$k72aMqa" role="3cqZAp">
              <node concept="1PxgMI" id="7UH$k72aNtY" role="3clFbG">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="7UH$k72aNvC" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
                </node>
                <node concept="2OqwBi" id="7UH$k72aML$" role="1m5AlR">
                  <node concept="pncrf" id="7UH$k72aMq5" role="2Oq$k0" />
                  <node concept="1mfA1w" id="7UH$k72aN29" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1yz3lS" id="7UH$k72aNBD" role="1yzFaX">
          <node concept="3F2HdR" id="7UH$k72aNFA" role="2wV5jI">
            <ref role="1NtTu8" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
            <node concept="2EHx9g" id="7UH$k72aNFD" role="2czzBx" />
          </node>
        </node>
      </node>
      <node concept="2SsqMj" id="7UH$k72cfy7" role="3EZMnx" />
      <node concept="2iRkQZ" id="7UH$k72cfpw" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6g3sTReV9Iz">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="1QoScp" id="6g3sTReV9I_" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="3F0ifn" id="6g3sTReV9PP" role="1QoS34">
        <property role="3F0ifm" value="1" />
        <node concept="A1WHu" id="6g3sTReXENK" role="3vIgyS">
          <ref role="A1WHt" node="6g3sTReXFAI" resolve="TransitionConditionTM_ForAlways" />
        </node>
      </node>
      <node concept="pkWqt" id="6g3sTReV9IC" role="3e4ffs">
        <node concept="3clFbS" id="6g3sTReV9IE" role="2VODD2">
          <node concept="3clFbF" id="6g3sTReVnkC" role="3cqZAp">
            <node concept="1Wc70l" id="6g3sTReVpSH" role="3clFbG">
              <node concept="2OqwBi" id="6g3sTReVrcR" role="3uHU7w">
                <node concept="2OqwBi" id="6g3sTReVqgy" role="2Oq$k0">
                  <node concept="pncrf" id="6g3sTReVq47" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6g3sTReVqIg" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:6g3sTReV9QU" resolve="guardCondition" />
                  </node>
                </node>
                <node concept="3w_OXm" id="6g3sTReVrS_" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="6g3sTReVotG" role="3uHU7B">
                <node concept="2OqwBi" id="6g3sTReVnwN" role="2Oq$k0">
                  <node concept="pncrf" id="6g3sTReVnkB" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2R0WzquNTY4" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
                  </node>
                </node>
                <node concept="3w_OXm" id="6g3sTReVp6V" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="6g3sTReV9Qg" role="1QoVPY">
        <node concept="3EZMnI" id="2R0WzquO7zj" role="3EZMnx">
          <node concept="VPM3Z" id="2R0WzquO7zl" role="3F10Kt" />
          <node concept="3F1sOY" id="2R0WzquNVpe" role="3EZMnx">
            <ref role="1NtTu8" to="xiqq:2R0WzquNT6X" resolve="event" />
          </node>
          <node concept="l2Vlx" id="2R0WzquO7zo" role="2iSdaV" />
          <node concept="A1WHu" id="2R0WzquO7UM" role="3vIgyS">
            <ref role="A1WHt" node="6g3sTReXI_G" resolve="TransitionConditionTM_ForEvent" />
          </node>
          <node concept="pkWqt" id="2R0WzquOJI9" role="pqm2j">
            <node concept="3clFbS" id="2R0WzquOJIa" role="2VODD2">
              <node concept="3clFbF" id="2R0WzquOJPu" role="3cqZAp">
                <node concept="2OqwBi" id="2R0WzquO4_a" role="3clFbG">
                  <node concept="2OqwBi" id="2R0WzquO3vV" role="2Oq$k0">
                    <node concept="pncrf" id="2R0WzquO3jt" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2R0WzquO3Zp" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="2R0WzquO5zB" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="6g3sTReVs_4" role="3EZMnx">
          <node concept="VPM3Z" id="6g3sTReVs_6" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="6g3sTReV9Qu" role="3EZMnx">
            <property role="3F0ifm" value="[" />
            <node concept="11L4FC" id="6g3sTRf0ucv" role="3F10Kt">
              <node concept="3nzxsE" id="6g3sTRf0uyH" role="3n$kyP">
                <node concept="3clFbS" id="6g3sTRf0uyI" role="2VODD2">
                  <node concept="3clFbF" id="6g3sTRf0uDR" role="3cqZAp">
                    <node concept="2OqwBi" id="6g3sTRf0vF0" role="3clFbG">
                      <node concept="2OqwBi" id="6g3sTRf0uQ2" role="2Oq$k0">
                        <node concept="pncrf" id="6g3sTRf0uDQ" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2R0WzquOKcG" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="6g3sTRf0wkf" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="11LMrY" id="6g3sTRf0wPh" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="A1WHu" id="6g3sTReV$aj" role="3vIgyS">
              <ref role="A1WHt" node="6g3sTReXI_V" resolve="TransitionConditionTM_ForGuardCondition" />
            </node>
          </node>
          <node concept="3F1sOY" id="6g3sTReV9Y8" role="3EZMnx">
            <ref role="1NtTu8" to="xiqq:6g3sTReV9QU" resolve="guardCondition" />
          </node>
          <node concept="3F0ifn" id="6g3sTReV9Yo" role="3EZMnx">
            <property role="3F0ifm" value="]" />
            <node concept="11L4FC" id="6g3sTReVkg6" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="l2Vlx" id="6g3sTReVs_9" role="2iSdaV" />
          <node concept="pkWqt" id="6g3sTReVsKk" role="pqm2j">
            <node concept="3clFbS" id="6g3sTReVsKl" role="2VODD2">
              <node concept="3clFbF" id="6g3sTReVsRu" role="3cqZAp">
                <node concept="2OqwBi" id="6g3sTReVu3r" role="3clFbG">
                  <node concept="2OqwBi" id="6g3sTReVt3D" role="2Oq$k0">
                    <node concept="pncrf" id="6g3sTReVsRt" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6g3sTReVt$R" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:6g3sTReV9QU" resolve="guardCondition" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="6g3sTReVuD8" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="6g3sTReV9Qh" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="3ICXOK" id="6g3sTReVva9">
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="TransitionConditionTMAction_AddInputEvent" />
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="1Qtc8_" id="6g3sTReVvaa" role="IW6Ez">
      <node concept="3c8P5G" id="2R0WzquTpv1" role="1Qtc8A">
        <node concept="2kknPJ" id="2R0WzquTpvk" role="3c8P5H">
          <ref role="2ZyFGn" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
        </node>
        <node concept="3c8PGw" id="2R0WzquTpv4" role="3c8PHt">
          <node concept="3clFbS" id="2R0WzquTpv6" role="2VODD2">
            <node concept="3clFbF" id="2R0WzquTvYM" role="3cqZAp">
              <node concept="37vLTI" id="2R0WzquTzAg" role="3clFbG">
                <node concept="3c8USq" id="2R0WzquTzFp" role="37vLTx" />
                <node concept="2OqwBi" id="2R0WzquTw_n" role="37vLTJ">
                  <node concept="1PxgMI" id="2R0WzquTwte" role="2Oq$k0">
                    <node concept="chp4Y" id="2R0WzquTwtJ" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
                    </node>
                    <node concept="X5bN_" id="2R0WzquTvYL" role="1m5AlR" />
                  </node>
                  <node concept="3TrEf2" id="2R0WzquTy8f" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eGOoe" id="6g3sTReXFtJ" role="1Qtc8$" />
      <node concept="2j_NTm" id="6g3sTReXGTG" role="1Qtc8$" />
      <node concept="3cWJ9i" id="6g3sTReVvae" role="1Qtc8$">
        <node concept="CtIbL" id="6g3sTReVvag" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="6g3sTReXGt$" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICXOK" id="6g3sTReV$pa">
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="TransitionConditionTMAction_AddGuardCondition" />
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="1Qtc8_" id="6g3sTReV$pb" role="IW6Ez">
      <node concept="IWgqT" id="6g3sTReV$pl" role="1Qtc8A">
        <node concept="1hCUdq" id="6g3sTReV$pm" role="1hCUd6">
          <node concept="3clFbS" id="6g3sTReV$pn" role="2VODD2">
            <node concept="3clFbF" id="6g3sTReV$xX" role="3cqZAp">
              <node concept="Xl_RD" id="6g3sTReV$xW" role="3clFbG">
                <property role="Xl_RC" value="[" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="6g3sTReV$po" role="IWgqQ">
          <node concept="3clFbS" id="6g3sTReV$pp" role="2VODD2">
            <node concept="3clFbF" id="6g3sTReV$N3" role="3cqZAp">
              <node concept="37vLTI" id="6g3sTReV_nX" role="3clFbG">
                <node concept="2ShNRf" id="6g3sTReV_op" role="37vLTx">
                  <node concept="3zrR0B" id="6g3sTReVU_Y" role="2ShVmc">
                    <node concept="3Tqbb2" id="6g3sTReVUA0" role="3zrR0E">
                      <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6g3sTReV$TX" role="37vLTJ">
                  <node concept="7Obwk" id="6g3sTReV$N2" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6g3sTReV_5o" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:6g3sTReV9QU" resolve="guardCondition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqGtN" id="6g3sTReVUJa" role="2jZA2a">
          <node concept="3cqJkl" id="6g3sTReVUJb" role="3cqGtW">
            <node concept="3clFbS" id="6g3sTReVUJc" role="2VODD2">
              <node concept="3clFbF" id="6g3sTReVUTN" role="3cqZAp">
                <node concept="Xl_RD" id="6g3sTReVUTM" role="3clFbG">
                  <property role="Xl_RC" value="add guard condition" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eGOoe" id="6g3sTReXGhW" role="1Qtc8$" />
      <node concept="2j_NTm" id="6g3sTReXGmr" role="1Qtc8$" />
      <node concept="3cWJ9i" id="6g3sTReXGqX" role="1Qtc8$">
        <node concept="CtIbL" id="6g3sTReXGqZ" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
        <node concept="CtIbL" id="6g3sTReXGti" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICXOK" id="6g3sTReXFAI">
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="TransitionConditionTM_ForAlways" />
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="1Qtc8_" id="6g3sTReXFAJ" role="IW6Ez">
      <node concept="3eGOoe" id="6g3sTReXFAN" role="1Qtc8$" />
      <node concept="mvV$s" id="6g3sTReXFAQ" role="1Qtc8A">
        <node concept="A1WHu" id="6g3sTReXFAS" role="A14EM">
          <ref role="A1WHt" node="6g3sTReV$pa" resolve="TransitionConditionTMAction_AddGuardCondition" />
        </node>
      </node>
      <node concept="mvV$s" id="6g3sTReXFAU" role="1Qtc8A">
        <node concept="A1WHu" id="6g3sTReXFAV" role="A14EM">
          <ref role="A1WHt" node="6g3sTReVva9" resolve="TransitionConditionTMAction_AddInputEvent" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICXOK" id="6g3sTReXI_G">
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="TransitionConditionTM_ForEvent" />
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="1Qtc8_" id="6g3sTReXI_H" role="IW6Ez">
      <node concept="3cWJ9i" id="6g3sTReXI_P" role="1Qtc8$">
        <node concept="CtIbL" id="6g3sTReXI_R" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="mvV$s" id="6g3sTReXI_J" role="1Qtc8A">
        <node concept="A1WHu" id="6g3sTReXI_K" role="A14EM">
          <ref role="A1WHt" node="6g3sTReV$pa" resolve="TransitionConditionTMAction_AddGuardCondition" />
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="6g3sTRf1JLW" role="IW6Ez">
      <node concept="3eGOoe" id="6g3sTRf1JM5" role="1Qtc8$" />
      <node concept="mvV$s" id="6g3sTRf1JMc" role="1Qtc8A">
        <node concept="A1WHu" id="6g3sTRf1JMe" role="A14EM">
          <ref role="A1WHt" node="6g3sTReVva9" resolve="TransitionConditionTMAction_AddInputEvent" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICXOK" id="6g3sTReXI_V">
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="TransitionConditionTM_ForGuardCondition" />
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="1Qtc8_" id="6g3sTReXI_W" role="IW6Ez">
      <node concept="3cWJ9i" id="6g3sTReXI_X" role="1Qtc8$">
        <node concept="CtIbL" id="6g3sTReXI_Y" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
      </node>
      <node concept="mvV$s" id="6g3sTReXI_Z" role="1Qtc8A">
        <node concept="A1WHu" id="6g3sTReXIA0" role="A14EM">
          <ref role="A1WHt" node="6g3sTReVva9" resolve="TransitionConditionTMAction_AddInputEvent" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1zB5ET5$HWj">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:1zB5ET5$GBR" resolve="STAlgorithmBody" />
    <node concept="3F1sOY" id="7GyesCpcgqR" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:7GyesCpcgqN" resolve="body" />
    </node>
  </node>
  <node concept="1h_SRR" id="2ByE74kjMKu">
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="Delete" />
    <ref role="1h_SK9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1hA7zw" id="2ByE74kjMKC" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="2ByE74kjMKD" role="1hA7z_">
        <node concept="3clFbS" id="2ByE74kjMKE" role="2VODD2">
          <node concept="3clFbJ" id="2ByE74kjPW7" role="3cqZAp">
            <node concept="2OqwBi" id="2ByE74kjWEr" role="3clFbw">
              <node concept="0IXxy" id="2ByE74kjWwL" role="2Oq$k0" />
              <node concept="2xy62i" id="2ByE74kjXdU" role="2OqNvi">
                <node concept="1Q80Hx" id="2ByE74kjXe_" role="2xHN3q" />
              </node>
            </node>
            <node concept="3clFbS" id="2ByE74kjPW9" role="3clFbx">
              <node concept="3cpWs6" id="2ByE74kjXgs" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="2ByE74kjXhh" role="3cqZAp">
            <node concept="2OqwBi" id="2ByE74kjXp7" role="3clFbG">
              <node concept="0IXxy" id="2ByE74kjXhf" role="2Oq$k0" />
              <node concept="3YRAZt" id="2ByE74kjXWY" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="2ByE74knc05">
    <property role="TrG5h" value="InterfaceList" />
    <property role="3GE5qa" value="interface" />
    <ref role="1XX52x" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="3EZMnI" id="2ByE74knc06" role="2wV5jI">
      <node concept="VPM3Z" id="2ByE74knc07" role="3F10Kt" />
      <node concept="1ktTy1" id="5s_pygh8yQW" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
        <node concept="ljvvj" id="2ByE74knc0b" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="2ByE74knc08" role="1ktDp$">
          <property role="3F0ifm" value="EVENT_INPUT" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="2ByE74knc0h" role="1ktDpy">
          <property role="3F0ifm" value="END_EVENT" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="4s7KBSiVwFx" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no event inputs" />
          <node concept="Vb9p2" id="4s7KBSiVwJv" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="4s7KBSiVwJw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5s_pygh8z_i" role="2czzBx" />
        <node concept="PMmxH" id="1N6Oh7f7bqc" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pygh8zS4" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
        <node concept="ljvvj" id="5s_pygh8zS5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8zS6" role="1ktDp$">
          <property role="3F0ifm" value="EVENT_OUTPUT" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8zS7" role="1ktDpy">
          <property role="3F0ifm" value="END_EVENT" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8zS8" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no event outputs" />
          <node concept="Vb9p2" id="5s_pygh8zS9" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="5s_pygh8zSa" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5s_pygh8zSb" role="2czzBx" />
        <node concept="PMmxH" id="1N6Oh7f7bqe" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pygh8$3a" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
        <node concept="ljvvj" id="5s_pygh8$3b" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8$3c" role="1ktDp$">
          <property role="3F0ifm" value="VAR_INPUT" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8$3d" role="1ktDpy">
          <property role="3F0ifm" value="END_VAR" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8$3e" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no variable inputs" />
          <node concept="Vb9p2" id="5s_pygh8$3f" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="5s_pygh8$3g" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5s_pygh8$3h" role="2czzBx" />
        <node concept="PMmxH" id="1N6Oh7f7bqg" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pygh8$eo" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
        <node concept="ljvvj" id="5s_pygh8$ep" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8$eq" role="1ktDp$">
          <property role="3F0ifm" value="VAR_OUTPUT" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8$er" role="1ktDpy">
          <property role="3F0ifm" value="END_VAR" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8$es" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no variable outputs" />
          <node concept="Vb9p2" id="5s_pygh8$et" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="5s_pygh8$eu" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5s_pygh8$ev" role="2czzBx" />
        <node concept="PMmxH" id="1N6Oh7f7bqi" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="l2Vlx" id="2ByE74knc0O" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2ByE74knc68">
    <property role="3GE5qa" value="adapter" />
    <ref role="1XX52x" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
    <node concept="3EZMnI" id="2ByE74knc6d" role="2wV5jI">
      <node concept="l2Vlx" id="2ByE74knc6e" role="2iSdaV" />
      <node concept="3F0ifn" id="2ByE74knc6a" role="3EZMnx">
        <property role="3F0ifm" value="ADAPTER" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="2ByE74knc6D" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="2ByE74knc6K" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2ByE74knc6o" role="3EZMnx">
        <ref role="PMmxG" node="2ByE74knc05" resolve="InterfaceList" />
        <node concept="ljvvj" id="2ByE74knc6x" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2ByE74knc6M" role="3EZMnx">
        <property role="3F0ifm" value="END_ADAPTER" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="37fub3vjRJS">
    <property role="3GE5qa" value="adapter" />
    <ref role="1XX52x" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
    <node concept="3EZMnI" id="37fub3vk1yu" role="2wV5jI">
      <node concept="3F0A7n" id="37fub3vk1y_" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="37fub3vk1yF" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="37fub3vk1yN" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:37fub3vjRJt" resolve="adapterType" />
        <node concept="1sVBvm" id="37fub3vk1yP" role="1sWHZn">
          <node concept="3SHvHV" id="37fub3vk1yY" role="2wV5jI" />
        </node>
      </node>
      <node concept="PMmxH" id="7GyesCpsbgf" role="3EZMnx">
        <ref role="PMmxG" to="5kh9:7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="2iRfu4" id="37fub3vk1yx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="37fub3vk1Lj">
    <property role="3GE5qa" value="adapter" />
    <ref role="1XX52x" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
    <node concept="3EZMnI" id="37fub3vk1Ll" role="2wV5jI">
      <node concept="3F0A7n" id="37fub3vk1Ls" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="37fub3vk1Ly" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="37fub3vk1LE" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:37fub3vk1KS" resolve="adapterType" />
        <node concept="1sVBvm" id="37fub3vk1LG" role="1sWHZn">
          <node concept="3SHvHV" id="37fub3vk1M7" role="2wV5jI" />
        </node>
      </node>
      <node concept="PMmxH" id="7GyesCpuu3p" role="3EZMnx">
        <ref role="PMmxG" to="5kh9:7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="37fub3vk1Lo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="37fub3vnaPo">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1XX52x" to="xiqq:37fub3vlDyx" resolve="ContextDataEndpoint" />
    <node concept="1iCGBv" id="37fub3vnaPq" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:37fub3vlDyy" resolve="declaration" />
      <node concept="1sVBvm" id="37fub3vnaPs" role="1sWHZn">
        <node concept="3SHvHV" id="37fub3vnaPA" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="37fub3vqpFQ">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="aqKnT" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
    <node concept="3XHNnq" id="37fub3vqpFT" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:PI_pXYus3R" resolve="component" />
    </node>
  </node>
  <node concept="3p36aQ" id="37fub3vqpGQ">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="aqKnT" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
    <node concept="3XHNnq" id="37fub3vqpGX" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:PI_pXYus3R" resolve="component" />
    </node>
  </node>
  <node concept="24kQdi" id="75nMhMfIPvD">
    <property role="3GE5qa" value="network.connections.adapter" />
    <ref role="1XX52x" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
    <node concept="3EZMnI" id="75nMhMfIPvI" role="2wV5jI">
      <node concept="1iCGBv" id="75nMhMfIPvP" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:75nMhMfIPvb" resolve="component" />
        <node concept="1sVBvm" id="75nMhMfIPvR" role="1sWHZn">
          <node concept="3SHvHV" id="75nMhMfIPvY" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="75nMhMfIPw6" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="75nMhMfIPwc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="75nMhMfIPwh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="75nMhMfIPvL" role="2iSdaV" />
      <node concept="1iCGBv" id="75nMhMfIPwt" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:75nMhMfIPvd" resolve="declaration" />
        <node concept="1sVBvm" id="75nMhMfIPwv" role="1sWHZn">
          <node concept="3SHvHV" id="75nMhMfIPwG" role="2wV5jI" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="75nMhMfIWBs">
    <property role="3GE5qa" value="network.connections.adapter" />
    <ref role="1XX52x" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
    <node concept="3EZMnI" id="75nMhMfIWBu" role="2wV5jI">
      <node concept="1iCGBv" id="75nMhMfIWBv" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:75nMhMfIWAY" resolve="component" />
        <node concept="1sVBvm" id="75nMhMfIWBw" role="1sWHZn">
          <node concept="3SHvHV" id="75nMhMfIWBx" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="75nMhMfIWBy" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="75nMhMfIWBz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="75nMhMfIWB$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="75nMhMfIWB_" role="2iSdaV" />
      <node concept="1iCGBv" id="75nMhMfIWBA" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:75nMhMfIWB0" resolve="declaration" />
        <node concept="1sVBvm" id="75nMhMfIWBB" role="1sWHZn">
          <node concept="3SHvHV" id="75nMhMfIWBC" role="2wV5jI" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="75nMhMfJ0WY">
    <property role="3GE5qa" value="network.connections.adapter" />
    <ref role="aqKnT" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
    <node concept="3XHNnq" id="75nMhMfJ0X1" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:75nMhMfIWAY" resolve="component" />
    </node>
  </node>
  <node concept="3p36aQ" id="75nMhMfJ0X4">
    <property role="3GE5qa" value="network.connections.adapter" />
    <ref role="aqKnT" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
    <node concept="3XHNnq" id="75nMhMfJ0X7" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:75nMhMfIPvb" resolve="component" />
    </node>
  </node>
  <node concept="3p36aQ" id="75nMhMfOWeD">
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="aqKnT" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
    <node concept="3XHNnq" id="75nMhMfOWeJ" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:PI_pXYus4r" resolve="component" />
    </node>
  </node>
  <node concept="3p36aQ" id="75nMhMfOWfe">
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="aqKnT" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
    <node concept="3XHNnq" id="75nMhMfOWfh" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:PI_pXYus4r" resolve="component" />
    </node>
  </node>
  <node concept="24kQdi" id="75nMhMfQOu9">
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="1XX52x" to="xiqq:75nMhMfQOtH" resolve="ContextEventEndpoint" />
    <node concept="1iCGBv" id="75nMhMfQOuk" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:75nMhMfQOtI" resolve="declaration" />
      <node concept="1sVBvm" id="75nMhMfQOum" role="1sWHZn">
        <node concept="3SHvHV" id="75nMhMfQOut" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="75nMhMfSUmE">
    <property role="3GE5qa" value="interface" />
    <property role="TrG5h" value="Interface_PlugsAndSockets" />
    <ref role="1XX52x" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
    <node concept="3EZMnI" id="75nMhMfSUmG" role="2wV5jI">
      <node concept="1ktTy1" id="5s_pygh8_lv" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:75nMhMfSQR7" resolve="plugs" />
        <node concept="ljvvj" id="5s_pygh8_lw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8_lx" role="1ktDp$">
          <property role="3F0ifm" value="PLUGS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8_ly" role="1ktDpy">
          <property role="3F0ifm" value="END_PLUGS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8_lz" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no plugs" />
          <node concept="Vb9p2" id="5s_pygh8_l$" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="5s_pygh8_l_" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5s_pygh8_lA" role="2czzBx" />
        <node concept="PMmxH" id="1N6Oh7f7bqk" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pygh8_lB" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:75nMhMfSQRy" resolve="sockets" />
        <node concept="ljvvj" id="5s_pygh8_lC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8_lD" role="1ktDp$">
          <property role="3F0ifm" value="SOCKETS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8_lE" role="1ktDpy">
          <property role="3F0ifm" value="END_SOCKETS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh8_lF" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no sockets" />
          <node concept="Vb9p2" id="5s_pygh8_lG" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="5s_pygh8_lH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5s_pygh8_lI" role="2czzBx" />
        <node concept="PMmxH" id="1N6Oh7f7bqm" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="l2Vlx" id="75nMhMfSUmJ" role="2iSdaV" />
      <node concept="VPM3Z" id="4s7KBSj6QS4" role="3F10Kt" />
    </node>
  </node>
  <node concept="24kQdi" id="5VLuTnkxqDR">
    <property role="3GE5qa" value="network.connections.adapter" />
    <ref role="1XX52x" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
    <node concept="2aJ2om" id="5VLuTnkxqDT" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
    <node concept="2ZMJ7s" id="5VLuTnkxr45" role="2wV5jI">
      <node concept="3C0NmR" id="5VLuTnkxr46" role="3F10Kt">
        <property role="3DY3mF" value="3." />
      </node>
      <node concept="3C0NmK" id="5VLuTnkxr47" role="3F10Kt">
        <node concept="3ZlJ5R" id="5VLuTnkxr48" role="VblUZ">
          <node concept="3clFbS" id="5VLuTnkxr49" role="2VODD2">
            <node concept="3clFbF" id="5VLuTnkxr4a" role="3cqZAp">
              <node concept="2OqwBi" id="2R0Wzqv0Agx" role="3clFbG">
                <node concept="Rm8GO" id="2R0Wzqv0_Ri" role="2Oq$k0">
                  <ref role="Rm8GQ" node="2R0WzquZm6t" resolve="ADAPTER" />
                  <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
                </node>
                <node concept="2S8uIT" id="2R0Wzqv0E6O" role="2OqNvi">
                  <ref role="2S8YL0" node="2R0WzquZnQT" resolve="color" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1PNbMa" id="5VLuTnkxr4c" role="1PN8q7">
        <node concept="23hSXV" id="5VLuTnkxs37" role="ljJml">
          <node concept="23hSZX" id="5VLuTnkxs39" role="23hSXW">
            <node concept="2OqwBi" id="5VLuTnkxwJT" role="23hSWE">
              <node concept="2OqwBi" id="5VLuTnkxvgM" role="2Oq$k0">
                <node concept="1Pxb5l" id="5VLuTnkxv8I" role="2Oq$k0" />
                <node concept="3TrEf2" id="5VLuTnkxwgL" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:37fub3vlA5_" resolve="source" />
                </node>
              </node>
              <node concept="3TrEf2" id="uLhTRR3dQy" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5VLuTnkxuhx" role="23hSXU">
            <node concept="2OqwBi" id="5VLuTnkxsX$" role="2Oq$k0">
              <node concept="2OqwBi" id="5VLuTnkxsd2" role="2Oq$k0">
                <node concept="1Pxb5l" id="5VLuTnkxs3w" role="2Oq$k0" />
                <node concept="3TrEf2" id="5VLuTnkxsrf" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:37fub3vlA5_" resolve="source" />
                </node>
              </node>
              <node concept="3TrEf2" id="5VLuTnkxtLP" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:75nMhMfIWB0" resolve="declaration" />
              </node>
            </node>
            <node concept="3TrcHB" id="5VLuTnkxv6y" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1PNbMa" id="5VLuTnkxr4I" role="1PN8qh">
        <node concept="23hSXV" id="5VLuTnkxxAw" role="ljJml">
          <node concept="23hSZX" id="5VLuTnkxxAx" role="23hSXW">
            <node concept="2OqwBi" id="5VLuTnkxxAy" role="23hSWE">
              <node concept="2OqwBi" id="5VLuTnkxxAz" role="2Oq$k0">
                <node concept="1Pxb5l" id="5VLuTnkxxA$" role="2Oq$k0" />
                <node concept="3TrEf2" id="5VLuTnkxyfs" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:37fub3vlDzP" resolve="destination" />
                </node>
              </node>
              <node concept="3TrEf2" id="5VLuTnkxxAA" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5VLuTnkxxAB" role="23hSXU">
            <node concept="2OqwBi" id="5VLuTnkxxAC" role="2Oq$k0">
              <node concept="2OqwBi" id="5VLuTnkxxAD" role="2Oq$k0">
                <node concept="1Pxb5l" id="5VLuTnkxxAE" role="2Oq$k0" />
                <node concept="3TrEf2" id="5VLuTnkxxVB" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:37fub3vlDzP" resolve="destination" />
                </node>
              </node>
              <node concept="3TrEf2" id="5VLuTnkxxAG" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:75nMhMfIPvd" resolve="declaration" />
              </node>
            </node>
            <node concept="3TrcHB" id="5VLuTnkxxAH" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1rxLtFPpbc3">
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
    <node concept="2aJ2om" id="1rxLtFPpbc4" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
    <node concept="3EZMnI" id="1rxLtFPpbc5" role="2wV5jI">
      <node concept="2ZK4vF" id="1rxLtFPpbc6" role="3EZMnx">
        <node concept="230Hcy" id="1rxLtFPpbc7" role="3DrZTU">
          <node concept="2OqwBi" id="1rxLtFPpbc8" role="230Hdr">
            <node concept="2OqwBi" id="1rxLtFPpbc9" role="2Oq$k0">
              <node concept="1Pxb5l" id="1rxLtFPpbca" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPpfw$" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="1rxLtFPpbcc" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
          <node concept="3Tyytl" id="1rxLtFPpbcd" role="230Hdp">
            <node concept="2OqwBi" id="1rxLtFPpbce" role="2316E2">
              <node concept="15kUEO" id="1rxLtFPpbcf" role="2Oq$k0" />
              <node concept="3TrcHB" id="1rxLtFPpbcg" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="1rxLtFPpbch" role="2316E6">
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <ref role="37wK5l" node="1Oxt8drfibZ" resolve="eventPosition" />
              <node concept="15kUEO" id="1rxLtFPpbci" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="1rxLtFPpbcj" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv0iOs" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
            <node concept="3b6qkQ" id="1rxLtFPpgLh" role="2316E7">
              <property role="$nhwW" value="1.0" />
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="1rxLtFPpbcl" role="3DrZTU">
          <node concept="2OqwBi" id="1rxLtFPpbcm" role="230Hdr">
            <node concept="3Tsc0h" id="1rxLtFPpbcq" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
            <node concept="2OqwBi" id="1rxLtFPpfDs" role="2Oq$k0">
              <node concept="1Pxb5l" id="1rxLtFPpfDt" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPpfDu" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
          </node>
          <node concept="3Tyytl" id="1rxLtFPpbcr" role="230Hdp">
            <node concept="2OqwBi" id="1rxLtFPpbcs" role="2316E2">
              <node concept="15kUEO" id="1rxLtFPpbct" role="2Oq$k0" />
              <node concept="3TrcHB" id="1rxLtFPpbcu" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="1rxLtFPpbcw" role="2316E6">
              <ref role="37wK5l" node="1Oxt8drfibZ" resolve="eventPosition" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="15kUEO" id="1rxLtFPpbcx" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="1rxLtFPpbcy" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv0iRj" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="1rxLtFPpbc$" role="3DrZTU">
          <node concept="2OqwBi" id="1rxLtFPpbc_" role="230Hdr">
            <node concept="3Tsc0h" id="1rxLtFPpbcD" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
            <node concept="2OqwBi" id="1rxLtFPpfO9" role="2Oq$k0">
              <node concept="1Pxb5l" id="1rxLtFPpfOa" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPpfOb" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
          </node>
          <node concept="3Tyytl" id="1rxLtFPpbcE" role="230Hdp">
            <node concept="2OqwBi" id="1rxLtFPpbcF" role="2316E2">
              <node concept="15kUEO" id="1rxLtFPpbcG" role="2Oq$k0" />
              <node concept="3TrcHB" id="1rxLtFPpbcH" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="1rxLtFPpbcI" role="2316E6">
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <ref role="37wK5l" node="1Oxt8drftoQ" resolve="dataPosition" />
              <node concept="15kUEO" id="1rxLtFPpbcJ" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="1rxLtFPpbcK" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv0iGH" role="1xbcaF">
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
                <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
              </node>
            </node>
            <node concept="3b6qkQ" id="1rxLtFPpguc" role="2316E7">
              <property role="$nhwW" value="1.0" />
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="1rxLtFPpbcM" role="3DrZTU">
          <node concept="2OqwBi" id="1rxLtFPpbcN" role="230Hdr">
            <node concept="3Tsc0h" id="1rxLtFPpbcR" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
            <node concept="2OqwBi" id="1rxLtFPpfYQ" role="2Oq$k0">
              <node concept="1Pxb5l" id="1rxLtFPpfYR" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPpfYS" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
          </node>
          <node concept="3Tyytl" id="1rxLtFPpbcS" role="230Hdp">
            <node concept="2OqwBi" id="1rxLtFPpbcT" role="2316E2">
              <node concept="15kUEO" id="1rxLtFPpbcU" role="2Oq$k0" />
              <node concept="3TrcHB" id="1rxLtFPpbcV" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="1rxLtFPpbcX" role="2316E6">
              <ref role="37wK5l" node="1Oxt8drftoQ" resolve="dataPosition" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="15kUEO" id="1rxLtFPpbcY" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="1rxLtFPpbcZ" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv0iKn" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbT" id="1rxLtFPpbdu" role="1pgz2C">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="3clFbT" id="1rxLtFPpbdv" role="TjlW2">
          <property role="3clFbU" value="false" />
        </node>
        <node concept="2xQOud" id="1rxLtFPpbdw" role="2xQQDV">
          <ref role="2xQOue" node="1Oxt8dr0eli" resolve="ComponentShape" />
          <node concept="2YIFZM" id="1rxLtFPpbdx" role="1xbcaF">
            <ref role="37wK5l" node="1Oxt8dr0Cdm" resolve="layoutDataPositions" />
            <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
            <node concept="2OqwBi" id="1rxLtFPpbdy" role="37wK5m">
              <node concept="1Pxb5l" id="1rxLtFPpbdz" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPq8z_" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="1rxLtFPpbd_" role="1xbcaF">
            <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
            <ref role="37wK5l" node="1Oxt8dr0keK" resolve="layoutEventPositions" />
            <node concept="2OqwBi" id="1rxLtFPpbdA" role="37wK5m">
              <node concept="1Pxb5l" id="1rxLtFPpbdB" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPq8S3" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="1rxLtFPpbdD" role="1ytjkN">
          <node concept="3EZMnI" id="1rxLtFPpbdE" role="3EZMnx">
            <node concept="VPM3Z" id="1rxLtFPpbdF" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="35HoNQ" id="1rxLtFPpbdG" role="3EZMnx">
              <node concept="37jFXN" id="1rxLtFPpbdH" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
            <node concept="3F0A7n" id="1rxLtFPpbdI" role="3EZMnx">
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="37jFXN" id="1rxLtFPpbdJ" role="3F10Kt">
                <property role="37lx6p" value="CENTER" />
              </node>
            </node>
            <node concept="35HoNQ" id="1rxLtFPpbdK" role="3EZMnx">
              <node concept="37jFXN" id="1rxLtFPpbdL" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
            <node concept="2iRfu4" id="1rxLtFPpbdM" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="1rxLtFPpbdN" role="3EZMnx">
            <node concept="VPM3Z" id="1rxLtFPpbdO" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="1rxLtFPpbdP" role="2iSdaV" />
            <node concept="gc7cB" id="1rxLtFPpbdQ" role="3EZMnx">
              <node concept="3VJUX4" id="1rxLtFPpbdR" role="3YsKMw">
                <node concept="3clFbS" id="1rxLtFPpbdS" role="2VODD2">
                  <node concept="3clFbF" id="1rxLtFPpbdT" role="3cqZAp">
                    <node concept="2ShNRf" id="1rxLtFPpbdU" role="3clFbG">
                      <node concept="1pGfFk" id="1rxLtFPpbdV" role="2ShVmc">
                        <ref role="37wK5l" node="61urdBywjrw" resolve="EventInstancesCellProvider" />
                        <node concept="pncrf" id="1rxLtFPpbdW" role="37wK5m" />
                        <node concept="3clFbT" id="1rxLtFPpbdX" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="35HoNQ" id="1rxLtFPpbdY" role="3EZMnx">
              <node concept="VPM3Z" id="1rxLtFPpbdZ" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="gc7cB" id="1rxLtFPpbe0" role="3EZMnx">
              <node concept="3VJUX4" id="1rxLtFPpbe1" role="3YsKMw">
                <node concept="3clFbS" id="1rxLtFPpbe2" role="2VODD2">
                  <node concept="3clFbF" id="1rxLtFPpbe3" role="3cqZAp">
                    <node concept="2ShNRf" id="1rxLtFPpbe4" role="3clFbG">
                      <node concept="1pGfFk" id="1rxLtFPpbe5" role="2ShVmc">
                        <ref role="37wK5l" node="61urdBywjrw" resolve="EventInstancesCellProvider" />
                        <node concept="pncrf" id="1rxLtFPpbe6" role="37wK5m" />
                        <node concept="3clFbT" id="1rxLtFPpbe7" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37jFXN" id="1rxLtFPpbe8" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
          </node>
          <node concept="35HoNQ" id="1rxLtFPpbe9" role="3EZMnx" />
          <node concept="3EZMnI" id="1rxLtFPpbea" role="3EZMnx">
            <node concept="VPM3Z" id="1rxLtFPpbeb" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="35HoNQ" id="1rxLtFPpbec" role="3EZMnx" />
            <node concept="1iCGBv" id="1rxLtFPpbed" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              <node concept="1sVBvm" id="1rxLtFPpbee" role="1sWHZn">
                <node concept="3F0A7n" id="1rxLtFPpbef" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="37jFXN" id="1rxLtFPpbeg" role="3F10Kt">
                <property role="37lx6p" value="CENTER" />
              </node>
            </node>
            <node concept="35HoNQ" id="1rxLtFPpbeh" role="3EZMnx" />
            <node concept="2iRfu4" id="1rxLtFPpbei" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="1rxLtFPvEQ$" role="3EZMnx">
            <node concept="VPM3Z" id="1rxLtFPvEQ_" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="1rxLtFPvEQA" role="2iSdaV" />
            <node concept="s8t4o" id="1rxLtFPvEQB" role="3EZMnx">
              <property role="28Zw97" value="true" />
              <ref role="28F8cf" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              <node concept="xShMh" id="1rxLtFPvEQC" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="s8sZD" id="1rxLtFPvEQD" role="sbcd9">
                <node concept="3clFbS" id="1rxLtFPvEQE" role="2VODD2">
                  <node concept="3clFbF" id="1rxLtFPvEQF" role="3cqZAp">
                    <node concept="2OqwBi" id="1rxLtFPvEQG" role="3clFbG">
                      <node concept="pncrf" id="1rxLtFPvEQH" role="2Oq$k0" />
                      <node concept="2qgKlT" id="1rxLtFPvEQI" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3F0ifn" id="1rxLtFPvEQJ" role="2czzBJ">
                <property role="3F0ifm" value="empty" />
              </node>
              <node concept="1yz3lS" id="1rxLtFPvEQK" role="1yzFaX">
                <node concept="3F0A7n" id="1rxLtFPvEQL" role="2wV5jI">
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  <node concept="xShMh" id="1rxLtFPvEQM" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2iRkQZ" id="G6ZN4MYWrJ" role="2czzBy" />
            </node>
            <node concept="35HoNQ" id="1rxLtFPvEQN" role="3EZMnx">
              <node concept="VPM3Z" id="1rxLtFPvEQO" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="s8t4o" id="1rxLtFPvEQP" role="3EZMnx">
              <property role="28Zw97" value="true" />
              <ref role="28F8cf" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              <node concept="xShMh" id="1rxLtFPvEQQ" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="37jFXN" id="1rxLtFPvEQR" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
              <node concept="s8sZD" id="1rxLtFPvEQS" role="sbcd9">
                <node concept="3clFbS" id="1rxLtFPvEQT" role="2VODD2">
                  <node concept="3clFbF" id="1rxLtFPvEQU" role="3cqZAp">
                    <node concept="2OqwBi" id="1rxLtFPvEQV" role="3clFbG">
                      <node concept="pncrf" id="1rxLtFPvEQW" role="2Oq$k0" />
                      <node concept="2qgKlT" id="1rxLtFPvEQX" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:5L1OxDukYe7" resolve="dataSources" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3F0ifn" id="1rxLtFPvEQY" role="2czzBJ">
                <property role="3F0ifm" value="empty" />
              </node>
              <node concept="1yz3lS" id="1rxLtFPvEQZ" role="1yzFaX">
                <node concept="3F0A7n" id="1rxLtFPvER0" role="2wV5jI">
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  <node concept="xShMh" id="1rxLtFPvER1" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                  <node concept="37jFXN" id="G6ZN4N49zX" role="3F10Kt">
                    <property role="37lx6p" value="RIGHT" />
                  </node>
                </node>
              </node>
              <node concept="2iRkQZ" id="G6ZN4MYW$q" role="2czzBy" />
            </node>
          </node>
          <node concept="2EHx9g" id="1rxLtFPpbfH" role="2iSdaV" />
        </node>
        <node concept="3clFbT" id="1rxLtFPpbfI" role="3RJMYJ">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="2iRkQZ" id="1rxLtFPpbfJ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1rxLtFPvvU8">
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
    <node concept="2aJ2om" id="1rxLtFPvvU9" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
    <node concept="3EZMnI" id="1rxLtFPvvUa" role="2wV5jI">
      <node concept="2ZK4vF" id="1rxLtFPvvUb" role="3EZMnx">
        <node concept="230Hcy" id="1rxLtFPvvUc" role="3DrZTU">
          <node concept="2OqwBi" id="1rxLtFPvvUd" role="230Hdr">
            <node concept="2OqwBi" id="1rxLtFPvvUe" role="2Oq$k0">
              <node concept="1Pxb5l" id="1rxLtFPvvUf" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPvvUg" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="1rxLtFPvvUh" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
          <node concept="3Tyytl" id="1rxLtFPvvUi" role="230Hdp">
            <node concept="2OqwBi" id="1rxLtFPvvUj" role="2316E2">
              <node concept="15kUEO" id="1rxLtFPvvUk" role="2Oq$k0" />
              <node concept="3TrcHB" id="1rxLtFPvvUl" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="1rxLtFPvvUm" role="2316E6">
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <ref role="37wK5l" node="1Oxt8drfibZ" resolve="eventPosition" />
              <node concept="15kUEO" id="1rxLtFPvvUn" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="1rxLtFPvvUo" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv2zkg" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="1rxLtFPvvUr" role="3DrZTU">
          <node concept="2OqwBi" id="1rxLtFPvvUs" role="230Hdr">
            <node concept="3Tsc0h" id="1rxLtFPvvUt" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
            <node concept="2OqwBi" id="1rxLtFPvvUu" role="2Oq$k0">
              <node concept="1Pxb5l" id="1rxLtFPvvUv" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPvvUw" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
          </node>
          <node concept="3Tyytl" id="1rxLtFPvvUx" role="230Hdp">
            <node concept="2OqwBi" id="1rxLtFPvvUy" role="2316E2">
              <node concept="15kUEO" id="1rxLtFPvvUz" role="2Oq$k0" />
              <node concept="3TrcHB" id="1rxLtFPvvU$" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="1rxLtFPvvU_" role="2316E6">
              <ref role="37wK5l" node="1Oxt8drfibZ" resolve="eventPosition" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="15kUEO" id="1rxLtFPvvUA" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="1rxLtFPvvUB" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv2zmt" role="1xbcaF">
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
                <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
              </node>
            </node>
            <node concept="3b6qkQ" id="1rxLtFPvwUD" role="2316E7">
              <property role="$nhwW" value="1.0" />
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="1rxLtFPvvUD" role="3DrZTU">
          <node concept="2OqwBi" id="1rxLtFPvvUE" role="230Hdr">
            <node concept="3Tsc0h" id="1rxLtFPvvUF" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
            <node concept="2OqwBi" id="1rxLtFPvvUG" role="2Oq$k0">
              <node concept="1Pxb5l" id="1rxLtFPvvUH" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPvvUI" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
          </node>
          <node concept="3Tyytl" id="1rxLtFPvvUJ" role="230Hdp">
            <node concept="2OqwBi" id="1rxLtFPvvUK" role="2316E2">
              <node concept="15kUEO" id="1rxLtFPvvUL" role="2Oq$k0" />
              <node concept="3TrcHB" id="1rxLtFPvvUM" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="1rxLtFPvvUN" role="2316E6">
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <ref role="37wK5l" node="1Oxt8drftoQ" resolve="dataPosition" />
              <node concept="15kUEO" id="1rxLtFPvvUO" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="1rxLtFPvvUP" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv2zuB" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="230Hcy" id="1rxLtFPvvUS" role="3DrZTU">
          <node concept="2OqwBi" id="1rxLtFPvvUT" role="230Hdr">
            <node concept="3Tsc0h" id="1rxLtFPvvUU" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
            <node concept="2OqwBi" id="1rxLtFPvvUV" role="2Oq$k0">
              <node concept="1Pxb5l" id="1rxLtFPvvUW" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPvvUX" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
          </node>
          <node concept="3Tyytl" id="1rxLtFPvvUY" role="230Hdp">
            <node concept="2OqwBi" id="1rxLtFPvvUZ" role="2316E2">
              <node concept="15kUEO" id="1rxLtFPvvV0" role="2Oq$k0" />
              <node concept="3TrcHB" id="1rxLtFPvvV1" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2YIFZM" id="1rxLtFPvvV2" role="2316E6">
              <ref role="37wK5l" node="1Oxt8drftoQ" resolve="dataPosition" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="15kUEO" id="1rxLtFPvvV3" role="37wK5m" />
            </node>
            <node concept="2xQOud" id="1rxLtFPvvV4" role="2316E4">
              <ref role="2xQOue" node="2JGKyjiCFLG" resolve="FBPortShape" />
              <node concept="Rm8GO" id="2R0Wzqv2zAK" role="1xbcaF">
                <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
              </node>
            </node>
            <node concept="3b6qkQ" id="1rxLtFPvxhJ" role="2316E7">
              <property role="$nhwW" value="1.0" />
            </node>
          </node>
        </node>
        <node concept="3clFbT" id="1rxLtFPvvV6" role="1pgz2C">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="3clFbT" id="1rxLtFPvvV7" role="TjlW2">
          <property role="3clFbU" value="false" />
        </node>
        <node concept="2xQOud" id="1rxLtFPvvV8" role="2xQQDV">
          <ref role="2xQOue" node="1Oxt8dr0eli" resolve="ComponentShape" />
          <node concept="2YIFZM" id="1rxLtFPvvV9" role="1xbcaF">
            <ref role="37wK5l" node="1Oxt8dr0Cdm" resolve="layoutDataPositions" />
            <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
            <node concept="2OqwBi" id="1rxLtFPvvVa" role="37wK5m">
              <node concept="1Pxb5l" id="1rxLtFPvvVb" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPvCB_" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="1rxLtFPvvVd" role="1xbcaF">
            <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
            <ref role="37wK5l" node="1Oxt8dr0keK" resolve="layoutEventPositions" />
            <node concept="2OqwBi" id="1rxLtFPvvVe" role="37wK5m">
              <node concept="1Pxb5l" id="1rxLtFPvvVf" role="2Oq$k0" />
              <node concept="3TrEf2" id="1rxLtFPvCUn" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="1rxLtFPvvVh" role="1ytjkN">
          <node concept="3EZMnI" id="1rxLtFPvvVi" role="3EZMnx">
            <node concept="VPM3Z" id="1rxLtFPvvVj" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="35HoNQ" id="1rxLtFPvvVk" role="3EZMnx">
              <node concept="37jFXN" id="1rxLtFPvvVl" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
            <node concept="3F0A7n" id="1rxLtFPvvVm" role="3EZMnx">
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="37jFXN" id="1rxLtFPvvVn" role="3F10Kt">
                <property role="37lx6p" value="CENTER" />
              </node>
            </node>
            <node concept="35HoNQ" id="1rxLtFPvvVo" role="3EZMnx">
              <node concept="37jFXN" id="1rxLtFPvvVp" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
            <node concept="2iRfu4" id="1rxLtFPvvVq" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="1rxLtFPvvVr" role="3EZMnx">
            <node concept="VPM3Z" id="1rxLtFPvvVs" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="1rxLtFPvvVt" role="2iSdaV" />
            <node concept="gc7cB" id="1rxLtFPvvVu" role="3EZMnx">
              <node concept="3VJUX4" id="1rxLtFPvvVv" role="3YsKMw">
                <node concept="3clFbS" id="1rxLtFPvvVw" role="2VODD2">
                  <node concept="3clFbF" id="1rxLtFPvvVx" role="3cqZAp">
                    <node concept="2ShNRf" id="1rxLtFPvvVy" role="3clFbG">
                      <node concept="1pGfFk" id="1rxLtFPvvVz" role="2ShVmc">
                        <ref role="37wK5l" node="61urdBywjrw" resolve="EventInstancesCellProvider" />
                        <node concept="pncrf" id="1rxLtFPvvV$" role="37wK5m" />
                        <node concept="3clFbT" id="1rxLtFPvvV_" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="35HoNQ" id="1rxLtFPvvVA" role="3EZMnx">
              <node concept="VPM3Z" id="1rxLtFPvvVB" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="gc7cB" id="1rxLtFPvvVC" role="3EZMnx">
              <node concept="3VJUX4" id="1rxLtFPvvVD" role="3YsKMw">
                <node concept="3clFbS" id="1rxLtFPvvVE" role="2VODD2">
                  <node concept="3clFbF" id="1rxLtFPvvVF" role="3cqZAp">
                    <node concept="2ShNRf" id="1rxLtFPvvVG" role="3clFbG">
                      <node concept="1pGfFk" id="1rxLtFPvvVH" role="2ShVmc">
                        <ref role="37wK5l" node="61urdBywjrw" resolve="EventInstancesCellProvider" />
                        <node concept="pncrf" id="1rxLtFPvvVI" role="37wK5m" />
                        <node concept="3clFbT" id="1rxLtFPvvVJ" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37jFXN" id="1rxLtFPvvVK" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
            </node>
          </node>
          <node concept="35HoNQ" id="1rxLtFPvvVL" role="3EZMnx" />
          <node concept="3EZMnI" id="1rxLtFPvvVM" role="3EZMnx">
            <node concept="VPM3Z" id="1rxLtFPvvVN" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="35HoNQ" id="1rxLtFPvvVO" role="3EZMnx" />
            <node concept="1iCGBv" id="1rxLtFPvvVP" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              <node concept="1sVBvm" id="1rxLtFPvvVQ" role="1sWHZn">
                <node concept="3F0A7n" id="1rxLtFPvvVR" role="2wV5jI">
                  <property role="1Intyy" value="true" />
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="37jFXN" id="1rxLtFPvvVS" role="3F10Kt">
                <property role="37lx6p" value="CENTER" />
              </node>
            </node>
            <node concept="35HoNQ" id="1rxLtFPvvVT" role="3EZMnx" />
            <node concept="2iRfu4" id="1rxLtFPvvVU" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="1rxLtFPvvVV" role="3EZMnx">
            <node concept="VPM3Z" id="1rxLtFPvvWb" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="1rxLtFPvvWc" role="2iSdaV" />
            <node concept="s8t4o" id="1rxLtFPvy11" role="3EZMnx">
              <property role="28Zw97" value="true" />
              <ref role="28F8cf" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              <node concept="xShMh" id="1rxLtFPvy13" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="s8sZD" id="1rxLtFPvy14" role="sbcd9">
                <node concept="3clFbS" id="1rxLtFPvy15" role="2VODD2">
                  <node concept="3clFbF" id="1rxLtFPvy9l" role="3cqZAp">
                    <node concept="2OqwBi" id="1rxLtFPvyl9" role="3clFbG">
                      <node concept="pncrf" id="1rxLtFPvy9g" role="2Oq$k0" />
                      <node concept="2qgKlT" id="1rxLtFPvyCJ" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3F0ifn" id="1rxLtFPvy5g" role="2czzBJ">
                <property role="3F0ifm" value="empty" />
              </node>
              <node concept="1yz3lS" id="1rxLtFPvzmv" role="1yzFaX">
                <node concept="3F0A7n" id="1rxLtFPvzv0" role="2wV5jI">
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  <node concept="xShMh" id="1rxLtFPvBt0" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2iRkQZ" id="G6ZN4MYQ4Q" role="2czzBy" />
            </node>
            <node concept="35HoNQ" id="1rxLtFPvvWd" role="3EZMnx">
              <node concept="VPM3Z" id="1rxLtFPvvWe" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="s8t4o" id="1rxLtFPvz9S" role="3EZMnx">
              <property role="28Zw97" value="true" />
              <ref role="28F8cf" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              <node concept="xShMh" id="1rxLtFPvz9T" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
              <node concept="37jFXN" id="1rxLtFPvCgT" role="3F10Kt">
                <property role="37lx6p" value="RIGHT" />
              </node>
              <node concept="s8sZD" id="1rxLtFPvz9U" role="sbcd9">
                <node concept="3clFbS" id="1rxLtFPvz9V" role="2VODD2">
                  <node concept="3clFbF" id="1rxLtFPvz9W" role="3cqZAp">
                    <node concept="2OqwBi" id="1rxLtFPvz9X" role="3clFbG">
                      <node concept="pncrf" id="1rxLtFPvz9Y" role="2Oq$k0" />
                      <node concept="2qgKlT" id="1rxLtFPvzVf" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:5L1OxDukYe7" resolve="dataSources" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3F0ifn" id="1rxLtFPvza0" role="2czzBJ">
                <property role="3F0ifm" value="empty" />
              </node>
              <node concept="1yz3lS" id="1rxLtFPvzwV" role="1yzFaX">
                <node concept="3F0A7n" id="1rxLtFPvzDs" role="2wV5jI">
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                  <node concept="xShMh" id="1rxLtFPvBuL" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                  <node concept="37jFXN" id="G6ZN4N2xXM" role="3F10Kt">
                    <property role="37lx6p" value="RIGHT" />
                  </node>
                </node>
              </node>
              <node concept="2iRkQZ" id="G6ZN4MYQdx" role="2czzBy" />
            </node>
          </node>
          <node concept="2EHx9g" id="1rxLtFPvvWv" role="2iSdaV" />
        </node>
        <node concept="3clFbT" id="1rxLtFPvvWw" role="3RJMYJ">
          <property role="3clFbU" value="false" />
        </node>
      </node>
      <node concept="2iRkQZ" id="1rxLtFPvvWx" role="2iSdaV" />
    </node>
  </node>
  <node concept="Qs71p" id="2R0WzquZm0W">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="ConnectionKind" />
    <node concept="2tJIrI" id="2R0WzquZm9_" role="jymVt" />
    <node concept="3clFbW" id="2R0WzquZnrB" role="jymVt">
      <node concept="37vLTG" id="2R0WzquZnw1" role="3clF46">
        <property role="TrG5h" value="color" />
        <node concept="3uibUv" id="2R0WzquZnzE" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="2R0WzquZrLd" role="3clF46">
        <property role="TrG5h" value="bgColor" />
        <node concept="3uibUv" id="2R0WzquZrPK" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3cqZAl" id="2R0WzquZnrC" role="3clF45" />
      <node concept="3clFbS" id="2R0WzquZnrE" role="3clF47">
        <node concept="3clFbF" id="2R0WzquZok2" role="3cqZAp">
          <node concept="37vLTI" id="2R0WzquZqo0" role="3clFbG">
            <node concept="37vLTw" id="2R0WzquZqGY" role="37vLTx">
              <ref role="3cqZAo" node="2R0WzquZnw1" resolve="color" />
            </node>
            <node concept="2OqwBi" id="2R0WzquZoD4" role="37vLTJ">
              <node concept="Xjq3P" id="2R0WzquZok1" role="2Oq$k0" />
              <node concept="2S8uIT" id="2R0WzquZpPj" role="2OqNvi">
                <ref role="2S8YL0" node="2R0WzquZnQT" resolve="color" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2R0WzquZsj2" role="3cqZAp">
          <node concept="37vLTI" id="2R0WzquZumF" role="3clFbG">
            <node concept="37vLTw" id="2R0WzquZuG1" role="37vLTx">
              <ref role="3cqZAo" node="2R0WzquZrLd" resolve="bgColor" />
            </node>
            <node concept="2OqwBi" id="2R0WzquZsCo" role="37vLTJ">
              <node concept="Xjq3P" id="2R0WzquZsj0" role="2Oq$k0" />
              <node concept="2S8uIT" id="2R0WzquZtQU" role="2OqNvi">
                <ref role="2S8YL0" node="2R0WzquZrQh" resolve="bgColor" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2R0WzquZn$v" role="jymVt" />
    <node concept="2RhdJD" id="2R0WzquZnQT" role="jymVt">
      <property role="2RkwnN" value="color" />
      <node concept="3Tm1VV" id="2R0WzquZnQU" role="1B3o_S" />
      <node concept="2RoN1w" id="2R0WzquZo3V" role="2RnVtd">
        <node concept="3wEZqW" id="2R0WzquZo3Y" role="3wFrgM" />
        <node concept="3xqBd$" id="2R0WzquZo41" role="3xrYvX">
          <node concept="3Tm6S6" id="2R0WzquZo42" role="3xqFEP" />
        </node>
      </node>
      <node concept="3uibUv" id="2R0WzquZnXP" role="2RkE6I">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2RhdJD" id="2R0WzquZrQh" role="jymVt">
      <property role="2RkwnN" value="bgColor" />
      <node concept="3Tm1VV" id="2R0WzquZrQi" role="1B3o_S" />
      <node concept="2RoN1w" id="2R0WzquZrQj" role="2RnVtd">
        <node concept="3wEZqW" id="2R0WzquZrQk" role="3wFrgM" />
        <node concept="3xqBd$" id="2R0WzquZrQl" role="3xrYvX">
          <node concept="3Tm6S6" id="2R0WzquZrQm" role="3xqFEP" />
        </node>
      </node>
      <node concept="3uibUv" id="2R0WzquZrQn" role="2RkE6I">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="QsSxf" id="2R0WzquZm2Y" role="Qtgdg">
      <property role="TrG5h" value="EVENT" />
      <ref role="37wK5l" node="2R0WzquZnrB" resolve="ConnectionKind" />
      <node concept="10M0yZ" id="2R0WzquZr92" role="37wK5m">
        <ref role="3cqZAo" node="2JGKyjitmC8" resolve="EVENT" />
        <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
      </node>
      <node concept="10M0yZ" id="2R0WzquZv6n" role="37wK5m">
        <ref role="3cqZAo" node="2JGKyjit8B2" resolve="EVENT_BG" />
        <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
      </node>
    </node>
    <node concept="QsSxf" id="2R0WzquZm4$" role="Qtgdg">
      <property role="TrG5h" value="DATA" />
      <ref role="37wK5l" node="2R0WzquZnrB" resolve="ConnectionKind" />
      <node concept="10M0yZ" id="2R0WzquZrd2" role="37wK5m">
        <ref role="3cqZAo" node="2JGKyjitmM6" resolve="DATA" />
        <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
      </node>
      <node concept="10M0yZ" id="2R0WzquZvab" role="37wK5m">
        <ref role="3cqZAo" node="2JGKyjitmJj" resolve="DATA_BG" />
        <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
      </node>
    </node>
    <node concept="QsSxf" id="2R0WzquZm6t" role="Qtgdg">
      <property role="TrG5h" value="ADAPTER" />
      <ref role="37wK5l" node="2R0WzquZnrB" resolve="ConnectionKind" />
      <node concept="10M0yZ" id="2R0WzquZrHY" role="37wK5m">
        <ref role="3cqZAo" node="2R0WzquXqPs" resolve="ADAPTER" />
        <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
      </node>
      <node concept="10M0yZ" id="2R0WzquZvdF" role="37wK5m">
        <ref role="1PxDUh" node="2JGKyjit8pv" resolve="DiagramColors" />
        <ref role="3cqZAo" node="2R0WzquXqPs" resolve="ADAPTER" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2R0WzquZm0X" role="1B3o_S" />
  </node>
  <node concept="PKFIW" id="2lwHqHjRDLP">
    <property role="TrG5h" value="Component_FBNetwork" />
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
    <node concept="27vDVx" id="2lwHqHjRDLQ" role="2wV5jI">
      <node concept="aDKH9" id="2lwHqHjRDLR" role="aCds2">
        <ref role="aDKIf" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
      </node>
      <node concept="aDKH9" id="2lwHqHjRDLU" role="aCds2">
        <ref role="aDKIf" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
      </node>
      <node concept="aDKH9" id="2lwHqHjRDLV" role="aCds2">
        <ref role="aDKIf" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
      </node>
      <node concept="aDKH9" id="2lwHqHjRDLW" role="aCds2">
        <ref role="aDKIf" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
      </node>
      <node concept="2ZMM4L" id="2lwHqHjT7j3" role="aCds2">
        <node concept="3clFbS" id="2lwHqHjT7j5" role="2VODD2">
          <node concept="3clFbF" id="2lwHqHjT8RT" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHjT93a" role="3clFbG">
              <node concept="2ZN8Hh" id="2lwHqHjT8RS" role="2Oq$k0" />
              <node concept="2qgKlT" id="2lwHqHjT9AE" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRVNr" resolve="contextComponents" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ahg9e" id="2lwHqHjSCNJ" role="aCds2">
        <node concept="238au4" id="2lwHqHjSCNL" role="23bJyd">
          <node concept="PMmxH" id="2lwHqHjSMYm" role="2wV5jI">
            <ref role="PMmxG" node="2lwHqHjSMWB" resolve="EventDeclaration_FBNetworkComponent" />
          </node>
        </node>
        <node concept="3Tqbb2" id="2lwHqHjSEgt" role="2M4AHM">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
        <node concept="37q72E" id="2lwHqHjSCNR" role="2M4AHN">
          <node concept="3clFbS" id="2lwHqHjSCNT" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHjSEjd" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHjSEw5" role="3clFbG">
                <node concept="23r2z0" id="2lwHqHjSEjc" role="2Oq$k0" />
                <node concept="2qgKlT" id="2lwHqHjSEGO" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRZ9n" resolve="contextEventSources" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37u81S" id="2lwHqHjSLij" role="2M4AHK" />
        <node concept="2xQOud" id="2lwHqHjSLon" role="3Uta5s">
          <ref role="2xQOue" node="61urdBwKnw2" resolve="ContextSourceShape" />
          <node concept="Rm8GO" id="2lwHqHjSLvy" role="1xbcaF">
            <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
            <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
          </node>
        </node>
        <node concept="3clFbT" id="2lwHqHjSN7C" role="SH2gk">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2fs66k" id="2lwHqHjT4bR" role="2fs69h">
          <node concept="3clFbS" id="2lwHqHjT4bS" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHjT4bT" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHjT4bU" role="3clFbG">
                <node concept="23r2z0" id="2lwHqHjT4bV" role="2Oq$k0" />
                <node concept="3YRAZt" id="2lwHqHjT4bW" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ahg9e" id="2lwHqHjT10v" role="aCds2">
        <node concept="238au4" id="2lwHqHjT10w" role="23bJyd">
          <node concept="PMmxH" id="2lwHqHjT10x" role="2wV5jI">
            <ref role="PMmxG" node="2lwHqHjSMWB" resolve="EventDeclaration_FBNetworkComponent" />
          </node>
        </node>
        <node concept="3Tqbb2" id="2lwHqHjT10y" role="2M4AHM">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
        <node concept="37q72E" id="2lwHqHjT10z" role="2M4AHN">
          <node concept="3clFbS" id="2lwHqHjT10$" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHjT10_" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHjT10A" role="3clFbG">
                <node concept="23r2z0" id="2lwHqHjT10B" role="2Oq$k0" />
                <node concept="2qgKlT" id="2lwHqHjT2Gy" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRZn8" resolve="contextEventDestinations" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37u81S" id="2lwHqHjT10D" role="2M4AHK" />
        <node concept="2xQOud" id="2lwHqHjT10E" role="3Uta5s">
          <ref role="2xQOue" node="61urdBwKnw2" resolve="ContextSourceShape" />
          <node concept="Rm8GO" id="2lwHqHjT10F" role="1xbcaF">
            <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
            <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
          </node>
        </node>
        <node concept="3clFbT" id="2lwHqHjT10G" role="SH2gk">
          <property role="3clFbU" value="true" />
        </node>
        <node concept="2fs66k" id="2lwHqHjT30m" role="2fs69h">
          <node concept="3clFbS" id="2lwHqHjT30n" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHjT36I" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHjT3dG" role="3clFbG">
                <node concept="23r2z0" id="2lwHqHjT36H" role="2Oq$k0" />
                <node concept="3YRAZt" id="2lwHqHjT4bn" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="ahg9e" id="2lwHqHjRDLZ" role="aCds2">
        <node concept="238au4" id="2lwHqHjRDM0" role="23bJyd">
          <node concept="3EZMnI" id="2lwHqHjRDM1" role="2wV5jI">
            <node concept="3F0A7n" id="2lwHqHjRDM2" role="3EZMnx">
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
            <node concept="3F0ifn" id="2lwHqHjRDM3" role="3EZMnx">
              <property role="3F0ifm" value=":" />
            </node>
            <node concept="3F1sOY" id="2lwHqHjRDM4" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYM6s" resolve="type" />
            </node>
            <node concept="l2Vlx" id="2lwHqHjRDM5" role="2iSdaV" />
            <node concept="VPM3Z" id="2lwHqHjRDM6" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
        </node>
        <node concept="3Tqbb2" id="2lwHqHjRDM7" role="2M4AHM">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
        </node>
        <node concept="37q72E" id="2lwHqHjRDM8" role="2M4AHN">
          <node concept="3clFbS" id="2lwHqHjRDM9" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHjRDMa" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHjRDMb" role="3clFbG">
                <node concept="23r2z0" id="2lwHqHjRDMc" role="2Oq$k0" />
                <node concept="2qgKlT" id="2lwHqHjSvDX" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRZ6V" resolve="contextDataSources" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37u81S" id="2lwHqHjRDMe" role="2M4AHK" />
        <node concept="2fs66k" id="2lwHqHjRDMf" role="2fs69h">
          <node concept="3clFbS" id="2lwHqHjRDMg" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHjRDMh" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHjRDMi" role="3clFbG">
                <node concept="37u81S" id="2lwHqHjRDMj" role="2Oq$k0" />
                <node concept="3YRAZt" id="2lwHqHjRDMk" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2xQOud" id="2lwHqHjRDMl" role="3Uta5s">
          <ref role="2xQOue" node="61urdBwKnw2" resolve="ContextSourceShape" />
          <node concept="Rm8GO" id="2lwHqHjRDMm" role="1xbcaF">
            <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
            <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
          </node>
        </node>
      </node>
      <node concept="ahg9e" id="2lwHqHjRDMn" role="aCds2">
        <node concept="238au4" id="2lwHqHjRDMo" role="23bJyd">
          <node concept="3EZMnI" id="2lwHqHjRDMp" role="2wV5jI">
            <node concept="3F0A7n" id="2lwHqHjRDMq" role="3EZMnx">
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
            <node concept="3F0ifn" id="2lwHqHjRDMr" role="3EZMnx">
              <property role="3F0ifm" value=":" />
            </node>
            <node concept="3F1sOY" id="2lwHqHjRDMs" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYM6s" resolve="type" />
            </node>
            <node concept="l2Vlx" id="2lwHqHjRDMt" role="2iSdaV" />
            <node concept="VPM3Z" id="2lwHqHjRDMu" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
        </node>
        <node concept="3Tqbb2" id="2lwHqHjRDMv" role="2M4AHM">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
        </node>
        <node concept="37q72E" id="2lwHqHjRDMw" role="2M4AHN">
          <node concept="3clFbS" id="2lwHqHjRDMx" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHjRDMy" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHjRDMz" role="3clFbG">
                <node concept="23r2z0" id="2lwHqHjRDM$" role="2Oq$k0" />
                <node concept="2qgKlT" id="2lwHqHjSyHw" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRX1R" resolve="contextDataDestinations" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37u81S" id="2lwHqHjRDMA" role="2M4AHK" />
        <node concept="2fs66k" id="2lwHqHjRDMB" role="2fs69h">
          <node concept="3clFbS" id="2lwHqHjRDMC" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHjRDMD" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHjRDME" role="3clFbG">
                <node concept="37u81S" id="2lwHqHjRDMF" role="2Oq$k0" />
                <node concept="3YRAZt" id="2lwHqHjRDMG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2xQOud" id="2lwHqHjRDMH" role="3Uta5s">
          <ref role="2xQOue" node="61urdBx9XJc" resolve="ContextDestinationShape" />
          <node concept="Rm8GO" id="2lwHqHjRDMI" role="1xbcaF">
            <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
            <ref role="1Px2BO" node="2R0WzquZm0W" resolve="ConnectionKind" />
          </node>
        </node>
      </node>
      <node concept="1RuTs0" id="2lwHqHjRDMJ" role="1RuSHk">
        <ref role="1RuSHD" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
      </node>
      <node concept="gQ1qB" id="2lwHqHjRDMK" role="1RuSHk">
        <node concept="3clFbS" id="2lwHqHjRDML" role="2VODD2">
          <node concept="3clFbF" id="2lwHqHkazaG" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHka$70" role="3clFbG">
              <node concept="2ZN8Hh" id="2lwHqHkazaE" role="2Oq$k0" />
              <node concept="2qgKlT" id="2lwHqHka_$9" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHkaoWI" resolve="getNetworkPaletteEntries" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1xLmZY" id="2lwHqHjTG1V" role="1xLlFP">
        <node concept="3clFbS" id="2lwHqHjTG1X" role="2VODD2">
          <node concept="3clFbF" id="2lwHqHjTI0i" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHkajIT" role="3clFbG">
              <node concept="2ShNRf" id="2lwHqHkaiap" role="2Oq$k0">
                <node concept="1pGfFk" id="2lwHqHkaj5w" role="2ShVmc">
                  <ref role="37wK5l" node="2lwHqHjUzuV" resolve="ConnectionFactoryProvider" />
                  <node concept="2ZN8Hh" id="2lwHqHkajnv" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="2lwHqHkak7I" role="2OqNvi">
                <ref role="37wK5l" node="2lwHqHk1LaQ" resolve="createConnections" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="2lwHqHjSMWB">
    <property role="TrG5h" value="EventDeclaration_FBNetworkComponent" />
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="1j7BWu" id="2lwHqHjSMWC" role="2wV5jI">
      <property role="2oejA6" value="true" />
      <node concept="3F0A7n" id="2lwHqHjSMWD" role="1j7Clw">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="2lwHqHjSMWE" role="1j7ClA">
        <node concept="3EZMnI" id="2lwHqHjSMWF" role="3EZMnx">
          <node concept="VPM3Z" id="2lwHqHjSMWG" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="ljvvj" id="2lwHqHjSMWH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0A7n" id="2lwHqHjSMWI" role="3EZMnx">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="l2Vlx" id="2lwHqHjSMWJ" role="2iSdaV" />
          <node concept="3EZMnI" id="2lwHqHjSMWK" role="3EZMnx">
            <node concept="3F0ifn" id="2lwHqHjSMWL" role="3EZMnx">
              <property role="3F0ifm" value="WITH" />
            </node>
            <node concept="3F2HdR" id="2lwHqHjSMWM" role="3EZMnx">
              <property role="2czwfO" value="," />
              <property role="Q2I2d" value="punctuation" />
              <ref role="1NtTu8" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
            </node>
            <node concept="l2Vlx" id="2lwHqHjSMWN" role="2iSdaV" />
            <node concept="VPM3Z" id="2lwHqHjSMWO" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="pkWqt" id="2lwHqHjSMWP" role="pqm2j">
              <node concept="3clFbS" id="2lwHqHjSMWQ" role="2VODD2">
                <node concept="3clFbF" id="2lwHqHjSMWR" role="3cqZAp">
                  <node concept="2OqwBi" id="2lwHqHjSMWS" role="3clFbG">
                    <node concept="2OqwBi" id="2lwHqHjSMWT" role="2Oq$k0">
                      <node concept="pncrf" id="2lwHqHjSMWU" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="2lwHqHjSMWV" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="2lwHqHjSMWW" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="2lwHqHjSMWX" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="ljvvj" id="2lwHqHjSMWY" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="2lwHqHjSMWZ" role="3EZMnx">
          <property role="3F0ifm" value="connections" />
        </node>
        <node concept="3F0ifn" id="2lwHqHjSMX0" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="ljvvj" id="2lwHqHjSMX1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11L4FC" id="2lwHqHjSMX2" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="s8t4o" id="2lwHqHjSMX3" role="3EZMnx">
          <property role="28Zw97" value="true" />
          <property role="2czwfP" value="," />
          <property role="Q2I2e" value="punctuation" />
          <ref role="28F8cf" to="tpck:gw2VY9q" resolve="BaseConcept" />
          <node concept="xShMh" id="2lwHqHjSMX4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="s8sZD" id="2lwHqHjSMX5" role="sbcd9">
            <node concept="3clFbS" id="2lwHqHjSMX6" role="2VODD2">
              <node concept="3cpWs8" id="2lwHqHjSMX7" role="3cqZAp">
                <node concept="3cpWsn" id="2lwHqHjSMX8" role="3cpWs9">
                  <property role="TrG5h" value="fb" />
                  <node concept="3Tqbb2" id="2lwHqHjSMX9" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                  </node>
                  <node concept="1PxgMI" id="2lwHqHjSMXa" role="33vP2m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="2lwHqHjSMXb" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="2lwHqHjSMXc" role="1m5AlR">
                      <node concept="pncrf" id="2lwHqHjSMXd" role="2Oq$k0" />
                      <node concept="1mfA1w" id="2lwHqHjSMXe" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2lwHqHjSMXf" role="3cqZAp">
                <node concept="3cpWsn" id="2lwHqHjSMXg" role="3cpWs9">
                  <property role="TrG5h" value="isSource" />
                  <node concept="10P_77" id="2lwHqHjSMXh" role="1tU5fm" />
                  <node concept="17R0WA" id="2lwHqHjSMXi" role="33vP2m">
                    <node concept="359W_D" id="2lwHqHjSMXj" role="3uHU7w">
                      <ref role="359W_E" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
                      <ref role="359W_F" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                    </node>
                    <node concept="2OqwBi" id="2lwHqHjSMXk" role="3uHU7B">
                      <node concept="pncrf" id="2lwHqHjSMXl" role="2Oq$k0" />
                      <node concept="2NL2c5" id="2lwHqHjSMXm" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2lwHqHjSMXn" role="3cqZAp">
                <node concept="2OqwBi" id="2lwHqHjSMXo" role="3clFbG">
                  <node concept="2OqwBi" id="2lwHqHjSMXp" role="2Oq$k0">
                    <node concept="2OqwBi" id="2lwHqHjSMXq" role="2Oq$k0">
                      <node concept="37vLTw" id="2lwHqHjSMXr" role="2Oq$k0">
                        <ref role="3cqZAo" node="2lwHqHjSMX8" resolve="fb" />
                      </node>
                      <node concept="3Tsc0h" id="2lwHqHjSMXs" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="2lwHqHjSMXt" role="2OqNvi">
                      <node concept="1bVj0M" id="2lwHqHjSMXu" role="23t8la">
                        <node concept="3clFbS" id="2lwHqHjSMXv" role="1bW5cS">
                          <node concept="3clFbJ" id="2lwHqHjSMXw" role="3cqZAp">
                            <node concept="37vLTw" id="2lwHqHjSMXx" role="3clFbw">
                              <ref role="3cqZAo" node="2lwHqHjSMXg" resolve="isSource" />
                            </node>
                            <node concept="3clFbS" id="2lwHqHjSMXy" role="3clFbx">
                              <node concept="3cpWs6" id="2lwHqHjSMXz" role="3cqZAp">
                                <node concept="3clFbC" id="2lwHqHjSMX$" role="3cqZAk">
                                  <node concept="2OqwBi" id="2lwHqHjSMX_" role="3uHU7B">
                                    <node concept="1PxgMI" id="2lwHqHjSMXA" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="2lwHqHjSMXB" role="3oSUPX">
                                        <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                      </node>
                                      <node concept="2OqwBi" id="2lwHqHjSMXC" role="1m5AlR">
                                        <node concept="37vLTw" id="2lwHqHjSMXD" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2lwHqHjSMXT" resolve="it" />
                                        </node>
                                        <node concept="3TrEf2" id="2lwHqHjSMXE" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="2lwHqHjSMXF" role="2OqNvi">
                                      <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                    </node>
                                  </node>
                                  <node concept="pncrf" id="2lwHqHjSMXG" role="3uHU7w" />
                                </node>
                              </node>
                            </node>
                            <node concept="9aQIb" id="2lwHqHjSMXH" role="9aQIa">
                              <node concept="3clFbS" id="2lwHqHjSMXI" role="9aQI4">
                                <node concept="3cpWs6" id="2lwHqHjSMXJ" role="3cqZAp">
                                  <node concept="3clFbC" id="2lwHqHjSMXK" role="3cqZAk">
                                    <node concept="pncrf" id="2lwHqHjSMXL" role="3uHU7w" />
                                    <node concept="2OqwBi" id="2lwHqHjSMXM" role="3uHU7B">
                                      <node concept="1PxgMI" id="2lwHqHjSMXN" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="2lwHqHjSMXO" role="3oSUPX">
                                          <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                        </node>
                                        <node concept="2OqwBi" id="2lwHqHjSMXP" role="1m5AlR">
                                          <node concept="37vLTw" id="2lwHqHjSMXQ" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2lwHqHjSMXT" resolve="it" />
                                          </node>
                                          <node concept="3TrEf2" id="2lwHqHjSMXR" role="2OqNvi">
                                            <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3TrEf2" id="2lwHqHjSMXS" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="2lwHqHjSMXT" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="2lwHqHjSMXU" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="2lwHqHjSMXV" role="2OqNvi">
                    <node concept="1bVj0M" id="2lwHqHjSMXW" role="23t8la">
                      <node concept="3clFbS" id="2lwHqHjSMXX" role="1bW5cS">
                        <node concept="3clFbF" id="2lwHqHjSMXY" role="3cqZAp">
                          <node concept="3K4zz7" id="2lwHqHjSMXZ" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHjSMY0" role="3K4E3e">
                              <node concept="37vLTw" id="2lwHqHjSMY1" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHjSMY7" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="2lwHqHjSMY2" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2lwHqHjSMY3" role="3K4GZi">
                              <node concept="37vLTw" id="2lwHqHjSMY4" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHjSMY7" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="2lwHqHjSMY5" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2lwHqHjSMY6" role="3K4Cdx">
                              <ref role="3cqZAo" node="2lwHqHjSMXg" resolve="isSource" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="2lwHqHjSMY7" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="2lwHqHjSMY8" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1yz3lS" id="2lwHqHjSMY9" role="1yzFaX">
            <node concept="1HlG4h" id="2lwHqHjSMYa" role="2wV5jI">
              <node concept="1HfYo3" id="2lwHqHjSMYb" role="1HlULh">
                <node concept="3TQlhw" id="2lwHqHjSMYc" role="1Hhtcw">
                  <node concept="3clFbS" id="2lwHqHjSMYd" role="2VODD2">
                    <node concept="3clFbF" id="2lwHqHjSMYe" role="3cqZAp">
                      <node concept="2OqwBi" id="2lwHqHjSMYf" role="3clFbG">
                        <node concept="pncrf" id="2lwHqHjSMYg" role="2Oq$k0" />
                        <node concept="2qgKlT" id="2lwHqHjSMYh" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="2lwHqHjSMYi" role="2czzBJ">
            <property role="3F0ifm" value="no connections" />
            <node concept="Vb9p2" id="2lwHqHjSMYj" role="3F10Kt">
              <property role="Vbekb" value="ITALIC" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="2lwHqHjSMYk" role="2iSdaV" />
        <node concept="VPM3Z" id="2lwHqHjSMYl" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2lwHqHjTUOS">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="ConnectionFactoryProvider" />
    <node concept="2tJIrI" id="2lwHqHjTUQU" role="jymVt" />
    <node concept="312cEg" id="2lwHqHjUzsu" role="jymVt">
      <property role="TrG5h" value="myNetwork" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2lwHqHjUznz" role="1B3o_S" />
      <node concept="3Tqbb2" id="2lwHqHjUzsi" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
    </node>
    <node concept="2tJIrI" id="2lwHqHjZD8m" role="jymVt" />
    <node concept="3clFbW" id="2lwHqHjUzuV" role="jymVt">
      <node concept="3cqZAl" id="2lwHqHjUzuW" role="3clF45" />
      <node concept="3clFbS" id="2lwHqHjUzuZ" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjUzv3" role="3cqZAp">
          <node concept="37vLTI" id="2lwHqHjUzv5" role="3clFbG">
            <node concept="2OqwBi" id="2lwHqHjUzv9" role="37vLTJ">
              <node concept="Xjq3P" id="2lwHqHjUzva" role="2Oq$k0" />
              <node concept="2OwXpG" id="2lwHqHjUzvb" role="2OqNvi">
                <ref role="2Oxat5" node="2lwHqHjUzsu" resolve="myNetwork" />
              </node>
            </node>
            <node concept="37vLTw" id="2lwHqHjUzvc" role="37vLTx">
              <ref role="3cqZAo" node="2lwHqHjUzv2" resolve="myNetwork" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2lwHqHjUzv2" role="3clF46">
        <property role="TrG5h" value="myNetwork" />
        <node concept="3Tqbb2" id="2lwHqHjUzv1" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2lwHqHkamxN" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2lwHqHk1GOx" role="jymVt" />
    <node concept="3clFb_" id="2lwHqHk1LaQ" role="jymVt">
      <property role="TrG5h" value="createConnections" />
      <node concept="3clFbS" id="2lwHqHk1LaT" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkacck" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkab4b" role="3clFbG">
            <node concept="2ShNRf" id="2lwHqHk75Xo" role="2Oq$k0">
              <node concept="HV5vD" id="2lwHqHk76II" role="2ShVmc">
                <ref role="HV5vE" node="2lwHqHk5130" resolve="ConnectionFactoryProvider.Factories" />
              </node>
            </node>
            <node concept="liA8E" id="2lwHqHkabq6" role="2OqNvi">
              <ref role="37wK5l" node="2lwHqHk9PnK" resolve="collectConnections" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2lwHqHk1IVL" role="1B3o_S" />
      <node concept="_YKpA" id="2lwHqHk1KLo" role="3clF45">
        <node concept="3uibUv" id="2lwHqHk1KQr" role="_ZDj9">
          <ref role="3uigEE" to="nkm5:7vufT$m5fkU" resolve="IConnectionType" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2lwHqHk4W3t" role="jymVt" />
    <node concept="312cEu" id="2lwHqHk5130" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Factories" />
      <node concept="2tJIrI" id="2lwHqHk53Ta" role="jymVt" />
      <node concept="312cEg" id="2lwHqHk2kJf" role="jymVt">
        <property role="TrG5h" value="myEventConnector" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHk23jS" role="1B3o_S" />
        <node concept="1bVj0M" id="2lwHqHk2nj7" role="33vP2m">
          <node concept="3clFbS" id="2lwHqHk2nj9" role="1bW5cS">
            <node concept="3clFbF" id="2lwHqHk2nsm" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHk2uSK" role="3clFbG">
                <node concept="2OqwBi" id="2lwHqHk2nFt" role="2Oq$k0">
                  <node concept="37vLTw" id="2lwHqHk2nsl" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
                  </node>
                  <node concept="3Tsc0h" id="2lwHqHk2qAP" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                  </node>
                </node>
                <node concept="TSZUe" id="2lwHqHk2Bf1" role="2OqNvi">
                  <node concept="2pJPEk" id="2lwHqHk2EqB" role="25WWJ7">
                    <node concept="2pJPED" id="2lwHqHk2EI9" role="2pJPEn">
                      <ref role="2pJxaS" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                      <node concept="2pIpSj" id="2lwHqHk2Fda" role="2pJxcM">
                        <ref role="2pIpSl" to="xiqq:PI_pXYus2F" resolve="source" />
                        <node concept="36biLy" id="2lwHqHk2Ftf" role="2pJxcZ">
                          <node concept="37vLTw" id="2lwHqHk2FNX" role="36biLW">
                            <ref role="3cqZAo" node="2lwHqHk2BVX" resolve="source" />
                          </node>
                        </node>
                      </node>
                      <node concept="2pIpSj" id="2lwHqHk2Ge2" role="2pJxcM">
                        <ref role="2pIpSl" to="xiqq:PI_pXYus2M" resolve="destination" />
                        <node concept="36biLy" id="2lwHqHk2GsZ" role="2pJxcZ">
                          <node concept="37vLTw" id="2lwHqHk2GMq" role="36biLW">
                            <ref role="3cqZAo" node="2lwHqHk2CFZ" resolve="destination" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="2lwHqHk2BVX" role="1bW2Oz">
            <property role="TrG5h" value="source" />
            <node concept="3Tqbb2" id="2lwHqHk2BVW" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
            </node>
          </node>
          <node concept="37vLTG" id="2lwHqHk2CFZ" role="1bW2Oz">
            <property role="TrG5h" value="destination" />
            <node concept="3Tqbb2" id="2lwHqHk2CZe" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
            </node>
          </node>
        </node>
        <node concept="1ajhzC" id="2lwHqHk2mB9" role="1tU5fm">
          <node concept="3cqZAl" id="2lwHqHk2mBa" role="1ajl9A" />
          <node concept="3Tqbb2" id="2lwHqHk2mMe" role="1ajw0F">
            <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
          </node>
          <node concept="3Tqbb2" id="2lwHqHk2n0Y" role="1ajw0F">
            <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk6uYZ" role="jymVt" />
      <node concept="312cEg" id="2lwHqHk2H40" role="jymVt">
        <property role="TrG5h" value="myDataConnector" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHk2H41" role="1B3o_S" />
        <node concept="1bVj0M" id="2lwHqHk2H42" role="33vP2m">
          <node concept="3clFbS" id="2lwHqHk2H43" role="1bW5cS">
            <node concept="3clFbF" id="2lwHqHk2H44" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHk2H45" role="3clFbG">
                <node concept="2OqwBi" id="2lwHqHk2H46" role="2Oq$k0">
                  <node concept="37vLTw" id="2lwHqHk2H47" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
                  </node>
                  <node concept="3Tsc0h" id="2lwHqHk2MUQ" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                  </node>
                </node>
                <node concept="TSZUe" id="2lwHqHk2H49" role="2OqNvi">
                  <node concept="2pJPEk" id="2lwHqHk2H4a" role="25WWJ7">
                    <node concept="2pJPED" id="2lwHqHk2H4b" role="2pJPEn">
                      <ref role="2pJxaS" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                      <node concept="2pIpSj" id="2lwHqHk2H4c" role="2pJxcM">
                        <ref role="2pIpSl" to="xiqq:PI_pXYus41" resolve="source" />
                        <node concept="36biLy" id="2lwHqHk2H4d" role="2pJxcZ">
                          <node concept="37vLTw" id="2lwHqHk2H4e" role="36biLW">
                            <ref role="3cqZAo" node="2lwHqHk2H4i" resolve="source" />
                          </node>
                        </node>
                      </node>
                      <node concept="2pIpSj" id="2lwHqHk2H4f" role="2pJxcM">
                        <ref role="2pIpSl" to="xiqq:PI_pXYus48" resolve="destination" />
                        <node concept="36biLy" id="2lwHqHk2H4g" role="2pJxcZ">
                          <node concept="37vLTw" id="2lwHqHk2H4h" role="36biLW">
                            <ref role="3cqZAo" node="2lwHqHk2H4k" resolve="destination" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="2lwHqHk2H4i" role="1bW2Oz">
            <property role="TrG5h" value="source" />
            <node concept="3Tqbb2" id="2lwHqHk2H4j" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
            </node>
          </node>
          <node concept="37vLTG" id="2lwHqHk2H4k" role="1bW2Oz">
            <property role="TrG5h" value="destination" />
            <node concept="3Tqbb2" id="2lwHqHk2H4l" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
            </node>
          </node>
        </node>
        <node concept="1ajhzC" id="2lwHqHk2H4m" role="1tU5fm">
          <node concept="3cqZAl" id="2lwHqHk2H4n" role="1ajl9A" />
          <node concept="3Tqbb2" id="2lwHqHk2H4o" role="1ajw0F">
            <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
          </node>
          <node concept="3Tqbb2" id="2lwHqHk2H4p" role="1ajw0F">
            <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk6w_j" role="jymVt" />
      <node concept="312cEg" id="2lwHqHk2JfJ" role="jymVt">
        <property role="TrG5h" value="myAdapterConnector" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHk2JfK" role="1B3o_S" />
        <node concept="1bVj0M" id="2lwHqHk2JfL" role="33vP2m">
          <node concept="3clFbS" id="2lwHqHk2JfM" role="1bW5cS">
            <node concept="3clFbF" id="2lwHqHk2JfN" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHk2JfO" role="3clFbG">
                <node concept="2OqwBi" id="2lwHqHk2JfP" role="2Oq$k0">
                  <node concept="37vLTw" id="2lwHqHk2JfQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
                  </node>
                  <node concept="3Tsc0h" id="2lwHqHk2Wa3" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                  </node>
                </node>
                <node concept="TSZUe" id="2lwHqHk2JfS" role="2OqNvi">
                  <node concept="2pJPEk" id="2lwHqHk2JfT" role="25WWJ7">
                    <node concept="2pJPED" id="2lwHqHk2JfU" role="2pJPEn">
                      <ref role="2pJxaS" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                      <node concept="2pIpSj" id="2lwHqHk2JfV" role="2pJxcM">
                        <ref role="2pIpSl" to="xiqq:37fub3vlA5_" resolve="source" />
                        <node concept="36biLy" id="2lwHqHk2JfW" role="2pJxcZ">
                          <node concept="37vLTw" id="2lwHqHk2JfX" role="36biLW">
                            <ref role="3cqZAo" node="2lwHqHk2Jg1" resolve="source" />
                          </node>
                        </node>
                      </node>
                      <node concept="2pIpSj" id="2lwHqHk2JfY" role="2pJxcM">
                        <ref role="2pIpSl" to="xiqq:37fub3vlDzP" resolve="destination" />
                        <node concept="36biLy" id="2lwHqHk2JfZ" role="2pJxcZ">
                          <node concept="37vLTw" id="2lwHqHk2Jg0" role="36biLW">
                            <ref role="3cqZAo" node="2lwHqHk2Jg3" resolve="destination" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="2lwHqHk2Jg1" role="1bW2Oz">
            <property role="TrG5h" value="source" />
            <node concept="3Tqbb2" id="2lwHqHk2Jg2" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
            </node>
          </node>
          <node concept="37vLTG" id="2lwHqHk2Jg3" role="1bW2Oz">
            <property role="TrG5h" value="destination" />
            <node concept="3Tqbb2" id="2lwHqHk2Jg4" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
            </node>
          </node>
        </node>
        <node concept="1ajhzC" id="2lwHqHk2Jg5" role="1tU5fm">
          <node concept="3cqZAl" id="2lwHqHk2Jg6" role="1ajl9A" />
          <node concept="3Tqbb2" id="2lwHqHk2Jg7" role="1ajw0F">
            <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
          </node>
          <node concept="3Tqbb2" id="2lwHqHk2Jg8" role="1ajw0F">
            <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2lwHqHk4YOs" role="1B3o_S" />
      <node concept="2tJIrI" id="2lwHqHk59Cl" role="jymVt" />
      <node concept="312cEg" id="2lwHqHjU5je" role="jymVt">
        <property role="TrG5h" value="myContextEventSource" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjUUP1" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjU03p" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHjU07b" role="11_B2D">
            <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHjWWGr" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHjWXwl" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHjW9eO" resolve="ConnectionFactoryProvider.ContextEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHjWXN9" role="37wK5m">
              <ref role="35c_gD" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHjWYc8" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
            </node>
            <node concept="359W_D" id="2lwHqHjWYFd" role="37wK5m">
              <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
              <ref role="359W_E" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
            </node>
            <node concept="2OqwBi" id="2lwHqHjWZOe" role="37wK5m">
              <node concept="37vLTw" id="2lwHqHjWZug" role="2Oq$k0">
                <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
              </node>
              <node concept="2qgKlT" id="2lwHqHjX6FI" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRZ9n" resolve="contextEventSources" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHjX8kB" role="jymVt" />
      <node concept="312cEg" id="2lwHqHjX42i" role="jymVt">
        <property role="TrG5h" value="myContextEventDestination" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjX42j" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjX42k" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHjX42l" role="11_B2D">
            <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHjX42m" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHjX42n" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHjW9eO" resolve="ConnectionFactoryProvider.ContextEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHjX42o" role="37wK5m">
              <ref role="35c_gD" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHjX42p" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
            </node>
            <node concept="359W_D" id="2lwHqHjX42q" role="37wK5m">
              <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
              <ref role="359W_E" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
            </node>
            <node concept="2OqwBi" id="2lwHqHjX42r" role="37wK5m">
              <node concept="37vLTw" id="2lwHqHjX42s" role="2Oq$k0">
                <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
              </node>
              <node concept="2qgKlT" id="2lwHqHjX73L" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRZn8" resolve="contextEventDestinations" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHjX33i" role="jymVt" />
      <node concept="312cEg" id="2lwHqHjXajY" role="jymVt">
        <property role="TrG5h" value="myContextDataSource" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjXajZ" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjXak0" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHjXak1" role="11_B2D">
            <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHjXak2" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHjXak3" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHjW9eO" resolve="ConnectionFactoryProvider.ContextEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHjXak4" role="37wK5m">
              <ref role="35c_gD" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHjXak5" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
            </node>
            <node concept="359W_D" id="2lwHqHjXak6" role="37wK5m">
              <ref role="359W_E" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
              <ref role="359W_F" to="xiqq:37fub3vlDyy" resolve="declaration" />
            </node>
            <node concept="2OqwBi" id="2lwHqHjXak7" role="37wK5m">
              <node concept="37vLTw" id="2lwHqHjXak8" role="2Oq$k0">
                <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
              </node>
              <node concept="2qgKlT" id="2lwHqHjXeEm" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRZ6V" resolve="contextDataSources" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHjXaka" role="jymVt" />
      <node concept="312cEg" id="2lwHqHjXakb" role="jymVt">
        <property role="TrG5h" value="myContextDataDestination" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjXakc" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjXakd" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHjXake" role="11_B2D">
            <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHjXakf" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHjXakg" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHjW9eO" resolve="ConnectionFactoryProvider.ContextEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHjXakh" role="37wK5m">
              <ref role="35c_gD" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHjXaki" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
            </node>
            <node concept="359W_D" id="2lwHqHjXakj" role="37wK5m">
              <ref role="359W_E" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
              <ref role="359W_F" to="xiqq:37fub3vlDyy" resolve="declaration" />
            </node>
            <node concept="2OqwBi" id="2lwHqHjXakk" role="37wK5m">
              <node concept="37vLTw" id="2lwHqHjXakl" role="2Oq$k0">
                <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
              </node>
              <node concept="2qgKlT" id="2lwHqHjXf29" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRX1R" resolve="contextDataDestinations" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHjX9hi" role="jymVt" />
      <node concept="312cEg" id="2lwHqHjUVI9" role="jymVt">
        <property role="TrG5h" value="myComponentEventSource" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjUVIa" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjUVIb" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHjUVIc" role="11_B2D">
            <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHjZhNn" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHjZj3D" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHjXg5M" resolve="ConnectionFactoryProvider.ComponentEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHjZjmX" role="37wK5m">
              <ref role="35c_gD" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHjZjFu" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
            </node>
            <node concept="359W_D" id="2lwHqHjZkib" role="37wK5m">
              <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
              <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
            </node>
            <node concept="359W_D" id="2lwHqHjZkFb" role="37wK5m">
              <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
              <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
            </node>
            <node concept="1bVj0M" id="2lwHqHjZlbF" role="37wK5m">
              <node concept="3clFbS" id="2lwHqHjZlbH" role="1bW5cS">
                <node concept="3clFbF" id="2lwHqHjZlTG" role="3cqZAp">
                  <node concept="2OqwBi" id="2lwHqHjZm9U" role="3clFbG">
                    <node concept="37vLTw" id="2lwHqHjZlTF" role="2Oq$k0">
                      <ref role="3cqZAo" node="2lwHqHjZlmM" resolve="c" />
                    </node>
                    <node concept="2qgKlT" id="2lwHqHjZmvp" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:5L1OxDukYcu" resolve="eventSources" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="2lwHqHjZlmM" role="1bW2Oz">
                <property role="TrG5h" value="c" />
                <node concept="3Tqbb2" id="2lwHqHjZlmL" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk0km6" role="jymVt" />
      <node concept="312cEg" id="2lwHqHjZmGf" role="jymVt">
        <property role="TrG5h" value="myComponentEventDestination" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjZmGg" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjZmGh" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHjZmGi" role="11_B2D">
            <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHjZmGj" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHjZmGk" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHjXg5M" resolve="ConnectionFactoryProvider.ComponentEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHjZmGl" role="37wK5m">
              <ref role="35c_gD" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHjZmGm" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
            </node>
            <node concept="359W_D" id="2lwHqHjZmGn" role="37wK5m">
              <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
              <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
            </node>
            <node concept="359W_D" id="2lwHqHjZmGo" role="37wK5m">
              <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
              <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
            </node>
            <node concept="1bVj0M" id="2lwHqHjZmGp" role="37wK5m">
              <node concept="3clFbS" id="2lwHqHjZmGq" role="1bW5cS">
                <node concept="3clFbF" id="2lwHqHjZmGr" role="3cqZAp">
                  <node concept="2OqwBi" id="2lwHqHjZmGs" role="3clFbG">
                    <node concept="37vLTw" id="2lwHqHjZmGt" role="2Oq$k0">
                      <ref role="3cqZAo" node="2lwHqHjZmGv" resolve="c" />
                    </node>
                    <node concept="2qgKlT" id="2lwHqHjZwSE" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:5L1OxDukYdN" resolve="eventDestinations" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="2lwHqHjZmGv" role="1bW2Oz">
                <property role="TrG5h" value="c" />
                <node concept="3Tqbb2" id="2lwHqHjZmGw" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk0lKu" role="jymVt" />
      <node concept="312cEg" id="2lwHqHjZot8" role="jymVt">
        <property role="TrG5h" value="myComponentDataSource" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjZot9" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjZota" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHjZotb" role="11_B2D">
            <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHjZotc" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHjZotd" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHjXg5M" resolve="ConnectionFactoryProvider.ComponentEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHjZote" role="37wK5m">
              <ref role="35c_gD" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHjZotf" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
            </node>
            <node concept="359W_D" id="2lwHqHjZotg" role="37wK5m">
              <ref role="359W_E" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
              <ref role="359W_F" to="xiqq:PI_pXYus3R" resolve="component" />
            </node>
            <node concept="359W_D" id="2lwHqHjZoth" role="37wK5m">
              <ref role="359W_E" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
              <ref role="359W_F" to="xiqq:PI_pXYus3O" resolve="declaration" />
            </node>
            <node concept="1bVj0M" id="2lwHqHjZoti" role="37wK5m">
              <node concept="3clFbS" id="2lwHqHjZotj" role="1bW5cS">
                <node concept="3clFbF" id="2lwHqHjZotk" role="3cqZAp">
                  <node concept="2OqwBi" id="2lwHqHjZotl" role="3clFbG">
                    <node concept="37vLTw" id="2lwHqHjZotm" role="2Oq$k0">
                      <ref role="3cqZAo" node="2lwHqHjZoto" resolve="c" />
                    </node>
                    <node concept="2qgKlT" id="2lwHqHjZyr$" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:5L1OxDukYe7" resolve="dataSources" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="2lwHqHjZoto" role="1bW2Oz">
                <property role="TrG5h" value="c" />
                <node concept="3Tqbb2" id="2lwHqHjZotp" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk0naR" role="jymVt" />
      <node concept="312cEg" id="2lwHqHjZqip" role="jymVt">
        <property role="TrG5h" value="myComponentDataDestination" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjZqiq" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjZqir" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHjZqis" role="11_B2D">
            <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHjZqit" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHjZqiu" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHjXg5M" resolve="ConnectionFactoryProvider.ComponentEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHjZqiv" role="37wK5m">
              <ref role="35c_gD" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHjZqiw" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
            </node>
            <node concept="359W_D" id="2lwHqHjZqix" role="37wK5m">
              <ref role="359W_E" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
              <ref role="359W_F" to="xiqq:PI_pXYus3R" resolve="component" />
            </node>
            <node concept="359W_D" id="2lwHqHjZqiy" role="37wK5m">
              <ref role="359W_E" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
              <ref role="359W_F" to="xiqq:PI_pXYus3O" resolve="declaration" />
            </node>
            <node concept="1bVj0M" id="2lwHqHjZqiz" role="37wK5m">
              <node concept="3clFbS" id="2lwHqHjZqi$" role="1bW5cS">
                <node concept="3clFbF" id="2lwHqHjZqi_" role="3cqZAp">
                  <node concept="2OqwBi" id="2lwHqHjZqiA" role="3clFbG">
                    <node concept="37vLTw" id="2lwHqHjZqiB" role="2Oq$k0">
                      <ref role="3cqZAo" node="2lwHqHjZqiD" resolve="c" />
                    </node>
                    <node concept="2qgKlT" id="2lwHqHjZzNj" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="2lwHqHjZqiD" role="1bW2Oz">
                <property role="TrG5h" value="c" />
                <node concept="3Tqbb2" id="2lwHqHjZqiE" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk6FFJ" role="jymVt" />
      <node concept="312cEg" id="2lwHqHk8IK$" role="jymVt">
        <property role="TrG5h" value="myPlug" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHk8IK_" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHk8IKA" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHk8IKB" role="11_B2D">
            <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHk8IKC" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHk8IKD" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHk8kfw" resolve="ConnectionFactoryProvider.FBAdapterEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHk8IKE" role="37wK5m">
              <ref role="35c_gD" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHk8IKF" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHk9nQq" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
            </node>
            <node concept="359W_D" id="2lwHqHk8IKG" role="37wK5m">
              <ref role="359W_E" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
              <ref role="359W_F" to="xiqq:75nMhMfIWAY" resolve="component" />
            </node>
            <node concept="359W_D" id="2lwHqHk8IKH" role="37wK5m">
              <ref role="359W_E" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
              <ref role="359W_F" to="xiqq:75nMhMfIWB0" resolve="declaration" />
            </node>
            <node concept="1bVj0M" id="2lwHqHk8IKI" role="37wK5m">
              <node concept="3clFbS" id="2lwHqHk8IKJ" role="1bW5cS">
                <node concept="3clFbF" id="2lwHqHk8IKK" role="3cqZAp">
                  <node concept="2OqwBi" id="2lwHqHk8IKL" role="3clFbG">
                    <node concept="37vLTw" id="2lwHqHk8IKM" role="2Oq$k0">
                      <ref role="3cqZAo" node="2lwHqHk8IKO" resolve="fbtype" />
                    </node>
                    <node concept="3Tsc0h" id="2lwHqHk8P3h" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="2lwHqHk8IKO" role="1bW2Oz">
                <property role="TrG5h" value="fbtype" />
                <node concept="3Tqbb2" id="2lwHqHk8IKP" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk8IKQ" role="jymVt" />
      <node concept="312cEg" id="2lwHqHk8IKR" role="jymVt">
        <property role="TrG5h" value="mySocket" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHk8IKS" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHk8IKT" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="3Tqbb2" id="2lwHqHk8IKU" role="11_B2D">
            <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHk8IKV" role="33vP2m">
          <node concept="1pGfFk" id="2lwHqHk8IKW" role="2ShVmc">
            <ref role="37wK5l" node="2lwHqHk8kfw" resolve="ConnectionFactoryProvider.FBAdapterEndpointFactory" />
            <node concept="35c_gC" id="2lwHqHk8IKX" role="37wK5m">
              <ref role="35c_gD" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHk8IKY" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHk9lkx" role="1pMfVU">
              <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
            </node>
            <node concept="359W_D" id="2lwHqHk8IKZ" role="37wK5m">
              <ref role="359W_E" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
              <ref role="359W_F" to="xiqq:75nMhMfIPvb" resolve="component" />
            </node>
            <node concept="359W_D" id="2lwHqHk8IL0" role="37wK5m">
              <ref role="359W_E" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
              <ref role="359W_F" to="xiqq:75nMhMfIPvd" resolve="declaration" />
            </node>
            <node concept="1bVj0M" id="2lwHqHk8IL1" role="37wK5m">
              <node concept="3clFbS" id="2lwHqHk8IL2" role="1bW5cS">
                <node concept="3clFbF" id="2lwHqHk8IL3" role="3cqZAp">
                  <node concept="2OqwBi" id="2lwHqHk8IL4" role="3clFbG">
                    <node concept="37vLTw" id="2lwHqHk8IL5" role="2Oq$k0">
                      <ref role="3cqZAo" node="2lwHqHk8IL7" resolve="fbtype" />
                    </node>
                    <node concept="3Tsc0h" id="2lwHqHk8XfU" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="2lwHqHk8IL7" role="1bW2Oz">
                <property role="TrG5h" value="fbtype" />
                <node concept="3Tqbb2" id="2lwHqHk8IL8" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk8cL2" role="jymVt" />
      <node concept="312cEg" id="2lwHqHk4NPM" role="jymVt">
        <property role="TrG5h" value="myDataSources" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="2lwHqHk4NPN" role="1tU5fm">
          <node concept="3uibUv" id="2lwHqHk4NPO" role="_ZDj9">
            <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
            <node concept="3Tqbb2" id="2lwHqHk7jO2" role="11_B2D">
              <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
            </node>
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHk4NPQ" role="33vP2m">
          <node concept="Tc6Ow" id="2lwHqHk4NPR" role="2ShVmc">
            <node concept="37vLTw" id="2lwHqHk4NPS" role="HW$Y0">
              <ref role="3cqZAo" node="2lwHqHjZot8" resolve="myComponentDataSource" />
            </node>
            <node concept="37vLTw" id="2lwHqHk4NPT" role="HW$Y0">
              <ref role="3cqZAo" node="2lwHqHjXajY" resolve="myContextDataSource" />
            </node>
            <node concept="3uibUv" id="2lwHqHk4NPU" role="HW$YZ">
              <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
              <node concept="3Tqbb2" id="2lwHqHk4NPP" role="11_B2D">
                <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="2lwHqHk4NPW" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="2lwHqHk6MuG" role="jymVt" />
      <node concept="312cEg" id="2lwHqHk4NPB" role="jymVt">
        <property role="TrG5h" value="myDataDestinations" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="2lwHqHk4NPC" role="1tU5fm">
          <node concept="3uibUv" id="2lwHqHk4NPD" role="_ZDj9">
            <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
            <node concept="3Tqbb2" id="2lwHqHk4NPE" role="11_B2D">
              <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
            </node>
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHk4NPF" role="33vP2m">
          <node concept="Tc6Ow" id="2lwHqHk4NPG" role="2ShVmc">
            <node concept="3uibUv" id="2lwHqHk4NPH" role="HW$YZ">
              <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
              <node concept="3Tqbb2" id="2lwHqHk4NPI" role="11_B2D">
                <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
              </node>
            </node>
            <node concept="37vLTw" id="2lwHqHk4NPJ" role="HW$Y0">
              <ref role="3cqZAo" node="2lwHqHjZqip" resolve="myComponentDataDestination" />
            </node>
            <node concept="37vLTw" id="2lwHqHk4NPK" role="HW$Y0">
              <ref role="3cqZAo" node="2lwHqHjXakb" resolve="myContextDataDestination" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="2lwHqHk4NPL" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="2lwHqHk3vcV" role="jymVt" />
      <node concept="312cEg" id="2lwHqHk4IkW" role="jymVt">
        <property role="TrG5h" value="myEventSources" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="2lwHqHk4Il0" role="1tU5fm">
          <node concept="3uibUv" id="2lwHqHk4Il1" role="_ZDj9">
            <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
            <node concept="3Tqbb2" id="2lwHqHk4Il2" role="11_B2D">
              <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
            </node>
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHk4Il3" role="33vP2m">
          <node concept="Tc6Ow" id="2lwHqHk4Il4" role="2ShVmc">
            <node concept="3uibUv" id="2lwHqHk4Il5" role="HW$YZ">
              <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
              <node concept="3Tqbb2" id="2lwHqHk4Il6" role="11_B2D">
                <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
              </node>
            </node>
            <node concept="37vLTw" id="2lwHqHk7l6Y" role="HW$Y0">
              <ref role="3cqZAo" node="2lwHqHjUVI9" resolve="myComponentEventSource" />
            </node>
            <node concept="37vLTw" id="2lwHqHk7ls$" role="HW$Y0">
              <ref role="3cqZAo" node="2lwHqHjU5je" resolve="myContextEventSource" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="2lwHqHk4IkZ" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="2lwHqHk6O2A" role="jymVt" />
      <node concept="312cEg" id="2lwHqHk4d0y" role="jymVt">
        <property role="TrG5h" value="myEventDestinations" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="2lwHqHk4d0A" role="1tU5fm">
          <node concept="3uibUv" id="2lwHqHk4q5F" role="_ZDj9">
            <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
            <node concept="3Tqbb2" id="2lwHqHk4q5G" role="11_B2D">
              <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
            </node>
          </node>
        </node>
        <node concept="2ShNRf" id="2lwHqHk4d0B" role="33vP2m">
          <node concept="Tc6Ow" id="2lwHqHk4d0C" role="2ShVmc">
            <node concept="37vLTw" id="2lwHqHk7mJu" role="HW$Y0">
              <ref role="3cqZAo" node="2lwHqHjZmGf" resolve="myComponentEventDestination" />
            </node>
            <node concept="37vLTw" id="2lwHqHk7nb$" role="HW$Y0">
              <ref role="3cqZAo" node="2lwHqHjX42i" resolve="myContextEventDestination" />
            </node>
            <node concept="3uibUv" id="2lwHqHk4qXd" role="HW$YZ">
              <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
              <node concept="3Tqbb2" id="2lwHqHk4qXe" role="11_B2D">
                <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="2lwHqHk4d0_" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="2lwHqHk7Ram" role="jymVt" />
      <node concept="2tJIrI" id="2lwHqHk827l" role="jymVt" />
      <node concept="2tJIrI" id="2lwHqHk82bT" role="jymVt" />
      <node concept="3clFb_" id="2lwHqHk7MmA" role="jymVt">
        <property role="TrG5h" value="collectDataConnections" />
        <node concept="3Tm6S6" id="2lwHqHk7MmB" role="1B3o_S" />
        <node concept="3cqZAl" id="2lwHqHk7MmC" role="3clF45" />
        <node concept="37vLTG" id="2lwHqHk7Mmt" role="3clF46">
          <property role="TrG5h" value="connections" />
          <node concept="_YKpA" id="2lwHqHk7Mmu" role="1tU5fm">
            <node concept="3uibUv" id="2lwHqHk7Mmv" role="_ZDj9">
              <ref role="3uigEE" to="nkm5:7vufT$m5fkU" resolve="IConnectionType" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk7UbC" role="3clF46">
          <property role="TrG5h" value="reversed" />
          <node concept="10P_77" id="2lwHqHk7VNK" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2lwHqHk7MlY" role="3clF47">
          <node concept="2Gpval" id="2lwHqHk7MlZ" role="3cqZAp">
            <node concept="2GrKxI" id="2lwHqHk7Mm0" role="2Gsz3X">
              <property role="TrG5h" value="dataSource" />
            </node>
            <node concept="3clFbS" id="2lwHqHk7Mm1" role="2LFqv$">
              <node concept="2Gpval" id="2lwHqHk9vHk" role="3cqZAp">
                <node concept="3clFbS" id="2lwHqHk9vHp" role="2LFqv$">
                  <node concept="3clFbF" id="2lwHqHk9vHq" role="3cqZAp">
                    <node concept="2OqwBi" id="2lwHqHk9vHr" role="3clFbG">
                      <node concept="37vLTw" id="2lwHqHk9vHs" role="2Oq$k0">
                        <ref role="3cqZAo" node="2lwHqHk7Mmt" resolve="connections" />
                      </node>
                      <node concept="TSZUe" id="2lwHqHk9vHt" role="2OqNvi">
                        <node concept="2ShNRf" id="2lwHqHk9vHu" role="25WWJ7">
                          <node concept="1pGfFk" id="2lwHqHk9vHv" role="2ShVmc">
                            <ref role="37wK5l" node="2lwHqHk0oZT" resolve="ConnectionFactoryProvider.FBNetworkConnectionType" />
                            <node concept="2GrUjf" id="2lwHqHk9vHw" role="37wK5m">
                              <ref role="2Gs0qQ" node="2lwHqHk7Mm0" resolve="dataSource" />
                            </node>
                            <node concept="2GrUjf" id="2lwHqHk9vHC" role="37wK5m">
                              <ref role="2Gs0qQ" node="2lwHqHk9vHB" resolve="dataDestination" />
                            </node>
                            <node concept="37vLTw" id="2lwHqHk9vHy" role="37wK5m">
                              <ref role="3cqZAo" node="2lwHqHk2H40" resolve="myDataConnector" />
                            </node>
                            <node concept="37vLTw" id="2lwHqHk9vHz" role="37wK5m">
                              <ref role="3cqZAo" node="2lwHqHk7UbC" resolve="reversed" />
                            </node>
                            <node concept="37vLTw" id="2lwHqHk9vH$" role="37wK5m">
                              <ref role="3cqZAo" node="2lwHqHk3gB1" resolve="DESC_DATA_CONNECTION" />
                            </node>
                            <node concept="3Tqbb2" id="2lwHqHk9vH_" role="1pMfVU">
                              <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
                            </node>
                            <node concept="3Tqbb2" id="2lwHqHk9vHA" role="1pMfVU">
                              <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2lwHqHk9vHo" role="2GsD0m">
                  <ref role="3cqZAo" node="2lwHqHk4NPB" resolve="myDataDestinations" />
                </node>
                <node concept="2GrKxI" id="2lwHqHk9vHB" role="2Gsz3X">
                  <property role="TrG5h" value="dataDestination" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2lwHqHk7ZMF" role="2GsD0m">
              <ref role="3cqZAo" node="2lwHqHk4NPM" resolve="myDataSources" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2lwHqHk83QF" role="jymVt">
        <property role="TrG5h" value="collectEventConnections" />
        <node concept="3Tm6S6" id="2lwHqHk83QG" role="1B3o_S" />
        <node concept="3cqZAl" id="2lwHqHk83QH" role="3clF45" />
        <node concept="37vLTG" id="2lwHqHk83QI" role="3clF46">
          <property role="TrG5h" value="connections" />
          <node concept="_YKpA" id="2lwHqHk83QJ" role="1tU5fm">
            <node concept="3uibUv" id="2lwHqHk83QK" role="_ZDj9">
              <ref role="3uigEE" to="nkm5:7vufT$m5fkU" resolve="IConnectionType" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk83QL" role="3clF46">
          <property role="TrG5h" value="reversed" />
          <node concept="10P_77" id="2lwHqHk83QM" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2lwHqHk83QN" role="3clF47">
          <node concept="2Gpval" id="2lwHqHk83QO" role="3cqZAp">
            <node concept="2GrKxI" id="2lwHqHk83QP" role="2Gsz3X">
              <property role="TrG5h" value="eventSource" />
            </node>
            <node concept="3clFbS" id="2lwHqHk83QQ" role="2LFqv$">
              <node concept="2Gpval" id="2lwHqHk9wio" role="3cqZAp">
                <node concept="3clFbS" id="2lwHqHk9wit" role="2LFqv$">
                  <node concept="3clFbF" id="2lwHqHk9wiu" role="3cqZAp">
                    <node concept="2OqwBi" id="2lwHqHk9wiv" role="3clFbG">
                      <node concept="37vLTw" id="2lwHqHk9wiw" role="2Oq$k0">
                        <ref role="3cqZAo" node="2lwHqHk83QI" resolve="connections" />
                      </node>
                      <node concept="TSZUe" id="2lwHqHk9wix" role="2OqNvi">
                        <node concept="2ShNRf" id="2lwHqHk9wiy" role="25WWJ7">
                          <node concept="1pGfFk" id="2lwHqHk9wiz" role="2ShVmc">
                            <ref role="37wK5l" node="2lwHqHk0oZT" resolve="ConnectionFactoryProvider.FBNetworkConnectionType" />
                            <node concept="2GrUjf" id="2lwHqHk9wi$" role="37wK5m">
                              <ref role="2Gs0qQ" node="2lwHqHk83QP" resolve="eventSource" />
                            </node>
                            <node concept="2GrUjf" id="2lwHqHk9wiG" role="37wK5m">
                              <ref role="2Gs0qQ" node="2lwHqHk9wiF" resolve="eventDestination" />
                            </node>
                            <node concept="37vLTw" id="2lwHqHk9HGi" role="37wK5m">
                              <ref role="3cqZAo" node="2lwHqHk2kJf" resolve="myEventConnector" />
                            </node>
                            <node concept="37vLTw" id="2lwHqHk9wiB" role="37wK5m">
                              <ref role="3cqZAo" node="2lwHqHk83QL" resolve="reversed" />
                            </node>
                            <node concept="37vLTw" id="2lwHqHk9Ia5" role="37wK5m">
                              <ref role="3cqZAo" node="2lwHqHk3eho" resolve="DESC_EVENT_CONNECTION" />
                            </node>
                            <node concept="3Tqbb2" id="2lwHqHk9wiD" role="1pMfVU">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
                            </node>
                            <node concept="3Tqbb2" id="2lwHqHk9wiE" role="1pMfVU">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2lwHqHk9Gkp" role="2GsD0m">
                  <ref role="3cqZAo" node="2lwHqHk4d0y" resolve="myEventDestinations" />
                </node>
                <node concept="2GrKxI" id="2lwHqHk9wiF" role="2Gsz3X">
                  <property role="TrG5h" value="eventDestination" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2lwHqHk9A9F" role="2GsD0m">
              <ref role="3cqZAo" node="2lwHqHk4IkW" resolve="myEventSources" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2lwHqHk88Kd" role="jymVt">
        <property role="TrG5h" value="collectAdapterConnections" />
        <node concept="3Tm6S6" id="2lwHqHk88Ke" role="1B3o_S" />
        <node concept="3cqZAl" id="2lwHqHk88Kf" role="3clF45" />
        <node concept="37vLTG" id="2lwHqHk88Kg" role="3clF46">
          <property role="TrG5h" value="connections" />
          <node concept="_YKpA" id="2lwHqHk88Kh" role="1tU5fm">
            <node concept="3uibUv" id="2lwHqHk88Ki" role="_ZDj9">
              <ref role="3uigEE" to="nkm5:7vufT$m5fkU" resolve="IConnectionType" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk88Kj" role="3clF46">
          <property role="TrG5h" value="reversed" />
          <node concept="10P_77" id="2lwHqHk88Kk" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2lwHqHk88Kl" role="3clF47">
          <node concept="3clFbF" id="2lwHqHk9y0R" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHk9y0S" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk9y0T" role="2Oq$k0">
                <ref role="3cqZAo" node="2lwHqHk88Kg" resolve="connections" />
              </node>
              <node concept="TSZUe" id="2lwHqHk9y0U" role="2OqNvi">
                <node concept="2ShNRf" id="2lwHqHk9y0V" role="25WWJ7">
                  <node concept="1pGfFk" id="2lwHqHk9y0W" role="2ShVmc">
                    <ref role="37wK5l" node="2lwHqHk0oZT" resolve="ConnectionFactoryProvider.FBNetworkConnectionType" />
                    <node concept="37vLTw" id="2lwHqHk9$yQ" role="37wK5m">
                      <ref role="3cqZAo" node="2lwHqHk8IK$" resolve="myPlug" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHk9$TK" role="37wK5m">
                      <ref role="3cqZAo" node="2lwHqHk8IKR" resolve="mySocket" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHk9_n5" role="37wK5m">
                      <ref role="3cqZAo" node="2lwHqHk2JfJ" resolve="myAdapterConnector" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHk9y10" role="37wK5m">
                      <ref role="3cqZAo" node="2lwHqHk88Kj" resolve="reversed" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHk9IFp" role="37wK5m">
                      <ref role="3cqZAo" node="2lwHqHk3iVl" resolve="DESC_ADAPTER_CONNECTION" />
                    </node>
                    <node concept="3Tqbb2" id="2lwHqHk9y12" role="1pMfVU">
                      <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                    </node>
                    <node concept="3Tqbb2" id="2lwHqHk9y13" role="1pMfVU">
                      <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHka3dY" role="jymVt" />
      <node concept="3clFb_" id="2lwHqHk9PnK" role="jymVt">
        <property role="TrG5h" value="collectConnections" />
        <node concept="3clFbS" id="2lwHqHk9PnN" role="3clF47">
          <node concept="3cpWs8" id="2lwHqHk9T$0" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHk9T$1" role="3cpWs9">
              <property role="TrG5h" value="res" />
              <node concept="_YKpA" id="2lwHqHk9TzW" role="1tU5fm">
                <node concept="3uibUv" id="2lwHqHk9TzZ" role="_ZDj9">
                  <ref role="3uigEE" to="nkm5:7vufT$m5fkU" resolve="IConnectionType" />
                </node>
              </node>
              <node concept="2ShNRf" id="2lwHqHk9T$2" role="33vP2m">
                <node concept="Tc6Ow" id="2lwHqHk9T$3" role="2ShVmc">
                  <node concept="3uibUv" id="2lwHqHk9T$4" role="HW$YZ">
                    <ref role="3uigEE" to="nkm5:7vufT$m5fkU" resolve="IConnectionType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk9U0t" role="3cqZAp">
            <node concept="1rXfSq" id="2lwHqHk9U0r" role="3clFbG">
              <ref role="37wK5l" node="2lwHqHk7MmA" resolve="collectDataConnections" />
              <node concept="37vLTw" id="2lwHqHk9UdV" role="37wK5m">
                <ref role="3cqZAo" node="2lwHqHk9T$1" resolve="res" />
              </node>
              <node concept="3clFbT" id="2lwHqHk9Uta" role="37wK5m" />
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk9Uwk" role="3cqZAp">
            <node concept="1rXfSq" id="2lwHqHk9Uwl" role="3clFbG">
              <ref role="37wK5l" node="2lwHqHk7MmA" resolve="collectDataConnections" />
              <node concept="37vLTw" id="2lwHqHk9Uwm" role="37wK5m">
                <ref role="3cqZAo" node="2lwHqHk9T$1" resolve="res" />
              </node>
              <node concept="3clFbT" id="2lwHqHka0eB" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk9UD3" role="3cqZAp">
            <node concept="1rXfSq" id="2lwHqHk9UD4" role="3clFbG">
              <ref role="37wK5l" node="2lwHqHk83QF" resolve="collectEventConnections" />
              <node concept="37vLTw" id="2lwHqHk9UD5" role="37wK5m">
                <ref role="3cqZAo" node="2lwHqHk9T$1" resolve="res" />
              </node>
              <node concept="3clFbT" id="2lwHqHk9UD6" role="37wK5m" />
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk9UGZ" role="3cqZAp">
            <node concept="1rXfSq" id="2lwHqHk9UH0" role="3clFbG">
              <ref role="37wK5l" node="2lwHqHk83QF" resolve="collectEventConnections" />
              <node concept="37vLTw" id="2lwHqHk9UH1" role="37wK5m">
                <ref role="3cqZAo" node="2lwHqHk9T$1" resolve="res" />
              </node>
              <node concept="3clFbT" id="2lwHqHka0pf" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk9UL9" role="3cqZAp">
            <node concept="1rXfSq" id="2lwHqHk9ULa" role="3clFbG">
              <ref role="37wK5l" node="2lwHqHk88Kd" resolve="collectAdapterConnections" />
              <node concept="37vLTw" id="2lwHqHk9ULb" role="37wK5m">
                <ref role="3cqZAo" node="2lwHqHk9T$1" resolve="res" />
              </node>
              <node concept="3clFbT" id="2lwHqHk9ULc" role="37wK5m" />
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk9Vyr" role="3cqZAp">
            <node concept="1rXfSq" id="2lwHqHk9Vys" role="3clFbG">
              <ref role="37wK5l" node="2lwHqHk88Kd" resolve="collectAdapterConnections" />
              <node concept="37vLTw" id="2lwHqHk9Vyt" role="37wK5m">
                <ref role="3cqZAo" node="2lwHqHk9T$1" resolve="res" />
              </node>
              <node concept="3clFbT" id="2lwHqHka0zR" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2lwHqHka0Py" role="3cqZAp">
            <node concept="37vLTw" id="2lwHqHka12Q" role="3cqZAk">
              <ref role="3cqZAo" node="2lwHqHk9T$1" resolve="res" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="2lwHqHk9IXZ" role="1B3o_S" />
        <node concept="_YKpA" id="2lwHqHk9P6N" role="3clF45">
          <node concept="3uibUv" id="2lwHqHk9Pc4" role="_ZDj9">
            <ref role="3uigEE" to="nkm5:7vufT$m5fkU" resolve="IConnectionType" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2lwHqHk3qou" role="jymVt" />
    <node concept="312cEu" id="2lwHqHjZERg" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="FBNetworkConnectionType" />
      <node concept="312cEg" id="2lwHqHjZHYi" role="jymVt">
        <property role="TrG5h" value="mySourceFactory" />
        <node concept="3Tm6S6" id="2lwHqHjZGIu" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjZGRF" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="16syzq" id="2lwHqHjZHeI" role="11_B2D">
            <ref role="16sUi3" node="2lwHqHjZGK2" resolve="Source" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="2lwHqHjZIh5" role="jymVt">
        <property role="TrG5h" value="myDestinationFactory" />
        <node concept="3Tm6S6" id="2lwHqHjZIh6" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjZIh7" role="1tU5fm">
          <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
          <node concept="16syzq" id="2lwHqHjZIGQ" role="11_B2D">
            <ref role="16sUi3" node="2lwHqHjZGMj" resolve="Destination" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="2lwHqHk0oOr" role="jymVt">
        <property role="TrG5h" value="myConnector" />
        <node concept="3Tm6S6" id="2lwHqHjZIM_" role="1B3o_S" />
        <node concept="1ajhzC" id="2lwHqHjZIZL" role="1tU5fm">
          <node concept="3cqZAl" id="2lwHqHjZJ7A" role="1ajl9A" />
          <node concept="16syzq" id="2lwHqHjZJ2o" role="1ajw0F">
            <ref role="16sUi3" node="2lwHqHjZGK2" resolve="Source" />
          </node>
          <node concept="16syzq" id="2lwHqHjZJ53" role="1ajw0F">
            <ref role="16sUi3" node="2lwHqHjZGMj" resolve="Destination" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="2lwHqHk13J1" role="jymVt">
        <property role="TrG5h" value="myReversed" />
        <node concept="3Tm6S6" id="2lwHqHk13l6" role="1B3o_S" />
        <node concept="10P_77" id="2lwHqHk13Ev" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2lwHqHk1rf9" role="jymVt">
        <property role="TrG5h" value="myDescription" />
        <node concept="3Tm6S6" id="2lwHqHk1q_Z" role="1B3o_S" />
        <node concept="17QB3L" id="2lwHqHk1r7U" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="2lwHqHk0oV$" role="jymVt" />
      <node concept="3Tm6S6" id="2lwHqHk0urB" role="1B3o_S" />
      <node concept="16euLQ" id="2lwHqHjZGK2" role="16eVyc">
        <property role="TrG5h" value="Source" />
        <node concept="3uibUv" id="2lwHqHjZHku" role="3ztrMU">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="16euLQ" id="2lwHqHjZGMj" role="16eVyc">
        <property role="TrG5h" value="Destination" />
        <node concept="3uibUv" id="2lwHqHjZHED" role="3ztrMU">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbW" id="2lwHqHk0oZT" role="jymVt">
        <node concept="3cqZAl" id="2lwHqHk0oZU" role="3clF45" />
        <node concept="3Tm1VV" id="2lwHqHk0oZV" role="1B3o_S" />
        <node concept="3clFbS" id="2lwHqHk0oZX" role="3clF47">
          <node concept="3clFbF" id="2lwHqHk0p02" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHk0p04" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk14qn" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHjZHYi" resolve="mySourceFactory" />
              </node>
              <node concept="37vLTw" id="2lwHqHk0p0b" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHk0p01" resolve="sourceFactory" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk0p0f" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHk0p0h" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk14zD" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHjZIh5" resolve="myDestinationFactory" />
              </node>
              <node concept="37vLTw" id="2lwHqHk0p0o" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHk0p0e" resolve="destinationFactory" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk0p0u" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHk0p0w" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk14ES" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHk0oOr" resolve="myConnector" />
              </node>
              <node concept="37vLTw" id="2lwHqHk0p0B" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHk0p0t" resolve="connector" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk150M" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHk164o" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk16ta" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHk142f" resolve="reversed" />
              </node>
              <node concept="37vLTw" id="2lwHqHk150K" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHk13J1" resolve="myReversed" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk1wAl" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHk1y1U" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk1yxX" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHk1vSZ" resolve="description" />
              </node>
              <node concept="37vLTw" id="2lwHqHk1wAj" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHk1rf9" resolve="myDescription" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk0p01" role="3clF46">
          <property role="TrG5h" value="sourceFactory" />
          <node concept="3uibUv" id="2lwHqHk0oZZ" role="1tU5fm">
            <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
            <node concept="16syzq" id="2lwHqHk0p00" role="11_B2D">
              <ref role="16sUi3" node="2lwHqHjZGK2" resolve="Source" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk0p0e" role="3clF46">
          <property role="TrG5h" value="destinationFactory" />
          <node concept="3uibUv" id="2lwHqHk0p0c" role="1tU5fm">
            <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
            <node concept="16syzq" id="2lwHqHk0p0d" role="11_B2D">
              <ref role="16sUi3" node="2lwHqHjZGMj" resolve="Destination" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk0p0t" role="3clF46">
          <property role="TrG5h" value="connector" />
          <node concept="1ajhzC" id="2lwHqHk0p0p" role="1tU5fm">
            <node concept="3cqZAl" id="2lwHqHk0p0q" role="1ajl9A" />
            <node concept="16syzq" id="2lwHqHk0p0r" role="1ajw0F">
              <ref role="16sUi3" node="2lwHqHjZGK2" resolve="Source" />
            </node>
            <node concept="16syzq" id="2lwHqHk0p0s" role="1ajw0F">
              <ref role="16sUi3" node="2lwHqHjZGMj" resolve="Destination" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk142f" role="3clF46">
          <property role="TrG5h" value="reversed" />
          <node concept="10P_77" id="2lwHqHk14g8" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2lwHqHk1vSZ" role="3clF46">
          <property role="TrG5h" value="description" />
          <node concept="17QB3L" id="2lwHqHk1wbO" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk0pDW" role="jymVt" />
      <node concept="3clFb_" id="2lwHqHk0pOa" role="jymVt">
        <property role="TrG5h" value="isValidStart" />
        <node concept="10P_77" id="2lwHqHk0pOb" role="3clF45" />
        <node concept="3Tm1VV" id="2lwHqHk0pOc" role="1B3o_S" />
        <node concept="37vLTG" id="2lwHqHk0pOe" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk0pOf" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
        <node concept="3clFbS" id="2lwHqHk0pOg" role="3clF47">
          <node concept="3cpWs8" id="2lwHqHk1axN" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHk1axO" role="3cpWs9">
              <property role="TrG5h" value="factory" />
              <node concept="3uibUv" id="2lwHqHk1axJ" role="1tU5fm">
                <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
                <node concept="3qTvmN" id="2lwHqHk1bcs" role="11_B2D" />
              </node>
              <node concept="3K4zz7" id="2lwHqHk1c2B" role="33vP2m">
                <node concept="37vLTw" id="2lwHqHk1cpn" role="3K4E3e">
                  <ref role="3cqZAo" node="2lwHqHjZIh5" resolve="myDestinationFactory" />
                </node>
                <node concept="37vLTw" id="2lwHqHk1cL9" role="3K4GZi">
                  <ref role="3cqZAo" node="2lwHqHjZHYi" resolve="mySourceFactory" />
                </node>
                <node concept="37vLTw" id="2lwHqHk1buq" role="3K4Cdx">
                  <ref role="3cqZAo" node="2lwHqHk13J1" resolve="myReversed" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk0qnh" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHk0qIv" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk1axQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2lwHqHk1axO" resolve="factory" />
              </node>
              <node concept="liA8E" id="2lwHqHk0r1F" role="2OqNvi">
                <ref role="37wK5l" node="2lwHqHjTUVx" resolve="isSupproted" />
                <node concept="37vLTw" id="2lwHqHk10vF" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHk0pOe" resolve="endpoint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHk0pOh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2lwHqHk0pOk" role="jymVt">
        <property role="TrG5h" value="isValidEnd" />
        <node concept="10P_77" id="2lwHqHk0pOl" role="3clF45" />
        <node concept="3Tm1VV" id="2lwHqHk0pOm" role="1B3o_S" />
        <node concept="37vLTG" id="2lwHqHk0pOo" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk0pOp" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
        <node concept="3clFbS" id="2lwHqHk0pOq" role="3clF47">
          <node concept="3cpWs8" id="2lwHqHk1d2z" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHk1d2$" role="3cpWs9">
              <property role="TrG5h" value="factory" />
              <node concept="3uibUv" id="2lwHqHk1d2_" role="1tU5fm">
                <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
                <node concept="3qTvmN" id="2lwHqHk1d2A" role="11_B2D" />
              </node>
              <node concept="3K4zz7" id="2lwHqHk1d2B" role="33vP2m">
                <node concept="37vLTw" id="2lwHqHk1eeh" role="3K4Cdx">
                  <ref role="3cqZAo" node="2lwHqHk13J1" resolve="myReversed" />
                </node>
                <node concept="37vLTw" id="2lwHqHk1eej" role="3K4E3e">
                  <ref role="3cqZAo" node="2lwHqHjZHYi" resolve="mySourceFactory" />
                </node>
                <node concept="37vLTw" id="2lwHqHk1eei" role="3K4GZi">
                  <ref role="3cqZAo" node="2lwHqHjZIh5" resolve="myDestinationFactory" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk0tyg" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHk0tyh" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk1dUe" role="2Oq$k0">
                <ref role="3cqZAo" node="2lwHqHk1d2$" resolve="factory" />
              </node>
              <node concept="liA8E" id="2lwHqHk0tyj" role="2OqNvi">
                <ref role="37wK5l" node="2lwHqHjTUVx" resolve="isSupproted" />
                <node concept="37vLTw" id="2lwHqHk10Iy" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHk0pOo" resolve="endpoint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHk0pOr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2lwHqHklB3x" role="jymVt">
        <property role="TrG5h" value="canCreate" />
        <node concept="10P_77" id="2lwHqHklB3y" role="3clF45" />
        <node concept="3Tm1VV" id="2lwHqHklB3z" role="1B3o_S" />
        <node concept="37vLTG" id="2lwHqHklB3$" role="3clF46">
          <property role="TrG5h" value="from" />
          <node concept="3uibUv" id="2lwHqHklB3_" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHklB3A" role="3clF46">
          <property role="TrG5h" value="to" />
          <node concept="3uibUv" id="2lwHqHklB3B" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHklB3C" role="3clF46">
          <property role="TrG5h" value="reasons" />
          <node concept="3uibUv" id="2lwHqHklB3D" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="17QB3L" id="2lwHqHklB3E" role="11_B2D" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHklB3V" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="2lwHqHklB3W" role="3clF47">
          <node concept="3SKdUt" id="2lwHqHklEXk" role="3cqZAp">
            <node concept="3SKdUq" id="2lwHqHklEXm" role="3SKWNk">
              <property role="3SKdUp" value="TODO check endpoint type compliance" />
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHklD3W" role="3cqZAp">
            <node concept="3clFbT" id="2lwHqHklD3V" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2lwHqHk0pOu" role="jymVt">
        <property role="TrG5h" value="create" />
        <node concept="37vLTG" id="2lwHqHk0pOv" role="3clF46">
          <property role="TrG5h" value="from" />
          <node concept="3uibUv" id="2lwHqHk0pOw" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk0pOx" role="3clF46">
          <property role="TrG5h" value="to" />
          <node concept="3uibUv" id="2lwHqHk0pOy" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
        <node concept="3cqZAl" id="2lwHqHk0pOz" role="3clF45" />
        <node concept="3Tm1VV" id="2lwHqHk0pO$" role="1B3o_S" />
        <node concept="3clFbS" id="2lwHqHk0pOA" role="3clF47">
          <node concept="3cpWs8" id="2lwHqHk0yxQ" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHk0yxR" role="3cpWs9">
              <property role="TrG5h" value="source" />
              <node concept="16syzq" id="2lwHqHk0yxN" role="1tU5fm">
                <ref role="16sUi3" node="2lwHqHjZGK2" resolve="Source" />
              </node>
              <node concept="2OqwBi" id="2lwHqHk0yxS" role="33vP2m">
                <node concept="37vLTw" id="2lwHqHk0yxT" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHjZHYi" resolve="mySourceFactory" />
                </node>
                <node concept="liA8E" id="2lwHqHk0yxU" role="2OqNvi">
                  <ref role="37wK5l" node="2lwHqHjTZDd" resolve="create" />
                  <node concept="3K4zz7" id="2lwHqHk187B" role="37wK5m">
                    <node concept="37vLTw" id="2lwHqHk18oL" role="3K4E3e">
                      <ref role="3cqZAo" node="2lwHqHk0pOx" resolve="to" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHk18Dy" role="3K4GZi">
                      <ref role="3cqZAo" node="2lwHqHk0pOv" resolve="from" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHk17vs" role="3K4Cdx">
                      <ref role="3cqZAo" node="2lwHqHk13J1" resolve="myReversed" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2lwHqHk0z_B" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHk0z_E" role="3cpWs9">
              <property role="TrG5h" value="destination" />
              <node concept="16syzq" id="2lwHqHk0z__" role="1tU5fm">
                <ref role="16sUi3" node="2lwHqHjZGMj" resolve="Destination" />
              </node>
              <node concept="2OqwBi" id="2lwHqHk0$fx" role="33vP2m">
                <node concept="37vLTw" id="2lwHqHk0zWB" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHjZIh5" resolve="myDestinationFactory" />
                </node>
                <node concept="liA8E" id="2lwHqHk0Bdq" role="2OqNvi">
                  <ref role="37wK5l" node="2lwHqHjTZDd" resolve="create" />
                  <node concept="3K4zz7" id="2lwHqHk19En" role="37wK5m">
                    <node concept="37vLTw" id="2lwHqHk19Vx" role="3K4E3e">
                      <ref role="3cqZAo" node="2lwHqHk0pOv" resolve="from" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHk1aci" role="3K4GZi">
                      <ref role="3cqZAo" node="2lwHqHk0pOx" resolve="to" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHk193c" role="3K4Cdx">
                      <ref role="3cqZAo" node="2lwHqHk13J1" resolve="myReversed" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk11TH" role="3cqZAp">
            <node concept="2Sg_IR" id="2lwHqHk12aM" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk12aN" role="2SgG2M">
                <ref role="3cqZAo" node="2lwHqHk0oOr" resolve="myConnector" />
              </node>
              <node concept="37vLTw" id="2lwHqHk12qj" role="2SgHGx">
                <ref role="3cqZAo" node="2lwHqHk0yxR" resolve="source" />
              </node>
              <node concept="37vLTw" id="2lwHqHk12Iu" role="2SgHGx">
                <ref role="3cqZAo" node="2lwHqHk0z_E" resolve="destination" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHk0pOB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2lwHqHk1tGh" role="jymVt">
        <property role="TrG5h" value="getName" />
        <node concept="17QB3L" id="2lwHqHk1tGi" role="3clF45" />
        <node concept="3Tm1VV" id="2lwHqHk1tGj" role="1B3o_S" />
        <node concept="3clFbS" id="2lwHqHk1tGm" role="3clF47">
          <node concept="3clFbF" id="2lwHqHk1vA5" role="3cqZAp">
            <node concept="37vLTw" id="2lwHqHk1vA4" role="3clFbG">
              <ref role="3cqZAo" node="2lwHqHk1rf9" resolve="myDescription" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHk1tGn" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="2lwHqHk1h_w" role="1zkMxy">
        <ref role="3uigEE" to="nkm5:1WEXgBGvl4s" resolve="AbstractConnectionType" />
      </node>
    </node>
    <node concept="2tJIrI" id="2lwHqHk4NPA" role="jymVt" />
    <node concept="3HP615" id="2lwHqHjTURT" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="EndpointFactory" />
      <node concept="3clFb_" id="2lwHqHjTUVx" role="jymVt">
        <property role="TrG5h" value="isSupproted" />
        <node concept="3clFbS" id="2lwHqHjTUV$" role="3clF47" />
        <node concept="3Tm1VV" id="2lwHqHjTUV_" role="1B3o_S" />
        <node concept="10P_77" id="2lwHqHjTUVj" role="3clF45" />
        <node concept="37vLTG" id="2lwHqHk0IFh" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk0IFi" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2lwHqHjTZDd" role="jymVt">
        <property role="TrG5h" value="create" />
        <node concept="3clFbS" id="2lwHqHjTZDe" role="3clF47" />
        <node concept="3Tm1VV" id="2lwHqHjTZDf" role="1B3o_S" />
        <node concept="16syzq" id="2lwHqHjTZTw" role="3clF45">
          <ref role="16sUi3" node="2lwHqHjTZJk" resolve="Endpoint" />
        </node>
        <node concept="37vLTG" id="2lwHqHk0ToP" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk0ToQ" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2lwHqHjTURU" role="1B3o_S" />
      <node concept="16euLQ" id="2lwHqHjTZJk" role="16eVyc">
        <property role="TrG5h" value="Endpoint" />
        <node concept="3uibUv" id="2lwHqHjW7DS" role="3ztrMU">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2lwHqHk66EL" role="jymVt" />
    <node concept="312cEu" id="2lwHqHjW3qa" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ContextEndpointFactory" />
      <node concept="312cEg" id="2lwHqHjW8JM" role="jymVt">
        <property role="TrG5h" value="myEndpointConcept" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjW8_i" role="1B3o_S" />
        <node concept="3bZ5Sz" id="2lwHqHjW8J$" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2lwHqHjWAka" role="jymVt">
        <property role="TrG5h" value="myTargetLink" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjWAkb" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjWANK" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="312cEg" id="2lwHqHjW9aU" role="jymVt">
        <property role="TrG5h" value="myContextTargets" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjW8R0" role="1B3o_S" />
        <node concept="_YKpA" id="2lwHqHjW94H" role="1tU5fm">
          <node concept="3Tqbb2" id="2lwHqHjW9aR" role="_ZDj9" />
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHjW8wV" role="jymVt" />
      <node concept="3Tm6S6" id="2lwHqHjW2AR" role="1B3o_S" />
      <node concept="3uibUv" id="2lwHqHjW4EX" role="EKbjA">
        <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
        <node concept="16syzq" id="2lwHqHjW5fy" role="11_B2D">
          <ref role="16sUi3" node="2lwHqHjW5c$" resolve="Endpoint" />
        </node>
      </node>
      <node concept="16euLQ" id="2lwHqHjW5c$" role="16eVyc">
        <property role="TrG5h" value="Endpoint" />
        <node concept="3uibUv" id="2lwHqHjW6_7" role="3ztrMU">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbW" id="2lwHqHjW9eO" role="jymVt">
        <node concept="3cqZAl" id="2lwHqHjW9eP" role="3clF45" />
        <node concept="3Tm6S6" id="2lwHqHjW9eQ" role="1B3o_S" />
        <node concept="3clFbS" id="2lwHqHjW9eS" role="3clF47">
          <node concept="3clFbF" id="2lwHqHjW9eW" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHjW9eY" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHjWaM8" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHjW8JM" resolve="myEndpointConcept" />
              </node>
              <node concept="37vLTw" id="2lwHqHjW9f5" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHjW9eV" resolve="endpointConcept" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHjWCcq" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHjWES3" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHjWFnQ" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHjWAWT" resolve="targetLink" />
              </node>
              <node concept="37vLTw" id="2lwHqHjWCco" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHjWAka" resolve="myTargetLink" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHjW9f9" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHjW9fb" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHjWaUP" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHjW9aU" resolve="myContextTargets" />
              </node>
              <node concept="37vLTw" id="2lwHqHjW9fi" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHjW9f8" resolve="contextTargets" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHjW9eV" role="3clF46">
          <property role="TrG5h" value="endpointConcept" />
          <node concept="3bZ5Sz" id="2lwHqHjW9eU" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2lwHqHjWAWT" role="3clF46">
          <property role="TrG5h" value="targetLink" />
          <node concept="3uibUv" id="2lwHqHjWBlN" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHjW9f8" role="3clF46">
          <property role="TrG5h" value="contextTargets" />
          <node concept="_YKpA" id="2lwHqHjW9f6" role="1tU5fm">
            <node concept="3Tqbb2" id="2lwHqHjW9f7" role="_ZDj9" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHjW9HG" role="jymVt" />
      <node concept="2tJIrI" id="2lwHqHjW9Ib" role="jymVt" />
      <node concept="3clFb_" id="2lwHqHjW9UZ" role="jymVt">
        <property role="TrG5h" value="isSupproted" />
        <node concept="3Tm1VV" id="2lwHqHjW9V1" role="1B3o_S" />
        <node concept="10P_77" id="2lwHqHjW9V2" role="3clF45" />
        <node concept="3clFbS" id="2lwHqHjW9V7" role="3clF47">
          <node concept="3clFbF" id="2lwHqHjWbh0" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHjWcDq" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHjWbgX" role="2Oq$k0">
                <ref role="3cqZAo" node="2lwHqHjW9aU" resolve="myContextTargets" />
              </node>
              <node concept="3JPx81" id="2lwHqHjW_M0" role="2OqNvi">
                <node concept="2OqwBi" id="2lwHqHk0L9i" role="25WWJ7">
                  <node concept="37vLTw" id="2lwHqHk0KNw" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHk0IFd" resolve="endpoint" />
                  </node>
                  <node concept="liA8E" id="2lwHqHk0LJG" role="2OqNvi">
                    <ref role="37wK5l" to="nkm5:6clvLV1Yg6Z" resolve="getSNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHjW9V8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="37vLTG" id="2lwHqHk0IFd" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk0IFe" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2lwHqHjW9Vb" role="jymVt">
        <property role="TrG5h" value="create" />
        <node concept="3Tm1VV" id="2lwHqHjW9Vd" role="1B3o_S" />
        <node concept="16syzq" id="2lwHqHjW9Vj" role="3clF45">
          <ref role="16sUi3" node="2lwHqHjW5c$" resolve="Endpoint" />
        </node>
        <node concept="3clFbS" id="2lwHqHjW9Vk" role="3clF47">
          <node concept="3cpWs8" id="2lwHqHjWFIY" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHjWFJ1" role="3cpWs9">
              <property role="TrG5h" value="e" />
              <node concept="3Tqbb2" id="2lwHqHjWFIX" role="1tU5fm" />
              <node concept="2OqwBi" id="2lwHqHjWGz1" role="33vP2m">
                <node concept="37vLTw" id="2lwHqHjWG4h" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHjW8JM" resolve="myEndpointConcept" />
                </node>
                <node concept="LFhST" id="2lwHqHjWGXm" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHjWJyW" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHjWKAz" role="3clFbG">
              <node concept="liA8E" id="2lwHqHjWQHI" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode):void" resolve="setReferenceTarget" />
                <node concept="37vLTw" id="2lwHqHjWR3g" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHjWAka" resolve="myTargetLink" />
                </node>
                <node concept="2OqwBi" id="2lwHqHk0VoA" role="37wK5m">
                  <node concept="37vLTw" id="2lwHqHk0WuT" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHk0ToL" resolve="endpoint" />
                  </node>
                  <node concept="liA8E" id="2lwHqHk0VoC" role="2OqNvi">
                    <ref role="37wK5l" to="nkm5:6clvLV1Yg6Z" resolve="getSNode" />
                  </node>
                </node>
              </node>
              <node concept="2JrnkZ" id="2lwHqHjWKAC" role="2Oq$k0">
                <node concept="37vLTw" id="2lwHqHjWJyU" role="2JrQYb">
                  <ref role="3cqZAo" node="2lwHqHjWFJ1" resolve="e" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2lwHqHjWSnR" role="3cqZAp">
            <node concept="10QFUN" id="2lwHqHjWVF$" role="3cqZAk">
              <node concept="37vLTw" id="2lwHqHjWVFz" role="10QFUP">
                <ref role="3cqZAo" node="2lwHqHjWFJ1" resolve="e" />
              </node>
              <node concept="16syzq" id="2lwHqHjWVFy" role="10QFUM">
                <ref role="16sUi3" node="2lwHqHjW5c$" resolve="Endpoint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHjW9Vl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="37vLTG" id="2lwHqHk0ToL" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk0ToM" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2lwHqHk5Hn6" role="jymVt" />
    <node concept="312cEu" id="2lwHqHjXg5x" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ComponentEndpointFactory" />
      <node concept="312cEg" id="2lwHqHjXg5y" role="jymVt">
        <property role="TrG5h" value="myEndpointConcept" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjXg5z" role="1B3o_S" />
        <node concept="3bZ5Sz" id="2lwHqHjXg5$" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2lwHqHjXkCk" role="jymVt">
        <property role="TrG5h" value="myComponentLink" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjXkCl" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjXkCm" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="312cEg" id="2lwHqHjXg5_" role="jymVt">
        <property role="TrG5h" value="myTargetLink" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjXg5A" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHjXg5B" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="312cEg" id="2lwHqHjXg5C" role="jymVt">
        <property role="TrG5h" value="myComponentTargets" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHjXg5D" role="1B3o_S" />
        <node concept="1ajhzC" id="2lwHqHjXkwI" role="1tU5fm">
          <node concept="2I9FWS" id="2lwHqHjXkwJ" role="1ajl9A">
            <ref role="2I9WkF" to="tpck:h0TrEE$" resolve="INamedConcept" />
          </node>
          <node concept="3Tqbb2" id="2lwHqHjXkwK" role="1ajw0F">
            <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHjXg5G" role="jymVt" />
      <node concept="3Tm6S6" id="2lwHqHjXg5H" role="1B3o_S" />
      <node concept="3uibUv" id="2lwHqHjXg5I" role="EKbjA">
        <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
        <node concept="16syzq" id="2lwHqHjXg5J" role="11_B2D">
          <ref role="16sUi3" node="2lwHqHjXg5K" resolve="Endpoint" />
        </node>
      </node>
      <node concept="16euLQ" id="2lwHqHjXg5K" role="16eVyc">
        <property role="TrG5h" value="Endpoint" />
        <node concept="3uibUv" id="2lwHqHjXg5L" role="3ztrMU">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbW" id="2lwHqHjXg5M" role="jymVt">
        <node concept="3cqZAl" id="2lwHqHjXg5N" role="3clF45" />
        <node concept="3Tm6S6" id="2lwHqHjXg5O" role="1B3o_S" />
        <node concept="3clFbS" id="2lwHqHjXg5P" role="3clF47">
          <node concept="3clFbF" id="2lwHqHjXg5Q" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHjXg5R" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHjXg5S" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHjXg5y" resolve="myEndpointConcept" />
              </node>
              <node concept="37vLTw" id="2lwHqHjXg5T" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHjXg62" resolve="endpointConcept" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHjY78Y" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHjY9Ka" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHjYagH" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHjXls1" resolve="componentLink" />
              </node>
              <node concept="37vLTw" id="2lwHqHjY78W" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHjXkCk" resolve="myComponentLink" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHjXg5U" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHjXg5V" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHjXg5W" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHjXg64" resolve="targetLink" />
              </node>
              <node concept="37vLTw" id="2lwHqHjXg5X" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHjXg5_" resolve="myTargetLink" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHjXg5Y" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHjXg5Z" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHjXg60" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHjXg5C" resolve="myComponentTargets" />
              </node>
              <node concept="37vLTw" id="2lwHqHjXg61" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHjXg66" resolve="componentTargets" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHjXg62" role="3clF46">
          <property role="TrG5h" value="endpointConcept" />
          <node concept="3bZ5Sz" id="2lwHqHjXg63" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2lwHqHjXls1" role="3clF46">
          <property role="TrG5h" value="componentLink" />
          <node concept="3uibUv" id="2lwHqHjXlLl" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHjXg64" role="3clF46">
          <property role="TrG5h" value="targetLink" />
          <node concept="3uibUv" id="2lwHqHjXg65" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHjXg66" role="3clF46">
          <property role="TrG5h" value="componentTargets" />
          <node concept="1ajhzC" id="2lwHqHjXjBI" role="1tU5fm">
            <node concept="2I9FWS" id="2lwHqHjXklo" role="1ajl9A">
              <ref role="2I9WkF" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
            <node concept="3Tqbb2" id="2lwHqHjXjSS" role="1ajw0F">
              <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHjXg6a" role="jymVt" />
      <node concept="3clFb_" id="2lwHqHjXg6b" role="jymVt">
        <property role="TrG5h" value="isSupproted" />
        <node concept="3Tm1VV" id="2lwHqHjXg6c" role="1B3o_S" />
        <node concept="10P_77" id="2lwHqHjXg6d" role="3clF45" />
        <node concept="3clFbS" id="2lwHqHjXg6i" role="3clF47">
          <node concept="3cpWs8" id="2lwHqHjXRgI" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHjXRgJ" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="2lwHqHjXRgH" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
              </node>
              <node concept="1PxgMI" id="2lwHqHjXRgK" role="33vP2m">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="2lwHqHjXRgL" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
                <node concept="2OqwBi" id="2lwHqHk0MFQ" role="1m5AlR">
                  <node concept="37vLTw" id="2lwHqHk0MaD" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHk0IFf" resolve="endpoint" />
                  </node>
                  <node concept="liA8E" id="2lwHqHk0Nnc" role="2OqNvi">
                    <ref role="37wK5l" to="nkm5:6clvLV1Yg6Z" resolve="getSNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2lwHqHjXPoJ" role="3cqZAp">
            <node concept="3clFbS" id="2lwHqHjXPoL" role="3clFbx">
              <node concept="3cpWs8" id="2lwHqHjY6bs" role="3cqZAp">
                <node concept="3cpWsn" id="2lwHqHjY6bv" role="3cpWs9">
                  <property role="TrG5h" value="targets" />
                  <node concept="2I9FWS" id="2lwHqHjY6br" role="1tU5fm">
                    <ref role="2I9WkF" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                  <node concept="2Sg_IR" id="2lwHqHjYb5M" role="33vP2m">
                    <node concept="37vLTw" id="2lwHqHjYb5N" role="2SgG2M">
                      <ref role="3cqZAo" node="2lwHqHjXg5C" resolve="myComponentTargets" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHjYbvE" role="2SgHGx">
                      <ref role="3cqZAo" node="2lwHqHjXRgJ" resolve="component" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2lwHqHjYJe9" role="3cqZAp">
                <node concept="2OqwBi" id="2lwHqHjYIKQ" role="3cqZAk">
                  <node concept="37vLTw" id="2lwHqHjYIKR" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHjY6bv" resolve="targets" />
                  </node>
                  <node concept="2HwmR7" id="2lwHqHjYIKS" role="2OqNvi">
                    <node concept="1bVj0M" id="2lwHqHjYIKT" role="23t8la">
                      <node concept="3clFbS" id="2lwHqHjYIKU" role="1bW5cS">
                        <node concept="3clFbF" id="2lwHqHjYIKV" role="3cqZAp">
                          <node concept="17R0WA" id="2lwHqHjYIKW" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHk0P6a" role="3uHU7w">
                              <node concept="37vLTw" id="2lwHqHk0NEM" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHk0IFf" resolve="endpoint" />
                              </node>
                              <node concept="liA8E" id="2lwHqHk0QGQ" role="2OqNvi">
                                <ref role="37wK5l" to="nkm5:6clvLV1Yg88" resolve="getPortName" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2lwHqHjYIKY" role="3uHU7B">
                              <node concept="37vLTw" id="2lwHqHjYIKZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHjYIL1" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="2lwHqHjYIL0" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="2lwHqHjYIL1" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="2lwHqHjYIL2" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="2lwHqHjXy1Y" role="3clFbw">
              <node concept="2OqwBi" id="2lwHqHjXBAv" role="3uHU7w">
                <node concept="2OqwBi" id="2lwHqHjXz1F" role="2Oq$k0">
                  <node concept="37vLTw" id="2lwHqHjXyAB" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
                  </node>
                  <node concept="2qgKlT" id="2lwHqHjXAac" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:2lwHqHjRVNr" resolve="contextComponents" />
                  </node>
                </node>
                <node concept="liA8E" id="2lwHqHjXM3O" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object):boolean" resolve="contains" />
                  <node concept="37vLTw" id="2lwHqHjY3Jy" role="37wK5m">
                    <ref role="3cqZAo" node="2lwHqHjXRgJ" resolve="component" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2lwHqHjXooC" role="3uHU7B">
                <node concept="2OqwBi" id="2lwHqHjXmLW" role="2Oq$k0">
                  <node concept="37vLTw" id="2lwHqHjXmsI" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
                  </node>
                  <node concept="3Tsc0h" id="2lwHqHjXuqe" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                  </node>
                </node>
                <node concept="liA8E" id="2lwHqHjXxdI" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object):boolean" resolve="contains" />
                  <node concept="37vLTw" id="2lwHqHjY3gw" role="37wK5m">
                    <ref role="3cqZAo" node="2lwHqHjXRgJ" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2lwHqHjYJ_T" role="3cqZAp">
            <node concept="3clFbT" id="2lwHqHjYJKk" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHjXg6o" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="37vLTG" id="2lwHqHk0IFf" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk0IFg" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHjXNkG" role="jymVt" />
      <node concept="3clFb_" id="2lwHqHjXg6p" role="jymVt">
        <property role="TrG5h" value="create" />
        <node concept="3Tm1VV" id="2lwHqHjXg6q" role="1B3o_S" />
        <node concept="16syzq" id="2lwHqHjXg6r" role="3clF45">
          <ref role="16sUi3" node="2lwHqHjXg5K" resolve="Endpoint" />
        </node>
        <node concept="3clFbS" id="2lwHqHjXg6w" role="3clF47">
          <node concept="3cpWs8" id="2lwHqHjYNWY" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHjYNWZ" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3Tqbb2" id="2lwHqHjYNWX" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
              </node>
              <node concept="1PxgMI" id="2lwHqHjYQCY" role="33vP2m">
                <node concept="chp4Y" id="2lwHqHjYQOQ" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
                <node concept="2OqwBi" id="2lwHqHk0Ylt" role="1m5AlR">
                  <node concept="37vLTw" id="2lwHqHk0XVC" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHk0ToN" resolve="endpoint" />
                  </node>
                  <node concept="liA8E" id="2lwHqHk0YTy" role="2OqNvi">
                    <ref role="37wK5l" to="nkm5:6clvLV1Yg6Z" resolve="getSNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2lwHqHjYM03" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHjYM04" role="3cpWs9">
              <property role="TrG5h" value="e" />
              <node concept="3Tqbb2" id="2lwHqHjYM05" role="1tU5fm" />
              <node concept="2OqwBi" id="2lwHqHjYM06" role="33vP2m">
                <node concept="37vLTw" id="2lwHqHjYM07" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHjXg5y" resolve="myEndpointConcept" />
                </node>
                <node concept="LFhST" id="2lwHqHjYM08" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHjYM09" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHjYM0a" role="3clFbG">
              <node concept="liA8E" id="2lwHqHjYM0b" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode):void" resolve="setReferenceTarget" />
                <node concept="37vLTw" id="2lwHqHjYMLk" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHjXkCk" resolve="myComponentLink" />
                </node>
                <node concept="37vLTw" id="2lwHqHjYNX1" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHjYNWZ" resolve="component" />
                </node>
              </node>
              <node concept="2JrnkZ" id="2lwHqHjYM0e" role="2Oq$k0">
                <node concept="37vLTw" id="2lwHqHjYM0f" role="2JrQYb">
                  <ref role="3cqZAo" node="2lwHqHjYM04" resolve="e" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHjYMWi" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHjYMWj" role="3clFbG">
              <node concept="liA8E" id="2lwHqHjYMWk" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode):void" resolve="setReferenceTarget" />
                <node concept="37vLTw" id="2lwHqHjYNJh" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHjXg5_" resolve="myTargetLink" />
                </node>
                <node concept="2OqwBi" id="2lwHqHjYVM4" role="37wK5m">
                  <node concept="2Sg_IR" id="2lwHqHjYSak" role="2Oq$k0">
                    <node concept="37vLTw" id="2lwHqHjYUnG" role="2SgHGx">
                      <ref role="3cqZAo" node="2lwHqHjYNWZ" resolve="component" />
                    </node>
                    <node concept="37vLTw" id="2lwHqHjYSal" role="2SgG2M">
                      <ref role="3cqZAo" node="2lwHqHjXg5C" resolve="myComponentTargets" />
                    </node>
                  </node>
                  <node concept="1z4cxt" id="2lwHqHjZ2Or" role="2OqNvi">
                    <node concept="1bVj0M" id="2lwHqHjZ2Ot" role="23t8la">
                      <node concept="3clFbS" id="2lwHqHjZ2Ou" role="1bW5cS">
                        <node concept="3clFbF" id="2lwHqHjZ394" role="3cqZAp">
                          <node concept="17R0WA" id="2lwHqHjZfmk" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHk0ZAp" role="3uHU7w">
                              <node concept="37vLTw" id="2lwHqHk0Zdt" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHk0ToN" resolve="endpoint" />
                              </node>
                              <node concept="liA8E" id="2lwHqHk100v" role="2OqNvi">
                                <ref role="37wK5l" to="nkm5:6clvLV1Yg88" resolve="getPortName" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2lwHqHjZ3pM" role="3uHU7B">
                              <node concept="37vLTw" id="2lwHqHjZ393" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHjZ2Ov" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="2lwHqHjZ8wi" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="2lwHqHjZ2Ov" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="2lwHqHjZ2Ow" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2JrnkZ" id="2lwHqHjYMWn" role="2Oq$k0">
                <node concept="37vLTw" id="2lwHqHjYMWo" role="2JrQYb">
                  <ref role="3cqZAo" node="2lwHqHjYM04" resolve="e" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2lwHqHjYM0g" role="3cqZAp">
            <node concept="10QFUN" id="2lwHqHjYM0h" role="3cqZAk">
              <node concept="37vLTw" id="2lwHqHjYM0i" role="10QFUP">
                <ref role="3cqZAo" node="2lwHqHjYM04" resolve="e" />
              </node>
              <node concept="16syzq" id="2lwHqHjYM0j" role="10QFUM">
                <ref role="16sUi3" node="2lwHqHjXg5K" resolve="Endpoint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHjXg6M" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="37vLTG" id="2lwHqHk0ToN" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk0ToO" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2lwHqHk8Edw" role="jymVt" />
    <node concept="312cEu" id="2lwHqHk8kfb" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="FBAdapterEndpointFactory" />
      <node concept="312cEg" id="2lwHqHk8kfc" role="jymVt">
        <property role="TrG5h" value="myEndpointConcept" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHk8kfd" role="1B3o_S" />
        <node concept="3bZ5Sz" id="2lwHqHk8kfe" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2lwHqHk8kff" role="jymVt">
        <property role="TrG5h" value="myComponentLink" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHk8kfg" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHk8kfh" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="312cEg" id="2lwHqHk8kfi" role="jymVt">
        <property role="TrG5h" value="myAdapterLink" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHk8kfj" role="1B3o_S" />
        <node concept="3uibUv" id="2lwHqHk8kfk" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="312cEg" id="2lwHqHk8kfl" role="jymVt">
        <property role="TrG5h" value="myAdapters" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2lwHqHk8kfm" role="1B3o_S" />
        <node concept="1ajhzC" id="2lwHqHk8kfn" role="1tU5fm">
          <node concept="_YKpA" id="2lwHqHk9kq5" role="1ajl9A">
            <node concept="16syzq" id="2lwHqHk9kPL" role="_ZDj9">
              <ref role="16sUi3" node="2lwHqHk94r8" resolve="AdapterInstance" />
            </node>
          </node>
          <node concept="3Tqbb2" id="2lwHqHk8kfp" role="1ajw0F">
            <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk8kfq" role="jymVt" />
      <node concept="3Tm6S6" id="2lwHqHk8kfr" role="1B3o_S" />
      <node concept="3uibUv" id="2lwHqHk8kfs" role="EKbjA">
        <ref role="3uigEE" node="2lwHqHjTURT" resolve="ConnectionFactoryProvider.EndpointFactory" />
        <node concept="16syzq" id="2lwHqHk8kft" role="11_B2D">
          <ref role="16sUi3" node="2lwHqHk8kfu" resolve="Endpoint" />
        </node>
      </node>
      <node concept="16euLQ" id="2lwHqHk8kfu" role="16eVyc">
        <property role="TrG5h" value="Endpoint" />
        <node concept="3uibUv" id="2lwHqHk8kfv" role="3ztrMU">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="16euLQ" id="2lwHqHk94r8" role="16eVyc">
        <property role="TrG5h" value="AdapterInstance" />
        <node concept="3uibUv" id="2lwHqHk9gJD" role="3ztrMU">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbW" id="2lwHqHk8kfw" role="jymVt">
        <node concept="3cqZAl" id="2lwHqHk8kfx" role="3clF45" />
        <node concept="3Tm6S6" id="2lwHqHk8kfy" role="1B3o_S" />
        <node concept="3clFbS" id="2lwHqHk8kfz" role="3clF47">
          <node concept="3clFbF" id="2lwHqHk8kf$" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHk8kf_" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk8kfA" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHk8kfc" resolve="myEndpointConcept" />
              </node>
              <node concept="37vLTw" id="2lwHqHk8kfB" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHk8kfO" resolve="endpointConcept" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk8kfC" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHk8kfD" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk8kfE" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHk8kfQ" resolve="componentLink" />
              </node>
              <node concept="37vLTw" id="2lwHqHk8kfF" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHk8kff" resolve="myComponentLink" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk8kfG" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHk8kfH" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk8kfI" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHk8kfS" resolve="adapterLink" />
              </node>
              <node concept="37vLTw" id="2lwHqHk8kfJ" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHk8kfi" resolve="myAdapterLink" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk8kfK" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHk8kfL" role="3clFbG">
              <node concept="37vLTw" id="2lwHqHk8kfM" role="37vLTJ">
                <ref role="3cqZAo" node="2lwHqHk8kfl" resolve="myAdapters" />
              </node>
              <node concept="37vLTw" id="2lwHqHk8kfN" role="37vLTx">
                <ref role="3cqZAo" node="2lwHqHk8kfU" resolve="adapters" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk8kfO" role="3clF46">
          <property role="TrG5h" value="endpointConcept" />
          <node concept="3bZ5Sz" id="2lwHqHk8kfP" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2lwHqHk8kfQ" role="3clF46">
          <property role="TrG5h" value="componentLink" />
          <node concept="3uibUv" id="2lwHqHk8kfR" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk8kfS" role="3clF46">
          <property role="TrG5h" value="adapterLink" />
          <node concept="3uibUv" id="2lwHqHk8kfT" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          </node>
        </node>
        <node concept="37vLTG" id="2lwHqHk8kfU" role="3clF46">
          <property role="TrG5h" value="adapters" />
          <node concept="1ajhzC" id="2lwHqHk8kfV" role="1tU5fm">
            <node concept="_YKpA" id="2lwHqHk9i_m" role="1ajl9A">
              <node concept="16syzq" id="2lwHqHk9jOE" role="_ZDj9">
                <ref role="16sUi3" node="2lwHqHk94r8" resolve="AdapterInstance" />
              </node>
            </node>
            <node concept="3Tqbb2" id="2lwHqHk8kfX" role="1ajw0F">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk8kfY" role="jymVt" />
      <node concept="3clFb_" id="2lwHqHk8kfZ" role="jymVt">
        <property role="TrG5h" value="isSupproted" />
        <node concept="3Tm1VV" id="2lwHqHk8kg0" role="1B3o_S" />
        <node concept="10P_77" id="2lwHqHk8kg1" role="3clF45" />
        <node concept="3clFbS" id="2lwHqHk8kg2" role="3clF47">
          <node concept="3cpWs8" id="2lwHqHk8kg3" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHk8kg4" role="3cpWs9">
              <property role="TrG5h" value="fb" />
              <node concept="3Tqbb2" id="2lwHqHk8kg5" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
              <node concept="1PxgMI" id="2lwHqHk8kg6" role="33vP2m">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="2lwHqHk8yOD" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
                <node concept="2OqwBi" id="2lwHqHk8kg8" role="1m5AlR">
                  <node concept="37vLTw" id="2lwHqHk8kg9" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHk8kgN" resolve="endpoint" />
                  </node>
                  <node concept="liA8E" id="2lwHqHk8kga" role="2OqNvi">
                    <ref role="37wK5l" to="nkm5:6clvLV1Yg6Z" resolve="getSNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2lwHqHk8kgb" role="3cqZAp">
            <node concept="3clFbS" id="2lwHqHk8kgc" role="3clFbx">
              <node concept="3cpWs8" id="2lwHqHk8kgd" role="3cqZAp">
                <node concept="3cpWsn" id="2lwHqHk8kge" role="3cpWs9">
                  <property role="TrG5h" value="targets" />
                  <node concept="_YKpA" id="2lwHqHkdCFo" role="1tU5fm">
                    <node concept="16syzq" id="2lwHqHkdFif" role="_ZDj9">
                      <ref role="16sUi3" node="2lwHqHk94r8" resolve="AdapterInstance" />
                    </node>
                  </node>
                  <node concept="2Sg_IR" id="2lwHqHk8kgg" role="33vP2m">
                    <node concept="37vLTw" id="2lwHqHk8kgh" role="2SgG2M">
                      <ref role="3cqZAo" node="2lwHqHk8kfl" resolve="myAdapters" />
                    </node>
                    <node concept="2OqwBi" id="2lwHqHk8zAr" role="2SgHGx">
                      <node concept="37vLTw" id="2lwHqHk8kgi" role="2Oq$k0">
                        <ref role="3cqZAo" node="2lwHqHk8kg4" resolve="fb" />
                      </node>
                      <node concept="3TrEf2" id="2lwHqHk8$Ow" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2lwHqHk8kgj" role="3cqZAp">
                <node concept="2OqwBi" id="2lwHqHk8kgk" role="3cqZAk">
                  <node concept="37vLTw" id="2lwHqHk8kgl" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHk8kge" resolve="targets" />
                  </node>
                  <node concept="2HwmR7" id="2lwHqHk8kgm" role="2OqNvi">
                    <node concept="1bVj0M" id="2lwHqHk8kgn" role="23t8la">
                      <node concept="3clFbS" id="2lwHqHk8kgo" role="1bW5cS">
                        <node concept="3clFbF" id="2lwHqHk8kgp" role="3cqZAp">
                          <node concept="17R0WA" id="2lwHqHk8kgq" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHk8kgr" role="3uHU7w">
                              <node concept="37vLTw" id="2lwHqHk8kgs" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHk8kgN" resolve="endpoint" />
                              </node>
                              <node concept="liA8E" id="2lwHqHk8kgt" role="2OqNvi">
                                <ref role="37wK5l" to="nkm5:6clvLV1Yg88" resolve="getPortName" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2lwHqHk8kgu" role="3uHU7B">
                              <node concept="37vLTw" id="2lwHqHk8kgv" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHk8kgx" resolve="it" />
                              </node>
                              <node concept="liA8E" id="2lwHqHkdGMF" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getName():java.lang.String" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="2lwHqHk8kgx" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="2lwHqHk8kgy" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2lwHqHk8kgE" role="3clFbw">
              <node concept="2OqwBi" id="2lwHqHk8kgF" role="2Oq$k0">
                <node concept="37vLTw" id="2lwHqHk8kgG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHjUzsu" resolve="myNetwork" />
                </node>
                <node concept="3Tsc0h" id="2lwHqHk8kgH" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                </node>
              </node>
              <node concept="liA8E" id="2lwHqHk8kgI" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object):boolean" resolve="contains" />
                <node concept="37vLTw" id="2lwHqHk8kgJ" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHk8kg4" resolve="fb" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2lwHqHk8kgK" role="3cqZAp">
            <node concept="3clFbT" id="2lwHqHk8kgL" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHk8kgM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="37vLTG" id="2lwHqHk8kgN" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk8kgO" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2lwHqHk8kgP" role="jymVt" />
      <node concept="3clFb_" id="2lwHqHk8kgQ" role="jymVt">
        <property role="TrG5h" value="create" />
        <node concept="3Tm1VV" id="2lwHqHk8kgR" role="1B3o_S" />
        <node concept="16syzq" id="2lwHqHk8kgS" role="3clF45">
          <ref role="16sUi3" node="2lwHqHk8kfu" resolve="Endpoint" />
        </node>
        <node concept="3clFbS" id="2lwHqHk8kgT" role="3clF47">
          <node concept="3cpWs8" id="2lwHqHk8kgU" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHk8kgV" role="3cpWs9">
              <property role="TrG5h" value="fb" />
              <node concept="3Tqbb2" id="2lwHqHk8kgW" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
              <node concept="1PxgMI" id="2lwHqHk8kgX" role="33vP2m">
                <node concept="chp4Y" id="2lwHqHk8$UQ" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
                <node concept="2OqwBi" id="2lwHqHk8kgZ" role="1m5AlR">
                  <node concept="37vLTw" id="2lwHqHk8kh0" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHk8khF" resolve="endpoint" />
                  </node>
                  <node concept="liA8E" id="2lwHqHk8kh1" role="2OqNvi">
                    <ref role="37wK5l" to="nkm5:6clvLV1Yg6Z" resolve="getSNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2lwHqHkdI98" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHkdI99" role="3cpWs9">
              <property role="TrG5h" value="targets" />
              <node concept="_YKpA" id="2lwHqHkdI93" role="1tU5fm">
                <node concept="16syzq" id="2lwHqHkdI96" role="_ZDj9">
                  <ref role="16sUi3" node="2lwHqHk94r8" resolve="AdapterInstance" />
                </node>
              </node>
              <node concept="2Sg_IR" id="2lwHqHkdI9a" role="33vP2m">
                <node concept="2OqwBi" id="2lwHqHkdI9b" role="2SgHGx">
                  <node concept="37vLTw" id="2lwHqHkdI9c" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHk8kgV" resolve="fb" />
                  </node>
                  <node concept="3TrEf2" id="2lwHqHkdI9d" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                </node>
                <node concept="37vLTw" id="2lwHqHkdI9e" role="2SgG2M">
                  <ref role="3cqZAo" node="2lwHqHk8kfl" resolve="myAdapters" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2lwHqHk8kh2" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHk8kh3" role="3cpWs9">
              <property role="TrG5h" value="e" />
              <node concept="3Tqbb2" id="2lwHqHk8kh4" role="1tU5fm" />
              <node concept="2OqwBi" id="2lwHqHk8kh5" role="33vP2m">
                <node concept="37vLTw" id="2lwHqHk8kh6" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHk8kfc" resolve="myEndpointConcept" />
                </node>
                <node concept="LFhST" id="2lwHqHk8kh7" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk8kh8" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHk8kh9" role="3clFbG">
              <node concept="liA8E" id="2lwHqHk8kha" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode):void" resolve="setReferenceTarget" />
                <node concept="37vLTw" id="2lwHqHk8khb" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHk8kff" resolve="myComponentLink" />
                </node>
                <node concept="37vLTw" id="2lwHqHk8khc" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHk8kgV" resolve="fb" />
                </node>
              </node>
              <node concept="2JrnkZ" id="2lwHqHk8khd" role="2Oq$k0">
                <node concept="37vLTw" id="2lwHqHk8khe" role="2JrQYb">
                  <ref role="3cqZAo" node="2lwHqHk8kh3" resolve="e" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHk8khf" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHk8khg" role="3clFbG">
              <node concept="liA8E" id="2lwHqHk8khh" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode):void" resolve="setReferenceTarget" />
                <node concept="37vLTw" id="2lwHqHk8khi" role="37wK5m">
                  <ref role="3cqZAo" node="2lwHqHk8kfi" resolve="myAdapterLink" />
                </node>
                <node concept="2OqwBi" id="2lwHqHk8khj" role="37wK5m">
                  <node concept="37vLTw" id="2lwHqHkdI9f" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHkdI99" resolve="targets" />
                  </node>
                  <node concept="1z4cxt" id="2lwHqHk8khn" role="2OqNvi">
                    <node concept="1bVj0M" id="2lwHqHk8kho" role="23t8la">
                      <node concept="3clFbS" id="2lwHqHk8khp" role="1bW5cS">
                        <node concept="3clFbF" id="2lwHqHk8khq" role="3cqZAp">
                          <node concept="17R0WA" id="2lwHqHk8khr" role="3clFbG">
                            <node concept="2OqwBi" id="2lwHqHk8khs" role="3uHU7w">
                              <node concept="37vLTw" id="2lwHqHk8kht" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHk8khF" resolve="endpoint" />
                              </node>
                              <node concept="liA8E" id="2lwHqHk8khu" role="2OqNvi">
                                <ref role="37wK5l" to="nkm5:6clvLV1Yg88" resolve="getPortName" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2lwHqHk8khv" role="3uHU7B">
                              <node concept="37vLTw" id="2lwHqHk8khw" role="2Oq$k0">
                                <ref role="3cqZAo" node="2lwHqHk8khy" resolve="it" />
                              </node>
                              <node concept="liA8E" id="2lwHqHkbDBE" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getName():java.lang.String" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="2lwHqHk8khy" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="2lwHqHk8khz" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2JrnkZ" id="2lwHqHk8kh$" role="2Oq$k0">
                <node concept="37vLTw" id="2lwHqHk8kh_" role="2JrQYb">
                  <ref role="3cqZAo" node="2lwHqHk8kh3" resolve="e" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2lwHqHk8khA" role="3cqZAp">
            <node concept="10QFUN" id="2lwHqHk8khB" role="3cqZAk">
              <node concept="37vLTw" id="2lwHqHk8khC" role="10QFUP">
                <ref role="3cqZAo" node="2lwHqHk8kh3" resolve="e" />
              </node>
              <node concept="16syzq" id="2lwHqHk8khD" role="10QFUM">
                <ref role="16sUi3" node="2lwHqHk8kfu" resolve="Endpoint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2lwHqHk8khE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="37vLTG" id="2lwHqHk8khF" role="3clF46">
          <property role="TrG5h" value="endpoint" />
          <node concept="3uibUv" id="2lwHqHk8khG" role="1tU5fm">
            <ref role="3uigEE" to="nkm5:6clvLV1YfKy" resolve="IConnectionEndpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2lwHqHjX9le" role="jymVt" />
    <node concept="Wx3nA" id="2lwHqHk3eho" role="jymVt">
      <property role="TrG5h" value="DESC_EVENT_CONNECTION" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="2lwHqHk3ehr" role="1tU5fm" />
      <node concept="Xl_RD" id="2lwHqHk3ehs" role="33vP2m">
        <property role="Xl_RC" value="Event connection" />
      </node>
      <node concept="3Tm6S6" id="2lwHqHk3ehq" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2lwHqHk3gB1" role="jymVt">
      <property role="TrG5h" value="DESC_DATA_CONNECTION" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="2lwHqHk3gB4" role="1tU5fm" />
      <node concept="Xl_RD" id="2lwHqHk3gB5" role="33vP2m">
        <property role="Xl_RC" value="Data connection" />
      </node>
      <node concept="3Tm6S6" id="2lwHqHk3gB3" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2lwHqHk3iVl" role="jymVt">
      <property role="TrG5h" value="DESC_ADAPTER_CONNECTION" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="2lwHqHk3iVo" role="1tU5fm" />
      <node concept="Xl_RD" id="2lwHqHk3iVp" role="33vP2m">
        <property role="Xl_RC" value="Adapter connection" />
      </node>
      <node concept="3Tm6S6" id="2lwHqHk3iVn" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="2lwHqHjTUOT" role="1B3o_S" />
  </node>
  <node concept="3p36aQ" id="2lwHqHkjIKs">
    <property role="3GE5qa" value="network.connections" />
    <ref role="aqKnT" to="xiqq:37fub3vlApO" resolve="Source" />
    <node concept="3DQ70j" id="2lwHqHkjIKt" role="lGtFl">
      <property role="3V$3am" value="parts" />
      <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/2000375450116454183/414384289274416996" />
      <node concept="1Pa9Pv" id="2lwHqHkjIKv" role="3DQ709">
        <node concept="1PaTwC" id="2lwHqHkjIKw" role="1PaQFQ">
          <node concept="3oM_SD" id="2lwHqHkjIKz" role="1PaTwD">
            <property role="3oM_SC" value="Hack" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjIK_" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjIKC" role="1PaTwD">
            <property role="3oM_SC" value="work" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjIKG" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjIL4" role="1PaTwD">
            <property role="3oM_SC" value="link" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjIKY" role="1PaTwD">
            <property role="3oM_SC" value="specialization" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1s_PAr" id="2lwHqHkjJ0p" role="3ft7WO">
      <node concept="3tp4HU" id="2lwHqHkjJ0B" role="1s_PAo">
        <node concept="3tp4HZ" id="2lwHqHkjJ0C" role="3tp4HT">
          <node concept="3clFbS" id="2lwHqHkjJ0D" role="2VODD2">
            <node concept="3clFbJ" id="2lwHqHkjJ6q" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHkjJnc" role="3clFbw">
                <node concept="3bvxqY" id="2lwHqHkjJcj" role="2Oq$k0" />
                <node concept="1mIQ4w" id="2lwHqHkjJS2" role="2OqNvi">
                  <node concept="chp4Y" id="2lwHqHkjJZu" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2lwHqHkjJ6s" role="3clFbx">
                <node concept="3cpWs6" id="2lwHqHkjK8Y" role="3cqZAp">
                  <node concept="35c_gC" id="2lwHqHkjKk$" role="3cqZAk">
                    <ref role="35c_gD" to="xiqq:37fub3vlA5G" resolve="DataSource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2lwHqHkjKyl" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHkjKym" role="3clFbw">
                <node concept="3bvxqY" id="2lwHqHkjKyn" role="2Oq$k0" />
                <node concept="1mIQ4w" id="2lwHqHkjKyo" role="2OqNvi">
                  <node concept="chp4Y" id="2lwHqHkjKIX" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2lwHqHkjKyq" role="3clFbx">
                <node concept="3cpWs6" id="2lwHqHkjKyr" role="3cqZAp">
                  <node concept="35c_gC" id="2lwHqHkjKys" role="3cqZAk">
                    <ref role="35c_gD" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2lwHqHkjKyK" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHkjKyL" role="3clFbw">
                <node concept="3bvxqY" id="2lwHqHkjKyM" role="2Oq$k0" />
                <node concept="1mIQ4w" id="2lwHqHkjKyN" role="2OqNvi">
                  <node concept="chp4Y" id="2lwHqHkjKUn" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2lwHqHkjKyP" role="3clFbx">
                <node concept="3cpWs6" id="2lwHqHkjKyQ" role="3cqZAp">
                  <node concept="35c_gC" id="2lwHqHkjKyR" role="3cqZAk">
                    <ref role="35c_gD" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2lwHqHkjOFi" role="3cqZAp">
              <node concept="10Nm6u" id="2lwHqHkjQ9T" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2lwHqHkjRuU">
    <property role="3GE5qa" value="network.connections" />
    <ref role="aqKnT" to="xiqq:4KieeRVlhj7" resolve="Destination" />
    <node concept="3DQ70j" id="2lwHqHkjRuV" role="lGtFl">
      <property role="3V$3am" value="parts" />
      <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/2000375450116454183/414384289274416996" />
      <node concept="1Pa9Pv" id="2lwHqHkjRuW" role="3DQ709">
        <node concept="1PaTwC" id="2lwHqHkjRuX" role="1PaQFQ">
          <node concept="3oM_SD" id="2lwHqHkjRuY" role="1PaTwD">
            <property role="3oM_SC" value="Hack" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjRuZ" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjRv0" role="1PaTwD">
            <property role="3oM_SC" value="work" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjRv1" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjRv2" role="1PaTwD">
            <property role="3oM_SC" value="link" />
          </node>
          <node concept="3oM_SD" id="2lwHqHkjRv3" role="1PaTwD">
            <property role="3oM_SC" value="specialization" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1s_PAr" id="2lwHqHkjRv4" role="3ft7WO">
      <node concept="3tp4HU" id="2lwHqHkjRv5" role="1s_PAo">
        <node concept="3tp4HZ" id="2lwHqHkjRv6" role="3tp4HT">
          <node concept="3clFbS" id="2lwHqHkjRv7" role="2VODD2">
            <node concept="3clFbJ" id="2lwHqHkjRv8" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHkjRv9" role="3clFbw">
                <node concept="3bvxqY" id="2lwHqHkjRva" role="2Oq$k0" />
                <node concept="1mIQ4w" id="2lwHqHkjRvb" role="2OqNvi">
                  <node concept="chp4Y" id="2lwHqHkjRvc" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2lwHqHkjRvd" role="3clFbx">
                <node concept="3cpWs6" id="2lwHqHkjRve" role="3cqZAp">
                  <node concept="35c_gC" id="2lwHqHkjRvf" role="3cqZAk">
                    <ref role="35c_gD" to="xiqq:37fub3vlApU" resolve="DataDestination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2lwHqHkjRvg" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHkjRvh" role="3clFbw">
                <node concept="3bvxqY" id="2lwHqHkjRvi" role="2Oq$k0" />
                <node concept="1mIQ4w" id="2lwHqHkjRvj" role="2OqNvi">
                  <node concept="chp4Y" id="2lwHqHkjRvk" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2lwHqHkjRvl" role="3clFbx">
                <node concept="3cpWs6" id="2lwHqHkjRvm" role="3cqZAp">
                  <node concept="35c_gC" id="2lwHqHkjRvn" role="3cqZAk">
                    <ref role="35c_gD" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2lwHqHkjRvo" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHkjRvp" role="3clFbw">
                <node concept="3bvxqY" id="2lwHqHkjRvq" role="2Oq$k0" />
                <node concept="1mIQ4w" id="2lwHqHkjRvr" role="2OqNvi">
                  <node concept="chp4Y" id="2lwHqHkjRvs" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2lwHqHkjRvt" role="3clFbx">
                <node concept="3cpWs6" id="2lwHqHkjRvu" role="3cqZAp">
                  <node concept="35c_gC" id="2lwHqHkjRvv" role="3cqZAk">
                    <ref role="35c_gD" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2lwHqHkjRvw" role="3cqZAp">
              <node concept="10Nm6u" id="2lwHqHkjRvx" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="2lwHqHknvrQ">
    <property role="TrG5h" value="FBNetwork_FBS" />
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
    <node concept="3EZMnI" id="5s_pygh6x6A" role="2wV5jI">
      <node concept="1ktTy1" id="5s_pygh6xnA" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
        <node concept="2iRkQZ" id="5s_pygh6_1z" role="2czzBx" />
        <node concept="3F0ifn" id="2lwHqHknvrT" role="1ktDp$">
          <property role="3F0ifm" value="FBS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="2lwHqHknvs2" role="1ktDpy">
          <property role="3F0ifm" value="END_FBS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="uLhTRTcL5U" role="2czzBI">
          <property role="ilYzB" value="no function blocks" />
          <node concept="Vb9p2" id="4s7KBSiyIHB" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="4s7KBSiKFq3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="1N6Oh7f8T0U" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="l2Vlx" id="5s_pygh6x6B" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="2lwHqHknvus">
    <property role="TrG5h" value="FBNetwork_Connections" />
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
    <node concept="3EZMnI" id="2lwHqHknvut" role="2wV5jI">
      <node concept="VPM3Z" id="2lwHqHknvuu" role="3F10Kt" />
      <node concept="1ktTy1" id="5s_pygh6_x7" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
        <node concept="ljvvj" id="2lwHqHknvuE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRkQZ" id="5s_pygh6APV" role="2czzBx" />
        <node concept="3F0ifn" id="2lwHqHknvuv" role="1ktDp$">
          <property role="3F0ifm" value="EVENT_CONNECTIONS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="2lwHqHknvuC" role="1ktDpy">
          <property role="3F0ifm" value="END_CONNECTIONS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="4s7KBSiMtaH" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no event connections" />
          <node concept="Vb9p2" id="4s7KBSiQePW" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="4s7KBSiQePX" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="1N6Oh7f7bq4" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pygh6AgJ" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
        <node concept="ljvvj" id="5s_pygh6AgK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRkQZ" id="5s_pygh6APS" role="2czzBx" />
        <node concept="3F0ifn" id="5s_pygh6AgM" role="1ktDp$">
          <property role="3F0ifm" value="DATA_CONNECTIONS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh6AgN" role="1ktDpy">
          <property role="3F0ifm" value="END_CONNECTIONS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh6AgO" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no data connections" />
          <node concept="Vb9p2" id="5s_pygh6AgP" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="5s_pygh6AgQ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="1N6Oh7f7bq8" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pygh6AqC" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
        <node concept="ljvvj" id="5s_pygh6AqD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRkQZ" id="5s_pygh6APP" role="2czzBx" />
        <node concept="3F0ifn" id="5s_pygh6AqF" role="1ktDp$">
          <property role="3F0ifm" value="ADAPTER_CONNECTIONS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh6AqG" role="1ktDpy">
          <property role="3F0ifm" value="END_CONNECTIONS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh6AqH" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no adapter connections" />
          <node concept="Vb9p2" id="5s_pygh6AqI" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="5s_pygh6AqJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="1N6Oh7f7bqa" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="l2Vlx" id="2lwHqHknvv3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHkp4qn">
    <property role="3GE5qa" value="resources" />
    <ref role="1XX52x" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
    <node concept="3EZMnI" id="2lwHqHkp4qp" role="2wV5jI">
      <node concept="3F0ifn" id="2lwHqHkp4qw" role="3EZMnx">
        <property role="3F0ifm" value="RESOURCE_TYPE" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="2lwHqHkp4qA" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="2lwHqHkp4qE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pyghg4a8" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
        <node concept="2iRkQZ" id="5s_pyghg4a9" role="2czzBx" />
        <node concept="3F0ifn" id="5s_pyghg4aa" role="1ktDp$">
          <property role="3F0ifm" value="VAR_INPUT" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pyghg4ab" role="1ktDpy">
          <property role="3F0ifm" value="END_VAR" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="ljvvj" id="5s_pyghg4ac" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5s_pyghg4ad" role="2czzBI">
          <property role="ilYzB" value="no variable inputs" />
          <node concept="VPxyj" id="5s_pyghg4ae" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="5s_pyghg4af" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pyghg3CJ" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:2lwHqHjRwSo" resolve="instantiableFBTypes" />
        <node concept="2iRkQZ" id="5s_pyghg3Dt" role="2czzBx" />
        <node concept="3F0ifn" id="5s_pyghg3CL" role="1ktDp$">
          <property role="3F0ifm" value="FB_TYPES" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pyghg3CM" role="1ktDpy">
          <property role="3F0ifm" value="END_FB_TYPES" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="ljvvj" id="5s_pyghg3CN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5s_pyghg3CO" role="2czzBI">
          <property role="ilYzB" value="no FB types" />
          <node concept="VPxyj" id="5s_pyghg3CP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="5s_pyghg3CQ" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHkp4uD" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvrQ" resolve="FBNetwork_FBS" />
        <node concept="ljvvj" id="2lwHqHkp4vw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHkp4vy" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvus" resolve="FBNetwork_Connections" />
        <node concept="ljvvj" id="2lwHqHkp56c" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHkp56e" role="3EZMnx">
        <property role="3F0ifm" value="END_RESOURCE" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
        <node concept="ljvvj" id="2lwHqHkp56I" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="18a60v" id="2lwHqHkp57h" role="3EZMnx">
        <node concept="VPM3Z" id="2lwHqHkp57j" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="2lwHqHkp4qs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHkp4tx">
    <property role="3GE5qa" value="fbtype" />
    <ref role="1XX52x" to="xiqq:2lwHqHjRwSl" resolve="FBTypeReference" />
    <node concept="3EZMnI" id="2lwHqHkp4tz" role="2wV5jI">
      <node concept="1iCGBv" id="2lwHqHkp4tH" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2lwHqHjRwSm" resolve="declaration" />
        <node concept="1sVBvm" id="2lwHqHkp4tJ" role="1sWHZn">
          <node concept="3SHvHV" id="2lwHqHkp4tQ" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHkp4u6" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="2lwHqHkp4uc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="2lwHqHkp4tA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHkp4xL">
    <property role="3GE5qa" value="resources" />
    <ref role="1XX52x" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
    <node concept="3EZMnI" id="2lwHqHkp4xQ" role="2wV5jI">
      <node concept="3F0ifn" id="2lwHqHkp54F" role="3EZMnx">
        <property role="3F0ifm" value="RESOURCE_TYPE" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="2lwHqHkp54G" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="2lwHqHkp54H" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHkp54Q" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHjRDLP" resolve="Component_FBNetwork" />
        <node concept="ljvvj" id="2lwHqHkp551" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHkp55b" role="3EZMnx">
        <property role="3F0ifm" value="END_RESOURCE" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
        <node concept="ljvvj" id="2lwHqHkp55j" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="18a60v" id="2lwHqHkp55y" role="3EZMnx">
        <node concept="VPM3Z" id="2lwHqHkp55$" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="2lwHqHkp4xT" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="2lwHqHkp4xX" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
  </node>
  <node concept="IW6AY" id="2lwHqHkp5GP">
    <property role="3GE5qa" value="network.fb" />
    <ref role="aqKnT" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
    <node concept="1Qtc8_" id="2lwHqHkp5GQ" role="IW6Ez">
      <node concept="aenpk" id="2lwHqHkp5GR" role="1Qtc8A">
        <node concept="IWgqT" id="2lwHqHkp5GS" role="aenpr">
          <node concept="1hCUdq" id="2lwHqHkp5GT" role="1hCUd6">
            <node concept="3clFbS" id="2lwHqHkp5GU" role="2VODD2">
              <node concept="3clFbF" id="2lwHqHkp5GV" role="3cqZAp">
                <node concept="2OqwBi" id="2lwHqHkp5GW" role="3clFbG">
                  <node concept="3yx0qK" id="2lwHqHkp5GX" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHkp5H5" resolve="switcher" />
                  </node>
                  <node concept="liA8E" id="2lwHqHkp5GY" role="2OqNvi">
                    <ref role="37wK5l" node="2JGKyjiIP5q" resolve="getActionText" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="IWg2L" id="2lwHqHkp5GZ" role="IWgqQ">
            <node concept="3clFbS" id="2lwHqHkp5H0" role="2VODD2">
              <node concept="3clFbF" id="2lwHqHkp5H1" role="3cqZAp">
                <node concept="2OqwBi" id="2lwHqHkp5H2" role="3clFbG">
                  <node concept="3yx0qK" id="2lwHqHkp5H3" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lwHqHkp5H5" resolve="switcher" />
                  </node>
                  <node concept="liA8E" id="2lwHqHkp5H4" role="2OqNvi">
                    <ref role="37wK5l" node="2JGKyjiIBnT" resolve="switchPrensetation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1At2My" id="2lwHqHkp5H5" role="1b80Z_">
          <property role="TrG5h" value="switcher" />
          <node concept="23wN_R" id="2lwHqHkp5H6" role="23wLD5">
            <node concept="3clFbS" id="2lwHqHkp5H7" role="2VODD2">
              <node concept="3clFbF" id="2lwHqHkp5H8" role="3cqZAp">
                <node concept="2ShNRf" id="2lwHqHkp5H9" role="3clFbG">
                  <node concept="1pGfFk" id="2lwHqHkp5Ha" role="2ShVmc">
                    <ref role="37wK5l" node="2JGKyjiIuOI" resolve="PresentationSwitcher" />
                    <node concept="2pYGij" id="2lwHqHkp5Hb" role="37wK5m">
                      <ref role="2pYH_C" node="PI_pXYAiuF" resolve="fb_network" />
                    </node>
                    <node concept="7Obwk" id="2lwHqHkp5Hc" role="37wK5m" />
                    <node concept="1Q80Hx" id="2lwHqHkp5Hd" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="2lwHqHkp5He" role="1tU5fm">
            <ref role="3uigEE" node="2JGKyjiH7x_" resolve="PresentationSwitcher" />
          </node>
        </node>
      </node>
      <node concept="2j_NTm" id="2lwHqHkp5Hf" role="1Qtc8$" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHkyF7F">
    <ref role="1XX52x" to="xiqq:2lwHqHkyF7a" resolve="Parameter" />
    <node concept="3EZMnI" id="2lwHqHkyF7H" role="2wV5jI">
      <node concept="1iCGBv" id="2lwHqHkyF7O" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2lwHqHkyF7b" resolve="decl" />
        <node concept="1sVBvm" id="2lwHqHkyF7Q" role="1sWHZn">
          <node concept="3SHvHV" id="2lwHqHkyF7X" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHkyF85" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
      </node>
      <node concept="3F1sOY" id="2lwHqHkyF8h" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2lwHqHkyF7f" resolve="value" />
      </node>
      <node concept="l2Vlx" id="2lwHqHkyF7K" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHk$jpf">
    <property role="3GE5qa" value="resources" />
    <ref role="1XX52x" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="3EZMnI" id="2lwHqHk$jpo" role="2wV5jI">
      <node concept="3F0ifn" id="2lwHqHk$jpp" role="3EZMnx">
        <property role="3F0ifm" value="RESOURCE" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F0A7n" id="2lwHqHk$jpq" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2lwHqHk$jsk" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="2lwHqHk$jr1" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2lwHqHkyELp" resolve="type" />
        <node concept="1sVBvm" id="2lwHqHk$jr3" role="1sWHZn">
          <node concept="3SHvHV" id="2lwHqHk$jrF" role="2wV5jI" />
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
          <property role="Q2I2d" value="punctuation" />
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
                  <node concept="3Tsc0h" id="2lwHqHk$kjv" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
                  </node>
                </node>
                <node concept="3GX2aA" id="2lwHqHk$rcT" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHk$jpM" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvrQ" resolve="FBNetwork_FBS" />
        <node concept="ljvvj" id="2lwHqHk$jpN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="2lwHqHk$va5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHk$jpO" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvus" resolve="FBNetwork_Connections" />
        <node concept="ljvvj" id="2lwHqHk$jpP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHk$jpQ" role="3EZMnx">
        <property role="3F0ifm" value="END_RESOURCE" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="18a60v" id="2lwHqHk$jpS" role="3EZMnx">
        <node concept="VPM3Z" id="2lwHqHk$jpT" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="2lwHqHk$jpU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHk$uBP">
    <property role="3GE5qa" value="devices" />
    <ref role="1XX52x" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
    <node concept="3EZMnI" id="2lwHqHk$uBQ" role="2wV5jI">
      <node concept="3F0ifn" id="2lwHqHk$uBR" role="3EZMnx">
        <property role="3F0ifm" value="DEVICE_TYPE" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="2lwHqHk$uBS" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="2lwHqHk$uBT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pyghg36g" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:2lwHqHkyELb" resolve="parameters" />
        <node concept="2iRkQZ" id="5s_pyghg3Lw" role="2czzBx" />
        <node concept="3F0ifn" id="2lwHqHk$uBU" role="1ktDp$">
          <property role="3F0ifm" value="VAR_INPUT" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="2lwHqHk$uC3" role="1ktDpy">
          <property role="3F0ifm" value="END_VAR" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="ljvvj" id="5s_pyghg3Bp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5s_pyghg3Bz" role="2czzBI">
          <property role="ilYzB" value="no variable inputs" />
          <node concept="VPxyj" id="5s_pyghg3B$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="5s_pyghg3B_" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pyghn$cE" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:1WTKUmKKVQc" resolve="instantiableResourceTypes" />
        <node concept="2iRkQZ" id="5s_pyghn$cF" role="2czzBx" />
        <node concept="3F0ifn" id="5s_pyghn$cG" role="1ktDp$">
          <property role="3F0ifm" value="RESOURCE_TYPES" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pyghn$cH" role="1ktDpy">
          <property role="3F0ifm" value="END_RESOURCE_TYPES" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="ljvvj" id="5s_pyghn$cI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5s_pyghn$cJ" role="2czzBI">
          <property role="ilYzB" value="no resource types" />
          <node concept="VPxyj" id="5s_pyghn$cK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="5s_pyghn$cL" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="2lwHqHk$uD7" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2lwHqHk$uBA" resolve="resources" />
        <node concept="pj6Ft" id="2lwHqHk$uEG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4s7KBSj39J3" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4s7KBSj39J7" role="3n$kyP">
            <node concept="3clFbS" id="4s7KBSj39J8" role="2VODD2">
              <node concept="3clFbF" id="4s7KBSj39QD" role="3cqZAp">
                <node concept="2OqwBi" id="4s7KBSj3dqA" role="3clFbG">
                  <node concept="2OqwBi" id="4s7KBSj3a4M" role="2Oq$k0">
                    <node concept="pncrf" id="4s7KBSj39QC" role="2Oq$k0" />
                    <node concept="Bykcj" id="4s7KBSj3lnU" role="2OqNvi">
                      <node concept="1aIX9F" id="4s7KBSj3lnW" role="1xVPHs">
                        <node concept="26LbJo" id="4s7KBSj3lBS" role="1aIX9E">
                          <ref role="26LbJp" to="xiqq:2lwHqHk$uBA" resolve="resources" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4s7KBSj3kkM" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="2lwHqHk$uD9" role="2czzBx" />
        <node concept="3F0ifn" id="2lwHqHkC2I6" role="2czzBI">
          <property role="ilYzB" value="no resources" />
          <node concept="VPxyj" id="4s7KBSj56oX" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="4s7KBSj56p2" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHk$uCg" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvrQ" resolve="FBNetwork_FBS" />
        <node concept="ljvvj" id="2lwHqHk$uCh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHk$uCi" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvus" resolve="FBNetwork_Connections" />
        <node concept="ljvvj" id="2lwHqHk$uCj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHk$uCk" role="3EZMnx">
        <property role="3F0ifm" value="END_DEVICE" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="18a60v" id="2lwHqHk$uCm" role="3EZMnx">
        <node concept="VPM3Z" id="2lwHqHk$uCn" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="2lwHqHk$uCo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHk$A_Z">
    <property role="3GE5qa" value="resources" />
    <ref role="1XX52x" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="3EZMnI" id="2lwHqHk$AA1" role="2wV5jI">
      <node concept="3F0ifn" id="2lwHqHk$AA2" role="3EZMnx">
        <property role="3F0ifm" value="RESOURCE" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F0A7n" id="2lwHqHk$AA3" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2lwHqHk$AA4" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="2lwHqHk$AA5" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2lwHqHkyELp" resolve="type" />
        <node concept="1sVBvm" id="2lwHqHk$AA6" role="1sWHZn">
          <node concept="3SHvHV" id="2lwHqHk$AA7" role="2wV5jI" />
        </node>
      </node>
      <node concept="3EZMnI" id="2lwHqHk$AA8" role="3EZMnx">
        <node concept="VPM3Z" id="2lwHqHk$AA9" role="3F10Kt" />
        <node concept="3F0ifn" id="2lwHqHk$AAa" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11L4FC" id="2lwHqHk$AAb" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="2lwHqHk$AAc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="2lwHqHk$AAd" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="Q2I2d" value="punctuation" />
          <ref role="1NtTu8" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
          <node concept="l2Vlx" id="2lwHqHk$AAe" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="2lwHqHk$AAf" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="2lwHqHk$AAg" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="2lwHqHk$AAh" role="2iSdaV" />
        <node concept="pkWqt" id="2lwHqHk$AAi" role="pqm2j">
          <node concept="3clFbS" id="2lwHqHk$AAj" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHk$AAk" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHk$AAl" role="3clFbG">
                <node concept="2OqwBi" id="2lwHqHk$AAm" role="2Oq$k0">
                  <node concept="pncrf" id="2lwHqHk$AAn" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2lwHqHk$AAo" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
                  </node>
                </node>
                <node concept="3GX2aA" id="2lwHqHk$AAp" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHk$BMQ" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHjRDLP" resolve="Component_FBNetwork" />
        <node concept="pVoyu" id="2lwHqHk$BXH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="2lwHqHk$BXM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHk$AAv" role="3EZMnx">
        <property role="3F0ifm" value="END_RESOURCE" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="18a60v" id="2lwHqHk$AAx" role="3EZMnx">
        <node concept="VPM3Z" id="2lwHqHk$AAy" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="2lwHqHk$AAz" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="2lwHqHk$BXQ" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHkAgzD">
    <property role="3GE5qa" value="devices" />
    <ref role="1XX52x" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
    <node concept="3EZMnI" id="2lwHqHkAgzF" role="2wV5jI">
      <node concept="3F0ifn" id="2lwHqHkAgzG" role="3EZMnx">
        <property role="3F0ifm" value="DEVICE_TYPE" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="2lwHqHkAgzH" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="2lwHqHkAgzI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHkAg$N" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHjRDLP" resolve="Component_FBNetwork" />
        <node concept="ljvvj" id="2lwHqHkAg$W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHkAg$1" role="3EZMnx">
        <property role="3F0ifm" value="END_DEVICE" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
        <node concept="ljvvj" id="2lwHqHkAg$2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="18a60v" id="2lwHqHkAg$3" role="3EZMnx">
        <node concept="VPM3Z" id="2lwHqHkAg$4" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="2lwHqHkAg$5" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="2lwHqHkAg$x" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRR226y">
    <property role="3GE5qa" value="subapp" />
    <ref role="1XX52x" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
    <node concept="3EZMnI" id="uLhTRR226$" role="2wV5jI">
      <node concept="3F0ifn" id="uLhTRR226F" role="3EZMnx">
        <property role="3F0ifm" value="SUBAPPLICATION" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="uLhTRR226L" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="uLhTRR226T" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRR226V" role="3EZMnx">
        <ref role="PMmxG" node="2ByE74knc05" resolve="InterfaceList" />
        <node concept="ljvvj" id="uLhTRR2276" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRR234j" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvrQ" resolve="FBNetwork_FBS" />
        <node concept="ljvvj" id="uLhTRR235g" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRR234y" role="3EZMnx">
        <ref role="PMmxG" node="uLhTRR230K" resolve="SubappNetwork_Subapps" />
        <node concept="ljvvj" id="uLhTRR235i" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRR234N" role="3EZMnx">
        <ref role="PMmxG" node="75nMhMfSUmE" resolve="Interface_PlugsAndSockets" />
        <node concept="ljvvj" id="uLhTRR235k" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRR2356" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvus" resolve="FBNetwork_Connections" />
        <node concept="ljvvj" id="uLhTRR235m" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="uLhTRR235B" role="3EZMnx">
        <property role="3F0ifm" value="END_SUBAPPLICATION" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="18a60v" id="uLhTRR2367" role="3EZMnx">
        <node concept="VPM3Z" id="uLhTRR2369" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="uLhTRR226B" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="uLhTRR230K">
    <property role="TrG5h" value="SubappNetwork_Subapps" />
    <property role="3GE5qa" value="subapp" />
    <ref role="1XX52x" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
    <node concept="1ktTy1" id="5s_pyghhVOM" role="2wV5jI">
      <property role="S$F3r" value="true" />
      <ref role="1NtTu8" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
      <node concept="2iRkQZ" id="5s_pyghhVOO" role="2czzBx" />
      <node concept="3F0ifn" id="uLhTRR230N" role="1ktDp$">
        <property role="3F0ifm" value="SUBAPPS" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F0ifn" id="uLhTRR230Y" role="1ktDpy">
        <property role="3F0ifm" value="END_SUBAPPS" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F0ifn" id="5s_pyghhVPB" role="2czzBI">
        <property role="3F0ifm" value="" />
        <property role="ilYzB" value="no subapplications" />
        <node concept="Vb9p2" id="5s_pyghhVPz" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRR5RMN">
    <property role="3GE5qa" value="network.subapp" />
    <ref role="1XX52x" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationInstance" />
    <node concept="3EZMnI" id="uLhTRR5RMP" role="2wV5jI">
      <node concept="3F0A7n" id="uLhTRR5RMZ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="uLhTRR5RN5" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="uLhTRR5RNd" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRQWVWR" resolve="type" />
        <node concept="1sVBvm" id="uLhTRR5RNf" role="1sWHZn">
          <node concept="3SHvHV" id="uLhTRR5RNo" role="2wV5jI" />
        </node>
      </node>
      <node concept="2iRfu4" id="uLhTRR5RMS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRR7ME_">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRR7MEy" resolve="ApplicationConfiguration" />
    <node concept="3EZMnI" id="uLhTRR7MEB" role="2wV5jI">
      <node concept="3F0ifn" id="uLhTRR7MEI" role="3EZMnx">
        <property role="3F0ifm" value="APPLICATION" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F0A7n" id="uLhTRR7MEV" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="uLhTRR7MEZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRR7MFc" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvrQ" resolve="FBNetwork_FBS" />
        <node concept="ljvvj" id="uLhTRR7MGR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRR7MFu" role="3EZMnx">
        <ref role="PMmxG" node="uLhTRR230K" resolve="SubappNetwork_Subapps" />
        <node concept="ljvvj" id="uLhTRR7MGT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRR7MFF" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvus" resolve="FBNetwork_Connections" />
        <node concept="ljvvj" id="uLhTRR7MGV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="uLhTRR7MFU" role="3EZMnx">
        <property role="3F0ifm" value="END_APPLICATION" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="l2Vlx" id="uLhTRR7MEE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRR7MHm">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
    <node concept="3EZMnI" id="uLhTRR7MHo" role="2wV5jI">
      <node concept="3F0ifn" id="uLhTRR7MHv" role="3EZMnx">
        <property role="3F0ifm" value="DEVICE" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F0A7n" id="uLhTRR7MHH" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="uLhTRR7MHM" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="uLhTRR7MHW" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:1WTKUmKKVP_" resolve="type" />
        <node concept="1sVBvm" id="uLhTRR7MHY" role="1sWHZn">
          <node concept="3SHvHV" id="uLhTRR7MI8" role="2wV5jI" />
        </node>
      </node>
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
        <property role="Q2I2d" value="punctuation" />
        <ref role="1NtTu8" to="xiqq:fshQXbRNVN" resolve="parameters" />
        <node concept="l2Vlx" id="uLhTRR7MIB" role="2czzBx" />
        <node concept="lj46D" id="uLhTRR7MJB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="35HoNQ" id="uLhTRRbP4N" role="2czzBI" />
      </node>
      <node concept="3F0ifn" id="uLhTRR7MIW" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="uLhTRR7MJM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="uLhTRR7MJR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="uLhTRR7MJk" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:1WTKUmKKVPK" resolve="resources" />
        <node concept="l2Vlx" id="uLhTRR7MJm" role="2czzBx" />
        <node concept="pj6Ft" id="uLhTRR7MJz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="uLhTRR7MJY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="uLhTRR7MKr" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4s7KBSjq88O" role="3n$kyP">
            <node concept="3clFbS" id="4s7KBSjq88P" role="2VODD2">
              <node concept="3clFbF" id="4s7KBSjq8gg" role="3cqZAp">
                <node concept="2OqwBi" id="4s7KBSjq9Gh" role="3clFbG">
                  <node concept="2OqwBi" id="4s7KBSjq8xX" role="2Oq$k0">
                    <node concept="pncrf" id="4s7KBSjq8gf" role="2Oq$k0" />
                    <node concept="Bykcj" id="4s7KBSjq91h" role="2OqNvi">
                      <node concept="1aIX9F" id="4s7KBSjq91j" role="1xVPHs">
                        <node concept="26LbJo" id="4s7KBSjq9mF" role="1aIX9E">
                          <ref role="26LbJp" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4s7KBSjqbH9" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="4s7KBSjq88y" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no resources" />
          <node concept="VPM3Z" id="4s7KBSjq88E" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="4s7KBSjq88K" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRRgpNJ" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvrQ" resolve="FBNetwork_FBS" />
        <node concept="ljvvj" id="uLhTRRgpOT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="uLhTRRgpOw" role="3EZMnx">
        <ref role="PMmxG" node="2lwHqHknvus" resolve="FBNetwork_Connections" />
        <node concept="ljvvj" id="uLhTRRgpPH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="uLhTRR7MKR" role="3EZMnx">
        <property role="3F0ifm" value="END_DEVICE" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        <node concept="ljvvj" id="4FkwH71hbjV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="uLhTRR7MHr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRR7MVS">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRR7Mvw" resolve="SystemConfiguration" />
    <node concept="3EZMnI" id="uLhTRR7MVX" role="2wV5jI">
      <node concept="l2Vlx" id="uLhTRR7MVY" role="2iSdaV" />
      <node concept="3F0ifn" id="uLhTRR7MVU" role="3EZMnx">
        <property role="3F0ifm" value="SYSTEM" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="uLhTRR7MWa" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="uLhTRR7MXM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="uLhTRR7MWi" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRR7MVq" resolve="applications" />
        <node concept="l2Vlx" id="uLhTRR7MWk" role="2czzBx" />
        <node concept="ljvvj" id="uLhTRR7MXO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4s7KBSjrY5Z" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4s7KBSjrY63" role="3n$kyP">
            <node concept="3clFbS" id="4s7KBSjrY64" role="2VODD2">
              <node concept="3clFbF" id="4s7KBSjrYdv" role="3cqZAp">
                <node concept="2OqwBi" id="4s7KBSjrZN_" role="3clFbG">
                  <node concept="2OqwBi" id="4s7KBSjrYqI" role="2Oq$k0">
                    <node concept="pncrf" id="4s7KBSjrYdu" role="2Oq$k0" />
                    <node concept="Bykcj" id="4s7KBSjrZ96" role="2OqNvi">
                      <node concept="1aIX9F" id="4s7KBSjrZ98" role="1xVPHs">
                        <node concept="26LbJo" id="4s7KBSjrZua" role="1aIX9E">
                          <ref role="26LbJp" to="xiqq:uLhTRR7MVq" resolve="applications" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4s7KBSjs1O7" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="uLhTRRdMh6" role="2czzBI">
          <property role="ilYzB" value="no appplications" />
          <node concept="VPxyj" id="uLhTRRdPAM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="uLhTRRT7Q9" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="uLhTRR7MWA" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRR7MVs" resolve="devices" />
        <node concept="l2Vlx" id="uLhTRR7MWC" role="2czzBx" />
        <node concept="ljvvj" id="uLhTRR7MXQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4s7KBSjs23s" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="4s7KBSjs23t" role="3n$kyP">
            <node concept="3clFbS" id="4s7KBSjs23u" role="2VODD2">
              <node concept="3clFbF" id="4s7KBSjs23v" role="3cqZAp">
                <node concept="2OqwBi" id="4s7KBSjs23w" role="3clFbG">
                  <node concept="2OqwBi" id="4s7KBSjs23x" role="2Oq$k0">
                    <node concept="pncrf" id="4s7KBSjs23y" role="2Oq$k0" />
                    <node concept="Bykcj" id="4s7KBSjs23z" role="2OqNvi">
                      <node concept="1aIX9F" id="4s7KBSjs23$" role="1xVPHs">
                        <node concept="26LbJo" id="4s7KBSjs2j_" role="1aIX9E">
                          <ref role="26LbJp" to="xiqq:uLhTRR7MVs" resolve="devices" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4s7KBSjs23A" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="uLhTRR9P79" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no devices" />
          <node concept="VPxyj" id="uLhTRR_Dg3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="uLhTRRT7Qg" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pyggNMEI" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:uLhTRRozfU" resolve="mappings" />
        <node concept="2iRkQZ" id="5s_pygh2fDh" role="2czzBx" />
        <node concept="3F0ifn" id="uLhTRRozg_" role="1ktDp$">
          <property role="3F0ifm" value="MAPPING" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="uLhTRRoziu" role="1ktDpy">
          <property role="3F0ifm" value="END_MAPPING" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="4s7KBSjs3lV" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no mappings" />
          <node concept="VPxyj" id="5s_pyggPA0d" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="5s_pyggPA0e" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
        <node concept="ljvvj" id="5s_pyggOhJo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pyght_6d" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:5s_pyght$Xg" resolve="segments" />
        <node concept="2iRkQZ" id="5s_pyght_6e" role="2czzBx" />
        <node concept="3F0ifn" id="5s_pyght_6f" role="1ktDp$">
          <property role="3F0ifm" value="SEGMENTS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pyght_6g" role="1ktDpy">
          <property role="3F0ifm" value="END_SEGMENTS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pyght_6h" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no segments" />
          <node concept="VPxyj" id="5s_pyght_6i" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="5s_pyght_6j" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
        <node concept="ljvvj" id="5s_pyght_6k" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1ktTy1" id="5s_pygh_T6a" role="3EZMnx">
        <property role="S$F3r" value="true" />
        <ref role="1NtTu8" to="xiqq:5s_pygh_SXc" resolve="links" />
        <node concept="2iRkQZ" id="5s_pygh_T6b" role="2czzBx" />
        <node concept="3F0ifn" id="5s_pygh_T6c" role="1ktDp$">
          <property role="3F0ifm" value="LINKS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh_T6d" role="1ktDpy">
          <property role="3F0ifm" value="END_LINKS" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="5s_pygh_T6e" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="no links" />
          <node concept="VPxyj" id="5s_pygh_T6f" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="5s_pygh_T6g" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
        </node>
        <node concept="ljvvj" id="5s_pygh_T6h" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="uLhTRR7MWR" role="3EZMnx">
        <property role="3F0ifm" value="END_SYSTEM" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRRmjJ0">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
    <node concept="1iCGBv" id="uLhTRRmjJ9" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:uLhTRRmhk8" resolve="application" />
      <node concept="1sVBvm" id="uLhTRRmjJb" role="1sWHZn">
        <node concept="3SHvHV" id="uLhTRRmjJi" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRRmjJX">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
    <node concept="3EZMnI" id="uLhTRRmjJZ" role="2wV5jI">
      <node concept="3F1sOY" id="uLhTRRmjK6" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRmjJr" resolve="parentApp" />
      </node>
      <node concept="3EZMnI" id="5s_pyghMTZh" role="3EZMnx">
        <node concept="VPM3Z" id="5s_pyghMTZj" role="3F10Kt" />
        <node concept="3F0ifn" id="uLhTRRmjKc" role="3EZMnx">
          <property role="3F0ifm" value="." />
          <ref role="1ERwB7" node="5s_pyghMTZY" resolve="DeleteDotSubapp" />
          <node concept="11L4FC" id="uLhTRRmjKA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="uLhTRRmjKG" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="1iCGBv" id="uLhTRRmjKk" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:uLhTRRmjJx" resolve="subapp" />
          <ref role="1ERwB7" node="5s_pyghMTZY" resolve="DeleteDotSubapp" />
          <node concept="1sVBvm" id="uLhTRRmjKm" role="1sWHZn">
            <node concept="3SHvHV" id="uLhTRRmjKv" role="2wV5jI" />
          </node>
        </node>
        <node concept="l2Vlx" id="5s_pyghMTZm" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="uLhTRRmjK2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRRmrd_">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRRmhk5" resolve="FBInstanceReference" />
    <node concept="3EZMnI" id="uLhTRRmrdB" role="2wV5jI">
      <node concept="3F1sOY" id="uLhTRRmrdI" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRmrd7" resolve="application" />
      </node>
      <node concept="3F0ifn" id="uLhTRRmrdO" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="uLhTRRmrea" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="uLhTRRmref" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="uLhTRRmrdW" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRmrd9" resolve="functionBlock" />
        <node concept="1sVBvm" id="uLhTRRmrdY" role="1sWHZn">
          <node concept="3SHvHV" id="uLhTRRmre7" role="2wV5jI" />
        </node>
      </node>
      <node concept="l2Vlx" id="uLhTRRmrdE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRRmreM">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
    <node concept="3EZMnI" id="uLhTRRmreR" role="2wV5jI">
      <node concept="3F1sOY" id="uLhTRRmreY" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRmrej" resolve="instance" />
      </node>
      <node concept="3F0ifn" id="uLhTRRmrf4" role="3EZMnx">
        <property role="3F0ifm" value="ON" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F1sOY" id="uLhTRRmrfc" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRmrel" resolve="resource" />
      </node>
      <node concept="l2Vlx" id="uLhTRRmreU" role="2iSdaV" />
      <node concept="3F0ifn" id="uLhTRRvrQJ" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="uLhTRRvrQR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRRq_wZ">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="3EZMnI" id="uLhTRRq_x1" role="2wV5jI">
      <node concept="1iCGBv" id="uLhTRRq_x8" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRq_wx" resolve="device" />
        <node concept="1sVBvm" id="uLhTRRq_xa" role="1sWHZn">
          <node concept="3SHvHV" id="uLhTRRq_xh" role="2wV5jI" />
        </node>
        <node concept="A1WHu" id="uLhTRRG43K" role="3vIgyS">
          <ref role="A1WHt" node="uLhTRRqCST" resolve="AddExpplicitResource" />
        </node>
      </node>
      <node concept="3EZMnI" id="uLhTRRq_yg" role="3EZMnx">
        <node concept="VPM3Z" id="uLhTRRq_yi" role="3F10Kt" />
        <node concept="3F0ifn" id="uLhTRRq_xv" role="3EZMnx">
          <property role="3F0ifm" value="." />
          <ref role="1ERwB7" node="uLhTRRqInt" resolve="DeleteResource" />
          <node concept="11L4FC" id="uLhTRRI8IJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="uLhTRRI8IO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="1iCGBv" id="uLhTRRq_xM" role="3EZMnx">
          <property role="1cu_pB" value="1" />
          <ref role="1NtTu8" to="xiqq:uLhTRRq_wz" resolve="resource" />
          <node concept="1sVBvm" id="uLhTRRq_xO" role="1sWHZn">
            <node concept="3SHvHV" id="uLhTRRq_xZ" role="2wV5jI">
              <node concept="2SqB2G" id="uLhTRRqJky" role="2SqHTX">
                <property role="TrG5h" value="ResourceRef" />
              </node>
            </node>
          </node>
          <node concept="A1WHu" id="uLhTRROZV6" role="3vIgyS">
            <ref role="A1WHt" node="uLhTRROX$R" resolve="ChangeResource" />
          </node>
        </node>
        <node concept="l2Vlx" id="uLhTRRq_yl" role="2iSdaV" />
        <node concept="pkWqt" id="uLhTRRq_yB" role="pqm2j">
          <node concept="3clFbS" id="uLhTRRq_yC" role="2VODD2">
            <node concept="3clFbF" id="uLhTRRq_T_" role="3cqZAp">
              <node concept="3y3z36" id="uLhTRRMUEK" role="3clFbG">
                <node concept="10Nm6u" id="uLhTRRMUMW" role="3uHU7w" />
                <node concept="2OqwBi" id="uLhTRRqA62" role="3uHU7B">
                  <node concept="pncrf" id="uLhTRRq_T$" role="2Oq$k0" />
                  <node concept="37Cfm0" id="uLhTRRMT9U" role="2OqNvi">
                    <node concept="1aIX9F" id="uLhTRRMT9W" role="37CeNk">
                      <node concept="26LbJo" id="uLhTRRMTqL" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:uLhTRRq_wz" resolve="resource" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="A1WHu" id="uLhTRRqIbF" role="3vIgyS">
          <ref role="A1WHt" node="uLhTRRqCST" resolve="AddExpplicitResource" />
        </node>
      </node>
      <node concept="l2Vlx" id="uLhTRRq_x4" role="2iSdaV" />
    </node>
  </node>
  <node concept="3ICXOK" id="uLhTRRqCST">
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="AddExpplicitResource" />
    <ref role="aqKnT" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="1Qtc8_" id="uLhTRRqCSU" role="IW6Ez">
      <node concept="3cWJ9i" id="uLhTRRqCSY" role="1Qtc8$">
        <node concept="CtIbL" id="uLhTRRqCT0" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="uLhTRRKcy2" role="1Qtc8A">
        <node concept="1hCUdq" id="uLhTRRKcy3" role="1hCUd6">
          <node concept="3clFbS" id="uLhTRRKcy4" role="2VODD2">
            <node concept="3clFbF" id="uLhTRRKcEY" role="3cqZAp">
              <node concept="Xl_RD" id="uLhTRRKcEX" role="3clFbG">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="uLhTRRKcy5" role="IWgqQ">
          <node concept="3clFbS" id="uLhTRRKcy6" role="2VODD2">
            <node concept="3clFbF" id="uLhTRRKcWA" role="3cqZAp">
              <node concept="2OqwBi" id="uLhTRRKfr0" role="3clFbG">
                <node concept="liA8E" id="uLhTRRKfYD" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SReference):void" resolve="setReference" />
                  <node concept="359W_D" id="uLhTRRKrwu" role="37wK5m">
                    <ref role="359W_E" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
                    <ref role="359W_F" to="xiqq:uLhTRRq_wz" resolve="resource" />
                  </node>
                  <node concept="2ShNRf" id="uLhTRRKrJZ" role="37wK5m">
                    <node concept="1pGfFk" id="uLhTRRKQCJ" role="2ShVmc">
                      <ref role="37wK5l" to="w1kc:~DynamicReference.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SModelReference,java.lang.String)" resolve="DynamicReference" />
                      <node concept="359W_D" id="uLhTRRKQHL" role="37wK5m">
                        <ref role="359W_E" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
                        <ref role="359W_F" to="xiqq:uLhTRRq_wz" resolve="resource" />
                      </node>
                      <node concept="7Obwk" id="uLhTRRKRfo" role="37wK5m" />
                      <node concept="10Nm6u" id="uLhTRRKRqY" role="37wK5m" />
                      <node concept="Xl_RD" id="uLhTRRKRzK" role="37wK5m">
                        <property role="Xl_RC" value="&lt;no resource&gt;" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2JrnkZ" id="uLhTRRKfr5" role="2Oq$k0">
                  <node concept="7Obwk" id="uLhTRRKcW_" role="2JrQYb" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="uLhTRRqInt">
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="DeleteResource" />
    <ref role="1h_SK9" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="1hA7zw" id="uLhTRRqInu" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="uLhTRRqInv" role="1hA7z_">
        <node concept="3clFbS" id="uLhTRRqInw" role="2VODD2">
          <node concept="3clFbJ" id="uLhTRRqInY" role="3cqZAp">
            <node concept="2OqwBi" id="uLhTRRqIx7" role="3clFbw">
              <node concept="0IXxy" id="uLhTRRqIoo" role="2Oq$k0" />
              <node concept="2xy62i" id="uLhTRRqJ0y" role="2OqNvi">
                <node concept="1Q80Hx" id="uLhTRRqJ1g" role="2xHN3q" />
                <node concept="2TlHUq" id="uLhTRRqJl1" role="3a7HXU">
                  <ref role="2TlMyj" node="uLhTRRqJky" resolve="ResourceRef" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="uLhTRRqIo0" role="3clFbx">
              <node concept="3cpWs6" id="uLhTRRqJlB" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="uLhTRRqJmq" role="3cqZAp">
            <node concept="37vLTI" id="uLhTRRqL8v" role="3clFbG">
              <node concept="10Nm6u" id="uLhTRRqLaS" role="37vLTx" />
              <node concept="2OqwBi" id="uLhTRRqJtA" role="37vLTJ">
                <node concept="0IXxy" id="uLhTRRqJmo" role="2Oq$k0" />
                <node concept="3TrEf2" id="uLhTRRqJXh" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="jK8Ss" id="uLhTRRqLd3" role="jK8aL">
        <node concept="3clFbS" id="uLhTRRqLd4" role="2VODD2">
          <node concept="3clFbF" id="uLhTRRqLmQ" role="3cqZAp">
            <node concept="2OqwBi" id="uLhTRRqM_S" role="3clFbG">
              <node concept="2OqwBi" id="uLhTRRqLzj" role="2Oq$k0">
                <node concept="0IXxy" id="uLhTRRqLmP" role="2Oq$k0" />
                <node concept="3TrEf2" id="uLhTRRqM9W" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
                </node>
              </node>
              <node concept="3x8VRR" id="uLhTRRqNDB" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRRzCws">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRRmreo" resolve="FBResourceReference" />
    <node concept="3EZMnI" id="uLhTRRzCwx" role="2wV5jI">
      <node concept="3F1sOY" id="uLhTRRzCwC" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRtpn0" resolve="resource" />
      </node>
      <node concept="3F0ifn" id="uLhTRRzCwI" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="uLhTRRzCx4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="uLhTRRzCx9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="uLhTRRzCwQ" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRtpn2" resolve="functionBlock" />
        <node concept="1sVBvm" id="uLhTRRzCwS" role="1sWHZn">
          <node concept="3SHvHV" id="uLhTRRzCx1" role="2wV5jI" />
        </node>
      </node>
      <node concept="l2Vlx" id="uLhTRRzCw$" role="2iSdaV" />
    </node>
  </node>
  <node concept="3p36aQ" id="uLhTRRE1ll">
    <property role="3GE5qa" value="system" />
    <ref role="aqKnT" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="3XHNnq" id="uLhTRRE1lm" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:uLhTRRq_wx" resolve="device" />
    </node>
  </node>
  <node concept="3ICXOK" id="uLhTRROX$R">
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="ChangeResource" />
    <ref role="aqKnT" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="1Qtc8_" id="uLhTRROX$S" role="IW6Ez">
      <node concept="3eGOoe" id="uLhTRROX$W" role="1Qtc8$" />
      <node concept="3PzhKR" id="uLhTRROX$Z" role="1Qtc8A">
        <ref role="3PzhKQ" to="xiqq:uLhTRRq_wz" resolve="resource" />
      </node>
    </node>
  </node>
  <node concept="3ICXOK" id="uLhTRRR1cx">
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="ChangeResource0" />
    <ref role="aqKnT" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="1Qtc8_" id="uLhTRRR1cy" role="IW6Ez">
      <node concept="3eGOoe" id="uLhTRRR1cA" role="1Qtc8$" />
    </node>
  </node>
  <node concept="24kQdi" id="5s_pyghrntH">
    <property role="3GE5qa" value="resources" />
    <ref role="1XX52x" to="xiqq:1WTKUmKKVQg" resolve="ResourceTypeReference" />
    <node concept="3EZMnI" id="5s_pyghxHmL" role="2wV5jI">
      <node concept="1iCGBv" id="5s_pyghrntJ" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:1WTKUmKKVQh" resolve="decl" />
        <node concept="1sVBvm" id="5s_pyghrntL" role="1sWHZn">
          <node concept="3SHvHV" id="5s_pyghrntS" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="5s_pyghxHmX" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="5s_pyghxHn3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5s_pyghxHmM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5s_pyghtjoX">
    <property role="3GE5qa" value="segments" />
    <ref role="1XX52x" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
    <node concept="3EZMnI" id="5s_pyghtjoZ" role="2wV5jI">
      <node concept="3F0ifn" id="5s_pyghtjp6" role="3EZMnx">
        <property role="3F0ifm" value="SEGMENT_TYPE" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="3F0A7n" id="5s_pyghtjpg" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="5s_pyghtjpI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5s_pyghtjpq" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5s_pyghtjpo" resolve="parameters" />
        <node concept="2iRkQZ" id="5s_pyghtukl" role="2czzBx" />
        <node concept="lj46D" id="5s_pyghtjpK" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="5s_pyghtjpM" role="3n$kyP">
            <node concept="3clFbS" id="5s_pyghtjpN" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghtq0C" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghtrWS" role="3clFbG">
                  <node concept="2OqwBi" id="5s_pyghtqwy" role="2Oq$k0">
                    <node concept="pncrf" id="5s_pyghtq0B" role="2Oq$k0" />
                    <node concept="Bykcj" id="5s_pyghtriy" role="2OqNvi">
                      <node concept="1aIX9F" id="5s_pyghtri$" role="1xVPHs">
                        <node concept="26LbJo" id="5s_pyghtrBx" role="1aIX9E">
                          <ref role="26LbJp" to="xiqq:5s_pyghtjpo" resolve="parameters" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="5s_pyghttXi" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="5s_pyghtu$c" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5s_pyghtjpB" role="3EZMnx">
        <property role="3F0ifm" value="END_SEGMENT" />
        <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
      </node>
      <node concept="l2Vlx" id="5s_pyghtjp2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5s_pyghtuOp">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:5s_pyghtuNV" resolve="Segment" />
    <node concept="3EZMnI" id="5s_pyghtuOr" role="2wV5jI">
      <node concept="3F0A7n" id="5s_pyghtuOy" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="5s_pyghtuOC" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="5s_pyght$Vo" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5s_pyghtuNY" resolve="type" />
        <node concept="1sVBvm" id="5s_pyght$Vq" role="1sWHZn">
          <node concept="3SHvHV" id="5s_pyght$Vz" role="2wV5jI" />
        </node>
      </node>
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
        <property role="Q2I2d" value="punctuation" />
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
      <node concept="3F0ifn" id="5s_pyght$WY" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="5s_pyght$Xe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5s_pyghtuOu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5s_pyghzCP9">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:5s_pyghzCOb" resolve="Link" />
    <node concept="3EZMnI" id="5s_pyghzCPb" role="2wV5jI">
      <node concept="3F1sOY" id="5s_pyghzCPi" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5s_pyghzCOc" resolve="resource" />
      </node>
      <node concept="3F0ifn" id="5s_pyghzCPo" role="3EZMnx">
        <property role="3F0ifm" value="=&gt;" />
      </node>
      <node concept="1iCGBv" id="5s_pyghzCPw" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5s_pyghzCOh" resolve="segment" />
        <node concept="1sVBvm" id="5s_pyghzCPy" role="1sWHZn">
          <node concept="3SHvHV" id="5s_pyghzCPF" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="5s_pyghzCPP" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="5s_pyghzCQC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="5s_pyghzCQH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5s_pyghzCQn" role="3EZMnx">
        <property role="Q2I2d" value="punctuation" />
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="xiqq:5s_pyghzCOe" resolve="parameters" />
        <node concept="l2Vlx" id="5s_pyghzCQp" role="2czzBx" />
        <node concept="35HoNQ" id="5s_pyghzCQ_" role="2czzBI" />
      </node>
      <node concept="3F0ifn" id="5s_pyghzCQ5" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="5s_pyghzCRg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5s_pyghzCQZ" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="5s_pyghzCRe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5s_pyghzCPe" role="2iSdaV" />
    </node>
  </node>
  <node concept="IW6AY" id="5s_pyghIpWb">
    <property role="3GE5qa" value="system" />
    <ref role="aqKnT" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
    <node concept="1Qtc8_" id="5s_pyghIpWc" role="IW6Ez">
      <node concept="3cWJ9i" id="5s_pyghIpWg" role="1Qtc8$">
        <node concept="CtIbL" id="5s_pyghIpWi" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="5s_pyghIpWm" role="1Qtc8A">
        <node concept="1hCUdq" id="5s_pyghIpWn" role="1hCUd6">
          <node concept="3clFbS" id="5s_pyghIpWo" role="2VODD2">
            <node concept="3clFbF" id="5s_pyghIq5o" role="3cqZAp">
              <node concept="Xl_RD" id="5s_pyghIq5n" role="3clFbG">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="5s_pyghIpWp" role="IWgqQ">
          <node concept="3clFbS" id="5s_pyghIpWq" role="2VODD2">
            <node concept="3cpWs8" id="5s_pyghIWde" role="3cqZAp">
              <node concept="3cpWsn" id="5s_pyghIWdf" role="3cpWs9">
                <property role="TrG5h" value="ref" />
                <node concept="3Tqbb2" id="5s_pyghIWdc" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                </node>
                <node concept="2ShNRf" id="5s_pyghIWdg" role="33vP2m">
                  <node concept="3zrR0B" id="5s_pyghIWdh" role="2ShVmc">
                    <node concept="3Tqbb2" id="5s_pyghIWdi" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5s_pyghIWez" role="3cqZAp">
              <node concept="2OqwBi" id="5s_pyghIWlB" role="3clFbG">
                <node concept="7Obwk" id="5s_pyghIWex" role="2Oq$k0" />
                <node concept="1P9Npp" id="5s_pyghIWPa" role="2OqNvi">
                  <node concept="37vLTw" id="5s_pyghIWPP" role="1P9ThW">
                    <ref role="3cqZAo" node="5s_pyghIWdf" resolve="ref" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5s_pyghIWQU" role="3cqZAp">
              <node concept="2OqwBi" id="5s_pyghIYbL" role="3clFbG">
                <node concept="2OqwBi" id="5s_pyghIWYG" role="2Oq$k0">
                  <node concept="37vLTw" id="5s_pyghIWQS" role="2Oq$k0">
                    <ref role="3cqZAo" node="5s_pyghIWdf" resolve="ref" />
                  </node>
                  <node concept="3TrEf2" id="5s_pyghIXdn" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmjJr" resolve="parentApp" />
                  </node>
                </node>
                <node concept="2oxUTD" id="5s_pyghIZdk" role="2OqNvi">
                  <node concept="7Obwk" id="5s_pyghIZfZ" role="2oxUTC" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5s_pyghKW9F" role="3cqZAp">
              <node concept="2OqwBi" id="5s_pyghKWia" role="3clFbG">
                <node concept="37vLTw" id="5s_pyghKW9D" role="2Oq$k0">
                  <ref role="3cqZAo" node="5s_pyghIWdf" resolve="ref" />
                </node>
                <node concept="1OKiuA" id="5s_pyghKX7v" role="2OqNvi">
                  <node concept="1Q80Hx" id="5s_pyghKX9x" role="lBI5i" />
                  <node concept="2B6iha" id="5s_pyghKXbX" role="lGT1i">
                    <property role="1lyBwo" value="firstError" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="5s_pyghMTZY">
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="DeleteDotSubapp" />
    <ref role="1h_SK9" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
    <node concept="1hA7zw" id="5s_pyghMTZZ" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="5s_pyghMU00" role="1hA7z_">
        <node concept="3clFbS" id="5s_pyghMU01" role="2VODD2">
          <node concept="1X3_iC" id="5s_pyghUL_2" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbJ" id="5s_pyghMUpd" role="8Wnug">
              <node concept="3clFbS" id="5s_pyghMUpf" role="3clFbx">
                <node concept="3cpWs6" id="5s_pyghMV8P" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="5s_pyghMUzb" role="3clFbw">
                <node concept="0IXxy" id="5s_pyghMUpE" role="2Oq$k0" />
                <node concept="2xy62i" id="5s_pyghMV6E" role="2OqNvi">
                  <node concept="1Q80Hx" id="5s_pyghMV7m" role="2xHN3q" />
                  <node concept="lGBME" id="5s_pyghUL$v" role="3a7HXU" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5s_pyghMW1i" role="3cqZAp">
            <node concept="3cpWsn" id="5s_pyghMW1j" role="3cpWs9">
              <property role="TrG5h" value="parentApp" />
              <node concept="3Tqbb2" id="5s_pyghMW1h" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
              </node>
              <node concept="2OqwBi" id="5s_pyghMW1k" role="33vP2m">
                <node concept="0IXxy" id="5s_pyghMW1l" role="2Oq$k0" />
                <node concept="3TrEf2" id="5s_pyghMW1m" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRmjJr" resolve="parentApp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5s_pyghMVah" role="3cqZAp">
            <node concept="2OqwBi" id="5s_pyghMVi9" role="3clFbG">
              <node concept="0IXxy" id="5s_pyghMVaf" role="2Oq$k0" />
              <node concept="1P9Npp" id="5s_pyghMVwM" role="2OqNvi">
                <node concept="37vLTw" id="5s_pyghMW1n" role="1P9ThW">
                  <ref role="3cqZAo" node="5s_pyghMW1j" resolve="parentApp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5s_pyghMW9y" role="3cqZAp">
            <node concept="2OqwBi" id="5s_pyghMWjN" role="3clFbG">
              <node concept="37vLTw" id="5s_pyghMW9w" role="2Oq$k0">
                <ref role="3cqZAo" node="5s_pyghMW1j" resolve="parentApp" />
              </node>
              <node concept="1OKiuA" id="5s_pyghMWw3" role="2OqNvi">
                <node concept="1Q80Hx" id="5s_pyghMWy5" role="lBI5i" />
                <node concept="2B6iha" id="5s_pyghMW_W" role="lGT1i">
                  <property role="1lyBwo" value="last" />
                </node>
                <node concept="3cmrfG" id="5s_pyghMWDQ" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2JGKyji_TBY">
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="gpgy:3HBlKeoYKVW" resolve="DataType" />
    <node concept="2aJ2om" id="2JGKyji_TC0" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="fb_network" />
    </node>
    <node concept="1QoScp" id="2JGKyji_TL2" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="2JGKyji_TL3" role="3e4ffs">
        <node concept="3clFbS" id="2JGKyji_TL4" role="2VODD2">
          <node concept="3clFbF" id="2JGKyjiBjBv" role="3cqZAp">
            <node concept="3fqX7Q" id="2JGKyjiBlc4" role="3clFbG">
              <node concept="2OqwBi" id="2JGKyjiBlc6" role="3fr31v">
                <node concept="2OqwBi" id="2JGKyjiBlc7" role="2Oq$k0">
                  <node concept="pncrf" id="2JGKyjiBlc8" role="2Oq$k0" />
                  <node concept="2yIwOk" id="2JGKyjiBlc9" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="2JGKyjiBlca" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2JGKyji_TSe" role="1QoS34">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="1xolST" id="2JGKyji_TSi" role="1QoVPY">
        <property role="1xolSY" value="no type" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="23XkovVSBld">
    <property role="3GE5qa" value="fbtype.service" />
    <ref role="1XX52x" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
    <node concept="3EZMnI" id="23XkovVSBlf" role="2wV5jI">
      <node concept="PMmxH" id="23XkovVSBlg" role="3EZMnx">
        <ref role="PMmxG" node="3HBlKeoZHKf" resolve="FBTypeHeader" />
        <node concept="ljvvj" id="23XkovVSBlh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="23XkovVSBlo" role="3EZMnx">
        <ref role="PMmxG" node="PI_pXYvaBz" resolve="FBTypeFooter" />
      </node>
      <node concept="18a60v" id="23XkovVSBlq" role="3EZMnx">
        <node concept="VPM3Z" id="23XkovVSBlr" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="23XkovVSBls" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="23XkovVSBlt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovWstge">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:23XkovWspjs" resolve="UnknownAlgorithmBody" />
    <node concept="3F2HdR" id="23XkovWstgp" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:23XkovWspTW" resolve="code" />
      <node concept="2iRkQZ" id="23XkovWstgG" role="2czzBx" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovWstha">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:23XkovWspPm" resolve="CodeLine" />
    <node concept="3F0A7n" id="23XkovWsthc" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:23XkovWspPn" resolve="line" />
    </node>
  </node>
  <node concept="24kQdi" id="7DSsXPFKSro">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1XX52x" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
    <node concept="1kIj98" id="7DSsXPFKSrt" role="2wV5jI">
      <node concept="3F1sOY" id="7DSsXPFKSrz" role="1kIj9b">
        <ref role="1NtTu8" to="xiqq:7DSsXPFKSqX" resolve="value" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3wAsKTk97v$">
    <property role="TrG5h" value="WatcherCellProvider" />
    <node concept="2tJIrI" id="3wAsKTk97yJ" role="jymVt" />
    <node concept="312cEg" id="6K_0vqj4JEP" role="jymVt">
      <property role="TrG5h" value="myResource" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6K_0vqj4IXO" role="1B3o_S" />
      <node concept="3Tqbb2" id="6K_0vqj4JCh" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
      </node>
    </node>
    <node concept="312cEg" id="3wAsKTk97$C" role="jymVt">
      <property role="TrG5h" value="myFB" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="3wAsKTk97$6" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
      <node concept="3Tm6S6" id="3wAsKTk97_j" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3wAsKTk97_q" role="jymVt">
      <property role="TrG5h" value="myPort" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3wAsKTk97_s" role="1B3o_S" />
      <node concept="17QB3L" id="3wAsKTk97A3" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3wAsKTk97yL" role="jymVt" />
    <node concept="3clFbW" id="3wAsKTk97yU" role="jymVt">
      <property role="TrG5h" value="AbstractCellProvider" />
      <node concept="3cqZAl" id="3wAsKTk97yV" role="3clF45" />
      <node concept="3Tm1VV" id="3wAsKTk97yW" role="1B3o_S" />
      <node concept="37vLTG" id="3wAsKTk97yY" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3wAsKTk97yZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="3wAsKTk97z0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6K_0vqj4HRo" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="6K_0vqj4IlV" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkn64L" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3Tqbb2" id="3wAsKTkn64N" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkn64n" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="3wAsKTkn68B" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3wAsKTk97z1" role="3clF47">
        <node concept="XkiVB" id="3wAsKTk97z3" role="3cqZAp">
          <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
          <node concept="37vLTw" id="3wAsKTk97z2" role="37wK5m">
            <ref role="3cqZAo" node="3wAsKTk97yY" resolve="node" />
          </node>
        </node>
        <node concept="3clFbF" id="6K_0vqj4KSy" role="3cqZAp">
          <node concept="37vLTI" id="6K_0vqj4M2d" role="3clFbG">
            <node concept="37vLTw" id="6K_0vqj4M87" role="37vLTx">
              <ref role="3cqZAo" node="6K_0vqj4HRo" resolve="resource" />
            </node>
            <node concept="37vLTw" id="6K_0vqj4KSw" role="37vLTJ">
              <ref role="3cqZAo" node="6K_0vqj4JEP" resolve="myResource" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkn6cH" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkn8hA" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTkn8lQ" role="37vLTx">
              <ref role="3cqZAo" node="3wAsKTkn64L" resolve="fb" />
            </node>
            <node concept="37vLTw" id="3wAsKTkn6m4" role="37vLTJ">
              <ref role="3cqZAo" node="3wAsKTk97$C" resolve="myFB" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkn8wp" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkn9gQ" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTkn9jX" role="37vLTx">
              <ref role="3cqZAo" node="3wAsKTkn64n" resolve="port" />
            </node>
            <node concept="37vLTw" id="3wAsKTkn8wn" role="37vLTJ">
              <ref role="3cqZAo" node="3wAsKTk97_q" resolve="myPort" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkn9lA" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkn9oX" role="jymVt">
      <property role="TrG5h" value="createEditorCell" />
      <node concept="3Tm1VV" id="3wAsKTkn9oY" role="1B3o_S" />
      <node concept="3uibUv" id="3wAsKTkn9p0" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="3wAsKTkn9p1" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="3wAsKTkn9p2" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="3wAsKTkn9p3" role="3clF47">
        <node concept="3cpWs8" id="6K_0vqjnq2v" role="3cqZAp">
          <node concept="3cpWsn" id="6K_0vqjnq2w" role="3cpWs9">
            <property role="TrG5h" value="label" />
            <node concept="3uibUv" id="6K_0vqjnq2p" role="1tU5fm">
              <ref role="3uigEE" node="3wAsKTk9b0c" resolve="WatcherCellProvider.EditorCell_WatcherLabel" />
            </node>
            <node concept="2ShNRf" id="6K_0vqjnq2x" role="33vP2m">
              <node concept="1pGfFk" id="6K_0vqjnq2y" role="2ShVmc">
                <ref role="37wK5l" node="3wAsKTkjPBO" resolve="WatcherCellProvider.EditorCell_WatcherLabel" />
                <node concept="37vLTw" id="6K_0vqjnq2z" role="37wK5m">
                  <ref role="3cqZAo" node="3wAsKTkn9p1" resolve="context" />
                </node>
                <node concept="1rXfSq" id="6K_0vqjnq2$" role="37wK5m">
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                </node>
                <node concept="2ShNRf" id="6K_0vqjnq2_" role="37wK5m">
                  <node concept="1pGfFk" id="6K_0vqjnq2A" role="2ShVmc">
                    <ref role="37wK5l" to="v900:3wAsKTkjS1E" resolve="Watchable" />
                    <node concept="2OqwBi" id="6K_0vqjnq2B" role="37wK5m">
                      <node concept="37vLTw" id="6K_0vqjnq2C" role="2Oq$k0">
                        <ref role="3cqZAo" node="6K_0vqj4JEP" resolve="myResource" />
                      </node>
                      <node concept="iZEcu" id="6K_0vqjnq2D" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="6K_0vqjnq2E" role="37wK5m">
                      <node concept="37vLTw" id="6K_0vqjnq2F" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wAsKTk97$C" resolve="myFB" />
                      </node>
                      <node concept="iZEcu" id="6K_0vqjnq2G" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="6K_0vqjnq2H" role="37wK5m">
                      <ref role="3cqZAo" node="3wAsKTk97_q" resolve="myPort" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1N6Oh7f1iEw" role="3cqZAp">
          <node concept="3cpWsn" id="1N6Oh7f1iEx" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="1N6Oh7f1iEm" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="1N6Oh7f1iEy" role="33vP2m">
              <node concept="37vLTw" id="1N6Oh7f1iEz" role="2Oq$k0">
                <ref role="3cqZAo" node="6K_0vqjnq2w" resolve="label" />
              </node>
              <node concept="liA8E" id="1N6Oh7f1iE$" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkn9$6" role="3cqZAp">
          <node concept="2OqwBi" id="6K_0vqjnF3J" role="3clFbG">
            <node concept="37vLTw" id="1N6Oh7f1iE_" role="2Oq$k0">
              <ref role="3cqZAo" node="1N6Oh7f1iEx" resolve="style" />
            </node>
            <node concept="liA8E" id="6K_0vqjnFwk" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object):void" resolve="set" />
              <node concept="10M0yZ" id="6K_0vqjnGJO" role="37wK5m">
                <ref role="3cqZAo" to="5ueo:~StyleAttributes.EDITABLE" resolve="EDITABLE" />
                <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
              </node>
              <node concept="3clFbT" id="6K_0vqjnH0m" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6K_0vqjnH7l" role="3cqZAp">
          <node concept="37vLTw" id="6K_0vqjnIOr" role="3cqZAk">
            <ref role="3cqZAo" node="6K_0vqjnq2w" resolve="label" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3wAsKTkn9p4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPFF2Jm" role="jymVt" />
    <node concept="312cEu" id="3wAsKTk9b0c" role="jymVt">
      <property role="TrG5h" value="EditorCell_WatcherLabel" />
      <node concept="312cEg" id="3wAsKTkk4bL" role="jymVt">
        <property role="TrG5h" value="myWatchable" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="3wAsKTkk4bM" role="1B3o_S" />
        <node concept="3uibUv" id="6bryThmis4z" role="1tU5fm">
          <ref role="3uigEE" to="v900:3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
      <node concept="2tJIrI" id="3wAsKTkk3Wn" role="jymVt" />
      <node concept="3clFbW" id="3wAsKTkjPBO" role="jymVt">
        <node concept="3cqZAl" id="3wAsKTkjPBP" role="3clF45" />
        <node concept="3clFbS" id="3wAsKTkjPBS" role="3clF47">
          <node concept="XkiVB" id="3wAsKTkjPBU" role="3cqZAp">
            <ref role="37wK5l" to="g51k:~EditorCell_Label.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="EditorCell_Label" />
            <node concept="37vLTw" id="3wAsKTkjPBZ" role="37wK5m">
              <ref role="3cqZAo" node="3wAsKTkjPBV" resolve="editorContext" />
            </node>
            <node concept="37vLTw" id="3wAsKTkjPC3" role="37wK5m">
              <ref role="3cqZAo" node="3wAsKTkjPC0" resolve="node" />
            </node>
            <node concept="10Nm6u" id="3wAsKTkjQkW" role="37wK5m" />
          </node>
          <node concept="3clFbF" id="3wAsKTkk4bP" role="3cqZAp">
            <node concept="37vLTI" id="3wAsKTkk4bR" role="3clFbG">
              <node concept="37vLTw" id="3wAsKTkk4bU" role="37vLTJ">
                <ref role="3cqZAo" node="3wAsKTkk4bL" resolve="myWatchable" />
              </node>
              <node concept="37vLTw" id="3wAsKTkk4bV" role="37vLTx">
                <ref role="3cqZAo" node="3wAsKTkjR29" resolve="watchable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3wAsKTkjPBV" role="3clF46">
          <property role="TrG5h" value="editorContext" />
          <node concept="3uibUv" id="3wAsKTkjPBX" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
          </node>
          <node concept="2AHcQZ" id="3wAsKTkjPBY" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="3wAsKTkjPC0" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="3wAsKTkjPC2" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="3wAsKTkjR29" role="3clF46">
          <property role="TrG5h" value="watchable" />
          <node concept="3uibUv" id="6bryThmislk" role="1tU5fm">
            <ref role="3uigEE" to="v900:3wAsKTkjRj3" resolve="Watchable" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3wAsKTkjPqX" role="jymVt" />
      <node concept="3clFb_" id="3wAsKTk9bp1" role="jymVt">
        <property role="TrG5h" value="onAdd" />
        <node concept="3Tm1VV" id="3wAsKTk9bp2" role="1B3o_S" />
        <node concept="3cqZAl" id="3wAsKTk9bp4" role="3clF45" />
        <node concept="3clFbS" id="3wAsKTk9bp8" role="3clF47">
          <node concept="3clFbF" id="3wAsKTk9bpb" role="3cqZAp">
            <node concept="3nyPlj" id="3wAsKTk9bpa" role="3clFbG">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.onAdd():void" resolve="onAdd" />
            </node>
          </node>
          <node concept="3clFbH" id="5jACUPF_k0R" role="3cqZAp" />
          <node concept="3clFbF" id="5jACUPF_ldK" role="3cqZAp">
            <node concept="2OqwBi" id="5jACUPFDwR2" role="3clFbG">
              <node concept="2YIFZM" id="5jACUPFDwpU" role="2Oq$k0">
                <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
                <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="5jACUPFF7xt" role="2OqNvi">
                <ref role="37wK5l" to="v900:5jACUPFDAmD" resolve="addWatchedValueListener" />
                <node concept="37vLTw" id="5jACUPFF7QO" role="37wK5m">
                  <ref role="3cqZAo" node="3wAsKTkk4bL" resolve="myWatchable" />
                </node>
                <node concept="Xjq3P" id="5jACUPFF8eg" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3wAsKTk9bp9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3wAsKTkjQtD" role="jymVt" />
      <node concept="3clFb_" id="3wAsKTkjQNh" role="jymVt">
        <property role="TrG5h" value="onRemove" />
        <node concept="3Tm1VV" id="3wAsKTkjQNi" role="1B3o_S" />
        <node concept="3cqZAl" id="3wAsKTkjQNk" role="3clF45" />
        <node concept="3clFbS" id="3wAsKTkjQNo" role="3clF47">
          <node concept="3clFbF" id="3wAsKTkjQNr" role="3cqZAp">
            <node concept="3nyPlj" id="3wAsKTkjQNq" role="3clFbG">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.onRemove():void" resolve="onRemove" />
            </node>
          </node>
          <node concept="3clFbF" id="5jACUPFF8xx" role="3cqZAp">
            <node concept="2OqwBi" id="5jACUPFF8xy" role="3clFbG">
              <node concept="2YIFZM" id="5jACUPFF8xz" role="2Oq$k0">
                <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
                <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
              </node>
              <node concept="liA8E" id="5jACUPFF8x$" role="2OqNvi">
                <ref role="37wK5l" to="v900:5jACUPFDJsw" resolve="removeWatchedValueListener" />
                <node concept="37vLTw" id="5jACUPFF8x_" role="37wK5m">
                  <ref role="3cqZAo" node="3wAsKTkk4bL" resolve="myWatchable" />
                </node>
                <node concept="Xjq3P" id="5jACUPFF8xA" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3wAsKTkjQNp" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5jACUPFF8Q2" role="jymVt" />
      <node concept="3clFb_" id="5jACUPFFaB7" role="jymVt">
        <property role="TrG5h" value="onValueChanged" />
        <node concept="3Tm1VV" id="5jACUPFFaB9" role="1B3o_S" />
        <node concept="3cqZAl" id="5jACUPFFaBa" role="3clF45" />
        <node concept="37vLTG" id="5jACUPFFaBb" role="3clF46">
          <property role="TrG5h" value="newValue" />
          <node concept="17QB3L" id="5jACUPFFaBc" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="5jACUPFFaBg" role="3clF47">
          <node concept="3clFbF" id="5jACUPFFc4d" role="3cqZAp">
            <node concept="1rXfSq" id="5jACUPFFc4c" role="3clFbG">
              <ref role="37wK5l" to="g51k:~EditorCell_Label.setText(java.lang.String):void" resolve="setText" />
              <node concept="3cpWs3" id="6K_0vqjnmgy" role="37wK5m">
                <node concept="Xl_RD" id="6K_0vqjnmKj" role="3uHU7w">
                  <property role="Xl_RC" value=")" />
                </node>
                <node concept="3cpWs3" id="6K_0vqjnl7v" role="3uHU7B">
                  <node concept="Xl_RD" id="6K_0vqjnlyU" role="3uHU7B">
                    <property role="Xl_RC" value="( " />
                  </node>
                  <node concept="37vLTw" id="5jACUPFFcFX" role="3uHU7w">
                    <ref role="3cqZAo" node="5jACUPFFaBb" resolve="newValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6K_0vqjnnmh" role="3cqZAp" />
          <node concept="3clFbF" id="5jACUPFFxbl" role="3cqZAp">
            <node concept="1rXfSq" id="5jACUPFFxbj" role="3clFbG">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.relayout():void" resolve="relayout" />
            </node>
          </node>
          <node concept="3cpWs8" id="5jACUPFFvNb" role="3cqZAp">
            <node concept="3cpWsn" id="5jACUPFFvNc" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="3uibUv" id="5jACUPFFvN9" role="1tU5fm">
                <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
              </node>
              <node concept="1eOMI4" id="5jACUPFFvNd" role="33vP2m">
                <node concept="10QFUN" id="5jACUPFFvNe" role="1eOMHV">
                  <node concept="3uibUv" id="5jACUPFFvNf" role="10QFUM">
                    <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                  </node>
                  <node concept="1rXfSq" id="5jACUPFFvNg" role="10QFUP">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5jACUPFFdp8" role="3cqZAp">
            <node concept="2OqwBi" id="5jACUPFFi63" role="3clFbG">
              <node concept="37vLTw" id="5jACUPFFvNh" role="2Oq$k0">
                <ref role="3cqZAo" node="5jACUPFFvNc" resolve="component" />
              </node>
              <node concept="liA8E" id="5jACUPFFq1M" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.repaint(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="repaint" />
                <node concept="Xjq3P" id="5jACUPFFq_G" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5jACUPFFaBh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTk9b4C" role="1zkMxy">
        <ref role="3uigEE" to="g51k:~EditorCell_Label" resolve="EditorCell_Label" />
      </node>
      <node concept="3uibUv" id="6bryThmir0o" role="EKbjA">
        <ref role="3uigEE" to="v900:5jACUPF_hkq" resolve="WatchedValueListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPFF2Oo" role="jymVt" />
    <node concept="3Tm1VV" id="3wAsKTk97v_" role="1B3o_S" />
    <node concept="3uibUv" id="3wAsKTk97yG" role="1zkMxy">
      <ref role="3uigEE" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
    </node>
  </node>
  <node concept="PKFIW" id="1N6Oh7f7bq1">
    <property role="TrG5h" value="Folding" />
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="3F0ifn" id="1N6Oh7f7bq2" role="2wV5jI">
      <property role="3F0ifm" value="..." />
      <node concept="VechU" id="1N6Oh7f7bq3" role="3F10Kt">
        <property role="Vb096" value="lightGray" />
      </node>
    </node>
  </node>
</model>

