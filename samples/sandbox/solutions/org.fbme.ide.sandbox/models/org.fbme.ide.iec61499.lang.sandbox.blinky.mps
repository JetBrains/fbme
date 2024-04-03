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
      <concept id="4280485643802239115" name="org.fbme.ide.st.lang.structure.EqualsExpression" flags="ng" index="2zAFu8" />
      <concept id="4280485643802239119" name="org.fbme.ide.st.lang.structure.VariableReference" flags="ng" index="2zAFuc">
        <reference id="4280485643802239120" name="declaration" index="2zAFuj" />
      </concept>
      <concept id="4280485643802239122" name="org.fbme.ide.st.lang.structure.SingedIntegerLiteral" flags="ng" index="2zAFuh">
        <property id="4280485643802239123" name="value" index="2zAFug" />
      </concept>
      <concept id="4280485643802103610" name="org.fbme.ide.st.lang.structure.BoolType" flags="ng" index="2zB9wT" />
      <concept id="3684630931968193376" name="org.fbme.ide.st.lang.structure.WStringLiteral" flags="ng" index="2RgKcJ">
        <property id="3684630931968193403" name="value" index="2RgKcO" />
      </concept>
      <concept id="4435217627499935168" name="org.fbme.ide.st.lang.structure.BinaryExpression" flags="ng" index="398zGI">
        <child id="4435217627499935199" name="right" index="398zGL" />
        <child id="4435217627499935197" name="left" index="398zGN" />
      </concept>
      <concept id="2377145822810428096" name="org.fbme.ide.st.lang.structure.IntType" flags="ng" index="3r5wd7" />
      <concept id="2377145822810436887" name="org.fbme.ide.st.lang.structure.TimeType" flags="ng" index="3r5yig" />
      <concept id="8872717756041500089" name="org.fbme.ide.st.lang.structure.StatementList" flags="ng" index="1y1qLN">
        <child id="8872717756041500466" name="statements" index="1y1qVS" />
      </concept>
      <concept id="8872717756041500654" name="org.fbme.ide.st.lang.structure.AssignmentStatement" flags="ng" index="1y1qS$">
        <child id="8872717756041500659" name="expression" index="1y1qST" />
        <child id="8872717756041500657" name="variable" index="1y1qSV" />
      </concept>
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
      <concept id="5267258938134533910" name="org.fbme.ide.iec61499.lang.structure.AdapterNetworkDeclaration" flags="ng" index="2iASse">
        <child id="7561669834935925692" name="plugBlock" index="2GP0$q" />
        <child id="7561669834935925697" name="socketBlock" index="2GP0_B" />
      </concept>
      <concept id="4638275915577578977" name="org.fbme.ide.iec61499.lang.structure.InternalSocketDeclaration" flags="ng" index="2u7yaZ" />
      <concept id="2089083396006376419" name="org.fbme.ide.iec61499.lang.structure.ExtendedAdapterTypeDeclaration" flags="ng" index="2xRpA$">
        <child id="1881408560477943873" name="rightFbNetwork" index="6HEdv" />
        <child id="926353119522521423" name="fbToPlugInterface" index="tr10e" />
        <child id="6739364709441046431" name="outputRouter" index="13zCZw" />
        <child id="6739364709441046429" name="inputRouter" index="13zCZy" />
        <child id="7837436383331437378" name="socketToFbInterface" index="3mXm6v" />
        <child id="7837436383331490786" name="leftFbNetwork" index="3mXz4Z" />
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
      <concept id="7561669834935924547" name="org.fbme.ide.iec61499.lang.structure.InternalPlugDeclaration" flags="ng" index="2GP0n_" />
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
      <concept id="3018159903918047621" name="org.fbme.ide.iec61499.lang.structure.AdapterTypeDeclaration" flags="ng" index="XJABO">
        <child id="926353119522521423" name="fbToPlugInterface" index="tr10f" />
        <child id="6739364709441046431" name="outputRouter" index="13zCZx" />
        <child id="6739364709441046429" name="inputRouter" index="13zCZz" />
        <child id="7837436383331437378" name="socketToFbInterface" index="3mXm6w" />
        <child id="7837436383331490786" name="fbNetwork" index="3mXz50" />
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
      <concept id="7837436383332404522" name="org.fbme.ide.iec61499.lang.structure.DeclarationWithInterfaceSection" flags="ng" index="3mx2vR" />
      <concept id="1439606131854030643" name="org.fbme.ide.iec61499.lang.structure.EndpointCoordinate" flags="ng" index="1qmbkl">
        <reference id="676324946732831935" name="endpoint" index="2zR1Pb" />
        <child id="1439606131854049266" name="position" index="1qmfRk" />
      </concept>
      <concept id="2377145822809847116" name="org.fbme.ide.iec61499.lang.structure.ServiceInterfaceFBTypeDeclaration" flags="ng" index="3r7Mjb" />
      <concept id="1794427914277800439" name="org.fbme.ide.iec61499.lang.structure.STAlgorithmBody" flags="ng" index="1tttXp">
        <child id="8872717756042118835" name="body" index="1y4NXT" />
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
      <concept id="3588174944504668265" name="org.fbme.ide.iec61499.lang.structure.InternalAdapterFBDeclaration" flags="ng" index="3ISU9K">
        <child id="3588174944504668271" name="position" index="3ISU9Q" />
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
        <child id="9138032318693113634" name="endpointCoordinates" index="3rj3o" />
        <child id="3589220129094132063" name="adapterConnections" index="3IAhBJ" />
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
    <node concept="3KU5ap" id="1NXU$uX8738" role="3KORhB">
      <node concept="3KU5ao" id="1NXU$uX8739" role="3KUfge">
        <ref role="3KUfjk" node="1NXU$uX85Zl" resolve="CompositeBlock1" />
        <node concept="3KU5aq" id="1NXU$uX873a" role="3KUfjq">
          <ref role="3KU5al" node="3wAsKTk6SA0" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="1NXU$uX873b" role="3KUfg8">
        <ref role="3KLd9v" node="1NXU$uX871O" resolve="composite1" />
        <node concept="3KQLYX" id="1NXU$uX873c" role="3KLd9t">
          <ref role="3KQLYW" node="3wAsKTk8JYk" resolve="Testee" />
          <ref role="3KQLYY" node="3wAsKTk8K0R" resolve="Blinky_RES" />
        </node>
      </node>
    </node>
    <node concept="3KU5ap" id="1NXU$uX872z" role="3KORhB">
      <node concept="3KU5ao" id="1NXU$uX872$" role="3KUfge">
        <ref role="3KUfjk" node="1NXU$uX85Z8" resolve="CompositeBlock" />
        <node concept="3KU5aq" id="1NXU$uX872W" role="3KUfjq">
          <ref role="3KU5al" node="3wAsKTk6SA0" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="1NXU$uX872A" role="3KUfg8">
        <ref role="3KLd9v" node="1NXU$uX8720" resolve="composite2" />
        <node concept="3KQLYX" id="1NXU$uX872B" role="3KLd9t">
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
        <node concept="3IAhBk" id="1NXU$uX872n" role="3IAhBJ">
          <node concept="3YV02_" id="1NXU$uX872p" role="2RhMKC">
            <ref role="3YV02y" node="1NXU$uX871O" resolve="composite1" />
            <ref role="3YV03s" node="27ZLyP6Y5iI" resolve="plug" />
          </node>
          <node concept="3YV9EJ" id="1NXU$uX872q" role="2RhMK_">
            <ref role="3YV9Vn" node="1NXU$uX8720" resolve="composite2" />
            <ref role="3YV9Vh" node="27ZLyP6Y5iE" resolve="socket" />
          </node>
          <node concept="bR33I" id="5steIi6yGZU" role="bPNfo" />
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
          <node concept="bR32z" id="qyB58RBTwm" role="bPNfo">
            <property role="bR32p" value="123.0" />
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
          <node concept="bR33I" id="1u6V5EwGSJB" role="bPNfo" />
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
          <node concept="bR33I" id="1u6V5EwGSJ_" role="bPNfo" />
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
          <node concept="bR73E" id="1u6V5EwGSJE" role="bPNfo">
            <property role="bR73D" value="74.0" />
            <property role="bR73n" value="57.0" />
            <property role="bR73k" value="173.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K19" role="1N5PiY">
          <property role="TrG5h" value="E_CYCLE" />
          <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
          <node concept="10YbkR" id="3IX4BsKohuZ" role="b_cXm">
            <property role="10YbkC" value="886.0" />
            <property role="10YbkE" value="3.0" />
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
            <property role="10YbkC" value="2107.0" />
            <property role="10YbkE" value="50.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="3wAsKTk8K1b" role="1N5PiY">
          <property role="TrG5h" value="E_SWITCH" />
          <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
          <node concept="10YbkR" id="3IX4BsKohv1" role="b_cXm">
            <property role="10YbkC" value="1463.0" />
            <property role="10YbkE" value="49.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="1NXU$uX871O" role="1N5PiY">
          <property role="TrG5h" value="composite1" />
          <ref role="1N5Tt0" node="27ZLyP6Y5iC" resolve="CompositeBlock" />
          <node concept="10YbkR" id="1NXU$uX871P" role="b_cXm">
            <property role="10YbkC" value="656.0" />
            <property role="10YbkE" value="826.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="1NXU$uX8720" role="1N5PiY">
          <property role="TrG5h" value="composite2" />
          <ref role="1N5Tt0" node="27ZLyP6Y5iC" resolve="CompositeBlock" />
          <node concept="10YbkR" id="1NXU$uX8721" role="b_cXm">
            <property role="10YbkC" value="1463.0" />
            <property role="10YbkE" value="823.0" />
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
          <node concept="bR32z" id="qyB58RBTwl" role="bPNfo">
            <property role="bR32p" value="59.0" />
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
          <node concept="bR32z" id="qyB58RBTwk" role="bPNfo">
            <property role="bR32p" value="240.0" />
          </node>
        </node>
        <node concept="3IAhBk" id="75ZKjllo_4b" role="3IAhBJ">
          <node concept="3YV02_" id="75ZKjllo_4d" role="2RhMKC">
            <ref role="3YV02y" node="1NXU$uX871O" resolve="composite1" />
            <ref role="3YV03s" node="5f2QmZcXPy5" resolve="plugEA" />
          </node>
          <node concept="3YV9EJ" id="75ZKjllo_4e" role="2RhMK_">
            <ref role="3YV9Vn" node="1NXU$uX8720" resolve="composite2" />
            <ref role="3YV9Vh" node="5f2QmZcXPxV" resolve="socketEA" />
          </node>
          <node concept="bR32z" id="75ZKjllo_4f" role="bPNfo">
            <property role="bR32p" value="150.0" />
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
      <node concept="3IAhBk" id="1NXU$uX85Z_" role="3IAhBJ">
        <node concept="3YV02_" id="1NXU$uX85ZB" role="2RhMKC">
          <ref role="3YV02y" node="1NXU$uX85Zl" resolve="CompositeBlock" />
          <ref role="3YV03s" node="27ZLyP6Y5iI" resolve="plug" />
        </node>
        <node concept="3YV9EJ" id="1NXU$uX85ZC" role="2RhMK_">
          <ref role="3YV9Vn" node="1NXU$uX85Z8" resolve="CompositeBlock" />
          <ref role="3YV9Vh" node="27ZLyP6Y5iE" resolve="socket" />
        </node>
        <node concept="bR32z" id="1NXU$uX85ZD" role="bPNfo">
          <property role="bR32p" value="193.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="19RKY2xImJ4" role="1N5PiV">
        <node concept="3IAhSD" id="19RKY2xImJl" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
        </node>
        <node concept="3IAvtB" id="34yqbtaiM1u" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6TzZ" resolve="E_SWITCH" />
          <ref role="1N5PlF" to="7fvu:~E_SWITCH.G" resolve="G" />
        </node>
        <node concept="bR73E" id="55$H0fDlLyM" role="bPNfo">
          <property role="bR73D" value="70.0" />
          <property role="bR73n" value="77.0" />
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
        <node concept="bR73E" id="2Jeq_AjHogz" role="bPNfo">
          <property role="bR73D" value="119.0" />
          <property role="bR73n" value="527.0" />
          <property role="bR73k" value="73.0" />
        </node>
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
        <node concept="bR32z" id="55$H0fDlLyN" role="bPNfo">
          <property role="bR32p" value="136.0" />
        </node>
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
        <node concept="bR32z" id="55$H0fDlLyL" role="bPNfo">
          <property role="bR32p" value="136.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6SA2" role="1N5PiY">
        <property role="TrG5h" value="E_CYCLE" />
        <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
        <node concept="10YbkR" id="3IX4BsKohv2" role="b_cXm">
          <property role="10YbkC" value="1213.0" />
          <property role="10YbkE" value="0.0" />
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
          <property role="10YbkC" value="646.0" />
          <property role="10YbkE" value="243.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="3wAsKTk6TzZ" role="1N5PiY">
        <property role="TrG5h" value="E_SWITCH" />
        <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
        <node concept="10YbkR" id="3IX4BsKohv4" role="b_cXm">
          <property role="10YbkC" value="128.0" />
          <property role="10YbkE" value="265.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="34yqbtaiM15" role="1N5PiQ">
        <node concept="3YB4oO" id="34yqbtaiM17" role="2RhMKC">
          <ref role="1N5Pi4" node="3wAsKTk6TzW" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:~E_SR.EO" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="34yqbtaiM18" role="2RhMK_">
          <ref role="1N5Pi4" node="3wAsKTk6SA2" resolve="E_CYCLE" />
          <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
        </node>
        <node concept="bR32z" id="2Jeq_AjHog$" role="bPNfo">
          <property role="bR32p" value="50.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1NXU$uX85Z8" role="1N5PiY">
        <property role="TrG5h" value="CompositeBlock2" />
        <ref role="1N5Tt0" node="27ZLyP6Y5iC" resolve="CompositeBlock" />
        <node concept="10YbkR" id="1NXU$uX85Za" role="b_cXm">
          <property role="10YbkC" value="1083.0" />
          <property role="10YbkE" value="976.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1NXU$uX85Zl" role="1N5PiY">
        <property role="TrG5h" value="CompositeBlock1" />
        <ref role="1N5Tt0" node="27ZLyP6Y5iC" resolve="CompositeBlock" />
        <node concept="10YbkR" id="1NXU$uX85Zn" role="b_cXm">
          <property role="10YbkC" value="216.0" />
          <property role="10YbkE" value="1093.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="XJABO" id="55$H0fDlLwW">
    <property role="TrG5h" value="Adapter" />
    <node concept="2zBDeF" id="21BXg9V1kXC" role="2zBDeD">
      <property role="TrG5h" value="A_I_Data" />
      <node concept="3r5wd7" id="1TXM2wdK6Ku" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="21BXg9V1kXA" role="2zBDey">
      <property role="TrG5h" value="A_I_Event" />
    </node>
    <node concept="2zBDeF" id="3Ofqz6FCMF$" role="2zBDeH">
      <property role="TrG5h" value="A_O_Data" />
      <node concept="2zB9wT" id="3Ofqz6FCMFz" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6K$" role="2zBDeH">
      <property role="TrG5h" value="A_O_Data2" />
      <node concept="3r5wd7" id="1TXM2wdK6KE" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="3Ofqz6FCMFA" role="2zBDew">
      <property role="TrG5h" value="A_O_Event" />
    </node>
    <node concept="2zBDeF" id="6N4aHQUc1mS" role="13zCZz">
      <property role="TrG5h" value="A" />
      <node concept="2zB9wT" id="6N4aHQUc1mW" role="2zB7qv" />
    </node>
    <node concept="3mx2vR" id="6N4aHQUg61s" role="3mXm6w">
      <property role="TrG5h" value="s" />
      <node concept="2zBDe_" id="1kzHNgmZGWm" role="2zBDey">
        <property role="TrG5h" value="SOCKET_EVENT_INPUT" />
      </node>
    </node>
    <node concept="2zBDeF" id="6N4aHQUg6di" role="13zCZx">
      <property role="TrG5h" value="b" />
      <node concept="3r5wd7" id="6N4aHQUg6dm" role="2zB7qv" />
    </node>
    <node concept="3mx2vR" id="1kzHNgmZpAa" role="tr10f">
      <node concept="2zBDe_" id="E2GZeoz$9f" role="2zBDey">
        <property role="TrG5h" value="PLUG_EVENT_INPUT" />
      </node>
    </node>
    <node concept="2iASse" id="3o0XHr62ily" role="3mXz50">
      <node concept="1qmbkl" id="E2GZeoz1Vc" role="3rj3o">
        <ref role="2zR1Pb" node="21BXg9V1kXA" resolve="I_Event" />
        <node concept="10YbkR" id="E2GZeoz1Vd" role="1qmfRk">
          <property role="10YbkC" value="70.0" />
          <property role="10YbkE" value="703.0" />
        </node>
      </node>
      <node concept="3IAhBk" id="c6I0BFv_v1" role="3IAhBJ">
        <node concept="3YV02_" id="c6I0BFv_v3" role="2RhMKC">
          <ref role="3YV02y" node="c6I0BFv_uL" resolve="Adapter_router" />
          <ref role="3YV03s" node="4zRBUUqHQz$" resolve="Adapter_plug0" />
        </node>
        <node concept="3YV9EJ" id="c6I0BFv_v4" role="2RhMK_">
          <ref role="3YV9Vn" node="c6I0BFv_ux" resolve="AdapterInternal" />
          <ref role="3YV9Vh" node="2PX9bpPSFnI" resolve="socket" />
        </node>
        <node concept="bR32z" id="dU6sbJKK1J" role="bPNfo">
          <property role="bR32p" value="239.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="c6I0BFv_ux" role="1N5PiY">
        <property role="TrG5h" value="AdapterInternal" />
        <ref role="1N5Tt0" node="2PX9bpPSFnz" resolve="AdapterInternal" />
        <node concept="10YbkR" id="c6I0BFv_uz" role="b_cXm">
          <property role="10YbkC" value="2313.0" />
          <property role="10YbkE" value="849.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="c6I0BFv_uA" role="1N5PiY">
        <property role="TrG5h" value="Adapter Internal" />
        <ref role="1N5Tt0" node="2PX9bpPSFnz" resolve="AdapterInternal" />
        <node concept="10YbkR" id="c6I0BFv_uC" role="b_cXm">
          <property role="10YbkC" value="2060.0" />
          <property role="10YbkE" value="99.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="c6I0BFv_uL" role="1N5PiY">
        <property role="TrG5h" value="Adapter_router" />
        <ref role="1N5Tt0" node="4zRBUUqHQzw" resolve="Adapter_router" />
        <node concept="10YbkR" id="c6I0BFv_uN" role="b_cXm">
          <property role="10YbkC" value="570.0" />
          <property role="10YbkE" value="959.0" />
        </node>
      </node>
      <node concept="3IAhBk" id="c6I0BFv_ve" role="3IAhBJ">
        <node concept="3YV02_" id="c6I0BFv_vg" role="2RhMKC">
          <ref role="3YV02y" node="c6I0BFv_uL" resolve="Adapter_router" />
          <ref role="3YV03s" node="4zRBUUqHQz$" resolve="Adapter_plug0" />
        </node>
        <node concept="3YV9EJ" id="c6I0BFv_vh" role="2RhMK_">
          <ref role="3YV9Vn" node="c6I0BFv_ux" resolve="AdapterInternal" />
          <ref role="3YV9Vh" node="2PX9bpPSFox" resolve="plugSettings" />
        </node>
        <node concept="bR32z" id="dU6sbJKK1L" role="bPNfo">
          <property role="bR32p" value="376.0" />
        </node>
      </node>
      <node concept="3IAhBk" id="c6I0BFvWBE" role="3IAhBJ">
        <node concept="3YV02_" id="c6I0BFvWBG" role="2RhMKC">
          <ref role="3YV02y" node="c6I0BFv_uL" resolve="Adapter_router" />
          <ref role="3YV03s" node="4zRBUUqHQzB" resolve="Adapter_plug1" />
        </node>
        <node concept="3YV9EJ" id="c6I0BFvWBH" role="2RhMK_">
          <ref role="3YV9Vn" node="c6I0BFv_ux" resolve="AdapterInternal" />
          <ref role="3YV9Vh" node="6VIdscZVrbT" resolve="socketSettings" />
        </node>
        <node concept="bR32z" id="dU6sbJKK1I" role="bPNfo">
          <property role="bR32p" value="423.0" />
        </node>
      </node>
      <node concept="1qmbkl" id="E2GZeoz1Vv" role="3rj3o">
        <ref role="2zR1Pb" node="21BXg9V1kXC" resolve="I_Data" />
        <node concept="10YbkR" id="E2GZeoz1Vw" role="1qmfRk">
          <property role="10YbkC" value="196.0" />
          <property role="10YbkE" value="253.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="dU6sbJKziH" role="1N5PiQ">
        <node concept="3YB4oO" id="dU6sbJKziJ" role="2RhMKC">
          <ref role="1N5Pi4" node="c6I0BFv_uA" resolve="Adapter Internal" />
          <ref role="1N5Pi3" node="dU6sbJIZfL" resolve="b" />
        </node>
        <node concept="3Yx0EI" id="dU6sbJKziK" role="2RhMK_">
          <ref role="1N5Pi4" node="c6I0BFv_ux" resolve="AdapterInternal" />
          <ref role="1N5Pi3" node="72THbUidHBI" resolve="a" />
        </node>
        <node concept="bR73E" id="dU6sbJKK1K" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="390.0" />
          <property role="bR73k" value="130.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="dU6sbJKK2B" role="1N5PiQ">
        <node concept="3YB4oO" id="dU6sbJKK2D" role="2RhMKC">
          <ref role="1N5Pi4" node="c6I0BFv_uA" resolve="Adapter Internal" />
          <ref role="1N5Pi3" node="dU6sbJIZfL" resolve="b" />
        </node>
        <node concept="3Yx0EI" id="dU6sbJKK2E" role="2RhMK_">
          <ref role="1N5Pi4" node="c6I0BFv_ux" resolve="AdapterInternal" />
          <ref role="1N5Pi3" node="72THbUidHBI" resolve="a" />
        </node>
        <node concept="bR73E" id="dU6sbJKK2F" role="bPNfo">
          <property role="bR73D" value="133.0" />
          <property role="bR73n" value="373.0" />
          <property role="bR73k" value="133.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="55$H0fDlLxj">
    <property role="TrG5h" value="Example" />
    <node concept="3IAhBk" id="27ZLyP6Y6km" role="3IAhBJ">
      <node concept="3YV02_" id="27ZLyP6Y6ko" role="2RhMKC">
        <ref role="3YV02y" node="1lAErR$Uytj" resolve="BaseBlock1" />
        <ref role="3YV03s" node="1lAErR$UysR" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="27ZLyP6Y6kp" role="2RhMK_">
        <ref role="3YV9Vn" node="27ZLyP6Y6jL" resolve="ExtendedAdapterExample_router" />
        <ref role="3YV9Vh" node="27ZLyP6Y5bF" resolve="socket" />
      </node>
      <node concept="bR32z" id="4uMrEeW2tN9" role="bPNfo">
        <property role="bR32p" value="310.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1lAErR$Uytj" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock1" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1lAErR$Uytl" role="b_cXm">
        <property role="10YbkC" value="-183.0" />
        <property role="10YbkE" value="613.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1lAErR$Uyto" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock2" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1lAErR$Uytq" role="b_cXm">
        <property role="10YbkC" value="2083.0" />
        <property role="10YbkE" value="383.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="27ZLyP6Y5ay" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock3" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="27ZLyP6Y5a$" role="b_cXm">
        <property role="10YbkC" value="2066.0" />
        <property role="10YbkE" value="769.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="27ZLyP6Y5aF" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock4" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="27ZLyP6Y5aH" role="b_cXm">
        <property role="10YbkC" value="2060.0" />
        <property role="10YbkE" value="1096.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6MA" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock1" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1TXM2wdK6MB" role="b_cXm">
        <property role="10YbkC" value="-270.0" />
        <property role="10YbkE" value="1966.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6MC" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock2" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1TXM2wdK6MD" role="b_cXm">
        <property role="10YbkC" value="1296.0" />
        <property role="10YbkE" value="1313.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6ME" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock3" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1TXM2wdK6MF" role="b_cXm">
        <property role="10YbkC" value="1306.0" />
        <property role="10YbkE" value="1759.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6MG" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock4" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1TXM2wdK6MH" role="b_cXm">
        <property role="10YbkC" value="1260.0" />
        <property role="10YbkE" value="2146.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="27ZLyP6Y6jL" role="1N5PiY">
      <property role="TrG5h" value="ExtendedAdapterExample_router" />
      <ref role="1N5Tt0" node="27ZLyP6Y5bE" resolve="ExtendedAdapterExample_router" />
      <node concept="10YbkR" id="27ZLyP6Y6jN" role="b_cXm">
        <property role="10YbkC" value="983.0" />
        <property role="10YbkE" value="713.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="27ZLyP6Y6ky" role="3IAhBJ">
      <node concept="3YV02_" id="27ZLyP6Y6k$" role="2RhMKC">
        <ref role="3YV02y" node="27ZLyP6Y6jL" resolve="ExtendedAdapterExample_router" />
        <ref role="3YV03s" node="27ZLyP6Y5bI" resolve="plug_0" />
      </node>
      <node concept="3YV9EJ" id="27ZLyP6Y6k_" role="2RhMK_">
        <ref role="3YV9Vn" node="1lAErR$Uyto" resolve="BaseBlock2" />
        <ref role="3YV9Vh" node="1lAErR$UysL" resolve="socket" />
      </node>
      <node concept="bR32z" id="p4_fAXOcyC" role="bPNfo">
        <property role="bR32p" value="143.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="27ZLyP6Y6kK" role="3IAhBJ">
      <node concept="3YV02_" id="27ZLyP6Y6kM" role="2RhMKC">
        <ref role="3YV02y" node="27ZLyP6Y6jL" resolve="ExtendedAdapterExample_router" />
        <ref role="3YV03s" node="27ZLyP6Y5bL" resolve="plug_1" />
      </node>
      <node concept="3YV9EJ" id="27ZLyP6Y6kN" role="2RhMK_">
        <ref role="3YV9Vn" node="27ZLyP6Y5ay" resolve="BaseBlock3" />
        <ref role="3YV9Vh" node="1lAErR$UysL" resolve="socket" />
      </node>
      <node concept="bR32z" id="p4_fAXOcyt" role="bPNfo">
        <property role="bR32p" value="280.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="27ZLyP6Y6l2" role="3IAhBJ">
      <node concept="3YV02_" id="27ZLyP6Y6l4" role="2RhMKC">
        <ref role="3YV02y" node="27ZLyP6Y6jL" resolve="ExtendedAdapterExample_router" />
        <ref role="3YV03s" node="27ZLyP6Y5bO" resolve="plug_2" />
      </node>
      <node concept="3YV9EJ" id="27ZLyP6Y6l5" role="2RhMK_">
        <ref role="3YV9Vn" node="27ZLyP6Y5aF" resolve="BaseBlock4" />
        <ref role="3YV9Vh" node="1lAErR$UysL" resolve="socket" />
      </node>
      <node concept="bR32z" id="p4_fAXOcyq" role="bPNfo">
        <property role="bR32p" value="100.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="43a7K48E579" role="1N5PiY">
      <property role="TrG5h" value="InternalFB_EA2" />
      <ref role="1N5Tt0" node="43a7K48E4Yq" resolve="InternalFB_EA2" />
      <node concept="10YbkR" id="43a7K48E578" role="b_cXm">
        <property role="10YbkC" value="-170.0" />
        <property role="10YbkE" value="1436.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="43a7K48E57a" role="3IAhBJ">
      <node concept="3YV02_" id="43a7K48E57c" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK6MA" resolve="BaseBlock1" />
        <ref role="3YV03s" node="56cWBwOlRRJ" resolve="plugEA" />
      </node>
      <node concept="3YV9EJ" id="43a7K48E57d" role="2RhMK_">
        <ref role="3YV9Vn" node="43a7K48E579" resolve="InternalFB_EA2" />
        <ref role="3YV9Vh" node="43a7K48E4Yu" resolve="socket" />
      </node>
      <node concept="bR73E" id="43a7K48E581" role="bPNfo">
        <property role="bR73D" value="134.0" />
        <property role="bR73n" value="-407.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="43a7K48E57f" role="1N5PiY">
      <property role="TrG5h" value="EA2_3_router" />
      <ref role="1N5Tt0" node="43a7K48E4Yw" resolve="EA2_3_router" />
      <node concept="10YbkR" id="43a7K48E57e" role="b_cXm">
        <property role="10YbkC" value="533.0" />
        <property role="10YbkE" value="1390.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="43a7K48E57g" role="3IAhBJ">
      <node concept="3YV02_" id="43a7K48E57i" role="2RhMKC">
        <ref role="3YV02y" node="43a7K48E579" resolve="InternalFB_EA2" />
        <ref role="3YV03s" node="43a7K48E4Yv" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="43a7K48E57j" role="2RhMK_">
        <ref role="3YV9Vn" node="43a7K48E57f" resolve="EA2_3_router" />
        <ref role="3YV9Vh" node="43a7K48E4Yx" resolve="socket" />
      </node>
      <node concept="bR32z" id="43a7K48E582" role="bPNfo">
        <property role="bR32p" value="150.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="43a7K48E57k" role="3IAhBJ">
      <node concept="3YV02_" id="43a7K48E57m" role="2RhMKC">
        <ref role="3YV02y" node="43a7K48E57f" resolve="EA2_3_router" />
        <ref role="3YV03s" node="43a7K48E4Y$" resolve="plug_0" />
      </node>
      <node concept="3YV9EJ" id="43a7K48E57n" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK6MC" resolve="BaseBlock2" />
        <ref role="3YV9Vh" node="56cWBwOlRR_" resolve="socketEA" />
      </node>
      <node concept="bR32z" id="43a7K48E57P" role="bPNfo">
        <property role="bR32p" value="167.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="43a7K48E57o" role="3IAhBJ">
      <node concept="3YV02_" id="43a7K48E57q" role="2RhMKC">
        <ref role="3YV02y" node="43a7K48E57f" resolve="EA2_3_router" />
        <ref role="3YV03s" node="43a7K48E4YB" resolve="plug_1" />
      </node>
      <node concept="3YV9EJ" id="43a7K48E57r" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK6ME" resolve="BaseBlock3" />
        <ref role="3YV9Vh" node="56cWBwOlRR_" resolve="socketEA" />
      </node>
      <node concept="bR32z" id="43a7K48E57Q" role="bPNfo">
        <property role="bR32p" value="170.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="43a7K48E57s" role="3IAhBJ">
      <node concept="3YV02_" id="43a7K48E57u" role="2RhMKC">
        <ref role="3YV02y" node="43a7K48E57f" resolve="EA2_3_router" />
        <ref role="3YV03s" node="43a7K48E4YE" resolve="plug_2" />
      </node>
      <node concept="3YV9EJ" id="43a7K48E57v" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK6MG" resolve="BaseBlock4" />
        <ref role="3YV9Vh" node="56cWBwOlRR_" resolve="socketEA" />
      </node>
      <node concept="bR32z" id="43a7K48E57S" role="bPNfo">
        <property role="bR32p" value="150.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="55$H0fDlLyn">
    <property role="TrG5h" value="Left" />
    <node concept="1N5Tqi" id="55$H0fDlLzb" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLzd" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLz3" resolve="left_logic" />
        <ref role="1N5Pi3" node="55$H0fDlLy$" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLze" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLyo" resolve="plug" />
        <ref role="1N5Pi3" node="3Ofqz6FCMFA" resolve="O_Event" />
      </node>
      <node concept="bR32z" id="55$H0fDlLTD" role="bPNfo">
        <property role="bR32p" value="323.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="55$H0fDlLyo" role="3YHajr">
      <property role="TrG5h" value="plug" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlLyp" role="2oiNrz">
        <property role="10YbkC" value="1559.0" />
        <property role="10YbkE" value="516.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="2PX9bpPSFqn" role="3YHajr">
      <property role="TrG5h" value="additionalPlug" />
      <ref role="3IBQi8" node="6VIdscZVr9H" resolve="AdditionalAdapterParams" />
      <node concept="10YbkR" id="2PX9bpPSFqo" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLz3" role="1N5PiY">
      <property role="TrG5h" value="left_logic" />
      <ref role="1N5Tt0" node="55$H0fDlLyx" resolve="Logic" />
      <node concept="10YbkR" id="55$H0fDlLz4" role="b_cXm">
        <property role="10YbkC" value="433.0" />
        <property role="10YbkE" value="516.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLzn" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLzp" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLyo" resolve="plug" />
        <ref role="1N5Pi3" node="21BXg9V1kXA" resolve="I_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLzq" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLz3" resolve="left_logic" />
        <ref role="1N5Pi3" node="55$H0fDlLyy" resolve="I_Event" />
      </node>
      <node concept="bR73E" id="55$H0fDlLTE" role="bPNfo">
        <property role="bR73D" value="133.0" />
        <property role="bR73n" value="-104.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="55$H0fDlLys">
    <property role="TrG5h" value="Right" />
    <node concept="3IBQi5" id="6VIdscZVrcn" role="3YHajr">
      <property role="TrG5h" value="additionalSocket" />
      <ref role="3IBQi8" node="6VIdscZVr9H" resolve="AdditionalAdapterParams" />
      <node concept="10YbkR" id="6VIdscZVrco" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLzI" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLzK" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLzA" resolve="right_logic" />
        <ref role="1N5Pi3" node="55$H0fDlLy$" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLzL" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLyt" resolve="socket" />
        <ref role="1N5Pi3" node="21BXg9V1kXA" resolve="I_Event" />
      </node>
      <node concept="bR32z" id="55$H0fDlLzM" role="bPNfo">
        <property role="bR32p" value="293.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="55$H0fDlLyt" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlLyu" role="2oiVCh">
        <property role="10YbkC" value="1390.0" />
        <property role="10YbkE" value="610.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLzA" role="1N5PiY">
      <property role="TrG5h" value="right_logic" />
      <ref role="1N5Tt0" node="55$H0fDlLyx" resolve="Logic" />
      <node concept="10YbkR" id="55$H0fDlLzB" role="b_cXm">
        <property role="10YbkC" value="323.0" />
        <property role="10YbkE" value="673.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLzS" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLzU" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLyt" resolve="socket" />
        <ref role="1N5Pi3" node="3Ofqz6FCMFA" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLzV" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLzA" resolve="right_logic" />
        <ref role="1N5Pi3" node="55$H0fDlLyy" resolve="I_Event" />
      </node>
      <node concept="bR73E" id="55$H0fDlL$6" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-174.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="55$H0fDlLyx">
    <property role="TrG5h" value="Logic" />
    <node concept="2zBDe_" id="55$H0fDlLy$" role="2zBDew">
      <property role="TrG5h" value="O_Event" />
    </node>
    <node concept="2zBDe_" id="55$H0fDlLyy" role="2zBDey">
      <property role="TrG5h" value="I_Event" />
    </node>
  </node>
  <node concept="1N5Tt2" id="55$H0fDlL$8">
    <property role="TrG5h" value="AdpterInternal" />
    <node concept="1qmbkl" id="6fYBShkt6EO" role="3rj3o">
      <ref role="2zR1Pb" node="6fYBShkt6EK" resolve="A" />
      <node concept="10YbkR" id="6fYBShkt6EP" role="1qmfRk">
        <property role="10YbkC" value="90.0" />
        <property role="10YbkE" value="333.0" />
      </node>
    </node>
    <node concept="2zBDe_" id="6fYBShkt6EK" role="2zBDey">
      <property role="TrG5h" value="A" />
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLEE" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLEG" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlL$9" resolve="plug" />
        <ref role="1N5Pi3" node="55$H0fDlLBS" resolve="I_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLEH" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlL$o" resolve="socket" />
        <ref role="1N5Pi3" node="55$H0fDlL$U" resolve="I_Event" />
      </node>
      <node concept="bR73E" id="3gii10pfObi" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-173.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlL$9" role="1N5PiY">
      <property role="TrG5h" value="plug" />
      <ref role="1N5Tt0" node="55$H0fDlL$g" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlL$a" role="b_cXm">
        <property role="10YbkC" value="1440.0" />
        <property role="10YbkE" value="803.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlL$o" role="1N5PiY">
      <property role="TrG5h" value="socket" />
      <ref role="1N5Tt0" node="55$H0fDlL$h" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlL$p" role="b_cXm">
        <property role="10YbkC" value="546.0" />
        <property role="10YbkE" value="799.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLEO" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLEQ" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlL$o" resolve="socket" />
        <ref role="1N5Pi3" node="55$H0fDlL$P" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLER" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlL$9" resolve="plug" />
        <ref role="1N5Pi3" node="55$H0fDlL$G" resolve="O_Event" />
      </node>
      <node concept="bR32z" id="3gii10pfObl" role="bPNfo">
        <property role="bR32p" value="417.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="55$H0fDlLYU" role="1N5PiV">
      <node concept="3IAhSD" id="55$H0fDlLYW" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlL$o" resolve="socket" />
        <ref role="1N5PlF" node="55$H0fDlLYr" resolve="O_Data" />
      </node>
      <node concept="3IAvtB" id="55$H0fDlLYX" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlL$9" resolve="plug" />
        <ref role="1N5PlF" node="55$H0fDlLYk" resolve="O_Data" />
      </node>
      <node concept="bR32z" id="3gii10pfObk" role="bPNfo">
        <property role="bR32p" value="417.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="55$H0fDlM0h" role="1N5PiV">
      <node concept="3IAhSD" id="55$H0fDlM0j" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlL$9" resolve="plug" />
        <ref role="1N5PlF" node="55$H0fDlLXi" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="55$H0fDlM0k" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlL$o" resolve="socket" />
        <ref role="1N5PlF" node="55$H0fDlLXZ" resolve="I_Data" />
      </node>
      <node concept="bR73E" id="3gii10pfObj" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="167.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="55$H0fDlL$g">
    <property role="TrG5h" value="Adapter" />
    <node concept="1qmbkl" id="3hobwpFZ3gH" role="3rj3o">
      <ref role="2zR1Pb" node="55$H0fDlLYk" resolve="O_Data" />
      <node concept="10YbkR" id="3hobwpFZ3gI" role="1qmfRk">
        <property role="10YbkC" value="893.0" />
        <property role="10YbkE" value="429.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="55$H0fDlLYk" role="2zBDeD">
      <property role="TrG5h" value="O_Data" />
      <node concept="2zB9wT" id="55$H0fDlLYo" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="55$H0fDlLXi" role="2zBDeH">
      <property role="TrG5h" value="I_Data" />
      <node concept="2zB9wT" id="55$H0fDlLXI" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="55$H0fDlLBS" role="2zBDew">
      <property role="TrG5h" value="I_Event" />
      <node concept="2zBDeU" id="55$H0fDlM03" role="2zBDeW">
        <ref role="2zBDeT" node="55$H0fDlLXi" resolve="I_Data" />
      </node>
    </node>
    <node concept="2zBDe_" id="55$H0fDlL$G" role="2zBDey">
      <property role="TrG5h" value="O_Event" />
      <node concept="2zBDeU" id="55$H0fDlLZL" role="2zBDeW">
        <ref role="2zBDeT" node="55$H0fDlLYk" resolve="O_Data" />
      </node>
    </node>
    <node concept="1qmbkl" id="3hobwpFZ3gY" role="3rj3o">
      <ref role="2zR1Pb" node="55$H0fDlL$G" resolve="O_Event" />
      <node concept="10YbkR" id="3hobwpFZ3gZ" role="1qmfRk">
        <property role="10YbkC" value="226.0" />
        <property role="10YbkE" value="399.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="55$H0fDlL$h">
    <property role="TrG5h" value="Adapter" />
    <node concept="2zBDeF" id="55$H0fDlLYr" role="2zBDeH">
      <property role="TrG5h" value="O_Data1" />
      <node concept="2zB9wT" id="55$H0fDlLYv" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6Jq" role="2zBDeH">
      <property role="TrG5h" value="O_Data2" />
      <node concept="3r5wd7" id="1TXM2wdK6Jz" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="55$H0fDlLXZ" role="2zBDeD">
      <property role="TrG5h" value="I_Data" />
      <node concept="3r5wd7" id="1TXM2wdK6Jn" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="55$H0fDlL$U" role="2zBDey">
      <property role="TrG5h" value="I_Event" />
    </node>
    <node concept="2zBDe_" id="55$H0fDlL$P" role="2zBDew">
      <property role="TrG5h" value="O_Event" />
    </node>
  </node>
  <node concept="1N5Tt2" id="55$H0fDlL_s">
    <property role="TrG5h" value="ExtendedAdapterInternal" />
    <node concept="1N5Tt1" id="55$H0fDlL_A" role="1N5PiY">
      <property role="TrG5h" value="plug" />
      <ref role="1N5Tt0" node="55$H0fDlL$g" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlL_B" role="b_cXm">
        <property role="10YbkC" value="1713.0" />
        <property role="10YbkE" value="643.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlL_L" role="1N5PiY">
      <property role="TrG5h" value="logic1" />
      <ref role="1N5Tt0" node="55$H0fDlLyx" resolve="Logic" />
      <node concept="10YbkR" id="55$H0fDlL_M" role="b_cXm">
        <property role="10YbkC" value="1400.0" />
        <property role="10YbkE" value="1080.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLA3" role="1N5PiY">
      <property role="TrG5h" value="logic2" />
      <ref role="1N5Tt0" node="55$H0fDlLyx" resolve="Logic" />
      <node concept="10YbkR" id="55$H0fDlLA4" role="b_cXm">
        <property role="10YbkC" value="963.0" />
        <property role="10YbkE" value="636.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLGB" role="1N5PiY">
      <property role="TrG5h" value="logic3" />
      <ref role="1N5Tt0" node="55$H0fDlLyx" resolve="Logic" />
      <node concept="10YbkR" id="55$H0fDlLGC" role="b_cXm">
        <property role="10YbkC" value="380.0" />
        <property role="10YbkE" value="1080.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlL_t" role="1N5PiY">
      <property role="TrG5h" value="socket" />
      <ref role="1N5Tt0" node="55$H0fDlL$h" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlL_u" role="b_cXm">
        <property role="10YbkC" value="219.0" />
        <property role="10YbkE" value="630.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLBb" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLBd" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLA3" resolve="logic2" />
        <ref role="1N5Pi3" node="55$H0fDlLy$" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLBe" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlL_A" resolve="plug" />
        <ref role="1N5Pi3" node="55$H0fDlL$G" resolve="I_event" />
      </node>
      <node concept="bR32z" id="3gii10pfOf8" role="bPNfo">
        <property role="bR32p" value="127.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLD0" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLD2" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlL_A" resolve="plug" />
        <ref role="1N5Pi3" node="55$H0fDlLBS" resolve="I_event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLD3" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlL_L" resolve="logic1" />
        <ref role="1N5Pi3" node="55$H0fDlLyy" resolve="I_Event" />
      </node>
      <node concept="bR73E" id="3gii10pfOf0" role="bPNfo">
        <property role="bR73D" value="120.0" />
        <property role="bR73n" value="333.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLDw" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLDy" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlL_t" resolve="socket" />
        <ref role="1N5Pi3" node="55$H0fDlL$P" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLDz" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLA3" resolve="logic2" />
        <ref role="1N5Pi3" node="55$H0fDlLyy" resolve="I_Event" />
      </node>
      <node concept="bR32z" id="3gii10pfOf9" role="bPNfo">
        <property role="bR32p" value="266.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLGX" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLGZ" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlL_L" resolve="logic1" />
        <ref role="1N5Pi3" node="55$H0fDlLy$" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLH0" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLGB" resolve="logic3" />
        <ref role="1N5Pi3" node="55$H0fDlLyy" resolve="I_Event" />
      </node>
      <node concept="bR73E" id="3gii10pfOf2" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="160.0" />
        <property role="bR73k" value="134.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLHF" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLHH" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLGB" resolve="logic3" />
        <ref role="1N5Pi3" node="55$H0fDlLy$" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLHI" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlL_t" resolve="socket" />
        <ref role="1N5Pi3" node="55$H0fDlL$U" resolve="I_Event" />
      </node>
      <node concept="bR73E" id="3gii10pfOf6" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-83.0" />
        <property role="bR73k" value="123.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="55$H0fDlLJf">
    <property role="TrG5h" value="MultiplePlugsAdapterInternal" />
    <node concept="1N5Tqi" id="55$H0fDlLKo" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLKq" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLJg" resolve="plug" />
        <ref role="1N5Pi3" node="55$H0fDlLBS" resolve="I_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLKr" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLK0" resolve="logic" />
        <ref role="1N5Pi3" node="55$H0fDlLyy" resolve="I_Event" />
      </node>
      <node concept="bR32z" id="55$H0fDlM9d" role="bPNfo">
        <property role="bR32p" value="124.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLJg" role="1N5PiY">
      <property role="TrG5h" value="plug" />
      <ref role="1N5Tt0" node="55$H0fDlL$g" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlLJh" role="b_cXm">
        <property role="10YbkC" value="83.0" />
        <property role="10YbkE" value="730.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLJC" role="1N5PiY">
      <property role="TrG5h" value="socket" />
      <ref role="1N5Tt0" node="55$H0fDlL$h" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlLJD" role="b_cXm">
        <property role="10YbkC" value="2293.0" />
        <property role="10YbkE" value="343.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLJS" role="1N5PiY">
      <property role="TrG5h" value="socket2" />
      <ref role="1N5Tt0" node="55$H0fDlL$h" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlLJT" role="b_cXm">
        <property role="10YbkC" value="2503.0" />
        <property role="10YbkE" value="760.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLM8" role="1N5PiY">
      <property role="TrG5h" value="socket3" />
      <ref role="1N5Tt0" node="55$H0fDlL$h" resolve="Adapter" />
      <node concept="10YbkR" id="55$H0fDlLM9" role="b_cXm">
        <property role="10YbkC" value="2593.0" />
        <property role="10YbkE" value="1596.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLK0" role="1N5PiY">
      <property role="TrG5h" value="logic" />
      <ref role="1N5Tt0" node="55$H0fDlLyx" resolve="Logic" />
      <node concept="10YbkR" id="55$H0fDlLK1" role="b_cXm">
        <property role="10YbkC" value="823.0" />
        <property role="10YbkE" value="730.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="55$H0fDlLOd" role="1N5PiY">
      <property role="TrG5h" value="selector" />
      <ref role="1N5Tt0" node="55$H0fDlLNz" resolve="SocketSelector" />
      <node concept="10YbkR" id="55$H0fDlLOe" role="b_cXm">
        <property role="10YbkC" value="1573.0" />
        <property role="10YbkE" value="730.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLLg" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLLi" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLJS" resolve="socket2" />
        <ref role="1N5Pi3" node="55$H0fDlL$P" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLLj" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLJg" resolve="plug" />
        <ref role="1N5Pi3" node="55$H0fDlL$G" resolve="O_Event" />
      </node>
      <node concept="bR73E" id="3gii10pfObv" role="bPNfo">
        <property role="bR73D" value="127.0" />
        <property role="bR73n" value="500.0" />
        <property role="bR73k" value="102.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLLC" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLLE" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLJC" resolve="socket" />
        <ref role="1N5Pi3" node="55$H0fDlL$P" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLLF" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLJg" resolve="plug" />
        <ref role="1N5Pi3" node="55$H0fDlL$G" resolve="O_Event" />
      </node>
      <node concept="bR73E" id="3gii10pfObM" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-203.0" />
        <property role="bR73k" value="109.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLN1" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLN3" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLM8" resolve="socket3" />
        <ref role="1N5Pi3" node="55$H0fDlL$P" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLN4" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLJg" resolve="plug" />
        <ref role="1N5Pi3" node="55$H0fDlL$G" resolve="O_Event" />
      </node>
      <node concept="bR73E" id="55$H0fDlM9I" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="243.0" />
        <property role="bR73k" value="109.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLPt" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLPv" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLK0" resolve="logic" />
        <ref role="1N5Pi3" node="55$H0fDlLy$" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLPw" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLOd" resolve="selector" />
        <ref role="1N5Pi3" node="55$H0fDlLNN" resolve="I_Event" />
      </node>
      <node concept="bR33I" id="3K0KekfXdEq" role="bPNfo" />
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLQ5" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLQ7" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLOd" resolve="selector" />
        <ref role="1N5Pi3" node="55$H0fDlLNP" resolve="O1_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLQ8" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLJC" resolve="socket" />
        <ref role="1N5Pi3" node="55$H0fDlL$U" resolve="I_Event" />
      </node>
      <node concept="bR73E" id="3gii10pfObL" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-160.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLQM" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLQO" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLOd" resolve="selector" />
        <ref role="1N5Pi3" node="55$H0fDlLNR" resolve="O2_Event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLQP" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLJS" resolve="socket2" />
        <ref role="1N5Pi3" node="55$H0fDlL$U" resolve="I_Event" />
      </node>
      <node concept="bR32z" id="3gii10pfObw" role="bPNfo">
        <property role="bR32p" value="206.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="55$H0fDlLRq" role="1N5PiQ">
      <node concept="3YB4oO" id="55$H0fDlLRs" role="2RhMKC">
        <ref role="1N5Pi4" node="55$H0fDlLOd" resolve="selector" />
        <ref role="1N5Pi3" node="55$H0fDlLO9" resolve="O3_event" />
      </node>
      <node concept="3Yx0EI" id="55$H0fDlLRt" role="2RhMK_">
        <ref role="1N5Pi4" node="55$H0fDlLM8" resolve="socket3" />
        <ref role="1N5Pi3" node="55$H0fDlL$U" resolve="I_Event" />
      </node>
      <node concept="bR32z" id="3K0KekfXdEn" role="bPNfo">
        <property role="bR32p" value="243.0" />
      </node>
    </node>
  </node>
  <node concept="3r7Mjb" id="55$H0fDlLNz">
    <property role="TrG5h" value="SocketSelector" />
    <node concept="2zBDe_" id="55$H0fDlLNP" role="2zBDew">
      <property role="TrG5h" value="O1_Event" />
    </node>
    <node concept="2zBDe_" id="55$H0fDlLNR" role="2zBDew">
      <property role="TrG5h" value="O2_Event" />
    </node>
    <node concept="2zBDe_" id="55$H0fDlLO9" role="2zBDew">
      <property role="TrG5h" value="O3_event" />
    </node>
    <node concept="2zBDe_" id="55$H0fDlLNN" role="2zBDey">
      <property role="TrG5h" value="I_Event" />
    </node>
  </node>
  <node concept="2zBDf2" id="2$IUnXCeHyV">
    <property role="TrG5h" value="TestBasicBlock" />
    <node concept="2zBDeF" id="2$IUnXCeHzo" role="2zBDeH">
      <property role="TrG5h" value="D_O" />
      <node concept="3r5wd7" id="2$IUnXCeHzs" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="2$IUnXCeHzh" role="2zBDeD">
      <property role="TrG5h" value="D_I" />
      <node concept="3r5wd7" id="2$IUnXCeHzl" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="2$IUnXCeHz2" role="2zBDew">
      <property role="TrG5h" value="O" />
    </node>
    <node concept="2zBDe_" id="2$IUnXCeHz0" role="2zBDey">
      <property role="TrG5h" value="I" />
    </node>
    <node concept="2zAPAk" id="2$IUnXCeHyW" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="2zAPAr" id="2$IUnXCeHzf" role="2zAPBK">
        <node concept="3YHrnl" id="2$IUnXCeHzg" role="2NbhEN">
          <ref role="3Yz8TM" node="2$IUnXCeHz2" resolve="O" />
        </node>
      </node>
      <node concept="10YbkR" id="2$IUnXCeHyX" role="2WOQdS">
        <property role="10YbkC" value="680.0" />
        <property role="10YbkE" value="479.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="2$IUnXCeHz9" role="2zAPwY">
      <property role="TrG5h" value="MY_STATE" />
      <node concept="10YbkR" id="2$IUnXCeHza" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="779.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="4zRBUUqHQzw">
    <property role="TrG5h" value="Adapter_router" />
    <node concept="1N5Tq9" id="4zRBUUqHQ_n" role="1N5PiV">
      <node concept="3IAhSD" id="4zRBUUqHQ_p" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzx" resolve="Adapter_socket" />
        <ref role="1N5PlF" node="3Ofqz6FCMF$" resolve="O_Data" />
      </node>
      <node concept="3IAvtB" id="4zRBUUqHQ_q" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQzF" resolve="Adapter_internalLeftSwitch" />
        <ref role="1N5PlF" node="4zRBUUqHQ_4" resolve="O_Data" />
      </node>
      <node concept="bR32z" id="6N4aHQUckGw" role="bPNfo">
        <property role="bR32p" value="200.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4zRBUUqHQ_b" role="1N5PiQ">
      <node concept="3YB4oO" id="4zRBUUqHQ_d" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzx" resolve="Adapter_socket" />
        <ref role="1N5Pi3" node="3Ofqz6FCMFA" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="4zRBUUqHQ_e" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQzF" resolve="Adapter_internalLeftSwitch" />
        <ref role="1N5Pi3" node="4zRBUUqHQ_5" resolve="O_Event" />
      </node>
      <node concept="bR32z" id="6N4aHQUckGz" role="bPNfo">
        <property role="bR32p" value="200.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="4zRBUUqHQzF" role="1N5PiY">
      <property role="TrG5h" value="Adapter_internalLeftSwitch" />
      <ref role="1N5Tt0" node="4zRBUUqHQzE" resolve="Adapter_internalLeftSwitch" />
      <node concept="10YbkR" id="4zRBUUqHQzH" role="b_cXm">
        <property role="10YbkC" value="799.0" />
        <property role="10YbkE" value="1130.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="4zRBUUqHQz$" role="3YHajr">
      <property role="TrG5h" value="Adapter_plug0" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="4zRBUUqHQzA" role="2oiNrz">
        <property role="10YbkC" value="1959.0" />
        <property role="10YbkE" value="906.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="4zRBUUqHQzx" role="3YHajY">
      <property role="TrG5h" value="Adapter_socket" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="4zRBUUqHQzz" role="2oiVCh">
        <property role="10YbkC" value="-80.0" />
        <property role="10YbkE" value="1113.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="4zRBUUqHQzB" role="3YHajr">
      <property role="TrG5h" value="Adapter_plug1" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="4zRBUUqHQzD" role="2oiNrz">
        <property role="10YbkC" value="1989.0" />
        <property role="10YbkE" value="1749.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4zRBUUqHQ_f" role="1N5PiQ">
      <node concept="3YB4oO" id="4zRBUUqHQ_h" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzF" resolve="Adapter_internalLeftSwitch" />
        <ref role="1N5Pi3" node="4zRBUUqHQ_3" resolve="O_Event_0" />
      </node>
      <node concept="3Yx0EI" id="4zRBUUqHQ_i" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQz$" resolve="Adapter_plug0" />
        <ref role="1N5Pi3" node="3Ofqz6FCMFA" resolve="O_Event" />
      </node>
      <node concept="bR32z" id="6N4aHQUckGf" role="bPNfo">
        <property role="bR32p" value="136.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4zRBUUqHQ_j" role="1N5PiQ">
      <node concept="3YB4oO" id="4zRBUUqHQ_l" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzF" resolve="Adapter_internalLeftSwitch" />
        <ref role="1N5Pi3" node="4zRBUUqHQ_8" resolve="O_Event_1" />
      </node>
      <node concept="3Yx0EI" id="4zRBUUqHQ_m" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQzB" resolve="Adapter_plug1" />
        <ref role="1N5Pi3" node="3Ofqz6FCMFA" resolve="O_Event" />
      </node>
      <node concept="bR32z" id="6N4aHQUckGd" role="bPNfo">
        <property role="bR32p" value="290.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4zRBUUqHQ_r" role="1N5PiV">
      <node concept="3IAhSD" id="4zRBUUqHQ_t" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzx" resolve="Adapter_socket" />
        <ref role="1N5PlF" node="3jF0lW0nRoJ" resolve="O_Data2" />
      </node>
      <node concept="3IAvtB" id="4zRBUUqHQ_u" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQzF" resolve="Adapter_internalLeftSwitch" />
        <ref role="1N5PlF" node="4zRBUUqHQ_6" resolve="O_Data2" />
      </node>
      <node concept="bR32z" id="6N4aHQUckG$" role="bPNfo">
        <property role="bR32p" value="200.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4zRBUUqHQ_v" role="1N5PiV">
      <node concept="3IAhSD" id="4zRBUUqHQ_x" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzF" resolve="Adapter_internalLeftSwitch" />
        <ref role="1N5PlF" node="4zRBUUqHQ_2" resolve="O_Data_0" />
      </node>
      <node concept="3IAvtB" id="4zRBUUqHQ_y" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQz$" resolve="Adapter_plug0" />
        <ref role="1N5PlF" node="3Ofqz6FCMF$" resolve="O_Data" />
      </node>
      <node concept="bR32z" id="6N4aHQUckGj" role="bPNfo">
        <property role="bR32p" value="326.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4zRBUUqHQ_z" role="1N5PiV">
      <node concept="3IAhSD" id="4zRBUUqHQ__" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzF" resolve="Adapter_internalLeftSwitch" />
        <ref role="1N5PlF" node="4zRBUUqHQ_7" resolve="O_Data2_0" />
      </node>
      <node concept="3IAvtB" id="4zRBUUqHQ_A" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQz$" resolve="Adapter_plug0" />
        <ref role="1N5PlF" node="3jF0lW0nRoJ" resolve="O_Data2" />
      </node>
      <node concept="bR32z" id="6N4aHQUckGe" role="bPNfo">
        <property role="bR32p" value="366.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4zRBUUqHQ_B" role="1N5PiV">
      <node concept="3IAhSD" id="4zRBUUqHQ_D" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzF" resolve="Adapter_internalLeftSwitch" />
        <ref role="1N5PlF" node="4zRBUUqHQ_9" resolve="O_Data_1" />
      </node>
      <node concept="3IAvtB" id="4zRBUUqHQ_E" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQzB" resolve="Adapter_plug1" />
        <ref role="1N5PlF" node="3Ofqz6FCMF$" resolve="O_Data" />
      </node>
      <node concept="bR32z" id="6N4aHQUckGc" role="bPNfo">
        <property role="bR32p" value="240.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4zRBUUqHQ_F" role="1N5PiV">
      <node concept="3IAhSD" id="4zRBUUqHQ_H" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzF" resolve="Adapter_internalLeftSwitch" />
        <ref role="1N5PlF" node="4zRBUUqHQ_a" resolve="O_Data2_1" />
      </node>
      <node concept="3IAvtB" id="4zRBUUqHQ_I" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQzB" resolve="Adapter_plug1" />
        <ref role="1N5PlF" node="3jF0lW0nRoJ" resolve="O_Data2" />
      </node>
      <node concept="bR32z" id="6N4aHQUckGg" role="bPNfo">
        <property role="bR32p" value="210.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="4zRBUUqHQ_K" role="1N5PiY">
      <property role="TrG5h" value="Adapter_internalRightSwitch" />
      <ref role="1N5Tt0" node="4zRBUUqHQ_J" resolve="Adapter_internalRightSwitch" />
      <node concept="10YbkR" id="4zRBUUqHQ_M" role="b_cXm">
        <property role="10YbkC" value="2680.0" />
        <property role="10YbkE" value="1073.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4zRBUUqHQAM" role="1N5PiQ">
      <node concept="3YB4oO" id="4zRBUUqHQAO" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQ_K" resolve="Adapter_internalRightSwitch" />
        <ref role="1N5Pi3" node="4zRBUUqHQAJ" resolve="I_Event" />
      </node>
      <node concept="3Yx0EI" id="4zRBUUqHQAP" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQzx" resolve="Adapter_socket" />
        <ref role="1N5Pi3" node="21BXg9V1kXA" resolve="I_Event" />
      </node>
      <node concept="bR73E" id="6N4aHQUckGx" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-413.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4zRBUUqHQAQ" role="1N5PiQ">
      <node concept="3YB4oO" id="4zRBUUqHQAS" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQz$" resolve="Adapter_plug0" />
        <ref role="1N5Pi3" node="21BXg9V1kXA" resolve="I_Event" />
      </node>
      <node concept="3Yx0EI" id="4zRBUUqHQAT" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQ_K" resolve="Adapter_internalRightSwitch" />
        <ref role="1N5Pi3" node="4zRBUUqHQAH" resolve="I_Event_0" />
      </node>
      <node concept="bR73E" id="6N4aHQUckFI" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="40.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4zRBUUqHQAU" role="1N5PiQ">
      <node concept="3YB4oO" id="4zRBUUqHQAW" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzB" resolve="Adapter_plug1" />
        <ref role="1N5Pi3" node="21BXg9V1kXA" resolve="I_Event" />
      </node>
      <node concept="3Yx0EI" id="4zRBUUqHQAX" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQ_K" resolve="Adapter_internalRightSwitch" />
        <ref role="1N5Pi3" node="4zRBUUqHQAK" resolve="I_Event_1" />
      </node>
      <node concept="bR73E" id="6N4aHQUckFL" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-306.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4zRBUUqHQAY" role="1N5PiV">
      <node concept="3IAhSD" id="4zRBUUqHQB0" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQ_K" resolve="Adapter_internalRightSwitch" />
        <ref role="1N5PlF" node="4zRBUUqHQAI" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="4zRBUUqHQB1" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQzx" resolve="Adapter_socket" />
        <ref role="1N5PlF" node="21BXg9V1kXC" resolve="I_Data" />
      </node>
      <node concept="bR73E" id="6N4aHQUckGy" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-437.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4zRBUUqHQB2" role="1N5PiV">
      <node concept="3IAhSD" id="4zRBUUqHQB4" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQz$" resolve="Adapter_plug0" />
        <ref role="1N5PlF" node="21BXg9V1kXC" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="4zRBUUqHQB5" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQ_K" resolve="Adapter_internalRightSwitch" />
        <ref role="1N5PlF" node="4zRBUUqHQAG" resolve="I_Data_0" />
      </node>
      <node concept="bR73E" id="6N4aHQUckFM" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="34.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4zRBUUqHQB6" role="1N5PiV">
      <node concept="3IAhSD" id="4zRBUUqHQB8" role="2RhMKC">
        <ref role="1N5Pi4" node="4zRBUUqHQzB" resolve="Adapter_plug1" />
        <ref role="1N5PlF" node="21BXg9V1kXC" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="4zRBUUqHQB9" role="2RhMK_">
        <ref role="1N5Pi4" node="4zRBUUqHQ_K" resolve="Adapter_internalRightSwitch" />
        <ref role="1N5PlF" node="4zRBUUqHQAL" resolve="I_Data_1" />
      </node>
      <node concept="bR73E" id="6N4aHQUckFJ" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-310.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="4zRBUUqHQzE">
    <property role="TrG5h" value="Adapter_internalLeftSwitch" />
    <node concept="2zAPAq" id="4zRBUUqHQ$0" role="2zAPxA">
      <ref role="2zAPx3" node="4zRBUUqHQzR" resolve="Start" />
      <ref role="2zAPx1" node="4zRBUUqHQzU" resolve="O_Event_0_state" />
      <node concept="10YbkR" id="4zRBUUqHQ$1" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="4zRBUUqHQ$2" role="2zAZMv">
        <node concept="3YHqtX" id="4zRBUUqHQ$3" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/4399852122529802982" />
        </node>
        <node concept="2zAFu8" id="4zRBUUqHQ$4" role="2EVYSB">
          <node concept="2zAFuh" id="4zRBUUqHQ$5" role="398zGL">
            <property role="2zAFug" value="0" />
          </node>
          <node concept="2zAFuc" id="4zRBUUqHQ$6" role="398zGN">
            <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="4zRBUUqHQ$8" role="2zAPwS">
      <property role="TrG5h" value="O_Event_0_algorithm" />
      <node concept="1tttXp" id="4zRBUUqHQ$9" role="1toi31">
        <node concept="1y1qLN" id="4zRBUUqHQ$a" role="1y4NXT">
          <node concept="1y1qS$" id="4zRBUUqHQ$b" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$c" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_4" resolve="O_Data" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$d" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_4" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$e" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$f" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$g" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$h" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$i" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_2" resolve="O_Data_0" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$j" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_4" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$k" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$l" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_7" resolve="O_Data2_0" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$m" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$n" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$o" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_9" resolve="O_Data_1" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$p" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_4" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$q" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$r" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_a" resolve="O_Data2_1" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$s" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="4zRBUUqHQzR" role="2zAPwY">
      <property role="TrG5h" value="Start" />
      <node concept="10YbkR" id="4zRBUUqHQzT" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="4zRBUUqHQ_2" role="2zBDeH">
      <property role="TrG5h" value="O_Data_0" />
      <node concept="2zB9wT" id="4zRBUUqHQzL" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="4zRBUUqHQ_3" role="2zBDew">
      <property role="TrG5h" value="O_Event_0" />
      <node concept="2zBDeU" id="4zRBUUqHQzN" role="2zBDeW">
        <ref role="2zBDeT" node="4zRBUUqHQ_2" resolve="O_Data_0" />
      </node>
    </node>
    <node concept="2zBDeF" id="4zRBUUqHQ_4" role="2zBDeD">
      <property role="TrG5h" value="O_Data" />
      <node concept="2zB9wT" id="4zRBUUqHQzI" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="4zRBUUqHQ_5" role="2zBDey">
      <property role="TrG5h" value="O_Event" />
      <node concept="2zBDeU" id="4zRBUUqHQzK" role="2zBDeW">
        <ref role="2zBDeT" node="4zRBUUqHQ_4" resolve="O_Data" />
      </node>
    </node>
    <node concept="2zBDeF" id="4zRBUUqHQ_6" role="2zBDeD">
      <property role="TrG5h" value="O_Data2" />
      <node concept="3r5wd7" id="4zRBUUqHQzJ" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="4zRBUUqHQ_7" role="2zBDeH">
      <property role="TrG5h" value="O_Data2_0" />
      <node concept="3r5wd7" id="4zRBUUqHQzM" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="4zRBUUqHQ_8" role="2zBDew">
      <property role="TrG5h" value="O_Event_1" />
      <node concept="2zBDeU" id="4zRBUUqHQzQ" role="2zBDeW">
        <ref role="2zBDeT" node="4zRBUUqHQ_9" resolve="O_Data_1" />
      </node>
    </node>
    <node concept="2zBDeF" id="4zRBUUqHQ_9" role="2zBDeH">
      <property role="TrG5h" value="O_Data_1" />
      <node concept="2zB9wT" id="4zRBUUqHQzO" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="4zRBUUqHQ_a" role="2zBDeH">
      <property role="TrG5h" value="O_Data2_1" />
      <node concept="3r5wd7" id="4zRBUUqHQzP" role="2zB7qv" />
    </node>
    <node concept="2zAPAk" id="4zRBUUqHQzU" role="2zAPwY">
      <property role="TrG5h" value="O_Event_0_state" />
      <node concept="2zAPAr" id="4zRBUUqHQ$7" role="2zAPBK">
        <ref role="2zAPAu" node="4zRBUUqHQ$8" resolve="O_Event_0_algorithm" />
        <node concept="3YHrnl" id="4zRBUUqHQ$t" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/4399852122529802982" />
        </node>
      </node>
      <node concept="10YbkR" id="4zRBUUqHQzW" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="4zRBUUqHQzX" role="2zAPxA">
      <ref role="2zAPx3" node="4zRBUUqHQzU" resolve="O_Event_0_state" />
      <ref role="2zAPx1" node="4zRBUUqHQzR" resolve="Start" />
      <node concept="10YbkR" id="4zRBUUqHQzY" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="4zRBUUqHQzZ" role="2zAZMv" />
    </node>
    <node concept="2zAPAp" id="4zRBUUqHQ$G" role="2zAPwS">
      <property role="TrG5h" value="O_Event_1_algorithm" />
      <node concept="1tttXp" id="4zRBUUqHQ$H" role="1toi31">
        <node concept="1y1qLN" id="4zRBUUqHQ$I" role="1y4NXT">
          <node concept="1y1qS$" id="4zRBUUqHQ$J" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$K" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_4" resolve="O_Data" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$L" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_4" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$M" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$N" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$O" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$P" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$Q" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_2" resolve="O_Data_0" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$R" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_4" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$S" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$T" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_7" resolve="O_Data2_0" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$U" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$V" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$W" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_9" resolve="O_Data_1" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ$X" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_4" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQ$Y" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQ$Z" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQ_a" resolve="O_Data2_1" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQ_0" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="4zRBUUqHQ$u" role="2zAPwY">
      <property role="TrG5h" value="O_Event_1_state" />
      <node concept="2zAPAr" id="4zRBUUqHQ$F" role="2zAPBK">
        <ref role="2zAPAu" node="4zRBUUqHQ$G" resolve="O_Event_1_algorithm" />
        <node concept="3YHrnl" id="4zRBUUqHQ_1" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/4399852122529802982" />
        </node>
      </node>
      <node concept="10YbkR" id="4zRBUUqHQ$w" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="4zRBUUqHQ$$" role="2zAPxA">
      <ref role="2zAPx3" node="4zRBUUqHQzR" resolve="Start" />
      <ref role="2zAPx1" node="4zRBUUqHQ$u" resolve="O_Event_1_state" />
      <node concept="10YbkR" id="4zRBUUqHQ$_" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="4zRBUUqHQ$A" role="2zAZMv">
        <node concept="3YHqtX" id="4zRBUUqHQ$B" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/4399852122529802982" />
        </node>
        <node concept="2zAFu8" id="4zRBUUqHQ$C" role="2EVYSB">
          <node concept="2zAFuh" id="4zRBUUqHQ$D" role="398zGL">
            <property role="2zAFug" value="1" />
          </node>
          <node concept="2zAFuc" id="4zRBUUqHQ$E" role="398zGN">
            <ref role="2zAFuj" node="4zRBUUqHQ_6" resolve="O_Data2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="4zRBUUqHQ$x" role="2zAPxA">
      <ref role="2zAPx3" node="4zRBUUqHQ$u" resolve="O_Event_1_state" />
      <ref role="2zAPx1" node="4zRBUUqHQzR" resolve="Start" />
      <node concept="10YbkR" id="4zRBUUqHQ$y" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="4zRBUUqHQ$z" role="2zAZMv" />
    </node>
  </node>
  <node concept="2zBDf2" id="4zRBUUqHQ_J">
    <property role="TrG5h" value="Adapter_internalRightSwitch" />
    <node concept="2zAPAq" id="4zRBUUqHQA2" role="2zAPxA">
      <ref role="2zAPx3" node="4zRBUUqHQ_T" resolve="Start" />
      <ref role="2zAPx1" node="4zRBUUqHQ_W" resolve="I_Event_state" />
      <node concept="10YbkR" id="4zRBUUqHQA3" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="4zRBUUqHQA4" role="2zAZMv">
        <node concept="3YHqtX" id="4zRBUUqHQA5" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/2335104322817576806" />
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="4zRBUUqHQA7" role="2zAPwS">
      <property role="TrG5h" value="I_Event_algorithm" />
      <node concept="1tttXp" id="4zRBUUqHQA8" role="1toi31">
        <node concept="1y1qLN" id="4zRBUUqHQA9" role="1y4NXT">
          <node concept="1y1qS$" id="4zRBUUqHQAa" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQAb" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQAI" resolve="I_Data" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQAc" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQAI" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQAd" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQAe" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQAG" resolve="I_Data_0" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQAf" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQAI" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQAg" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQAh" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQAL" resolve="I_Data_1" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQAi" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQAI" resolve="I_Data" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="4zRBUUqHQ_T" role="2zAPwY">
      <property role="TrG5h" value="Start" />
      <node concept="10YbkR" id="4zRBUUqHQ_V" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="4zRBUUqHQAG" role="2zBDeD">
      <property role="TrG5h" value="I_Data_0" />
      <node concept="2zB9wT" id="4zRBUUqHQ_P" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="4zRBUUqHQAH" role="2zBDey">
      <property role="TrG5h" value="I_Event_0" />
      <node concept="2zBDeU" id="4zRBUUqHQ_Q" role="2zBDeW">
        <ref role="2zBDeT" node="4zRBUUqHQAG" resolve="I_Data_0" />
      </node>
    </node>
    <node concept="2zBDeF" id="4zRBUUqHQAI" role="2zBDeH">
      <property role="TrG5h" value="I_Data" />
      <node concept="2zB9wT" id="4zRBUUqHQ_N" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="4zRBUUqHQAJ" role="2zBDew">
      <property role="TrG5h" value="I_Event" />
      <node concept="2zBDeU" id="4zRBUUqHQ_O" role="2zBDeW">
        <ref role="2zBDeT" node="4zRBUUqHQAI" resolve="I_Data" />
      </node>
    </node>
    <node concept="2zBDe_" id="4zRBUUqHQAK" role="2zBDey">
      <property role="TrG5h" value="I_Event_1" />
      <node concept="2zBDeU" id="4zRBUUqHQ_S" role="2zBDeW">
        <ref role="2zBDeT" node="4zRBUUqHQAL" resolve="I_Data_1" />
      </node>
    </node>
    <node concept="2zBDeF" id="4zRBUUqHQAL" role="2zBDeD">
      <property role="TrG5h" value="I_Data_1" />
      <node concept="2zB9wT" id="4zRBUUqHQ_R" role="2zB7qv" />
    </node>
    <node concept="2zAPAk" id="4zRBUUqHQ_W" role="2zAPwY">
      <property role="TrG5h" value="I_Event_state" />
      <node concept="2zAPAr" id="4zRBUUqHQA6" role="2zAPBK">
        <ref role="2zAPAu" node="4zRBUUqHQA7" resolve="I_Event_algorithm" />
        <node concept="3YHrnl" id="4zRBUUqHQAj" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/2335104322817576806" />
        </node>
      </node>
      <node concept="10YbkR" id="4zRBUUqHQ_Y" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="4zRBUUqHQ_Z" role="2zAPxA">
      <ref role="2zAPx3" node="4zRBUUqHQ_W" resolve="I_Event_state" />
      <ref role="2zAPx1" node="4zRBUUqHQ_T" resolve="Start" />
      <node concept="10YbkR" id="4zRBUUqHQA0" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="4zRBUUqHQA1" role="2zAZMv" />
    </node>
    <node concept="2zAPAp" id="4zRBUUqHQAv" role="2zAPwS">
      <property role="TrG5h" value="I_Event_algorithm" />
      <node concept="1tttXp" id="4zRBUUqHQAw" role="1toi31">
        <node concept="1y1qLN" id="4zRBUUqHQAx" role="1y4NXT">
          <node concept="1y1qS$" id="4zRBUUqHQAy" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQAz" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQAI" resolve="I_Data" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQA$" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQAI" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQA_" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQAA" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQAG" resolve="I_Data_0" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQAB" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQAI" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="4zRBUUqHQAC" role="1y1qVS">
            <node concept="2zAFuc" id="4zRBUUqHQAD" role="1y1qSV">
              <ref role="2zAFuj" node="4zRBUUqHQAL" resolve="I_Data_1" />
            </node>
            <node concept="2zAFuc" id="4zRBUUqHQAE" role="1y1qST">
              <ref role="2zAFuj" node="4zRBUUqHQAI" resolve="I_Data" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="4zRBUUqHQAk" role="2zAPwY">
      <property role="TrG5h" value="I_Event_state" />
      <node concept="2zAPAr" id="4zRBUUqHQAu" role="2zAPBK">
        <ref role="2zAPAu" node="4zRBUUqHQAv" resolve="I_Event_algorithm" />
        <node concept="3YHrnl" id="4zRBUUqHQAF" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/2335104322817576806" />
        </node>
      </node>
      <node concept="10YbkR" id="4zRBUUqHQAm" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="4zRBUUqHQAq" role="2zAPxA">
      <ref role="2zAPx3" node="4zRBUUqHQ_T" resolve="Start" />
      <ref role="2zAPx1" node="4zRBUUqHQAk" resolve="I_Event_state" />
      <node concept="10YbkR" id="4zRBUUqHQAr" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="4zRBUUqHQAs" role="2zAZMv">
        <node concept="3YHqtX" id="4zRBUUqHQAt" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/2335104322817576806" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="4zRBUUqHQAn" role="2zAPxA">
      <ref role="2zAPx3" node="4zRBUUqHQAk" resolve="I_Event_state" />
      <ref role="2zAPx1" node="4zRBUUqHQ_T" resolve="Start" />
      <node concept="10YbkR" id="4zRBUUqHQAo" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="4zRBUUqHQAp" role="2zAZMv" />
    </node>
  </node>
  <node concept="1N5Tt2" id="2PX9bpPSFnz">
    <property role="TrG5h" value="AdapterInternal" />
    <node concept="2zBDe_" id="dU6sbJIZfL" role="2zBDew">
      <property role="TrG5h" value="b" />
    </node>
    <node concept="2zBDe_" id="72THbUidHBI" role="2zBDey">
      <property role="TrG5h" value="a" />
    </node>
    <node concept="1qmbkl" id="72THbUidHBj" role="3rj3o">
      <ref role="2zR1Pb" node="72THbUidHBh" resolve="A" />
      <node concept="10YbkR" id="72THbUidHBk" role="1qmfRk">
        <property role="10YbkC" value="23.0" />
        <property role="10YbkE" value="226.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="6VIdscZVrd9" role="1N5PiV">
      <node concept="3IAhSD" id="6VIdscZVrdb" role="2RhMKC">
        <ref role="1N5Pi4" node="6VIdscZVrbT" resolve="socketSettings" />
        <ref role="1N5PlF" node="6VIdscZVran" resolve="period" />
      </node>
      <node concept="3IAvtB" id="6VIdscZVrdc" role="2RhMK_">
        <ref role="1N5Pi4" node="6VIdscZVraX" resolve="RetryEcc" />
        <ref role="1N5PlF" node="6VIdscZVrbe" resolve="period" />
      </node>
      <node concept="bR32z" id="6VIdscZVrk_" role="bPNfo">
        <property role="bR32p" value="387.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="6VIdscZVrcT" role="1N5PiQ">
      <node concept="3YB4oO" id="6VIdscZVrcV" role="2RhMKC">
        <ref role="1N5Pi4" node="6VIdscZVrbT" resolve="socketSettings" />
        <ref role="1N5Pi3" node="6VIdscZVrag" resolve="Period_Event" />
      </node>
      <node concept="3Yx0EI" id="6VIdscZVrcW" role="2RhMK_">
        <ref role="1N5Pi4" node="6VIdscZVraX" resolve="RetryEcc" />
        <ref role="1N5Pi3" node="6VIdscZVrbc" resolve="Period_Event" />
      </node>
      <node concept="bR32z" id="6VIdscZVrkz" role="bPNfo">
        <property role="bR32p" value="387.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="6VIdscZVraX" role="1N5PiY">
      <property role="TrG5h" value="RetryEcc" />
      <ref role="1N5Tt0" node="6VIdscZVraU" resolve="RetryEcc" />
      <node concept="10YbkR" id="6VIdscZVraZ" role="b_cXm">
        <property role="10YbkC" value="1250.0" />
        <property role="10YbkE" value="1443.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="2PX9bpPSFol" role="3YHajr">
      <property role="TrG5h" value="plug" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="2PX9bpPSFom" role="2oiNrz">
        <property role="10YbkC" value="266.0" />
        <property role="10YbkE" value="899.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="2PX9bpPSFnI" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="2PX9bpPSFnJ" role="2oiVCh">
        <property role="10YbkC" value="2610.0" />
        <property role="10YbkE" value="933.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="2PX9bpPSFox" role="3YHajY">
      <property role="TrG5h" value="plugSettings" />
      <ref role="3Iw0dH" node="6VIdscZVr9H" resolve="AdditionalAdapterParams" />
      <node concept="10YbkR" id="2PX9bpPSFoy" role="2oiVCh">
        <property role="10YbkC" value="2473.0" />
        <property role="10YbkE" value="180.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="6VIdscZVrbT" role="3YHajY">
      <property role="TrG5h" value="socketSettings" />
      <ref role="3Iw0dH" node="6VIdscZVr9H" resolve="AdditionalAdapterParams" />
      <node concept="10YbkR" id="6VIdscZVrbU" role="2oiVCh">
        <property role="10YbkC" value="23.0" />
        <property role="10YbkE" value="1493.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="6VIdscZVrb5" role="1N5PiY">
      <property role="TrG5h" value="RetryEcc2" />
      <ref role="1N5Tt0" node="6VIdscZVrhC" resolve="RetryEcc2" />
      <node concept="10YbkR" id="6VIdscZVrb7" role="b_cXm">
        <property role="10YbkC" value="1573.0" />
        <property role="10YbkE" value="213.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="6VIdscZVrdj" role="1N5PiQ">
      <node concept="3YB4oO" id="6VIdscZVrdl" role="2RhMKC">
        <ref role="1N5Pi4" node="2PX9bpPSFox" resolve="plugSettings" />
        <ref role="1N5Pi3" node="6VIdscZVrag" resolve="Period_Event" />
      </node>
      <node concept="3Yx0EI" id="6VIdscZVrdm" role="2RhMK_">
        <ref role="1N5Pi4" node="6VIdscZVrb5" resolve="RetryEcc" />
        <ref role="1N5Pi3" node="6VIdscZVrhK" resolve="Period_Event" />
      </node>
      <node concept="bR73E" id="6VIdscZVrkq" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-87.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="6VIdscZVrdx" role="1N5PiV">
      <node concept="3IAhSD" id="6VIdscZVrdz" role="2RhMKC">
        <ref role="1N5Pi4" node="2PX9bpPSFox" resolve="plugSettings" />
        <ref role="1N5PlF" node="6VIdscZVran" resolve="period" />
      </node>
      <node concept="3IAvtB" id="6VIdscZVrd$" role="2RhMK_">
        <ref role="1N5Pi4" node="6VIdscZVrb5" resolve="RetryEcc" />
        <ref role="1N5PlF" node="6VIdscZVrhG" resolve="period" />
      </node>
      <node concept="bR73E" id="6VIdscZVrkm" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-310.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="6VIdscZVreg" role="1N5PiQ">
      <node concept="3YB4oO" id="6VIdscZVrei" role="2RhMKC">
        <ref role="1N5Pi4" node="2PX9bpPSFol" resolve="plug" />
        <ref role="1N5Pi3" node="21BXg9V1kXA" resolve="I_Event" />
      </node>
      <node concept="3Yx0EI" id="6VIdscZVrej" role="2RhMK_">
        <ref role="1N5Pi4" node="6VIdscZVraX" resolve="RetryEcc" />
        <ref role="1N5Pi3" node="6VIdscZVrdZ" resolve="I_Event" />
      </node>
      <node concept="bR32z" id="1pa$D_7z$9D" role="bPNfo">
        <property role="bR32p" value="223.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="6VIdscZVrey" role="1N5PiQ">
      <node concept="3YB4oO" id="6VIdscZVre$" role="2RhMKC">
        <ref role="1N5Pi4" node="6VIdscZVraX" resolve="RetryEcc" />
        <ref role="1N5Pi3" node="6VIdscZVre6" resolve="I_Event" />
      </node>
      <node concept="3Yx0EI" id="6VIdscZVre_" role="2RhMK_">
        <ref role="1N5Pi4" node="2PX9bpPSFnI" resolve="socket" />
        <ref role="1N5Pi3" node="21BXg9V1kXA" resolve="I_Event" />
      </node>
      <node concept="bR32z" id="1C95$foY$tB" role="bPNfo">
        <property role="bR32p" value="374.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="6VIdscZVrfK" role="1N5PiV">
      <node concept="3IAhSD" id="6VIdscZVrfM" role="2RhMKC">
        <ref role="1N5Pi4" node="2PX9bpPSFol" resolve="plug" />
        <ref role="1N5PlF" node="21BXg9V1kXC" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="6VIdscZVrfN" role="2RhMK_">
        <ref role="1N5Pi4" node="6VIdscZVraX" resolve="RetryEcc" />
        <ref role="1N5PlF" node="6VIdscZVrfr" resolve="I_Data" />
      </node>
      <node concept="bR32z" id="1pa$D_7z$9B" role="bPNfo">
        <property role="bR32p" value="229.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="6VIdscZVrg2" role="1N5PiV">
      <node concept="3IAhSD" id="6VIdscZVrg4" role="2RhMKC">
        <ref role="1N5Pi4" node="6VIdscZVraX" resolve="RetryEcc" />
        <ref role="1N5PlF" node="6VIdscZVreW" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="6VIdscZVrg5" role="2RhMK_">
        <ref role="1N5Pi4" node="2PX9bpPSFnI" resolve="socket" />
        <ref role="1N5PlF" node="21BXg9V1kXC" resolve="I_Data" />
      </node>
      <node concept="bR32z" id="1C95$foY$t_" role="bPNfo">
        <property role="bR32p" value="374.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="6VIdscZVrhW" role="1N5PiQ">
      <node concept="3YB4oO" id="6VIdscZVrhY" role="2RhMKC">
        <ref role="1N5Pi4" node="6VIdscZVrb5" resolve="RetryEcc2" />
        <ref role="1N5Pi3" node="6VIdscZVrhF" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="6VIdscZVrhZ" role="2RhMK_">
        <ref role="1N5Pi4" node="2PX9bpPSFol" resolve="plug" />
        <ref role="1N5Pi3" node="3Ofqz6FCMFA" resolve="O_Event" />
      </node>
      <node concept="bR73E" id="1pa$D_7z$9A" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="490.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="6VIdscZVriG" role="1N5PiQ">
      <node concept="3YB4oO" id="6VIdscZVriI" role="2RhMKC">
        <ref role="1N5Pi4" node="2PX9bpPSFnI" resolve="socket" />
        <ref role="1N5Pi3" node="3Ofqz6FCMFA" resolve="O_Event" />
      </node>
      <node concept="3Yx0EI" id="6VIdscZVriJ" role="2RhMK_">
        <ref role="1N5Pi4" node="6VIdscZVrb5" resolve="RetryEcc2" />
        <ref role="1N5Pi3" node="6VIdscZVrhL" resolve="O_Event" />
      </node>
      <node concept="bR73E" id="1C95$foY$tA" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-340.0" />
        <property role="bR73k" value="270.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="6VIdscZVrje" role="1N5PiV">
      <node concept="3IAhSD" id="6VIdscZVrjg" role="2RhMKC">
        <ref role="1N5Pi4" node="2PX9bpPSFnI" resolve="socket" />
        <ref role="1N5PlF" node="3Ofqz6FCMF$" resolve="O_Data" />
      </node>
      <node concept="3IAvtB" id="6VIdscZVrjh" role="2RhMK_">
        <ref role="1N5Pi4" node="6VIdscZVrb5" resolve="RetryEcc2" />
        <ref role="1N5PlF" node="6VIdscZVrhI" resolve="O_Data" />
      </node>
      <node concept="bR73E" id="1C95$foY$t$" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-317.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="6VIdscZVrkK" role="1N5PiV">
      <node concept="3IAhSD" id="6VIdscZVrkM" role="2RhMKC">
        <ref role="1N5Pi4" node="6VIdscZVrb5" resolve="RetryEcc2" />
        <ref role="1N5PlF" node="6VIdscZVrhD" resolve="O_Data" />
      </node>
      <node concept="3IAvtB" id="6VIdscZVrkN" role="2RhMK_">
        <ref role="1N5Pi4" node="2PX9bpPSFol" resolve="plug" />
        <ref role="1N5PlF" node="3Ofqz6FCMF$" resolve="O_Data" />
      </node>
      <node concept="bR73E" id="1pa$D_7z$9C" role="bPNfo">
        <property role="bR73D" value="134.0" />
        <property role="bR73n" value="330.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="1qmbkl" id="72THbUidHBz" role="3rj3o">
      <ref role="2zR1Pb" node="72THbUidHBu" resolve="B" />
      <node concept="10YbkR" id="72THbUidHB$" role="1qmfRk">
        <property role="10YbkC" value="36.0" />
        <property role="10YbkE" value="143.0" />
      </node>
    </node>
    <node concept="1qmbkl" id="72THbUidHBK" role="3rj3o">
      <ref role="2zR1Pb" node="72THbUidHBI" resolve="a" />
      <node concept="10YbkR" id="72THbUidHBL" role="1qmfRk">
        <property role="10YbkC" value="216.0" />
        <property role="10YbkE" value="389.0" />
      </node>
    </node>
  </node>
  <node concept="XJABO" id="6VIdscZVr9H">
    <property role="TrG5h" value="AdditionalAdapterParams" />
    <node concept="2zBDeF" id="6VIdscZVran" role="2zBDeH">
      <property role="TrG5h" value="period" />
      <node concept="3r5yig" id="6VIdscZVrau" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="6VIdscZVrag" role="2zBDew">
      <property role="TrG5h" value="Period_Event" />
      <node concept="2zBDeU" id="6VIdscZVraA" role="2zBDeW">
        <ref role="2zBDeT" node="6VIdscZVran" resolve="period" />
      </node>
    </node>
    <node concept="2zBDe_" id="6VIdscZVr9R" role="2zBDey">
      <property role="TrG5h" value="additionalInput" />
    </node>
    <node concept="2iASse" id="3o0XHr62L02" role="3mXz50" />
  </node>
  <node concept="2zBDf2" id="6VIdscZVraU">
    <property role="TrG5h" value="RetryEcc" />
    <node concept="2zBDeF" id="6VIdscZVreW" role="2zBDeH">
      <property role="TrG5h" value="I_Data" />
      <node concept="2zB9wT" id="6VIdscZVrf0" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="6VIdscZVre6" role="2zBDew">
      <property role="TrG5h" value="I_Event" />
    </node>
    <node concept="2zBDeF" id="6VIdscZVrbe" role="2zBDeD">
      <property role="TrG5h" value="period" />
      <node concept="3r5yig" id="6VIdscZVrbl" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="6VIdscZVrfr" role="2zBDeD">
      <property role="TrG5h" value="I_Data" />
      <node concept="2zB9wT" id="6VIdscZVrfx" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="6VIdscZVrbc" role="2zBDey">
      <property role="TrG5h" value="Period_Event" />
    </node>
    <node concept="2zBDe_" id="6VIdscZVrdZ" role="2zBDey">
      <property role="TrG5h" value="I_Event" />
    </node>
    <node concept="2zAPAk" id="6VIdscZVraV" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="6VIdscZVraW" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="6VIdscZVrhC">
    <property role="TrG5h" value="RetryEcc2" />
    <node concept="2zBDeF" id="6VIdscZVrhD" role="2zBDeH">
      <property role="TrG5h" value="O_Data" />
      <node concept="2zB9wT" id="6VIdscZVrhE" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="6VIdscZVrhF" role="2zBDew">
      <property role="TrG5h" value="O_Event" />
    </node>
    <node concept="2zBDeF" id="6VIdscZVrhG" role="2zBDeD">
      <property role="TrG5h" value="period" />
      <node concept="3r5yig" id="6VIdscZVrhH" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="6VIdscZVrhI" role="2zBDeD">
      <property role="TrG5h" value="O_Data" />
      <node concept="2zB9wT" id="6VIdscZVrhJ" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="6VIdscZVrhK" role="2zBDey">
      <property role="TrG5h" value="Period_Event" />
    </node>
    <node concept="2zBDe_" id="6VIdscZVrhL" role="2zBDey">
      <property role="TrG5h" value="O_Event" />
    </node>
    <node concept="2zAPAk" id="6VIdscZVrhM" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="6VIdscZVrhN" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="1lAErR$Uysj">
    <property role="TrG5h" value="BaseBlock" />
    <node concept="3IBQi5" id="1lAErR$UysR" role="3YHajr">
      <property role="TrG5h" value="plug" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1lAErR$UysS" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="56cWBwOlRRJ" role="3YHajr">
      <property role="TrG5h" value="plugEA" />
      <ref role="3IBQi8" node="zLFK_aQjBx" resolve="EA2" />
      <node concept="10YbkR" id="56cWBwOlRRK" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="1lAErR$UysL" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1lAErR$UysM" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="56cWBwOlRR_" role="3YHajY">
      <property role="TrG5h" value="socketEA" />
      <ref role="3Iw0dH" node="43a7K48E4Yi" resolve="Right_EA2" />
      <node concept="10YbkR" id="56cWBwOlRRA" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="1lAErR$UysC" role="2zBDeH">
      <property role="TrG5h" value="O_data" />
      <node concept="2zB9wT" id="1lAErR$UysG" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1lAErR$Uysv" role="2zBDeD">
      <property role="TrG5h" value="I_data" />
      <node concept="3r5wd7" id="1lAErR$Uysz" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1lAErR$Uysr" role="2zBDew">
      <property role="TrG5h" value="O_event" />
    </node>
    <node concept="2zBDe_" id="1lAErR$Uysn" role="2zBDey">
      <property role="TrG5h" value="I_event" />
    </node>
    <node concept="2zAPAk" id="1lAErR$Uysk" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="1lAErR$Uysl" role="2WOQdS">
        <property role="10YbkC" value="753.0" />
        <property role="10YbkE" value="700.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="1lAErR$Uyua">
    <property role="TrG5h" value="AdditionalBlock" />
    <node concept="3IBQi5" id="1lAErR$Uyun" role="3YHajr">
      <property role="TrG5h" value="plug" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1lAErR$Uyuo" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="1lAErR$Uyuf" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1lAErR$Uyug" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="1lAErR$Uyub" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="1lAErR$Uyuc" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="27ZLyP6Y5bE">
    <property role="TrG5h" value="ExtendedAdapterExample_router" />
    <node concept="1N5Tq9" id="27ZLyP6Y5dO" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y5dQ" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bF" resolve="ExtendedAdapterExample_socket" />
        <ref role="1N5PlF" node="27ZLyP6Y6i4" resolve="O_Data" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y5nV" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bS" resolve="LeftSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y5du" resolve="O_Data" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y6gO" role="bPNfo">
        <property role="bR32p" value="110.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="27ZLyP6Y5d$" role="1N5PiQ">
      <node concept="3YB4oO" id="27ZLyP6Y5dA" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bF" resolve="ExtendedAdapterExample_socket" />
        <ref role="1N5Pi3" node="27ZLyP6Y6ia" resolve="O_event" />
      </node>
      <node concept="3Yx0EI" id="27ZLyP6Y5nF" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bS" resolve="LeftSwitch" />
        <ref role="1N5Pi3" node="27ZLyP6Y5dv" resolve="O_event" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y6gT" role="bPNfo">
        <property role="bR32p" value="80.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="27ZLyP6Y5bS" role="1N5PiY">
      <property role="TrG5h" value="LeftSwitch" />
      <ref role="1N5Tt0" node="27ZLyP6Y5bR" resolve="LeftSwitch" />
      <node concept="10YbkR" id="27ZLyP6Y5bU" role="b_cXm">
        <property role="10YbkC" value="740.0" />
        <property role="10YbkE" value="1210.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="27ZLyP6Y5bI" role="3YHajr">
      <property role="TrG5h" value="plug_0" />
      <ref role="3IBQi8" node="27ZLyP6Y6i3" resolve="ExtendedAdapterExample" />
      <node concept="10YbkR" id="27ZLyP6Y5bK" role="2oiNrz">
        <property role="10YbkC" value="1566.0" />
        <property role="10YbkE" value="919.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="27ZLyP6Y5bF" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="27ZLyP6Y6i3" resolve="ExtendedAdapterExample" />
      <node concept="10YbkR" id="27ZLyP6Y5bH" role="2oiVCh">
        <property role="10YbkC" value="-26.0" />
        <property role="10YbkE" value="1263.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="27ZLyP6Y5bL" role="3YHajr">
      <property role="TrG5h" value="plug_1" />
      <ref role="3IBQi8" node="27ZLyP6Y6i3" resolve="ExtendedAdapterExample" />
      <node concept="10YbkR" id="27ZLyP6Y5bN" role="2oiNrz">
        <property role="10YbkC" value="1553.0" />
        <property role="10YbkE" value="1230.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="27ZLyP6Y5bO" role="3YHajr">
      <property role="TrG5h" value="plug_2" />
      <ref role="3IBQi8" node="27ZLyP6Y6i3" resolve="ExtendedAdapterExample" />
      <node concept="10YbkR" id="27ZLyP6Y5bQ" role="2oiNrz">
        <property role="10YbkC" value="1576.0" />
        <property role="10YbkE" value="1546.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="27ZLyP6Y5dC" role="1N5PiQ">
      <node concept="3YB4oO" id="27ZLyP6Y5dE" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bS" resolve="ExtendedAdapterExample_internalLeftSwitch" />
        <ref role="1N5Pi3" node="27ZLyP6Y5dt" resolve="O_event_0" />
      </node>
      <node concept="3Yx0EI" id="27ZLyP6Y5dF" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bI" resolve="ExtendedAdapterExample_plug0" />
        <ref role="1N5Pi3" node="27ZLyP6Y6ia" resolve="O_event" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y6gP" role="bPNfo">
        <property role="bR32p" value="100.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="27ZLyP6Y5dG" role="1N5PiQ">
      <node concept="3YB4oO" id="27ZLyP6Y5dI" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bS" resolve="ExtendedAdapterExample_internalLeftSwitch" />
        <ref role="1N5Pi3" node="27ZLyP6Y5dw" resolve="O_event_1" />
      </node>
      <node concept="3Yx0EI" id="27ZLyP6Y5dJ" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bL" resolve="ExtendedAdapterExample_plug1" />
        <ref role="1N5Pi3" node="27ZLyP6Y6ia" resolve="O_event" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y6gR" role="bPNfo">
        <property role="bR32p" value="117.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="27ZLyP6Y5dK" role="1N5PiQ">
      <node concept="3YB4oO" id="27ZLyP6Y5dM" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bS" resolve="ExtendedAdapterExample_internalLeftSwitch" />
        <ref role="1N5Pi3" node="27ZLyP6Y5dy" resolve="O_event_2" />
      </node>
      <node concept="3Yx0EI" id="27ZLyP6Y5dN" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bO" resolve="ExtendedAdapterExample_plug2" />
        <ref role="1N5Pi3" node="27ZLyP6Y6ia" resolve="O_event" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y6gS" role="bPNfo">
        <property role="bR32p" value="200.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="27ZLyP6Y5dS" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y5dU" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bS" resolve="ExtendedAdapterExample_internalLeftSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y5ds" resolve="O_Data_0" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y5dV" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bI" resolve="ExtendedAdapterExample_plug0" />
        <ref role="1N5PlF" node="27ZLyP6Y6i4" resolve="O_Data" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y6gU" role="bPNfo">
        <property role="bR32p" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="27ZLyP6Y5dW" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y5dY" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bS" resolve="ExtendedAdapterExample_internalLeftSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y5dx" resolve="O_Data_1" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y5dZ" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bL" resolve="ExtendedAdapterExample_plug1" />
        <ref role="1N5PlF" node="27ZLyP6Y6i4" resolve="O_Data" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y6gN" role="bPNfo">
        <property role="bR32p" value="180.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="27ZLyP6Y5e0" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y5e2" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bS" resolve="ExtendedAdapterExample_internalLeftSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y5dz" resolve="O_Data_2" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y5e3" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bO" resolve="ExtendedAdapterExample_plug2" />
        <ref role="1N5PlF" node="27ZLyP6Y6i4" resolve="O_Data" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y6gQ" role="bPNfo">
        <property role="bR32p" value="110.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="27ZLyP6Y5e5" role="1N5PiY">
      <property role="TrG5h" value="RightSwitch" />
      <ref role="1N5Tt0" node="27ZLyP6Y5e4" resolve="RightSwitch" />
      <node concept="10YbkR" id="27ZLyP6Y5e7" role="b_cXm">
        <property role="10YbkC" value="2616.0" />
        <property role="10YbkE" value="1133.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="27ZLyP6Y5fC" role="1N5PiQ">
      <node concept="3YB4oO" id="27ZLyP6Y5fE" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5e5" resolve="ExtendedAdapterExample_internalRightSwitch" />
        <ref role="1N5Pi3" node="27ZLyP6Y5fz" resolve="I_event" />
      </node>
      <node concept="3Yx0EI" id="27ZLyP6Y5fF" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bF" resolve="ExtendedAdapterExample_socket" />
        <ref role="1N5Pi3" node="27ZLyP6Y6ib" resolve="I_event" />
      </node>
      <node concept="bR73E" id="27ZLyP6Y6jJ" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-350.0" />
        <property role="bR73k" value="121.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="27ZLyP6Y5fG" role="1N5PiQ">
      <node concept="3YB4oO" id="27ZLyP6Y5fI" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bI" resolve="ExtendedAdapterExample_plug0" />
        <ref role="1N5Pi3" node="27ZLyP6Y6ib" resolve="I_event" />
      </node>
      <node concept="3Yx0EI" id="27ZLyP6Y5fJ" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5e5" resolve="ExtendedAdapterExample_internalRightSwitch" />
        <ref role="1N5Pi3" node="27ZLyP6Y5fx" resolve="I_event_0" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y5p2" role="bPNfo">
        <property role="bR32p" value="276.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="27ZLyP6Y5fK" role="1N5PiQ">
      <node concept="3YB4oO" id="27ZLyP6Y5fM" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bL" resolve="ExtendedAdapterExample_plug1" />
        <ref role="1N5Pi3" node="27ZLyP6Y6ib" resolve="I_event" />
      </node>
      <node concept="3Yx0EI" id="27ZLyP6Y5fN" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5e5" resolve="ExtendedAdapterExample_internalRightSwitch" />
        <ref role="1N5Pi3" node="27ZLyP6Y5f$" resolve="I_event_1" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y5p8" role="bPNfo">
        <property role="bR32p" value="217.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="27ZLyP6Y5fO" role="1N5PiQ">
      <node concept="3YB4oO" id="27ZLyP6Y5fQ" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bO" resolve="ExtendedAdapterExample_plug2" />
        <ref role="1N5Pi3" node="27ZLyP6Y6ib" resolve="I_event" />
      </node>
      <node concept="3Yx0EI" id="27ZLyP6Y5fR" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5e5" resolve="ExtendedAdapterExample_internalRightSwitch" />
        <ref role="1N5Pi3" node="27ZLyP6Y5fA" resolve="I_event_2" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y5p7" role="bPNfo">
        <property role="bR32p" value="200.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="27ZLyP6Y5fS" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y5fU" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5e5" resolve="ExtendedAdapterExample_internalRightSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y5fy" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y5fV" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bF" resolve="ExtendedAdapterExample_socket" />
        <ref role="1N5PlF" node="27ZLyP6Y6i8" resolve="I_Data" />
      </node>
      <node concept="bR73E" id="27ZLyP6Y5p9" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="-553.0" />
        <property role="bR73k" value="121.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="27ZLyP6Y5fW" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y5fY" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bI" resolve="ExtendedAdapterExample_plug0" />
        <ref role="1N5PlF" node="27ZLyP6Y6i8" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y5fZ" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5e5" resolve="ExtendedAdapterExample_internalRightSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y5fw" resolve="I_Data_0" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y5p5" role="bPNfo">
        <property role="bR32p" value="333.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="27ZLyP6Y5g0" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y5g2" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bL" resolve="ExtendedAdapterExample_plug1" />
        <ref role="1N5PlF" node="27ZLyP6Y6i8" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y5g3" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5e5" resolve="ExtendedAdapterExample_internalRightSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y5f_" resolve="I_Data_1" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y5p6" role="bPNfo">
        <property role="bR32p" value="217.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="27ZLyP6Y5g4" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y5g6" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bO" resolve="ExtendedAdapterExample_plug2" />
        <ref role="1N5PlF" node="27ZLyP6Y6i8" resolve="I_Data" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y5g7" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5e5" resolve="ExtendedAdapterExample_internalRightSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y5fB" resolve="I_Data_2" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y5p3" role="bPNfo">
        <property role="bR32p" value="240.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="27ZLyP6Y6hc" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y6he" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5bF" resolve="socket" />
        <ref role="1N5PlF" node="27ZLyP6Y5pi" resolve="router" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y6hf" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bS" resolve="LeftSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y6h3" resolve="router" />
      </node>
      <node concept="bR32z" id="27ZLyP6Y6hS" role="bPNfo">
        <property role="bR32p" value="87.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="27ZLyP6Y6iV" role="1N5PiV">
      <node concept="3IAhSD" id="27ZLyP6Y6iX" role="2RhMKC">
        <ref role="1N5Pi4" node="27ZLyP6Y5e5" resolve="RightSwitch" />
        <ref role="1N5PlF" node="27ZLyP6Y6hU" resolve="sender_number" />
      </node>
      <node concept="3IAvtB" id="27ZLyP6Y6iY" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5bF" resolve="socket" />
        <ref role="1N5PlF" node="27ZLyP6Y6iJ" resolve="I_router" />
      </node>
      <node concept="bR73E" id="27ZLyP6Y6jH" role="bPNfo">
        <property role="bR73D" value="134.0" />
        <property role="bR73n" value="340.0" />
        <property role="bR73k" value="134.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="27ZLyP6Y5bR">
    <property role="TrG5h" value="LeftSwitch" />
    <node concept="2zAPAq" id="27ZLyP6Y5c8" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5bZ" resolve="Start" />
      <ref role="2zAPx1" node="27ZLyP6Y5c2" resolve="O_event_0_state" />
      <node concept="10YbkR" id="27ZLyP6Y5c9" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5ca" role="2zAZMv">
        <node concept="3YHqtX" id="27ZLyP6Y5cb" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346300" />
        </node>
        <node concept="2zAFu8" id="27ZLyP6Y5cc" role="2EVYSB">
          <node concept="2zAFuh" id="27ZLyP6Y5cd" role="398zGL">
            <property role="2zAFug" value="0" />
          </node>
          <node concept="2zAFuc" id="27ZLyP6Y5ce" role="398zGN">
            <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="27ZLyP6Y5cg" role="2zAPwS">
      <property role="TrG5h" value="O_event_0_algorithm" />
      <node concept="1tttXp" id="27ZLyP6Y5ch" role="1toi31">
        <node concept="1y1qLN" id="27ZLyP6Y5ci" role="1y4NXT">
          <node concept="1y1qS$" id="27ZLyP6Y5cj" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5ck" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5cl" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5cm" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5cn" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5ds" resolve="O_Data_0" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5co" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5cp" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5cq" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5dx" resolve="O_Data_1" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5cr" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5cs" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5ct" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5dz" resolve="O_Data_2" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5cu" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="27ZLyP6Y5bZ" role="2zAPwY">
      <property role="TrG5h" value="Start" />
      <node concept="10YbkR" id="27ZLyP6Y5c1" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y5ds" role="2zBDeH">
      <property role="TrG5h" value="O_Data_0" />
      <node concept="3r5wd7" id="27ZLyP6Y5bW" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y5dt" role="2zBDew">
      <property role="TrG5h" value="O_event_0" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y5du" role="2zBDeD">
      <property role="TrG5h" value="O_Data" />
      <node concept="3r5wd7" id="27ZLyP6Y5bV" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y6h3" role="2zBDeD">
      <property role="TrG5h" value="router" />
      <node concept="3r5wd7" id="27ZLyP6Y6h9" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y5dv" role="2zBDey">
      <property role="TrG5h" value="O_event" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y5dw" role="2zBDew">
      <property role="TrG5h" value="O_event_1" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y5dx" role="2zBDeH">
      <property role="TrG5h" value="O_Data_1" />
      <node concept="3r5wd7" id="27ZLyP6Y5bX" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y5dy" role="2zBDew">
      <property role="TrG5h" value="O_event_2" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y5dz" role="2zBDeH">
      <property role="TrG5h" value="O_Data_2" />
      <node concept="3r5wd7" id="27ZLyP6Y5bY" role="2zB7qv" />
    </node>
    <node concept="2zAPAk" id="27ZLyP6Y5c2" role="2zAPwY">
      <property role="TrG5h" value="O_event_0_state" />
      <node concept="2zAPAr" id="27ZLyP6Y5cf" role="2zAPBK">
        <ref role="2zAPAu" node="27ZLyP6Y5cg" resolve="O_event_0_algorithm" />
        <node concept="3YHrnl" id="27ZLyP6Y5cv" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346300" />
        </node>
      </node>
      <node concept="10YbkR" id="27ZLyP6Y5c4" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5c5" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5c2" resolve="O_event_0_state" />
      <ref role="2zAPx1" node="27ZLyP6Y5bZ" resolve="Start" />
      <node concept="10YbkR" id="27ZLyP6Y5c6" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5c7" role="2zAZMv" />
    </node>
    <node concept="2zAPAp" id="27ZLyP6Y5cI" role="2zAPwS">
      <property role="TrG5h" value="O_event_1_algorithm" />
      <node concept="1tttXp" id="27ZLyP6Y5cJ" role="1toi31">
        <node concept="1y1qLN" id="27ZLyP6Y5cK" role="1y4NXT">
          <node concept="1y1qS$" id="27ZLyP6Y5cL" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5cM" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5cN" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5cO" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5cP" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5ds" resolve="O_Data_0" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5cQ" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5cR" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5cS" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5dx" resolve="O_Data_1" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5cT" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5cU" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5cV" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5dz" resolve="O_Data_2" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5cW" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="27ZLyP6Y5cw" role="2zAPwY">
      <property role="TrG5h" value="O_event_1_state" />
      <node concept="2zAPAr" id="27ZLyP6Y5cH" role="2zAPBK">
        <ref role="2zAPAu" node="27ZLyP6Y5cI" resolve="O_event_1_algorithm" />
        <node concept="3YHrnl" id="27ZLyP6Y5cX" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346300" />
        </node>
      </node>
      <node concept="10YbkR" id="27ZLyP6Y5cy" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5cA" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5bZ" resolve="Start" />
      <ref role="2zAPx1" node="27ZLyP6Y5cw" resolve="O_event_1_state" />
      <node concept="10YbkR" id="27ZLyP6Y5cB" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5cC" role="2zAZMv">
        <node concept="3YHqtX" id="27ZLyP6Y5cD" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346300" />
        </node>
        <node concept="2zAFu8" id="27ZLyP6Y5cE" role="2EVYSB">
          <node concept="2zAFuh" id="27ZLyP6Y5cF" role="398zGL">
            <property role="2zAFug" value="1" />
          </node>
          <node concept="2zAFuc" id="27ZLyP6Y5cG" role="398zGN">
            <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5cz" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5cw" resolve="O_event_1_state" />
      <ref role="2zAPx1" node="27ZLyP6Y5bZ" resolve="Start" />
      <node concept="10YbkR" id="27ZLyP6Y5c$" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5c_" role="2zAZMv" />
    </node>
    <node concept="2zAPAp" id="27ZLyP6Y5dc" role="2zAPwS">
      <property role="TrG5h" value="O_event_2_algorithm" />
      <node concept="1tttXp" id="27ZLyP6Y5dd" role="1toi31">
        <node concept="1y1qLN" id="27ZLyP6Y5de" role="1y4NXT">
          <node concept="1y1qS$" id="27ZLyP6Y5df" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5dg" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5dh" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5di" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5dj" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5ds" resolve="O_Data_0" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5dk" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5dl" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5dm" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5dx" resolve="O_Data_1" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5dn" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5do" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5dp" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5dz" resolve="O_Data_2" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5dq" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="27ZLyP6Y5cY" role="2zAPwY">
      <property role="TrG5h" value="O_event_2_state" />
      <node concept="2zAPAr" id="27ZLyP6Y5db" role="2zAPBK">
        <ref role="2zAPAu" node="27ZLyP6Y5dc" resolve="O_event_2_algorithm" />
        <node concept="3YHrnl" id="27ZLyP6Y5dr" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346300" />
        </node>
      </node>
      <node concept="10YbkR" id="27ZLyP6Y5d0" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5d4" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5bZ" resolve="Start" />
      <ref role="2zAPx1" node="27ZLyP6Y5cY" resolve="O_event_2_state" />
      <node concept="10YbkR" id="27ZLyP6Y5d5" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5d6" role="2zAZMv">
        <node concept="3YHqtX" id="27ZLyP6Y5d7" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346300" />
        </node>
        <node concept="2zAFu8" id="27ZLyP6Y5d8" role="2EVYSB">
          <node concept="2zAFuh" id="27ZLyP6Y5d9" role="398zGL">
            <property role="2zAFug" value="2" />
          </node>
          <node concept="2zAFuc" id="27ZLyP6Y5da" role="398zGN">
            <ref role="2zAFuj" node="27ZLyP6Y5du" resolve="O_Data" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5d1" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5cY" resolve="O_event_2_state" />
      <ref role="2zAPx1" node="27ZLyP6Y5bZ" resolve="Start" />
      <node concept="10YbkR" id="27ZLyP6Y5d2" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5d3" role="2zAZMv" />
    </node>
  </node>
  <node concept="2zBDf2" id="27ZLyP6Y5e4">
    <property role="TrG5h" value="RightSwitch" />
    <node concept="2zAPAq" id="27ZLyP6Y5el" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5ec" resolve="Start" />
      <ref role="2zAPx1" node="27ZLyP6Y5ef" resolve="I_event_state" />
      <node concept="10YbkR" id="27ZLyP6Y5em" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5en" role="2zAZMv">
        <node concept="3YHqtX" id="27ZLyP6Y5eo" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346298" />
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="27ZLyP6Y5eq" role="2zAPwS">
      <property role="TrG5h" value="I_event_algorithm" />
      <node concept="1tttXp" id="27ZLyP6Y5er" role="1toi31">
        <node concept="1y1qLN" id="27ZLyP6Y5es" role="1y4NXT">
          <node concept="1y1qS$" id="27ZLyP6Y5et" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5eu" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5ev" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5ew" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5ex" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5fw" resolve="I_Data_0" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5ey" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5ez" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5e$" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5f_" resolve="I_Data_1" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5e_" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5eA" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5eB" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5fB" resolve="I_Data_2" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5eC" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="27ZLyP6Y5ec" role="2zAPwY">
      <property role="TrG5h" value="Start" />
      <node concept="10YbkR" id="27ZLyP6Y5ee" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y5fw" role="2zBDeD">
      <property role="TrG5h" value="I_Data_0" />
      <node concept="3r5wd7" id="27ZLyP6Y5e9" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y5fx" role="2zBDey">
      <property role="TrG5h" value="I_event_0" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y5fy" role="2zBDeH">
      <property role="TrG5h" value="I_Data" />
      <node concept="3r5wd7" id="27ZLyP6Y5e8" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y6hU" role="2zBDeH">
      <property role="TrG5h" value="router" />
      <node concept="3r5wd7" id="27ZLyP6Y6i0" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y5fz" role="2zBDew">
      <property role="TrG5h" value="I_event" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y5f$" role="2zBDey">
      <property role="TrG5h" value="I_event_1" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y5f_" role="2zBDeD">
      <property role="TrG5h" value="I_Data_1" />
      <node concept="3r5wd7" id="27ZLyP6Y5ea" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y5fA" role="2zBDey">
      <property role="TrG5h" value="I_event_2" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y5fB" role="2zBDeD">
      <property role="TrG5h" value="I_Data_2" />
      <node concept="3r5wd7" id="27ZLyP6Y5eb" role="2zB7qv" />
    </node>
    <node concept="2zAPAk" id="27ZLyP6Y5ef" role="2zAPwY">
      <property role="TrG5h" value="I_event_state" />
      <node concept="2zAPAr" id="27ZLyP6Y5ep" role="2zAPBK">
        <ref role="2zAPAu" node="27ZLyP6Y5eq" resolve="I_event_algorithm" />
        <node concept="3YHrnl" id="27ZLyP6Y5eD" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346298" />
        </node>
      </node>
      <node concept="10YbkR" id="27ZLyP6Y5eh" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5ei" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5ef" resolve="I_event_state" />
      <ref role="2zAPx1" node="27ZLyP6Y5ec" resolve="Start" />
      <node concept="10YbkR" id="27ZLyP6Y5ej" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5ek" role="2zAZMv" />
    </node>
    <node concept="2zAPAp" id="27ZLyP6Y5eP" role="2zAPwS">
      <property role="TrG5h" value="I_event_algorithm" />
      <node concept="1tttXp" id="27ZLyP6Y5eQ" role="1toi31">
        <node concept="1y1qLN" id="27ZLyP6Y5eR" role="1y4NXT">
          <node concept="1y1qS$" id="27ZLyP6Y5eS" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5eT" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5eU" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5eV" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5eW" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5fw" resolve="I_Data_0" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5eX" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5eY" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5eZ" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5f_" resolve="I_Data_1" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5f0" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5f1" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5f2" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5fB" resolve="I_Data_2" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5f3" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="27ZLyP6Y5eE" role="2zAPwY">
      <property role="TrG5h" value="I_event_state" />
      <node concept="2zAPAr" id="27ZLyP6Y5eO" role="2zAPBK">
        <ref role="2zAPAu" node="27ZLyP6Y5eP" resolve="I_event_algorithm" />
        <node concept="3YHrnl" id="27ZLyP6Y5f4" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346298" />
        </node>
      </node>
      <node concept="10YbkR" id="27ZLyP6Y5eG" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5eK" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5ec" resolve="Start" />
      <ref role="2zAPx1" node="27ZLyP6Y5eE" resolve="I_event_state" />
      <node concept="10YbkR" id="27ZLyP6Y5eL" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5eM" role="2zAZMv">
        <node concept="3YHqtX" id="27ZLyP6Y5eN" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346298" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5eH" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5eE" resolve="I_event_state" />
      <ref role="2zAPx1" node="27ZLyP6Y5ec" resolve="Start" />
      <node concept="10YbkR" id="27ZLyP6Y5eI" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5eJ" role="2zAZMv" />
    </node>
    <node concept="2zAPAp" id="27ZLyP6Y5fg" role="2zAPwS">
      <property role="TrG5h" value="I_event_algorithm" />
      <node concept="1tttXp" id="27ZLyP6Y5fh" role="1toi31">
        <node concept="1y1qLN" id="27ZLyP6Y5fi" role="1y4NXT">
          <node concept="1y1qS$" id="27ZLyP6Y5fj" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5fk" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5fl" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5fm" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5fn" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5fw" resolve="I_Data_0" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5fo" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5fp" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5fq" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5f_" resolve="I_Data_1" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5fr" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
          <node concept="1y1qS$" id="27ZLyP6Y5fs" role="1y1qVS">
            <node concept="2zAFuc" id="27ZLyP6Y5ft" role="1y1qSV">
              <ref role="2zAFuj" node="27ZLyP6Y5fB" resolve="I_Data_2" />
            </node>
            <node concept="2zAFuc" id="27ZLyP6Y5fu" role="1y1qST">
              <ref role="2zAFuj" node="27ZLyP6Y5fy" resolve="I_Data" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="27ZLyP6Y5f5" role="2zAPwY">
      <property role="TrG5h" value="I_event_state" />
      <node concept="2zAPAr" id="27ZLyP6Y5ff" role="2zAPBK">
        <ref role="2zAPAu" node="27ZLyP6Y5fg" resolve="I_event_algorithm" />
        <node concept="3YHrnl" id="27ZLyP6Y5fv" role="2NbhEN">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346298" />
        </node>
      </node>
      <node concept="10YbkR" id="27ZLyP6Y5f7" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5fb" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5ec" resolve="Start" />
      <ref role="2zAPx1" node="27ZLyP6Y5f5" resolve="I_event_state" />
      <node concept="10YbkR" id="27ZLyP6Y5fc" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5fd" role="2zAZMv">
        <node concept="3YHqtX" id="27ZLyP6Y5fe" role="2N3Qeb">
          <ref role="3Yz8TM" to=":^" resolve="null/2449894620079346298" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="27ZLyP6Y5f8" role="2zAPxA">
      <ref role="2zAPx3" node="27ZLyP6Y5f5" resolve="I_event_state" />
      <ref role="2zAPx1" node="27ZLyP6Y5ec" resolve="Start" />
      <node concept="10YbkR" id="27ZLyP6Y5f9" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
      <node concept="2EVYwv" id="27ZLyP6Y5fa" role="2zAZMv" />
    </node>
  </node>
  <node concept="1N5Tt2" id="27ZLyP6Y5iC">
    <property role="TrG5h" value="CompositeBlock" />
    <node concept="1N5Tt1" id="75ZKjlljE3j" role="1N5PiY">
      <property role="TrG5h" value="PUBLISH_4" />
      <ref role="1N5Tt0" to="7fvu:~PUBLISH_4" resolve="PUBLISH_4" />
      <node concept="10YbkR" id="75ZKjlljE3l" role="b_cXm">
        <property role="10YbkC" value="1286.0" />
        <property role="10YbkE" value="1726.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="2iqry72fQV" role="1N5PiV">
      <node concept="3IAhSD" id="2iqry72fQX" role="2RhMKC">
        <ref role="1N5Pi4" node="5f2QmZcXPxV" resolve="socketEA" />
        <ref role="1N5PlF" node="1YAnAaAosSy" resolve="Data_O" />
      </node>
      <node concept="3IAvtB" id="2iqry72fQY" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5iE" resolve="socket" />
        <ref role="1N5PlF" node="27ZLyP6Y6i8" resolve="I_Data" />
      </node>
      <node concept="bR32z" id="4uMrEeW2tR5" role="bPNfo">
        <property role="bR32p" value="194.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="2iqry72fQA" role="1N5PiQ">
      <node concept="3YB4oO" id="2iqry72fQC" role="2RhMKC">
        <ref role="1N5Pi4" node="5f2QmZcXPxV" resolve="socketEA" />
        <ref role="1N5Pi3" node="1YAnAaAosSp" resolve="Event_O" />
      </node>
      <node concept="3Yx0EI" id="2iqry72fQD" role="2RhMK_">
        <ref role="1N5Pi4" node="27ZLyP6Y5iE" resolve="socket" />
        <ref role="1N5Pi3" node="27ZLyP6Y6ib" resolve="I_event" />
      </node>
      <node concept="bR32z" id="4uMrEeW2tQT" role="bPNfo">
        <property role="bR32p" value="167.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6C8" role="2zBDeH">
      <property role="TrG5h" value="O_data" />
      <node concept="2zB9wT" id="1TXM2wdK6C9" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6BV" role="2zBDeD">
      <property role="TrG5h" value="I_data" />
      <node concept="3r5wd7" id="1TXM2wdK6BW" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6BN" role="2zBDew">
      <property role="TrG5h" value="O_event" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6BH" role="2zBDey">
      <property role="TrG5h" value="I_event" />
    </node>
    <node concept="3IBQi5" id="27ZLyP6Y5iI" role="3YHajr">
      <property role="TrG5h" value="plug" />
      <ref role="3IBQi8" node="27ZLyP6Y6i3" resolve="ExtendedAdapterExample" />
      <node concept="10YbkR" id="27ZLyP6Y5iJ" role="2oiNrz">
        <property role="10YbkC" value="2116.0" />
        <property role="10YbkE" value="1313.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="5f2QmZcXPy5" role="3YHajr">
      <property role="TrG5h" value="plugEA" />
      <ref role="3IBQi8" node="zLFK_aQjBx" resolve="EA2" />
      <node concept="10YbkR" id="5f2QmZcXPy6" role="2oiNrz">
        <property role="10YbkC" value="1190.0" />
        <property role="10YbkE" value="753.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="27ZLyP6Y5iE" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="27ZLyP6Y6i3" resolve="ExtendedAdapterExample" />
      <node concept="10YbkR" id="27ZLyP6Y5iF" role="2oiVCh">
        <property role="10YbkC" value="1336.0" />
        <property role="10YbkE" value="333.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="5f2QmZcXPxV" role="3YHajY">
      <property role="TrG5h" value="socketEA" />
      <ref role="3Iw0dH" node="zLFK_aQjBx" resolve="EA2" />
      <node concept="10YbkR" id="5f2QmZcXPxW" role="2oiVCh">
        <property role="10YbkC" value="310.0" />
        <property role="10YbkE" value="670.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="2iqry72_Vc" role="1N5PiQ">
      <node concept="3YB4oO" id="2iqry72_Ve" role="2RhMKC">
        <ref role="1N5Pi4" node="5f2QmZcXPxV" resolve="socketEA" />
        <ref role="1N5Pi3" node="1YAnAaAosSp" resolve="Event_O" />
      </node>
      <node concept="3Yx0EI" id="2iqry72_Vf" role="2RhMK_">
        <ref role="1N5Pi4" node="5f2QmZcXPy5" resolve="plugEA" />
        <ref role="1N5Pi3" node="1YAnAaAosSp" resolve="Event_O" />
      </node>
      <node concept="bR32z" id="4uMrEeW2tQJ" role="bPNfo">
        <property role="bR32p" value="134.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="75ZKjlljE3w" role="1N5PiY">
      <property role="TrG5h" value="SUBSCRIBE_4" />
      <ref role="1N5Tt0" to="7fvu:~SUBSCRIBE_4" resolve="SUBSCRIBE_4" />
      <node concept="10YbkR" id="75ZKjlljE3y" role="b_cXm">
        <property role="10YbkC" value="2550.0" />
        <property role="10YbkE" value="1709.0" />
      </node>
    </node>
  </node>
  <node concept="XJABO" id="27ZLyP6Y6i3">
    <property role="TrG5h" value="ExtendedAdapterExample" />
    <node concept="2zBDeF" id="27ZLyP6Y6i4" role="2zBDeH">
      <property role="TrG5h" value="O_Data" />
      <node concept="3r5wd7" id="27ZLyP6Y6i5" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y6i8" role="2zBDeD">
      <property role="TrG5h" value="I_Data" />
      <node concept="3r5wd7" id="27ZLyP6Y6i9" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y6ia" role="2zBDew">
      <property role="TrG5h" value="O_event" />
    </node>
    <node concept="2zBDe_" id="27ZLyP6Y6ib" role="2zBDey">
      <property role="TrG5h" value="I_event" />
    </node>
    <node concept="2iASse" id="27ZLyP6Y6ic" role="3mXz50">
      <node concept="1N5Tt1" id="69pqbmD27Hn" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock2" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="69pqbmD27Hp" role="b_cXm">
          <property role="10YbkC" value="1899.0" />
          <property role="10YbkE" value="1400.0" />
        </node>
      </node>
      <node concept="2GP0n_" id="27ZLyP6Y6id" role="2GP0$q">
        <property role="TrG5h" value="Plug Connection" />
        <node concept="10YbkR" id="27ZLyP6Y6ie" role="3ISU9Q">
          <property role="10YbkC" value="2233.0" />
          <property role="10YbkE" value="813.0" />
        </node>
      </node>
      <node concept="2u7yaZ" id="27ZLyP6Y6if" role="2GP0_B">
        <property role="TrG5h" value="Socket Connection" />
        <node concept="10YbkR" id="27ZLyP6Y6ig" role="3ISU9Q">
          <property role="10YbkC" value="600.0" />
          <property role="10YbkE" value="826.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1TXM2wdK6lw" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock1" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="1TXM2wdK6ly" role="b_cXm">
          <property role="10YbkC" value="943.0" />
          <property role="10YbkE" value="1430.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1TXM2wdK6o9" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock4" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="1TXM2wdK6ob" role="b_cXm">
          <property role="10YbkC" value="-153.0" />
          <property role="10YbkE" value="933.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1TXM2wdK6p6" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock3" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="1TXM2wdK6p8" role="b_cXm">
          <property role="10YbkC" value="-150.0" />
          <property role="10YbkE" value="409.0" />
        </node>
      </node>
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y6ih" role="13zCZz">
      <property role="TrG5h" value="router" />
      <node concept="3r5wd7" id="27ZLyP6Y6ii" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="27ZLyP6Y6ij" role="13zCZx">
      <property role="TrG5h" value="sender_number" />
      <node concept="3r5wd7" id="27ZLyP6Y6ik" role="2zB7qv" />
    </node>
    <node concept="3mx2vR" id="27ZLyP6Y6lV" role="3mXm6w" />
    <node concept="3mx2vR" id="27ZLyP6Y6lX" role="tr10f">
      <node concept="2zBDe_" id="27ZLyP6Y6m9" role="2zBDew">
        <property role="TrG5h" value="Plug_O_event" />
      </node>
      <node concept="2zBDeF" id="27ZLyP6Y6oX" role="2zBDeD">
        <property role="TrG5h" value="Plug_I_data" />
        <node concept="3r5wd7" id="27ZLyP6Y6oY" role="2zB7qv" />
      </node>
      <node concept="2zBDeF" id="27ZLyP6Y6p9" role="2zBDeH">
        <property role="TrG5h" value="Plug_O_data" />
        <node concept="3r5wd7" id="27ZLyP6Y6pa" role="2zB7qv" />
      </node>
      <node concept="2zBDe_" id="27ZLyP6Y6m7" role="2zBDey">
        <property role="TrG5h" value="Plug_I_event" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="1TXM2wdK6x$">
    <property role="TrG5h" value="Example2" />
    <node concept="3IBQi5" id="1TXM2wdK6EZ" role="3YHajr">
      <property role="TrG5h" value="plug" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK6F0" role="2oiNrz">
        <property role="10YbkC" value="1783.0" />
        <property role="10YbkE" value="530.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="1TXM2wdK6DS" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK6DT" role="2oiVCh">
        <property role="10YbkC" value="923.0" />
        <property role="10YbkE" value="533.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK6ys" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK6yu" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK6xD" resolve="BaseBlock1" />
        <ref role="3YV03s" node="1lAErR$UysR" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK6yv" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK6xF" resolve="BaseBlock2" />
        <ref role="3YV9Vh" node="1lAErR$UysL" resolve="socket" />
      </node>
      <node concept="bR32z" id="7WEJ4dJLVXk" role="bPNfo">
        <property role="bR32p" value="90.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6xD" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock1" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1TXM2wdK6xE" role="b_cXm">
        <property role="10YbkC" value="283.0" />
        <property role="10YbkE" value="1013.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6xF" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock2" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1TXM2wdK6xG" role="b_cXm">
        <property role="10YbkC" value="2306.0" />
        <property role="10YbkE" value="849.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6z2" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock2" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1TXM2wdK6z4" role="b_cXm">
        <property role="10YbkC" value="1819.0" />
        <property role="10YbkE" value="1420.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6zb" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock1" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1TXM2wdK6zd" role="b_cXm">
        <property role="10YbkC" value="576.0" />
        <property role="10YbkE" value="1426.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6zO" role="1N5PiY">
      <property role="TrG5h" value="AdapterNetwork" />
      <ref role="1N5Tt0" node="1TXM2wdK6zD" resolve="AdapterNetwork" />
      <node concept="10YbkR" id="1TXM2wdK6zQ" role="b_cXm">
        <property role="10YbkC" value="1236.0" />
        <property role="10YbkE" value="1520.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK6$8" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK6$a" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK6zb" resolve="BaseBlock" />
        <ref role="3YV03s" node="1lAErR$UysR" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK6$b" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK6zO" resolve="AdapterNetwork" />
        <ref role="3YV9Vh" node="1TXM2wdK6zE" resolve="socket" />
      </node>
      <node concept="bR33I" id="1TXM2wdK6$Y" role="bPNfo" />
    </node>
    <node concept="3IAhBk" id="1TXM2wdK6$p" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK6$r" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK6zO" resolve="AdapterNetwork" />
        <ref role="3YV03s" node="1TXM2wdK6zJ" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK6$s" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK6z2" resolve="BaseBlock" />
        <ref role="3YV9Vh" node="1lAErR$UysL" resolve="socket" />
      </node>
      <node concept="bR33I" id="1TXM2wdK6_2" role="bPNfo" />
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6Bo" role="1N5PiY">
      <property role="TrG5h" value="CompositeBlock" />
      <ref role="1N5Tt0" node="27ZLyP6Y5iC" resolve="CompositeBlock" />
      <node concept="10YbkR" id="1TXM2wdK6Bq" role="b_cXm">
        <property role="10YbkC" value="1486.0" />
        <property role="10YbkE" value="76.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="1TXM2wdK6Cu" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock" />
      <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
      <node concept="10YbkR" id="1TXM2wdK6Cw" role="b_cXm">
        <property role="10YbkC" value="740.0" />
        <property role="10YbkE" value="76.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="1TXM2wdK6CJ" role="1N5PiQ">
      <node concept="3YB4oO" id="1TXM2wdK6CL" role="2RhMKC">
        <ref role="1N5Pi4" node="1TXM2wdK6Cu" resolve="BaseBlock" />
        <ref role="1N5Pi3" node="1lAErR$Uysr" resolve="O_event" />
      </node>
      <node concept="3Yx0EI" id="1TXM2wdK6CM" role="2RhMK_">
        <ref role="1N5Pi4" node="1TXM2wdK6Bo" resolve="CompositeBlock" />
        <ref role="1N5Pi3" node="1TXM2wdK6BH" resolve="I_event" />
      </node>
      <node concept="bR32z" id="1TXM2wdK6DK" role="bPNfo">
        <property role="bR32p" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="1TXM2wdK6CX" role="1N5PiV">
      <node concept="3IAhSD" id="1TXM2wdK6CZ" role="2RhMKC">
        <ref role="1N5Pi4" node="1TXM2wdK6Cu" resolve="BaseBlock" />
        <ref role="1N5PlF" node="1lAErR$UysC" resolve="O_data" />
      </node>
      <node concept="3IAvtB" id="1TXM2wdK6D0" role="2RhMK_">
        <ref role="1N5Pi4" node="1TXM2wdK6Bo" resolve="CompositeBlock" />
        <ref role="1N5PlF" node="1TXM2wdK6BV" resolve="I_data" />
      </node>
      <node concept="bR32z" id="1TXM2wdK6DJ" role="bPNfo">
        <property role="bR32p" value="130.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1TXM2wdK6Db" role="3IAhBJ">
      <node concept="3YV02_" id="1TXM2wdK6Dd" role="2RhMKC">
        <ref role="3YV02y" node="1TXM2wdK6Cu" resolve="BaseBlock" />
        <ref role="3YV03s" node="1lAErR$UysR" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="1TXM2wdK6De" role="2RhMK_">
        <ref role="3YV9Vn" node="1TXM2wdK6Bo" resolve="CompositeBlock" />
        <ref role="3YV9Vh" node="27ZLyP6Y5iE" resolve="socket" />
      </node>
      <node concept="bR32z" id="1TXM2wdK6DI" role="bPNfo">
        <property role="bR32p" value="130.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="1TXM2wdK6Gv" role="1N5PiQ">
      <node concept="3YB4oO" id="1TXM2wdK6Gx" role="2RhMKC">
        <ref role="1N5Pi4" node="1TXM2wdK6DS" resolve="socket" />
        <ref role="1N5Pi3" node="3Ofqz6FCMFA" resolve="A_O_Event" />
      </node>
      <node concept="3Yx0EI" id="1TXM2wdK6Gy" role="2RhMK_">
        <ref role="1N5Pi4" node="1TXM2wdK6EZ" resolve="plug" />
        <ref role="1N5Pi3" node="3Ofqz6FCMFA" resolve="A_O_Event" />
      </node>
      <node concept="bR33I" id="1TXM2wdK6Ha" role="bPNfo" />
    </node>
    <node concept="1N5Tq9" id="1TXM2wdK6GO" role="1N5PiV">
      <node concept="3IAhSD" id="1TXM2wdK6GQ" role="2RhMKC">
        <ref role="1N5Pi4" node="1TXM2wdK6DS" resolve="socket" />
        <ref role="1N5PlF" node="3Ofqz6FCMF$" resolve="A_O_Data" />
      </node>
      <node concept="3IAvtB" id="1TXM2wdK6GR" role="2RhMK_">
        <ref role="1N5Pi4" node="1TXM2wdK6EZ" resolve="plug" />
        <ref role="1N5PlF" node="3Ofqz6FCMF$" resolve="A_O_Data" />
      </node>
      <node concept="bR33I" id="1TXM2wdK6Hb" role="bPNfo" />
    </node>
    <node concept="1N5Tq9" id="1TXM2wdK6L_" role="1N5PiV">
      <node concept="3IAhSD" id="1TXM2wdK6LB" role="2RhMKC">
        <ref role="1N5Pi4" node="1TXM2wdK6DS" resolve="socket" />
        <ref role="1N5PlF" node="1TXM2wdK6K$" resolve="A_O_Data2" />
      </node>
      <node concept="3IAvtB" id="1TXM2wdK6LC" role="2RhMK_">
        <ref role="1N5Pi4" node="1TXM2wdK6EZ" resolve="plug" />
        <ref role="1N5PlF" node="1TXM2wdK6K$" resolve="A_O_Data2" />
      </node>
      <node concept="bR32z" id="1TXM2wdK6LD" role="bPNfo">
        <property role="bR32p" value="136.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="1TXM2wdK6zD">
    <property role="TrG5h" value="AdapterNetwork" />
    <node concept="3IBQi5" id="1TXM2wdK6zJ" role="3YHajr">
      <property role="TrG5h" value="plug" />
      <ref role="3IBQi8" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK6zK" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="1TXM2wdK6zE" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="55$H0fDlLwW" resolve="Adapter" />
      <node concept="10YbkR" id="1TXM2wdK6zF" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
  </node>
  <node concept="XJABO" id="1TXM2wdK6_4">
    <property role="TrG5h" value="AdapterFromSocket" />
    <node concept="2zBDeF" id="1TXM2wdK6AJ" role="2zBDeH">
      <property role="TrG5h" value="O_Data" />
      <node concept="3r5wd7" id="1TXM2wdK6AK" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6AR" role="2zBDeH">
      <property role="TrG5h" value="Socket_O_data" />
      <node concept="3r5wd7" id="1TXM2wdK6AS" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6Af" role="2zBDeD">
      <property role="TrG5h" value="I_Data" />
      <node concept="3r5wd7" id="1TXM2wdK6Ag" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6Au" role="2zBDeD">
      <property role="TrG5h" value="Socket_I_data" />
      <node concept="3r5wd7" id="1TXM2wdK6Av" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6_q" role="2zBDew">
      <property role="TrG5h" value="O_event" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6_A" role="2zBDew">
      <property role="TrG5h" value="Socket_O_event" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6_b" role="2zBDey">
      <property role="TrG5h" value="I_event" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6_h" role="2zBDey">
      <property role="TrG5h" value="Socket_I_event" />
    </node>
    <node concept="2iASse" id="1TXM2wdK6_5" role="3mXz50">
      <node concept="2GP0n_" id="1TXM2wdK6_6" role="2GP0$q">
        <property role="TrG5h" value="Plug Connection" />
        <node concept="10YbkR" id="1TXM2wdK6_7" role="3ISU9Q">
          <property role="10YbkC" value="1583.0" />
          <property role="10YbkE" value="399.0" />
        </node>
      </node>
      <node concept="2u7yaZ" id="1TXM2wdK6_8" role="2GP0_B">
        <property role="TrG5h" value="Socket Connection" />
        <node concept="10YbkR" id="1TXM2wdK6_9" role="3ISU9Q">
          <property role="10YbkC" value="0.0" />
          <property role="10YbkE" value="0.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="XJABO" id="1TXM2wdK6KK">
    <property role="TrG5h" value="Adapter" />
    <node concept="2zBDeF" id="1TXM2wdK6KL" role="2zBDeD">
      <property role="TrG5h" value="A_I_Data" />
      <node concept="3r5wd7" id="1TXM2wdK6KM" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6KN" role="2zBDey">
      <property role="TrG5h" value="A_I_Event" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6KO" role="2zBDeH">
      <property role="TrG5h" value="A_O_Data" />
      <node concept="2zB9wT" id="1TXM2wdK6KP" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6KQ" role="2zBDeH">
      <property role="TrG5h" value="A_O_Data" />
      <node concept="3r5wd7" id="1TXM2wdK6KR" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6KS" role="2zBDew">
      <property role="TrG5h" value="A_O_Event" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6KT" role="13zCZz">
      <property role="TrG5h" value="A" />
      <node concept="2zB9wT" id="1TXM2wdK6KU" role="2zB7qv" />
    </node>
    <node concept="3mx2vR" id="1TXM2wdK6KV" role="3mXm6w">
      <property role="TrG5h" value="s" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6KX" role="13zCZx">
      <property role="TrG5h" value="b" />
      <node concept="3r5wd7" id="1TXM2wdK6KY" role="2zB7qv" />
    </node>
    <node concept="3mx2vR" id="1TXM2wdK6KZ" role="tr10f" />
    <node concept="2iASse" id="1TXM2wdK6L1" role="3mXz50">
      <node concept="1qmbkl" id="1TXM2wdK6L2" role="3rj3o">
        <ref role="2zR1Pb" node="1TXM2wdK6KN" resolve="A_I_Event" />
        <node concept="10YbkR" id="1TXM2wdK6L3" role="1qmfRk">
          <property role="10YbkC" value="70.0" />
          <property role="10YbkE" value="703.0" />
        </node>
      </node>
      <node concept="3IAhBk" id="1TXM2wdK6L4" role="3IAhBJ">
        <node concept="3YV02_" id="1TXM2wdK6L5" role="2RhMKC">
          <ref role="3YV02y" node="1TXM2wdK6Lc" resolve="Adapter_router" />
          <ref role="3YV03s" node="4zRBUUqHQz$" resolve="Adapter_plug0" />
        </node>
        <node concept="3YV9EJ" id="1TXM2wdK6L6" role="2RhMK_">
          <ref role="3YV9Vn" node="1TXM2wdK6L8" resolve="AdapterInternal" />
          <ref role="3YV9Vh" node="2PX9bpPSFnI" resolve="socket" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6L7" role="bPNfo">
          <property role="bR32p" value="239.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1TXM2wdK6L8" role="1N5PiY">
        <property role="TrG5h" value="AdapterInternal" />
        <ref role="1N5Tt0" node="2PX9bpPSFnz" resolve="AdapterInternal" />
        <node concept="10YbkR" id="1TXM2wdK6L9" role="b_cXm">
          <property role="10YbkC" value="2313.0" />
          <property role="10YbkE" value="849.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1TXM2wdK6La" role="1N5PiY">
        <property role="TrG5h" value="Adapter Internal" />
        <ref role="1N5Tt0" node="2PX9bpPSFnz" resolve="AdapterInternal" />
        <node concept="10YbkR" id="1TXM2wdK6Lb" role="b_cXm">
          <property role="10YbkC" value="2060.0" />
          <property role="10YbkE" value="99.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1TXM2wdK6Lc" role="1N5PiY">
        <property role="TrG5h" value="Adapter_router" />
        <ref role="1N5Tt0" node="4zRBUUqHQzw" resolve="Adapter_router" />
        <node concept="10YbkR" id="1TXM2wdK6Ld" role="b_cXm">
          <property role="10YbkC" value="570.0" />
          <property role="10YbkE" value="959.0" />
        </node>
      </node>
      <node concept="3IAhBk" id="1TXM2wdK6Le" role="3IAhBJ">
        <node concept="3YV02_" id="1TXM2wdK6Lf" role="2RhMKC">
          <ref role="3YV02y" node="1TXM2wdK6Lc" resolve="Adapter_router" />
          <ref role="3YV03s" node="4zRBUUqHQz$" resolve="Adapter_plug0" />
        </node>
        <node concept="3YV9EJ" id="1TXM2wdK6Lg" role="2RhMK_">
          <ref role="3YV9Vn" node="1TXM2wdK6L8" resolve="AdapterInternal" />
          <ref role="3YV9Vh" node="2PX9bpPSFox" resolve="plugSettings" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6Lh" role="bPNfo">
          <property role="bR32p" value="376.0" />
        </node>
      </node>
      <node concept="3IAhBk" id="1TXM2wdK6Li" role="3IAhBJ">
        <node concept="3YV02_" id="1TXM2wdK6Lj" role="2RhMKC">
          <ref role="3YV02y" node="1TXM2wdK6Lc" resolve="Adapter_router" />
          <ref role="3YV03s" node="4zRBUUqHQzB" resolve="Adapter_plug1" />
        </node>
        <node concept="3YV9EJ" id="1TXM2wdK6Lk" role="2RhMK_">
          <ref role="3YV9Vn" node="1TXM2wdK6L8" resolve="AdapterInternal" />
          <ref role="3YV9Vh" node="6VIdscZVrbT" resolve="socketSettings" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6Ll" role="bPNfo">
          <property role="bR32p" value="423.0" />
        </node>
      </node>
      <node concept="1qmbkl" id="1TXM2wdK6Lm" role="3rj3o">
        <ref role="2zR1Pb" node="1TXM2wdK6KL" resolve="A_I_Data" />
        <node concept="10YbkR" id="1TXM2wdK6Ln" role="1qmfRk">
          <property role="10YbkC" value="196.0" />
          <property role="10YbkE" value="253.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6Lo" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6Lp" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6La" resolve="Adapter Internal" />
          <ref role="1N5Pi3" node="dU6sbJIZfL" resolve="b" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6Lq" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6L8" resolve="AdapterInternal" />
          <ref role="1N5Pi3" node="72THbUidHBI" resolve="a" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6Lr" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="390.0" />
          <property role="bR73k" value="130.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6Ls" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6Lt" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6La" resolve="Adapter Internal" />
          <ref role="1N5Pi3" node="dU6sbJIZfL" resolve="b" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6Lu" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6L8" resolve="AdapterInternal" />
          <ref role="1N5Pi3" node="72THbUidHBI" resolve="a" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6Lv" role="bPNfo">
          <property role="bR73D" value="133.0" />
          <property role="bR73n" value="373.0" />
          <property role="bR73k" value="133.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="XJABO" id="1TXM2wdK6Q4">
    <property role="TrG5h" value="ExtendedAdapterExample" />
    <node concept="2zBDeF" id="1TXM2wdK6Q5" role="2zBDeH">
      <property role="TrG5h" value="O_Data" />
      <node concept="3r5wd7" id="1TXM2wdK6Q6" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6Q7" role="2zBDeD">
      <property role="TrG5h" value="I_Data" />
      <node concept="3r5wd7" id="1TXM2wdK6Q8" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6Q9" role="2zBDew">
      <property role="TrG5h" value="O_event" />
    </node>
    <node concept="2zBDe_" id="1TXM2wdK6Qa" role="2zBDey">
      <property role="TrG5h" value="I_event" />
    </node>
    <node concept="2iASse" id="1TXM2wdK6Qb" role="3mXz50">
      <node concept="1N5Tt1" id="1TXM2wdK6Qc" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock2" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="1TXM2wdK6Qd" role="b_cXm">
          <property role="10YbkC" value="1899.0" />
          <property role="10YbkE" value="1400.0" />
        </node>
      </node>
      <node concept="2GP0n_" id="1TXM2wdK6Qe" role="2GP0$q">
        <property role="TrG5h" value="Plug Connection" />
        <node concept="10YbkR" id="1TXM2wdK6Qf" role="3ISU9Q">
          <property role="10YbkC" value="2233.0" />
          <property role="10YbkE" value="813.0" />
        </node>
      </node>
      <node concept="2u7yaZ" id="1TXM2wdK6Qg" role="2GP0_B">
        <property role="TrG5h" value="Socket Connection" />
        <node concept="10YbkR" id="1TXM2wdK6Qh" role="3ISU9Q">
          <property role="10YbkC" value="600.0" />
          <property role="10YbkE" value="826.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6Qi" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6Qj" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6Qg" resolve="Socket Connection" />
          <ref role="1N5Pi3" node="1TXM2wdK6Q9" resolve="O_event" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6Qk" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6Qc" resolve="BaseBlock2" />
          <ref role="1N5Pi3" node="1lAErR$Uysn" resolve="I_event" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6Ql" role="bPNfo">
          <property role="bR32p" value="190.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="1TXM2wdK6Qm" role="1N5PiV">
        <node concept="3IAhSD" id="1TXM2wdK6Qn" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6Qg" resolve="Socket Connection" />
          <ref role="1N5PlF" node="1TXM2wdK6Q5" resolve="O_Data" />
        </node>
        <node concept="3IAvtB" id="1TXM2wdK6Qo" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6Qc" resolve="BaseBlock2" />
          <ref role="1N5PlF" node="1lAErR$Uysv" resolve="I_data" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6Qp" role="bPNfo">
          <property role="bR32p" value="160.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1TXM2wdK6Qq" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock1" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="1TXM2wdK6Qr" role="b_cXm">
          <property role="10YbkC" value="943.0" />
          <property role="10YbkE" value="1430.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6Qs" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6Qt" role="2RhMKC">
          <ref role="1N5Pi3" node="1TXM2wdK6Rt" resolve="Socket_I_event" />
          <ref role="1N5Pi4" node="1TXM2wdK6Qg" resolve="Socket Connection" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6Qu" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6Qq" resolve="BaseBlock1" />
          <ref role="1N5Pi3" node="1lAErR$Uysn" resolve="I_event" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6Qv" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="314.0" />
          <property role="bR73k" value="130.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="1TXM2wdK6Qw" role="1N5PiV">
        <node concept="3IAhSD" id="1TXM2wdK6Qx" role="2RhMKC">
          <ref role="1N5PlF" node="1TXM2wdK6Rw" resolve="Socket_I_data" />
          <ref role="1N5Pi4" node="1TXM2wdK6Qg" resolve="Socket Connection" />
        </node>
        <node concept="3IAvtB" id="1TXM2wdK6Qy" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6Qq" resolve="BaseBlock1" />
          <ref role="1N5PlF" node="1lAErR$Uysv" resolve="I_data" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6Qz" role="bPNfo">
          <property role="bR73D" value="84.0" />
          <property role="bR73n" value="190.0" />
          <property role="bR73k" value="190.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6Q$" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6Q_" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6Qq" resolve="BaseBlock1" />
          <ref role="1N5Pi3" node="1lAErR$Uysr" resolve="O_event" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6QA" role="2RhMK_">
          <ref role="1N5Pi3" node="1TXM2wdK6Q9" resolve="O_event" />
          <ref role="1N5Pi4" node="1TXM2wdK6Qe" resolve="Plug Connection" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6QB" role="bPNfo">
          <property role="bR32p" value="303.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="1TXM2wdK6QC" role="1N5PiV">
        <node concept="3IAhSD" id="1TXM2wdK6QD" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6Qq" resolve="BaseBlock1" />
          <ref role="1N5PlF" node="1lAErR$UysC" resolve="O_data" />
        </node>
        <node concept="3IAvtB" id="1TXM2wdK6QE" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6Qe" resolve="Plug Connection" />
          <ref role="1N5PlF" node="1TXM2wdK6Q5" resolve="O_Data" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6QF" role="bPNfo">
          <property role="bR32p" value="377.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6QG" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6QH" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6Qc" resolve="BaseBlock2" />
          <ref role="1N5Pi3" node="1lAErR$Uysr" resolve="O_event" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6QI" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6Qe" resolve="Plug Connection" />
          <ref role="1N5Pi3" node="1TXM2wdK6R$" resolve="Plug_O_event" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6QJ" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="-247.0" />
          <property role="bR73k" value="77.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="1TXM2wdK6QK" role="1N5PiV">
        <node concept="3IAhSD" id="1TXM2wdK6QL" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6Qc" resolve="BaseBlock2" />
          <ref role="1N5PlF" node="1lAErR$UysC" resolve="O_data" />
        </node>
        <node concept="3IAvtB" id="1TXM2wdK6QM" role="2RhMK_">
          <ref role="1N5PlF" node="1TXM2wdK6RB" resolve="Plug_O_data" />
          <ref role="1N5Pi4" node="1TXM2wdK6Qe" resolve="Plug Connection" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6QN" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="-210.0" />
          <property role="bR73k" value="130.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1TXM2wdK6QO" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock4" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="1TXM2wdK6QP" role="b_cXm">
          <property role="10YbkC" value="-153.0" />
          <property role="10YbkE" value="933.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6QQ" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6QR" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6Qe" resolve="Plug Connection" />
          <ref role="1N5Pi3" node="1TXM2wdK6Qa" resolve="I_event" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6QS" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6QO" resolve="BaseBlock4" />
          <ref role="1N5Pi3" node="1lAErR$Uysn" resolve="I_event" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6QT" role="bPNfo">
          <property role="bR73D" value="80.0" />
          <property role="bR73n" value="-120.0" />
          <property role="bR73k" value="130.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="1TXM2wdK6QU" role="1N5PiV">
        <node concept="3IAhSD" id="1TXM2wdK6QV" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6Qe" resolve="Plug Connection" />
          <ref role="1N5PlF" node="1TXM2wdK6Q7" resolve="I_Data" />
        </node>
        <node concept="3IAvtB" id="1TXM2wdK6QW" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6QO" resolve="BaseBlock4" />
          <ref role="1N5PlF" node="1lAErR$Uysv" resolve="I_data" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6QX" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="-293.0" />
          <property role="bR73k" value="130.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="1TXM2wdK6QY" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock3" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="1TXM2wdK6QZ" role="b_cXm">
          <property role="10YbkC" value="-150.0" />
          <property role="10YbkE" value="409.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6R0" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6R1" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6Qe" resolve="Plug Connection" />
          <ref role="1N5Pi3" node="1TXM2wdK6RD" resolve="Plug_I_event" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6R2" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6QY" resolve="BaseBlock3" />
          <ref role="1N5Pi3" node="1lAErR$Uysn" resolve="I_event" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6R3" role="bPNfo">
          <property role="bR73D" value="220.0" />
          <property role="bR73n" value="-600.0" />
          <property role="bR73k" value="117.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="1TXM2wdK6R4" role="1N5PiV">
        <node concept="3IAhSD" id="1TXM2wdK6R5" role="2RhMKC">
          <ref role="1N5PlF" node="1TXM2wdK6R_" resolve="Plug_I_data" />
          <ref role="1N5Pi4" node="1TXM2wdK6Qe" resolve="Plug Connection" />
        </node>
        <node concept="3IAvtB" id="1TXM2wdK6R6" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6QY" resolve="BaseBlock3" />
          <ref role="1N5PlF" node="1lAErR$Uysv" resolve="I_data" />
        </node>
        <node concept="bR73E" id="1TXM2wdK6R7" role="bPNfo">
          <property role="bR73D" value="180.0" />
          <property role="bR73n" value="-743.0" />
          <property role="bR73k" value="117.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6R8" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6R9" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6QY" resolve="BaseBlock3" />
          <ref role="1N5Pi3" node="1lAErR$Uysr" resolve="O_event" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6Ra" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6Qg" resolve="Socket Connection" />
          <ref role="1N5Pi3" node="1TXM2wdK6Qa" resolve="I_event" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6Rb" role="bPNfo">
          <property role="bR32p" value="183.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="1TXM2wdK6Rc" role="1N5PiV">
        <node concept="3IAhSD" id="1TXM2wdK6Rd" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6QY" resolve="BaseBlock3" />
          <ref role="1N5PlF" node="1lAErR$UysC" resolve="O_data" />
        </node>
        <node concept="3IAvtB" id="1TXM2wdK6Re" role="2RhMK_">
          <ref role="1N5PlF" node="1TXM2wdK6Q7" resolve="I_Data" />
          <ref role="1N5Pi4" node="1TXM2wdK6Qg" resolve="Socket Connection" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6Rf" role="bPNfo">
          <property role="bR32p" value="140.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="1TXM2wdK6Rg" role="1N5PiQ">
        <node concept="3YB4oO" id="1TXM2wdK6Rh" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6QO" resolve="BaseBlock4" />
          <ref role="1N5Pi3" node="1lAErR$Uysr" resolve="O_event" />
        </node>
        <node concept="3Yx0EI" id="1TXM2wdK6Ri" role="2RhMK_">
          <ref role="1N5Pi3" node="1TXM2wdK6Ry" resolve="Socket_O_event" />
          <ref role="1N5Pi4" node="1TXM2wdK6Qg" resolve="Socket Connection" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6Rj" role="bPNfo">
          <property role="bR32p" value="136.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="1TXM2wdK6Rk" role="1N5PiV">
        <node concept="3IAhSD" id="1TXM2wdK6Rl" role="2RhMKC">
          <ref role="1N5Pi4" node="1TXM2wdK6QO" resolve="BaseBlock4" />
          <ref role="1N5PlF" node="1lAErR$UysC" resolve="O_data" />
        </node>
        <node concept="3IAvtB" id="1TXM2wdK6Rm" role="2RhMK_">
          <ref role="1N5Pi4" node="1TXM2wdK6Qg" resolve="Socket Connection" />
          <ref role="1N5PlF" node="1TXM2wdK6Ru" resolve="Socket_O_data" />
        </node>
        <node concept="bR32z" id="1TXM2wdK6Rn" role="bPNfo">
          <property role="bR32p" value="136.0" />
        </node>
      </node>
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6Ro" role="13zCZz">
      <property role="TrG5h" value="router" />
      <node concept="3r5wd7" id="1TXM2wdK6Rp" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1TXM2wdK6Rq" role="13zCZx">
      <property role="TrG5h" value="sender_number" />
      <node concept="3r5wd7" id="1TXM2wdK6Rr" role="2zB7qv" />
    </node>
    <node concept="3mx2vR" id="1TXM2wdK6Rs" role="3mXm6w">
      <node concept="2zBDe_" id="1TXM2wdK6Rt" role="2zBDey">
        <property role="TrG5h" value="Socket_I_event" />
      </node>
      <node concept="2zBDeF" id="1TXM2wdK6Ru" role="2zBDeH">
        <property role="TrG5h" value="Socket_O_data" />
        <node concept="3r5wd7" id="1TXM2wdK6Rv" role="2zB7qv" />
      </node>
      <node concept="2zBDeF" id="1TXM2wdK6Rw" role="2zBDeD">
        <property role="TrG5h" value="Socket_I_data" />
        <node concept="3r5wd7" id="1TXM2wdK6Rx" role="2zB7qv" />
      </node>
      <node concept="2zBDe_" id="1TXM2wdK6Ry" role="2zBDew">
        <property role="TrG5h" value="Socket_O_event" />
      </node>
    </node>
    <node concept="3mx2vR" id="1TXM2wdK6Rz" role="tr10f">
      <node concept="2zBDe_" id="1TXM2wdK6R$" role="2zBDew">
        <property role="TrG5h" value="Plug_O_event" />
      </node>
      <node concept="2zBDeF" id="1TXM2wdK6R_" role="2zBDeD">
        <property role="TrG5h" value="Plug_I_data" />
        <node concept="3r5wd7" id="1TXM2wdK6RA" role="2zB7qv" />
      </node>
      <node concept="2zBDeF" id="1TXM2wdK6RB" role="2zBDeH">
        <property role="TrG5h" value="Plug_O_data" />
        <node concept="3r5wd7" id="1TXM2wdK6RC" role="2zB7qv" />
      </node>
      <node concept="2zBDe_" id="1TXM2wdK6RD" role="2zBDey">
        <property role="TrG5h" value="Plug_I_event" />
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
  <node concept="2xRpA$" id="zLFK_aQjBx">
    <property role="TrG5h" value="EA2" />
    <node concept="2zBDeF" id="1YAnAaAosSy" role="2zBDeH">
      <property role="TrG5h" value="Data_O" />
      <node concept="2zB9wT" id="1YAnAaAosSA" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1YAnAaAosSr" role="2zBDeD">
      <property role="TrG5h" value="Data_I" />
      <node concept="3r5wd7" id="1YAnAaAosSv" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1YAnAaAosSp" role="2zBDew">
      <property role="TrG5h" value="Event_O" />
    </node>
    <node concept="2zBDe_" id="1YAnAaAosSn" role="2zBDey">
      <property role="TrG5h" value="Event_I" />
    </node>
    <node concept="2iASse" id="zLFK_aQjBy" role="3mXz4Z">
      <property role="TrG5h" value="network1" />
      <node concept="3IAhBk" id="43a7K48E59v" role="3IAhBJ">
        <node concept="3YV02_" id="43a7K48E59x" role="2RhMKC">
          <ref role="3YV02y" node="43a7K48E58z" resolve="BaseBlock" />
          <ref role="3YV03s" node="1lAErR$UysR" resolve="plug" />
        </node>
        <node concept="3YV9EJ" id="43a7K48E59y" role="2RhMK_">
          <ref role="3YV9Vn" node="43a7K48E58I" resolve="BaseBlock" />
          <ref role="3YV9Vh" node="1lAErR$UysL" resolve="socket" />
        </node>
        <node concept="bR32z" id="5d0CGpFWejd" role="bPNfo">
          <property role="bR32p" value="597.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="43a7K48E58z" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="43a7K48E58_" role="b_cXm">
          <property role="10YbkC" value="536.0" />
          <property role="10YbkE" value="1326.0" />
        </node>
      </node>
      <node concept="2GP0n_" id="zLFK_aQjBz" role="2GP0$q">
        <property role="TrG5h" value="Plug Connection" />
        <node concept="10YbkR" id="zLFK_aQjB$" role="3ISU9Q">
          <property role="10YbkC" value="2126.0" />
          <property role="10YbkE" value="126.0" />
        </node>
      </node>
      <node concept="2u7yaZ" id="zLFK_aQjB_" role="2GP0_B">
        <property role="TrG5h" value="Socket Connection" />
        <node concept="10YbkR" id="zLFK_aQjBA" role="3ISU9Q">
          <property role="10YbkC" value="576.0" />
          <property role="10YbkE" value="290.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="43a7K48E58I" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock" />
        <ref role="1N5Tt0" node="1lAErR$Uysj" resolve="BaseBlock" />
        <node concept="10YbkR" id="43a7K48E58K" role="b_cXm">
          <property role="10YbkC" value="2023.0" />
          <property role="10YbkE" value="1470.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="43a7K48E58P" role="1N5PiQ">
        <node concept="3YB4oO" id="43a7K48E58R" role="2RhMKC">
          <ref role="1N5Pi4" node="43a7K48E58z" resolve="BaseBlock" />
          <ref role="1N5Pi3" node="1lAErR$Uysr" resolve="O_event" />
        </node>
        <node concept="3Yx0EI" id="43a7K48E58S" role="2RhMK_">
          <ref role="1N5Pi4" node="43a7K48E58I" resolve="BaseBlock" />
          <ref role="1N5Pi3" node="1lAErR$Uysn" resolve="I_event" />
        </node>
        <node concept="bR32z" id="5d0CGpFWej9" role="bPNfo">
          <property role="bR32p" value="597.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="43a7K48E597" role="1N5PiV">
        <node concept="3IAhSD" id="43a7K48E599" role="2RhMKC">
          <ref role="1N5Pi4" node="43a7K48E58z" resolve="BaseBlock" />
          <ref role="1N5PlF" node="1lAErR$UysC" resolve="O_data" />
        </node>
        <node concept="3IAvtB" id="43a7K48E59a" role="2RhMK_">
          <ref role="1N5Pi4" node="43a7K48E58I" resolve="BaseBlock" />
          <ref role="1N5PlF" node="1lAErR$Uysv" resolve="I_data" />
        </node>
        <node concept="bR32z" id="5d0CGpFWejb" role="bPNfo">
          <property role="bR32p" value="597.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="43a7K48E59D" role="1N5PiQ">
        <node concept="3YB4oO" id="43a7K48E59F" role="2RhMKC">
          <ref role="1N5Pi4" node="43a7K48E58I" resolve="BaseBlock" />
          <ref role="1N5Pi3" node="1lAErR$Uysr" resolve="O_event" />
        </node>
        <node concept="3Yx0EI" id="43a7K48E59G" role="2RhMK_">
          <ref role="1N5Pi4" node="43a7K48E58z" resolve="BaseBlock" />
          <ref role="1N5Pi3" node="1lAErR$Uysn" resolve="I_event" />
        </node>
        <node concept="bR73E" id="5d0CGpFWejc" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="-780.0" />
          <property role="bR73k" value="130.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="43a7K48E59Z" role="1N5PiV">
        <node concept="3IAhSD" id="43a7K48E5a1" role="2RhMKC">
          <ref role="1N5Pi4" node="43a7K48E58I" resolve="BaseBlock" />
          <ref role="1N5PlF" node="1lAErR$UysC" resolve="O_data" />
        </node>
        <node concept="3IAvtB" id="43a7K48E5a2" role="2RhMK_">
          <ref role="1N5Pi4" node="43a7K48E58z" resolve="BaseBlock" />
          <ref role="1N5PlF" node="1lAErR$Uysv" resolve="I_data" />
        </node>
        <node concept="bR73E" id="5d0CGpFWeje" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="-446.0" />
          <property role="bR73k" value="130.0" />
        </node>
      </node>
      <node concept="3IAhBk" id="43a7K48E5al" role="3IAhBJ">
        <node concept="3YV02_" id="43a7K48E5an" role="2RhMKC">
          <ref role="3YV02y" node="43a7K48E58I" resolve="BaseBlock" />
          <ref role="3YV03s" node="1lAErR$UysR" resolve="plug" />
        </node>
        <node concept="3YV9EJ" id="43a7K48E5ao" role="2RhMK_">
          <ref role="3YV9Vn" node="43a7K48E58z" resolve="BaseBlock" />
          <ref role="3YV9Vh" node="1lAErR$UysL" resolve="socket" />
        </node>
        <node concept="bR73E" id="5d0CGpFWeja" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="-446.0" />
          <property role="bR73k" value="130.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="5VrGpiki5uG" role="1N5PiQ">
        <node concept="3YB4oO" id="5VrGpiki5uI" role="2RhMKC">
          <ref role="1N5Pi4" node="zLFK_aQjB_" resolve="Socket Connection" />
          <ref role="1N5Pi3" node="1YAnAaAosSp" resolve="Event_O" />
        </node>
        <node concept="3Yx0EI" id="5VrGpiki5uJ" role="2RhMK_">
          <ref role="1N5Pi4" node="zLFK_aQjBz" resolve="Plug Connection" />
          <ref role="1N5Pi3" node="1YAnAaAosSp" resolve="Event_O" />
        </node>
        <node concept="bR32z" id="5VrGpiki5vi" role="bPNfo">
          <property role="bR32p" value="607.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="5VrGpiki5uY" role="1N5PiV">
        <node concept="3IAhSD" id="5VrGpiki5v0" role="2RhMKC">
          <ref role="1N5Pi4" node="zLFK_aQjB_" resolve="Socket Connection" />
          <ref role="1N5PlF" node="1YAnAaAosSy" resolve="Data_O" />
        </node>
        <node concept="3IAvtB" id="5VrGpiki5v1" role="2RhMK_">
          <ref role="1N5Pi4" node="zLFK_aQjBz" resolve="Plug Connection" />
          <ref role="1N5PlF" node="1YAnAaAosSy" resolve="Data_O" />
        </node>
        <node concept="bR32z" id="5VrGpiki5vj" role="bPNfo">
          <property role="bR32p" value="533.0" />
        </node>
      </node>
    </node>
    <node concept="3mx2vR" id="5f2QmZcXPz9" role="3mXm6v">
      <node concept="2zBDe_" id="fKYe1wD09M" role="2zBDey">
        <property role="TrG5h" value="Socket_I_Event" />
      </node>
    </node>
    <node concept="2zBDeF" id="fKYe1wD09$" role="13zCZy">
      <property role="TrG5h" value="I_router" />
      <node concept="3r5wd7" id="fKYe1wD09C" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="fKYe1wD09F" role="13zCZw">
      <property role="TrG5h" value="O_router" />
      <node concept="3r5wd7" id="fKYe1wD09J" role="2zB7qv" />
    </node>
    <node concept="3mx2vR" id="fKYe1wD09O" role="tr10e">
      <node concept="2zBDe_" id="fKYe1wD09Q" role="2zBDey">
        <property role="TrG5h" value="Plug_I_Event" />
      </node>
    </node>
    <node concept="2iASse" id="8ULS8pCShL" role="6HEdv">
      <property role="TrG5h" value="network2" />
      <node concept="1N5Tqi" id="5d0CGpFWehB" role="1N5PiQ">
        <node concept="3YB4oO" id="5d0CGpFWehD" role="2RhMKC">
          <ref role="1N5Pi4" node="8ULS8pCShO" resolve="Socket Connection" />
          <ref role="1N5Pi3" node="1YAnAaAosSp" resolve="Event_O" />
        </node>
        <node concept="3Yx0EI" id="5d0CGpFWehE" role="2RhMK_">
          <ref role="1N5Pi4" node="8ULS8pCShM" resolve="Plug Connection" />
          <ref role="1N5Pi3" node="1YAnAaAosSp" resolve="Event_O" />
        </node>
        <node concept="bR32z" id="5d0CGpFWehF" role="bPNfo">
          <property role="bR32p" value="470.0" />
        </node>
      </node>
      <node concept="2GP0n_" id="8ULS8pCShM" role="2GP0$q">
        <property role="TrG5h" value="Plug Connection" />
        <node concept="10YbkR" id="8ULS8pCShN" role="3ISU9Q">
          <property role="10YbkC" value="2076.0" />
          <property role="10YbkE" value="949.0" />
        </node>
      </node>
      <node concept="2u7yaZ" id="8ULS8pCShO" role="2GP0_B">
        <property role="TrG5h" value="Socket Connection" />
        <node concept="10YbkR" id="8ULS8pCShP" role="3ISU9Q">
          <property role="10YbkC" value="466.0" />
          <property role="10YbkE" value="1006.0" />
        </node>
      </node>
    </node>
  </node>
</model>

