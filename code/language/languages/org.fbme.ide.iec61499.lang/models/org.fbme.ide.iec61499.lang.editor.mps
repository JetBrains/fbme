<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9a9b929e-1b8b-403c-99cb-9e49e4b8f68b(org.fbme.ide.iec61499.lang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="org.fbme.ide.meta.editor" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(org.fbme.ide.st.lang.structure)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="5kh9" ref="r:fb13b7e5-37c8-4188-96ed-057d5b8154fd(org.fbme.ide.st.lang.editor)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="5991739802479784074" name="jetbrains.mps.lang.editor.structure.MenuTypeNamed" flags="ng" index="22hDWg" />
      <concept id="5991739802479784073" name="jetbrains.mps.lang.editor.structure.MenuTypeDefault" flags="ng" index="22hDWj" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="2000375450116423800" name="jetbrains.mps.lang.editor.structure.SubstituteMenu" flags="ng" index="22mcaB" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="7429591467341004871" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Group" flags="ng" index="aenpk">
        <child id="7429591467341004872" name="parts" index="aenpr" />
        <child id="7429591467341004877" name="condition" index="aenpu" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1156252885376" name="separatorLayoutConstraint" index="Q2I2d" />
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="6046489571270834038" name="foldedCellModel" index="3EmGlc" />
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
        <child id="784421273959492606" name="nodeFunction" index="mvV$0" />
        <child id="6718020819487784677" name="menuReference" index="A14EM" />
      </concept>
      <concept id="784421273959493166" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_TargetNode" flags="ig" index="mvVNg" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
        <child id="8979250711607012232" name="cellSelector" index="3a7HXU" />
      </concept>
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="4323500428136740385" name="jetbrains.mps.lang.editor.structure.CellIdReferenceSelector" flags="ng" index="2TlHUq">
        <reference id="4323500428136742952" name="id" index="2TlMyj" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
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
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="7620205565664569937" name="jetbrains.mps.lang.editor.structure.DefaultBaseLine" flags="ln" index="3994b7">
        <property id="7620205565664606477" name="baseline" index="399d6r" />
      </concept>
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
      <concept id="730181322658904464" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_IncludeMenu" flags="ng" index="1s_PAr">
        <child id="730181322658904467" name="menuReference" index="1s_PAo" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="8210508057161359081" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_DefaultWithFunction" flags="ng" index="3tp4HU">
        <child id="8210508057161359082" name="query" index="3tp4HT" />
      </concept>
      <concept id="8210508057161359084" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Concept" flags="in" index="3tp4HZ" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
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
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
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
      <concept id="5624877018226900666" name="jetbrains.mps.lang.editor.structure.TransformationMenu" flags="ng" index="3ICUPy" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="5624877018228264944" name="jetbrains.mps.lang.editor.structure.TransformationMenuContribution" flags="ng" index="3INDKC">
        <child id="6718020819489956031" name="menuReference" index="AmTjC" />
      </concept>
      <concept id="6684862045052272180" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_NodeToWrap" flags="ng" index="3N4pyC" />
      <concept id="6684862045052059649" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_WrapperHandler" flags="ig" index="3N5aqt" />
      <concept id="6684862045052059291" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Wrapper" flags="ng" index="3N5dw7">
        <child id="6089045305655104958" name="reference" index="2klrvf" />
        <child id="6684862045053873740" name="handler" index="3Na0zg" />
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
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="8428109087107030357" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_ReferenceScope" flags="ng" index="3XHNnq">
        <reference id="8428109087107339113" name="reference" index="3XGfJA" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
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
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
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
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359206929" name="jetbrains.mps.lang.text.structure.Text" flags="nn" index="1Pa9Pv">
        <child id="2535923850359210936" name="lines" index="1PaQFQ" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="org.fbme.ide.meta.editor">
      <concept id="5118273348277656319" name="org.fbme.ide.meta.editor.structure.CellModel_BorderedRefNodeList" flags="sg" stub="5118273348279960673" index="1ktTy1">
        <child id="5118273348277720092" name="footerCell" index="1ktDpy" />
        <child id="5118273348277720090" name="headerCell" index="1ktDp$" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="3HBlKeoYFrq">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="3EZMnI" id="6mpHcZeKwvy" role="2wV5jI">
      <property role="S$Qs1" value="false" />
      <node concept="3994b7" id="3IX4BsJXPI7" role="3F10Kt">
        <property role="399d6r" value="6B0q9qwTbyG/CENTER" />
      </node>
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
          <node concept="VPM3Z" id="4s7KBSjjgYn" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5s_pyghauCJ" role="2czzBx" />
        <node concept="PMmxH" id="3IX4BsJQDbC" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
          <node concept="VPM3Z" id="5s_pyghptOp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="3IX4BsJQDbE" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
          <node concept="VPM3Z" id="4s7KBSjl9lj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="3IX4BsJQDbG" role="3EmGlc">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
          <node concept="VPM3Z" id="4s7KBSjf4z4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="PI_pXYvaF3" role="3EZMnx">
        <ref role="PMmxG" node="PI_pXYvaBz" resolve="FBTypeFooter" />
        <node concept="ljvvj" id="1HEL0zWgaUj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoYKVl">
    <property role="3GE5qa" value="interface" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiT" resolve="EventAssociation" />
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
        <property role="Vb096" value="g1_qRwE/darkGreen" />
      </node>
      <node concept="Vb9p2" id="3HBlKeoYLKs" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="3HBlKeoYLP6" role="V601i">
      <property role="TrG5h" value="ExpandLabel" />
      <node concept="VechU" id="3HBlKeoYLPk" role="3F10Kt">
        <property role="Vb096" value="fLJRk5_/gray" />
      </node>
      <node concept="30gYXW" id="3HBlKeoYLPq" role="3F10Kt">
        <property role="Vb096" value="fLJRk5A/lightGray" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoYLPR">
    <property role="3GE5qa" value="interface" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="3EZMnI" id="3HBlKeoYLPT" role="2wV5jI">
      <node concept="3F0A7n" id="3HBlKeoYLQ0" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="A1WHu" id="3Sv$YXXWLC_" role="3vIgyS">
          <ref role="A1WHt" node="6LU90BQgLnB" resolve="EventDeclaraiton_WithTransform" />
        </node>
      </node>
      <node concept="3EZMnI" id="PI_pXYb8vO" role="3EZMnx">
        <node concept="3F0ifn" id="3HBlKeoYLQ6" role="3EZMnx">
          <property role="3F0ifm" value="WITH" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F2HdR" id="3HBlKeoYLQ$" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="Q2I2d" value="g$1Qtxb/punctuation" />
          <ref role="1NtTu8" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
          <node concept="l2Vlx" id="6ZZUlxDuwJ_" role="2czzBx" />
        </node>
        <node concept="l2Vlx" id="PI_pXYb8vR" role="2iSdaV" />
        <node concept="VPM3Z" id="PI_pXYb8vS" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pkWqt" id="3Sv$YXXVsY6" role="pqm2j">
          <node concept="3clFbS" id="3Sv$YXXVsY7" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXVt5s" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXVuI6" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXXVtjz" role="2Oq$k0">
                  <node concept="pncrf" id="3Sv$YXXVt5r" role="2Oq$k0" />
                  <node concept="Bykcj" id="3Sv$YXXVu3W" role="2OqNvi">
                    <node concept="1aIX9F" id="3Sv$YXXVu3Y" role="1xVPHs">
                      <node concept="26LbJo" id="3Sv$YXXVuoM" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3Sv$YXXVwEq" role="2OqNvi" />
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
        <node concept="A1WHu" id="3Sv$YXY39aN" role="3vIgyS">
          <ref role="A1WHt" node="3Sv$YXY2Z14" resolve="AddActions_TM" />
        </node>
      </node>
      <node concept="3EZMnI" id="PI_pXY9NK_" role="3EZMnx">
        <node concept="3F0ifn" id="PI_pXY9NKO" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F2HdR" id="3HBlKeoZ0W_" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="Q2I2d" value="g$1Qtxb/punctuation" />
          <ref role="1NtTu8" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
          <node concept="l2Vlx" id="3HBlKeoZ0WB" role="2czzBx" />
        </node>
        <node concept="l2Vlx" id="PI_pXY9NKC" role="2iSdaV" />
        <node concept="VPM3Z" id="PI_pXY9NKD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pkWqt" id="3Sv$YXY2SBW" role="pqm2j">
          <node concept="3clFbS" id="3Sv$YXY2SBX" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXY2SJi" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXY2WLo" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXY2SXp" role="2Oq$k0">
                  <node concept="pncrf" id="3Sv$YXY2SJh" role="2Oq$k0" />
                  <node concept="Bykcj" id="3Sv$YXY2Wb2" role="2OqNvi">
                    <node concept="1aIX9F" id="3Sv$YXY2Wb4" role="1xVPHs">
                      <node concept="26LbJo" id="3Sv$YXY2Ws4" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3Sv$YXY2YHG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="7GyesCpsa_0" role="3EZMnx">
        <ref role="PMmxG" to="5kh9:7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="3HBlKeoZ0Wj" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="5jb5jNChIFe" role="6VMZX">
      <node concept="3F0ifn" id="5jb5jNChIFl" role="3EZMnx">
        <property role="3F0ifm" value="position" />
      </node>
      <node concept="3F0ifn" id="5jb5jNChIFr" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="5jb5jNChIFC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5jb5jNChIFz" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5jb5jNC67p4" resolve="position" />
      </node>
      <node concept="2iRfu4" id="5jb5jNChIFE" role="2iSdaV" />
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
                <node concept="2OqwBi" id="5tgPFZSaAnY" role="3clFbG">
                  <node concept="2OqwBi" id="5tgPFZSaAWA" role="2Oq$k0">
                    <node concept="pncrf" id="5tgPFZSaAWB" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5tgPFZSaAWC" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:1zB5ET5xzpJ" resolve="body" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="5tgPFZSaAH1" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:1zB5ET5xzrF" resolve="languageType" />
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
        <node concept="1ktTy1" id="7tln3wNtfEu" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="xiqq:5tgPFZSaxk4" resolve="temporaryVariables" />
          <node concept="pVoyu" id="2nUT8eQRbh8" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRkQZ" id="2nUT8eQSNIx" role="2czzBx" />
          <node concept="3F0ifn" id="7tln3wNtfEx" role="1ktDp$">
            <property role="3F0ifm" value="VAR_TEMP" />
            <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
          </node>
          <node concept="3F0ifn" id="7tln3wNtfEz" role="1ktDpy">
            <property role="3F0ifm" value="END_VAR" />
            <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
          </node>
          <node concept="lj46D" id="7tln3wNtiEE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="PMmxH" id="7tln3wNtiJS" role="3EmGlc">
            <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
          </node>
          <node concept="3F0ifn" id="7tln3wNtiJU" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="no temporary variables" />
            <node concept="Vb9p2" id="7tln3wNtiJV" role="3F10Kt">
              <property role="Vbekb" value="g1_kEg4/ITALIC" />
            </node>
            <node concept="VPM3Z" id="7tln3wNtiJW" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
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
        <node concept="PMmxH" id="3IX4BsJQDyB" role="AHCbl">
          <ref role="PMmxG" node="1N6Oh7f7bq1" resolve="Folding" />
        </node>
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
    <node concept="3EZMnI" id="38k27IRUO8T" role="6VMZX">
      <node concept="3F0ifn" id="38k27IRUO8U" role="3EZMnx">
        <property role="3F0ifm" value="position" />
      </node>
      <node concept="3F0ifn" id="38k27IRUO8V" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="38k27IRUO8W" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="38k27IRUO8X" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5jb5jNCauI2" resolve="position" />
      </node>
      <node concept="2iRfu4" id="38k27IRUO8Y" role="2iSdaV" />
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
      </node>
      <node concept="PMmxH" id="2ByE74knc0P" role="3EZMnx">
        <ref role="PMmxG" node="2ByE74knc05" resolve="InterfaceList" />
        <node concept="pVoyu" id="6LU90BQoWxL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="VPM3Z" id="3tDlCSlUDNv" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="l2Vlx" id="3tDlCSlUDNy" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="PI_pXYbMGe">
    <property role="TrG5h" value="IdeaStyleSheet" />
    <node concept="14StLt" id="PI_pXYbMGi" role="V601i">
      <property role="TrG5h" value="IdeaKeyword" />
      <node concept="VechU" id="PI_pXYbMGj" role="3F10Kt">
        <property role="Vb096" value="g1_eI4o/darkBlue" />
      </node>
      <node concept="Vb9p2" id="PI_pXYbMGk" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="PI_pXYbMGo" role="V601i">
      <property role="TrG5h" value="IdeaType" />
      <node concept="VechU" id="PI_pXYbMGp" role="3F10Kt">
        <property role="Vb096" value="g1_eI4o/darkBlue" />
      </node>
      <node concept="Vb9p2" id="PI_pXYbMGq" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYvasK">
    <property role="3GE5qa" value="fbtype.composite" />
    <ref role="1XX52x" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
    <node concept="3EZMnI" id="PI_pXYvasM" role="2wV5jI">
      <node concept="3994b7" id="3IX4BsKszOG" role="3F10Kt">
        <property role="399d6r" value="6B0q9qwTbyG/CENTER" />
      </node>
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
    <node concept="3EZMnI" id="3IX4BsKqFtS" role="6VMZX">
      <node concept="3F0ifn" id="3IX4BsKqFtZ" role="3EZMnx">
        <property role="3F0ifm" value="path" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKqFu5" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="3IX4BsKqFui" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3IX4BsKqFud" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3IX4BsKqy6J" resolve="path" />
      </node>
      <node concept="2iRfu4" id="3IX4BsKqFtV" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYvaM_">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1XX52x" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="3EZMnI" id="22$VZ0KxNmV" role="2wV5jI">
      <node concept="1iCGBv" id="22$VZ0KxNnc" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:PI_pXYus4r" resolve="component" />
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
    </node>
  </node>
  <node concept="24kQdi" id="6g3sTReV9Iz">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="1QoScp" id="6g3sTReV9I_" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="3F0ifn" id="6g3sTReV9PP" role="1QoS34">
        <property role="3F0ifm" value="1" />
        <node concept="VPxyj" id="1OShRWXJOTk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
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
          <node concept="A1WHu" id="47wAAQ5blUj" role="3vIgyS">
            <ref role="A1WHt" node="6g3sTReXI_G" resolve="TransitionConditionTM_ForEvent" />
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
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
    <node concept="3EZMnI" id="1CoiI8TWncI" role="6VMZX">
      <node concept="3F0ifn" id="1CoiI8TWncJ" role="3EZMnx">
        <property role="3F0ifm" value="position" />
      </node>
      <node concept="3F0ifn" id="1CoiI8TWncK" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="1CoiI8TWncL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1CoiI8TWncM" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:6LU90BOcpSo" resolve="position" />
      </node>
      <node concept="2iRfu4" id="1CoiI8TWncN" role="2iSdaV" />
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
    <node concept="3EZMnI" id="1CoiI8TWncy" role="6VMZX">
      <node concept="3F0ifn" id="1CoiI8TWncz" role="3EZMnx">
        <property role="3F0ifm" value="position" />
      </node>
      <node concept="3F0ifn" id="1CoiI8TWnc$" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="1CoiI8TWnc_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1CoiI8TWncA" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:6LU90BOchbE" resolve="position" />
      </node>
      <node concept="2iRfu4" id="1CoiI8TWncB" role="2iSdaV" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
      <node concept="3EZMnI" id="7oJsd9wUnJ8" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9wUnJa" role="3F10Kt" />
        <node concept="ljvvj" id="2lwHqHkp4qE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="2lwHqHkp4qw" role="3EZMnx">
          <property role="3F0ifm" value="RESOURCE_TYPE" />
          <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
        </node>
        <node concept="3F0A7n" id="2lwHqHkp4qA" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="l2Vlx" id="7oJsd9wUnJd" role="2iSdaV" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
  <node concept="24kQdi" id="2lwHqHkyF7F">
    <ref role="1XX52x" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
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
    <ref role="1XX52x" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
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
        <node concept="A1WHu" id="PZB1W7eJhA" role="3vIgyS">
          <ref role="A1WHt" node="PZB1W7eHYs" resolve="ResourceDeclaration_AddParametersTM" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
      <node concept="l2Vlx" id="2lwHqHk$uCo" role="2iSdaV" />
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
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRR5RMN">
    <property role="3GE5qa" value="network.subapp" />
    <ref role="1XX52x" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
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
    <node concept="3EZMnI" id="2syzu7qCgdp" role="6VMZX">
      <node concept="3F0ifn" id="2syzu7qCgdw" role="3EZMnx">
        <property role="3F0ifm" value="position" />
      </node>
      <node concept="3F0ifn" id="2syzu7qCgdE" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="2syzu7qCiNT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2syzu7qCgdM" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:7oJsd9x2gq9" resolve="position" />
      </node>
      <node concept="2iRfu4" id="2syzu7qCgds" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRR7ME_">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
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
        <node concept="ljvvj" id="7bV8hH5uJ8o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="uLhTRR7MEE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="uLhTRR7MHm">
    <property role="3GE5qa" value="devices" />
    <ref role="1XX52x" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
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
        <node concept="A1WHu" id="PZB1W7aQbG" role="3vIgyS">
          <ref role="A1WHt" node="PZB1W7aHCo" resolve="DeviceDeclaration_AddParametersTM" />
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
      <node concept="3F2HdR" id="uLhTRR7MJk" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:1WTKUmKKVPK" resolve="resources" />
        <node concept="pVoyu" id="PZB1W7dzWJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
    <ref role="1XX52x" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
    <node concept="3EZMnI" id="uLhTRR7MVX" role="2wV5jI">
      <node concept="3EZMnI" id="7oJsd9x5UA2" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9x5UA4" role="3F10Kt" />
        <node concept="ljvvj" id="uLhTRR7MXM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="uLhTRR7MVU" role="3EZMnx">
          <property role="3F0ifm" value="SYSTEM" />
          <ref role="1k5W1q" node="3HBlKeoYKWR" resolve="RootKeyword" />
        </node>
        <node concept="3F0A7n" id="uLhTRR7MWa" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="l2Vlx" id="7oJsd9x5UA7" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="uLhTRR7MVY" role="2iSdaV" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
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
    <ref role="1XX52x" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
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
          <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
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
  <node concept="1h_SRR" id="uLhTRRqInt">
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="DeleteResource" />
    <ref role="1h_SK9" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="1hA7zw" id="uLhTRRqInu" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
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
    <ref role="1XX52x" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
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
    <ref role="1XX52x" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
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
        <property role="Q2I2d" value="g$1Qtxb/punctuation" />
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
  <node concept="1h_SRR" id="5s_pyghMTZY">
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="DeleteDotSubapp" />
    <ref role="1h_SK9" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
    <node concept="1hA7zw" id="5s_pyghMTZZ" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
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
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
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
      <property role="39s7Ar" value="true" />
      <property role="1O74Pk" value="true" />
      <ref role="1NtTu8" to="xiqq:23XkovWspPn" resolve="line" />
    </node>
  </node>
  <node concept="24kQdi" id="7DSsXPFKSro">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1XX52x" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
    <node concept="3F1sOY" id="7DSsXPFKSrz" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:7DSsXPFKSqX" resolve="value" />
    </node>
  </node>
  <node concept="PKFIW" id="1N6Oh7f7bq1">
    <property role="TrG5h" value="Folding" />
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="3F0ifn" id="1N6Oh7f7bq2" role="2wV5jI">
      <property role="3F0ifm" value="..." />
      <node concept="VechU" id="1N6Oh7f7bq3" role="3F10Kt">
        <property role="Vb096" value="fLJRk5A/lightGray" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3IX4BsKgDm3">
    <property role="3GE5qa" value="canvas" />
    <ref role="1XX52x" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
    <node concept="3EZMnI" id="3IX4BsKgDm8" role="2wV5jI">
      <node concept="3F0ifn" id="3IX4BsKgDma" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="3IX4BsKgDm$" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5fP$Xwj3irK" resolve="x" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKgDmi" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="3IX4BsKgDmK" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5fP$Xwj3irM" resolve="y" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKgDmq" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="3IX4BsKgDmb" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3IX4BsKoibd">
    <property role="3GE5qa" value="canvas" />
    <ref role="1XX52x" to="xiqq:3IX4BsKoiap" resolve="StraightConnectionPath" />
    <node concept="PMmxH" id="3IX4BsKoibi" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="3IX4BsKoicd">
    <property role="3GE5qa" value="canvas" />
    <ref role="1XX52x" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
    <node concept="3EZMnI" id="3IX4BsKoicf" role="2wV5jI">
      <node concept="PMmxH" id="3IX4BsKoicm" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKoicV" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKoidd" role="3EZMnx">
        <property role="3F0ifm" value="x" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKoidp" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="3IX4BsKoidJ" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3IX4BsKoibI" resolve="dx" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKoid3" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="3IX4BsKoici" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3IX4BsKonzA">
    <property role="3GE5qa" value="canvas" />
    <ref role="1XX52x" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
    <node concept="3EZMnI" id="3IX4BsKonzL" role="2wV5jI">
      <node concept="PMmxH" id="3IX4BsKonzS" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKonzX" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="3IX4BsKonBT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="3IX4BsKonBY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3IX4BsKon$f" role="3EZMnx">
        <property role="3F0ifm" value="x1" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKon$r" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="3IX4BsKonC2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3IX4BsKon$L" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3IX4BsKomau" resolve="dx1" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKon_1" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="3IX4BsKonC4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3IX4BsKon_j" role="3EZMnx">
        <property role="3F0ifm" value="y" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKon_B" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="3IX4BsKonC6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3IX4BsKon_X" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3IX4BsKomaw" resolve="dy" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKonAl" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="3IX4BsKonC8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3IX4BsKonAJ" role="3EZMnx">
        <property role="3F0ifm" value="x2" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKonBb" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="3IX4BsKonCa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3IX4BsKonBD" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3IX4BsKomaz" resolve="dx2" />
      </node>
      <node concept="3F0ifn" id="3IX4BsKon$5" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="3IX4BsKonCc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3IX4BsKonzO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2r29JVY5MC5">
    <property role="3GE5qa" value="network.fb" />
    <ref role="1XX52x" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
    <node concept="3EZMnI" id="2r29JVY5MCf" role="2wV5jI">
      <node concept="3F0A7n" id="2r29JVY5MCm" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2r29JVY5MCs" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="2r29JVY5MC$" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:PI_pXYugbv" resolve="type" />
        <node concept="1sVBvm" id="2r29JVY5MCA" role="1sWHZn">
          <node concept="3SHvHV" id="2r29JVY5MCJ" role="2wV5jI" />
        </node>
        <node concept="A1WHu" id="PZB1W7eMkf" role="3vIgyS">
          <ref role="A1WHt" node="PZB1W7eJnW" resolve="FunctionBlockDeclaration_AddParametersTM" />
        </node>
      </node>
      <node concept="3EZMnI" id="PZB1W7eL0o" role="3EZMnx">
        <node concept="VPM3Z" id="PZB1W7eL0q" role="3F10Kt" />
        <node concept="3F0ifn" id="PZB1W7eL0C" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11LMrY" id="PZB1W7eL11" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="PZB1W7eL0I" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
          <node concept="l2Vlx" id="PZB1W7eL0K" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="PZB1W7eL0T" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="PZB1W7eL16" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="PZB1W7eL0t" role="2iSdaV" />
        <node concept="pkWqt" id="PZB1W7eL19" role="pqm2j">
          <node concept="3clFbS" id="PZB1W7eL1a" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7eL56" role="3cqZAp">
              <node concept="2OqwBi" id="PZB1W7eLZL" role="3clFbG">
                <node concept="2OqwBi" id="PZB1W7eLkU" role="2Oq$k0">
                  <node concept="pncrf" id="PZB1W7eL55" role="2Oq$k0" />
                  <node concept="Bykcj" id="PZB1W7eLGu" role="2OqNvi">
                    <node concept="1aIX9F" id="PZB1W7eLGw" role="1xVPHs">
                      <node concept="26LbJo" id="PZB1W7eLNF" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="PZB1W7eMfU" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="2r29JVY5MCi" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="5HzRr7EFlvx" role="6VMZX">
      <node concept="3EZMnI" id="1CoiI8TWiGx" role="3EZMnx">
        <node concept="VPM3Z" id="5HzRr7EFlvZ" role="3F10Kt" />
        <node concept="3F0ifn" id="1CoiI8TWiGC" role="3EZMnx">
          <property role="3F0ifm" value="position" />
        </node>
        <node concept="3F0ifn" id="1CoiI8TWiGI" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="1CoiI8TWncw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="1CoiI8TWiGQ" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:3IX4BsKatOx" resolve="position" />
        </node>
        <node concept="2iRfu4" id="1CoiI8TWiG$" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5HzRr7EFlv$" role="3EZMnx">
        <node concept="VPM3Z" id="5HzRr7EFlvA" role="3F10Kt" />
        <node concept="3F0ifn" id="5HzRr7EFlvC" role="3EZMnx">
          <property role="3F0ifm" value="parameters" />
        </node>
        <node concept="3F0ifn" id="5HzRr7EFlvF" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="2iRfu4" id="5HzRr7EFlvD" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5HzRr7EFlvQ" role="3EZMnx">
        <node concept="VPM3Z" id="5HzRr7EFlvS" role="3F10Kt" />
        <node concept="3XFhqQ" id="5HzRr7EFlvW" role="3EZMnx" />
        <node concept="3F2HdR" id="5HzRr7EFlvK" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
          <node concept="2iRkQZ" id="5HzRr7EFlvN" role="2czzBx" />
          <node concept="VPM3Z" id="5HzRr7EFlvO" role="3F10Kt" />
        </node>
        <node concept="2iRfu4" id="5HzRr7EFlvV" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="5HzRr7EFlvy" role="2iSdaV" />
    </node>
  </node>
  <node concept="3INDKC" id="3Sv$YXXWP$b">
    <property role="TrG5h" value="DataType_TM_AddInitialToParameterDeclaration" />
    <node concept="1Qtc8_" id="3Sv$YXXWP$g" role="IW6Ez">
      <node concept="3cWJ9i" id="3Sv$YXXWP$n" role="1Qtc8$">
        <node concept="CtIbL" id="3Sv$YXXWP$p" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="3Sv$YXXWP$t" role="1Qtc8A">
        <node concept="1hCUdq" id="3Sv$YXXWP$u" role="1hCUd6">
          <node concept="3clFbS" id="3Sv$YXXWP$v" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXWR4G" role="3cqZAp">
              <node concept="Xl_RD" id="3Sv$YXXWR4F" role="3clFbG">
                <property role="Xl_RC" value=":=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3Sv$YXXWP$w" role="IWgqQ">
          <node concept="3clFbS" id="3Sv$YXXWP$x" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXWRuV" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXXaoZ" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXXWUVT" role="2Oq$k0">
                  <node concept="2OqwBi" id="3Sv$YXXWSxF" role="2Oq$k0">
                    <node concept="1PxgMI" id="3Sv$YXXWSlN" role="2Oq$k0">
                      <node concept="chp4Y" id="3Sv$YXXWSmG" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                      </node>
                      <node concept="2OqwBi" id="3Sv$YXXWRAH" role="1m5AlR">
                        <node concept="7Obwk" id="3Sv$YXXWRuU" role="2Oq$k0" />
                        <node concept="1mfA1w" id="3Sv$YXXWS71" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="3Sv$YXXWSRH" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:2lwHqHks4d2" resolve="initialValue" />
                    </node>
                  </node>
                  <node concept="zfrQC" id="3Sv$YXXWZpl" role="2OqNvi" />
                </node>
                <node concept="1OKiuA" id="3Sv$YXXXdVQ" role="2OqNvi">
                  <node concept="1Q80Hx" id="3Sv$YXXXe1l" role="lBI5i" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="3Sv$YXXWPHi" role="2jiSrf">
          <node concept="3clFbS" id="3Sv$YXXWPHj" role="2VODD2">
            <node concept="3cpWs8" id="3Sv$YXXX2eA" role="3cqZAp">
              <node concept="3cpWsn" id="3Sv$YXXX2eB" role="3cpWs9">
                <property role="TrG5h" value="parent" />
                <node concept="3Tqbb2" id="3Sv$YXXX2e$" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                </node>
                <node concept="1PxgMI" id="3Sv$YXXX2eC" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="3Sv$YXXX2eD" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="3Sv$YXXX2eE" role="1m5AlR">
                    <node concept="7Obwk" id="3Sv$YXXX2eF" role="2Oq$k0" />
                    <node concept="1mfA1w" id="3Sv$YXXX2eG" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Sv$YXXX2OA" role="3cqZAp">
              <node concept="1Wc70l" id="3Sv$YXXX3To" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXXX5qJ" role="3uHU7w">
                  <node concept="2OqwBi" id="3Sv$YXXX4lq" role="2Oq$k0">
                    <node concept="37vLTw" id="3Sv$YXXX428" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Sv$YXXX2eB" resolve="parent" />
                    </node>
                    <node concept="Bykcj" id="3Sv$YXXX4PK" role="2OqNvi">
                      <node concept="1aIX9F" id="3Sv$YXXX4PM" role="1xVPHs">
                        <node concept="26LbJo" id="3Sv$YXXX514" role="1aIX9E">
                          <ref role="26LbJp" to="xiqq:2lwHqHks4d2" resolve="initialValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1v1jN8" id="3Sv$YXXXa3P" role="2OqNvi" />
                </node>
                <node concept="3y3z36" id="3Sv$YXXX3zc" role="3uHU7B">
                  <node concept="37vLTw" id="3Sv$YXXX2O$" role="3uHU7B">
                    <ref role="3cqZAo" node="3Sv$YXXX2eB" resolve="parent" />
                  </node>
                  <node concept="10Nm6u" id="3Sv$YXXX3J9" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="A1WHr" id="3Sv$YXXWP$d" role="AmTjC">
      <ref role="2ZyFGn" to="gpgy:3HBlKeoYKVW" resolve="DataType" />
    </node>
  </node>
  <node concept="3ICUPy" id="6g3sTReVva9">
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="22hDWg" id="6pYQ4mCjF1N" role="22hAXT">
      <property role="TrG5h" value="TransitionConditionTMAction_AddInputEvent" />
    </node>
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
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="6g3sTReXGt$" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="6g3sTReV$pa">
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="22hDWg" id="6pYQ4mCjF1O" role="22hAXT">
      <property role="TrG5h" value="TransitionConditionTMAction_AddGuardCondition" />
    </node>
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
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
        <node concept="CtIbL" id="6g3sTReXGti" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="6g3sTReXFAI">
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="22hDWg" id="6pYQ4mCjF1P" role="22hAXT">
      <property role="TrG5h" value="TransitionConditionTM_ForAlways" />
    </node>
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
  <node concept="3ICUPy" id="6g3sTReXI_G">
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="22hDWg" id="6pYQ4mCjF1Q" role="22hAXT">
      <property role="TrG5h" value="TransitionConditionTM_ForEvent" />
    </node>
    <node concept="1Qtc8_" id="6g3sTReXI_H" role="IW6Ez">
      <node concept="3cWJ9i" id="6g3sTReXI_P" role="1Qtc8$">
        <node concept="CtIbL" id="6g3sTReXI_R" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
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
  <node concept="3ICUPy" id="6g3sTReXI_V">
    <ref role="aqKnT" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="22hDWg" id="6pYQ4mCjF1R" role="22hAXT">
      <property role="TrG5h" value="TransitionConditionTM_ForGuardCondition" />
    </node>
    <node concept="1Qtc8_" id="6g3sTReXI_W" role="IW6Ez">
      <node concept="3cWJ9i" id="6g3sTReXI_X" role="1Qtc8$">
        <node concept="CtIbL" id="6g3sTReXI_Y" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="mvV$s" id="6g3sTReXI_Z" role="1Qtc8A">
        <node concept="A1WHu" id="6g3sTReXIA0" role="A14EM">
          <ref role="A1WHt" node="6g3sTReVva9" resolve="TransitionConditionTMAction_AddInputEvent" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="uLhTRRqCST">
    <ref role="aqKnT" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="22hDWg" id="6pYQ4mCjF1S" role="22hAXT">
      <property role="TrG5h" value="AddExpplicitResource" />
    </node>
    <node concept="1Qtc8_" id="uLhTRRqCSU" role="IW6Ez">
      <node concept="3cWJ9i" id="uLhTRRqCSY" role="1Qtc8$">
        <node concept="CtIbL" id="uLhTRRqCT0" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
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
                  <ref role="37wK5l" to="mhbf:~SNode.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SReference)" resolve="setReference" />
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
  <node concept="3ICUPy" id="uLhTRROX$R">
    <ref role="aqKnT" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="22hDWg" id="6pYQ4mCjF1T" role="22hAXT">
      <property role="TrG5h" value="ChangeResource" />
    </node>
    <node concept="1Qtc8_" id="uLhTRROX$S" role="IW6Ez">
      <node concept="3eGOoe" id="uLhTRROX$W" role="1Qtc8$" />
      <node concept="3PzhKR" id="uLhTRROX$Z" role="1Qtc8A">
        <ref role="3PzhKQ" to="xiqq:uLhTRRq_wz" resolve="resource" />
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="uLhTRRR1cx">
    <ref role="aqKnT" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="22hDWg" id="6pYQ4mCjF1U" role="22hAXT">
      <property role="TrG5h" value="ChangeResource0" />
    </node>
    <node concept="1Qtc8_" id="uLhTRRR1cy" role="IW6Ez">
      <node concept="3eGOoe" id="uLhTRRR1cA" role="1Qtc8$" />
    </node>
  </node>
  <node concept="3ICUPy" id="6LU90BQgLnB">
    <ref role="aqKnT" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="22hDWg" id="6pYQ4mCjF1V" role="22hAXT">
      <property role="TrG5h" value="EventDeclaraiton_WithTransform" />
    </node>
    <node concept="1Qtc8_" id="6LU90BQgLnC" role="IW6Ez">
      <node concept="IWgqT" id="6LU90BQgLnO" role="1Qtc8A">
        <node concept="1hCUdq" id="6LU90BQgLnQ" role="1hCUd6">
          <node concept="3clFbS" id="6LU90BQgLnS" role="2VODD2">
            <node concept="3clFbF" id="6LU90BQgLBf" role="3cqZAp">
              <node concept="Xl_RD" id="6LU90BQgLBe" role="3clFbG">
                <property role="Xl_RC" value="with" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="6LU90BQgLnU" role="IWgqQ">
          <node concept="3clFbS" id="6LU90BQgLnW" role="2VODD2">
            <node concept="3clFbF" id="6LU90BQgUJZ" role="3cqZAp">
              <node concept="2OqwBi" id="6LU90BQgXkP" role="3clFbG">
                <node concept="2OqwBi" id="6LU90BQgUSt" role="2Oq$k0">
                  <node concept="7Obwk" id="6LU90BQgUJY" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6LU90BQgVAe" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                  </node>
                </node>
                <node concept="2DeJg1" id="6LU90BQh2qC" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="6LU90BQgMaa" role="2jiSrf">
          <node concept="3clFbS" id="6LU90BQgMab" role="2VODD2">
            <node concept="3clFbF" id="6LU90BQgMkQ" role="3cqZAp">
              <node concept="2OqwBi" id="6LU90BQgPm1" role="3clFbG">
                <node concept="2OqwBi" id="6LU90BQgMyX" role="2Oq$k0">
                  <node concept="7Obwk" id="6LU90BQgMkP" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6LU90BQgMXg" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                  </node>
                </node>
                <node concept="1v1jN8" id="6LU90BQgUyC" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="6LU90BQgLnG" role="1Qtc8$">
        <node concept="CtIbL" id="6LU90BQgLnI" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3Sv$YXY2Z14">
    <ref role="aqKnT" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
    <node concept="22hDWg" id="6pYQ4mCjF1W" role="22hAXT">
      <property role="TrG5h" value="AddActions_TM" />
    </node>
    <node concept="1Qtc8_" id="3Sv$YXY2Z3B" role="IW6Ez">
      <node concept="3cWJ9i" id="3Sv$YXY2Z3F" role="1Qtc8$">
        <node concept="CtIbL" id="3Sv$YXY2Z3H" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="3Sv$YXY2Z3L" role="1Qtc8A">
        <node concept="1hCUdq" id="3Sv$YXY2Z3M" role="1hCUd6">
          <node concept="3clFbS" id="3Sv$YXY2Z3N" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXY2ZcB" role="3cqZAp">
              <node concept="Xl_RD" id="3Sv$YXY2ZcA" role="3clFbG">
                <property role="Xl_RC" value=":" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3Sv$YXY2Z3O" role="IWgqQ">
          <node concept="3clFbS" id="3Sv$YXY2Z3P" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXY32ck" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXY34gt" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXY32kM" role="2Oq$k0">
                  <node concept="7Obwk" id="3Sv$YXY32cj" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3Sv$YXY32$8" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
                  </node>
                </node>
                <node concept="2DeJg1" id="3Sv$YXY38GN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="3Sv$YXY2Zu8" role="2jiSrf">
          <node concept="3clFbS" id="3Sv$YXY2Zu9" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXY2Z_$" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXY31Ku" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXY2ZNF" role="2Oq$k0">
                  <node concept="7Obwk" id="3Sv$YXY2Z_z" role="2Oq$k0" />
                  <node concept="Bykcj" id="3Sv$YXY31gC" role="2OqNvi">
                    <node concept="1aIX9F" id="3Sv$YXY31gE" role="1xVPHs">
                      <node concept="26LbJo" id="3Sv$YXY31ra" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="3Sv$YXY324x" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="PZB1W7aHCo">
    <ref role="aqKnT" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
    <node concept="22hDWg" id="6pYQ4mCjF1X" role="22hAXT">
      <property role="TrG5h" value="DeviceDeclaration_AddParametersTM" />
    </node>
    <node concept="1Qtc8_" id="PZB1W7aHCp" role="IW6Ez">
      <node concept="3cWJ9i" id="PZB1W7aHCt" role="1Qtc8$">
        <node concept="CtIbL" id="PZB1W7aHCv" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="PZB1W7aHCz" role="1Qtc8A">
        <node concept="1hCUdq" id="PZB1W7aHC$" role="1hCUd6">
          <node concept="3clFbS" id="PZB1W7aHC_" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7aKh_" role="3cqZAp">
              <node concept="Xl_RD" id="PZB1W7aKh$" role="3clFbG">
                <property role="Xl_RC" value="(" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="PZB1W7aHCA" role="IWgqQ">
          <node concept="3clFbS" id="PZB1W7aHCB" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7aL$$" role="3cqZAp">
              <node concept="2OqwBi" id="PZB1W7aNFe" role="3clFbG">
                <node concept="2OqwBi" id="PZB1W7aLIo" role="2Oq$k0">
                  <node concept="7Obwk" id="PZB1W7aL$z" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="PZB1W7aM0B" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:fshQXbRNVN" resolve="parameters" />
                  </node>
                </node>
                <node concept="2DeJg1" id="PZB1W7aPON" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="PZB1W7aKmo" role="2jiSrf">
          <node concept="3clFbS" id="PZB1W7aKmp" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7aKqr" role="3cqZAp">
              <node concept="2OqwBi" id="PZB1W7aLfX" role="3clFbG">
                <node concept="2OqwBi" id="PZB1W7aKEf" role="2Oq$k0">
                  <node concept="7Obwk" id="PZB1W7aKqq" role="2Oq$k0" />
                  <node concept="Bykcj" id="PZB1W7aKZY" role="2OqNvi">
                    <node concept="1aIX9F" id="PZB1W7aL00" role="1xVPHs">
                      <node concept="26LbJo" id="PZB1W7aL3C" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:fshQXbRNVN" resolve="parameters" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="PZB1W7aLzO" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="PZB1W7eHYs">
    <ref role="aqKnT" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
    <node concept="22hDWg" id="6pYQ4mCjF1Y" role="22hAXT">
      <property role="TrG5h" value="ResourceDeclaration_AddParametersTM" />
    </node>
    <node concept="1Qtc8_" id="PZB1W7eHYt" role="IW6Ez">
      <node concept="3cWJ9i" id="PZB1W7eHYu" role="1Qtc8$">
        <node concept="CtIbL" id="PZB1W7eHYv" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="PZB1W7eHYw" role="1Qtc8A">
        <node concept="1hCUdq" id="PZB1W7eHYx" role="1hCUd6">
          <node concept="3clFbS" id="PZB1W7eHYy" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7eHYz" role="3cqZAp">
              <node concept="Xl_RD" id="PZB1W7eHY$" role="3clFbG">
                <property role="Xl_RC" value="(" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="PZB1W7eHY_" role="IWgqQ">
          <node concept="3clFbS" id="PZB1W7eHYA" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7eHYB" role="3cqZAp">
              <node concept="2OqwBi" id="PZB1W7eHYC" role="3clFbG">
                <node concept="2OqwBi" id="PZB1W7eHYD" role="2Oq$k0">
                  <node concept="7Obwk" id="PZB1W7eHYE" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="PZB1W7eIN0" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
                  </node>
                </node>
                <node concept="2DeJg1" id="PZB1W7eHYG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="PZB1W7eHYH" role="2jiSrf">
          <node concept="3clFbS" id="PZB1W7eHYI" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7eHYJ" role="3cqZAp">
              <node concept="2OqwBi" id="PZB1W7eHYK" role="3clFbG">
                <node concept="2OqwBi" id="PZB1W7eHYL" role="2Oq$k0">
                  <node concept="7Obwk" id="PZB1W7eHYM" role="2Oq$k0" />
                  <node concept="Bykcj" id="PZB1W7eHYN" role="2OqNvi">
                    <node concept="1aIX9F" id="PZB1W7eHYO" role="1xVPHs">
                      <node concept="26LbJo" id="6aeiw5$ptvm" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="PZB1W7eHYQ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="PZB1W7eJnW">
    <ref role="aqKnT" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
    <node concept="22hDWg" id="6pYQ4mCjF1Z" role="22hAXT">
      <property role="TrG5h" value="FunctionBlockDeclaration_AddParametersTM" />
    </node>
    <node concept="1Qtc8_" id="PZB1W7eJnX" role="IW6Ez">
      <node concept="3cWJ9i" id="PZB1W7eJnY" role="1Qtc8$">
        <node concept="CtIbL" id="PZB1W7eJnZ" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="IWgqT" id="PZB1W7eJo0" role="1Qtc8A">
        <node concept="1hCUdq" id="PZB1W7eJo1" role="1hCUd6">
          <node concept="3clFbS" id="PZB1W7eJo2" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7eJo3" role="3cqZAp">
              <node concept="Xl_RD" id="PZB1W7eJo4" role="3clFbG">
                <property role="Xl_RC" value="(" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="PZB1W7eJo5" role="IWgqQ">
          <node concept="3clFbS" id="PZB1W7eJo6" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7eJo7" role="3cqZAp">
              <node concept="2OqwBi" id="PZB1W7eJo8" role="3clFbG">
                <node concept="2OqwBi" id="PZB1W7eJo9" role="2Oq$k0">
                  <node concept="7Obwk" id="PZB1W7eJoa" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="PZB1W7eKWb" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                  </node>
                </node>
                <node concept="2DeJg1" id="PZB1W7eJoc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="PZB1W7eJod" role="2jiSrf">
          <node concept="3clFbS" id="PZB1W7eJoe" role="2VODD2">
            <node concept="3clFbF" id="PZB1W7eJof" role="3cqZAp">
              <node concept="2OqwBi" id="PZB1W7eJog" role="3clFbG">
                <node concept="2OqwBi" id="PZB1W7eJoh" role="2Oq$k0">
                  <node concept="7Obwk" id="PZB1W7eJoi" role="2Oq$k0" />
                  <node concept="Bykcj" id="PZB1W7eJoj" role="2OqNvi">
                    <node concept="1aIX9F" id="PZB1W7eJok" role="1xVPHs">
                      <node concept="26LbJo" id="6aeiw5$psP0" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="PZB1W7eJom" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="2JGKyjiH3WN">
    <ref role="aqKnT" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="22hDWj" id="6pYQ4mCjF20" role="22hAXT" />
  </node>
  <node concept="3ICUPy" id="5s_pyghIpWb">
    <ref role="aqKnT" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
    <node concept="22hDWj" id="6pYQ4mCjF21" role="22hAXT" />
    <node concept="1Qtc8_" id="5s_pyghIpWc" role="IW6Ez">
      <node concept="3cWJ9i" id="5s_pyghIpWg" role="1Qtc8$">
        <node concept="CtIbL" id="5s_pyghIpWi" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
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
                    <property role="1lyBwo" value="1MdDphCk0iX/firstError" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="47wAAQ5ct3T">
    <ref role="aqKnT" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
    <node concept="22hDWj" id="6pYQ4mCjF22" role="22hAXT" />
    <node concept="1Qtc8_" id="47wAAQ5ct3U" role="IW6Ez">
      <node concept="aenpk" id="47wAAQ5ct41" role="1Qtc8A">
        <node concept="27VH4U" id="47wAAQ5ct43" role="aenpu">
          <node concept="3clFbS" id="47wAAQ5ct44" role="2VODD2">
            <node concept="3clFbF" id="47wAAQ5ct4r" role="3cqZAp">
              <node concept="2OqwBi" id="47wAAQ5ctGx" role="3clFbG">
                <node concept="2OqwBi" id="47wAAQ5cti$" role="2Oq$k0">
                  <node concept="7Obwk" id="47wAAQ5ct4q" role="2Oq$k0" />
                  <node concept="1mfA1w" id="47wAAQ5ctwC" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="47wAAQ5cu3M" role="2OqNvi">
                  <node concept="chp4Y" id="47wAAQ5cu9I" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mvV$s" id="47wAAQ5dti5" role="aenpr">
          <node concept="mvVNg" id="47wAAQ5dtiV" role="mvV$0">
            <node concept="3clFbS" id="47wAAQ5dtiW" role="2VODD2">
              <node concept="3clFbF" id="47wAAQ5dtjj" role="3cqZAp">
                <node concept="1PxgMI" id="47wAAQ5dul$" role="3clFbG">
                  <node concept="chp4Y" id="47wAAQ5dumr" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
                  </node>
                  <node concept="2OqwBi" id="47wAAQ5dttL" role="1m5AlR">
                    <node concept="7Obwk" id="47wAAQ5dtji" role="2Oq$k0" />
                    <node concept="1mfA1w" id="47wAAQ5duei" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="A1WHu" id="47wAAQ5eq8d" role="A14EM">
            <ref role="A1WHt" node="6g3sTReXI_G" resolve="TransitionConditionTM_ForEvent" />
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="47wAAQ5ct3W" role="1Qtc8$">
        <node concept="CtIbL" id="47wAAQ5ct3Y" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="37fub3vqpFQ">
    <ref role="aqKnT" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
    <node concept="22hDWj" id="6pYQ4mCjF23" role="22hAXT" />
    <node concept="3XHNnq" id="37fub3vqpFT" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:PI_pXYus4r" resolve="component" />
    </node>
  </node>
  <node concept="22mcaB" id="37fub3vqpGQ">
    <ref role="aqKnT" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
    <node concept="22hDWj" id="6pYQ4mCjF24" role="22hAXT" />
    <node concept="3XHNnq" id="37fub3vqpGX" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:PI_pXYus4r" resolve="component" />
    </node>
  </node>
  <node concept="22mcaB" id="75nMhMfJ0WY">
    <ref role="aqKnT" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
    <node concept="22hDWj" id="6pYQ4mCjF25" role="22hAXT" />
    <node concept="3XHNnq" id="75nMhMfJ0X1" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:75nMhMfIWAY" resolve="component" />
    </node>
  </node>
  <node concept="22mcaB" id="75nMhMfJ0X4">
    <ref role="aqKnT" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
    <node concept="22hDWj" id="6pYQ4mCjF26" role="22hAXT" />
    <node concept="3XHNnq" id="75nMhMfJ0X7" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:75nMhMfIPvb" resolve="component" />
    </node>
  </node>
  <node concept="22mcaB" id="75nMhMfOWeD">
    <ref role="aqKnT" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
    <node concept="22hDWj" id="6pYQ4mCjF27" role="22hAXT" />
    <node concept="3XHNnq" id="75nMhMfOWeJ" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:PI_pXYus4r" resolve="component" />
    </node>
  </node>
  <node concept="22mcaB" id="75nMhMfOWfe">
    <ref role="aqKnT" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
    <node concept="22hDWj" id="6pYQ4mCjF28" role="22hAXT" />
    <node concept="3XHNnq" id="75nMhMfOWfh" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:PI_pXYus4r" resolve="component" />
    </node>
  </node>
  <node concept="22mcaB" id="2lwHqHkjIKs">
    <ref role="aqKnT" to="xiqq:37fub3vlApO" resolve="Source" />
    <node concept="22hDWj" id="6pYQ4mCjF29" role="22hAXT" />
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
  </node>
  <node concept="22mcaB" id="2lwHqHkjRuU">
    <ref role="aqKnT" to="xiqq:4KieeRVlhj7" resolve="Destination" />
    <node concept="22hDWj" id="6pYQ4mCjF2a" role="22hAXT" />
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
  </node>
  <node concept="22mcaB" id="uLhTRRE1ll">
    <ref role="aqKnT" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="22hDWj" id="6pYQ4mCjF2b" role="22hAXT" />
    <node concept="3XHNnq" id="uLhTRRE1lm" role="3ft7WO">
      <ref role="3XGfJA" to="xiqq:uLhTRRq_wx" resolve="device" />
    </node>
  </node>
  <node concept="22mcaB" id="3Sv$YXXVo3q">
    <ref role="aqKnT" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
    <node concept="22hDWj" id="6pYQ4mCjF2c" role="22hAXT" />
    <node concept="3N5dw7" id="3Sv$YXXVo4Q" role="3ft7WO">
      <node concept="3N5aqt" id="3Sv$YXXVo4R" role="3Na0zg">
        <node concept="3clFbS" id="3Sv$YXXVo4S" role="2VODD2">
          <node concept="3cpWs8" id="3Sv$YXXVqvl" role="3cqZAp">
            <node concept="3cpWsn" id="3Sv$YXXVqvm" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="3Sv$YXXVqvj" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
              </node>
              <node concept="2ShNRf" id="3Sv$YXXVqvn" role="33vP2m">
                <node concept="3zrR0B" id="3Sv$YXXVqvo" role="2ShVmc">
                  <node concept="3Tqbb2" id="3Sv$YXXVqvp" role="3zrR0E">
                    <ref role="ehGHo" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Sv$YXXVoEG" role="3cqZAp">
            <node concept="37vLTI" id="3Sv$YXXVs4X" role="3clFbG">
              <node concept="3N4pyC" id="3Sv$YXXVsea" role="37vLTx" />
              <node concept="2OqwBi" id="3Sv$YXXVqH_" role="37vLTJ">
                <node concept="37vLTw" id="3Sv$YXXVqvq" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Sv$YXXVqvm" resolve="node" />
                </node>
                <node concept="3TrEf2" id="3Sv$YXXVr3P" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:7DSsXPFKSqX" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3Sv$YXXVsB6" role="3cqZAp">
            <node concept="37vLTw" id="3Sv$YXXVsP3" role="3cqZAk">
              <ref role="3cqZAo" node="3Sv$YXXVqvm" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="3Sv$YXXVo9n" role="2klrvf">
        <ref role="2ZyFGn" to="gpgy:2lwHqHjKhl9" resolve="Literal" />
      </node>
    </node>
  </node>
</model>

