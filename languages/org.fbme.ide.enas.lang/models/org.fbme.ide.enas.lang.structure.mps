<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:89e73cce-0f43-4b7b-8b73-c16261d7ddc4(org.fbme.ide.enas.lang.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="8842732777748464990" name="jetbrains.mps.lang.structure.structure.RefPresentationTemplate" flags="ng" index="ROjv2">
        <property id="4307758654697524057" name="prefix" index="1W_73P" />
      </concept>
      <concept id="8842732777748207592" name="jetbrains.mps.lang.structure.structure.SmartReferenceAttribute" flags="ng" index="RPilO">
        <reference id="8842732777748207597" name="charactersticReference" index="RPilL" />
        <child id="8842732777748474935" name="refPresentationTemplate" index="ROhUF" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6z_cCa8jnyk">
    <property role="EcuMT" value="7558503085825161364" />
    <property role="TrG5h" value="EnasSystem" />
    <property role="34LRSv" value="EnAS system" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6z_cCa8jn$G" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161516" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6z_cCa8jnyl" resolve="Component" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8jn$K" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161520" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="points" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6z_cCa8jqec" resolve="PointDeclaration" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8muZr" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825978331" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="configurations" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8jn$P" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161525" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="receipts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6z_cCa8jn$T" resolve="Receipt" />
    </node>
    <node concept="PrWs8" id="6z_cCa8jq9x" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnyl">
    <property role="EcuMT" value="7558503085825161365" />
    <property role="TrG5h" value="Component" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="components" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6z_cCa8jn$I" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnym">
    <property role="EcuMT" value="7558503085825161366" />
    <property role="TrG5h" value="StandartSection" />
    <property role="3GE5qa" value="components" />
    <ref role="1TJDcQ" node="6z_cCa8jnyX" resolve="StaticComponent" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnyn">
    <property role="EcuMT" value="7558503085825161367" />
    <property role="TrG5h" value="Position" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="position" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnyo">
    <property role="EcuMT" value="7558503085825161368" />
    <property role="TrG5h" value="StaticPosition" />
    <property role="3GE5qa" value="position" />
    <ref role="1TJDcQ" node="6z_cCa8jnyn" resolve="Position" />
    <node concept="1TJgyi" id="6z_cCa8jnyB" role="1TKVEl">
      <property role="IQ2nx" value="7558503085825161383" />
      <property role="TrG5h" value="rotation" />
      <ref role="AX2Wp" node="6z_cCa8jnyp" resolve="Rotation" />
    </node>
    <node concept="1TJgyi" id="6z_cCa8jnyD" role="1TKVEl">
      <property role="IQ2nx" value="7558503085825161385" />
      <property role="TrG5h" value="x" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="6z_cCa8jnyG" role="1TKVEl">
      <property role="IQ2nx" value="7558503085825161388" />
      <property role="TrG5h" value="y" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="25R3W" id="6z_cCa8jnyp">
    <property role="3F6X1D" value="7558503085825161369" />
    <property role="TrG5h" value="Rotation" />
    <property role="3GE5qa" value="position" />
    <ref role="1H5jkz" node="6z_cCa8jnyq" resolve="Degree0" />
    <node concept="25R33" id="6z_cCa8jnyq" role="25R1y">
      <property role="3tVfz5" value="7558503085825161370" />
      <property role="TrG5h" value="Degree0" />
      <property role="1L1pqM" value="0" />
    </node>
    <node concept="25R33" id="6z_cCa8jnyr" role="25R1y">
      <property role="3tVfz5" value="7558503085825161371" />
      <property role="TrG5h" value="Degree90" />
      <property role="1L1pqM" value="90" />
    </node>
    <node concept="25R33" id="6z_cCa8jnyu" role="25R1y">
      <property role="3tVfz5" value="7558503085825161374" />
      <property role="TrG5h" value="Degree180" />
      <property role="1L1pqM" value="180" />
    </node>
    <node concept="25R33" id="6z_cCa8jnyy" role="25R1y">
      <property role="3tVfz5" value="7558503085825161378" />
      <property role="TrG5h" value="Degree270" />
      <property role="1L1pqM" value="270" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnyK">
    <property role="EcuMT" value="7558503085825161392" />
    <property role="TrG5h" value="ConfigurableStand" />
    <property role="3GE5qa" value="components" />
    <ref role="1TJDcQ" node="6z_cCa8jnyl" resolve="Component" />
    <node concept="1TJgyj" id="6z_cCa8jnyN" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161395" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="positions" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6z_cCa8jnyL" resolve="PositionDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnyL">
    <property role="EcuMT" value="7558503085825161393" />
    <property role="TrG5h" value="PositionDeclaration" />
    <property role="3GE5qa" value="position" />
    <node concept="PrWs8" id="6z_cCa8jnyR" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8jnyV" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161403" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnyo" resolve="StaticPosition" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnyX">
    <property role="EcuMT" value="7558503085825161405" />
    <property role="TrG5h" value="StaticComponent" />
    <property role="3GE5qa" value="components" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="6z_cCa8jnyl" resolve="Component" />
    <node concept="1TJgyj" id="6z_cCa8jnz0" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161408" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnyn" resolve="Position" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnz2">
    <property role="EcuMT" value="7558503085825161410" />
    <property role="TrG5h" value="JackStation" />
    <property role="3GE5qa" value="components" />
    <ref role="1TJDcQ" node="6z_cCa8jnyX" resolve="StaticComponent" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8jn$d">
    <property role="EcuMT" value="7558503085825161485" />
    <property role="TrG5h" value="SectionGate" />
    <property role="3GE5qa" value="components" />
    <ref role="1TJDcQ" node="6z_cCa8jnyl" resolve="Component" />
    <node concept="1TJgyj" id="6z_cCa8lYgF" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825844267" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20kJfa" value="section" />
      <ref role="20lvS9" node="6z_cCa8jnym" resolve="StandartSection" />
    </node>
    <node concept="1TJgyi" id="6z_cCa8lYgP" role="1TKVEl">
      <property role="IQ2nx" value="7558503085825844277" />
      <property role="TrG5h" value="side" />
      <ref role="AX2Wp" node="6z_cCa8lYgH" resolve="RelativeGatePosition" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jn$e">
    <property role="EcuMT" value="7558503085825161486" />
    <property role="TrG5h" value="Camera" />
    <property role="3GE5qa" value="components" />
    <ref role="1TJDcQ" node="6z_cCa8jnyX" resolve="StaticComponent" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8jn$B">
    <property role="EcuMT" value="7558503085825161511" />
    <property role="TrG5h" value="PositionOnStand" />
    <property role="3GE5qa" value="position" />
    <ref role="1TJDcQ" node="6z_cCa8jnyn" resolve="Position" />
    <node concept="1TJgyj" id="6z_cCa8jn$C" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161512" />
      <property role="20kJfa" value="stand" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnyK" resolve="ConfigurableStand" />
    </node>
    <node concept="1TJgyi" id="6z_cCa8jn$E" role="1TKVEl">
      <property role="IQ2nx" value="7558503085825161514" />
      <property role="TrG5h" value="relativeRotation" />
      <ref role="AX2Wp" node="6z_cCa8jnyp" resolve="Rotation" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jn$N">
    <property role="EcuMT" value="7558503085825161523" />
    <property role="TrG5h" value="ItemPoint" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="points" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8jn$O">
    <property role="EcuMT" value="7558503085825161524" />
    <property role="TrG5h" value="SectionDeliveryPoint" />
    <property role="3GE5qa" value="points" />
    <ref role="1TJDcQ" node="6z_cCa8jn$N" resolve="ItemPoint" />
    <node concept="1TJgyj" id="6z_cCa8jqek" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825172372" />
      <property role="20kJfa" value="section" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnym" resolve="StandartSection" />
    </node>
    <node concept="RPilO" id="6z_cCa8jAN8" role="lGtFl">
      <ref role="RPilL" node="6z_cCa8jqek" resolve="section" />
      <node concept="ROjv2" id="6z_cCa8jANa" role="ROhUF">
        <property role="1W_73P" value="delivery of " />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jn$T">
    <property role="EcuMT" value="7558503085825161529" />
    <property role="TrG5h" value="Receipt" />
    <property role="3GE5qa" value="receipts" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6z_cCa8jn$U" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8jn$W" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161532" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6z_cCa8jn$Y" resolve="ReceiptInstruction" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8kImv" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825516959" />
      <property role="20kJfa" value="startingPoint" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jqec" resolve="PointDeclaration" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8mWpY" role="1TKVEi">
      <property role="IQ2ns" value="7558503085826098814" />
      <property role="20kJfa" value="startingConfiguration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jn$Y">
    <property role="TrG5h" value="ReceiptInstruction" />
    <property role="EcuMT" value="7558503085825161534" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="receipts" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8jn$Z">
    <property role="EcuMT" value="7558503085825161535" />
    <property role="3GE5qa" value="receipts" />
    <property role="TrG5h" value="MoveToPoint" />
    <property role="34LRSv" value="move item to" />
    <ref role="1TJDcQ" node="6z_cCa8jn$Y" resolve="ReceiptInstruction" />
    <node concept="1TJgyj" id="6z_cCa8jqfg" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825172432" />
      <property role="20kJfa" value="point" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jqec" resolve="PointDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jn_0">
    <property role="EcuMT" value="7558503085825161536" />
    <property role="3GE5qa" value="receipts" />
    <property role="34LRSv" value="Trigeger jack to" />
    <property role="TrG5h" value="TriggerJack" />
    <ref role="1TJDcQ" node="6z_cCa8jn$Y" resolve="ReceiptInstruction" />
    <node concept="1TJgyj" id="6z_cCa8jn_e" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161550" />
      <property role="20kJfa" value="jackStation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnz2" resolve="JackStation" />
    </node>
    <node concept="1TJgyi" id="6z_cCa8jn_c" role="1TKVEl">
      <property role="IQ2nx" value="7558503085825161548" />
      <property role="TrG5h" value="action" />
      <ref role="AX2Wp" node="6z_cCa8jn_3" resolve="JackAction" />
    </node>
  </node>
  <node concept="25R3W" id="6z_cCa8jn_3">
    <property role="3F6X1D" value="7558503085825161539" />
    <property role="3GE5qa" value="receipts" />
    <property role="TrG5h" value="JackAction" />
    <node concept="25R33" id="6z_cCa8jn_4" role="25R1y">
      <property role="3tVfz5" value="7558503085825161540" />
      <property role="TrG5h" value="RemoveWP" />
      <property role="1L1pqM" value="remove WP" />
    </node>
    <node concept="25R33" id="6z_cCa8jn_5" role="25R1y">
      <property role="3tVfz5" value="7558503085825161541" />
      <property role="TrG5h" value="PlaceRed" />
      <property role="1L1pqM" value="place red" />
    </node>
    <node concept="25R33" id="6z_cCa8jn_8" role="25R1y">
      <property role="3tVfz5" value="7558503085825161544" />
      <property role="TrG5h" value="PlaceGreen" />
      <property role="1L1pqM" value="place green" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnAM">
    <property role="EcuMT" value="7558503085825161650" />
    <property role="3GE5qa" value="receipts.switch" />
    <property role="TrG5h" value="SwitchInstruction" />
    <property role="34LRSv" value="switch" />
    <ref role="1TJDcQ" node="6z_cCa8jn$Y" resolve="ReceiptInstruction" />
    <node concept="1TJgyj" id="6z_cCa8jMMp" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825272985" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnAP" resolve="SwitchCondition" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8jMKQ" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825272886" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cases" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6z_cCa8jnAN" resolve="SwitchCase" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnAN">
    <property role="EcuMT" value="7558503085825161651" />
    <property role="3GE5qa" value="receipts.switch" />
    <property role="TrG5h" value="SwitchCase" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6z_cCa8jnB5" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161669" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="predicate" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnAO" resolve="CasePredicate" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8jnB7" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825161671" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="instructions" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6z_cCa8jn$Y" resolve="ReceiptInstruction" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnAO">
    <property role="EcuMT" value="7558503085825161652" />
    <property role="3GE5qa" value="receipts.switch" />
    <property role="TrG5h" value="CasePredicate" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnAP">
    <property role="EcuMT" value="7558503085825161653" />
    <property role="3GE5qa" value="receipts.switch" />
    <property role="TrG5h" value="SwitchCondition" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnAQ">
    <property role="EcuMT" value="7558503085825161654" />
    <property role="3GE5qa" value="receipts.switch" />
    <property role="TrG5h" value="CameraTestCondition" />
    <property role="34LRSv" value="camera test" />
    <ref role="1TJDcQ" node="6z_cCa8jnAP" resolve="SwitchCondition" />
    <node concept="1TJgyj" id="6z_cCa8l6WN" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825617715" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20kJfa" value="camera" />
      <ref role="20lvS9" node="6z_cCa8jn$e" resolve="Camera" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnAR">
    <property role="EcuMT" value="7558503085825161655" />
    <property role="3GE5qa" value="receipts.switch" />
    <property role="TrG5h" value="CameraOutputPredicate" />
    <property role="34LRSv" value="case camera output" />
    <ref role="1TJDcQ" node="6z_cCa8jnAO" resolve="CasePredicate" />
    <node concept="1TJgyi" id="6z_cCa8jnB1" role="1TKVEl">
      <property role="IQ2nx" value="7558503085825161665" />
      <property role="TrG5h" value="cameraOutput" />
      <ref role="AX2Wp" node="6z_cCa8jnAS" resolve="CameraOutput" />
    </node>
  </node>
  <node concept="25R3W" id="6z_cCa8jnAS">
    <property role="3F6X1D" value="7558503085825161656" />
    <property role="3GE5qa" value="receipts.switch" />
    <property role="TrG5h" value="CameraOutput" />
    <node concept="25R33" id="6z_cCa8jnAT" role="25R1y">
      <property role="3tVfz5" value="7558503085825161657" />
      <property role="TrG5h" value="RED" />
    </node>
    <node concept="25R33" id="6z_cCa8jnAU" role="25R1y">
      <property role="3tVfz5" value="7558503085825161658" />
      <property role="TrG5h" value="GREEN" />
    </node>
    <node concept="25R33" id="6z_cCa8jnAX" role="25R1y">
      <property role="3tVfz5" value="7558503085825161661" />
      <property role="TrG5h" value="OTHER" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jnBa">
    <property role="EcuMT" value="7558503085825161674" />
    <property role="3GE5qa" value="receipts" />
    <property role="TrG5h" value="OtherwisePredicate" />
    <property role="34LRSv" value="otherwise" />
    <ref role="1TJDcQ" node="6z_cCa8jnAO" resolve="CasePredicate" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8jqec">
    <property role="EcuMT" value="7558503085825172364" />
    <property role="3GE5qa" value="points" />
    <property role="TrG5h" value="PointDeclaration" />
    <node concept="PrWs8" id="6z_cCa8jqed" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8jqef" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825172367" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="decsriptor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jn$N" resolve="ItemPoint" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jqeh">
    <property role="EcuMT" value="7558503085825172369" />
    <property role="3GE5qa" value="points" />
    <property role="TrG5h" value="SectionStartPoint" />
    <ref role="1TJDcQ" node="6z_cCa8jn$N" resolve="ItemPoint" />
    <node concept="1TJgyj" id="6z_cCa8jqei" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825172370" />
      <property role="20kJfa" value="section" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnym" resolve="StandartSection" />
    </node>
    <node concept="RPilO" id="6z_cCa8jANc" role="lGtFl">
      <ref role="RPilL" node="6z_cCa8jqei" resolve="section" />
      <node concept="ROjv2" id="6z_cCa8jANe" role="ROhUF">
        <property role="1W_73P" value="start of " />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8jC2T">
    <property role="EcuMT" value="7558503085825228985" />
    <property role="3GE5qa" value="components" />
    <property role="TrG5h" value="SRSection" />
    <ref role="1TJDcQ" node="6z_cCa8jnyX" resolve="StaticComponent" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8k9BL">
    <property role="EcuMT" value="7558503085825366513" />
    <property role="3GE5qa" value="points" />
    <property role="TrG5h" value="SRSectionStartPoint" />
    <property role="34LRSv" value="start of SR" />
    <ref role="1TJDcQ" node="6z_cCa8jn$N" resolve="ItemPoint" />
    <node concept="1TJgyj" id="6z_cCa8k9BM" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825366514" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20kJfa" value="section" />
      <ref role="20lvS9" node="6z_cCa8jC2T" resolve="SRSection" />
    </node>
    <node concept="RPilO" id="6z_cCa8klvi" role="lGtFl">
      <ref role="RPilL" node="6z_cCa8k9BM" resolve="section" />
      <node concept="ROjv2" id="6z_cCa8klvk" role="ROhUF">
        <property role="1W_73P" value="start of SR " />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8lwU2">
    <property role="EcuMT" value="7558503085825724034" />
    <property role="3GE5qa" value="receipts" />
    <property role="TrG5h" value="LoopInstruction" />
    <ref role="1TJDcQ" node="6z_cCa8jn$Y" resolve="ReceiptInstruction" />
    <node concept="1TJgyj" id="6z_cCa8lwU3" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825724035" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="instructions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6z_cCa8jn$Y" resolve="ReceiptInstruction" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8lJ2u">
    <property role="EcuMT" value="7558503085825781918" />
    <property role="3GE5qa" value="receipts" />
    <property role="TrG5h" value="DoneInstruction" />
    <property role="34LRSv" value="done" />
    <ref role="1TJDcQ" node="6z_cCa8jn$Y" resolve="ReceiptInstruction" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8lYeT">
    <property role="EcuMT" value="7558503085825844153" />
    <property role="TrG5h" value="ConfigurationDeclaration" />
    <property role="3GE5qa" value="configurations" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6z_cCa8lYeU" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8lYeY" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825844158" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="specs" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6z_cCa8lYeX" resolve="Specification" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8lYeW">
    <property role="EcuMT" value="7558503085825844156" />
    <property role="3GE5qa" value="configurations" />
    <property role="TrG5h" value="StandPositionSpecification" />
    <ref role="1TJDcQ" node="6z_cCa8lYeX" resolve="Specification" />
    <node concept="1TJgyj" id="6z_cCa8lYf0" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825844160" />
      <property role="20kJfa" value="stand" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnyK" resolve="ConfigurableStand" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8lYf2" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825844162" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jnyL" resolve="PositionDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8lYeX">
    <property role="EcuMT" value="7558503085825844157" />
    <property role="3GE5qa" value="configurations" />
    <property role="TrG5h" value="Specification" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6z_cCa8lYgx">
    <property role="EcuMT" value="7558503085825844257" />
    <property role="3GE5qa" value="configurations" />
    <property role="TrG5h" value="GateStateSpecification" />
    <ref role="1TJDcQ" node="6z_cCa8lYeX" resolve="Specification" />
    <node concept="1TJgyi" id="6z_cCa8lYgB" role="1TKVEl">
      <property role="IQ2nx" value="7558503085825844263" />
      <property role="TrG5h" value="state" />
      <ref role="AX2Wp" node="6z_cCa8lYgy" resolve="GateState" />
    </node>
    <node concept="1TJgyj" id="6z_cCa8lYgD" role="1TKVEi">
      <property role="IQ2ns" value="7558503085825844265" />
      <property role="20kJfa" value="gate" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8jn$d" resolve="SectionGate" />
    </node>
  </node>
  <node concept="25R3W" id="6z_cCa8lYgy">
    <property role="3F6X1D" value="7558503085825844258" />
    <property role="3GE5qa" value="configurations" />
    <property role="TrG5h" value="GateState" />
    <ref role="1H5jkz" node="6z_cCa8lYg$" resolve="Closed" />
    <node concept="25R33" id="6z_cCa8lYgz" role="25R1y">
      <property role="3tVfz5" value="7558503085825844259" />
      <property role="TrG5h" value="Opened" />
      <property role="1L1pqM" value="opened" />
    </node>
    <node concept="25R33" id="6z_cCa8lYg$" role="25R1y">
      <property role="3tVfz5" value="7558503085825844260" />
      <property role="TrG5h" value="Closed" />
      <property role="1L1pqM" value="closed" />
    </node>
  </node>
  <node concept="25R3W" id="6z_cCa8lYgH">
    <property role="3F6X1D" value="7558503085825844269" />
    <property role="3GE5qa" value="components" />
    <property role="TrG5h" value="RelativeGatePosition" />
    <node concept="25R33" id="6z_cCa8lYgI" role="25R1y">
      <property role="3tVfz5" value="7558503085825844270" />
      <property role="TrG5h" value="onLeftSide" />
      <property role="1L1pqM" value="left" />
    </node>
    <node concept="25R33" id="6z_cCa8lYgJ" role="25R1y">
      <property role="3tVfz5" value="7558503085825844271" />
      <property role="TrG5h" value="onRightSide" />
      <property role="1L1pqM" value="right" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa8mWoB">
    <property role="EcuMT" value="7558503085826098727" />
    <property role="3GE5qa" value="receipts" />
    <property role="TrG5h" value="SetConfiguraitonInstruction" />
    <property role="34LRSv" value="set configuration" />
    <ref role="1TJDcQ" node="6z_cCa8jn$Y" resolve="ReceiptInstruction" />
    <node concept="1TJgyj" id="6z_cCa8mWoC" role="1TKVEi">
      <property role="IQ2ns" value="7558503085826098728" />
      <property role="20kJfa" value="configuration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
    </node>
  </node>
</model>

