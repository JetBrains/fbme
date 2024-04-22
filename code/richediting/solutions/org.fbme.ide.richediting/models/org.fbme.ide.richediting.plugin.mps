<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(org.fbme.ide.richediting.plugin)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="org.fbme.ide.meta.editor" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="78d5" ref="r:d018f155-a8e1-4632-87ac-0cbc89a1f1c2(org.fbme.ide.richediting.lang.editor)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(org.fbme.ide.iec61499.adapter.fbnetwork)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="tsn" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components.panels(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="74cb" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.instances(org.fbme.lib/)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="kdnk" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers(org.fbme.scenes.lib/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
    <import index="8gms" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.platform.editor(org.fbme.platform.lib/)" />
    <import index="ec6g" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting(org.fbme.richediting.lib/)" />
    <import index="je9f" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.editor(org.fbme.richediting.lib/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" implicit="true" />
    <import index="1hzy" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.viewmodel(org.fbme.richediting.lib/)" implicit="true" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207145360364" name="jetbrains.mps.lang.plugin.structure.BuildGroupBlock" flags="in" index="fu6FP" />
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1227008813498" name="constructionParameter" index="2JrayB" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="1204991940915" name="caption" index="2f7twF" />
        <property id="1217005992861" name="isInvisibleWhenDisabled" index="1rdrE6" />
        <property id="1213283637680" name="isPopup" index="1XlLyE" />
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
        <child id="1227011543811" name="actualParameter" index="2J__8u" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1227008846812" name="jetbrains.mps.lang.plugin.structure.ActionConstructionParameterDeclaration" flags="ig" index="2JriF1">
        <child id="1227019158144" name="toStringFunction" index="2K2Cet" />
      </concept>
      <concept id="1227013049127" name="jetbrains.mps.lang.plugin.structure.AddStatement" flags="nn" index="2JFkCU">
        <child id="1227013166210" name="item" index="2JFLmv" />
      </concept>
      <concept id="1227019068586" name="jetbrains.mps.lang.plugin.structure.ToStringConceptFunction" flags="in" index="2K2imR" />
      <concept id="1227019310584" name="jetbrains.mps.lang.plugin.structure.ToStringParameter" flags="nn" index="2K3dj_" />
      <concept id="1239975356883" name="jetbrains.mps.lang.plugin.structure.UpdateGroupBlock" flags="ng" index="2OiAzN">
        <child id="1239975488603" name="updateFunction" index="2Oj6PV" />
      </concept>
      <concept id="1239975436002" name="jetbrains.mps.lang.plugin.structure.UpdateGroupFunction" flags="in" index="2OiTZ2" />
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1203680534665" name="jetbrains.mps.lang.plugin.structure.GroupAnchor" flags="ng" index="10WQ6h" />
      <concept id="1210179134063" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentDeclaration" flags="ng" index="34j2dQ">
        <child id="1210179829398" name="persistenPropertyDeclaration" index="34lFYf" />
        <child id="1210684426855" name="preferencePage" index="3yq$HY" />
      </concept>
      <concept id="1210179190070" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyDeclaration" flags="ng" index="34jfKJ" />
      <concept id="1210180874794" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyReference" flags="nn" index="34pFcN" />
      <concept id="1210184105060" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentType" flags="in" index="34_ZPX">
        <reference id="1210184138184" name="componentDeclaration" index="34A7Nh" />
      </concept>
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1210684385183" name="jetbrains.mps.lang.plugin.structure.PreferencePage" flags="ng" index="3yqqq6">
        <child id="1210686845551" name="component" index="3yzNdQ" />
        <child id="1210686936988" name="resetBlock" index="3y$9q5" />
        <child id="1210686956582" name="commitBlock" index="3y$ekZ" />
        <child id="1210763647050" name="isModifiedBlock" index="3B8L_j" />
      </concept>
      <concept id="1210686882550" name="jetbrains.mps.lang.plugin.structure.PreferencePageResetBlock" flags="in" index="3yzWfJ" />
      <concept id="1210686969356" name="jetbrains.mps.lang.plugin.structure.PreferencePageCommitBlock" flags="in" index="3y$hsl" />
      <concept id="1210690798207" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_PreferencePage_component" flags="nn" index="3yMSdA" />
      <concept id="1210763550007" name="jetbrains.mps.lang.plugin.structure.PreferencePageIsModifiedBlock" flags="in" index="3B8pKI" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1165253627126" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup" flags="ng" index="1exORT">
        <child id="1165253890469" name="parameterObjectType" index="1eyP2E" />
      </concept>
      <concept id="1165420413719" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group" flags="ng" index="1ou48o">
        <child id="1165420413721" name="handlerFunction" index="1ou48m" />
        <child id="1165420413720" name="parametersFunction" index="1ou48n" />
      </concept>
      <concept id="1165420626554" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group_Handler" flags="in" index="1ouSdP" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1163613035599" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_Query" flags="in" index="3GJtP1" />
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
      </concept>
      <concept id="681855071694758168" name="jetbrains.mps.lang.plugin.standalone.structure.GetPreferencesComponentInProjectOperation" flags="nn" index="LR4Ub">
        <reference id="681855071694758169" name="componentDeclaration" index="LR4Ua" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
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
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101597970" name="jetbrains.mps.lang.smodel.structure.OperationParm_Root" flags="ng" index="1xLf8o" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="2DaZZR" id="1R4IoyRA8wZ">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="2uRRBC" id="7TC3cEN$DDK">
    <property role="TrG5h" value="FBStyleAttributeRegistar" />
    <node concept="2uRRBj" id="7TC3cEN$DDL" role="2uRRBE">
      <node concept="3clFbS" id="7TC3cEN$DDM" role="2VODD2">
        <node concept="1X3_iC" id="7XpzHqcwg5D" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7TC3cEN$EMW" role="8Wnug">
            <node concept="2OqwBi" id="7TC3cEN$F5n" role="3clFbG">
              <node concept="liA8E" id="7TC3cEN$ZfW" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
              </node>
              <node concept="10M0yZ" id="6AO1fiERSbl" role="2Oq$k0">
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7XpzHqcwg5E" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7TC3cEN$Zh8" role="8Wnug">
            <node concept="2OqwBi" id="7TC3cEN$Zh9" role="3clFbG">
              <node concept="10M0yZ" id="6SLp5w3JmDh" role="2Oq$k0">
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
              </node>
              <node concept="liA8E" id="7TC3cEN$Zhb" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="6YAH_gOce$U" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="6YAH_gOce$V" role="8Wnug">
            <node concept="2OqwBi" id="6YAH_gOce$W" role="3clFbG">
              <node concept="10M0yZ" id="6SLp5w3JmD_" role="2Oq$k0">
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
              </node>
              <node concept="liA8E" id="6YAH_gOce$Y" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7XpzHqcwg5F" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7TC3cEN$Zhr" role="8Wnug">
            <node concept="2OqwBi" id="7TC3cEN$Zhs" role="3clFbG">
              <node concept="liA8E" id="7TC3cEN$Zhu" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
              </node>
              <node concept="10M0yZ" id="6AO1fiERSb$" role="2Oq$k0">
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7XpzHqcwg5G" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7TC3cEN$ZhM" role="8Wnug">
            <node concept="2OqwBi" id="7TC3cEN$ZhN" role="3clFbG">
              <node concept="10M0yZ" id="6SLp5w3JmDP" role="2Oq$k0">
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.TYPE" resolve="TYPE" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
              </node>
              <node concept="liA8E" id="7TC3cEN$ZhP" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7XpzHqcwghy" role="3cqZAp">
          <node concept="1PaTwC" id="7XpzHqcwghz" role="1aUNEU">
            <node concept="3oM_SD" id="7XpzHqcwgh_" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="7XpzHqcwgl8" role="1PaTwD">
              <property role="3oM_SC" value="breaks" />
            </node>
            <node concept="3oM_SD" id="7XpzHqcwgmp" role="1PaTwD">
              <property role="3oM_SC" value="such" />
            </node>
            <node concept="3oM_SD" id="7XpzHqcwgni" role="1PaTwD">
              <property role="3oM_SC" value="initialization" />
            </node>
            <node concept="3oM_SD" id="7XpzHqcwgoO" role="1PaTwD">
              <property role="3oM_SC" value="breaks" />
            </node>
            <node concept="3oM_SD" id="7XpzHqcwgp_" role="1PaTwD">
              <property role="3oM_SC" value="StyleRegistry" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="7TC3cEN$DE7" role="2uRRBF">
      <node concept="3clFbS" id="7TC3cEN$DE8" role="2VODD2">
        <node concept="3clFbF" id="7TC3cEN$ZNz" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZN$" role="3clFbG">
            <node concept="liA8E" id="7TC3cEN$ZNA" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
            <node concept="10M0yZ" id="6AO1fiERSbq" role="2Oq$k0">
              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$ZNB" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZNC" role="3clFbG">
            <node concept="liA8E" id="7TC3cEN$ZNE" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
            <node concept="10M0yZ" id="6AO1fiERSgK" role="2Oq$k0">
              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YAH_gOceAF" role="3cqZAp">
          <node concept="2OqwBi" id="6YAH_gOceAG" role="3clFbG">
            <node concept="liA8E" id="6YAH_gOceAI" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
            <node concept="10M0yZ" id="6AO1fiERSbc" role="2Oq$k0">
              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$ZNF" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZNG" role="3clFbG">
            <node concept="10M0yZ" id="6SLp5w3JmEl" role="2Oq$k0">
              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZNI" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$ZNJ" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZNK" role="3clFbG">
            <node concept="liA8E" id="7TC3cEN$ZNM" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
            <node concept="10M0yZ" id="6AO1fiERSbv" role="2Oq$k0">
              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.TYPE" resolve="TYPE" />
              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="3DiEZ8TON84">
    <property role="TrG5h" value="IEC61499Actions" />
    <property role="2f7twF" value="Debug" />
    <node concept="ftmFs" id="3DiEZ8TON86" role="ftER_">
      <node concept="2a7GMi" id="44qSI5$VldK" role="ftvYc" />
      <node concept="tCFHf" id="3MncU7wOmUA" role="ftvYc">
        <ref role="tCJdB" node="4gibKcM_3Tu" resolve="NetworkInstance_OpenDeclaration" />
      </node>
      <node concept="10WQ6h" id="1DfKejr796v" role="ftvYc">
        <property role="TrG5h" value="mapper" />
      </node>
      <node concept="10WQ6h" id="aucBW5SZUF" role="ftvYc">
        <property role="TrG5h" value="watch" />
      </node>
      <node concept="10WQ6h" id="6cA57nYRFv1" role="ftvYc">
        <property role="TrG5h" value="debug" />
      </node>
      <node concept="10WQ6h" id="4pceBWtd$te" role="ftvYc">
        <property role="TrG5h" value="simulate" />
      </node>
    </node>
    <node concept="tT9cl" id="3DiEZ8TON8r" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
    </node>
  </node>
  <node concept="312cEu" id="5PjcHHGcIHv">
    <property role="TrG5h" value="InspectionListener" />
    <node concept="3Tm1VV" id="5PjcHHGcIHw" role="1B3o_S" />
  </node>
  <node concept="34j2dQ" id="1y1FD3qDmMX">
    <property role="TrG5h" value="NetworkPresentationSetting" />
    <node concept="3yqqq6" id="1y1FD3qDMnl" role="3yq$HY">
      <property role="TrG5h" value="Scale" />
      <node concept="2ShNRf" id="1y1FD3qExG3" role="3yzNdQ">
        <node concept="1pGfFk" id="1y1FD3qEy3n" role="2ShVmc">
          <ref role="37wK5l" node="1y1FD3qDWLg" resolve="NetworkPresentationScaleComponent" />
        </node>
      </node>
      <node concept="3B8pKI" id="1y1FD3qDMnn" role="3B8L_j">
        <node concept="3clFbS" id="1y1FD3qDMno" role="2VODD2">
          <node concept="3clFbF" id="1y1FD3qEBg4" role="3cqZAp">
            <node concept="3y3z36" id="1y1FD3qEBwx" role="3clFbG">
              <node concept="2OqwBi" id="1y1FD3qEBg9" role="3uHU7B">
                <node concept="2WthIp" id="1y1FD3qEBga" role="2Oq$k0" />
                <node concept="34pFcN" id="1y1FD3qEBgb" role="2OqNvi">
                  <ref role="2WH_rO" node="1y1FD3qDoAN" resolve="scale" />
                </node>
              </node>
              <node concept="2OqwBi" id="1y1FD3qEBg6" role="3uHU7w">
                <node concept="3yMSdA" id="1y1FD3qEBg7" role="2Oq$k0" />
                <node concept="liA8E" id="1y1FD3qEBg8" role="2OqNvi">
                  <ref role="37wK5l" node="1y1FD3qEd4n" resolve="getValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3yzWfJ" id="1y1FD3qDMnp" role="3y$9q5">
        <node concept="3clFbS" id="1y1FD3qDMnq" role="2VODD2">
          <node concept="3clFbF" id="1y1FD3qEyfM" role="3cqZAp">
            <node concept="2OqwBi" id="1y1FD3qEyPq" role="3clFbG">
              <node concept="3yMSdA" id="1y1FD3qEyfL" role="2Oq$k0" />
              <node concept="liA8E" id="1y1FD3qEzIg" role="2OqNvi">
                <ref role="37wK5l" node="1y1FD3qEluI" resolve="setValue" />
                <node concept="2OqwBi" id="1y1FD3qEzMx" role="37wK5m">
                  <node concept="2WthIp" id="1y1FD3qEzM$" role="2Oq$k0" />
                  <node concept="34pFcN" id="1y1FD3qEzMA" role="2OqNvi">
                    <ref role="2WH_rO" node="1y1FD3qDoAN" resolve="scale" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3y$hsl" id="1y1FD3qDMnr" role="3y$ekZ">
        <node concept="3clFbS" id="1y1FD3qDMns" role="2VODD2">
          <node concept="3clFbF" id="1y1FD3qEzWW" role="3cqZAp">
            <node concept="37vLTI" id="1y1FD3qE$wX" role="3clFbG">
              <node concept="2OqwBi" id="1y1FD3qE_YV" role="37vLTx">
                <node concept="3yMSdA" id="1y1FD3qE$Vd" role="2Oq$k0" />
                <node concept="liA8E" id="1y1FD3qEARH" role="2OqNvi">
                  <ref role="37wK5l" node="1y1FD3qEd4n" resolve="getValue" />
                </node>
              </node>
              <node concept="2OqwBi" id="1y1FD3qE$49" role="37vLTJ">
                <node concept="2WthIp" id="1y1FD3qEzWU" role="2Oq$k0" />
                <node concept="34pFcN" id="1y1FD3qE$8s" role="2OqNvi">
                  <ref role="2WH_rO" node="1y1FD3qDoAN" resolve="scale" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="34jfKJ" id="1y1FD3qDoAN" role="34lFYf">
      <property role="TrG5h" value="scale" />
      <node concept="10OMs4" id="1y1FD3qH1iM" role="1tU5fm" />
      <node concept="2$xPTn" id="1y1FD3qH1Xs" role="33vP2m">
        <property role="2$xPTl" value="2.0f" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1y1FD3qDOO4">
    <property role="TrG5h" value="NetworkPresentationScaleComponent" />
    <node concept="2tJIrI" id="1y1FD3qDQUM" role="jymVt" />
    <node concept="312cEg" id="1y1FD3qDXl5" role="jymVt">
      <property role="TrG5h" value="myValueField" />
      <node concept="3uibUv" id="1y1FD3qDXbF" role="1tU5fm">
        <ref role="3uigEE" to="qqrq:~JBTextField" resolve="JBTextField" />
      </node>
      <node concept="3Tm6S6" id="1y1FD3qDXpz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1y1FD3qDWUl" role="jymVt" />
    <node concept="3clFbW" id="1y1FD3qDWLg" role="jymVt">
      <node concept="3cqZAl" id="1y1FD3qDWLi" role="3clF45" />
      <node concept="3Tm1VV" id="1y1FD3qDWLj" role="1B3o_S" />
      <node concept="3clFbS" id="1y1FD3qDWLk" role="3clF47">
        <node concept="XkiVB" id="1y1FD3qEq$X" role="3cqZAp">
          <ref role="37wK5l" to="qqrq:~JBPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JBPanel" />
          <node concept="2ShNRf" id="1y1FD3qEsoG" role="37wK5m">
            <node concept="1pGfFk" id="1y1FD3qEtdb" role="2ShVmc">
              <ref role="37wK5l" to="tsn:~VerticalLayout.&lt;init&gt;(int)" resolve="VerticalLayout" />
              <node concept="3cmrfG" id="1y1FD3qEu1Y" role="37wK5m">
                <property role="3cmrfH" value="4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1y1FD3qEZx3" role="3cqZAp">
          <node concept="3cpWsn" id="1y1FD3qEZx4" role="3cpWs9">
            <property role="TrG5h" value="inner" />
            <node concept="3uibUv" id="1y1FD3qEZx5" role="1tU5fm">
              <ref role="3uigEE" to="qqrq:~JBPanel" resolve="JBPanel" />
            </node>
            <node concept="2ShNRf" id="1y1FD3qEZR$" role="33vP2m">
              <node concept="1pGfFk" id="1y1FD3qF0ll" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JBPanel" />
                <node concept="2ShNRf" id="1y1FD3qFeZm" role="37wK5m">
                  <node concept="1pGfFk" id="1y1FD3qFh$9" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~FlowLayout.&lt;init&gt;(int)" resolve="FlowLayout" />
                    <node concept="10M0yZ" id="1y1FD3qFoWl" role="37wK5m">
                      <ref role="3cqZAo" to="z60i:~FlowLayout.LEFT" resolve="LEFT" />
                      <ref role="1PxDUh" to="z60i:~FlowLayout" resolve="FlowLayout" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1y1FD3qF1br" role="3cqZAp">
          <node concept="1rXfSq" id="1y1FD3qF1bp" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
            <node concept="37vLTw" id="1y1FD3qF1uc" role="37wK5m">
              <ref role="3cqZAo" node="1y1FD3qEZx4" resolve="inner" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1y1FD3qE9l4" role="3cqZAp">
          <node concept="2OqwBi" id="1y1FD3qF2tJ" role="3clFbG">
            <node concept="37vLTw" id="1y1FD3qF2ML" role="2Oq$k0">
              <ref role="3cqZAo" node="1y1FD3qEZx4" resolve="inner" />
            </node>
            <node concept="liA8E" id="1y1FD3qF2tM" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="2ShNRf" id="1y1FD3qE2tD" role="37wK5m">
                <node concept="1pGfFk" id="1y1FD3qE8rJ" role="2ShVmc">
                  <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(java.lang.String)" resolve="JBLabel" />
                  <node concept="Xl_RD" id="1y1FD3qE8u5" role="37wK5m">
                    <property role="Xl_RC" value="Scale:" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1y1FD3qEa3V" role="3cqZAp">
          <node concept="2OqwBi" id="1y1FD3qF3YV" role="3clFbG">
            <node concept="37vLTw" id="1y1FD3qF57g" role="2Oq$k0">
              <ref role="3cqZAo" node="1y1FD3qEZx4" resolve="inner" />
            </node>
            <node concept="liA8E" id="1y1FD3qF3YY" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTI" id="1y1FD3qEbwp" role="37wK5m">
                <node concept="2ShNRf" id="1y1FD3qEc8t" role="37vLTx">
                  <node concept="1pGfFk" id="1y1FD3qEc6q" role="2ShVmc">
                    <ref role="37wK5l" to="qqrq:~JBTextField.&lt;init&gt;()" resolve="JBTextField" />
                  </node>
                </node>
                <node concept="37vLTw" id="1y1FD3qEal1" role="37vLTJ">
                  <ref role="3cqZAo" node="1y1FD3qDXl5" resolve="myValueField" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1y1FD3qEcdI" role="jymVt" />
    <node concept="3clFb_" id="1y1FD3qEd4n" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="3clFbS" id="1y1FD3qEd4q" role="3clF47">
        <node concept="3J1_TO" id="1y1FD3qEh4E" role="3cqZAp">
          <node concept="3clFbS" id="1y1FD3qEh4G" role="1zxBo7">
            <node concept="3cpWs6" id="1y1FD3qEjnh" role="3cqZAp">
              <node concept="2YIFZM" id="1y1FD3qH6fI" role="3cqZAk">
                <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
                <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                <node concept="2OqwBi" id="1y1FD3qH6fJ" role="37wK5m">
                  <node concept="37vLTw" id="1y1FD3qH6fK" role="2Oq$k0">
                    <ref role="3cqZAo" node="1y1FD3qDXl5" resolve="myValueField" />
                  </node>
                  <node concept="liA8E" id="1y1FD3qH6fL" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1y1FD3qEh4H" role="1zxBo5">
            <node concept="XOnhg" id="1y1FD3qEh4J" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="fqBRwYsHmgp" role="1tU5fm">
                <node concept="3uibUv" id="1y1FD3qEhjG" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1y1FD3qEh4N" role="1zc67A">
              <node concept="3cpWs6" id="1y1FD3qEhuq" role="3cqZAp">
                <node concept="10M0yZ" id="1y1FD3qH7SY" role="3cqZAk">
                  <ref role="3cqZAo" to="wyt6:~Float.NaN" resolve="NaN" />
                  <ref role="1PxDUh" to="wyt6:~Float" resolve="Float" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10OMs4" id="1y1FD3qH4pm" role="3clF45" />
      <node concept="3Tm1VV" id="1y1FD3qEljc" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1y1FD3qEwSX" role="jymVt" />
    <node concept="3clFb_" id="1y1FD3qEluI" role="jymVt">
      <property role="TrG5h" value="setValue" />
      <node concept="3clFbS" id="1y1FD3qEluJ" role="3clF47">
        <node concept="3clFbF" id="1y1FD3qEogs" role="3cqZAp">
          <node concept="2OqwBi" id="1y1FD3qEluO" role="3clFbG">
            <node concept="37vLTw" id="1y1FD3qEluP" role="2Oq$k0">
              <ref role="3cqZAo" node="1y1FD3qDXl5" resolve="myValueField" />
            </node>
            <node concept="liA8E" id="1y1FD3qEpDy" role="2OqNvi">
              <ref role="37wK5l" to="qqrq:~JBTextField.setText(java.lang.String)" resolve="setText" />
              <node concept="2YIFZM" id="1y1FD3qEwcs" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Double.toString(double)" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                <node concept="37vLTw" id="1y1FD3qEwtR" role="37wK5m">
                  <ref role="3cqZAo" node="1y1FD3qEmGu" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1y1FD3qEn8Z" role="3clF45" />
      <node concept="3Tm1VV" id="1y1FD3qEluY" role="1B3o_S" />
      <node concept="37vLTG" id="1y1FD3qEmGu" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10OMs4" id="1y1FD3qH5Dt" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1y1FD3qDOO5" role="1B3o_S" />
    <node concept="3uibUv" id="1y1FD3qDQOQ" role="1zkMxy">
      <ref role="3uigEE" to="qqrq:~JBPanel" resolve="JBPanel" />
    </node>
  </node>
  <node concept="sE7Ow" id="4gibKcM_3Tu">
    <property role="TrG5h" value="NetworkInstance_OpenDeclaration" />
    <property role="2uzpH1" value="Open Network Declaration" />
    <node concept="tnohg" id="4gibKcM_3Tv" role="tncku">
      <node concept="3clFbS" id="4gibKcM_3Tw" role="2VODD2">
        <node concept="3cpWs8" id="4kSwwtS$_0T" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS$_0R" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="4kSwwtSCmXs" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2OqwBi" id="4gibKcM_qre" role="33vP2m">
              <node concept="2WthIp" id="4gibKcM_qrf" role="2Oq$k0" />
              <node concept="1DTwFV" id="4gibKcM_qrg" role="2OqNvi">
                <ref role="2WH_rO" node="4gibKcM_j46" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4kSwwtS$_0W" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS$_0X" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="4kSwwtS$_0Y" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="4kSwwtS$_0Z" role="33vP2m">
              <node concept="1eOMI4" id="4kSwwtS$_10" role="2Oq$k0">
                <node concept="0kSF2" id="4kSwwtS$_11" role="1eOMHV">
                  <node concept="3uibUv" id="3WC2DnYwuCV" role="0kSFW">
                    <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                  </node>
                  <node concept="2OqwBi" id="4kSwwtS$_13" role="0kSFX">
                    <node concept="37vLTw" id="4kSwwtSCnm8" role="2Oq$k0">
                      <ref role="3cqZAo" node="4kSwwtS$_0R" resolve="instance" />
                    </node>
                    <node concept="liA8E" id="4kSwwtS$_17" role="2OqNvi">
                      <ref role="37wK5l" to="74cb:~Instance.getDeclaration()" resolve="getDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4kSwwtS$_18" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3MncU7wN9Ip" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wNa78" role="3clFbG">
            <node concept="2YIFZM" id="3MncU7wN9VR" role="2Oq$k0">
              <ref role="37wK5l" to="kz9k:~NavigationSupport.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="kz9k:~NavigationSupport" resolve="NavigationSupport" />
            </node>
            <node concept="liA8E" id="3MncU7wNamt" role="2OqNvi">
              <ref role="37wK5l" to="kz9k:~NavigationSupport.openNode(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.model.SNode,boolean,boolean)" resolve="openNode" />
              <node concept="2OqwBi" id="3MncU7wO7Yk" role="37wK5m">
                <node concept="2WthIp" id="3MncU7wO7FK" role="2Oq$k0" />
                <node concept="1DTwFV" id="3MncU7wO8j1" role="2OqNvi">
                  <ref role="2WH_rO" node="3MncU7wO7$v" resolve="project" />
                </node>
              </node>
              <node concept="37vLTw" id="3MncU7wO8Pq" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtS$_0X" resolve="node" />
              </node>
              <node concept="3clFbT" id="3MncU7wO8YO" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="3MncU7wO9jC" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="4gibKcM_j46" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="je9f:~RichEditorDataKeys.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
      <node concept="1oajcY" id="4gibKcM_j47" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3MncU7wO7$v" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3MncU7wO7$w" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="4gibKcM_j4b" role="tmbBb">
      <node concept="3clFbS" id="4gibKcM_j4c" role="2VODD2">
        <node concept="3cpWs8" id="4kSwwtS$_1p" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS$_1n" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="4kSwwtSCmNg" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2OqwBi" id="4gibKcM_ko2" role="33vP2m">
              <node concept="2WthIp" id="4gibKcM_ko3" role="2Oq$k0" />
              <node concept="1DTwFV" id="4gibKcM_ko4" role="2OqNvi">
                <ref role="2WH_rO" node="4gibKcM_j46" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4gibKcM_lMe" role="3cqZAp">
          <node concept="2ZW3vV" id="4gibKcM_oIB" role="3clFbG">
            <node concept="3uibUv" id="3WC2DnYwuBA" role="2ZW6by">
              <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
            </node>
            <node concept="2OqwBi" id="4kSwwtSCndt" role="2ZW6bz">
              <node concept="37vLTw" id="4kSwwtSCndu" role="2Oq$k0">
                <ref role="3cqZAo" node="4kSwwtS$_1n" resolve="instance" />
              </node>
              <node concept="liA8E" id="5oxN2jlFmMJ" role="2OqNvi">
                <ref role="37wK5l" to="74cb:~Instance.getDeclaration()" resolve="getDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="1DfKejr6etI">
    <property role="TrG5h" value="MapFunctionBlocksGroup" />
    <property role="1XlLyE" value="true" />
    <property role="2f7twF" value="Map to" />
    <property role="1rdrE6" value="true" />
    <node concept="2OiAzN" id="1DfKejr6gmR" role="ftER_">
      <node concept="2OiTZ2" id="1DfKejr6gmT" role="2Oj6PV">
        <node concept="3clFbS" id="1DfKejr6gmV" role="2VODD2">
          <node concept="3cpWs8" id="1DfKejr6kHs" role="3cqZAp">
            <node concept="3cpWsn" id="1DfKejr6kHt" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="1DfKejr7g3t" role="1tU5fm" />
              <node concept="2OqwBi" id="1DfKejr6kHu" role="33vP2m">
                <node concept="2OqwBi" id="1DfKejr6kHv" role="2Oq$k0">
                  <node concept="tl45R" id="1DfKejr6kHw" role="2Oq$k0" />
                  <node concept="liA8E" id="1DfKejr6kHx" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
                <node concept="liA8E" id="1DfKejr6kHy" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                  <node concept="10M0yZ" id="1DfKejr7gjN" role="37wK5m">
                    <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
                    <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6mkmem0vqKp" role="3cqZAp">
            <node concept="3cpWsn" id="6mkmem0vqKq" role="3cpWs9">
              <property role="TrG5h" value="project" />
              <node concept="3uibUv" id="6mkmem0vtrj" role="1tU5fm">
                <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
              </node>
              <node concept="2OqwBi" id="6mkmem0vqKr" role="33vP2m">
                <node concept="2OqwBi" id="6mkmem0vqKs" role="2Oq$k0">
                  <node concept="tl45R" id="6mkmem0vqKt" role="2Oq$k0" />
                  <node concept="liA8E" id="6mkmem0vqKu" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
                <node concept="liA8E" id="6mkmem0vqKv" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                  <node concept="10M0yZ" id="6mkmem0vsWZ" role="37wK5m">
                    <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                    <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6mkmem0voJ5" role="3cqZAp">
            <node concept="3cpWsn" id="6mkmem0voJ6" role="3cpWs9">
              <property role="TrG5h" value="repository" />
              <node concept="3uibUv" id="QE5KxyIoEC" role="1tU5fm">
                <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
              </node>
              <node concept="2YIFZM" id="6mkmem0vr5Q" role="33vP2m">
                <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                <node concept="37vLTw" id="6mkmem0vr6O" role="37wK5m">
                  <ref role="3cqZAo" node="6mkmem0vqKq" resolve="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1DfKejr7g$T" role="3cqZAp">
            <node concept="3clFbS" id="1DfKejr7g$V" role="3clFbx">
              <node concept="3cpWs8" id="1DfKejr6t3s" role="3cqZAp">
                <node concept="3cpWsn" id="1DfKejr6t3t" role="3cpWs9">
                  <property role="TrG5h" value="resources" />
                  <node concept="A3Dl8" id="1DfKejr6t1b" role="1tU5fm">
                    <node concept="3Tqbb2" id="1DfKejr6t1e" role="A3Ik2">
                      <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1DfKejr7hPN" role="33vP2m">
                    <node concept="2OqwBi" id="1DfKejr7hDH" role="2Oq$k0">
                      <node concept="37vLTw" id="1DfKejr7hz4" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DfKejr6kHt" resolve="node" />
                      </node>
                      <node concept="1mfA1w" id="1DfKejr7hPh" role="2OqNvi" />
                    </node>
                    <node concept="2Rf3mk" id="1DfKejr7i2r" role="2OqNvi">
                      <node concept="1xMEDy" id="1DfKejr7i2t" role="1xVPHs">
                        <node concept="chp4Y" id="1DfKejr7i9y" role="ri$Ld">
                          <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="74jd4DV_Q_d" role="3cqZAp">
                <node concept="3cpWsn" id="74jd4DV_Q_e" role="3cpWs9">
                  <property role="TrG5h" value="cell" />
                  <node concept="3uibUv" id="74jd4DV_Rin" role="1tU5fm">
                    <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                  </node>
                  <node concept="2OqwBi" id="74jd4DV_Q_g" role="33vP2m">
                    <node concept="2OqwBi" id="74jd4DV_Q_h" role="2Oq$k0">
                      <node concept="tl45R" id="74jd4DV_Q_i" role="2Oq$k0" />
                      <node concept="liA8E" id="74jd4DV_Q_j" role="2OqNvi">
                        <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="74jd4DV_Q_k" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                      <node concept="10M0yZ" id="74jd4DV_QMz" role="37wK5m">
                        <ref role="3cqZAo" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
                        <ref role="1PxDUh" to="k3nr:~MPSEditorDataKeys" resolve="MPSEditorDataKeys" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="74jd4DV_Ru6" role="3cqZAp">
                <node concept="3clFbS" id="74jd4DV_Ru8" role="3clFbx">
                  <node concept="2Gpval" id="1DfKejr6t$g" role="3cqZAp">
                    <node concept="2GrKxI" id="1DfKejr6t$i" role="2Gsz3X">
                      <property role="TrG5h" value="resource" />
                    </node>
                    <node concept="37vLTw" id="1DfKejr6tU3" role="2GsD0m">
                      <ref role="3cqZAo" node="1DfKejr6t3t" resolve="resources" />
                    </node>
                    <node concept="3clFbS" id="1DfKejr6t$m" role="2LFqv$">
                      <node concept="2JFkCU" id="1DfKejr6udq" role="3cqZAp">
                        <node concept="tCFHf" id="1DfKejr791a" role="2JFLmv">
                          <ref role="tCJdB" node="1DfKejr6uwp" resolve="MapSelectedFunctionBlocks" />
                          <node concept="2OqwBi" id="6mkmem0vtBl" role="2J__8u">
                            <node concept="37vLTw" id="6mkmem0vtxA" role="2Oq$k0">
                              <ref role="3cqZAo" node="6mkmem0voJ6" resolve="repository" />
                            </node>
                            <node concept="liA8E" id="6mkmem0vtJZ" role="2OqNvi">
                              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                              <node concept="2GrUjf" id="6mkmem0vtKR" role="37wK5m">
                                <ref role="2Gs0qQ" node="1DfKejr6t$i" resolve="resource" />
                              </node>
                              <node concept="3VsKOn" id="6mkmem0vtPa" role="37wK5m">
                                <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="74jd4DV_T9b" role="3clFbw">
                  <node concept="3y3z36" id="74jd4DV_Tl8" role="3uHU7B">
                    <node concept="10Nm6u" id="74jd4DV_Tq7" role="3uHU7w" />
                    <node concept="37vLTw" id="74jd4DV_Tc7" role="3uHU7B">
                      <ref role="3cqZAo" node="74jd4DV_Q_e" resolve="cell" />
                    </node>
                  </node>
                  <node concept="3y3z36" id="74jd4DV_SHa" role="3uHU7w">
                    <node concept="10Nm6u" id="74jd4DV_SNU" role="3uHU7w" />
                    <node concept="2OqwBi" id="74jd4DV_RTF" role="3uHU7B">
                      <node concept="2OqwBi" id="74jd4DV_RB_" role="2Oq$k0">
                        <node concept="37vLTw" id="74jd4DV_RuN" role="2Oq$k0">
                          <ref role="3cqZAo" node="74jd4DV_Q_e" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="74jd4DV_RLc" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                        </node>
                      </node>
                      <node concept="liA8E" id="74jd4DV_S3F" role="2OqNvi">
                        <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                        <node concept="10M0yZ" id="6AO1fiERTRA" role="37wK5m">
                          <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                          <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="74jd4DV_SYh" role="9aQIa">
                  <node concept="3clFbS" id="74jd4DV_SYi" role="9aQI4">
                    <node concept="2Gpval" id="74jd4DV_SZA" role="3cqZAp">
                      <node concept="2GrKxI" id="74jd4DV_SZB" role="2Gsz3X">
                        <property role="TrG5h" value="resource" />
                      </node>
                      <node concept="37vLTw" id="74jd4DV_SZC" role="2GsD0m">
                        <ref role="3cqZAo" node="1DfKejr6t3t" resolve="resources" />
                      </node>
                      <node concept="3clFbS" id="74jd4DV_SZD" role="2LFqv$">
                        <node concept="2JFkCU" id="74jd4DV_SZE" role="3cqZAp">
                          <node concept="tCFHf" id="74jd4DV_SZF" role="2JFLmv">
                            <ref role="tCJdB" node="74jd4DV$tjw" resolve="MapFunctionBlocksInApplication" />
                            <node concept="2OqwBi" id="6mkmem0vtQV" role="2J__8u">
                              <node concept="37vLTw" id="6mkmem0vtQW" role="2Oq$k0">
                                <ref role="3cqZAo" node="6mkmem0voJ6" resolve="repository" />
                              </node>
                              <node concept="liA8E" id="6mkmem0vtQX" role="2OqNvi">
                                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                <node concept="2GrUjf" id="6mkmem0vtQY" role="37wK5m">
                                  <ref role="2Gs0qQ" node="74jd4DV_SZB" resolve="resource" />
                                </node>
                                <node concept="3VsKOn" id="6mkmem0vtQZ" role="37wK5m">
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
            </node>
            <node concept="2OqwBi" id="1DfKejr7gZ9" role="3clFbw">
              <node concept="37vLTw" id="1DfKejr7gK9" role="2Oq$k0">
                <ref role="3cqZAo" node="1DfKejr6kHt" resolve="node" />
              </node>
              <node concept="1mIQ4w" id="1DfKejr7heW" role="2OqNvi">
                <node concept="chp4Y" id="1DfKejr7hfw" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tT9cl" id="1DfKejr7982" role="2f5YQi">
      <ref role="tU$_T" node="3DiEZ8TON84" resolve="IEC61499Actions" />
      <ref role="2f8Tey" node="1DfKejr796v" resolve="mapper" />
    </node>
  </node>
  <node concept="sE7Ow" id="1DfKejr6uwp">
    <property role="TrG5h" value="MapSelectedFunctionBlocks" />
    <property role="2uzpH1" value="Map to Resource" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="1DfKejr74H6" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="1DfKejr74H7" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1DfKejr6uwq" role="tncku">
      <node concept="3clFbS" id="1DfKejr6uwr" role="2VODD2">
        <node concept="3cpWs8" id="1DfKejran91" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejran92" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="1DfKejran2A" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2OqwBi" id="1DfKejran93" role="33vP2m">
              <node concept="2OqwBi" id="1DfKejran94" role="2Oq$k0">
                <node concept="2OqwBi" id="1DfKejran95" role="2Oq$k0">
                  <node concept="2WthIp" id="1DfKejran96" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1DfKejran97" role="2OqNvi">
                    <ref role="2WH_rO" node="1DfKejr74H6" resolve="cell" />
                  </node>
                </node>
                <node concept="liA8E" id="1DfKejran98" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                </node>
              </node>
              <node concept="liA8E" id="1DfKejran99" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6AO1fiEQL2j" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DfKejr8H5O" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejr8H5P" role="3cpWs9">
            <property role="TrG5h" value="selectedFBs" />
            <node concept="3uibUv" id="1DfKejr8H5Q" role="1tU5fm">
              <ref role="3uigEE" to="kdnk:~SelectionModel" resolve="SelectionModel" />
              <node concept="3uibUv" id="6SLp5w3Jqpg" role="11_B2D">
                <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2OqwBi" id="1DfKejr8H5S" role="33vP2m">
              <node concept="2OqwBi" id="1DfKejr8H5T" role="2Oq$k0">
                <node concept="2OqwBi" id="1DfKejr8H5U" role="2Oq$k0">
                  <node concept="2WthIp" id="1DfKejr8H5V" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1DfKejr8H5W" role="2OqNvi">
                    <ref role="2WH_rO" node="1DfKejr74H6" resolve="cell" />
                  </node>
                </node>
                <node concept="liA8E" id="1DfKejr8H5X" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                </node>
              </node>
              <node concept="liA8E" id="1DfKejr8H5Y" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6AO1fiEQLs0" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DfKejr8IdS" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejr8IdT" role="3cpWs9">
            <property role="TrG5h" value="selectedComponents" />
            <node concept="2hMVRd" id="1DfKejr8K6W" role="1tU5fm">
              <node concept="3uibUv" id="6SLp5w3JqRV" role="2hN53Y">
                <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2OqwBi" id="1DfKejr8IdU" role="33vP2m">
              <node concept="37vLTw" id="1DfKejr8IdV" role="2Oq$k0">
                <ref role="3cqZAo" node="1DfKejr8H5P" resolve="selectedFBs" />
              </node>
              <node concept="liA8E" id="1DfKejr8IdW" role="2OqNvi">
                <ref role="37wK5l" to="kdnk:~SelectionModel.getSelectedComponents()" resolve="getSelectedComponents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DfKejraFe8" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejraFee" role="3cpWs9">
            <property role="TrG5h" value="functionBlocks" />
            <node concept="2hMVRd" id="1DfKejraFeg" role="1tU5fm">
              <node concept="3uibUv" id="1DfKejraFQI" role="2hN53Y">
                <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
              </node>
            </node>
            <node concept="2ShNRf" id="1DfKejraFUp" role="33vP2m">
              <node concept="2i4dXS" id="1DfKejraJrO" role="2ShVmc">
                <node concept="3uibUv" id="1DfKejraKcl" role="HW$YZ">
                  <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
                </node>
                <node concept="2OqwBi" id="1DfKejraLIS" role="I$8f6">
                  <node concept="2OqwBi" id="1DfKejr8MyS" role="2Oq$k0">
                    <node concept="2OqwBi" id="4Hbpy_fGlU7" role="2Oq$k0">
                      <node concept="2OqwBi" id="3tHZ0yHMXyb" role="2Oq$k0">
                        <node concept="37vLTw" id="1DfKejr8MyT" role="2Oq$k0">
                          <ref role="3cqZAo" node="1DfKejr8IdT" resolve="selectedComponents" />
                        </node>
                        <node concept="UnYns" id="3tHZ0yHMYz9" role="2OqNvi">
                          <node concept="3uibUv" id="6SLp5w3JqWF" role="UnYnz">
                            <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                          </node>
                        </node>
                      </node>
                      <node concept="3$u5V9" id="4Hbpy_fGmUN" role="2OqNvi">
                        <node concept="1bVj0M" id="4Hbpy_fGmUP" role="23t8la">
                          <node concept="3clFbS" id="4Hbpy_fGmUQ" role="1bW5cS">
                            <node concept="3clFbF" id="4Hbpy_fGnb0" role="3cqZAp">
                              <node concept="2OqwBi" id="4Hbpy_fGnrv" role="3clFbG">
                                <node concept="37vLTw" id="4Hbpy_fGnaZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4Hbpy_fGmUR" resolve="it" />
                                </node>
                                <node concept="liA8E" id="6SLp5w3JrvY" role="2OqNvi">
                                  <ref role="37wK5l" to="1hzy:~FunctionBlockView.getComponent()" resolve="getComponent" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="4Hbpy_fGmUR" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4Hbpy_fGmUS" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="UnYns" id="1DfKejr8MyU" role="2OqNvi">
                      <node concept="3uibUv" id="1DfKejr8MyV" role="UnYnz">
                        <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="1DfKejr8NrO" role="2OqNvi">
                    <node concept="1bVj0M" id="1DfKejr8NrQ" role="23t8la">
                      <node concept="3clFbS" id="1DfKejr8NrR" role="1bW5cS">
                        <node concept="3clFbF" id="1DfKejrai$r" role="3cqZAp">
                          <node concept="2OqwBi" id="1DfKejraiOR" role="3clFbG">
                            <node concept="37vLTw" id="1DfKejraoa4" role="2Oq$k0">
                              <ref role="3cqZAo" node="1DfKejran92" resolve="network" />
                            </node>
                            <node concept="liA8E" id="1DfKejraop4" role="2OqNvi">
                              <ref role="37wK5l" to="74cb:~NetworkInstance.getChild(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase)" resolve="getChild" />
                              <node concept="37vLTw" id="1DfKejraosB" role="37wK5m">
                                <ref role="3cqZAo" node="1DfKejr8NrS" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="1DfKejr8NrS" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="1DfKejr8NrT" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1S4cYrOLEtD" role="3cqZAp">
          <node concept="2YIFZM" id="1S4cYrOLF9f" role="3clFbG">
            <ref role="37wK5l" node="1S4cYrOKZI8" resolve="map" />
            <ref role="1Pybhc" node="1S4cYrOKY3V" resolve="FBsMapActions" />
            <node concept="2OqwBi" id="1S4cYrOLFGd" role="37wK5m">
              <node concept="2WthIp" id="1S4cYrOLFq6" role="2Oq$k0" />
              <node concept="2BZ7hE" id="sOaa8ZZ33x" role="2OqNvi">
                <ref role="2WH_rO" node="sOaa8ZZ1T2" resolve="resource" />
              </node>
            </node>
            <node concept="37vLTw" id="1S4cYrOLG4a" role="37wK5m">
              <ref role="3cqZAo" node="1DfKejraFee" resolve="functionBlocks" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="1DfKejr75i3" role="tmbBb">
      <node concept="3clFbS" id="1DfKejr75i4" role="2VODD2">
        <node concept="3cpWs8" id="1DfKejrap1h" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejrap1i" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="1DfKejrap1j" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2OqwBi" id="1DfKejrap1k" role="33vP2m">
              <node concept="2OqwBi" id="1DfKejrap1l" role="2Oq$k0">
                <node concept="2OqwBi" id="1DfKejrap1m" role="2Oq$k0">
                  <node concept="2WthIp" id="1DfKejrap1n" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1DfKejrap1o" role="2OqNvi">
                    <ref role="2WH_rO" node="1DfKejr74H6" resolve="cell" />
                  </node>
                </node>
                <node concept="liA8E" id="1DfKejrap1p" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                </node>
              </node>
              <node concept="liA8E" id="1DfKejrap1q" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6AO1fiEQIuH" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1DfKejraqix" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejraqiz" role="3clFbx">
            <node concept="3cpWs8" id="1DfKejr8BXn" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejr8BXo" role="3cpWs9">
                <property role="TrG5h" value="selectedFBs" />
                <node concept="3uibUv" id="1DfKejr8BKV" role="1tU5fm">
                  <ref role="3uigEE" to="kdnk:~SelectionModel" resolve="SelectionModel" />
                  <node concept="3uibUv" id="6SLp5w3Jpit" role="11_B2D">
                    <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1DfKejr8BXp" role="33vP2m">
                  <node concept="2OqwBi" id="1DfKejr8BXq" role="2Oq$k0">
                    <node concept="2OqwBi" id="1DfKejr8BXr" role="2Oq$k0">
                      <node concept="2WthIp" id="1DfKejr8BXs" role="2Oq$k0" />
                      <node concept="1DTwFV" id="1DfKejr8BXt" role="2OqNvi">
                        <ref role="2WH_rO" node="1DfKejr74H6" resolve="cell" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1DfKejr8BXu" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1DfKejr8BXv" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                    <node concept="10M0yZ" id="6AO1fiEQKgc" role="37wK5m">
                      <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                      <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1DfKejr8A7o" role="3cqZAp">
              <node concept="3clFbS" id="1DfKejr8A7q" role="3clFbx">
                <node concept="3clFbF" id="1DfKejr75rj" role="3cqZAp">
                  <node concept="2OqwBi" id="1DfKejr76yH" role="3clFbG">
                    <node concept="2OqwBi" id="1DfKejr75Ih" role="2Oq$k0">
                      <node concept="tl45R" id="1DfKejr75ri" role="2Oq$k0" />
                      <node concept="liA8E" id="1DfKejr76ke" role="2OqNvi">
                        <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1DfKejr76NW" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                      <node concept="2OqwBi" id="1DfKejr78f$" role="37wK5m">
                        <node concept="2OqwBi" id="1DfKejr77mB" role="2Oq$k0">
                          <node concept="2WthIp" id="1DfKejr76V3" role="2Oq$k0" />
                          <node concept="2BZ7hE" id="sOaa8ZZ2Bl" role="2OqNvi">
                            <ref role="2WH_rO" node="sOaa8ZZ1T2" resolve="resource" />
                          </node>
                        </node>
                        <node concept="liA8E" id="sOaa8ZYTX4" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1DfKejr8Fvj" role="3cqZAp">
                  <node concept="3clFbT" id="1DfKejr8FGy" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="1DfKejr8CBt" role="3clFbw">
                <node concept="3fqX7Q" id="1DfKejr8FgM" role="3uHU7w">
                  <node concept="2OqwBi" id="1DfKejr8FgO" role="3fr31v">
                    <node concept="2OqwBi" id="1DfKejr8FgP" role="2Oq$k0">
                      <node concept="37vLTw" id="1DfKejr8FgQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DfKejr8BXo" resolve="selectedFBs" />
                      </node>
                      <node concept="liA8E" id="1DfKejr8FgR" role="2OqNvi">
                        <ref role="37wK5l" to="kdnk:~SelectionModel.getSelectedComponents()" resolve="getSelectedComponents" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3tHZ0yHsdkt" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.isEmpty()" resolve="isEmpty" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="1DfKejr8Cte" role="3uHU7B">
                  <node concept="37vLTw" id="1DfKejr8BXy" role="3uHU7B">
                    <ref role="3cqZAo" node="1DfKejr8BXo" resolve="selectedFBs" />
                  </node>
                  <node concept="10Nm6u" id="1DfKejr8CtC" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1DfKejrasTf" role="3clFbw">
            <node concept="3uibUv" id="1DfKejratsK" role="2ZW6by">
              <ref role="3uigEE" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
            </node>
            <node concept="2OqwBi" id="1DfKejras9P" role="2ZW6bz">
              <node concept="2OqwBi" id="1DfKejrar5l" role="2Oq$k0">
                <node concept="37vLTw" id="1DfKejraqyK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1DfKejrap1i" resolve="network" />
                </node>
                <node concept="liA8E" id="1DfKejrarEs" role="2OqNvi">
                  <ref role="37wK5l" to="74cb:~Instance.getRootInstance()" resolve="getRootInstance" />
                </node>
              </node>
              <node concept="liA8E" id="5oxN2jlFhhy" role="2OqNvi">
                <ref role="37wK5l" to="74cb:~Instance.getDeclaration()" resolve="getDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1DfKejr8GdU" role="3cqZAp">
          <node concept="3clFbT" id="1DfKejr8GeZ" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2JriF1" id="sOaa8ZZ1T2" role="2JrayB">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="sOaa8ZZ1T3" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZZ2jp" role="1tU5fm">
        <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
      </node>
      <node concept="2K2imR" id="sOaa8ZZ3o3" role="2K2Cet">
        <node concept="3clFbS" id="sOaa8ZZ3o4" role="2VODD2">
          <node concept="3clFbF" id="sOaa8ZZ3SY" role="3cqZAp">
            <node concept="2OqwBi" id="sOaa8ZZ48F" role="3clFbG">
              <node concept="2K3dj_" id="sOaa8ZZ3SX" role="2Oq$k0" />
              <node concept="liA8E" id="sOaa8ZZ4Rk" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1S4cYrOKY3V">
    <property role="TrG5h" value="FBsMapActions" />
    <node concept="2tJIrI" id="1S4cYrOKY4T" role="jymVt" />
    <node concept="2YIFZL" id="1S4cYrOKZI8" role="jymVt">
      <property role="TrG5h" value="map" />
      <node concept="3clFbS" id="1S4cYrOKZIb" role="3clF47">
        <node concept="3cpWs8" id="sOaa8ZYbt5" role="3cqZAp">
          <node concept="3cpWsn" id="sOaa8ZYbt6" role="3cpWs9">
            <property role="TrG5h" value="resourceImpl" />
            <node concept="3uibUv" id="sOaa8ZYaUz" role="1tU5fm">
              <ref role="3uigEE" to="go3h:3MncU7wPlNy" resolve="ResourceDeclarationByNode" />
            </node>
            <node concept="1eOMI4" id="sOaa8ZYbt7" role="33vP2m">
              <node concept="10QFUN" id="sOaa8ZYbt8" role="1eOMHV">
                <node concept="37vLTw" id="sOaa8ZYbt9" role="10QFUP">
                  <ref role="3cqZAo" node="1S4cYrOKZVg" resolve="resource" />
                </node>
                <node concept="3uibUv" id="sOaa8ZYbta" role="10QFUM">
                  <ref role="3uigEE" to="go3h:3MncU7wPlNy" resolve="ResourceDeclarationByNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="sOaa8ZXXIj" role="3cqZAp">
          <node concept="3cpWsn" id="sOaa8ZXXIk" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="739Y6csNwQY" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
            </node>
            <node concept="2OqwBi" id="sOaa8ZXYwN" role="33vP2m">
              <node concept="37vLTw" id="sOaa8ZYbtb" role="2Oq$k0">
                <ref role="3cqZAo" node="sOaa8ZYbt6" resolve="resourceImpl" />
              </node>
              <node concept="liA8E" id="4Hbpy_fGgdc" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ41" resolve="getOwner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="sOaa8ZYNhz" role="3cqZAp">
          <node concept="3cpWsn" id="sOaa8ZYNh$" role="3cpWs9">
            <property role="TrG5h" value="resourceNode" />
            <node concept="3Tqbb2" id="sOaa8ZYMPp" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="sOaa8ZYNh_" role="33vP2m">
              <node concept="37vLTw" id="sOaa8ZYNhA" role="2Oq$k0">
                <ref role="3cqZAo" node="sOaa8ZYbt6" resolve="resourceImpl" />
              </node>
              <node concept="liA8E" id="sOaa8ZYNhB" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DfKejrawJQ" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejrawJT" role="3cpWs9">
            <property role="TrG5h" value="system" />
            <node concept="3Tqbb2" id="1DfKejrawJO" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
            </node>
            <node concept="2OqwBi" id="1DfKejraxD_" role="33vP2m">
              <node concept="37vLTw" id="sOaa8ZYNhC" role="2Oq$k0">
                <ref role="3cqZAo" node="sOaa8ZYNh$" resolve="resourceNode" />
              </node>
              <node concept="2Xjw5R" id="1DfKejray1x" role="2OqNvi">
                <node concept="1xMEDy" id="1DfKejray1z" role="1xVPHs">
                  <node concept="chp4Y" id="1DfKejray3W" role="ri$Ld">
                    <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                  </node>
                </node>
                <node concept="1xLf8o" id="1DfKejray63" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1DfKejra_j1" role="3cqZAp">
          <node concept="2GrKxI" id="1DfKejra_j3" role="2Gsz3X">
            <property role="TrG5h" value="mapping" />
          </node>
          <node concept="3clFbS" id="1DfKejra_j7" role="2LFqv$">
            <node concept="3clFbJ" id="1DfKejraBiS" role="3cqZAp">
              <node concept="3clFbS" id="1DfKejraBiU" role="3clFbx">
                <node concept="3cpWs8" id="1DfKejraU2J" role="3cqZAp">
                  <node concept="3cpWsn" id="1DfKejraU2K" role="3cpWs9">
                    <property role="TrG5h" value="functionBlock" />
                    <node concept="3Tqbb2" id="1DfKejraTqf" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1DfKejraU2L" role="33vP2m">
                      <node concept="2OqwBi" id="1DfKejraU2M" role="2Oq$k0">
                        <node concept="2GrUjf" id="1DfKejraU2N" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1DfKejra_j3" resolve="mapping" />
                        </node>
                        <node concept="3TrEf2" id="1DfKejraU2O" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:uLhTRRmrel" resolve="resource" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="1DfKejraU2P" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:uLhTRRtpn2" resolve="functionBlock" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1DfKejraU$f" role="3cqZAp">
                  <node concept="2OqwBi" id="1DfKejrb4Iw" role="3clFbG">
                    <node concept="2OqwBi" id="1DfKejraY48" role="2Oq$k0">
                      <node concept="2OqwBi" id="1DfKejraV9r" role="2Oq$k0">
                        <node concept="2OqwBi" id="1DfKejraUIA" role="2Oq$k0">
                          <node concept="37vLTw" id="1DfKejraU$d" role="2Oq$k0">
                            <ref role="3cqZAo" node="1DfKejraU2K" resolve="functionBlock" />
                          </node>
                          <node concept="1mfA1w" id="1DfKejraV2K" role="2OqNvi" />
                        </node>
                        <node concept="2Rf3mk" id="1DfKejraVkW" role="2OqNvi">
                          <node concept="1xMEDy" id="1DfKejraVkY" role="1xVPHs">
                            <node concept="chp4Y" id="1DfKejrb8_n" role="ri$Ld">
                              <ref role="cht4Q" to="xiqq:6z_cCa7NbTh" resolve="ComponentEndpoint" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="1DfKejrb2D6" role="2OqNvi">
                        <node concept="1bVj0M" id="1DfKejrb2D8" role="23t8la">
                          <node concept="3clFbS" id="1DfKejrb2D9" role="1bW5cS">
                            <node concept="3clFbF" id="1DfKejrb2LN" role="3cqZAp">
                              <node concept="3clFbC" id="1DfKejrb4bM" role="3clFbG">
                                <node concept="37vLTw" id="1DfKejrb4qa" role="3uHU7w">
                                  <ref role="3cqZAo" node="1DfKejraU2K" resolve="functionBlock" />
                                </node>
                                <node concept="2OqwBi" id="1DfKejrb31G" role="3uHU7B">
                                  <node concept="37vLTw" id="1DfKejrb2LM" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1DfKejrb2Da" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="1DfKejrb3q_" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="1DfKejrb2Da" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1DfKejrb2Db" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="1DfKejrb5jP" role="2OqNvi">
                      <node concept="1bVj0M" id="1DfKejrb5jR" role="23t8la">
                        <node concept="3clFbS" id="1DfKejrb5jS" role="1bW5cS">
                          <node concept="3clFbF" id="1DfKejrb5rU" role="3cqZAp">
                            <node concept="2OqwBi" id="1DfKejrb6tE" role="3clFbG">
                              <node concept="2OqwBi" id="1DfKejrb5DJ" role="2Oq$k0">
                                <node concept="37vLTw" id="1DfKejrb5rT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1DfKejrb5jT" resolve="it" />
                                </node>
                                <node concept="1mfA1w" id="1DfKejrb6ix" role="2OqNvi" />
                              </node>
                              <node concept="3YRAZt" id="1DfKejrb6Gl" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1DfKejrb5jT" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1DfKejrb5jU" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1DfKejrb945" role="3cqZAp">
                  <node concept="2OqwBi" id="1DfKejrb946" role="3clFbG">
                    <node concept="2OqwBi" id="1DfKejrb947" role="2Oq$k0">
                      <node concept="2OqwBi" id="1DfKejrb948" role="2Oq$k0">
                        <node concept="2OqwBi" id="1DfKejrb949" role="2Oq$k0">
                          <node concept="37vLTw" id="1DfKejrb94a" role="2Oq$k0">
                            <ref role="3cqZAo" node="1DfKejraU2K" resolve="functionBlock" />
                          </node>
                          <node concept="1mfA1w" id="1DfKejrb94b" role="2OqNvi" />
                        </node>
                        <node concept="2Rf3mk" id="1DfKejrb94c" role="2OqNvi">
                          <node concept="1xMEDy" id="1DfKejrb94d" role="1xVPHs">
                            <node concept="chp4Y" id="1DfKejrb9rK" role="ri$Ld">
                              <ref role="cht4Q" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="1DfKejrb94f" role="2OqNvi">
                        <node concept="1bVj0M" id="1DfKejrb94g" role="23t8la">
                          <node concept="3clFbS" id="1DfKejrb94h" role="1bW5cS">
                            <node concept="3clFbF" id="1DfKejrb94i" role="3cqZAp">
                              <node concept="3clFbC" id="1DfKejrb94j" role="3clFbG">
                                <node concept="37vLTw" id="1DfKejrb94k" role="3uHU7w">
                                  <ref role="3cqZAo" node="1DfKejraU2K" resolve="functionBlock" />
                                </node>
                                <node concept="2OqwBi" id="1DfKejrb94l" role="3uHU7B">
                                  <node concept="37vLTw" id="1DfKejrb94m" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1DfKejrb94o" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="1DfKejrba8i" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="1DfKejrb94o" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1DfKejrb94p" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="1DfKejrb94q" role="2OqNvi">
                      <node concept="1bVj0M" id="1DfKejrb94r" role="23t8la">
                        <node concept="3clFbS" id="1DfKejrb94s" role="1bW5cS">
                          <node concept="3clFbF" id="1DfKejrb94t" role="3cqZAp">
                            <node concept="2OqwBi" id="1DfKejrb94u" role="3clFbG">
                              <node concept="2OqwBi" id="1DfKejrb94v" role="2Oq$k0">
                                <node concept="37vLTw" id="1DfKejrb94w" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1DfKejrb94z" resolve="it" />
                                </node>
                                <node concept="1mfA1w" id="1DfKejrb94x" role="2OqNvi" />
                              </node>
                              <node concept="3YRAZt" id="1DfKejrb94y" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1DfKejrb94z" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1DfKejrb94$" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1DfKejrbatJ" role="3cqZAp">
                  <node concept="2OqwBi" id="1DfKejrbatK" role="3clFbG">
                    <node concept="2OqwBi" id="1DfKejrbatL" role="2Oq$k0">
                      <node concept="2OqwBi" id="1DfKejrbatM" role="2Oq$k0">
                        <node concept="2OqwBi" id="1DfKejrbatN" role="2Oq$k0">
                          <node concept="37vLTw" id="1DfKejrbatO" role="2Oq$k0">
                            <ref role="3cqZAo" node="1DfKejraU2K" resolve="functionBlock" />
                          </node>
                          <node concept="1mfA1w" id="1DfKejrbatP" role="2OqNvi" />
                        </node>
                        <node concept="2Rf3mk" id="1DfKejrbatQ" role="2OqNvi">
                          <node concept="1xMEDy" id="1DfKejrbatR" role="1xVPHs">
                            <node concept="chp4Y" id="1DfKejrbaDh" role="ri$Ld">
                              <ref role="cht4Q" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="1DfKejrbatT" role="2OqNvi">
                        <node concept="1bVj0M" id="1DfKejrbatU" role="23t8la">
                          <node concept="3clFbS" id="1DfKejrbatV" role="1bW5cS">
                            <node concept="3clFbF" id="1DfKejrbatW" role="3cqZAp">
                              <node concept="3clFbC" id="1DfKejrbatX" role="3clFbG">
                                <node concept="37vLTw" id="1DfKejrbatY" role="3uHU7w">
                                  <ref role="3cqZAo" node="1DfKejraU2K" resolve="functionBlock" />
                                </node>
                                <node concept="2OqwBi" id="1DfKejrbatZ" role="3uHU7B">
                                  <node concept="37vLTw" id="1DfKejrbau0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1DfKejrbau2" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="1DfKejrch1I" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="1DfKejrbau2" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1DfKejrbau3" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="1DfKejrbau4" role="2OqNvi">
                      <node concept="1bVj0M" id="1DfKejrbau5" role="23t8la">
                        <node concept="3clFbS" id="1DfKejrbau6" role="1bW5cS">
                          <node concept="3clFbF" id="1DfKejrbau7" role="3cqZAp">
                            <node concept="2OqwBi" id="1DfKejrbau8" role="3clFbG">
                              <node concept="2OqwBi" id="1DfKejrbau9" role="2Oq$k0">
                                <node concept="37vLTw" id="1DfKejrbaua" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1DfKejrbaud" resolve="it" />
                                </node>
                                <node concept="1mfA1w" id="1DfKejrbaub" role="2OqNvi" />
                              </node>
                              <node concept="3YRAZt" id="1DfKejrbauc" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1DfKejrbaud" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1DfKejrbaue" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1DfKejraRlM" role="3cqZAp">
                  <node concept="2OqwBi" id="1DfKejraT5Y" role="3clFbG">
                    <node concept="37vLTw" id="1DfKejraU2Q" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DfKejraU2K" resolve="functionBlock" />
                    </node>
                    <node concept="3YRAZt" id="1DfKejraUlS" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbF" id="1DfKejraQi6" role="3cqZAp">
                  <node concept="2OqwBi" id="1DfKejraQp_" role="3clFbG">
                    <node concept="2GrUjf" id="1DfKejraQi5" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1DfKejra_j3" resolve="mapping" />
                    </node>
                    <node concept="3YRAZt" id="1DfKejraRbD" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1DfKejraOBz" role="3clFbw">
                <node concept="37vLTw" id="1S4cYrOLh_f" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S4cYrOKZVP" resolve="functionBlocks" />
                </node>
                <node concept="3JPx81" id="1DfKejraQ15" role="2OqNvi">
                  <node concept="2OqwBi" id="1DfKejraCPp" role="25WWJ7">
                    <node concept="2OqwBi" id="1DfKejraBsR" role="2Oq$k0">
                      <node concept="2GrUjf" id="1DfKejraBjG" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1DfKejra_j3" resolve="mapping" />
                      </node>
                      <node concept="3TrEf2" id="1DfKejraC8c" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:uLhTRRmrej" resolve="instance" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="1DfKejraDzS" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:1DfKejr8OaR" resolve="asFunctionBlockInstance" />
                      <node concept="37vLTw" id="2yJZQx2xKd3" role="37wK5m">
                        <ref role="3cqZAo" node="sOaa8ZXXIk" resolve="repository" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1DfKejraz6a" role="2GsD0m">
            <node concept="37vLTw" id="1DfKejrayDK" role="2Oq$k0">
              <ref role="3cqZAo" node="1DfKejrawJT" resolve="system" />
            </node>
            <node concept="3Tsc0h" id="1DfKejrazGZ" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:uLhTRRozfU" resolve="mappings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DfKejrchjA" role="3cqZAp" />
        <node concept="3cpWs8" id="1DfKejrcopc" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejrcopf" role="3cpWs9">
            <property role="TrG5h" value="container" />
            <node concept="3Tqbb2" id="1DfKejrcopa" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
            </node>
            <node concept="1PxgMI" id="1DfKejrcuA5" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="1DfKejrcuDe" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
              </node>
              <node concept="2OqwBi" id="1DfKejrcubu" role="1m5AlR">
                <node concept="2OqwBi" id="1DfKejrctMn" role="2Oq$k0">
                  <node concept="1eOMI4" id="1DfKejrctqQ" role="2Oq$k0">
                    <node concept="10QFUN" id="1DfKejrctue" role="1eOMHV">
                      <node concept="3uibUv" id="3WC2DnYwr12" role="10QFUM">
                        <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="1S4cYrOKbkT" role="10QFUP">
                        <node concept="2OqwBi" id="1DfKejrcriy" role="2Oq$k0">
                          <node concept="37vLTw" id="1S4cYrOLhLg" role="2Oq$k0">
                            <ref role="3cqZAo" node="1S4cYrOKZVP" resolve="functionBlocks" />
                          </node>
                          <node concept="1uHKPH" id="1DfKejrcs9$" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="1S4cYrOKbzj" role="2OqNvi">
                          <ref role="37wK5l" to="74cb:~FunctionBlockInstance.getDeclaration()" resolve="getDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1DfKejrctWg" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                  </node>
                </node>
                <node concept="liA8E" id="1DfKejrcupb" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DfKejrcuOA" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejrcuOD" role="3cpWs9">
            <property role="TrG5h" value="fbDeclarations" />
            <node concept="_YKpA" id="1DfKejrcw6Y" role="1tU5fm">
              <node concept="3Tqbb2" id="1DfKejrcwgj" role="_ZDj9">
                <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="1DfKejrc$GO" role="33vP2m">
              <node concept="2OqwBi" id="1DfKejrcxpW" role="2Oq$k0">
                <node concept="2OqwBi" id="1DfKejrcwNw" role="2Oq$k0">
                  <node concept="2OqwBi" id="1DfKejrcwoj" role="2Oq$k0">
                    <node concept="2OqwBi" id="1S4cYrOLm5F" role="2Oq$k0">
                      <node concept="37vLTw" id="1S4cYrOLjVY" role="2Oq$k0">
                        <ref role="3cqZAo" node="1S4cYrOKZVP" resolve="functionBlocks" />
                      </node>
                      <node concept="3$u5V9" id="1S4cYrOLpcs" role="2OqNvi">
                        <node concept="1bVj0M" id="1S4cYrOLpcu" role="23t8la">
                          <node concept="3clFbS" id="1S4cYrOLpcv" role="1bW5cS">
                            <node concept="3clFbF" id="1S4cYrOLr2S" role="3cqZAp">
                              <node concept="2OqwBi" id="1S4cYrOLsCf" role="3clFbG">
                                <node concept="37vLTw" id="1S4cYrOLr2R" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1S4cYrOLpcw" resolve="it" />
                                </node>
                                <node concept="liA8E" id="5oxN2jlFaLz" role="2OqNvi">
                                  <ref role="37wK5l" to="74cb:~FunctionBlockInstance.getDeclaration()" resolve="getDeclaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="1S4cYrOLpcw" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1S4cYrOLpcx" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="UnYns" id="1DfKejrcwol" role="2OqNvi">
                      <node concept="3uibUv" id="3WC2DnYwrcg" role="UnYnz">
                        <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="1DfKejrcx6O" role="2OqNvi">
                    <node concept="1bVj0M" id="1DfKejrcx6Q" role="23t8la">
                      <node concept="3clFbS" id="1DfKejrcx6R" role="1bW5cS">
                        <node concept="3clFbF" id="1DfKejrcxRe" role="3cqZAp">
                          <node concept="10QFUN" id="1DfKejrcyzv" role="3clFbG">
                            <node concept="3Tqbb2" id="1DfKejrcyM3" role="10QFUM" />
                            <node concept="2OqwBi" id="1DfKejrcxZm" role="10QFUP">
                              <node concept="37vLTw" id="1DfKejrcxRd" role="2Oq$k0">
                                <ref role="3cqZAo" node="1DfKejrcx6S" resolve="it" />
                              </node>
                              <node concept="liA8E" id="1DfKejrcydq" role="2OqNvi">
                                <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="1DfKejrcx6S" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="1DfKejrcx6T" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="v3k3i" id="1DfKejrcz7J" role="2OqNvi">
                  <node concept="chp4Y" id="1DfKejrcz8D" role="v3oSu">
                    <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1DfKejrc_5S" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DfKejrcAtr" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejrcAtu" role="3cpWs9">
            <property role="TrG5h" value="dataConnections" />
            <node concept="_YKpA" id="1DfKejrcAtn" role="1tU5fm">
              <node concept="3Tqbb2" id="1DfKejrcBTY" role="_ZDj9">
                <ref role="ehGHo" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
              </node>
            </node>
            <node concept="2OqwBi" id="1DfKejrcRaE" role="33vP2m">
              <node concept="2OqwBi" id="1DfKejrcDZm" role="2Oq$k0">
                <node concept="2OqwBi" id="1DfKejrcC7B" role="2Oq$k0">
                  <node concept="37vLTw" id="1DfKejrcBWz" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejrcopf" resolve="container" />
                  </node>
                  <node concept="3Tsc0h" id="1DfKejrcCoB" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                  </node>
                </node>
                <node concept="3zZkjj" id="1DfKejrcGoM" role="2OqNvi">
                  <node concept="1bVj0M" id="1DfKejrcGoO" role="23t8la">
                    <node concept="3clFbS" id="1DfKejrcGoP" role="1bW5cS">
                      <node concept="3clFbF" id="1DfKejrcGzK" role="3cqZAp">
                        <node concept="1Wc70l" id="1DfKejrcPsl" role="3clFbG">
                          <node concept="2OqwBi" id="1DfKejrcLeq" role="3uHU7B">
                            <node concept="37vLTw" id="1DfKejrcIpP" role="2Oq$k0">
                              <ref role="3cqZAo" node="1DfKejrcuOD" resolve="fbDeclarations" />
                            </node>
                            <node concept="3JPx81" id="1DfKejrcOFv" role="2OqNvi">
                              <node concept="1PxgMI" id="1DfKejrcSp$" role="25WWJ7">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="1DfKejrcSGJ" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="1DfKejrcHOQ" role="1m5AlR">
                                  <node concept="1PxgMI" id="1DfKejrcHqg" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="1DfKejrcHtc" role="3oSUPX">
                                      <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                    </node>
                                    <node concept="2OqwBi" id="1DfKejrcGMP" role="1m5AlR">
                                      <node concept="37vLTw" id="1DfKejrcGzJ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1DfKejrcGoQ" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="1DfKejrcH6q" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="1DfKejrcIem" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1DfKejrcPEG" role="3uHU7w">
                            <node concept="37vLTw" id="1DfKejrcPEH" role="2Oq$k0">
                              <ref role="3cqZAo" node="1DfKejrcuOD" resolve="fbDeclarations" />
                            </node>
                            <node concept="3JPx81" id="1DfKejrcPEI" role="2OqNvi">
                              <node concept="1PxgMI" id="1DfKejrcTwS" role="25WWJ7">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="1DfKejrcTDd" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="1DfKejrcPEJ" role="1m5AlR">
                                  <node concept="1PxgMI" id="1DfKejrcPEK" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="1DfKejrcQMj" role="3oSUPX">
                                      <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                    </node>
                                    <node concept="2OqwBi" id="1DfKejrcPEM" role="1m5AlR">
                                      <node concept="37vLTw" id="1DfKejrcPEN" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1DfKejrcGoQ" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="1DfKejrcQsQ" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="1DfKejrcPEP" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1DfKejrcGoQ" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1DfKejrcGoR" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1DfKejrcRLd" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DfKejrcTUC" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejrcTUD" role="3cpWs9">
            <property role="TrG5h" value="eventConnections" />
            <node concept="_YKpA" id="1DfKejrcTUE" role="1tU5fm">
              <node concept="3Tqbb2" id="1DfKejrcTUF" role="_ZDj9">
                <ref role="ehGHo" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
              </node>
            </node>
            <node concept="2OqwBi" id="1DfKejrcTUG" role="33vP2m">
              <node concept="2OqwBi" id="1DfKejrcTUH" role="2Oq$k0">
                <node concept="2OqwBi" id="1DfKejrcTUI" role="2Oq$k0">
                  <node concept="37vLTw" id="1DfKejrcTUJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejrcopf" resolve="container" />
                  </node>
                  <node concept="3Tsc0h" id="1DfKejrcW8b" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                  </node>
                </node>
                <node concept="3zZkjj" id="1DfKejrcTUL" role="2OqNvi">
                  <node concept="1bVj0M" id="1DfKejrcTUM" role="23t8la">
                    <node concept="3clFbS" id="1DfKejrcTUN" role="1bW5cS">
                      <node concept="3clFbF" id="1DfKejrcTUO" role="3cqZAp">
                        <node concept="1Wc70l" id="1DfKejrcTUP" role="3clFbG">
                          <node concept="2OqwBi" id="1DfKejrcTUQ" role="3uHU7B">
                            <node concept="37vLTw" id="1DfKejrcTUR" role="2Oq$k0">
                              <ref role="3cqZAo" node="1DfKejrcuOD" resolve="fbDeclarations" />
                            </node>
                            <node concept="3JPx81" id="1DfKejrcTUS" role="2OqNvi">
                              <node concept="1PxgMI" id="1DfKejrcTUT" role="25WWJ7">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="1DfKejrcTUU" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="1DfKejrcTUV" role="1m5AlR">
                                  <node concept="1PxgMI" id="1DfKejrcTUW" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="1DfKejrcWpu" role="3oSUPX">
                                      <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                    </node>
                                    <node concept="2OqwBi" id="1DfKejrcTUY" role="1m5AlR">
                                      <node concept="37vLTw" id="1DfKejrcTUZ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1DfKejrcTVe" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="1DfKejrd3mO" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="1DfKejrcTV1" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1DfKejrcTV2" role="3uHU7w">
                            <node concept="37vLTw" id="1DfKejrcTV3" role="2Oq$k0">
                              <ref role="3cqZAo" node="1DfKejrcuOD" resolve="fbDeclarations" />
                            </node>
                            <node concept="3JPx81" id="1DfKejrcTV4" role="2OqNvi">
                              <node concept="1PxgMI" id="1DfKejrcTV5" role="25WWJ7">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="1DfKejrcTV6" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="1DfKejrcTV7" role="1m5AlR">
                                  <node concept="1PxgMI" id="1DfKejrcTV8" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="1DfKejrcWEU" role="3oSUPX">
                                      <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                    </node>
                                    <node concept="2OqwBi" id="1DfKejrcTVa" role="1m5AlR">
                                      <node concept="37vLTw" id="1DfKejrcTVb" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1DfKejrcTVe" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="1DfKejrd3B2" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="1DfKejrcTVd" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1DfKejrcTVe" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1DfKejrcTVf" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1DfKejrcTVg" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DfKejrcWVx" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejrcWVy" role="3cpWs9">
            <property role="TrG5h" value="adapterConnections" />
            <node concept="_YKpA" id="1DfKejrcWVz" role="1tU5fm">
              <node concept="3Tqbb2" id="1DfKejrcWV$" role="_ZDj9">
                <ref role="ehGHo" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
              </node>
            </node>
            <node concept="2OqwBi" id="1DfKejrcWV_" role="33vP2m">
              <node concept="2OqwBi" id="1DfKejrcWVA" role="2Oq$k0">
                <node concept="2OqwBi" id="1DfKejrcWVB" role="2Oq$k0">
                  <node concept="37vLTw" id="1DfKejrcWVC" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejrcopf" resolve="container" />
                  </node>
                  <node concept="3Tsc0h" id="1DfKejrcZ19" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                  </node>
                </node>
                <node concept="3zZkjj" id="1DfKejrcWVE" role="2OqNvi">
                  <node concept="1bVj0M" id="1DfKejrcWVF" role="23t8la">
                    <node concept="3clFbS" id="1DfKejrcWVG" role="1bW5cS">
                      <node concept="3clFbF" id="1DfKejrcWVH" role="3cqZAp">
                        <node concept="1Wc70l" id="1DfKejrcWVI" role="3clFbG">
                          <node concept="2OqwBi" id="1DfKejrcWVJ" role="3uHU7B">
                            <node concept="37vLTw" id="1DfKejrcWVK" role="2Oq$k0">
                              <ref role="3cqZAo" node="1DfKejrcuOD" resolve="fbDeclarations" />
                            </node>
                            <node concept="3JPx81" id="1DfKejrcWVL" role="2OqNvi">
                              <node concept="1PxgMI" id="1DfKejrcWVM" role="25WWJ7">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="1DfKejrcWVN" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="1DfKejrcWVO" role="1m5AlR">
                                  <node concept="1PxgMI" id="1DfKejrcWVP" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="1DfKejrd1aP" role="3oSUPX">
                                      <ref role="cht4Q" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                                    </node>
                                    <node concept="2OqwBi" id="1DfKejrcWVR" role="1m5AlR">
                                      <node concept="37vLTw" id="1DfKejrcWVS" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1DfKejrcWW7" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="1DfKejrd0Al" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:37fub3vlA5_" resolve="source" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="1DfKejrd2tm" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1DfKejrcWVV" role="3uHU7w">
                            <node concept="37vLTw" id="1DfKejrcWVW" role="2Oq$k0">
                              <ref role="3cqZAo" node="1DfKejrcuOD" resolve="fbDeclarations" />
                            </node>
                            <node concept="3JPx81" id="1DfKejrcWVX" role="2OqNvi">
                              <node concept="1PxgMI" id="1DfKejrcWVY" role="25WWJ7">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="1DfKejrcWVZ" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="1DfKejrcWW0" role="1m5AlR">
                                  <node concept="1PxgMI" id="1DfKejrcWW1" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="1DfKejrd1E3" role="3oSUPX">
                                      <ref role="cht4Q" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                                    </node>
                                    <node concept="2OqwBi" id="1DfKejrcWW3" role="1m5AlR">
                                      <node concept="37vLTw" id="1DfKejrcWW4" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1DfKejrcWW7" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="1DfKejrd0Ze" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:37fub3vlDzP" resolve="destination" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="1DfKejrd2ZF" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1DfKejrcWW7" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1DfKejrcWW8" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1DfKejrcWW9" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DfKejrc_6U" role="3cqZAp" />
        <node concept="3cpWs8" id="1DfKejrd5Np" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejrd5Nv" role="3cpWs9">
            <property role="TrG5h" value="appToResFBs" />
            <node concept="3rvAFt" id="1DfKejrd5Nx" role="1tU5fm">
              <node concept="3Tqbb2" id="1DfKejrd7W8" role="3rvQeY">
                <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
              </node>
              <node concept="3Tqbb2" id="1DfKejrd7X1" role="3rvSg0">
                <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
            <node concept="2ShNRf" id="1DfKejrd80_" role="33vP2m">
              <node concept="3rGOSV" id="1DfKejrd9dQ" role="2ShVmc">
                <node concept="3Tqbb2" id="1DfKejrd9mA" role="3rHrn6">
                  <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                </node>
                <node concept="3Tqbb2" id="1DfKejrd9rz" role="3rHtpV">
                  <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1DfKejrcjP1" role="3cqZAp">
          <node concept="2GrKxI" id="1DfKejrcjP3" role="2Gsz3X">
            <property role="TrG5h" value="fbDeclaration" />
          </node>
          <node concept="37vLTw" id="1DfKejrddrR" role="2GsD0m">
            <ref role="3cqZAo" node="1DfKejrcuOD" resolve="fbDeclarations" />
          </node>
          <node concept="3clFbS" id="1DfKejrcjP7" role="2LFqv$">
            <node concept="3cpWs8" id="1DfKejrdohG" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrdohH" role="3cpWs9">
                <property role="TrG5h" value="resfbDeclaration" />
                <node concept="3Tqbb2" id="1DfKejrdo4F" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                </node>
                <node concept="2OqwBi" id="1DfKejrdohI" role="33vP2m">
                  <node concept="2GrUjf" id="1DfKejrdohJ" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1DfKejrcjP3" resolve="fbDeclaration" />
                  </node>
                  <node concept="1$rogu" id="1DfKejrdohK" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejrdiy9" role="3cqZAp">
              <node concept="37vLTI" id="1DfKejrdlmj" role="3clFbG">
                <node concept="3EllGN" id="1DfKejrdiQM" role="37vLTJ">
                  <node concept="37vLTw" id="1DfKejrdiy7" role="3ElQJh">
                    <ref role="3cqZAo" node="1DfKejrd5Nv" resolve="appToResFBs" />
                  </node>
                  <node concept="2GrUjf" id="1DfKejrdkjH" role="3ElVtu">
                    <ref role="2Gs0qQ" node="1DfKejrcjP3" resolve="fbDeclaration" />
                  </node>
                </node>
                <node concept="37vLTw" id="1DfKejrdohL" role="37vLTx">
                  <ref role="3cqZAo" node="1DfKejrdohH" resolve="resfbDeclaration" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejrdyqI" role="3cqZAp">
              <node concept="2OqwBi" id="1DfKejrd_Oy" role="3clFbG">
                <node concept="2OqwBi" id="1DfKejrdyRp" role="2Oq$k0">
                  <node concept="37vLTw" id="sOaa8ZYQ8s" role="2Oq$k0">
                    <ref role="3cqZAo" node="sOaa8ZYNh$" resolve="resourceNode" />
                  </node>
                  <node concept="3Tsc0h" id="1DfKejrdzcc" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                  </node>
                </node>
                <node concept="TSZUe" id="1DfKejrdDGF" role="2OqNvi">
                  <node concept="37vLTw" id="1DfKejrdDYT" role="25WWJ7">
                    <ref role="3cqZAo" node="1DfKejrdohH" resolve="resfbDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1DfKejrdNAM" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejrdNAR" role="2LFqv$">
            <node concept="3cpWs8" id="1DfKejrdNAS" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrdNAT" role="3cpWs9">
                <property role="TrG5h" value="resourceDataConnection" />
                <node concept="3Tqbb2" id="1DfKejrdNAU" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                </node>
                <node concept="2OqwBi" id="1DfKejrdNAV" role="33vP2m">
                  <node concept="2GrUjf" id="1DfKejrdNBB" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1DfKejrdNBA" resolve="dataConnection" />
                  </node>
                  <node concept="1$rogu" id="1DfKejrdNAX" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1DfKejrdNAY" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrdNAZ" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="1DfKejrdNB0" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                </node>
                <node concept="1PxgMI" id="1DfKejrdNB1" role="33vP2m">
                  <node concept="chp4Y" id="1DfKejrdNB2" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                  </node>
                  <node concept="2OqwBi" id="1DfKejrdNB3" role="1m5AlR">
                    <node concept="37vLTw" id="1DfKejrdNB4" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DfKejrdNAT" resolve="resourceDataConnection" />
                    </node>
                    <node concept="3TrEf2" id="1DfKejrdNB5" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejrdNB6" role="3cqZAp">
              <node concept="37vLTI" id="1DfKejrdNB7" role="3clFbG">
                <node concept="3EllGN" id="1DfKejrdNB8" role="37vLTx">
                  <node concept="37vLTw" id="1DfKejrdNB9" role="3ElQJh">
                    <ref role="3cqZAo" node="1DfKejrd5Nv" resolve="appToResFBs" />
                  </node>
                  <node concept="1PxgMI" id="1DfKejrdNBa" role="3ElVtu">
                    <node concept="chp4Y" id="1DfKejrdNBb" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1DfKejrdNBc" role="1m5AlR">
                      <node concept="37vLTw" id="1DfKejrdNBd" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DfKejrdNAZ" resolve="source" />
                      </node>
                      <node concept="3TrEf2" id="1DfKejrdNBe" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DfKejrdNBf" role="37vLTJ">
                  <node concept="37vLTw" id="1DfKejrdNBg" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejrdNAZ" resolve="source" />
                  </node>
                  <node concept="3TrEf2" id="1DfKejrdNBh" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1DfKejrdNBi" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrdNBj" role="3cpWs9">
                <property role="TrG5h" value="destination" />
                <node concept="3Tqbb2" id="1DfKejrdNBk" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                </node>
                <node concept="1PxgMI" id="1DfKejrdNBl" role="33vP2m">
                  <node concept="chp4Y" id="1DfKejrdNBm" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                  </node>
                  <node concept="2OqwBi" id="1DfKejrdNBn" role="1m5AlR">
                    <node concept="37vLTw" id="1DfKejrdNBo" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DfKejrdNAT" resolve="resourceDataConnection" />
                    </node>
                    <node concept="3TrEf2" id="1DfKejrdNBp" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejrdNBq" role="3cqZAp">
              <node concept="37vLTI" id="1DfKejrdNBr" role="3clFbG">
                <node concept="3EllGN" id="1DfKejrdNBs" role="37vLTx">
                  <node concept="37vLTw" id="1DfKejrdNBt" role="3ElQJh">
                    <ref role="3cqZAo" node="1DfKejrd5Nv" resolve="appToResFBs" />
                  </node>
                  <node concept="1PxgMI" id="1DfKejrdNBu" role="3ElVtu">
                    <node concept="chp4Y" id="1DfKejrdNBv" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1DfKejrdNBw" role="1m5AlR">
                      <node concept="37vLTw" id="1DfKejrdNBx" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DfKejrdNBj" resolve="destination" />
                      </node>
                      <node concept="3TrEf2" id="1DfKejrdNBy" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DfKejrdNBz" role="37vLTJ">
                  <node concept="37vLTw" id="1DfKejrdNB$" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejrdNBj" resolve="destination" />
                  </node>
                  <node concept="3TrEf2" id="1DfKejrdNB_" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejrdVc$" role="3cqZAp">
              <node concept="2OqwBi" id="1DfKejrdYbD" role="3clFbG">
                <node concept="2OqwBi" id="1DfKejrdVFV" role="2Oq$k0">
                  <node concept="3Tsc0h" id="1DfKejrdW0W" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                  </node>
                  <node concept="37vLTw" id="sOaa8ZYQ$X" role="2Oq$k0">
                    <ref role="3cqZAo" node="sOaa8ZYNh$" resolve="resourceNode" />
                  </node>
                </node>
                <node concept="TSZUe" id="1DfKejre0Xr" role="2OqNvi">
                  <node concept="37vLTw" id="1DfKejre1aX" role="25WWJ7">
                    <ref role="3cqZAo" node="1DfKejrdNAT" resolve="resourceDataConnection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1DfKejrdNAQ" role="2GsD0m">
            <ref role="3cqZAo" node="1DfKejrcAtu" resolve="dataConnections" />
          </node>
          <node concept="2GrKxI" id="1DfKejrdNBA" role="2Gsz3X">
            <property role="TrG5h" value="dataConnection" />
          </node>
        </node>
        <node concept="2Gpval" id="1DfKejrdPZU" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejrdPZV" role="2LFqv$">
            <node concept="3cpWs8" id="1DfKejrdPZW" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrdPZX" role="3cpWs9">
                <property role="TrG5h" value="resourceEventConnection" />
                <node concept="3Tqbb2" id="1DfKejrdPZY" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                </node>
                <node concept="2OqwBi" id="1DfKejrdPZZ" role="33vP2m">
                  <node concept="2GrUjf" id="1DfKejrdQ00" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1DfKejrdQ0F" resolve="eventConnection" />
                  </node>
                  <node concept="1$rogu" id="1DfKejrdQ01" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1DfKejrdQ02" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrdQ03" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="1DfKejrdQ04" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                </node>
                <node concept="1PxgMI" id="1DfKejrdQ05" role="33vP2m">
                  <node concept="chp4Y" id="1DfKejre3xX" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                  </node>
                  <node concept="2OqwBi" id="1DfKejrdQ07" role="1m5AlR">
                    <node concept="37vLTw" id="1DfKejrdQ08" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DfKejrdPZX" resolve="resourceEventConnection" />
                    </node>
                    <node concept="3TrEf2" id="1DfKejrdQ09" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejrdQ0a" role="3cqZAp">
              <node concept="37vLTI" id="1DfKejrdQ0b" role="3clFbG">
                <node concept="3EllGN" id="1DfKejrdQ0c" role="37vLTx">
                  <node concept="37vLTw" id="1DfKejrdQ0d" role="3ElQJh">
                    <ref role="3cqZAo" node="1DfKejrd5Nv" resolve="appToResFBs" />
                  </node>
                  <node concept="1PxgMI" id="1DfKejrdQ0e" role="3ElVtu">
                    <node concept="chp4Y" id="1DfKejrdQ0f" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1DfKejrdQ0g" role="1m5AlR">
                      <node concept="37vLTw" id="1DfKejrdQ0h" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DfKejrdQ03" resolve="source" />
                      </node>
                      <node concept="3TrEf2" id="1DfKejrdQ0i" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DfKejrdQ0j" role="37vLTJ">
                  <node concept="37vLTw" id="1DfKejrdQ0k" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejrdQ03" resolve="source" />
                  </node>
                  <node concept="3TrEf2" id="1DfKejrdQ0l" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1DfKejrdQ0m" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrdQ0n" role="3cpWs9">
                <property role="TrG5h" value="destination" />
                <node concept="3Tqbb2" id="1DfKejrdQ0o" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                </node>
                <node concept="1PxgMI" id="1DfKejrdQ0p" role="33vP2m">
                  <node concept="chp4Y" id="1DfKejre3DO" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                  </node>
                  <node concept="2OqwBi" id="1DfKejrdQ0r" role="1m5AlR">
                    <node concept="37vLTw" id="1DfKejrdQ0s" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DfKejrdPZX" resolve="resourceEventConnection" />
                    </node>
                    <node concept="3TrEf2" id="1DfKejrdQ0t" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejrdQ0u" role="3cqZAp">
              <node concept="37vLTI" id="1DfKejrdQ0v" role="3clFbG">
                <node concept="3EllGN" id="1DfKejrdQ0w" role="37vLTx">
                  <node concept="37vLTw" id="1DfKejrdQ0x" role="3ElQJh">
                    <ref role="3cqZAo" node="1DfKejrd5Nv" resolve="appToResFBs" />
                  </node>
                  <node concept="1PxgMI" id="1DfKejrdQ0y" role="3ElVtu">
                    <node concept="chp4Y" id="1DfKejrdQ0z" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1DfKejrdQ0$" role="1m5AlR">
                      <node concept="37vLTw" id="1DfKejrdQ0_" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DfKejrdQ0n" resolve="destination" />
                      </node>
                      <node concept="3TrEf2" id="1DfKejrdQ0A" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DfKejrdQ0B" role="37vLTJ">
                  <node concept="37vLTw" id="1DfKejrdQ0C" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejrdQ0n" resolve="destination" />
                  </node>
                  <node concept="3TrEf2" id="1DfKejrdQ0D" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejre3KZ" role="3cqZAp">
              <node concept="2OqwBi" id="1DfKejre3L0" role="3clFbG">
                <node concept="2OqwBi" id="1DfKejre3L1" role="2Oq$k0">
                  <node concept="3Tsc0h" id="1DfKejre4Qm" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                  </node>
                  <node concept="37vLTw" id="sOaa8ZYQXl" role="2Oq$k0">
                    <ref role="3cqZAo" node="sOaa8ZYNh$" resolve="resourceNode" />
                  </node>
                </node>
                <node concept="TSZUe" id="1DfKejre3L6" role="2OqNvi">
                  <node concept="37vLTw" id="1DfKejre55t" role="25WWJ7">
                    <ref role="3cqZAo" node="1DfKejrdPZX" resolve="resourceEventConnection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1DfKejrdRre" role="2GsD0m">
            <ref role="3cqZAo" node="1DfKejrcTUD" resolve="eventConnections" />
          </node>
          <node concept="2GrKxI" id="1DfKejrdQ0F" role="2Gsz3X">
            <property role="TrG5h" value="eventConnection" />
          </node>
        </node>
        <node concept="2Gpval" id="1DfKejre5iV" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejre5iW" role="2LFqv$">
            <node concept="3cpWs8" id="1DfKejre5iX" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejre5iY" role="3cpWs9">
                <property role="TrG5h" value="resourceAdapterConnection" />
                <node concept="3Tqbb2" id="1DfKejre5iZ" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                </node>
                <node concept="2OqwBi" id="1DfKejre5j0" role="33vP2m">
                  <node concept="2GrUjf" id="1DfKejre5j1" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1DfKejre5jP" resolve="adapterConnection" />
                  </node>
                  <node concept="1$rogu" id="1DfKejre5j2" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1DfKejre5j3" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejre5j4" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="1DfKejre5j5" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                </node>
                <node concept="1PxgMI" id="1DfKejre5j6" role="33vP2m">
                  <node concept="chp4Y" id="1DfKejreh0p" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                  </node>
                  <node concept="2OqwBi" id="1DfKejre5j8" role="1m5AlR">
                    <node concept="37vLTw" id="1DfKejre5j9" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DfKejre5iY" resolve="resourceAdapterConnection" />
                    </node>
                    <node concept="3TrEf2" id="1DfKejreeaN" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:37fub3vlA5_" resolve="source" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejre5jb" role="3cqZAp">
              <node concept="37vLTI" id="1DfKejre5jc" role="3clFbG">
                <node concept="3EllGN" id="1DfKejre5jd" role="37vLTx">
                  <node concept="37vLTw" id="1DfKejre5je" role="3ElQJh">
                    <ref role="3cqZAo" node="1DfKejrd5Nv" resolve="appToResFBs" />
                  </node>
                  <node concept="1PxgMI" id="1DfKejre5jf" role="3ElVtu">
                    <node concept="chp4Y" id="1DfKejre5jg" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1DfKejre5jh" role="1m5AlR">
                      <node concept="37vLTw" id="1DfKejre5ji" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DfKejre5j4" resolve="source" />
                      </node>
                      <node concept="3TrEf2" id="1DfKejre5jj" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DfKejre5jk" role="37vLTJ">
                  <node concept="37vLTw" id="1DfKejre5jl" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejre5j4" resolve="source" />
                  </node>
                  <node concept="3TrEf2" id="1DfKejre5jm" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1DfKejre5jn" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejre5jo" role="3cpWs9">
                <property role="TrG5h" value="destination" />
                <node concept="3Tqbb2" id="1DfKejre5jp" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                </node>
                <node concept="1PxgMI" id="1DfKejre5jq" role="33vP2m">
                  <node concept="chp4Y" id="1DfKejreh$e" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                  </node>
                  <node concept="2OqwBi" id="1DfKejre5js" role="1m5AlR">
                    <node concept="37vLTw" id="1DfKejre5jt" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DfKejre5iY" resolve="resourceAdapterConnection" />
                    </node>
                    <node concept="3TrEf2" id="1DfKejrehq0" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:37fub3vlDzP" resolve="destination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejre5jv" role="3cqZAp">
              <node concept="37vLTI" id="1DfKejre5jw" role="3clFbG">
                <node concept="3EllGN" id="1DfKejre5jx" role="37vLTx">
                  <node concept="37vLTw" id="1DfKejre5jy" role="3ElQJh">
                    <ref role="3cqZAo" node="1DfKejrd5Nv" resolve="appToResFBs" />
                  </node>
                  <node concept="1PxgMI" id="1DfKejre5jz" role="3ElVtu">
                    <node concept="chp4Y" id="1DfKejre5j$" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1DfKejre5j_" role="1m5AlR">
                      <node concept="37vLTw" id="1DfKejre5jA" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DfKejre5jo" resolve="destination" />
                      </node>
                      <node concept="3TrEf2" id="1DfKejre5jB" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DfKejre5jC" role="37vLTJ">
                  <node concept="37vLTw" id="1DfKejre5jD" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejre5jo" resolve="destination" />
                  </node>
                  <node concept="3TrEf2" id="1DfKejre5jE" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejre5jF" role="3cqZAp">
              <node concept="2OqwBi" id="1DfKejre5jG" role="3clFbG">
                <node concept="2OqwBi" id="1DfKejre5jH" role="2Oq$k0">
                  <node concept="3Tsc0h" id="1DfKejrei6a" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                  </node>
                  <node concept="37vLTw" id="sOaa8ZYRj7" role="2Oq$k0">
                    <ref role="3cqZAo" node="sOaa8ZYNh$" resolve="resourceNode" />
                  </node>
                </node>
                <node concept="TSZUe" id="1DfKejre5jM" role="2OqNvi">
                  <node concept="37vLTw" id="1DfKejre5jN" role="25WWJ7">
                    <ref role="3cqZAo" node="1DfKejre5iY" resolve="resourceAdapterConnection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1DfKejre8fU" role="2GsD0m">
            <ref role="3cqZAo" node="1DfKejrcWVy" resolve="adapterConnections" />
          </node>
          <node concept="2GrKxI" id="1DfKejre5jP" role="2Gsz3X">
            <property role="TrG5h" value="adapterConnection" />
          </node>
        </node>
        <node concept="2Gpval" id="1DfKejresFl" role="3cqZAp">
          <node concept="2GrKxI" id="1DfKejresFn" role="2Gsz3X">
            <property role="TrG5h" value="functionBlock" />
          </node>
          <node concept="37vLTw" id="1S4cYrOLyvB" role="2GsD0m">
            <ref role="3cqZAo" node="1S4cYrOKZVP" resolve="functionBlocks" />
          </node>
          <node concept="3clFbS" id="1DfKejresFr" role="2LFqv$">
            <node concept="3cpWs8" id="1DfKejrePho" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrePhp" role="3cpWs9">
                <property role="TrG5h" value="fbDeclaration" />
                <node concept="3Tqbb2" id="1DfKejrePdS" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                </node>
                <node concept="2OqwBi" id="1DfKejrePhq" role="33vP2m">
                  <node concept="1eOMI4" id="1DfKejrePhr" role="2Oq$k0">
                    <node concept="10QFUN" id="1DfKejrePhs" role="1eOMHV">
                      <node concept="2OqwBi" id="1DfKejrePht" role="10QFUP">
                        <node concept="2GrUjf" id="1DfKejrePhu" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1DfKejresFn" resolve="functionBlock" />
                        </node>
                        <node concept="liA8E" id="5oxN2jlFaIt" role="2OqNvi">
                          <ref role="37wK5l" to="74cb:~FunctionBlockInstance.getDeclaration()" resolve="getDeclaration" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="1DfKejrePhw" role="10QFUM">
                        <ref role="3uigEE" to="rwq3:6LU90BOirFi" resolve="FunctionBlockDeclarationByNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1DfKejrePhy" role="2OqNvi">
                    <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1DfKejreRFZ" role="3cqZAp" />
            <node concept="3cpWs8" id="1DfKejrf7u7" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrf7u8" role="3cpWs9">
                <property role="TrG5h" value="resourceNetwork" />
                <node concept="3uibUv" id="1DfKejrf7dP" role="1tU5fm">
                  <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
                </node>
                <node concept="2YIFZM" id="1DfKejrf7u9" role="33vP2m">
                  <ref role="1Pybhc" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
                  <ref role="37wK5l" to="74cb:~NetworkInstance.createForResource(org.fbme.lib.iec61499.declarations.ResourceDeclaration)" resolve="createForResource" />
                  <node concept="37vLTw" id="sOaa8ZYgWy" role="37wK5m">
                    <ref role="3cqZAo" node="1S4cYrOKZVg" resolve="resource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1DfKejrflH5" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejrflH6" role="3cpWs9">
                <property role="TrG5h" value="component" />
                <node concept="3uibUv" id="1DfKejrfvZw" role="1tU5fm">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                </node>
                <node concept="2OqwBi" id="sOaa8ZYEP1" role="33vP2m">
                  <node concept="37vLTw" id="sOaa8ZYDs4" role="2Oq$k0">
                    <ref role="3cqZAo" node="sOaa8ZXXIk" resolve="repository" />
                  </node>
                  <node concept="liA8E" id="sOaa8ZYG7G" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                    <node concept="3EllGN" id="sOaa8ZY_yq" role="37wK5m">
                      <node concept="37vLTw" id="sOaa8ZYJZd" role="3ElVtu">
                        <ref role="3cqZAo" node="1DfKejrePhp" resolve="fbDeclaration" />
                      </node>
                      <node concept="37vLTw" id="sOaa8ZYzMc" role="3ElQJh">
                        <ref role="3cqZAo" node="1DfKejrd5Nv" resolve="appToResFBs" />
                      </node>
                    </node>
                    <node concept="3VsKOn" id="sOaa8ZYJnL" role="37wK5m">
                      <ref role="3VsUkX" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1DfKejrf_as" role="3cqZAp" />
            <node concept="3cpWs8" id="1DfKejreWP3" role="3cqZAp">
              <node concept="3cpWsn" id="1DfKejreWP4" role="3cpWs9">
                <property role="TrG5h" value="mapping" />
                <node concept="3Tqbb2" id="1DfKejreWOM" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
                </node>
                <node concept="2ShNRf" id="1DfKejreWP5" role="33vP2m">
                  <node concept="3zrR0B" id="1DfKejreWP6" role="2ShVmc">
                    <node concept="3Tqbb2" id="1DfKejreWP7" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejreWcd" role="3cqZAp">
              <node concept="37vLTI" id="1DfKejreXmQ" role="3clFbG">
                <node concept="2OqwBi" id="1DfKejreXPP" role="37vLTx">
                  <node concept="35c_gC" id="1DfKejreXpI" role="2Oq$k0">
                    <ref role="35c_gD" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
                  </node>
                  <node concept="2qgKlT" id="1DfKejreYiv" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:1DfKejr9L3B" resolve="fromFunctionBlockInstance" />
                    <node concept="2GrUjf" id="1DfKejreYoR" role="37wK5m">
                      <ref role="2Gs0qQ" node="1DfKejresFn" resolve="functionBlock" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DfKejreWZ3" role="37vLTJ">
                  <node concept="37vLTw" id="1DfKejreWP8" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejreWP4" resolve="mapping" />
                  </node>
                  <node concept="3TrEf2" id="1DfKejreXbv" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmrej" resolve="instance" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejrf10V" role="3cqZAp">
              <node concept="37vLTI" id="1DfKejrf3UO" role="3clFbG">
                <node concept="2OqwBi" id="1DfKejrf4OD" role="37vLTx">
                  <node concept="35c_gC" id="1DfKejrf4oy" role="2Oq$k0">
                    <ref role="35c_gD" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
                  </node>
                  <node concept="2qgKlT" id="1DfKejrf5hj" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:1DfKejra6dT" resolve="fromFunctionBlockInstance" />
                    <node concept="2OqwBi" id="1DfKejrf6PY" role="37wK5m">
                      <node concept="37vLTw" id="1DfKejrf7ug" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DfKejrf7u8" resolve="resourceNetwork" />
                      </node>
                      <node concept="liA8E" id="1DfKejrf7cN" role="2OqNvi">
                        <ref role="37wK5l" to="74cb:~NetworkInstance.getChild(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase)" resolve="getChild" />
                        <node concept="37vLTw" id="1DfKejrfw5c" role="37wK5m">
                          <ref role="3cqZAo" node="1DfKejrflH6" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DfKejrf3$t" role="37vLTJ">
                  <node concept="37vLTw" id="1DfKejrf10T" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejreWP4" resolve="mapping" />
                  </node>
                  <node concept="3TrEf2" id="1DfKejrf3Lf" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmrel" resolve="resource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1DfKejreRR7" role="3cqZAp">
              <node concept="2OqwBi" id="1DfKejreTNo" role="3clFbG">
                <node concept="2OqwBi" id="1DfKejreS14" role="2Oq$k0">
                  <node concept="37vLTw" id="1DfKejreRR5" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DfKejrawJT" resolve="system" />
                  </node>
                  <node concept="3Tsc0h" id="1DfKejreSfx" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:uLhTRRozfU" resolve="mappings" />
                  </node>
                </node>
                <node concept="TSZUe" id="1DfKejreVTk" role="2OqNvi">
                  <node concept="37vLTw" id="1DfKejrf41h" role="25WWJ7">
                    <ref role="3cqZAo" node="1DfKejreWP4" resolve="mapping" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1S4cYrOKYbM" role="1B3o_S" />
      <node concept="3cqZAl" id="1S4cYrOKZHX" role="3clF45" />
      <node concept="37vLTG" id="1S4cYrOKZVg" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3uibUv" id="sOaa8ZXT0n" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1S4cYrOKZVP" role="3clF46">
        <property role="TrG5h" value="functionBlocks" />
        <node concept="2hMVRd" id="1S4cYrOLfOy" role="1tU5fm">
          <node concept="3uibUv" id="1S4cYrOLfO$" role="2hN53Y">
            <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1S4cYrOKY3W" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="74jd4DV$tjw">
    <property role="TrG5h" value="MapFunctionBlocksInApplication" />
    <property role="2uzpH1" value="Mapto Resource" />
    <node concept="2JriF1" id="74jd4DV$tjz" role="2JrayB">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="74jd4DV$tj$" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZZ5YF" role="1tU5fm">
        <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
      </node>
      <node concept="2K2imR" id="74jd4DV$tjA" role="2K2Cet">
        <node concept="3clFbS" id="74jd4DV$tjB" role="2VODD2">
          <node concept="3clFbF" id="74jd4DV$tjC" role="3cqZAp">
            <node concept="2OqwBi" id="74jd4DV$tjD" role="3clFbG">
              <node concept="2K3dj_" id="74jd4DV$tjE" role="2Oq$k0" />
              <node concept="liA8E" id="sOaa8ZZ6pm" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tnohg" id="74jd4DV$tjG" role="tncku">
      <node concept="3clFbS" id="74jd4DV$tjH" role="2VODD2">
        <node concept="3cpWs8" id="sOaa8ZZUd3" role="3cqZAp">
          <node concept="3cpWsn" id="sOaa8ZZUd4" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="739Y6csG3zG" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
            </node>
            <node concept="2YIFZM" id="sOaa8ZZUd5" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="2OqwBi" id="sOaa8ZZUd6" role="37wK5m">
                <node concept="2WthIp" id="sOaa8ZZUd7" role="2Oq$k0" />
                <node concept="1DTwFV" id="sOaa8ZZUd8" role="2OqNvi">
                  <ref role="2WH_rO" node="sOaa8ZZTl2" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="74jd4DV$tjI" role="3cqZAp">
          <node concept="3cpWsn" id="74jd4DV$tjJ" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="74jd4DV$tjK" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2YIFZM" id="74jd4DV_xBx" role="33vP2m">
              <ref role="1Pybhc" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
              <ref role="37wK5l" to="74cb:~NetworkInstance.createForApplication(org.fbme.lib.iec61499.declarations.ApplicationDeclaration)" resolve="createForApplication" />
              <node concept="2OqwBi" id="sOaa8ZZUXZ" role="37wK5m">
                <node concept="37vLTw" id="sOaa8ZZUHy" role="2Oq$k0">
                  <ref role="3cqZAo" node="sOaa8ZZUd4" resolve="repository" />
                </node>
                <node concept="liA8E" id="sOaa8ZZVdU" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                  <node concept="2OqwBi" id="sOaa8ZZVkD" role="37wK5m">
                    <node concept="2WthIp" id="sOaa8ZZVkG" role="2Oq$k0" />
                    <node concept="3gHZIF" id="sOaa8ZZVkI" role="2OqNvi">
                      <ref role="2WH_rO" node="74jd4DV_ll1" resolve="node" />
                    </node>
                  </node>
                  <node concept="3VsKOn" id="sOaa8ZZVYA" role="37wK5m">
                    <ref role="3VsUkX" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="74jd4DV$tkd" role="3cqZAp">
          <node concept="3cpWsn" id="74jd4DV$tke" role="3cpWs9">
            <property role="TrG5h" value="functionBlocks" />
            <node concept="2hMVRd" id="74jd4DV$tkf" role="1tU5fm">
              <node concept="3uibUv" id="74jd4DV$tkg" role="2hN53Y">
                <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
              </node>
            </node>
            <node concept="2ShNRf" id="74jd4DV$tkh" role="33vP2m">
              <node concept="2i4dXS" id="74jd4DV$tki" role="2ShVmc">
                <node concept="3uibUv" id="74jd4DV$tkj" role="HW$YZ">
                  <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
                </node>
                <node concept="2OqwBi" id="74jd4DV$tkk" role="I$8f6">
                  <node concept="3$u5V9" id="74jd4DV$tkp" role="2OqNvi">
                    <node concept="1bVj0M" id="74jd4DV$tkq" role="23t8la">
                      <node concept="3clFbS" id="74jd4DV$tkr" role="1bW5cS">
                        <node concept="3clFbF" id="74jd4DV$tks" role="3cqZAp">
                          <node concept="2OqwBi" id="74jd4DV$tkt" role="3clFbG">
                            <node concept="37vLTw" id="74jd4DV$tku" role="2Oq$k0">
                              <ref role="3cqZAo" node="74jd4DV$tjJ" resolve="network" />
                            </node>
                            <node concept="liA8E" id="74jd4DV$tkv" role="2OqNvi">
                              <ref role="37wK5l" to="74cb:~NetworkInstance.getChild(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase)" resolve="getChild" />
                              <node concept="2OqwBi" id="sOaa8ZZWAw" role="37wK5m">
                                <node concept="37vLTw" id="sOaa8ZZWsb" role="2Oq$k0">
                                  <ref role="3cqZAo" node="sOaa8ZZUd4" resolve="repository" />
                                </node>
                                <node concept="liA8E" id="sOaa8ZZWSr" role="2OqNvi">
                                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                  <node concept="37vLTw" id="sOaa8ZZX3Y" role="37wK5m">
                                    <ref role="3cqZAo" node="74jd4DV$tkx" resolve="it" />
                                  </node>
                                  <node concept="3VsKOn" id="sOaa8ZZXoG" role="37wK5m">
                                    <ref role="3VsUkX" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="74jd4DV$tkx" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="74jd4DV$tky" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="74jd4DV_rck" role="2Oq$k0">
                    <node concept="1PxgMI" id="74jd4DV_qUq" role="2Oq$k0">
                      <node concept="chp4Y" id="74jd4DV_qWn" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
                      </node>
                      <node concept="2OqwBi" id="74jd4DV_qo3" role="1m5AlR">
                        <node concept="2WthIp" id="74jd4DV_q5i" role="2Oq$k0" />
                        <node concept="3gHZIF" id="74jd4DV_qH9" role="2OqNvi">
                          <ref role="2WH_rO" node="74jd4DV_ll1" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="74jd4DV_r_1" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="74jd4DV$tkz" role="3cqZAp">
          <node concept="2YIFZM" id="74jd4DV$tk$" role="3clFbG">
            <ref role="37wK5l" node="1S4cYrOKZI8" resolve="map" />
            <ref role="1Pybhc" node="1S4cYrOKY3V" resolve="FBsMapActions" />
            <node concept="2OqwBi" id="74jd4DV$tk_" role="37wK5m">
              <node concept="2WthIp" id="74jd4DV$tkA" role="2Oq$k0" />
              <node concept="2BZ7hE" id="74jd4DV$tkB" role="2OqNvi">
                <ref role="2WH_rO" node="74jd4DV$tjz" resolve="resource" />
              </node>
            </node>
            <node concept="37vLTw" id="74jd4DV$tkC" role="37wK5m">
              <ref role="3cqZAo" node="74jd4DV$tke" resolve="functionBlocks" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="74jd4DV$tkD" role="tmbBb">
      <node concept="3clFbS" id="74jd4DV$tkE" role="2VODD2">
        <node concept="3clFbF" id="74jd4DV$tl6" role="3cqZAp">
          <node concept="2OqwBi" id="74jd4DV$tl7" role="3clFbG">
            <node concept="2OqwBi" id="74jd4DV$tl8" role="2Oq$k0">
              <node concept="tl45R" id="74jd4DV$tl9" role="2Oq$k0" />
              <node concept="liA8E" id="74jd4DV$tla" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="74jd4DV$tlb" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="74jd4DV$tlc" role="37wK5m">
                <node concept="2OqwBi" id="74jd4DV$tld" role="2Oq$k0">
                  <node concept="2WthIp" id="74jd4DV$tle" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="74jd4DV$tlf" role="2OqNvi">
                    <ref role="2WH_rO" node="74jd4DV$tjz" resolve="resource" />
                  </node>
                </node>
                <node concept="liA8E" id="sOaa8ZZ6JP" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="74jd4DV_o5N" role="3cqZAp">
          <node concept="2OqwBi" id="74jd4DV_oHD" role="3cqZAk">
            <node concept="2OqwBi" id="74jd4DV_onM" role="2Oq$k0">
              <node concept="2WthIp" id="74jd4DV_onP" role="2Oq$k0" />
              <node concept="3gHZIF" id="74jd4DV_onR" role="2OqNvi">
                <ref role="2WH_rO" node="74jd4DV_ll1" resolve="node" />
              </node>
            </node>
            <node concept="1mIQ4w" id="74jd4DV_p9T" role="2OqNvi">
              <node concept="chp4Y" id="74jd4DV_pmq" role="cj9EA">
                <ref role="cht4Q" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="74jd4DV_ll1" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="74jd4DV_ll2" role="1B3o_S" />
      <node concept="1oajcY" id="74jd4DV_ll3" role="1oa70y" />
      <node concept="3Tqbb2" id="74jd4DV_kWZ" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="sOaa8ZZTl2" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="sOaa8ZZTl3" role="1oa70y" />
    </node>
  </node>
  <node concept="312cEu" id="2k00pzqAsoA">
    <property role="TrG5h" value="RicheditingMpsBridgeImpl" />
    <node concept="2tJIrI" id="2k00pzqAtW7" role="jymVt" />
    <node concept="2YIFZL" id="5vstEPJdmmV" role="jymVt">
      <property role="TrG5h" value="install" />
      <node concept="3clFbS" id="5vstEPJdmmY" role="3clF47">
        <node concept="3clFbF" id="5vstEPJdmGE" role="3cqZAp">
          <node concept="37vLTI" id="5vstEPJdmGT" role="3clFbG">
            <node concept="2ShNRf" id="5vstEPJdmJ$" role="37vLTx">
              <node concept="HV5vD" id="5vstEPJdn6U" role="2ShVmc">
                <ref role="HV5vE" node="2k00pzqAsoA" resolve="RicheditingMpsBridgeImpl" />
              </node>
            </node>
            <node concept="37vLTw" id="2k00pzqAud1" role="37vLTJ">
              <ref role="3cqZAo" to="ec6g:~RicheditingMpsBridge.PROVIDER" resolve="PROVIDER" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5vstEPJdmhR" role="1B3o_S" />
      <node concept="3cqZAl" id="5vstEPJdmkW" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5vstEPJdnxj" role="jymVt" />
    <node concept="2YIFZL" id="5vstEPJdnqL" role="jymVt">
      <property role="TrG5h" value="uninstall" />
      <node concept="3clFbS" id="5vstEPJdnqM" role="3clF47">
        <node concept="3clFbF" id="5vstEPJdnqN" role="3cqZAp">
          <node concept="37vLTI" id="5vstEPJdnqO" role="3clFbG">
            <node concept="10Nm6u" id="5vstEPJdn__" role="37vLTx" />
            <node concept="37vLTw" id="2k00pzqAKWH" role="37vLTJ">
              <ref role="3cqZAo" to="ec6g:~RicheditingMpsBridge.PROVIDER" resolve="PROVIDER" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5vstEPJdnqS" role="1B3o_S" />
      <node concept="3cqZAl" id="5vstEPJdnqT" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2k00pzqAKXu" role="jymVt" />
    <node concept="3clFb_" id="2k00pzqAKZz" role="jymVt">
      <property role="TrG5h" value="provideEditorScale" />
      <node concept="3Tmbuc" id="2k00pzqAKZ$" role="1B3o_S" />
      <node concept="10OMs4" id="2k00pzqAKZA" role="3clF45" />
      <node concept="37vLTG" id="2k00pzqAKZB" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2k00pzqAKZC" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="2k00pzqAKZD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2k00pzqAKZE" role="3clF47">
        <node concept="3cpWs8" id="1y1FD3qGTVc" role="3cqZAp">
          <node concept="3cpWsn" id="1y1FD3qGTVd" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="1y1FD3qGTyy" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="1y1FD3qGTVe" role="33vP2m">
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
              <node concept="37vLTw" id="2yJZQx2z7iA" role="37wK5m">
                <ref role="3cqZAo" node="2k00pzqAKZB" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7H$5i_Y6U8A" role="3cqZAp">
          <node concept="3cpWsn" id="7H$5i_Y6U8B" role="3cpWs9">
            <property role="TrG5h" value="scaleComponent" />
            <node concept="34_ZPX" id="7H$5i_Y6SIv" role="1tU5fm">
              <ref role="34A7Nh" node="1y1FD3qDmMX" resolve="NetworkPresentationSetting" />
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
                  <ref role="LR4Ua" node="1y1FD3qDmMX" resolve="NetworkPresentationSetting" />
                </node>
                <node concept="37vLTw" id="7H$5i_Y6U8E" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y1FD3qGTVd" resolve="ideaProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2k00pzqASvA" role="3cqZAp">
          <node concept="3K4zz7" id="1y1FD3qI3kA" role="3clFbG">
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
                <ref role="2WH_rO" node="1y1FD3qDoAN" resolve="scale" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2k00pzqAKZF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2k00pzqASTI" role="jymVt" />
    <node concept="3clFb_" id="2k00pzqAKZG" role="jymVt">
      <property role="TrG5h" value="provideInlineValueCell" />
      <node concept="3Tmbuc" id="2k00pzqAKZH" role="1B3o_S" />
      <node concept="2AHcQZ" id="2k00pzqAKZJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="2k00pzqAKZK" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="2k00pzqAKZL" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2k00pzqAKZM" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="2k00pzqAKZN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2k00pzqAKZO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2k00pzqAKZP" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="2k00pzqAKZQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2k00pzqAKZR" role="3clF47">
        <node concept="3clFbF" id="2k00pzqB8PA" role="3cqZAp">
          <node concept="2OqwBi" id="5HzRr7EMQuE" role="3clFbG">
            <node concept="37vLTw" id="5HzRr7EMQuF" role="2Oq$k0">
              <ref role="3cqZAo" node="2k00pzqAKZL" resolve="context" />
            </node>
            <node concept="2CJim2" id="5HzRr7EMQuG" role="2OqNvi">
              <node concept="1PxgMI" id="2k00pzqB9fA" role="2CJshu">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="2k00pzqB9kD" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
                </node>
                <node concept="37vLTw" id="2k00pzqB8XL" role="1m5AlR">
                  <ref role="3cqZAo" node="2k00pzqAKZO" resolve="node" />
                </node>
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
      <node concept="2AHcQZ" id="2k00pzqAKZS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2k00pzqAT3C" role="jymVt" />
    <node concept="3clFb_" id="2k00pzqAKZV" role="jymVt">
      <property role="TrG5h" value="provideTransitionCell" />
      <node concept="3Tmbuc" id="2k00pzqAKZW" role="1B3o_S" />
      <node concept="2AHcQZ" id="2k00pzqAKZY" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="2k00pzqAKZZ" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
      </node>
      <node concept="37vLTG" id="2k00pzqAL00" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2k00pzqAL01" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="2k00pzqAL02" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2k00pzqAL03" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2k00pzqAL04" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="2k00pzqAL05" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2k00pzqAL06" role="3clF47">
        <node concept="3clFbF" id="2k00pzqAVl7" role="3cqZAp">
          <node concept="10QFUN" id="38k27IRLw2J" role="3clFbG">
            <node concept="3uibUv" id="38k27IRLw2K" role="10QFUM">
              <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
            </node>
            <node concept="2OqwBi" id="38k27IRLw2L" role="10QFUP">
              <node concept="37vLTw" id="38k27IRLw2M" role="2Oq$k0">
                <ref role="3cqZAo" node="2k00pzqAL00" resolve="context" />
              </node>
              <node concept="2CJim2" id="3Sv$YXY1MG8" role="2OqNvi">
                <node concept="2CJsh3" id="3Sv$YXY1MGc" role="2CJshi">
                  <node concept="3F1sOY" id="3Sv$YXY1NzW" role="2wV5jI">
                    <ref role="1NtTu8" to="xiqq:3HBlKeoZaIs" resolve="condition" />
                  </node>
                </node>
                <node concept="1PxgMI" id="2k00pzqAY8e" role="2CJshu">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="2k00pzqAYdm" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
                  </node>
                  <node concept="37vLTw" id="2k00pzqAXMx" role="1m5AlR">
                    <ref role="3cqZAo" node="2k00pzqAL03" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2k00pzqAL07" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2k00pzqATaU" role="jymVt" />
    <node concept="3clFb_" id="2k00pzqAL0a" role="jymVt">
      <property role="TrG5h" value="provideAlgorithmContentCell" />
      <node concept="3Tmbuc" id="2k00pzqAL0b" role="1B3o_S" />
      <node concept="2AHcQZ" id="2k00pzqAL0d" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="2k00pzqAL0e" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
      </node>
      <node concept="37vLTG" id="2k00pzqAL0f" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2k00pzqAL0g" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="2k00pzqAL0h" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2k00pzqAL0i" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2k00pzqAL0j" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="2k00pzqAL0k" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2k00pzqAL0l" role="3clF47">
        <node concept="3clFbF" id="2k00pzqB1UB" role="3cqZAp">
          <node concept="10QFUN" id="2k00pzqB2bS" role="3clFbG">
            <node concept="3uibUv" id="2k00pzqB2sg" role="10QFUM">
              <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
            </node>
            <node concept="2OqwBi" id="3Sv$YXY1$yt" role="10QFUP">
              <node concept="37vLTw" id="3Sv$YXY1$jY" role="2Oq$k0">
                <ref role="3cqZAo" node="2k00pzqAL0f" resolve="context" />
              </node>
              <node concept="2CJim2" id="3Sv$YXY1AKr" role="2OqNvi">
                <node concept="2CJsh3" id="3Sv$YXY1AKv" role="2CJshi">
                  <node concept="3EZMnI" id="1NjkvtkYsFj" role="2wV5jI">
                    <node concept="3F2HdR" id="5ylSlM1W1nk" role="3EZMnx">
                      <ref role="1NtTu8" to="xiqq:5tgPFZSaxk4" resolve="temporaryVariables" />
                      <node concept="2iRkQZ" id="5ylSlM1W1nn" role="2czzBx" />
                      <node concept="VPM3Z" id="5ylSlM1W1no" role="3F10Kt" />
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
                    <node concept="3F1sOY" id="1NjkvtkYuhg" role="3EZMnx">
                      <ref role="1NtTu8" to="xiqq:1zB5ET5xzpJ" resolve="body" />
                      <node concept="OXEIz" id="1NjkvtkYQGU" role="P5bDN">
                        <node concept="1ou48o" id="1NjkvtkYSiP" role="OY2wv">
                          <node concept="3GJtP1" id="1NjkvtkYSiR" role="1ou48n">
                            <node concept="3clFbS" id="1NjkvtkYSiT" role="2VODD2">
                              <node concept="3clFbJ" id="1NjkvtkYTBx" role="3cqZAp">
                                <node concept="2OqwBi" id="1NjkvtkYZI$" role="3clFbw">
                                  <node concept="2OqwBi" id="1NjkvtkYW8W" role="2Oq$k0">
                                    <node concept="3GMtW1" id="1NjkvtkYW_u" role="2Oq$k0" />
                                    <node concept="3Tsc0h" id="1NjkvtkYXcV" role="2OqNvi">
                                      <ref role="3TtcxE" to="xiqq:5tgPFZSaxk4" resolve="temporaryVariables" />
                                    </node>
                                  </node>
                                  <node concept="1v1jN8" id="1NjkvtkZ9qI" role="2OqNvi" />
                                </node>
                                <node concept="3clFbS" id="1NjkvtkYTBz" role="3clFbx">
                                  <node concept="3cpWs6" id="1NjkvtkZeI0" role="3cqZAp">
                                    <node concept="15s5l7" id="1NjkvtkZlgG" role="lGtFl">
                                      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type java.util.List&lt;string&gt; is not a subtype of list&lt;String&gt;&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/7630810368327770735]&quot;;" />
                                      <property role="huDt6" value="Error: type java.util.List&lt;string&gt; is not a subtype of list&lt;String&gt;" />
                                    </node>
                                    <node concept="2YIFZM" id="1NjkvtkZclH" role="3cqZAk">
                                      <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                                      <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                                      <node concept="Xl_RD" id="1NjkvtkZclV" role="37wK5m">
                                        <property role="Xl_RC" value="add temporary variable" />
                                      </node>
                                      <node concept="3uibUv" id="1NjkvtkZrV2" role="3PaCim">
                                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs6" id="1NjkvtkZfS$" role="3cqZAp">
                                <node concept="2YIFZM" id="1NjkvtkZkQf" role="3cqZAk">
                                  <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                                  <node concept="3uibUv" id="1NjkvtkZo8D" role="3PaCim">
                                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                  </node>
                                </node>
                                <node concept="15s5l7" id="1NjkvtkZlF_" role="lGtFl">
                                  <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
                                  <property role="huDt6" value="all typesystem messages" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1ouSdP" id="1NjkvtkYSiV" role="1ou48m">
                            <node concept="3clFbS" id="1NjkvtkYSiX" role="2VODD2">
                              <node concept="3clFbF" id="1NjkvtkZsXf" role="3cqZAp">
                                <node concept="2OqwBi" id="1NjkvtkZvCH" role="3clFbG">
                                  <node concept="2OqwBi" id="1NjkvtkZtde" role="2Oq$k0">
                                    <node concept="3GMtW1" id="1NjkvtkZt56" role="2Oq$k0" />
                                    <node concept="3Tsc0h" id="1NjkvtkZtzv" role="2OqNvi">
                                      <ref role="3TtcxE" to="xiqq:5tgPFZSaxk4" resolve="temporaryVariables" />
                                    </node>
                                  </node>
                                  <node concept="2DeJg1" id="1NjkvtkZ_YB" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="1NjkvtkYT4z" role="1eyP2E">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2iRkQZ" id="1NjkvtkYsFm" role="2iSdaV" />
                  </node>
                </node>
                <node concept="1PxgMI" id="2k00pzqB2Qa" role="2CJshu">
                  <property role="1BlNFB" value="true" />
                  <node concept="37vLTw" id="2k00pzqB22A" role="1m5AlR">
                    <ref role="3cqZAo" node="2k00pzqAL0i" resolve="node" />
                  </node>
                  <node concept="chp4Y" id="1NjkvtkYss4" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2k00pzqAL0m" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2k00pzqAsoB" role="1B3o_S" />
    <node concept="3uibUv" id="6AO1fiEShxY" role="1zkMxy">
      <ref role="3uigEE" to="ec6g:~RicheditingMpsBridge" resolve="RicheditingMpsBridge" />
    </node>
  </node>
  <node concept="2uRRBC" id="2k00pzqCgw3">
    <property role="TrG5h" value="FBME RichEditing MPS Bridge" />
    <node concept="2uRRBj" id="2k00pzqCgw4" role="2uRRBE">
      <node concept="3clFbS" id="2k00pzqCgw5" role="2VODD2">
        <node concept="3clFbF" id="2k00pzqCgE7" role="3cqZAp">
          <node concept="2YIFZM" id="2k00pzqCgEH" role="3clFbG">
            <ref role="37wK5l" node="5vstEPJdmmV" resolve="install" />
            <ref role="1Pybhc" node="2k00pzqAsoA" resolve="RicheditingMpsBridgeImpl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="2k00pzqCgHP" role="2uRRBF">
      <node concept="3clFbS" id="2k00pzqCgHQ" role="2VODD2">
        <node concept="3clFbF" id="2k00pzqCgId" role="3cqZAp">
          <node concept="2YIFZM" id="2k00pzqCgIT" role="3clFbG">
            <ref role="37wK5l" node="5vstEPJdnqL" resolve="uninstall" />
            <ref role="1Pybhc" node="2k00pzqAsoA" resolve="RicheditingMpsBridgeImpl" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7mSJsq73vIV">
    <property role="TrG5h" value="NewLibraryGroup" />
    <node concept="tT9cl" id="7mSJsq73vIX" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4HSg" resolve="ProjectNewActions" />
      <ref role="2f8Tey" to="tprs:56$IWKxeQ2A" resolve="languageExt" />
    </node>
    <node concept="fu6FP" id="6VZruCm6ttv" role="ftER_">
      <node concept="3clFbS" id="6VZruCm6ttx" role="2VODD2">
        <node concept="3clFbF" id="6VZruCm8c05" role="3cqZAp">
          <node concept="2OqwBi" id="6VZruCm8ct8" role="3clFbG">
            <node concept="2WthIp" id="6VZruCm8c04" role="2Oq$k0" />
            <node concept="liA8E" id="6VZruCm8cYr" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2OqwBi" id="6VZruCm8dq8" role="37wK5m">
                <node concept="2YIFZM" id="6VZruCm8dhl" role="2Oq$k0">
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                </node>
                <node concept="liA8E" id="6VZruCm8d$e" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                  <node concept="Xl_RD" id="6VZruCm8e2t" role="37wK5m">
                    <property role="Xl_RC" value="platform.NewLibraryAction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="9Qxn4Lp17d">
    <property role="TrG5h" value="LibraryGroup" />
    <node concept="fu6FP" id="9Qxn4LpaFd" role="ftER_">
      <node concept="3clFbS" id="9Qxn4LpaFf" role="2VODD2">
        <node concept="3clFbF" id="9Qxn4LpgK8" role="3cqZAp">
          <node concept="2OqwBi" id="9Qxn4LphcW" role="3clFbG">
            <node concept="2WthIp" id="9Qxn4LpgK7" role="2Oq$k0" />
            <node concept="liA8E" id="9Qxn4Lpiag" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2OqwBi" id="9Qxn4LpiyI" role="37wK5m">
                <node concept="2YIFZM" id="9Qxn4Lpiou" role="2Oq$k0">
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                </node>
                <node concept="liA8E" id="9Qxn4LpiPw" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                  <node concept="Xl_RD" id="9Qxn4Lpj2T" role="37wK5m">
                    <property role="Xl_RC" value="platform.ImportLibraryAction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6GCs3ZEl6Al" role="3cqZAp">
          <node concept="2OqwBi" id="6GCs3ZEl78e" role="3clFbG">
            <node concept="2WthIp" id="6GCs3ZEl6Aj" role="2Oq$k0" />
            <node concept="liA8E" id="6GCs3ZEl8cS" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2OqwBi" id="6GCs3ZEl91Q" role="37wK5m">
                <node concept="2YIFZM" id="6GCs3ZEl8Vl" role="2Oq$k0">
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                </node>
                <node concept="liA8E" id="6GCs3ZEl9m1" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                  <node concept="Xl_RD" id="6GCs3ZEl9AP" role="37wK5m">
                    <property role="Xl_RC" value="platform.ImportNxtLibAction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tT9cl" id="9Qxn4Lp18Y" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4HGL" resolve="ProjectActions" />
    </node>
  </node>
  <node concept="tC5Ba" id="XKbzpysL71">
    <property role="TrG5h" value="ExportLibraryGroup" />
    <node concept="tT9cl" id="XKbzpysL73" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Jd1" resolve="SolutionActions" />
    </node>
    <node concept="fu6FP" id="XKbzpysL75" role="ftER_">
      <node concept="3clFbS" id="XKbzpysL77" role="2VODD2">
        <node concept="3clFbF" id="XKbzpysX_i" role="3cqZAp">
          <node concept="2OqwBi" id="XKbzpysY26" role="3clFbG">
            <node concept="2WthIp" id="XKbzpysX_h" role="2Oq$k0" />
            <node concept="liA8E" id="XKbzpysYZq" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2OqwBi" id="XKbzpysZml" role="37wK5m">
                <node concept="2YIFZM" id="XKbzpysZfP" role="2Oq$k0">
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                </node>
                <node concept="liA8E" id="XKbzpysZC5" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                  <node concept="Xl_RD" id="XKbzpysZD9" role="37wK5m">
                    <property role="Xl_RC" value="platform.ExportLibraryAction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="2iSq5VJxrIX">
    <property role="TrG5h" value="CreateNamespaceGroup" />
    <node concept="fu6FP" id="2iSq5VJxrSZ" role="ftER_">
      <node concept="3clFbS" id="2iSq5VJxrT1" role="2VODD2">
        <node concept="3clFbF" id="2iSq5VJxuQk" role="3cqZAp">
          <node concept="2OqwBi" id="2iSq5VJxvj8" role="3clFbG">
            <node concept="2WthIp" id="2iSq5VJxuQj" role="2Oq$k0" />
            <node concept="liA8E" id="2iSq5VJxwhU" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2OqwBi" id="2iSq5VJxwKi" role="37wK5m">
                <node concept="2YIFZM" id="2iSq5VJxw_M" role="2Oq$k0">
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                </node>
                <node concept="liA8E" id="2iSq5VJxx2U" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                  <node concept="Xl_RD" id="2iSq5VJxxg$" role="37wK5m">
                    <property role="Xl_RC" value="platform.SetNamespaceAction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tT9cl" id="2iSq5VJxxHS" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
    </node>
  </node>
</model>

