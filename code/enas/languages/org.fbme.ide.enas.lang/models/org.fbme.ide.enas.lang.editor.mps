<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6e7c7888-61ca-464a-9929-044e08b83ea3(org.fbme.ide.enas.lang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="sqhf" ref="r:89e73cce-0f43-4b7b-8b73-c16261d7ddc4(org.fbme.ide.enas.lang.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="6z_cCa8jq9z">
    <ref role="1XX52x" to="sqhf:6z_cCa8jnyk" resolve="EnasSystem" />
    <node concept="3EZMnI" id="6z_cCa8jq9_" role="2wV5jI">
      <node concept="3EZMnI" id="6z_cCa8jq9G" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8jq9I" role="3F10Kt" />
        <node concept="PMmxH" id="6z_cCa8jq9Q" role="3EZMnx">
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        </node>
        <node concept="3F0A7n" id="6z_cCa8jq9V" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8jq9L" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jq9Z" role="3EZMnx" />
      <node concept="3F0ifn" id="6z_cCa8jqaJ" role="3EZMnx">
        <property role="3F0ifm" value="Components:" />
      </node>
      <node concept="3EZMnI" id="6z_cCa8jqae" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8jqag" role="3F10Kt" />
        <node concept="3XFhqQ" id="6z_cCa8jqau" role="3EZMnx" />
        <node concept="3F2HdR" id="6z_cCa8jqb3" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8jn$G" resolve="components" />
          <node concept="2iRkQZ" id="6z_cCa8jqb9" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8jqaj" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jqbc" role="3EZMnx" />
      <node concept="3F0ifn" id="6z_cCa8jqbr" role="3EZMnx">
        <property role="3F0ifm" value="Points:" />
      </node>
      <node concept="3EZMnI" id="6z_cCa8jqbW" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8jqbX" role="3F10Kt" />
        <node concept="3XFhqQ" id="6z_cCa8jqbY" role="3EZMnx" />
        <node concept="3F2HdR" id="6z_cCa8jqbZ" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8jn$K" resolve="points" />
          <node concept="2iRkQZ" id="6z_cCa8jqc0" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8jqc1" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jqbF" role="3EZMnx" />
      <node concept="3F0ifn" id="6z_cCa8muX9" role="3EZMnx">
        <property role="3F0ifm" value="Configurations:" />
      </node>
      <node concept="3EZMnI" id="6z_cCa8muYa" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8muYb" role="3F10Kt" />
        <node concept="3XFhqQ" id="6z_cCa8muYc" role="3EZMnx" />
        <node concept="3F2HdR" id="6z_cCa8muYd" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8muZr" resolve="configurations" />
          <node concept="2iRkQZ" id="6z_cCa8muYe" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8muYf" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8muWE" role="3EZMnx" />
      <node concept="3F0ifn" id="6z_cCa8jqco" role="3EZMnx">
        <property role="3F0ifm" value="Receipts:" />
      </node>
      <node concept="3EZMnI" id="6z_cCa8jqd9" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8jqda" role="3F10Kt" />
        <node concept="3XFhqQ" id="6z_cCa8jqdb" role="3EZMnx" />
        <node concept="3F2HdR" id="6z_cCa8jqdc" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8jn$P" resolve="receipts" />
          <node concept="2iRkQZ" id="6z_cCa8jqdd" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8jqde" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="6z_cCa8jq9C" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqeL">
    <property role="3GE5qa" value="points" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jqec" resolve="PointDeclaration" />
    <node concept="3EZMnI" id="6z_cCa8jqeN" role="2wV5jI">
      <node concept="3F0A7n" id="6z_cCa8jqeX" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jqf3" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="6z_cCa8jqfb" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jqef" resolve="decsriptor" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqeQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqfH">
    <property role="3GE5qa" value="points" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jn$O" resolve="SectionDeliveryPoint" />
    <node concept="3EZMnI" id="6z_cCa8jqfJ" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8jqfQ" role="3EZMnx">
        <property role="3F0ifm" value="delivery of" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8jqfW" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jqek" resolve="section" />
        <node concept="1sVBvm" id="6z_cCa8jqfY" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8jqgf" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqfM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqgH">
    <property role="3GE5qa" value="points" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jqeh" resolve="SectionStartPoint" />
    <node concept="3EZMnI" id="6z_cCa8jqgJ" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8jqgQ" role="3EZMnx">
        <property role="3F0ifm" value="start of" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8jqgW" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jqei" resolve="section" />
        <node concept="1sVBvm" id="6z_cCa8jqgY" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8jqh6" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqgM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqh$">
    <property role="3GE5qa" value="components" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnyK" resolve="ConfigurableStand" />
    <node concept="3EZMnI" id="6z_cCa8jqhA" role="2wV5jI">
      <node concept="3EZMnI" id="6z_cCa8jqhO" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8jqhQ" role="3F10Kt" />
        <node concept="3F0ifn" id="6z_cCa8jqhH" role="3EZMnx">
          <property role="3F0ifm" value="configurable stand" />
        </node>
        <node concept="3F0A7n" id="6z_cCa8jqi0" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8jqhT" role="2iSdaV" />
        <node concept="3F0ifn" id="6z_cCa8jqi8" role="3EZMnx">
          <property role="3F0ifm" value="with positions:" />
        </node>
      </node>
      <node concept="3EZMnI" id="6z_cCa8jqil" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8jqin" role="3F10Kt" />
        <node concept="3XFhqQ" id="6z_cCa8jqi_" role="3EZMnx" />
        <node concept="3F2HdR" id="6z_cCa8jqiF" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8jnyN" resolve="positions" />
          <node concept="2iRkQZ" id="6z_cCa8jqiL" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8jqiq" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="6z_cCa8jqhD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqjf">
    <property role="3GE5qa" value="components" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnym" resolve="StandartSection" />
    <node concept="3EZMnI" id="6z_cCa8jqjh" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8jqjo" role="3EZMnx">
        <property role="3F0ifm" value="standart section" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8jqju" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jqjA" role="3EZMnx">
        <property role="3F0ifm" value="at" />
      </node>
      <node concept="3F1sOY" id="6z_cCa8jqjK" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnz0" resolve="position" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqjk" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqkh">
    <property role="3GE5qa" value="components" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jn$d" resolve="SectionGate" />
    <node concept="3EZMnI" id="6z_cCa8jqkj" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8jqkq" role="3EZMnx">
        <property role="3F0ifm" value="section gate" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8jqkw" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8me_0" role="3EZMnx">
        <property role="3F0ifm" value="on" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8lYgR" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8lYgP" resolve="side" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8me_k" role="3EZMnx">
        <property role="3F0ifm" value="side of" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8lYhd" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8lYgF" resolve="section" />
        <node concept="1sVBvm" id="6z_cCa8lYhf" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8lYhq" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqkm" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqlo">
    <property role="3GE5qa" value="components" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnz2" resolve="JackStation" />
    <node concept="3EZMnI" id="6z_cCa8jqly" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8jql$" role="3EZMnx">
        <property role="3F0ifm" value="jack station" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8jqlG" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jqlO" role="3EZMnx">
        <property role="3F0ifm" value="at" />
      </node>
      <node concept="3F1sOY" id="6z_cCa8jqlY" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnz0" resolve="position" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jql_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqmv">
    <property role="3GE5qa" value="components" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jn$e" resolve="Camera" />
    <node concept="3EZMnI" id="6z_cCa8jqmx" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8jqmC" role="3EZMnx">
        <property role="3F0ifm" value="camera" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8jqmM" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jqmU" role="3EZMnx">
        <property role="3F0ifm" value="at" />
      </node>
      <node concept="3F1sOY" id="6z_cCa8jqn4" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnz0" resolve="position" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqm$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqo0">
    <property role="3GE5qa" value="position" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnyo" resolve="StaticPosition" />
    <node concept="3EZMnI" id="6z_cCa8jqo2" role="2wV5jI">
      <node concept="3F0A7n" id="6z_cCa8jqo9" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnyD" resolve="x" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jqof" role="3EZMnx">
        <property role="3F0ifm" value="-" />
        <node concept="11L4FC" id="6z_cCa8jqos" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6z_cCa8jqox" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6z_cCa8jqon" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnyG" resolve="y" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jqoG" role="3EZMnx">
        <property role="3F0ifm" value="rotated on" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8jqoW" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnyB" resolve="rotation" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqo5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqpV">
    <property role="3GE5qa" value="position" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jn$B" resolve="PositionOnStand" />
    <node concept="3EZMnI" id="6z_cCa8jqpX" role="2wV5jI">
      <node concept="1iCGBv" id="6z_cCa8jqq4" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jn$C" resolve="stand" />
        <node concept="1sVBvm" id="6z_cCa8jqq6" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8jqqd" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6z_cCa8jqql" role="3EZMnx">
        <property role="3F0ifm" value="relatively rotated on" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8jqqx" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jn$E" resolve="relativeRotation" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqq0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqr3">
    <property role="3GE5qa" value="receipts" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jn$T" resolve="Receipt" />
    <node concept="3EZMnI" id="6z_cCa8jqr5" role="2wV5jI">
      <node concept="3EZMnI" id="6z_cCa8jqrc" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8jqre" role="3F10Kt" />
        <node concept="3F0ifn" id="6z_cCa8jqrm" role="3EZMnx">
          <property role="3F0ifm" value="Receipt" />
        </node>
        <node concept="3F0A7n" id="6z_cCa8jqrs" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="6z_cCa8kxKI" role="3EZMnx">
          <property role="3F0ifm" value="starting at" />
        </node>
        <node concept="1iCGBv" id="6z_cCa8kImE" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8kImv" resolve="startingPoint" />
          <node concept="1sVBvm" id="6z_cCa8kImG" role="1sWHZn">
            <node concept="3F0A7n" id="6z_cCa8kImV" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="6z_cCa8mWpE" role="3EZMnx">
          <property role="3F0ifm" value="with configuration" />
        </node>
        <node concept="1iCGBv" id="6z_cCa8mWq2" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8mWpY" resolve="startingConfiguration" />
          <node concept="1sVBvm" id="6z_cCa8mWq4" role="1sWHZn">
            <node concept="3F0A7n" id="6z_cCa8mWqj" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="6z_cCa8kVfb" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8jqrh" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6z_cCa8jqrB" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8jqrD" role="3F10Kt" />
        <node concept="3XFhqQ" id="6z_cCa8jqrQ" role="3EZMnx" />
        <node concept="3F2HdR" id="6z_cCa8jqsn" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8jn$W" resolve="parts" />
          <node concept="2iRkQZ" id="6z_cCa8jqsq" role="2czzBx" />
          <node concept="VPM3Z" id="6z_cCa8jqsr" role="3F10Kt" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8jqrG" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8kVfk" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="2iRkQZ" id="6z_cCa8jqr8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqsV">
    <property role="3GE5qa" value="receipts" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jn$Z" resolve="MoveToPoint" />
    <node concept="3EZMnI" id="6z_cCa8jqsX" role="2wV5jI">
      <node concept="PMmxH" id="6z_cCa8jqt4" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8jqt9" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jqfg" resolve="point" />
        <node concept="1sVBvm" id="6z_cCa8jqtb" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8jqtj" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqt0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jqtL">
    <property role="3GE5qa" value="receipts" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jn_0" resolve="TriggerJack" />
    <node concept="3EZMnI" id="6z_cCa8jqtN" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8jqtU" role="3EZMnx">
        <property role="3F0ifm" value="trigger" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8jqu0" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jn_e" resolve="jackStation" />
        <node concept="1sVBvm" id="6z_cCa8jqu2" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8jqul" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6z_cCa8jquo" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8jquA" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jn_c" resolve="action" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jqtQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jC2p">
    <property role="3GE5qa" value="position" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnyL" resolve="PositionDeclaration" />
    <node concept="3EZMnI" id="6z_cCa8jC2r" role="2wV5jI">
      <node concept="3F0A7n" id="6z_cCa8jC2y" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jC2G" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="6z_cCa8jC2O" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnyV" resolve="position" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jC2u" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jC3l">
    <property role="3GE5qa" value="components" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jC2T" resolve="SRSection" />
    <node concept="3EZMnI" id="6z_cCa8jC3q" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8jC3s" role="3EZMnx">
        <property role="3F0ifm" value="SR section" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8jC3$" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jC3Q" role="3EZMnx">
        <property role="3F0ifm" value="at" />
      </node>
      <node concept="3F1sOY" id="6z_cCa8jC3G" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnz0" resolve="position" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jC3t" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jMLj">
    <property role="3GE5qa" value="receipts.switch" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnAN" resolve="SwitchCase" />
    <node concept="3EZMnI" id="6z_cCa8jMLo" role="2wV5jI">
      <node concept="3F1sOY" id="6z_cCa8jMLy" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnB5" resolve="predicate" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8jMLE" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="6z_cCa8jMOl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6z_cCa8jMLO" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnB7" resolve="instructions" />
        <node concept="pj6Ft" id="6z_cCa8jMO9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="6z_cCa8jMOa" role="2czzBx" />
        <node concept="lj46D" id="6z_cCa8jMOn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6z_cCa8jMP1" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="l2Vlx" id="6z_cCa8jMOb" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jMMR">
    <property role="3GE5qa" value="receipts.switch" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnAM" resolve="SwitchInstruction" />
    <node concept="3EZMnI" id="6z_cCa8jMMT" role="2wV5jI">
      <node concept="2iRkQZ" id="6z_cCa8jMMW" role="2iSdaV" />
      <node concept="3EZMnI" id="6z_cCa8jMN0" role="3EZMnx">
        <node concept="2iRfu4" id="6z_cCa8jMN1" role="2iSdaV" />
        <node concept="VPM3Z" id="6z_cCa8jMN2" role="3F10Kt" />
        <node concept="3F0ifn" id="6z_cCa8jMN6" role="3EZMnx">
          <property role="3F0ifm" value="switch" />
        </node>
        <node concept="3F1sOY" id="6z_cCa8jMNb" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8jMMp" resolve="condition" />
        </node>
        <node concept="3F0ifn" id="6z_cCa8lkxZ" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
      </node>
      <node concept="3EZMnI" id="6z_cCa8jMNm" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8jMNo" role="3F10Kt" />
        <node concept="3XFhqQ" id="6z_cCa8jMNC" role="3EZMnx" />
        <node concept="3F2HdR" id="6z_cCa8jMNI" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8jMKQ" resolve="cases" />
          <node concept="2iRkQZ" id="6z_cCa8jMNO" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8jMNr" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8lky4" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jXRs">
    <property role="3GE5qa" value="receipts.switch" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnAR" resolve="CameraOutputPredicate" />
    <node concept="3EZMnI" id="6z_cCa8jXRz" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8jXRE" role="3EZMnx">
        <property role="3F0ifm" value="case" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8jXRK" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8jnB1" resolve="cameraOutput" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8jXRA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8jXSn">
    <property role="3GE5qa" value="receipts" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnBa" resolve="OtherwisePredicate" />
    <node concept="3F0ifn" id="6z_cCa8jXSp" role="2wV5jI">
      <property role="3F0ifm" value="otherwise" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8k9Cf">
    <property role="3GE5qa" value="points" />
    <ref role="1XX52x" to="sqhf:6z_cCa8k9BL" resolve="SRSectionStartPoint" />
    <node concept="3EZMnI" id="6z_cCa8k9Ch" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8k9Co" role="3EZMnx">
        <property role="3F0ifm" value="start of SR" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8k9Cu" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8k9BM" resolve="section" />
        <node concept="1sVBvm" id="6z_cCa8k9Cw" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8kmL9" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6z_cCa8k9Ck" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8l6Xg">
    <property role="3GE5qa" value="receipts.switch" />
    <ref role="1XX52x" to="sqhf:6z_cCa8jnAQ" resolve="CameraTestCondition" />
    <node concept="3EZMnI" id="6z_cCa8l6Xn" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8l6Xu" role="3EZMnx">
        <property role="3F0ifm" value="output of" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8l6X$" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8l6WN" resolve="camera" />
        <node concept="1sVBvm" id="6z_cCa8l6XA" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8l6XI" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6z_cCa8l6Xq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8lwUw">
    <property role="3GE5qa" value="receipts" />
    <ref role="1XX52x" to="sqhf:6z_cCa8lwU2" resolve="LoopInstruction" />
    <node concept="3EZMnI" id="6z_cCa8lwUy" role="2wV5jI">
      <node concept="3EZMnI" id="6z_cCa8lwUG" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8lwUI" role="3F10Kt" />
        <node concept="3F0ifn" id="6z_cCa8lwUK" role="3EZMnx">
          <property role="3F0ifm" value="loop" />
        </node>
        <node concept="3F0ifn" id="6z_cCa8lwV3" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8lwUL" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6z_cCa8lwV7" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8lwV8" role="3F10Kt" />
        <node concept="3XFhqQ" id="6z_cCa8lwVn" role="3EZMnx" />
        <node concept="3F2HdR" id="6z_cCa8lwVt" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8lwU3" resolve="instructions" />
          <node concept="2iRkQZ" id="6z_cCa8lwVz" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8lwVb" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8lwV_" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="2iRkQZ" id="6z_cCa8lwU_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8lJ2U">
    <property role="3GE5qa" value="receipts" />
    <ref role="1XX52x" to="sqhf:6z_cCa8lJ2u" resolve="DoneInstruction" />
    <node concept="3F0ifn" id="6z_cCa8lJ2W" role="2wV5jI">
      <property role="3F0ifm" value="done" />
      <node concept="VechU" id="6z_cCa8lJ2Z" role="3F10Kt">
        <property role="Vb096" value="g1_qRwE/darkGreen" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8lYfw">
    <property role="3GE5qa" value="configurations" />
    <ref role="1XX52x" to="sqhf:6z_cCa8lYeW" resolve="StandPositionSpecification" />
    <node concept="3EZMnI" id="6z_cCa8lYf_" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8lYfB" role="3EZMnx">
        <property role="3F0ifm" value="stand" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8lYfJ" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8lYf0" resolve="stand" />
        <node concept="1sVBvm" id="6z_cCa8lYfL" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8lYfT" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6z_cCa8lYg2" role="3EZMnx">
        <property role="3F0ifm" value="on" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8lYgg" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8lYf2" resolve="position" />
        <node concept="1sVBvm" id="6z_cCa8lYgi" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8lYgu" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6z_cCa8lYfC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8muTY">
    <property role="3GE5qa" value="configurations" />
    <ref role="1XX52x" to="sqhf:6z_cCa8lYgx" resolve="GateStateSpecification" />
    <node concept="3EZMnI" id="6z_cCa8muU0" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8muU7" role="3EZMnx">
        <property role="3F0ifm" value="gate" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8muUd" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8lYgD" resolve="gate" />
        <node concept="1sVBvm" id="6z_cCa8muUf" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8muUn" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6z_cCa8muUw" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0A7n" id="6z_cCa8muUI" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8lYgB" resolve="state" />
      </node>
      <node concept="2iRfu4" id="6z_cCa8muU3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8muVh">
    <property role="3GE5qa" value="configurations" />
    <ref role="1XX52x" to="sqhf:6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
    <node concept="3EZMnI" id="6z_cCa8muVj" role="2wV5jI">
      <node concept="3EZMnI" id="6z_cCa8muVu" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8muVw" role="3F10Kt" />
        <node concept="3F0ifn" id="6z_cCa8muVC" role="3EZMnx">
          <property role="3F0ifm" value="Configuration" />
        </node>
        <node concept="3F0A7n" id="6z_cCa8muVI" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="6z_cCa8muVX" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8muVz" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6z_cCa8muWb" role="3EZMnx">
        <node concept="VPM3Z" id="6z_cCa8muWd" role="3F10Kt" />
        <node concept="3XFhqQ" id="6z_cCa8muWs" role="3EZMnx" />
        <node concept="3F2HdR" id="6z_cCa8muWy" role="3EZMnx">
          <ref role="1NtTu8" to="sqhf:6z_cCa8lYeY" resolve="specs" />
          <node concept="2iRkQZ" id="6z_cCa8muWC" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6z_cCa8muWg" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6z_cCa8muVM" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="2iRkQZ" id="6z_cCa8muVm" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6z_cCa8mWp5">
    <property role="3GE5qa" value="receipts" />
    <ref role="1XX52x" to="sqhf:6z_cCa8mWoB" resolve="SetConfiguraitonInstruction" />
    <node concept="3EZMnI" id="6z_cCa8mWp7" role="2wV5jI">
      <node concept="3F0ifn" id="6z_cCa8mWpe" role="3EZMnx">
        <property role="3F0ifm" value="set configuration" />
      </node>
      <node concept="1iCGBv" id="6z_cCa8mWpk" role="3EZMnx">
        <ref role="1NtTu8" to="sqhf:6z_cCa8mWoC" resolve="configuration" />
        <node concept="1sVBvm" id="6z_cCa8mWpm" role="1sWHZn">
          <node concept="3F0A7n" id="6z_cCa8mWpu" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6z_cCa8mWpa" role="2iSdaV" />
    </node>
  </node>
</model>

