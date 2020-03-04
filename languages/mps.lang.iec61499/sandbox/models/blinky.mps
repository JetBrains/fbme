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
      <concept id="4280485643802239122" name="mps.lang.ST.structure.DecIntegerLiteral" flags="ng" index="2zAFuh">
        <property id="4280485643802239123" name="value" index="2zAFug" />
      </concept>
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
      <concept id="6279537560535821563" name="mps.lang.iec61499.structure.Segment" flags="ng" index="16k8Fv">
        <reference id="6279537560535821566" name="type" index="16k8Fq" />
      </concept>
      <concept id="6279537560537435403" name="mps.lang.iec61499.structure.Link" flags="ng" index="16EYGJ">
        <reference id="6279537560537435409" name="segment" index="16EYGP" />
        <child id="6279537560537435404" name="resource" index="16EYGC" />
      </concept>
      <concept id="3589220129094133401" name="mps.lang.iec61499.structure.ComponentDataSource" flags="ng" index="3IAhSD" />
      <concept id="3589220129094143959" name="mps.lang.iec61499.structure.ComponentDataDestination" flags="ng" index="3IAvtB" />
      <concept id="554302972924733408" name="mps.lang.iec61499.structure.SystemConfiguration" flags="ng" index="3KFA1X">
        <child id="6279537560535846736" name="segments" index="16kM_O" />
        <child id="6279537560538025804" name="links" index="16GI_C" />
        <child id="554302972924735196" name="devices" index="3KFA_1" />
        <child id="554302972924735194" name="applications" index="3KFA_7" />
        <child id="554302972929127418" name="mappings" index="3KORhB" />
      </concept>
      <concept id="554302972924734114" name="mps.lang.iec61499.structure.ApplicationConfiguration" flags="ng" index="3KFAOZ" />
      <concept id="554302972929660960" name="mps.lang.iec61499.structure.ResourceReference" flags="ng" index="3KQLYX">
        <reference id="554302972929660961" name="device" index="3KQLYW" />
        <reference id="554302972929660963" name="resource" index="3KQLYY" />
      </concept>
      <concept id="554302972928529669" name="mps.lang.iec61499.structure.FBInstanceReference" flags="ng" index="3KU5ao">
        <reference id="554302972928570185" name="functionBlock" index="3KUfjk" />
        <child id="554302972928570183" name="application" index="3KUfjq" />
      </concept>
      <concept id="554302972928529668" name="mps.lang.iec61499.structure.Mapping" flags="ng" index="3KU5ap">
        <child id="554302972928570261" name="resource" index="3KUfg8" />
        <child id="554302972928570259" name="instance" index="3KUfge" />
      </concept>
      <concept id="554302972928529671" name="mps.lang.iec61499.structure.SystemApplicationReference" flags="ng" index="3KU5aq">
        <reference id="554302972928529672" name="application" index="3KU5al" />
      </concept>
      <concept id="554302972928570264" name="mps.lang.iec61499.structure.FBResourceReference" flags="ng" index="3KUfg5">
        <reference id="554302972930397634" name="functionBlock" index="3KLd9v" />
        <child id="554302972930397632" name="resource" index="3KLd9t" />
      </concept>
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
    <node concept="16EYGJ" id="3BnC78AupQc" role="16GI_C">
      <ref role="16EYGP" node="3BnC78AupQb" resolve="Ethernet1" />
      <node concept="3KQLYX" id="3BnC78AupQe" role="16EYGC">
        <ref role="3KQLYW" node="3wAsKTk8JYk" resolve="Testee" />
      </node>
    </node>
    <node concept="16k8Fv" id="3BnC78AupQb" role="16kM_O">
      <property role="TrG5h" value="Ethernet1" />
      <ref role="16k8Fq" to="7fvu:~Ethernet" resolve="Ethernet" />
    </node>
    <node concept="3KU5ap" id="3BnC78AupPM" role="3KORhB">
      <node concept="3KU5ao" id="3BnC78AupPN" role="3KUfge">
        <ref role="3KUfjk" node="3wAsKTk6SA2" resolve="E_CYCLE" />
        <node concept="3KU5aq" id="3BnC78AupPR" role="3KUfjq">
          <ref role="3KU5al" node="3wAsKTk6SA0" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="3BnC78AupPP" role="3KUfg8">
        <ref role="3KLd9v" node="3wAsKTk8K19" resolve="E_CYCLE" />
        <node concept="3KQLYX" id="3BnC78AupPT" role="3KLd9t">
          <ref role="3KQLYW" node="3wAsKTk8JYk" resolve="Testee" />
          <ref role="3KQLYY" node="3wAsKTk8K0R" resolve="Blinky_RES" />
        </node>
      </node>
    </node>
    <node concept="3KU5ap" id="3BnC78AupQ1" role="3KORhB">
      <node concept="3KU5ao" id="3BnC78AupQ2" role="3KUfge">
        <ref role="3KUfjk" node="3wAsKTk6TzW" resolve="E_SR" />
        <node concept="3KU5aq" id="3BnC78AupQ3" role="3KUfjq">
          <ref role="3KU5al" node="3wAsKTk6SA0" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="3BnC78AupQ4" role="3KUfg8">
        <ref role="3KLd9v" node="3wAsKTk8K1a" resolve="E_SR" />
        <node concept="3KQLYX" id="3BnC78AupQ5" role="3KLd9t">
          <ref role="3KQLYW" node="3wAsKTk8JYk" resolve="Testee" />
          <ref role="3KQLYY" node="3wAsKTk8K0R" resolve="Blinky_RES" />
        </node>
      </node>
    </node>
    <node concept="3KU5ap" id="3BnC78AupQ6" role="3KORhB">
      <node concept="3KU5ao" id="3BnC78AupQ7" role="3KUfge">
        <ref role="3KUfjk" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
        <node concept="3KU5aq" id="3BnC78AupQ8" role="3KUfjq">
          <ref role="3KU5al" node="3wAsKTk6SA0" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="3BnC78AupQ9" role="3KUfg8">
        <ref role="3KLd9v" node="3wAsKTk8K1b" resolve="E_SWITCH" />
        <node concept="3KQLYX" id="3BnC78AupQa" role="3KLd9t">
          <ref role="3KQLYW" node="3wAsKTk8JYk" resolve="Testee" />
          <ref role="3KQLYY" node="3wAsKTk8K0R" resolve="Blinky_RES" />
        </node>
      </node>
    </node>
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
          <node concept="3Yx0EI" id="2s_CndmklFZ" role="2RhMK_">
            <ref role="1N5Pi4" node="2s_CndmklFM" resolve="PUBLISH_1" />
            <ref role="1N5Pi3" to="7fvu:~PUBLISH_1.INIT" resolve="INIT" />
          </node>
          <node concept="bR32z" id="k3FE8iwTff" role="bPNfo">
            <property role="bR32p" value="2869.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K2S" role="1N5PiQ">
          <node concept="3YB4oO" id="6wZUH2AMbAU" role="2RhMKC">
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.WARM" resolve="WARM" />
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
          </node>
          <node concept="3Yx0EI" id="2s_CndmklG1" role="2RhMK_">
            <ref role="1N5Pi4" node="2s_CndmklFM" resolve="PUBLISH_1" />
            <ref role="1N5Pi3" to="7fvu:~PUBLISH_1.INIT" resolve="INIT" />
          </node>
          <node concept="bR32z" id="k3FE8iwTfg" role="bPNfo">
            <property role="bR32p" value="2796.0" />
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
          <node concept="bR32z" id="k3FE8ivkR_" role="bPNfo">
            <property role="bR32p" value="169.0" />
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
          <node concept="bR32z" id="k3FE8ivkS6" role="bPNfo">
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
          <node concept="bR32z" id="k3FE8ivkS9" role="bPNfo">
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
          <node concept="bR33I" id="2s_CndmklG3" role="bPNfo" />
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
          <node concept="bR73E" id="k3FE8ivkSc" role="bPNfo">
            <property role="bR73D" value="50.0" />
            <property role="bR73n" value="123.0" />
            <property role="bR73k" value="50.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K19" role="1N5PiY">
          <property role="TrG5h" value="E_CYCLE" />
          <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
          <node concept="10YbkR" id="3IX4BsKohuZ" role="b_cXm">
            <property role="10YbkC" value="419.0" />
            <property role="10YbkE" value="880.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1a" role="1N5PiY">
          <property role="TrG5h" value="E_SR" />
          <ref role="1N5Tt0" to="7fvu:~E_SR" resolve="E_SR" />
          <node concept="10YbkR" id="3IX4BsKohv0" role="b_cXm">
            <property role="10YbkC" value="1826.0" />
            <property role="10YbkE" value="630.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1b" role="1N5PiY">
          <property role="TrG5h" value="E_SWITCH" />
          <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
          <node concept="10YbkR" id="3IX4BsKohv1" role="b_cXm">
            <property role="10YbkC" value="1126.0" />
            <property role="10YbkE" value="646.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="2s_CndmklFM" role="1N5PiY">
          <property role="TrG5h" value="PUBLISH_1" />
          <ref role="1N5Tt0" to="7fvu:~PUBLISH_1" resolve="PUBLISH_1" />
          <node concept="10YbkR" id="2s_CndmklFO" role="b_cXm">
            <property role="10YbkC" value="3950.0" />
            <property role="10YbkE" value="880.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="2s_CndmklG7" role="1N5PiQ">
          <node concept="3YB4oO" id="2s_CndmklG5" role="2RhMKC">
            <ref role="1N5Pi4" node="2s_CndmklFM" resolve="PUBLISH_1" />
            <ref role="1N5Pi3" to="7fvu:~PUBLISH_1.INITO" resolve="INITO" />
          </node>
          <node concept="3Yx0EI" id="2s_CndmklG6" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR73E" id="k3FE8ivkS$" role="bPNfo">
            <property role="bR73D" value="150.0" />
            <property role="bR73n" value="-519.0" />
            <property role="bR73k" value="150.0" />
          </node>
        </node>
        <node concept="1N5Tq9" id="2s_CndmklGf" role="1N5PiV">
          <node concept="hIZlB" id="2s_CndmklGh" role="2RhMKC">
            <node concept="2zAFuh" id="2s_CndmklGS" role="hIZlw">
              <property role="2zAFug" value="1" />
            </node>
          </node>
          <node concept="3IAvtB" id="2s_CndmklGi" role="2RhMK_">
            <ref role="1N5PlC" node="2s_CndmklFM" resolve="PUBLISH_1" />
            <ref role="1N5PlF" to="7fvu:~PUBLISH_1.QI" resolve="QI" />
          </node>
          <node concept="bR33I" id="k3FE8ivkS_" role="bPNfo" />
        </node>
        <node concept="1N5Tq9" id="2s_CndmklGU" role="1N5PiV">
          <node concept="hIZlB" id="2s_CndmklGW" role="2RhMKC">
            <node concept="1QCEHf" id="2s_CndmklHj" role="hIZlw">
              <property role="1QCEHe" value="239.0.0.1:61000" />
            </node>
          </node>
          <node concept="3IAvtB" id="2s_CndmklGX" role="2RhMK_">
            <ref role="1N5PlC" node="2s_CndmklFM" resolve="PUBLISH_1" />
            <ref role="1N5PlF" to="7fvu:~PUBLISH_1.ID" resolve="ID" />
          </node>
          <node concept="bR33I" id="k3FE8ivkSz" role="bPNfo" />
        </node>
        <node concept="1N5Tt1" id="k3FE8iwTkB" role="1N5PiY">
          <property role="TrG5h" value="STRING2STRING" />
          <ref role="1N5Tt0" to="7fvu:~STRING2STRING" resolve="STRING2STRING" />
          <node concept="10YbkR" id="k3FE8iwTkD" role="b_cXm">
            <property role="10YbkC" value="2423.0" />
            <property role="10YbkE" value="1111.0" />
          </node>
        </node>
        <node concept="1N5Tq9" id="k3FE8iwTkH" role="1N5PiV">
          <node concept="hIZlB" id="k3FE8iwTkJ" role="2RhMKC">
            <node concept="1QCEHf" id="k3FE8iwTkM" role="hIZlw">
              <property role="1QCEHe" value="asd" />
            </node>
          </node>
          <node concept="3IAvtB" id="k3FE8iwTkK" role="2RhMK_">
            <ref role="1N5PlC" node="k3FE8iwTkB" resolve="STRING2STRING" />
            <ref role="1N5PlF" to="7fvu:~STRING2STRING.IN" resolve="IN" />
          </node>
          <node concept="bR33I" id="k3FE8iwTlm" role="bPNfo" />
        </node>
        <node concept="1N5Tqi" id="k3FE8iwTkP" role="1N5PiQ">
          <node concept="3YB4oO" id="k3FE8iwTkN" role="2RhMKC">
            <ref role="1N5Pi4" node="k3FE8iwTkB" resolve="STRING2STRING" />
            <ref role="1N5Pi3" to="7fvu:~STRING2STRING.CNF" resolve="CNF" />
          </node>
          <node concept="3Yx0EI" id="k3FE8iwTkO" role="2RhMK_">
            <ref role="1N5Pi4" node="2s_CndmklFM" resolve="PUBLISH_1" />
            <ref role="1N5Pi3" to="7fvu:~PUBLISH_1.REQ" resolve="REQ" />
          </node>
          <node concept="bR32z" id="k3FE8iwTln" role="bPNfo">
            <property role="bR32p" value="519.0" />
          </node>
        </node>
        <node concept="1N5Tq9" id="k3FE8iwTl0" role="1N5PiV">
          <node concept="3IAhSD" id="k3FE8iwTkY" role="2RhMKC">
            <ref role="1N5PlC" node="k3FE8iwTkB" resolve="STRING2STRING" />
            <ref role="1N5PlF" to="7fvu:~STRING2STRING.OUT" resolve="OUT" />
          </node>
          <node concept="3IAvtB" id="k3FE8iwTkZ" role="2RhMK_">
            <ref role="1N5PlC" node="2s_CndmklFM" resolve="PUBLISH_1" />
            <ref role="1N5PlF" to="7fvu:~PUBLISH_1.SD_1" resolve="SD_1" />
          </node>
          <node concept="bR32z" id="k3FE8iwTll" role="bPNfo">
            <property role="bR32p" value="519.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="k3FE8iwTlf" role="1N5PiQ">
          <node concept="3YB4oO" id="k3FE8iwTld" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:~E_SR.EO" resolve="EO" />
          </node>
          <node concept="3Yx0EI" id="k3FE8iwTle" role="2RhMK_">
            <ref role="1N5Pi4" node="k3FE8iwTkB" resolve="STRING2STRING" />
            <ref role="1N5Pi3" to="7fvu:~STRING2STRING.REQ" resolve="REQ" />
          </node>
          <node concept="bR32z" id="k3FE8iwTlo" role="bPNfo">
            <property role="bR32p" value="176.0" />
          </node>
        </node>
      </node>
      <node concept="1LUwhx" id="3wAsKTk8K0G" role="180RAs">
        <ref role="1LUwhw" to="7fvu:~FORTE_PC.MGR_ID" resolve="MGR_ID" />
        <node concept="1QCEHf" id="3wAsKTk8K0O" role="1LUwh$">
          <property role="1QCEHe" value="localhost:61499" />
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
        <node concept="bR32z" id="2s_CndmklFq" role="bPNfo">
          <property role="bR32p" value="361.0" />
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
        <node concept="bR32z" id="2s_CndmklFr" role="bPNfo">
          <property role="bR32p" value="226.0" />
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
        <node concept="bR32z" id="2s_CndmklFo" role="bPNfo">
          <property role="bR32p" value="226.0" />
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
        <node concept="bR73E" id="2s_CndmklFp" role="bPNfo">
          <property role="bR73D" value="50.0" />
          <property role="bR73n" value="126.0" />
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
        <node concept="bR33I" id="2s_CndmklFl" role="bPNfo" />
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6SA2" role="1N5PiY">
        <property role="TrG5h" value="E_CYCLE" />
        <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
        <node concept="10YbkR" id="3IX4BsKohv2" role="b_cXm">
          <property role="10YbkC" value="357.0" />
          <property role="10YbkE" value="511.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzW" role="1N5PiY">
        <property role="TrG5h" value="E_SR" />
        <ref role="1N5Tt0" to="7fvu:~E_SR" resolve="E_SR" />
        <node concept="10YbkR" id="3IX4BsKohv3" role="b_cXm">
          <property role="10YbkC" value="1730.0" />
          <property role="10YbkE" value="542.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzZ" role="1N5PiY">
        <property role="TrG5h" value="E_SWITCH" />
        <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
        <node concept="10YbkR" id="3IX4BsKohv4" role="b_cXm">
          <property role="10YbkC" value="1076.0" />
          <property role="10YbkE" value="515.0" />
        </node>
      </node>
    </node>
  </node>
</model>

