<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:da228d67-cced-477d-a86f-b68f8e66c7f3(iec61499.sandbox.blinky)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="iec61499" version="0" />
  </languages>
  <imports>
    <import index="7fvu" ref="r:fa98296a-e4fa-4f84-b917-968f5f770c4b(iec61499.4diac.stdlib)" />
  </imports>
  <registry>
    <language id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="ST">
      <concept id="4046047820616800572" name="ST.structure.TimeLiteral" flags="ng" index="1GfuCM">
        <property id="4046047820616800574" name="value" index="1GfuCK" />
      </concept>
      <concept id="2693352324616822500" name="ST.structure.StringLiteral" flags="ng" index="1QCEHf">
        <property id="2693352324616822501" name="value" index="1QCEHe" />
      </concept>
    </language>
    <language id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="iec61499">
      <concept id="8824930864665429690" name="iec61499.structure.ConstantDataSource" flags="ng" index="hIZlB">
        <child id="8824930864665429693" name="value" index="hIZlw" />
      </concept>
      <concept id="2250044605250911586" name="iec61499.structure.DeviceConfiguration" flags="ng" index="2JYBV7">
        <reference id="2250044605250911589" name="type" index="2JYBV0" />
        <child id="2250044605250911600" name="resources" index="2JYBVl" />
        <child id="278175820329991923" name="parameters" index="180RAs" />
      </concept>
      <concept id="5481506291238376594" name="iec61499.structure.Connection" flags="ng" index="2RhMLZ">
        <child id="5481506291238376648" name="destination" index="2RhMK_" />
        <child id="5481506291238376645" name="source" index="2RhMKC" />
      </concept>
      <concept id="3589220129094133401" name="iec61499.structure.ComponentDataSource" flags="ng" index="3IAhSD" />
      <concept id="3589220129094143959" name="iec61499.structure.ComponentDataDestination" flags="ng" index="3IAvtB" />
      <concept id="554302972924733408" name="iec61499.structure.SystemConfiguration" flags="ng" index="3KFA1X">
        <child id="554302972924735196" name="devices" index="3KFA_1" />
        <child id="554302972924735194" name="applications" index="3KFA_7" />
      </concept>
      <concept id="554302972924734114" name="iec61499.structure.ApplicationConfiguration" flags="ng" index="3KFAOZ" />
      <concept id="2693352324629967306" name="iec61499.structure.Parameter" flags="ng" index="1LUwhx">
        <reference id="2693352324629967307" name="decl" index="1LUwhw" />
        <child id="2693352324629967311" name="value" index="1LUwh$" />
      </concept>
      <concept id="2693352324629965912" name="iec61499.structure.ResourceInstance" flags="ng" index="1LUxBN">
        <reference id="2693352324629965913" name="type" index="1LUxBM" />
      </concept>
      <concept id="967875482185482517" name="iec61499.structure.ComponentEventEndpoint" flags="ng" index="1N5Pia">
        <reference id="967875482185482524" name="declaration" index="1N5Pi3" />
        <reference id="967875482185482523" name="component" index="1N5Pi4" />
      </concept>
      <concept id="967875482185482492" name="iec61499.structure.ComponentDataEndpoint" flags="ng" index="1N5Plz">
        <reference id="967875482185482487" name="component" index="1N5PlC" />
        <reference id="967875482185482484" name="declaration" index="1N5PlF" />
      </concept>
      <concept id="967875482185433878" name="iec61499.structure.DataConnection" flags="ng" index="1N5Tq9" />
      <concept id="967875482185433869" name="iec61499.structure.EventConnection" flags="ng" index="1N5Tqi" />
      <concept id="967875482185433822" name="iec61499.structure.FunctionBlockInstance" flags="ng" index="1N5Tt1">
        <reference id="967875482185433823" name="type" index="1N5Tt0" />
      </concept>
      <concept id="2693352324618654708" name="iec61499.structure.IWithFBNetwork" flags="ng" index="1QJEpv">
        <child id="967875482185482537" name="eventConnections" index="1N5PiQ" />
        <child id="967875482185482532" name="dataConnections" index="1N5PiV" />
        <child id="967875482185482529" name="functionBlocks" index="1N5PiY" />
      </concept>
      <concept id="8167217573768971186" name="iec61499.structure.ComponentEventDestination" flags="ng" index="3Yx0EI" />
      <concept id="8167217573768433448" name="iec61499.structure.ComponentEventSource" flags="ng" index="3YB4oO" />
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
      <ref role="2JYBV0" to="7fvu:sxc2hygNLw" resolve="FORTE_PC" />
      <node concept="1LUxBN" id="3wAsKTk8K0R" role="2JYBVl">
        <property role="TrG5h" value="Blinky_RES" />
        <ref role="1LUxBM" to="7fvu:sxc2hygNRf" resolve="EMB_RES" />
        <node concept="1N5Tqi" id="3wAsKTk8K1N" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K2M" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:sxc2hygNRg" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNHD" resolve="COLD" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K2P" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNBw" resolve="START" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K2S" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K2T" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:sxc2hygNRg" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNHE" resolve="WARM" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K2U" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNBw" resolve="START" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K1T" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K1U" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNB_" resolve="EO" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K1V" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNGj" resolve="EI" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K1W" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K1X" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNGn" resolve="EO0" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K1Y" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNxS" resolve="S" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K1Z" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K20" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNGo" resolve="EO1" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K21" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:sxc2hygNxT" resolve="R" />
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
            <ref role="1N5PlF" to="7fvu:sxc2hygNBz" resolve="DT" />
          </node>
        </node>
        <node concept="1N5Tq9" id="3wAsKTk8K1v" role="1N5PiV">
          <node concept="3IAhSD" id="3wAsKTk8K1w" role="2RhMKC">
            <ref role="1N5PlC" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5PlF" to="7fvu:sxc2hygNxW" resolve="Q" />
          </node>
          <node concept="3IAvtB" id="3wAsKTk8K1x" role="2RhMK_">
            <ref role="1N5PlC" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5PlF" to="7fvu:sxc2hygNGl" resolve="G" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K19" role="1N5PiY">
          <property role="TrG5h" value="E_CYCLE" />
          <ref role="1N5Tt0" to="7fvu:sxc2hygNBv" resolve="E_CYCLE" />
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1a" role="1N5PiY">
          <property role="TrG5h" value="E_SR" />
          <ref role="1N5Tt0" to="7fvu:sxc2hygNxR" resolve="E_SR" />
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1b" role="1N5PiY">
          <property role="TrG5h" value="E_SWITCH" />
          <ref role="1N5Tt0" to="7fvu:sxc2hygNGi" resolve="E_SWITCH" />
        </node>
      </node>
      <node concept="1LUwhx" id="3wAsKTk8K0G" role="180RAs">
        <ref role="1LUwhw" to="7fvu:sxc2hygNLx" resolve="MGR_ID" />
        <node concept="1QCEHf" id="3wAsKTk8K0O" role="1LUwh$">
          <property role="1QCEHe" value="localhost:61502" />
        </node>
      </node>
    </node>
    <node concept="3KFAOZ" id="3wAsKTk6SA0" role="3KFA_7">
      <property role="TrG5h" value="BlinkTestApp" />
      <node concept="1N5Tqi" id="3wAsKTk6T$j" role="1N5PiQ">
        <node concept="3YB4oO" id="3wAsKTk6T$p" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6SA2" resolve="E_CYCLE" />
          <ref role="1N5Pi3" to="7fvu:sxc2hygNB_" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="3wAsKTk6T$s" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:sxc2hygNGj" resolve="EI" />
        </node>
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$I" role="1N5PiQ">
        <node concept="3YB4oO" id="3wAsKTk6T$J" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:sxc2hygNGo" resolve="EO1" />
        </node>
        <node concept="3Yx0EI" id="3wAsKTk6T$K" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:sxc2hygNxT" resolve="R" />
        </node>
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$v" role="1N5PiQ">
        <node concept="3YB4oO" id="3wAsKTk6T$C" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:sxc2hygNGn" resolve="EO0" />
        </node>
        <node concept="3Yx0EI" id="3wAsKTk6T$F" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:sxc2hygNxS" resolve="S" />
        </node>
      </node>
      <node concept="1N5Tq9" id="3wAsKTk6TzD" role="1N5PiV">
        <node concept="3IAhSD" id="3wAsKTk6T$d" role="2RhMKC">
          <ref role="1N5PlC" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5PlF" to="7fvu:sxc2hygNxW" resolve="Q" />
        </node>
        <node concept="3IAvtB" id="3wAsKTk6T$g" role="2RhMK_">
          <ref role="1N5PlC" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5PlF" to="7fvu:sxc2hygNGl" resolve="G" />
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
          <ref role="1N5PlF" to="7fvu:sxc2hygNBz" resolve="DT" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6SA2" role="1N5PiY">
        <property role="TrG5h" value="E_CYCLE" />
        <ref role="1N5Tt0" to="7fvu:sxc2hygNBv" resolve="E_CYCLE" />
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzW" role="1N5PiY">
        <property role="TrG5h" value="E_SR" />
        <ref role="1N5Tt0" to="7fvu:sxc2hygNxR" resolve="E_SR" />
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzZ" role="1N5PiY">
        <property role="TrG5h" value="E_SWITCH" />
        <ref role="1N5Tt0" to="7fvu:sxc2hygNGi" resolve="E_SWITCH" />
      </node>
    </node>
  </node>
</model>

