<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(org.fbme.ide.richediting.plugin)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="org.fbme.ide.meta.editor" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
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
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="tsn" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components.panels(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="93vd" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.navigationToolbar(MPS.IDEA/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="74cb" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.instances(org.fbme.lib/)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="v900" ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(org.fbme.ide.platform)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="g136" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.ecc(org.fbme.lib/)" />
    <import index="kdnk" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers(org.fbme.scenes/)" />
    <import index="ek6x" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.inspections(org.fbme.ide.richediting/)" />
    <import index="je9f" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.editor(org.fbme.ide.richediting/)" />
    <import index="1hzy" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.viewmodel(org.fbme.ide.richediting/)" />
    <import index="6w4o" ref="292e01a6-3380-40ca-8417-b86844de2d63/java:org.fbme.ide.platform.debugger(org.fbme.ide.platform/)" />
    <import index="8gms" ref="292e01a6-3380-40ca-8417-b86844de2d63/java:org.fbme.ide.platform.editor(org.fbme.ide.platform/)" />
    <import index="uvki" ref="5aff85f5-c1e8-49b6-a1f1-66d79702cceb/java:org.fbme.ide.iec61499.repository(org.fbme.ide.iec61499.adapter/)" />
    <import index="ec6g" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting(org.fbme.ide.richediting/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="tamd" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers.diagram(org.fbme.scenes/)" />
    <import index="2w4" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers.components(org.fbme.scenes/)" />
    <import index="ws78" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.adapters.fbnetwork.elk(org.fbme.ide.richediting/)" />
    <import index="p24u" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.adapters.fbnetwork(org.fbme.ide.richediting/)" />
    <import index="mrrx" ref="ce053d11-5ec7-4fac-b419-6715b4a97d3a/java:org.fbme.ide.richediting.adapters.fbnetwork.actions(org.fbme.ide.richediting/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" implicit="true" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" implicit="true" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="394857668357342104" name="jetbrains.mps.lang.plugin.structure.EverywhereActionPlace" flags="ng" index="mfpdH" />
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <child id="394857668356997869" name="places" index="med8o" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1227008813498" name="constructionParameter" index="2JrayB" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
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
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
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
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ng" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
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
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="4820515453818318288" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReferenceExpression" flags="ng" index="2pYGij">
        <reference id="4820515453818318891" name="hint" index="2pYH_C" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1233823429331" name="jetbrains.mps.lang.editor.structure.HorizontalGapStyleClassItem" flags="ln" index="15ARfc" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007883204" name="jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem" flags="ln" index="3$7fVu" />
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
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
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
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
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
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
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
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
                <ref role="3cqZAo" to="ek6x:~InspectionManagerImpl.EDITOR_EXTENSION" resolve="EDITOR_EXTENSION" />
                <ref role="1PxDUh" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
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
                <ref role="3cqZAo" to="ek6x:~InspectionManagerImpl.EDITOR_EXTENSION" resolve="EDITOR_EXTENSION" />
                <ref role="1PxDUh" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
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
              <node concept="10M0yZ" id="6SLp5w3JmCX" role="2Oq$k0">
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
              </node>
              <node concept="liA8E" id="7TC3cEN$ZfW" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
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
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
              <node concept="10M0yZ" id="6SLp5w3JmDH" role="2Oq$k0">
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
              </node>
              <node concept="liA8E" id="7TC3cEN$Zhu" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
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
            <node concept="10M0yZ" id="6SLp5w3JmDX" role="2Oq$k0">
              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZNA" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$ZNB" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZNC" role="3clFbG">
            <node concept="10M0yZ" id="6SLp5w3JmE5" role="2Oq$k0">
              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZNE" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YAH_gOceAF" role="3cqZAp">
          <node concept="2OqwBi" id="6YAH_gOceAG" role="3clFbG">
            <node concept="10M0yZ" id="6SLp5w3JmEd" role="2Oq$k0">
              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
            </node>
            <node concept="liA8E" id="6YAH_gOceAI" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
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
            <node concept="10M0yZ" id="6SLp5w3JmEt" role="2Oq$k0">
              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.TYPE" resolve="TYPE" />
              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZNM" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
          </node>
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
                    <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
                  <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
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
              <ref role="3uigEE" node="5PjcHHGcAKb" resolve="NetworkWatchActions" />
            </node>
            <node concept="2ShNRf" id="19RKY2xGpug" role="33vP2m">
              <node concept="1pGfFk" id="19RKY2xGpuh" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
                <ref role="37wK5l" node="19RKY2xFeiO" resolve="getNetworkInstance" />
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
                          <ref role="37wK5l" node="19RKY2xFn5W" resolve="setInspector" />
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
            <node concept="37vLTw" id="19RKY2xGqCa" role="2Oq$k0">
              <ref role="3cqZAo" node="19RKY2xGpuf" resolve="actions" />
            </node>
            <node concept="liA8E" id="19RKY2xGrau" role="2OqNvi">
              <ref role="37wK5l" node="19RKY2xFn5W" resolve="setInspector" />
              <node concept="37vLTw" id="19RKY2xGtxn" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRvdoc" resolve="inspector" />
              </node>
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
              <ref role="3uigEE" node="5PjcHHGcAKb" resolve="NetworkWatchActions" />
            </node>
            <node concept="2ShNRf" id="19RKY2xGjU_" role="33vP2m">
              <node concept="1pGfFk" id="19RKY2xGjUA" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
                  <ref role="37wK5l" node="19RKY2xFeiO" resolve="getNetworkInstance" />
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
                  <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
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
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="19RKY2xFNcv" resolve="watchPort" />
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
              <ref role="3uigEE" node="5PjcHHGcAKb" resolve="NetworkWatchActions" />
            </node>
            <node concept="2ShNRf" id="19RKY2xGAOF" role="33vP2m">
              <node concept="1pGfFk" id="19RKY2xGAOG" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
                <ref role="37wK5l" node="19RKY2xF3hL" resolve="hasPortToWatch" />
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
                        <ref role="37wK5l" node="19RKY2xFOor" resolve="portToWatch" />
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
  <node concept="tC5Ba" id="3DiEZ8TON84">
    <property role="TrG5h" value="IEC61499Actions" />
    <property role="2f7twF" value="Debug" />
    <node concept="ftmFs" id="3DiEZ8TON86" role="ftER_">
      <node concept="2a7GMi" id="44qSI5$VldK" role="ftvYc" />
      <node concept="tCFHf" id="3MncU7wOmUA" role="ftvYc">
        <ref role="tCJdB" node="4gibKcM_3Tu" resolve="NetworkInstance_OpenDeclaration" />
      </node>
      <node concept="tCFHf" id="uP0FLzWYpv" role="ftvYc">
        <ref role="tCJdB" node="uP0FLzNOoL" resolve="AddConstantToPort" />
      </node>
      <node concept="tCFHf" id="1eQRPVAXXv5" role="ftvYc">
        <ref role="tCJdB" node="5IF$9ECWQWX" resolve="Relayout" />
      </node>
      <node concept="tCFHf" id="5ofREoX7Eki" role="ftvYc">
        <ref role="tCJdB" node="4qZmOK$LL_l" resolve="Expand" />
      </node>
      <node concept="tCFHf" id="5ofREoX7El0" role="ftvYc">
        <ref role="tCJdB" node="4qZmOK$MA52" resolve="Collapse" />
      </node>
      <node concept="10WQ6h" id="1DfKejr796v" role="ftvYc">
        <property role="TrG5h" value="mapper" />
      </node>
      <node concept="tCFHf" id="44qSI5$Vldw" role="ftvYc">
        <ref role="tCJdB" node="44qSI5$V0ef" resolve="DeployResource" />
      </node>
      <node concept="tCFHf" id="3DiEZ8TON89" role="ftvYc">
        <ref role="tCJdB" node="3DiEZ8TMy35" resolve="Debug_DisableWatching" />
      </node>
      <node concept="tCFHf" id="3DiEZ8TON8e" role="ftvYc">
        <ref role="tCJdB" node="3DiEZ8TMaHe" resolve="Debug_EnableWatching" />
      </node>
      <node concept="tCFHf" id="1S4cYrORgfn" role="ftvYc">
        <ref role="tCJdB" node="1S4cYrOQS5C" resolve="Debug_WatchFB" />
      </node>
      <node concept="tCFHf" id="1S4cYrORgfA" role="ftvYc">
        <ref role="tCJdB" node="1S4cYrOLGlI" resolve="Debug_UnwatchFB" />
      </node>
      <node concept="tCFHf" id="6kcQr5w_XDK" role="ftvYc">
        <ref role="tCJdB" node="6kcQr5wzriX" resolve="Debug_WatchSelectedFBs" />
      </node>
      <node concept="tCFHf" id="6kcQr5w_XFH" role="ftvYc">
        <ref role="tCJdB" node="6kcQr5w_Vl4" resolve="Debug_UnwatchSelectedFBs" />
      </node>
      <node concept="tCFHf" id="3DiEZ8TON8m" role="ftvYc">
        <ref role="tCJdB" node="3DiEZ8TIFei" resolve="Debug_WatchPort" />
      </node>
      <node concept="tCFHf" id="2nz0_8qr3U8" role="ftvYc">
        <ref role="tCJdB" node="5PjcHHGf0WD" resolve="Debug_UnwatchPort" />
      </node>
      <node concept="tCFHf" id="2nz0_8qr3U$" role="ftvYc">
        <ref role="tCJdB" node="5PjcHHGf4rU" resolve="Debug_WatchECCState" />
      </node>
      <node concept="tCFHf" id="2nz0_8qr3UU" role="ftvYc">
        <ref role="tCJdB" node="5PjcHHGgRM$" resolve="Debug_UnwatchECCState" />
      </node>
      <node concept="1X3_iC" id="38F6aFuscn_" role="lGtFl">
        <property role="3V$3am" value="reference" />
        <property role="3V$3ak" value="28f9e497-3b42-4291-aeba-0a1039153ab1/1207145163717/1207145201301" />
        <node concept="tCFHf" id="2wHo_lFZMJi" role="8Wnug">
          <ref role="tCJdB" node="2wHo_lFWP3z" resolve="Test_HighlightConnections" />
        </node>
      </node>
      <node concept="1X3_iC" id="38F6aFuscnA" role="lGtFl">
        <property role="3V$3am" value="reference" />
        <property role="3V$3ak" value="28f9e497-3b42-4291-aeba-0a1039153ab1/1207145163717/1207145201301" />
        <node concept="tCFHf" id="38F6aFunXuF" role="8Wnug">
          <ref role="tCJdB" node="38F6aFumKaQ" resolve="Test_HighlightTransitions" />
        </node>
      </node>
    </node>
    <node concept="tT9cl" id="3DiEZ8TON8r" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
    </node>
  </node>
  <node concept="Qs71p" id="1R4IoyRvaVM">
    <property role="TrG5h" value="NetworkObserved" />
    <node concept="3Tm1VV" id="1R4IoyRvaVN" role="1B3o_S" />
    <node concept="QsSxf" id="1R4IoyRvaYO" role="Qtgdg">
      <property role="TrG5h" value="KEY" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
  </node>
  <node concept="sE7Ow" id="uP0FLzNOoL">
    <property role="TrG5h" value="AddConstantToPort" />
    <property role="2uzpH1" value="Add Constant" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="uP0FLzNP3X" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="uP0FLzNP3Y" role="1oa70y" />
    </node>
    <node concept="tnohg" id="uP0FLzNOoM" role="tncku">
      <node concept="3clFbS" id="uP0FLzNOoN" role="2VODD2">
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
                  <ref role="2WH_rO" node="uP0FLzNP3X" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="uP0FLzO7Ep" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="uP0FLzQijH" role="3cqZAp" />
        <node concept="3cpWs8" id="uP0FLzO7Eq" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzO7Er" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2yJZQx2wVDB" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="uP0FLzO7Et" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzO7Eu" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzO7Ej" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzO7Ev" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3JbCD" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uP0FLzO7Ex" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzO7Ey" role="3cpWs9">
            <property role="TrG5h" value="portDecl" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="uP0FLzO7Ez" role="1tU5fm">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="uP0FLzO7E$" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzO7E_" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzO7Ej" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzO7EA" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3JbGf" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="uP0FLzO7IJ" role="3cqZAp" />
        <node concept="3cpWs8" id="uP0FLzOJ11" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzOJ14" role="3cpWs9">
            <property role="TrG5h" value="fbNode" />
            <node concept="3Tqbb2" id="uP0FLzOJ0Z" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
            </node>
            <node concept="1PxgMI" id="uP0FLzPziV" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="uP0FLzPzkp" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
              </node>
              <node concept="2OqwBi" id="uP0FLzOJsc" role="1m5AlR">
                <node concept="1eOMI4" id="uP0FLzP6hU" role="2Oq$k0">
                  <node concept="10QFUN" id="uP0FLzP6iK" role="1eOMHV">
                    <node concept="3uibUv" id="3WC2DnYwnPl" role="10QFUM">
                      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                    </node>
                    <node concept="37vLTw" id="uP0FLzOJi4" role="10QFUP">
                      <ref role="3cqZAo" node="uP0FLzO7Er" resolve="fb" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="uP0FLzPtm2" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2CN1Od1giy3" role="3cqZAp">
          <node concept="3cpWsn" id="2CN1Od1giy4" role="3cpWs9">
            <property role="TrG5h" value="portDeclNode" />
            <node concept="3Tqbb2" id="2CN1Od1gixK" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
            </node>
            <node concept="1y4W85" id="2CN1Od1giy5" role="33vP2m">
              <node concept="2OqwBi" id="2CN1Od1giy6" role="1y58nS">
                <node concept="37vLTw" id="2CN1Od1giy7" role="2Oq$k0">
                  <ref role="3cqZAo" node="uP0FLzO7Ey" resolve="portDecl" />
                </node>
                <node concept="liA8E" id="2CN1Od1giy8" role="2OqNvi">
                  <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getPosition()" resolve="getPosition" />
                </node>
              </node>
              <node concept="2OqwBi" id="2CN1Od1giy9" role="1y566C">
                <node concept="2OqwBi" id="2CN1Od1giya" role="2Oq$k0">
                  <node concept="37vLTw" id="2CN1Od1giyb" role="2Oq$k0">
                    <ref role="3cqZAo" node="uP0FLzOJ14" resolve="fbNode" />
                  </node>
                  <node concept="3TrEf2" id="2CN1Od1giyc" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="2CN1Od1giyd" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="uP0FLzOvCG" role="3cqZAp" />
        <node concept="3cpWs8" id="_2FpOZjl_m" role="3cqZAp">
          <node concept="3cpWsn" id="_2FpOZjl_n" role="3cpWs9">
            <property role="TrG5h" value="parameter" />
            <node concept="3Tqbb2" id="_2FpOZjl_3" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
            </node>
            <node concept="2OqwBi" id="_2FpOZjl_o" role="33vP2m">
              <node concept="2OqwBi" id="_2FpOZjl_p" role="2Oq$k0">
                <node concept="37vLTw" id="_2FpOZjl_q" role="2Oq$k0">
                  <ref role="3cqZAo" node="uP0FLzOJ14" resolve="fbNode" />
                </node>
                <node concept="3Tsc0h" id="_2FpOZjl_r" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                </node>
              </node>
              <node concept="2DeJg1" id="_2FpOZjq06" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZikTz" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZjnNg" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZjox9" role="37vLTx">
              <ref role="3cqZAo" node="2CN1Od1giy4" resolve="portDeclNode" />
            </node>
            <node concept="2OqwBi" id="_2FpOZjmZ3" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZjl_t" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZjl_n" resolve="parameter" />
              </node>
              <node concept="3TrEf2" id="_2FpOZjnrh" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7b" resolve="decl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V8WxCAlYVC" role="3cqZAp">
          <node concept="2OqwBi" id="3V8WxCAm6p3" role="3clFbG">
            <node concept="2OqwBi" id="3V8WxCAm5Pv" role="2Oq$k0">
              <node concept="3TrEf2" id="3V8WxCAm6fN" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
              </node>
              <node concept="37vLTw" id="_2FpOZjpj$" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZjl_n" resolve="parameter" />
              </node>
            </node>
            <node concept="1OKiuA" id="3V8WxCAm7$P" role="2OqNvi">
              <node concept="2OqwBi" id="3V8WxCAlxJM" role="lBI5i">
                <node concept="2OqwBi" id="3V8WxCAlxnk" role="2Oq$k0">
                  <node concept="2WthIp" id="3V8WxCAlxnn" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3V8WxCAlxnp" role="2OqNvi">
                    <ref role="2WH_rO" node="uP0FLzNP3X" resolve="cell" />
                  </node>
                </node>
                <node concept="liA8E" id="3V8WxCAlyob" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getContext()" resolve="getContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="uP0FLzNSk9" role="tmbBb">
      <node concept="3clFbS" id="uP0FLzNSka" role="2VODD2">
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
                  <ref role="2WH_rO" node="uP0FLzNP3X" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="uP0FLzNW3d" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uP0FLzPAe_" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzPAeA" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="2yJZQx2wVKA" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="uP0FLzPAeB" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzPAeC" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzNW38" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzPAeD" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3Jb6A" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uP0FLzPAPY" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzPAPZ" role="3cpWs9">
            <property role="TrG5h" value="portDecl" />
            <node concept="3uibUv" id="uP0FLzPAPT" role="1tU5fm">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="uP0FLzPAQ0" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzPAQ1" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzNW38" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzPAQ2" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3JaWE" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uP0FLzNV2K" role="3cqZAp">
          <node concept="1Wc70l" id="uP0FLzQ6Ib" role="3clFbG">
            <node concept="3clFbC" id="uP0FLzQeur" role="3uHU7w">
              <node concept="Rm8GO" id="uP0FLzQg3c" role="3uHU7w">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
              </node>
              <node concept="2OqwBi" id="uP0FLzQ7kn" role="3uHU7B">
                <node concept="37vLTw" id="uP0FLzQ6Yo" role="2Oq$k0">
                  <ref role="3cqZAo" node="uP0FLzPAPZ" resolve="portDecl" />
                </node>
                <node concept="liA8E" id="_2FpOZi6tL" role="2OqNvi">
                  <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getConnectionKind()" resolve="getConnectionKind" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="uP0FLzPD5j" role="3uHU7B">
              <node concept="1Wc70l" id="uP0FLzNV2M" role="3uHU7B">
                <node concept="1Wc70l" id="uP0FLzOHBF" role="3uHU7B">
                  <node concept="3y3z36" id="uP0FLzNV2N" role="3uHU7B">
                    <node concept="37vLTw" id="uP0FLzPzSF" role="3uHU7B">
                      <ref role="3cqZAo" node="uP0FLzPzSA" resolve="network" />
                    </node>
                    <node concept="10Nm6u" id="uP0FLzNV2O" role="3uHU7w" />
                  </node>
                  <node concept="3y3z36" id="uP0FLzOHPm" role="3uHU7w">
                    <node concept="37vLTw" id="uP0FLzPAeF" role="3uHU7B">
                      <ref role="3cqZAo" node="uP0FLzPAeA" resolve="fb" />
                    </node>
                    <node concept="10Nm6u" id="uP0FLzOHPr" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3y3z36" id="uP0FLzO2ZW" role="3uHU7w">
                  <node concept="37vLTw" id="uP0FLzPAQ4" role="3uHU7B">
                    <ref role="3cqZAo" node="uP0FLzPAPZ" resolve="portDecl" />
                  </node>
                  <node concept="10Nm6u" id="uP0FLzO3Pc" role="3uHU7w" />
                </node>
              </node>
              <node concept="2OqwBi" id="uP0FLzPDEi" role="3uHU7w">
                <node concept="37vLTw" id="uP0FLzPDkF" role="2Oq$k0">
                  <ref role="3cqZAo" node="uP0FLzPAPZ" resolve="portDecl" />
                </node>
                <node concept="liA8E" id="uP0FLzQ0uG" role="2OqNvi">
                  <ref role="37wK5l" to="ntnl:~FBPortDescriptor.isInput()" resolve="isInput" />
                </node>
              </node>
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
                <node concept="37vLTw" id="6Vznkw4jhOg" role="37wK5m">
                  <ref role="3cqZAo" node="44qSI5$Vju$" resolve="node" />
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
                  <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Task.Backgroundable" />
                  <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String)" resolve="Task.Backgroundable" />
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
                                          <node concept="2YIFZM" id="4WS_6wCCWBP" role="2Oq$k0">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.getInstance()" resolve="getInstance" />
                                            <ref role="1Pybhc" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
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
                                          <node concept="2YIFZM" id="4WS_6wCCXpV" role="2Oq$k0">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.getInstance()" resolve="getInstance" />
                                            <ref role="1Pybhc" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
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
              <ref role="37wK5l" to="6w4o:~WatcherFacade.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="6w4o:~WatcherFacade" resolve="WatcherFacade" />
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
            <node concept="3clFbH" id="1S4cYrOPZOp" role="3cqZAp" />
            <node concept="3cpWs8" id="1S4cYrOPZOq" role="3cqZAp">
              <node concept="3cpWsn" id="1S4cYrOPZOr" role="3cpWs9">
                <property role="TrG5h" value="watchable" />
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
                    <node concept="2OqwBi" id="1S4cYrOPZOw" role="37wK5m">
                      <node concept="2OqwBi" id="64EP$RZ582K" role="2Oq$k0">
                        <node concept="2GrUjf" id="1S4cYrOPZO$" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1S4cYrOPZO9" resolve="port" />
                        </node>
                        <node concept="liA8E" id="64EP$RZ58yy" role="2OqNvi">
                          <ref role="37wK5l" to="g27j:~PortPath.getPortTarget()" resolve="getPortTarget" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1S4cYrOPZO_" role="2OqNvi">
                        <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
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
            <node concept="3clFbH" id="1S4cYrOPZOV" role="3cqZAp" />
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
                <node concept="2OqwBi" id="74jd4DVyRrr" role="37vLTx">
                  <node concept="37vLTw" id="74jd4DVyRrs" role="2Oq$k0">
                    <ref role="3cqZAo" node="74jd4DVyRr0" resolve="parentInstance" />
                  </node>
                  <node concept="liA8E" id="74jd4DVyRrt" role="2OqNvi">
                    <ref role="37wK5l" to="74cb:~FunctionBlockInstance.getParent()" resolve="getParent" />
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
              <ref role="37wK5l" to="6w4o:~WatchablePath.&lt;init&gt;(org.fbme.lib.iec61499.declarations.ResourceDeclaration,org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration...)" resolve="WatchablePath" />
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
              <node concept="2OqwBi" id="74jd4DVyRs9" role="37wK5m">
                <node concept="37vLTw" id="74jd4DVyRsa" role="2Oq$k0">
                  <ref role="3cqZAo" node="74jd4DVyRrG" resolve="pathList" />
                </node>
                <node concept="3_kTaI" id="74jd4DVyRsb" role="2OqNvi" />
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5uVbEkjIU3M" role="3cqZAp" />
        <node concept="3cpWs6" id="5uVbEkjFRc9" role="3cqZAp">
          <node concept="2ShNRf" id="5uVbEkjFSiY" role="3cqZAk">
            <node concept="1pGfFk" id="5uVbEkjGvvs" role="2ShVmc">
              <ref role="37wK5l" to="6w4o:~Watchable.&lt;init&gt;(org.fbme.ide.platform.debugger.WatchablePath,java.lang.String)" resolve="Watchable" />
              <node concept="1rXfSq" id="5uVbEkjJ1rN" role="37wK5m">
                <ref role="37wK5l" node="5uVbEkjIKZI" resolve="createWatchablePath" />
              </node>
              <node concept="2OqwBi" id="5uVbEkjHJxY" role="37wK5m">
                <node concept="37vLTw" id="5uVbEkjHGZR" role="2Oq$k0">
                  <ref role="3cqZAo" node="5uVbEkjFHRE" resolve="portDescriptor" />
                </node>
                <node concept="liA8E" id="5uVbEkjHKOn" role="2OqNvi">
                  <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getName()" resolve="getName" />
                </node>
              </node>
            </node>
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
        <node concept="3clFbH" id="19RKY2xFNdP" role="3cqZAp" />
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
        <node concept="3clFbH" id="19RKY2xFC6V" role="3cqZAp" />
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
                  <ref role="37wK5l" node="19RKY2xEnYh" resolve="inspector" />
                  <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
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
                <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                <ref role="37wK5l" node="19RKY2xEnYh" resolve="inspector" />
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
                  <ref role="37wK5l" node="5PjcHHGcJZ0" resolve="portListener" />
                  <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
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
                <ref role="37wK5l" node="5PjcHHGcJZ0" resolve="portListener" />
                <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
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
                  <ref role="37wK5l" node="5PjcHHGfJug" resolve="eccStateListener" />
                  <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
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
                <ref role="37wK5l" node="5PjcHHGfJug" resolve="eccStateListener" />
                <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
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
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
                    <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                    <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
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
  <node concept="312cEu" id="5PjcHHGcIHv">
    <property role="TrG5h" value="InspectionListener" />
    <node concept="3Tm1VV" id="5PjcHHGcIHw" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5PjcHHGcIKn">
    <property role="TrG5h" value="NetworkObservationKeys" />
    <node concept="2tJIrI" id="5PjcHHGcIM_" role="jymVt" />
    <node concept="Wx3nA" id="5PjcHHGcJNo" role="jymVt">
      <property role="TrG5h" value="INSPECTION_PROVIDER" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5PjcHHGcJNr" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="5PjcHHGcJNs" role="33vP2m">
        <node concept="1pGfFk" id="5PjcHHGcJNt" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGcJNq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="19RKY2xElR9" role="jymVt" />
    <node concept="2YIFZL" id="19RKY2xEnYh" role="jymVt">
      <property role="TrG5h" value="inspector" />
      <node concept="37vLTG" id="19RKY2xEoee" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="19RKY2xEost" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="19RKY2xEoeg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="19RKY2xEnYk" role="3clF47">
        <node concept="3clFbF" id="19RKY2xELsI" role="3cqZAp">
          <node concept="2ShNRf" id="19RKY2xELsG" role="3clFbG">
            <node concept="1pGfFk" id="19RKY2xEQl_" role="2ShVmc">
              <ref role="37wK5l" node="19RKY2xECLV" resolve="NetworkObservationKeys.InspectorKey" />
              <node concept="37vLTw" id="19RKY2xEQuu" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xEoee" resolve="instance" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="19RKY2xEmbH" role="1B3o_S" />
      <node concept="3uibUv" id="19RKY2xEnTx" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGcJDL" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGcJZ0" role="jymVt">
      <property role="TrG5h" value="portListener" />
      <node concept="3clFbS" id="5PjcHHGcJZ3" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGcSyz" role="3cqZAp">
          <node concept="2ShNRf" id="5PjcHHGcSyx" role="3clFbG">
            <node concept="1pGfFk" id="5PjcHHGcSOy" role="2ShVmc">
              <ref role="37wK5l" node="5PjcHHGcLcR" resolve="NetworkObservationKeys.PortListenerKey" />
              <node concept="37vLTw" id="19RKY2xEoRn" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xEovE" resolve="instance" />
              </node>
              <node concept="37vLTw" id="5PjcHHGcSRP" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGcK8Z" resolve="port" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGcJIA" role="1B3o_S" />
      <node concept="3uibUv" id="5PjcHHGcJX0" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="19RKY2xEovE" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="19RKY2xEovF" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="19RKY2xEovG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGcK8Z" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="2AHcQZ" id="5PjcHHGcSSW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5F$aghybWeQ" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="5F$aghybWeR" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="19RKY2xEQva" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGfJug" role="jymVt">
      <property role="TrG5h" value="eccStateListener" />
      <node concept="3clFbS" id="5PjcHHGfJuh" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGfJui" role="3cqZAp">
          <node concept="2ShNRf" id="5PjcHHGfJuj" role="3clFbG">
            <node concept="1pGfFk" id="5PjcHHGfJuk" role="2ShVmc">
              <ref role="37wK5l" node="5PjcHHGfIeQ" resolve="NetworkObservationKeys.ECCStateListenerKey" />
              <node concept="37vLTw" id="19RKY2xEoZG" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xEo$B" resolve="instance" />
              </node>
              <node concept="37vLTw" id="5PjcHHGfJul" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGfJuo" resolve="fb" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGfJum" role="1B3o_S" />
      <node concept="3uibUv" id="5PjcHHGfJun" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="19RKY2xEo$B" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="19RKY2xEo$C" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="19RKY2xEo$D" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGfJuo" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="2yJZQx2x7AP" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfJuq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGcKHz" role="jymVt" />
    <node concept="312cEu" id="19RKY2xECLL" role="jymVt">
      <property role="TrG5h" value="InspectorKey" />
      <node concept="2tJIrI" id="19RKY2xECLM" role="jymVt" />
      <node concept="312cEg" id="19RKY2xECLN" role="jymVt">
        <property role="TrG5h" value="myInstance" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="19RKY2xECLO" role="1B3o_S" />
        <node concept="3uibUv" id="19RKY2xECLP" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="2tJIrI" id="19RKY2xECLT" role="jymVt" />
      <node concept="3Tm6S6" id="19RKY2xECLU" role="1B3o_S" />
      <node concept="3clFbW" id="19RKY2xECLV" role="jymVt">
        <node concept="3cqZAl" id="19RKY2xECLW" role="3clF45" />
        <node concept="3Tm6S6" id="19RKY2xECLX" role="1B3o_S" />
        <node concept="3clFbS" id="19RKY2xECLY" role="3clF47">
          <node concept="3clFbF" id="19RKY2xECLZ" role="3cqZAp">
            <node concept="37vLTI" id="19RKY2xECM0" role="3clFbG">
              <node concept="37vLTw" id="19RKY2xECM1" role="37vLTx">
                <ref role="3cqZAo" node="19RKY2xECM7" resolve="instance" />
              </node>
              <node concept="37vLTw" id="19RKY2xECM2" role="37vLTJ">
                <ref role="3cqZAo" node="19RKY2xECLN" resolve="myInstance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="19RKY2xECM7" role="3clF46">
          <property role="TrG5h" value="instance" />
          <node concept="3uibUv" id="19RKY2xECM8" role="1tU5fm">
            <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="19RKY2xECMb" role="jymVt" />
      <node concept="3clFb_" id="19RKY2xECMc" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="19RKY2xECMd" role="3clF45" />
        <node concept="3Tm1VV" id="19RKY2xECMe" role="1B3o_S" />
        <node concept="3clFbS" id="19RKY2xECMf" role="3clF47">
          <node concept="3clFbJ" id="19RKY2xECMg" role="3cqZAp">
            <node concept="3clFbS" id="19RKY2xECMh" role="3clFbx">
              <node concept="3cpWs6" id="19RKY2xECMi" role="3cqZAp">
                <node concept="3clFbT" id="19RKY2xECMj" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="19RKY2xECMk" role="3clFbw">
              <node concept="Xjq3P" id="19RKY2xECMl" role="3uHU7B" />
              <node concept="37vLTw" id="19RKY2xECMm" role="3uHU7w">
                <ref role="3cqZAo" node="19RKY2xECMO" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="19RKY2xECMn" role="3cqZAp">
            <node concept="3clFbS" id="19RKY2xECMo" role="3clFbx">
              <node concept="3cpWs6" id="19RKY2xECMp" role="3cqZAp">
                <node concept="3clFbT" id="19RKY2xECMq" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="19RKY2xECMr" role="3clFbw">
              <node concept="1eOMI4" id="19RKY2xECMs" role="3fr31v">
                <node concept="2ZW3vV" id="19RKY2xECMt" role="1eOMHV">
                  <node concept="3uibUv" id="19RKY2xECMu" role="2ZW6by">
                    <ref role="3uigEE" node="19RKY2xECLL" resolve="NetworkObservationKeys.InspectorKey" />
                  </node>
                  <node concept="37vLTw" id="19RKY2xECMv" role="2ZW6bz">
                    <ref role="3cqZAo" node="19RKY2xECMO" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="19RKY2xECMw" role="3cqZAp" />
          <node concept="3cpWs8" id="19RKY2xECMx" role="3cqZAp">
            <node concept="3cpWsn" id="19RKY2xECMy" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="19RKY2xECMz" role="1tU5fm">
                <ref role="3uigEE" node="19RKY2xECLL" resolve="NetworkObservationKeys.InspectorKey" />
              </node>
              <node concept="10QFUN" id="19RKY2xECM$" role="33vP2m">
                <node concept="3uibUv" id="19RKY2xECM_" role="10QFUM">
                  <ref role="3uigEE" node="19RKY2xECLL" resolve="NetworkObservationKeys.InspectorKey" />
                </node>
                <node concept="37vLTw" id="19RKY2xECMA" role="10QFUP">
                  <ref role="3cqZAo" node="19RKY2xECMO" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="19RKY2xECMB" role="3cqZAp" />
          <node concept="3clFbF" id="19RKY2xECMC" role="3cqZAp">
            <node concept="3clFbC" id="19RKY2xECME" role="3clFbG">
              <node concept="2OqwBi" id="19RKY2xECMF" role="3uHU7w">
                <node concept="37vLTw" id="19RKY2xECMG" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xECMy" resolve="that" />
                </node>
                <node concept="2OwXpG" id="19RKY2xECMH" role="2OqNvi">
                  <ref role="2Oxat5" node="19RKY2xECLN" resolve="myInstance" />
                </node>
              </node>
              <node concept="37vLTw" id="19RKY2xECMI" role="3uHU7B">
                <ref role="3cqZAo" node="19RKY2xECLN" resolve="myInstance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="19RKY2xECMO" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="19RKY2xECMP" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="19RKY2xECMQ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="19RKY2xECMR" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="19RKY2xECMS" role="3clF45" />
        <node concept="3Tm1VV" id="19RKY2xECMT" role="1B3o_S" />
        <node concept="3clFbS" id="19RKY2xECMU" role="3clF47">
          <node concept="3clFbF" id="19RKY2xECMV" role="3cqZAp">
            <node concept="2OqwBi" id="19RKY2xECMY" role="3clFbG">
              <node concept="37vLTw" id="19RKY2xECMZ" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xECLN" resolve="myInstance" />
              </node>
              <node concept="liA8E" id="19RKY2xECN0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="19RKY2xECN5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="19RKY2xEIZl" role="jymVt" />
    <node concept="312cEu" id="5PjcHHGcKRT" role="jymVt">
      <property role="TrG5h" value="PortListenerKey" />
      <node concept="2tJIrI" id="5PjcHHGcKTz" role="jymVt" />
      <node concept="312cEg" id="19RKY2xEq2m" role="jymVt">
        <property role="TrG5h" value="myInstance" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="19RKY2xEpjQ" role="1B3o_S" />
        <node concept="3uibUv" id="19RKY2xEq0h" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="312cEg" id="5PjcHHGcLbZ" role="jymVt">
        <property role="TrG5h" value="myPort" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5PjcHHGcKYf" role="1B3o_S" />
        <node concept="3uibUv" id="5F$aghybWh1" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="5F$aghybWh2" role="11_B2D" />
        </node>
      </node>
      <node concept="2tJIrI" id="5PjcHHGcLck" role="jymVt" />
      <node concept="3Tm6S6" id="5PjcHHGcKMU" role="1B3o_S" />
      <node concept="3clFbW" id="5PjcHHGcLcR" role="jymVt">
        <node concept="3cqZAl" id="5PjcHHGcLcS" role="3clF45" />
        <node concept="3Tm6S6" id="5PjcHHGcLcT" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGcLcV" role="3clF47">
          <node concept="3clFbF" id="19RKY2xEqNW" role="3cqZAp">
            <node concept="37vLTI" id="19RKY2xErcc" role="3clFbG">
              <node concept="37vLTw" id="19RKY2xErB5" role="37vLTx">
                <ref role="3cqZAo" node="19RKY2xEqdF" resolve="instance" />
              </node>
              <node concept="37vLTw" id="19RKY2xEqNU" role="37vLTJ">
                <ref role="3cqZAo" node="19RKY2xEq2m" resolve="myInstance" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5PjcHHGcLcZ" role="3cqZAp">
            <node concept="37vLTI" id="5PjcHHGcLd1" role="3clFbG">
              <node concept="37vLTw" id="5PjcHHGcLd8" role="37vLTx">
                <ref role="3cqZAo" node="5PjcHHGcLcY" resolve="port" />
              </node>
              <node concept="37vLTw" id="5PjcHHGcLlN" role="37vLTJ">
                <ref role="3cqZAo" node="5PjcHHGcLbZ" resolve="myPort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="19RKY2xEqdF" role="3clF46">
          <property role="TrG5h" value="instance" />
          <node concept="3uibUv" id="19RKY2xEqdH" role="1tU5fm">
            <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
          </node>
        </node>
        <node concept="37vLTG" id="5PjcHHGcLcY" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="3uibUv" id="5F$aghybWtq" role="1tU5fm">
            <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
            <node concept="3qTvmN" id="5F$aghybWtr" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5PjcHHGfJlE" role="jymVt" />
      <node concept="3clFb_" id="5PjcHHGcLq8" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="5PjcHHGcLq9" role="3clF45" />
        <node concept="3Tm1VV" id="5PjcHHGcLqa" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGcLqb" role="3clF47">
          <node concept="3clFbJ" id="5PjcHHGcLqc" role="3cqZAp">
            <node concept="3clFbS" id="5PjcHHGcLqd" role="3clFbx">
              <node concept="3cpWs6" id="5PjcHHGcLqe" role="3cqZAp">
                <node concept="3clFbT" id="5PjcHHGcLqf" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5PjcHHGcLqg" role="3clFbw">
              <node concept="Xjq3P" id="5PjcHHGcLq7" role="3uHU7B" />
              <node concept="37vLTw" id="5PjcHHGcLqh" role="3uHU7w">
                <ref role="3cqZAo" node="5PjcHHGcLqC" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5PjcHHGcLqi" role="3cqZAp">
            <node concept="3clFbS" id="5PjcHHGcLqj" role="3clFbx">
              <node concept="3cpWs6" id="5PjcHHGcLqk" role="3cqZAp">
                <node concept="3clFbT" id="5PjcHHGcLql" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="5PjcHHGcM5S" role="3clFbw">
              <node concept="1eOMI4" id="5PjcHHGcM5U" role="3fr31v">
                <node concept="2ZW3vV" id="5PjcHHGcMrs" role="1eOMHV">
                  <node concept="3uibUv" id="5PjcHHGcMCv" role="2ZW6by">
                    <ref role="3uigEE" node="5PjcHHGcKRT" resolve="NetworkObservationKeys.PortListenerKey" />
                  </node>
                  <node concept="37vLTw" id="5PjcHHGcMeR" role="2ZW6bz">
                    <ref role="3cqZAo" node="5PjcHHGcLqC" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PjcHHGcLqx" role="3cqZAp" />
          <node concept="3cpWs8" id="5PjcHHGcLqy" role="3cqZAp">
            <node concept="3cpWsn" id="5PjcHHGcLqz" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="5PjcHHGcLq$" role="1tU5fm">
                <ref role="3uigEE" node="5PjcHHGcKRT" resolve="NetworkObservationKeys.PortListenerKey" />
              </node>
              <node concept="10QFUN" id="5PjcHHGcLq_" role="33vP2m">
                <node concept="3uibUv" id="5PjcHHGcLqA" role="10QFUM">
                  <ref role="3uigEE" node="5PjcHHGcKRT" resolve="NetworkObservationKeys.PortListenerKey" />
                </node>
                <node concept="37vLTw" id="5PjcHHGcLqB" role="10QFUP">
                  <ref role="3cqZAo" node="5PjcHHGcLqC" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PjcHHGcNax" role="3cqZAp" />
          <node concept="3clFbF" id="5PjcHHGcNyG" role="3cqZAp">
            <node concept="1Wc70l" id="19RKY2xErOz" role="3clFbG">
              <node concept="3clFbC" id="19RKY2xEsEp" role="3uHU7B">
                <node concept="2OqwBi" id="19RKY2xEth1" role="3uHU7w">
                  <node concept="37vLTw" id="19RKY2xEsX8" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGcLqz" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="19RKY2xEtwS" role="2OqNvi">
                    <ref role="2Oxat5" node="19RKY2xEq2m" resolve="myInstance" />
                  </node>
                </node>
                <node concept="37vLTw" id="19RKY2xEsfI" role="3uHU7B">
                  <ref role="3cqZAo" node="19RKY2xEq2m" resolve="myInstance" />
                </node>
              </node>
              <node concept="17R0WA" id="5PjcHHGcOcb" role="3uHU7w">
                <node concept="2OqwBi" id="5PjcHHGcOqa" role="3uHU7w">
                  <node concept="37vLTw" id="5PjcHHGcOjv" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGcLqz" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="5PjcHHGcPft" role="2OqNvi">
                    <ref role="2Oxat5" node="5PjcHHGcLbZ" resolve="myPort" />
                  </node>
                </node>
                <node concept="37vLTw" id="5PjcHHGcNyE" role="3uHU7B">
                  <ref role="3cqZAo" node="5PjcHHGcLbZ" resolve="myPort" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5PjcHHGcLqC" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="5PjcHHGcLqD" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5PjcHHGcLqE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5PjcHHGcLr4" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="5PjcHHGcLr5" role="3clF45" />
        <node concept="3Tm1VV" id="5PjcHHGcLr6" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGcLr7" role="3clF47">
          <node concept="3clFbF" id="5PjcHHGcPU_" role="3cqZAp">
            <node concept="3cpWs3" id="19RKY2xEu2e" role="3clFbG">
              <node concept="17qRlL" id="19RKY2xEv$y" role="3uHU7B">
                <node concept="2OqwBi" id="19RKY2xEwus" role="3uHU7w">
                  <node concept="37vLTw" id="19RKY2xEvX8" role="2Oq$k0">
                    <ref role="3cqZAo" node="19RKY2xEq2m" resolve="myInstance" />
                  </node>
                  <node concept="liA8E" id="19RKY2xEwK9" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="19RKY2xEujG" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
              </node>
              <node concept="2OqwBi" id="5PjcHHGcQ4M" role="3uHU7w">
                <node concept="37vLTw" id="5PjcHHGcPU$" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGcLbZ" resolve="myPort" />
                </node>
                <node concept="liA8E" id="5F$aghybWO1" role="2OqNvi">
                  <ref role="37wK5l" to="g27j:~PortPath.hashCode()" resolve="hashCode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5PjcHHGcLr8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="19RKY2xECdF" role="jymVt" />
    <node concept="312cEu" id="5PjcHHGfIeJ" role="jymVt">
      <property role="TrG5h" value="ECCStateListenerKey" />
      <node concept="2tJIrI" id="5PjcHHGfIeK" role="jymVt" />
      <node concept="312cEg" id="19RKY2xEwYY" role="jymVt">
        <property role="TrG5h" value="myInstance" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="19RKY2xEwYZ" role="1B3o_S" />
        <node concept="3uibUv" id="19RKY2xEwZ0" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="312cEg" id="5PjcHHGfIeL" role="jymVt">
        <property role="TrG5h" value="myFB" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5PjcHHGfIeM" role="1B3o_S" />
        <node concept="3uibUv" id="2yJZQx2x7ZK" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
      </node>
      <node concept="2tJIrI" id="5PjcHHGfIeO" role="jymVt" />
      <node concept="3Tm6S6" id="5PjcHHGfIeP" role="1B3o_S" />
      <node concept="3clFbW" id="5PjcHHGfIeQ" role="jymVt">
        <node concept="3cqZAl" id="5PjcHHGfIeR" role="3clF45" />
        <node concept="3Tm6S6" id="5PjcHHGfIeS" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGfIeT" role="3clF47">
          <node concept="3clFbF" id="19RKY2xEyje" role="3cqZAp">
            <node concept="37vLTI" id="19RKY2xEyGP" role="3clFbG">
              <node concept="37vLTw" id="19RKY2xEz7I" role="37vLTx">
                <ref role="3cqZAo" node="19RKY2xExlX" resolve="instance" />
              </node>
              <node concept="37vLTw" id="19RKY2xEyjc" role="37vLTJ">
                <ref role="3cqZAo" node="19RKY2xEwYY" resolve="myInstance" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5PjcHHGfIeU" role="3cqZAp">
            <node concept="37vLTI" id="5PjcHHGfIeV" role="3clFbG">
              <node concept="37vLTw" id="5PjcHHGfIeW" role="37vLTx">
                <ref role="3cqZAo" node="5PjcHHGfIeY" resolve="fb" />
              </node>
              <node concept="37vLTw" id="5PjcHHGfIeX" role="37vLTJ">
                <ref role="3cqZAo" node="5PjcHHGfIeL" resolve="myFB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="19RKY2xExlX" role="3clF46">
          <property role="TrG5h" value="instance" />
          <node concept="3uibUv" id="19RKY2xExId" role="1tU5fm">
            <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
          </node>
        </node>
        <node concept="37vLTG" id="5PjcHHGfIeY" role="3clF46">
          <property role="TrG5h" value="fb" />
          <node concept="3uibUv" id="2yJZQx2x7MQ" role="1tU5fm">
            <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5PjcHHGfJdn" role="jymVt" />
      <node concept="3clFb_" id="5PjcHHGfIf0" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="5PjcHHGfIf1" role="3clF45" />
        <node concept="3Tm1VV" id="5PjcHHGfIf2" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGfIf3" role="3clF47">
          <node concept="3clFbJ" id="5PjcHHGfIf4" role="3cqZAp">
            <node concept="3clFbS" id="5PjcHHGfIf5" role="3clFbx">
              <node concept="3cpWs6" id="5PjcHHGfIf6" role="3cqZAp">
                <node concept="3clFbT" id="5PjcHHGfIf7" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5PjcHHGfIf8" role="3clFbw">
              <node concept="Xjq3P" id="5PjcHHGfIf9" role="3uHU7B" />
              <node concept="37vLTw" id="5PjcHHGfIfa" role="3uHU7w">
                <ref role="3cqZAo" node="5PjcHHGfIfy" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5PjcHHGfIfb" role="3cqZAp">
            <node concept="3clFbS" id="5PjcHHGfIfc" role="3clFbx">
              <node concept="3cpWs6" id="5PjcHHGfIfd" role="3cqZAp">
                <node concept="3clFbT" id="5PjcHHGfIfe" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="5PjcHHGfIff" role="3clFbw">
              <node concept="1eOMI4" id="5PjcHHGfIfg" role="3fr31v">
                <node concept="2ZW3vV" id="5PjcHHGfIfh" role="1eOMHV">
                  <node concept="3uibUv" id="5PjcHHGfIfi" role="2ZW6by">
                    <ref role="3uigEE" node="5PjcHHGfIeJ" resolve="NetworkObservationKeys.ECCStateListenerKey" />
                  </node>
                  <node concept="37vLTw" id="5PjcHHGfIfj" role="2ZW6bz">
                    <ref role="3cqZAo" node="5PjcHHGfIfy" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PjcHHGfIfk" role="3cqZAp" />
          <node concept="3cpWs8" id="5PjcHHGfIfl" role="3cqZAp">
            <node concept="3cpWsn" id="5PjcHHGfIfm" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="5PjcHHGfIfn" role="1tU5fm">
                <ref role="3uigEE" node="5PjcHHGfIeJ" resolve="NetworkObservationKeys.ECCStateListenerKey" />
              </node>
              <node concept="10QFUN" id="5PjcHHGfIfo" role="33vP2m">
                <node concept="3uibUv" id="5PjcHHGfIfp" role="10QFUM">
                  <ref role="3uigEE" node="5PjcHHGfIeJ" resolve="NetworkObservationKeys.ECCStateListenerKey" />
                </node>
                <node concept="37vLTw" id="5PjcHHGfIfq" role="10QFUP">
                  <ref role="3cqZAo" node="5PjcHHGfIfy" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PjcHHGfIfr" role="3cqZAp" />
          <node concept="3clFbF" id="5PjcHHGfIfs" role="3cqZAp">
            <node concept="1Wc70l" id="19RKY2xEzs9" role="3clFbG">
              <node concept="17R0WA" id="19RKY2xE$kH" role="3uHU7B">
                <node concept="2OqwBi" id="19RKY2xE$SE" role="3uHU7w">
                  <node concept="37vLTw" id="19RKY2xE$zq" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGfIfm" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="19RKY2xE_5Q" role="2OqNvi">
                    <ref role="2Oxat5" node="19RKY2xEwYY" resolve="myInstance" />
                  </node>
                </node>
                <node concept="37vLTw" id="19RKY2xEzSF" role="3uHU7B">
                  <ref role="3cqZAo" node="19RKY2xEwYY" resolve="myInstance" />
                </node>
              </node>
              <node concept="17R0WA" id="5PjcHHGfIft" role="3uHU7w">
                <node concept="2OqwBi" id="5PjcHHGfIfu" role="3uHU7w">
                  <node concept="37vLTw" id="5PjcHHGfIfv" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGfIfm" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="5PjcHHGfIfw" role="2OqNvi">
                    <ref role="2Oxat5" node="5PjcHHGfIeL" resolve="myFB" />
                  </node>
                </node>
                <node concept="37vLTw" id="5PjcHHGfIfx" role="3uHU7B">
                  <ref role="3cqZAo" node="5PjcHHGfIeL" resolve="myFB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5PjcHHGfIfy" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="5PjcHHGfIfz" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfIf$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5PjcHHGfIf_" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="5PjcHHGfIfA" role="3clF45" />
        <node concept="3Tm1VV" id="5PjcHHGfIfB" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGfIfC" role="3clF47">
          <node concept="3clFbF" id="5PjcHHGfIfD" role="3cqZAp">
            <node concept="3cpWs3" id="19RKY2xE_tE" role="3clFbG">
              <node concept="17qRlL" id="19RKY2xEAM7" role="3uHU7B">
                <node concept="2OqwBi" id="19RKY2xEBIT" role="3uHU7w">
                  <node concept="37vLTw" id="19RKY2xEBc7" role="2Oq$k0">
                    <ref role="3cqZAo" node="19RKY2xEwYY" resolve="myInstance" />
                  </node>
                  <node concept="liA8E" id="19RKY2xEBYA" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                  </node>
                </node>
                <node concept="3cmrfG" id="19RKY2xE_Li" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
              </node>
              <node concept="2OqwBi" id="5PjcHHGfIfE" role="3uHU7w">
                <node concept="37vLTw" id="5PjcHHGfIfF" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGfIeL" resolve="myFB" />
                </node>
                <node concept="liA8E" id="5PjcHHGfIfG" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfIfH" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5PjcHHGcIKo" role="1B3o_S" />
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
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="19RKY2xFM13" resolve="unwatchPort" />
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
              <ref role="3uigEE" node="5PjcHHGcAKb" resolve="NetworkWatchActions" />
            </node>
            <node concept="2ShNRf" id="19RKY2xGyuk" role="33vP2m">
              <node concept="1pGfFk" id="19RKY2xGyul" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
                <ref role="37wK5l" node="19RKY2xF446" resolve="hasWatchedPort" />
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
                        <ref role="37wK5l" node="19RKY2xFOor" resolve="portToWatch" />
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
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="19RKY2xFC5D" resolve="watchEcc" />
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
                  <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
                <ref role="37wK5l" node="19RKY2xFKOC" resolve="hasEccToWatch" />
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
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="19RKY2xFzs2" resolve="unwatchEcc" />
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
                  <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
                <ref role="37wK5l" node="19RKY2xFFjc" resolve="hasWatchedEcc" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
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
  <node concept="2uRRBC" id="30N5LJaazkw">
    <property role="TrG5h" value="NetworkInstanceNavBarExtensionRegistrar" />
    <node concept="2uRRBj" id="30N5LJaazuT" role="2uRRBE">
      <node concept="3clFbS" id="30N5LJaazuU" role="2VODD2">
        <node concept="3clFbF" id="7Y8B9wpfmKG" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wpfocE" role="3clFbG">
            <node concept="2OqwBi" id="7Y8B9wpfn3W" role="2Oq$k0">
              <node concept="10M0yZ" id="1vJkp1U0e2M" role="2Oq$k0">
                <ref role="3cqZAo" to="93vd:~NavBarModelExtension.EP_NAME" resolve="EP_NAME" />
                <ref role="1PxDUh" to="93vd:~NavBarModelExtension" resolve="NavBarModelExtension" />
              </node>
              <node concept="liA8E" id="7Y8B9wpfnG1" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionPointName.getPoint(com.intellij.openapi.extensions.AreaInstance)" resolve="getPoint" />
                <node concept="2YIFZM" id="30N5LJaaB7e" role="37wK5m">
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7Y8B9wpfrHw" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.registerExtension(java.lang.Object)" resolve="registerExtension" />
              <node concept="2ShNRf" id="1vJkp1U04LB" role="37wK5m">
                <node concept="1pGfFk" id="6SLp5w3O7Bb" role="2ShVmc">
                  <ref role="37wK5l" to="je9f:~NetworkInstanceNavBarExtension.&lt;init&gt;()" resolve="NetworkInstanceNavBarExtension" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="30N5LJaa$bR" role="2uRRBF">
      <node concept="3clFbS" id="30N5LJaa$bS" role="2VODD2">
        <node concept="3clFbF" id="1vJkp1U0dGe" role="3cqZAp">
          <node concept="2OqwBi" id="1vJkp1U0dGf" role="3clFbG">
            <node concept="2OqwBi" id="1vJkp1U0dGg" role="2Oq$k0">
              <node concept="liA8E" id="1vJkp1U0dGi" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionPointName.getPoint(com.intellij.openapi.extensions.AreaInstance)" resolve="getPoint" />
                <node concept="2YIFZM" id="30N5LJaaAZX" role="37wK5m">
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                </node>
              </node>
              <node concept="10M0yZ" id="1vJkp1U0edE" role="2Oq$k0">
                <ref role="1PxDUh" to="93vd:~NavBarModelExtension" resolve="NavBarModelExtension" />
                <ref role="3cqZAo" to="93vd:~NavBarModelExtension.EP_NAME" resolve="EP_NAME" />
              </node>
            </node>
            <node concept="liA8E" id="1vJkp1U0dGm" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.unregisterExtension(java.lang.Class)" resolve="unregisterExtension" />
              <node concept="3VsKOn" id="1vJkp1U0gKW" role="37wK5m">
                <ref role="3VsUkX" to="je9f:~NetworkInstanceNavBarExtension" resolve="NetworkInstanceNavBarExtension" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3vwudsmWdp9">
    <property role="TrG5h" value="NetworkInstance_GoToNavBar" />
    <property role="2uzpH1" value="Jump to Network Navigation Bar" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="tnohg" id="3vwudsmWdpa" role="tncku">
      <node concept="3clFbS" id="3vwudsmWdpb" role="2VODD2">
        <node concept="3cpWs8" id="3vwudsmZfEF" role="3cqZAp">
          <node concept="3cpWsn" id="3vwudsmZfEG" role="3cpWs9">
            <property role="TrG5h" value="editor" />
            <node concept="3uibUv" id="IHtTBFkSWd" role="1tU5fm">
              <ref role="3uigEE" to="8gms:~HeaderedNodeEditor" resolve="HeaderedNodeEditor" />
            </node>
            <node concept="0kSF2" id="2CiAywA857_" role="33vP2m">
              <node concept="3uibUv" id="IHtTBFkSWh" role="0kSFW">
                <ref role="3uigEE" to="8gms:~HeaderedNodeEditor" resolve="HeaderedNodeEditor" />
              </node>
              <node concept="2OqwBi" id="2CiAywA8bcu" role="0kSFX">
                <node concept="2WthIp" id="2CiAywA8aVU" role="2Oq$k0" />
                <node concept="1DTwFV" id="2CiAywA8bxy" role="2OqNvi">
                  <ref role="2WH_rO" node="2CiAywA7Wrb" resolve="editor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3vwudsmZCJq" role="3cqZAp">
          <node concept="3cpWsn" id="3vwudsmZCJr" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="3vwudsmZCDp" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="2OqwBi" id="3vwudsmZCJs" role="33vP2m">
              <node concept="37vLTw" id="3vwudsmZCJt" role="2Oq$k0">
                <ref role="3cqZAo" node="3vwudsmZfEG" resolve="editor" />
              </node>
              <node concept="liA8E" id="IHtTBFkTiE" role="2OqNvi">
                <ref role="37wK5l" to="8gms:~HeaderedNodeEditor.getProjectionComponent()" resolve="getProjectionComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3vwudsmZSnb" role="3cqZAp">
          <node concept="3cpWsn" id="3vwudsmZSnc" role="3cpWs9">
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="3vwudsmZSmT" role="1tU5fm">
              <ref role="3uigEE" to="93vd:~NavBarPanel" resolve="NavBarPanel" />
            </node>
            <node concept="0kSF2" id="3vwudsmZSnd" role="33vP2m">
              <node concept="3uibUv" id="3vwudsmZSne" role="0kSFW">
                <ref role="3uigEE" to="93vd:~NavBarPanel" resolve="NavBarPanel" />
              </node>
              <node concept="2OqwBi" id="3vwudsmZSnf" role="0kSFX">
                <node concept="37vLTw" id="3vwudsmZSng" role="2Oq$k0">
                  <ref role="3cqZAo" node="3vwudsmZCJr" resolve="component" />
                </node>
                <node concept="liA8E" id="3vwudsmZSnh" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getClientProperty(java.lang.Object)" resolve="getClientProperty" />
                  <node concept="Xl_RD" id="3vwudsmZSni" role="37wK5m">
                    <property role="Xl_RC" value="NavBarPanel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vwudsmZSKp" role="3cqZAp">
          <node concept="2OqwBi" id="3vwudsmZTtZ" role="3clFbG">
            <node concept="37vLTw" id="3vwudsmZSKn" role="2Oq$k0">
              <ref role="3cqZAo" node="3vwudsmZSnc" resolve="panel" />
            </node>
            <node concept="liA8E" id="3vwudsmZUOI" role="2OqNvi">
              <ref role="37wK5l" to="93vd:~NavBarPanel.rebuildAndSelectTail(boolean)" resolve="rebuildAndSelectTail" />
              <node concept="3clFbT" id="3vwudsmZVyx" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="2CiAywA7Wrb" role="1NuT2Z">
      <property role="TrG5h" value="editor" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.MPS_EDITOR" resolve="MPS_EDITOR" />
      <node concept="1oajcY" id="2CiAywA7Wrc" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3vwudsn0kPM" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="3vwudsn0kPN" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="3vwudsmZevT" role="tmbBb">
      <node concept="3clFbS" id="3vwudsmZevU" role="2VODD2">
        <node concept="3clFbF" id="2CiAywA7WKB" role="3cqZAp">
          <node concept="2ZW3vV" id="2CiAywA7YEz" role="3clFbG">
            <node concept="3uibUv" id="IHtTBFkSRs" role="2ZW6by">
              <ref role="3uigEE" to="8gms:~HeaderedNodeEditor" resolve="HeaderedNodeEditor" />
            </node>
            <node concept="2OqwBi" id="2CiAywA7WKx" role="2ZW6bz">
              <node concept="2WthIp" id="2CiAywA7WK$" role="2Oq$k0" />
              <node concept="1DTwFV" id="2CiAywA7WKA" role="2OqNvi">
                <ref role="2WH_rO" node="2CiAywA7Wrb" resolve="editor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="2CiAywA8aMI" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2CiAywA5IQt" role="8Wnug">
            <node concept="3y3z36" id="2CiAywA5Kff" role="3clFbG">
              <node concept="10Nm6u" id="2CiAywA5KsY" role="3uHU7w" />
              <node concept="2YIFZM" id="2CiAywA5IRp" role="3uHU7B">
                <ref role="37wK5l" to="dxuu:~SwingUtilities.getAncestorOfClass(java.lang.Class,java.awt.Component)" resolve="getAncestorOfClass" />
                <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                <node concept="3VsKOn" id="2CiAywA5Jmo" role="37wK5m">
                  <ref role="3VsUkX" to="8gms:~HeaderedNodeEditor" resolve="HeaderedNodeEditor" />
                </node>
                <node concept="2OqwBi" id="3vwudsmZeCz" role="37wK5m">
                  <node concept="2WthIp" id="3vwudsmZeCA" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2CiAywA5$qS" role="2OqNvi">
                    <ref role="2WH_rO" node="3vwudsn0kPM" resolve="editorComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="mfpdH" id="3vwudsn0BWC" role="med8o" />
  </node>
  <node concept="Zd50a" id="3vwudsn0zdT">
    <property role="TrG5h" value="RichEditingActions_Default" />
    <node concept="Zd509" id="3vwudsn0zdW" role="Zd508">
      <ref role="1bYAoF" node="3vwudsmWdp9" resolve="NetworkInstance_GoToNavBar" />
      <node concept="pLAjd" id="3vwudsn0zdY" role="Zd501">
        <property role="pLAjf" value="VK_UP" />
        <property role="pLAjc" value="ctrl" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="2CiAywA5fjA">
    <property role="TrG5h" value="FlyingActions_NavBar" />
    <node concept="ftmFs" id="2CiAywA5fjE" role="ftER_">
      <node concept="tCFHf" id="2CiAywA5fjH" role="ftvYc">
        <ref role="tCJdB" node="3vwudsmWdp9" resolve="NetworkInstance_GoToNavBar" />
      </node>
    </node>
    <node concept="tT9cl" id="2CiAywA5fjC" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
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
                        <node concept="10M0yZ" id="6SLp5w3JnwR" role="37wK5m">
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
                <node concept="10M0yZ" id="6SLp5w3JpX9" role="37wK5m">
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
                <node concept="10M0yZ" id="6SLp5w3JqNb" role="37wK5m">
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
                <node concept="10M0yZ" id="6SLp5w3Jo$W" role="37wK5m">
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
                    <node concept="10M0yZ" id="6SLp5w3JpCj" role="37wK5m">
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
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="1S4cYrONxwq" resolve="unwatchFunctionBlock" />
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
              <ref role="3uigEE" node="5PjcHHGcAKb" resolve="NetworkWatchActions" />
            </node>
            <node concept="2ShNRf" id="1S4cYrOLGmo" role="33vP2m">
              <node concept="1pGfFk" id="1S4cYrOLGmp" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
                <ref role="37wK5l" node="1S4cYrOMDwO" resolve="hasWatchedFunctionBlock" />
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
                          <ref role="37wK5l" node="1S4cYrOMM45" resolve="getFunctionBlock" />
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
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="1S4cYrOPOKP" resolve="watchFunctionBlock" />
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
              <ref role="3uigEE" node="5PjcHHGcAKb" resolve="NetworkWatchActions" />
            </node>
            <node concept="2ShNRf" id="1S4cYrOQS6i" role="33vP2m">
              <node concept="1pGfFk" id="1S4cYrOQS6j" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
                <ref role="37wK5l" node="1S4cYrONjsz" resolve="hasFunctionBlockToWatch" />
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
                          <ref role="37wK5l" node="1S4cYrOMM45" resolve="getFunctionBlock" />
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
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="1S4cYrOQM6a" resolve="watchSelectedFunctionBlocks" />
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
              <ref role="3uigEE" node="5PjcHHGcAKb" resolve="NetworkWatchActions" />
            </node>
            <node concept="2ShNRf" id="6kcQr5wzrjB" role="33vP2m">
              <node concept="1pGfFk" id="6kcQr5wzrjC" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="6kcQr5w$sYW" resolve="hasFunctionBlocskToWatchInSelection" />
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
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="1S4cYrOQcQr" resolve="unwatchSelectedFunctionBlocks" />
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
              <ref role="3uigEE" node="5PjcHHGcAKb" resolve="NetworkWatchActions" />
            </node>
            <node concept="2ShNRf" id="6kcQr5w_VlQ" role="33vP2m">
              <node concept="1pGfFk" id="6kcQr5w_VlR" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
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
              <ref role="37wK5l" node="6kcQr5w_nRD" resolve="hasWatchedFunctionBlocksInSelection" />
            </node>
          </node>
        </node>
      </node>
    </node>
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
  <node concept="sE7Ow" id="2wHo_lFWP3z">
    <property role="TrG5h" value="Test_HighlightConnections" />
    <property role="2uzpH1" value="[Test] Highlight Event Connections" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="tnohg" id="2wHo_lFWP3$" role="tncku">
      <node concept="3clFbS" id="2wHo_lFWP3_" role="2VODD2">
        <node concept="3clFbF" id="2wHo_lFWP3A" role="3cqZAp">
          <node concept="2OqwBi" id="2wHo_lFWP3B" role="3clFbG">
            <node concept="2ShNRf" id="2wHo_lFWP3C" role="2Oq$k0">
              <node concept="1pGfFk" id="2wHo_lFWP3D" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" resolve="NetworkWatchActions" />
                <node concept="2OqwBi" id="2wHo_lFWP3E" role="37wK5m">
                  <node concept="2WthIp" id="2wHo_lFWP3F" role="2Oq$k0" />
                  <node concept="2XshWL" id="2wHo_lFWP3G" role="2OqNvi">
                    <ref role="2WH_rO" node="2wHo_lFWP4K" resolve="resource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2wHo_lFWP3H" role="37wK5m">
                  <node concept="2WthIp" id="2wHo_lFWP3I" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2wHo_lFWP3J" role="2OqNvi">
                    <ref role="2WH_rO" node="2wHo_lFWP4I" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4iAzk" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4iAgS" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4iC1R" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iAVA" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2wHo_lFZ7Wh" role="2OqNvi">
              <ref role="37wK5l" node="2wHo_lFXM7A" resolve="highlightEventConnections" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="2wHo_lFWP4E" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="2wHo_lFWP4F" role="1B3o_S" />
      <node concept="1oajcY" id="2wHo_lFWP4G" role="1oa70y" />
      <node concept="3Tqbb2" id="2wHo_lFWP4H" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="2wHo_lFWP4I" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="2wHo_lFWP4J" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4iAVA" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4iAVB" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="2wHo_lFWP4K" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="2wHo_lFWP4L" role="1B3o_S" />
      <node concept="3Tqbb2" id="2wHo_lFWP4M" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="2wHo_lFWP4N" role="3clF47">
        <node concept="3cpWs6" id="2wHo_lFWP4O" role="3cqZAp">
          <node concept="2OqwBi" id="2wHo_lFWP4P" role="3cqZAk">
            <node concept="2OqwBi" id="2wHo_lFWP4Q" role="2Oq$k0">
              <node concept="2WthIp" id="2wHo_lFWP4R" role="2Oq$k0" />
              <node concept="3gHZIF" id="2wHo_lFWP4S" role="2OqNvi">
                <ref role="2WH_rO" node="2wHo_lFWP4E" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="2wHo_lFWP4T" role="2OqNvi">
              <node concept="1xMEDy" id="2wHo_lFWP4U" role="1xVPHs">
                <node concept="chp4Y" id="2wHo_lFWP4V" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
              <node concept="1xIGOp" id="5fDsrd1otrS" role="1xVPHs" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="38F6aFumAmX" role="tmbBb">
      <node concept="3clFbS" id="38F6aFumAmY" role="2VODD2">
        <node concept="3clFbF" id="38F6aFumIjw" role="3cqZAp">
          <node concept="3y3z36" id="38F6aFumJhd" role="3clFbG">
            <node concept="10Nm6u" id="38F6aFumJt5" role="3uHU7w" />
            <node concept="2OqwBi" id="38F6aFumID4" role="3uHU7B">
              <node concept="2WthIp" id="38F6aFumIjv" role="2Oq$k0" />
              <node concept="2XshWL" id="38F6aFumJ1o" role="2OqNvi">
                <ref role="2WH_rO" node="2wHo_lFWP4K" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="38F6aFumKaQ">
    <property role="TrG5h" value="Test_HighlightTransitions" />
    <property role="2uzpH1" value="[Test] Highlight Transitions" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="tnohg" id="38F6aFumKaR" role="tncku">
      <node concept="3clFbS" id="38F6aFumKaS" role="2VODD2">
        <node concept="3cpWs8" id="38F6aFunAZs" role="3cqZAp">
          <node concept="3cpWsn" id="38F6aFunAZt" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="QE5KxyF147" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="38F6aFunAZu" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="2OqwBi" id="38F6aFunAZv" role="37wK5m">
                <node concept="2OqwBi" id="38F6aFunAZw" role="2Oq$k0">
                  <node concept="2OqwBi" id="38F6aFunAZx" role="2Oq$k0">
                    <node concept="2OqwBi" id="38F6aFunAZy" role="2Oq$k0">
                      <node concept="2WthIp" id="38F6aFunAZz" role="2Oq$k0" />
                      <node concept="1DTwFV" id="38F6aFunAZ$" role="2OqNvi">
                        <ref role="2WH_rO" node="38F6aFumKb8" resolve="cell" />
                      </node>
                    </node>
                    <node concept="liA8E" id="38F6aFunAZ_" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getContext()" resolve="getContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="38F6aFunAZA" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                  </node>
                </node>
                <node concept="liA8E" id="38F6aFunAZB" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38F6aFunzh1" role="3cqZAp">
          <node concept="3cpWsn" id="38F6aFunzh2" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <node concept="3uibUv" id="6SLp5w3L4af" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~InspectionManager" resolve="InspectionManager" />
            </node>
            <node concept="2YIFZM" id="38F6aFunzh3" role="33vP2m">
              <ref role="1Pybhc" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
              <ref role="37wK5l" to="ek6x:~InspectionManagerImpl.getInstance(jetbrains.mps.openapi.editor.EditorComponent)" resolve="getInstance" />
              <node concept="2OqwBi" id="38F6aFunzh4" role="37wK5m">
                <node concept="2OqwBi" id="38F6aFunzh5" role="2Oq$k0">
                  <node concept="2WthIp" id="38F6aFunzh6" role="2Oq$k0" />
                  <node concept="1DTwFV" id="38F6aFunzh7" role="2OqNvi">
                    <ref role="2WH_rO" node="38F6aFumKb8" resolve="cell" />
                  </node>
                </node>
                <node concept="liA8E" id="38F6aFunzh8" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getEditorComponent()" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38F6aFunOH$" role="3cqZAp">
          <node concept="3cpWsn" id="38F6aFunOH_" role="3cpWs9">
            <property role="TrG5h" value="ecc" />
            <node concept="3uibUv" id="38F6aFunOy$" role="1tU5fm">
              <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
            </node>
            <node concept="2OqwBi" id="38F6aFunOHA" role="33vP2m">
              <node concept="2OqwBi" id="38F6aFunOHB" role="2Oq$k0">
                <node concept="37vLTw" id="38F6aFunOHC" role="2Oq$k0">
                  <ref role="3cqZAo" node="38F6aFunAZt" resolve="repository" />
                </node>
                <node concept="liA8E" id="38F6aFunOHD" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                  <node concept="2OqwBi" id="38F6aFunOHE" role="37wK5m">
                    <node concept="2WthIp" id="38F6aFunOHF" role="2Oq$k0" />
                    <node concept="2XshWL" id="38F6aFunOHG" role="2OqNvi">
                      <ref role="2WH_rO" node="38F6aFumKba" resolve="declaration" />
                    </node>
                  </node>
                  <node concept="3VsKOn" id="38F6aFunOHH" role="37wK5m">
                    <ref role="3VsUkX" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="QE5KxyF2f5" role="2OqNvi">
                <ref role="37wK5l" to="cwd8:~BasicFBTypeDeclaration.getEcc()" resolve="getEcc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38F6aFunN5s" role="3cqZAp">
          <node concept="3cpWsn" id="38F6aFunN5t" role="3cpWs9">
            <property role="TrG5h" value="inspector" />
            <node concept="3uibUv" id="6SLp5w3L4De" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~ECCInspector" resolve="ECCInspector" />
            </node>
            <node concept="2OqwBi" id="38F6aFunN5u" role="33vP2m">
              <node concept="37vLTw" id="38F6aFunN5v" role="2Oq$k0">
                <ref role="3cqZAo" node="38F6aFunzh2" resolve="manager" />
              </node>
              <node concept="liA8E" id="38F6aFunN5w" role="2OqNvi">
                <ref role="37wK5l" to="ek6x:~InspectionManager.installInspector(org.fbme.lib.iec61499.ecc.ECC,java.lang.Runnable)" resolve="installInspector" />
                <node concept="37vLTw" id="38F6aFunOHJ" role="37wK5m">
                  <ref role="3cqZAo" node="38F6aFunOH_" resolve="ecc" />
                </node>
                <node concept="1bVj0M" id="38F6aFunN5C" role="37wK5m">
                  <node concept="3clFbS" id="38F6aFunN5D" role="1bW5cS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38F6aFunWIj" role="3cqZAp">
          <node concept="3clFbS" id="38F6aFunWIl" role="3clFbx">
            <node concept="3cpWs6" id="38F6aFunXtw" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="38F6aFunXa9" role="3clFbw">
            <node concept="10Nm6u" id="38F6aFunXo7" role="3uHU7w" />
            <node concept="37vLTw" id="38F6aFunWTx" role="3uHU7B">
              <ref role="3cqZAo" node="38F6aFunN5t" resolve="inspector" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="38F6aFunP6G" role="3cqZAp">
          <node concept="2GrKxI" id="38F6aFunP6I" role="2Gsz3X">
            <property role="TrG5h" value="transition" />
          </node>
          <node concept="2OqwBi" id="38F6aFunPFR" role="2GsD0m">
            <node concept="37vLTw" id="38F6aFunPpn" role="2Oq$k0">
              <ref role="3cqZAo" node="38F6aFunOH_" resolve="ecc" />
            </node>
            <node concept="liA8E" id="38F6aFunPZr" role="2OqNvi">
              <ref role="37wK5l" to="g136:~ECC.getTransitions()" resolve="getTransitions" />
            </node>
          </node>
          <node concept="3clFbS" id="38F6aFunP6M" role="2LFqv$">
            <node concept="3clFbF" id="38F6aFunVcx" role="3cqZAp">
              <node concept="2OqwBi" id="38F6aFunViq" role="3clFbG">
                <node concept="37vLTw" id="38F6aFunVcw" role="2Oq$k0">
                  <ref role="3cqZAo" node="38F6aFunN5t" resolve="inspector" />
                </node>
                <node concept="liA8E" id="38F6aFunVra" role="2OqNvi">
                  <ref role="37wK5l" to="ek6x:~ECCInspector.highlightTransition(org.fbme.lib.iec61499.ecc.StateTransition,java.awt.Color)" resolve="highlightTransition" />
                  <node concept="2GrUjf" id="38F6aFunVsl" role="37wK5m">
                    <ref role="2Gs0qQ" node="38F6aFunP6I" resolve="transition" />
                  </node>
                  <node concept="10M0yZ" id="38F6aFunVXj" role="37wK5m">
                    <ref role="3cqZAo" to="lzb2:~JBColor.YELLOW" resolve="YELLOW" />
                    <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="38F6aFumKb4" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="38F6aFumKb5" role="1B3o_S" />
      <node concept="1oajcY" id="38F6aFumKb6" role="1oa70y" />
      <node concept="3Tqbb2" id="38F6aFumKb7" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="38F6aFumKb8" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="38F6aFumKb9" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="38F6aFumKba" role="32lrUH">
      <property role="TrG5h" value="declaration" />
      <node concept="3Tm6S6" id="38F6aFumKbb" role="1B3o_S" />
      <node concept="3Tqbb2" id="38F6aFumKbc" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
      <node concept="3clFbS" id="38F6aFumKbd" role="3clF47">
        <node concept="3cpWs6" id="38F6aFumKbe" role="3cqZAp">
          <node concept="2OqwBi" id="38F6aFumKbf" role="3cqZAk">
            <node concept="2OqwBi" id="38F6aFumKbg" role="2Oq$k0">
              <node concept="2WthIp" id="38F6aFumKbh" role="2Oq$k0" />
              <node concept="3gHZIF" id="38F6aFumKbi" role="2OqNvi">
                <ref role="2WH_rO" node="38F6aFumKb4" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="38F6aFumKbj" role="2OqNvi">
              <node concept="1xMEDy" id="38F6aFumKbk" role="1xVPHs">
                <node concept="chp4Y" id="38F6aFunopg" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                </node>
              </node>
              <node concept="1xIGOp" id="38F6aFumKbm" role="1xVPHs" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="38F6aFumKbn" role="tmbBb">
      <node concept="3clFbS" id="38F6aFumKbo" role="2VODD2">
        <node concept="3clFbF" id="38F6aFumKbp" role="3cqZAp">
          <node concept="3y3z36" id="38F6aFumKbq" role="3clFbG">
            <node concept="10Nm6u" id="38F6aFumKbr" role="3uHU7w" />
            <node concept="2OqwBi" id="38F6aFumKbs" role="3uHU7B">
              <node concept="2WthIp" id="38F6aFumKbt" role="2Oq$k0" />
              <node concept="2XshWL" id="38F6aFunoVH" role="2OqNvi">
                <ref role="2WH_rO" node="38F6aFumKba" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="3kxbdDirndI">
    <property role="TrG5h" value="Rich Projection Controllers" />
    <node concept="2BZ0e9" id="3kxbdDirvL8" role="2uRRBG">
      <property role="TrG5h" value="algorithmProjections" />
      <node concept="3Tm6S6" id="3kxbdDirvL9" role="1B3o_S" />
      <node concept="3uibUv" id="3kxbdDirvUE" role="1tU5fm">
        <ref role="3uigEE" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
      </node>
      <node concept="2ShNRf" id="1_XvODPMzse" role="33vP2m">
        <node concept="YeOm9" id="1_XvODPMzsf" role="2ShVmc">
          <node concept="1Y3b0j" id="1_XvODPMzsg" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="1_XvODPMzsh" role="1B3o_S" />
            <node concept="3clFb_" id="1_XvODPMzsi" role="jymVt">
              <property role="TrG5h" value="getId" />
              <node concept="3Tm1VV" id="1_XvODPMzsj" role="1B3o_S" />
              <node concept="3uibUv" id="1_XvODPMzsk" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="1_XvODPMzsl" role="3clF47">
                <node concept="3clFbF" id="1_XvODPMzsm" role="3cqZAp">
                  <node concept="Xl_RD" id="1_XvODPMzsn" role="3clFbG">
                    <property role="Xl_RC" value="Algorithm" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1_XvODPMzso" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="2AHcQZ" id="1_XvODPMzsp" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
            <node concept="2tJIrI" id="1_XvODPMzsq" role="jymVt" />
            <node concept="3clFb_" id="1_XvODPMzsr" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="37vLTG" id="1_XvODPMzss" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1_XvODPMzst" role="1tU5fm" />
                <node concept="2AHcQZ" id="1_XvODPMzsu" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="1_XvODPMzsv" role="1B3o_S" />
              <node concept="10P_77" id="1_XvODPMzsw" role="3clF45" />
              <node concept="3clFbS" id="1_XvODPMzsx" role="3clF47">
                <node concept="3clFbF" id="1_XvODPMzsy" role="3cqZAp">
                  <node concept="2OqwBi" id="1_XvODPMzsz" role="3clFbG">
                    <node concept="37vLTw" id="1_XvODPMzs$" role="2Oq$k0">
                      <ref role="3cqZAo" node="1_XvODPMzss" resolve="node" />
                    </node>
                    <node concept="1mIQ4w" id="1_XvODPMzs_" role="2OqNvi">
                      <node concept="chp4Y" id="1_XvODPMzSB" role="cj9EA">
                        <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1_XvODPMzsB" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="1_XvODPMzsC" role="jymVt" />
            <node concept="3clFb_" id="1_XvODPMzsD" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="1_XvODPMzsE" role="1B3o_S" />
              <node concept="3uibUv" id="1_XvODPMzsF" role="3clF45">
                <ref role="3uigEE" to="8gms:~EditorProjectionController" resolve="EditorProjectionController" />
              </node>
              <node concept="37vLTG" id="1_XvODPMzsG" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="1_XvODPMzsH" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2AHcQZ" id="1_XvODPMzsI" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="1_XvODPMzsJ" role="3clF46">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="1_XvODPMzsK" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                </node>
                <node concept="2AHcQZ" id="1_XvODPMzsL" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="1_XvODPMzsM" role="3clF47">
                <node concept="3clFbF" id="1_XvODPMzsN" role="3cqZAp">
                  <node concept="2ShNRf" id="1_XvODPMzsO" role="3clFbG">
                    <node concept="1pGfFk" id="1_XvODPMzsP" role="2ShVmc">
                      <ref role="37wK5l" to="je9f:~RichAlgorithmsProjectionController.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.project.Project)" resolve="RichAlgorithmsProjectionController" />
                      <node concept="1PxgMI" id="1_XvODPM_4t" role="37wK5m">
                        <node concept="chp4Y" id="1_XvODPM_96" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                        </node>
                        <node concept="37vLTw" id="1_XvODPMzsQ" role="1m5AlR">
                          <ref role="3cqZAo" node="1_XvODPMzsG" resolve="node" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1_XvODPM_Mp" role="37wK5m">
                        <ref role="3cqZAo" node="1_XvODPMzsJ" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1_XvODPMzsX" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="3kxbdDirvVw" role="2uRRBG">
      <property role="TrG5h" value="applicationProjection" />
      <node concept="3Tm6S6" id="3kxbdDirvVx" role="1B3o_S" />
      <node concept="3uibUv" id="3kxbdDirw5M" role="1tU5fm">
        <ref role="3uigEE" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
      </node>
      <node concept="2ShNRf" id="3kxbdDirw5T" role="33vP2m">
        <node concept="YeOm9" id="3kxbdDirw5U" role="2ShVmc">
          <node concept="1Y3b0j" id="3kxbdDirw5V" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
            <node concept="3Tm1VV" id="3kxbdDirw5W" role="1B3o_S" />
            <node concept="3clFb_" id="3kxbdDirw5X" role="jymVt">
              <property role="TrG5h" value="getId" />
              <node concept="3Tm1VV" id="3kxbdDirw5Y" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirw5Z" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="3kxbdDirw60" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirw61" role="3cqZAp">
                  <node concept="Xl_RD" id="3kxbdDirw62" role="3clFbG">
                    <property role="Xl_RC" value="Application" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirw63" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="2AHcQZ" id="3kxbdDirw64" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirw65" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirw66" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="37vLTG" id="3kxbdDirw67" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3kxbdDirw68" role="1tU5fm" />
                <node concept="2AHcQZ" id="3kxbdDirw69" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="3kxbdDirw6a" role="1B3o_S" />
              <node concept="10P_77" id="3kxbdDirw6b" role="3clF45" />
              <node concept="3clFbS" id="3kxbdDirw6c" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirw6d" role="3cqZAp">
                  <node concept="2OqwBi" id="3kxbdDirw6e" role="3clFbG">
                    <node concept="37vLTw" id="3kxbdDirw6f" role="2Oq$k0">
                      <ref role="3cqZAo" node="3kxbdDirw67" resolve="node" />
                    </node>
                    <node concept="1mIQ4w" id="3kxbdDirw6g" role="2OqNvi">
                      <node concept="chp4Y" id="3kxbdDirw6h" role="cj9EA">
                        <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirw6i" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirw6j" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirw6k" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="3kxbdDirw6l" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirw6m" role="3clF45">
                <ref role="3uigEE" to="8gms:~EditorProjectionController" resolve="EditorProjectionController" />
              </node>
              <node concept="37vLTG" id="3kxbdDirw6n" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="3kxbdDirw6o" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2AHcQZ" id="3kxbdDirw6p" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="3kxbdDirw6q" role="3clF46">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="3kxbdDirw6r" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                </node>
                <node concept="2AHcQZ" id="3kxbdDirw6s" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3kxbdDirw6t" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirw6u" role="3cqZAp">
                  <node concept="2ShNRf" id="3kxbdDirw6v" role="3clFbG">
                    <node concept="1pGfFk" id="3kxbdDirw6w" role="2ShVmc">
                      <ref role="37wK5l" to="je9f:~RichApplicationProjectionController.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.project.Project)" resolve="RichApplicationProjectionController" />
                      <node concept="1PxgMI" id="3kxbdDirw6x" role="37wK5m">
                        <node concept="chp4Y" id="3kxbdDirw6y" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                        </node>
                        <node concept="37vLTw" id="3kxbdDirw6z" role="1m5AlR">
                          <ref role="3cqZAo" node="3kxbdDirw6n" resolve="node" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3kxbdDirw6$" role="37wK5m">
                        <ref role="3cqZAo" node="3kxbdDirw6q" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirw6_" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="3kxbdDirwal" role="2uRRBG">
      <property role="TrG5h" value="eccProjections" />
      <node concept="3Tm6S6" id="3kxbdDirwam" role="1B3o_S" />
      <node concept="3uibUv" id="3kxbdDirwan" role="1tU5fm">
        <ref role="3uigEE" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
      </node>
      <node concept="2ShNRf" id="3kxbdDirwrN" role="33vP2m">
        <node concept="YeOm9" id="3kxbdDirwrO" role="2ShVmc">
          <node concept="1Y3b0j" id="3kxbdDirwrP" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="3kxbdDirwrQ" role="1B3o_S" />
            <node concept="3clFb_" id="3kxbdDirwrR" role="jymVt">
              <property role="TrG5h" value="getId" />
              <node concept="3Tm1VV" id="3kxbdDirwrS" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirwrT" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="3kxbdDirwrU" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirwrV" role="3cqZAp">
                  <node concept="Xl_RD" id="3kxbdDirwrW" role="3clFbG">
                    <property role="Xl_RC" value="ECC" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwrX" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwrY" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirwrZ" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirws0" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="37vLTG" id="3kxbdDirws1" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3kxbdDirws2" role="1tU5fm" />
                <node concept="2AHcQZ" id="3kxbdDirws3" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="3kxbdDirws4" role="1B3o_S" />
              <node concept="10P_77" id="3kxbdDirws5" role="3clF45" />
              <node concept="3clFbS" id="3kxbdDirws6" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirws7" role="3cqZAp">
                  <node concept="2OqwBi" id="3kxbdDirws8" role="3clFbG">
                    <node concept="37vLTw" id="3kxbdDirws9" role="2Oq$k0">
                      <ref role="3cqZAo" node="3kxbdDirws1" resolve="node" />
                    </node>
                    <node concept="1mIQ4w" id="3kxbdDirwsa" role="2OqNvi">
                      <node concept="chp4Y" id="3kxbdDirwsb" role="cj9EA">
                        <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwsc" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirwsd" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirwse" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="3kxbdDirwsf" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirwsg" role="3clF45">
                <ref role="3uigEE" to="8gms:~EditorProjectionController" resolve="EditorProjectionController" />
              </node>
              <node concept="37vLTG" id="3kxbdDirwsh" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3kxbdDirwsi" role="1tU5fm" />
                <node concept="2AHcQZ" id="3kxbdDirwsj" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="3kxbdDirwsk" role="3clF46">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="3kxbdDirwsl" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                </node>
                <node concept="2AHcQZ" id="3kxbdDirwsm" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3kxbdDirwsn" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirwso" role="3cqZAp">
                  <node concept="2ShNRf" id="3kxbdDirwsp" role="3clFbG">
                    <node concept="1pGfFk" id="3kxbdDirwsq" role="2ShVmc">
                      <ref role="37wK5l" to="8gms:~SimpleEditorProjectionController.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,jetbrains.mps.project.Project,java.lang.String[],boolean)" resolve="SimpleEditorProjectionController" />
                      <node concept="37vLTw" id="3kxbdDirwsr" role="37wK5m">
                        <ref role="3cqZAo" node="3kxbdDirwsh" resolve="node" />
                      </node>
                      <node concept="Xl_RD" id="3kxbdDirwss" role="37wK5m">
                        <property role="Xl_RC" value="ECC" />
                      </node>
                      <node concept="37vLTw" id="4WS_6wCCYvo" role="37wK5m">
                        <ref role="3cqZAo" node="3kxbdDirwsk" resolve="project" />
                      </node>
                      <node concept="2ShNRf" id="3kxbdDirwst" role="37wK5m">
                        <node concept="3g6Rrh" id="3kxbdDirwsu" role="2ShVmc">
                          <node concept="17QB3L" id="3kxbdDirwsv" role="3g7fb8" />
                          <node concept="2pYGij" id="3kxbdDirwsw" role="3g7hyw">
                            <ref role="2pYH_C" to="78d5:1_XvODPJG7s" resolve="ecc" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="3kxbdDirwsx" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwsy" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="3kxbdDirwe5" role="2uRRBG">
      <property role="TrG5h" value="interfaceProjections" />
      <node concept="3Tm6S6" id="3kxbdDirwe6" role="1B3o_S" />
      <node concept="3uibUv" id="3kxbdDirwe7" role="1tU5fm">
        <ref role="3uigEE" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
      </node>
      <node concept="2ShNRf" id="7Y8B9wpl4BU" role="33vP2m">
        <node concept="YeOm9" id="7Y8B9wpl4BV" role="2ShVmc">
          <node concept="1Y3b0j" id="7Y8B9wpl4BW" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="7Y8B9wpl4BX" role="1B3o_S" />
            <node concept="3clFb_" id="7Y8B9wpl4BY" role="jymVt">
              <property role="TrG5h" value="getId" />
              <node concept="3Tm1VV" id="7Y8B9wpl4BZ" role="1B3o_S" />
              <node concept="3uibUv" id="7Y8B9wpl4C0" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7Y8B9wpl4C1" role="3clF47">
                <node concept="3clFbF" id="7Y8B9wpl4C2" role="3cqZAp">
                  <node concept="Xl_RD" id="7Y8B9wpl4C3" role="3clFbG">
                    <property role="Xl_RC" value="Interface" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7Y8B9wpl4C4" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="2AHcQZ" id="7Y8B9wpmUah" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
            <node concept="2tJIrI" id="1kUX9T6kOz8" role="jymVt" />
            <node concept="3clFb_" id="1kUX9T6kODh" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="37vLTG" id="1kUX9T6kODi" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1kUX9T6kPwm" role="1tU5fm" />
                <node concept="2AHcQZ" id="1kUX9T6kODk" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="1kUX9T6kODm" role="1B3o_S" />
              <node concept="10P_77" id="1kUX9T6kODn" role="3clF45" />
              <node concept="3clFbS" id="1kUX9T6kODp" role="3clF47">
                <node concept="3clFbF" id="1kUX9T6kP1T" role="3cqZAp">
                  <node concept="2OqwBi" id="1kUX9T6kQ4D" role="3clFbG">
                    <node concept="37vLTw" id="1kUX9T6kP1S" role="2Oq$k0">
                      <ref role="3cqZAo" node="1kUX9T6kODi" resolve="node" />
                    </node>
                    <node concept="1mIQ4w" id="1kUX9T6kQbq" role="2OqNvi">
                      <node concept="chp4Y" id="1kUX9T6kQgX" role="cj9EA">
                        <ref role="cht4Q" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1kUX9T6kODq" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="4dM3MZ7o9T4" role="jymVt" />
            <node concept="3clFb_" id="7Y8B9wpl4C6" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="7Y8B9wpl4C7" role="1B3o_S" />
              <node concept="3uibUv" id="7Y8B9wpl4C8" role="3clF45">
                <ref role="3uigEE" to="8gms:~EditorProjectionController" resolve="EditorProjectionController" />
              </node>
              <node concept="37vLTG" id="7Y8B9wpl4C9" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="7Y8B9wpl4Ca" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2AHcQZ" id="7Y8B9wpl4Cb" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="1vJkp1TW6YK" role="3clF46">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="1vJkp1TW77Z" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                </node>
                <node concept="2AHcQZ" id="1vJkp1TW7ap" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="7Y8B9wpl4Cc" role="3clF47">
                <node concept="3clFbF" id="7Y8B9wpl4Jg" role="3cqZAp">
                  <node concept="2ShNRf" id="7Y8B9wpl4Ja" role="3clFbG">
                    <node concept="1pGfFk" id="1QSEqLhAMsC" role="2ShVmc">
                      <ref role="37wK5l" to="8gms:~SimpleEditorProjectionController.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,jetbrains.mps.project.Project,java.lang.String[],boolean)" resolve="SimpleEditorProjectionController" />
                      <node concept="37vLTw" id="1QSEqLhAMsB" role="37wK5m">
                        <ref role="3cqZAo" node="7Y8B9wpl4C9" resolve="node" />
                      </node>
                      <node concept="Xl_RD" id="7ii99HMo8NG" role="37wK5m">
                        <property role="Xl_RC" value="Interface" />
                      </node>
                      <node concept="37vLTw" id="4WS_6wCCYzX" role="37wK5m">
                        <ref role="3cqZAo" node="1vJkp1TW6YK" resolve="project" />
                      </node>
                      <node concept="2ShNRf" id="7ii99HMo98D" role="37wK5m">
                        <node concept="3g6Rrh" id="7ii99HMoadN" role="2ShVmc">
                          <node concept="17QB3L" id="7ii99HMo9Px" role="3g7fb8" />
                          <node concept="2pYGij" id="7ii99HMoaxY" role="3g7hyw">
                            <ref role="2pYH_C" to="78d5:1kUX9T6j1Ql" resolve="interface" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="7ii99HMp1gQ" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7Y8B9wpl4Cf" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="3kxbdDirwi_" role="2uRRBG">
      <property role="TrG5h" value="networkProjections" />
      <node concept="3Tm6S6" id="3kxbdDirwiA" role="1B3o_S" />
      <node concept="3uibUv" id="3kxbdDirwiB" role="1tU5fm">
        <ref role="3uigEE" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
      </node>
      <node concept="2ShNRf" id="3kxbdDirw$y" role="33vP2m">
        <node concept="YeOm9" id="3kxbdDirw$z" role="2ShVmc">
          <node concept="1Y3b0j" id="3kxbdDirw$$" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
            <node concept="3Tm1VV" id="3kxbdDirw$_" role="1B3o_S" />
            <node concept="3clFb_" id="3kxbdDirw$A" role="jymVt">
              <property role="TrG5h" value="getId" />
              <node concept="3Tm1VV" id="3kxbdDirw$B" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirw$C" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="3kxbdDirw$D" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirw$E" role="3cqZAp">
                  <node concept="Xl_RD" id="3kxbdDirw$F" role="3clFbG">
                    <property role="Xl_RC" value="Network" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirw$G" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="2AHcQZ" id="3kxbdDirw$H" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirw$I" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirw$J" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="37vLTG" id="3kxbdDirw$K" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3kxbdDirw$L" role="1tU5fm" />
                <node concept="2AHcQZ" id="3kxbdDirw$M" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="3kxbdDirw$N" role="1B3o_S" />
              <node concept="10P_77" id="3kxbdDirw$O" role="3clF45" />
              <node concept="3clFbS" id="3kxbdDirw$P" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirw$Q" role="3cqZAp">
                  <node concept="2OqwBi" id="3kxbdDirw$R" role="3clFbG">
                    <node concept="37vLTw" id="3kxbdDirw$S" role="2Oq$k0">
                      <ref role="3cqZAo" node="3kxbdDirw$K" resolve="node" />
                    </node>
                    <node concept="1mIQ4w" id="3kxbdDirw$T" role="2OqNvi">
                      <node concept="chp4Y" id="3kxbdDirw$U" role="cj9EA">
                        <ref role="cht4Q" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirw$V" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirw$W" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirw$X" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="3kxbdDirw$Y" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirw$Z" role="3clF45">
                <ref role="3uigEE" to="8gms:~EditorProjectionController" resolve="EditorProjectionController" />
              </node>
              <node concept="37vLTG" id="3kxbdDirw_0" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3kxbdDirw_1" role="1tU5fm" />
                <node concept="2AHcQZ" id="3kxbdDirw_2" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="3kxbdDirw_3" role="3clF46">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="3kxbdDirw_4" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                </node>
                <node concept="2AHcQZ" id="3kxbdDirw_5" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3kxbdDirw_6" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirw_7" role="3cqZAp">
                  <node concept="2ShNRf" id="3kxbdDirw_8" role="3clFbG">
                    <node concept="1pGfFk" id="3kxbdDirw_9" role="2ShVmc">
                      <ref role="37wK5l" to="je9f:~RichNetworkProjectionController.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.project.Project)" resolve="RichNetworkProjectionController" />
                      <node concept="37vLTw" id="3kxbdDirw_a" role="37wK5m">
                        <ref role="3cqZAo" node="3kxbdDirw_0" resolve="node" />
                      </node>
                      <node concept="37vLTw" id="3kxbdDirw_b" role="37wK5m">
                        <ref role="3cqZAo" node="3kxbdDirw_3" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirw_c" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="3kxbdDirwkk" role="2uRRBG">
      <property role="TrG5h" value="resourceProjections" />
      <node concept="3Tm6S6" id="3kxbdDirwkl" role="1B3o_S" />
      <node concept="3uibUv" id="3kxbdDirwkm" role="1tU5fm">
        <ref role="3uigEE" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
      </node>
      <node concept="2ShNRf" id="3kxbdDirwA0" role="33vP2m">
        <node concept="YeOm9" id="3kxbdDirwA1" role="2ShVmc">
          <node concept="1Y3b0j" id="3kxbdDirwA2" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
            <node concept="3Tm1VV" id="3kxbdDirwA3" role="1B3o_S" />
            <node concept="3clFb_" id="3kxbdDirwA4" role="jymVt">
              <property role="TrG5h" value="getId" />
              <node concept="3Tm1VV" id="3kxbdDirwA5" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirwA6" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="3kxbdDirwA7" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirwA8" role="3cqZAp">
                  <node concept="Xl_RD" id="3kxbdDirwA9" role="3clFbG">
                    <property role="Xl_RC" value="Resource" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwAa" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwAb" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirwAc" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirwAd" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="37vLTG" id="3kxbdDirwAe" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3kxbdDirwAf" role="1tU5fm" />
                <node concept="2AHcQZ" id="3kxbdDirwAg" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="3kxbdDirwAh" role="1B3o_S" />
              <node concept="10P_77" id="3kxbdDirwAi" role="3clF45" />
              <node concept="3clFbS" id="3kxbdDirwAj" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirwAk" role="3cqZAp">
                  <node concept="2OqwBi" id="3kxbdDirwAl" role="3clFbG">
                    <node concept="37vLTw" id="3kxbdDirwAm" role="2Oq$k0">
                      <ref role="3cqZAo" node="3kxbdDirwAe" resolve="node" />
                    </node>
                    <node concept="1mIQ4w" id="3kxbdDirwAn" role="2OqNvi">
                      <node concept="chp4Y" id="3kxbdDirwAo" role="cj9EA">
                        <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwAp" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirwAq" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirwAr" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="3kxbdDirwAs" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirwAt" role="3clF45">
                <ref role="3uigEE" to="8gms:~EditorProjectionController" resolve="EditorProjectionController" />
              </node>
              <node concept="37vLTG" id="3kxbdDirwAu" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="3kxbdDirwAv" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2AHcQZ" id="3kxbdDirwAw" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="3kxbdDirwAx" role="3clF46">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="3kxbdDirwAy" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                </node>
                <node concept="2AHcQZ" id="3kxbdDirwAz" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3kxbdDirwA$" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirwA_" role="3cqZAp">
                  <node concept="2ShNRf" id="3kxbdDirwAA" role="3clFbG">
                    <node concept="1pGfFk" id="3kxbdDirwAB" role="2ShVmc">
                      <ref role="37wK5l" to="je9f:~RichResourceProjectionController.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.project.Project)" resolve="RichResourceProjectionController" />
                      <node concept="1PxgMI" id="3kxbdDirwAC" role="37wK5m">
                        <node concept="chp4Y" id="3kxbdDirwAD" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                        </node>
                        <node concept="37vLTw" id="3kxbdDirwAE" role="1m5AlR">
                          <ref role="3cqZAo" node="3kxbdDirwAu" resolve="node" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3kxbdDirwAF" role="37wK5m">
                        <ref role="3cqZAo" node="3kxbdDirwAx" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwAG" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="3kxbdDirwm6" role="2uRRBG">
      <property role="TrG5h" value="systemOverviewProjections" />
      <node concept="3Tm6S6" id="3kxbdDirwm7" role="1B3o_S" />
      <node concept="3uibUv" id="3kxbdDirwm8" role="1tU5fm">
        <ref role="3uigEE" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
      </node>
      <node concept="2ShNRf" id="3kxbdDirwFj" role="33vP2m">
        <node concept="YeOm9" id="3kxbdDirwFk" role="2ShVmc">
          <node concept="1Y3b0j" id="3kxbdDirwFl" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
            <node concept="3Tm1VV" id="3kxbdDirwFm" role="1B3o_S" />
            <node concept="3clFb_" id="3kxbdDirwFn" role="jymVt">
              <property role="TrG5h" value="getId" />
              <node concept="3Tm1VV" id="3kxbdDirwFo" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirwFp" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="3kxbdDirwFq" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirwFr" role="3cqZAp">
                  <node concept="Xl_RD" id="3kxbdDirwFs" role="3clFbG">
                    <property role="Xl_RC" value="Overview" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwFt" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwFu" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirwFv" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirwFw" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="37vLTG" id="3kxbdDirwFx" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3kxbdDirwFy" role="1tU5fm" />
                <node concept="2AHcQZ" id="3kxbdDirwFz" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="3kxbdDirwF$" role="1B3o_S" />
              <node concept="10P_77" id="3kxbdDirwF_" role="3clF45" />
              <node concept="3clFbS" id="3kxbdDirwFA" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirwFB" role="3cqZAp">
                  <node concept="2OqwBi" id="3kxbdDirwFC" role="3clFbG">
                    <node concept="37vLTw" id="3kxbdDirwFD" role="2Oq$k0">
                      <ref role="3cqZAo" node="3kxbdDirwFx" resolve="node" />
                    </node>
                    <node concept="1mIQ4w" id="3kxbdDirwFE" role="2OqNvi">
                      <node concept="chp4Y" id="3kxbdDirwFF" role="cj9EA">
                        <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwFG" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3kxbdDirwFH" role="jymVt" />
            <node concept="3clFb_" id="3kxbdDirwFI" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="3kxbdDirwFJ" role="1B3o_S" />
              <node concept="3uibUv" id="3kxbdDirwFK" role="3clF45">
                <ref role="3uigEE" to="8gms:~EditorProjectionController" resolve="EditorProjectionController" />
              </node>
              <node concept="37vLTG" id="3kxbdDirwFL" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="3kxbdDirwFM" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2AHcQZ" id="3kxbdDirwFN" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="3kxbdDirwFO" role="3clF46">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="3kxbdDirwFP" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                </node>
                <node concept="2AHcQZ" id="3kxbdDirwFQ" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3kxbdDirwFR" role="3clF47">
                <node concept="3clFbF" id="3kxbdDirwFS" role="3cqZAp">
                  <node concept="2ShNRf" id="3kxbdDirwFT" role="3clFbG">
                    <node concept="1pGfFk" id="3kxbdDirwFU" role="2ShVmc">
                      <ref role="37wK5l" to="8gms:~SimpleEditorProjectionController.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,jetbrains.mps.project.Project,java.lang.String[],boolean)" resolve="SimpleEditorProjectionController" />
                      <node concept="37vLTw" id="3kxbdDirwFV" role="37wK5m">
                        <ref role="3cqZAo" node="3kxbdDirwFL" resolve="node" />
                      </node>
                      <node concept="Xl_RD" id="3kxbdDirwFW" role="37wK5m">
                        <property role="Xl_RC" value="Overview" />
                      </node>
                      <node concept="37vLTw" id="4WS_6wCCYCk" role="37wK5m">
                        <ref role="3cqZAo" node="3kxbdDirwFO" resolve="project" />
                      </node>
                      <node concept="2ShNRf" id="3kxbdDirwFX" role="37wK5m">
                        <node concept="3g6Rrh" id="3kxbdDirwFY" role="2ShVmc">
                          <node concept="17QB3L" id="3kxbdDirwFZ" role="3g7fb8" />
                          <node concept="2pYGij" id="3kxbdDirwG0" role="3g7hyw">
                            <ref role="2pYH_C" to="78d5:1kUX9T6j1Ql" resolve="interface" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="3kxbdDirwG1" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3kxbdDirwG2" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBj" id="3kxbdDirwGN" role="2uRRBE">
      <node concept="3clFbS" id="3kxbdDirwGO" role="2VODD2">
        <node concept="3cpWs8" id="3kxbdDirz0V" role="3cqZAp">
          <node concept="3cpWsn" id="3kxbdDirz0W" role="3cpWs9">
            <property role="TrG5h" value="registry" />
            <node concept="3uibUv" id="3kxbdDirz0U" role="1tU5fm">
              <ref role="3uigEE" to="8gms:~EditorProjectionControllerRegistry" resolve="EditorProjectionControllerRegistry" />
            </node>
            <node concept="2YIFZM" id="3kxbdDirz0X" role="33vP2m">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="8gms:~EditorProjectionControllerRegistry" resolve="EditorProjectionControllerRegistry" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDirynh" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDirz8q" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDirz0Y" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDirz0W" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDirzgE" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.register(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="register" />
              <node concept="2OqwBi" id="3kxbdDirzh7" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDirzha" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDirzhc" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirvL8" resolve="algorithmProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDirzhC" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDirzhD" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDirzhE" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDirz0W" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDirzhF" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.register(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="register" />
              <node concept="2OqwBi" id="3kxbdDirzhG" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDirzhH" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDirzuP" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirvVw" resolve="applicationProjection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDirzuT" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDirzuU" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDirzuV" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDirz0W" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDirzuW" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.register(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="register" />
              <node concept="2OqwBi" id="3kxbdDirzuX" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDirzuY" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDirzzV" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwal" resolve="eccProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDirzA3" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDirzA4" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDirzA5" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDirz0W" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDirzA6" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.register(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="register" />
              <node concept="2OqwBi" id="3kxbdDirzA7" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDirzA8" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDirzFu" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwe5" resolve="interfaceProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDirzFy" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDirzFz" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDirzF$" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDirz0W" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDirzF_" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.register(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="register" />
              <node concept="2OqwBi" id="3kxbdDirzFA" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDirzFB" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDirzK5" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwi_" resolve="networkProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDirzKn" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDirzKo" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDirzKp" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDirz0W" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDirzKq" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.register(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="register" />
              <node concept="2OqwBi" id="3kxbdDirzKr" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDirzKs" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDirzXE" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwkk" resolve="resourceProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDirzXI" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDirzXJ" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDirzXK" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDirz0W" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDirzXL" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.register(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="register" />
              <node concept="2OqwBi" id="3kxbdDirzXM" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDirzXN" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDir$3d" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwm6" resolve="systemOverviewProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="3kxbdDir$6o" role="2uRRBF">
      <node concept="3clFbS" id="3kxbdDir$6p" role="2VODD2">
        <node concept="3cpWs8" id="3kxbdDir$6u" role="3cqZAp">
          <node concept="3cpWsn" id="3kxbdDir$6v" role="3cpWs9">
            <property role="TrG5h" value="registry" />
            <node concept="3uibUv" id="3kxbdDir$6w" role="1tU5fm">
              <ref role="3uigEE" to="8gms:~EditorProjectionControllerRegistry" resolve="EditorProjectionControllerRegistry" />
            </node>
            <node concept="2YIFZM" id="3kxbdDir$6x" role="33vP2m">
              <ref role="1Pybhc" to="8gms:~EditorProjectionControllerRegistry" resolve="EditorProjectionControllerRegistry" />
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.getInstance()" resolve="getInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDir$6y" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDir$6z" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDir$6$" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDir$6v" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDir$6_" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.unregister(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="unregister" />
              <node concept="2OqwBi" id="3kxbdDir$6A" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDir$6B" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDir$6C" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirvL8" resolve="algorithmProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDir$6D" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDir$6E" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDir$6F" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDir$6v" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDir$6G" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.unregister(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="unregister" />
              <node concept="2OqwBi" id="3kxbdDir$6H" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDir$6I" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDir$6J" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirvVw" resolve="applicationProjection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDir$6K" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDir$6L" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDir$6M" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDir$6v" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDir$6N" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.unregister(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="unregister" />
              <node concept="2OqwBi" id="3kxbdDir$6O" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDir$6P" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDir$6Q" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwal" resolve="eccProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDir$6R" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDir$6S" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDir$6T" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDir$6v" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDir$6U" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.unregister(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="unregister" />
              <node concept="2OqwBi" id="3kxbdDir$6V" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDir$6W" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDir$6X" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwe5" resolve="interfaceProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDir$6Y" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDir$6Z" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDir$70" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDir$6v" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDir$71" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.unregister(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="unregister" />
              <node concept="2OqwBi" id="3kxbdDir$72" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDir$73" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDir$74" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwi_" resolve="networkProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDir$75" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDir$76" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDir$77" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDir$6v" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDir$78" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.unregister(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="unregister" />
              <node concept="2OqwBi" id="3kxbdDir$79" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDir$7a" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDir$7b" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwkk" resolve="resourceProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3kxbdDir$7c" role="3cqZAp">
          <node concept="2OqwBi" id="3kxbdDir$7d" role="3clFbG">
            <node concept="37vLTw" id="3kxbdDir$7e" role="2Oq$k0">
              <ref role="3cqZAo" node="3kxbdDir$6v" resolve="registry" />
            </node>
            <node concept="liA8E" id="3kxbdDir$7f" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.unregister(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="unregister" />
              <node concept="2OqwBi" id="3kxbdDir$7g" role="37wK5m">
                <node concept="2WthIp" id="3kxbdDir$7h" role="2Oq$k0" />
                <node concept="2BZ7hE" id="3kxbdDir$7i" role="2OqNvi">
                  <ref role="2WH_rO" node="3kxbdDirwm6" resolve="systemOverviewProjections" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
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
      <property role="TrG5h" value="provideStateDeclarationCell" />
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
                <node concept="1PxgMI" id="2k00pzqB2Qa" role="2CJshu">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="2k00pzqB2Vi" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
                  </node>
                  <node concept="37vLTw" id="2k00pzqB22A" role="1m5AlR">
                    <ref role="3cqZAo" node="2k00pzqAL0i" resolve="node" />
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
    <node concept="3uibUv" id="2k00pzqAtW2" role="1zkMxy">
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
  <node concept="sE7Ow" id="5IF$9ECWQWX">
    <property role="TrG5h" value="Relayout" />
    <property role="2uzpH1" value="Relayout" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="5IF$9ECXGXB" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5IF$9ECXGXC" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5IF$9ECWQWY" role="tncku">
      <node concept="3clFbS" id="5IF$9ECWQWZ" role="2VODD2">
        <node concept="3clFbF" id="7s8ro$mQ5WY" role="3cqZAp">
          <node concept="2OqwBi" id="7s8ro$mQ7zQ" role="3clFbG">
            <node concept="2ShNRf" id="7s8ro$mQ5WW" role="2Oq$k0">
              <node concept="1pGfFk" id="7s8ro$mQ6Rc" role="2ShVmc">
                <ref role="37wK5l" to="mrrx:~RelayoutAction.&lt;init&gt;(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="RelayoutAction" />
                <node concept="2OqwBi" id="7s8ro$mQ79Q" role="37wK5m">
                  <node concept="2WthIp" id="7s8ro$mQ6RK" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7s8ro$mQ7tH" role="2OqNvi">
                    <ref role="2WH_rO" node="5IF$9ECXGXB" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7s8ro$mQ7GZ" role="2OqNvi">
              <ref role="37wK5l" to="mrrx:~RelayoutAction.apply()" resolve="apply" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="4qZmOK$LL_l">
    <property role="TrG5h" value="Expand" />
    <property role="2uzpH1" value="Expand" />
    <node concept="1DS2jV" id="4qZmOK$M3aS" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="4qZmOK$M3aT" role="1oa70y" />
    </node>
    <node concept="tnohg" id="4qZmOK$LL_m" role="tncku">
      <node concept="3clFbS" id="4qZmOK$LL_n" role="2VODD2">
        <node concept="3clFbF" id="7s8ro$mQ3vL" role="3cqZAp">
          <node concept="2OqwBi" id="7s8ro$mQ5Df" role="3clFbG">
            <node concept="2ShNRf" id="7s8ro$mQ3vJ" role="2Oq$k0">
              <node concept="1pGfFk" id="7s8ro$mQ4QU" role="2ShVmc">
                <ref role="37wK5l" to="mrrx:~ExpandAction.&lt;init&gt;(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="ExpandAction" />
                <node concept="2OqwBi" id="7s8ro$mQ59$" role="37wK5m">
                  <node concept="2WthIp" id="7s8ro$mQ4Ru" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7s8ro$mQ5u8" role="2OqNvi">
                    <ref role="2WH_rO" node="4qZmOK$M3aS" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7s8ro$mQ5QJ" role="2OqNvi">
              <ref role="37wK5l" to="mrrx:~ExpandAction.apply()" resolve="apply" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="4qZmOK$MA52">
    <property role="TrG5h" value="Collapse" />
    <property role="2uzpH1" value="Collapse" />
    <node concept="1DS2jV" id="4qZmOK$MA5o" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="4qZmOK$MA5p" role="1oa70y" />
    </node>
    <node concept="tnohg" id="4qZmOK$MA53" role="tncku">
      <node concept="3clFbS" id="4qZmOK$MA54" role="2VODD2">
        <node concept="3clFbF" id="7s8ro$mPNth" role="3cqZAp">
          <node concept="2OqwBi" id="7s8ro$mQ3c2" role="3clFbG">
            <node concept="2ShNRf" id="7s8ro$mPNtf" role="2Oq$k0">
              <node concept="1pGfFk" id="7s8ro$mQ2qX" role="2ShVmc">
                <ref role="37wK5l" to="mrrx:~CollapseAction.&lt;init&gt;(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="CollapseAction" />
                <node concept="2OqwBi" id="7s8ro$mQ2HN" role="37wK5m">
                  <node concept="2WthIp" id="7s8ro$mQ2rH" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7s8ro$mQ32Z" role="2OqNvi">
                    <ref role="2WH_rO" node="4qZmOK$MA5o" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7s8ro$mQ3py" role="2OqNvi">
              <ref role="37wK5l" to="mrrx:~CollapseAction.apply()" resolve="apply" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

