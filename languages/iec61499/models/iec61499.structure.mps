<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(iec61499.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="8842732777748207592" name="jetbrains.mps.lang.structure.structure.SmartReferenceAttribute" flags="ng" index="RPilO">
        <reference id="8842732777748207597" name="charactersticReference" index="RPilL" />
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
  <node concept="1TIwiD" id="3HBlKeoYsiw">
    <property role="EcuMT" value="4280485643801969824" />
    <property role="TrG5h" value="FunctionBlockDeclarationBase" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="interface" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoYsix" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969825" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="inputEvents" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoYsiz" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969827" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="outputEvents" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoYsiE" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969834" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="inputVariables" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoYsiI" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969838" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="outputVariables" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
    <node concept="PrWs8" id="3HBlKeoYFrR" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoYsiA">
    <property role="EcuMT" value="4280485643801969830" />
    <property role="TrG5h" value="EventDeclaration" />
    <property role="34LRSv" value="event" />
    <property role="3GE5qa" value="interface" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoYsiZ" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969855" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="associatedVariables" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoYsiT" resolve="VariableAssociation" />
    </node>
    <node concept="PrWs8" id="3HBlKeoYsiR" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoYsiC">
    <property role="EcuMT" value="4280485643801969832" />
    <property role="TrG5h" value="VariableDeclaration" />
    <property role="3GE5qa" value="interface" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoYM6s" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802059164" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoYKVW" resolve="Type" />
    </node>
    <node concept="PrWs8" id="3HBlKeoYFAR" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoYsiT">
    <property role="EcuMT" value="4280485643801969849" />
    <property role="TrG5h" value="VariableAssociation" />
    <property role="3GE5qa" value="interface" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoYsiU" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969850" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
    <node concept="RPilO" id="3HBlKeoYKUU" role="lGtFl">
      <ref role="RPilL" node="3HBlKeoYsiU" resolve="declaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoYsj1">
    <property role="EcuMT" value="4280485643801969857" />
    <property role="TrG5h" value="BasicFunctionBlockDeclaration" />
    <property role="34LRSv" value="basic function block" />
    <property role="3GE5qa" value="basic" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="3HBlKeoYsiw" resolve="FunctionBlockDeclarationBase" />
    <node concept="1TJgyj" id="3HBlKeoZ0WV" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802119995" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="algorithms" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZ0WX" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802119997" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="states" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="3HBlKeoZ0Un" resolve="StateDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZ0X_" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802120037" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="transitions" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoZ0Up" resolve="StateTransition" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoYFAL" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802032561" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="internalVariables" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoYKVW">
    <property role="EcuMT" value="4280485643802054396" />
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="Type" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoYKVX">
    <property role="EcuMT" value="4280485643802054397" />
    <property role="TrG5h" value="UIntType" />
    <property role="3GE5qa" value="types" />
    <property role="34LRSv" value="UINT" />
    <ref role="1TJDcQ" node="3HBlKeoYKVW" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoYWWU">
    <property role="EcuMT" value="4280485643802103610" />
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="BoolType" />
    <property role="34LRSv" value="BOOL" />
    <ref role="1TJDcQ" node="3HBlKeoYKVW" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ0Un">
    <property role="EcuMT" value="4280485643802119831" />
    <property role="3GE5qa" value="basic" />
    <property role="TrG5h" value="StateDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoZ0VN" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802119923" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoZ0Uo" resolve="StateAction" />
    </node>
    <node concept="PrWs8" id="3HBlKeoZ0VL" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ0Uo">
    <property role="EcuMT" value="4280485643802119832" />
    <property role="3GE5qa" value="basic" />
    <property role="TrG5h" value="StateAction" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoZ0Uv" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802119839" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="outputEvent" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZ0Ut" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802119837" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="algorithm" />
      <ref role="20lvS9" node="3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ0Up">
    <property role="EcuMT" value="4280485643802119833" />
    <property role="3GE5qa" value="basic" />
    <property role="TrG5h" value="StateTransition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoZ0X0" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802120000" />
      <property role="20lmBu" value="reference" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="sourceState" />
      <ref role="20lvS9" node="3HBlKeoZ0Un" resolve="StateDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZ0X2" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802120002" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="targetState" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoZ0Un" resolve="StateDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZaIs" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802160028" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoZ0X9" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ0Uq">
    <property role="EcuMT" value="4280485643802119834" />
    <property role="3GE5qa" value="basic" />
    <property role="TrG5h" value="AlgorithmDeclaration" />
    <property role="34LRSv" value="ALGORITHM" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoZ45W" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802132860" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoZ45V" resolve="Statement" />
    </node>
    <node concept="PrWs8" id="3HBlKeoZ0Ur" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ0X9">
    <property role="EcuMT" value="4280485643802120009" />
    <property role="TrG5h" value="Expression" />
    <property role="3GE5qa" value="expressions" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ45V">
    <property role="EcuMT" value="4280485643802132859" />
    <property role="TrG5h" value="Statement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="statements" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoZeH4">
    <property role="EcuMT" value="4280485643802176324" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="InputEventGuard" />
    <ref role="1TJDcQ" node="3HBlKeoZ0X9" resolve="Expression" />
    <node concept="1TJgyj" id="3HBlKeoZeH5" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802176325" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="inputEvent" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZiWZ">
    <property role="EcuMT" value="4280485643802193727" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="AndExpression" />
    <property role="34LRSv" value="&amp;" />
    <ref role="1TJDcQ" node="3Qd3IVOFNn0" resolve="BinaryExpression" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoZu2b">
    <property role="EcuMT" value="4280485643802239115" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="EqualsExpression" />
    <property role="34LRSv" value="=" />
    <ref role="1TJDcQ" node="3Qd3IVOFNn0" resolve="BinaryExpression" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoZu2f">
    <property role="EcuMT" value="4280485643802239119" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="VariableReference" />
    <ref role="1TJDcQ" node="3HBlKeoZ0X9" resolve="Expression" />
    <node concept="1TJgyj" id="3HBlKeoZu2g" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802239120" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZu2i">
    <property role="EcuMT" value="4280485643802239122" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="NumericLiteral" />
    <ref role="1TJDcQ" node="3HBlKeoZ0X9" resolve="Expression" />
    <node concept="1TJgyi" id="3HBlKeoZu2j" role="1TKVEl">
      <property role="IQ2nx" value="4280485643802239123" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Qd3IVOFNl$">
    <property role="EcuMT" value="4435217627499935076" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="ParensExpression" />
    <property role="34LRSv" value="( ... )" />
    <ref role="1TJDcQ" node="3HBlKeoZ0X9" resolve="Expression" />
    <node concept="1TJgyj" id="3Qd3IVOFNmU" role="1TKVEi">
      <property role="IQ2ns" value="4435217627499935162" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expr" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoZ0X9" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Qd3IVOFNn0">
    <property role="EcuMT" value="4435217627499935168" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="BinaryExpression" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="3HBlKeoZ0X9" resolve="Expression" />
    <node concept="1TJgyj" id="3Qd3IVOFNnt" role="1TKVEi">
      <property role="IQ2ns" value="4435217627499935197" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoZ0X9" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="3Qd3IVOFNnv" role="1TKVEi">
      <property role="IQ2ns" value="4435217627499935199" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoZ0X9" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugbt">
    <property role="EcuMT" value="967875482185433821" />
    <property role="TrG5h" value="CompositeFunctionBlockDeclaration" />
    <property role="34LRSv" value="composite function block" />
    <property role="3GE5qa" value="composite" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="3HBlKeoYsiw" resolve="FunctionBlockDeclarationBase" />
    <node concept="1TJgyj" id="PI_pXYus4x" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482529" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="PI_pXYugbu" resolve="FunctionBlockInstance" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus4D" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482537" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="eventConncetions" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="PI_pXYugcd" resolve="EventConncetion" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus4$" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482532" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="dataConncetions" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="PI_pXYugcm" resolve="DataConnection" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugbu">
    <property role="EcuMT" value="967875482185433822" />
    <property role="3GE5qa" value="composite" />
    <property role="TrG5h" value="FunctionBlockInstance" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYugbv" role="1TKVEi">
      <property role="IQ2ns" value="967875482185433823" />
      <property role="20lmBu" value="reference" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="declaration" />
      <ref role="20lvS9" node="3HBlKeoYsiw" resolve="FunctionBlockDeclarationBase" />
    </node>
    <node concept="PrWs8" id="PI_pXYus3I" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugcd">
    <property role="EcuMT" value="967875482185433869" />
    <property role="3GE5qa" value="composite.events" />
    <property role="TrG5h" value="EventConncetion" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYus2F" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482411" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="PI_pXYugcv" resolve="SourceEventInstance" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus2M" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482418" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="PI_pXYus2V" resolve="TargetEventInstance" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugcm">
    <property role="EcuMT" value="967875482185433878" />
    <property role="3GE5qa" value="composite.data" />
    <property role="TrG5h" value="DataConnection" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYus41" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482497" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="PI_pXYus3L" resolve="SourceDataInstance" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus48" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482504" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="PI_pXYus3M" resolve="TargetDataInstance" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugcv">
    <property role="EcuMT" value="967875482185433887" />
    <property role="3GE5qa" value="composite.events" />
    <property role="TrG5h" value="SourceEventInstance" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="PI_pXYus4l" resolve="EventInstance" />
  </node>
  <node concept="1TIwiD" id="PI_pXYus2V">
    <property role="EcuMT" value="967875482185482427" />
    <property role="3GE5qa" value="composite.events" />
    <property role="TrG5h" value="TargetEventInstance" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="PI_pXYus4l" resolve="EventInstance" />
  </node>
  <node concept="1TIwiD" id="PI_pXYus3L">
    <property role="EcuMT" value="967875482185482481" />
    <property role="3GE5qa" value="composite.data" />
    <property role="TrG5h" value="SourceDataInstance" />
    <ref role="1TJDcQ" node="PI_pXYus3W" resolve="DataInstance" />
  </node>
  <node concept="1TIwiD" id="PI_pXYus3M">
    <property role="EcuMT" value="967875482185482482" />
    <property role="3GE5qa" value="composite.data" />
    <property role="TrG5h" value="TargetDataInstance" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="PI_pXYus3W" resolve="DataInstance" />
  </node>
  <node concept="1TIwiD" id="PI_pXYus3W">
    <property role="EcuMT" value="967875482185482492" />
    <property role="3GE5qa" value="composite.data" />
    <property role="TrG5h" value="DataInstance" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYus3R" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482487" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="container" />
      <ref role="20lvS9" node="PI_pXYugbu" resolve="FunctionBlockInstance" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus3O" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482484" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYus4l">
    <property role="EcuMT" value="967875482185482517" />
    <property role="3GE5qa" value="composite.events" />
    <property role="TrG5h" value="EventInstance" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYus4r" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482523" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="container" />
      <ref role="20lvS9" node="PI_pXYugbu" resolve="FunctionBlockInstance" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus4s" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482524" />
      <property role="20lmBu" value="reference" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="declaration" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="7UH$k724uxl">
    <property role="EcuMT" value="9128111731364718677" />
    <property role="TrG5h" value="StateActionsEnabler" />
    <property role="3GE5qa" value="editor-specific" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="M6xJ_" id="7UH$k724uxL" role="lGtFl">
      <property role="Hh88m" value="stateActionsEnabler" />
      <node concept="trNpa" id="7UH$k724uxN" role="EQaZv">
        <ref role="trN6q" node="3HBlKeoZ0Un" resolve="StateDeclaration" />
      </node>
    </node>
  </node>
</model>

