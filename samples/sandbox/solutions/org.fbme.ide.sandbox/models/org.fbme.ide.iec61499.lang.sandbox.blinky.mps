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
      <concept id="3684630931968193376" name="org.fbme.ide.st.lang.structure.WStringLiteral" flags="ng" index="2RgKcJ">
        <property id="3684630931968193403" name="value" index="2RgKcO" />
      </concept>
      <concept id="2377145822810428096" name="org.fbme.ide.st.lang.structure.IntType" flags="ng" index="3r5wd7" />
      <concept id="4046047820616800572" name="org.fbme.ide.st.lang.structure.TimeLiteral" flags="ng" index="1GfuCM">
        <property id="4046047820616800574" name="value" index="1GfuCK" />
      </concept>
      <concept id="2693352324616754510" name="org.fbme.ide.st.lang.structure.StringType" flags="ng" index="1QCq3_" />
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
      <concept id="4280485643801969830" name="org.fbme.ide.iec61499.lang.structure.EventDeclaration" flags="ng" index="2zBDe_" />
      <concept id="4280485643801969832" name="org.fbme.ide.iec61499.lang.structure.ParameterDeclaration" flags="ng" index="2zBDeF">
        <child id="4280485643802059164" name="type" index="2zB7qv" />
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
      <concept id="6279537560535821563" name="org.fbme.ide.iec61499.lang.structure.SegmentDeclaration" flags="ng" index="16k8Fv">
        <reference id="6279537560535821566" name="type" index="16k8Fq" />
      </concept>
      <concept id="6279537560537435403" name="org.fbme.ide.iec61499.lang.structure.Link" flags="ng" index="16EYGJ">
        <reference id="6279537560537435409" name="segment" index="16EYGP" />
        <child id="6279537560537435404" name="resource" index="16EYGC" />
      </concept>
      <concept id="3589220129093680090" name="org.fbme.ide.iec61499.lang.structure.SocketDeclaration" flags="ng" index="3Iw0dE">
        <reference id="3589220129093680093" name="adapterType" index="3Iw0dH" />
        <child id="7816599728425115160" name="position" index="2oiVCh" />
      </concept>
      <concept id="3589220129094132068" name="org.fbme.ide.iec61499.lang.structure.AdapterConnection" flags="ng" index="3IAhBk" />
      <concept id="3589220129094133401" name="org.fbme.ide.iec61499.lang.structure.ComponentDataSource" flags="ng" index="3IAhSD" />
      <concept id="3589220129094143959" name="org.fbme.ide.iec61499.lang.structure.ComponentDataDestination" flags="ng" index="3IAvtB" />
      <concept id="3589220129093721141" name="org.fbme.ide.iec61499.lang.structure.PlugDeclaration" flags="ng" index="3IBQi5">
        <reference id="3589220129093721144" name="adapterType" index="3IBQi8" />
        <child id="7816599728425079530" name="position" index="2oiNrz" />
      </concept>
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
      <concept id="554302972921896510" name="org.fbme.ide.iec61499.lang.structure.DeclarationWithInterfaceAndAdapters" flags="ng" index="3LgDAz">
        <child id="8167217573769997767" name="plugs" index="3YHajr" />
        <child id="8167217573769997794" name="sockets" index="3YHajY" />
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
      <concept id="967875482185433821" name="org.fbme.ide.iec61499.lang.structure.CompositeFBTypeDeclaration" flags="ng" index="1N5Tt2" />
      <concept id="2693352324618654708" name="org.fbme.ide.iec61499.lang.structure.IWithFBNetwork" flags="ng" index="1QJEpv">
        <child id="3589220129094132063" name="adapterConnections" index="3IAhBJ" />
        <child id="967875482185482537" name="eventConnections" index="1N5PiQ" />
        <child id="967875482185482532" name="dataConnections" index="1N5PiV" />
        <child id="967875482185482529" name="functionBlocks" index="1N5PiY" />
      </concept>
      <concept id="8167217573768971186" name="org.fbme.ide.iec61499.lang.structure.ComponentEventDestination" flags="ng" index="3Yx0EI" />
      <concept id="8167217573768433448" name="org.fbme.ide.iec61499.lang.structure.ComponentEventSource" flags="ng" index="3YB4oO" />
      <concept id="8167217573767399865" name="org.fbme.ide.iec61499.lang.structure.FBPlugReference" flags="ng" index="3YV02_">
        <reference id="8167217573767399870" name="component" index="3YV02y" />
        <reference id="8167217573767399872" name="declaration" index="3YV03s" />
      </concept>
      <concept id="8167217573767369651" name="org.fbme.ide.iec61499.lang.structure.FBSocketReference" flags="ng" index="3YV9EJ">
        <reference id="8167217573767370701" name="declaration" index="3YV9Vh" />
        <reference id="8167217573767370699" name="component" index="3YV9Vn" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
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
      <node concept="1LUxBN" id="3NmejxrOh3C" role="2JYBVl">
        <property role="TrG5h" value="Blinky_RES2" />
        <ref role="1LUxBM" to="7fvu:~EMB_RES" resolve="EMB_RES" />
        <node concept="1N5Tq9" id="3NmejxrOheg" role="1N5PiV">
          <node concept="3IAhSD" id="3NmejxrOhei" role="2RhMKC">
            <ref role="1N5Pi4" node="3NmejxrOhdB" resolve="SUBSCRIBE_1" />
            <ref role="1N5PlF" to="7fvu:~SUBSCRIBE_1.RD_1" resolve="RD_1" />
          </node>
          <node concept="3IAvtB" id="3NmejxrOhej" role="2RhMK_">
            <ref role="1N5Pi4" node="3NmejxrOh49" resolve="E_PERMIT" />
            <ref role="1N5PlF" to="7fvu:~E_PERMIT.PERMIT" resolve="PERMIT" />
          </node>
          <node concept="bR32z" id="3NmejxrOhg1" role="bPNfo">
            <property role="bR32p" value="70.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3NmejxrOh9s" role="1N5PiQ">
          <node concept="3YB4oO" id="3NmejxrOh9u" role="2RhMKC">
            <ref role="1N5Pi4" node="3NmejxrOh49" resolve="E_PERMIT" />
            <ref role="1N5Pi3" to="7fvu:~E_PERMIT.EO" resolve="EO" />
          </node>
          <node concept="3Yx0EI" id="3NmejxrOh9v" role="2RhMK_">
            <ref role="1N5Pi4" node="3NmejxrOh9l" resolve="E_CTU" />
            <ref role="1N5Pi3" to="7fvu:~E_CTU.CU" resolve="CU" />
          </node>
          <node concept="bR32z" id="3NmejxrOhfV" role="bPNfo">
            <property role="bR32p" value="-13.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3NmejxrOh49" role="1N5PiY">
          <property role="TrG5h" value="E_PERMIT" />
          <ref role="1N5Tt0" to="7fvu:~E_PERMIT" resolve="E_PERMIT" />
          <node concept="10YbkR" id="3NmejxrOh4a" role="b_cXm">
            <property role="10YbkC" value="1120.0" />
            <property role="10YbkE" value="93.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3NmejxrOh9l" role="1N5PiY">
          <property role="TrG5h" value="E_CTU" />
          <ref role="1N5Tt0" to="7fvu:~E_CTU" resolve="E_CTU" />
          <node concept="10YbkR" id="3NmejxrOh9n" role="b_cXm">
            <property role="10YbkC" value="1559.0" />
            <property role="10YbkE" value="96.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3NmejxrOhdB" role="1N5PiY">
          <property role="TrG5h" value="SUBSCRIBE_1" />
          <ref role="1N5Tt0" to="7fvu:~SUBSCRIBE_1" resolve="SUBSCRIBE_1" />
          <node concept="1LUwhx" id="3NmejxrOheK" role="2LNCDh">
            <ref role="1LUwhw" to="7fvu:~SUBSCRIBE_1.ID" resolve="ID" />
            <node concept="2RgKcJ" id="3NmejxrOheL" role="1LUwh$">
              <property role="2RgKcO" value="239.0.0.1:61000" />
            </node>
          </node>
          <node concept="10YbkR" id="3NmejxrOhdD" role="b_cXm">
            <property role="10YbkC" value="580.0" />
            <property role="10YbkE" value="40.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3NmejxrOhdK" role="1N5PiQ">
          <node concept="3YB4oO" id="3NmejxrOhdM" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.COLD" resolve="COLD" />
          </node>
          <node concept="3Yx0EI" id="3NmejxrOhdN" role="2RhMK_">
            <ref role="1N5Pi4" node="3NmejxrOhdB" resolve="SUBSCRIBE_1" />
            <ref role="1N5Pi3" to="7fvu:~SUBSCRIBE_1.INIT" resolve="INIT" />
          </node>
          <node concept="bR32z" id="3NmejxrOhg5" role="bPNfo">
            <property role="bR32p" value="129.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3NmejxrOhdY" role="1N5PiQ">
          <node concept="3YB4oO" id="3NmejxrOhe0" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.WARM" resolve="WARM" />
          </node>
          <node concept="3Yx0EI" id="3NmejxrOhe1" role="2RhMK_">
            <ref role="1N5Pi4" node="3NmejxrOhdB" resolve="SUBSCRIBE_1" />
            <ref role="1N5Pi3" to="7fvu:~SUBSCRIBE_1.INIT" resolve="INIT" />
          </node>
          <node concept="bR32z" id="3NmejxrOhg3" role="bPNfo">
            <property role="bR32p" value="79.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3NmejxrOheq" role="1N5PiQ">
          <node concept="3YB4oO" id="3NmejxrOhes" role="2RhMKC">
            <ref role="1N5Pi4" node="3NmejxrOhdB" resolve="SUBSCRIBE_1" />
            <ref role="1N5Pi3" to="7fvu:~SUBSCRIBE_1.IND" resolve="IND" />
          </node>
          <node concept="3Yx0EI" id="3NmejxrOhet" role="2RhMK_">
            <ref role="1N5Pi4" node="3NmejxrOh49" resolve="E_PERMIT" />
            <ref role="1N5Pi3" to="7fvu:~E_PERMIT.EI" resolve="EI" />
          </node>
          <node concept="bR33I" id="3NmejxrOhfX" role="bPNfo" />
        </node>
      </node>
      <node concept="1LUxBN" id="3wAsKTk8K0R" role="2JYBVl">
        <property role="TrG5h" value="Blinky_RES1" />
        <ref role="1LUxBM" to="7fvu:~EMB_RES" resolve="EMB_RES" />
        <node concept="1N5Tqi" id="3wAsKTk8K1T" role="1N5PiQ">
          <node concept="3YB4oO" id="3wAsKTk8K1U" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.EO" resolve="EO" />
          </node>
          <node concept="3Yx0EI" id="3wAsKTk8K1V" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EI" resolve="EI" />
          </node>
          <node concept="bR33I" id="3NmejxrOhc5" role="bPNfo" />
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
          <node concept="bR33I" id="3NmejxrOhcC" role="bPNfo" />
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
          <node concept="bR33I" id="3NmejxrOhc_" role="bPNfo" />
        </node>
        <node concept="1N5Tq9" id="19RKY2xIn1u" role="1N5PiV">
          <node concept="3IAhSD" id="19RKY2xIn1w" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
          </node>
          <node concept="3IAvtB" id="19RKY2xIn1x" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K1b" resolve="E_SWITCH" />
            <ref role="1N5PlF" to="7fvu:~E_SWITCH.G" resolve="G" />
          </node>
          <node concept="bR73E" id="3NmejxrOhcX" role="bPNfo">
            <property role="bR73D" value="46.0" />
            <property role="bR73n" value="57.0" />
            <property role="bR73k" value="80.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K19" role="1N5PiY">
          <property role="TrG5h" value="E_CYCLE" />
          <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
          <node concept="10YbkR" id="3IX4BsKohuZ" role="b_cXm">
            <property role="10YbkC" value="506.0" />
            <property role="10YbkE" value="350.0" />
          </node>
          <node concept="1LUwhx" id="4$DWfk7d5Sd" role="2LNCDh">
            <ref role="1LUwhw" to="7fvu:~E_CYCLE.DT" resolve="DT" />
            <node concept="1GfuCM" id="4$DWfk7d5Si" role="1LUwh$">
              <property role="1GfuCK" value="1000ms" />
            </node>
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1a" role="1N5PiY">
          <property role="TrG5h" value="E_SR" />
          <ref role="1N5Tt0" to="7fvu:~E_SR" resolve="E_SR" />
          <node concept="10YbkR" id="3IX4BsKohv0" role="b_cXm">
            <property role="10YbkC" value="1283.0" />
            <property role="10YbkE" value="353.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1b" role="1N5PiY">
          <property role="TrG5h" value="E_SWITCH" />
          <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
          <node concept="10YbkR" id="3IX4BsKohv1" role="b_cXm">
            <property role="10YbkC" value="939.0" />
            <property role="10YbkE" value="350.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="5OPYJ1hokFf" role="1N5PiQ">
          <node concept="3YB4oO" id="5OPYJ1hokFd" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.COLD" resolve="COLD" />
          </node>
          <node concept="3Yx0EI" id="5OPYJ1hokFe" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR32z" id="3NmejxrOhc0" role="bPNfo">
            <property role="bR32p" value="129.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="5OPYJ1hokF$" role="1N5PiQ">
          <node concept="3YB4oO" id="5OPYJ1hokFy" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.WARM" resolve="WARM" />
          </node>
          <node concept="3Yx0EI" id="5OPYJ1hokFW" role="2RhMK_">
            <ref role="1N5Pi4" node="3wAsKTk8K19" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR32z" id="3NmejxrOhc2" role="bPNfo">
            <property role="bR32p" value="123.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3NmejxrOh9D" role="1N5PiY">
          <property role="TrG5h" value="PUBLISH_1" />
          <ref role="1N5Tt0" to="7fvu:~PUBLISH_1" resolve="PUBLISH_1" />
          <node concept="1LUwhx" id="3NmejxrOhd0" role="2LNCDh">
            <ref role="1LUwhw" to="7fvu:~PUBLISH_1.ID" resolve="ID" />
            <node concept="2RgKcJ" id="3NmejxrOhdq" role="1LUwh$">
              <property role="2RgKcO" value="239.0.0.1:61000" />
            </node>
          </node>
          <node concept="10YbkR" id="3NmejxrOh9F" role="b_cXm">
            <property role="10YbkC" value="1676.0" />
            <property role="10YbkE" value="-13.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3NmejxrOh9R" role="1N5PiQ">
          <node concept="3YB4oO" id="3NmejxrOh9T" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:~E_SR.EO" resolve="EO" />
          </node>
          <node concept="3Yx0EI" id="3NmejxrOh9U" role="2RhMK_">
            <ref role="1N5Pi4" node="3NmejxrOh9D" resolve="PUBLISH_1" />
            <ref role="1N5Pi3" to="7fvu:~PUBLISH_1.REQ" resolve="REQ" />
          </node>
          <node concept="bR32z" id="3NmejxrOhdx" role="bPNfo">
            <property role="bR32p" value="133.0" />
          </node>
        </node>
        <node concept="1N5Tq9" id="3NmejxrOhal" role="1N5PiV">
          <node concept="3IAhSD" id="3NmejxrOhan" role="2RhMKC">
            <ref role="1N5Pi4" node="3wAsKTk8K1a" resolve="E_SR" />
            <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
          </node>
          <node concept="3IAvtB" id="3NmejxrOhao" role="2RhMK_">
            <ref role="1N5Pi4" node="3NmejxrOh9D" resolve="PUBLISH_1" />
            <ref role="1N5PlF" to="7fvu:~PUBLISH_1.SD_1" resolve="SD_1" />
          </node>
          <node concept="bR32z" id="3NmejxrOhdz" role="bPNfo">
            <property role="bR32p" value="159.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="3NmejxrOhbq" role="1N5PiQ">
          <node concept="3YB4oO" id="3NmejxrOhbs" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.COLD" resolve="COLD" />
          </node>
          <node concept="3Yx0EI" id="3NmejxrOhbt" role="2RhMK_">
            <ref role="1N5Pi4" node="3NmejxrOh9D" resolve="PUBLISH_1" />
            <ref role="1N5Pi3" to="7fvu:~PUBLISH_1.INIT" resolve="INIT" />
          </node>
          <node concept="bR32z" id="3NmejxrOhcK" role="bPNfo">
            <property role="bR32p" value="649.0" />
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
      <node concept="1N5Tq9" id="19RKY2xImJ4" role="1N5PiV">
        <node concept="3IAhSD" id="19RKY2xImJl" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
        </node>
        <node concept="3IAvtB" id="34yqbtaiM1u" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5PlF" to="7fvu:~E_SWITCH.G" resolve="G" />
        </node>
        <node concept="bR73E" id="3NmejxrOgZX" role="bPNfo">
          <property role="bR73D" value="70.0" />
          <property role="bR73n" value="70.0" />
          <property role="bR73k" value="70.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$j" role="1N5PiQ">
        <node concept="3YB4oO" id="3wAsKTk6T$p" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6SA2" resolve="E_CYCLE" />
          <ref role="1N5Pi3" to="7fvu:~E_CYCLE.EO" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="Ue8k5tzWA6" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EI" resolve="EI" />
        </node>
        <node concept="bR33I" id="3NmejxrOgXW" role="bPNfo" />
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$I" role="1N5PiQ">
        <node concept="3Yx0EI" id="3wAsKTk6T$K" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:~E_SR.R" resolve="R" />
        </node>
        <node concept="3YB4oO" id="4hhlEYV6vpK" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO1" resolve="EO1" />
        </node>
        <node concept="bR33I" id="3NmejxrOgXY" role="bPNfo" />
      </node>
      <node concept="1N5Tqi" id="3wAsKTk6T$v" role="1N5PiQ">
        <node concept="3Yx0EI" id="3wAsKTk6T$F" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:~E_SR.S" resolve="S" />
        </node>
        <node concept="3YB4oO" id="34yqbtaj4cl" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO0" resolve="EO0" />
        </node>
        <node concept="bR33I" id="3NmejxrOgY0" role="bPNfo" />
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6SA2" role="1N5PiY">
        <property role="TrG5h" value="E_CYCLE" />
        <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
        <node concept="10YbkR" id="3IX4BsKohv2" role="b_cXm">
          <property role="10YbkC" value="340.0" />
          <property role="10YbkE" value="70.0" />
        </node>
        <node concept="1LUwhx" id="6M6Ui0QYpyI" role="2LNCDh">
          <ref role="1LUwhw" to="7fvu:~E_CYCLE.DT" resolve="DT" />
          <node concept="1GfuCM" id="6M6Ui0QYpyJ" role="1LUwh$">
            <property role="1GfuCK" value="1000ms" />
          </node>
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzW" role="1N5PiY">
        <property role="TrG5h" value="E_SR" />
        <ref role="1N5Tt0" to="7fvu:~E_SR" resolve="E_SR" />
        <node concept="10YbkR" id="3IX4BsKohv3" role="b_cXm">
          <property role="10YbkC" value="1233.0" />
          <property role="10YbkE" value="63.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzZ" role="1N5PiY">
        <property role="TrG5h" value="E_SWITCH" />
        <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
        <node concept="10YbkR" id="3IX4BsKohv4" role="b_cXm">
          <property role="10YbkC" value="793.0" />
          <property role="10YbkE" value="73.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3NmejxrOgYb" role="1N5PiY">
        <property role="TrG5h" value="E_PERMIT" />
        <ref role="1N5Tt0" to="7fvu:~E_PERMIT" resolve="E_PERMIT" />
        <node concept="10YbkR" id="3NmejxrOgYd" role="b_cXm">
          <property role="10YbkC" value="1629.0" />
          <property role="10YbkE" value="80.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3NmejxrOgYp" role="1N5PiY">
        <property role="TrG5h" value="E_CTU" />
        <ref role="1N5Tt0" to="7fvu:~E_CTU" resolve="E_CTU" />
        <node concept="10YbkR" id="3NmejxrOgYr" role="b_cXm">
          <property role="10YbkC" value="2100.0" />
          <property role="10YbkE" value="76.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="3NmejxrOgYC" role="1N5PiQ">
        <node concept="3YB4oO" id="3NmejxrOgYE" role="2RhMKC">
          <ref role="1N5Pi4" node="3NmejxrOgYb" resolve="E_PERMIT" />
          <ref role="1N5Pi3" to="7fvu:~E_PERMIT.EO" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="3NmejxrOgYF" role="2RhMK_">
          <ref role="1N5Pi4" node="3NmejxrOgYp" resolve="E_CTU" />
          <ref role="1N5Pi3" to="7fvu:~E_CTU.CU" resolve="CU" />
        </node>
        <node concept="bR33I" id="3NmejxrOgZO" role="bPNfo" />
      </node>
      <node concept="1N5Tqi" id="3NmejxrOgYZ" role="1N5PiQ">
        <node concept="3YB4oO" id="3NmejxrOgZ1" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:~E_SR.EO" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="3NmejxrOgZ2" role="2RhMK_">
          <ref role="1N5Pi4" node="3NmejxrOgYb" resolve="E_PERMIT" />
          <ref role="1N5Pi3" to="7fvu:~E_PERMIT.EI" resolve="EI" />
        </node>
        <node concept="bR32z" id="3NmejxrOgZT" role="bPNfo">
          <property role="bR32p" value="83.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="3NmejxrOgZr" role="1N5PiV">
        <node concept="3IAhSD" id="3NmejxrOgZt" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
        </node>
        <node concept="3IAvtB" id="3NmejxrOgZu" role="2RhMK_">
          <ref role="1N5Pi4" node="3NmejxrOgYb" resolve="E_PERMIT" />
          <ref role="1N5PlF" to="7fvu:~E_PERMIT.PERMIT" resolve="PERMIT" />
        </node>
        <node concept="bR32z" id="3NmejxrOgZV" role="bPNfo">
          <property role="bR32p" value="80.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="1TXM2wdK92C">
    <property role="TrG5h" value="Production_Recipe" />
    <property role="3GE5qa" value="enas" />
    <node concept="2zBDeF" id="1TXM2wdK932" role="2zBDeH">
      <property role="TrG5h" value="Count" />
      <node concept="3r5wd7" id="1TXM2wdK936" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK930" role="2zBDew">
      <property role="TrG5h" value="Reset_All" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK9st" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK92V" role="2zBDey">
      <property role="TrG5h" value="INT" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK92X" role="2zBDey">
      <property role="TrG5h" value="START" />
    </node>
    <node concept="3IBQi5" id="1TXM2wdK93h" role="3YHajr">
      <property role="TrG5h" value="CurrentState" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK93i" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="1TXM2wdK92L" role="3YHajr">
      <property role="TrG5h" value="Adp_DeliveryService" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK92M" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="1TXM2wdK92P" role="3YHajr">
      <property role="TrG5h" value="Adp_Jack" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK92Q" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="1TXM2wdK93p">
    <property role="TrG5h" value="DeliveryService" />
    <property role="3GE5qa" value="enas" />
    <node concept="3IBQi5" id="1TXM2wdK93u" role="3YHajr">
      <property role="TrG5h" value="CommandOut" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK93v" role="2oiNrz">
        <property role="10YbkC" value="1450.0" />
        <property role="10YbkE" value="389.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="1TXM2wdK93y" role="3YHajr">
      <property role="TrG5h" value="Adp_Command" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK93z" role="2oiNrz">
        <property role="10YbkC" value="710.0" />
        <property role="10YbkE" value="213.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="1TXM2wdK93q" role="3YHajY">
      <property role="TrG5h" value="Adp_DeliveryService" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK93r" role="2oiVCh">
        <property role="10YbkC" value="413.0" />
        <property role="10YbkE" value="809.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="1TXM2wdK93C">
    <property role="3GE5qa" value="enas" />
    <property role="TrG5h" value="Pneumatics" />
    <node concept="3Iw0dE" id="1TXM2wdK93H" role="3YHajY">
      <property role="TrG5h" value="&gt;&gt;Input" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK93I" role="2oiVCh">
        <property role="10YbkC" value="763.0" />
        <property role="10YbkE" value="246.0" />
      </node>
    </node>
    <node concept="2zBDe_" id="1TXM2wdK93F" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK93D" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
  </node>
  <node concept="1N5Tt2" id="1TXM2wdK93L">
    <property role="3GE5qa" value="enas" />
    <property role="TrG5h" value="Example" />
    <node concept="3IAhBk" id="1TXM2wdK95y" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK95$" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK95c" resolve="Produuction_Recipe" />
        <ref role="3YV03s" node="1TXM2wdK92L" resolve="Adp_DeliveryService" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK95_" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK93M" resolve="DeliveryService" />
        <ref role="3YV9Vh" node="1TXM2wdK93q" resolve="Adp_DeliveryService" />
      </node>
      <node concept="bR32z" id="1TXM2wdK9wz" role="bPNfo">
        <property role="bR32p" value="221.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK93M" role="1N5PiY">
      <property role="TrG5h" value="DeliveryService" />
      <ref role="1N5Tt0" node="1TXM2wdK93p" resolve="DeliveryService" />
      <node concept="10YbkR" id="1TXM2wdK93O" role="b_cXm">
        <property role="10YbkC" value="1336.0" />
        <property role="10YbkE" value="223.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK941" role="1N5PiY">
      <property role="TrG5h" value="Jack1" />
      <ref role="1N5Tt0" node="1TXM2wdK93C" resolve="Pneumatics" />
      <node concept="10YbkR" id="1TXM2wdK943" role="b_cXm">
        <property role="10YbkC" value="1530.0" />
        <property role="10YbkE" value="513.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK94m" role="1N5PiY">
      <property role="TrG5h" value="Jack2" />
      <ref role="1N5Tt0" node="1TXM2wdK93C" resolve="Pneumatics" />
      <node concept="10YbkR" id="1TXM2wdK94o" role="b_cXm">
        <property role="10YbkC" value="1530.0" />
        <property role="10YbkE" value="783.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK95c" role="1N5PiY">
      <property role="TrG5h" value="Produuction_Recipe" />
      <ref role="1N5Tt0" node="1TXM2wdK92C" resolve="Production_Recipe" />
      <node concept="10YbkR" id="1TXM2wdK95e" role="b_cXm">
        <property role="10YbkC" value="140.0" />
        <property role="10YbkE" value="313.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK95K" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK95M" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK95c" resolve="Produuction_Recipe" />
        <ref role="3YV03s" node="1TXM2wdK92P" resolve="Adp_Jack" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK95N" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK941" resolve="Jack1" />
        <ref role="3YV9Vh" node="1TXM2wdK93H" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="1TXM2wdK96o" role="bPNfo">
        <property role="bR32p" value="324.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK962" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK964" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK95c" resolve="Produuction_Recipe" />
        <ref role="3YV03s" node="1TXM2wdK92P" resolve="Adp_Jack" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK965" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK94m" resolve="Jack2" />
        <ref role="3YV9Vh" node="1TXM2wdK93H" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="1TXM2wdK96q" role="bPNfo">
        <property role="bR32p" value="324.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK96H" role="1N5PiY">
      <property role="TrG5h" value="Conveyor1" />
      <ref role="1N5Tt0" node="1TXM2wdK96$" resolve="Conveyor_SL_1_Adp" />
      <node concept="1LUwhx" id="1TXM2wdK9pM" role="2LNCDh">
        <ref role="1LUwhw" node="1TXM2wdK97T" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="1TXM2wdK9pN" role="1LUwh$">
          <property role="2RgKcO" value="1" />
        </node>
      </node>
      <node concept="10YbkR" id="1TXM2wdK96J" role="b_cXm">
        <property role="10YbkC" value="-99.0" />
        <property role="10YbkE" value="1153.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK9aG" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK9aI" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK93M" resolve="DeliveryService" />
        <ref role="3YV03s" node="1TXM2wdK93y" resolve="Adp_Command" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK9dw" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK96H" resolve="Conveyor_S_Adp" />
        <ref role="3YV9Vh" node="1TXM2wdK9cX" resolve="&gt;&gt;CommandIp" />
      </node>
      <node concept="bR73E" id="1TXM2wdK9wy" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="660.0" />
        <property role="bR73k" value="160.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK9fA" role="1N5PiY">
      <property role="TrG5h" value="Conveyor2" />
      <ref role="1N5Tt0" node="1TXM2wdK9b6" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="1TXM2wdK9fB" role="b_cXm">
        <property role="10YbkC" value="783.0" />
        <property role="10YbkE" value="1166.0" />
      </node>
      <node concept="1LUwhx" id="1TXM2wdK9rg" role="2LNCDh">
        <ref role="1LUwhw" node="1TXM2wdK9bh" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="1TXM2wdK9rk" role="1LUwh$">
          <property role="2RgKcO" value="2" />
        </node>
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK9fQ" role="1N5PiY">
      <property role="TrG5h" value="Conveyor3" />
      <ref role="1N5Tt0" node="1TXM2wdK9b6" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="1TXM2wdK9fR" role="b_cXm">
        <property role="10YbkC" value="1679.0" />
        <property role="10YbkE" value="1176.0" />
      </node>
      <node concept="1LUwhx" id="1TXM2wdK9r$" role="2LNCDh">
        <ref role="1LUwhw" node="1TXM2wdK9bh" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="1TXM2wdK9r_" role="1LUwh$">
          <property role="2RgKcO" value="3" />
        </node>
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK9g8" role="1N5PiY">
      <property role="TrG5h" value="Conveyor4" />
      <ref role="1N5Tt0" node="1TXM2wdK9b6" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="1TXM2wdK9g9" role="b_cXm">
        <property role="10YbkC" value="2540.0" />
        <property role="10YbkE" value="1196.0" />
      </node>
      <node concept="1LUwhx" id="1TXM2wdK9rQ" role="2LNCDh">
        <ref role="1LUwhw" node="1TXM2wdK9bh" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="1TXM2wdK9rR" role="1LUwh$">
          <property role="2RgKcO" value="4" />
        </node>
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK9gs" role="1N5PiY">
      <property role="TrG5h" value="Conveyor5" />
      <ref role="1N5Tt0" node="1TXM2wdK9b6" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="1TXM2wdK9gt" role="b_cXm">
        <property role="10YbkC" value="283.0" />
        <property role="10YbkE" value="1759.0" />
      </node>
      <node concept="1LUwhx" id="1TXM2wdK9sb" role="2LNCDh">
        <ref role="1LUwhw" node="1TXM2wdK9bh" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="1TXM2wdK9uj" role="1LUwh$">
          <property role="2RgKcO" value="5" />
        </node>
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK9dJ" role="1N5PiY">
      <property role="TrG5h" value="Conveyor6" />
      <ref role="1N5Tt0" node="1TXM2wdK9b6" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="1TXM2wdK9dL" role="b_cXm">
        <property role="10YbkC" value="1490.0" />
        <property role="10YbkE" value="1749.0" />
      </node>
      <node concept="1LUwhx" id="1TXM2wdK9s1" role="2LNCDh">
        <ref role="1LUwhw" node="1TXM2wdK9bh" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="1TXM2wdK9s2" role="1LUwh$">
          <property role="2RgKcO" value="6" />
        </node>
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK9iE" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK9iG" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK9fA" resolve="Conveyor2" />
        <ref role="3YV03s" node="1TXM2wdK9bd" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK9iH" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK9fQ" resolve="Conveyor3" />
        <ref role="3YV9Vh" node="1TXM2wdK9bf" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="1TXM2wdK9mw" role="bPNfo">
        <property role="bR32p" value="130.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK9jg" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK9ji" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK96H" resolve="Conveyor1" />
        <ref role="3YV03s" node="1TXM2wdK990" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK9jj" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK9fA" resolve="Conveyor2" />
        <ref role="3YV9Vh" node="1TXM2wdK9bf" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="1TXM2wdK9qT" role="bPNfo">
        <property role="bR32p" value="53.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK9l6" role="3IAhBJ">
      <node concept="3YV9EJ" id="1TXM2wdK9l9" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK9g8" resolve="Conveyor4" />
        <ref role="3YV9Vh" node="1TXM2wdK9bf" resolve="&gt;&gt;Input" />
      </node>
      <node concept="3YV02_" id="1TXM2wdK9m1" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK9fQ" resolve="Conveyor3" />
        <ref role="3YV03s" node="1TXM2wdK9bd" resolve="&gt;&gt;Output" />
      </node>
      <node concept="bR32z" id="1TXM2wdK9mj" role="bPNfo">
        <property role="bR32p" value="110.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK9n0" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK9n2" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK9g8" resolve="Conveyor4" />
        <ref role="3YV03s" node="1TXM2wdK9bd" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK9n3" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK9gs" resolve="Conveyor5" />
        <ref role="3YV9Vh" node="1TXM2wdK9bf" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR73E" id="1TXM2wdK9wm" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="70.0" />
        <property role="bR73k" value="177.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK9oK" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK9oM" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK9gs" resolve="Conveyor5" />
        <ref role="3YV03s" node="1TXM2wdK9bd" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK9ts" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK9dJ" resolve="Conveyor6" />
        <ref role="3YV9Vh" node="1TXM2wdK9bf" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="1TXM2wdK9w8" role="bPNfo">
        <property role="bR32p" value="224.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK9v0" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK9v2" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK9dJ" resolve="Conveyor6" />
        <ref role="3YV03s" node="1TXM2wdK9bd" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK9v3" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK96H" resolve="Conveyor1" />
        <ref role="3YV9Vh" node="1TXM2wdK98w" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR73E" id="1TXM2wdK9w4" role="bPNfo">
        <property role="bR73D" value="134.0" />
        <property role="bR73n" value="77.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="1TXM2wdK96$">
    <property role="3GE5qa" value="enas" />
    <property role="TrG5h" value="Conveyor_SL_1_Adp" />
    <node concept="2zBDeF" id="1TXM2wdK99d" role="2zBDeH">
      <property role="TrG5h" value="DRIVE" />
      <node concept="3r5wd7" id="1TXM2wdK99t" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK99$" role="2zBDeH">
      <property role="TrG5h" value="SENSOR" />
      <node concept="3r5wd7" id="1TXM2wdK99U" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK99X" role="2zBDeH">
      <property role="TrG5h" value="STATE" />
      <node concept="3r5wd7" id="1TXM2wdK9ad" role="2zB7qv" />
    </node>
    <node concept="3IBQi5" id="1TXM2wdK990" role="3YHajr">
      <property role="TrG5h" value="&gt;&gt;Output" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK991" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="1TXM2wdK98w" role="3YHajY">
      <property role="TrG5h" value="&gt;&gt;Input" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK98x" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="1TXM2wdK9cX" role="3YHajY">
      <property role="TrG5h" value="&gt;&gt;CommandIp" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK9cY" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="1TXM2wdK97T" role="2zBDeD">
      <property role="TrG5h" value="ConveyorNumber" />
      <node concept="1QCq3_" id="1TXM2wdK99a" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK97g" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK97u" role="2zBDew">
      <property role="TrG5h" value="CNF" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK97D" role="2zBDew">
      <property role="TrG5h" value="E_State" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK972" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
  </node>
  <node concept="1N5Tt2" id="1TXM2wdK9b6">
    <property role="3GE5qa" value="enas" />
    <property role="TrG5h" value="Conveyor_S_Adp" />
    <node concept="2zBDeF" id="1TXM2wdK9b7" role="2zBDeH">
      <property role="TrG5h" value="DRIVE" />
      <node concept="3r5wd7" id="1TXM2wdK9b8" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK9b9" role="2zBDeH">
      <property role="TrG5h" value="SENSOR" />
      <node concept="3r5wd7" id="1TXM2wdK9ba" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK9bb" role="2zBDeH">
      <property role="TrG5h" value="STATE" />
      <node concept="3r5wd7" id="1TXM2wdK9bc" role="2zB7qv" />
    </node>
    <node concept="3IBQi5" id="1TXM2wdK9bd" role="3YHajr">
      <property role="TrG5h" value="&gt;&gt;Output" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK9be" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="1TXM2wdK9bf" role="3YHajY">
      <property role="TrG5h" value="&gt;&gt;Input" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK9bg" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="1TXM2wdK9bh" role="2zBDeD">
      <property role="TrG5h" value="ConveyorNumber" />
      <node concept="1QCq3_" id="1TXM2wdK9bi" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK9bj" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK9bk" role="2zBDew">
      <property role="TrG5h" value="CNF" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK9bl" role="2zBDew">
      <property role="TrG5h" value="E_State" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK9bm" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
  </node>
</model>

