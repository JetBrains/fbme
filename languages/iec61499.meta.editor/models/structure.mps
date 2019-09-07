<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9a144fca-becd-4385-a025-398ace28742a(iec61499.meta.editor.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="2qld" ref="r:24bac084-437d-402d-b9a3-49599b18a0d1(de.itemis.mps.editor.diagram.structure)" implicit="true" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2JGKyjipIlL">
    <property role="EcuMT" value="3165118101539186033" />
    <property role="TrG5h" value="SmallPort" />
    <property role="34LRSv" value="small port" />
    <ref role="1TJDcQ" to="2qld:5FQFTBpWGgz" resolve="Port" />
  </node>
  <node concept="1TIwiD" id="4s7KBSjs5FZ">
    <property role="EcuMT" value="5118273348277656319" />
    <property role="TrG5h" value="CellModel_BorderedRefNodeList" />
    <property role="R4oN_" value="multiple aggegation with border" />
    <ref role="1TJDcQ" to="tpc2:fBF2Hee" resolve="CellModel_RefNodeList" />
    <node concept="1TJgyj" id="4s7KBSjslgq" role="1TKVEi">
      <property role="IQ2ns" value="5118273348277720090" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="headerCell" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpc2:fBF0icI" resolve="CellModel_Constant" />
    </node>
    <node concept="1TJgyj" id="4s7KBSjslgs" role="1TKVEi">
      <property role="IQ2ns" value="5118273348277720092" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="footerCell" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpc2:fBF0icI" resolve="CellModel_Constant" />
    </node>
    <node concept="PrWs8" id="4JFQCPiKlmh" role="PzmwI">
      <ref role="PrY4T" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="4JFQCPipsJs">
    <property role="EcuMT" value="5470706472879246300" />
    <property role="TrG5h" value="CellModel_CustomSyncronized" />
    <property role="34LRSv" value="custom syncronized" />
    <property role="R4oN_" value="reference to provider of syncronizeable cell" />
    <ref role="1TJDcQ" to="tpc2:fGgc7fs" resolve="CellModel_Custom" />
    <node concept="PrWs8" id="4JFQCPipsKR" role="PzmwI">
      <ref role="PrY4T" to="tpc2:7ARneOGixdd" resolve="Synchronizeable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4JFQCPiKfs1">
    <property role="EcuMT" value="5470706472885221121" />
    <property role="TrG5h" value="CellModel_Syncronizer" />
    <property role="34LRSv" value="syncronize" />
    <property role="R4oN_" value="wrap &amp; syncronize a cell" />
    <ref role="1TJDcQ" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    <node concept="PrWs8" id="4JFQCPiKfs2" role="PzmwI">
      <ref role="PrY4T" to="tpc2:7ARneOGixdd" resolve="Synchronizeable" />
    </node>
    <node concept="1TJgyj" id="4JFQCPiKkdP" role="1TKVEi">
      <property role="IQ2ns" value="5470706472885240693" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="cellToSyncronize" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpc2:fBEYTCT" resolve="EditorCellModel" />
    </node>
  </node>
  <node concept="1TIwiD" id="4s7KBSj$Shx">
    <property role="TrG5h" value="StubCellModel_BorderedRefNodeList" />
    <property role="EcuMT" value="5118273348279960673" />
    <ref role="1TJDcQ" node="4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
    <node concept="PrWs8" id="4s7KBSj$Shz" role="PzmwI">
      <ref role="PrY4T" to="tpck:8AYOKVCAP5" resolve="IStubForAnotherConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4JFQCPipsLW">
    <property role="TrG5h" value="StubCellModel_CustomSyncronized" />
    <property role="EcuMT" value="5470706472879246460" />
    <ref role="1TJDcQ" node="4JFQCPipsJs" resolve="CellModel_CustomSyncronized" />
    <node concept="PrWs8" id="4JFQCPipsLY" role="PzmwI">
      <ref role="PrY4T" to="tpck:8AYOKVCAP5" resolve="IStubForAnotherConcept" />
    </node>
  </node>
</model>

