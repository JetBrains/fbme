<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(org.fbme.ide.st.lang.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="2756621024541341363" name="file" index="1iqoE4" />
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
    <property role="34LRSv" value="function block type" />
    <ref role="1TJDcQ" node="uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
  </node>
  <node concept="1TIwiD" id="3HBlKeoYsiA">
    <property role="EcuMT" value="4280485643801969830" />
    <property role="TrG5h" value="EventDeclaration" />
    <property role="34LRSv" value="event" />
    <property role="3GE5qa" value="interface" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoYsiZ" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969855" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="associatedVariables" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiT" resolve="EventAssociation" />
    </node>
    <node concept="PrWs8" id="3HBlKeoYsiR" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoYsiC">
    <property role="EcuMT" value="4280485643801969832" />
    <property role="TrG5h" value="ParameterDeclaration" />
    <property role="3GE5qa" value="interface" />
    <ref role="1TJDcQ" to="gpgy:7GyesCpa3Ox" resolve="VariableDeclaration" />
    <node concept="1TJgyj" id="3HBlKeoYM6s" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802059164" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="gpgy:3HBlKeoYKVW" resolve="DataType" />
    </node>
    <node concept="1TJgyj" id="2lwHqHks4d2" role="1TKVEi">
      <property role="IQ2ns" value="2693352324628235074" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initialValue" />
      <ref role="20lvS9" to="gpgy:2lwHqHjKhl9" resolve="Literal" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoYsiT">
    <property role="EcuMT" value="4280485643801969849" />
    <property role="TrG5h" value="EventAssociation" />
    <property role="3GE5qa" value="interface" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3HBlKeoYsiU" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969850" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
    <node concept="RPilO" id="3HBlKeoYKUU" role="lGtFl">
      <ref role="RPilL" node="3HBlKeoYsiU" resolve="declaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoYsj1">
    <property role="EcuMT" value="4280485643801969857" />
    <property role="TrG5h" value="BasicFBTypeDeclaration" />
    <property role="34LRSv" value="basic function block type" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    <node concept="1TJgyj" id="3HBlKeoZ0WV" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802119995" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="algorithms" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZ0WX" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802119997" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="states" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="3HBlKeoZ0Un" resolve="StateDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZ0X_" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802120037" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="transitions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoZ0Up" resolve="StateTransition" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoYFAL" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802032561" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="internalVariables" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
    <node concept="PrWs8" id="7GyesCpjDrV" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1QGGSu" id="4dW98DtmzF5" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/iec61499/lang/structure/basic_fb.svg" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZ0Un">
    <property role="EcuMT" value="4280485643802119831" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="StateDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5jb5jNC67p4" role="1TKVEi">
      <property role="IQ2ns" value="6110000670794348100" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5fP$Xwj3irJ" resolve="Position" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZ0VN" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802119923" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
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
      <property role="20kJfa" value="algorithm" />
      <ref role="20lvS9" node="3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
    </node>
    <node concept="1TJgyj" id="2R0WzquVuy5" role="1TKVEi">
      <property role="IQ2ns" value="3296901243643750533" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="event" />
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
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20kJfa" value="sourceState" />
      <ref role="20lvS9" node="3HBlKeoZ0Un" resolve="StateDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZ0X2" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802120002" />
      <property role="20kJfa" value="targetState" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3HBlKeoZ0Un" resolve="StateDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoZaIs" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802160028" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6g3sTReV9I2" resolve="TransitionCondition" />
    </node>
    <node concept="1TJgyj" id="5jb5jNCauI2" role="1TKVEi">
      <property role="IQ2ns" value="6110000670795492226" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5fP$Xwj3irJ" resolve="Position" />
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
    <node concept="PrWs8" id="7eg14Ye25df" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="1zB5ET5xzpJ" role="1TKVEi">
      <property role="IQ2ns" value="1794427914276976239" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1zB5ET5xzpM" resolve="AlgorithmBody" />
    </node>
    <node concept="1TJgyj" id="5tgPFZSaxk4" role="1TKVEi">
      <property role="IQ2ns" value="6291764799427187972" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="temporaryVariables" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3HBlKeoZeH4">
    <property role="EcuMT" value="4280485643802176324" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="InputEventGuard" />
    <ref role="1TJDcQ" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
    <node concept="1TJgyj" id="3HBlKeoZeH5" role="1TKVEi">
      <property role="IQ2ns" value="4280485643802176325" />
      <property role="20kJfa" value="inputEvent" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugbt">
    <property role="EcuMT" value="967875482185433821" />
    <property role="TrG5h" value="CompositeFBTypeDeclaration" />
    <property role="34LRSv" value="composite function block type" />
    <property role="3GE5qa" value="fbtype.composite" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    <node concept="PrWs8" id="2lwHqHjRxfS" role="PzmwI">
      <ref role="PrY4T" node="2lwHqHjRxfO" resolve="IWithFBNetwork" />
    </node>
    <node concept="1QGGSu" id="6wZrrvDn9Xt" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/iec61499/lang/structure/composite_fb.svg" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugbu">
    <property role="EcuMT" value="967875482185433822" />
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="FunctionBlockDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYugbv" role="1TKVEi">
      <property role="IQ2ns" value="967875482185433823" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20kJfa" value="type" />
      <ref role="20lvS9" node="3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    </node>
    <node concept="PrWs8" id="PI_pXYus3I" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="uLhTRQXviI" role="PzmwI">
      <ref role="PrY4T" node="uLhTRQXdkL" resolve="IComponentWithAdapters" />
    </node>
    <node concept="PrWs8" id="5HzRr7EFlw1" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="3IX4BsKatOx" role="1TKVEi">
      <property role="IQ2ns" value="4304617121954520353" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5fP$Xwj3irJ" resolve="Position" />
    </node>
    <node concept="1TJgyj" id="5HzRr7EFlvw" role="1TKVEi">
      <property role="IQ2ns" value="6585350836361975776" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2lwHqHkyF7a" resolve="ParameterAssignment" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugcd">
    <property role="EcuMT" value="967875482185433869" />
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="EventConnection" />
    <ref role="1TJDcQ" node="4KieeRVlhii" resolve="Connection" />
    <node concept="1TJgyj" id="PI_pXYus2F" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482411" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20ksaX" node="4KieeRVlhj5" resolve="source" />
      <ref role="20lvS9" node="75nMhMfMSWD" resolve="EventSource" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus2M" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482418" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="destination" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20ksaX" node="4KieeRVlhj8" resolve="destination" />
      <ref role="20lvS9" node="75nMhMfMSWG" resolve="EventDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYugcm">
    <property role="EcuMT" value="967875482185433878" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="DataConnection" />
    <ref role="1TJDcQ" node="4KieeRVlhii" resolve="Connection" />
    <node concept="1TJgyj" id="PI_pXYus41" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482497" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20ksaX" node="4KieeRVlhj5" resolve="source" />
      <ref role="20lvS9" node="37fub3vlA5G" resolve="DataSource" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus48" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482504" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="destination" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20ksaX" node="4KieeRVlhj8" resolve="destination" />
      <ref role="20lvS9" node="37fub3vlApU" resolve="DataDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYus3W">
    <property role="EcuMT" value="967875482185482492" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="ComponentDataEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="6z_cCa7NbTh" resolve="ComponentEndpoint" />
    <node concept="1TJgyj" id="PI_pXYus3O" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482484" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="PI_pXYus4l">
    <property role="EcuMT" value="967875482185482517" />
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="ComponentEventEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="6z_cCa7NbTh" resolve="ComponentEndpoint" />
    <node concept="1TJgyj" id="PI_pXYus4s" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482524" />
      <property role="20lbJX" value="fLJekj4/_1" />
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
    <property role="3GE5qa" value="network.connections" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4KieeRVlhj5" role="1TKVEi">
      <property role="IQ2ns" value="5481506291238376645" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="37fub3vlApO" resolve="Source" />
    </node>
    <node concept="1TJgyj" id="4KieeRVlhj8" role="1TKVEi">
      <property role="IQ2ns" value="5481506291238376648" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="destination" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4KieeRVlhj7" resolve="Destination" />
    </node>
    <node concept="1TJgyj" id="3IX4BsKqy6J" role="1TKVEi">
      <property role="IQ2ns" value="4304617121958732207" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="path" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3IX4BsKohXi" resolve="ConnectionPath" />
    </node>
  </node>
  <node concept="PlHQZ" id="4KieeRVlhj7">
    <property role="EcuMT" value="5481506291238376647" />
    <property role="TrG5h" value="Destination" />
    <property role="3GE5qa" value="network.connections" />
    <node concept="PrWs8" id="6z_cCa7Nl5i" role="PrDN$">
      <ref role="PrY4T" node="6z_cCa7Nl5h" resolve="Endpoint" />
    </node>
  </node>
  <node concept="1TIwiD" id="6g3sTReV9I2">
    <property role="EcuMT" value="7206730950341598082" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="TransitionCondition" />
    <property role="34LRSv" value="1" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6g3sTReV9QU" role="1TKVEi">
      <property role="IQ2ns" value="7206730950341598650" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="guardCondition" />
      <ref role="20lvS9" to="gpgy:3HBlKeoZ0X9" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2R0WzquNT6X" role="1TKVEi">
      <property role="IQ2ns" value="3296901243641762237" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="event" />
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
    <node concept="1TJgyj" id="7GyesCpcgqN" role="1TKVEi">
      <property role="IQ2ns" value="8872717756042118835" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="gpgy:7GyesCp9TmT" resolve="StatementList" />
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
    <node concept="PrWs8" id="4s7KBSjc3Pd" role="PzmwI">
      <ref role="PrY4T" node="4s7KBSjc3Il" resolve="IContext" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoYsix" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969825" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="inputEvents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoYsiz" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969827" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="outputEvents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoYsiE" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969834" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="inputVariables" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="3HBlKeoYsiI" role="1TKVEi">
      <property role="IQ2ns" value="4280485643801969838" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="outputVariables" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="2ByE74knc65">
    <property role="EcuMT" value="3018159903918047621" />
    <property role="TrG5h" value="AdapterTypeDeclaration" />
    <property role="34LRSv" value="adapter type" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="adapter" />
    <ref role="1TJDcQ" node="2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="1QGGSu" id="4dW98DtmzF9" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/iec61499/lang/structure/adapter.svg" />
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
      <property role="20kJfa" value="adapterType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2ByE74knc65" resolve="AdapterTypeDeclaration" />
    </node>
    <node concept="PrWs8" id="37fub3vjRJr" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="5L1OxDuoC0u" role="PzmwI">
      <ref role="PrY4T" node="5L1OxDukYbT" resolve="IComponent" />
    </node>
    <node concept="1TJgyj" id="6LU90BOcpSo" role="1TKVEi">
      <property role="IQ2ns" value="7816599728425115160" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5fP$Xwj3irJ" resolve="Position" />
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
      <property role="20kJfa" value="adapterType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2ByE74knc65" resolve="AdapterTypeDeclaration" />
    </node>
    <node concept="PrWs8" id="37fub3vk1KQ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="5L1OxDuoomo" role="PzmwI">
      <ref role="PrY4T" node="5L1OxDukYbT" resolve="IComponent" />
    </node>
    <node concept="1TJgyj" id="6LU90BOchbE" role="1TKVEi">
      <property role="IQ2ns" value="7816599728425079530" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5fP$Xwj3irJ" resolve="Position" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vlA5$">
    <property role="EcuMT" value="3589220129094132068" />
    <property role="3GE5qa" value="network.connections.adapter" />
    <property role="TrG5h" value="AdapterConnection" />
    <ref role="1TJDcQ" node="4KieeRVlhii" resolve="Connection" />
    <node concept="1TJgyj" id="37fub3vlA5_" role="1TKVEi">
      <property role="IQ2ns" value="3589220129094132069" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="source" />
      <ref role="20ksaX" node="4KieeRVlhj5" resolve="source" />
      <ref role="20lvS9" node="75nMhMfIWAT" resolve="FBPlugReference" />
    </node>
    <node concept="1TJgyj" id="37fub3vlDzP" role="1TKVEi">
      <property role="IQ2ns" value="3589220129094146293" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20kJfa" value="destination" />
      <ref role="20ksaX" node="4KieeRVlhj8" resolve="destination" />
      <ref role="20lvS9" node="75nMhMfIPeN" resolve="FBSocketReference" />
    </node>
  </node>
  <node concept="PlHQZ" id="37fub3vlApO">
    <property role="EcuMT" value="3589220129094133364" />
    <property role="3GE5qa" value="network.connections" />
    <property role="TrG5h" value="Source" />
    <node concept="PrWs8" id="6z_cCa7Nl5k" role="PrDN$">
      <ref role="PrY4T" node="6z_cCa7Nl5h" resolve="Endpoint" />
    </node>
  </node>
  <node concept="PlHQZ" id="37fub3vlApU">
    <property role="EcuMT" value="3589220129094133370" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="DataDestination" />
    <node concept="PrWs8" id="37fub3vlApV" role="PrDN$">
      <ref role="PrY4T" node="4KieeRVlhj7" resolve="Destination" />
    </node>
  </node>
  <node concept="PlHQZ" id="37fub3vlA5G">
    <property role="EcuMT" value="3589220129094132076" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="DataSource" />
    <node concept="PrWs8" id="37fub3vlApS" role="PrDN$">
      <ref role="PrY4T" node="37fub3vlApO" resolve="Source" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vlAqp">
    <property role="EcuMT" value="3589220129094133401" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="ComponentDataSource" />
    <ref role="1TJDcQ" node="PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="PrWs8" id="37fub3vlAqq" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlA5G" resolve="DataSource" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vlCZn">
    <property role="EcuMT" value="3589220129094143959" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="ComponentDataDestination" />
    <ref role="1TJDcQ" node="PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="PrWs8" id="37fub3vlCZo" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlApU" resolve="DataDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vlDyx">
    <property role="EcuMT" value="3589220129094146209" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="ContextDataEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="6z_cCa7NnvN" resolve="ContextEndpoint" />
    <node concept="1TJgyj" id="37fub3vlDyy" role="1TKVEi">
      <property role="IQ2ns" value="3589220129094146210" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vndep">
    <property role="EcuMT" value="3589220129094554521" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="ContextDataSource" />
    <ref role="1TJDcQ" node="37fub3vlDyx" resolve="ContextDataEndpoint" />
    <node concept="PrWs8" id="37fub3vndeq" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlA5G" resolve="DataSource" />
    </node>
  </node>
  <node concept="1TIwiD" id="37fub3vnkIr">
    <property role="EcuMT" value="3589220129094585243" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="ContextDataDestination" />
    <ref role="1TJDcQ" node="37fub3vlDyx" resolve="ContextDataEndpoint" />
    <node concept="PrWs8" id="37fub3vnkIu" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlApU" resolve="DataDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfIPeN">
    <property role="EcuMT" value="8167217573767369651" />
    <property role="3GE5qa" value="network.connections.adapter" />
    <property role="TrG5h" value="FBSocketReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="75nMhMfIPvb" role="1TKVEi">
      <property role="IQ2ns" value="8167217573767370699" />
      <property role="20kJfa" value="component" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRQXdkL" resolve="IComponentWithAdapters" />
    </node>
    <node concept="1TJgyj" id="75nMhMfIPvd" role="1TKVEi">
      <property role="IQ2ns" value="8167217573767370701" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="37fub3vjRJq" resolve="SocketDeclaration" />
    </node>
    <node concept="PrWs8" id="5L1OxDul484" role="PzmwI">
      <ref role="PrY4T" node="4KieeRVlhj7" resolve="Destination" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfIWAT">
    <property role="EcuMT" value="8167217573767399865" />
    <property role="3GE5qa" value="network.connections.adapter" />
    <property role="TrG5h" value="FBPlugReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="75nMhMfIWAY" role="1TKVEi">
      <property role="IQ2ns" value="8167217573767399870" />
      <property role="20kJfa" value="component" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRQXdkL" resolve="IComponentWithAdapters" />
    </node>
    <node concept="1TJgyj" id="75nMhMfIWB0" role="1TKVEi">
      <property role="IQ2ns" value="8167217573767399872" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="37fub3vk1KP" resolve="PlugDeclaration" />
    </node>
    <node concept="PrWs8" id="5L1OxDul48j" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlApO" resolve="Source" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfMSWC">
    <property role="EcuMT" value="8167217573768433448" />
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="ComponentEventSource" />
    <ref role="1TJDcQ" node="PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="PrWs8" id="75nMhMfODmh" role="PzmwI">
      <ref role="PrY4T" node="75nMhMfMSWD" resolve="EventSource" />
    </node>
  </node>
  <node concept="PlHQZ" id="75nMhMfMSWD">
    <property role="EcuMT" value="8167217573768433449" />
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="EventSource" />
    <node concept="PrWs8" id="75nMhMfMSWE" role="PrDN$">
      <ref role="PrY4T" node="37fub3vlApO" resolve="Source" />
    </node>
  </node>
  <node concept="PlHQZ" id="75nMhMfMSWG">
    <property role="EcuMT" value="8167217573768433452" />
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="EventDestination" />
    <node concept="PrWs8" id="75nMhMfMSWH" role="PrDN$">
      <ref role="PrY4T" node="4KieeRVlhj7" resolve="Destination" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfOWeM">
    <property role="EcuMT" value="8167217573768971186" />
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="ComponentEventDestination" />
    <ref role="1TJDcQ" node="PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="PrWs8" id="75nMhMfOWeN" role="PzmwI">
      <ref role="PrY4T" node="75nMhMfMSWG" resolve="EventDestination" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfQOtH">
    <property role="EcuMT" value="8167217573769463661" />
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="ContextEventEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="6z_cCa7NnvN" resolve="ContextEndpoint" />
    <node concept="1TJgyj" id="75nMhMfQOtI" role="1TKVEi">
      <property role="IQ2ns" value="8167217573769463662" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3HBlKeoYsiA" resolve="EventDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfSATx">
    <property role="EcuMT" value="8167217573769932385" />
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="ContextEventSource" />
    <ref role="1TJDcQ" node="75nMhMfQOtH" resolve="ContextEventEndpoint" />
    <node concept="PrWs8" id="75nMhMfSB9T" role="PzmwI">
      <ref role="PrY4T" node="75nMhMfMSWD" resolve="EventSource" />
    </node>
  </node>
  <node concept="1TIwiD" id="75nMhMfSBN9">
    <property role="EcuMT" value="8167217573769936073" />
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="ContextEventDestination" />
    <ref role="1TJDcQ" node="75nMhMfQOtH" resolve="ContextEventEndpoint" />
    <node concept="PrWs8" id="75nMhMggoBX" role="PzmwI">
      <ref role="PrY4T" node="75nMhMfMSWG" resolve="EventDestination" />
    </node>
  </node>
  <node concept="PlHQZ" id="5L1OxDukYbT">
    <property role="EcuMT" value="6647825535669101305" />
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="IComponent" />
  </node>
  <node concept="1TIwiD" id="2lwHqHjKhl7">
    <property role="EcuMT" value="2693352324616754503" />
    <property role="TrG5h" value="ResourceTypeDeclaration" />
    <property role="3GE5qa" value="resources" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="resource type" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2lwHqHjNQ73" role="1TKVEi">
      <property role="IQ2ns" value="2693352324617691587" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="2lwHqHjRwSo" role="1TKVEi">
      <property role="IQ2ns" value="2693352324618653208" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="instantiableFBTypes" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2lwHqHjRwSl" resolve="FBTypeReference" />
    </node>
    <node concept="PrWs8" id="2lwHqHjNQ75" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2lwHqHkn6us" role="PzmwI">
      <ref role="PrY4T" node="2lwHqHjRxfO" resolve="IWithFBNetwork" />
    </node>
    <node concept="1QGGSu" id="4dW98Dtm$7t" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/iec61499/lang/structure/resource.svg" />
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHjRwSl">
    <property role="EcuMT" value="2693352324618653205" />
    <property role="3GE5qa" value="fbtype" />
    <property role="TrG5h" value="FBTypeReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2lwHqHjRwSm" role="1TKVEi">
      <property role="IQ2ns" value="2693352324618653206" />
      <property role="20kJfa" value="declaration" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="2lwHqHjRxfO">
    <property role="EcuMT" value="2693352324618654708" />
    <property role="TrG5h" value="IWithFBNetwork" />
    <property role="3GE5qa" value="network.fb" />
    <node concept="1TJgyj" id="PI_pXYus4x" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482529" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="functionBlocks" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="PI_pXYugbu" resolve="FunctionBlockDeclaration" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus4D" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482537" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="eventConnections" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="PI_pXYugcd" resolve="EventConnection" />
    </node>
    <node concept="1TJgyj" id="PI_pXYus4$" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482532" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dataConnections" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="PI_pXYugcm" resolve="DataConnection" />
    </node>
    <node concept="1TJgyj" id="37fub3vlA5v" role="1TKVEi">
      <property role="IQ2ns" value="3589220129094132063" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="adapterConnections" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="37fub3vlA5$" resolve="AdapterConnection" />
    </node>
    <node concept="1TJgyj" id="7VgNZDXJvWy" role="1TKVEi">
      <property role="IQ2ns" value="9138032318693113634" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="endpointCoordinates" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1fUwyp9CzsN" resolve="EndpointCoordinate" />
    </node>
    <node concept="PrWs8" id="4s7KBSjc3IU" role="PrDN$">
      <ref role="PrY4T" node="4s7KBSjc3Il" resolve="IContext" />
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHkyEL8">
    <property role="EcuMT" value="2693352324629965896" />
    <property role="TrG5h" value="DeviceTypeDeclaration" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="2lwHqHk$uBA" role="1TKVEi">
      <property role="IQ2ns" value="2693352324630440422" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="resources" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2lwHqHkyELo" resolve="ResourceDeclaration" />
    </node>
    <node concept="1TJgyj" id="1WTKUmKKVQc" role="1TKVEi">
      <property role="IQ2ns" value="2250044605250911628" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="instantiableResourceTypes" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1WTKUmKKVQg" resolve="ResourceTypeReference" />
    </node>
    <node concept="1QGGSu" id="4dW98Dtm$zH" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/iec61499/lang/structure/device.svg" />
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHkyELo">
    <property role="EcuMT" value="2693352324629965912" />
    <property role="3GE5qa" value="resources" />
    <property role="TrG5h" value="ResourceDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2lwHqHkyELp" role="1TKVEi">
      <property role="IQ2ns" value="2693352324629965913" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
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
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2lwHqHkyF7a" resolve="ParameterAssignment" />
    </node>
  </node>
  <node concept="1TIwiD" id="2lwHqHkyF7a">
    <property role="EcuMT" value="2693352324629967306" />
    <property role="TrG5h" value="ParameterAssignment" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2lwHqHkyF7b" role="1TKVEi">
      <property role="IQ2ns" value="2693352324629967307" />
      <property role="20kJfa" value="decl" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
    <node concept="1TJgyj" id="2lwHqHkyF7f" role="1TKVEi">
      <property role="IQ2ns" value="2693352324629967311" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="gpgy:2lwHqHjKhl9" resolve="Literal" />
    </node>
  </node>
  <node concept="1TIwiD" id="1WTKUmKKVPy">
    <property role="EcuMT" value="2250044605250911586" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="DeviceDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="fshQXbRNVN" role="1TKVEi">
      <property role="IQ2ns" value="278175820329991923" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2lwHqHkyF7a" resolve="ParameterAssignment" />
    </node>
    <node concept="1TJgyj" id="1WTKUmKKVPK" role="1TKVEi">
      <property role="IQ2ns" value="2250044605250911600" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="resources" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2lwHqHkyELo" resolve="ResourceDeclaration" />
    </node>
    <node concept="1TJgyj" id="1WTKUmKKVP_" role="1TKVEi">
      <property role="IQ2ns" value="2250044605250911589" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
    </node>
    <node concept="PrWs8" id="1WTKUmKKVPB" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="1WTKUmKKVPG" role="PzmwI">
      <ref role="PrY4T" node="2lwHqHjRxfO" resolve="IWithFBNetwork" />
    </node>
    <node concept="PrWs8" id="fshQXbRNW9" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="1WTKUmKKVQg">
    <property role="EcuMT" value="2250044605250911632" />
    <property role="3GE5qa" value="resources" />
    <property role="TrG5h" value="ResourceTypeReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1WTKUmKKVQh" role="1TKVEi">
      <property role="IQ2ns" value="2250044605250911633" />
      <property role="20kJfa" value="decl" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="uLhTRQW_B0">
    <property role="EcuMT" value="554302972921797056" />
    <property role="3GE5qa" value="network.subapp" />
    <property role="TrG5h" value="IWithSubappNetwork" />
    <node concept="1TJgyj" id="uLhTRQWVWZ" role="1TKVEi">
      <property role="IQ2ns" value="554302972921888575" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="subapplications" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
    </node>
    <node concept="PrWs8" id="uLhTRQW_B1" role="PrDN$">
      <ref role="PrY4T" node="2lwHqHjRxfO" resolve="IWithFBNetwork" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRQWVWQ">
    <property role="EcuMT" value="554302972921888566" />
    <property role="3GE5qa" value="network.subapp" />
    <property role="TrG5h" value="SubapplicationDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7oJsd9x2gq9" role="1TKVEi">
      <property role="IQ2ns" value="8516149469254321801" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5fP$Xwj3irJ" resolve="Position" />
    </node>
    <node concept="1TJgyj" id="uLhTRQWVWR" role="1TKVEi">
      <property role="IQ2ns" value="554302972921888567" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
    </node>
    <node concept="PrWs8" id="uLhTRQWVX4" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="uLhTRQXviE" role="PzmwI">
      <ref role="PrY4T" node="uLhTRQXdkL" resolve="IComponentWithAdapters" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRQWVWT">
    <property role="EcuMT" value="554302972921888569" />
    <property role="TrG5h" value="SubapplicationTypeDeclaration" />
    <property role="34LRSv" value="subapplcation type" />
    <property role="3GE5qa" value="subapp" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
    <node concept="PrWs8" id="uLhTRQWVWW" role="PzmwI">
      <ref role="PrY4T" node="uLhTRQW_B0" resolve="IWithSubappNetwork" />
    </node>
    <node concept="1QGGSu" id="4dW98DtmzOB" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/iec61499/lang/structure/subapp.svg" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRQWXSY">
    <property role="EcuMT" value="554302972921896510" />
    <property role="3GE5qa" value="interface" />
    <property role="TrG5h" value="DeclarationWithInterfaceAndAdapters" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="1TJgyj" id="75nMhMfSQR7" role="1TKVEi">
      <property role="IQ2ns" value="8167217573769997767" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="plugs" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="37fub3vk1KP" resolve="PlugDeclaration" />
    </node>
    <node concept="1TJgyj" id="75nMhMfSQRy" role="1TKVEi">
      <property role="IQ2ns" value="8167217573769997794" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sockets" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="37fub3vjRJq" resolve="SocketDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="uLhTRQXdkL">
    <property role="EcuMT" value="554302972921959729" />
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="IComponentWithAdapters" />
    <node concept="PrWs8" id="uLhTRQXeBK" role="PrDN$">
      <ref role="PrY4T" node="5L1OxDukYbT" resolve="IComponent" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRR7Mvw">
    <property role="EcuMT" value="554302972924733408" />
    <property role="TrG5h" value="SystemDeclaration" />
    <property role="34LRSv" value="system configuration" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="system" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="uLhTRR7MVq" role="1TKVEi">
      <property role="IQ2ns" value="554302972924735194" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="applications" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="uLhTRR7MEy" resolve="ApplicationDeclaration" />
    </node>
    <node concept="1TJgyj" id="uLhTRR7MVs" role="1TKVEi">
      <property role="IQ2ns" value="554302972924735196" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="devices" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1WTKUmKKVPy" resolve="DeviceDeclaration" />
    </node>
    <node concept="1TJgyj" id="uLhTRRozfU" role="1TKVEi">
      <property role="IQ2ns" value="554302972929127418" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="mappings" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="uLhTRRmhk4" resolve="Mapping" />
    </node>
    <node concept="1TJgyj" id="5s_pyght$Xg" role="1TKVEi">
      <property role="IQ2ns" value="6279537560535846736" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="segments" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5s_pyghtuNV" resolve="SegmentDeclaration" />
    </node>
    <node concept="1TJgyj" id="5s_pygh_SXc" role="1TKVEi">
      <property role="IQ2ns" value="6279537560538025804" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="links" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5s_pyghzCOb" resolve="Link" />
    </node>
    <node concept="PrWs8" id="uLhTRR7Mvx" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1QGGSu" id="4dW98DtmzFb" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/iec61499/lang/structure/system.svg" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRR7MEy">
    <property role="EcuMT" value="554302972924734114" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="ApplicationDeclaration" />
    <property role="34LRSv" value="application" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="uLhTRR7MEz" role="PzmwI">
      <ref role="PrY4T" node="uLhTRQW_B0" resolve="IWithSubappNetwork" />
    </node>
    <node concept="PrWs8" id="uLhTRR7MER" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRRmhk4">
    <property role="EcuMT" value="554302972928529668" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="Mapping" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="uLhTRRmrej" role="1TKVEi">
      <property role="IQ2ns" value="554302972928570259" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="instance" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
    </node>
    <node concept="1TJgyj" id="uLhTRRmrel" role="1TKVEi">
      <property role="IQ2ns" value="554302972928570261" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="resource" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRRmhk5">
    <property role="EcuMT" value="554302972928529669" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="ApplicationFunctionBlockReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="uLhTRRmrd9" role="1TKVEi">
      <property role="IQ2ns" value="554302972928570185" />
      <property role="20kJfa" value="functionBlock" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="PI_pXYugbu" resolve="FunctionBlockDeclaration" />
    </node>
    <node concept="1TJgyj" id="uLhTRRmrd7" role="1TKVEi">
      <property role="IQ2ns" value="554302972928570183" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="application" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRRmhk6" resolve="ApplicationReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRRmhk6">
    <property role="EcuMT" value="554302972928529670" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="ApplicationReference" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="uLhTRRmhk7">
    <property role="EcuMT" value="554302972928529671" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="SystemApplicationReference" />
    <ref role="1TJDcQ" node="uLhTRRmhk6" resolve="ApplicationReference" />
    <node concept="1TJgyj" id="uLhTRRmhk8" role="1TKVEi">
      <property role="IQ2ns" value="554302972928529672" />
      <property role="20kJfa" value="application" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRR7MEy" resolve="ApplicationDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRRmjJo">
    <property role="EcuMT" value="554302972928539608" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="SubapplicationReference" />
    <ref role="1TJDcQ" node="uLhTRRmhk6" resolve="ApplicationReference" />
    <node concept="1TJgyj" id="uLhTRRmjJr" role="1TKVEi">
      <property role="IQ2ns" value="554302972928539611" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parentApp" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRRmhk6" resolve="ApplicationReference" />
    </node>
    <node concept="1TJgyj" id="uLhTRRmjJx" role="1TKVEi">
      <property role="IQ2ns" value="554302972928539617" />
      <property role="20kJfa" value="subapp" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRRmreo">
    <property role="EcuMT" value="554302972928570264" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="ResourceFunctionBlockReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="uLhTRRtpn2" role="1TKVEi">
      <property role="IQ2ns" value="554302972930397634" />
      <property role="20kJfa" value="functionBlock" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="PI_pXYugbu" resolve="FunctionBlockDeclaration" />
    </node>
    <node concept="1TJgyj" id="uLhTRRtpn0" role="1TKVEi">
      <property role="IQ2ns" value="554302972930397632" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="resource" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRRq_ww" resolve="ResourceReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="uLhTRRq_ww">
    <property role="EcuMT" value="554302972929660960" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="ResourceReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="uLhTRRq_wx" role="1TKVEi">
      <property role="IQ2ns" value="554302972929660961" />
      <property role="20kJfa" value="device" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1WTKUmKKVPy" resolve="DeviceDeclaration" />
    </node>
    <node concept="1TJgyj" id="uLhTRRq_wz" role="1TKVEi">
      <property role="IQ2ns" value="554302972929660963" />
      <property role="20kJfa" value="resource" />
      <ref role="20lvS9" node="2lwHqHkyELo" resolve="ResourceDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="4s7KBSjc3Il">
    <property role="EcuMT" value="5118273348273453973" />
    <property role="3GE5qa" value="interface" />
    <property role="TrG5h" value="IContext" />
  </node>
  <node concept="1TIwiD" id="5s_pyghtjox">
    <property role="EcuMT" value="6279537560535774753" />
    <property role="TrG5h" value="SegmentTypeDeclaration" />
    <property role="34LRSv" value="segment type" />
    <property role="3GE5qa" value="segments" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5s_pyghtjoy" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="5s_pyghtjpo" role="1TKVEi">
      <property role="IQ2ns" value="6279537560535774808" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3HBlKeoYsiC" resolve="ParameterDeclaration" />
    </node>
    <node concept="1QGGSu" id="6wzd0wHTlo1" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/iec61499/lang/structure/segment.svg" />
    </node>
  </node>
  <node concept="1TIwiD" id="5s_pyghtuNV">
    <property role="EcuMT" value="6279537560535821563" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="SegmentDeclaration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5s_pyghtuNW" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="5s_pyghtuOQ" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="5s_pyghtuNY" role="1TKVEi">
      <property role="IQ2ns" value="6279537560535821566" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5s_pyghtjox" resolve="SegmentTypeDeclaration" />
    </node>
    <node concept="1TJgyj" id="5s_pyghtuOK" role="1TKVEi">
      <property role="IQ2ns" value="6279537560535821616" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2lwHqHkyF7a" resolve="ParameterAssignment" />
    </node>
  </node>
  <node concept="1TIwiD" id="5s_pyghzCOb">
    <property role="EcuMT" value="6279537560537435403" />
    <property role="3GE5qa" value="system" />
    <property role="TrG5h" value="Link" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5s_pyghzCOc" role="1TKVEi">
      <property role="IQ2ns" value="6279537560537435404" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="resource" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="uLhTRRq_ww" resolve="ResourceReference" />
    </node>
    <node concept="1TJgyj" id="5s_pyghzCOe" role="1TKVEi">
      <property role="IQ2ns" value="6279537560537435406" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2lwHqHkyF7a" resolve="ParameterAssignment" />
    </node>
    <node concept="1TJgyj" id="5s_pyghzCOh" role="1TKVEi">
      <property role="IQ2ns" value="6279537560537435409" />
      <property role="20kJfa" value="segment" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5s_pyghtuNV" resolve="SegmentDeclaration" />
    </node>
    <node concept="PrWs8" id="5s_pyghzCOl" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="23XkovVSBlc">
    <property role="EcuMT" value="2377145822809847116" />
    <property role="3GE5qa" value="fbtype.service" />
    <property role="TrG5h" value="ServiceInterfaceFBTypeDeclaration" />
    <property role="34LRSv" value="service interface function block type" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    <node concept="1QGGSu" id="4dW98DtmzF7" role="rwd14">
      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/iec61499/lang/structure/service_fb.svg" />
    </node>
  </node>
  <node concept="1TIwiD" id="23XkovWspjs">
    <property role="EcuMT" value="2377145822819226844" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="UnknownAlgorithmBody" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="23XkovWsppH" role="1TKVEl">
      <property role="IQ2nx" value="2377145822819227245" />
      <property role="TrG5h" value="languageName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="23XkovWspTW" role="1TKVEi">
      <property role="IQ2ns" value="2377145822819229308" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="23XkovWspPm" resolve="CodeLine" />
    </node>
    <node concept="PrWs8" id="23XkovWspTY" role="PzmwI">
      <ref role="PrY4T" node="1zB5ET5xzpM" resolve="AlgorithmBody" />
    </node>
  </node>
  <node concept="1TIwiD" id="23XkovWspPm">
    <property role="EcuMT" value="2377145822819229014" />
    <property role="3GE5qa" value="fbtype.basic" />
    <property role="TrG5h" value="CodeLine" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="23XkovWspPn" role="1TKVEl">
      <property role="IQ2nx" value="2377145822819229015" />
      <property role="TrG5h" value="line" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="7DSsXPFKSqU">
    <property role="EcuMT" value="8824930864665429690" />
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="ConstantDataSource" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7DSsXPFKSqV" role="PzmwI">
      <ref role="PrY4T" node="37fub3vlA5G" resolve="DataSource" />
    </node>
    <node concept="1TJgyj" id="7DSsXPFKSqX" role="1TKVEi">
      <property role="IQ2ns" value="8824930864665429693" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="gpgy:2lwHqHjKhl9" resolve="Literal" />
    </node>
  </node>
  <node concept="1TIwiD" id="5fP$Xwj3irJ">
    <property role="EcuMT" value="6049904230683977455" />
    <property role="TrG5h" value="Position" />
    <property role="3GE5qa" value="canvas" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5fP$Xwj3irK" role="1TKVEl">
      <property role="IQ2nx" value="6049904230683977456" />
      <property role="TrG5h" value="x" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5fP$Xwj3irM" role="1TKVEl">
      <property role="IQ2nx" value="6049904230683977458" />
      <property role="TrG5h" value="y" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3IX4BsKohXi">
    <property role="EcuMT" value="4304617121958141778" />
    <property role="TrG5h" value="ConnectionPath" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="canvas" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3IX4BsKoiap">
    <property role="EcuMT" value="4304617121958142617" />
    <property role="3GE5qa" value="canvas" />
    <property role="TrG5h" value="StraightConnectionPath" />
    <property role="34LRSv" value="straight" />
    <ref role="1TJDcQ" node="3IX4BsKohXi" resolve="ConnectionPath" />
  </node>
  <node concept="1TIwiD" id="3IX4BsKoibk">
    <property role="EcuMT" value="4304617121958142676" />
    <property role="3GE5qa" value="canvas" />
    <property role="TrG5h" value="TwoAngleConnectionPath" />
    <property role="34LRSv" value="two-angles" />
    <ref role="1TJDcQ" node="3IX4BsKohXi" resolve="ConnectionPath" />
    <node concept="1TJgyi" id="3IX4BsKoibI" role="1TKVEl">
      <property role="IQ2nx" value="4304617121958142702" />
      <property role="TrG5h" value="dx" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3IX4BsKomat">
    <property role="EcuMT" value="4304617121958159005" />
    <property role="3GE5qa" value="canvas" />
    <property role="TrG5h" value="FourAngleConncetionPath" />
    <property role="34LRSv" value="four-angles" />
    <ref role="1TJDcQ" node="3IX4BsKohXi" resolve="ConnectionPath" />
    <node concept="1TJgyi" id="3IX4BsKomau" role="1TKVEl">
      <property role="IQ2nx" value="4304617121958159006" />
      <property role="TrG5h" value="dx1" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3IX4BsKomaw" role="1TKVEl">
      <property role="IQ2nx" value="4304617121958159008" />
      <property role="TrG5h" value="dy" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3IX4BsKomaz" role="1TKVEl">
      <property role="IQ2nx" value="4304617121958159011" />
      <property role="TrG5h" value="dx2" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="6z_cCa7NbTh">
    <property role="EcuMT" value="7558503085816725073" />
    <property role="3GE5qa" value="network.connections" />
    <property role="TrG5h" value="ComponentEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="PI_pXYus4r" role="1TKVEi">
      <property role="IQ2ns" value="967875482185482523" />
      <property role="20kJfa" value="component" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5L1OxDukYbT" resolve="IComponent" />
    </node>
    <node concept="PrWs8" id="6z_cCa7Nl5m" role="PzmwI">
      <ref role="PrY4T" node="6z_cCa7Nl5h" resolve="Endpoint" />
    </node>
  </node>
  <node concept="PlHQZ" id="6z_cCa7Nl5h">
    <property role="EcuMT" value="7558503085816762705" />
    <property role="3GE5qa" value="network.connections" />
    <property role="TrG5h" value="Endpoint" />
  </node>
  <node concept="1TIwiD" id="6z_cCa7NnvN">
    <property role="EcuMT" value="7558503085816772595" />
    <property role="3GE5qa" value="network.connections" />
    <property role="TrG5h" value="ContextEndpoint" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6z_cCa7Nnwf" role="PzmwI">
      <ref role="PrY4T" node="6z_cCa7Nl5h" resolve="Endpoint" />
    </node>
  </node>
  <node concept="1TIwiD" id="1fUwyp9CzsN">
    <property role="EcuMT" value="1439606131854030643" />
    <property role="3GE5qa" value="network" />
    <property role="TrG5h" value="EndpointCoordinate" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1fUwyp9CBZM" role="1TKVEi">
      <property role="IQ2ns" value="1439606131854049266" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="position" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5fP$Xwj3irJ" resolve="Position" />
    </node>
    <node concept="1TJgyj" id="_yMviEJHiZ" role="1TKVEi">
      <property role="IQ2ns" value="676324946732831935" />
      <property role="20kJfa" value="endpoint" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1z_G68ePL7">
    <property role="EcuMT" value="28031780652801095" />
    <property role="3GE5qa" value="canvas" />
    <property role="TrG5h" value="MoreThanFourAngleConnectionPath" />
    <property role="34LRSv" value="more-than-four-angles" />
    <ref role="1TJDcQ" node="3IX4BsKohXi" resolve="ConnectionPath" />
    <node concept="1TJgyi" id="1z_G68ePL8" role="1TKVEl">
      <property role="IQ2nx" value="28031780652801096" />
      <property role="TrG5h" value="dx1" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1z_G68ePL9" role="1TKVEl">
      <property role="IQ2nx" value="28031780652801097" />
      <property role="TrG5h" value="dy" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1z_G68ePLa" role="1TKVEl">
      <property role="IQ2nx" value="28031780652801098" />
      <property role="TrG5h" value="dx2" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="1z_G68ePLe" role="1TKVEi">
      <property role="IQ2ns" value="28031780652801102" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="bendPoints" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5fP$Xwj3irJ" resolve="Position" />
    </node>
  </node>
</model>

