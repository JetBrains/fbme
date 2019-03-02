<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(iec61499.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="2756621024541681841" name="jetbrains.mps.lang.resources.structure.Primitive" flags="ng" index="1irPi6">
        <child id="1860120738943552529" name="fillColor" index="3PKjn_" />
      </concept>
      <concept id="2756621024541681849" name="jetbrains.mps.lang.resources.structure.Text" flags="ng" index="1irPie">
        <property id="2756621024541681854" name="text" index="1irPi9" />
        <child id="1860120738943552534" name="color" index="3PKjny" />
      </concept>
      <concept id="2756621024541674821" name="jetbrains.mps.lang.resources.structure.TextIcon" flags="ng" index="1irR5M">
        <property id="1358878980655415353" name="iconId" index="2$rrk2" />
        <child id="2756621024541675110" name="layers" index="1irR9h" />
      </concept>
      <concept id="2756621024541675104" name="jetbrains.mps.lang.resources.structure.Circle" flags="ng" index="1irR9n" />
      <concept id="1860120738943552477" name="jetbrains.mps.lang.resources.structure.ColorLiteral" flags="ng" index="3PKj8D">
        <property id="1860120738943552481" name="val" index="3PKj8l" />
      </concept>
    </language>
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
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
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
        <child id="6327362524875300597" name="icon" index="rwd14" />
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
        <reference id="1071599698500" name="specializedLink" index="20ksaX" />
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
    <property role="TrG5h" value="FBTypeDeclaration" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="fbtype" />
    <property role="34LRSv" value="function block" />
    <ref role="1TJDcQ" node="2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="1TJgyj" id="75nMhMfSQR7" role="1TKVEi">
      <property role="IQ2ns" value="8167217573769997767" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="plugs" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="37fub3vk1KP" resolve="PlugDeclaration" />
    </node>
    <node concept="1TJgyj" id="75nMhMfSQRy" role="1TKVEi">
      <property role="IQ2ns" value="8167217573769997794" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="sockets" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="37fub3vjRJq" resolve="SocketDeclaration" />
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
      <ref role="20lvS9" node="3HBlKeoYKVW" resolve="DataType" />
    </node>
    <node concept="1TJgyj" id="2lwHqHks4d2" role="1TKVEi">
      <property role="IQ2ns" value="2693352324628235074" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="initialValue" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="2lwHqHjKhl9" resolve="Literal" />
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
    <property role="TrG5h" value="BasicFBTypeDeclaration" />
    <property role="34LRSv" value="basic function block" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="3HBlKeoYsiw" resolve="FBTypeDeclaration" />
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
    <node concept="1irR5M" id="1rxLtFPxBhm" role="rwd14">
      <property role="2$rrk2" value="3" />
      <node concept="1irR9n" id="3K9TJQKaV8R" role="1irR9h">
        <node concept="3PKj8D" id="3K9TJQKaV8S" role="3PKjn_">
          <property role="3PKj8l" value="87CEEB" />
        </node>
      </node>
      <node concept="1irPie" id="3K9TJQKaV8U" role="1irR9h">
        <property role="1irPi9" value="B" />
        <node concept="3PKj8D" id="3K9TJQKaV8V" role="3PKjny">
          <property role="3PKj8l" value="EEEEEE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoYKVW">
    <property role="EcuMT" value="4280485643802054396" />
    <property role="3GE5qa" value="datatypes" />
    <property role="TrG5h" value="DataType" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoYKVX">
    <property role="EcuMT" value="4280485643802054397" />
    <property role="TrG5h" value="UIntType" />
    <property role="3GE5qa" value="datatypes" />
    <property role="34LRSv" value="UINT" />
    <ref role="1TJDcQ" node="3HBlKeoYKVW" resolve="DataType" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoYWWU">
    <property role="EcuMT" value="4280485643802103610" />
    <property role="3GE5qa" value="datatypes" />
    <property role="TrG5h" value="BoolType" />
    <property role="34LRSv" value="BOOL" />
    <ref role="1TJDcQ" node="3HBlKeoYKVW" resolve="DataType" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ0Un">
    <property role="EcuMT" value="4280485643802119831" />
    <property role="3GE5qa" value="fbtype.basic" />
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
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="StateAction" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoZ0Ut" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802119837" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="algorithm" />
      <ref role="20lvS9" node="3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
    </node>
    <node concept="1TJgyj" id="2R0WzquVuy5" role="1TKVEi">
      <property role="IQ2ns" value="3296901243643750533" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="75nMhMfMSWG" resolve="EventDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ0Up">
    <property role="EcuMT" value="4280485643802119833" />
    <property role="3GE5qa" value="fbtype.basic" />
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
      <ref role="20lvS9" node="6g3sTReV9I2" resolve="TransitionCondition" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ0Uq">
    <property role="EcuMT" value="4280485643802119834" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="AlgorithmDeclaration" />
    <property role="34LRSv" value="ALGORITHM" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3HBlKeoZ0Ur" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="1zB5ET5xzpJ" role="1TKVEi">
      <property role="IQ2ns" value="1794427914276976239" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1zB5ET5xzpM" resolve="AlgorithmBody" />
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
    <ref role="1TJDcQ" node="2lwHqHjKhl9" resolve="Literal" />
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
    <property role="TrG5h" value="CompositeFBTypeDeclaration" />
    <property role="34LRSv" value="composite function block" />
    <property role="3GE5qa" value="fbtype.composite" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    <node concept="1irR5M" id="1rxLtFPxBha" role="rwd14">
      <property role="2$rrk2" value="2" />
      <node concept="1irR9n" id="3K9TJQKb0qV" role="1irR9h">
        <node concept="3PKj8D" id="3K9TJQKb0qW" role="3PKjn_">
          <property role="3PKj8l" value="87CEEB" />
        </node>
      </node>
      <node concept="1irPie" id="3K9TJQKb0qX" role="1irR9h">
        <property role="1irPi9" value="C" />
        <node concept="3PKj8D" id="3K9TJQKb0qY" role="3PKjny">
          <property role="3PKj8l" value="EEEEEE" />
        </node>
      </node>
    </node>
    <node concept="PrWs8" id="2lwHqHjRxfS" role="PzmwI">
      <ref role="PrY4T" node="2lwHqHjRxfO" resolve="IWithFBNetwork" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugbu">
    <property role="EcuMT" value="967875482185433822" />
    <property role="3GE5qa" value="fbnetwork" />
    <property role="TrG5h" value="FunctionBlockInstance" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYugbv" role="1TKVEi">
      <property role="IQ2ns" value="967875482185433823" />
      <property role="20lmBu" value="reference" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="declaration" />
      <ref role="20lvS9" node="3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    </node>
    <node concept="PrWs8" id="PI_pXYus3I" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="5L1OxDukYhp" role="PzmwI">
      <ref role="PrY4T" node="5L1OxDukYbT" resolve="IComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugcd">
    <property role="EcuMT" value="967875482185433869" />
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <property role="TrG5h" value="EventConnection" />
    <ref role="1TJDcQ" node="4KieeRVlhii" resolve="Connection" />
    <node concept="1TJgyj" id="PI_pXYus2F" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482411" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="1" />
      <ref role="20ksaX" node="4KieeRVlhj5" resolve="source" />
      <ref role="20lvS9" node="75nMhMfMSWD" resolve="EventSource" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus2M" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482418" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="destination" />
      <property role="20lbJX" value="1" />
      <ref role="20ksaX" node="4KieeRVlhj8" resolve="destination" />
      <ref role="20lvS9" node="75nMhMfMSWG" resolve="EventDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugcm">
    <property role="EcuMT" value="967875482185433878" />
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <property role="TrG5h" value="DataConnection" />
    <ref role="1TJDcQ" node="4KieeRVlhii" resolve="Connection" />
    <node concept="1TJgyj" id="PI_pXYus41" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482497" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="1" />
      <ref role="20ksaX" node="4KieeRVlhj5" resolve="source" />
      <ref role="20lvS9" node="37fub3vlA5G" resolve="DataSource" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus48" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482504" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="destination" />
      <property role="20lbJX" value="1" />
      <ref role="20ksaX" node="4KieeRVlhj8" resolve="destination" />
      <ref role="20lvS9" node="37fub3vlApU" resolve="DataDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYus3W">
    <property role="EcuMT" value="967875482185482492" />
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <property role="TrG5h" value="ComponentDataEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYus3R" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482487" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="component" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5L1OxDukYbT" resolve="IComponent" />
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
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <property role="TrG5h" value="ComponentEventEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYus4r" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482523" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="component" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5L1OxDukYbT" resolve="IComponent" />
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
  <node concept="1TIwiD" id="4KieeRVlhii">
    <property role="EcuMT" value="5481506291238376594" />
    <property role="TrG5h" value="Connection" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="fbnetwork.connections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4KieeRVlhj5" role="1TKVEi">
      <property role="IQ2ns" value="5481506291238376645" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="37fub3vlApO" resolve="Source" />
    </node>
    <node concept="1TJgyj" id="4KieeRVlhj8" role="1TKVEi">
      <property role="IQ2ns" value="5481506291238376648" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="destination" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4KieeRVlhj7" resolve="Destination" />
    </node>
  </node>
  <node concept="PlHQZ" id="4KieeRVlhj7">
    <property role="EcuMT" value="5481506291238376647" />
    <property role="TrG5h" value="Destination" />
    <property role="3GE5qa" value="fbnetwork.connections" />
  </node>
  <node concept="1TIwiD" id="6g3sTReV9I2">
    <property role="EcuMT" value="7206730950341598082" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="TransitionCondition" />
    <property role="34LRSv" value="1" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6g3sTReV9QU" role="1TKVEi">
      <property role="IQ2ns" value="7206730950341598650" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="guardCondition" />
      <ref role="20lvS9" node="3HBlKeoZ0X9" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2R0WzquNT6X" role="1TKVEi">
      <property role="IQ2ns" value="3296901243641762237" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="event" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="75nMhMfMSWD" resolve="EventSource" />
    </node>
  </node>
  <node concept="PlHQZ" id="1zB5ET5xzpM">
    <property role="EcuMT" value="1794427914276976242" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="AlgorithmBody" />
  </node>
  <node concept="1TIwiD" id="1zB5ET5$GBR">
    <property role="EcuMT" value="1794427914277800439" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="STAlgorithmBody" />
    <property role="34LRSv" value="ST" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1zB5ET5$GBS" role="PzmwI">
      <ref role="PrY4T" node="1zB5ET5xzpM" resolve="AlgorithmBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="2ByE74knaXi">
    <property role="EcuMT" value="3018159903918042962" />
    <property role="3GE5qa" value="interface" />
    <property role="TrG5h" value="DeclarationWithInterface" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2ByE74knaXj" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
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
  </node>
  <node concept="1TIwiD" id="2ByE74knc65">
    <property role="EcuMT" value="3018159903918047621" />
    <property role="TrG5h" value="AdapterTypeDeclaration" />
    <property role="34LRSv" value="adapter" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="adapter" />
    <ref role="1TJDcQ" node="2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="1irR5M" id="1rxLtFPxB0W" role="rwd14">
      <property role="2$rrk2" value="1" />
      <node concept="1irR9n" id="3K9TJQKb0qN" role="1irR9h">
        <node concept="3PKj8D" id="3K9TJQKb0qO" role="3PKjn_">
          <property role="3PKj8l" value="87CEEB" />
        </node>
      </node>
      <node concept="1irPie" id="3K9TJQKb0qP" role="1irR9h">
        <property role="1irPi9" value="A" />
        <node concept="3PKj8D" id="3K9TJQKb0qQ" role="3PKjny">
          <property role="3PKj8l" value="EEEEEE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vjRJq">
    <property role="EcuMT" value="3589220129093680090" />
    <property role="3GE5qa" value="adapter" />
    <property role="TrG5h" value="SocketDeclaration" />
    <property role="34LRSv" value="socket" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="37fub3vjRJt" role="1TKVEi">
      <property role="IQ2ns" value="3589220129093680093" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="adapterType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2ByE74knc65" resolve="AdapterTypeDeclaration" />
    </node>
    <node concept="PrWs8" id="37fub3vjRJr" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="5L1OxDuoC0u" role="PzmwI">
      <ref role="PrY4T" node="5L1OxDukYbT" resolve="IComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vk1KP">
    <property role="EcuMT" value="3589220129093721141" />
    <property role="3GE5qa" value="adapter" />
    <property role="TrG5h" value="PlugDeclaration" />
    <property role="34LRSv" value="plug" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="37fub3vk1KS" role="1TKVEi">
      <property role="IQ2ns" value="3589220129093721144" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="adapterType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2ByE74knc65" resolve="AdapterTypeDeclaration" />
    </node>
    <node concept="PrWs8" id="37fub3vk1KQ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="5L1OxDuoomo" role="PzmwI">
      <ref role="PrY4T" node="5L1OxDukYbT" resolve="IComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vlA5$">
    <property role="EcuMT" value="3589220129094132068" />
    <property role="3GE5qa" value="fbnetwork.connections.adapter" />
    <property role="TrG5h" value="AdapterConnection" />
    <ref role="1TJDcQ" node="4KieeRVlhii" resolve="Connection" />
    <node concept="1TJgyj" id="37fub3vlA5_" role="1TKVEi">
      <property role="IQ2ns" value="3589220129094132069" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="source" />
      <ref role="20ksaX" node="4KieeRVlhj5" resolve="source" />
      <ref role="20lvS9" node="75nMhMfIWAT" resolve="FBPlugReference" />
    </node>
    <node concept="1TJgyj" id="37fub3vlDzP" role="1TKVEi">
      <property role="IQ2ns" value="3589220129094146293" />
      <property role="20lmBu" value="aggregation" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="destination" />
      <ref role="20ksaX" node="4KieeRVlhj8" resolve="destination" />
      <ref role="20lvS9" node="75nMhMfIPeN" resolve="FBSocketReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="37fub3vlApO">
    <property role="EcuMT" value="3589220129094133364" />
    <property role="3GE5qa" value="fbnetwork.connections" />
    <property role="TrG5h" value="Source" />
  </node>
  <node concept="PlHQZ" id="37fub3vlApU">
    <property role="EcuMT" value="3589220129094133370" />
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <property role="TrG5h" value="DataDestination" />
    <node concept="PrWs8" id="37fub3vlApV" role="PrDN$">
      <ref role="PrY4T" node="4KieeRVlhj7" resolve="Destination" />
    </node>
  </node>
  <node concept="PlHQZ" id="37fub3vlA5G">
    <property role="EcuMT" value="3589220129094132076" />
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <property role="TrG5h" value="DataSource" />
    <node concept="PrWs8" id="37fub3vlApS" role="PrDN$">
      <ref role="PrY4T" node="37fub3vlApO" resolve="Source" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vlAqp">
    <property role="EcuMT" value="3589220129094133401" />
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <property role="TrG5h" value="ComponentDataSource" />
    <ref role="1TJDcQ" node="PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="PrWs8" id="37fub3vlAqq" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlA5G" resolve="DataSource" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vlCZn">
    <property role="EcuMT" value="3589220129094143959" />
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <property role="TrG5h" value="ComponentDataDestination" />
    <ref role="1TJDcQ" node="PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="PrWs8" id="37fub3vlCZo" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlApU" resolve="DataDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vlDyx">
    <property role="EcuMT" value="3589220129094146209" />
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <property role="TrG5h" value="ContextDataEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="37fub3vlDyy" role="1TKVEi">
      <property role="IQ2ns" value="3589220129094146210" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vndep">
    <property role="EcuMT" value="3589220129094554521" />
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <property role="TrG5h" value="ContextDataSource" />
    <ref role="1TJDcQ" node="37fub3vlDyx" resolve="ContextDataEndpoint" />
    <node concept="PrWs8" id="37fub3vndeq" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlA5G" resolve="DataSource" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vnkIr">
    <property role="EcuMT" value="3589220129094585243" />
    <property role="3GE5qa" value="fbnetwork.connections.data" />
    <property role="TrG5h" value="ContextDataDestination" />
    <ref role="1TJDcQ" node="37fub3vlDyx" resolve="ContextDataEndpoint" />
    <node concept="PrWs8" id="37fub3vnkIu" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlApU" resolve="DataDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfIPeN">
    <property role="EcuMT" value="8167217573767369651" />
    <property role="3GE5qa" value="fbnetwork.connections.adapter" />
    <property role="TrG5h" value="FBSocketReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="75nMhMfIPvb" role="1TKVEi">
      <property role="IQ2ns" value="8167217573767370699" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="functionBlock" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="PI_pXYugbu" resolve="FunctionBlockInstance" />
    </node>
    <node concept="1TJgyj" id="75nMhMfIPvd" role="1TKVEi">
      <property role="IQ2ns" value="8167217573767370701" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="37fub3vjRJq" resolve="SocketDeclaration" />
    </node>
    <node concept="PrWs8" id="5L1OxDul484" role="PzmwI">
      <ref role="PrY4T" node="4KieeRVlhj7" resolve="Destination" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfIWAT">
    <property role="EcuMT" value="8167217573767399865" />
    <property role="3GE5qa" value="fbnetwork.connections.adapter" />
    <property role="TrG5h" value="FBPlugReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="75nMhMfIWAY" role="1TKVEi">
      <property role="IQ2ns" value="8167217573767399870" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="functionBlock" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="PI_pXYugbu" resolve="FunctionBlockInstance" />
    </node>
    <node concept="1TJgyj" id="75nMhMfIWB0" role="1TKVEi">
      <property role="IQ2ns" value="8167217573767399872" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="37fub3vk1KP" resolve="PlugDeclaration" />
    </node>
    <node concept="PrWs8" id="5L1OxDul48j" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlApO" resolve="Source" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfMSWC">
    <property role="EcuMT" value="8167217573768433448" />
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <property role="TrG5h" value="ComponentEventSource" />
    <ref role="1TJDcQ" node="PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="PrWs8" id="75nMhMfODmh" role="PzmwI">
      <ref role="PrY4T" node="75nMhMfMSWD" resolve="EventSource" />
    </node>
  </node>
  <node concept="PlHQZ" id="75nMhMfMSWD">
    <property role="EcuMT" value="8167217573768433449" />
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <property role="TrG5h" value="EventSource" />
    <node concept="PrWs8" id="75nMhMfMSWE" role="PrDN$">
      <ref role="PrY4T" node="37fub3vlApO" resolve="Source" />
    </node>
  </node>
  <node concept="PlHQZ" id="75nMhMfMSWG">
    <property role="EcuMT" value="8167217573768433452" />
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <property role="TrG5h" value="EventDestination" />
    <node concept="PrWs8" id="75nMhMfMSWH" role="PrDN$">
      <ref role="PrY4T" node="4KieeRVlhj7" resolve="Destination" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfOWeM">
    <property role="EcuMT" value="8167217573768971186" />
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <property role="TrG5h" value="ComponentEventDestination" />
    <ref role="1TJDcQ" node="PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="PrWs8" id="75nMhMfOWeN" role="PzmwI">
      <ref role="PrY4T" node="75nMhMfMSWG" resolve="EventDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfQOtH">
    <property role="EcuMT" value="8167217573769463661" />
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <property role="TrG5h" value="ContextEventEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="75nMhMfQOtI" role="1TKVEi">
      <property role="IQ2ns" value="8167217573769463662" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfSATx">
    <property role="EcuMT" value="8167217573769932385" />
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <property role="TrG5h" value="ContextEventSource" />
    <ref role="1TJDcQ" node="75nMhMfQOtH" resolve="ContextEventEndpoint" />
    <node concept="PrWs8" id="75nMhMfSB9T" role="PzmwI">
      <ref role="PrY4T" node="75nMhMfMSWD" resolve="EventSource" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfSBN9">
    <property role="EcuMT" value="8167217573769936073" />
    <property role="3GE5qa" value="fbnetwork.connections.event" />
    <property role="TrG5h" value="ContextEventDestination" />
    <ref role="1TJDcQ" node="75nMhMfQOtH" resolve="ContextEventEndpoint" />
    <node concept="PrWs8" id="75nMhMggoBX" role="PzmwI">
      <ref role="PrY4T" node="75nMhMfMSWG" resolve="EventDestination" />
    </node>
  </node>
  <node concept="PlHQZ" id="5L1OxDukYbT">
    <property role="EcuMT" value="6647825535669101305" />
    <property role="3GE5qa" value="fbnetwork" />
    <property role="TrG5h" value="IComponent" />
  </node>
  <node concept="1TIwiD" id="5L1OxDukYhj">
    <property role="EcuMT" value="6647825535669101651" />
    <property role="3GE5qa" value="fbnetwork" />
    <property role="TrG5h" value="ComponentReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5L1OxDukYhk" role="1TKVEi">
      <property role="IQ2ns" value="6647825535669101652" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5L1OxDukYbT" resolve="IComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHjKhl7">
    <property role="EcuMT" value="2693352324616754503" />
    <property role="TrG5h" value="ResourceType" />
    <property role="3GE5qa" value="resources" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="resource type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2lwHqHjNQ73" role="1TKVEi">
      <property role="IQ2ns" value="2693352324617691587" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
    <node concept="1TJgyj" id="2lwHqHjRwSo" role="1TKVEi">
      <property role="IQ2ns" value="2693352324618653208" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="instantiableFBTypes" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2lwHqHjRwSl" resolve="FBTypeReference" />
    </node>
    <node concept="PrWs8" id="2lwHqHjNQ75" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2lwHqHkn6us" role="PzmwI">
      <ref role="PrY4T" node="2lwHqHjRxfO" resolve="IWithFBNetwork" />
    </node>
    <node concept="1irR5M" id="2lwHqHkp4wV" role="rwd14">
      <property role="2$rrk2" value="4" />
      <node concept="1irR9n" id="2lwHqHkp4x3" role="1irR9h">
        <node concept="3PKj8D" id="2lwHqHkp4x7" role="3PKjn_">
          <property role="3PKj8l" value="8FBC8F" />
        </node>
      </node>
      <node concept="1irPie" id="2lwHqHkp4xe" role="1irR9h">
        <property role="1irPi9" value="R" />
        <node concept="3PKj8D" id="2lwHqHkp4xl" role="3PKjny">
          <property role="3PKj8l" value="EEEEEE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHjKhl9">
    <property role="EcuMT" value="2693352324616754505" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="Literal" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="3HBlKeoZ0X9" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="2lwHqHjKhla">
    <property role="EcuMT" value="2693352324616754506" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="BooleanLiteral" />
    <ref role="1TJDcQ" node="2lwHqHjKhl9" resolve="Literal" />
    <node concept="1TJgyi" id="2lwHqHjKyOE" role="1TKVEl">
      <property role="IQ2nx" value="2693352324616826154" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHjKhle">
    <property role="EcuMT" value="2693352324616754510" />
    <property role="3GE5qa" value="datatypes" />
    <property role="TrG5h" value="StringType" />
    <property role="34LRSv" value="STRING" />
    <ref role="1TJDcQ" node="3HBlKeoYKVW" resolve="DataType" />
  </node>
  <node concept="1TIwiD" id="2lwHqHjKxV$">
    <property role="EcuMT" value="2693352324616822500" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="StringLiteral" />
    <property role="34LRSv" value="&quot;" />
    <ref role="1TJDcQ" node="2lwHqHjKhl9" resolve="Literal" />
    <node concept="1TJgyi" id="2lwHqHjKxV_" role="1TKVEl">
      <property role="IQ2nx" value="2693352324616822501" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHjRwSl">
    <property role="EcuMT" value="2693352324618653205" />
    <property role="3GE5qa" value="resources" />
    <property role="TrG5h" value="FBTypeReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2lwHqHjRwSm" role="1TKVEi">
      <property role="IQ2ns" value="2693352324618653206" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="delcaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="2lwHqHjRxfO">
    <property role="EcuMT" value="2693352324618654708" />
    <property role="TrG5h" value="IWithFBNetwork" />
    <property role="3GE5qa" value="fbnetwork" />
    <node concept="1TJgyj" id="PI_pXYus4x" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482529" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="functionBlocks" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="PI_pXYugbu" resolve="FunctionBlockInstance" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus4D" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482537" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="eventConnections" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="PI_pXYugcd" resolve="EventConnection" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus4$" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482532" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="dataConnections" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="PI_pXYugcm" resolve="DataConnection" />
    </node>
    <node concept="1TJgyj" id="37fub3vlA5v" role="1TKVEi">
      <property role="IQ2ns" value="3589220129094132063" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="adapterConnections" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="37fub3vlA5$" resolve="AdapterConnection" />
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHkyEL8">
    <property role="EcuMT" value="2693352324629965896" />
    <property role="TrG5h" value="DeviceType" />
    <property role="34LRSv" value="device type" />
    <property role="3GE5qa" value="devices" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2lwHqHkyEL9" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2lwHqHkyELg" role="PzmwI">
      <ref role="PrY4T" node="2lwHqHjRxfO" resolve="IWithFBNetwork" />
    </node>
    <node concept="1TJgyj" id="2lwHqHkyELb" role="1TKVEi">
      <property role="IQ2ns" value="2693352324629965899" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
    <node concept="1TJgyj" id="2lwHqHk$uBA" role="1TKVEi">
      <property role="IQ2ns" value="2693352324630440422" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="resources" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2lwHqHkyELo" resolve="ResourceInstance" />
    </node>
    <node concept="1irR5M" id="2lwHqHkAgDq" role="rwd14">
      <property role="2$rrk2" value="5" />
      <node concept="1irR9n" id="2lwHqHkAgDv" role="1irR9h">
        <node concept="3PKj8D" id="2lwHqHkAgDw" role="3PKjn_">
          <property role="3PKj8l" value="8FBC8F" />
        </node>
      </node>
      <node concept="1irPie" id="2lwHqHkAgDx" role="1irR9h">
        <property role="1irPi9" value="D" />
        <node concept="3PKj8D" id="2lwHqHkAgDy" role="3PKjny">
          <property role="3PKj8l" value="EEEEEE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHkyELo">
    <property role="EcuMT" value="2693352324629965912" />
    <property role="3GE5qa" value="resources" />
    <property role="TrG5h" value="ResourceInstance" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2lwHqHkyELp" role="1TKVEi">
      <property role="IQ2ns" value="2693352324629965913" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2lwHqHjKhl7" resolve="ResourceType" />
    </node>
    <node concept="PrWs8" id="2lwHqHkyELr" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2lwHqHk$fu0" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="PrWs8" id="2lwHqHk$vad" role="PzmwI">
      <ref role="PrY4T" node="2lwHqHjRxfO" resolve="IWithFBNetwork" />
    </node>
    <node concept="1TJgyj" id="2lwHqHk$ftU" role="1TKVEi">
      <property role="IQ2ns" value="2693352324630378362" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2lwHqHkyF7a" resolve="Parameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHkyF7a">
    <property role="EcuMT" value="2693352324629967306" />
    <property role="TrG5h" value="Parameter" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2lwHqHkyF7b" role="1TKVEi">
      <property role="IQ2ns" value="2693352324629967307" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="decl" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="VariableDeclaration" />
    </node>
    <node concept="1TJgyj" id="2lwHqHkyF7f" role="1TKVEi">
      <property role="IQ2ns" value="2693352324629967311" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2lwHqHjKhl9" resolve="Literal" />
    </node>
  </node>
</model>

