<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fb13b7e5-37c8-4188-96ed-057d5b8154fd(org.fbme.ide.st.lang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="4fey" ref="r:05205c64-537e-47b2-8e85-2f142fc11ac8(mps.lang.ST.behavior)" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(mps.lang.ST.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="7429591467341004871" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Group" flags="ng" index="aenpk">
        <child id="7429591467341004872" name="parts" index="aenpr" />
        <child id="7429591467341004877" name="condition" index="aenpu" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1156252885376" name="separatorLayoutConstraint" index="Q2I2d" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1196434649611" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="6089045305654894367" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Named" flags="ng" index="2kknPI">
        <reference id="6089045305654944382" name="menu" index="2kkw0f" />
      </concept>
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1177327274449" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_pattern" flags="nn" index="ub8z3" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="7671875129586001610" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_IncludeSubstituteMenu" flags="ng" index="ulPW2">
        <child id="6089045305656903122" name="menuReference" index="2ks2uz" />
      </concept>
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ng" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="8478191136883534207" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_Selection" flags="ng" index="upBMk">
        <child id="8478191136883534208" name="query" index="upBLF" />
      </concept>
      <concept id="8478191136882577348" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CreatedNode" flags="ng" index="uqdCJ" />
      <concept id="8478191136882577194" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Select" flags="in" index="uqdF1" />
      <concept id="1177335944525" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
        <child id="8979250711607012232" name="cellSelector" index="3a7HXU" />
      </concept>
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
      <concept id="8449131619432941427" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Super" flags="ng" index="L$LW2" />
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
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
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414999511" name="jetbrains.mps.lang.editor.structure.UnderlinedStyleClassItem" flags="ln" index="VQ3r3">
        <property id="1214316229833" name="underlined" index="2USNnj" />
      </concept>
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ng" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
        <child id="5991739802479788259" name="type" index="22hAXT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1240253180846" name="jetbrains.mps.lang.editor.structure.IndentLayoutNoWrapClassItem" flags="ln" index="34QqEe" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8998492695583109601" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_CanSubstitute" flags="ig" index="16Na2f" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="8998492695583129991" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_CanSubstitute" flags="ng" index="16NL3D">
        <child id="8998492695583129992" name="query" index="16NL3A" />
      </concept>
      <concept id="1896914160037421068" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_WrapSubstituteMenu" flags="ng" index="3c8P5G">
        <child id="1896914160037421069" name="menuReference" index="3c8P5H" />
        <child id="1896914160037423677" name="handler" index="3c8PHt" />
      </concept>
      <concept id="1896914160037423680" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_WrapperHandler" flags="ig" index="3c8PGw" />
      <concept id="1896914160037437306" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_CreatedNode" flags="ng" index="3c8USq" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="7342352913006985500" name="jetbrains.mps.lang.editor.structure.TransformationLocation_Completion" flags="ng" index="3eGOoe" />
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1165424453110" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item" flags="ng" index="1oHujT">
        <property id="1165424453111" name="matchingText" index="1oHujS" />
        <child id="1165424453112" name="handlerFunction" index="1oHujR" />
      </concept>
      <concept id="1165424657443" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Item_Handler" flags="in" index="1oIgkG" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="5425882385312046132" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_SubstituteMenu_CurrentTargetNode" flags="nn" index="1yR$tW" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1081339532145" name="keyMap" index="34QXea" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
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
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="7985135009827365938" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Placeholder" flags="ng" index="1IAO7e" />
      <concept id="5624877018226900666" name="jetbrains.mps.lang.editor.structure.TransformationMenu" flags="ng" index="3ICUPy" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
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
      <concept id="2722384699544370949" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Placeholder" flags="ng" index="3VyMlK" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1215695201514" name="jetbrains.mps.baseLanguage.structure.MinusAssignmentExpression" flags="nn" index="d5anL" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="767145758118872828" name="jetbrains.mps.lang.actions.structure.NF_Node_ReplaceWithNewOperation" flags="nn" index="2DeJnW" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
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
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1227026094155" name="jetbrains.mps.baseLanguage.collections.structure.RemoveLastElementOperation" flags="nn" index="2Kt5_m" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1225730411176" name="jetbrains.mps.baseLanguage.collections.structure.FindLastOperation" flags="nn" index="1zesIP" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="24kQdi" id="2lwHqHjKxcf">
    <property role="3GE5qa" value="datatypes" />
    <ref role="1XX52x" to="gpgy:3HBlKeoYKVW" resolve="DataType" />
    <node concept="1QoScp" id="2lwHqHjKxcg" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="2lwHqHjKxch" role="3e4ffs">
        <node concept="3clFbS" id="2lwHqHjKxci" role="2VODD2">
          <node concept="3clFbF" id="2lwHqHjKxcj" role="3cqZAp">
            <node concept="3fqX7Q" id="2lwHqHjKxck" role="3clFbG">
              <node concept="2OqwBi" id="2lwHqHjKxcl" role="3fr31v">
                <node concept="2OqwBi" id="2lwHqHjKxcm" role="2Oq$k0">
                  <node concept="pncrf" id="2lwHqHjKxcn" role="2Oq$k0" />
                  <node concept="2yIwOk" id="2lwHqHjKxco" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="2lwHqHjKxcp" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHjKxcq" role="1QoS34">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="3HBlKeoYLKT" resolve="Type" />
        <node concept="VPxyj" id="3Sv$YXXg1o_" role="3F10Kt" />
      </node>
      <node concept="1xolST" id="2lwHqHjKxcr" role="1QoVPY">
        <property role="1xolSY" value="no type" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoZzvo">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3HBlKeoZu2f" resolve="VariableReference" />
    <node concept="1iCGBv" id="3HBlKeoZzvq" role="2wV5jI">
      <ref role="1NtTu8" to="gpgy:3HBlKeoZu2g" resolve="declaration" />
      <node concept="1sVBvm" id="3HBlKeoZzvs" role="1sWHZn">
        <node concept="3SHvHV" id="3HBlKeoZzvz" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHjKxW0">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:2lwHqHjKxV$" resolve="StringLiteral" />
    <node concept="3EZMnI" id="2lwHqHjKxW2" role="2wV5jI">
      <node concept="3F0ifn" id="2lwHqHjKxW9" role="3EZMnx">
        <property role="3F0ifm" value="'" />
        <node concept="VechU" id="2lwHqHjKyOf" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
        <node concept="11LMrY" id="2lwHqHjKyOt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2lwHqHjKxWs" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:2lwHqHjKxV_" resolve="value" />
        <node concept="VechU" id="2lwHqHjKyOx" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
        <node concept="Vb9p2" id="2lwHqHjKyOA" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHjKxWn" role="3EZMnx">
        <property role="3F0ifm" value="'" />
        <node concept="VechU" id="2lwHqHjKyOh" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
        <node concept="11L4FC" id="2lwHqHjKyOm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2lwHqHjKxW5" role="2iSdaV" />
      <node concept="34QqEe" id="5HzRr7EVmkj" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3Qd3IVOFNm1">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
    <node concept="3EZMnI" id="fJ_4HUD" role="2wV5jI">
      <node concept="3F0ifn" id="fJ_4HUE" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1ERwB7" to="tpen:gXWCmNl" resolve="DeleteParenthesisLeft_Actions" />
        <ref role="34QXea" to="tpen:gY1BA7A" resolve="OpenParenthesis_KeyMap" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="11LMrY" id="3Sv$YXXLAd1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2SqB2G" id="V2nGi7x2Y7" role="2SqHTX">
          <property role="TrG5h" value="openParen" />
        </node>
        <node concept="VPxyj" id="hZ6WNvi" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F1sOY" id="fJ_4HUF" role="3EZMnx">
        <property role="1cu_pB" value="gtguBGO/firstEditableCell" />
        <ref role="1NtTu8" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
      </node>
      <node concept="3F0ifn" id="fJ_4HUG" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <property role="1cu_pB" value="gtgu$YJ/attractsFocus" />
        <ref role="1ERwB7" to="tpen:21iL58eDF4K" resolve="DeleteParenthesisRight_Action" />
        <ref role="34QXea" to="tpen:gY16PkX" resolve="CloseParenthesis_KeyMap" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="11L4FC" id="3Sv$YXXLAcT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="hEU$PYA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPxyj" id="hEZKQzX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="l2Vlx" id="i0v36HC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoZzvZ">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3HBlKeoZu2i" resolve="DecIntegerLiteral" />
    <node concept="3F0A7n" id="3Qd3IVOK7JS" role="2wV5jI">
      <ref role="1NtTu8" to="gpgy:3HBlKeoZu2j" resolve="value" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHjKyP5">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
    <node concept="1QoScp" id="2lwHqHkvcwj" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="3F0ifn" id="2lwHqHkvcBJ" role="1QoS34">
        <property role="3F0ifm" value="TRUE" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="pkWqt" id="2lwHqHkvcwm" role="3e4ffs">
        <node concept="3clFbS" id="2lwHqHkvcwo" role="2VODD2">
          <node concept="3clFbF" id="2lwHqHkvcC3" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHkvcQ4" role="3clFbG">
              <node concept="pncrf" id="2lwHqHkvcC2" role="2Oq$k0" />
              <node concept="3TrcHB" id="7GyesCp5Awg" role="2OqNvi">
                <ref role="3TsBF5" to="gpgy:2lwHqHjKyOE" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHkvcBO" role="1QoVPY">
        <property role="3F0ifm" value="FALSE" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="Vb9p2" id="2lwHqHkvdMd" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3Qd3IVOFNo4">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
    <node concept="3EZMnI" id="3Sv$YXXMOih" role="2wV5jI">
      <node concept="3F1sOY" id="3HBlKeoZiXB" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:3Qd3IVOFNnt" resolve="left" />
        <ref role="1ERwB7" node="gAp41ZG" resolve="BinaryExpression_LeftArgument_Actions" />
      </node>
      <node concept="PMmxH" id="3Sv$YXXMOip" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1ERwB7" node="gAom6wT" resolve="BinaryExpression_Symbol_Actions" />
        <node concept="A1WHu" id="3Sv$YXXNPfJ" role="3vIgyS">
          <ref role="A1WHt" node="3Sv$YXXMZxu" resolve="BinaryExpression_TM_Alias" />
        </node>
      </node>
      <node concept="3F1sOY" id="3Sv$YXXMOi_" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:3Qd3IVOFNnv" resolve="right" />
        <ref role="1ERwB7" node="gAp5u0y" resolve="BinaryExpression_RightArgument_Actions" />
      </node>
      <node concept="l2Vlx" id="3Sv$YXXMOii" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="7GyesCp5_6g">
    <property role="TrG5h" value="STDefaultStyles" />
    <node concept="14StLt" id="3HBlKeoYLKT" role="V601i">
      <property role="TrG5h" value="Type" />
      <node concept="3Xmtl4" id="23XkovVghtM" role="3F10Kt">
        <node concept="1wgc9g" id="23XkovVghtN" role="3XvnJa">
          <ref role="1wgcnl" node="7GyesCpx4MI" resolve="Operational" />
        </node>
      </node>
      <node concept="1X3_iC" id="23XkovVght$" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="VechU" id="3HBlKeoYLL3" role="8Wnug">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
      <node concept="1X3_iC" id="23XkovVght_" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="Vb9p2" id="3HBlKeoYLLf" role="8Wnug">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="3HBlKeoYLK_" role="V601i">
      <property role="TrG5h" value="Keyword" />
      <node concept="3Xmtl4" id="23XkovVfohE" role="3F10Kt">
        <node concept="1wgc9g" id="23XkovVfohO" role="3XvnJa">
          <ref role="1wgcnl" node="7GyesCpx4MI" resolve="Operational" />
        </node>
      </node>
      <node concept="1X3_iC" id="23XkovVfohs" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="VechU" id="3HBlKeoYLKH" role="8Wnug">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
      <node concept="1X3_iC" id="23XkovVfoht" role="lGtFl">
        <property role="3V$3am" value="styleItem" />
        <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
        <node concept="Vb9p2" id="3HBlKeoYLL9" role="8Wnug" />
      </node>
    </node>
    <node concept="14StLt" id="6LU90BQ6WR$" role="V601i">
      <property role="TrG5h" value="DeclarationBlockHeader" />
      <node concept="VechU" id="6LU90BQ6WRU" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/darkGreen" />
      </node>
      <node concept="VQ3r3" id="6LU90BQ6WS0" role="3F10Kt">
        <property role="2USNnj" value="gtbM8PH/underlined" />
      </node>
      <node concept="Vb9p2" id="6LU90BQ6WS8" role="3F10Kt">
        <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
      </node>
      <node concept="VPM3Z" id="6LU90BQ6WSu" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="7GyesCpx4MI" role="V601i">
      <property role="TrG5h" value="Operational" />
      <node concept="VechU" id="7GyesCpx4MJ" role="3F10Kt">
        <property role="Vb096" value="g1_eI4o/darkBlue" />
      </node>
      <node concept="Vb9p2" id="7GyesCpx4MK" role="3F10Kt">
        <property role="Vbekb" value="g1_k_vY/BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9Ttd">
    <ref role="1XX52x" to="gpgy:7GyesCp9TmT" resolve="StatementList" />
    <node concept="3F2HdR" id="7GyesCp9Ttm" role="2wV5jI">
      <ref role="1NtTu8" to="gpgy:7GyesCp9TsM" resolve="statements" />
      <node concept="l2Vlx" id="7GyesCp9Tto" role="2czzBx" />
      <node concept="pj6Ft" id="7GyesCp9Ttt" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="3F0ifn" id="7GyesCp9Ttx" role="2czzBI">
        <property role="3F0ifm" value="" />
        <property role="ilYzB" value="no statements" />
        <node concept="Vb9p2" id="7GyesCplzfZ" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9Tus">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9Tu2" resolve="EmptyStatement" />
    <node concept="3F0ifn" id="7GyesCpdUBx" role="2wV5jI">
      <node concept="VPxyj" id="7GyesCpl1wL" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9Twf">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9TvI" resolve="AssignmentStatement" />
    <node concept="3EZMnI" id="7GyesCp9Txs" role="2wV5jI">
      <node concept="3F1sOY" id="7GyesCp9Twz" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TvL" resolve="variable" />
      </node>
      <node concept="3F0ifn" id="7GyesCp9TxA" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCp9TxK" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TvN" resolve="expression" />
      </node>
      <node concept="PMmxH" id="7GyesCpsaNL" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCp9Txv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9TKD">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9TKa" resolve="ElseIfClause" />
    <node concept="3EZMnI" id="7GyesCp9TKF" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCp9TKM" role="3EZMnx">
        <property role="3F0ifm" value="ELSIF" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCp9TKS" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TKb" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="7GyesCp9TL0" role="3EZMnx">
        <property role="3F0ifm" value="THEN" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCp9TLg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCp9TLa" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TKd" resolve="body" />
        <node concept="lj46D" id="7GyesCp9TLi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7GyesCp9TKI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9TLV">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9TK7" resolve="IfStatement" />
    <node concept="3EZMnI" id="7GyesCp9TMv" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCp9TMw" role="3EZMnx">
        <property role="3F0ifm" value="IF" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCp9TMx" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TK8" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="7GyesCp9TMy" role="3EZMnx">
        <property role="3F0ifm" value="THEN" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCp9TMz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCp9TM$" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TLm" resolve="thenClause" />
        <node concept="lj46D" id="7GyesCp9TM_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCp9TMB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7GyesCp9TMY" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TLp" resolve="elseifClauses" />
        <node concept="l2Vlx" id="7GyesCp9TN0" role="2czzBx" />
        <node concept="pj6Ft" id="7GyesCp9TNa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="7GyesCpq$x6" role="pqm2j">
          <node concept="3clFbS" id="7GyesCpq$x7" role="2VODD2">
            <node concept="3clFbF" id="7GyesCpq$Cs" role="3cqZAp">
              <node concept="2OqwBi" id="7GyesCpqA7q" role="3clFbG">
                <node concept="2OqwBi" id="7GyesCpq$PF" role="2Oq$k0">
                  <node concept="pncrf" id="7GyesCpq$Cr" role="2Oq$k0" />
                  <node concept="Bykcj" id="7GyesCpq_t7" role="2OqNvi">
                    <node concept="1aIX9F" id="7GyesCpq_t9" role="1xVPHs">
                      <node concept="26LbJo" id="7GyesCpq_M3" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:7GyesCp9TLp" resolve="elseifClauses" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="7GyesCpqBQJ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7GyesCp9TPC" role="3EZMnx">
        <node concept="VPM3Z" id="7GyesCp9TPE" role="3F10Kt" />
        <node concept="3F0ifn" id="7GyesCp9TNr" role="3EZMnx">
          <property role="3F0ifm" value="ELSE" />
          <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
          <node concept="ljvvj" id="7GyesCp9TOm" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="7GyesCp9TNR" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:7GyesCp9TLt" resolve="elseClause" />
          <node concept="lj46D" id="7GyesCp9TOB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="7GyesCp9TOG" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="7GyesCp9TPH" role="2iSdaV" />
        <node concept="pkWqt" id="7GyesCp9TQ4" role="pqm2j">
          <node concept="3clFbS" id="7GyesCp9TQ5" role="2VODD2">
            <node concept="3clFbF" id="7GyesCp9TXq" role="3cqZAp">
              <node concept="2OqwBi" id="7GyesCp9V82" role="3clFbG">
                <node concept="2OqwBi" id="7GyesCp9U9R" role="2Oq$k0">
                  <node concept="pncrf" id="7GyesCp9TXp" role="2Oq$k0" />
                  <node concept="Bykcj" id="7GyesCp9UtM" role="2OqNvi">
                    <node concept="1aIX9F" id="7GyesCp9UtO" role="1xVPHs">
                      <node concept="26LbJo" id="7GyesCp9UMG" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:7GyesCp9TLt" resolve="elseClause" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="7GyesCp9WVc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCp9TOl" role="3EZMnx">
        <property role="3F0ifm" value="ENDIF" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbpk" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCp9TMA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9Xat">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9Xas" resolve="CaseStatement" />
    <node concept="3EZMnI" id="7GyesCp9XaG" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCp9XaD" role="3EZMnx">
        <property role="3F0ifm" value="CASE" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F1sOY" id="7GyesCp9XaO" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9Xav" resolve="expression" />
      </node>
      <node concept="3F0ifn" id="7GyesCp9XaW" role="3EZMnx">
        <property role="3F0ifm" value="OF" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
        <node concept="ljvvj" id="7GyesCp9Xb6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7GyesCp9Xb8" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9Xax" resolve="cases" />
        <node concept="l2Vlx" id="7GyesCp9Xba" role="2czzBx" />
        <node concept="lj46D" id="7GyesCp9Xbh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="7GyesCp9Xbm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="7GyesCp9Xbs" role="2czzBI">
          <property role="3F0ifm" value="" />
        </node>
      </node>
      <node concept="3EZMnI" id="7GyesCp9Xcc" role="3EZMnx">
        <node concept="VPM3Z" id="7GyesCp9Xce" role="3F10Kt" />
        <node concept="lj46D" id="7GyesCp9Xcz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCp9XcF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="7GyesCpa2ka" role="3EZMnx">
          <property role="3F0ifm" value="ELSE" />
          <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="7GyesCpa3zT" role="3EZMnx">
          <property role="3F0ifm" value="-&gt;" />
          <node concept="ljvvj" id="7GyesCpa3zU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="7GyesCpa3zV" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:7GyesCp9Xa_" resolve="elseCase" />
          <node concept="lj46D" id="7GyesCpa3zW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="7GyesCp9Xch" role="2iSdaV" />
        <node concept="pkWqt" id="7GyesCp9XcK" role="pqm2j">
          <node concept="3clFbS" id="7GyesCp9XcL" role="2VODD2">
            <node concept="3clFbF" id="7GyesCp9Xk6" role="3cqZAp">
              <node concept="2OqwBi" id="7GyesCpa02f" role="3clFbG">
                <node concept="2OqwBi" id="7GyesCp9Xxl" role="2Oq$k0">
                  <node concept="pncrf" id="7GyesCp9Xk5" role="2Oq$k0" />
                  <node concept="Bykcj" id="7GyesCp9ZnT" role="2OqNvi">
                    <node concept="1aIX9F" id="7GyesCp9ZnV" role="1xVPHs">
                      <node concept="26LbJo" id="7GyesCp9ZGS" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:7GyesCp9Xa_" resolve="elseCase" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="7GyesCpa1Lx" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCpa3b0" role="3EZMnx">
        <property role="3F0ifm" value="END_CASE" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="PMmxH" id="7GyesCpsb7R" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCp9XaH" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpa3rq">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9Xa$" resolve="CaseElement" />
    <node concept="3EZMnI" id="7GyesCpa3rs" role="2wV5jI">
      <node concept="3F1sOY" id="7GyesCpa3rz" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpa3qW" resolve="element" />
      </node>
      <node concept="3F0ifn" id="7GyesCpa3rD" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
        <node concept="ljvvj" id="7GyesCpa3rQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCpa3rL" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpa3qY" resolve="body" />
        <node concept="lj46D" id="7GyesCpa3rS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7GyesCpa3rv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpa3NX">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpa3Nz" resolve="ReturnStatement" />
    <node concept="3EZMnI" id="7GyesCpsbys" role="2wV5jI">
      <node concept="l2Vlx" id="7GyesCpsbyt" role="2iSdaV" />
      <node concept="PMmxH" id="7GyesCpa3NZ" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="PMmxH" id="7GyesCpsby_" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpa3Or">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpa3O1" resolve="ExitStatement" />
    <node concept="3EZMnI" id="7GyesCpsbg3" role="2wV5jI">
      <node concept="PMmxH" id="7GyesCpa3Ot" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbgf" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCpsbg4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpem9n">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpem8O" resolve="ControlVariableDeclaration" />
    <node concept="3EZMnI" id="7GyesCpem9p" role="2wV5jI">
      <node concept="3F0A7n" id="7GyesCpem9w" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="7GyesCpem9A" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpem9I" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpem8P" resolve="beginExpression" />
      </node>
      <node concept="3F0ifn" id="7GyesCpem9S" role="3EZMnx">
        <property role="3F0ifm" value="TO" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpema4" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpem8R" resolve="endExpression" />
      </node>
      <node concept="3EZMnI" id="7GyesCpemat" role="3EZMnx">
        <node concept="3F0ifn" id="7GyesCpemaA" role="3EZMnx">
          <property role="3F0ifm" value="BY" />
          <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        </node>
        <node concept="3F1sOY" id="7GyesCpemaG" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:7GyesCpem8U" resolve="stepExpression" />
        </node>
        <node concept="l2Vlx" id="7GyesCpemaw" role="2iSdaV" />
        <node concept="VPM3Z" id="7GyesCpemax" role="3F10Kt" />
        <node concept="pkWqt" id="3Sv$YXXPpCB" role="pqm2j">
          <node concept="3clFbS" id="3Sv$YXXPpCC" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXPpJX" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXPrOz" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXXPq04" role="2Oq$k0">
                  <node concept="pncrf" id="3Sv$YXXPpJW" role="2Oq$k0" />
                  <node concept="Bykcj" id="3Sv$YXXPqPQ" role="2OqNvi">
                    <node concept="1aIX9F" id="3Sv$YXXPqPS" role="1xVPHs">
                      <node concept="26LbJo" id="3Sv$YXXPrvg" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:7GyesCpem8U" resolve="stepExpression" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3Sv$YXXPtBB" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7GyesCpem9s" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpgUag">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpa3Ov" resolve="ForStatement" />
    <node concept="3EZMnI" id="7GyesCpgUal" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCpgUas" role="3EZMnx">
        <property role="3F0ifm" value="FOR" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpgUay" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpemaK" resolve="var" />
      </node>
      <node concept="3F0ifn" id="7GyesCpgUaE" role="3EZMnx">
        <property role="3F0ifm" value="DO" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCpgUaU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCpgUaO" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpgU9O" resolve="body" />
        <node concept="lj46D" id="7GyesCpgUaW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCpgUbi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCpgUb6" role="3EZMnx">
        <property role="3F0ifm" value="END_FOR" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbgi" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCpgUao" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpj6w_">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpj6w6" resolve="WhileStatement" />
    <node concept="3EZMnI" id="7GyesCpj6wB" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCpj6wC" role="3EZMnx">
        <property role="3F0ifm" value="WHILE" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpj6wD" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpj6w7" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="7GyesCpj6wE" role="3EZMnx">
        <property role="3F0ifm" value="DO" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCpj6wF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCpj6wG" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpj6w9" resolve="body" />
        <node concept="lj46D" id="7GyesCpj6wH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCpj6wI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCpj6wJ" role="3EZMnx">
        <property role="3F0ifm" value="END_WHILE" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbyC" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCpj6wK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpj6xq">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpj6wV" resolve="RepeatStatement" />
    <node concept="3EZMnI" id="7GyesCpj6xs" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCpj6xz" role="3EZMnx">
        <property role="3F0ifm" value="REPEAT" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCpj6ye" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCpj6xD" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpj6wY" resolve="body" />
        <node concept="lj46D" id="7GyesCpj6yg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCpj6yl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCpj6xL" role="3EZMnx">
        <property role="3F0ifm" value="UNTIL" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpj6xV" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpj6wW" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="7GyesCpj6y7" role="3EZMnx">
        <property role="3F0ifm" value="END_REPEAT" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbyi" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCpj6xv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpmdvI">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:7GyesCpmdvk" resolve="NegExpression" />
    <node concept="3EZMnI" id="7GyesCpmdw4" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCpmdwo" role="3EZMnx">
        <property role="3F0ifm" value="-" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="11LMrY" id="7GyesCpmdwA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCpmdwx" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpmdwr" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="7GyesCpmdw7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpmdxh">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:7GyesCpmdwR" resolve="NotExpression" />
    <node concept="3EZMnI" id="7GyesCpmdxx" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCpmdxz" role="3EZMnx">
        <property role="3F0ifm" value="NOT" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCprw0v" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpmdwr" resolve="expression" />
      </node>
      <node concept="l2Vlx" id="7GyesCpmdxA" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="7GyesCpsa$X">
    <property role="TrG5h" value="Semicolon" />
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="3F0ifn" id="7GyesCpsa$Y" role="2wV5jI">
      <property role="3F0ifm" value=";" />
      <node concept="11L4FC" id="7GyesCpsa$Z" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VechU" id="7GyesCpsa_j" role="3F10Kt">
        <property role="Vb096" value="fLJRk5A/lightGray" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="ahlxKSmN5r">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:ahlxKSmN4Y" resolve="BinIntegerLiteral" />
    <node concept="3EZMnI" id="ahlxKSmN60" role="2wV5jI">
      <node concept="3F0ifn" id="ahlxKSmN67" role="3EZMnx">
        <property role="3F0ifm" value="2#" />
        <node concept="Vb9p2" id="ahlxKSmN6x" role="3F10Kt" />
        <node concept="11LMrY" id="ahlxKSmN6A" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="ahlxKSmN5P" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:ahlxKSmN4Z" resolve="value" />
      </node>
      <node concept="l2Vlx" id="ahlxKSmN63" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="ahlxKSmN76">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:ahlxKSmN6E" resolve="OctIntegerLiteral" />
    <node concept="3EZMnI" id="ahlxKSmN7e" role="2wV5jI">
      <node concept="3F0ifn" id="ahlxKSmN7f" role="3EZMnx">
        <property role="3F0ifm" value="8#" />
        <node concept="Vb9p2" id="ahlxKSmN7g" role="3F10Kt" />
        <node concept="11LMrY" id="ahlxKSmN7h" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="ahlxKSmN7j" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:ahlxKSmN6F" resolve="value" />
      </node>
      <node concept="l2Vlx" id="ahlxKSmN7k" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="ahlxKSmN7Z">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:ahlxKSmN7z" resolve="HexIntegerLiteral" />
    <node concept="3EZMnI" id="ahlxKSmN83" role="2wV5jI">
      <node concept="3F0ifn" id="ahlxKSmN84" role="3EZMnx">
        <property role="3F0ifm" value="16#" />
        <node concept="Vb9p2" id="ahlxKSmN85" role="3F10Kt" />
        <node concept="11LMrY" id="ahlxKSmN86" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="ahlxKSmN88" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:ahlxKSmN7$" resolve="value" />
      </node>
      <node concept="l2Vlx" id="ahlxKSmN89" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="ahlxKSoOV5">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:ahlxKSoOUg" resolve="BinBooleanLiteral" />
    <node concept="3EZMnI" id="ahlxKSoP4Y" role="2wV5jI">
      <node concept="3F0ifn" id="ahlxKSoP55" role="3EZMnx">
        <property role="3F0ifm" value="BOOL#" />
        <node concept="Vb9p2" id="ahlxKSoP58" role="3F10Kt" />
        <node concept="11LMrY" id="ahlxKSoP5d" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1QoScp" id="ahlxKSoP5m" role="3EZMnx">
        <property role="1QpmdY" value="true" />
        <node concept="3F0ifn" id="ahlxKSoP5n" role="1QoS34">
          <property role="3F0ifm" value="1" />
          <node concept="Vb9p2" id="ahlxKSoP5o" role="3F10Kt" />
        </node>
        <node concept="pkWqt" id="ahlxKSoP5q" role="3e4ffs">
          <node concept="3clFbS" id="ahlxKSoP5r" role="2VODD2">
            <node concept="3clFbF" id="ahlxKSoP5s" role="3cqZAp">
              <node concept="2OqwBi" id="ahlxKSoP5t" role="3clFbG">
                <node concept="pncrf" id="ahlxKSoP5u" role="2Oq$k0" />
                <node concept="3TrcHB" id="ahlxKSoP5v" role="2OqNvi">
                  <ref role="3TsBF5" to="gpgy:ahlxKSoOUh" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="ahlxKSoP5w" role="1QoVPY">
          <property role="3F0ifm" value="0" />
          <node concept="Vb9p2" id="ahlxKSoPfK" role="3F10Kt" />
        </node>
        <node concept="Vb9p2" id="ahlxKSoP5y" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
        <node concept="OXEIz" id="ahlxKSoPfS" role="P5bDN">
          <node concept="1oHujT" id="ahlxKSoPpF" role="OY2wv">
            <property role="1oHujS" value="0" />
            <node concept="1oIgkG" id="ahlxKSoPpG" role="1oHujR">
              <node concept="3clFbS" id="ahlxKSoPpH" role="2VODD2">
                <node concept="3clFbF" id="ahlxKSoPpU" role="3cqZAp">
                  <node concept="37vLTI" id="ahlxKSoQ_K" role="3clFbG">
                    <node concept="3clFbT" id="ahlxKSoQAa" role="37vLTx" />
                    <node concept="2OqwBi" id="ahlxKSoPze" role="37vLTJ">
                      <node concept="3GMtW1" id="ahlxKSoPpT" role="2Oq$k0" />
                      <node concept="3TrcHB" id="ahlxKSoPR2" role="2OqNvi">
                        <ref role="3TsBF5" to="gpgy:ahlxKSoOUh" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1oHujT" id="ahlxKSoQCU" role="OY2wv">
            <property role="1oHujS" value="1" />
            <node concept="1oIgkG" id="ahlxKSoQCV" role="1oHujR">
              <node concept="3clFbS" id="ahlxKSoQCW" role="2VODD2">
                <node concept="3clFbF" id="ahlxKSoQCX" role="3cqZAp">
                  <node concept="37vLTI" id="ahlxKSoQCY" role="3clFbG">
                    <node concept="3clFbT" id="ahlxKSoR8_" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="ahlxKSoQD0" role="37vLTJ">
                      <node concept="3GMtW1" id="ahlxKSoQD1" role="2Oq$k0" />
                      <node concept="3TrcHB" id="ahlxKSoQD2" role="2OqNvi">
                        <ref role="3TsBF5" to="gpgy:ahlxKSoOUh" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="ahlxKSoP51" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovVUTCU">
    <property role="3GE5qa" value="datatypes" />
    <ref role="1XX52x" to="gpgy:23XkovVUTCw" resolve="DataTypeDeclaration" />
    <node concept="3EZMnI" id="23XkovVUTCW" role="2wV5jI">
      <node concept="3F0ifn" id="23XkovVUTD3" role="3EZMnx">
        <property role="3F0ifm" value="TYPE" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
        <node concept="ljvvj" id="23XkovVUTDY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="23XkovVUTDb" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="lj46D" id="23XkovVUTE0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="23XkovVUTDj" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="23XkovVW7c4" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:23XkovVW7b8" resolve="spec" />
        <node concept="ljvvj" id="23XkovVW7cd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="23XkovVUTDF" role="3EZMnx">
        <property role="3F0ifm" value="END_TYPE" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="l2Vlx" id="23XkovVUTCZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovVW7bz">
    <property role="3GE5qa" value="datatypes.spec" />
    <ref role="1XX52x" to="gpgy:23XkovVUTE4" resolve="SimpleTypeSpec" />
    <node concept="3EZMnI" id="23XkovVX3Di" role="2wV5jI">
      <node concept="3F1sOY" id="23XkovVVQnL" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:23XkovVVQmR" resolve="baseType" />
      </node>
      <node concept="3EZMnI" id="3Sv$YXXexue" role="3EZMnx">
        <node concept="3F0ifn" id="3Sv$YXXexuf" role="3EZMnx">
          <property role="3F0ifm" value=":=" />
        </node>
        <node concept="3F1sOY" id="3Sv$YXXexug" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:23XkovW3EES" resolve="default" />
        </node>
        <node concept="l2Vlx" id="3Sv$YXXexuh" role="2iSdaV" />
        <node concept="VPM3Z" id="3Sv$YXXexui" role="3F10Kt" />
        <node concept="pkWqt" id="3Sv$YXXexuj" role="pqm2j">
          <node concept="3clFbS" id="3Sv$YXXexuk" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXexul" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXexum" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXXexun" role="2Oq$k0">
                  <node concept="pncrf" id="3Sv$YXXexuo" role="2Oq$k0" />
                  <node concept="Bykcj" id="3Sv$YXXexup" role="2OqNvi">
                    <node concept="1aIX9F" id="3Sv$YXXexuq" role="1xVPHs">
                      <node concept="26LbJo" id="3Sv$YXXexur" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:23XkovW3EES" resolve="default" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3Sv$YXXexus" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="23XkovVX3Dj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovVY3HH">
    <property role="3GE5qa" value="datatypes.spec" />
    <ref role="1XX52x" to="gpgy:23XkovVY3GQ" resolve="EnumeratedValue" />
    <node concept="3F0A7n" id="23XkovVY3I7" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovVY3Iz">
    <property role="3GE5qa" value="datatypes.spec" />
    <ref role="1XX52x" to="gpgy:23XkovVY3Gx" resolve="SubrangeTypeSpec" />
    <node concept="3EZMnI" id="23XkovVY3I_" role="2wV5jI">
      <node concept="3F1sOY" id="23XkovVY3IG" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:23XkovVY3GF" resolve="baseType" />
      </node>
      <node concept="3F0ifn" id="23XkovW1wJp" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F1sOY" id="23XkovW7YiA" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:23XkovW7Yid" resolve="subrange" />
      </node>
      <node concept="3F0ifn" id="23XkovVY3IU" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="11L4FC" id="23XkovVY3K1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="3Sv$YXXnAwR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="3Sv$YXXextB" role="3vIgyS">
          <ref role="A1WHt" node="3kbdwfdDCak" resolve="AddDefault" />
        </node>
      </node>
      <node concept="3EZMnI" id="3kbdwfdK$JI" role="3EZMnx">
        <node concept="3F0ifn" id="3kbdwfdK$JJ" role="3EZMnx">
          <property role="3F0ifm" value=":=" />
        </node>
        <node concept="3F1sOY" id="3kbdwfdK$JK" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:23XkovW3EES" resolve="default" />
        </node>
        <node concept="l2Vlx" id="3kbdwfdK$JL" role="2iSdaV" />
        <node concept="VPM3Z" id="3kbdwfdK$JM" role="3F10Kt" />
        <node concept="pkWqt" id="3kbdwfdK$JN" role="pqm2j">
          <node concept="3clFbS" id="3kbdwfdK$JO" role="2VODD2">
            <node concept="3clFbF" id="3kbdwfdK$JP" role="3cqZAp">
              <node concept="2OqwBi" id="3kbdwfdK$JQ" role="3clFbG">
                <node concept="2OqwBi" id="3kbdwfdK$JR" role="2Oq$k0">
                  <node concept="pncrf" id="3kbdwfdK$JS" role="2Oq$k0" />
                  <node concept="Bykcj" id="3kbdwfdK$JT" role="2OqNvi">
                    <node concept="1aIX9F" id="3kbdwfdK$JU" role="1xVPHs">
                      <node concept="26LbJo" id="3kbdwfdK$JV" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:23XkovW3EES" resolve="default" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3kbdwfdK$JW" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="23XkovVY3IC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovW3EFq">
    <property role="3GE5qa" value="datatypes.spec" />
    <ref role="1XX52x" to="gpgy:23XkovVY3GP" resolve="EnumeratedTypeSpec" />
    <node concept="3EZMnI" id="23XkovW3EFs" role="2wV5jI">
      <node concept="3F0ifn" id="23XkovW3EG8" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="23XkovW3EHc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="23XkovW3EFK" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="gpgy:23XkovW3EEZ" resolve="values" />
        <node concept="l2Vlx" id="23XkovW3EFM" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="23XkovW3EFX" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="23XkovW3EHe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="3Sv$YXXewAs" role="3vIgyS">
          <ref role="A1WHt" node="3kbdwfdDCak" resolve="AddDefault" />
        </node>
      </node>
      <node concept="3EZMnI" id="3kbdwfdK$B6" role="3EZMnx">
        <node concept="3F0ifn" id="3kbdwfdK$B7" role="3EZMnx">
          <property role="3F0ifm" value=":=" />
        </node>
        <node concept="3F1sOY" id="3kbdwfdK$B8" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:23XkovW3EES" resolve="default" />
        </node>
        <node concept="l2Vlx" id="3kbdwfdK$B9" role="2iSdaV" />
        <node concept="VPM3Z" id="3kbdwfdK$Ba" role="3F10Kt" />
        <node concept="pkWqt" id="3kbdwfdK$Bb" role="pqm2j">
          <node concept="3clFbS" id="3kbdwfdK$Bc" role="2VODD2">
            <node concept="3clFbF" id="3kbdwfdK$Bd" role="3cqZAp">
              <node concept="2OqwBi" id="3kbdwfdK$Be" role="3clFbG">
                <node concept="2OqwBi" id="3kbdwfdK$Bf" role="2Oq$k0">
                  <node concept="pncrf" id="3kbdwfdK$Bg" role="2Oq$k0" />
                  <node concept="Bykcj" id="3kbdwfdK$Bh" role="2OqNvi">
                    <node concept="1aIX9F" id="3kbdwfdK$Bi" role="1xVPHs">
                      <node concept="26LbJo" id="3kbdwfdK$Bj" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:23XkovW3EES" resolve="default" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3kbdwfdK$Bk" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="23XkovW3EFv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovW6WcO">
    <property role="3GE5qa" value="datatypes" />
    <ref role="1XX52x" to="gpgy:23XkovVUTCv" resolve="DerivedType" />
    <node concept="1iCGBv" id="23XkovW6WcQ" role="2wV5jI">
      <ref role="1NtTu8" to="gpgy:23XkovVW7bF" resolve="declaration" />
      <node concept="1sVBvm" id="23XkovW6WcS" role="1sWHZn">
        <node concept="3SHvHV" id="23XkovW6WcZ" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="23XkovW7Yib">
    <ref role="1XX52x" to="gpgy:23XkovW7YhJ" resolve="Subrange" />
    <node concept="3EZMnI" id="23XkovW7YiN" role="2wV5jI">
      <node concept="3F1sOY" id="23XkovVY3J4" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:23XkovVY3GC" resolve="from" />
      </node>
      <node concept="3F0ifn" id="23XkovVY3Jg" role="3EZMnx">
        <property role="3F0ifm" value=".." />
        <node concept="11L4FC" id="23XkovVY3JX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="23XkovVY3JY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="23XkovVY3Ju" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:23XkovVY3GK" resolve="to" />
      </node>
      <node concept="l2Vlx" id="23XkovW7YiQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovW7Yr$">
    <property role="3GE5qa" value="datatypes.spec" />
    <ref role="1XX52x" to="gpgy:23XkovW7YiZ" resolve="ArrayTypeSpec" />
    <node concept="3EZMnI" id="23XkovW7YrA" role="2wV5jI">
      <node concept="3F0ifn" id="23XkovW7YrH" role="3EZMnx">
        <property role="3F0ifm" value="ARRAY" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F0ifn" id="23XkovW7YrN" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="11LMrY" id="23XkovW7Ys5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="23XkovW7Ysm" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="gpgy:23XkovW7Yr8" resolve="subranges" />
        <node concept="l2Vlx" id="23XkovW7Yso" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="23XkovW7YrV" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="11L4FC" id="23XkovW7Ys9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="23XkovW96$h" role="3EZMnx">
        <property role="3F0ifm" value="OF" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F1sOY" id="3kbdwfdDMI2" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:23XkovW7Yj0" resolve="baseType" />
      </node>
      <node concept="3EZMnI" id="23XkovW7YtC" role="3EZMnx">
        <node concept="3F0ifn" id="23XkovW7Yta" role="3EZMnx">
          <property role="3F0ifm" value=":=" />
        </node>
        <node concept="3F1sOY" id="23XkovW7Ytq" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:23XkovW3EES" resolve="default" />
        </node>
        <node concept="l2Vlx" id="23XkovW7YtD" role="2iSdaV" />
        <node concept="VPM3Z" id="23XkovW7YtE" role="3F10Kt" />
        <node concept="pkWqt" id="3kbdwfdD_Hm" role="pqm2j">
          <node concept="3clFbS" id="3kbdwfdD_Hn" role="2VODD2">
            <node concept="3clFbF" id="3kbdwfdDIwh" role="3cqZAp">
              <node concept="2OqwBi" id="3kbdwfdDIwj" role="3clFbG">
                <node concept="2OqwBi" id="3kbdwfdDIwk" role="2Oq$k0">
                  <node concept="pncrf" id="3kbdwfdDINu" role="2Oq$k0" />
                  <node concept="Bykcj" id="3kbdwfdDIwm" role="2OqNvi">
                    <node concept="1aIX9F" id="3kbdwfdDIwn" role="1xVPHs">
                      <node concept="26LbJo" id="3kbdwfdDIwo" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:23XkovW3EES" resolve="default" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3kbdwfdF6uJ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="23XkovW7YrD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovWfj$g">
    <property role="3GE5qa" value="datatypes" />
    <ref role="1XX52x" to="gpgy:23XkovWfjzj" resolve="GenericType" />
    <node concept="1QoScp" id="23XkovWfjGC" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="23XkovWfjGD" role="3e4ffs">
        <node concept="3clFbS" id="23XkovWfjGE" role="2VODD2">
          <node concept="3clFbF" id="23XkovWfjGF" role="3cqZAp">
            <node concept="3fqX7Q" id="23XkovWfjGG" role="3clFbG">
              <node concept="2OqwBi" id="23XkovWfjGH" role="3fr31v">
                <node concept="2OqwBi" id="23XkovWfjGI" role="2Oq$k0">
                  <node concept="pncrf" id="23XkovWfjGJ" role="2Oq$k0" />
                  <node concept="2yIwOk" id="23XkovWfjGK" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="23XkovWfjGL" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="23XkovWfjGM" role="1QoS34">
        <ref role="1k5W1q" node="3HBlKeoYLKT" resolve="Type" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="1xolST" id="23XkovWfjGN" role="1QoVPY">
        <property role="1xolSY" value="no type" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="23XkovWninn">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:23XkovWnimN" resolve="FunctionCall" />
    <node concept="3EZMnI" id="23XkovWninp" role="2wV5jI">
      <node concept="3F0A7n" id="23XkovWninw" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:23XkovWnimO" resolve="functionName" />
      </node>
      <node concept="3F0ifn" id="23XkovWninA" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="23XkovWniou" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="23XkovWnioz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="23XkovWninS" role="3EZMnx">
        <property role="2czwfO" value="," />
        <property role="Q2I2d" value="g$1Qtxb/punctuation" />
        <ref role="1NtTu8" to="gpgy:23XkovWnimW" resolve="params" />
        <node concept="l2Vlx" id="23XkovWninU" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="23XkovWninI" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="23XkovWnioB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="23XkovWnins" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="23XkovWwrdk">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:23XkovWwrcP" resolve="ArrayVariable" />
    <node concept="3EZMnI" id="23XkovWwrdT" role="2wV5jI">
      <node concept="3F1sOY" id="23XkovWwrdt" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:23XkovWwrcQ" resolve="subscripted" />
      </node>
      <node concept="3EZMnI" id="3Sv$YXXSx0k" role="3EZMnx">
        <node concept="VPM3Z" id="3Sv$YXXSx0m" role="3F10Kt" />
        <node concept="3F0ifn" id="23XkovWwre3" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <ref role="1ERwB7" node="3Sv$YXXSw3Y" resolve="ArrayVariable_Delete" />
          <node concept="11L4FC" id="23XkovWwre$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="23XkovWwreD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="23XkovWwred" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="Q2I2d" value="g$1Qtxb/punctuation" />
          <ref role="1NtTu8" to="gpgy:23XkovWwrcS" resolve="subscripts" />
          <ref role="1ERwB7" node="3Sv$YXXSw3Y" resolve="ArrayVariable_Delete" />
          <node concept="l2Vlx" id="23XkovWwref" role="2czzBx" />
          <node concept="2SqB2G" id="3Sv$YXXSfwI" role="2SqHTX">
            <property role="TrG5h" value="subscripts" />
          </node>
        </node>
        <node concept="3F0ifn" id="23XkovWwres" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <ref role="1ERwB7" node="3Sv$YXXSw3Y" resolve="ArrayVariable_Delete" />
          <node concept="11L4FC" id="23XkovWwreH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="3Sv$YXXSx0p" role="2iSdaV" />
        <node concept="2SqB2G" id="3Sv$YXXSx0C" role="2SqHTX">
          <property role="TrG5h" value="brackets" />
        </node>
      </node>
      <node concept="l2Vlx" id="23XkovWwrdU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3wAsKTk6T_p">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3wAsKTk6T$W" resolve="TimeLiteral" />
    <node concept="3EZMnI" id="3wAsKTk74dn" role="2wV5jI">
      <node concept="3F0ifn" id="3wAsKTk74do" role="3EZMnx">
        <property role="3F0ifm" value="T#" />
        <node concept="Vb9p2" id="3wAsKTk74dp" role="3F10Kt" />
        <node concept="11LMrY" id="3wAsKTk74dq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3wAsKTk74dr" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:3wAsKTk6T$Y" resolve="value" />
      </node>
      <node concept="l2Vlx" id="3wAsKTk74ds" role="2iSdaV" />
    </node>
  </node>
  <node concept="312cEu" id="4c9ExjQny7L">
    <property role="TrG5h" value="ParenthesisUtil" />
    <node concept="3Tm1VV" id="4c9ExjQnyk4" role="1B3o_S" />
    <node concept="3clFbW" id="4c9ExjQnym7" role="jymVt">
      <node concept="3cqZAl" id="4c9ExjQnym8" role="3clF45" />
      <node concept="3clFbS" id="4c9ExjQnym9" role="3clF47" />
      <node concept="3Tm1VV" id="4c9ExjQnyma" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="18ik2d67g18" role="jymVt">
      <property role="TrG5h" value="getTargetForLeftTransform" />
      <node concept="3Tqbb2" id="18ik2d67g6o" role="3clF45">
        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
      <node concept="37vLTG" id="18ik2d67g1d" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="18ik2d67g6k" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="3rDdwL2ZE_h" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3Tqbb2" id="3rDdwL2ZE_j" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="18ik2d67g1b" role="3clF47">
        <node concept="3cpWs8" id="2mZMf2N4Q5" role="3cqZAp">
          <node concept="3cpWsn" id="2mZMf2N4Q6" role="3cpWs9">
            <property role="TrG5h" value="resultingExpressionPriority" />
            <node concept="10Oyi0" id="2mZMf2N4Q7" role="1tU5fm" />
            <node concept="2OqwBi" id="3Sv$YXXHaXk" role="33vP2m">
              <node concept="2OqwBi" id="3Sv$YXXG0iG" role="2Oq$k0">
                <node concept="2yIwOk" id="3Sv$YXXG0iH" role="2OqNvi" />
                <node concept="37vLTw" id="3Sv$YXXG0iI" role="2Oq$k0">
                  <ref role="3cqZAo" node="3rDdwL2ZE_h" resolve="result" />
                </node>
              </node>
              <node concept="2qgKlT" id="3Sv$YXXHf5_" role="2OqNvi">
                <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18ik2d67I3e" role="3cqZAp">
          <node concept="3cpWsn" id="18ik2d67I3f" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="3Tqbb2" id="18ik2d67I3g" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="37vLTw" id="3Sv$YXXUTF9" role="33vP2m">
              <ref role="3cqZAo" node="18ik2d67g1d" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="18ik2d67I5c" role="3cqZAp">
          <node concept="37vLTI" id="18ik2d67I5N" role="1Dwrff">
            <node concept="37vLTw" id="3GM_nagTzuw" role="37vLTJ">
              <ref role="3cqZAo" node="18ik2d67I5f" resolve="parentNode" />
            </node>
            <node concept="1PxgMI" id="3Sv$YXXHHog" role="37vLTx">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="3Sv$YXXHHuI" role="3oSUPX">
                <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
              <node concept="2OqwBi" id="18ik2d67I5R" role="1m5AlR">
                <node concept="37vLTw" id="3Sv$YXXHI5P" role="2Oq$k0">
                  <ref role="3cqZAo" node="18ik2d67I5f" resolve="parentNode" />
                </node>
                <node concept="1mfA1w" id="18ik2d67I5V" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="18ik2d67I5o" role="1Dwp0S">
            <node concept="3eOSWO" id="3Sv$YXXHqI$" role="3uHU7w">
              <node concept="2OqwBi" id="3Sv$YXXHnF1" role="3uHU7B">
                <node concept="2OqwBi" id="3Sv$YXXG0ix" role="2Oq$k0">
                  <node concept="2yIwOk" id="3Sv$YXXG0iy" role="2OqNvi" />
                  <node concept="37vLTw" id="3Sv$YXXG0iz" role="2Oq$k0">
                    <ref role="3cqZAo" node="18ik2d67I5f" resolve="parentNode" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3Sv$YXXHqyw" role="2OqNvi">
                  <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagT_ER" role="3uHU7w">
                <ref role="3cqZAo" node="2mZMf2N4Q6" resolve="resultingExpressionPriority" />
              </node>
            </node>
            <node concept="3y3z36" id="18ik2d67I5y" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTucu" role="3uHU7B">
                <ref role="3cqZAo" node="18ik2d67I5f" resolve="parentNode" />
              </node>
              <node concept="10Nm6u" id="18ik2d67I5$" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="18ik2d67I5d" role="2LFqv$">
            <node concept="3clFbJ" id="7AtujVGrM8j" role="3cqZAp">
              <node concept="17R0WA" id="4jf2Bbg4P8E" role="3clFbw">
                <node concept="2OqwBi" id="7AtujVGrM8H" role="3uHU7B">
                  <node concept="2NL2c5" id="4jf2Bbg4OT3" role="2OqNvi" />
                  <node concept="37vLTw" id="3GM_nagTtJo" role="2Oq$k0">
                    <ref role="3cqZAo" node="18ik2d67I3f" resolve="target" />
                  </node>
                </node>
                <node concept="359W_D" id="4jf2Bbg4PiJ" role="3uHU7w">
                  <ref role="359W_E" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                  <ref role="359W_F" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
              <node concept="3clFbS" id="7AtujVGrM8k" role="3clFbx">
                <node concept="3zACq4" id="7AtujVGrM8T" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="18ik2d67I5E" role="3cqZAp">
              <node concept="37vLTI" id="18ik2d67I5G" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTsXV" role="37vLTx">
                  <ref role="3cqZAo" node="18ik2d67I5f" resolve="parentNode" />
                </node>
                <node concept="37vLTw" id="3GM_nagTyze" role="37vLTJ">
                  <ref role="3cqZAo" node="18ik2d67I3f" resolve="target" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="18ik2d67I5f" role="1Duv9x">
            <property role="TrG5h" value="parentNode" />
            <node concept="3Tqbb2" id="18ik2d67I5g" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
            </node>
            <node concept="1PxgMI" id="3Sv$YXXHr0f" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="3Sv$YXXHr0g" role="3oSUPX">
                <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
              <node concept="2OqwBi" id="3Sv$YXXHr0h" role="1m5AlR">
                <node concept="37vLTw" id="3Sv$YXXHvo2" role="2Oq$k0">
                  <ref role="3cqZAo" node="18ik2d67g1d" resolve="source" />
                </node>
                <node concept="1mfA1w" id="3Sv$YXXHr0j" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="18ik2d67I3C" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTuBm" role="3cqZAk">
            <ref role="3cqZAo" node="18ik2d67I3f" resolve="target" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="18ik2d67g1a" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3Sv$YXXF_QN" role="jymVt" />
    <node concept="2YIFZL" id="22wqDZQuBip" role="jymVt">
      <property role="TrG5h" value="processLeftTransform" />
      <node concept="3Tm1VV" id="22wqDZQuDqU" role="1B3o_S" />
      <node concept="3Tqbb2" id="22wqDZQuBir" role="3clF45">
        <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
      </node>
      <node concept="37vLTG" id="22wqDZQuBi8" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="22wqDZQuBi9" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="22wqDZQuBia" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3Tqbb2" id="22wqDZQuBib" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="22wqDZQuBgT" role="3clF47">
        <node concept="3cpWs8" id="22wqDZQuBgU" role="3cqZAp">
          <node concept="3cpWsn" id="22wqDZQuBgV" role="3cpWs9">
            <property role="TrG5h" value="nodeToProcess" />
            <node concept="3Tqbb2" id="22wqDZQuBgW" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="1rXfSq" id="3Sv$YXXG$iw" role="33vP2m">
              <ref role="37wK5l" node="18ik2d67g18" resolve="getTargetForLeftTransform" />
              <node concept="37vLTw" id="22wqDZQuBij" role="37wK5m">
                <ref role="3cqZAo" node="22wqDZQuBi8" resolve="source" />
              </node>
              <node concept="37vLTw" id="22wqDZQuBil" role="37wK5m">
                <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="22wqDZQuBh4" role="3cqZAp">
          <node concept="3clFbS" id="22wqDZQuBh5" role="3clFbx">
            <node concept="3cpWs8" id="22wqDZQuBh6" role="3cqZAp">
              <node concept="3cpWsn" id="22wqDZQuBh7" role="3cpWs9">
                <property role="TrG5h" value="parentBinary" />
                <node concept="3Tqbb2" id="22wqDZQuBh8" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
                <node concept="1PxgMI" id="22wqDZQuBh9" role="33vP2m">
                  <node concept="2OqwBi" id="22wqDZQuBha" role="1m5AlR">
                    <node concept="37vLTw" id="22wqDZQuBhb" role="2Oq$k0">
                      <ref role="3cqZAo" node="22wqDZQuBgV" resolve="nodeToProcess" />
                    </node>
                    <node concept="1mfA1w" id="22wqDZQuBhc" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="3Sv$YXXJv8n" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="22wqDZQuBhd" role="3cqZAp">
              <node concept="3clFbS" id="22wqDZQuBhe" role="3clFbx">
                <node concept="3clFbF" id="22wqDZQuBhf" role="3cqZAp">
                  <node concept="2OqwBi" id="22wqDZQuBhg" role="3clFbG">
                    <node concept="37vLTw" id="22wqDZQuBhh" role="2Oq$k0">
                      <ref role="3cqZAo" node="22wqDZQuBh7" resolve="parentBinary" />
                    </node>
                    <node concept="1P9Npp" id="22wqDZQuBhi" role="2OqNvi">
                      <node concept="37vLTw" id="22wqDZQuBik" role="1P9ThW">
                        <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="22wqDZQuBhq" role="3cqZAp">
                  <node concept="37vLTI" id="22wqDZQuBhr" role="3clFbG">
                    <node concept="37vLTw" id="22wqDZQuBhs" role="37vLTx">
                      <ref role="3cqZAo" node="22wqDZQuBgV" resolve="nodeToProcess" />
                    </node>
                    <node concept="2OqwBi" id="22wqDZQuBht" role="37vLTJ">
                      <node concept="37vLTw" id="22wqDZQuBii" role="2Oq$k0">
                        <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
                      </node>
                      <node concept="3TrEf2" id="3Sv$YXXJudS" role="2OqNvi">
                        <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="22wqDZQuBhw" role="3cqZAp">
                  <node concept="37vLTI" id="22wqDZQuBhx" role="3clFbG">
                    <node concept="37vLTw" id="22wqDZQuBhy" role="37vLTx">
                      <ref role="3cqZAo" node="22wqDZQuBh7" resolve="parentBinary" />
                    </node>
                    <node concept="2OqwBi" id="22wqDZQuBhz" role="37vLTJ">
                      <node concept="37vLTw" id="22wqDZQuBih" role="2Oq$k0">
                        <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
                      </node>
                      <node concept="3TrEf2" id="3Sv$YXXJuth" role="2OqNvi">
                        <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="22wqDZQuBhA" role="3cqZAp">
                  <node concept="37vLTw" id="22wqDZQuBid" role="3cqZAk">
                    <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="3Sv$YXXJ7SB" role="3clFbw">
                <node concept="2OqwBi" id="3Sv$YXXJl22" role="3uHU7w">
                  <node concept="2OqwBi" id="3Sv$YXXJkjn" role="2Oq$k0">
                    <node concept="37vLTw" id="3Sv$YXXJ8dk" role="2Oq$k0">
                      <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
                    </node>
                    <node concept="2yIwOk" id="3Sv$YXXJkzG" role="2OqNvi" />
                  </node>
                  <node concept="2qgKlT" id="3Sv$YXXJpN2" role="2OqNvi">
                    <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3Sv$YXXJ4vp" role="3uHU7B">
                  <node concept="2OqwBi" id="3Sv$YXXIYEc" role="2Oq$k0">
                    <node concept="37vLTw" id="22wqDZQuBhD" role="2Oq$k0">
                      <ref role="3cqZAo" node="22wqDZQuBh7" resolve="parentBinary" />
                    </node>
                    <node concept="2yIwOk" id="3Sv$YXXJ1yT" role="2OqNvi" />
                  </node>
                  <node concept="2qgKlT" id="3Sv$YXXJP2Z" role="2OqNvi">
                    <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="22wqDZQuBhF" role="3clFbw">
            <node concept="2OqwBi" id="22wqDZQuBhG" role="3uHU7B">
              <node concept="2OqwBi" id="22wqDZQuBhH" role="2Oq$k0">
                <node concept="37vLTw" id="22wqDZQuBhI" role="2Oq$k0">
                  <ref role="3cqZAo" node="22wqDZQuBgV" resolve="nodeToProcess" />
                </node>
                <node concept="1mfA1w" id="22wqDZQuBhJ" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="22wqDZQuBhK" role="2OqNvi">
                <node concept="chp4Y" id="3Sv$YXXPoJp" role="cj9EA">
                  <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="4jf2Bbg4Q7H" role="3uHU7w">
              <node concept="2OqwBi" id="22wqDZQuBhO" role="3uHU7B">
                <node concept="37vLTw" id="22wqDZQuBhP" role="2Oq$k0">
                  <ref role="3cqZAo" node="22wqDZQuBgV" resolve="nodeToProcess" />
                </node>
                <node concept="2NL2c5" id="4jf2Bbg4PK2" role="2OqNvi" />
              </node>
              <node concept="359W_D" id="4jf2Bbg4PZH" role="3uHU7w">
                <ref role="359W_E" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                <ref role="359W_F" to="gpgy:3Qd3IVOFNnv" resolve="right" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22wqDZQuBhR" role="3cqZAp">
          <node concept="2OqwBi" id="22wqDZQuBhS" role="3clFbG">
            <node concept="37vLTw" id="22wqDZQuBhT" role="2Oq$k0">
              <ref role="3cqZAo" node="22wqDZQuBgV" resolve="nodeToProcess" />
            </node>
            <node concept="1P9Npp" id="22wqDZQuBhU" role="2OqNvi">
              <node concept="37vLTw" id="22wqDZQuBig" role="1P9ThW">
                <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22wqDZQuBhW" role="3cqZAp">
          <node concept="2OqwBi" id="22wqDZQuBhX" role="3clFbG">
            <node concept="2OqwBi" id="22wqDZQuBhY" role="2Oq$k0">
              <node concept="37vLTw" id="22wqDZQuBic" role="2Oq$k0">
                <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
              </node>
              <node concept="3TrEf2" id="3Sv$YXXJvwE" role="2OqNvi">
                <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
              </node>
            </node>
            <node concept="2oxUTD" id="22wqDZQuBi1" role="2OqNvi">
              <node concept="37vLTw" id="22wqDZQuBi2" role="2oxUTC">
                <ref role="3cqZAo" node="22wqDZQuBgV" resolve="nodeToProcess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Sv$YXXJIM_" role="3cqZAp">
          <node concept="1rXfSq" id="3Sv$YXXJIMz" role="3clFbG">
            <ref role="37wK5l" node="7AtujVGrMcW" resolve="parenthesiseIfNecessary" />
            <node concept="37vLTw" id="3Sv$YXXJKGB" role="37wK5m">
              <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="22wqDZQuBi6" role="3cqZAp">
          <node concept="37vLTw" id="22wqDZQuBie" role="3cqZAk">
            <ref role="3cqZAo" node="22wqDZQuBia" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Sv$YXXL1ev" role="jymVt" />
    <node concept="2YIFZL" id="7AtujVGrMcW" role="jymVt">
      <property role="TrG5h" value="parenthesiseIfNecessary" />
      <node concept="37vLTG" id="7AtujVGrMd1" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="2AHcQZ" id="7AtujVGrMd3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3Tqbb2" id="7AtujVGrMd2" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="3Tqbb2" id="7AtujVGrMd0" role="3clF45">
        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
      <node concept="3Tm1VV" id="7AtujVGrMcY" role="1B3o_S" />
      <node concept="3clFbS" id="7AtujVGrMcZ" role="3clF47">
        <node concept="3clFbJ" id="7AtujVGrMd5" role="3cqZAp">
          <node concept="2OqwBi" id="7AtujVGrMd6" role="3clFbw">
            <node concept="2OqwBi" id="7AtujVGrMd7" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxglNDK" role="2Oq$k0">
                <ref role="3cqZAo" node="7AtujVGrMd1" resolve="contextNode" />
              </node>
              <node concept="1mfA1w" id="7AtujVGrMd9" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="7AtujVGrMda" role="2OqNvi">
              <node concept="chp4Y" id="3Sv$YXXKNlh" role="cj9EA">
                <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7AtujVGrMdc" role="3clFbx">
            <node concept="3cpWs8" id="7AtujVGrMdd" role="3cqZAp">
              <node concept="3cpWsn" id="7AtujVGrMde" role="3cpWs9">
                <property role="TrG5h" value="parentBinary" />
                <node concept="3Tqbb2" id="7AtujVGrMdf" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
                <node concept="1PxgMI" id="7AtujVGrMdg" role="33vP2m">
                  <node concept="2OqwBi" id="7AtujVGrMdh" role="1m5AlR">
                    <node concept="37vLTw" id="2BHiRxgmNp3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7AtujVGrMd1" resolve="contextNode" />
                    </node>
                    <node concept="1mfA1w" id="7AtujVGrMdj" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="3Sv$YXXKBPp" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7AtujVGrMdz" role="3cqZAp">
              <node concept="3clFbS" id="7AtujVGrMd$" role="3clFbx">
                <node concept="3cpWs8" id="7AtujVGrMdN" role="3cqZAp">
                  <node concept="3cpWsn" id="7AtujVGrMdO" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="3Tqbb2" id="7AtujVGrMdP" role="1tU5fm">
                      <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                    </node>
                    <node concept="2OqwBi" id="7AtujVGrMdQ" role="33vP2m">
                      <node concept="37vLTw" id="2BHiRxghf3g" role="2Oq$k0">
                        <ref role="3cqZAo" node="7AtujVGrMd1" resolve="contextNode" />
                      </node>
                      <node concept="2DeJnW" id="3nElHYn1gtK" role="2OqNvi">
                        <ref role="1_rbq0" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7AtujVGrMdT" role="3cqZAp">
                  <node concept="37vLTI" id="7AtujVGrMdU" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgm8xa" role="37vLTx">
                      <ref role="3cqZAo" node="7AtujVGrMd1" resolve="contextNode" />
                    </node>
                    <node concept="2OqwBi" id="7AtujVGrMdW" role="37vLTJ">
                      <node concept="37vLTw" id="3GM_nagTwbn" role="2Oq$k0">
                        <ref role="3cqZAo" node="7AtujVGrMdO" resolve="result" />
                      </node>
                      <node concept="3TrEf2" id="3Sv$YXXKIzo" role="2OqNvi">
                        <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7AtujVGrMdZ" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTBdJ" role="3cqZAk">
                    <ref role="3cqZAo" node="7AtujVGrMdO" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7AtujVGrMdB" role="3clFbw">
                <node concept="17R0WA" id="4jf2Bbg4PG4" role="3uHU7B">
                  <node concept="2OqwBi" id="7AtujVGrMdG" role="3uHU7B">
                    <node concept="2NL2c5" id="4jf2Bbg4Pnr" role="2OqNvi" />
                    <node concept="37vLTw" id="2BHiRxgmkjY" role="2Oq$k0">
                      <ref role="3cqZAo" node="7AtujVGrMd1" resolve="contextNode" />
                    </node>
                  </node>
                  <node concept="359W_D" id="4jf2Bbg4P__" role="3uHU7w">
                    <ref role="359W_E" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                    <ref role="359W_F" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
                <node concept="3eOSWO" id="3Sv$YXXKgtd" role="3uHU7w">
                  <node concept="2OqwBi" id="3Sv$YXXKaFT" role="3uHU7B">
                    <node concept="2OqwBi" id="3Sv$YXXK890" role="2Oq$k0">
                      <node concept="37vLTw" id="3Sv$YXXJAI4" role="2Oq$k0">
                        <ref role="3cqZAo" node="7AtujVGrMde" resolve="parentBinary" />
                      </node>
                      <node concept="2yIwOk" id="3Sv$YXXKahH" role="2OqNvi" />
                    </node>
                    <node concept="2qgKlT" id="3Sv$YXXLkdk" role="2OqNvi">
                      <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Sv$YXXKthv" role="3uHU7w">
                    <node concept="2OqwBi" id="3Sv$YXXKoi8" role="2Oq$k0">
                      <node concept="37vLTw" id="3Sv$YXXJAI5" role="2Oq$k0">
                        <ref role="3cqZAo" node="7AtujVGrMd1" resolve="contextNode" />
                      </node>
                      <node concept="2yIwOk" id="3Sv$YXXKsB7" role="2OqNvi" />
                    </node>
                    <node concept="2qgKlT" id="3Sv$YXXKSxD" role="2OqNvi">
                      <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7AtujVGrMdu" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxgm5Hn" role="3cqZAk">
            <ref role="3cqZAo" node="7AtujVGrMd1" resolve="contextNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2caMK5mSXtE" role="jymVt" />
    <node concept="2YIFZL" id="3Sv$YXXtNwl" role="jymVt">
      <property role="TrG5h" value="proccesRightTransform" />
      <node concept="3clFbS" id="3Sv$YXXtNwo" role="3clF47">
        <node concept="3clFbF" id="3Sv$YXXu3zL" role="3cqZAp">
          <node concept="2OqwBi" id="3Sv$YXXu6lh" role="3clFbG">
            <node concept="37vLTw" id="3Sv$YXXu3zK" role="2Oq$k0">
              <ref role="3cqZAo" node="3Sv$YXXtQAz" resolve="source" />
            </node>
            <node concept="1P9Npp" id="3Sv$YXXu9iB" role="2OqNvi">
              <node concept="37vLTw" id="3Sv$YXXu9rq" role="1P9ThW">
                <ref role="3cqZAo" node="3Sv$YXXtTaW" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Sv$YXXuc5c" role="3cqZAp">
          <node concept="37vLTI" id="3Sv$YXXujOo" role="3clFbG">
            <node concept="37vLTw" id="3Sv$YXXumEs" role="37vLTx">
              <ref role="3cqZAo" node="3Sv$YXXtQAz" resolve="source" />
            </node>
            <node concept="2OqwBi" id="3Sv$YXXuckT" role="37vLTJ">
              <node concept="37vLTw" id="3Sv$YXXuc5a" role="2Oq$k0">
                <ref role="3cqZAo" node="3Sv$YXXtTaW" resolve="result" />
              </node>
              <node concept="3TrEf2" id="3Sv$YXXuC5p" role="2OqNvi">
                <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Sv$YXXuymb" role="3cqZAp">
          <node concept="1rXfSq" id="3Sv$YXXuym9" role="3clFbG">
            <ref role="37wK5l" node="4c9ExjQnyfP" resolve="checkOperationWRTPriority" />
            <node concept="37vLTw" id="3Sv$YXXu_4C" role="37wK5m">
              <ref role="3cqZAo" node="3Sv$YXXtTaW" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Sv$YXXuCg7" role="3cqZAp">
          <node concept="37vLTw" id="3Sv$YXXuCg5" role="3clFbG">
            <ref role="3cqZAo" node="3Sv$YXXtTaW" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3Sv$YXXtFoB" role="1B3o_S" />
      <node concept="3Tqbb2" id="3Sv$YXXtIuD" role="3clF45">
        <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
      </node>
      <node concept="37vLTG" id="3Sv$YXXtQAz" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="3Sv$YXXtQAy" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="3Sv$YXXtTaW" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3Tqbb2" id="3Sv$YXXtVHx" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ixVQjdTwZz" role="jymVt" />
    <node concept="2YIFZL" id="6ixVQjdTc$l" role="jymVt">
      <property role="TrG5h" value="createUnmatchedLeftParenthesis" />
      <node concept="3Tm1VV" id="6ixVQjdTc$m" role="1B3o_S" />
      <node concept="3clFbS" id="6ixVQjdTc$n" role="3clF47">
        <node concept="3cpWs6" id="21iL58c6Yel" role="3cqZAp">
          <node concept="1rXfSq" id="21iL58c6Yem" role="3cqZAk">
            <ref role="37wK5l" node="2caMK5mSYtR" resolve="createUnmatchedParenthesisAndCheckParentParens" />
            <node concept="37vLTw" id="21iL58c6YjR" role="37wK5m">
              <ref role="3cqZAo" node="6ixVQjdTcBm" resolve="leftExpression" />
            </node>
            <node concept="3clFbT" id="21iL58c6YmM" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ixVQjdTcBm" role="3clF46">
        <property role="TrG5h" value="leftExpression" />
        <node concept="2AHcQZ" id="6ixVQjdTcBn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3Tqbb2" id="6ixVQjdTcBo" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="3Tqbb2" id="6ixVQjdTU9N" role="3clF45">
        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
    </node>
    <node concept="2tJIrI" id="21iL58c4xL4" role="jymVt" />
    <node concept="2YIFZL" id="6ixVQje8nKP" role="jymVt">
      <property role="TrG5h" value="createUnmatchedRightParenthesis" />
      <node concept="3Tm1VV" id="6ixVQje8nKQ" role="1B3o_S" />
      <node concept="3clFbS" id="6ixVQje8nKR" role="3clF47">
        <node concept="3cpWs6" id="21iL58c6MUI" role="3cqZAp">
          <node concept="1rXfSq" id="21iL58c6PgS" role="3cqZAk">
            <ref role="37wK5l" node="2caMK5mSYtR" resolve="createUnmatchedParenthesisAndCheckParentParens" />
            <node concept="37vLTw" id="21iL58c6QHr" role="37wK5m">
              <ref role="3cqZAo" node="6ixVQje8nL4" resolve="rightExpression" />
            </node>
            <node concept="3clFbT" id="21iL58c6SUj" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ixVQje8nL4" role="3clF46">
        <property role="TrG5h" value="rightExpression" />
        <node concept="2AHcQZ" id="6ixVQje8nL5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3Tqbb2" id="6ixVQje8nL6" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="3Tqbb2" id="6ixVQje8nL7" role="3clF45">
        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$YZliaTl1v" role="jymVt" />
    <node concept="2YIFZL" id="4c9ExjQnyiB" role="jymVt">
      <property role="TrG5h" value="findRightmostOrLeftmostLeafExpression" />
      <node concept="37vLTG" id="4c9ExjQnyj4" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="4c9ExjQnyj5" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="3clFbS" id="4c9ExjQnyiE" role="3clF47">
        <node concept="3clFbJ" id="2ZMT1UaWu6p" role="3cqZAp">
          <node concept="3fqX7Q" id="5LmxeqIhQA9" role="3clFbw">
            <node concept="2OqwBi" id="5LmxeqIhSkM" role="3fr31v">
              <node concept="37vLTw" id="5LmxeqIhRsM" role="2Oq$k0">
                <ref role="3cqZAo" node="4c9ExjQnyj4" resolve="root" />
              </node>
              <node concept="1mIQ4w" id="5LmxeqIhTiS" role="2OqNvi">
                <node concept="chp4Y" id="3Sv$YXX_bbv" role="cj9EA">
                  <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2ZMT1UaWu6s" role="3clFbx">
            <node concept="3cpWs6" id="2ZMT1UaWvid" role="3cqZAp">
              <node concept="37vLTw" id="2ZMT1UaWvAg" role="3cqZAk">
                <ref role="3cqZAo" node="4c9ExjQnyj4" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ZMT1UaWvXV" role="3cqZAp" />
        <node concept="3cpWs8" id="5LmxeqIhYLo" role="3cqZAp">
          <node concept="3cpWsn" id="5LmxeqIhYLp" role="3cpWs9">
            <property role="TrG5h" value="parRoot" />
            <node concept="3Tqbb2" id="5LmxeqIhYLm" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
            </node>
            <node concept="1PxgMI" id="5LmxeqIhYLq" role="33vP2m">
              <node concept="37vLTw" id="5LmxeqIhYLr" role="1m5AlR">
                <ref role="3cqZAo" node="4c9ExjQnyj4" resolve="root" />
              </node>
              <node concept="chp4Y" id="3Sv$YXX_dxL" role="3oSUPX">
                <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6$YZlibLwA0" role="3cqZAp">
          <node concept="3clFbS" id="6$YZlibLwA3" role="3clFbx">
            <node concept="3cpWs6" id="6$YZlibLxaZ" role="3cqZAp">
              <node concept="1rXfSq" id="6$YZlibLxmA" role="3cqZAk">
                <ref role="37wK5l" node="4c9ExjQnyiB" resolve="findRightmostOrLeftmostLeafExpression" />
                <node concept="2OqwBi" id="2eNNuspqthg" role="37wK5m">
                  <node concept="37vLTw" id="5LmxeqIi5bs" role="2Oq$k0">
                    <ref role="3cqZAo" node="5LmxeqIhYLp" resolve="parRoot" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXX_hwl" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
                <node concept="37vLTw" id="6$YZlibLxmE" role="37wK5m">
                  <ref role="3cqZAo" node="4c9ExjQnyj6" resolve="rightmost" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2eNNuspqokH" role="3clFbw">
            <node concept="3y3z36" id="2eNNuspqs2H" role="3uHU7w">
              <node concept="10Nm6u" id="2eNNuspqs4e" role="3uHU7w" />
              <node concept="2OqwBi" id="2eNNuspqoBP" role="3uHU7B">
                <node concept="37vLTw" id="5LmxeqIi3eF" role="2Oq$k0">
                  <ref role="3cqZAo" node="5LmxeqIhYLp" resolve="parRoot" />
                </node>
                <node concept="3TrEf2" id="3Sv$YXX_hgE" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6$YZlibLwNy" role="3uHU7B">
              <ref role="3cqZAo" node="4c9ExjQnyj6" resolve="rightmost" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2eNNuspqvfr" role="3cqZAp">
          <node concept="3clFbS" id="2eNNuspqvfs" role="3clFbx">
            <node concept="3cpWs6" id="2eNNuspqvft" role="3cqZAp">
              <node concept="1rXfSq" id="2eNNuspqvfu" role="3cqZAk">
                <ref role="37wK5l" node="4c9ExjQnyiB" resolve="findRightmostOrLeftmostLeafExpression" />
                <node concept="2OqwBi" id="2eNNuspqvfv" role="37wK5m">
                  <node concept="37vLTw" id="5LmxeqIi8pJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5LmxeqIhYLp" resolve="parRoot" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXX_l3S" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
                <node concept="37vLTw" id="2eNNuspqvfy" role="37wK5m">
                  <ref role="3cqZAo" node="4c9ExjQnyj6" resolve="rightmost" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2eNNuspqvfz" role="3clFbw">
            <node concept="3y3z36" id="2eNNuspqvf$" role="3uHU7w">
              <node concept="10Nm6u" id="2eNNuspqvf_" role="3uHU7w" />
              <node concept="2OqwBi" id="2eNNuspqvfA" role="3uHU7B">
                <node concept="37vLTw" id="5LmxeqIi7h0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5LmxeqIhYLp" resolve="parRoot" />
                </node>
                <node concept="3TrEf2" id="3Sv$YXX_o_B" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2eNNuspqvx8" role="3uHU7B">
              <node concept="37vLTw" id="2eNNuspqvxa" role="3fr31v">
                <ref role="3cqZAo" node="4c9ExjQnyj6" resolve="rightmost" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2eNNusolkdZ" role="3cqZAp">
          <node concept="37vLTw" id="2eNNusolkqS" role="3cqZAk">
            <ref role="3cqZAo" node="4c9ExjQnyj4" resolve="root" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4c9ExjQnyiC" role="3clF45">
        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
      <node concept="3Tm1VV" id="21iL58ehnnF" role="1B3o_S" />
      <node concept="37vLTG" id="4c9ExjQnyj6" role="3clF46">
        <property role="TrG5h" value="rightmost" />
        <node concept="10P_77" id="4c9ExjQnyj7" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2caMK5mSWZo" role="jymVt" />
    <node concept="2YIFZL" id="3Sv$YXXEnaZ" role="jymVt">
      <property role="TrG5h" value="canPropagateUnmatchedParenUp" />
      <node concept="3clFbS" id="3Sv$YXXEnb3" role="3clF47">
        <node concept="3cpWs8" id="3Sv$YXXEnb4" role="3cqZAp">
          <node concept="3cpWsn" id="3Sv$YXXEnb5" role="3cpWs9">
            <property role="TrG5h" value="leafAncestors" />
            <node concept="2I9FWS" id="3Sv$YXXEnb6" role="1tU5fm">
              <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
            </node>
            <node concept="2OqwBi" id="3Sv$YXXEnb7" role="33vP2m">
              <node concept="37vLTw" id="3Sv$YXXEnb8" role="2Oq$k0">
                <ref role="3cqZAo" node="3Sv$YXXEnbq" resolve="leaf" />
              </node>
              <node concept="z$bX8" id="3Sv$YXXEnb9" role="2OqNvi">
                <node concept="1xIGOp" id="3Sv$YXXEnba" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3Sv$YXXEnbb" role="3cqZAp">
          <node concept="22lmx$" id="3Sv$YXXEnbc" role="3cqZAk">
            <node concept="2OqwBi" id="3Sv$YXXEnbd" role="3uHU7B">
              <node concept="37vLTw" id="3Sv$YXXEnbe" role="2Oq$k0">
                <ref role="3cqZAo" node="3Sv$YXXEnb5" resolve="leafAncestors" />
              </node>
              <node concept="3JPx81" id="3Sv$YXXEnbf" role="2OqNvi">
                <node concept="2OqwBi" id="3Sv$YXXEnbg" role="25WWJ7">
                  <node concept="37vLTw" id="3Sv$YXXEnbh" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Sv$YXXEnb1" resolve="expr" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXEnbi" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3Sv$YXXEnbj" role="3uHU7w">
              <node concept="37vLTw" id="3Sv$YXXEnbk" role="2Oq$k0">
                <ref role="3cqZAo" node="3Sv$YXXEnb5" resolve="leafAncestors" />
              </node>
              <node concept="3JPx81" id="3Sv$YXXEnbl" role="2OqNvi">
                <node concept="2OqwBi" id="3Sv$YXXEnbm" role="25WWJ7">
                  <node concept="37vLTw" id="3Sv$YXXEnbn" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Sv$YXXEnb1" resolve="expr" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXEnbo" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3Sv$YXXEnbp" role="3clF45" />
      <node concept="37vLTG" id="3Sv$YXXEnb1" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="3Sv$YXXEnb2" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="3Sv$YXXEnbq" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="3Sv$YXXEnbr" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="3Sv$YXXEnbs" role="3clF46">
        <property role="TrG5h" value="rightParen" />
        <node concept="10P_77" id="3Sv$YXXEnbt" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3Sv$YXXEnbu" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3Sv$YXX$OIA" role="jymVt" />
    <node concept="2YIFZL" id="2caMK5mSYtR" role="jymVt">
      <property role="TrG5h" value="createUnmatchedParenthesisAndCheckParentParens" />
      <node concept="P$JXv" id="2caMK5mSYtS" role="lGtFl">
        <node concept="TZ5HA" id="2caMK5mSYtT" role="TZ5H$">
          <node concept="1dT_AC" id="2caMK5mSYtU" role="1dT_Ay">
            <property role="1dT_AB" value="First search up the ancestors for ParenthesisedExpressions." />
          </node>
        </node>
        <node concept="TZ5HA" id="2caMK5mSYtV" role="TZ5H$">
          <node concept="1dT_AC" id="2caMK5mSYtW" role="1dT_Ay">
            <property role="1dT_AB" value="If found one, break it into two incomplete parentheses and match with one of them." />
          </node>
        </node>
        <node concept="TZ5HA" id="VufYxm6D7O" role="TZ5H$">
          <node concept="1dT_AC" id="VufYxm6D7P" role="1dT_Ay">
            <property role="1dT_AB" value="The continue trying to match the other incomplete parenthesis." />
          </node>
        </node>
        <node concept="TZ5HA" id="VufYxm6D9W" role="TZ5H$">
          <node concept="1dT_AC" id="VufYxm6D9X" role="1dT_Ay">
            <property role="1dT_AB" value="If no more ancestor ParenthesisedExpression is found, continue with the standard matching" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2caMK5mSYtX" role="1B3o_S" />
      <node concept="3clFbS" id="2caMK5mSYtY" role="3clF47">
        <node concept="3clFbH" id="2caMK5mThoJ" role="3cqZAp" />
        <node concept="3cpWs8" id="4eofi1QsveX" role="3cqZAp">
          <node concept="3cpWsn" id="4eofi1Qsvf0" role="3cpWs9">
            <property role="TrG5h" value="expressionToProcess" />
            <node concept="3Tqbb2" id="4eofi1QsveV" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="37vLTw" id="4eofi1QsvI6" role="33vP2m">
              <ref role="3cqZAo" node="2caMK5mSYzM" resolve="myExpression" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eofi1QsBWb" role="3cqZAp">
          <node concept="3cpWsn" id="4eofi1QsBWe" role="3cpWs9">
            <property role="TrG5h" value="expressionToSetFocusOn" />
            <node concept="3Tqbb2" id="4eofi1QsBW9" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="10Nm6u" id="4eofi1QsSkI" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="4eofi1QsWCf" role="3cqZAp" />
        <node concept="3cpWs8" id="3rOAvstZJ5L" role="3cqZAp">
          <node concept="3cpWsn" id="3rOAvstZJ5M" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="3rOAvstZJ5I" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="1rXfSq" id="3rOAvstZJ5N" role="33vP2m">
              <ref role="37wK5l" node="3rOAvstZnB_" resolve="findWrappingParens" />
              <node concept="37vLTw" id="4eofi1Qsw9E" role="37wK5m">
                <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="3rOAvstZGnU" role="3cqZAp">
          <node concept="3clFbS" id="3rOAvstZGnW" role="2LFqv$">
            <node concept="3cpWs8" id="6sT4pfWw_2h" role="3cqZAp">
              <node concept="3cpWsn" id="6sT4pfWw_2k" role="3cpWs9">
                <property role="TrG5h" value="leftParenOnParens" />
                <node concept="3Tqbb2" id="VufYxhyJ0x" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                </node>
                <node concept="2OqwBi" id="6sT4pfWw_s5" role="33vP2m">
                  <node concept="37vLTw" id="6sT4pfWw_mB" role="2Oq$k0">
                    <ref role="3cqZAo" node="3rOAvstZJ5M" resolve="current" />
                  </node>
                  <node concept="3CFZ6_" id="6sT4pfWw_z3" role="2OqNvi">
                    <node concept="3CFYIy" id="3Sv$YXXwCNG" role="3CFYIz">
                      <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6sT4pfWw_Qd" role="3cqZAp">
              <node concept="3cpWsn" id="6sT4pfWw_Qe" role="3cpWs9">
                <property role="TrG5h" value="rightParenOnParens" />
                <node concept="2OqwBi" id="6sT4pfWw_Qi" role="33vP2m">
                  <node concept="37vLTw" id="6sT4pfWw_Qj" role="2Oq$k0">
                    <ref role="3cqZAo" node="3rOAvstZJ5M" resolve="current" />
                  </node>
                  <node concept="3CFZ6_" id="6sT4pfWw_Qk" role="2OqNvi">
                    <node concept="3CFYIy" id="3Sv$YXXwDel" role="3CFYIz">
                      <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="VufYxhyJxp" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4eofi1QGsAa" role="3cqZAp">
              <node concept="3cpWsn" id="4eofi1QGsAd" role="3cpWs9">
                <property role="TrG5h" value="propagateNewParensInsteadOfExpr" />
                <node concept="10P_77" id="4eofi1QGsA8" role="1tU5fm" />
                <node concept="3clFbT" id="4eofi1QGteS" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="VufYxhyKUf" role="3cqZAp" />
            <node concept="3cpWs8" id="3rOAvsuh6Iz" role="3cqZAp">
              <node concept="3cpWsn" id="3rOAvsuh6I$" role="3cpWs9">
                <property role="TrG5h" value="replacing" />
                <node concept="3Tqbb2" id="3rOAvsuh6Is" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                </node>
                <node concept="2OqwBi" id="3rOAvsuh6I_" role="33vP2m">
                  <node concept="1PxgMI" id="3rOAvsuh6IA" role="2Oq$k0">
                    <node concept="chp4Y" id="3Sv$YXXwDBb" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                    </node>
                    <node concept="37vLTw" id="3rOAvsuh6IB" role="1m5AlR">
                      <ref role="3cqZAo" node="3rOAvstZJ5M" resolve="current" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXwHO7" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3dIrgk8stny" role="3cqZAp">
              <node concept="3cpWsn" id="3dIrgk8stnz" role="3cpWs9">
                <property role="TrG5h" value="rightMostNode" />
                <node concept="3Tqbb2" id="3dIrgk8stnu" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                </node>
                <node concept="1rXfSq" id="3Sv$YXX$WKs" role="33vP2m">
                  <ref role="37wK5l" node="4c9ExjQnyiB" resolve="findRightmostOrLeftmostLeafExpression" />
                  <node concept="37vLTw" id="3dIrgk8stn_" role="37wK5m">
                    <ref role="3cqZAo" node="3rOAvsuh6I$" resolve="replacing" />
                  </node>
                  <node concept="3clFbT" id="3dIrgk8stnA" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="tmPVnwJgcH" role="3cqZAp">
              <node concept="3cpWsn" id="tmPVnwJgcI" role="3cpWs9">
                <property role="TrG5h" value="leftMostNod" />
                <node concept="3Tqbb2" id="tmPVnwJgcC" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                </node>
                <node concept="1rXfSq" id="3Sv$YXX_0Xp" role="33vP2m">
                  <ref role="37wK5l" node="4c9ExjQnyiB" resolve="findRightmostOrLeftmostLeafExpression" />
                  <node concept="37vLTw" id="tmPVnxdmO5" role="37wK5m">
                    <ref role="3cqZAo" node="3rOAvsuh6I$" resolve="replacing" />
                  </node>
                  <node concept="3clFbT" id="tmPVnwJgcN" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4eofi1QdEI1" role="3cqZAp" />
            <node concept="3clFbJ" id="4eofi1QGeoo" role="3cqZAp">
              <node concept="3clFbS" id="4eofi1QGeor" role="3clFbx">
                <node concept="3clFbF" id="4eofi1QGtkj" role="3cqZAp">
                  <node concept="37vLTI" id="4eofi1QGtvh" role="3clFbG">
                    <node concept="3clFbT" id="4eofi1QGtxk" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="4eofi1QGtki" role="37vLTJ">
                      <ref role="3cqZAo" node="4eofi1QGsAd" resolve="propagateNewParensInsteadOfExpr" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="4eofi1QGrV$" role="3clFbw">
                <node concept="1eOMI4" id="4eofi1QNZ8a" role="3uHU7w">
                  <node concept="1Wc70l" id="4eofi1QNZmg" role="1eOMHV">
                    <node concept="3fqX7Q" id="4eofi1QNZtv" role="3uHU7B">
                      <node concept="37vLTw" id="4eofi1QNZyV" role="3fr31v">
                        <ref role="3cqZAo" node="2caMK5mSYzP" resolve="completingByRightParen" />
                      </node>
                    </node>
                    <node concept="17R0WA" id="4eofi1QNZ8b" role="3uHU7w">
                      <node concept="37vLTw" id="4eofi1QNZ8c" role="3uHU7w">
                        <ref role="3cqZAo" node="tmPVnwJgcI" resolve="leftMostNod" />
                      </node>
                      <node concept="37vLTw" id="4eofi1QNZ8d" role="3uHU7B">
                        <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="4eofi1QNYOd" role="3uHU7B">
                  <node concept="1Wc70l" id="4eofi1QNYSW" role="1eOMHV">
                    <node concept="37vLTw" id="4eofi1QNYZL" role="3uHU7B">
                      <ref role="3cqZAo" node="2caMK5mSYzP" resolve="completingByRightParen" />
                    </node>
                    <node concept="17R0WA" id="4eofi1QNYOe" role="3uHU7w">
                      <node concept="37vLTw" id="4eofi1QNYOf" role="3uHU7B">
                        <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
                      </node>
                      <node concept="37vLTw" id="4eofi1QNYOg" role="3uHU7w">
                        <ref role="3cqZAo" node="3dIrgk8stnz" resolve="rightMostNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4eofi1QGl23" role="3cqZAp" />
            <node concept="3clFbF" id="3rOAvsuh9iX" role="3cqZAp">
              <node concept="2OqwBi" id="3rOAvsuh9nH" role="3clFbG">
                <node concept="37vLTw" id="3rOAvsuh9iV" role="2Oq$k0">
                  <ref role="3cqZAo" node="3rOAvstZJ5M" resolve="current" />
                </node>
                <node concept="1P9Npp" id="3rOAvsuh9AY" role="2OqNvi">
                  <node concept="37vLTw" id="3rOAvsuh9Du" role="1P9ThW">
                    <ref role="3cqZAo" node="3rOAvsuh6I$" resolve="replacing" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4eofi1QsIXm" role="3cqZAp">
              <node concept="3cpWsn" id="4eofi1QsIXp" role="3cpWs9">
                <property role="TrG5h" value="localExpToSetFocusOn" />
                <node concept="3Tqbb2" id="4eofi1QsIXk" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2caMK5mTwlR" role="3cqZAp">
              <node concept="3clFbS" id="2caMK5mTwlU" role="3clFbx">
                <node concept="3clFbF" id="VufYxhyIFs" role="3cqZAp">
                  <node concept="1rXfSq" id="VufYxhyIFq" role="3clFbG">
                    <ref role="37wK5l" node="VufYxhyE73" resolve="setOrIncreaseParen" />
                    <node concept="37vLTw" id="VufYxhyIMx" role="37wK5m">
                      <ref role="3cqZAo" node="tmPVnwJgcI" resolve="leftMostNod" />
                    </node>
                    <node concept="3clFbT" id="VufYxhyISA" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4eofi1QsJyP" role="3cqZAp">
                  <node concept="37vLTI" id="4eofi1QsJCB" role="3clFbG">
                    <node concept="37vLTw" id="4eofi1QsJyN" role="37vLTJ">
                      <ref role="3cqZAo" node="4eofi1QsIXp" resolve="localExpToSetFocusOn" />
                    </node>
                    <node concept="2YIFZM" id="3Sv$YXXAXfG" role="37vLTx">
                      <ref role="37wK5l" node="21iL58c4rNj" resolve="createUnmatchedParenthesis" />
                      <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                      <node concept="37vLTw" id="3Sv$YXXAXfH" role="37wK5m">
                        <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
                      </node>
                      <node concept="3clFbT" id="3Sv$YXXAXfI" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2caMK5mTU$p" role="3cqZAp">
                  <node concept="37vLTI" id="2caMK5mTUFk" role="3clFbG">
                    <node concept="3K4zz7" id="4eofi1QGu03" role="37vLTx">
                      <node concept="37vLTw" id="4eofi1QGuaX" role="3K4E3e">
                        <ref role="3cqZAo" node="4eofi1QsIXp" resolve="localExpToSetFocusOn" />
                      </node>
                      <node concept="37vLTw" id="4eofi1QGu6r" role="3K4GZi">
                        <ref role="3cqZAo" node="3dIrgk8stnz" resolve="rightMostNode" />
                      </node>
                      <node concept="37vLTw" id="4eofi1QGtJh" role="3K4Cdx">
                        <ref role="3cqZAo" node="4eofi1QGsAd" resolve="propagateNewParensInsteadOfExpr" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4eofi1QswGl" role="37vLTJ">
                      <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2caMK5mTwwK" role="3clFbw">
                <ref role="3cqZAo" node="2caMK5mSYzP" resolve="completingByRightParen" />
              </node>
              <node concept="9aQIb" id="2caMK5mTNEX" role="9aQIa">
                <node concept="3clFbS" id="2caMK5mTNEY" role="9aQI4">
                  <node concept="3clFbF" id="VufYxhyLf3" role="3cqZAp">
                    <node concept="1rXfSq" id="VufYxhyLf1" role="3clFbG">
                      <ref role="37wK5l" node="VufYxhyE73" resolve="setOrIncreaseParen" />
                      <node concept="37vLTw" id="VufYxhyLm_" role="37wK5m">
                        <ref role="3cqZAo" node="3dIrgk8stnz" resolve="rightMostNode" />
                      </node>
                      <node concept="3clFbT" id="VufYxhyLsG" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4eofi1QsJTS" role="3cqZAp">
                    <node concept="37vLTI" id="4eofi1QsK0d" role="3clFbG">
                      <node concept="37vLTw" id="4eofi1QsJTQ" role="37vLTJ">
                        <ref role="3cqZAo" node="4eofi1QsIXp" resolve="localExpToSetFocusOn" />
                      </node>
                      <node concept="2YIFZM" id="3Sv$YXXB4h2" role="37vLTx">
                        <ref role="37wK5l" node="21iL58c4rNj" resolve="createUnmatchedParenthesis" />
                        <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                        <node concept="37vLTw" id="3Sv$YXXB4h3" role="37wK5m">
                          <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
                        </node>
                        <node concept="3clFbT" id="3Sv$YXXB4h4" role="37wK5m">
                          <property role="3clFbU" value="false" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2caMK5mTUPL" role="3cqZAp">
                    <node concept="37vLTI" id="2caMK5mTUPM" role="3clFbG">
                      <node concept="3K4zz7" id="4eofi1QGuyQ" role="37vLTx">
                        <node concept="37vLTw" id="4eofi1QGuBz" role="3K4E3e">
                          <ref role="3cqZAo" node="4eofi1QsIXp" resolve="localExpToSetFocusOn" />
                        </node>
                        <node concept="37vLTw" id="4eofi1QGuFZ" role="3K4GZi">
                          <ref role="3cqZAo" node="tmPVnwJgcI" resolve="leftMostNod" />
                        </node>
                        <node concept="37vLTw" id="4eofi1QGui4" role="3K4Cdx">
                          <ref role="3cqZAo" node="4eofi1QGsAd" resolve="propagateNewParensInsteadOfExpr" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4eofi1QswP5" role="37vLTJ">
                        <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2NGIEiUcrjX" role="3cqZAp" />
            <node concept="3clFbJ" id="4eofi1QsKa2" role="3cqZAp">
              <node concept="3clFbS" id="4eofi1QsKa5" role="3clFbx">
                <node concept="3clFbF" id="4eofi1QsKFL" role="3cqZAp">
                  <node concept="37vLTI" id="4eofi1QsKKv" role="3clFbG">
                    <node concept="37vLTw" id="4eofi1QsKO_" role="37vLTx">
                      <ref role="3cqZAo" node="4eofi1QsIXp" resolve="localExpToSetFocusOn" />
                    </node>
                    <node concept="37vLTw" id="4eofi1QsKFK" role="37vLTJ">
                      <ref role="3cqZAo" node="4eofi1QsBWe" resolve="expressionToSetFocusOn" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="4eofi1QsKzV" role="3clFbw">
                <node concept="10Nm6u" id="4eofi1QsSpM" role="3uHU7w" />
                <node concept="37vLTw" id="4eofi1QsKuy" role="3uHU7B">
                  <ref role="3cqZAo" node="4eofi1QsBWe" resolve="expressionToSetFocusOn" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2NGIEiUcr3N" role="3cqZAp" />
            <node concept="3clFbJ" id="6sT4pfWwMfB" role="3cqZAp">
              <node concept="3clFbS" id="6sT4pfWwMfE" role="3clFbx">
                <node concept="3clFbF" id="VufYxin_NL" role="3cqZAp">
                  <node concept="1rXfSq" id="VufYxin_NJ" role="3clFbG">
                    <ref role="37wK5l" node="VufYxinzA7" resolve="setOrMergeParen" />
                    <node concept="37vLTw" id="VufYxin_RD" role="37wK5m">
                      <ref role="3cqZAo" node="4eofi1QsIXp" resolve="localExpToSetFocusOn" />
                    </node>
                    <node concept="3clFbT" id="VufYxin_XT" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="37vLTw" id="VufYxinA4x" role="37wK5m">
                      <ref role="3cqZAo" node="6sT4pfWw_2k" resolve="leftParenOnParens" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2NGIEiU3ILL" role="3clFbw">
                <node concept="37vLTw" id="2NGIEiU3OVY" role="3uHU7B">
                  <ref role="3cqZAo" node="2caMK5mSYzP" resolve="completingByRightParen" />
                </node>
                <node concept="3y3z36" id="VufYxhyK45" role="3uHU7w">
                  <node concept="10Nm6u" id="VufYxhyK6g" role="3uHU7w" />
                  <node concept="37vLTw" id="6sT4pfWwMmx" role="3uHU7B">
                    <ref role="3cqZAo" node="6sT4pfWw_2k" resolve="leftParenOnParens" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="VufYxiJVie" role="3cqZAp">
              <node concept="3clFbS" id="VufYxiJVif" role="3clFbx">
                <node concept="3clFbF" id="VufYxiJVig" role="3cqZAp">
                  <node concept="1rXfSq" id="VufYxiJVih" role="3clFbG">
                    <ref role="37wK5l" node="VufYxinzA7" resolve="setOrMergeParen" />
                    <node concept="37vLTw" id="VufYxiJVii" role="37wK5m">
                      <ref role="3cqZAo" node="4eofi1QsIXp" resolve="localExpToSetFocusOn" />
                    </node>
                    <node concept="3clFbT" id="VufYxiJVij" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="VufYxiJVik" role="37wK5m">
                      <ref role="3cqZAo" node="6sT4pfWw_Qe" resolve="rightParenOnParens" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2NGIEiU3P0$" role="3clFbw">
                <node concept="3fqX7Q" id="2NGIEiU3P80" role="3uHU7B">
                  <node concept="37vLTw" id="2NGIEiU3Pc$" role="3fr31v">
                    <ref role="3cqZAo" node="2caMK5mSYzP" resolve="completingByRightParen" />
                  </node>
                </node>
                <node concept="3y3z36" id="VufYxiJVil" role="3uHU7w">
                  <node concept="10Nm6u" id="VufYxiJVim" role="3uHU7w" />
                  <node concept="37vLTw" id="VufYxiJVin" role="3uHU7B">
                    <ref role="3cqZAo" node="6sT4pfWw_Qe" resolve="rightParenOnParens" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4eofi1QsX2r" role="3cqZAp" />
            <node concept="3clFbJ" id="2NGIEiU3VyF" role="3cqZAp">
              <node concept="3clFbS" id="2NGIEiU3VyG" role="3clFbx">
                <node concept="3clFbF" id="2NGIEiU3VyH" role="3cqZAp">
                  <node concept="1rXfSq" id="2NGIEiU3VyI" role="3clFbG">
                    <ref role="37wK5l" node="VufYxinzA7" resolve="setOrMergeParen" />
                    <node concept="37vLTw" id="2NGIEiUcp_E" role="37wK5m">
                      <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
                    </node>
                    <node concept="3clFbT" id="2NGIEiU3VyK" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="2NGIEiU3Wru" role="37wK5m">
                      <ref role="3cqZAo" node="6sT4pfWw_Qe" resolve="rightParenOnParens" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2NGIEiU3VyM" role="3clFbw">
                <node concept="37vLTw" id="2NGIEiU3VyN" role="3uHU7B">
                  <ref role="3cqZAo" node="2caMK5mSYzP" resolve="completingByRightParen" />
                </node>
                <node concept="3y3z36" id="2NGIEiU3VyO" role="3uHU7w">
                  <node concept="10Nm6u" id="2NGIEiU3VyP" role="3uHU7w" />
                  <node concept="37vLTw" id="2NGIEiU3WcS" role="3uHU7B">
                    <ref role="3cqZAo" node="6sT4pfWw_Qe" resolve="rightParenOnParens" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2NGIEiU3VyR" role="3cqZAp">
              <node concept="3clFbS" id="2NGIEiU3VyS" role="3clFbx">
                <node concept="3clFbF" id="2NGIEiU3VyT" role="3cqZAp">
                  <node concept="1rXfSq" id="2NGIEiU3VyU" role="3clFbG">
                    <ref role="37wK5l" node="VufYxinzA7" resolve="setOrMergeParen" />
                    <node concept="37vLTw" id="2NGIEiUcpuA" role="37wK5m">
                      <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
                    </node>
                    <node concept="3clFbT" id="2NGIEiU3VyW" role="37wK5m" />
                    <node concept="37vLTw" id="2NGIEiU3WDW" role="37wK5m">
                      <ref role="3cqZAo" node="6sT4pfWw_2k" resolve="leftParenOnParens" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2NGIEiU3VyY" role="3clFbw">
                <node concept="3fqX7Q" id="2NGIEiU3VyZ" role="3uHU7B">
                  <node concept="37vLTw" id="2NGIEiU3Vz0" role="3fr31v">
                    <ref role="3cqZAo" node="2caMK5mSYzP" resolve="completingByRightParen" />
                  </node>
                </node>
                <node concept="3y3z36" id="2NGIEiU3Vz1" role="3uHU7w">
                  <node concept="10Nm6u" id="2NGIEiU3Vz2" role="3uHU7w" />
                  <node concept="37vLTw" id="2NGIEiU3Wws" role="3uHU7B">
                    <ref role="3cqZAo" node="6sT4pfWw_2k" resolve="leftParenOnParens" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2NGIEiU3ViQ" role="3cqZAp" />
            <node concept="3clFbF" id="3rOAvstZRSa" role="3cqZAp">
              <node concept="37vLTI" id="3rOAvstZRXI" role="3clFbG">
                <node concept="1rXfSq" id="3rOAvstZS0e" role="37vLTx">
                  <ref role="37wK5l" node="3rOAvstZnB_" resolve="findWrappingParens" />
                  <node concept="37vLTw" id="4eofi1Qsw6x" role="37wK5m">
                    <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
                  </node>
                </node>
                <node concept="37vLTw" id="3rOAvstZRS8" role="37vLTJ">
                  <ref role="3cqZAo" node="3rOAvstZJ5M" resolve="current" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2caMK5mTjQY" role="2$JKZa">
            <node concept="10Nm6u" id="2caMK5mTjSK" role="3uHU7w" />
            <node concept="37vLTw" id="2caMK5mTjKv" role="3uHU7B">
              <ref role="3cqZAo" node="3rOAvstZJ5M" resolve="current" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3rOAvstZOui" role="3cqZAp" />
        <node concept="3cpWs8" id="4eofi1QswQA" role="3cqZAp">
          <node concept="3cpWsn" id="4eofi1QswQB" role="3cpWs9">
            <property role="TrG5h" value="created" />
            <node concept="3Tqbb2" id="4eofi1QswQw" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="1rXfSq" id="4eofi1QswQC" role="33vP2m">
              <ref role="37wK5l" node="21iL58c4rNj" resolve="createUnmatchedParenthesis" />
              <node concept="37vLTw" id="4eofi1QswQD" role="37wK5m">
                <ref role="3cqZAo" node="4eofi1Qsvf0" resolve="expressionToProcess" />
              </node>
              <node concept="37vLTw" id="4eofi1QswQE" role="37wK5m">
                <ref role="3cqZAo" node="2caMK5mSYzP" resolve="completingByRightParen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6im1NnITdkZ" role="3cqZAp">
          <node concept="1rXfSq" id="6im1NnITdkY" role="3clFbG">
            <ref role="37wK5l" node="6im1NnIT8FT" resolve="checkWholeExpressionPriorities" />
            <node concept="37vLTw" id="3VO0F5IXaQ8" role="37wK5m">
              <ref role="3cqZAo" node="2caMK5mSYzM" resolve="myExpression" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2caMK5mTkoS" role="3cqZAp">
          <node concept="3K4zz7" id="4eofi1QsTDp" role="3cqZAk">
            <node concept="37vLTw" id="4eofi1QsUJg" role="3K4E3e">
              <ref role="3cqZAo" node="4eofi1QsBWe" resolve="expressionToSetFocusOn" />
            </node>
            <node concept="37vLTw" id="4eofi1QsV3k" role="3K4GZi">
              <ref role="3cqZAo" node="4eofi1QswQB" resolve="created" />
            </node>
            <node concept="3y3z36" id="4eofi1QsUmj" role="3K4Cdx">
              <node concept="37vLTw" id="4eofi1QsUmm" role="3uHU7B">
                <ref role="3cqZAo" node="4eofi1QsBWe" resolve="expressionToSetFocusOn" />
              </node>
              <node concept="10Nm6u" id="4eofi1QsUml" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2caMK5mSYzM" role="3clF46">
        <property role="TrG5h" value="myExpression" />
        <property role="3TUv4t" value="true" />
        <node concept="2AHcQZ" id="2caMK5mSYzN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3Tqbb2" id="2caMK5mSYzO" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="2caMK5mSYzP" role="3clF46">
        <property role="TrG5h" value="completingByRightParen" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="2caMK5mSYzQ" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="2caMK5mSYzR" role="3clF45">
        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
    </node>
    <node concept="2tJIrI" id="VufYxhyBN6" role="jymVt" />
    <node concept="2YIFZL" id="3rOAvstZnB_" role="jymVt">
      <property role="TrG5h" value="findWrappingParens" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3rOAvstZnBC" role="3clF47">
        <node concept="3cpWs8" id="3rOAvstZ$cS" role="3cqZAp">
          <node concept="3cpWsn" id="3rOAvstZ$cV" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="3rOAvstZ$cR" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="37vLTw" id="3rOAvstZ$lD" role="33vP2m">
              <ref role="3cqZAo" node="3rOAvstZom1" resolve="original" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="3rOAvstZ$qQ" role="3cqZAp">
          <node concept="3clFbS" id="3rOAvstZ$qS" role="2LFqv$">
            <node concept="3clFbF" id="3rOAvstZ_6q" role="3cqZAp">
              <node concept="37vLTI" id="3rOAvstZ_9f" role="3clFbG">
                <node concept="1PxgMI" id="3rOAvstZ_t$" role="37vLTx">
                  <node concept="chp4Y" id="3Sv$YXXsZMA" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                  </node>
                  <node concept="2OqwBi" id="3rOAvstZ_e9" role="1m5AlR">
                    <node concept="37vLTw" id="3rOAvstZ_b9" role="2Oq$k0">
                      <ref role="3cqZAo" node="3rOAvstZ$cV" resolve="current" />
                    </node>
                    <node concept="1mfA1w" id="3rOAvstZ_la" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="3rOAvstZ_6p" role="37vLTJ">
                  <ref role="3cqZAo" node="3rOAvstZ$cV" resolve="current" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3rOAvstZ__O" role="3cqZAp">
              <node concept="3clFbS" id="3rOAvstZ__R" role="3clFbx">
                <node concept="3cpWs6" id="2caMK5mTjpL" role="3cqZAp">
                  <node concept="37vLTw" id="2caMK5mTjvs" role="3cqZAk">
                    <ref role="3cqZAo" node="3rOAvstZ$cV" resolve="current" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3rOAvstZ_Ko" role="3clFbw">
                <node concept="37vLTw" id="3rOAvstZ_Fh" role="2Oq$k0">
                  <ref role="3cqZAo" node="3rOAvstZ$cV" resolve="current" />
                </node>
                <node concept="1mIQ4w" id="3rOAvstZ_Rp" role="2OqNvi">
                  <node concept="chp4Y" id="3rOAvstZ_RU" role="cj9EA">
                    <ref role="cht4Q" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3rOAvstZ$Ut" role="2$JKZa">
            <node concept="2OqwBi" id="3rOAvstZ$z_" role="2Oq$k0">
              <node concept="37vLTw" id="3rOAvstZ$uu" role="2Oq$k0">
                <ref role="3cqZAo" node="3rOAvstZ$cV" resolve="current" />
              </node>
              <node concept="1mfA1w" id="3rOAvstZ$EA" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="3rOAvstZ_0C" role="2OqNvi">
              <node concept="chp4Y" id="3Sv$YXXt1ht" role="cj9EA">
                <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3rOAvstZFYm" role="3cqZAp">
          <node concept="10Nm6u" id="2caMK5mTjBX" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3rOAvstZmQj" role="1B3o_S" />
      <node concept="3Tqbb2" id="3rOAvstZnBz" role="3clF45">
        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
      <node concept="37vLTG" id="3rOAvstZom1" role="3clF46">
        <property role="TrG5h" value="original" />
        <node concept="3Tqbb2" id="3rOAvstZom0" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="VufYxm6wVJ" role="jymVt" />
    <node concept="2YIFZL" id="VufYxhyE73" role="jymVt">
      <property role="TrG5h" value="setOrIncreaseParen" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="VufYxhyE76" role="3clF47">
        <node concept="3cpWs8" id="VufYxhyFbS" role="3cqZAp">
          <node concept="3cpWsn" id="VufYxhyFbT" role="3cpWs9">
            <property role="TrG5h" value="paren" />
            <node concept="3Tqbb2" id="VufYxhyFbP" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3Sv$YXXwsw$" resolve="IncompleteParen" />
            </node>
            <node concept="3K4zz7" id="VufYxhyFFS" role="33vP2m">
              <node concept="37vLTw" id="VufYxhyFtv" role="3K4Cdx">
                <ref role="3cqZAo" node="VufYxhyEVS" resolve="right" />
              </node>
              <node concept="2OqwBi" id="VufYxhyFbU" role="3K4E3e">
                <node concept="37vLTw" id="VufYxhyFbV" role="2Oq$k0">
                  <ref role="3cqZAo" node="VufYxhyEV$" resolve="node" />
                </node>
                <node concept="3CFZ6_" id="VufYxhyFbW" role="2OqNvi">
                  <node concept="3CFYIy" id="3Sv$YXXxac2" role="3CFYIz">
                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="VufYxhyFM6" role="3K4GZi">
                <node concept="37vLTw" id="VufYxhyFM7" role="2Oq$k0">
                  <ref role="3cqZAo" node="VufYxhyEV$" resolve="node" />
                </node>
                <node concept="3CFZ6_" id="VufYxhyFM8" role="2OqNvi">
                  <node concept="3CFYIy" id="3Sv$YXXxaFn" role="3CFYIz">
                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="VufYxhyGQx" role="3cqZAp">
          <node concept="3clFbS" id="VufYxhyGQ$" role="3clFbx">
            <node concept="3clFbF" id="VufYxhyHge" role="3cqZAp">
              <node concept="2OqwBi" id="VufYxhyHkV" role="3clFbG">
                <node concept="37vLTw" id="VufYxhyHgd" role="2Oq$k0">
                  <ref role="3cqZAo" node="VufYxhyFbT" resolve="paren" />
                </node>
                <node concept="2qgKlT" id="3Sv$YXXBx0d" role="2OqNvi">
                  <ref role="37wK5l" to="4fey:VufYxgmE1y" resolve="increaseCount" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="VufYxhyHah" role="3clFbw">
            <node concept="10Nm6u" id="VufYxhyHco" role="3uHU7w" />
            <node concept="37vLTw" id="VufYxhyH8T" role="3uHU7B">
              <ref role="3cqZAo" node="VufYxhyFbT" resolve="paren" />
            </node>
          </node>
          <node concept="9aQIb" id="VufYxhyHuh" role="9aQIa">
            <node concept="3clFbS" id="VufYxhyHui" role="9aQI4">
              <node concept="3clFbJ" id="VufYxhyHz6" role="3cqZAp">
                <node concept="3clFbS" id="VufYxhyHz7" role="3clFbx">
                  <node concept="3clFbF" id="VufYxhyHCB" role="3cqZAp">
                    <node concept="2OqwBi" id="VufYxhyHTN" role="3clFbG">
                      <node concept="2OqwBi" id="VufYxhyHDI" role="2Oq$k0">
                        <node concept="37vLTw" id="VufYxhyHCA" role="2Oq$k0">
                          <ref role="3cqZAo" node="VufYxhyEV$" resolve="node" />
                        </node>
                        <node concept="3CFZ6_" id="VufYxhyHKF" role="2OqNvi">
                          <node concept="3CFYIy" id="VufYxhyHOv" role="3CFYIz">
                            <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                          </node>
                        </node>
                      </node>
                      <node concept="2DeJnY" id="VufYxhyIkK" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="VufYxhyH_4" role="3clFbw">
                  <ref role="3cqZAo" node="VufYxhyEVS" resolve="right" />
                </node>
                <node concept="9aQIb" id="VufYxhyIok" role="9aQIa">
                  <node concept="3clFbS" id="VufYxhyIol" role="9aQI4">
                    <node concept="3clFbF" id="VufYxhyIoy" role="3cqZAp">
                      <node concept="2OqwBi" id="VufYxhyIoz" role="3clFbG">
                        <node concept="2OqwBi" id="VufYxhyIo$" role="2Oq$k0">
                          <node concept="37vLTw" id="VufYxhyIo_" role="2Oq$k0">
                            <ref role="3cqZAo" node="VufYxhyEV$" resolve="node" />
                          </node>
                          <node concept="3CFZ6_" id="VufYxhyIoA" role="2OqNvi">
                            <node concept="3CFYIy" id="VufYxhyIwC" role="3CFYIz">
                              <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                            </node>
                          </node>
                        </node>
                        <node concept="2DeJnY" id="VufYxhyIoC" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="VufYxhyDjo" role="1B3o_S" />
      <node concept="3cqZAl" id="VufYxhyE71" role="3clF45" />
      <node concept="37vLTG" id="VufYxhyEV$" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="VufYxhyEVz" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="VufYxhyEVS" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="10P_77" id="VufYxhyEW7" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="VufYxin$JO" role="jymVt" />
    <node concept="2YIFZL" id="VufYxinzA7" role="jymVt">
      <property role="TrG5h" value="setOrMergeParen" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="VufYxinzA8" role="3clF47">
        <node concept="3cpWs8" id="VufYxinzA9" role="3cqZAp">
          <node concept="3cpWsn" id="VufYxinzAa" role="3cpWs9">
            <property role="TrG5h" value="nodesParens" />
            <node concept="3Tqbb2" id="VufYxinzAb" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3Sv$YXXwsw$" resolve="IncompleteParen" />
            </node>
            <node concept="3K4zz7" id="VufYxinzAc" role="33vP2m">
              <node concept="37vLTw" id="VufYxinzAd" role="3K4Cdx">
                <ref role="3cqZAo" node="VufYxinzAS" resolve="right" />
              </node>
              <node concept="2OqwBi" id="VufYxinzAe" role="3K4E3e">
                <node concept="37vLTw" id="VufYxinzAf" role="2Oq$k0">
                  <ref role="3cqZAo" node="VufYxinzAQ" resolve="myNode" />
                </node>
                <node concept="3CFZ6_" id="VufYxinzAg" role="2OqNvi">
                  <node concept="3CFYIy" id="4y5wHNodiRM" role="3CFYIz">
                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="VufYxinzAi" role="3K4GZi">
                <node concept="37vLTw" id="VufYxinzAj" role="2Oq$k0">
                  <ref role="3cqZAo" node="VufYxinzAQ" resolve="myNode" />
                </node>
                <node concept="3CFZ6_" id="VufYxinzAk" role="2OqNvi">
                  <node concept="3CFYIy" id="4y5wHNodiXT" role="3CFYIz">
                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="VufYxinzAm" role="3cqZAp">
          <node concept="3clFbC" id="VufYxk_335" role="3clFbw">
            <node concept="37vLTw" id="VufYxinzAu" role="3uHU7B">
              <ref role="3cqZAo" node="VufYxinzAa" resolve="nodesParens" />
            </node>
            <node concept="10Nm6u" id="VufYxinzAt" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="VufYxinzAw" role="3clFbx">
            <node concept="3clFbJ" id="VufYxinzAx" role="3cqZAp">
              <node concept="3clFbS" id="VufYxinzAy" role="3clFbx">
                <node concept="3clFbF" id="VufYxk_4_e" role="3cqZAp">
                  <node concept="37vLTI" id="VufYxk_4EG" role="3clFbG">
                    <node concept="37vLTw" id="VufYxk_4_c" role="37vLTJ">
                      <ref role="3cqZAo" node="VufYxinzAa" resolve="nodesParens" />
                    </node>
                    <node concept="2OqwBi" id="VufYxinzA$" role="37vLTx">
                      <node concept="2OqwBi" id="VufYxinzA_" role="2Oq$k0">
                        <node concept="37vLTw" id="VufYxinzAA" role="2Oq$k0">
                          <ref role="3cqZAo" node="VufYxinzAQ" resolve="myNode" />
                        </node>
                        <node concept="3CFZ6_" id="VufYxinzAB" role="2OqNvi">
                          <node concept="3CFYIy" id="VufYxinzAC" role="3CFYIz">
                            <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                          </node>
                        </node>
                      </node>
                      <node concept="2DeJnY" id="VufYxk_2Yl" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="VufYxinzAE" role="3clFbw">
                <ref role="3cqZAo" node="VufYxinzAS" resolve="right" />
              </node>
              <node concept="9aQIb" id="VufYxinzAF" role="9aQIa">
                <node concept="3clFbS" id="VufYxinzAG" role="9aQI4">
                  <node concept="3clFbF" id="VufYxk_4UL" role="3cqZAp">
                    <node concept="37vLTI" id="VufYxk_50Z" role="3clFbG">
                      <node concept="37vLTw" id="VufYxk_4UJ" role="37vLTJ">
                        <ref role="3cqZAo" node="VufYxinzAa" resolve="nodesParens" />
                      </node>
                      <node concept="2OqwBi" id="VufYxinzAI" role="37vLTx">
                        <node concept="2OqwBi" id="VufYxinzAJ" role="2Oq$k0">
                          <node concept="37vLTw" id="VufYxinzAK" role="2Oq$k0">
                            <ref role="3cqZAo" node="VufYxinzAQ" resolve="myNode" />
                          </node>
                          <node concept="3CFZ6_" id="VufYxinzAL" role="2OqNvi">
                            <node concept="3CFYIy" id="VufYxinzAM" role="3CFYIz">
                              <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                            </node>
                          </node>
                        </node>
                        <node concept="2DeJnY" id="VufYxk_4cu" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="VufYxinB4K" role="3cqZAp">
          <node concept="3clFbS" id="VufYxinB4M" role="2LFqv$">
            <node concept="3clFbF" id="VufYxinBrU" role="3cqZAp">
              <node concept="2OqwBi" id="VufYxinBuI" role="3clFbG">
                <node concept="37vLTw" id="VufYxinBrT" role="2Oq$k0">
                  <ref role="3cqZAo" node="VufYxin_D$" resolve="parens" />
                </node>
                <node concept="2qgKlT" id="3Sv$YXXBEIc" role="2OqNvi">
                  <ref role="37wK5l" to="4fey:VufYxgmFtR" resolve="decreaseCount" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="VufYxinBET" role="3cqZAp">
              <node concept="2OqwBi" id="VufYxinBG2" role="3clFbG">
                <node concept="37vLTw" id="VufYxinBER" role="2Oq$k0">
                  <ref role="3cqZAo" node="VufYxinzAa" resolve="nodesParens" />
                </node>
                <node concept="2qgKlT" id="3Sv$YXXCGxj" role="2OqNvi">
                  <ref role="37wK5l" to="4fey:VufYxgmE1y" resolve="increaseCount" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="VufYxinBmX" role="2$JKZa">
            <node concept="2OqwBi" id="VufYxinBmZ" role="3fr31v">
              <node concept="37vLTw" id="VufYxinBn0" role="2Oq$k0">
                <ref role="3cqZAo" node="VufYxin_D$" resolve="parens" />
              </node>
              <node concept="2qgKlT" id="3Sv$YXXBBi9" role="2OqNvi">
                <ref role="37wK5l" to="4fey:VufYxgmHsD" resolve="isSingleParen" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="VufYxinzAO" role="1B3o_S" />
      <node concept="3cqZAl" id="VufYxinzAP" role="3clF45" />
      <node concept="37vLTG" id="VufYxinzAQ" role="3clF46">
        <property role="TrG5h" value="myNode" />
        <node concept="3Tqbb2" id="VufYxinzAR" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="VufYxinzAS" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="10P_77" id="VufYxinzAT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="VufYxin_D$" role="3clF46">
        <property role="TrG5h" value="parens" />
        <node concept="3Tqbb2" id="VufYxin_Gn" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Sv$YXXwsw$" resolve="IncompleteParen" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Sv$YXXwmPo" role="jymVt" />
    <node concept="2tJIrI" id="3Sv$YXXtCiC" role="jymVt" />
    <node concept="2YIFZL" id="21iL58c4rNj" role="jymVt">
      <property role="TrG5h" value="createUnmatchedParenthesis" />
      <node concept="P$JXv" id="6$YZliaTtmv" role="lGtFl">
        <node concept="TZ5HA" id="6$YZliaTtmw" role="TZ5H$">
          <node concept="1dT_AC" id="6$YZliaTtmx" role="1dT_Ay">
            <property role="1dT_AB" value="First search existing unmatched parens, whether they can be paired with the new one." />
          </node>
        </node>
        <node concept="TZ5HA" id="6$YZliaTunA" role="TZ5H$">
          <node concept="1dT_AC" id="6$YZliaTunB" role="1dT_Ay">
            <property role="1dT_AB" value="If found, pair them, if not, create an unmatched paren annotation." />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="21iL58c4ybe" role="1B3o_S" />
      <node concept="3clFbS" id="21iL58c4rNl" role="3clF47">
        <node concept="3clFbH" id="3rOAvstZPxK" role="3cqZAp" />
        <node concept="3clFbJ" id="VufYxgCCYQ" role="3cqZAp">
          <node concept="3clFbS" id="VufYxgCCYT" role="3clFbx">
            <node concept="3clFbF" id="VufYxgCFsw" role="3cqZAp">
              <node concept="2OqwBi" id="VufYxgCFM6" role="3clFbG">
                <node concept="2OqwBi" id="VufYxgCFyd" role="2Oq$k0">
                  <node concept="37vLTw" id="VufYxgCFsv" role="2Oq$k0">
                    <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
                  </node>
                  <node concept="3CFZ6_" id="VufYxgCFE4" role="2OqNvi">
                    <node concept="3CFYIy" id="VufYxgCFGF" role="3CFYIz">
                      <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                    </node>
                  </node>
                </node>
                <node concept="2qgKlT" id="3Sv$YXXCMEL" role="2OqNvi">
                  <ref role="37wK5l" to="4fey:VufYxgmE1y" resolve="increaseCount" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="VufYxgCG6F" role="3cqZAp">
              <node concept="37vLTw" id="VufYxgCGSD" role="3cqZAk">
                <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="VufYxgCEti" role="3clFbw">
            <node concept="3fqX7Q" id="VufYxgCELv" role="3uHU7B">
              <node concept="37vLTw" id="VufYxgCEQD" role="3fr31v">
                <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
              </node>
            </node>
            <node concept="3y3z36" id="VufYxgCFhB" role="3uHU7w">
              <node concept="10Nm6u" id="VufYxgCFl1" role="3uHU7w" />
              <node concept="2OqwBi" id="VufYxgCEXg" role="3uHU7B">
                <node concept="37vLTw" id="VufYxgCE2E" role="2Oq$k0">
                  <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
                </node>
                <node concept="3CFZ6_" id="VufYxgCF5d" role="2OqNvi">
                  <node concept="3CFYIy" id="VufYxgCFaV" role="3CFYIz">
                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="VufYxhhIvR" role="3cqZAp">
          <node concept="3clFbS" id="VufYxhhIvS" role="3clFbx">
            <node concept="3clFbF" id="VufYxhhIvT" role="3cqZAp">
              <node concept="2OqwBi" id="VufYxhhIvU" role="3clFbG">
                <node concept="2OqwBi" id="VufYxhhIvV" role="2Oq$k0">
                  <node concept="37vLTw" id="VufYxhhIvW" role="2Oq$k0">
                    <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
                  </node>
                  <node concept="3CFZ6_" id="VufYxhhIvX" role="2OqNvi">
                    <node concept="3CFYIy" id="VufYxhhKfR" role="3CFYIz">
                      <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                    </node>
                  </node>
                </node>
                <node concept="2qgKlT" id="3Sv$YXXCN6l" role="2OqNvi">
                  <ref role="37wK5l" to="4fey:VufYxgmE1y" resolve="increaseCount" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="VufYxhhIw0" role="3cqZAp">
              <node concept="37vLTw" id="VufYxhhIw1" role="3cqZAk">
                <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="VufYxhhIw2" role="3clFbw">
            <node concept="37vLTw" id="VufYxhhIw4" role="3uHU7B">
              <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
            </node>
            <node concept="3y3z36" id="VufYxhhIw5" role="3uHU7w">
              <node concept="10Nm6u" id="VufYxhhIw6" role="3uHU7w" />
              <node concept="2OqwBi" id="VufYxhhIw7" role="3uHU7B">
                <node concept="37vLTw" id="VufYxhhIw8" role="2Oq$k0">
                  <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
                </node>
                <node concept="3CFZ6_" id="VufYxhhIw9" role="2OqNvi">
                  <node concept="3CFYIy" id="VufYxhhK9N" role="3CFYIz">
                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="VufYxgCBst" role="3cqZAp" />
        <node concept="3cpWs8" id="21iL58c4XLl" role="3cqZAp">
          <node concept="3cpWsn" id="21iL58c4XLm" role="3cpWs9">
            <property role="TrG5h" value="myParentPath" />
            <node concept="2I9FWS" id="21iL58c4XLn" role="1tU5fm">
              <ref role="2I9WkF" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="1rXfSq" id="21iL58c4XLo" role="33vP2m">
              <ref role="37wK5l" node="6ixVQje8SlK" resolve="parentPath" />
              <node concept="37vLTw" id="21iL58c5gsU" role="37wK5m">
                <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
              </node>
              <node concept="37vLTw" id="2RUTuWCdHXx" role="37wK5m">
                <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="21iL58c4XLq" role="3cqZAp">
          <node concept="3cpWsn" id="21iL58c4XLr" role="3cpWs9">
            <property role="TrG5h" value="topExp" />
            <node concept="2OqwBi" id="5LmxeqJaxdI" role="33vP2m">
              <node concept="37vLTw" id="5LmxeqJauJC" role="2Oq$k0">
                <ref role="3cqZAo" node="21iL58c4XLm" resolve="myParentPath" />
              </node>
              <node concept="1zesIP" id="5LmxeqJaz5L" role="2OqNvi">
                <node concept="1bVj0M" id="5LmxeqJaz5N" role="23t8la">
                  <node concept="3clFbS" id="5LmxeqJaz5O" role="1bW5cS">
                    <node concept="3clFbF" id="5LmxeqJaza_" role="3cqZAp">
                      <node concept="2OqwBi" id="5LmxeqJazdL" role="3clFbG">
                        <node concept="37vLTw" id="5LmxeqJaza$" role="2Oq$k0">
                          <ref role="3cqZAo" node="5LmxeqJaz5P" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="5LmxeqJazqD" role="2OqNvi">
                          <node concept="chp4Y" id="5LmxeqJazuT" role="cj9EA">
                            <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5LmxeqJaz5P" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5LmxeqJaz5Q" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="21iL58c4XLs" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5LmxeqJgsKB" role="3cqZAp">
          <node concept="3clFbS" id="5LmxeqJgsKE" role="3clFbx">
            <node concept="3clFbF" id="5LmxeqJgvhb" role="3cqZAp">
              <node concept="37vLTI" id="5LmxeqJgvl7" role="3clFbG">
                <node concept="37vLTw" id="1Qt_H1CWepU" role="37vLTx">
                  <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
                </node>
                <node concept="37vLTw" id="1Qt_H1CWekB" role="37vLTJ">
                  <ref role="3cqZAo" node="21iL58c4XLr" resolve="topExp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5LmxeqJguOt" role="3clFbw">
            <node concept="37vLTw" id="1Qt_H1CWedI" role="3uHU7B">
              <ref role="3cqZAo" node="21iL58c4XLr" resolve="topExp" />
            </node>
            <node concept="10Nm6u" id="5LmxeqJgvd0" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="3VO0F5IX3Is" role="3cqZAp" />
        <node concept="3cpWs8" id="21iL58c4XLw" role="3cqZAp">
          <node concept="3cpWsn" id="21iL58c4XLx" role="3cpWs9">
            <property role="TrG5h" value="candidateParenthedNodes" />
            <node concept="1rXfSq" id="6im1NnK55rk" role="33vP2m">
              <ref role="37wK5l" node="6im1NnK53zd" resolve="descendInto" />
              <node concept="37vLTw" id="1Qt_H1CWevS" role="37wK5m">
                <ref role="3cqZAo" node="21iL58c4XLr" resolve="topExp" />
              </node>
              <node concept="37vLTw" id="6im1NnK56XF" role="37wK5m">
                <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
              </node>
            </node>
            <node concept="_YKpA" id="21iL58c4XLy" role="1tU5fm">
              <node concept="3Tqbb2" id="21iL58c4XLz" role="_ZDj9">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2dgajrkcgdI" role="3cqZAp" />
        <node concept="3cpWs8" id="21iL58c5ut0" role="3cqZAp">
          <node concept="3cpWsn" id="21iL58c5ut1" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="21iL58c5ut2" role="1tU5fm" />
            <node concept="3cpWsd" id="21iL58c5ut3" role="33vP2m">
              <node concept="3cmrfG" id="21iL58c5ut4" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="21iL58c5ut5" role="3uHU7B">
                <node concept="37vLTw" id="21iL58c5vDP" role="2Oq$k0">
                  <ref role="3cqZAo" node="21iL58c4XLx" resolve="candidateParenthedNodes" />
                </node>
                <node concept="34oBXx" id="21iL58c5ut7" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="21iL58c5ut8" role="3cqZAp">
          <node concept="3cpWsn" id="21iL58c5ut9" role="3cpWs9">
            <property role="TrG5h" value="candidateExpression" />
            <node concept="3Tqbb2" id="21iL58c5uta" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="10Nm6u" id="21iL58c5utb" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="21iL58c5utc" role="3cqZAp">
          <node concept="3cpWsn" id="21iL58c5utd" role="3cpWs9">
            <property role="TrG5h" value="candidateParentPath" />
            <node concept="2I9FWS" id="21iL58c5ute" role="1tU5fm">
              <ref role="2I9WkF" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="10Nm6u" id="21iL58c5utf" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="21iL58c5utg" role="3cqZAp">
          <node concept="3cpWsn" id="21iL58c5uth" role="3cpWs9">
            <property role="TrG5h" value="firstCommonAncestor" />
            <node concept="3Tqbb2" id="21iL58c5uti" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="10Nm6u" id="21iL58c5utj" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="21iL58c5utl" role="3cqZAp">
          <node concept="3clFbS" id="21iL58c5utm" role="2LFqv$">
            <node concept="3clFbF" id="21iL58c5utn" role="3cqZAp">
              <node concept="37vLTI" id="21iL58c5uto" role="3clFbG">
                <node concept="2OqwBi" id="21iL58c5utp" role="37vLTx">
                  <node concept="37vLTw" id="21iL58c5_by" role="2Oq$k0">
                    <ref role="3cqZAo" node="21iL58c4XLx" resolve="candidateParenthedNodes" />
                  </node>
                  <node concept="34jXtK" id="21iL58c5utr" role="2OqNvi">
                    <node concept="37vLTw" id="21iL58c5uts" role="25WWJ7">
                      <ref role="3cqZAo" node="21iL58c5ut1" resolve="index" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="21iL58c5utt" role="37vLTJ">
                  <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="21iL58c5utA" role="3cqZAp">
              <node concept="3clFbS" id="21iL58c5utB" role="3clFbx">
                <node concept="3cpWs8" id="21iL58c5utM" role="3cqZAp">
                  <node concept="3cpWsn" id="21iL58c5utN" role="3cpWs9">
                    <property role="TrG5h" value="parens" />
                    <node concept="3Tqbb2" id="21iL58c5utO" role="1tU5fm">
                      <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                    </node>
                    <node concept="2OqwBi" id="21iL58c5utP" role="33vP2m">
                      <node concept="37vLTw" id="21iL58c5utQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
                      </node>
                      <node concept="2DeJnW" id="21iL58c5utR" role="2OqNvi">
                        <ref role="1_rbq0" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="21iL58c5utS" role="3cqZAp">
                  <node concept="2OqwBi" id="21iL58c5utT" role="3clFbG">
                    <node concept="2OqwBi" id="21iL58c5utU" role="2Oq$k0">
                      <node concept="37vLTw" id="21iL58c5utV" role="2Oq$k0">
                        <ref role="3cqZAo" node="21iL58c5utN" resolve="parens" />
                      </node>
                      <node concept="3TrEf2" id="3Sv$YXXAGBR" role="2OqNvi">
                        <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
                      </node>
                    </node>
                    <node concept="2oxUTD" id="21iL58c5utX" role="2OqNvi">
                      <node concept="37vLTw" id="21iL58c5utY" role="2oxUTC">
                        <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="21iL58c5KuK" role="3cqZAp">
                  <node concept="2YIFZM" id="21iL58c5KuJ" role="3clFbG">
                    <ref role="37wK5l" node="21iL58c5KuF" resolve="clearIncompleteParens" />
                    <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                    <node concept="37vLTw" id="21iL58c5KuI" role="37wK5m">
                      <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
                    </node>
                    <node concept="37vLTw" id="21iL58c5Mpv" role="37wK5m">
                      <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
                    </node>
                    <node concept="37vLTw" id="VufYxjCiLa" role="37wK5m">
                      <ref role="3cqZAo" node="21iL58c5utN" resolve="parens" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="21iL58c5utZ" role="3cqZAp">
                  <node concept="37vLTw" id="21iL58c5uu0" role="3cqZAk">
                    <ref role="3cqZAo" node="21iL58c5utN" resolve="parens" />
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="21iL58c5uu1" role="3clFbw">
                <node concept="37vLTw" id="21iL58c5EPq" role="3uHU7w">
                  <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
                </node>
                <node concept="37vLTw" id="21iL58c5uu3" role="3uHU7B">
                  <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="21iL58c5utu" role="3cqZAp">
              <node concept="37vLTI" id="21iL58c5utv" role="3clFbG">
                <node concept="1rXfSq" id="21iL58c5utw" role="37vLTx">
                  <ref role="37wK5l" node="6ixVQje8SlK" resolve="parentPath" />
                  <node concept="37vLTw" id="21iL58c5utx" role="37wK5m">
                    <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
                  </node>
                  <node concept="3fqX7Q" id="2RUTuWCdITX" role="37wK5m">
                    <node concept="37vLTw" id="2RUTuWCdJmK" role="3fr31v">
                      <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="21iL58c5uty" role="37vLTJ">
                  <ref role="3cqZAo" node="21iL58c5utd" resolve="candidateParentPath" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="21iL58c5ut$" role="3cqZAp">
              <node concept="22lmx$" id="2RUTuWBPsmf" role="3clFbw">
                <node concept="2OqwBi" id="2RUTuWBPtod" role="3uHU7w">
                  <node concept="37vLTw" id="2RUTuWBPssi" role="2Oq$k0">
                    <ref role="3cqZAo" node="21iL58c5utd" resolve="candidateParentPath" />
                  </node>
                  <node concept="3JPx81" id="2RUTuWBPwm5" role="2OqNvi">
                    <node concept="2OqwBi" id="2RUTuWBPxfG" role="25WWJ7">
                      <node concept="37vLTw" id="2RUTuWBPwrn" role="2Oq$k0">
                        <ref role="3cqZAo" node="21iL58c4XLm" resolve="myParentPath" />
                      </node>
                      <node concept="1yVyf7" id="2RUTuWBP$8S" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2RUTuWBPicy" role="3uHU7B">
                  <node concept="37vLTw" id="2RUTuWBPhqJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="21iL58c4XLm" resolve="myParentPath" />
                  </node>
                  <node concept="3JPx81" id="2RUTuWBPnhu" role="2OqNvi">
                    <node concept="2OqwBi" id="2RUTuWBPo83" role="25WWJ7">
                      <node concept="37vLTw" id="2RUTuWBPnlk" role="2Oq$k0">
                        <ref role="3cqZAo" node="21iL58c5utd" resolve="candidateParentPath" />
                      </node>
                      <node concept="1yVyf7" id="2RUTuWBPsb9" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="21iL58c5ut_" role="3clFbx">
                <node concept="3clFbF" id="21iL58c5uu5" role="3cqZAp">
                  <node concept="37vLTI" id="21iL58c5uu6" role="3clFbG">
                    <node concept="2OqwBi" id="21iL58c5uu7" role="37vLTx">
                      <node concept="37vLTw" id="21iL58c5XKE" role="2Oq$k0">
                        <ref role="3cqZAo" node="21iL58c4XLm" resolve="myParentPath" />
                      </node>
                      <node concept="1z4cxt" id="21iL58c5uu9" role="2OqNvi">
                        <node concept="1bVj0M" id="21iL58c5uua" role="23t8la">
                          <node concept="3clFbS" id="21iL58c5uub" role="1bW5cS">
                            <node concept="3clFbF" id="21iL58c5uuc" role="3cqZAp">
                              <node concept="2OqwBi" id="21iL58c5uud" role="3clFbG">
                                <node concept="37vLTw" id="21iL58c5uue" role="2Oq$k0">
                                  <ref role="3cqZAo" node="21iL58c5utd" resolve="candidateParentPath" />
                                </node>
                                <node concept="3JPx81" id="21iL58c5uuf" role="2OqNvi">
                                  <node concept="37vLTw" id="21iL58c5uug" role="25WWJ7">
                                    <ref role="3cqZAo" node="21iL58c5uuh" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="21iL58c5uuh" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="21iL58c5uui" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="21iL58c5uuj" role="37vLTJ">
                      <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
                    </node>
                  </node>
                </node>
                <node concept="1gVbGN" id="21iL58c5uuk" role="3cqZAp">
                  <node concept="3y3z36" id="21iL58c5uul" role="1gVkn0">
                    <node concept="10Nm6u" id="21iL58c5uum" role="3uHU7w" />
                    <node concept="37vLTw" id="21iL58c5uun" role="3uHU7B">
                      <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5LmxeqIGlmo" role="3cqZAp">
                  <node concept="3clFbS" id="5LmxeqIGlmr" role="3clFbx">
                    <node concept="3N13vt" id="5LmxeqIGmds" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="5LmxeqIGmfk" role="3clFbw">
                    <node concept="2OqwBi" id="5LmxeqIGmfm" role="3fr31v">
                      <node concept="37vLTw" id="5LmxeqIGmfn" role="2Oq$k0">
                        <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
                      </node>
                      <node concept="1mIQ4w" id="5LmxeqIGmfo" role="2OqNvi">
                        <node concept="chp4Y" id="5LmxeqIGmfp" role="cj9EA">
                          <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5LmxeqIGmiP" role="3cqZAp" />
                <node concept="3cpWs8" id="27wQ$Cpl7Wr" role="3cqZAp">
                  <node concept="3cpWsn" id="27wQ$Cpl7Ws" role="3cpWs9">
                    <property role="TrG5h" value="leftSideExpression" />
                    <node concept="3Tqbb2" id="27wQ$Cpl7Wn" role="1tU5fm">
                      <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                    </node>
                    <node concept="2OqwBi" id="27wQ$Cpl7Wt" role="33vP2m">
                      <node concept="1PxgMI" id="1wHCnsnb9uQ" role="2Oq$k0">
                        <node concept="chp4Y" id="714IaVdH0Ui" role="3oSUPX">
                          <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                        </node>
                        <node concept="37vLTw" id="27wQ$Cpl7Wu" role="1m5AlR">
                          <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3Sv$YXXAC6Z" role="2OqNvi">
                        <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="27wQ$Cpl8mH" role="3cqZAp">
                  <node concept="3cpWsn" id="27wQ$Cpl8mI" role="3cpWs9">
                    <property role="TrG5h" value="rightSideExpression" />
                    <node concept="3Tqbb2" id="27wQ$Cpl8mE" role="1tU5fm">
                      <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                    </node>
                    <node concept="2OqwBi" id="27wQ$Cpl8mJ" role="33vP2m">
                      <node concept="1PxgMI" id="1wHCnsnbitn" role="2Oq$k0">
                        <node concept="chp4Y" id="714IaVdH0V$" role="3oSUPX">
                          <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                        </node>
                        <node concept="37vLTw" id="27wQ$Cpl8mK" role="1m5AlR">
                          <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3Sv$YXXAGc1" role="2OqNvi">
                        <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="27wQ$Cpl9aZ" role="3cqZAp">
                  <node concept="3cpWsn" id="27wQ$Cpl9b0" role="3cpWs9">
                    <property role="TrG5h" value="candidateAncestors" />
                    <node concept="2I9FWS" id="27wQ$Cpl9aX" role="1tU5fm">
                      <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    </node>
                    <node concept="2OqwBi" id="27wQ$Cpl9b1" role="33vP2m">
                      <node concept="37vLTw" id="27wQ$Cpl9b2" role="2Oq$k0">
                        <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
                      </node>
                      <node concept="z$bX8" id="27wQ$Cpl9b3" role="2OqNvi">
                        <node concept="1xIGOp" id="27wQ$Cpl9b4" role="1xVPHs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="27wQ$Cpl9rV" role="3cqZAp">
                  <node concept="3cpWsn" id="27wQ$Cpl9rW" role="3cpWs9">
                    <property role="TrG5h" value="myAncestors" />
                    <node concept="2I9FWS" id="27wQ$Cpl9rX" role="1tU5fm">
                      <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    </node>
                    <node concept="2OqwBi" id="27wQ$Cpl9rY" role="33vP2m">
                      <node concept="37vLTw" id="27wQ$Cpl9$Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
                      </node>
                      <node concept="z$bX8" id="27wQ$Cpl9s0" role="2OqNvi">
                        <node concept="1xIGOp" id="27wQ$Cpl9s1" role="1xVPHs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="27wQ$CplA8C" role="3cqZAp" />
                <node concept="3clFbJ" id="27wQ$Cpl8E0" role="3cqZAp">
                  <node concept="3clFbS" id="27wQ$Cpl8E3" role="3clFbx">
                    <node concept="3zACq4" id="27wQ$CpljCL" role="3cqZAp" />
                  </node>
                  <node concept="1Wc70l" id="27wQ$CpleRm" role="3clFbw">
                    <node concept="1eOMI4" id="27wQ$CplwId" role="3uHU7w">
                      <node concept="22lmx$" id="27wQ$CplwUU" role="1eOMHV">
                        <node concept="3clFbC" id="27wQ$CplxaO" role="3uHU7w">
                          <node concept="10Nm6u" id="27wQ$CplxgF" role="3uHU7w" />
                          <node concept="37vLTw" id="27wQ$Cplx2_" role="3uHU7B">
                            <ref role="3cqZAo" node="27wQ$Cpl8mI" resolve="rightSideExpression" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="27wQ$CplwIe" role="3uHU7B">
                          <node concept="37vLTw" id="27wQ$CplwIf" role="2Oq$k0">
                            <ref role="3cqZAo" node="27wQ$Cpl9rW" resolve="myAncestors" />
                          </node>
                          <node concept="3JPx81" id="27wQ$CplwIg" role="2OqNvi">
                            <node concept="37vLTw" id="27wQ$CplwIh" role="25WWJ7">
                              <ref role="3cqZAo" node="27wQ$Cpl8mI" resolve="rightSideExpression" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="27wQ$Cpl8XV" role="3uHU7B">
                      <node concept="37vLTw" id="27wQ$Cpl8KW" role="3uHU7B">
                        <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
                      </node>
                      <node concept="1eOMI4" id="27wQ$CplqcK" role="3uHU7w">
                        <node concept="22lmx$" id="27wQ$CplqoP" role="1eOMHV">
                          <node concept="3clFbC" id="27wQ$CplqAx" role="3uHU7w">
                            <node concept="10Nm6u" id="27wQ$CplqGA" role="3uHU7w" />
                            <node concept="37vLTw" id="27wQ$CplquU" role="3uHU7B">
                              <ref role="3cqZAo" node="27wQ$Cpl7Ws" resolve="leftSideExpression" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="27wQ$CplqcL" role="3uHU7B">
                            <node concept="37vLTw" id="27wQ$CplqcM" role="2Oq$k0">
                              <ref role="3cqZAo" node="27wQ$Cpl9b0" resolve="candidateAncestors" />
                            </node>
                            <node concept="3JPx81" id="27wQ$CplqcN" role="2OqNvi">
                              <node concept="37vLTw" id="27wQ$CplqcO" role="25WWJ7">
                                <ref role="3cqZAo" node="27wQ$Cpl7Ws" resolve="leftSideExpression" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="27wQ$CpljDJ" role="3cqZAp">
                  <node concept="3clFbS" id="27wQ$CpljDK" role="3clFbx">
                    <node concept="3zACq4" id="27wQ$CpljDL" role="3cqZAp" />
                  </node>
                  <node concept="1Wc70l" id="27wQ$CpljDM" role="3clFbw">
                    <node concept="1eOMI4" id="27wQ$Cplxrl" role="3uHU7w">
                      <node concept="22lmx$" id="27wQ$CplxB$" role="1eOMHV">
                        <node concept="2OqwBi" id="27wQ$Cplxrm" role="3uHU7B">
                          <node concept="37vLTw" id="27wQ$Cplxrn" role="2Oq$k0">
                            <ref role="3cqZAo" node="27wQ$Cpl9b0" resolve="candidateAncestors" />
                          </node>
                          <node concept="3JPx81" id="27wQ$Cplxro" role="2OqNvi">
                            <node concept="37vLTw" id="27wQ$Cplxrp" role="25WWJ7">
                              <ref role="3cqZAo" node="27wQ$Cpl8mI" resolve="rightSideExpression" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="27wQ$CplxBU" role="3uHU7w">
                          <node concept="10Nm6u" id="27wQ$CplxBV" role="3uHU7w" />
                          <node concept="37vLTw" id="27wQ$CplxBW" role="3uHU7B">
                            <ref role="3cqZAo" node="27wQ$Cpl8mI" resolve="rightSideExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="27wQ$CpljDR" role="3uHU7B">
                      <node concept="3fqX7Q" id="27wQ$CpljPi" role="3uHU7B">
                        <node concept="37vLTw" id="27wQ$CpljPk" role="3fr31v">
                          <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
                        </node>
                      </node>
                      <node concept="1eOMI4" id="27wQ$CplxMu" role="3uHU7w">
                        <node concept="22lmx$" id="27wQ$Cply1R" role="1eOMHV">
                          <node concept="3clFbC" id="27wQ$Cplyi7" role="3uHU7w">
                            <node concept="10Nm6u" id="27wQ$Cplyp2" role="3uHU7w" />
                            <node concept="37vLTw" id="27wQ$Cply9K" role="3uHU7B">
                              <ref role="3cqZAo" node="27wQ$Cpl7Ws" resolve="leftSideExpression" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="27wQ$CplxMv" role="3uHU7B">
                            <node concept="37vLTw" id="27wQ$CplxMw" role="2Oq$k0">
                              <ref role="3cqZAo" node="27wQ$Cpl9rW" resolve="myAncestors" />
                            </node>
                            <node concept="3JPx81" id="27wQ$CplxMx" role="2OqNvi">
                              <node concept="37vLTw" id="27wQ$CplxMy" role="25WWJ7">
                                <ref role="3cqZAo" node="27wQ$Cpl7Ws" resolve="leftSideExpression" />
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
            <node concept="3clFbF" id="21iL58c5uvE" role="3cqZAp">
              <node concept="3uO5VW" id="21iL58c5uvF" role="3clFbG">
                <node concept="37vLTw" id="21iL58c5uvG" role="2$L3a6">
                  <ref role="3cqZAo" node="21iL58c5ut1" resolve="index" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="21iL58c5uvH" role="2$JKZa">
            <node concept="37vLTw" id="21iL58c5uvI" role="3uHU7B">
              <ref role="3cqZAo" node="21iL58c5ut1" resolve="index" />
            </node>
            <node concept="3cmrfG" id="21iL58c5uvJ" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="21iL58c6bqz" role="3cqZAp">
          <node concept="3clFbS" id="21iL58c6bq$" role="3clFbx">
            <node concept="3clFbJ" id="21iL58c6k3q" role="3cqZAp">
              <node concept="3clFbS" id="21iL58c6k3t" role="3clFbx">
                <node concept="3clFbF" id="VufYxhyLCY" role="3cqZAp">
                  <node concept="1rXfSq" id="VufYxhyLCW" role="3clFbG">
                    <ref role="37wK5l" node="VufYxhyE73" resolve="setOrIncreaseParen" />
                    <node concept="37vLTw" id="VufYxhyLH$" role="37wK5m">
                      <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
                    </node>
                    <node concept="3clFbT" id="VufYxhyLPI" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="21iL58c6kF7" role="3clFbw">
                <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
              </node>
              <node concept="9aQIb" id="21iL58c6m6g" role="9aQIa">
                <node concept="3clFbS" id="21iL58c6m6h" role="9aQI4">
                  <node concept="3clFbF" id="VufYxhyLY7" role="3cqZAp">
                    <node concept="1rXfSq" id="VufYxhyLY8" role="3clFbG">
                      <ref role="37wK5l" node="VufYxhyE73" resolve="setOrIncreaseParen" />
                      <node concept="37vLTw" id="VufYxhyLY9" role="37wK5m">
                        <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
                      </node>
                      <node concept="3clFbT" id="VufYxhyLYa" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="21iL58c6bqL" role="3cqZAp">
              <node concept="37vLTw" id="21iL58c6m$a" role="3cqZAk">
                <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="21iL58c6bqO" role="3clFbw">
            <node concept="37vLTw" id="21iL58c6bqP" role="3uHU7B">
              <ref role="3cqZAo" node="21iL58c5ut1" resolve="index" />
            </node>
            <node concept="3cmrfG" id="21iL58c6bqQ" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="21iL58c6br1" role="3cqZAp" />
        <node concept="3clFbH" id="1wHCnsnbwbS" role="3cqZAp" />
        <node concept="3cpWs8" id="21iL58c6xq9" role="3cqZAp">
          <node concept="3cpWsn" id="21iL58c6xqc" role="3cpWs9">
            <property role="TrG5h" value="leftExpression" />
            <node concept="3Tqbb2" id="21iL58c6xq7" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="3K4zz7" id="21iL58c6yAU" role="33vP2m">
              <node concept="37vLTw" id="21iL58c6yDg" role="3K4Cdx">
                <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
              </node>
              <node concept="37vLTw" id="21iL58c6yG$" role="3K4E3e">
                <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
              </node>
              <node concept="37vLTw" id="21iL58c6yJ2" role="3K4GZi">
                <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="21iL58c6yLr" role="3cqZAp">
          <node concept="3cpWsn" id="21iL58c6yLs" role="3cpWs9">
            <property role="TrG5h" value="rightExpression" />
            <node concept="3Tqbb2" id="21iL58c6yLt" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="3K4zz7" id="21iL58c6yLu" role="33vP2m">
              <node concept="37vLTw" id="21iL58c6yLv" role="3K4Cdx">
                <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
              </node>
              <node concept="37vLTw" id="21iL58c6zVf" role="3K4E3e">
                <ref role="3cqZAo" node="21iL58c4rNy" resolve="myExpression" />
              </node>
              <node concept="37vLTw" id="21iL58c6zY3" role="3K4GZi">
                <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4kJwM8s1zK7" role="3cqZAp">
          <node concept="3cpWsn" id="4kJwM8s1zK8" role="3cpWs9">
            <property role="TrG5h" value="leftTurn" />
            <node concept="3Tqbb2" id="4kJwM8s1zK9" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
            </node>
            <node concept="2YIFZM" id="4kJwM8s1zLa" role="33vP2m">
              <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
              <ref role="37wK5l" node="6ixVQje$rgH" resolve="findLeftTurn" />
              <node concept="37vLTw" id="4kJwM8s1CWD" role="37wK5m">
                <ref role="3cqZAo" node="21iL58c6xqc" resolve="leftExpression" />
              </node>
              <node concept="37vLTw" id="4kJwM8s1D7w" role="37wK5m">
                <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4kJwM8s1zKd" role="3cqZAp">
          <node concept="3cpWsn" id="4kJwM8s1zKe" role="3cpWs9">
            <property role="TrG5h" value="rightTurn" />
            <node concept="3Tqbb2" id="4kJwM8s1zKf" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
            </node>
            <node concept="2YIFZM" id="4kJwM8s1zLb" role="33vP2m">
              <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
              <ref role="37wK5l" node="6ixVQje$UOO" resolve="findRightTurn" />
              <node concept="37vLTw" id="4kJwM8s1DeY" role="37wK5m">
                <ref role="3cqZAo" node="21iL58c6yLs" resolve="rightExpression" />
              </node>
              <node concept="37vLTw" id="4kJwM8s1Dq4" role="37wK5m">
                <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6QxdFpZE1cj" role="3cqZAp" />
        <node concept="3clFbJ" id="4kJwM8s1zKj" role="3cqZAp">
          <node concept="3clFbS" id="4kJwM8s1zKk" role="3clFbx">
            <node concept="3cpWs8" id="VufYxjDz_2" role="3cqZAp">
              <node concept="3cpWsn" id="VufYxjDz_3" role="3cpWs9">
                <property role="TrG5h" value="parens" />
                <node concept="3Tqbb2" id="VufYxjDz_1" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                </node>
                <node concept="2YIFZM" id="VufYxjDz_4" role="33vP2m">
                  <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                  <ref role="37wK5l" node="DGfYF56H0O" resolve="rebalance" />
                  <node concept="37vLTw" id="VufYxjDz_5" role="37wK5m">
                    <ref role="3cqZAo" node="4kJwM8s1zK8" resolve="leftTurn" />
                  </node>
                  <node concept="1PxgMI" id="VufYxjDz_6" role="37wK5m">
                    <node concept="chp4Y" id="714IaVdH1ac" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                    </node>
                    <node concept="37vLTw" id="VufYxjDz_7" role="1m5AlR">
                      <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="VufYxjDz_8" role="37wK5m">
                    <ref role="3cqZAo" node="4kJwM8s1zKe" resolve="rightTurn" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="21iL58c6oyj" role="3cqZAp">
              <node concept="1rXfSq" id="21iL58c6oyi" role="3clFbG">
                <ref role="37wK5l" node="21iL58c5KuF" resolve="clearIncompleteParens" />
                <node concept="37vLTw" id="21iL58c6p$C" role="37wK5m">
                  <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
                </node>
                <node concept="37vLTw" id="21iL58c6pDK" role="37wK5m">
                  <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
                </node>
                <node concept="37vLTw" id="VufYxjDELq" role="37wK5m">
                  <ref role="3cqZAo" node="VufYxjDz_3" resolve="parens" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4kJwM8s1JBh" role="3cqZAp">
              <node concept="37vLTw" id="VufYxjDz_9" role="3cqZAk">
                <ref role="3cqZAo" node="VufYxjDz_3" resolve="parens" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4kJwM8s1zKq" role="3clFbw">
            <node concept="3y3z36" id="4kJwM8s1zKr" role="3uHU7w">
              <node concept="10Nm6u" id="4kJwM8s1zKs" role="3uHU7w" />
              <node concept="37vLTw" id="4kJwM8s1zKt" role="3uHU7B">
                <ref role="3cqZAo" node="4kJwM8s1zKe" resolve="rightTurn" />
              </node>
            </node>
            <node concept="3y3z36" id="4kJwM8s1zKu" role="3uHU7B">
              <node concept="37vLTw" id="4kJwM8s1zKv" role="3uHU7B">
                <ref role="3cqZAo" node="4kJwM8s1zK8" resolve="leftTurn" />
              </node>
              <node concept="10Nm6u" id="4kJwM8s1zKw" role="3uHU7w" />
            </node>
          </node>
          <node concept="9aQIb" id="4kJwM8s1zKx" role="9aQIa">
            <node concept="3clFbS" id="4kJwM8s1zKy" role="9aQI4">
              <node concept="3cpWs8" id="4s6x806pjEQ" role="3cqZAp">
                <node concept="3cpWsn" id="4s6x806pjER" role="3cpWs9">
                  <property role="TrG5h" value="p" />
                  <node concept="3Tqbb2" id="4s6x806pjEC" role="1tU5fm">
                    <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                  </node>
                  <node concept="2ShNRf" id="4s6x806pjES" role="33vP2m">
                    <node concept="2fJWfE" id="4s6x806pjET" role="2ShVmc">
                      <node concept="3Tqbb2" id="4s6x806pjEU" role="3zrR0E">
                        <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4kJwM8s1zKz" role="3cqZAp">
                <node concept="3cpWsn" id="4kJwM8s1zK$" role="3cpWs9">
                  <property role="TrG5h" value="parens" />
                  <node concept="3Tqbb2" id="4kJwM8s1zK_" role="1tU5fm">
                    <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                  </node>
                  <node concept="2OqwBi" id="4kJwM8s1zKA" role="33vP2m">
                    <node concept="1P9Npp" id="4s6x806s0f9" role="2OqNvi">
                      <node concept="37vLTw" id="4s6x806s1GC" role="1P9ThW">
                        <ref role="3cqZAo" node="4s6x806pjER" resolve="p" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4kJwM8s1zKU" role="2Oq$k0">
                      <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4s6x806xkTJ" role="3cqZAp">
                <node concept="37vLTI" id="4s6x806xnDT" role="3clFbG">
                  <node concept="2OqwBi" id="4s6x806xma8" role="37vLTJ">
                    <node concept="37vLTw" id="4s6x806xkTH" role="2Oq$k0">
                      <ref role="3cqZAo" node="4s6x806pjER" resolve="p" />
                    </node>
                    <node concept="3TrEf2" id="3Sv$YXXzsKC" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4s6x806xoaj" role="37vLTx">
                    <ref role="3cqZAo" node="21iL58c5uth" resolve="firstCommonAncestor" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="VufYxjDttP" role="3cqZAp">
                <node concept="1rXfSq" id="VufYxjDttQ" role="3clFbG">
                  <ref role="37wK5l" node="21iL58c5KuF" resolve="clearIncompleteParens" />
                  <node concept="37vLTw" id="VufYxjDttR" role="37wK5m">
                    <ref role="3cqZAo" node="21iL58c5ut9" resolve="candidateExpression" />
                  </node>
                  <node concept="37vLTw" id="VufYxjDttS" role="37wK5m">
                    <ref role="3cqZAo" node="21iL58c5gxT" resolve="completingByRightParen" />
                  </node>
                  <node concept="37vLTw" id="4s6x806uLC9" role="37wK5m">
                    <ref role="3cqZAo" node="4s6x806pjER" resolve="p" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4kJwM8s1L$5" role="3cqZAp">
                <node concept="37vLTw" id="4kJwM8s1MD4" role="3cqZAk">
                  <ref role="3cqZAo" node="4kJwM8s1zK$" resolve="parens" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="21iL58c4rNy" role="3clF46">
        <property role="TrG5h" value="myExpression" />
        <node concept="2AHcQZ" id="21iL58c4rNz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3Tqbb2" id="21iL58c4rN$" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="21iL58c5gxT" role="3clF46">
        <property role="TrG5h" value="completingByRightParen" />
        <node concept="10P_77" id="21iL58c5gBM" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="21iL58c4rN_" role="3clF45">
        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RUTuWCZZa$" role="jymVt" />
    <node concept="2YIFZL" id="6im1NnK53zd" role="jymVt">
      <property role="TrG5h" value="descendInto" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="6im1NnK4fob" role="3clF47">
        <node concept="3cpWs8" id="P9GQP4yZvE" role="3cqZAp">
          <node concept="3cpWsn" id="P9GQP4yZvF" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="_YKpA" id="P9GQP4yZvG" role="1tU5fm">
              <node concept="3Tqbb2" id="P9GQP4yZvH" role="_ZDj9">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
            </node>
            <node concept="2ShNRf" id="P9GQP4yZvI" role="33vP2m">
              <node concept="Tc6Ow" id="P9GQP4yZvJ" role="2ShVmc">
                <node concept="3Tqbb2" id="P9GQP4yZvK" role="HW$YZ">
                  <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                </node>
                <node concept="10Nm6u" id="6sT4pfWeCFo" role="HW$Y0" />
                <node concept="37vLTw" id="P9GQP4z3z0" role="HW$Y0">
                  <ref role="3cqZAo" node="6im1NnK4gtP" resolve="expr" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4eofi1R9CME" role="3cqZAp">
          <node concept="3cpWsn" id="4eofi1R9CMF" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="4eofi1R9CMG" role="1tU5fm">
              <node concept="3Tqbb2" id="4eofi1R9CMH" role="_ZDj9">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
            </node>
            <node concept="2ShNRf" id="4eofi1R9CMI" role="33vP2m">
              <node concept="Tc6Ow" id="4eofi1R9CMJ" role="2ShVmc">
                <node concept="3Tqbb2" id="4eofi1R9CMK" role="HW$YZ">
                  <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1S7XYuXOZEN" role="3cqZAp" />
        <node concept="3cpWs8" id="P9GQP4yJgU" role="3cqZAp">
          <node concept="3cpWsn" id="P9GQP4yJgX" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="P9GQP4yJgS" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="37vLTw" id="P9GQP4yJEU" role="33vP2m">
              <ref role="3cqZAo" node="6im1NnK4gtP" resolve="expr" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="P9GQP4yKvW" role="3cqZAp">
          <node concept="3clFbS" id="P9GQP4yKvY" role="2LFqv$">
            <node concept="3clFbJ" id="P9GQP4yOZT" role="3cqZAp">
              <node concept="3clFbS" id="P9GQP4yOZU" role="3clFbx">
                <node concept="3clFbJ" id="P9GQP4zlEH" role="3cqZAp">
                  <node concept="3clFbS" id="P9GQP4zlEK" role="3clFbx">
                    <node concept="3cpWs8" id="P9GQP4yOZV" role="3cqZAp">
                      <node concept="3cpWsn" id="P9GQP4yOZW" role="3cpWs9">
                        <property role="TrG5h" value="left" />
                        <node concept="3Tqbb2" id="P9GQP4yOZX" role="1tU5fm">
                          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                        </node>
                        <node concept="2OqwBi" id="P9GQP4yOZY" role="33vP2m">
                          <node concept="1PxgMI" id="P9GQP4yOZZ" role="2Oq$k0">
                            <node concept="chp4Y" id="714IaVdH10V" role="3oSUPX">
                              <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                            </node>
                            <node concept="37vLTw" id="P9GQP4yP00" role="1m5AlR">
                              <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="3Sv$YXXzwMD" role="2OqNvi">
                            <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="P9GQP4XaOU" role="3cqZAp">
                      <node concept="3clFbS" id="P9GQP4XaOX" role="3clFbx">
                        <node concept="3clFbF" id="P9GQP4zaWX" role="3cqZAp">
                          <node concept="2OqwBi" id="P9GQP4zbKr" role="3clFbG">
                            <node concept="37vLTw" id="P9GQP4zaWV" role="2Oq$k0">
                              <ref role="3cqZAo" node="P9GQP4yZvF" resolve="path" />
                            </node>
                            <node concept="TSZUe" id="P9GQP4ze_3" role="2OqNvi">
                              <node concept="37vLTw" id="P9GQP4zeD4" role="25WWJ7">
                                <ref role="3cqZAo" node="P9GQP4yOZW" resolve="left" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="P9GQP4zf0y" role="3cqZAp">
                          <node concept="37vLTI" id="P9GQP4zfjr" role="3clFbG">
                            <node concept="37vLTw" id="P9GQP4zflG" role="37vLTx">
                              <ref role="3cqZAo" node="P9GQP4yOZW" resolve="left" />
                            </node>
                            <node concept="37vLTw" id="P9GQP4zf0w" role="37vLTJ">
                              <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="P9GQP4Xb0P" role="3clFbw">
                        <node concept="10Nm6u" id="P9GQP4Xb3b" role="3uHU7w" />
                        <node concept="37vLTw" id="P9GQP4XaU8" role="3uHU7B">
                          <ref role="3cqZAo" node="P9GQP4yOZW" resolve="left" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="P9GQP4Xi7Q" role="9aQIa">
                        <node concept="3clFbS" id="P9GQP4Xi7R" role="9aQI4">
                          <node concept="3clFbF" id="P9GQP4XiaH" role="3cqZAp">
                            <node concept="37vLTI" id="P9GQP4XiaI" role="3clFbG">
                              <node concept="37vLTw" id="P9GQP4XiaJ" role="37vLTJ">
                                <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                              </node>
                              <node concept="2OqwBi" id="P9GQP4XiaK" role="37vLTx">
                                <node concept="37vLTw" id="P9GQP4XiaL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="P9GQP4yZvF" resolve="path" />
                                </node>
                                <node concept="2Kt5_m" id="P9GQP4XiaM" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="P9GQP4zr4$" role="3clFbw">
                    <node concept="37vLTw" id="P9GQP4zrbG" role="3uHU7w">
                      <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                    </node>
                    <node concept="2OqwBi" id="P9GQP4zmKz" role="3uHU7B">
                      <node concept="37vLTw" id="P9GQP4zlXe" role="2Oq$k0">
                        <ref role="3cqZAo" node="P9GQP4yZvF" resolve="path" />
                      </node>
                      <node concept="1yVyf7" id="P9GQP4zpBV" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="P9GQP4zrz5" role="9aQIa">
                    <node concept="3clFbS" id="P9GQP4zrz6" role="9aQI4">
                      <node concept="3clFbF" id="P9GQP4zrKc" role="3cqZAp">
                        <node concept="2OqwBi" id="P9GQP4zsht" role="3clFbG">
                          <node concept="37vLTw" id="P9GQP4zrKb" role="2Oq$k0">
                            <ref role="3cqZAo" node="4eofi1R9CMF" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="P9GQP4zvbe" role="2OqNvi">
                            <node concept="37vLTw" id="P9GQP4zviO" role="25WWJ7">
                              <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="P9GQP4yP02" role="3cqZAp">
                        <node concept="3cpWsn" id="P9GQP4yP03" role="3cpWs9">
                          <property role="TrG5h" value="right" />
                          <node concept="3Tqbb2" id="P9GQP4yP04" role="1tU5fm">
                            <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                          </node>
                          <node concept="2OqwBi" id="P9GQP4yP05" role="33vP2m">
                            <node concept="1PxgMI" id="P9GQP4yP06" role="2Oq$k0">
                              <node concept="chp4Y" id="714IaVdH17P" role="3oSUPX">
                                <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                              </node>
                              <node concept="37vLTw" id="P9GQP4yP07" role="1m5AlR">
                                <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3Sv$YXXz$RI" role="2OqNvi">
                              <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="P9GQP4XbCZ" role="3cqZAp">
                        <node concept="3clFbS" id="P9GQP4XbD2" role="3clFbx">
                          <node concept="3clFbF" id="P9GQP4zvO5" role="3cqZAp">
                            <node concept="2OqwBi" id="P9GQP4zw_g" role="3clFbG">
                              <node concept="37vLTw" id="P9GQP4zvO3" role="2Oq$k0">
                                <ref role="3cqZAo" node="P9GQP4yZvF" resolve="path" />
                              </node>
                              <node concept="TSZUe" id="P9GQP4zzqG" role="2OqNvi">
                                <node concept="37vLTw" id="P9GQP4zzuH" role="25WWJ7">
                                  <ref role="3cqZAo" node="P9GQP4yP03" resolve="right" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="P9GQP4zzK0" role="3cqZAp">
                            <node concept="37vLTI" id="P9GQP4zzX4" role="3clFbG">
                              <node concept="37vLTw" id="P9GQP4zzZJ" role="37vLTx">
                                <ref role="3cqZAo" node="P9GQP4yP03" resolve="right" />
                              </node>
                              <node concept="37vLTw" id="P9GQP4zzJY" role="37vLTJ">
                                <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="P9GQP4XbQF" role="3clFbw">
                          <node concept="10Nm6u" id="P9GQP4XbT1" role="3uHU7w" />
                          <node concept="37vLTw" id="P9GQP4XbLi" role="3uHU7B">
                            <ref role="3cqZAo" node="P9GQP4yP03" resolve="right" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="P9GQP4XoeP" role="9aQIa">
                          <node concept="3clFbS" id="P9GQP4XoeQ" role="9aQI4">
                            <node concept="3clFbF" id="P9GQP4XohS" role="3cqZAp">
                              <node concept="37vLTI" id="P9GQP4XohT" role="3clFbG">
                                <node concept="37vLTw" id="P9GQP4XohU" role="37vLTJ">
                                  <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                                </node>
                                <node concept="2OqwBi" id="P9GQP4XohV" role="37vLTx">
                                  <node concept="37vLTw" id="P9GQP4XohW" role="2Oq$k0">
                                    <ref role="3cqZAo" node="P9GQP4yZvF" resolve="path" />
                                  </node>
                                  <node concept="2Kt5_m" id="P9GQP4XohX" role="2OqNvi" />
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
              <node concept="2OqwBi" id="P9GQP4yP0S" role="3clFbw">
                <node concept="37vLTw" id="P9GQP4yP0T" role="2Oq$k0">
                  <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                </node>
                <node concept="1mIQ4w" id="P9GQP4yP0U" role="2OqNvi">
                  <node concept="chp4Y" id="P9GQP4yP0V" role="cj9EA">
                    <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="P9GQP4yP0W" role="9aQIa">
                <node concept="3clFbS" id="P9GQP4yP0X" role="9aQI4">
                  <node concept="3clFbF" id="P9GQP4yP0Y" role="3cqZAp">
                    <node concept="2OqwBi" id="P9GQP4yP0Z" role="3clFbG">
                      <node concept="37vLTw" id="P9GQP4yP10" role="2Oq$k0">
                        <ref role="3cqZAo" node="4eofi1R9CMF" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="P9GQP4yP11" role="2OqNvi">
                        <node concept="37vLTw" id="P9GQP4yP12" role="25WWJ7">
                          <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="P9GQP4zPU2" role="3cqZAp">
                    <node concept="3clFbS" id="P9GQP4zPU5" role="3clFbx">
                      <node concept="3clFbF" id="P9GQP4zQ0Y" role="3cqZAp">
                        <node concept="2OqwBi" id="P9GQP4zQwp" role="3clFbG">
                          <node concept="37vLTw" id="P9GQP4zQ0X" role="2Oq$k0">
                            <ref role="3cqZAo" node="P9GQP4yZvF" resolve="path" />
                          </node>
                          <node concept="2Kt5_m" id="P9GQP4zTlG" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="17R0WA" id="P9GQP4zPVt" role="3clFbw">
                      <node concept="37vLTw" id="P9GQP4zPVu" role="3uHU7w">
                        <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                      </node>
                      <node concept="2OqwBi" id="P9GQP4zPVv" role="3uHU7B">
                        <node concept="37vLTw" id="P9GQP4zPVw" role="2Oq$k0">
                          <ref role="3cqZAo" node="P9GQP4yZvF" resolve="path" />
                        </node>
                        <node concept="1yVyf7" id="P9GQP4zPVx" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="P9GQP4zJEx" role="3cqZAp">
                    <node concept="37vLTI" id="P9GQP4zJL4" role="3clFbG">
                      <node concept="37vLTw" id="P9GQP4zJEv" role="37vLTJ">
                        <ref role="3cqZAo" node="P9GQP4yJgX" resolve="current" />
                      </node>
                      <node concept="2OqwBi" id="P9GQP4zHZ3" role="37vLTx">
                        <node concept="37vLTw" id="P9GQP4zHsn" role="2Oq$k0">
                          <ref role="3cqZAo" node="P9GQP4yZvF" resolve="path" />
                        </node>
                        <node concept="2Kt5_m" id="P9GQP4zJsA" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="P9GQP4z1AJ" role="2$JKZa">
            <node concept="37vLTw" id="P9GQP4z0y7" role="2Oq$k0">
              <ref role="3cqZAo" node="P9GQP4yZvF" resolve="path" />
            </node>
            <node concept="3GX2aA" id="P9GQP4z3oW" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="P9GQP4$7Bs" role="3cqZAp">
          <node concept="3clFbS" id="P9GQP4$7Bv" role="3clFbx">
            <node concept="3clFbF" id="P9GQP4$89B" role="3cqZAp">
              <node concept="37vLTI" id="P9GQP4$8EM" role="3clFbG">
                <node concept="2OqwBi" id="P9GQP4$9HA" role="37vLTx">
                  <node concept="37vLTw" id="P9GQP4$8TW" role="2Oq$k0">
                    <ref role="3cqZAo" node="4eofi1R9CMF" resolve="result" />
                  </node>
                  <node concept="35Qw8J" id="P9GQP4$bcT" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="P9GQP4$89A" role="37vLTJ">
                  <ref role="3cqZAo" node="4eofi1R9CMF" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="P9GQP4$7RZ" role="3clFbw">
            <node concept="37vLTw" id="P9GQP4$83L" role="3fr31v">
              <ref role="3cqZAo" node="6im1NnK4QJp" resolve="completingByRightParen" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6im1NnKnrpL" role="3cqZAp" />
        <node concept="3clFbF" id="P9GQP4$c1u" role="3cqZAp">
          <node concept="37vLTI" id="P9GQP4$d9L" role="3clFbG">
            <node concept="37vLTw" id="P9GQP4$c1s" role="37vLTJ">
              <ref role="3cqZAo" node="4eofi1R9CMF" resolve="result" />
            </node>
            <node concept="2OqwBi" id="P9GQP4$f5J" role="37vLTx">
              <node concept="2OqwBi" id="4eofi1R9UHk" role="2Oq$k0">
                <node concept="37vLTw" id="P9GQP4$gPo" role="2Oq$k0">
                  <ref role="3cqZAo" node="4eofi1R9CMF" resolve="result" />
                </node>
                <node concept="3zZkjj" id="4eofi1R9UHm" role="2OqNvi">
                  <node concept="1bVj0M" id="4eofi1R9UHn" role="23t8la">
                    <node concept="3clFbS" id="4eofi1R9UHo" role="1bW5cS">
                      <node concept="3clFbF" id="4eofi1R9UHp" role="3cqZAp">
                        <node concept="22lmx$" id="4eofi1R9UHq" role="3clFbG">
                          <node concept="1Wc70l" id="4eofi1R9UHr" role="3uHU7B">
                            <node concept="37vLTw" id="4eofi1R9UHs" role="3uHU7B">
                              <ref role="3cqZAo" node="6im1NnK4QJp" resolve="completingByRightParen" />
                            </node>
                            <node concept="2OqwBi" id="4eofi1R9UHt" role="3uHU7w">
                              <node concept="2OqwBi" id="4eofi1R9UHu" role="2Oq$k0">
                                <node concept="37vLTw" id="4eofi1R9UHv" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4eofi1R9UHG" resolve="it" />
                                </node>
                                <node concept="3CFZ6_" id="4eofi1R9UHw" role="2OqNvi">
                                  <node concept="3CFYIy" id="4eofi1R9UHx" role="3CFYIz">
                                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3x8VRR" id="4eofi1R9UHy" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="1Wc70l" id="4eofi1R9UHz" role="3uHU7w">
                            <node concept="3fqX7Q" id="4eofi1R9UH$" role="3uHU7B">
                              <node concept="37vLTw" id="4eofi1R9UH_" role="3fr31v">
                                <ref role="3cqZAo" node="6im1NnK4QJp" resolve="completingByRightParen" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4eofi1R9UHA" role="3uHU7w">
                              <node concept="2OqwBi" id="4eofi1R9UHB" role="2Oq$k0">
                                <node concept="37vLTw" id="4eofi1R9UHC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4eofi1R9UHG" resolve="it" />
                                </node>
                                <node concept="3CFZ6_" id="4eofi1R9UHD" role="2OqNvi">
                                  <node concept="3CFYIy" id="4eofi1R9UHE" role="3CFYIz">
                                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3x8VRR" id="4eofi1R9UHF" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4eofi1R9UHG" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4eofi1R9UHH" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="P9GQP4$f_M" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4eofi1R9Syn" role="3cqZAp" />
        <node concept="3clFbF" id="P9GQP4$efC" role="3cqZAp">
          <node concept="37vLTw" id="P9GQP4$efA" role="3clFbG">
            <ref role="3cqZAo" node="4eofi1R9CMF" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6im1NnK4gtP" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="6im1NnK4gtO" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="6im1NnK4QJp" role="3clF46">
        <property role="TrG5h" value="completingByRightParen" />
        <node concept="10P_77" id="6im1NnK4QJq" role="1tU5fm" />
      </node>
      <node concept="_YKpA" id="6im1NnK4fnZ" role="3clF45">
        <node concept="3Tqbb2" id="6im1NnK4fo5" role="_ZDj9">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6im1NnK4e7d" role="1B3o_S" />
      <node concept="P$JXv" id="6im1NnKp7to" role="lGtFl">
        <node concept="TZ5HA" id="6im1NnKp7tp" role="TZ5H$">
          <node concept="1dT_AC" id="6im1NnKp7tq" role="1dT_Ay">
            <property role="1dT_AB" value="Returns an orderred list of nodes with incomplete left/right paren" />
          </node>
        </node>
        <node concept="TZ5HA" id="6im1NnKp8g1" role="TZ5H$">
          <node concept="1dT_AC" id="6im1NnKp8g2" role="1dT_Ay">
            <property role="1dT_AB" value="The nodes are orderred by their occurence on the expression in left-to-right order" />
          </node>
        </node>
        <node concept="TZ5HA" id="6im1NnKpajg" role="TZ5H$">
          <node concept="1dT_AC" id="6im1NnKpajh" role="1dT_Ay">
            <property role="1dT_AB" value="The current node is added at the front of the list," />
          </node>
        </node>
        <node concept="TZ5HA" id="6im1NnKpajo" role="TZ5H$">
          <node concept="1dT_AC" id="6im1NnKpajp" role="1dT_Ay">
            <property role="1dT_AB" value="so that it is always the most distant node among the returned candidates" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="VufYxm6ndi" role="jymVt" />
    <node concept="2YIFZL" id="DGfYF56H0O" role="jymVt">
      <property role="TrG5h" value="rebalance" />
      <node concept="P$JXv" id="2RUTuWD0lml" role="lGtFl">
        <node concept="TZ5HA" id="2RUTuWD0lmm" role="TZ5H$">
          <node concept="1dT_AC" id="2RUTuWD0lmn" role="1dT_Ay">
            <property role="1dT_AB" value="Create a ParenthesisedExpression and hook it properly into the model" />
          </node>
        </node>
        <node concept="TUZQ0" id="2RUTuWD0s0$" role="3nqlJM">
          <property role="TUZQ4" value="The expression that should be put outside and to the left from the new parens" />
          <node concept="zr_55" id="2RUTuWD0u9i" role="zr_5Q">
            <ref role="zr_51" node="DGfYF56H0g" resolve="leftTurn" />
          </node>
        </node>
        <node concept="TUZQ0" id="2RUTuWD0zP8" role="3nqlJM">
          <property role="TUZQ4" value="The expression that should be put outside and to the right from the new parens" />
          <node concept="zr_55" id="2RUTuWD0zQ0" role="zr_5Q">
            <ref role="zr_51" node="DGfYF56H0k" resolve="rightTurn" />
          </node>
        </node>
        <node concept="TUZQ0" id="2RUTuWD0zQO" role="3nqlJM">
          <property role="TUZQ4" value="The common ancestor expression of both parentheses" />
          <node concept="zr_55" id="2RUTuWD0zRI" role="zr_5Q">
            <ref role="zr_51" node="DGfYF56H0i" resolve="firstCommonAncestor" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="DGfYF56H0P" role="1B3o_S" />
      <node concept="3Tqbb2" id="DGfYF56H0Q" role="3clF45">
        <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
      </node>
      <node concept="37vLTG" id="DGfYF56H0g" role="3clF46">
        <property role="TrG5h" value="leftTurn" />
        <node concept="3Tqbb2" id="DGfYF56H0h" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="DGfYF56H0i" role="3clF46">
        <property role="TrG5h" value="firstCommonAncestor" />
        <node concept="3Tqbb2" id="DGfYF56H0j" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="DGfYF56H0k" role="3clF46">
        <property role="TrG5h" value="rightTurn" />
        <node concept="3Tqbb2" id="DGfYF56H0l" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="DGfYF56GVQ" role="3clF47">
        <node concept="3clFbH" id="2RUTuWD0Wpe" role="3cqZAp" />
        <node concept="3cpWs8" id="DGfYF56GVR" role="3cqZAp">
          <node concept="3cpWsn" id="DGfYF56GVS" role="3cpWs9">
            <property role="TrG5h" value="leftAccumulator" />
            <node concept="1rXfSq" id="4kJwM8sUgCN" role="33vP2m">
              <ref role="37wK5l" node="4kJwM8sU1Pu" resolve="buildAccumulator" />
              <node concept="37vLTw" id="4kJwM8sUi13" role="37wK5m">
                <ref role="3cqZAo" node="DGfYF56H0i" resolve="firstCommonAncestor" />
              </node>
              <node concept="37vLTw" id="4kJwM8sUi_P" role="37wK5m">
                <ref role="3cqZAo" node="DGfYF56H0g" resolve="leftTurn" />
              </node>
              <node concept="3clFbT" id="4kJwM8sUnQ8" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
            <node concept="3Tqbb2" id="DGfYF56GVT" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="DGfYF56GVU" role="3cqZAp">
          <node concept="3cpWsn" id="DGfYF56GVV" role="3cpWs9">
            <property role="TrG5h" value="rightAccumulator" />
            <node concept="1rXfSq" id="4kJwM8sUwJt" role="33vP2m">
              <ref role="37wK5l" node="4kJwM8sU1Pu" resolve="buildAccumulator" />
              <node concept="37vLTw" id="4kJwM8sUwJu" role="37wK5m">
                <ref role="3cqZAo" node="DGfYF56H0i" resolve="firstCommonAncestor" />
              </node>
              <node concept="37vLTw" id="4kJwM8sUxsD" role="37wK5m">
                <ref role="3cqZAo" node="DGfYF56H0k" resolve="rightTurn" />
              </node>
              <node concept="3clFbT" id="4kJwM8sUwJA" role="37wK5m" />
            </node>
            <node concept="3Tqbb2" id="DGfYF56GVW" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IWAasSVNKB" role="3cqZAp" />
        <node concept="3cpWs8" id="DGfYF56GYH" role="3cqZAp">
          <node concept="3cpWsn" id="DGfYF56GYI" role="3cpWs9">
            <property role="TrG5h" value="parens" />
            <node concept="3Tqbb2" id="DGfYF56GYJ" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
            </node>
            <node concept="2ShNRf" id="DGfYF56GYK" role="33vP2m">
              <node concept="2fJWfE" id="DGfYF56GYL" role="2ShVmc">
                <node concept="3Tqbb2" id="DGfYF56GYM" role="3zrR0E">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1wHCnslhjlY" role="3cqZAp">
          <node concept="3clFbS" id="1wHCnslhjm1" role="3clFbx">
            <node concept="3clFbF" id="1wHCnslhNUM" role="3cqZAp">
              <node concept="1rXfSq" id="1wHCnslhNUL" role="3clFbG">
                <ref role="37wK5l" node="1wHCnslhrMu" resolve="rebalanceBinaryExprAfterParenthing" />
                <node concept="1PxgMI" id="1wHCnsli4h$" role="37wK5m">
                  <node concept="chp4Y" id="714IaVdH10e" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                  </node>
                  <node concept="37vLTw" id="1wHCnslhPcB" role="1m5AlR">
                    <ref role="3cqZAo" node="DGfYF56H0i" resolve="firstCommonAncestor" />
                  </node>
                </node>
                <node concept="37vLTw" id="1wHCnslhRH_" role="37wK5m">
                  <ref role="3cqZAo" node="DGfYF56H0k" resolve="rightTurn" />
                </node>
                <node concept="37vLTw" id="1wHCnslhUdW" role="37wK5m">
                  <ref role="3cqZAo" node="DGfYF56H0g" resolve="leftTurn" />
                </node>
                <node concept="37vLTw" id="1wHCnslhWJ0" role="37wK5m">
                  <ref role="3cqZAo" node="DGfYF56GYI" resolve="parens" />
                </node>
                <node concept="37vLTw" id="1wHCnslhZgb" role="37wK5m">
                  <ref role="3cqZAo" node="DGfYF56GVV" resolve="rightAccumulator" />
                </node>
                <node concept="37vLTw" id="1wHCnsli1Li" role="37wK5m">
                  <ref role="3cqZAo" node="DGfYF56GVS" resolve="leftAccumulator" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1wHCnslhkiA" role="3clFbw">
            <node concept="37vLTw" id="1wHCnslhjU3" role="2Oq$k0">
              <ref role="3cqZAo" node="DGfYF56H0i" resolve="firstCommonAncestor" />
            </node>
            <node concept="1mIQ4w" id="1wHCnslhkDb" role="2OqNvi">
              <node concept="chp4Y" id="1wHCnslhkE0" role="cj9EA">
                <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1wHCnslj28M" role="3cqZAp" />
        <node concept="3clFbF" id="DGfYF56H07" role="3cqZAp">
          <node concept="2OqwBi" id="DGfYF56H08" role="3clFbG">
            <node concept="2OqwBi" id="DGfYF56H09" role="2Oq$k0">
              <node concept="37vLTw" id="DGfYF56H0a" role="2Oq$k0">
                <ref role="3cqZAo" node="DGfYF56GYI" resolve="parens" />
              </node>
              <node concept="3TrEf2" id="3Sv$YXXzJNA" role="2OqNvi">
                <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
              </node>
            </node>
            <node concept="2oxUTD" id="DGfYF56H0c" role="2OqNvi">
              <node concept="37vLTw" id="DGfYF56H0L" role="2oxUTC">
                <ref role="3cqZAo" node="DGfYF56H0i" resolve="firstCommonAncestor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="DGfYF56H0e" role="3cqZAp">
          <node concept="37vLTw" id="DGfYF56H0f" role="3cqZAk">
            <ref role="3cqZAo" node="DGfYF56GYI" resolve="parens" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kJwM8twclL" role="jymVt" />
    <node concept="2YIFZL" id="1wHCnslhrMu" role="jymVt">
      <property role="TrG5h" value="rebalanceBinaryExprAfterParenthing" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3clFbS" id="1wHCnslhnFY" role="3clF47">
        <node concept="3cpWs8" id="1wHCnslhnGo" role="3cqZAp">
          <node concept="3cpWsn" id="1wHCnslhnGp" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="leftSide" />
            <node concept="3Tqbb2" id="1wHCnslhnGq" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="1wHCnslhnGr" role="33vP2m">
              <node concept="3TrEf2" id="3Sv$YXX$k73" role="2OqNvi">
                <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
              </node>
              <node concept="37vLTw" id="1wHCnsli6Oj" role="2Oq$k0">
                <ref role="3cqZAo" node="1wHCnslhuqU" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1wHCnslhnGt" role="3cqZAp">
          <node concept="3cpWsn" id="1wHCnslhnGu" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="rightSide" />
            <node concept="3Tqbb2" id="1wHCnslhnGv" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="1wHCnslhnGw" role="33vP2m">
              <node concept="3TrEf2" id="3Sv$YXX$kzV" role="2OqNvi">
                <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
              </node>
              <node concept="37vLTw" id="1wHCnsli7Pv" role="2Oq$k0">
                <ref role="3cqZAo" node="1wHCnslhuqU" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="1wHCnslhnGy" role="3cqZAp">
          <node concept="22lmx$" id="1wHCnslhnGz" role="1gVkn0">
            <node concept="3y3z36" id="1wHCnslhnG$" role="3uHU7w">
              <node concept="10Nm6u" id="1wHCnslhnG_" role="3uHU7w" />
              <node concept="37vLTw" id="1wHCnslhnGA" role="3uHU7B">
                <ref role="3cqZAo" node="1wHCnslhnGu" resolve="rightSide" />
              </node>
            </node>
            <node concept="3y3z36" id="1wHCnslhnGB" role="3uHU7B">
              <node concept="37vLTw" id="1wHCnslhnGC" role="3uHU7B">
                <ref role="3cqZAo" node="1wHCnslhnGp" resolve="leftSide" />
              </node>
              <node concept="10Nm6u" id="1wHCnslhnGD" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1wHCnslhnGE" role="3cqZAp">
          <node concept="3cpWsn" id="1wHCnslhnGF" role="3cpWs9">
            <property role="TrG5h" value="head" />
            <node concept="3Tqbb2" id="1wHCnslhnGG" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="3K4zz7" id="1wHCnslhnGH" role="33vP2m">
              <node concept="37vLTw" id="1wHCnslhnGI" role="3K4E3e">
                <ref role="3cqZAo" node="1wHCnslhnGu" resolve="rightSide" />
              </node>
              <node concept="37vLTw" id="1wHCnslhnGJ" role="3K4GZi">
                <ref role="3cqZAo" node="1wHCnslhnGp" resolve="leftSide" />
              </node>
              <node concept="3y3z36" id="1wHCnslhnGK" role="3K4Cdx">
                <node concept="10Nm6u" id="1wHCnslhnGL" role="3uHU7w" />
                <node concept="37vLTw" id="1wHCnslhnGM" role="3uHU7B">
                  <ref role="3cqZAo" node="1wHCnslhnGu" resolve="rightSide" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wHCnslhnGN" role="3cqZAp">
          <node concept="2OqwBi" id="1wHCnslhnGO" role="3clFbG">
            <node concept="37vLTw" id="1wHCnsli8z6" role="2Oq$k0">
              <ref role="3cqZAo" node="1wHCnslhuqU" resolve="node" />
            </node>
            <node concept="1P9Npp" id="1wHCnslhnGP" role="2OqNvi">
              <node concept="37vLTw" id="1wHCnslhnGQ" role="1P9ThW">
                <ref role="3cqZAo" node="1wHCnslhnGF" resolve="head" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wHCnslhnGR" role="3cqZAp">
          <node concept="2OqwBi" id="1wHCnslhnGS" role="3clFbG">
            <node concept="2OqwBi" id="1wHCnslhnGT" role="2Oq$k0">
              <node concept="37vLTw" id="1wHCnslhnGU" role="2Oq$k0">
                <ref role="3cqZAo" node="1wHCnslhnHJ" resolve="parens" />
              </node>
              <node concept="3TrEf2" id="3Sv$YXX$9zF" role="2OqNvi">
                <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
              </node>
            </node>
            <node concept="2oxUTD" id="1wHCnslhnGW" role="2OqNvi">
              <node concept="37vLTw" id="1wHCnsli9cP" role="2oxUTC">
                <ref role="3cqZAo" node="1wHCnslhuqU" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2gNOWdTQbwl" role="3cqZAp" />
        <node concept="3clFbJ" id="2gNOWdTQc7m" role="3cqZAp">
          <node concept="3clFbS" id="2gNOWdTQc7n" role="3clFbx">
            <node concept="3clFbF" id="2gNOWdTQc7o" role="3cqZAp">
              <node concept="37vLTI" id="3Sv$YXXzO4u" role="3clFbG">
                <node concept="37vLTw" id="3Sv$YXXzRCW" role="37vLTx">
                  <ref role="3cqZAo" node="1wHCnslhnHN" resolve="leftAccumulator" />
                </node>
                <node concept="2OqwBi" id="2gNOWdTQc7p" role="37vLTJ">
                  <node concept="37vLTw" id="2gNOWdTQc7q" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wHCnslhuqU" resolve="node" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXzN$X" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2gNOWdTQc7t" role="3clFbw">
            <node concept="10Nm6u" id="2gNOWdTQc7u" role="3uHU7w" />
            <node concept="37vLTw" id="2gNOWdTQc7v" role="3uHU7B">
              <ref role="3cqZAo" node="1wHCnslhnHN" resolve="leftAccumulator" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2gNOWdTQc7w" role="3cqZAp">
          <node concept="3clFbS" id="2gNOWdTQc7x" role="3clFbx">
            <node concept="3clFbF" id="2gNOWdTQc7y" role="3cqZAp">
              <node concept="37vLTI" id="3Sv$YXX$2_G" role="3clFbG">
                <node concept="2OqwBi" id="2gNOWdTQc7z" role="37vLTJ">
                  <node concept="37vLTw" id="2gNOWdTQc7$" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wHCnslhuqU" resolve="node" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXX$204" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
                <node concept="37vLTw" id="2gNOWdTQc7A" role="37vLTx">
                  <ref role="3cqZAo" node="1wHCnslhnHL" resolve="rightAccumulator" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2gNOWdTQc7B" role="3clFbw">
            <node concept="10Nm6u" id="2gNOWdTQc7C" role="3uHU7w" />
            <node concept="37vLTw" id="2gNOWdTQc7D" role="3uHU7B">
              <ref role="3cqZAo" node="1wHCnslhnHL" resolve="rightAccumulator" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1wHCnslhnH9" role="3cqZAp">
          <node concept="3cpWsn" id="1wHCnslhnHa" role="3cpWs9">
            <property role="TrG5h" value="subtree" />
            <node concept="3Tqbb2" id="1wHCnslhnHb" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1wHCnslhnHc" role="3cqZAp">
          <node concept="3clFbS" id="1wHCnslhnHd" role="3clFbx">
            <node concept="3clFbF" id="1wHCnslhnHe" role="3cqZAp">
              <node concept="37vLTI" id="1wHCnslhnHf" role="3clFbG">
                <node concept="37vLTw" id="1wHCnslhnHg" role="37vLTx">
                  <ref role="3cqZAo" node="1wHCnslhnGp" resolve="leftSide" />
                </node>
                <node concept="37vLTw" id="1wHCnslhnHh" role="37vLTJ">
                  <ref role="3cqZAo" node="1wHCnslhnHa" resolve="subtree" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1wHCnslhnHi" role="3cqZAp">
              <node concept="37vLTI" id="3Sv$YXXDgXU" role="3clFbG">
                <node concept="2OqwBi" id="1wHCnslhnHj" role="37vLTJ">
                  <node concept="37vLTw" id="1wHCnslhnHk" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wHCnslhnHH" resolve="leftTurn" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXD64Z" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
                <node concept="37vLTw" id="1wHCnslhnHm" role="37vLTx">
                  <ref role="3cqZAo" node="1wHCnslhnHJ" resolve="parens" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1wHCnslhnHn" role="3clFbw">
            <node concept="10Nm6u" id="1wHCnslhnHo" role="3uHU7w" />
            <node concept="37vLTw" id="1wHCnslhnHp" role="3uHU7B">
              <ref role="3cqZAo" node="1wHCnslhnGp" resolve="leftSide" />
            </node>
          </node>
          <node concept="9aQIb" id="1wHCnslhnHq" role="9aQIa">
            <node concept="3clFbS" id="1wHCnslhnHr" role="9aQI4">
              <node concept="3clFbF" id="1wHCnslhnHs" role="3cqZAp">
                <node concept="37vLTI" id="1wHCnslhnHt" role="3clFbG">
                  <node concept="37vLTw" id="1wHCnslhnHu" role="37vLTx">
                    <ref role="3cqZAo" node="1wHCnslhnHJ" resolve="parens" />
                  </node>
                  <node concept="37vLTw" id="1wHCnslhnHv" role="37vLTJ">
                    <ref role="3cqZAo" node="1wHCnslhnHa" resolve="subtree" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1wHCnslhnHw" role="3cqZAp">
          <node concept="3clFbS" id="1wHCnslhnHx" role="3clFbx">
            <node concept="3clFbF" id="1wHCnslhnHy" role="3cqZAp">
              <node concept="37vLTI" id="3Sv$YXXDoHF" role="3clFbG">
                <node concept="2OqwBi" id="1wHCnslhnHz" role="37vLTJ">
                  <node concept="37vLTw" id="1wHCnslhnH$" role="2Oq$k0">
                    <ref role="3cqZAo" node="1wHCnslhnHF" resolve="rightTurn" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXDoeX" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
                <node concept="37vLTw" id="1wHCnslhnHA" role="37vLTx">
                  <ref role="3cqZAo" node="1wHCnslhnHa" resolve="subtree" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1wHCnslhnHB" role="3clFbw">
            <node concept="10Nm6u" id="1wHCnslhnHC" role="3uHU7w" />
            <node concept="37vLTw" id="1wHCnslhnHD" role="3uHU7B">
              <ref role="3cqZAo" node="1wHCnslhnGu" resolve="rightSide" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1wHCnslhuqU" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1wHCnslhwmU" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="1wHCnslhnHF" role="3clF46">
        <property role="TrG5h" value="rightTurn" />
        <node concept="3Tqbb2" id="1wHCnslhnHG" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="1wHCnslhnHH" role="3clF46">
        <property role="TrG5h" value="leftTurn" />
        <node concept="3Tqbb2" id="1wHCnslhnHI" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="1wHCnslhnHJ" role="3clF46">
        <property role="TrG5h" value="parens" />
        <node concept="3Tqbb2" id="1wHCnslhnHK" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="1wHCnslhnHL" role="3clF46">
        <property role="TrG5h" value="rightAccumulator" />
        <node concept="3Tqbb2" id="1wHCnslhnHM" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="1wHCnslhnHN" role="3clF46">
        <property role="TrG5h" value="leftAccumulator" />
        <node concept="3Tqbb2" id="1wHCnslhnHO" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="3cqZAl" id="1wHCnslhnHE" role="3clF45" />
      <node concept="3Tm6S6" id="1wHCnsliTj1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4kJwM8twjir" role="jymVt" />
    <node concept="2YIFZL" id="4kJwM8sU1Pu" role="jymVt">
      <property role="TrG5h" value="buildAccumulator" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4kJwM8sU1Px" role="3clF47">
        <node concept="3cpWs8" id="4kJwM8sUf$F" role="3cqZAp">
          <node concept="3cpWsn" id="4kJwM8sUf$I" role="3cpWs9">
            <property role="TrG5h" value="accumulator" />
            <node concept="3Tqbb2" id="4kJwM8sUf$D" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4kJwM8sU8pk" role="3cqZAp">
          <node concept="1Wc70l" id="4kJwM8sU8pl" role="3clFbw">
            <node concept="3y3z36" id="4kJwM8sU8pm" role="3uHU7B">
              <node concept="10Nm6u" id="4kJwM8sU8pn" role="3uHU7w" />
              <node concept="37vLTw" id="4kJwM8sUiFx" role="3uHU7B">
                <ref role="3cqZAo" node="4kJwM8sUf7W" resolve="turn" />
              </node>
            </node>
            <node concept="17QLQc" id="4kJwM8sU8pp" role="3uHU7w">
              <node concept="37vLTw" id="4kJwM8sUiJe" role="3uHU7B">
                <ref role="3cqZAo" node="4kJwM8sUf7W" resolve="turn" />
              </node>
              <node concept="37vLTw" id="4kJwM8sU8pr" role="3uHU7w">
                <ref role="3cqZAo" node="4kJwM8sUevP" resolve="firstCommonAncestor" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4kJwM8sU8ps" role="3clFbx">
            <node concept="3clFbF" id="4kJwM8sU8pv" role="3cqZAp">
              <node concept="37vLTI" id="4kJwM8sU8pw" role="3clFbG">
                <node concept="37vLTw" id="4kJwM8sUlUl" role="37vLTJ">
                  <ref role="3cqZAo" node="4kJwM8sUf$I" resolve="accumulator" />
                </node>
                <node concept="3K4zz7" id="4kJwM8t0k25" role="37vLTx">
                  <node concept="2OqwBi" id="4kJwM8t0k5T" role="3K4E3e">
                    <node concept="37vLTw" id="4kJwM8t0k4_" role="2Oq$k0">
                      <ref role="3cqZAo" node="4kJwM8sUf7W" resolve="turn" />
                    </node>
                    <node concept="3TrEf2" id="3Sv$YXXD_lW" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4kJwM8t0kis" role="3K4GZi">
                    <node concept="37vLTw" id="4kJwM8t0kgQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4kJwM8sUf7W" resolve="turn" />
                    </node>
                    <node concept="3TrEf2" id="3Sv$YXXD_EM" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4kJwM8t0jNG" role="3K4Cdx">
                    <ref role="3cqZAo" node="4kJwM8sUny2" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4kJwM8sU8p_" role="3cqZAp">
              <node concept="2OqwBi" id="4kJwM8sU8pA" role="3clFbG">
                <node concept="37vLTw" id="4kJwM8sUmbI" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kJwM8sUf$I" resolve="accumulator" />
                </node>
                <node concept="3YRAZt" id="4kJwM8sU8pC" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs8" id="4kJwM8sU8pD" role="3cqZAp">
              <node concept="3cpWsn" id="4kJwM8sU8pE" role="3cpWs9">
                <property role="TrG5h" value="current" />
                <node concept="3Tqbb2" id="4kJwM8sU8pF" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
                <node concept="1PxgMI" id="4kJwM8sU8pG" role="33vP2m">
                  <node concept="chp4Y" id="714IaVdH15X" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                  </node>
                  <node concept="2OqwBi" id="4kJwM8sU8pH" role="1m5AlR">
                    <node concept="37vLTw" id="4kJwM8sUmfO" role="2Oq$k0">
                      <ref role="3cqZAo" node="4kJwM8sUf7W" resolve="turn" />
                    </node>
                    <node concept="1mfA1w" id="4kJwM8sU8pJ" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4kJwM8sU8pK" role="3cqZAp">
              <node concept="3cpWsn" id="4kJwM8sU8pL" role="3cpWs9">
                <property role="TrG5h" value="previous" />
                <node concept="3Tqbb2" id="4kJwM8sU8pM" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
                <node concept="37vLTw" id="4kJwM8sUmk2" role="33vP2m">
                  <ref role="3cqZAo" node="4kJwM8sUf7W" resolve="turn" />
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="4kJwM8sU8pO" role="3cqZAp">
              <node concept="3clFbS" id="4kJwM8sU8pP" role="2LFqv$">
                <node concept="3cpWs8" id="4kJwM8sU8pQ" role="3cqZAp">
                  <node concept="3cpWsn" id="4kJwM8sU8pR" role="3cpWs9">
                    <property role="TrG5h" value="sideExpression" />
                    <node concept="3Tqbb2" id="4kJwM8sU8pS" role="1tU5fm">
                      <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                    </node>
                    <node concept="3K4zz7" id="4kJwM8sUo9B" role="33vP2m">
                      <node concept="37vLTw" id="4kJwM8sUnZt" role="3K4Cdx">
                        <ref role="3cqZAo" node="4kJwM8sUny2" resolve="left" />
                      </node>
                      <node concept="2OqwBi" id="4kJwM8sU8pT" role="3K4E3e">
                        <node concept="37vLTw" id="4kJwM8sU8pU" role="2Oq$k0">
                          <ref role="3cqZAo" node="4kJwM8sU8pE" resolve="current" />
                        </node>
                        <node concept="3TrEf2" id="3Sv$YXXDBsF" role="2OqNvi">
                          <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4kJwM8sUogB" role="3K4GZi">
                        <node concept="37vLTw" id="4kJwM8sUogC" role="2Oq$k0">
                          <ref role="3cqZAo" node="4kJwM8sU8pE" resolve="current" />
                        </node>
                        <node concept="3TrEf2" id="3Sv$YXXDDdU" role="2OqNvi">
                          <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4kJwM8sU8pW" role="3cqZAp">
                  <node concept="3clFbS" id="4kJwM8sU8pX" role="3clFbx">
                    <node concept="3clFbF" id="4kJwM8sU8pY" role="3cqZAp">
                      <node concept="2OqwBi" id="4kJwM8sU8pZ" role="3clFbG">
                        <node concept="37vLTw" id="4kJwM8sU8q0" role="2Oq$k0">
                          <ref role="3cqZAo" node="4kJwM8sU8pE" resolve="current" />
                        </node>
                        <node concept="1P9Npp" id="4kJwM8sU8q1" role="2OqNvi">
                          <node concept="37vLTw" id="4kJwM8sU8q2" role="1P9ThW">
                            <ref role="3cqZAo" node="4kJwM8sU8pL" resolve="previous" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="4kJwM8sUo_0" role="3cqZAp">
                      <node concept="3clFbS" id="4kJwM8sUo_3" role="3clFbx">
                        <node concept="3clFbF" id="4kJwM8sU8q3" role="3cqZAp">
                          <node concept="37vLTI" id="3Sv$YXXDSfv" role="3clFbG">
                            <node concept="37vLTw" id="3Sv$YXXDSxV" role="37vLTx">
                              <ref role="3cqZAo" node="4kJwM8sUf$I" resolve="accumulator" />
                            </node>
                            <node concept="2OqwBi" id="4kJwM8sU8q4" role="37vLTJ">
                              <node concept="37vLTw" id="4kJwM8sU8q5" role="2Oq$k0">
                                <ref role="3cqZAo" node="4kJwM8sU8pE" resolve="current" />
                              </node>
                              <node concept="3TrEf2" id="3Sv$YXXDEZq" role="2OqNvi">
                                <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4kJwM8sUoBE" role="3clFbw">
                        <ref role="3cqZAo" node="4kJwM8sUny2" resolve="left" />
                      </node>
                      <node concept="9aQIb" id="4kJwM8sUoIE" role="9aQIa">
                        <node concept="3clFbS" id="4kJwM8sUoIF" role="9aQI4">
                          <node concept="3clFbF" id="4kJwM8sUoFr" role="3cqZAp">
                            <node concept="37vLTI" id="3Sv$YXXDV0I" role="3clFbG">
                              <node concept="37vLTw" id="3Sv$YXXDVkU" role="37vLTx">
                                <ref role="3cqZAo" node="4kJwM8sUf$I" resolve="accumulator" />
                              </node>
                              <node concept="2OqwBi" id="4kJwM8sUoFs" role="37vLTJ">
                                <node concept="37vLTw" id="4kJwM8sUoFt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4kJwM8sU8pE" resolve="current" />
                                </node>
                                <node concept="3TrEf2" id="3Sv$YXXDGTn" role="2OqNvi">
                                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4kJwM8sU8q8" role="3cqZAp">
                      <node concept="37vLTI" id="4kJwM8sU8q9" role="3clFbG">
                        <node concept="1PxgMI" id="1wHCnsnc6BL" role="37vLTx">
                          <node concept="chp4Y" id="3Sv$YXXt1hx" role="3oSUPX">
                            <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                          </node>
                          <node concept="37vLTw" id="4kJwM8sU8qa" role="1m5AlR">
                            <ref role="3cqZAo" node="4kJwM8sU8pE" resolve="current" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4kJwM8sUmuw" role="37vLTJ">
                          <ref role="3cqZAo" node="4kJwM8sUf$I" resolve="accumulator" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="4kJwM8sU8qc" role="9aQIa">
                    <node concept="3clFbS" id="4kJwM8sU8qd" role="9aQI4">
                      <node concept="3clFbF" id="4kJwM8sU8qe" role="3cqZAp">
                        <node concept="37vLTI" id="4kJwM8sU8qf" role="3clFbG">
                          <node concept="37vLTw" id="4kJwM8sU8qg" role="37vLTx">
                            <ref role="3cqZAo" node="4kJwM8sU8pE" resolve="current" />
                          </node>
                          <node concept="37vLTw" id="4kJwM8sU8qh" role="37vLTJ">
                            <ref role="3cqZAo" node="4kJwM8sU8pL" resolve="previous" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="4kJwM8sU8qi" role="3clFbw">
                    <node concept="17R0WA" id="4kJwM8sU8qj" role="3uHU7w">
                      <node concept="37vLTw" id="4kJwM8sU8qk" role="3uHU7w">
                        <ref role="3cqZAo" node="4kJwM8sU8pL" resolve="previous" />
                      </node>
                      <node concept="37vLTw" id="4kJwM8sU8ql" role="3uHU7B">
                        <ref role="3cqZAo" node="4kJwM8sU8pR" resolve="sideExpression" />
                      </node>
                    </node>
                    <node concept="3y3z36" id="4kJwM8sU8qm" role="3uHU7B">
                      <node concept="37vLTw" id="4kJwM8sU8qn" role="3uHU7B">
                        <ref role="3cqZAo" node="4kJwM8sU8pR" resolve="sideExpression" />
                      </node>
                      <node concept="10Nm6u" id="4kJwM8sU8qo" role="3uHU7w" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4kJwM8sU8qp" role="3cqZAp">
                  <node concept="37vLTI" id="4kJwM8sU8qq" role="3clFbG">
                    <node concept="1PxgMI" id="4kJwM8sU8qr" role="37vLTx">
                      <node concept="chp4Y" id="714IaVdH172" role="3oSUPX">
                        <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                      </node>
                      <node concept="2OqwBi" id="4kJwM8sU8qs" role="1m5AlR">
                        <node concept="37vLTw" id="4kJwM8sU8qt" role="2Oq$k0">
                          <ref role="3cqZAo" node="4kJwM8sU8pL" resolve="previous" />
                        </node>
                        <node concept="1mfA1w" id="4kJwM8sU8qu" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4kJwM8sU8qv" role="37vLTJ">
                      <ref role="3cqZAo" node="4kJwM8sU8pE" resolve="current" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17QLQc" id="4kJwM8sU8qw" role="2$JKZa">
                <node concept="37vLTw" id="4kJwM8sU8qx" role="3uHU7w">
                  <ref role="3cqZAo" node="4kJwM8sUevP" resolve="firstCommonAncestor" />
                </node>
                <node concept="37vLTw" id="4kJwM8sU8qy" role="3uHU7B">
                  <ref role="3cqZAo" node="4kJwM8sU8pE" resolve="current" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4kJwM8sU8qz" role="9aQIa">
            <node concept="3clFbS" id="4kJwM8sU8q$" role="9aQI4">
              <node concept="3cpWs8" id="4kJwM8t0huO" role="3cqZAp">
                <node concept="3cpWsn" id="4kJwM8t0huR" role="3cpWs9">
                  <property role="TrG5h" value="firstCommonAncestorChild" />
                  <property role="3TUv4t" value="false" />
                  <node concept="3Tqbb2" id="4kJwM8t0huT" role="1tU5fm">
                    <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                  </node>
                  <node concept="3K4zz7" id="4kJwM8t0iNg" role="33vP2m">
                    <node concept="37vLTw" id="4kJwM8t0i_8" role="3K4Cdx">
                      <ref role="3cqZAo" node="4kJwM8sUny2" resolve="left" />
                    </node>
                    <node concept="2OqwBi" id="4kJwM8t0i9E" role="3K4E3e">
                      <node concept="37vLTw" id="4kJwM8t0i6C" role="2Oq$k0">
                        <ref role="3cqZAo" node="4kJwM8sUevP" resolve="firstCommonAncestor" />
                      </node>
                      <node concept="3TrEf2" id="3Sv$YXXDYIv" role="2OqNvi">
                        <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4kJwM8t0iRC" role="3K4GZi">
                      <node concept="37vLTw" id="4kJwM8t0iRD" role="2Oq$k0">
                        <ref role="3cqZAo" node="4kJwM8sUevP" resolve="firstCommonAncestor" />
                      </node>
                      <node concept="3TrEf2" id="3Sv$YXXDZ0Z" role="2OqNvi">
                        <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4kJwM8sU8qH" role="3cqZAp">
                <node concept="3clFbS" id="4kJwM8sU8qI" role="3clFbx">
                  <node concept="3clFbF" id="4kJwM8sU8qJ" role="3cqZAp">
                    <node concept="37vLTI" id="4kJwM8sU8qK" role="3clFbG">
                      <node concept="37vLTw" id="4kJwM8t0jpf" role="37vLTx">
                        <ref role="3cqZAo" node="4kJwM8t0huR" resolve="firstCommonAncestorChild" />
                      </node>
                      <node concept="37vLTw" id="4kJwM8sUmyj" role="37vLTJ">
                        <ref role="3cqZAo" node="4kJwM8sUf$I" resolve="accumulator" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4kJwM8sU8qN" role="3cqZAp">
                    <node concept="2OqwBi" id="4kJwM8sU8qO" role="3clFbG">
                      <node concept="37vLTw" id="4kJwM8sUmAl" role="2Oq$k0">
                        <ref role="3cqZAo" node="4kJwM8sUf$I" resolve="accumulator" />
                      </node>
                      <node concept="3YRAZt" id="4kJwM8sU8qQ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="4kJwM8sU8qR" role="3clFbw">
                  <node concept="10Nm6u" id="4kJwM8sU8qS" role="3uHU7w" />
                  <node concept="37vLTw" id="4kJwM8t0jm6" role="3uHU7B">
                    <ref role="3cqZAo" node="4kJwM8t0huR" resolve="firstCommonAncestorChild" />
                  </node>
                </node>
                <node concept="9aQIb" id="4kJwM8sU8qU" role="9aQIa">
                  <node concept="3clFbS" id="4kJwM8sU8qV" role="9aQI4">
                    <node concept="3clFbF" id="4kJwM8sU8qW" role="3cqZAp">
                      <node concept="37vLTI" id="4kJwM8sU8qX" role="3clFbG">
                        <node concept="10Nm6u" id="6ppWe8rbUHa" role="37vLTx" />
                        <node concept="37vLTw" id="4kJwM8sUmDX" role="37vLTJ">
                          <ref role="3cqZAo" node="4kJwM8sUf$I" resolve="accumulator" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4kJwM8sUmNY" role="3cqZAp">
          <node concept="37vLTw" id="4kJwM8sUn0t" role="3cqZAk">
            <ref role="3cqZAo" node="4kJwM8sUf$I" resolve="accumulator" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4kJwM8sTYB4" role="1B3o_S" />
      <node concept="3Tqbb2" id="4kJwM8sU1MY" role="3clF45">
        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
      <node concept="37vLTG" id="4kJwM8sUevP" role="3clF46">
        <property role="TrG5h" value="firstCommonAncestor" />
        <node concept="3Tqbb2" id="4kJwM8sUevO" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="4kJwM8sUf7W" role="3clF46">
        <property role="TrG5h" value="turn" />
        <node concept="3Tqbb2" id="4kJwM8sUffC" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="4kJwM8sUny2" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="10P_77" id="4kJwM8sUnEo" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="4kJwM8twjPi" role="lGtFl">
        <node concept="TZ5HA" id="4kJwM8twjPj" role="TZ5H$">
          <node concept="1dT_AC" id="4kJwM8twjPk" role="1dT_Ay">
            <property role="1dT_AB" value="Accumulate the nodes that need to be added into the parentheses" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="74yJHhJJ3ES" role="jymVt" />
    <node concept="2YIFZL" id="21iL58c5KuF" role="jymVt">
      <property role="TrG5h" value="clearIncompleteParens" />
      <node concept="P$JXv" id="2RUTuWD0ivo" role="lGtFl">
        <node concept="TZ5HA" id="2RUTuWD0ivp" role="TZ5H$">
          <node concept="1dT_AC" id="2RUTuWD0ivq" role="1dT_Ay">
            <property role="1dT_AB" value="Remove the found matching paren annotation from its node" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="21iL58c5KuG" role="1B3o_S" />
      <node concept="3cqZAl" id="21iL58c5KuH" role="3clF45" />
      <node concept="37vLTG" id="21iL58c5KsU" role="3clF46">
        <property role="TrG5h" value="otherExpression" />
        <node concept="3Tqbb2" id="21iL58c5KsV" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="21iL58c5LVR" role="3clF46">
        <property role="TrG5h" value="completingByRightParen" />
        <node concept="10P_77" id="21iL58c5LXM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="VufYxjCiO7" role="3clF46">
        <property role="TrG5h" value="parens" />
        <node concept="3Tqbb2" id="VufYxjCiWE" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
        </node>
      </node>
      <node concept="3clFbS" id="21iL58c5KsL" role="3clF47">
        <node concept="3cpWs8" id="VufYxlwJKC" role="3cqZAp">
          <node concept="3cpWsn" id="VufYxlwJKD" role="3cpWs9">
            <property role="TrG5h" value="count" />
            <node concept="10Oyi0" id="VufYxlwJK$" role="1tU5fm" />
            <node concept="3cmrfG" id="VufYxlwR41" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="21iL58c5Mb7" role="3cqZAp">
          <node concept="3clFbS" id="21iL58c5Mba" role="3clFbx">
            <node concept="3clFbF" id="VufYxjCml4" role="3cqZAp">
              <node concept="37vLTI" id="VufYxjCmtx" role="3clFbG">
                <node concept="37vLTw" id="VufYxlwRT5" role="37vLTJ">
                  <ref role="3cqZAo" node="VufYxlwJKD" resolve="count" />
                </node>
                <node concept="2OqwBi" id="VufYxlwR8r" role="37vLTx">
                  <node concept="2OqwBi" id="VufYxhyTuA" role="2Oq$k0">
                    <node concept="37vLTw" id="VufYxhyTuB" role="2Oq$k0">
                      <ref role="3cqZAo" node="21iL58c5KsU" resolve="otherExpression" />
                    </node>
                    <node concept="3CFZ6_" id="VufYxhyTuC" role="2OqNvi">
                      <node concept="3CFYIy" id="VufYxjCmAW" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="VufYxlwRzD" role="2OqNvi">
                    <ref role="3TsBF5" to="gpgy:VufYxh0_nI" resolve="count" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="21iL58c5KsM" role="3cqZAp">
              <node concept="2OqwBi" id="21iL58c5KsN" role="3clFbG">
                <node concept="2oxUTD" id="21iL58c5KsS" role="2OqNvi">
                  <node concept="10Nm6u" id="21iL58c5KsT" role="2oxUTC" />
                </node>
                <node concept="2OqwBi" id="VufYxhyT5c" role="2Oq$k0">
                  <node concept="37vLTw" id="VufYxhyT5d" role="2Oq$k0">
                    <ref role="3cqZAo" node="21iL58c5KsU" resolve="otherExpression" />
                  </node>
                  <node concept="3CFZ6_" id="VufYxhyT5e" role="2OqNvi">
                    <node concept="3CFYIy" id="VufYxhyT5f" role="3CFYIz">
                      <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="VufYxlYRwF" role="3cqZAp">
              <node concept="2OqwBi" id="VufYxlYRwG" role="3clFbG">
                <node concept="2oxUTD" id="VufYxlYRwH" role="2OqNvi">
                  <node concept="10Nm6u" id="VufYxlYRwI" role="2oxUTC" />
                </node>
                <node concept="2OqwBi" id="VufYxlYRwJ" role="2Oq$k0">
                  <node concept="37vLTw" id="VufYxlYRRr" role="2Oq$k0">
                    <ref role="3cqZAo" node="VufYxjCiO7" resolve="parens" />
                  </node>
                  <node concept="3CFZ6_" id="VufYxlYRwL" role="2OqNvi">
                    <node concept="3CFYIy" id="VufYxlYRwM" role="3CFYIz">
                      <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="21iL58c5MbY" role="3clFbw">
            <ref role="3cqZAo" node="21iL58c5LVR" resolve="completingByRightParen" />
          </node>
          <node concept="9aQIb" id="21iL58c5Mjc" role="9aQIa">
            <node concept="3clFbS" id="21iL58c5Mjd" role="9aQI4">
              <node concept="3clFbF" id="VufYxjCmMP" role="3cqZAp">
                <node concept="37vLTI" id="VufYxjCmV0" role="3clFbG">
                  <node concept="37vLTw" id="VufYxlwTx4" role="37vLTJ">
                    <ref role="3cqZAo" node="VufYxlwJKD" resolve="count" />
                  </node>
                  <node concept="2OqwBi" id="VufYxlwSYw" role="37vLTx">
                    <node concept="2OqwBi" id="VufYxjCmXJ" role="2Oq$k0">
                      <node concept="37vLTw" id="VufYxjCmXK" role="2Oq$k0">
                        <ref role="3cqZAo" node="21iL58c5KsU" resolve="otherExpression" />
                      </node>
                      <node concept="3CFZ6_" id="VufYxjCmXL" role="2OqNvi">
                        <node concept="3CFYIy" id="VufYxhyTuD" role="3CFYIz">
                          <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="VufYxlwTb5" role="2OqNvi">
                      <ref role="3TsBF5" to="gpgy:VufYxh0_nI" resolve="count" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="VufYxhyTDe" role="3cqZAp">
                <node concept="2OqwBi" id="VufYxhyTDf" role="3clFbG">
                  <node concept="2oxUTD" id="VufYxhyTDg" role="2OqNvi">
                    <node concept="10Nm6u" id="VufYxhyTDh" role="2oxUTC" />
                  </node>
                  <node concept="2OqwBi" id="VufYxhyTDi" role="2Oq$k0">
                    <node concept="37vLTw" id="VufYxhyTDj" role="2Oq$k0">
                      <ref role="3cqZAo" node="21iL58c5KsU" resolve="otherExpression" />
                    </node>
                    <node concept="3CFZ6_" id="VufYxhyTDk" role="2OqNvi">
                      <node concept="3CFYIy" id="VufYxhyTXL" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="VufYxlYRVc" role="3cqZAp">
                <node concept="2OqwBi" id="VufYxlYRVd" role="3clFbG">
                  <node concept="2oxUTD" id="VufYxlYRVe" role="2OqNvi">
                    <node concept="10Nm6u" id="VufYxlYRVf" role="2oxUTC" />
                  </node>
                  <node concept="2OqwBi" id="VufYxlYRVg" role="2Oq$k0">
                    <node concept="37vLTw" id="VufYxlYStZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="VufYxjCiO7" resolve="parens" />
                    </node>
                    <node concept="3CFZ6_" id="VufYxlYRVi" role="2OqNvi">
                      <node concept="3CFYIy" id="VufYxlYRVj" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="VufYxlRuOI" role="3cqZAp" />
        <node concept="3clFbF" id="VufYxlK02g" role="3cqZAp">
          <node concept="d5anL" id="VufYxlK0Zq" role="3clFbG">
            <node concept="3cmrfG" id="VufYxlK1dc" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="37vLTw" id="VufYxlK02e" role="37vLTJ">
              <ref role="3cqZAo" node="VufYxlwJKD" resolve="count" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="VufYxhyTDc" role="3cqZAp">
          <node concept="3clFbS" id="VufYxhyTDd" role="3clFbx">
            <node concept="3cpWs6" id="VufYxjCjaZ" role="3cqZAp" />
          </node>
          <node concept="3eOVzh" id="VufYxlx04j" role="3clFbw">
            <node concept="37vLTw" id="VufYxlx04m" role="3uHU7B">
              <ref role="3cqZAo" node="VufYxlwJKD" resolve="count" />
            </node>
            <node concept="3cmrfG" id="VufYxlx04l" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="VufYxlwXBo" role="3cqZAp">
          <node concept="3clFbS" id="VufYxlwXBr" role="2LFqv$">
            <node concept="3clFbF" id="VufYxjCkEh" role="3cqZAp">
              <node concept="1rXfSq" id="VufYxjCkEi" role="3clFbG">
                <ref role="37wK5l" node="VufYxhyE73" resolve="setOrIncreaseParen" />
                <node concept="37vLTw" id="VufYxjCkEj" role="37wK5m">
                  <ref role="3cqZAo" node="VufYxjCiO7" resolve="parens" />
                </node>
                <node concept="3fqX7Q" id="VufYxjCkEk" role="37wK5m">
                  <node concept="37vLTw" id="VufYxjCkEl" role="3fr31v">
                    <ref role="3cqZAo" node="21iL58c5LVR" resolve="completingByRightParen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="VufYxlwXBu" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="VufYxlwY99" role="1tU5fm" />
            <node concept="3cmrfG" id="VufYxlwYgn" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="VufYxlwYTu" role="1Dwp0S">
            <node concept="37vLTw" id="VufYxlwYWA" role="3uHU7w">
              <ref role="3cqZAo" node="VufYxlwJKD" resolve="count" />
            </node>
            <node concept="37vLTw" id="VufYxlwYk2" role="3uHU7B">
              <ref role="3cqZAo" node="VufYxlwXBu" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="VufYxlwZrW" role="1Dwrff">
            <node concept="37vLTw" id="VufYxlwZrY" role="2$L3a6">
              <ref role="3cqZAo" node="VufYxlwXBu" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ixVQjdTxcX" role="jymVt" />
    <node concept="2YIFZL" id="6ixVQje$rgH" role="jymVt">
      <property role="TrG5h" value="findLeftTurn" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="P$JXv" id="2RUTuWD04DB" role="lGtFl">
        <node concept="TZ5HA" id="2RUTuWD04DC" role="TZ5H$">
          <node concept="1dT_AC" id="2RUTuWD04DD" role="1dT_Ay">
            <property role="1dT_AB" value="Climb up the ancestor expressions and return the first binary operation, in which we come from the right sub-tree." />
          </node>
        </node>
        <node concept="TUZQ0" id="2RUTuWD0hNh" role="3nqlJM">
          <property role="TUZQ4" value="Never climb beyond this node" />
          <node concept="zr_55" id="2RUTuWD0hNl" role="zr_5Q">
            <ref role="zr_51" node="6ixVQje$EsW" resolve="stopNode" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6ixVQje$rgK" role="3clF47">
        <node concept="3clFbF" id="6ixVQjeKX_j" role="3cqZAp">
          <node concept="1rXfSq" id="6ixVQjeKX_i" role="3clFbG">
            <ref role="37wK5l" node="6ixVQjeKW2C" resolve="findTurn" />
            <node concept="37vLTw" id="6ixVQjeKXN9" role="37wK5m">
              <ref role="3cqZAo" node="6ixVQje$r$7" resolve="leaf" />
            </node>
            <node concept="37vLTw" id="6ixVQjeKXRr" role="37wK5m">
              <ref role="3cqZAo" node="6ixVQje$EsW" resolve="stopNode" />
            </node>
            <node concept="3clFbT" id="6ixVQjeKXVJ" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6ixVQje$l$X" role="1B3o_S" />
      <node concept="3Tqbb2" id="6ixVQje$lSk" role="3clF45">
        <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
      </node>
      <node concept="37vLTG" id="6ixVQje$r$7" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="6ixVQje$r$6" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="6ixVQje$EsW" role="3clF46">
        <property role="TrG5h" value="stopNode" />
        <node concept="3Tqbb2" id="6ixVQje$Ewc" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ixVQjeKY4q" role="jymVt" />
    <node concept="2YIFZL" id="6ixVQje$UOO" role="jymVt">
      <property role="TrG5h" value="findRightTurn" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="P$JXv" id="2RUTuWD0bd7" role="lGtFl">
        <node concept="TZ5HA" id="2RUTuWD0bd8" role="TZ5H$">
          <node concept="1dT_AC" id="2RUTuWD0bd9" role="1dT_Ay">
            <property role="1dT_AB" value="Climb up the ancestor expressions and return the first binary operation, in which we come from the left sub-tree." />
          </node>
        </node>
        <node concept="TUZQ0" id="2RUTuWD0hNn" role="3nqlJM">
          <property role="TUZQ4" value="Never climb beyond this node" />
          <node concept="zr_55" id="2RUTuWD0hNr" role="zr_5Q">
            <ref role="zr_51" node="6ixVQje$UPA" resolve="stopNode" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6ixVQje$UOP" role="3clF47">
        <node concept="3clFbF" id="6ixVQjeKY_g" role="3cqZAp">
          <node concept="1rXfSq" id="6ixVQjeKY_h" role="3clFbG">
            <ref role="37wK5l" node="6ixVQjeKW2C" resolve="findTurn" />
            <node concept="37vLTw" id="6ixVQjeKY_i" role="37wK5m">
              <ref role="3cqZAo" node="6ixVQje$UP$" resolve="leaf" />
            </node>
            <node concept="37vLTw" id="6ixVQjeKY_j" role="37wK5m">
              <ref role="3cqZAo" node="6ixVQje$UPA" resolve="stopNode" />
            </node>
            <node concept="3clFbT" id="6ixVQjeKY_k" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6ixVQje$UPy" role="1B3o_S" />
      <node concept="3Tqbb2" id="6ixVQje$UPz" role="3clF45">
        <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
      </node>
      <node concept="37vLTG" id="6ixVQje$UP$" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="6ixVQje$UP_" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="6ixVQje$UPA" role="3clF46">
        <property role="TrG5h" value="stopNode" />
        <node concept="3Tqbb2" id="6ixVQje$UPB" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ixVQjeKZkE" role="jymVt" />
    <node concept="2YIFZL" id="6ixVQjeKW2C" role="jymVt">
      <property role="TrG5h" value="findTurn" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6ixVQjeKW2D" role="3clF47">
        <node concept="3cpWs8" id="6ixVQjeKW2E" role="3cqZAp">
          <node concept="3cpWsn" id="6ixVQjeKW2F" role="3cpWs9">
            <property role="TrG5h" value="currentNode" />
            <node concept="3Tqbb2" id="6ixVQjeKW2G" role="1tU5fm" />
            <node concept="2OqwBi" id="6ixVQjeKW2H" role="33vP2m">
              <node concept="37vLTw" id="6ixVQjeKW2I" role="2Oq$k0">
                <ref role="3cqZAo" node="6ixVQjeKW3C" resolve="leaf" />
              </node>
              <node concept="1mfA1w" id="6ixVQjeKW2J" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ixVQjeKW2K" role="3cqZAp">
          <node concept="3cpWsn" id="6ixVQjeKW2L" role="3cpWs9">
            <property role="TrG5h" value="previous" />
            <node concept="3Tqbb2" id="6ixVQjeKW2M" role="1tU5fm" />
            <node concept="37vLTw" id="6ixVQjeKW2N" role="33vP2m">
              <ref role="3cqZAo" node="6ixVQjeKW3C" resolve="leaf" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="6ixVQjeKW2O" role="3cqZAp">
          <node concept="1Wc70l" id="27wQ$CoCCl_" role="2$JKZa">
            <node concept="2OqwBi" id="27wQ$CoCC$Y" role="3uHU7w">
              <node concept="37vLTw" id="27wQ$CoCCwv" role="2Oq$k0">
                <ref role="3cqZAo" node="6ixVQjeKW2F" resolve="currentNode" />
              </node>
              <node concept="1mIQ4w" id="27wQ$CoCCGv" role="2OqNvi">
                <node concept="chp4Y" id="1wHCnsn6N$J" role="cj9EA">
                  <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
              </node>
            </node>
            <node concept="17QLQc" id="6ixVQjeKW3x" role="3uHU7B">
              <node concept="37vLTw" id="6ixVQjeKW3z" role="3uHU7B">
                <ref role="3cqZAo" node="6ixVQjeKW2L" resolve="previous" />
              </node>
              <node concept="37vLTw" id="6ixVQjeKW3y" role="3uHU7w">
                <ref role="3cqZAo" node="6ixVQjeKW3E" resolve="stopNode" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6ixVQjeKW2P" role="2LFqv$">
            <node concept="3cpWs8" id="27wQ$CoxNDF" role="3cqZAp">
              <node concept="3cpWsn" id="27wQ$CoxNDG" role="3cpWs9">
                <property role="TrG5h" value="leftSideExpression" />
                <node concept="3Tqbb2" id="27wQ$CoxND_" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                </node>
                <node concept="2OqwBi" id="27wQ$CoxNDH" role="33vP2m">
                  <node concept="1PxgMI" id="27wQ$CoGrp8" role="2Oq$k0">
                    <node concept="chp4Y" id="714IaVdH0Wf" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                    </node>
                    <node concept="37vLTw" id="27wQ$CoxNDJ" role="1m5AlR">
                      <ref role="3cqZAo" node="6ixVQjeKW2F" resolve="currentNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXE0Q4" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="27wQ$CoxNVT" role="3cqZAp">
              <node concept="3cpWsn" id="27wQ$CoxNVU" role="3cpWs9">
                <property role="TrG5h" value="rightSideExpression" />
                <node concept="3Tqbb2" id="27wQ$CoxNVV" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                </node>
                <node concept="2OqwBi" id="27wQ$CoxNVW" role="33vP2m">
                  <node concept="1PxgMI" id="27wQ$CoGsya" role="2Oq$k0">
                    <node concept="chp4Y" id="714IaVdH11y" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                    </node>
                    <node concept="37vLTw" id="27wQ$CoxNVY" role="1m5AlR">
                      <ref role="3cqZAo" node="6ixVQjeKW2F" resolve="currentNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXE2Ih" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="27wQ$CoxVxS" role="3cqZAp">
              <node concept="3clFbS" id="27wQ$CoxVxV" role="3clFbx">
                <node concept="3cpWs6" id="27wQ$Coy2rC" role="3cqZAp">
                  <node concept="1PxgMI" id="27wQ$CoCCOS" role="3cqZAk">
                    <node concept="chp4Y" id="714IaVdH10L" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                    </node>
                    <node concept="37vLTw" id="27wQ$Coy2II" role="1m5AlR">
                      <ref role="3cqZAo" node="6ixVQjeKW2F" resolve="currentNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="27wQ$Coy27b" role="3clFbw">
                <node concept="17R0WA" id="27wQ$Coy2h_" role="3uHU7w">
                  <node concept="37vLTw" id="27wQ$Coy2m0" role="3uHU7w">
                    <ref role="3cqZAo" node="6ixVQjeKW2L" resolve="previous" />
                  </node>
                  <node concept="37vLTw" id="27wQ$Coy2bK" role="3uHU7B">
                    <ref role="3cqZAo" node="27wQ$CoxNVU" resolve="rightSideExpression" />
                  </node>
                </node>
                <node concept="37vLTw" id="27wQ$CoxVNO" role="3uHU7B">
                  <ref role="3cqZAo" node="6ixVQjeKW3G" resolve="leftTurn" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="27wQ$Coy5aC" role="3cqZAp">
              <node concept="3clFbS" id="27wQ$Coy5aD" role="3clFbx">
                <node concept="3cpWs6" id="27wQ$Coy5aE" role="3cqZAp">
                  <node concept="1PxgMI" id="27wQ$CoCD89" role="3cqZAk">
                    <node concept="chp4Y" id="714IaVdH17I" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                    </node>
                    <node concept="37vLTw" id="27wQ$Coy5aG" role="1m5AlR">
                      <ref role="3cqZAo" node="6ixVQjeKW2F" resolve="currentNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="27wQ$Coy5aH" role="3clFbw">
                <node concept="17R0WA" id="27wQ$Coy5aI" role="3uHU7w">
                  <node concept="37vLTw" id="27wQ$Coy5aJ" role="3uHU7w">
                    <ref role="3cqZAo" node="6ixVQjeKW2L" resolve="previous" />
                  </node>
                  <node concept="37vLTw" id="27wQ$Coy5_F" role="3uHU7B">
                    <ref role="3cqZAo" node="27wQ$CoxNDG" resolve="leftSideExpression" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="27wQ$Coy5x8" role="3uHU7B">
                  <node concept="37vLTw" id="27wQ$Coy5xa" role="3fr31v">
                    <ref role="3cqZAo" node="6ixVQjeKW3G" resolve="leftTurn" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="27wQ$Coy6zM" role="3cqZAp" />
            <node concept="3clFbF" id="6ixVQjeKW3n" role="3cqZAp">
              <node concept="37vLTI" id="6ixVQjeKW3o" role="3clFbG">
                <node concept="37vLTw" id="6ixVQjeKW3p" role="37vLTx">
                  <ref role="3cqZAo" node="6ixVQjeKW2F" resolve="currentNode" />
                </node>
                <node concept="37vLTw" id="6ixVQjeKW3q" role="37vLTJ">
                  <ref role="3cqZAo" node="6ixVQjeKW2L" resolve="previous" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6ixVQjeKW3r" role="3cqZAp">
              <node concept="37vLTI" id="6ixVQjeKW3s" role="3clFbG">
                <node concept="2OqwBi" id="6ixVQjeKW3t" role="37vLTx">
                  <node concept="37vLTw" id="6ixVQjeKW3u" role="2Oq$k0">
                    <ref role="3cqZAo" node="6ixVQjeKW2F" resolve="currentNode" />
                  </node>
                  <node concept="1mfA1w" id="6ixVQjeKW3v" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="6ixVQjeKW3w" role="37vLTJ">
                  <ref role="3cqZAo" node="6ixVQjeKW2F" resolve="currentNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6ixVQjeKW3$" role="3cqZAp">
          <node concept="10Nm6u" id="2eNNusrpEaB" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6ixVQjeKW3A" role="1B3o_S" />
      <node concept="3Tqbb2" id="6ixVQjeKW3B" role="3clF45">
        <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
      </node>
      <node concept="37vLTG" id="6ixVQjeKW3C" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="6ixVQjeKW3D" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="6ixVQjeKW3E" role="3clF46">
        <property role="TrG5h" value="stopNode" />
        <node concept="3Tqbb2" id="6ixVQjeKW3F" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="6ixVQjeKW3G" role="3clF46">
        <property role="TrG5h" value="leftTurn" />
        <node concept="10P_77" id="6ixVQjeKW3H" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RUTuWD02ml" role="jymVt" />
    <node concept="2YIFZL" id="6ixVQje8SlK" role="jymVt">
      <property role="TrG5h" value="parentPath" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="P$JXv" id="2RUTuWD031w" role="lGtFl">
        <node concept="TZ5HA" id="2RUTuWD031x" role="TZ5H$">
          <node concept="1dT_AC" id="2RUTuWD031y" role="1dT_Ay">
            <property role="1dT_AB" value="Find all the ancestor expressions of leaf that could be wrapped in parens." />
          </node>
        </node>
        <node concept="TZ5HA" id="2RUTuWD03Sn" role="TZ5H$">
          <node concept="1dT_AC" id="2RUTuWD03So" role="1dT_Ay">
            <property role="1dT_AB" value="Stops when the parent current expression could no longer be parenthesised." />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6ixVQje8SlN" role="3clF47">
        <node concept="3cpWs8" id="6ixVQje8U0d" role="3cqZAp">
          <node concept="3cpWsn" id="6ixVQje8U0e" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="2I9FWS" id="6ixVQje8U0c" role="1tU5fm">
              <ref role="2I9WkF" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="2ShNRf" id="6ixVQje8U0f" role="33vP2m">
              <node concept="2T8Vx0" id="6ixVQje8U0g" role="2ShVmc">
                <node concept="2I9FWS" id="6ixVQje8U0h" role="2T96Bj">
                  <ref role="2I9WkF" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RUTuWC1Rgc" role="3cqZAp">
          <node concept="2OqwBi" id="2RUTuWC1ShU" role="3clFbG">
            <node concept="37vLTw" id="2RUTuWC1Rgb" role="2Oq$k0">
              <ref role="3cqZAo" node="6ixVQje8U0e" resolve="path" />
            </node>
            <node concept="TSZUe" id="2RUTuWC1V_g" role="2OqNvi">
              <node concept="37vLTw" id="2RUTuWC1W6M" role="25WWJ7">
                <ref role="3cqZAo" node="6ixVQje8SAq" resolve="leaf" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2RUTuWBOB9G" role="3cqZAp" />
        <node concept="1Dw8fO" id="6IWAasRWo6R" role="3cqZAp">
          <node concept="37vLTI" id="6IWAasS3eMm" role="1Dwrff">
            <node concept="2OqwBi" id="6IWAasS3f2c" role="37vLTx">
              <node concept="37vLTw" id="6IWAasS3eZ3" role="2Oq$k0">
                <ref role="3cqZAo" node="6IWAasRWo6X" resolve="currentNode" />
              </node>
              <node concept="1mfA1w" id="6IWAasS3fHx" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="6IWAasS3eA$" role="37vLTJ">
              <ref role="3cqZAo" node="6IWAasRWo6X" resolve="currentNode" />
            </node>
          </node>
          <node concept="3clFbS" id="6IWAasRWo6U" role="2LFqv$">
            <node concept="3clFbF" id="1S7XYuYYr9J" role="3cqZAp">
              <node concept="2OqwBi" id="1S7XYuYYr9K" role="3clFbG">
                <node concept="37vLTw" id="1S7XYuYYr9L" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ixVQje8U0e" resolve="path" />
                </node>
                <node concept="TSZUe" id="1S7XYuYYr9M" role="2OqNvi">
                  <node concept="1PxgMI" id="6SeilgqAlWc" role="25WWJ7">
                    <node concept="chp4Y" id="3Sv$YXXt1hv" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                    </node>
                    <node concept="37vLTw" id="6SeilgqApgc" role="1m5AlR">
                      <ref role="3cqZAo" node="6IWAasRWo6X" resolve="currentNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6IWAasRWo6X" role="1Duv9x">
            <property role="TrG5h" value="currentNode" />
            <node concept="3Tqbb2" id="6IWAasRWvoS" role="1tU5fm" />
            <node concept="2OqwBi" id="6IWAasRWvxO" role="33vP2m">
              <node concept="37vLTw" id="6IWAasRWvv1" role="2Oq$k0">
                <ref role="3cqZAo" node="6ixVQje8SAq" resolve="leaf" />
              </node>
              <node concept="1mfA1w" id="6IWAasRWvCV" role="2OqNvi" />
            </node>
          </node>
          <node concept="1Wc70l" id="6SeilgqAqL6" role="1Dwp0S">
            <node concept="2OqwBi" id="6IWAasRWxbN" role="3uHU7B">
              <node concept="37vLTw" id="6IWAasRWxbO" role="2Oq$k0">
                <ref role="3cqZAo" node="6IWAasRWo6X" resolve="currentNode" />
              </node>
              <node concept="1mIQ4w" id="6IWAasRWxbP" role="2OqNvi">
                <node concept="chp4Y" id="6SeilgqqVuU" role="cj9EA">
                  <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="3Sv$YXXErs4" role="3uHU7w">
              <ref role="37wK5l" node="3Sv$YXXEnaZ" resolve="canPropagateUnmatchedParenUp" />
              <node concept="1PxgMI" id="3Sv$YXXEExI" role="37wK5m">
                <node concept="chp4Y" id="3Sv$YXXEEJM" role="3oSUPX">
                  <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
                <node concept="37vLTw" id="6SeilgqAtEa" role="1m5AlR">
                  <ref role="3cqZAo" node="6IWAasRWo6X" resolve="currentNode" />
                </node>
              </node>
              <node concept="37vLTw" id="6SeilgqA8PX" role="37wK5m">
                <ref role="3cqZAo" node="6ixVQje8SAq" resolve="leaf" />
              </node>
              <node concept="37vLTw" id="6SeilgqA8PY" role="37wK5m">
                <ref role="3cqZAo" node="2RUTuWC7Z_4" resolve="rightParen" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6ixVQje949m" role="3cqZAp">
          <node concept="37vLTw" id="6ixVQje94ln" role="3cqZAk">
            <ref role="3cqZAo" node="6ixVQje8U0e" resolve="path" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6ixVQje8S57" role="1B3o_S" />
      <node concept="2I9FWS" id="6ixVQje8SlI" role="3clF45">
        <ref role="2I9WkF" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
      </node>
      <node concept="37vLTG" id="6ixVQje8SAq" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="3Tqbb2" id="6ixVQje8SAp" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="2RUTuWC7Z_4" role="3clF46">
        <property role="TrG5h" value="rightParen" />
        <node concept="10P_77" id="2RUTuWC80jJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2$DuNtjhsEg" role="jymVt" />
    <node concept="2YIFZL" id="6im1NnIT8FT" role="jymVt">
      <property role="TrG5h" value="checkWholeExpressionPriorities" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6im1NnIT8FW" role="3clF47">
        <node concept="3cpWs8" id="6im1NnJ71RH" role="3cqZAp">
          <node concept="3cpWsn" id="6im1NnJ71RK" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="6im1NnJ71RF" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="37vLTw" id="6im1NnJ71Xa" role="33vP2m">
              <ref role="3cqZAo" node="6im1NnIT9vx" resolve="expr" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="6im1NnJ721t" role="3cqZAp">
          <node concept="3clFbS" id="6im1NnJ721v" role="2LFqv$">
            <node concept="3clFbF" id="6im1NnJ73S8" role="3cqZAp">
              <node concept="37vLTI" id="6im1NnJ73Ul" role="3clFbG">
                <node concept="1PxgMI" id="6im1NnJ74fV" role="37vLTx">
                  <node concept="chp4Y" id="3Sv$YXXt1ge" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                  </node>
                  <node concept="2OqwBi" id="6im1NnJ740F" role="1m5AlR">
                    <node concept="37vLTw" id="6im1NnJ73Yk" role="2Oq$k0">
                      <ref role="3cqZAo" node="6im1NnJ71RK" resolve="current" />
                    </node>
                    <node concept="1mfA1w" id="6im1NnJ747K" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="6im1NnJ73S7" role="37vLTJ">
                  <ref role="3cqZAo" node="6im1NnJ71RK" resolve="current" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6im1NnJ72MO" role="2$JKZa">
            <node concept="2OqwBi" id="6im1NnJ72au" role="2Oq$k0">
              <node concept="37vLTw" id="6im1NnJ726C" role="2Oq$k0">
                <ref role="3cqZAo" node="6im1NnJ71RK" resolve="current" />
              </node>
              <node concept="1mfA1w" id="6im1NnJ72EN" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="6im1NnJ72Th" role="2OqNvi">
              <node concept="chp4Y" id="3Sv$YXXsZa6" role="cj9EA">
                <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3dIrgk9Hbi0" role="3cqZAp" />
        <node concept="3cpWs8" id="1kttznBe5FQ" role="3cqZAp">
          <node concept="3cpWsn" id="1kttznBe5FR" role="3cpWs9">
            <property role="TrG5h" value="candidates" />
            <node concept="_YKpA" id="1kttznBe5FI" role="1tU5fm">
              <node concept="3Tqbb2" id="1kttznBe5FL" role="_ZDj9">
                <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
            </node>
            <node concept="2ShNRf" id="1kttznBe5FS" role="33vP2m">
              <node concept="Tc6Ow" id="1kttznBe5FT" role="2ShVmc">
                <node concept="3Tqbb2" id="1kttznBe5FU" role="HW$YZ">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1kttznBe5WY" role="3cqZAp">
          <node concept="2OqwBi" id="1kttznBe6BH" role="3clFbG">
            <node concept="37vLTw" id="1kttznBe5WW" role="2Oq$k0">
              <ref role="3cqZAo" node="1kttznBe5FR" resolve="candidates" />
            </node>
            <node concept="X8dFx" id="1kttznBe9v$" role="2OqNvi">
              <node concept="2OqwBi" id="1kttznBftLM" role="25WWJ7">
                <node concept="37vLTw" id="1kttznBftLN" role="2Oq$k0">
                  <ref role="3cqZAo" node="6im1NnJ71RK" resolve="current" />
                </node>
                <node concept="2Rf3mk" id="1kttznBftLO" role="2OqNvi">
                  <node concept="1xMEDy" id="1kttznBftLP" role="1xVPHs">
                    <node concept="chp4Y" id="3Sv$YXXuQd2" role="ri$Ld">
                      <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="1kttznBftLR" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1kttznBdY2E" role="3cqZAp">
          <node concept="1rXfSq" id="1kttznBdY2C" role="3clFbG">
            <ref role="37wK5l" node="1kttznBdLvN" resolve="checkCandidateExpressionsPriorities" />
            <node concept="37vLTw" id="1kttznBe5FV" role="37wK5m">
              <ref role="3cqZAo" node="1kttznBe5FR" resolve="candidates" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6im1NnIT8FM" role="1B3o_S" />
      <node concept="3cqZAl" id="6im1NnIT8FR" role="3clF45" />
      <node concept="37vLTG" id="6im1NnIT9vx" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="6im1NnIT9vw" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="771$tPxIyaY" role="jymVt" />
    <node concept="2YIFZL" id="4c9ExjQnyfP" role="jymVt">
      <property role="TrG5h" value="checkOperationWRTPriority" />
      <node concept="3cqZAl" id="4c9ExjQnyfQ" role="3clF45" />
      <node concept="3Tm1VV" id="4c9ExjQnyfR" role="1B3o_S" />
      <node concept="3clFbS" id="4c9ExjQnyfS" role="3clF47">
        <node concept="3cpWs8" id="1kttznBoRS9" role="3cqZAp">
          <node concept="3cpWsn" id="1kttznBoRSa" role="3cpWs9">
            <property role="TrG5h" value="candidates" />
            <node concept="_YKpA" id="1kttznBoRSb" role="1tU5fm">
              <node concept="3Tqbb2" id="1kttznBoRSc" role="_ZDj9">
                <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
            </node>
            <node concept="2ShNRf" id="1kttznBoRSd" role="33vP2m">
              <node concept="Tc6Ow" id="1kttznBoRSe" role="2ShVmc">
                <node concept="3Tqbb2" id="1kttznBoRSf" role="HW$YZ">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
                <node concept="37vLTw" id="1kttznBoS0P" role="HW$Y0">
                  <ref role="3cqZAo" node="4c9ExjQnyg4" resolve="binary" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1kttznBoS8K" role="3cqZAp">
          <node concept="1rXfSq" id="1kttznBoS8I" role="3clFbG">
            <ref role="37wK5l" node="1kttznBdLvN" resolve="checkCandidateExpressionsPriorities" />
            <node concept="37vLTw" id="1kttznBoSen" role="37wK5m">
              <ref role="3cqZAo" node="1kttznBoRSa" resolve="candidates" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4c9ExjQnyg4" role="3clF46">
        <property role="TrG5h" value="binary" />
        <node concept="3Tqbb2" id="4c9ExjQnyg5" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1kttznBdsFZ" role="jymVt" />
    <node concept="2YIFZL" id="1kttznBdLvN" role="jymVt">
      <property role="TrG5h" value="checkCandidateExpressionsPriorities" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1kttznBdLvQ" role="3clF47">
        <node concept="2$JKZl" id="1kttznBeatp" role="3cqZAp">
          <node concept="3clFbS" id="1kttznBeatr" role="2LFqv$">
            <node concept="3cpWs8" id="1kttznBeuq2" role="3cqZAp">
              <node concept="3cpWsn" id="1kttznBeuq3" role="3cpWs9">
                <property role="TrG5h" value="candidate" />
                <node concept="3Tqbb2" id="1kttznBeupW" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
                <node concept="2OqwBi" id="1kttznBeuq4" role="33vP2m">
                  <node concept="37vLTw" id="1kttznBeuq5" role="2Oq$k0">
                    <ref role="3cqZAo" node="1kttznBdXXU" resolve="candidates" />
                  </node>
                  <node concept="1uHKPH" id="1kttznBoGBZ" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1kttznBoGPr" role="3cqZAp">
              <node concept="3clFbS" id="1kttznBoGPu" role="3clFbx">
                <node concept="3clFbF" id="1kttznBoHNr" role="3cqZAp">
                  <node concept="2OqwBi" id="1kttznBoJis" role="3clFbG">
                    <node concept="37vLTw" id="1kttznBoHNq" role="2Oq$k0">
                      <ref role="3cqZAo" node="1kttznBdXXU" resolve="candidates" />
                    </node>
                    <node concept="2Kt2Hk" id="1kttznBoLbN" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1kttznBoH_5" role="3clFbw">
                <node concept="1Wc70l" id="1kttznBoHcV" role="3uHU7B">
                  <node concept="1rXfSq" id="1kttznBejg0" role="3uHU7B">
                    <ref role="37wK5l" node="1kttznBevmr" resolve="checkOperationChildWRTPriority" />
                    <node concept="37vLTw" id="1kttznBeuq7" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBeuq3" resolve="candidate" />
                    </node>
                    <node concept="3clFbT" id="1kttznBewW2" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="37vLTw" id="1kttznBezwU" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBdXXU" resolve="candidates" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="1kttznBeXt5" role="3uHU7w">
                    <ref role="37wK5l" node="1kttznBevmr" resolve="checkOperationChildWRTPriority" />
                    <node concept="37vLTw" id="1kttznBeXt6" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBeuq3" resolve="candidate" />
                    </node>
                    <node concept="3clFbT" id="1kttznBeXt7" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="1kttznBeXt8" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBdXXU" resolve="candidates" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="1kttznBf66D" role="3uHU7w">
                  <ref role="37wK5l" node="1kttznBf4q7" resolve="checkOperationParentWRTPriority" />
                  <node concept="37vLTw" id="1kttznBf66E" role="37wK5m">
                    <ref role="3cqZAo" node="1kttznBeuq3" resolve="candidate" />
                  </node>
                  <node concept="37vLTw" id="1kttznBf66G" role="37wK5m">
                    <ref role="3cqZAo" node="1kttznBdXXU" resolve="candidates" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1kttznBebkW" role="2$JKZa">
            <node concept="37vLTw" id="1kttznBea$i" role="2Oq$k0">
              <ref role="3cqZAo" node="1kttznBdXXU" resolve="candidates" />
            </node>
            <node concept="3GX2aA" id="1kttznBecMm" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1kttznBdKOV" role="1B3o_S" />
      <node concept="3cqZAl" id="1kttznBdLvL" role="3clF45" />
      <node concept="37vLTG" id="1kttznBdXXU" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="_YKpA" id="1kttznBdXXS" role="1tU5fm">
          <node concept="3Tqbb2" id="1kttznBdXYa" role="_ZDj9">
            <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6im1NnITckp" role="jymVt" />
    <node concept="2YIFZL" id="1kttznBevmr" role="jymVt">
      <property role="TrG5h" value="checkOperationChildWRTPriority" />
      <node concept="3Tm6S6" id="1kttznBevms" role="1B3o_S" />
      <node concept="10P_77" id="1kttznBoBsj" role="3clF45" />
      <node concept="37vLTG" id="1kttznBevmu" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1kttznBevmv" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="1kttznBevmw" role="3clF46">
        <property role="TrG5h" value="isRight" />
        <node concept="10P_77" id="1kttznBevmx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1kttznBezyG" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="_YKpA" id="1kttznBe$21" role="1tU5fm">
          <node concept="3Tqbb2" id="1kttznBe$sO" role="_ZDj9">
            <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1kttznBevmy" role="3clF47">
        <node concept="3cpWs8" id="1kttznBevmz" role="3cqZAp">
          <node concept="3cpWsn" id="1kttznBevm$" role="3cpWs9">
            <property role="TrG5h" value="sideExpr" />
            <node concept="3Tqbb2" id="1kttznBevm_" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="3K4zz7" id="1kttznBevmA" role="33vP2m">
              <node concept="37vLTw" id="1kttznBevmB" role="3K4Cdx">
                <ref role="3cqZAo" node="1kttznBevmw" resolve="isRight" />
              </node>
              <node concept="2OqwBi" id="1kttznBevmC" role="3K4E3e">
                <node concept="37vLTw" id="1kttznBevmD" role="2Oq$k0">
                  <ref role="3cqZAo" node="1kttznBevmu" resolve="node" />
                </node>
                <node concept="3TrEf2" id="3Sv$YXX$K_8" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
              <node concept="2OqwBi" id="1kttznBevmF" role="3K4GZi">
                <node concept="37vLTw" id="1kttznBevmG" role="2Oq$k0">
                  <ref role="3cqZAo" node="1kttznBevmu" resolve="node" />
                </node>
                <node concept="3TrEf2" id="3Sv$YXX$L2W" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1kttznBevmI" role="3cqZAp">
          <node concept="2OqwBi" id="1kttznBevmJ" role="3clFbw">
            <node concept="37vLTw" id="1kttznBevmK" role="2Oq$k0">
              <ref role="3cqZAo" node="1kttznBevm$" resolve="sideExpr" />
            </node>
            <node concept="1mIQ4w" id="1kttznBevmL" role="2OqNvi">
              <node concept="chp4Y" id="1kttznBevmM" role="cj9EA">
                <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1kttznBevmN" role="3clFbx">
            <node concept="3cpWs8" id="1kttznBevmO" role="3cqZAp">
              <node concept="3cpWsn" id="1kttznBevmP" role="3cpWs9">
                <property role="TrG5h" value="sideChild" />
                <node concept="3Tqbb2" id="1kttznBevmQ" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
                <node concept="1PxgMI" id="1kttznBevmR" role="33vP2m">
                  <node concept="chp4Y" id="714IaVdH10G" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                  </node>
                  <node concept="37vLTw" id="1kttznBevmS" role="1m5AlR">
                    <ref role="3cqZAo" node="1kttznBevm$" resolve="sideExpr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1kttznBevmT" role="3cqZAp">
              <node concept="3clFbS" id="1kttznBevmU" role="3clFbx">
                <node concept="3clFbF" id="1kttznBevmV" role="3cqZAp">
                  <node concept="2YIFZM" id="1kttznBevmW" role="3clFbG">
                    <ref role="37wK5l" node="4c9ExjQnykO" resolve="rotateTree" />
                    <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                    <node concept="37vLTw" id="1kttznBevmX" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBevmP" resolve="sideChild" />
                    </node>
                    <node concept="37vLTw" id="1kttznBevmY" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBevmu" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="1kttznBevmZ" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBevmw" resolve="isRight" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1kttznBeJzu" role="3cqZAp">
                  <node concept="2OqwBi" id="1kttznBeJzv" role="3clFbG">
                    <node concept="37vLTw" id="1kttznBeJzw" role="2Oq$k0">
                      <ref role="3cqZAo" node="1kttznBezyG" resolve="candidates" />
                    </node>
                    <node concept="TSZUe" id="1kttznBeJzx" role="2OqNvi">
                      <node concept="1PxgMI" id="1kttznBeJI2" role="25WWJ7">
                        <node concept="chp4Y" id="714IaVdH14L" role="3oSUPX">
                          <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                        </node>
                        <node concept="37vLTw" id="1kttznBeJI3" role="1m5AlR">
                          <ref role="3cqZAo" node="1kttznBevm$" resolve="sideExpr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1kttznBoBIs" role="3cqZAp">
                  <node concept="3clFbT" id="1kttznBoBRj" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="1kttznBevnd" role="3clFbw">
                <ref role="37wK5l" node="4c9ExjQnylE" resolve="isBadPriority" />
                <node concept="37vLTw" id="1kttznBevne" role="37wK5m">
                  <ref role="3cqZAo" node="1kttznBevmP" resolve="sideChild" />
                </node>
                <node concept="37vLTw" id="1kttznBevnf" role="37wK5m">
                  <ref role="3cqZAo" node="1kttznBevmu" resolve="node" />
                </node>
                <node concept="37vLTw" id="1kttznBevng" role="37wK5m">
                  <ref role="3cqZAo" node="1kttznBevmw" resolve="isRight" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1kttznBoCAX" role="3cqZAp">
          <node concept="3clFbT" id="1kttznBoCJr" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1kttznBeuyE" role="jymVt" />
    <node concept="2YIFZL" id="1kttznBf4q7" role="jymVt">
      <property role="TrG5h" value="checkOperationParentWRTPriority" />
      <node concept="10P_77" id="1kttznBovEq" role="3clF45" />
      <node concept="3Tm6S6" id="1kttznBf4q9" role="1B3o_S" />
      <node concept="3clFbS" id="1kttznBf4qa" role="3clF47">
        <node concept="3clFbJ" id="1kttznBf4qb" role="3cqZAp">
          <node concept="3clFbS" id="1kttznBf4qc" role="3clFbx">
            <node concept="3cpWs6" id="1kttznBf4qd" role="3cqZAp">
              <node concept="3clFbT" id="1kttznBowcC" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1kttznBf4qf" role="3clFbw">
            <node concept="2OqwBi" id="1kttznBf4qg" role="3uHU7B">
              <node concept="37vLTw" id="1kttznBf4qh" role="2Oq$k0">
                <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
              </node>
              <node concept="1mfA1w" id="1kttznBf4qi" role="2OqNvi" />
            </node>
            <node concept="10Nm6u" id="1kttznBf4qj" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbJ" id="1kttznBf4qk" role="3cqZAp">
          <node concept="3clFbS" id="1kttznBf4ql" role="3clFbx">
            <node concept="3cpWs8" id="1kttznBf4qm" role="3cqZAp">
              <node concept="3cpWsn" id="1kttznBf4qn" role="3cpWs9">
                <property role="TrG5h" value="parent" />
                <node concept="3Tqbb2" id="1kttznBf4qo" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
                <node concept="1PxgMI" id="1kttznBf4qp" role="33vP2m">
                  <node concept="chp4Y" id="3Sv$YXXuW7L" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                  </node>
                  <node concept="2OqwBi" id="1kttznBf4qq" role="1m5AlR">
                    <node concept="37vLTw" id="1kttznBf4qr" role="2Oq$k0">
                      <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                    </node>
                    <node concept="1mfA1w" id="1kttznBf4qs" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1kttznBf4qt" role="3cqZAp">
              <node concept="3cpWsn" id="1kttznBf4qu" role="3cpWs9">
                <property role="TrG5h" value="isRight" />
                <node concept="10P_77" id="1kttznBf4qv" role="1tU5fm" />
                <node concept="3clFbT" id="1kttznBf4qw" role="33vP2m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1kttznBf4qx" role="3cqZAp">
              <node concept="3clFbS" id="1kttznBf4qy" role="3clFbx">
                <node concept="3clFbF" id="1kttznBf4qz" role="3cqZAp">
                  <node concept="37vLTI" id="1kttznBf4q$" role="3clFbG">
                    <node concept="3clFbT" id="1kttznBf4q_" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="1kttznBf4qA" role="37vLTJ">
                      <ref role="3cqZAo" node="1kttznBf4qu" resolve="isRight" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="1kttznBf4qB" role="3clFbw">
                <node concept="37vLTw" id="1kttznBf4qC" role="3uHU7w">
                  <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                </node>
                <node concept="2OqwBi" id="1kttznBf4qD" role="3uHU7B">
                  <node concept="37vLTw" id="1kttznBf4qE" role="2Oq$k0">
                    <ref role="3cqZAo" node="1kttznBf4qn" resolve="parent" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXX$CtH" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="1kttznBf4qG" role="3eNLev">
                <node concept="3clFbS" id="1kttznBf4qH" role="3eOfB_">
                  <node concept="3clFbF" id="1kttznBf4qI" role="3cqZAp">
                    <node concept="37vLTI" id="1kttznBf4qJ" role="3clFbG">
                      <node concept="3clFbT" id="1kttznBf4qK" role="37vLTx">
                        <property role="3clFbU" value="false" />
                      </node>
                      <node concept="37vLTw" id="1kttznBf4qL" role="37vLTJ">
                        <ref role="3cqZAo" node="1kttznBf4qu" resolve="isRight" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1kttznBf4qM" role="3eO9$A">
                  <node concept="37vLTw" id="1kttznBf4qN" role="3uHU7w">
                    <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                  </node>
                  <node concept="2OqwBi" id="1kttznBf4qO" role="3uHU7B">
                    <node concept="37vLTw" id="1kttznBf4qP" role="2Oq$k0">
                      <ref role="3cqZAo" node="1kttznBf4qn" resolve="parent" />
                    </node>
                    <node concept="3TrEf2" id="3Sv$YXX$CNs" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1kttznBf4qR" role="3cqZAp">
              <node concept="3clFbS" id="1kttznBf4qS" role="3clFbx">
                <node concept="3clFbF" id="1kttznBf4qT" role="3cqZAp">
                  <node concept="2YIFZM" id="1kttznBf4qU" role="3clFbG">
                    <ref role="37wK5l" node="4c9ExjQnykO" resolve="rotateTree" />
                    <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                    <node concept="37vLTw" id="1kttznBf4qV" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="1kttznBf4qW" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBf4qn" resolve="parent" />
                    </node>
                    <node concept="37vLTw" id="1kttznBf4qX" role="37wK5m">
                      <ref role="3cqZAo" node="1kttznBf4qu" resolve="isRight" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1kttznBfiyG" role="3cqZAp">
                  <node concept="2OqwBi" id="1kttznBfiyH" role="3clFbG">
                    <node concept="37vLTw" id="1kttznBfiyI" role="2Oq$k0">
                      <ref role="3cqZAo" node="1kttznBf5X1" resolve="candidates" />
                    </node>
                    <node concept="TSZUe" id="1kttznBfiyJ" role="2OqNvi">
                      <node concept="37vLTw" id="1kttznBfiHx" role="25WWJ7">
                        <ref role="3cqZAo" node="1kttznBf4qn" resolve="parent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1kttznBowpB" role="3cqZAp">
                  <node concept="3clFbT" id="1kttznBowu6" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="1kttznBf4r3" role="3clFbw">
                <ref role="37wK5l" node="4c9ExjQnylE" resolve="isBadPriority" />
                <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                <node concept="37vLTw" id="1kttznBf4r4" role="37wK5m">
                  <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                </node>
                <node concept="37vLTw" id="1kttznBf4r5" role="37wK5m">
                  <ref role="3cqZAo" node="1kttznBf4qn" resolve="parent" />
                </node>
                <node concept="37vLTw" id="1kttznBf4r6" role="37wK5m">
                  <ref role="3cqZAo" node="1kttznBf4qu" resolve="isRight" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1kttznBoxeK" role="3cqZAp">
              <node concept="3clFbT" id="1kttznBoxmG" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1kttznBf4r7" role="3clFbw">
            <node concept="2OqwBi" id="1kttznBf4r8" role="2Oq$k0">
              <node concept="37vLTw" id="1kttznBf4r9" role="2Oq$k0">
                <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
              </node>
              <node concept="1mfA1w" id="1kttznBf4ra" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="1kttznBf4rb" role="2OqNvi">
              <node concept="chp4Y" id="3Sv$YXXuW30" role="cj9EA">
                <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1kttznBf4rd" role="9aQIa">
            <node concept="3clFbS" id="1kttznBf4re" role="9aQI4">
              <node concept="3clFbJ" id="1kttznBf4rf" role="3cqZAp">
                <node concept="3clFbS" id="1kttznBf4rg" role="3clFbx">
                  <node concept="3cpWs8" id="1kttznBf4rh" role="3cqZAp">
                    <node concept="3cpWsn" id="1kttznBf4ri" role="3cpWs9">
                      <property role="TrG5h" value="parent" />
                      <node concept="3Tqbb2" id="1kttznBf4rj" role="1tU5fm">
                        <ref role="ehGHo" to="gpgy:ahlxKSkj$V" resolve="UnaryExpression" />
                      </node>
                      <node concept="1PxgMI" id="1kttznBf4rk" role="33vP2m">
                        <node concept="chp4Y" id="3Sv$YXX$wGD" role="3oSUPX">
                          <ref role="cht4Q" to="gpgy:ahlxKSkj$V" resolve="UnaryExpression" />
                        </node>
                        <node concept="2OqwBi" id="1kttznBf4rl" role="1m5AlR">
                          <node concept="37vLTw" id="1kttznBf4rm" role="2Oq$k0">
                            <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                          </node>
                          <node concept="1mfA1w" id="1kttznBf4rn" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1kttznBf4ro" role="3cqZAp">
                    <node concept="37vLTI" id="1kttznBf4rp" role="3clFbG">
                      <node concept="2OqwBi" id="1kttznBf4rq" role="37vLTJ">
                        <node concept="37vLTw" id="1kttznBf4rr" role="2Oq$k0">
                          <ref role="3cqZAo" node="1kttznBf4ri" resolve="parent" />
                        </node>
                        <node concept="3TrEf2" id="3Sv$YXX$G$B" role="2OqNvi">
                          <ref role="3Tt5mk" to="gpgy:7GyesCpmdwr" resolve="expression" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1kttznBf4rt" role="37vLTx">
                        <node concept="37vLTw" id="1kttznBf4ru" role="2Oq$k0">
                          <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="3Sv$YXX$GRO" role="2OqNvi">
                          <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1kttznBf4rw" role="3cqZAp">
                    <node concept="2OqwBi" id="1kttznBf4rx" role="3clFbG">
                      <node concept="37vLTw" id="1kttznBf4ry" role="2Oq$k0">
                        <ref role="3cqZAo" node="1kttznBf4ri" resolve="parent" />
                      </node>
                      <node concept="1P9Npp" id="1kttznBf4rz" role="2OqNvi">
                        <node concept="37vLTw" id="1kttznBf4r$" role="1P9ThW">
                          <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1kttznBf4r_" role="3cqZAp">
                    <node concept="37vLTI" id="1kttznBf4rA" role="3clFbG">
                      <node concept="37vLTw" id="1kttznBf4rB" role="37vLTx">
                        <ref role="3cqZAo" node="1kttznBf4ri" resolve="parent" />
                      </node>
                      <node concept="2OqwBi" id="1kttznBf4rC" role="37vLTJ">
                        <node concept="37vLTw" id="1kttznBf4rD" role="2Oq$k0">
                          <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="3Sv$YXX$Gk6" role="2OqNvi">
                          <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1kttznBf4rF" role="3clFbw">
                  <node concept="2OqwBi" id="1kttznBf4rG" role="2Oq$k0">
                    <node concept="37vLTw" id="1kttznBf4rH" role="2Oq$k0">
                      <ref role="3cqZAo" node="1kttznBf4t5" resolve="node" />
                    </node>
                    <node concept="1mfA1w" id="1kttznBf4rI" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="1kttznBf4rJ" role="2OqNvi">
                    <node concept="chp4Y" id="3Sv$YXX$wBS" role="cj9EA">
                      <ref role="cht4Q" to="gpgy:ahlxKSkj$V" resolve="UnaryExpression" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1kttznBf4sW" role="9aQIa">
                  <node concept="3clFbS" id="1kttznBf4sX" role="9aQI4">
                    <node concept="3cpWs6" id="1kttznBf4sY" role="3cqZAp">
                      <node concept="3clFbT" id="1kttznBowBa" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1kttznBowUF" role="3cqZAp">
                <node concept="3clFbT" id="1kttznBox1n" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1kttznBf4t5" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1kttznBf4t6" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="1kttznBf5X1" role="3clF46">
        <property role="TrG5h" value="candidates" />
        <node concept="_YKpA" id="1kttznBf5X2" role="1tU5fm">
          <node concept="3Tqbb2" id="1kttznBf5X3" role="_ZDj9">
            <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$DuNtjhwEr" role="jymVt" />
    <node concept="2YIFZL" id="4c9ExjQnyj8" role="jymVt">
      <property role="TrG5h" value="getBinOp" />
      <node concept="3Tqbb2" id="4c9ExjQnyj9" role="3clF45">
        <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
      </node>
      <node concept="3Tm1VV" id="4c9ExjQoslX" role="1B3o_S" />
      <node concept="3clFbS" id="4c9ExjQnyjb" role="3clF47">
        <node concept="3cpWs8" id="4c9ExjQnyjc" role="3cqZAp">
          <node concept="3cpWsn" id="4c9ExjQnyjd" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3Tqbb2" id="4c9ExjQnyje" role="1tU5fm" />
            <node concept="2OqwBi" id="4c9ExjQnyjf" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmaV1" role="2Oq$k0">
                <ref role="3cqZAo" node="4c9ExjQnyk0" resolve="expr" />
              </node>
              <node concept="1mfA1w" id="4c9ExjQnyjh" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4c9ExjQnyji" role="3cqZAp">
          <node concept="3clFbS" id="4c9ExjQnyjj" role="3clFbx">
            <node concept="3cpWs6" id="4c9ExjQnyjk" role="3cqZAp">
              <node concept="10Nm6u" id="4c9ExjQnyjl" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="4c9ExjQnyjm" role="3clFbw">
            <node concept="2OqwBi" id="4c9ExjQnyjn" role="3fr31v">
              <node concept="37vLTw" id="3GM_nagTr$B" role="2Oq$k0">
                <ref role="3cqZAo" node="4c9ExjQnyjd" resolve="parent" />
              </node>
              <node concept="1mIQ4w" id="4c9ExjQnyjp" role="2OqNvi">
                <node concept="chp4Y" id="3Sv$YXXvTdc" role="cj9EA">
                  <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4c9ExjQnyjr" role="3cqZAp">
          <node concept="3cpWsn" id="4c9ExjQnyjs" role="3cpWs9">
            <property role="TrG5h" value="parentExpr" />
            <node concept="3Tqbb2" id="4c9ExjQnyjt" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
            </node>
            <node concept="1PxgMI" id="4c9ExjQnyju" role="33vP2m">
              <node concept="chp4Y" id="3Sv$YXXvQuc" role="3oSUPX">
                <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
              </node>
              <node concept="37vLTw" id="3GM_nagTz79" role="1m5AlR">
                <ref role="3cqZAo" node="4c9ExjQnyjd" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4c9ExjQnyjw" role="3cqZAp">
          <node concept="3cpWsn" id="4c9ExjQnyjx" role="3cpWs9">
            <property role="TrG5h" value="right" />
            <node concept="10P_77" id="4c9ExjQnyjy" role="1tU5fm" />
            <node concept="1Wc70l" id="4c9ExjQnyjz" role="33vP2m">
              <node concept="3clFbC" id="4c9ExjQnyj$" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxgmOEC" role="3uHU7w">
                  <ref role="3cqZAo" node="4c9ExjQnyk0" resolve="expr" />
                </node>
                <node concept="2OqwBi" id="4c9ExjQnyjA" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTzKN" role="2Oq$k0">
                    <ref role="3cqZAo" node="4c9ExjQnyjs" resolve="parentExpr" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXw6sd" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgm6LS" role="3uHU7B">
                <ref role="3cqZAo" node="4c9ExjQnyk2" resolve="toRight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4c9ExjQnyjE" role="3cqZAp">
          <node concept="3cpWsn" id="4c9ExjQnyjF" role="3cpWs9">
            <property role="TrG5h" value="left" />
            <node concept="10P_77" id="4c9ExjQnyjG" role="1tU5fm" />
            <node concept="1Wc70l" id="4c9ExjQnyjH" role="33vP2m">
              <node concept="3clFbC" id="4c9ExjQnyjI" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxgmC6l" role="3uHU7w">
                  <ref role="3cqZAo" node="4c9ExjQnyk0" resolve="expr" />
                </node>
                <node concept="2OqwBi" id="4c9ExjQnyjK" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTvmy" role="2Oq$k0">
                    <ref role="3cqZAo" node="4c9ExjQnyjs" resolve="parentExpr" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXw6MY" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="4c9ExjQnyjN" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgmzpa" role="3fr31v">
                  <ref role="3cqZAo" node="4c9ExjQnyk2" resolve="toRight" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4c9ExjQnyjP" role="3cqZAp">
          <node concept="3clFbS" id="4c9ExjQnyjQ" role="3clFbx">
            <node concept="3cpWs6" id="4c9ExjQnyjR" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTw4k" role="3cqZAk">
                <ref role="3cqZAo" node="4c9ExjQnyjs" resolve="parentExpr" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4c9ExjQnyjT" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTulz" role="3uHU7w">
              <ref role="3cqZAo" node="4c9ExjQnyjF" resolve="left" />
            </node>
            <node concept="37vLTw" id="3GM_nagTx3x" role="3uHU7B">
              <ref role="3cqZAo" node="4c9ExjQnyjx" resolve="right" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4c9ExjQnyjW" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqysqKg" role="3cqZAk">
            <ref role="37wK5l" node="4c9ExjQnyj8" resolve="getBinOp" />
            <node concept="37vLTw" id="3GM_nagTzNl" role="37wK5m">
              <ref role="3cqZAo" node="4c9ExjQnyjs" resolve="parentExpr" />
            </node>
            <node concept="37vLTw" id="2BHiRxglyIC" role="37wK5m">
              <ref role="3cqZAo" node="4c9ExjQnyk2" resolve="toRight" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4c9ExjQnyk0" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3Tqbb2" id="4c9ExjQnyk1" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
        </node>
      </node>
      <node concept="37vLTG" id="4c9ExjQnyk2" role="3clF46">
        <property role="TrG5h" value="toRight" />
        <node concept="10P_77" id="4c9ExjQnyk3" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="4c9ExjQnykO" role="jymVt">
      <property role="TrG5h" value="rotateTree" />
      <node concept="3Tm1VV" id="4c9ExjQnykP" role="1B3o_S" />
      <node concept="3cqZAl" id="4c9ExjQnykQ" role="3clF45" />
      <node concept="37vLTG" id="4c9ExjQnykR" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="4c9ExjQnykS" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="4c9ExjQnykT" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="4c9ExjQnykU" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="4c9ExjQnykV" role="3clF46">
        <property role="TrG5h" value="isRight" />
        <node concept="10P_77" id="4c9ExjQnykW" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4c9ExjQnykX" role="3clF47">
        <node concept="3cpWs8" id="4c9ExjQnykY" role="3cqZAp">
          <node concept="3cpWsn" id="4c9ExjQnykZ" role="3cpWs9">
            <property role="TrG5h" value="backsideExpr" />
            <node concept="3Tqbb2" id="4c9ExjQnyl0" role="1tU5fm">
              <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
            </node>
            <node concept="3K4zz7" id="4c9ExjQnyl1" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgm7Zj" role="3K4Cdx">
                <ref role="3cqZAo" node="4c9ExjQnykV" resolve="isRight" />
              </node>
              <node concept="2OqwBi" id="4c9ExjQnyl3" role="3K4E3e">
                <node concept="37vLTw" id="2BHiRxgm_6S" role="2Oq$k0">
                  <ref role="3cqZAo" node="4c9ExjQnykR" resolve="child" />
                </node>
                <node concept="3TrEf2" id="3Sv$YXXw4na" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                </node>
              </node>
              <node concept="2OqwBi" id="4c9ExjQnyl6" role="3K4GZi">
                <node concept="37vLTw" id="2BHiRxgm7dt" role="2Oq$k0">
                  <ref role="3cqZAo" node="4c9ExjQnykR" resolve="child" />
                </node>
                <node concept="3TrEf2" id="3Sv$YXXw4Tz" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4c9ExjQnyl9" role="3cqZAp">
          <node concept="2OqwBi" id="4c9ExjQnyla" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglqNO" role="2Oq$k0">
              <ref role="3cqZAo" node="4c9ExjQnykR" resolve="child" />
            </node>
            <node concept="3YRAZt" id="4c9ExjQnylc" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="4c9ExjQnyld" role="3cqZAp">
          <node concept="2OqwBi" id="4c9ExjQnyle" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgh9ZU" role="2Oq$k0">
              <ref role="3cqZAo" node="4c9ExjQnykT" resolve="parent" />
            </node>
            <node concept="1P9Npp" id="4c9ExjQnylg" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxgme2E" role="1P9ThW">
                <ref role="3cqZAo" node="4c9ExjQnykR" resolve="child" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6XUZIeIg6Fx" role="3cqZAp">
          <node concept="3clFbS" id="6XUZIeIg6Fz" role="3clFbx">
            <node concept="3clFbF" id="4c9ExjQnyli" role="3cqZAp">
              <node concept="2OqwBi" id="4c9ExjQnylj" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTtQM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4c9ExjQnykZ" resolve="backsideExpr" />
                </node>
                <node concept="1P9Npp" id="4c9ExjQnyll" role="2OqNvi">
                  <node concept="37vLTw" id="2BHiRxgm8xv" role="1P9ThW">
                    <ref role="3cqZAo" node="4c9ExjQnykT" resolve="parent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4c9ExjQnyln" role="3cqZAp">
              <node concept="37vLTw" id="2BHiRxgm$82" role="3clFbw">
                <ref role="3cqZAo" node="4c9ExjQnykV" resolve="isRight" />
              </node>
              <node concept="3clFbS" id="4c9ExjQnylp" role="3clFbx">
                <node concept="3clFbF" id="4c9ExjQnylq" role="3cqZAp">
                  <node concept="2OqwBi" id="4c9ExjQnylr" role="3clFbG">
                    <node concept="2OqwBi" id="4c9ExjQnyls" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxgm8kR" role="2Oq$k0">
                        <ref role="3cqZAo" node="4c9ExjQnykT" resolve="parent" />
                      </node>
                      <node concept="3TrEf2" id="3Sv$YXXw5qX" role="2OqNvi">
                        <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                      </node>
                    </node>
                    <node concept="2oxUTD" id="4c9ExjQnylv" role="2OqNvi">
                      <node concept="37vLTw" id="3GM_nagT_1f" role="2oxUTC">
                        <ref role="3cqZAo" node="4c9ExjQnykZ" resolve="backsideExpr" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4c9ExjQnylx" role="9aQIa">
                <node concept="3clFbS" id="4c9ExjQnyly" role="9aQI4">
                  <node concept="3clFbF" id="4c9ExjQnylz" role="3cqZAp">
                    <node concept="2OqwBi" id="4c9ExjQnyl$" role="3clFbG">
                      <node concept="2OqwBi" id="4c9ExjQnyl_" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxglL5G" role="2Oq$k0">
                          <ref role="3cqZAo" node="4c9ExjQnykT" resolve="parent" />
                        </node>
                        <node concept="3TrEf2" id="3Sv$YXXw5EK" role="2OqNvi">
                          <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                        </node>
                      </node>
                      <node concept="2oxUTD" id="4c9ExjQnylC" role="2OqNvi">
                        <node concept="37vLTw" id="3GM_nagTutz" role="2oxUTC">
                          <ref role="3cqZAo" node="4c9ExjQnykZ" resolve="backsideExpr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6XUZIeIg7aq" role="3clFbw">
            <node concept="10Nm6u" id="6XUZIeIg7gC" role="3uHU7w" />
            <node concept="37vLTw" id="6XUZIeIg6TO" role="3uHU7B">
              <ref role="3cqZAo" node="4c9ExjQnykZ" resolve="backsideExpr" />
            </node>
          </node>
          <node concept="9aQIb" id="6XUZIeIgaSl" role="9aQIa">
            <node concept="3clFbS" id="6XUZIeIgaSm" role="9aQI4">
              <node concept="3clFbJ" id="6XUZIeIgb0s" role="3cqZAp">
                <node concept="37vLTw" id="6XUZIeIgbcf" role="3clFbw">
                  <ref role="3cqZAo" node="4c9ExjQnykV" resolve="isRight" />
                </node>
                <node concept="3clFbS" id="6XUZIeIgb0u" role="3clFbx">
                  <node concept="3clFbF" id="6XUZIeIgeFd" role="3cqZAp">
                    <node concept="2OqwBi" id="6XUZIeIgmzF" role="3clFbG">
                      <node concept="2OqwBi" id="6XUZIeIgikl" role="2Oq$k0">
                        <node concept="37vLTw" id="6XUZIeIgeFc" role="2Oq$k0">
                          <ref role="3cqZAo" node="4c9ExjQnykR" resolve="child" />
                        </node>
                        <node concept="3TrEf2" id="3Sv$YXXw5Uz" role="2OqNvi">
                          <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                        </node>
                      </node>
                      <node concept="2oxUTD" id="6XUZIeIgqqg" role="2OqNvi">
                        <node concept="37vLTw" id="6XUZIeIgqCd" role="2oxUTC">
                          <ref role="3cqZAo" node="4c9ExjQnykT" resolve="parent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="6XUZIeIgub1" role="9aQIa">
                  <node concept="3clFbS" id="6XUZIeIgub2" role="9aQI4">
                    <node concept="3clFbF" id="6XUZIeIgubH" role="3cqZAp">
                      <node concept="2OqwBi" id="6XUZIeIgubI" role="3clFbG">
                        <node concept="2OqwBi" id="6XUZIeIgubJ" role="2Oq$k0">
                          <node concept="37vLTw" id="6XUZIeIgubK" role="2Oq$k0">
                            <ref role="3cqZAo" node="4c9ExjQnykR" resolve="child" />
                          </node>
                          <node concept="3TrEf2" id="3Sv$YXXw6bo" role="2OqNvi">
                            <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                          </node>
                        </node>
                        <node concept="2oxUTD" id="6XUZIeIgubM" role="2OqNvi">
                          <node concept="37vLTw" id="6XUZIeIgubN" role="2oxUTC">
                            <ref role="3cqZAo" node="4c9ExjQnykT" resolve="parent" />
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
    <node concept="2YIFZL" id="4c9ExjQnylE" role="jymVt">
      <property role="TrG5h" value="isBadPriority" />
      <node concept="3Tm1VV" id="4c9ExjQnylF" role="1B3o_S" />
      <node concept="10P_77" id="4c9ExjQnylG" role="3clF45" />
      <node concept="37vLTG" id="4c9ExjQnylH" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="4c9ExjQnylI" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="4c9ExjQnylJ" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="4c9ExjQnylK" role="1tU5fm">
          <ref role="ehGHo" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
        </node>
      </node>
      <node concept="37vLTG" id="4c9ExjQnylL" role="3clF46">
        <property role="TrG5h" value="isRight" />
        <node concept="10P_77" id="4c9ExjQnylM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4c9ExjQnylN" role="3clF47">
        <node concept="3cpWs6" id="4c9ExjQnylO" role="3cqZAp">
          <node concept="22lmx$" id="4c9ExjQnylP" role="3cqZAk">
            <node concept="3eOVzh" id="4c9ExjQnylQ" role="3uHU7B">
              <node concept="2OqwBi" id="1653mnvBNGi" role="3uHU7w">
                <node concept="2OqwBi" id="1653mnvBNGj" role="2Oq$k0">
                  <node concept="2yIwOk" id="2eXSyKpuDeQ" role="2OqNvi" />
                  <node concept="37vLTw" id="2BHiRxglPhH" role="2Oq$k0">
                    <ref role="3cqZAo" node="4c9ExjQnylJ" resolve="parent" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3Sv$YXXv63q" role="2OqNvi">
                  <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
                </node>
              </node>
              <node concept="2OqwBi" id="1653mnvBfFD" role="3uHU7B">
                <node concept="2OqwBi" id="1653mnvBfFE" role="2Oq$k0">
                  <node concept="2yIwOk" id="2eXSyKpuDeR" role="2OqNvi" />
                  <node concept="37vLTw" id="2BHiRxgmu3B" role="2Oq$k0">
                    <ref role="3cqZAo" node="4c9ExjQnylH" resolve="child" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3Sv$YXXv1YE" role="2OqNvi">
                  <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="3Sv$YXXvGbM" role="3uHU7w">
              <node concept="1Wc70l" id="4c9ExjQnylY" role="1eOMHV">
                <node concept="37vLTw" id="2BHiRxglt8F" role="3uHU7B">
                  <ref role="3cqZAo" node="4c9ExjQnylL" resolve="isRight" />
                </node>
                <node concept="3clFbC" id="6OI2yc2gRk" role="3uHU7w">
                  <node concept="2OqwBi" id="6OI2yc2hRz" role="3uHU7w">
                    <node concept="2OqwBi" id="6OI2yc2hR$" role="2Oq$k0">
                      <node concept="2yIwOk" id="2eXSyKpuDeG" role="2OqNvi" />
                      <node concept="37vLTw" id="2BHiRxgm8Fs" role="2Oq$k0">
                        <ref role="3cqZAo" node="4c9ExjQnylJ" resolve="parent" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="3Sv$YXXvdwO" role="2OqNvi">
                      <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6OI2yc2hiu" role="3uHU7B">
                    <node concept="2OqwBi" id="6OI2yc2hiv" role="2Oq$k0">
                      <node concept="2yIwOk" id="2eXSyKpuDeH" role="2OqNvi" />
                      <node concept="37vLTw" id="2BHiRxghh7R" role="2Oq$k0">
                        <ref role="3cqZAo" node="4c9ExjQnylH" resolve="child" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="3Sv$YXXvaah" role="2OqNvi">
                      <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
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
  <node concept="24kQdi" id="3Sv$YXXwwf$">
    <ref role="1XX52x" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
    <node concept="3EZMnI" id="6ixVQjdAQsJ" role="2wV5jI">
      <node concept="1HlG4h" id="VufYxgc$ap" role="3EZMnx">
        <ref role="1ERwB7" to="tpen:6ixVQjdTURD" resolve="DeleteIncompleteLeftParen" />
        <node concept="1HfYo3" id="VufYxgc$ar" role="1HlULh">
          <node concept="3TQlhw" id="VufYxgc$at" role="1Hhtcw">
            <node concept="3clFbS" id="VufYxgc$av" role="2VODD2">
              <node concept="3cpWs8" id="VufYxgnneZ" role="3cqZAp">
                <node concept="3cpWsn" id="VufYxgnnf0" role="3cpWs9">
                  <property role="TrG5h" value="buffer" />
                  <node concept="3uibUv" id="VufYxgnneY" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
                  </node>
                  <node concept="2ShNRf" id="VufYxgnnf1" role="33vP2m">
                    <node concept="1pGfFk" id="VufYxgnnf2" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.&lt;init&gt;(java.lang.String)" resolve="StringBuffer" />
                      <node concept="Xl_RD" id="VufYxh0Pjx" role="37wK5m">
                        <property role="Xl_RC" value="(" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Dw8fO" id="VufYxgnqs8" role="3cqZAp">
                <node concept="3clFbS" id="VufYxgnqsb" role="2LFqv$">
                  <node concept="3clFbF" id="VufYxgnF$v" role="3cqZAp">
                    <node concept="2OqwBi" id="VufYxgnHib" role="3clFbG">
                      <node concept="37vLTw" id="VufYxgnF$u" role="2Oq$k0">
                        <ref role="3cqZAo" node="VufYxgnnf0" resolve="buffer" />
                      </node>
                      <node concept="liA8E" id="VufYxgnJyK" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                        <node concept="Xl_RD" id="VufYxgnLdq" role="37wK5m">
                          <property role="Xl_RC" value="(" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="VufYxgnqse" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="VufYxgns2M" role="1tU5fm" />
                  <node concept="3cmrfG" id="VufYxgnwJa" role="33vP2m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3eOVzh" id="VufYxgn$wq" role="1Dwp0S">
                  <node concept="2OqwBi" id="VufYxgn_sa" role="3uHU7w">
                    <node concept="pncrf" id="VufYxgn$wz" role="2Oq$k0" />
                    <node concept="3TrcHB" id="VufYxh0JEC" role="2OqNvi">
                      <ref role="3TsBF5" to="gpgy:VufYxh0_nI" resolve="count" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="VufYxgnyl$" role="3uHU7B">
                    <ref role="3cqZAo" node="VufYxgnqse" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="VufYxgnDTZ" role="1Dwrff">
                  <node concept="37vLTw" id="VufYxgnDU1" role="2$L3a6">
                    <ref role="3cqZAo" node="VufYxgnqse" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="VufYxgnQqO" role="3cqZAp">
                <node concept="2OqwBi" id="VufYxgnS9W" role="3cqZAk">
                  <node concept="37vLTw" id="VufYxgnQqQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="VufYxgnnf0" resolve="buffer" />
                  </node>
                  <node concept="liA8E" id="VufYxgnT28" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuffer.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="VufYxgcLYk" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
      <node concept="2SsqMj" id="6ixVQjdASKw" role="3EZMnx" />
      <node concept="l2Vlx" id="6ixVQjdAQsM" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="6ixVQjdTURD">
    <property role="TrG5h" value="DeleteIncompleteLeftParen" />
    <ref role="1h_SK9" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
    <node concept="1hA7zw" id="6ixVQjdTURQ" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="6ixVQjdTURR" role="1hA7z_">
        <node concept="3clFbS" id="6ixVQjdTURS" role="2VODD2">
          <node concept="3cpWs8" id="VufYxgK0Vg" role="3cqZAp">
            <node concept="3cpWsn" id="VufYxgK0Vh" role="3cpWs9">
              <property role="TrG5h" value="paren" />
              <node concept="3Tqbb2" id="VufYxgK0Vb" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
              </node>
              <node concept="2OqwBi" id="VufYxgK0Vi" role="33vP2m">
                <node concept="1PxgMI" id="VufYxgK0Vj" role="2Oq$k0">
                  <node concept="2OqwBi" id="VufYxgK0Vk" role="1m5AlR">
                    <node concept="0IXxy" id="VufYxgK0Vl" role="2Oq$k0" />
                    <node concept="1mfA1w" id="VufYxgK0Vm" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="3Sv$YXXwygf" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                  </node>
                </node>
                <node concept="3CFZ6_" id="VufYxgK0Vn" role="2OqNvi">
                  <node concept="3CFYIy" id="3Sv$YXXwyqc" role="3CFYIz">
                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="VufYxgK12K" role="3cqZAp">
            <node concept="3clFbS" id="VufYxgK12N" role="3clFbx">
              <node concept="3clFbF" id="VufYxgK2An" role="3cqZAp">
                <node concept="2OqwBi" id="VufYxgK2GK" role="3clFbG">
                  <node concept="2OqwBi" id="VufYxgK2Ap" role="2Oq$k0">
                    <node concept="1PxgMI" id="VufYxgK2Aq" role="2Oq$k0">
                      <node concept="2OqwBi" id="VufYxgK2Ar" role="1m5AlR">
                        <node concept="0IXxy" id="VufYxgK2As" role="2Oq$k0" />
                        <node concept="1mfA1w" id="VufYxgK2At" role="2OqNvi" />
                      </node>
                      <node concept="chp4Y" id="3Sv$YXXwz4l" role="3oSUPX">
                        <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                      </node>
                    </node>
                    <node concept="3CFZ6_" id="VufYxgK2Au" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXwz7M" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="2oxUTD" id="VufYxgK2Vl" role="2OqNvi">
                    <node concept="10Nm6u" id="VufYxgK2Xa" role="2oxUTC" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="VufYxgK18n" role="3clFbw">
              <node concept="37vLTw" id="VufYxgK13N" role="2Oq$k0">
                <ref role="3cqZAo" node="VufYxgK0Vh" resolve="paren" />
              </node>
              <node concept="2qgKlT" id="3Sv$YXXwyXD" role="2OqNvi">
                <ref role="37wK5l" to="4fey:VufYxgmHsD" resolve="isSingleParen" />
              </node>
            </node>
            <node concept="9aQIb" id="VufYxgK318" role="9aQIa">
              <node concept="3clFbS" id="VufYxgK319" role="9aQI4">
                <node concept="3clFbF" id="VufYxgK331" role="3cqZAp">
                  <node concept="2OqwBi" id="VufYxgK34S" role="3clFbG">
                    <node concept="37vLTw" id="VufYxgK330" role="2Oq$k0">
                      <ref role="3cqZAo" node="VufYxgK0Vh" resolve="paren" />
                    </node>
                    <node concept="2qgKlT" id="3Sv$YXXwzuZ" role="2OqNvi">
                      <ref role="37wK5l" to="4fey:VufYxgmFtR" resolve="decreaseCount" />
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
  <node concept="1h_SRR" id="21iL58aWNwU">
    <property role="TrG5h" value="DeleteIncompleteRightParen" />
    <ref role="1h_SK9" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
    <node concept="1hA7zw" id="21iL58aWNwV" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="21iL58aWNwW" role="1hA7z_">
        <node concept="3clFbS" id="21iL58aWNwX" role="2VODD2">
          <node concept="3cpWs8" id="VufYxh0KhS" role="3cqZAp">
            <node concept="3cpWsn" id="VufYxh0KhT" role="3cpWs9">
              <property role="TrG5h" value="paren" />
              <node concept="3Tqbb2" id="VufYxh0KhU" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
              </node>
              <node concept="2OqwBi" id="VufYxh0KhV" role="33vP2m">
                <node concept="1PxgMI" id="VufYxh0KhW" role="2Oq$k0">
                  <node concept="2OqwBi" id="VufYxh0KhX" role="1m5AlR">
                    <node concept="0IXxy" id="VufYxh0KhY" role="2Oq$k0" />
                    <node concept="1mfA1w" id="VufYxh0KhZ" role="2OqNvi" />
                  </node>
                  <node concept="chp4Y" id="3Sv$YXXwzV2" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                  </node>
                </node>
                <node concept="3CFZ6_" id="VufYxh0Ki0" role="2OqNvi">
                  <node concept="3CFYIy" id="3Sv$YXXw$4S" role="3CFYIz">
                    <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="VufYxh0Ki2" role="3cqZAp">
            <node concept="3clFbS" id="VufYxh0Ki3" role="3clFbx">
              <node concept="3clFbF" id="VufYxh0Ki4" role="3cqZAp">
                <node concept="2OqwBi" id="VufYxh0Ki5" role="3clFbG">
                  <node concept="2OqwBi" id="VufYxh0Ki6" role="2Oq$k0">
                    <node concept="1PxgMI" id="VufYxh0Ki7" role="2Oq$k0">
                      <node concept="2OqwBi" id="VufYxh0Ki8" role="1m5AlR">
                        <node concept="0IXxy" id="VufYxh0Ki9" role="2Oq$k0" />
                        <node concept="1mfA1w" id="VufYxh0Kia" role="2OqNvi" />
                      </node>
                      <node concept="chp4Y" id="3Sv$YXXw$_6" role="3oSUPX">
                        <ref role="cht4Q" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                      </node>
                    </node>
                    <node concept="3CFZ6_" id="VufYxh0Kib" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXw$Cz" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="2oxUTD" id="VufYxh0Kid" role="2OqNvi">
                    <node concept="10Nm6u" id="VufYxh0Kie" role="2oxUTC" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="VufYxh0Kif" role="3clFbw">
              <node concept="37vLTw" id="VufYxh0Kig" role="2Oq$k0">
                <ref role="3cqZAo" node="VufYxh0KhT" resolve="paren" />
              </node>
              <node concept="2qgKlT" id="3Sv$YXXw$uq" role="2OqNvi">
                <ref role="37wK5l" to="4fey:VufYxgmHsD" resolve="isSingleParen" />
              </node>
            </node>
            <node concept="9aQIb" id="VufYxh0Kii" role="9aQIa">
              <node concept="3clFbS" id="VufYxh0Kij" role="9aQI4">
                <node concept="3clFbF" id="VufYxh0Kik" role="3cqZAp">
                  <node concept="2OqwBi" id="VufYxh0Kil" role="3clFbG">
                    <node concept="37vLTw" id="VufYxh0Kim" role="2Oq$k0">
                      <ref role="3cqZAo" node="VufYxh0KhT" resolve="paren" />
                    </node>
                    <node concept="2qgKlT" id="3Sv$YXXw$XQ" role="2OqNvi">
                      <ref role="37wK5l" to="4fey:VufYxgmFtR" resolve="decreaseCount" />
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
  <node concept="24kQdi" id="3Sv$YXXw_4v">
    <ref role="1XX52x" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
    <node concept="3EZMnI" id="3Sv$YXXw_4w" role="2wV5jI">
      <node concept="2SsqMj" id="3Sv$YXXw_51" role="3EZMnx" />
      <node concept="1HlG4h" id="3Sv$YXXw_4x" role="3EZMnx">
        <ref role="1ERwB7" node="21iL58aWNwU" resolve="DeleteIncompleteRightParen" />
        <node concept="1HfYo3" id="3Sv$YXXw_4y" role="1HlULh">
          <node concept="3TQlhw" id="3Sv$YXXw_4z" role="1Hhtcw">
            <node concept="3clFbS" id="3Sv$YXXw_4$" role="2VODD2">
              <node concept="3cpWs8" id="3Sv$YXXw_4_" role="3cqZAp">
                <node concept="3cpWsn" id="3Sv$YXXw_4A" role="3cpWs9">
                  <property role="TrG5h" value="buffer" />
                  <node concept="3uibUv" id="3Sv$YXXw_4B" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
                  </node>
                  <node concept="2ShNRf" id="3Sv$YXXw_4C" role="33vP2m">
                    <node concept="1pGfFk" id="3Sv$YXXw_4D" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.&lt;init&gt;(java.lang.String)" resolve="StringBuffer" />
                      <node concept="Xl_RD" id="3Sv$YXXw_4E" role="37wK5m">
                        <property role="Xl_RC" value="(" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Dw8fO" id="3Sv$YXXw_4F" role="3cqZAp">
                <node concept="3clFbS" id="3Sv$YXXw_4G" role="2LFqv$">
                  <node concept="3clFbF" id="3Sv$YXXw_4H" role="3cqZAp">
                    <node concept="2OqwBi" id="3Sv$YXXw_4I" role="3clFbG">
                      <node concept="37vLTw" id="3Sv$YXXw_4J" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Sv$YXXw_4A" resolve="buffer" />
                      </node>
                      <node concept="liA8E" id="3Sv$YXXw_4K" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                        <node concept="Xl_RD" id="3Sv$YXXw_4L" role="37wK5m">
                          <property role="Xl_RC" value="(" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="3Sv$YXXw_4M" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="3Sv$YXXw_4N" role="1tU5fm" />
                  <node concept="3cmrfG" id="3Sv$YXXw_4O" role="33vP2m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3eOVzh" id="3Sv$YXXw_4P" role="1Dwp0S">
                  <node concept="2OqwBi" id="3Sv$YXXw_4Q" role="3uHU7w">
                    <node concept="pncrf" id="3Sv$YXXw_4R" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3Sv$YXXw_4S" role="2OqNvi">
                      <ref role="3TsBF5" to="gpgy:VufYxh0_nI" resolve="count" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3Sv$YXXw_4T" role="3uHU7B">
                    <ref role="3cqZAo" node="3Sv$YXXw_4M" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="3Sv$YXXw_4U" role="1Dwrff">
                  <node concept="37vLTw" id="3Sv$YXXw_4V" role="2$L3a6">
                    <ref role="3cqZAo" node="3Sv$YXXw_4M" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3Sv$YXXw_4W" role="3cqZAp">
                <node concept="2OqwBi" id="3Sv$YXXw_4X" role="3cqZAk">
                  <node concept="37vLTw" id="3Sv$YXXw_4Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Sv$YXXw_4A" resolve="buffer" />
                  </node>
                  <node concept="liA8E" id="3Sv$YXXw_4Z" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuffer.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="3Sv$YXXw_50" role="3F10Kt">
          <property role="Vb096" value="fLwANPn/red" />
        </node>
      </node>
      <node concept="l2Vlx" id="3Sv$YXXw_52" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="gXWCmNl">
    <property role="TrG5h" value="DeleteParenthesisLeft_Action" />
    <ref role="1h_SK9" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
    <node concept="1hA7zw" id="gXWFrnj" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="gXWFrnk" role="1hA7z_">
        <node concept="3clFbS" id="gXWFrnl" role="2VODD2">
          <node concept="3cpWs8" id="6OsDVSPfqTX" role="3cqZAp">
            <node concept="3cpWsn" id="6OsDVSPfqTY" role="3cpWs9">
              <property role="TrG5h" value="unmatchedLeftParens" />
              <node concept="10Oyi0" id="VufYxidZmh" role="1tU5fm" />
              <node concept="3K4zz7" id="VufYxie1$s" role="33vP2m">
                <node concept="2OqwBi" id="VufYxie2yt" role="3K4E3e">
                  <node concept="2OqwBi" id="VufYxie20G" role="2Oq$k0">
                    <node concept="0IXxy" id="VufYxie1RA" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="VufYxie2pO" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXLLxH" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3Sv$YXXPb6i" role="2OqNvi">
                    <ref role="3TsBF5" to="gpgy:VufYxh0_nI" resolve="count" />
                  </node>
                </node>
                <node concept="3cmrfG" id="VufYxie3hm" role="3K4GZi">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="6OsDVSPfqU0" role="3K4Cdx">
                  <node concept="2OqwBi" id="6OsDVSPfqU1" role="2Oq$k0">
                    <node concept="0IXxy" id="6OsDVSPfqU2" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="6OsDVSPfqU3" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXLFry" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="6OsDVSPfqU5" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="VufYxj8edG" role="3cqZAp">
            <node concept="3cpWsn" id="VufYxj8edH" role="3cpWs9">
              <property role="TrG5h" value="unmatchedRightParens" />
              <node concept="10Oyi0" id="VufYxj8edI" role="1tU5fm" />
              <node concept="3K4zz7" id="VufYxj8edJ" role="33vP2m">
                <node concept="2OqwBi" id="VufYxj8edK" role="3K4E3e">
                  <node concept="2OqwBi" id="VufYxj8edL" role="2Oq$k0">
                    <node concept="0IXxy" id="VufYxj8edM" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="VufYxj8edN" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXLLHM" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3Sv$YXXPb_K" role="2OqNvi">
                    <ref role="3TsBF5" to="gpgy:VufYxh0_nI" resolve="count" />
                  </node>
                </node>
                <node concept="3cmrfG" id="VufYxj8edQ" role="3K4GZi">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="VufYxj8edR" role="3K4Cdx">
                  <node concept="2OqwBi" id="VufYxj8edS" role="2Oq$k0">
                    <node concept="0IXxy" id="VufYxj8edT" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="VufYxj8edU" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXLFyI" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="VufYxj8edW" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="VufYxj8e9j" role="3cqZAp" />
          <node concept="3clFbH" id="6OsDVSPfqRW" role="3cqZAp" />
          <node concept="3cpWs8" id="tmPVnxdm5I" role="3cqZAp">
            <node concept="3cpWsn" id="tmPVnxdm5J" role="3cpWs9">
              <property role="TrG5h" value="replacing" />
              <node concept="3Tqbb2" id="tmPVnxdm5o" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="2OqwBi" id="tmPVnxdm5K" role="33vP2m">
                <node concept="0IXxy" id="tmPVnxdm5L" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXLDih" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5bhKPZatTv7" role="3cqZAp">
            <node concept="3clFbS" id="5bhKPZatTv8" role="3clFbx">
              <node concept="3clFbF" id="5bhKPZatTv9" role="3cqZAp">
                <node concept="2OqwBi" id="5bhKPZatTva" role="3clFbG">
                  <node concept="0IXxy" id="5bhKPZatTvb" role="2Oq$k0" />
                  <node concept="3YRAZt" id="5bhKPZatTvc" role="2OqNvi" />
                </node>
              </node>
              <node concept="3cpWs6" id="5bhKPZatTvd" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="5bhKPZatTve" role="3clFbw">
              <node concept="10Nm6u" id="5bhKPZatTvf" role="3uHU7w" />
              <node concept="37vLTw" id="5bhKPZatTvg" role="3uHU7B">
                <ref role="3cqZAo" node="tmPVnxdm5J" resolve="replacing" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5bhKPZatTtm" role="3cqZAp" />
          <node concept="3cpWs8" id="3Sv$YXXLAJ2" role="3cqZAp">
            <node concept="3cpWsn" id="3Sv$YXXLAJ3" role="3cpWs9">
              <property role="TrG5h" value="rightMostNode" />
              <node concept="3Tqbb2" id="3Sv$YXXLAJ4" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="2YIFZM" id="3dIrgk8stn$" role="33vP2m">
                <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                <ref role="37wK5l" node="4c9ExjQnyiB" resolve="findRightmostOrLeftmostLeafExpression" />
                <node concept="37vLTw" id="3Sv$YXXLAJ5" role="37wK5m">
                  <ref role="3cqZAo" node="tmPVnxdm5J" resolve="replacing" />
                </node>
                <node concept="3clFbT" id="3Sv$YXXLAJ6" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="gXWFuCs" role="3cqZAp">
            <node concept="2OqwBi" id="hxiFqEy" role="3clFbG">
              <node concept="0IXxy" id="gXWFuCt" role="2Oq$k0" />
              <node concept="1P9Npp" id="gXWFvfz" role="2OqNvi">
                <node concept="37vLTw" id="tmPVnxdm5N" role="1P9ThW">
                  <ref role="3cqZAo" node="tmPVnxdm5J" resolve="replacing" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tmPVnwJdtE" role="3cqZAp" />
          <node concept="3cpWs8" id="3Sv$YXXLAJ7" role="3cqZAp">
            <node concept="3cpWsn" id="3Sv$YXXLAJ8" role="3cpWs9">
              <property role="TrG5h" value="leftMostNode" />
              <node concept="3Tqbb2" id="3Sv$YXXLAJ9" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="2YIFZM" id="tmPVnwJgcJ" role="33vP2m">
                <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                <ref role="37wK5l" node="4c9ExjQnyiB" resolve="findRightmostOrLeftmostLeafExpression" />
                <node concept="37vLTw" id="3Sv$YXXLAJa" role="37wK5m">
                  <ref role="3cqZAo" node="tmPVnxdm5J" resolve="replacing" />
                </node>
                <node concept="3clFbT" id="3Sv$YXXLAJb" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6im1NnITdKC" role="3cqZAp">
            <node concept="2YIFZM" id="6im1NnITdSd" role="3clFbG">
              <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
              <ref role="37wK5l" node="6im1NnIT8FT" resolve="checkWholeExpressionPriorities" />
              <node concept="37vLTw" id="6im1NnITdWt" role="37wK5m">
                <ref role="3cqZAo" node="tmPVnxdm5J" resolve="replacing" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3dIrgk8syfx" role="3cqZAp" />
          <node concept="3clFbF" id="tmPVny2Ma4" role="3cqZAp">
            <node concept="2YIFZM" id="3dIrgk8DsuX" role="3clFbG">
              <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
              <ref role="37wK5l" node="6ixVQje8nKP" resolve="createUnmatchedRightParenthesis" />
              <node concept="37vLTw" id="3dIrgk8DsuY" role="37wK5m">
                <ref role="3cqZAo" node="3Sv$YXXLAJ3" resolve="rightMostNode" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6OsDVSPfr96" role="3cqZAp">
            <node concept="3clFbS" id="6OsDVSPfr99" role="3clFbx">
              <node concept="1Dw8fO" id="VufYxie3Y0" role="3cqZAp">
                <node concept="3clFbS" id="VufYxie3Y3" role="2LFqv$">
                  <node concept="3clFbF" id="6OsDVSPfren" role="3cqZAp">
                    <node concept="2YIFZM" id="6OsDVSPfrp_" role="3clFbG">
                      <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                      <ref role="37wK5l" node="6ixVQjdTc$l" resolve="createUnmatchedLeftParenthesis" />
                      <node concept="37vLTw" id="6OsDVSPfrs0" role="37wK5m">
                        <ref role="3cqZAo" node="3Sv$YXXLAJ8" resolve="leftMostNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="VufYxie3Y6" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="VufYxie3YD" role="1tU5fm" />
                  <node concept="3cmrfG" id="VufYxie3Z5" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="VufYxie4$2" role="1Dwp0S">
                  <node concept="37vLTw" id="VufYxie4$t" role="3uHU7w">
                    <ref role="3cqZAo" node="6OsDVSPfqTY" resolve="unmatchedLeftParens" />
                  </node>
                  <node concept="37vLTw" id="VufYxie3Zl" role="3uHU7B">
                    <ref role="3cqZAo" node="VufYxie3Y6" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="VufYxie4YO" role="1Dwrff">
                  <node concept="37vLTw" id="VufYxie4YQ" role="2$L3a6">
                    <ref role="3cqZAo" node="VufYxie3Y6" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="VufYxie3TG" role="3clFbw">
              <node concept="3cmrfG" id="VufYxie3TJ" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6OsDVSPfrdA" role="3uHU7B">
                <ref role="3cqZAo" node="6OsDVSPfqTY" resolve="unmatchedLeftParens" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="VufYxj8f24" role="3cqZAp">
            <node concept="3clFbS" id="VufYxj8f25" role="3clFbx">
              <node concept="1Dw8fO" id="VufYxj8f26" role="3cqZAp">
                <node concept="3clFbS" id="VufYxj8f27" role="2LFqv$">
                  <node concept="3clFbF" id="VufYxj8f28" role="3cqZAp">
                    <node concept="2YIFZM" id="VufYxj8f29" role="3clFbG">
                      <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                      <ref role="37wK5l" node="6ixVQje8nKP" resolve="createUnmatchedRightParenthesis" />
                      <node concept="37vLTw" id="VufYxj8f2a" role="37wK5m">
                        <ref role="3cqZAo" node="3Sv$YXXLAJ3" resolve="rightMostNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="VufYxj8f2b" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="VufYxj8f2c" role="1tU5fm" />
                  <node concept="3cmrfG" id="VufYxj8f2d" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="VufYxj8f2e" role="1Dwp0S">
                  <node concept="37vLTw" id="VufYxj8f2f" role="3uHU7w">
                    <ref role="3cqZAo" node="VufYxj8edH" resolve="unmatchedRightParens" />
                  </node>
                  <node concept="37vLTw" id="VufYxj8f2g" role="3uHU7B">
                    <ref role="3cqZAo" node="VufYxj8f2b" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="VufYxj8f2h" role="1Dwrff">
                  <node concept="37vLTw" id="VufYxj8f2i" role="2$L3a6">
                    <ref role="3cqZAo" node="VufYxj8f2b" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="VufYxj8f2j" role="3clFbw">
              <node concept="3cmrfG" id="VufYxj8f2k" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="VufYxj8f2l" role="3uHU7B">
                <ref role="3cqZAo" node="VufYxj8edH" resolve="unmatchedRightParens" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="VufYxj8eXa" role="3cqZAp" />
          <node concept="3clFbF" id="tmPVnwJfO$" role="3cqZAp">
            <node concept="2OqwBi" id="tmPVnwJgrY" role="3clFbG">
              <node concept="37vLTw" id="tmPVnwJgcO" role="2Oq$k0">
                <ref role="3cqZAo" node="3Sv$YXXLAJ8" resolve="leftMostNode" />
              </node>
              <node concept="1OKiuA" id="tmPVnwJgHt" role="2OqNvi">
                <node concept="1Q80Hx" id="tmPVnwJgIi" role="lBI5i" />
                <node concept="2B6iha" id="3pao37Y3Z31" role="lGT1i" />
                <node concept="3cmrfG" id="tmPVnxjktU" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="21iL58eDF4K">
    <property role="TrG5h" value="DeleteParenthesisRight_Action" />
    <ref role="1h_SK9" to="gpgy:3Qd3IVOFNl$" resolve="ParenthesisExpression" />
    <node concept="1hA7zw" id="21iL58eDF4L" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="21iL58eDF4M" role="1hA7z_">
        <node concept="3clFbS" id="21iL58eDF4N" role="2VODD2">
          <node concept="3cpWs8" id="VufYxj8ezr" role="3cqZAp">
            <node concept="3cpWsn" id="VufYxj8ezs" role="3cpWs9">
              <property role="TrG5h" value="unmatchedLeftParens" />
              <node concept="10Oyi0" id="VufYxj8ezt" role="1tU5fm" />
              <node concept="3K4zz7" id="VufYxj8ezu" role="33vP2m">
                <node concept="2OqwBi" id="VufYxj8ezv" role="3K4E3e">
                  <node concept="2OqwBi" id="VufYxj8ezw" role="2Oq$k0">
                    <node concept="0IXxy" id="VufYxj8ezx" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="VufYxj8ezy" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXLMxk" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3Sv$YXXPcz0" role="2OqNvi">
                    <ref role="3TsBF5" to="gpgy:VufYxh0_nI" resolve="count" />
                  </node>
                </node>
                <node concept="3cmrfG" id="VufYxj8ez_" role="3K4GZi">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="VufYxj8ezA" role="3K4Cdx">
                  <node concept="2OqwBi" id="VufYxj8ezB" role="2Oq$k0">
                    <node concept="0IXxy" id="VufYxj8ezC" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="VufYxj8ezD" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXLMq8" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPs" resolve="IncompleteLeftParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="VufYxj8ezF" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="VufYxiRgPf" role="3cqZAp">
            <node concept="3cpWsn" id="VufYxiRgPg" role="3cpWs9">
              <property role="TrG5h" value="unmatchedRightParens" />
              <node concept="10Oyi0" id="VufYxiRgPh" role="1tU5fm" />
              <node concept="3K4zz7" id="VufYxiRgPi" role="33vP2m">
                <node concept="2OqwBi" id="VufYxiRgPj" role="3K4E3e">
                  <node concept="2OqwBi" id="VufYxiRgPk" role="2Oq$k0">
                    <node concept="0IXxy" id="VufYxiRgPl" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="VufYxiRgPm" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXLMHp" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3Sv$YXXPd2u" role="2OqNvi">
                    <ref role="3TsBF5" to="gpgy:VufYxh0_nI" resolve="count" />
                  </node>
                </node>
                <node concept="3cmrfG" id="VufYxiRgPp" role="3K4GZi">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="VufYxiRgPq" role="3K4Cdx">
                  <node concept="2OqwBi" id="VufYxiRgPr" role="2Oq$k0">
                    <node concept="0IXxy" id="VufYxiRgPs" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="VufYxiRgPt" role="2OqNvi">
                      <node concept="3CFYIy" id="3Sv$YXXLG$v" role="3CFYIz">
                        <ref role="3CFYIx" to="gpgy:3Sv$YXXwvPz" resolve="IncompleteRightParen" />
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="VufYxiRgPv" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6OsDVSP8Fak" role="3cqZAp" />
          <node concept="3cpWs8" id="tmPVnx7iC0" role="3cqZAp">
            <node concept="3cpWsn" id="tmPVnx7iC1" role="3cpWs9">
              <property role="TrG5h" value="replacing" />
              <node concept="3Tqbb2" id="tmPVnx7iBY" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="2OqwBi" id="tmPVnx7iC2" role="33vP2m">
                <node concept="0IXxy" id="tmPVnx7iC3" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXLI9I" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5bhKPZatSuf" role="3cqZAp">
            <node concept="3clFbS" id="5bhKPZatSuh" role="3clFbx">
              <node concept="3clFbF" id="5bhKPZatSUl" role="3cqZAp">
                <node concept="2OqwBi" id="5bhKPZatT0L" role="3clFbG">
                  <node concept="0IXxy" id="5bhKPZatSUj" role="2Oq$k0" />
                  <node concept="3YRAZt" id="5bhKPZatTqz" role="2OqNvi" />
                </node>
              </node>
              <node concept="3cpWs6" id="5bhKPZatTsQ" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="5bhKPZatSSU" role="3clFbw">
              <node concept="10Nm6u" id="5bhKPZatSTR" role="3uHU7w" />
              <node concept="37vLTw" id="5bhKPZatSLc" role="3uHU7B">
                <ref role="3cqZAo" node="tmPVnx7iC1" resolve="replacing" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3dIrgk8sB04" role="3cqZAp">
            <node concept="3cpWsn" id="3dIrgk8sB05" role="3cpWs9">
              <property role="TrG5h" value="leftMostNode" />
              <node concept="3Tqbb2" id="3dIrgk8sAZX" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="2YIFZM" id="3dIrgk8sB06" role="33vP2m">
                <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                <ref role="37wK5l" node="4c9ExjQnyiB" resolve="findRightmostOrLeftmostLeafExpression" />
                <node concept="37vLTw" id="3dIrgk8sB07" role="37wK5m">
                  <ref role="3cqZAo" node="tmPVnx7iC1" resolve="replacing" />
                </node>
                <node concept="3clFbT" id="3dIrgk8sB08" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="21iL58eDF7W" role="3cqZAp">
            <node concept="2OqwBi" id="21iL58eDF7X" role="3clFbG">
              <node concept="0IXxy" id="21iL58eDF7Y" role="2Oq$k0" />
              <node concept="1P9Npp" id="21iL58eDF7Z" role="2OqNvi">
                <node concept="37vLTw" id="tmPVnx7iC5" role="1P9ThW">
                  <ref role="3cqZAo" node="tmPVnx7iC1" resolve="replacing" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="tmPVnwJgPF" role="3cqZAp" />
          <node concept="3cpWs8" id="tmPVnwJgSG" role="3cqZAp">
            <node concept="3cpWsn" id="tmPVnwJgSH" role="3cpWs9">
              <property role="TrG5h" value="rightMostNode" />
              <node concept="3Tqbb2" id="tmPVnwJgSI" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="2YIFZM" id="tmPVnwJgSJ" role="33vP2m">
                <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                <ref role="37wK5l" node="4c9ExjQnyiB" resolve="findRightmostOrLeftmostLeafExpression" />
                <node concept="37vLTw" id="tmPVnx7iZH" role="37wK5m">
                  <ref role="3cqZAo" node="tmPVnx7iC1" resolve="replacing" />
                </node>
                <node concept="3clFbT" id="tmPVnwJgSN" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6im1NnITewa" role="3cqZAp">
            <node concept="2YIFZM" id="6im1NnITewb" role="3clFbG">
              <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
              <ref role="37wK5l" node="6im1NnIT8FT" resolve="checkWholeExpressionPriorities" />
              <node concept="37vLTw" id="6im1NnITewc" role="37wK5m">
                <ref role="3cqZAo" node="tmPVnx7iC1" resolve="replacing" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3dIrgk8sAgo" role="3cqZAp" />
          <node concept="3clFbF" id="3dIrgk8sAjy" role="3cqZAp">
            <node concept="2YIFZM" id="3dIrgk8sAjz" role="3clFbG">
              <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
              <ref role="37wK5l" node="6ixVQjdTc$l" resolve="createUnmatchedLeftParenthesis" />
              <node concept="37vLTw" id="3dIrgk8sBac" role="37wK5m">
                <ref role="3cqZAo" node="3dIrgk8sB05" resolve="leftMostNode" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="VufYxj8fV2" role="3cqZAp">
            <node concept="3clFbS" id="VufYxj8fV3" role="3clFbx">
              <node concept="1Dw8fO" id="VufYxj8fV4" role="3cqZAp">
                <node concept="3clFbS" id="VufYxj8fV5" role="2LFqv$">
                  <node concept="3clFbF" id="VufYxj8fV6" role="3cqZAp">
                    <node concept="2YIFZM" id="VufYxj8fV7" role="3clFbG">
                      <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                      <ref role="37wK5l" node="6ixVQjdTc$l" resolve="createUnmatchedLeftParenthesis" />
                      <node concept="37vLTw" id="VufYxj8fV8" role="37wK5m">
                        <ref role="3cqZAo" node="3dIrgk8sB05" resolve="leftMostNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="VufYxj8fV9" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="VufYxj8fVa" role="1tU5fm" />
                  <node concept="3cmrfG" id="VufYxj8fVb" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="VufYxj8fVc" role="1Dwp0S">
                  <node concept="37vLTw" id="VufYxj8fVd" role="3uHU7w">
                    <ref role="3cqZAo" node="VufYxj8ezs" resolve="unmatchedLeftParens" />
                  </node>
                  <node concept="37vLTw" id="VufYxj8fVe" role="3uHU7B">
                    <ref role="3cqZAo" node="VufYxj8fV9" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="VufYxj8fVf" role="1Dwrff">
                  <node concept="37vLTw" id="VufYxj8fVg" role="2$L3a6">
                    <ref role="3cqZAo" node="VufYxj8fV9" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="VufYxj8fVh" role="3clFbw">
              <node concept="3cmrfG" id="VufYxj8fVi" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="VufYxj8fVj" role="3uHU7B">
                <ref role="3cqZAo" node="VufYxj8ezs" resolve="unmatchedLeftParens" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="VufYxiRhBZ" role="3cqZAp">
            <node concept="3clFbS" id="VufYxiRhC0" role="3clFbx">
              <node concept="1Dw8fO" id="VufYxiRhC1" role="3cqZAp">
                <node concept="3clFbS" id="VufYxiRhC2" role="2LFqv$">
                  <node concept="3clFbF" id="6OsDVSP8Fvo" role="3cqZAp">
                    <node concept="2YIFZM" id="6OsDVSP8FHq" role="3clFbG">
                      <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                      <ref role="37wK5l" node="6ixVQje8nKP" resolve="createUnmatchedRightParenthesis" />
                      <node concept="37vLTw" id="6OsDVSP8FHr" role="37wK5m">
                        <ref role="3cqZAo" node="tmPVnwJgSH" resolve="rightMostNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="VufYxiRhC6" role="1Duv9x">
                  <property role="TrG5h" value="i" />
                  <node concept="10Oyi0" id="VufYxiRhC7" role="1tU5fm" />
                  <node concept="3cmrfG" id="VufYxiRhC8" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="VufYxiRhC9" role="1Dwp0S">
                  <node concept="37vLTw" id="VufYxiRhCa" role="3uHU7w">
                    <ref role="3cqZAo" node="VufYxiRgPg" resolve="unmatchedRightParens" />
                  </node>
                  <node concept="37vLTw" id="VufYxiRhCb" role="3uHU7B">
                    <ref role="3cqZAo" node="VufYxiRhC6" resolve="i" />
                  </node>
                </node>
                <node concept="3uNrnE" id="VufYxiRhCc" role="1Dwrff">
                  <node concept="37vLTw" id="VufYxiRhCd" role="2$L3a6">
                    <ref role="3cqZAo" node="VufYxiRhC6" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="VufYxiRhCe" role="3clFbw">
              <node concept="3cmrfG" id="VufYxiRhCf" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="VufYxiRhCg" role="3uHU7B">
                <ref role="3cqZAo" node="VufYxiRgPg" resolve="unmatchedRightParens" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="tmPVnwJgSO" role="3cqZAp">
            <node concept="2OqwBi" id="tmPVnwJgSP" role="3clFbG">
              <node concept="37vLTw" id="tmPVnwJgSQ" role="2Oq$k0">
                <ref role="3cqZAo" node="tmPVnwJgSH" resolve="rightMostNode" />
              </node>
              <node concept="1OKiuA" id="tmPVnwJgSR" role="2OqNvi">
                <node concept="1Q80Hx" id="tmPVnwJgSS" role="lBI5i" />
                <node concept="2B6iha" id="5X9wbI8ZVA8" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
                <node concept="3cmrfG" id="tmPVnxjk_y" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="gAp41ZG">
    <property role="TrG5h" value="BinaryExpression_LeftArgument_Actions" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1h_SK9" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
    <node concept="1hA7zw" id="gAp41ZH" role="1h_SK8">
      <property role="1hHO97" value="replace binary operation with right operand" />
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="gAp41ZM" role="1hA7z_">
        <node concept="3clFbS" id="gAp41ZN" role="2VODD2">
          <node concept="3clFbJ" id="7MsHfaPiDwM" role="3cqZAp">
            <node concept="3clFbS" id="7MsHfaPiDwO" role="3clFbx">
              <node concept="3cpWs6" id="7MsHfaPiEF3" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="7MsHfaPiEh7" role="3clFbw">
              <node concept="2OqwBi" id="7MsHfaPiDMT" role="2Oq$k0">
                <node concept="0IXxy" id="7MsHfaPiDCI" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXMXTO" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                </node>
              </node>
              <node concept="2xy62i" id="7MsHfaPiE_P" role="2OqNvi">
                <node concept="1Q80Hx" id="7MsHfaPiECr" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6o2z4lPksf8" role="3cqZAp">
            <node concept="3clFbS" id="6o2z4lPksfb" role="3clFbx">
              <node concept="3clFbF" id="6o2z4lPkv9Q" role="3cqZAp">
                <node concept="37vLTI" id="3I_1mW26oTG" role="3clFbG">
                  <node concept="2ShNRf" id="3I_1mW26oXX" role="37vLTx">
                    <node concept="3zrR0B" id="3I_1mW26oXz" role="2ShVmc">
                      <node concept="3Tqbb2" id="3I_1mW26oX$" role="3zrR0E">
                        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6o2z4lPkvhG" role="37vLTJ">
                    <node concept="0IXxy" id="6o2z4lPkv9P" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Sv$YXXMY_m" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6o2z4lPkz3g" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="3I_1mW26k$F" role="3clFbw">
              <node concept="2OqwBi" id="39KWzn7Yk3z" role="3fr31v">
                <node concept="2OqwBi" id="39KWzn7Yj$L" role="2Oq$k0">
                  <node concept="2OqwBi" id="3I_1mW26k$I" role="2Oq$k0">
                    <node concept="0IXxy" id="3I_1mW26k$J" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Sv$YXXMY9g" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                    </node>
                  </node>
                  <node concept="2yIwOk" id="39KWzn7YjT9" role="2OqNvi" />
                </node>
                <node concept="3O6GUB" id="39KWzn7Ykxd" role="2OqNvi">
                  <node concept="25Kdxt" id="39KWzn7YkKa" role="3QVz_e">
                    <node concept="35c_gC" id="39KWzn7YkZc" role="25KhWn">
                      <ref role="35c_gD" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="hI95DCx" role="3cqZAp">
            <node concept="3cpWsn" id="hI95DCy" role="3cpWs9">
              <property role="TrG5h" value="rightExpression" />
              <node concept="3Tqbb2" id="hI95DCz" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="2OqwBi" id="hI95DC$" role="33vP2m">
                <node concept="0IXxy" id="hI95DC_" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXMZao" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="gAp5nwT" role="3cqZAp">
            <node concept="2OqwBi" id="hxiFsKf" role="3clFbG">
              <node concept="0IXxy" id="gAp5nxa" role="2Oq$k0" />
              <node concept="1P9Npp" id="gAp5oMI" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagT_gL" role="1P9ThW">
                  <ref role="3cqZAo" node="hI95DCy" resolve="rightExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4GeJt6Pwo8d" role="3cqZAp">
            <node concept="2OqwBi" id="4GeJt6Pwopm" role="3clFbG">
              <node concept="37vLTw" id="4GeJt6Pwo8b" role="2Oq$k0">
                <ref role="3cqZAo" node="hI95DCy" resolve="rightExpression" />
              </node>
              <node concept="1OKiuA" id="4GeJt6PwoxR" role="2OqNvi">
                <node concept="1Q80Hx" id="4GeJt6PwozL" role="lBI5i" />
                <node concept="2B6iha" id="4GeJt6PwoAb" role="lGT1i" />
                <node concept="3cmrfG" id="4GeJt6PwoCC" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="gAp5u0y">
    <property role="TrG5h" value="BinaryExpression_RightArgument_Actions" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1h_SK9" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
    <node concept="1hA7zw" id="gAp5u0z" role="1h_SK8">
      <property role="1hHO97" value="replace binary operation with left operand" />
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="gAp5u0C" role="1hA7z_">
        <node concept="3clFbS" id="gAp5u0D" role="2VODD2">
          <node concept="3clFbJ" id="7MsHfaPiEOT" role="3cqZAp">
            <node concept="3clFbS" id="7MsHfaPiEOU" role="3clFbx">
              <node concept="3cpWs6" id="7MsHfaPiEOV" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="7MsHfaPiEOW" role="3clFbw">
              <node concept="2OqwBi" id="7MsHfaPiEOX" role="2Oq$k0">
                <node concept="0IXxy" id="7MsHfaPiEOY" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXMVqU" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
              <node concept="2xy62i" id="7MsHfaPiEP0" role="2OqNvi">
                <node concept="1Q80Hx" id="7MsHfaPiEP1" role="2xHN3q" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6o2z4lPcPTJ" role="3cqZAp">
            <node concept="3clFbS" id="6o2z4lPcPTM" role="3clFbx">
              <node concept="3clFbF" id="6o2z4lPcS4C" role="3cqZAp">
                <node concept="37vLTI" id="3I_1mW26hA0" role="3clFbG">
                  <node concept="2ShNRf" id="3I_1mW26hEh" role="37vLTx">
                    <node concept="3zrR0B" id="3I_1mW26hDR" role="2ShVmc">
                      <node concept="3Tqbb2" id="3I_1mW26hDS" role="3zrR0E">
                        <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6o2z4lPcScu" role="37vLTJ">
                    <node concept="0IXxy" id="6o2z4lPcS4B" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Sv$YXXMW_o" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6o2z4lPcVrZ" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="3I_1mW26dMU" role="3clFbw">
              <node concept="2OqwBi" id="39KWzn7YpGo" role="3fr31v">
                <node concept="2OqwBi" id="39KWzn7YpdA" role="2Oq$k0">
                  <node concept="2OqwBi" id="3I_1mW26dMY" role="2Oq$k0">
                    <node concept="0IXxy" id="3I_1mW26dMZ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Sv$YXXMVEm" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                    </node>
                  </node>
                  <node concept="2yIwOk" id="39KWzn7YpxY" role="2OqNvi" />
                </node>
                <node concept="3O6GUB" id="39KWzn7Yq6u" role="2OqNvi">
                  <node concept="25Kdxt" id="39KWzn7Yqlr" role="3QVz_e">
                    <node concept="35c_gC" id="39KWzn7Yq$t" role="25KhWn">
                      <ref role="35c_gD" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="hI97EOH" role="3cqZAp">
            <node concept="3cpWsn" id="hI97EOI" role="3cpWs9">
              <property role="TrG5h" value="leftExpression" />
              <node concept="3Tqbb2" id="hI97EOJ" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="2OqwBi" id="hI97EOK" role="33vP2m">
                <node concept="0IXxy" id="hI97EOL" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXMWh0" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="hI97EON" role="3cqZAp">
            <node concept="2OqwBi" id="hI97EOO" role="3clFbG">
              <node concept="0IXxy" id="hI97EOP" role="2Oq$k0" />
              <node concept="1P9Npp" id="hI97EOQ" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagTzFV" role="1P9ThW">
                  <ref role="3cqZAo" node="hI97EOI" resolve="leftExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4GeJt6Ptkm9" role="3cqZAp">
            <node concept="2OqwBi" id="4GeJt6PtkCl" role="3clFbG">
              <node concept="37vLTw" id="4GeJt6Ptkm7" role="2Oq$k0">
                <ref role="3cqZAo" node="hI97EOI" resolve="leftExpression" />
              </node>
              <node concept="1OKiuA" id="4GeJt6PtkKQ" role="2OqNvi">
                <node concept="1Q80Hx" id="4GeJt6PtkMK" role="lBI5i" />
                <node concept="2B6iha" id="4GeJt6PtkSe" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
                <node concept="3cmrfG" id="4GeJt6PtkQk" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="gAom6wT">
    <property role="TrG5h" value="BinaryExpression_Symbol_Actions" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1h_SK9" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
    <node concept="1hA7zw" id="gAomjQs" role="1h_SK8">
      <property role="1hHO97" value="Backspace" />
      <property role="1hAc7j" value="7P1WhNABvta/backspace_action_id" />
      <node concept="1hAIg9" id="gAomjQt" role="1hA7z_">
        <node concept="3clFbS" id="gAomjUb" role="2VODD2">
          <node concept="3cpWs8" id="hYfZQac" role="3cqZAp">
            <node concept="3cpWsn" id="hYfZQad" role="3cpWs9">
              <property role="TrG5h" value="newExpression" />
              <node concept="3K4zz7" id="7MsHfaPlXq5" role="33vP2m">
                <node concept="2OqwBi" id="7MsHfaPlXBf" role="3K4E3e">
                  <node concept="0IXxy" id="7MsHfaPlXtN" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3Sv$YXXMQzX" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7MsHfaPlYex" role="3K4GZi">
                  <node concept="0IXxy" id="7MsHfaPlY2i" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3Sv$YXXMR42" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
                <node concept="3y3z36" id="7MsHfaPlXcq" role="3K4Cdx">
                  <node concept="10Nm6u" id="7MsHfaPlXjf" role="3uHU7w" />
                  <node concept="2OqwBi" id="hYfZQaf" role="3uHU7B">
                    <node concept="0IXxy" id="hYfZQag" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Sv$YXXMQko" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="hYfZQae" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7MsHfaPlYwH" role="3cqZAp">
            <node concept="3cpWsn" id="7MsHfaPlYwI" role="3cpWs9">
              <property role="TrG5h" value="toDelete" />
              <node concept="3Tqbb2" id="7MsHfaPlYwJ" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="3K4zz7" id="7MsHfaPlYwK" role="33vP2m">
                <node concept="2OqwBi" id="7MsHfaPlYwL" role="3K4E3e">
                  <node concept="0IXxy" id="7MsHfaPlYwM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3Sv$YXXMRKZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7MsHfaPlYwO" role="3K4GZi">
                  <node concept="0IXxy" id="7MsHfaPlYwP" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3Sv$YXXMSgU" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
                <node concept="3y3z36" id="7MsHfaPlYwR" role="3K4Cdx">
                  <node concept="10Nm6u" id="7MsHfaPlYwS" role="3uHU7w" />
                  <node concept="2OqwBi" id="7MsHfaPlYwT" role="3uHU7B">
                    <node concept="0IXxy" id="7MsHfaPlYwU" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Sv$YXXMRxq" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7MsHfaPiY1_" role="3cqZAp">
            <node concept="2OqwBi" id="7MsHfaPiYej" role="3clFbw">
              <node concept="37vLTw" id="7MsHfaPlZUJ" role="2Oq$k0">
                <ref role="3cqZAo" node="7MsHfaPlYwI" resolve="toDelete" />
              </node>
              <node concept="2xy62i" id="7MsHfaPiYpj" role="2OqNvi">
                <node concept="1Q80Hx" id="7MsHfaPiYpU" role="2xHN3q" />
              </node>
            </node>
            <node concept="3clFbS" id="7MsHfaPiY1B" role="3clFbx">
              <node concept="3cpWs6" id="7MsHfaPiYUR" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="hYfZQai" role="3cqZAp">
            <node concept="2OqwBi" id="hYfZQaj" role="3clFbG">
              <node concept="0IXxy" id="hYfZQak" role="2Oq$k0" />
              <node concept="1P9Npp" id="hYfZQal" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagTBW_" role="1P9ThW">
                  <ref role="3cqZAo" node="hYfZQad" resolve="newExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4GeJt6PxIGb" role="3cqZAp">
            <node concept="2OqwBi" id="4GeJt6PxITW" role="3clFbG">
              <node concept="37vLTw" id="4GeJt6PxIG9" role="2Oq$k0">
                <ref role="3cqZAo" node="hYfZQad" resolve="newExpression" />
              </node>
              <node concept="1OKiuA" id="4GeJt6PxJ2t" role="2OqNvi">
                <node concept="1Q80Hx" id="4GeJt6PxJ4n" role="lBI5i" />
                <node concept="2B6iha" id="4GeJt6PxJ6L" role="lGT1i" />
                <node concept="3cmrfG" id="4GeJt6PxJ9e" role="3dN3m$">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="7MsHfaPlUol" role="1h_SK8">
      <property role="1hHO97" value="Delete" />
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="7MsHfaPlUom" role="1hA7z_">
        <node concept="3clFbS" id="7MsHfaPlUon" role="2VODD2">
          <node concept="3cpWs8" id="7MsHfaPm00h" role="3cqZAp">
            <node concept="3cpWsn" id="7MsHfaPm00i" role="3cpWs9">
              <property role="TrG5h" value="newExpression" />
              <node concept="3Tqbb2" id="7MsHfaPm00j" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="3K4zz7" id="7MsHfaPm00k" role="33vP2m">
                <node concept="2OqwBi" id="7MsHfaPm00l" role="3K4E3e">
                  <node concept="0IXxy" id="7MsHfaPm00m" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3Sv$YXXMSKB" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7MsHfaPm00o" role="3K4GZi">
                  <node concept="0IXxy" id="7MsHfaPm00p" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3Sv$YXXMTgG" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
                <node concept="3y3z36" id="7MsHfaPm00r" role="3K4Cdx">
                  <node concept="10Nm6u" id="7MsHfaPm00s" role="3uHU7w" />
                  <node concept="2OqwBi" id="7MsHfaPm00t" role="3uHU7B">
                    <node concept="0IXxy" id="7MsHfaPm00u" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Sv$YXXMSx2" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7MsHfaPm00w" role="3cqZAp">
            <node concept="3cpWsn" id="7MsHfaPm00x" role="3cpWs9">
              <property role="TrG5h" value="toDelete" />
              <node concept="3Tqbb2" id="7MsHfaPm00y" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
              </node>
              <node concept="3K4zz7" id="7MsHfaPm00z" role="33vP2m">
                <node concept="2OqwBi" id="7MsHfaPm00$" role="3K4E3e">
                  <node concept="0IXxy" id="7MsHfaPm00_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3Sv$YXXMTMq" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7MsHfaPm00B" role="3K4GZi">
                  <node concept="0IXxy" id="7MsHfaPm00C" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3Sv$YXXMUil" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                  </node>
                </node>
                <node concept="3y3z36" id="7MsHfaPm00E" role="3K4Cdx">
                  <node concept="10Nm6u" id="7MsHfaPm00F" role="3uHU7w" />
                  <node concept="2OqwBi" id="7MsHfaPm00G" role="3uHU7B">
                    <node concept="0IXxy" id="7MsHfaPm00H" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3Sv$YXXMTyP" role="2OqNvi">
                      <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7MsHfaPm00J" role="3cqZAp">
            <node concept="2OqwBi" id="7MsHfaPm00K" role="3clFbw">
              <node concept="37vLTw" id="7MsHfaPm00L" role="2Oq$k0">
                <ref role="3cqZAo" node="7MsHfaPm00x" resolve="toDelete" />
              </node>
              <node concept="2xy62i" id="7MsHfaPm00M" role="2OqNvi">
                <node concept="1Q80Hx" id="7MsHfaPm00N" role="2xHN3q" />
              </node>
            </node>
            <node concept="3clFbS" id="7MsHfaPm00O" role="3clFbx">
              <node concept="3cpWs6" id="7MsHfaPm00P" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="7MsHfaPm00Q" role="3cqZAp">
            <node concept="2OqwBi" id="7MsHfaPm00R" role="3clFbG">
              <node concept="0IXxy" id="7MsHfaPm00S" role="2Oq$k0" />
              <node concept="1P9Npp" id="7MsHfaPm00T" role="2OqNvi">
                <node concept="37vLTw" id="7MsHfaPm00U" role="1P9ThW">
                  <ref role="3cqZAo" node="7MsHfaPm00i" resolve="newExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7MsHfaPm00V" role="3cqZAp">
            <node concept="2OqwBi" id="7MsHfaPm00W" role="3clFbG">
              <node concept="37vLTw" id="7MsHfaPm00X" role="2Oq$k0">
                <ref role="3cqZAo" node="7MsHfaPm00i" resolve="newExpression" />
              </node>
              <node concept="1OKiuA" id="7MsHfaPm00Y" role="2OqNvi">
                <node concept="1Q80Hx" id="7MsHfaPm00Z" role="lBI5i" />
                <node concept="2B6iha" id="7MsHfaPoDVv" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
                <node concept="3cmrfG" id="7MsHfaPm011" role="3dN3m$">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="3Sv$YXXSw3Y">
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="ArrayVariable_Delete" />
    <ref role="1h_SK9" to="gpgy:23XkovWwrcP" resolve="ArrayVariable" />
    <node concept="1hA7zw" id="3Sv$YXXSw42" role="1h_SK8">
      <property role="1hAc7j" value="g_hAxAO/delete_action_id" />
      <node concept="1hAIg9" id="3Sv$YXXSw43" role="1hA7z_">
        <node concept="3clFbS" id="3Sv$YXXSw44" role="2VODD2">
          <node concept="3clFbJ" id="3Sv$YXXSw4g" role="3cqZAp">
            <node concept="2OqwBi" id="3Sv$YXXSweX" role="3clFbw">
              <node concept="0IXxy" id="3Sv$YXXSw4$" role="2Oq$k0" />
              <node concept="2xy62i" id="3Sv$YXXSwK6" role="2OqNvi">
                <node concept="1Q80Hx" id="3Sv$YXXSx1u" role="2xHN3q" />
                <node concept="2TlHUq" id="3Sv$YXXSx3x" role="3a7HXU">
                  <ref role="2TlMyj" node="3Sv$YXXSx0C" resolve="brackets" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3Sv$YXXSw4i" role="3clFbx">
              <node concept="3cpWs6" id="3Sv$YXXSx2m" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbH" id="3Sv$YXXSx2x" role="3cqZAp" />
          <node concept="3cpWs8" id="3Sv$YXXSypT" role="3cqZAp">
            <node concept="3cpWsn" id="3Sv$YXXSypU" role="3cpWs9">
              <property role="TrG5h" value="subscripted" />
              <node concept="3Tqbb2" id="3Sv$YXXSypR" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:7GyesCp9TvJ" resolve="Variable" />
              </node>
              <node concept="2OqwBi" id="3Sv$YXXSypV" role="33vP2m">
                <node concept="0IXxy" id="3Sv$YXXSypW" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXSypX" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:23XkovWwrcQ" resolve="subscripted" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Sv$YXXSx4A" role="3cqZAp">
            <node concept="2OqwBi" id="3Sv$YXXSxe2" role="3clFbG">
              <node concept="0IXxy" id="3Sv$YXXSx4$" role="2Oq$k0" />
              <node concept="1P9Npp" id="3Sv$YXXSxOl" role="2OqNvi">
                <node concept="37vLTw" id="3Sv$YXXSypY" role="1P9ThW">
                  <ref role="3cqZAo" node="3Sv$YXXSypU" resolve="subscripted" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Sv$YXXSytk" role="3cqZAp">
            <node concept="2OqwBi" id="3Sv$YXXSyET" role="3clFbG">
              <node concept="37vLTw" id="3Sv$YXXSyti" role="2Oq$k0">
                <ref role="3cqZAo" node="3Sv$YXXSypU" resolve="subscripted" />
              </node>
              <node concept="1OKiuA" id="3Sv$YXXSz$3" role="2OqNvi">
                <node concept="1Q80Hx" id="3Sv$YXXSz_W" role="lBI5i" />
                <node concept="2B6iha" id="3Sv$YXXSzBO" role="lGT1i">
                  <property role="1lyBwo" value="1S2pyLby17K/last" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3kbdwfdDCak">
    <ref role="aqKnT" to="gpgy:23XkovVW7b7" resolve="DataTypeSpec" />
    <node concept="22hDWg" id="6pYQ4mCjF2e" role="22hAXT">
      <property role="TrG5h" value="AddDefault" />
    </node>
    <node concept="1Qtc8_" id="3kbdwfdDCal" role="IW6Ez">
      <node concept="IWgqT" id="3kbdwfdDCax" role="1Qtc8A">
        <node concept="1hCUdq" id="3kbdwfdDCaz" role="1hCUd6">
          <node concept="3clFbS" id="3kbdwfdDCa_" role="2VODD2">
            <node concept="3clFbF" id="3kbdwfdDCjs" role="3cqZAp">
              <node concept="Xl_RD" id="3kbdwfdDCjr" role="3clFbG">
                <property role="Xl_RC" value=":=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3kbdwfdDCaB" role="IWgqQ">
          <node concept="3clFbS" id="3kbdwfdDCaD" role="2VODD2">
            <node concept="3clFbF" id="3kbdwfdDJ6C" role="3cqZAp">
              <node concept="2OqwBi" id="3kbdwfdDJL_" role="3clFbG">
                <node concept="2OqwBi" id="3kbdwfdDJeg" role="2Oq$k0">
                  <node concept="7Obwk" id="3kbdwfdDJ6B" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3kbdwfdDJw0" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:23XkovW3EES" resolve="default" />
                  </node>
                </node>
                <node concept="zfrQC" id="3kbdwfdDKyD" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="3kbdwfdDKI1" role="3cqZAp">
              <node concept="2OqwBi" id="3kbdwfdDLA1" role="3clFbG">
                <node concept="2OqwBi" id="3kbdwfdDKQf" role="2Oq$k0">
                  <node concept="7Obwk" id="3kbdwfdDKHZ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3kbdwfdDLks" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:23XkovW3EES" resolve="default" />
                  </node>
                </node>
                <node concept="1OKiuA" id="3kbdwfdDMn3" role="2OqNvi">
                  <node concept="1Q80Hx" id="3kbdwfdDMqR" role="lBI5i" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="3kbdwfdDC$X" role="2jiSrf">
          <node concept="3clFbS" id="3kbdwfdDC$Y" role="2VODD2">
            <node concept="3clFbF" id="3kbdwfdDCGp" role="3cqZAp">
              <node concept="2OqwBi" id="3kbdwfdDDRI" role="3clFbG">
                <node concept="2OqwBi" id="3kbdwfdDCTw" role="2Oq$k0">
                  <node concept="7Obwk" id="3kbdwfdDCGo" role="2Oq$k0" />
                  <node concept="Bykcj" id="3kbdwfdDFoR" role="2OqNvi">
                    <node concept="1aIX9F" id="3kbdwfdDFoT" role="1xVPHs">
                      <node concept="26LbJo" id="3kbdwfdDFDj" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:23XkovW3EES" resolve="default" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="3kbdwfdDHwE" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="3kbdwfdDCap" role="1Qtc8$">
        <node concept="CtIbL" id="3kbdwfdDCar" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3Sv$YXXMZxu">
    <ref role="aqKnT" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
    <node concept="22hDWg" id="6pYQ4mCjF2f" role="22hAXT">
      <property role="TrG5h" value="BinaryExpression_TM_Alias" />
    </node>
    <node concept="1Qtc8_" id="3Sv$YXXMZxv" role="IW6Ez">
      <node concept="3eGOoe" id="3Sv$YXXMZxz" role="1Qtc8$" />
      <node concept="ulPW2" id="3Sv$YXXMZEr" role="1Qtc8A">
        <node concept="2kknPI" id="3Sv$YXXNPfA" role="2ks2uz">
          <ref role="2kkw0f" node="3Sv$YXXMZEt" resolve="BinaryExpression_SM_Alias" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3Sv$YXXqkXu">
    <ref role="aqKnT" to="gpgy:23XkovW7Yj2" resolve="NongenericType" />
    <node concept="22hDWj" id="6pYQ4mCjF2g" role="22hAXT" />
    <node concept="1Qtc8_" id="3Sv$YXXqkXv" role="IW6Ez">
      <node concept="L$LW2" id="3Sv$YXXZ_5W" role="1Qtc8A" />
      <node concept="IWgqT" id="3Sv$YXXqkXF" role="1Qtc8A">
        <node concept="1hCUdq" id="3Sv$YXXqkXH" role="1hCUd6">
          <node concept="3clFbS" id="3Sv$YXXqkXJ" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXqnMz" role="3cqZAp">
              <node concept="Xl_RD" id="3Sv$YXXqnMy" role="3clFbG">
                <property role="Xl_RC" value=":=" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3Sv$YXXqkXL" role="IWgqQ">
          <node concept="3clFbS" id="3Sv$YXXqkXN" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXqocM" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXqqXz" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXXqp0K" role="2Oq$k0">
                  <node concept="1PxgMI" id="3Sv$YXXqoRD" role="2Oq$k0">
                    <node concept="chp4Y" id="3Sv$YXXqoSj" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:23XkovVW7b7" resolve="DataTypeSpec" />
                    </node>
                    <node concept="2OqwBi" id="3Sv$YXXqolg" role="1m5AlR">
                      <node concept="7Obwk" id="3Sv$YXXqocL" role="2Oq$k0" />
                      <node concept="1mfA1w" id="3Sv$YXXqoDu" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXqpdi" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:23XkovW3EES" resolve="default" />
                  </node>
                </node>
                <node concept="zfrQC" id="3Sv$YXXqt14" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="3Sv$YXXql6_" role="2jiSrf">
          <node concept="3clFbS" id="3Sv$YXXql6A" role="2VODD2">
            <node concept="3cpWs8" id="3Sv$YXXqxIl" role="3cqZAp">
              <node concept="3cpWsn" id="3Sv$YXXqxIm" role="3cpWs9">
                <property role="TrG5h" value="spec" />
                <node concept="3Tqbb2" id="3Sv$YXXqxIj" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:23XkovVW7b7" resolve="DataTypeSpec" />
                </node>
                <node concept="1PxgMI" id="3Sv$YXXqxIn" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="3Sv$YXXqxIo" role="3oSUPX">
                    <ref role="cht4Q" to="gpgy:23XkovVW7b7" resolve="DataTypeSpec" />
                  </node>
                  <node concept="2OqwBi" id="3Sv$YXXqxIp" role="1m5AlR">
                    <node concept="7Obwk" id="3Sv$YXXqxIq" role="2Oq$k0" />
                    <node concept="1mfA1w" id="3Sv$YXXqxIr" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Sv$YXXqle0" role="3cqZAp">
              <node concept="1Wc70l" id="3Sv$YXXqvRN" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXXqDqr" role="3uHU7w">
                  <node concept="2OqwBi" id="3Sv$YXXq$7N" role="2Oq$k0">
                    <node concept="37vLTw" id="3Sv$YXXqzIq" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Sv$YXXqxIm" resolve="spec" />
                    </node>
                    <node concept="Bykcj" id="3Sv$YXXqCOI" role="2OqNvi">
                      <node concept="1aIX9F" id="3Sv$YXXqCOK" role="1xVPHs">
                        <node concept="26LbJo" id="3Sv$YXXqD4h" role="1aIX9E">
                          <ref role="26LbJp" to="gpgy:23XkovW3EES" resolve="default" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1v1jN8" id="3Sv$YXXqHpv" role="2OqNvi" />
                </node>
                <node concept="3y3z36" id="3Sv$YXXqzpE" role="3uHU7B">
                  <node concept="10Nm6u" id="3Sv$YXXqz_N" role="3uHU7w" />
                  <node concept="37vLTw" id="3Sv$YXXqycW" role="3uHU7B">
                    <ref role="3cqZAo" node="3Sv$YXXqxIm" resolve="spec" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cWJ9i" id="3Sv$YXXqkXz" role="1Qtc8$">
        <node concept="CtIbL" id="3Sv$YXXqkX_" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3Sv$YXXFhCS">
    <ref role="aqKnT" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
    <node concept="22hDWj" id="6pYQ4mCjF2h" role="22hAXT" />
    <node concept="1Qtc8_" id="1wEcoXjIEyn" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjIEyl" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjIEym" role="CtIbM">
          <property role="CtIbK" value="1A4kJjlVmVt/LEFT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjIEyp" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjIEyq" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjIEyr" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjIEys" role="3cqZAp">
              <node concept="3fqX7Q" id="1wEcoXjIEyt" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjIEyu" role="3fr31v">
                  <node concept="7Obwk" id="1wEcoXjIEyy" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="1wEcoXjIEyw" role="2OqNvi">
                    <node concept="chp4Y" id="3Sv$YXXFsfO" role="cj9EA">
                      <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3c8P5G" id="1wEcoXjIEyz" role="aenpr">
          <node concept="2kknPJ" id="1wEcoXjIEy$" role="3c8P5H">
            <ref role="2ZyFGn" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
          </node>
          <node concept="3c8PGw" id="1wEcoXjIEy_" role="3c8PHt">
            <node concept="3clFbS" id="1wEcoXjIEyA" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjIEyM" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjIEyH" role="3clFbG">
                  <node concept="2YIFZM" id="1wEcoXjIEyC" role="2Oq$k0">
                    <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                    <ref role="37wK5l" node="22wqDZQuBip" resolve="processLeftTransform" />
                    <node concept="7Obwk" id="1wEcoXjIEyF" role="37wK5m" />
                    <node concept="3c8USq" id="1wEcoXjIEyG" role="37wK5m" />
                  </node>
                  <node concept="1OKiuA" id="1wEcoXjIEyI" role="2OqNvi">
                    <node concept="1Q80Hx" id="1wEcoXjIEyJ" role="lBI5i" />
                    <node concept="2B6iha" id="1wEcoXjIEyK" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="1wEcoXjIEyL" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1Qtc8_" id="1wEcoXjIEyR" role="IW6Ez">
      <node concept="3cWJ9i" id="1wEcoXjIEyP" role="1Qtc8$">
        <node concept="CtIbL" id="1wEcoXjIEyQ" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="aenpk" id="1wEcoXjIEyT" role="1Qtc8A">
        <node concept="27VH4U" id="1wEcoXjIEyU" role="aenpu">
          <node concept="3clFbS" id="1wEcoXjIEyV" role="2VODD2">
            <node concept="3clFbF" id="1wEcoXjIEyW" role="3cqZAp">
              <node concept="3fqX7Q" id="1wEcoXjIEyX" role="3clFbG">
                <node concept="2OqwBi" id="1wEcoXjIEyY" role="3fr31v">
                  <node concept="7Obwk" id="1wEcoXjIEz2" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="1wEcoXjIEz0" role="2OqNvi">
                    <node concept="chp4Y" id="3Sv$YXXFiCX" role="cj9EA">
                      <ref role="cht4Q" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3c8P5G" id="1wEcoXjIEz3" role="aenpr">
          <node concept="2kknPJ" id="1wEcoXjIEz4" role="3c8P5H">
            <ref role="2ZyFGn" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
          </node>
          <node concept="3c8PGw" id="1wEcoXjIEz5" role="3c8PHt">
            <node concept="3clFbS" id="1wEcoXjIEz6" role="2VODD2">
              <node concept="3clFbF" id="1wEcoXjIEzi" role="3cqZAp">
                <node concept="2OqwBi" id="1wEcoXjIEzd" role="3clFbG">
                  <node concept="2YIFZM" id="3Sv$YXXFrWQ" role="2Oq$k0">
                    <ref role="37wK5l" node="3Sv$YXXtNwl" resolve="proccesRightTransform" />
                    <ref role="1Pybhc" node="4c9ExjQny7L" resolve="ParenthesisUtil" />
                    <node concept="7Obwk" id="3Sv$YXXFrWR" role="37wK5m" />
                    <node concept="3c8USq" id="3Sv$YXXFrWS" role="37wK5m" />
                  </node>
                  <node concept="1OKiuA" id="1wEcoXjIEze" role="2OqNvi">
                    <node concept="1Q80Hx" id="1wEcoXjIEzf" role="lBI5i" />
                    <node concept="2B6iha" id="1wEcoXjIEzg" role="lGT1i">
                      <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
                    </node>
                    <node concept="3cmrfG" id="1wEcoXjIEzh" role="3dN3m$">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="IWgqT" id="3Sv$YXXPYb2" role="1Qtc8A">
        <node concept="1hCUdq" id="3Sv$YXXPYb4" role="1hCUd6">
          <node concept="3clFbS" id="3Sv$YXXPYb6" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXPYzI" role="3cqZAp">
              <node concept="Xl_RD" id="3Sv$YXXPYzH" role="3clFbG">
                <property role="Xl_RC" value="BY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3Sv$YXXPYb8" role="IWgqQ">
          <node concept="3clFbS" id="3Sv$YXXPYba" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXQ2Bl" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXQ5Ou" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXXQ3Dr" role="2Oq$k0">
                  <node concept="1PxgMI" id="3Sv$YXXQ3tz" role="2Oq$k0">
                    <node concept="chp4Y" id="3Sv$YXXQ3us" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:7GyesCpem8O" resolve="ControlVariableDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="3Sv$YXXQ2IX" role="1m5AlR">
                      <node concept="7Obwk" id="3Sv$YXXQ2Bk" role="2Oq$k0" />
                      <node concept="1mfA1w" id="3Sv$YXXQ30J" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXQ3Xh" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:7GyesCpem8U" resolve="stepExpression" />
                  </node>
                </node>
                <node concept="zfrQC" id="3Sv$YXXQ7Nv" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="3Sv$YXXPYPf" role="2jiSrf">
          <node concept="3clFbS" id="3Sv$YXXPYPg" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXPYWF" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXPZ9M" role="3clFbG">
                <node concept="7Obwk" id="3Sv$YXXPYWE" role="2Oq$k0" />
                <node concept="1BlSNk" id="3Sv$YXXQ29k" role="2OqNvi">
                  <ref role="1BmUXE" to="gpgy:7GyesCpem8O" resolve="ControlVariableDeclaration" />
                  <ref role="1Bn3mz" to="gpgy:7GyesCpem8R" resolve="endExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICUPy" id="3Sv$YXXREMu">
    <ref role="aqKnT" to="gpgy:7GyesCp9TvJ" resolve="Variable" />
    <node concept="22hDWj" id="6pYQ4mCjF2i" role="22hAXT" />
    <node concept="1Qtc8_" id="3Sv$YXXREMv" role="IW6Ez">
      <node concept="3cWJ9i" id="3Sv$YXXREMz" role="1Qtc8$">
        <node concept="CtIbL" id="3Sv$YXXREM_" role="CtIbM">
          <property role="CtIbK" value="30NnNOohrQL/RIGHT" />
        </node>
      </node>
      <node concept="L$LW2" id="3Sv$YXXREMD" role="1Qtc8A" />
      <node concept="IWgqT" id="3Sv$YXXRnEI" role="1Qtc8A">
        <node concept="1hCUdq" id="3Sv$YXXRnEK" role="1hCUd6">
          <node concept="3clFbS" id="3Sv$YXXRnEM" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXRo80" role="3cqZAp">
              <node concept="Xl_RD" id="3Sv$YXXRo7Z" role="3clFbG">
                <property role="Xl_RC" value="[" />
              </node>
            </node>
          </node>
        </node>
        <node concept="IWg2L" id="3Sv$YXXRnEO" role="IWgqQ">
          <node concept="3clFbS" id="3Sv$YXXRnEQ" role="2VODD2">
            <node concept="3cpWs8" id="3Sv$YXXRoI1" role="3cqZAp">
              <node concept="3cpWsn" id="3Sv$YXXRoI2" role="3cpWs9">
                <property role="TrG5h" value="av" />
                <node concept="3Tqbb2" id="3Sv$YXXRoI0" role="1tU5fm">
                  <ref role="ehGHo" to="gpgy:23XkovWwrcP" resolve="ArrayVariable" />
                </node>
                <node concept="2ShNRf" id="3Sv$YXXRoI3" role="33vP2m">
                  <node concept="3zrR0B" id="3Sv$YXXRoI4" role="2ShVmc">
                    <node concept="3Tqbb2" id="3Sv$YXXRoI5" role="3zrR0E">
                      <ref role="ehGHo" to="gpgy:23XkovWwrcP" resolve="ArrayVariable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Sv$YXXRoJq" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXRoR2" role="3clFbG">
                <node concept="7Obwk" id="3Sv$YXXRoJo" role="2Oq$k0" />
                <node concept="1P9Npp" id="3Sv$YXXRpjr" role="2OqNvi">
                  <node concept="37vLTw" id="3Sv$YXXRpjX" role="1P9ThW">
                    <ref role="3cqZAo" node="3Sv$YXXRoI2" resolve="av" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Sv$YXXRD4$" role="3cqZAp">
              <node concept="37vLTI" id="3Sv$YXXREmH" role="3clFbG">
                <node concept="7Obwk" id="3Sv$YXXREpt" role="37vLTx" />
                <node concept="2OqwBi" id="3Sv$YXXRDe9" role="37vLTJ">
                  <node concept="37vLTw" id="3Sv$YXXRD4y" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Sv$YXXRoI2" resolve="av" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXXRDu5" role="2OqNvi">
                    <ref role="3Tt5mk" to="gpgy:23XkovWwrcQ" resolve="subscripted" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Sv$YXXRYHE" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXRYRD" role="3clFbG">
                <node concept="37vLTw" id="3Sv$YXXRYHC" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Sv$YXXRoI2" resolve="av" />
                </node>
                <node concept="1OKiuA" id="3Sv$YXXRZJ8" role="2OqNvi">
                  <node concept="1Q80Hx" id="3Sv$YXXRZL1" role="lBI5i" />
                  <node concept="2TlHUq" id="3Sv$YXXSfy5" role="lGT1i">
                    <ref role="2TlMyj" node="3Sv$YXXSfwI" resolve="subscripts" />
                  </node>
                  <node concept="3cmrfG" id="3Sv$YXXSw31" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1IAO7e" id="3Sv$YXXREMF" role="1Qtc8A" />
    </node>
  </node>
  <node concept="22mcaB" id="3Sv$YXXMZEt">
    <ref role="aqKnT" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
    <node concept="22hDWg" id="6pYQ4mCjF2j" role="22hAXT">
      <property role="TrG5h" value="BinaryExpression_SM_Alias" />
    </node>
    <node concept="3N5dw7" id="3Sv$YXXMZEu" role="3ft7WO">
      <node concept="upBMk" id="7s9946uXfhf" role="upBLP">
        <node concept="uqdF1" id="7s9946uXfhg" role="upBLF">
          <node concept="3clFbS" id="7s9946uXfhh" role="2VODD2">
            <node concept="3clFbF" id="7s9946uXfpB" role="3cqZAp">
              <node concept="2OqwBi" id="7s9946uXfpC" role="3clFbG">
                <node concept="uqdCJ" id="7s9946uXfpD" role="2Oq$k0" />
                <node concept="1OKiuA" id="7s9946uXfpE" role="2OqNvi">
                  <node concept="1Q80Hx" id="7s9946uXfpF" role="lBI5i" />
                  <node concept="2TlHUq" id="7s9946uXfpG" role="lGT1i">
                    <ref role="2TlMyj" to="tpco:1USvB3ZvF7B" resolve="ALIAS_EDITOR_COMPONENT" />
                  </node>
                  <node concept="3cmrfG" id="7s9946uXfpH" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3N5aqt" id="3Sv$YXXMZEv" role="3Na0zg">
        <node concept="3clFbS" id="3Sv$YXXMZEw" role="2VODD2">
          <node concept="3clFbF" id="3Sv$YXXN095" role="3cqZAp">
            <node concept="37vLTI" id="3Sv$YXXN1gp" role="3clFbG">
              <node concept="2OqwBi" id="3Sv$YXXN1Gu" role="37vLTx">
                <node concept="1yR$tW" id="3Sv$YXXN1q_" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXN24J" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                </node>
              </node>
              <node concept="2OqwBi" id="3Sv$YXXN0w7" role="37vLTJ">
                <node concept="3N4pyC" id="3Sv$YXXN094" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXN0MA" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnt" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Sv$YXXN2d6" role="3cqZAp">
            <node concept="37vLTI" id="3Sv$YXXN2d7" role="3clFbG">
              <node concept="2OqwBi" id="3Sv$YXXN2d8" role="37vLTx">
                <node concept="1yR$tW" id="3Sv$YXXN2d9" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXN2Y1" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
              <node concept="2OqwBi" id="3Sv$YXXN2db" role="37vLTJ">
                <node concept="3N4pyC" id="3Sv$YXXN2dc" role="2Oq$k0" />
                <node concept="3TrEf2" id="3Sv$YXXN2AC" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:3Qd3IVOFNnv" resolve="right" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3Sv$YXXN3fD" role="3cqZAp">
            <node concept="3N4pyC" id="3Sv$YXXN3mY" role="3cqZAk" />
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="3Sv$YXXMZI3" role="2klrvf">
        <ref role="2ZyFGn" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="2lwHqHkvefA">
    <ref role="aqKnT" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
    <node concept="22hDWj" id="6pYQ4mCjF2k" role="22hAXT" />
    <node concept="3eGOop" id="2lwHqHkvefG" role="3ft7WO">
      <node concept="ucgPf" id="2lwHqHkvefH" role="3aKz83">
        <node concept="3clFbS" id="2lwHqHkvefI" role="2VODD2">
          <node concept="3cpWs8" id="2lwHqHkvfAD" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHkvfAE" role="3cpWs9">
              <property role="TrG5h" value="lit" />
              <node concept="3Tqbb2" id="2lwHqHkvfAB" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
              </node>
              <node concept="2ShNRf" id="2lwHqHkvfAF" role="33vP2m">
                <node concept="3zrR0B" id="2lwHqHkvfAG" role="2ShVmc">
                  <node concept="3Tqbb2" id="2lwHqHkvfAH" role="3zrR0E">
                    <ref role="ehGHo" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHkveJ7" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHkvhBw" role="3clFbG">
              <node concept="3clFbT" id="2lwHqHkvhH_" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2lwHqHkvfRZ" role="37vLTJ">
                <node concept="37vLTw" id="2lwHqHkvfAI" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHkvfAE" resolve="lit" />
                </node>
                <node concept="3TrcHB" id="7GyesCp5Bxp" role="2OqNvi">
                  <ref role="3TsBF5" to="gpgy:2lwHqHjKyOE" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHkvi25" role="3cqZAp">
            <node concept="37vLTw" id="2lwHqHkvi23" role="3clFbG">
              <ref role="3cqZAo" node="2lwHqHkvfAE" resolve="lit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2lwHqHkves9" role="upBLP">
        <node concept="2h3Zct" id="2lwHqHkveIW" role="16NeZM">
          <property role="2h4Kg1" value="TRUE" />
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="2lwHqHkvitk" role="3ft7WO">
      <node concept="ucgPf" id="2lwHqHkvitl" role="3aKz83">
        <node concept="3clFbS" id="2lwHqHkvitm" role="2VODD2">
          <node concept="3cpWs8" id="2lwHqHkvitn" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHkvito" role="3cpWs9">
              <property role="TrG5h" value="lit" />
              <node concept="3Tqbb2" id="2lwHqHkvitp" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
              </node>
              <node concept="2ShNRf" id="2lwHqHkvitq" role="33vP2m">
                <node concept="3zrR0B" id="2lwHqHkvitr" role="2ShVmc">
                  <node concept="3Tqbb2" id="2lwHqHkvits" role="3zrR0E">
                    <ref role="ehGHo" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHkvitt" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHkvitu" role="3clFbG">
              <node concept="3clFbT" id="2lwHqHkvitv" role="37vLTx" />
              <node concept="2OqwBi" id="2lwHqHkvitw" role="37vLTJ">
                <node concept="37vLTw" id="2lwHqHkvitx" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHkvito" resolve="lit" />
                </node>
                <node concept="3TrcHB" id="7GyesCp5CgB" role="2OqNvi">
                  <ref role="3TsBF5" to="gpgy:2lwHqHjKyOE" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHkvitz" role="3cqZAp">
            <node concept="37vLTw" id="2lwHqHkvit$" role="3clFbG">
              <ref role="3cqZAo" node="2lwHqHkvito" resolve="lit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2lwHqHkvit_" role="upBLP">
        <node concept="2h3Zct" id="2lwHqHkvitA" role="16NeZM">
          <property role="2h4Kg1" value="FALSE" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="2lwHqHkvimm" role="3ft7WO" />
  </node>
  <node concept="22mcaB" id="7GyesCp9TuU">
    <ref role="aqKnT" to="gpgy:7GyesCp9Tu2" resolve="EmptyStatement" />
    <node concept="22hDWj" id="6pYQ4mCjF2l" role="22hAXT" />
  </node>
  <node concept="22mcaB" id="23XkovWqahk">
    <ref role="aqKnT" to="gpgy:23XkovWnimN" resolve="FunctionCall" />
    <node concept="22hDWj" id="6pYQ4mCjF2m" role="22hAXT" />
    <node concept="3eGOop" id="23XkovWqahn" role="3ft7WO">
      <node concept="ucgPf" id="23XkovWqahp" role="3aKz83">
        <node concept="3clFbS" id="23XkovWqahr" role="2VODD2">
          <node concept="3cpWs8" id="23XkovWqaBZ" role="3cqZAp">
            <node concept="3cpWsn" id="23XkovWqaC0" role="3cpWs9">
              <property role="TrG5h" value="call" />
              <node concept="3Tqbb2" id="23XkovWqaBX" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:23XkovWnimN" resolve="FunctionCall" />
              </node>
              <node concept="2ShNRf" id="23XkovWqaC1" role="33vP2m">
                <node concept="3zrR0B" id="23XkovWqaC2" role="2ShVmc">
                  <node concept="3Tqbb2" id="23XkovWqaC3" role="3zrR0E">
                    <ref role="ehGHo" to="gpgy:23XkovWnimN" resolve="FunctionCall" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="23XkovWqaln" role="3cqZAp">
            <node concept="37vLTI" id="23XkovWqdrh" role="3clFbG">
              <node concept="ub8z3" id="23XkovWqdDL" role="37vLTx" />
              <node concept="2OqwBi" id="23XkovWqbgH" role="37vLTJ">
                <node concept="37vLTw" id="23XkovWqaC4" role="2Oq$k0">
                  <ref role="3cqZAo" node="23XkovWqaC0" resolve="call" />
                </node>
                <node concept="3TrcHB" id="23XkovWqbve" role="2OqNvi">
                  <ref role="3TsBF5" to="gpgy:23XkovWnimO" resolve="functionName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="23XkovWqdYq" role="3cqZAp">
            <node concept="37vLTw" id="23XkovWqdYP" role="3cqZAk">
              <ref role="3cqZAo" node="23XkovWqaC0" resolve="call" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL3D" id="3Sv$YXXR0Lx" role="upBLP">
        <node concept="16Na2f" id="3Sv$YXXR0Lz" role="16NL3A">
          <node concept="3clFbS" id="3Sv$YXXR0L_" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXR19h" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXR1Ac" role="3clFbG">
                <node concept="ub8z3" id="3Sv$YXXR19g" role="2Oq$k0" />
                <node concept="liA8E" id="3Sv$YXXR2qz" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                  <node concept="Xl_RD" id="3kbdwfdGeHt" role="37wK5m">
                    <property role="Xl_RC" value="[a-zA-Z_][a-zA-Z_0-9]*" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="23XkovWqehL" role="upBLP">
        <node concept="uGdhv" id="23XkovWqenW" role="16NeZM">
          <node concept="3clFbS" id="23XkovWqenY" role="2VODD2">
            <node concept="3clFbF" id="23XkovWqewA" role="3cqZAp">
              <node concept="3cpWs3" id="23XkovWqeWm" role="3clFbG">
                <node concept="Xl_RD" id="23XkovWqf5a" role="3uHU7w">
                  <property role="Xl_RC" value="(" />
                </node>
                <node concept="ub8z3" id="23XkovWqew_" role="3uHU7B" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="3Sv$YXXnxNQ">
    <ref role="aqKnT" to="gpgy:23XkovVY3GQ" resolve="EnumeratedValue" />
    <node concept="22hDWj" id="6pYQ4mCjF2n" role="22hAXT" />
    <node concept="3eGOop" id="3Sv$YXXnxS7" role="3ft7WO">
      <node concept="ucgPf" id="3Sv$YXXnxS8" role="3aKz83">
        <node concept="3clFbS" id="3Sv$YXXnxS9" role="2VODD2">
          <node concept="3cpWs8" id="3Sv$YXXnz$y" role="3cqZAp">
            <node concept="3cpWsn" id="3Sv$YXXnz$z" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="3Sv$YXXnz$w" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:23XkovVY3GQ" resolve="EnumeratedValue" />
              </node>
              <node concept="2ShNRf" id="3Sv$YXXnz$$" role="33vP2m">
                <node concept="3zrR0B" id="3Sv$YXXnz$_" role="2ShVmc">
                  <node concept="3Tqbb2" id="3Sv$YXXnz$A" role="3zrR0E">
                    <ref role="ehGHo" to="gpgy:23XkovVY3GQ" resolve="EnumeratedValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Sv$YXXnyhV" role="3cqZAp">
            <node concept="37vLTI" id="3Sv$YXXn_c5" role="3clFbG">
              <node concept="ub8z3" id="3Sv$YXXn_qY" role="37vLTx" />
              <node concept="2OqwBi" id="3Sv$YXXnzNx" role="37vLTJ">
                <node concept="37vLTw" id="3Sv$YXXnz$B" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Sv$YXXnz$z" resolve="node" />
                </node>
                <node concept="3TrcHB" id="3Sv$YXXn$4U" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Sv$YXXn_Kt" role="3cqZAp">
            <node concept="37vLTw" id="3Sv$YXXn_Kr" role="3clFbG">
              <ref role="3cqZAo" node="3Sv$YXXnz$z" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="3Sv$YXXnxWi" role="upBLP">
        <node concept="uGdhv" id="3Sv$YXXny0r" role="16NeZM">
          <node concept="3clFbS" id="3Sv$YXXny0t" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXny95" role="3cqZAp">
              <node concept="ub8z3" id="3Sv$YXXny94" role="3clFbG" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="22mcaB" id="3Sv$YXXOCm$">
    <ref role="aqKnT" to="gpgy:3HBlKeoZu2i" resolve="DecIntegerLiteral" />
    <node concept="22hDWj" id="6pYQ4mCjF2o" role="22hAXT" />
    <node concept="3eGOop" id="3Sv$YXXOC_Z" role="3ft7WO">
      <node concept="ucgPf" id="3Sv$YXXOCA0" role="3aKz83">
        <node concept="3clFbS" id="3Sv$YXXOCA1" role="2VODD2">
          <node concept="3cpWs8" id="3Sv$YXXOCA2" role="3cqZAp">
            <node concept="3cpWsn" id="3Sv$YXXOCA3" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="3Sv$YXXOCA4" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:3HBlKeoZu2i" resolve="DecIntegerLiteral" />
              </node>
              <node concept="2ShNRf" id="3Sv$YXXOCA5" role="33vP2m">
                <node concept="3zrR0B" id="3Sv$YXXOCA6" role="2ShVmc">
                  <node concept="3Tqbb2" id="3Sv$YXXOCA7" role="3zrR0E">
                    <ref role="ehGHo" to="gpgy:3HBlKeoZu2i" resolve="DecIntegerLiteral" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Sv$YXXOCA8" role="3cqZAp">
            <node concept="37vLTI" id="3Sv$YXXOCA9" role="3clFbG">
              <node concept="ub8z3" id="3Sv$YXXOCAa" role="37vLTx" />
              <node concept="2OqwBi" id="3Sv$YXXOCAb" role="37vLTJ">
                <node concept="37vLTw" id="3Sv$YXXOCAc" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Sv$YXXOCA3" resolve="node" />
                </node>
                <node concept="3TrcHB" id="3Sv$YXXQHrQ" role="2OqNvi">
                  <ref role="3TsBF5" to="gpgy:3HBlKeoZu2j" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Sv$YXXOCAe" role="3cqZAp">
            <node concept="37vLTw" id="3Sv$YXXOCAf" role="3clFbG">
              <ref role="3cqZAo" node="3Sv$YXXOCA3" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NL3D" id="3Sv$YXXQIkn" role="upBLP">
        <node concept="16Na2f" id="3Sv$YXXQIkp" role="16NL3A">
          <node concept="3clFbS" id="3Sv$YXXQIkr" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXQIRK" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXQJkF" role="3clFbG">
                <node concept="ub8z3" id="3Sv$YXXQIRJ" role="2Oq$k0" />
                <node concept="liA8E" id="3Sv$YXXQK92" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                  <node concept="Xl_RD" id="3Sv$YXXQKgY" role="37wK5m">
                    <property role="Xl_RC" value="[0-9][_0-9]*" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="3Sv$YXXOCAg" role="upBLP">
        <node concept="uGdhv" id="3Sv$YXXOCAh" role="16NeZM">
          <node concept="3clFbS" id="3Sv$YXXOCAi" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXOCAj" role="3cqZAp">
              <node concept="ub8z3" id="3Sv$YXXOCAk" role="3clFbG" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="3Sv$YXXQHT2" role="3ft7WO" />
  </node>
  <node concept="22mcaB" id="3Sv$YXXQqbJ">
    <ref role="aqKnT" to="gpgy:7GyesCp9TvI" resolve="AssignmentStatement" />
    <node concept="22hDWj" id="6pYQ4mCjF2p" role="22hAXT" />
    <node concept="3N5dw7" id="3Sv$YXXQqkb" role="3ft7WO">
      <node concept="3N5aqt" id="3Sv$YXXQqkc" role="3Na0zg">
        <node concept="3clFbS" id="3Sv$YXXQqkd" role="2VODD2">
          <node concept="3cpWs8" id="3Sv$YXXQqOk" role="3cqZAp">
            <node concept="3cpWsn" id="3Sv$YXXQqOl" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="3Sv$YXXQqOj" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:7GyesCp9TvI" resolve="AssignmentStatement" />
              </node>
              <node concept="2ShNRf" id="3Sv$YXXQqOm" role="33vP2m">
                <node concept="3zrR0B" id="3Sv$YXXQqOn" role="2ShVmc">
                  <node concept="3Tqbb2" id="3Sv$YXXQqOo" role="3zrR0E">
                    <ref role="ehGHo" to="gpgy:7GyesCp9TvI" resolve="AssignmentStatement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Sv$YXXQqw$" role="3cqZAp">
            <node concept="37vLTI" id="3Sv$YXXQsgL" role="3clFbG">
              <node concept="3N4pyC" id="3Sv$YXXQsrg" role="37vLTx" />
              <node concept="2OqwBi" id="3Sv$YXXQr3j" role="37vLTJ">
                <node concept="37vLTw" id="3Sv$YXXQqOp" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Sv$YXXQqOl" resolve="node" />
                </node>
                <node concept="3TrEf2" id="3Sv$YXXQrkG" role="2OqNvi">
                  <ref role="3Tt5mk" to="gpgy:7GyesCp9TvL" resolve="variable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3Sv$YXXQsGd" role="3cqZAp">
            <node concept="37vLTw" id="3Sv$YXXQsN2" role="3cqZAk">
              <ref role="3cqZAo" node="3Sv$YXXQqOl" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2kknPJ" id="3Sv$YXXQqoo" role="2klrvf">
        <ref role="2ZyFGn" to="gpgy:7GyesCp9TvJ" resolve="Variable" />
      </node>
      <node concept="upBMk" id="3Sv$YXXUj0D" role="upBLP">
        <node concept="uqdF1" id="3Sv$YXXUj0E" role="upBLF">
          <node concept="3clFbS" id="3Sv$YXXUj0F" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXUj7o" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXUjg0" role="3clFbG">
                <node concept="uqdCJ" id="3Sv$YXXUj7n" role="2Oq$k0" />
                <node concept="1OKiuA" id="3Sv$YXXUjL7" role="2OqNvi">
                  <node concept="1Q80Hx" id="3Sv$YXXUjN3" role="lBI5i" />
                  <node concept="2B6iha" id="3Sv$YXXUjPv" role="lGT1i">
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
  <node concept="22mcaB" id="3Sv$YXXRmJv">
    <ref role="aqKnT" to="gpgy:23XkovWwrcP" resolve="ArrayVariable" />
    <node concept="22hDWj" id="6pYQ4mCjF2q" role="22hAXT" />
  </node>
  <node concept="24kQdi" id="3cys4Y4onen">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3cys4Y4ondw" resolve="WStringLiteral" />
    <node concept="3EZMnI" id="3cys4Y4onep" role="2wV5jI">
      <node concept="3F0ifn" id="3cys4Y4onew" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="VechU" id="3cys4Y4oneN" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
        <node concept="11LMrY" id="3cys4Y4oneO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="3cys4Y4oneI" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:3cys4Y4ondV" resolve="value" />
        <node concept="VechU" id="3cys4Y4oneZ" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
        <node concept="Vb9p2" id="3cys4Y4onf3" role="3F10Kt">
          <property role="Vbekb" value="g1_k_vY/BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="3cys4Y4oneA" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="VechU" id="3cys4Y4oneR" role="3F10Kt">
          <property role="Vb096" value="g1_qRwE/darkGreen" />
        </node>
        <node concept="11L4FC" id="3cys4Y4oneV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3cys4Y4ones" role="2iSdaV" />
    </node>
  </node>
</model>

