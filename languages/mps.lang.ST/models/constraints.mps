<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:61b9f20a-ea16-4aa0-9e5f-415cf7d35073(mps.lang.ST.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(mps.lang.ST.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <reference id="1213106917431" name="defaultConcreteConcept" index="1MND4H" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="7GyesCp9TvH">
    <property role="3GE5qa" value="statements" />
    <ref role="1M2myG" to="gpgy:7GyesCp9Th6" resolve="Statement" />
    <ref role="1MND4H" to="gpgy:7GyesCp9Tu2" resolve="EmptyStatement" />
  </node>
  <node concept="1M2fIO" id="7GyesCpjDbj">
    <property role="3GE5qa" value="expressions" />
    <ref role="1M2myG" to="gpgy:3HBlKeoZu2f" resolve="VariableReference" />
    <node concept="1N5Pfh" id="7GyesCpjDbk" role="1Mr941">
      <ref role="1N5Vy1" to="gpgy:3HBlKeoZu2g" resolve="declaration" />
      <node concept="1dDu$B" id="7GyesCpjDbm" role="1N6uqs">
        <ref role="1dDu$A" to="gpgy:7GyesCpa3Ox" resolve="VariableDeclaration" />
      </node>
    </node>
  </node>
</model>

