<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:da228d67-cced-477d-a86f-b68f8e66c7f3(org.fbme.ide.iec61499.lang.sandbox.blinky)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang" version="0" />
    <use id="111cc10b-fa1e-4e11-8e9c-37e957c4043f" name="org.fbme.ide.richediting.lang" version="0" />
  </languages>
  <imports>
    <import index="7fvu" ref="r:fa98296a-e4fa-4f84-b917-968f5f770c4b(iec61499.4diac.stdlib)" />
    <import index="csiz" ref="r:12e75b4a-dbbe-461d-befc-80337254ab0f(org.fbme.ide.iec61499.lang.sandbox.standard)" />
  </imports>
  <registry>
    <language id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="org.fbme.ide.st.lang">
      <concept id="4046047820616800572" name="org.fbme.ide.st.lang.structure.TimeLiteral" flags="ng" index="1GfuCM">
        <property id="4046047820616800574" name="value" index="1GfuCK" />
      </concept>
      <concept id="2693352324616822500" name="org.fbme.ide.st.lang.structure.StringLiteral" flags="ng" index="1QCEHf">
        <property id="2693352324616822501" name="value" index="1QCEHe" />
      </concept>
    </language>
    <language id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang">
      <concept id="4304617121958142676" name="org.fbme.ide.iec61499.lang.structure.TwoAngleConnectionPath" flags="ng" index="bR32z">
        <property id="4304617121958142702" name="dx" index="bR32p" />
      </concept>
      <concept id="4304617121958142617" name="org.fbme.ide.iec61499.lang.structure.StraightConnectionPath" flags="ng" index="bR33I" />
      <concept id="4304617121958159005" name="org.fbme.ide.iec61499.lang.structure.FourAngleConncetionPath" flags="ng" index="bR73E">
        <property id="4304617121958159011" name="dx2" index="bR73k" />
        <property id="4304617121958159008" name="dy" index="bR73n" />
        <property id="4304617121958159006" name="dx1" index="bR73D" />
      </concept>
      <concept id="2250044605250911586" name="org.fbme.ide.iec61499.lang.structure.DeviceDeclaration" flags="ng" index="2JYBV7">
        <reference id="2250044605250911589" name="type" index="2JYBV0" />
        <child id="2250044605250911600" name="resources" index="2JYBVl" />
        <child id="278175820329991923" name="parameters" index="180RAs" />
      </concept>
      <concept id="5481506291238376594" name="org.fbme.ide.iec61499.lang.structure.Connection" flags="ng" index="2RhMLZ">
        <child id="4304617121958732207" name="path" index="bPNfo" />
        <child id="5481506291238376648" name="destination" index="2RhMK_" />
        <child id="5481506291238376645" name="source" index="2RhMKC" />
      </concept>
      <concept id="6049904230683977455" name="org.fbme.ide.iec61499.lang.structure.Position" flags="ng" index="10YbkR">
        <property id="6049904230683977456" name="x" index="10YbkC" />
        <property id="6049904230683977458" name="y" index="10YbkE" />
      </concept>
      <concept id="6279537560535821563" name="org.fbme.ide.iec61499.lang.structure.SegmentDeclaration" flags="ng" index="16k8Fv">
        <reference id="6279537560535821566" name="type" index="16k8Fq" />
      </concept>
      <concept id="6279537560537435403" name="org.fbme.ide.iec61499.lang.structure.Link" flags="ng" index="16EYGJ">
        <reference id="6279537560537435409" name="segment" index="16EYGP" />
        <child id="6279537560537435404" name="resource" index="16EYGC" />
      </concept>
      <concept id="3589220129094133401" name="org.fbme.ide.iec61499.lang.structure.ComponentDataSource" flags="ng" index="3IAhSD" />
      <concept id="3589220129094143959" name="org.fbme.ide.iec61499.lang.structure.ComponentDataDestination" flags="ng" index="3IAvtB" />
      <concept id="7558503085816725073" name="org.fbme.ide.iec61499.lang.structure.ComponentEndpoint" flags="ng" index="3JaoNj">
        <reference id="967875482185482523" name="component" index="1N5Pi4" />
      </concept>
      <concept id="554302972924733408" name="org.fbme.ide.iec61499.lang.structure.SystemDeclaration" flags="ng" index="3KFA1X">
        <child id="6279537560535846736" name="segments" index="16kM_O" />
        <child id="6279537560538025804" name="links" index="16GI_C" />
        <child id="554302972924735196" name="devices" index="3KFA_1" />
        <child id="554302972924735194" name="applications" index="3KFA_7" />
        <child id="554302972929127418" name="mappings" index="3KORhB" />
      </concept>
      <concept id="554302972924734114" name="org.fbme.ide.iec61499.lang.structure.ApplicationDeclaration" flags="ng" index="3KFAOZ" />
      <concept id="554302972929660960" name="org.fbme.ide.iec61499.lang.structure.ResourceReference" flags="ng" index="3KQLYX">
        <reference id="554302972929660961" name="device" index="3KQLYW" />
        <reference id="554302972929660963" name="resource" index="3KQLYY" />
      </concept>
      <concept id="554302972928529669" name="org.fbme.ide.iec61499.lang.structure.ApplicationFunctionBlockReference" flags="ng" index="3KU5ao">
        <reference id="554302972928570185" name="functionBlock" index="3KUfjk" />
        <child id="554302972928570183" name="application" index="3KUfjq" />
      </concept>
      <concept id="554302972928529668" name="org.fbme.ide.iec61499.lang.structure.Mapping" flags="ng" index="3KU5ap">
        <child id="554302972928570261" name="resource" index="3KUfg8" />
        <child id="554302972928570259" name="instance" index="3KUfge" />
      </concept>
      <concept id="554302972928529671" name="org.fbme.ide.iec61499.lang.structure.SystemApplicationReference" flags="ng" index="3KU5aq">
        <reference id="554302972928529672" name="application" index="3KU5al" />
      </concept>
      <concept id="554302972928570264" name="org.fbme.ide.iec61499.lang.structure.ResourceFunctionBlockReference" flags="ng" index="3KUfg5">
        <reference id="554302972930397634" name="functionBlock" index="3KLd9v" />
        <child id="554302972930397632" name="resource" index="3KLd9t" />
      </concept>
      <concept id="2693352324629967306" name="org.fbme.ide.iec61499.lang.structure.ParameterAssignment" flags="ng" index="1LUwhx">
        <reference id="2693352324629967307" name="decl" index="1LUwhw" />
        <child id="2693352324629967311" name="value" index="1LUwh$" />
      </concept>
      <concept id="2693352324629965912" name="org.fbme.ide.iec61499.lang.structure.ResourceDeclaration" flags="ng" index="1LUxBN">
        <reference id="2693352324629965913" name="type" index="1LUxBM" />
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
        <child id="6585350836361975776" name="parameters" index="2LNCDh" />
      </concept>
      <concept id="2693352324618654708" name="org.fbme.ide.iec61499.lang.structure.IWithFBNetwork" flags="ng" index="1QJEpv">
        <child id="967875482185482537" name="eventConnections" index="1N5PiQ" />
        <child id="967875482185482532" name="dataConnections" index="1N5PiV" />
        <child id="967875482185482529" name="functionBlocks" index="1N5PiY" />
      </concept>
      <concept id="8167217573768971186" name="org.fbme.ide.iec61499.lang.structure.ComponentEventDestination" flags="ng" index="3Yx0EI" />
      <concept id="8167217573768433448" name="org.fbme.ide.iec61499.lang.structure.ComponentEventSource" flags="ng" index="3YB4oO" />
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
        <node concept="1N5Tqi" id="3wAsKTk8K1T" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K1U" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="csiz:~FBME_E_CYCLE.EO" resolve="EO" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K1V" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="csiz:~FBME_E_SWITCH.EI" resolve="EI" />
          </node>
          <node concept="bR33I" id="7q4raQAeLc6" role="bPNfo" />
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K1W" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K1X" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="csiz:~FBME_E_SWITCH.EO0" resolve="EO0" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K1Y" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5Pi3" to="csiz:~FBME_E_SR.S" resolve="S" />
          </node>
          <node concept="bR33I" id="7q4raQAeLca" role="bPNfo" />
        </node>
        <node concept="1N5Tqi" id="3wAsKTk8K1Z" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K20" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="csiz:~FBME_E_SWITCH.EO1" resolve="EO1" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K21" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5Pi3" to="csiz:~FBME_E_SR.R" resolve="R" />
          </node>
          <node concept="bR33I" id="7q4raQAeLcb" role="bPNfo" />
        </node>
        <node concept="1N5Tq9" id="19RKY2xIn1u" role="1N5PiV">
          <node concept="3IAhSD" id="19RKY2xIn1w" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5PlF" to="csiz:~FBME_E_SR.Q" resolve="Q" />
          </node>
          <node concept="3IAvtB" id="19RKY2xIn1x" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5PlF" to="csiz:~FBME_E_SWITCH.G" resolve="G" />
          </node>
          <node concept="bR73E" id="7q4raQAeLc9" role="bPNfo">
            <property role="bR73D" value="75.0" />
            <property role="bR73n" value="57.0" />
            <property role="bR73k" value="175.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K19" role="1N5PiY">
          <property role="TrG5h" value="E_CYCLE" />
          <ref role="1N5Tt0" to="csiz:~FBME_E_CYCLE" resolve="FBME_E_CYCLE" />
          <node concept="10YbkR" id="3IX4BsKohuZ" role="b_cXm">
            <property role="10YbkC" value="671.0" />
            <property role="10YbkE" value="50.0" />
          </node>
          <node concept="1LUwhx" id="4$DWfk7d5Sd" role="2LNCDh">
            <ref role="1LUwhw" to="csiz:~FBME_E_CYCLE.DT" resolve="DT" />
            <node concept="1GfuCM" id="4$DWfk7d5Si" role="1LUwh$">
              <property role="1GfuCK" value="1000ms" />
            </node>
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1a" role="1N5PiY">
          <property role="TrG5h" value="E_SR" />
          <ref role="1N5Tt0" to="csiz:~FBME_E_SR" resolve="FBME_E_SR" />
          <node concept="10YbkR" id="3IX4BsKohv0" role="b_cXm">
            <property role="10YbkC" value="2107.0" />
            <property role="10YbkE" value="50.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1b" role="1N5PiY">
          <property role="TrG5h" value="E_SWITCH" />
          <ref role="1N5Tt0" to="csiz:~FBME_E_SWITCH" resolve="FBME_E_SWITCH" />
          <node concept="10YbkR" id="3IX4BsKohv1" role="b_cXm">
            <property role="10YbkC" value="1464.0" />
            <property role="10YbkE" value="50.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="5OPYJ1hokFf" role="1N5PiQ">
          <node concept="3YB4oO" id="5OPYJ1hokFd" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.COLD" resolve="COLD" />
          </node>
          <node concept="3Yx0EI" id="5OPYJ1hokFe" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="csiz:~FBME_E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR32z" id="7q4raQAeLc8" role="bPNfo">
            <property role="bR32p" value="50.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="5OPYJ1hokF$" role="1N5PiQ">
          <node concept="3YB4oO" id="5OPYJ1hokFy" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.WARM" resolve="WARM" />
          </node>
          <node concept="3Yx0EI" id="5OPYJ1hokFW" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="csiz:~FBME_E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR33I" id="7q4raQAeLc7" role="bPNfo" />
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
      <node concept="1N5Tq9" id="19RKY2xImJ4" role="1N5PiV">
        <node concept="3IAhSD" id="19RKY2xImJl" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5PlF" to="csiz:~FBME_E_SR.Q" resolve="Q" />
        </node>
        <node concept="3IAvtB" id="34yqbtaiM1u" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5PlF" to="csiz:~FBME_E_SWITCH.G" resolve="G" />
        </node>
        <node concept="bR73E" id="1yZbKy16ao8" role="bPNfo">
          <property role="bR73D" value="75.0" />
          <property role="bR73n" value="63.0" />
          <property role="bR73k" value="75.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$j" role="1N5PiQ">
        <node concept="3YB4oO" id="3wAsKTk6T$p" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6SA2" resolve="E_CYCLE" />
          <ref role="1N5Pi3" to="csiz:~FBME_E_CYCLE.EO" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="Ue8k5tzWA6" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="csiz:~FBME_E_SWITCH.EI" resolve="EI" />
        </node>
        <node concept="bR73E" id="1yZbKy16aob" role="bPNfo">
          <property role="bR73D" value="122.0" />
          <property role="bR73n" value="528.0" />
          <property role="bR73k" value="75.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$I" role="1N5PiQ">
        <node concept="3Yx0EI" id="3wAsKTk6T$K" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="csiz:~FBME_E_SR.R" resolve="R" />
        </node>
        <node concept="3YB4oO" id="4hhlEYV6vpK" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="csiz:~FBME_E_SWITCH.EO1" resolve="EO1" />
        </node>
        <node concept="bR33I" id="1yZbKy16ao9" role="bPNfo" />
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$v" role="1N5PiQ">
        <node concept="3Yx0EI" id="3wAsKTk6T$F" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="csiz:~FBME_E_SR.S" resolve="S" />
        </node>
        <node concept="3YB4oO" id="34yqbtaj4cl" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="csiz:~FBME_E_SWITCH.EO0" resolve="EO0" />
        </node>
        <node concept="bR33I" id="1yZbKy16aoa" role="bPNfo" />
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6SA2" role="1N5PiY">
        <property role="TrG5h" value="E_CYCLE" />
        <ref role="1N5Tt0" to="csiz:~FBME_E_CYCLE" resolve="FBME_E_CYCLE" />
        <node concept="10YbkR" id="3IX4BsKohv2" role="b_cXm">
          <property role="10YbkC" value="1215.0" />
          <property role="10YbkE" value="0.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzW" role="1N5PiY">
        <property role="TrG5h" value="E_SR" />
        <ref role="1N5Tt0" to="csiz:~FBME_E_SR" resolve="FBME_E_SR" />
        <node concept="10YbkR" id="3IX4BsKohv3" role="b_cXm">
          <property role="10YbkC" value="656.0" />
          <property role="10YbkE" value="265.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzZ" role="1N5PiY">
        <property role="TrG5h" value="E_SWITCH" />
        <ref role="1N5Tt0" to="csiz:~FBME_E_SWITCH" resolve="FBME_E_SWITCH" />
        <node concept="10YbkR" id="3IX4BsKohv4" role="b_cXm">
          <property role="10YbkC" value="128.0" />
          <property role="10YbkE" value="265.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="34yqbtaiM15" role="1N5PiQ">
        <node concept="3YB4oO" id="34yqbtaiM17" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="csiz:~FBME_E_SR.EO" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="34yqbtaiM18" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6SA2" resolve="E_CYCLE" />
          <ref role="1N5Pi3" to="csiz:~FBME_E_CYCLE.START" resolve="START" />
        </node>
        <node concept="bR32z" id="1yZbKy16aoc" role="bPNfo">
          <property role="bR32p" value="50.0" />
        </node>
      </node>
    </node>
  </node>
</model>

