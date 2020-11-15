<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:421e910b-04d5-4ddf-8fc0-b4910010d51e(org.fbme.smvDebugger.sandbox.drillStation)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang" version="0" />
  </languages>
  <imports>
    <import index="7fvu" ref="r:fa98296a-e4fa-4f84-b917-968f5f770c4b(iec61499.4diac.stdlib)" />
  </imports>
  <registry>
    <language id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="org.fbme.ide.st.lang">
      <concept id="4280485643802239119" name="org.fbme.ide.st.lang.structure.VariableReference" flags="ng" index="2zAFuc">
        <reference id="4280485643802239120" name="declaration" index="2zAFuj" />
      </concept>
      <concept id="4280485643802103610" name="org.fbme.ide.st.lang.structure.BoolType" flags="ng" index="2zB9wT" />
      <concept id="185023738902821179" name="org.fbme.ide.st.lang.structure.UnaryExpression" flags="ng" index="UK6WB">
        <child id="8872717756044728347" name="expression" index="1yuI7h" />
      </concept>
      <concept id="2377145822810428099" name="org.fbme.ide.st.lang.structure.DIntType" flags="ng" index="3r5wd4" />
      <concept id="8872717756041500089" name="org.fbme.ide.st.lang.structure.StatementList" flags="ng" index="1y1qLN">
        <child id="8872717756041500466" name="statements" index="1y1qVS" />
      </concept>
      <concept id="8872717756041500654" name="org.fbme.ide.st.lang.structure.AssignmentStatement" flags="ng" index="1y1qS$">
        <child id="8872717756041500659" name="expression" index="1y1qST" />
        <child id="8872717756041500657" name="variable" index="1y1qSV" />
      </concept>
      <concept id="8872717756044728375" name="org.fbme.ide.st.lang.structure.NotExpression" flags="ng" index="1yuI7X" />
      <concept id="2693352324616754506" name="org.fbme.ide.st.lang.structure.BooleanLiteral" flags="ng" index="1QCq3x">
        <property id="2693352324616826154" name="value" index="1QCDy1" />
      </concept>
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
        <child id="7206730950341598650" name="guardCondition" index="2EVYSB" />
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
  <node concept="1N5Tt2" id="sGryc2GCuB">
    <property role="TrG5h" value="DrillStation" />
    <node concept="2zBDe_" id="199xfzRrZGq" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="1N5Tq9" id="199xfzRqZNc" role="1N5PiV">
      <node concept="3IAhSD" id="199xfzRqZNe" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZMZ" resolve="drill" />
        <ref role="1N5PlF" node="sGryc2I$jg" resolve="BLK" />
      </node>
      <node concept="3IAvtB" id="199xfzRqZNf" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZN3" resolve="carriage" />
        <ref role="1N5PlF" node="199xfzRqZJq" resolve="BLK" />
      </node>
      <node concept="bR32z" id="199xfzRrZGH" role="bPNfo">
        <property role="bR32p" value="165.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqZN7" role="1N5PiQ">
      <node concept="3YB4oO" id="199xfzRqZN9" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZMZ" resolve="drill" />
        <ref role="1N5Pi3" node="sGryc2I$jf" resolve="BLOCK" />
      </node>
      <node concept="3Yx0EI" id="199xfzRqZNa" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZN3" resolve="carriage" />
        <ref role="1N5Pi3" node="199xfzRqZJn" resolve="BLOCK" />
      </node>
      <node concept="bR32z" id="199xfzRrZGG" role="bPNfo">
        <property role="bR32p" value="107.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="199xfzRqZMZ" role="1N5PiY">
      <property role="TrG5h" value="drill" />
      <ref role="1N5Tt0" node="sGryc2GN0_" resolve="Drill" />
      <node concept="10YbkR" id="199xfzRqZN1" role="b_cXm">
        <property role="10YbkC" value="550.0" />
        <property role="10YbkE" value="550.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="199xfzRqZN3" role="1N5PiY">
      <property role="TrG5h" value="carriage" />
      <ref role="1N5Tt0" node="199xfzRqZIA" resolve="Carriage" />
      <node concept="10YbkR" id="199xfzRqZN5" role="b_cXm">
        <property role="10YbkC" value="1357.0" />
        <property role="10YbkE" value="557.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqZNk" role="1N5PiQ">
      <node concept="3YB4oO" id="199xfzRqZNm" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZN3" resolve="carriage" />
        <ref role="1N5Pi3" node="199xfzRqZJp" resolve="READY" />
      </node>
      <node concept="3Yx0EI" id="199xfzRqZNn" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZMZ" resolve="drill" />
        <ref role="1N5Pi3" node="sGryc2I$iS" resolve="DR_EV" />
      </node>
      <node concept="bR73E" id="199xfzRrZGI" role="bPNfo">
        <property role="bR73D" value="150.0" />
        <property role="bR73n" value="442.0" />
        <property role="bR73k" value="326.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRrZGr" role="1N5PiQ">
      <node concept="3YHqtX" id="199xfzRrZGt" role="2RhMKC">
        <ref role="3Yz8TM" node="199xfzRrZGq" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="199xfzRrZGu" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZMZ" resolve="drill" />
        <ref role="1N5Pi3" node="sGryc2I$iQ" resolve="INIT" />
      </node>
      <node concept="bR32z" id="199xfzRrZGv" role="bPNfo">
        <property role="bR32p" value="196.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRrZGw" role="1N5PiQ">
      <node concept="3YHqtX" id="199xfzRrZGy" role="2RhMKC">
        <ref role="3Yz8TM" node="199xfzRrZGq" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="199xfzRrZGz" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZN3" resolve="carriage" />
        <ref role="1N5Pi3" node="199xfzRrZGC" resolve="INIT" />
      </node>
      <node concept="bR32z" id="199xfzRrZGJ" role="bPNfo">
        <property role="bR32p" value="984.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="sGryc2GKnS">
    <property role="TrG5h" value="DrillController" />
    <node concept="2zAPAp" id="sGryc2HMcc" role="2zAPwS">
      <property role="TrG5h" value="LIFT_0" />
      <node concept="1tttXp" id="sGryc2HMce" role="1toi31">
        <node concept="1y1qLN" id="sGryc2HMcg" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2HMcj" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2HMci" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2H85N" resolve="LIFT" />
            </node>
            <node concept="1QCq3x" id="sGryc2HMck" role="1y1qST" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="sGryc2HGV5" role="2zAPwS">
      <property role="TrG5h" value="LIFT_1" />
      <node concept="1tttXp" id="sGryc2HJzs" role="1toi31">
        <node concept="1y1qLN" id="sGryc2HJzu" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2HJzx" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2HJzw" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2H85N" resolve="LIFT" />
            </node>
            <node concept="1QCq3x" id="sGryc2HJzy" role="1y1qST">
              <property role="1QCDy1" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="sGryc2HU6m" role="2zAPwS">
      <property role="TrG5h" value="DRILL_0" />
      <node concept="1tttXp" id="sGryc2HU6q" role="1toi31">
        <node concept="1y1qLN" id="sGryc2HU6s" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2HU6v" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2HU6u" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2H85P" resolve="DRILL" />
            </node>
            <node concept="1QCq3x" id="sGryc2HU6w" role="1y1qST" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="sGryc2HRt_" role="2zAPwS">
      <property role="TrG5h" value="DRILL_1" />
      <node concept="1tttXp" id="sGryc2HRtB" role="1toi31">
        <node concept="1y1qLN" id="sGryc2HRtD" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2HRtG" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2HRtF" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2H85P" resolve="DRILL" />
            </node>
            <node concept="1QCq3x" id="sGryc2HRtH" role="1y1qST">
              <property role="1QCDy1" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="sGryc2HRt2" role="2zAPwS">
      <property role="TrG5h" value="LOCK_0" />
      <node concept="1tttXp" id="sGryc2HRt4" role="1toi31">
        <node concept="1y1qLN" id="sGryc2HRt6" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2HRt9" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2HRt8" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2H85R" resolve="LOCK" />
            </node>
            <node concept="1QCq3x" id="sGryc2HRta" role="1y1qST" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="sGryc2HRtN" role="2zAPwS">
      <property role="TrG5h" value="LOCK_1" />
      <node concept="1tttXp" id="sGryc2HRtP" role="1toi31">
        <node concept="1y1qLN" id="sGryc2HRtR" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2HU6d" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2HU6c" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2H85R" resolve="LOCK" />
            </node>
            <node concept="1QCq3x" id="sGryc2HU6e" role="1y1qST">
              <property role="1QCDy1" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zBDeF" id="sGryc2H85N" role="2zBDeH">
      <property role="TrG5h" value="LIFT" />
      <node concept="2zB9wT" id="sGryc2H85T" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2H85P" role="2zBDeH">
      <property role="TrG5h" value="DRILL" />
      <node concept="2zB9wT" id="sGryc2H85V" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2H85R" role="2zBDeH">
      <property role="TrG5h" value="LOCK" />
      <node concept="2zB9wT" id="sGryc2H85X" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2H85F" role="2zBDeD">
      <property role="TrG5h" value="UP" />
      <node concept="2zB9wT" id="sGryc2H85H" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2H85J" role="2zBDeD">
      <property role="TrG5h" value="DOWN" />
      <node concept="2zB9wT" id="sGryc2H85L" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="sGryc2H85E" role="2zBDew">
      <property role="TrG5h" value="CHGO" />
      <node concept="2zBDeU" id="sGryc2IhPP" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2H85N" resolve="LIFT" />
      </node>
      <node concept="2zBDeU" id="sGryc2IhPS" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2H85P" resolve="DRILL" />
      </node>
      <node concept="2zBDeU" id="sGryc2IhPV" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2H85R" resolve="LOCK" />
      </node>
    </node>
    <node concept="2zBDe_" id="sGryc2H85B" role="2zBDey">
      <property role="TrG5h" value="INIT" />
      <node concept="2zBDeU" id="sGryc2IhPy" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2H85F" resolve="UP" />
      </node>
      <node concept="2zBDeU" id="sGryc2IhP_" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2H85J" resolve="DOWN" />
      </node>
    </node>
    <node concept="2zBDe_" id="sGryc2H85C" role="2zBDey">
      <property role="TrG5h" value="CHG" />
      <node concept="2zBDeU" id="sGryc2IhPH" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2H85F" resolve="UP" />
      </node>
      <node concept="2zBDeU" id="sGryc2IhPK" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2H85J" resolve="DOWN" />
      </node>
    </node>
    <node concept="2zBDe_" id="sGryc2H85D" role="2zBDey">
      <property role="TrG5h" value="DR_EV" />
    </node>
    <node concept="2zAPAk" id="sGryc2GKnT" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="sGryc2GKnU" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2H_1m" role="2zAPwY">
      <property role="TrG5h" value="INIT" />
      <node concept="10YbkR" id="sGryc2H_1n" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="sGryc2HMcq" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2HGV5" resolve="LIFT_1" />
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2H85Z" role="2zAPwY">
      <property role="TrG5h" value="WAITING" />
      <node concept="10YbkR" id="sGryc2H860" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="sGryc2HMco" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2HMcc" resolve="LIFT_0" />
      </node>
      <node concept="2zAPAr" id="sGryc2HRt1" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2HRt2" resolve="LOCK_0" />
        <node concept="3YHrnl" id="sGryc2HRtb" role="2NbhEN">
          <ref role="3Yz8TM" node="sGryc2H85E" resolve="CHGO" />
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2H861" role="2zAPwY">
      <property role="TrG5h" value="DRILL" />
      <node concept="10YbkR" id="sGryc2H862" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="sGryc2HU6g" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2HRt_" resolve="DRILL_1" />
      </node>
      <node concept="2zAPAr" id="sGryc2HU6h" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2HRtN" resolve="LOCK_1" />
        <node concept="3YHrnl" id="sGryc2HU6i" role="2NbhEN">
          <ref role="3Yz8TM" node="sGryc2H85E" resolve="CHGO" />
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2H863" role="2zAPwY">
      <property role="TrG5h" value="LIFTING" />
      <node concept="10YbkR" id="sGryc2H864" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="sGryc2HU6k" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2HGV5" resolve="LIFT_1" />
      </node>
      <node concept="2zAPAr" id="sGryc2HU6l" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2HU6m" resolve="DRILL_0" />
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2HEhY" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2GKnT" resolve="START" />
      <ref role="2zAPx1" node="sGryc2H_1m" resolve="INIT" />
      <node concept="10YbkR" id="sGryc2HEhZ" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="199xfzRrYpw" role="2zAZMv">
        <node concept="3YHqtX" id="199xfzRrYp$" role="2N3Qeb">
          <ref role="3Yz8TM" node="sGryc2H85B" resolve="INIT" />
        </node>
        <node concept="1yuI7X" id="199xfzRrYpC" role="2EVYSB">
          <node concept="2zAFuc" id="199xfzRrYpH" role="1yuI7h">
            <ref role="2zAFuj" node="sGryc2H85F" resolve="UP" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2HGV2" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2H_1m" resolve="INIT" />
      <ref role="2zAPx1" node="sGryc2H85Z" resolve="WAITING" />
      <node concept="10YbkR" id="sGryc2HGV3" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="sGryc2HGV4" role="2zAZMv">
        <node concept="2zAFuc" id="sGryc2HJzE" role="2EVYSB">
          <ref role="2zAFuj" node="sGryc2H85F" resolve="UP" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2HJzG" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2GKnT" resolve="START" />
      <ref role="2zAPx1" node="sGryc2H85Z" resolve="WAITING" />
      <node concept="10YbkR" id="sGryc2HJzH" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="199xfzRrY2M" role="2zAZMv">
        <node concept="3YHqtX" id="199xfzRrY2P" role="2N3Qeb">
          <ref role="3Yz8TM" node="sGryc2H85B" resolve="INIT" />
        </node>
        <node concept="2zAFuc" id="199xfzRrY2S" role="2EVYSB">
          <ref role="2zAFuj" node="sGryc2H85F" resolve="UP" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2HRtc" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2H85Z" resolve="WAITING" />
      <ref role="2zAPx1" node="sGryc2H861" resolve="DRILL" />
      <node concept="10YbkR" id="sGryc2HRtd" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="sGryc2HRte" role="2zAZMv">
        <node concept="3YHqtX" id="sGryc2HRti" role="2N3Qeb">
          <ref role="3Yz8TM" node="sGryc2H85D" resolve="DR_EV" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2HRtj" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2H861" resolve="DRILL" />
      <ref role="2zAPx1" node="sGryc2H863" resolve="LIFTING" />
      <node concept="10YbkR" id="sGryc2HRtk" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="sGryc2HRtl" role="2zAZMv">
        <node concept="2zAFuc" id="sGryc2HRtq" role="2EVYSB">
          <ref role="2zAFuj" node="sGryc2H85J" resolve="DOWN" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2HRts" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2H863" resolve="LIFTING" />
      <ref role="2zAPx1" node="sGryc2H85Z" resolve="WAITING" />
      <node concept="10YbkR" id="sGryc2HRtt" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="sGryc2HRtu" role="2zAZMv">
        <node concept="2zAFuc" id="sGryc2HRtz" role="2EVYSB">
          <ref role="2zAFuj" node="sGryc2H85F" resolve="UP" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="sGryc2GN0_">
    <property role="TrG5h" value="Drill" />
    <node concept="2zBDeF" id="sGryc2I$jg" role="2zBDeH">
      <property role="TrG5h" value="BLK" />
      <node concept="2zB9wT" id="sGryc2I$ji" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="sGryc2I$jf" role="2zBDew">
      <property role="TrG5h" value="BLOCK" />
      <node concept="2zBDeU" id="5dgM6a87q_I" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2I$jg" resolve="BLK" />
      </node>
    </node>
    <node concept="2zBDe_" id="sGryc2I$iQ" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="2zBDe_" id="sGryc2I$iS" role="2zBDey">
      <property role="TrG5h" value="DR_EV" />
    </node>
    <node concept="1N5Tq9" id="sGryc2I$ie" role="1N5PiV">
      <node concept="3IAhSD" id="sGryc2I$ig" role="2RhMKC">
        <ref role="1N5Pi4" node="sGryc2Iv1a" resolve="drillController" />
        <ref role="1N5PlF" node="sGryc2H85N" resolve="LIFT" />
      </node>
      <node concept="3IAvtB" id="sGryc2I$ih" role="2RhMK_">
        <ref role="1N5Pi4" node="sGryc2Iv1d" resolve="drillModelView" />
        <ref role="1N5PlF" node="sGryc2I$hS" resolve="LIFT" />
      </node>
      <node concept="bR32z" id="sGryc2I$kV" role="bPNfo">
        <property role="bR32p" value="788.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="sGryc2I$i8" role="1N5PiQ">
      <node concept="3YB4oO" id="sGryc2I$ia" role="2RhMKC">
        <ref role="1N5Pi4" node="sGryc2Iv1a" resolve="drillController" />
        <ref role="1N5Pi3" node="sGryc2H85E" resolve="CHGO" />
      </node>
      <node concept="3Yx0EI" id="sGryc2I$ib" role="2RhMK_">
        <ref role="1N5Pi4" node="sGryc2Iv1d" resolve="drillModelView" />
        <ref role="1N5Pi3" node="sGryc2I$hQ" resolve="CHGI" />
      </node>
      <node concept="bR32z" id="sGryc2I$kZ" role="bPNfo">
        <property role="bR32p" value="788.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="sGryc2Iv1a" role="1N5PiY">
      <property role="TrG5h" value="drillController" />
      <ref role="1N5Tt0" node="sGryc2GKnS" resolve="DrillController" />
      <node concept="10YbkR" id="sGryc2Iv1c" role="b_cXm">
        <property role="10YbkC" value="1919.0" />
        <property role="10YbkE" value="530.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="sGryc2Iv1d" role="1N5PiY">
      <property role="TrG5h" value="drillModelView" />
      <ref role="1N5Tt0" node="sGryc2H2Nx" resolve="DrillModelView" />
      <node concept="10YbkR" id="sGryc2Iv1f" role="b_cXm">
        <property role="10YbkC" value="3226.0" />
        <property role="10YbkE" value="565.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="sGryc2I$il" role="1N5PiV">
      <node concept="3IAhSD" id="sGryc2I$in" role="2RhMKC">
        <ref role="1N5Pi4" node="sGryc2Iv1a" resolve="drillController" />
        <ref role="1N5PlF" node="sGryc2H85P" resolve="DRILL" />
      </node>
      <node concept="3IAvtB" id="sGryc2I$io" role="2RhMK_">
        <ref role="1N5Pi4" node="sGryc2Iv1d" resolve="drillModelView" />
        <ref role="1N5PlF" node="sGryc2I$hW" resolve="LOWER" />
      </node>
      <node concept="bR32z" id="sGryc2I$kW" role="bPNfo">
        <property role="bR32p" value="788.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="sGryc2I$iq" role="1N5PiV">
      <node concept="3IAhSD" id="sGryc2I$is" role="2RhMKC">
        <ref role="1N5Pi4" node="sGryc2Iv1d" resolve="drillModelView" />
        <ref role="1N5PlF" node="sGryc2I$i0" resolve="UP" />
      </node>
      <node concept="3IAvtB" id="sGryc2I$it" role="2RhMK_">
        <ref role="1N5Pi4" node="sGryc2Iv1a" resolve="drillController" />
        <ref role="1N5PlF" node="sGryc2H85F" resolve="UP" />
      </node>
      <node concept="bR73E" id="sGryc2I$kX" role="bPNfo">
        <property role="bR73D" value="250.0" />
        <property role="bR73n" value="415.0" />
        <property role="bR73k" value="200.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="sGryc2I$iw" role="1N5PiV">
      <node concept="3IAhSD" id="sGryc2I$iy" role="2RhMKC">
        <ref role="1N5Pi4" node="sGryc2Iv1d" resolve="drillModelView" />
        <ref role="1N5PlF" node="sGryc2I$i4" resolve="DOWN" />
      </node>
      <node concept="3IAvtB" id="sGryc2I$iz" role="2RhMK_">
        <ref role="1N5Pi4" node="sGryc2Iv1a" resolve="drillController" />
        <ref role="1N5PlF" node="sGryc2H85J" resolve="DOWN" />
      </node>
      <node concept="bR73E" id="sGryc2I$l1" role="bPNfo">
        <property role="bR73D" value="150.0" />
        <property role="bR73n" value="257.0" />
        <property role="bR73k" value="150.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="sGryc2I$iU" role="1N5PiQ">
      <node concept="3YHqtX" id="sGryc2I$iW" role="2RhMKC">
        <ref role="3Yz8TM" node="sGryc2I$iQ" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="sGryc2I$iX" role="2RhMK_">
        <ref role="1N5Pi4" node="sGryc2Iv1a" resolve="drillController" />
        <ref role="1N5Pi3" node="sGryc2H85B" resolve="INIT" />
      </node>
      <node concept="bR32z" id="sGryc2I$kP" role="bPNfo">
        <property role="bR32p" value="1230.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="sGryc2I$iZ" role="1N5PiQ">
      <node concept="3YHqtX" id="sGryc2I$j1" role="2RhMKC">
        <ref role="3Yz8TM" node="sGryc2I$iS" resolve="DR_EV" />
      </node>
      <node concept="3Yx0EI" id="sGryc2I$j2" role="2RhMK_">
        <ref role="1N5Pi4" node="sGryc2Iv1a" resolve="drillController" />
        <ref role="1N5Pi3" node="sGryc2H85D" resolve="DR_EV" />
      </node>
      <node concept="bR32z" id="sGryc2I$kU" role="bPNfo">
        <property role="bR32p" value="184.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="sGryc2I$j8" role="1N5PiQ">
      <node concept="3YB4oO" id="sGryc2I$ja" role="2RhMKC">
        <ref role="1N5Pi4" node="sGryc2Iv1d" resolve="drillModelView" />
        <ref role="1N5Pi3" node="sGryc2I$hR" resolve="CHANGE" />
      </node>
      <node concept="3Yx0EI" id="sGryc2I$jb" role="2RhMK_">
        <ref role="1N5Pi4" node="sGryc2Iv1a" resolve="drillController" />
        <ref role="1N5Pi3" node="sGryc2H85C" resolve="CHG" />
      </node>
      <node concept="bR73E" id="sGryc2I$kY" role="bPNfo">
        <property role="bR73D" value="150.0" />
        <property role="bR73n" value="-142.0" />
        <property role="bR73k" value="100.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="sGryc2I$jL" role="1N5PiQ">
      <node concept="3YB4oO" id="sGryc2I$jN" role="2RhMKC">
        <ref role="1N5Pi4" node="sGryc2Iv1d" resolve="drillModelView" />
        <ref role="1N5Pi3" node="sGryc2I$hR" resolve="CHANGE" />
      </node>
      <node concept="3YHrnl" id="sGryc2I$jO" role="2RhMK_">
        <ref role="3Yz8TM" node="sGryc2I$jf" resolve="BLOCK" />
      </node>
      <node concept="bR32z" id="sGryc2I$l0" role="bPNfo">
        <property role="bR32p" value="638.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="sGryc2I$kG" role="1N5PiV">
      <node concept="3IAhSD" id="sGryc2I$kI" role="2RhMKC">
        <ref role="1N5Pi4" node="sGryc2Iv1a" resolve="drillController" />
        <ref role="1N5PlF" node="sGryc2H85R" resolve="LOCK" />
      </node>
      <node concept="3I$zcF" id="sGryc2I$kJ" role="2RhMK_">
        <ref role="3IAu0i" node="sGryc2I$jg" resolve="BLK" />
      </node>
      <node concept="bR32z" id="sGryc2I$kN" role="bPNfo">
        <property role="bR32p" value="1823.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="sGryc2H2Nx">
    <property role="TrG5h" value="DrillModelView" />
    <node concept="1N5Tt1" id="199xfzRqWuB" role="1N5PiY">
      <property role="TrG5h" value="drillModel" />
      <ref role="1N5Tt0" node="sGryc2IhPX" resolve="DrillModel" />
      <node concept="10YbkR" id="199xfzRqWuD" role="b_cXm">
        <property role="10YbkC" value="2350.0" />
        <property role="10YbkE" value="492.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="sGryc2I$i0" role="2zBDeH">
      <property role="TrG5h" value="UP" />
      <node concept="2zB9wT" id="sGryc2I$i2" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2I$i4" role="2zBDeH">
      <property role="TrG5h" value="DOWN" />
      <node concept="2zB9wT" id="sGryc2I$i6" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2I$hS" role="2zBDeD">
      <property role="TrG5h" value="LIFT" />
      <node concept="2zB9wT" id="sGryc2I$hU" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2I$hW" role="2zBDeD">
      <property role="TrG5h" value="LOWER" />
      <node concept="2zB9wT" id="sGryc2I$hY" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="sGryc2I$hR" role="2zBDew">
      <property role="TrG5h" value="CHANGE" />
      <node concept="2zBDeU" id="199xfzRqZkO" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2I$i0" resolve="UP" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZlW" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2I$i4" resolve="DOWN" />
      </node>
    </node>
    <node concept="2zBDe_" id="sGryc2I$hQ" role="2zBDey">
      <property role="TrG5h" value="CHGI" />
      <node concept="2zBDeU" id="199xfzRqZeU" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2I$hS" resolve="LIFT" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZfk" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2I$hW" resolve="LOWER" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqYGY" role="1N5PiV">
      <node concept="3I$UGD" id="199xfzRqYH0" role="2RhMKC">
        <ref role="3IAu0i" node="sGryc2I$hS" resolve="LIFT" />
      </node>
      <node concept="3IAvtB" id="199xfzRqYH1" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqWuB" resolve="drillModel" />
        <ref role="1N5PlF" node="199xfzRqWzH" resolve="LIFT" />
      </node>
      <node concept="bR32z" id="199xfzRqYW9" role="bPNfo">
        <property role="bR32p" value="1092.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqYI8" role="1N5PiV">
      <node concept="3I$UGD" id="199xfzRqYIa" role="2RhMKC">
        <ref role="3IAu0i" node="sGryc2I$hW" resolve="LOWER" />
      </node>
      <node concept="3IAvtB" id="199xfzRqYIb" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqWuB" resolve="drillModel" />
        <ref role="1N5PlF" node="199xfzRqWB0" resolve="LOWER" />
      </node>
      <node concept="bR32z" id="199xfzRqYW7" role="bPNfo">
        <property role="bR32p" value="969.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqYJE" role="1N5PiQ">
      <node concept="3YHqtX" id="199xfzRqYJG" role="2RhMKC">
        <ref role="3Yz8TM" node="sGryc2I$hQ" resolve="CHGI" />
      </node>
      <node concept="3Yx0EI" id="199xfzRqYJH" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqWuB" resolve="drillModel" />
        <ref role="1N5Pi3" node="199xfzRqWxb" resolve="CHGI" />
      </node>
      <node concept="bR32z" id="199xfzRqYW8" role="bPNfo">
        <property role="bR32p" value="1165.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqYO5" role="1N5PiQ">
      <node concept="3YB4oO" id="199xfzRqYO7" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqWuB" resolve="drillModel" />
        <ref role="1N5Pi3" node="199xfzRqWMd" resolve="CHANGE" />
      </node>
      <node concept="3YHrnl" id="199xfzRqYO8" role="2RhMK_">
        <ref role="3Yz8TM" node="sGryc2I$hR" resolve="CHANGE" />
      </node>
      <node concept="bR32z" id="199xfzRqYWd" role="bPNfo">
        <property role="bR32p" value="257.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqYTq" role="1N5PiV">
      <node concept="3IAhSD" id="199xfzRqYTs" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqWuB" resolve="drillModel" />
        <ref role="1N5PlF" node="199xfzRqWNj" resolve="UP" />
      </node>
      <node concept="3I$zcF" id="199xfzRqYTt" role="2RhMK_">
        <ref role="3IAu0i" node="sGryc2I$i0" resolve="UP" />
      </node>
      <node concept="bR32z" id="199xfzRqYWc" role="bPNfo">
        <property role="bR32p" value="353.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqYU_" role="1N5PiV">
      <node concept="3IAhSD" id="199xfzRqYUB" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqWuB" resolve="drillModel" />
        <ref role="1N5PlF" node="199xfzRqWOs" resolve="DOWN" />
      </node>
      <node concept="3I$zcF" id="199xfzRqYUC" role="2RhMK_">
        <ref role="3IAu0i" node="sGryc2I$i4" resolve="DOWN" />
      </node>
      <node concept="bR32z" id="199xfzRqYWe" role="bPNfo">
        <property role="bR32p" value="442.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="sGryc2H2NT">
    <property role="TrG5h" value="CarriageModelView" />
    <node concept="1N5Tqi" id="199xfzRqZHb" role="1N5PiQ">
      <node concept="3YHqtX" id="199xfzRqZHd" role="2RhMKC">
        <ref role="3Yz8TM" node="199xfzRqZDV" resolve="CHGI" />
      </node>
      <node concept="3Yx0EI" id="199xfzRqZHe" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZH5" resolve="carriageModel" />
        <ref role="1N5Pi3" node="199xfzRqZDJ" resolve="CHGI" />
      </node>
      <node concept="bR32z" id="199xfzRqZHf" role="bPNfo">
        <property role="bR32p" value="580.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="199xfzRqZH5" role="1N5PiY">
      <property role="TrG5h" value="carriageModel" />
      <ref role="1N5Tt0" node="sGryc2IhQL" resolve="CarriageModel" />
      <node concept="10YbkR" id="199xfzRqZH7" role="b_cXm">
        <property role="10YbkC" value="1319.0" />
        <property role="10YbkE" value="680.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="199xfzRqZEk" role="2zBDeH">
      <property role="TrG5h" value="LOAD_P" />
      <node concept="2zB9wT" id="199xfzRqZEm" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="199xfzRqZEo" role="2zBDeH">
      <property role="TrG5h" value="WORK_P" />
      <node concept="2zB9wT" id="199xfzRqZEq" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="199xfzRqZDX" role="2zBDeD">
      <property role="TrG5h" value="INSIDE" />
      <node concept="2zB9wT" id="199xfzRqZE3" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="199xfzRqZDZ" role="2zBDeD">
      <property role="TrG5h" value="OUTSIDE" />
      <node concept="2zB9wT" id="199xfzRqZE5" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="199xfzRqZDW" role="2zBDew">
      <property role="TrG5h" value="CHANGE" />
      <node concept="2zBDeU" id="199xfzRqZEz" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZEk" resolve="LOAD_P" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZEB" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZEo" resolve="WORK_P" />
      </node>
    </node>
    <node concept="2zBDe_" id="199xfzRqZDV" role="2zBDey">
      <property role="TrG5h" value="CHGI" />
      <node concept="2zBDeU" id="199xfzRqZEc" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZDX" resolve="INSIDE" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZEf" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZDZ" resolve="OUTSIDE" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqZHu" role="1N5PiV">
      <node concept="3IAhSD" id="199xfzRqZHw" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZH5" resolve="carriageModel" />
        <ref role="1N5PlF" node="199xfzRqZET" resolve="LOAD_P" />
      </node>
      <node concept="3I$zcF" id="199xfzRqZHx" role="2RhMK_">
        <ref role="3IAu0i" node="199xfzRqZEk" resolve="LOAD_P" />
      </node>
      <node concept="bR32z" id="199xfzRqZHG" role="bPNfo">
        <property role="bR32p" value="1057.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqZHA" role="1N5PiV">
      <node concept="3IAhSD" id="199xfzRqZHC" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZH5" resolve="carriageModel" />
        <ref role="1N5PlF" node="199xfzRqZEX" resolve="WORK_P" />
      </node>
      <node concept="3I$zcF" id="199xfzRqZHD" role="2RhMK_">
        <ref role="3IAu0i" node="199xfzRqZEo" resolve="WORK_P" />
      </node>
      <node concept="bR32z" id="199xfzRqZHF" role="bPNfo">
        <property role="bR32p" value="1226.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqZHH" role="1N5PiQ">
      <node concept="3YB4oO" id="199xfzRqZHJ" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZH5" resolve="carriageModel" />
        <ref role="1N5Pi3" node="199xfzRqZDK" resolve="CHANGE" />
      </node>
      <node concept="3YHrnl" id="199xfzRqZHK" role="2RhMK_">
        <ref role="3Yz8TM" node="199xfzRqZDW" resolve="CHANGE" />
      </node>
      <node concept="bR32z" id="199xfzRqZHM" role="bPNfo">
        <property role="bR32p" value="938.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqZHN" role="1N5PiV">
      <node concept="3I$UGD" id="199xfzRqZHP" role="2RhMKC">
        <ref role="3IAu0i" node="199xfzRqZDX" resolve="INSIDE" />
      </node>
      <node concept="3IAvtB" id="199xfzRqZHQ" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZH5" resolve="carriageModel" />
        <ref role="1N5PlF" node="199xfzRqZDL" resolve="INSIDE" />
      </node>
      <node concept="bR32z" id="199xfzRqZHX" role="bPNfo">
        <property role="bR32p" value="565.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqZHS" role="1N5PiV">
      <node concept="3I$UGD" id="199xfzRqZHU" role="2RhMKC">
        <ref role="3IAu0i" node="199xfzRqZDZ" resolve="OUTSIDE" />
      </node>
      <node concept="3IAvtB" id="199xfzRqZHV" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZH5" resolve="carriageModel" />
        <ref role="1N5PlF" node="199xfzRqZDP" resolve="OUTSIDE" />
      </node>
      <node concept="bR32z" id="199xfzRqZHY" role="bPNfo">
        <property role="bR32p" value="419.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="sGryc2If9J">
    <property role="TrG5h" value="CarriageController" />
    <node concept="2zAPAp" id="sGryc2IhNg" role="2zAPwS">
      <property role="TrG5h" value="IN_0" />
      <node concept="1tttXp" id="sGryc2IhNk" role="1toi31">
        <node concept="1y1qLN" id="sGryc2IhNm" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2IhNp" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2IhNo" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2Ifaz" resolve="INSIDE" />
            </node>
            <node concept="1QCq3x" id="sGryc2IhNq" role="1y1qST" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="sGryc2IhNr" role="2zAPwS">
      <property role="TrG5h" value="IN_1" />
      <node concept="1tttXp" id="sGryc2IhNs" role="1toi31">
        <node concept="1y1qLN" id="sGryc2IhNt" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2IhNu" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2IhNv" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2Ifaz" resolve="INSIDE" />
            </node>
            <node concept="1QCq3x" id="sGryc2IhNx" role="1y1qST">
              <property role="1QCDy1" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="sGryc2IhNE" role="2zAPwS">
      <property role="TrG5h" value="OUT_0" />
      <node concept="1tttXp" id="sGryc2IhNF" role="1toi31">
        <node concept="1y1qLN" id="sGryc2IhNG" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2IhNH" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2IhNQ" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2IfaB" resolve="OUTSIDE" />
            </node>
            <node concept="1QCq3x" id="sGryc2IhNJ" role="1y1qST" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="sGryc2IhNK" role="2zAPwS">
      <property role="TrG5h" value="OUT_1" />
      <node concept="1tttXp" id="sGryc2IhNL" role="1toi31">
        <node concept="1y1qLN" id="sGryc2IhNM" role="1y4NXT">
          <node concept="1y1qS$" id="sGryc2IhNN" role="1y1qVS">
            <node concept="2zAFuc" id="sGryc2IhNS" role="1y1qSV">
              <ref role="2zAFuj" node="sGryc2IfaB" resolve="OUTSIDE" />
            </node>
            <node concept="1QCq3x" id="sGryc2IhNV" role="1y1qST">
              <property role="1QCDy1" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2IfaQ" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2If9K" resolve="START" />
      <ref role="2zAPx1" node="sGryc2IfaF" resolve="WAIT" />
      <node concept="10YbkR" id="sGryc2IfaR" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="sGryc2IfaS" role="2zAZMv">
        <node concept="3YHqtX" id="sGryc2IfaT" role="2N3Qeb">
          <ref role="3Yz8TM" node="sGryc2Ifaa" resolve="INIT" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2IhO8" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2IfaF" resolve="WAIT" />
      <ref role="2zAPx1" node="sGryc2IfaH" resolve="BRING" />
      <node concept="10YbkR" id="sGryc2IhO9" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="sGryc2IhOa" role="2zAZMv">
        <node concept="1yuI7X" id="sGryc2IhOc" role="2EVYSB">
          <node concept="2zAFuc" id="sGryc2IhOg" role="1yuI7h">
            <ref role="2zAFuj" node="sGryc2Ifar" resolve="BLK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2IhOo" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2IfaH" resolve="BRING" />
      <ref role="2zAPx1" node="sGryc2IfaJ" resolve="DRILLED" />
      <node concept="10YbkR" id="sGryc2IhOp" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="sGryc2IhOq" role="2zAZMv">
        <node concept="2zAFuc" id="sGryc2IhOs" role="2EVYSB">
          <ref role="2zAFuj" node="sGryc2Ifan" resolve="WP" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2IhOu" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2IfaJ" resolve="DRILLED" />
      <ref role="2zAPx1" node="sGryc2IfaL" resolve="REMOVE" />
      <node concept="10YbkR" id="sGryc2IhOv" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="sGryc2IhOw" role="2zAZMv">
        <node concept="1yuI7X" id="sGryc2IhOz" role="2EVYSB">
          <node concept="2zAFuc" id="sGryc2IhOB" role="1yuI7h">
            <ref role="2zAFuj" node="sGryc2Ifar" resolve="BLK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="sGryc2IhOD" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2IfaL" resolve="REMOVE" />
      <ref role="2zAPx1" node="sGryc2IfaF" resolve="WAIT" />
      <node concept="10YbkR" id="sGryc2IhOE" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="sGryc2IhOF" role="2zAZMv">
        <node concept="2zAFuc" id="sGryc2IhOI" role="2EVYSB">
          <ref role="2zAFuj" node="sGryc2Ifaj" resolve="LOAD_P" />
        </node>
      </node>
    </node>
    <node concept="2zBDeF" id="sGryc2Ifaz" role="2zBDeH">
      <property role="TrG5h" value="INSIDE" />
      <node concept="2zB9wT" id="sGryc2Ifa_" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2IfaB" role="2zBDeH">
      <property role="TrG5h" value="OUTSIDE" />
      <node concept="2zB9wT" id="sGryc2IfaD" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2Ifaj" role="2zBDeD">
      <property role="TrG5h" value="LOAD_P" />
      <node concept="2zB9wT" id="sGryc2Ifal" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2Ifan" role="2zBDeD">
      <property role="TrG5h" value="WP" />
      <node concept="2zB9wT" id="sGryc2Ifap" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="sGryc2Ifar" role="2zBDeD">
      <property role="TrG5h" value="BLK" />
      <node concept="2zB9wT" id="sGryc2Ifat" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="sGryc2Ifah" role="2zBDew">
      <property role="TrG5h" value="CHGO" />
      <node concept="2zBDeU" id="sGryc2IhPi" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2Ifaz" resolve="INSIDE" />
      </node>
      <node concept="2zBDeU" id="sGryc2IhPl" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2IfaB" resolve="OUTSIDE" />
      </node>
    </node>
    <node concept="2zBDe_" id="sGryc2Ifai" role="2zBDew">
      <property role="TrG5h" value="READY" />
      <node concept="2zBDeU" id="sGryc2IhPq" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2Ifaz" resolve="INSIDE" />
      </node>
      <node concept="2zBDeU" id="sGryc2IhPt" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2IfaB" resolve="OUTSIDE" />
      </node>
    </node>
    <node concept="2zBDe_" id="sGryc2Ifa9" role="2zBDey">
      <property role="TrG5h" value="BLOCK" />
      <node concept="2zBDeU" id="sGryc2IhON" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2Ifar" resolve="BLK" />
      </node>
    </node>
    <node concept="2zBDe_" id="sGryc2Ifaa" role="2zBDey">
      <property role="TrG5h" value="INIT" />
      <node concept="2zBDeU" id="sGryc2IhOT" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2Ifaj" resolve="LOAD_P" />
      </node>
      <node concept="2zBDeU" id="sGryc2IhOW" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2Ifan" resolve="WP" />
      </node>
    </node>
    <node concept="2zBDe_" id="sGryc2Ifac" role="2zBDey">
      <property role="TrG5h" value="CHGI" />
      <node concept="2zBDeU" id="sGryc2IhP6" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2Ifaj" resolve="LOAD_P" />
      </node>
      <node concept="2zBDeU" id="sGryc2IhP9" role="2zBDeW">
        <ref role="2zBDeT" node="sGryc2Ifan" resolve="WP" />
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2If9K" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="sGryc2If9L" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2IfaF" role="2zAPwY">
      <property role="TrG5h" value="WAIT" />
      <node concept="10YbkR" id="sGryc2IfaG" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="sGryc2IhNX" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2IhNE" resolve="OUT_0" />
        <node concept="3YHrnl" id="sGryc2IhNY" role="2NbhEN">
          <ref role="3Yz8TM" node="sGryc2Ifah" resolve="CHGO" />
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2IfaH" role="2zAPwY">
      <property role="TrG5h" value="BRING" />
      <node concept="10YbkR" id="sGryc2IfaI" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="sGryc2IhO0" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2IhNr" resolve="IN_1" />
        <node concept="3YHrnl" id="sGryc2IhO1" role="2NbhEN">
          <ref role="3Yz8TM" node="sGryc2Ifah" resolve="CHGO" />
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2IfaJ" role="2zAPwY">
      <property role="TrG5h" value="DRILLED" />
      <node concept="10YbkR" id="sGryc2IfaK" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="sGryc2IhO3" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2IhNg" resolve="IN_0" />
        <node concept="3YHrnl" id="sGryc2IhO4" role="2NbhEN">
          <ref role="3Yz8TM" node="sGryc2Ifai" resolve="READY" />
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2IfaL" role="2zAPwY">
      <property role="TrG5h" value="REMOVE" />
      <node concept="10YbkR" id="sGryc2IfaM" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="sGryc2IhO6" role="2zAPBK">
        <ref role="2zAPAu" node="sGryc2IhNK" resolve="OUT_1" />
        <node concept="3YHrnl" id="sGryc2IhO7" role="2NbhEN">
          <ref role="3Yz8TM" node="sGryc2Ifah" resolve="CHGO" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="1b51meRT2s6" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2IfaJ" resolve="DRILLED" />
      <ref role="2zAPx1" node="sGryc2IfaJ" resolve="DRILLED" />
      <node concept="10YbkR" id="1b51meRT2s7" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="1b51meRT2s8" role="2zAZMv" />
    </node>
  </node>
  <node concept="2zBDf2" id="sGryc2IhPX">
    <property role="TrG5h" value="DrillModel" />
    <node concept="2zBDeF" id="199xfzRqYw7" role="2zBDeH">
      <property role="TrG5h" value="COORD" />
      <node concept="3r5wd4" id="199xfzRqYw9" role="2zB7qv" />
    </node>
    <node concept="2zAPAq" id="199xfzRqX$q" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2IhPY" resolve="START" />
      <ref role="2zAPx1" node="199xfzRqXuf" resolve="DRILL" />
      <node concept="10YbkR" id="199xfzRqX$r" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="199xfzRrYKS" role="2zAZMv">
        <node concept="3YHqtX" id="199xfzRrYKX" role="2N3Qeb">
          <ref role="3Yz8TM" node="199xfzRqWxb" resolve="CHGI" />
        </node>
        <node concept="2zAFuc" id="199xfzRrYL0" role="2EVYSB">
          <ref role="2zAFuj" node="199xfzRqWB0" resolve="LOWER" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="199xfzRqXNG" role="2zAPxA">
      <ref role="2zAPx3" node="199xfzRqXuf" resolve="DRILL" />
      <ref role="2zAPx1" node="199xfzRqY45" resolve="WAITING" />
      <node concept="10YbkR" id="199xfzRqXNH" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="199xfzRrYL2" role="2zAZMv">
        <node concept="3YHqtX" id="199xfzRrYL7" role="2N3Qeb">
          <ref role="3Yz8TM" node="199xfzRqWxb" resolve="CHGI" />
        </node>
        <node concept="2zAFuc" id="199xfzRrYLb" role="2EVYSB">
          <ref role="2zAFuj" node="199xfzRqWzH" resolve="LIFT" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="199xfzRqYku" role="2zAPxA">
      <ref role="2zAPx1" node="199xfzRqXuf" resolve="DRILL" />
      <ref role="2zAPx3" node="199xfzRqY45" resolve="WAITING" />
      <node concept="10YbkR" id="199xfzRqYkv" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="199xfzRrYLd" role="2zAZMv">
        <node concept="3YHqtX" id="199xfzRrYLi" role="2N3Qeb">
          <ref role="3Yz8TM" node="199xfzRqWxb" resolve="CHGI" />
        </node>
        <node concept="2zAFuc" id="199xfzRrYLl" role="2EVYSB">
          <ref role="2zAFuj" node="199xfzRqWB0" resolve="LOWER" />
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="199xfzRqX2V" role="2zAPwS">
      <property role="TrG5h" value="UP_0" />
      <node concept="1tttXp" id="199xfzRqX5u" role="1toi31">
        <node concept="1y1qLN" id="199xfzRqX5w" role="1y4NXT">
          <node concept="1y1qS$" id="199xfzRqX6C" role="1y1qVS">
            <node concept="2zAFuc" id="199xfzRqX6B" role="1y1qSV">
              <ref role="2zAFuj" node="199xfzRqWNj" resolve="UP" />
            </node>
            <node concept="1QCq3x" id="199xfzRqX8s" role="1y1qST" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="199xfzRqX9j" role="2zAPwS">
      <property role="TrG5h" value="UP_1" />
      <node concept="1tttXp" id="199xfzRqX9k" role="1toi31">
        <node concept="1y1qLN" id="199xfzRqX9l" role="1y4NXT">
          <node concept="1y1qS$" id="199xfzRqX9m" role="1y1qVS">
            <node concept="2zAFuc" id="199xfzRqX9n" role="1y1qSV">
              <ref role="2zAFuj" node="199xfzRqWNj" resolve="UP" />
            </node>
            <node concept="1QCq3x" id="199xfzRqXfI" role="1y1qST">
              <property role="1QCDy1" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="199xfzRqX9K" role="2zAPwS">
      <property role="TrG5h" value="DOWN_0" />
      <node concept="1tttXp" id="199xfzRqX9L" role="1toi31">
        <node concept="1y1qLN" id="199xfzRqX9M" role="1y4NXT">
          <node concept="1y1qS$" id="199xfzRqX9N" role="1y1qVS">
            <node concept="1QCq3x" id="199xfzRqX9P" role="1y1qST" />
            <node concept="2zAFuc" id="199xfzRqXhz" role="1y1qSV">
              <ref role="2zAFuj" node="199xfzRqWOs" resolve="DOWN" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="199xfzRqXad" role="2zAPwS">
      <property role="TrG5h" value="DOWN_1" />
      <node concept="1tttXp" id="199xfzRqXae" role="1toi31">
        <node concept="1y1qLN" id="199xfzRqXaf" role="1y4NXT">
          <node concept="1y1qS$" id="199xfzRqXag" role="1y1qVS">
            <node concept="2zAFuc" id="199xfzRqXij" role="1y1qSV">
              <ref role="2zAFuj" node="199xfzRqWOs" resolve="DOWN" />
            </node>
            <node concept="1QCq3x" id="199xfzRqXk9" role="1y1qST">
              <property role="1QCDy1" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zBDeF" id="199xfzRqWNj" role="2zBDeH">
      <property role="TrG5h" value="UP" />
      <node concept="2zB9wT" id="199xfzRqWO3" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="199xfzRqWOs" role="2zBDeH">
      <property role="TrG5h" value="DOWN" />
      <node concept="2zB9wT" id="199xfzRqWOP" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="199xfzRqWMd" role="2zBDew">
      <property role="TrG5h" value="CHANGE" />
      <node concept="2zBDeU" id="199xfzRqZ5K" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqWNj" resolve="UP" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZ6S" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqWOs" resolve="DOWN" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZ80" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqYw7" resolve="COORD" />
      </node>
    </node>
    <node concept="2zBDeF" id="199xfzRqWzH" role="2zBDeD">
      <property role="TrG5h" value="LIFT" />
      <node concept="2zB9wT" id="199xfzRqWAB" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="199xfzRqWB0" role="2zBDeD">
      <property role="TrG5h" value="LOWER" />
      <node concept="2zB9wT" id="199xfzRqWBK" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="199xfzRqWxb" role="2zBDey">
      <property role="TrG5h" value="CHGI" />
      <node concept="2zBDeU" id="199xfzRqZ22" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqWzH" resolve="LIFT" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZ3S" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqWB0" resolve="LOWER" />
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2IhPY" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="sGryc2IhPZ" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="199xfzRqX1P" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqX9j" resolve="UP_1" />
      </node>
      <node concept="2zAPAr" id="199xfzRqXoP" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqX9K" resolve="DOWN_0" />
      </node>
    </node>
    <node concept="2zAPAk" id="199xfzRqXuf" role="2zAPwY">
      <property role="TrG5h" value="DRILL" />
      <node concept="10YbkR" id="199xfzRqXug" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="199xfzRqXxa" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqX2V" resolve="UP_0" />
      </node>
      <node concept="2zAPAr" id="199xfzRqXXe" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqXad" resolve="DOWN_1" />
        <node concept="3YHrnl" id="199xfzRqY1c" role="2NbhEN">
          <ref role="3Yz8TM" node="199xfzRqWMd" resolve="CHANGE" />
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="199xfzRqY45" role="2zAPwY">
      <property role="TrG5h" value="WAITING" />
      <node concept="10YbkR" id="199xfzRqY46" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2zAPAr" id="199xfzRqYah" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqX9j" resolve="UP_1" />
      </node>
      <node concept="2zAPAr" id="199xfzRqYeX" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqX9K" resolve="DOWN_0" />
        <node concept="3YHrnl" id="199xfzRqYgL" role="2NbhEN">
          <ref role="3Yz8TM" node="199xfzRqWMd" resolve="CHANGE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="sGryc2IhQL">
    <property role="TrG5h" value="CarriageModel" />
    <node concept="2zBDeF" id="199xfzRqZGY" role="2zBDeH">
      <property role="TrG5h" value="COORD" />
      <node concept="3r5wd4" id="199xfzRqZH0" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="199xfzRqZET" role="2zBDeH">
      <property role="TrG5h" value="LOAD_P" />
      <node concept="2zB9wT" id="199xfzRqZEV" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="199xfzRqZEX" role="2zBDeH">
      <property role="TrG5h" value="WORK_P" />
      <node concept="2zB9wT" id="199xfzRqZEZ" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="199xfzRqZDL" role="2zBDeD">
      <property role="TrG5h" value="INSIDE" />
      <node concept="2zB9wT" id="199xfzRqZDN" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="199xfzRqZDP" role="2zBDeD">
      <property role="TrG5h" value="OUTSIDE" />
      <node concept="2zB9wT" id="199xfzRqZDR" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="199xfzRqZDK" role="2zBDew">
      <property role="TrG5h" value="CHANGE" />
      <node concept="2zBDeU" id="199xfzRqZF8" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZET" resolve="LOAD_P" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZFb" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZEX" resolve="WORK_P" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZH3" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZGY" resolve="COORD" />
      </node>
    </node>
    <node concept="2zBDe_" id="199xfzRqZDJ" role="2zBDey">
      <property role="TrG5h" value="CHGI" />
      <node concept="2zBDeU" id="199xfzRqZEL" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZDL" resolve="INSIDE" />
      </node>
      <node concept="2zBDeU" id="199xfzRqZEO" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZDP" resolve="OUTSIDE" />
      </node>
    </node>
    <node concept="2zAPAk" id="sGryc2IhQM" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="sGryc2IhQN" role="2WOQdS">
        <property role="10YbkC" value="1607.0" />
        <property role="10YbkE" value="784.0" />
      </node>
      <node concept="2zAPAr" id="199xfzRqZG8" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqZFq" resolve="LOAD_P_1" />
      </node>
      <node concept="2zAPAr" id="199xfzRqZGa" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqZFB" resolve="WORK_P_0" />
      </node>
    </node>
    <node concept="2zAPAk" id="199xfzRqZGh" role="2zAPwY">
      <property role="TrG5h" value="PROCESSING" />
      <node concept="10YbkR" id="199xfzRqZGi" role="2WOQdS">
        <property role="10YbkC" value="1584.0" />
        <property role="10YbkE" value="2246.0" />
      </node>
      <node concept="2zAPAr" id="199xfzRqZGR" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqZFg" resolve="LOAD_P_0" />
      </node>
      <node concept="2zAPAr" id="199xfzRqZGS" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqZFB" resolve="WORK_P_0" />
        <node concept="3YHrnl" id="199xfzRqZGT" role="2NbhEN">
          <ref role="3Yz8TM" node="199xfzRqZDK" resolve="CHANGE" />
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="199xfzRqZGs" role="2zAPwY">
      <property role="TrG5h" value="WAITING" />
      <node concept="10YbkR" id="199xfzRqZGt" role="2WOQdS">
        <property role="10YbkC" value="1546.0" />
        <property role="10YbkE" value="3684.0" />
      </node>
      <node concept="2zAPAr" id="199xfzRqZGV" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqZFq" resolve="LOAD_P_1" />
      </node>
      <node concept="2zAPAr" id="199xfzRqZGW" role="2zAPBK">
        <ref role="2zAPAu" node="199xfzRqZFH" resolve="WORK_P_1" />
        <node concept="3YHrnl" id="199xfzRqZGX" role="2NbhEN">
          <ref role="3Yz8TM" node="199xfzRqZDK" resolve="CHANGE" />
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="199xfzRqZFg" role="2zAPwS">
      <property role="TrG5h" value="LOAD_P_0" />
      <node concept="1tttXp" id="199xfzRqZFi" role="1toi31">
        <node concept="1y1qLN" id="199xfzRqZFk" role="1y4NXT">
          <node concept="1y1qS$" id="199xfzRqZFn" role="1y1qVS">
            <node concept="2zAFuc" id="199xfzRqZFm" role="1y1qSV">
              <ref role="2zAFuj" node="199xfzRqZET" resolve="LOAD_P" />
            </node>
            <node concept="1QCq3x" id="199xfzRqZFp" role="1y1qST" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="199xfzRqZFq" role="2zAPwS">
      <property role="TrG5h" value="LOAD_P_1" />
      <node concept="1tttXp" id="199xfzRqZFr" role="1toi31">
        <node concept="1y1qLN" id="199xfzRqZFs" role="1y4NXT">
          <node concept="1y1qS$" id="199xfzRqZFt" role="1y1qVS">
            <node concept="2zAFuc" id="199xfzRqZFu" role="1y1qSV">
              <ref role="2zAFuj" node="199xfzRqZET" resolve="LOAD_P" />
            </node>
            <node concept="1QCq3x" id="199xfzRqZFA" role="1y1qST">
              <property role="1QCDy1" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="199xfzRqZFB" role="2zAPwS">
      <property role="TrG5h" value="WORK_P_0" />
      <node concept="1tttXp" id="199xfzRqZFC" role="1toi31">
        <node concept="1y1qLN" id="199xfzRqZFD" role="1y4NXT">
          <node concept="1y1qS$" id="199xfzRqZFE" role="1y1qVS">
            <node concept="2zAFuc" id="199xfzRqZFZ" role="1y1qSV">
              <ref role="2zAFuj" node="199xfzRqZEX" resolve="WORK_P" />
            </node>
            <node concept="1QCq3x" id="199xfzRqZFG" role="1y1qST" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="199xfzRqZFH" role="2zAPwS">
      <property role="TrG5h" value="WORK_P_1" />
      <node concept="1tttXp" id="199xfzRqZFI" role="1toi31">
        <node concept="1y1qLN" id="199xfzRqZFJ" role="1y4NXT">
          <node concept="1y1qS$" id="199xfzRqZFK" role="1y1qVS">
            <node concept="2zAFuc" id="199xfzRqZG1" role="1y1qSV">
              <ref role="2zAFuj" node="199xfzRqZEX" resolve="WORK_P" />
            </node>
            <node concept="1QCq3x" id="199xfzRqZFM" role="1y1qST">
              <property role="1QCDy1" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="199xfzRqZGc" role="2zAPxA">
      <ref role="2zAPx3" node="sGryc2IhQM" resolve="START" />
      <ref role="2zAPx1" node="199xfzRqZGh" resolve="PROCESSING" />
      <node concept="10YbkR" id="199xfzRqZGd" role="2WSJUY">
        <property role="10YbkC" value="1584.0" />
        <property role="10YbkE" value="1500.0" />
      </node>
      <node concept="2EVYwv" id="199xfzRrYKv" role="2zAZMv">
        <node concept="3YHqtX" id="199xfzRrYKy" role="2N3Qeb">
          <ref role="3Yz8TM" node="199xfzRqZDJ" resolve="CHGI" />
        </node>
        <node concept="2zAFuc" id="199xfzRrYK_" role="2EVYSB">
          <ref role="2zAFuj" node="199xfzRqZDL" resolve="INSIDE" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="199xfzRqZGw" role="2zAPxA">
      <ref role="2zAPx3" node="199xfzRqZGh" resolve="PROCESSING" />
      <ref role="2zAPx1" node="199xfzRqZGs" resolve="WAITING" />
      <node concept="10YbkR" id="199xfzRqZGx" role="2WSJUY">
        <property role="10YbkC" value="1038.0" />
        <property role="10YbkE" value="2761.0" />
      </node>
      <node concept="2EVYwv" id="199xfzRrYKC" role="2zAZMv">
        <node concept="3YHqtX" id="199xfzRrYKG" role="2N3Qeb">
          <ref role="3Yz8TM" node="199xfzRqZDJ" resolve="CHGI" />
        </node>
        <node concept="2zAFuc" id="199xfzRrYKJ" role="2EVYSB">
          <ref role="2zAFuj" node="199xfzRqZDP" resolve="OUTSIDE" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="199xfzRqZGK" role="2zAPxA">
      <ref role="2zAPx1" node="199xfzRqZGh" resolve="PROCESSING" />
      <ref role="2zAPx3" node="199xfzRqZGs" resolve="WAITING" />
      <node concept="10YbkR" id="199xfzRqZGL" role="2WSJUY">
        <property role="10YbkC" value="2684.0" />
        <property role="10YbkE" value="2761.0" />
      </node>
      <node concept="2EVYwv" id="199xfzRqZGM" role="2zAZMv">
        <node concept="3YHqtX" id="199xfzRrYKM" role="2N3Qeb">
          <ref role="3Yz8TM" node="199xfzRqZDJ" resolve="CHGI" />
        </node>
        <node concept="2zAFuc" id="199xfzRrYKQ" role="2EVYSB">
          <ref role="2zAFuj" node="199xfzRqZDL" resolve="INSIDE" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="199xfzRqZIA">
    <property role="TrG5h" value="Carriage" />
    <node concept="2zBDe_" id="199xfzRrZGC" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="1N5Tq9" id="199xfzRqZK3" role="1N5PiV">
      <node concept="3I$UGD" id="199xfzRqZK5" role="2RhMKC">
        <ref role="3IAu0i" node="199xfzRqZJq" resolve="BLK" />
      </node>
      <node concept="3IAvtB" id="199xfzRqZK6" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5PlF" node="sGryc2Ifar" resolve="BLK" />
      </node>
      <node concept="bR32z" id="73RPw3h3yF1" role="bPNfo">
        <property role="bR32p" value="246.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqZJJ" role="1N5PiQ">
      <node concept="3YB4oO" id="199xfzRqZJL" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5Pi3" node="sGryc2Ifah" resolve="CHGO" />
      </node>
      <node concept="3Yx0EI" id="199xfzRqZJM" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZJ_" resolve="carriageModelView" />
        <ref role="1N5Pi3" node="199xfzRqZDV" resolve="CHGI" />
      </node>
      <node concept="bR73E" id="1OmIjxN0RuB" role="bPNfo">
        <property role="bR73D" value="150.0" />
        <property role="bR73n" value="-88.0" />
        <property role="bR73k" value="150.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="199xfzRqZJ_" role="1N5PiY">
      <property role="TrG5h" value="carriageModelView" />
      <ref role="1N5Tt0" node="sGryc2H2NT" resolve="CarriageModelView" />
      <node concept="10YbkR" id="199xfzRqZJB" role="b_cXm">
        <property role="10YbkC" value="1734.0" />
        <property role="10YbkE" value="642.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="199xfzRqZJq" role="2zBDeD">
      <property role="TrG5h" value="BLK" />
      <node concept="2zB9wT" id="199xfzRqZJs" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="199xfzRqZJp" role="2zBDew">
      <property role="TrG5h" value="READY" />
    </node>
    <node concept="2zBDe_" id="199xfzRqZJn" role="2zBDey">
      <property role="TrG5h" value="BLOCK" />
      <node concept="2zBDeU" id="199xfzRqZJz" role="2zBDeW">
        <ref role="2zBDeT" node="199xfzRqZJq" resolve="BLK" />
      </node>
    </node>
    <node concept="1N5Tt1" id="199xfzRqZJD" role="1N5PiY">
      <property role="TrG5h" value="carriageController" />
      <ref role="1N5Tt0" node="sGryc2If9J" resolve="CarriageController" />
      <node concept="10YbkR" id="199xfzRqZJF" role="b_cXm">
        <property role="10YbkC" value="3219.0" />
        <property role="10YbkE" value="146.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqZJP" role="1N5PiQ">
      <node concept="3YB4oO" id="199xfzRqZJR" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5Pi3" node="sGryc2Ifai" resolve="READY" />
      </node>
      <node concept="3YHrnl" id="199xfzRqZJS" role="2RhMK_">
        <ref role="3Yz8TM" node="199xfzRqZJp" resolve="READY" />
      </node>
      <node concept="bR32z" id="73RPw3h3yF5" role="bPNfo">
        <property role="bR32p" value="561.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqZKa" role="1N5PiQ">
      <node concept="3YHqtX" id="199xfzRqZKc" role="2RhMKC">
        <ref role="3Yz8TM" node="199xfzRrZGC" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="199xfzRqZKd" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5Pi3" node="sGryc2Ifaa" resolve="INIT" />
      </node>
      <node concept="bR32z" id="73RPw3h3yEX" role="bPNfo">
        <property role="bR32p" value="757.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqZKg" role="1N5PiQ">
      <node concept="3YHqtX" id="199xfzRqZKi" role="2RhMKC">
        <ref role="3Yz8TM" node="199xfzRqZJn" resolve="BLOCK" />
      </node>
      <node concept="3Yx0EI" id="199xfzRqZKj" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5Pi3" node="sGryc2Ifa9" resolve="BLOCK" />
      </node>
      <node concept="bR32z" id="73RPw3h3yEZ" role="bPNfo">
        <property role="bR32p" value="1465.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqZKn" role="1N5PiV">
      <node concept="3IAhSD" id="199xfzRqZKp" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5PlF" node="sGryc2Ifaz" resolve="INSIDE" />
      </node>
      <node concept="3IAvtB" id="199xfzRqZKq" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZJ_" resolve="carriageModelView" />
        <ref role="1N5PlF" node="199xfzRqZDX" resolve="INSIDE" />
      </node>
      <node concept="bR73E" id="1OmIjxN0RuE" role="bPNfo">
        <property role="bR73D" value="150.0" />
        <property role="bR73n" value="738.0" />
        <property role="bR73k" value="350.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqZKt" role="1N5PiV">
      <node concept="3IAhSD" id="199xfzRqZKv" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5PlF" node="sGryc2IfaB" resolve="OUTSIDE" />
      </node>
      <node concept="3IAvtB" id="199xfzRqZKw" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZJ_" resolve="carriageModelView" />
        <ref role="1N5PlF" node="199xfzRqZDZ" resolve="OUTSIDE" />
      </node>
      <node concept="bR73E" id="1OmIjxN0RuA" role="bPNfo">
        <property role="bR73D" value="50.0" />
        <property role="bR73n" value="584.0" />
        <property role="bR73k" value="250.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="199xfzRqZKI" role="1N5PiQ">
      <node concept="3YB4oO" id="199xfzRqZKK" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZJ_" resolve="carriageModelView" />
        <ref role="1N5Pi3" node="199xfzRqZDW" resolve="CHANGE" />
      </node>
      <node concept="3Yx0EI" id="199xfzRqZKL" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5Pi3" node="sGryc2Ifac" resolve="CHGI" />
      </node>
      <node concept="bR32z" id="1OmIjxN0RuD" role="bPNfo">
        <property role="bR32p" value="307.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqZKN" role="1N5PiV">
      <node concept="3IAhSD" id="199xfzRqZKP" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZJ_" resolve="carriageModelView" />
        <ref role="1N5PlF" node="199xfzRqZEk" resolve="LOAD_P" />
      </node>
      <node concept="3IAvtB" id="199xfzRqZKQ" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5PlF" node="sGryc2Ifaj" resolve="LOAD_P" />
      </node>
      <node concept="bR32z" id="1OmIjxN0RuC" role="bPNfo">
        <property role="bR32p" value="488.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="199xfzRqZKX" role="1N5PiV">
      <node concept="3IAhSD" id="199xfzRqZKZ" role="2RhMKC">
        <ref role="1N5Pi4" node="199xfzRqZJ_" resolve="carriageModelView" />
        <ref role="1N5PlF" node="199xfzRqZEo" resolve="WORK_P" />
      </node>
      <node concept="3IAvtB" id="199xfzRqZL0" role="2RhMK_">
        <ref role="1N5Pi4" node="199xfzRqZJD" resolve="carriageController" />
        <ref role="1N5PlF" node="sGryc2Ifan" resolve="WP" />
      </node>
      <node concept="bR32z" id="1OmIjxN0RuF" role="bPNfo">
        <property role="bR32p" value="700.0" />
      </node>
    </node>
  </node>
</model>

