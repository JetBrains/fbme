<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:da228d67-cced-477d-a86f-b68f8e66c7f3(mps.lang.iec61499.sandbox.blinky)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="mps.lang.iec61499" version="0" />
    <use id="111cc10b-fa1e-4e11-8e9c-37e957c4043f" name="richediting.lang" version="0" />
  </languages>
  <imports>
    <import index="7fvu" ref="r:fa98296a-e4fa-4f84-b917-968f5f770c4b(iec61499.4diac.stdlib)" />
  </imports>
  <registry>
    <language id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="mps.lang.ST">
      <concept id="4046047820616800572" name="mps.lang.ST.structure.TimeLiteral" flags="ng" index="1GfuCM">
        <property id="4046047820616800574" name="value" index="1GfuCK" />
      </concept>
      <concept id="2693352324616822500" name="mps.lang.ST.structure.StringLiteral" flags="ng" index="1QCEHf">
        <property id="2693352324616822501" name="value" index="1QCEHe" />
      </concept>
    </language>
    <language id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="mps.lang.iec61499">
      <concept id="4304617121958142676" name="mps.lang.iec61499.structure.TwoAngleConnectionPath" flags="ng" index="bR32z">
        <property id="4304617121958142702" name="dx" index="bR32p" />
      </concept>
      <concept id="4304617121958142617" name="mps.lang.iec61499.structure.StraightConnectionPath" flags="ng" index="bR33I" />
      <concept id="4304617121958159005" name="mps.lang.iec61499.structure.FourAngleConncetionPath" flags="ng" index="bR73E">
        <property id="4304617121958159011" name="dx2" index="bR73k" />
        <property id="4304617121958159008" name="dy" index="bR73n" />
        <property id="4304617121958159006" name="dx1" index="bR73D" />
      </concept>
      <concept id="8824930864665429690" name="mps.lang.iec61499.structure.ConstantDataSource" flags="ng" index="hIZlB">
        <child id="8824930864665429693" name="value" index="hIZlw" />
      </concept>
      <concept id="2250044605250911586" name="mps.lang.iec61499.structure.DeviceConfiguration" flags="ng" index="2JYBV7">
        <reference id="2250044605250911589" name="type" index="2JYBV0" />
        <child id="2250044605250911600" name="resources" index="2JYBVl" />
        <child id="278175820329991923" name="parameters" index="180RAs" />
      </concept>
      <concept id="5481506291238376594" name="mps.lang.iec61499.structure.Connection" flags="ng" index="2RhMLZ">
        <child id="4304617121958732207" name="path" index="bPNfo" />
        <child id="5481506291238376648" name="destination" index="2RhMK_" />
        <child id="5481506291238376645" name="source" index="2RhMKC" />
      </concept>
      <concept id="6049904230683977455" name="mps.lang.iec61499.structure.Position" flags="ng" index="10YbkR">
        <property id="6049904230683977456" name="x" index="10YbkC" />
        <property id="6049904230683977458" name="y" index="10YbkE" />
      </concept>
      <concept id="3589220129094133401" name="mps.lang.iec61499.structure.ComponentDataSource" flags="ng" index="3IAhSD" />
      <concept id="3589220129094143959" name="mps.lang.iec61499.structure.ComponentDataDestination" flags="ng" index="3IAvtB" />
      <concept id="554302972924733408" name="mps.lang.iec61499.structure.SystemConfiguration" flags="ng" index="3KFA1X">
        <child id="554302972924735196" name="devices" index="3KFA_1" />
        <child id="554302972924735194" name="applications" index="3KFA_7" />
      </concept>
      <concept id="554302972924734114" name="mps.lang.iec61499.structure.ApplicationConfiguration" flags="ng" index="3KFAOZ" />
      <concept id="2693352324629967306" name="mps.lang.iec61499.structure.Parameter" flags="ng" index="1LUwhx">
        <reference id="2693352324629967307" name="decl" index="1LUwhw" />
        <child id="2693352324629967311" name="value" index="1LUwh$" />
      </concept>
      <concept id="2693352324629965912" name="mps.lang.iec61499.structure.ResourceInstance" flags="ng" index="1LUxBN">
        <reference id="2693352324629965913" name="type" index="1LUxBM" />
      </concept>
      <concept id="967875482185482517" name="mps.lang.iec61499.structure.ComponentEventEndpoint" flags="ng" index="1N5Pia">
        <reference id="967875482185482524" name="declaration" index="1N5Pi3" />
        <reference id="967875482185482523" name="component" index="1N5Pi4" />
      </concept>
      <concept id="967875482185482492" name="mps.lang.iec61499.structure.ComponentDataEndpoint" flags="ng" index="1N5Plz">
        <reference id="967875482185482487" name="component" index="1N5PlC" />
        <reference id="967875482185482484" name="declaration" index="1N5PlF" />
      </concept>
      <concept id="967875482185433878" name="mps.lang.iec61499.structure.DataConnection" flags="ng" index="1N5Tq9" />
      <concept id="967875482185433869" name="mps.lang.iec61499.structure.EventConnection" flags="ng" index="1N5Tqi" />
      <concept id="967875482185433822" name="mps.lang.iec61499.structure.FunctionBlockInstance" flags="ng" index="1N5Tt1">
        <reference id="967875482185433823" name="type" index="1N5Tt0" />
        <child id="4304617121954520353" name="position" index="b_cXm" />
      </concept>
      <concept id="2693352324618654708" name="mps.lang.iec61499.structure.IWithFBNetwork" flags="ng" index="1QJEpv">
        <child id="967875482185482537" name="eventConnections" index="1N5PiQ" />
        <child id="967875482185482532" name="dataConnections" index="1N5PiV" />
        <child id="967875482185482529" name="functionBlocks" index="1N5PiY" />
      </concept>
      <concept id="8167217573768971186" name="mps.lang.iec61499.structure.ComponentEventDestination" flags="ng" index="3Yx0EI" />
      <concept id="8167217573768433448" name="mps.lang.iec61499.structure.ComponentEventSource" flags="ng" index="3YB4oO" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3KFA1X" id="3wAsKTk6GrD">
    <property role="TrG5h" value="BlinkyTest" />
    <node concept="2JYBV7" id="3wAsKTk8JYk" role="3KFA_1">
      <property role="TrG5h" value="Testee" />
      <ref role="2JYBV0" to="7fvu:~FORTE_PC" resolve="FORTE_PC" />
      <node concept="1LUxBN" id="3wAsKTk8K0R" role="2JYBVl">
        <property role="TrG5h" value="Blinky_RES" />
        <ref role="1LUxBM" to="7fvu:~EMB_RES" resolve="EMB_RES" />
        <node concept="1N5Tqi" id="3wAsKTk8K1N" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K2M" role="2RhMKC">
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.COLD" resolve="COLD" />
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K2P" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR32z" id="4vmY7CyLQEW" role="bPNfo">
            <property role="bR32p" value="275.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K2S" role="1N5PiQ">
          <node concept="3Yx0EI" id="3wAsKTk8K2U" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
          </node>
          <node concept="3YB4oO" id="6wZUH2AMbAU" role="2RhMKC">
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.WARM" resolve="WARM" />
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
          </node>
          <node concept="bR32z" id="4vmY7CyLQEY" role="bPNfo">
            <property role="bR32p" value="125.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K1T" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K1U" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.EO" resolve="EO" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K1V" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EI" resolve="EI" />
          </node>
          <node concept="bR32z" id="4vmY7CyLQEX" role="bPNfo">
            <property role="bR32p" value="225.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K1W" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K1X" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO0" resolve="EO0" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K1Y" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:~E_SR.S" resolve="S" />
          </node>
          <node concept="bR32z" id="4vmY7CyLQFi" role="bPNfo">
            <property role="bR32p" value="0.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K1Z" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K20" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO1" resolve="EO1" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K21" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:~E_SR.R" resolve="R" />
          </node>
          <node concept="bR32z" id="4vmY7CyLQFg" role="bPNfo">
            <property role="bR32p" value="0.0" />
          </node>
        </node>
        <node concept="1N5Tq9" id="3wAsKTk8K1r" role="1N5PiV">
          <node concept="hIZlB" id="3wAsKTk8K1s" role="2RhMKC">
            <node concept="1GfuCM" id="3wAsKTk8K1t" role="hIZlw">
              <property role="1GfuCK" value="1s" />
            </node>
          </node>
          <node concept="3IAvtB" id="3wAsKTk8K1u" role="2RhMK_">
            <ref role="1N5PlC" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5PlF" to="7fvu:~E_CYCLE.DT" resolve="DT" />
          </node>
          <node concept="bR33I" id="4vmY7CyLQEZ" role="bPNfo" />
        </node>
        <node concept="1N5Tq9" id="3wAsKTk8K1v" role="1N5PiV">
          <node concept="3IAhSD" id="3wAsKTk8K1w" role="2RhMKC">
            <ref role="1N5PlC" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
          </node>
          <node concept="3IAvtB" id="3wAsKTk8K1x" role="2RhMK_">
            <ref role="1N5PlC" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5PlF" to="7fvu:~E_SWITCH.G" resolve="G" />
          </node>
          <node concept="bR73E" id="4vmY7CyLQFh" role="bPNfo">
            <property role="bR73D" value="50.0" />
            <property role="bR73n" value="200.0" />
            <property role="bR73k" value="50.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K19" role="1N5PiY">
          <property role="TrG5h" value="E_CYCLE" />
          <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
          <node concept="10YbkR" id="3IX4BsKohuZ" role="b_cXm">
            <property role="10YbkC" value="1650.0" />
            <property role="10YbkE" value="600.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1a" role="1N5PiY">
          <property role="TrG5h" value="E_SR" />
          <ref role="1N5Tt0" to="7fvu:~E_SR" resolve="E_SR" />
          <node concept="10YbkR" id="3IX4BsKohv0" role="b_cXm">
            <property role="10YbkC" value="4175.0" />
            <property role="10YbkE" value="375.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1b" role="1N5PiY">
          <property role="TrG5h" value="E_SWITCH" />
          <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
          <node concept="10YbkR" id="3IX4BsKohv1" role="b_cXm">
            <property role="10YbkC" value="2875.0" />
            <property role="10YbkE" value="375.0" />
          </node>
        </node>
      </node>
      <node concept="1LUwhx" id="3wAsKTk8K0G" role="180RAs">
        <ref role="1LUwhw" to="7fvu:~FORTE_PC.MGR_ID" resolve="MGR_ID" />
        <node concept="1QCEHf" id="3wAsKTk8K0O" role="1LUwh$">
          <property role="1QCEHe" value="localhost:61503" />
        </node>
      </node>
    </node>
    <node concept="3KFAOZ" id="3wAsKTk6SA0" role="3KFA_7">
      <property role="TrG5h" value="BlinkTestApp" />
      <node concept="1N5Tqi" id="3wAsKTk6T$j" role="1N5PiQ">
        <node concept="3YB4oO" id="3wAsKTk6T$p" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6SA2" resolve="E_CYCLE" />
          <ref role="1N5Pi3" to="7fvu:~E_CYCLE.EO" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="Ue8k5tzWA6" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EI" resolve="EI" />
        </node>
        <node concept="bR32z" id="4vmY7CyQ1LU" role="bPNfo">
          <property role="bR32p" value="275.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$I" role="1N5PiQ">
        <node concept="3YB4oO" id="3wAsKTk6T$J" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO1" resolve="EO1" />
        </node>
        <node concept="3Yx0EI" id="3wAsKTk6T$K" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:~E_SR.R" resolve="R" />
        </node>
        <node concept="bR32z" id="4vmY7CyLNGB" role="bPNfo">
          <property role="bR32p" value="568.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$v" role="1N5PiQ">
        <node concept="3YB4oO" id="3wAsKTk6T$C" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO0" resolve="EO0" />
        </node>
        <node concept="3Yx0EI" id="3wAsKTk6T$F" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:~E_SR.S" resolve="S" />
        </node>
        <node concept="bR32z" id="4vmY7CyLNG_" role="bPNfo">
          <property role="bR32p" value="568.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="3wAsKTk6TzD" role="1N5PiV">
        <node concept="3IAhSD" id="3wAsKTk6T$d" role="2RhMKC">
          <ref role="1N5PlC" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
        </node>
        <node concept="3IAvtB" id="3wAsKTk6T$g" role="2RhMK_">
          <ref role="1N5PlC" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5PlF" to="7fvu:~E_SWITCH.G" resolve="G" />
        </node>
        <node concept="bR73E" id="4vmY7CyLNGL" role="bPNfo">
          <property role="bR73D" value="50.0" />
          <property role="bR73n" value="168.0" />
          <property role="bR73k" value="50.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="3wAsKTk6Tzn" role="1N5PiV">
        <node concept="hIZlB" id="3wAsKTk6Tzz" role="2RhMKC">
          <node concept="1GfuCM" id="3wAsKTk8JYh" role="hIZlw">
            <property role="1GfuCK" value="1s" />
          </node>
        </node>
        <node concept="3IAvtB" id="3wAsKTk6TzA" role="2RhMK_">
          <ref role="1N5PlC" node="3wAsKTk6SA2" resolve="E_CYCLE" />
          <ref role="1N5PlF" to="7fvu:~E_CYCLE.DT" resolve="DT" />
        </node>
        <node concept="bR33I" id="4vmY7CyQ1LV" role="bPNfo" />
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6SA2" role="1N5PiY">
        <property role="TrG5h" value="E_CYCLE" />
        <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
        <node concept="10YbkR" id="3IX4BsKohv2" role="b_cXm">
          <property role="10YbkC" value="900.0" />
          <property role="10YbkE" value="1000.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzW" role="1N5PiY">
        <property role="TrG5h" value="E_SR" />
        <ref role="1N5Tt0" to="7fvu:~E_SR" resolve="E_SR" />
        <node concept="10YbkR" id="3IX4BsKohv3" role="b_cXm">
          <property role="10YbkC" value="3231.0" />
          <property role="10YbkE" value="1000.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzZ" role="1N5PiY">
        <property role="TrG5h" value="E_SWITCH" />
        <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
        <node concept="10YbkR" id="3IX4BsKohv4" role="b_cXm">
          <property role="10YbkC" value="2137.0" />
          <property role="10YbkE" value="1000.0" />
        </node>
      </node>
    </node>
  </node>
</model>

