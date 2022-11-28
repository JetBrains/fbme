<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cc320271-8cd3-4cea-8972-189a92facec6(org.fbme.smvDebugger.sandbox.test_model)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="org.fbme.ide.st.lang">
      <concept id="4280485643802239119" name="org.fbme.ide.st.lang.structure.VariableReference" flags="ng" index="2zAFuc">
        <reference id="4280485643802239120" name="declaration" index="2zAFuj" />
      </concept>
      <concept id="4280485643802103610" name="org.fbme.ide.st.lang.structure.BoolType" flags="ng" index="2zB9wT" />
      <concept id="185023738902821179" name="org.fbme.ide.st.lang.structure.UnaryExpression" flags="ng" index="UK6WB">
        <child id="8872717756044728347" name="expression" index="1yuI7h" />
      </concept>
      <concept id="8872717756041500089" name="org.fbme.ide.st.lang.structure.StatementList" flags="ng" index="1y1qLN">
        <child id="8872717756041500466" name="statements" index="1y1qVS" />
      </concept>
      <concept id="8872717756041500654" name="org.fbme.ide.st.lang.structure.AssignmentStatement" flags="ng" index="1y1qS$">
        <child id="8872717756041500659" name="expression" index="1y1qST" />
        <child id="8872717756041500657" name="variable" index="1y1qSV" />
      </concept>
      <concept id="8872717756041500546" name="org.fbme.ide.st.lang.structure.EmptyStatement" flags="ng" index="1y1qT8" />
      <concept id="8872717756044728375" name="org.fbme.ide.st.lang.structure.NotExpression" flags="ng" index="1yuI7X" />
    </language>
    <language id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang">
      <concept id="4304617121958142676" name="org.fbme.ide.iec61499.lang.structure.TwoAngleConnectionPath" flags="ng" index="bR32z">
        <property id="4304617121958142702" name="dx" index="bR32p" />
      </concept>
      <concept id="4304617121958159005" name="org.fbme.ide.iec61499.lang.structure.FourAngleConncetionPath" flags="ng" index="bR73E">
        <property id="4304617121958159011" name="dx2" index="bR73k" />
        <property id="4304617121958159008" name="dy" index="bR73n" />
        <property id="4304617121958159006" name="dx1" index="bR73D" />
      </concept>
      <concept id="4280485643802119831" name="org.fbme.ide.iec61499.lang.structure.StateDeclaration" flags="ng" index="2zAPAk">
        <child id="4280485643802119923" name="actions" index="2zAPBK" />
        <child id="6110000670794348100" name="position" index="2WOQdS" />
      </concept>
      <concept id="4280485643802119834" name="org.fbme.ide.iec61499.lang.structure.AlgorithmDeclaration" flags="ng" index="2zAPAp">
        <child id="1794427914276976239" name="body" index="1toi31" />
      </concept>
      <concept id="4280485643802119833" name="org.fbme.ide.iec61499.lang.structure.StateTransition" flags="ng" index="2zAPAq">
        <reference id="4280485643802120002" name="targetState" index="2zAPx1" />
        <reference id="4280485643802120000" name="sourceState" index="2zAPx3" />
        <child id="4280485643802160028" name="condition" index="2zAZMv" />
        <child id="6110000670795492226" name="position" index="2WSJUY" />
      </concept>
      <concept id="4280485643802119832" name="org.fbme.ide.iec61499.lang.structure.StateAction" flags="ng" index="2zAPAr">
        <reference id="4280485643802119837" name="algorithm" index="2zAPAu" />
        <child id="3296901243643750533" name="event" index="2NbhEN" />
      </concept>
      <concept id="4280485643801969830" name="org.fbme.ide.iec61499.lang.structure.EventDeclaration" flags="ng" index="2zBDe_">
        <child id="4280485643801969855" name="associatedVariables" index="2zBDeW" />
      </concept>
      <concept id="4280485643801969832" name="org.fbme.ide.iec61499.lang.structure.ParameterDeclaration" flags="ng" index="2zBDeF">
        <child id="4280485643802059164" name="type" index="2zB7qv" />
      </concept>
      <concept id="4280485643801969849" name="org.fbme.ide.iec61499.lang.structure.EventAssociation" flags="ng" index="2zBDeU">
        <reference id="4280485643801969850" name="declaration" index="2zBDeT" />
      </concept>
      <concept id="4280485643801969857" name="org.fbme.ide.iec61499.lang.structure.BasicFBTypeDeclaration" flags="ng" index="2zBDf2">
        <child id="4280485643802119995" name="algorithms" index="2zAPwS" />
        <child id="4280485643802119997" name="states" index="2zAPwY" />
        <child id="4280485643802120037" name="transitions" index="2zAPxA" />
      </concept>
      <concept id="7206730950341598082" name="org.fbme.ide.iec61499.lang.structure.TransitionCondition" flags="ng" index="2EVYwv">
        <child id="3296901243641762237" name="event" index="2N3Qeb" />
      </concept>
      <concept id="5481506291238376594" name="org.fbme.ide.iec61499.lang.structure.Connection" flags="ng" index="2RhMLZ">
        <child id="4304617121958732207" name="path" index="bPNfo" />
        <child id="5481506291238376648" name="destination" index="2RhMK_" />
        <child id="5481506291238376645" name="source" index="2RhMKC" />
      </concept>
      <concept id="3018159903918042962" name="org.fbme.ide.iec61499.lang.structure.DeclarationWithInterface" flags="ng" index="XJwsz">
        <child id="4280485643801969827" name="outputEvents" index="2zBDew" />
        <child id="4280485643801969825" name="inputEvents" index="2zBDey" />
        <child id="4280485643801969834" name="inputVariables" index="2zBDeD" />
        <child id="4280485643801969838" name="outputVariables" index="2zBDeH" />
      </concept>
      <concept id="6049904230683977455" name="org.fbme.ide.iec61499.lang.structure.Position" flags="ng" index="10YbkR">
        <property id="6049904230683977456" name="x" index="10YbkC" />
        <property id="6049904230683977458" name="y" index="10YbkE" />
      </concept>
      <concept id="1439606131854030643" name="org.fbme.ide.iec61499.lang.structure.EndpointCoordinate" flags="ng" index="1qmbkl">
        <reference id="676324946732831935" name="endpoint" index="2zR1Pb" />
        <child id="1439606131854049266" name="position" index="1qmfRk" />
      </concept>
      <concept id="1794427914277800439" name="org.fbme.ide.iec61499.lang.structure.STAlgorithmBody" flags="ng" index="1tttXp">
        <child id="8872717756042118835" name="body" index="1y4NXT" />
      </concept>
      <concept id="3589220129094585243" name="org.fbme.ide.iec61499.lang.structure.ContextDataDestination" flags="ng" index="3I$zcF" />
      <concept id="3589220129094554521" name="org.fbme.ide.iec61499.lang.structure.ContextDataSource" flags="ng" index="3I$UGD" />
      <concept id="3589220129094133401" name="org.fbme.ide.iec61499.lang.structure.ComponentDataSource" flags="ng" index="3IAhSD" />
      <concept id="3589220129094146209" name="org.fbme.ide.iec61499.lang.structure.ContextDataEndpoint" flags="ng" index="3IAu0h">
        <reference id="3589220129094146210" name="declaration" index="3IAu0i" />
      </concept>
      <concept id="3589220129094143959" name="org.fbme.ide.iec61499.lang.structure.ComponentDataDestination" flags="ng" index="3IAvtB" />
      <concept id="7558503085816725073" name="org.fbme.ide.iec61499.lang.structure.ComponentEndpoint" flags="ng" index="3JaoNj">
        <reference id="967875482185482523" name="component" index="1N5Pi4" />
      </concept>
      <concept id="967875482185482517" name="org.fbme.ide.iec61499.lang.structure.ComponentEventEndpoint" flags="ng" index="1N5Pia">
        <reference id="967875482185482524" name="declaration" index="1N5Pi3" />
      </concept>
      <concept id="967875482185482492" name="org.fbme.ide.iec61499.lang.structure.ComponentDataEndpoint" flags="ng" index="1N5Plz">
        <reference id="967875482185482484" name="declaration" index="1N5PlF" />
      </concept>
      <concept id="967875482185433878" name="org.fbme.ide.iec61499.lang.structure.DataConnection" flags="ng" index="1N5Tq9" />
      <concept id="967875482185433869" name="org.fbme.ide.iec61499.lang.structure.EventConnection" flags="ng" index="1N5Tqi" />
      <concept id="967875482185433822" name="org.fbme.ide.iec61499.lang.structure.FunctionBlockDeclaration" flags="ng" index="1N5Tt1">
        <reference id="967875482185433823" name="type" index="1N5Tt0" />
        <child id="4304617121954520353" name="position" index="b_cXm" />
      </concept>
      <concept id="967875482185433821" name="org.fbme.ide.iec61499.lang.structure.CompositeFBTypeDeclaration" flags="ng" index="1N5Tt2" />
      <concept id="2693352324618654708" name="org.fbme.ide.iec61499.lang.structure.IWithFBNetwork" flags="ng" index="1QJEpv">
        <child id="9138032318693113634" name="endpointCoordinates" index="3rj3o" />
        <child id="967875482185482537" name="eventConnections" index="1N5PiQ" />
        <child id="967875482185482532" name="dataConnections" index="1N5PiV" />
        <child id="967875482185482529" name="functionBlocks" index="1N5PiY" />
      </concept>
      <concept id="8167217573768971186" name="org.fbme.ide.iec61499.lang.structure.ComponentEventDestination" flags="ng" index="3Yx0EI" />
      <concept id="8167217573769463661" name="org.fbme.ide.iec61499.lang.structure.ContextEventEndpoint" flags="ng" index="3Yz8TL">
        <reference id="8167217573769463662" name="declaration" index="3Yz8TM" />
      </concept>
      <concept id="8167217573768433448" name="org.fbme.ide.iec61499.lang.structure.ComponentEventSource" flags="ng" index="3YB4oO" />
      <concept id="8167217573769932385" name="org.fbme.ide.iec61499.lang.structure.ContextEventSource" flags="ng" index="3YHqtX" />
      <concept id="8167217573769936073" name="org.fbme.ide.iec61499.lang.structure.ContextEventDestination" flags="ng" index="3YHrnl" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1N5Tt2" id="v2ZCRmXcvN">
    <property role="TrG5h" value="Test" />
    <node concept="1N5Tq9" id="v2ZCRmXdK6" role="1N5PiV">
      <node concept="3IAhSD" id="v2ZCRmXdK8" role="2RhMKC">
        <ref role="1N5Pi4" node="v2ZCRmXdzY" resolve="innerCompositeBlock" />
        <ref role="1N5PlF" node="v2ZCRmXdAY" resolve="icbOutpVar" />
      </node>
      <node concept="3I$zcF" id="v2ZCRmXdK9" role="2RhMK_">
        <ref role="3IAu0i" node="v2ZCRmXcvZ" resolve="B" />
      </node>
      <node concept="bR32z" id="3a01G9fNkUT" role="bPNfo">
        <property role="bR32p" value="217.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="v2ZCRmXdJO" role="1N5PiQ">
      <node concept="3YB4oO" id="v2ZCRmXdJQ" role="2RhMKC">
        <ref role="1N5Pi4" node="v2ZCRmXdzY" resolve="innerCompositeBlock" />
        <ref role="1N5Pi3" node="v2ZCRmXd_z" resolve="INTO" />
      </node>
      <node concept="3YHrnl" id="v2ZCRmXdJR" role="2RhMK_">
        <ref role="3Yz8TM" node="v2ZCRmXcvQ" resolve="INTO" />
      </node>
      <node concept="bR32z" id="3a01G9fNkUR" role="bPNfo">
        <property role="bR32p" value="197.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="v2ZCRmXcxF" role="1N5PiY">
      <property role="TrG5h" value="innerBlock1" />
      <ref role="1N5Tt0" node="v2ZCRmXcwX" resolve="InnerBlock" />
      <node concept="10YbkR" id="v2ZCRmXcxG" role="b_cXm">
        <property role="10YbkC" value="360.0" />
        <property role="10YbkE" value="93.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="v2ZCRmXdME" role="1N5PiY">
      <property role="TrG5h" value="innerBlock2" />
      <ref role="1N5Tt0" node="v2ZCRmXcwX" resolve="InnerBlock" />
      <node concept="10YbkR" id="v2ZCRmXdMF" role="b_cXm">
        <property role="10YbkC" value="1256.0" />
        <property role="10YbkE" value="433.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="v2ZCRmXdzY" role="1N5PiY">
      <property role="TrG5h" value="innerCompositeBlock" />
      <ref role="1N5Tt0" node="v2ZCRmXdzG" resolve="InnerCompositeBlock" />
      <node concept="10YbkR" id="v2ZCRmXdzZ" role="b_cXm">
        <property role="10YbkC" value="1273.0" />
        <property role="10YbkE" value="70.0" />
      </node>
    </node>
    <node concept="1qmbkl" id="v2ZCRmXcwx" role="3rj3o">
      <ref role="2zR1Pb" node="v2ZCRmXcvQ" resolve="INTO" />
      <node concept="10YbkR" id="v2ZCRmXcwy" role="1qmfRk">
        <property role="10YbkC" value="2270.0" />
        <property role="10YbkE" value="80.0" />
      </node>
    </node>
    <node concept="2zBDe_" id="v2ZCRmXcwf" role="2zBDey">
      <property role="TrG5h" value="INIT" />
      <node concept="2zBDeU" id="v2ZCRmXcwp" role="2zBDeW">
        <ref role="2zBDeT" node="v2ZCRmXcvS" resolve="A" />
      </node>
    </node>
    <node concept="2zBDeF" id="v2ZCRmXcvZ" role="2zBDeH">
      <property role="TrG5h" value="B" />
      <node concept="2zB9wT" id="v2ZCRmXcw3" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="v2ZCRmXcvS" role="2zBDeD">
      <property role="TrG5h" value="A" />
      <node concept="2zB9wT" id="v2ZCRmXcvW" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="v2ZCRmXcvQ" role="2zBDew">
      <property role="TrG5h" value="INTO" />
      <node concept="2zBDeU" id="v2ZCRmXcwt" role="2zBDeW">
        <ref role="2zBDeT" node="v2ZCRmXcvZ" resolve="B" />
      </node>
    </node>
    <node concept="1qmbkl" id="v2ZCRmXcwJ" role="3rj3o">
      <ref role="2zR1Pb" node="v2ZCRmXcvZ" resolve="B" />
      <node concept="10YbkR" id="v2ZCRmXcwK" role="1qmfRk">
        <property role="10YbkC" value="2310.0" />
        <property role="10YbkE" value="229.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="v2ZCRmXdK_" role="1N5PiQ">
      <node concept="3Yx0EI" id="v2ZCRmXdKC" role="2RhMK_">
        <ref role="1N5Pi4" node="v2ZCRmXdzY" resolve="innerCompositeBlock" />
        <ref role="1N5Pi3" node="v2ZCRmXd$_" resolve="INIT" />
      </node>
      <node concept="3YB4oO" id="v2ZCRmXdNc" role="2RhMKC">
        <ref role="1N5Pi4" node="v2ZCRmXcxF" resolve="innerBlock1" />
        <ref role="1N5Pi3" node="v2ZCRmXcx2" resolve="INIT" />
      </node>
      <node concept="bR32z" id="3a01G9fNkUS" role="bPNfo">
        <property role="bR32p" value="177.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="v2ZCRmXdL5" role="1N5PiV">
      <node concept="3IAhSD" id="v2ZCRmXdL7" role="2RhMKC">
        <ref role="1N5Pi4" node="v2ZCRmXcxF" resolve="innerBlock" />
        <ref role="1N5PlF" node="v2ZCRmXcxk" resolve="ibOutpVar" />
      </node>
      <node concept="3IAvtB" id="v2ZCRmXdL8" role="2RhMK_">
        <ref role="1N5Pi4" node="v2ZCRmXdzY" resolve="innerCompositeBlock" />
        <ref role="1N5PlF" node="v2ZCRmXdAe" resolve="icbInpVar" />
      </node>
      <node concept="bR32z" id="3a01G9fNkUQ" role="bPNfo">
        <property role="bR32p" value="190.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="v2ZCRmXdLs" role="1N5PiQ">
      <node concept="3YHqtX" id="v2ZCRmXdLu" role="2RhMKC">
        <ref role="3Yz8TM" node="v2ZCRmXcwf" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="v2ZCRmXdLv" role="2RhMK_">
        <ref role="1N5Pi4" node="v2ZCRmXcxF" resolve="innerBlock" />
        <ref role="1N5Pi3" node="v2ZCRmXcx0" resolve="INIT" />
      </node>
      <node concept="bR73E" id="3a01G9fNkRq" role="bPNfo">
        <property role="bR73D" value="134.0" />
        <property role="bR73n" value="130.0" />
        <property role="bR73k" value="134.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="v2ZCRmXdLQ" role="1N5PiV">
      <node concept="3I$UGD" id="v2ZCRmXdLS" role="2RhMKC">
        <ref role="3IAu0i" node="v2ZCRmXcvS" resolve="A" />
      </node>
      <node concept="3IAvtB" id="v2ZCRmXdLT" role="2RhMK_">
        <ref role="1N5Pi4" node="v2ZCRmXcxF" resolve="innerBlock" />
        <ref role="1N5PlF" node="v2ZCRmXcxd" resolve="ibInpVar" />
      </node>
      <node concept="bR32z" id="3a01G9fNkRt" role="bPNfo">
        <property role="bR32p" value="140.0" />
      </node>
    </node>
    <node concept="1qmbkl" id="v2ZCRmXdMc" role="3rj3o">
      <ref role="2zR1Pb" node="v2ZCRmXcvS" resolve="A" />
      <node concept="10YbkR" id="v2ZCRmXdMd" role="1qmfRk">
        <property role="10YbkC" value="-49.0" />
        <property role="10YbkE" value="320.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="v2ZCRmXdNn" role="1N5PiQ">
      <node concept="3YB4oO" id="v2ZCRmXdNp" role="2RhMKC">
        <ref role="1N5Pi4" node="v2ZCRmXcxF" resolve="innerBlock1" />
        <ref role="1N5Pi3" node="v2ZCRmXcx2" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="v2ZCRmXdNq" role="2RhMK_">
        <ref role="1N5Pi4" node="v2ZCRmXdME" resolve="innerBlock2" />
        <ref role="1N5Pi3" node="v2ZCRmXcx0" resolve="INIT" />
      </node>
      <node concept="bR32z" id="3a01G9fNkRu" role="bPNfo">
        <property role="bR32p" value="160.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="v2ZCRmXdNP" role="1N5PiV">
      <node concept="3IAhSD" id="v2ZCRmXdNR" role="2RhMKC">
        <ref role="1N5Pi4" node="v2ZCRmXcxF" resolve="innerBlock1" />
        <ref role="1N5PlF" node="v2ZCRmXcxk" resolve="ibOutpVar" />
      </node>
      <node concept="3IAvtB" id="v2ZCRmXdNS" role="2RhMK_">
        <ref role="1N5Pi4" node="v2ZCRmXdME" resolve="innerBlock2" />
        <ref role="1N5PlF" node="v2ZCRmXcxd" resolve="ibInpVar" />
      </node>
      <node concept="bR32z" id="3a01G9fNkRs" role="bPNfo">
        <property role="bR32p" value="160.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="v2ZCRmXcwX">
    <property role="TrG5h" value="InnerBlock" />
    <node concept="2zAPAp" id="3a01G9fNkTf" role="2zAPwS">
      <property role="TrG5h" value="TODO" />
      <node concept="1tttXp" id="3a01G9fNkTM" role="1toi31">
        <node concept="1y1qLN" id="3a01G9fNkTN" role="1y4NXT">
          <node concept="1y1qS$" id="3a01G9fNkTS" role="1y1qVS">
            <node concept="2zAFuc" id="3a01G9fNkTR" role="1y1qSV">
              <ref role="2zAFuj" node="v2ZCRmXcxk" resolve="ibOutpVar" />
            </node>
            <node concept="1yuI7X" id="3a01G9fNkUd" role="1y1qST">
              <node concept="2zAFuc" id="3a01G9fNkUj" role="1yuI7h">
                <ref role="2zAFuj" node="v2ZCRmXcxd" resolve="ibInpVar" />
              </node>
            </node>
          </node>
          <node concept="1y1qT8" id="7N9VQnMQ1iq" role="1y1qVS" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="3a01G9fNkSD" role="2zAPxA">
      <ref role="2zAPx3" node="v2ZCRmXcwY" resolve="START" />
      <ref role="2zAPx1" node="3a01G9fNkRH" resolve="IDLE" />
      <node concept="10YbkR" id="3a01G9fNkSE" role="2WSJUY">
        <property role="10YbkC" value="1140.0" />
        <property role="10YbkE" value="953.0" />
      </node>
      <node concept="2EVYwv" id="3a01G9fNkSF" role="2zAZMv">
        <node concept="3YHqtX" id="3a01G9fNkST" role="2N3Qeb">
          <ref role="3Yz8TM" node="v2ZCRmXcx0" resolve="INIT" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="3a01G9fNkSW" role="2zAPxA">
      <ref role="2zAPx3" node="3a01G9fNkRH" resolve="IDLE" />
      <ref role="2zAPx1" node="v2ZCRmXcwY" resolve="START" />
      <node concept="10YbkR" id="3a01G9fNkSX" role="2WSJUY">
        <property role="10YbkC" value="1420.0" />
        <property role="10YbkE" value="80.0" />
      </node>
      <node concept="2EVYwv" id="3a01G9fNkSY" role="2zAZMv" />
    </node>
    <node concept="2zBDeF" id="v2ZCRmXcxk" role="2zBDeH">
      <property role="TrG5h" value="ibOutpVar" />
      <node concept="2zB9wT" id="v2ZCRmXcxo" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="v2ZCRmXcxd" role="2zBDeD">
      <property role="TrG5h" value="ibInpVar" />
      <node concept="2zB9wT" id="v2ZCRmXcxh" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="v2ZCRmXcx2" role="2zBDew">
      <property role="TrG5h" value="INTO" />
      <node concept="2zBDeU" id="v2ZCRmXcxx" role="2zBDeW">
        <ref role="2zBDeT" node="v2ZCRmXcxk" resolve="BB" />
      </node>
    </node>
    <node concept="2zBDe_" id="v2ZCRmXcx0" role="2zBDey">
      <property role="TrG5h" value="INIT" />
      <node concept="2zBDeU" id="v2ZCRmXcxt" role="2zBDeW">
        <ref role="2zBDeT" node="v2ZCRmXcxd" resolve="AA" />
      </node>
    </node>
    <node concept="2zAPAk" id="v2ZCRmXcwY" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="v2ZCRmXcwZ" role="2WOQdS">
        <property role="10YbkC" value="479.0" />
        <property role="10YbkE" value="553.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="3a01G9fNkRH" role="2zAPwY">
      <property role="TrG5h" value="IDLE" />
      <node concept="2zAPAr" id="3a01G9fNkUn" role="2zAPBK">
        <ref role="2zAPAu" node="3a01G9fNkTf" resolve="TODO" />
        <node concept="3YHrnl" id="3a01G9fNkUF" role="2NbhEN">
          <ref role="3Yz8TM" node="v2ZCRmXcx2" resolve="INTO" />
        </node>
      </node>
      <node concept="10YbkR" id="3a01G9fNkRI" role="2WOQdS">
        <property role="10YbkC" value="1579.0" />
        <property role="10YbkE" value="600.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="v2ZCRmXdzG">
    <property role="TrG5h" value="InnerCompositeBlock" />
    <node concept="1N5Tq9" id="3a01G9fNkWR" role="1N5PiV">
      <node concept="3I$UGD" id="3a01G9fNkWT" role="2RhMKC">
        <ref role="3IAu0i" node="v2ZCRmXdAe" resolve="icbInpVar" />
      </node>
      <node concept="3IAvtB" id="3a01G9fNkWU" role="2RhMK_">
        <ref role="1N5Pi4" node="3a01G9fNkWh" resolve="tb" />
        <ref role="1N5PlF" node="v2ZCRmXcxd" resolve="ibInpVar" />
      </node>
      <node concept="bR32z" id="3a01G9fNkWV" role="bPNfo">
        <property role="bR32p" value="250.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="3a01G9fNkW_" role="1N5PiQ">
      <node concept="3YHqtX" id="3a01G9fNkWB" role="2RhMKC">
        <ref role="3Yz8TM" node="v2ZCRmXd$_" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="3a01G9fNkWC" role="2RhMK_">
        <ref role="1N5Pi4" node="3a01G9fNkWh" resolve="tb" />
        <ref role="1N5Pi3" node="v2ZCRmXcx0" resolve="INIT" />
      </node>
      <node concept="bR32z" id="43JI95g8oTF" role="bPNfo">
        <property role="bR32p" value="514.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="3a01G9fNkWh" role="1N5PiY">
      <property role="TrG5h" value="ctb" />
      <ref role="1N5Tt0" node="v2ZCRmXcwX" resolve="InnerBlock" />
      <node concept="10YbkR" id="3a01G9fNkWi" role="b_cXm">
        <property role="10YbkC" value="826.0" />
        <property role="10YbkE" value="143.0" />
      </node>
    </node>
    <node concept="1qmbkl" id="3a01G9fNkV9" role="3rj3o">
      <ref role="2zR1Pb" node="v2ZCRmXd_z" resolve="INTO" />
      <node concept="10YbkR" id="3a01G9fNkVa" role="1qmfRk">
        <property role="10YbkC" value="2193.0" />
        <property role="10YbkE" value="116.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="v2ZCRmXdAY" role="2zBDeH">
      <property role="TrG5h" value="icbOutpVar" />
      <node concept="2zB9wT" id="v2ZCRmXdBy" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="v2ZCRmXdAe" role="2zBDeD">
      <property role="TrG5h" value="icbInpVar" />
      <node concept="2zB9wT" id="v2ZCRmXdAM" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="v2ZCRmXd_z" role="2zBDew">
      <property role="TrG5h" value="INTO" />
      <node concept="2zBDeU" id="v2ZCRmXdIS" role="2zBDeW">
        <ref role="2zBDeT" node="v2ZCRmXdAY" resolve="icbOutpVar" />
      </node>
    </node>
    <node concept="2zBDe_" id="v2ZCRmXd$_" role="2zBDey">
      <property role="TrG5h" value="INIT" />
      <node concept="2zBDeU" id="v2ZCRmXdIf" role="2zBDeW">
        <ref role="2zBDeT" node="v2ZCRmXdAe" resolve="icbInpVar" />
      </node>
    </node>
    <node concept="1qmbkl" id="3a01G9fNkVd" role="3rj3o">
      <ref role="2zR1Pb" node="v2ZCRmXdAY" resolve="icbOutpVar" />
      <node concept="10YbkR" id="3a01G9fNkVe" role="1qmfRk">
        <property role="10YbkC" value="2029.0" />
        <property role="10YbkE" value="270.0" />
      </node>
    </node>
    <node concept="1qmbkl" id="3a01G9fNkVb" role="3rj3o">
      <ref role="2zR1Pb" node="v2ZCRmXdAe" resolve="icbInpVar" />
      <node concept="10YbkR" id="3a01G9fNkVc" role="1qmfRk">
        <property role="10YbkC" value="-6.0" />
        <property role="10YbkE" value="260.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="3a01G9fNkX9" role="1N5PiQ">
      <node concept="3YB4oO" id="3a01G9fNkXb" role="2RhMKC">
        <ref role="1N5Pi4" node="3a01G9fNkWh" resolve="tb" />
        <ref role="1N5Pi3" node="v2ZCRmXcx2" resolve="INTO" />
      </node>
      <node concept="3YHrnl" id="3a01G9fNkXc" role="2RhMK_">
        <ref role="3Yz8TM" node="v2ZCRmXd_z" resolve="INTO" />
      </node>
      <node concept="bR32z" id="3a01G9fNkXd" role="bPNfo">
        <property role="bR32p" value="410.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="3a01G9fNkXv" role="1N5PiV">
      <node concept="3IAhSD" id="3a01G9fNkXx" role="2RhMKC">
        <ref role="1N5Pi4" node="3a01G9fNkWh" resolve="tb" />
        <ref role="1N5PlF" node="v2ZCRmXcxk" resolve="ibOutpVar" />
      </node>
      <node concept="3I$zcF" id="3a01G9fNkXy" role="2RhMK_">
        <ref role="3IAu0i" node="v2ZCRmXdAY" resolve="icbOutpVar" />
      </node>
      <node concept="bR32z" id="3a01G9fNkXz" role="bPNfo">
        <property role="bR32p" value="327.0" />
      </node>
    </node>
  </node>
</model>

