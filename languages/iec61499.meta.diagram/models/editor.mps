<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fa6c636c-b2b7-439c-9e62-8550571c6e77(iec61499.meta.diagram.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="2qld" ref="r:24bac084-437d-402d-b9a3-49599b18a0d1(de.itemis.mps.editor.diagram.structure)" />
    <import index="g3qn" ref="r:9a144fca-becd-4385-a025-398ace28742a(iec61499.meta.diagram.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2JGKyjirJwj">
    <ref role="1XX52x" to="g3qn:2JGKyjipIlL" resolve="SmallPort" />
    <node concept="3EZMnI" id="5FQFTBpWGze" role="2wV5jI">
      <node concept="3F0ifn" id="5FQFTBpWGzl" role="3EZMnx">
        <property role="3F0ifm" value="small port" />
      </node>
      <node concept="3F0ifn" id="5FQFTBpWH11" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="ljvvj" id="5FQFTBpWHHj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="5FQFTBpWG_O" role="3EZMnx">
        <node concept="VPM3Z" id="5FQFTBpWG_P" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="5FQFTBpWG_Q" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="5FQFTBpWG_R" role="3EZMnx">
          <node concept="VPM3Z" id="5FQFTBpWG_S" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="lj46D" id="5FQFTBpWG_T" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPXOz" id="5FQFTBpWG_U" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3EZMnI" id="5FQFTBpWG_V" role="3EZMnx">
            <node concept="VPM3Z" id="5FQFTBpWG_W" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="5FQFTBpWG_X" role="3EZMnx">
              <property role="3F0ifm" value="label" />
            </node>
            <node concept="3F1sOY" id="5FQFTBpWG_Y" role="3EZMnx">
              <ref role="1NtTu8" to="2qld:5FQFTBpWGkr" resolve="label" />
              <node concept="VPXOz" id="5FQFTBpWG_Z" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="2iRfu4" id="5FQFTBpWGA0" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="5FQFTBpWGAh" role="3EZMnx">
            <node concept="VPM3Z" id="5FQFTBpWGAi" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="5FQFTBpWGAj" role="3EZMnx">
              <property role="3F0ifm" value="shape" />
            </node>
            <node concept="3F1sOY" id="5FQFTBpWGAk" role="3EZMnx">
              <property role="1$x2rV" value="square" />
              <ref role="1NtTu8" to="2qld:5FQFTBpWGkt" resolve="shape" />
              <node concept="VPXOz" id="5FQFTBpWGAl" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="2iRfu4" id="5FQFTBpWGAm" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="5FQFTBpWGAn" role="3EZMnx">
            <node concept="3F0ifn" id="5FQFTBpWGAo" role="3EZMnx">
              <property role="3F0ifm" value="positionX" />
            </node>
            <node concept="3F1sOY" id="5FQFTBpWGAp" role="3EZMnx">
              <property role="1$x2rV" value="0.0" />
              <ref role="1NtTu8" to="2qld:5FQFTBpWGku" resolve="positionX" />
              <node concept="VPXOz" id="5FQFTBpWGAq" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="VPM3Z" id="5FQFTBpWGAr" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="5FQFTBpWGAs" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="5FQFTBpWGAt" role="3EZMnx">
            <node concept="3F0ifn" id="5FQFTBpWGAu" role="3EZMnx">
              <property role="3F0ifm" value="positionY" />
            </node>
            <node concept="3F1sOY" id="5FQFTBpWGAv" role="3EZMnx">
              <property role="1$x2rV" value="0.5" />
              <ref role="1NtTu8" to="2qld:5FQFTBpWGkv" resolve="positionY" />
              <node concept="VPXOz" id="5FQFTBpWGAw" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="VPM3Z" id="5FQFTBpWGAx" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="5FQFTBpWGAy" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="6PI4N6JqV_i" role="3EZMnx">
            <node concept="3F0ifn" id="6PI4N6JqV_j" role="3EZMnx">
              <property role="3F0ifm" value="tooltip" />
            </node>
            <node concept="3F1sOY" id="6PI4N6JqV_k" role="3EZMnx">
              <ref role="1NtTu8" to="2qld:6PI4N6JqPBN" resolve="tooltip" />
              <node concept="VPXOz" id="6PI4N6JqV_l" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="VPM3Z" id="6PI4N6JqV_m" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="6PI4N6JqV_n" role="2iSdaV" />
          </node>
          <node concept="2EHx9g" id="5FQFTBpWGAz" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="5FQFTBpWGA$" role="2iSdaV" />
        <node concept="3F0ifn" id="5FQFTBpWGA_" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="5FQFTBpWGAA" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5FQFTBpWHrf" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="pVoyu" id="5FQFTBpWHFD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5FQFTBpWGzh" role="2iSdaV" />
    </node>
  </node>
</model>

