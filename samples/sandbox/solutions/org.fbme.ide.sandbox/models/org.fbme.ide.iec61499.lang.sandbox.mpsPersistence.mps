<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cb7bb46e-db4e-4c60-8bfe-1c06690663cc(org.fbme.ide.iec61499.lang.sandbox.mpsPersistence)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang" version="0" />
    <use id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="org.fbme.ide.st.lang" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="org.fbme.ide.st.lang">
      <concept id="4280485643802239115" name="org.fbme.ide.st.lang.structure.EqualsExpression" flags="ng" index="2zAFu8" />
      <concept id="4280485643802239119" name="org.fbme.ide.st.lang.structure.VariableReference" flags="ng" index="2zAFuc">
        <reference id="4280485643802239120" name="declaration" index="2zAFuj" />
      </concept>
      <concept id="4280485643802239122" name="org.fbme.ide.st.lang.structure.DecIntegerLiteral" flags="ng" index="2zAFuh">
        <property id="4280485643802239123" name="value" index="2zAFug" />
      </concept>
      <concept id="4280485643802054397" name="org.fbme.ide.st.lang.structure.UIntType" flags="ng" index="2zB5BY" />
      <concept id="4280485643802103610" name="org.fbme.ide.st.lang.structure.BoolType" flags="ng" index="2zB9wT" />
      <concept id="185023738902821179" name="org.fbme.ide.st.lang.structure.UnaryExpression" flags="ng" index="UK6WB">
        <child id="8872717756044728347" name="expression" index="1yuI7h" />
      </concept>
      <concept id="4435217627499935168" name="org.fbme.ide.st.lang.structure.BinaryExpression" flags="ng" index="398zGI">
        <child id="4435217627499935199" name="right" index="398zGL" />
        <child id="4435217627499935197" name="left" index="398zGN" />
      </concept>
      <concept id="2377145822810428106" name="org.fbme.ide.st.lang.structure.ByteType" flags="ng" index="3r5wdd" />
      <concept id="2377145822810446367" name="org.fbme.ide.st.lang.structure.DerivedType" flags="ng" index="3r5GIo">
        <reference id="2377145822810764011" name="declaration" index="3r3idG" />
      </concept>
      <concept id="2377145822810446368" name="org.fbme.ide.st.lang.structure.DataTypeDeclaration" flags="ng" index="3r5GIB">
        <child id="2377145822810763976" name="spec" index="3r3idf" />
      </concept>
      <concept id="2377145822813873343" name="org.fbme.ide.st.lang.structure.ArrayTypeSpec" flags="ng" index="3sSFkS">
        <child id="2377145822813873344" name="baseType" index="3sSFl7" />
        <child id="2377145822813873864" name="subranges" index="3sSFtf" />
      </concept>
      <concept id="2377145822813873263" name="org.fbme.ide.st.lang.structure.Subrange" flags="ng" index="3sSFnC">
        <child id="2377145822811274024" name="from" index="3r1mEJ" />
        <child id="2377145822811274032" name="to" index="3r1mER" />
      </concept>
      <concept id="8872717756041501703" name="org.fbme.ide.st.lang.structure.IfStatement" flags="ng" index="1y1qnd">
        <child id="8872717756041501782" name="thenClause" index="1y1qms" />
        <child id="8872717756041501704" name="condition" index="1y1qn2" />
      </concept>
      <concept id="8872717756041500089" name="org.fbme.ide.st.lang.structure.StatementList" flags="ng" index="1y1qLN">
        <child id="8872717756041500466" name="statements" index="1y1qVS" />
      </concept>
      <concept id="8872717756041500654" name="org.fbme.ide.st.lang.structure.AssignmentStatement" flags="ng" index="1y1qS$">
        <child id="8872717756041500659" name="expression" index="1y1qST" />
        <child id="8872717756041500657" name="variable" index="1y1qSV" />
      </concept>
      <concept id="8872717756044728375" name="org.fbme.ide.st.lang.structure.NotExpression" flags="ng" index="1yuI7X" />
      <concept id="8872717756044722477" name="org.fbme.ide.st.lang.structure.GreaterExpression" flags="ng" index="1yuJzB" />
      <concept id="2693352324616754506" name="org.fbme.ide.st.lang.structure.BooleanLiteral" flags="ng" index="1QCq3x" />
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
        <child id="2693352324628235074" name="initialValue" index="1L4frD" />
      </concept>
      <concept id="4280485643801969849" name="org.fbme.ide.iec61499.lang.structure.EventAssociation" flags="ng" index="2zBDeU">
        <reference id="4280485643801969850" name="declaration" index="2zBDeT" />
      </concept>
      <concept id="4280485643801969857" name="org.fbme.ide.iec61499.lang.structure.BasicFBTypeDeclaration" flags="ng" index="2zBDf2">
        <child id="4280485643802119995" name="algorithms" index="2zAPwS" />
        <child id="4280485643802119997" name="states" index="2zAPwY" />
        <child id="4280485643802120037" name="transitions" index="2zAPxA" />
        <child id="4280485643802032561" name="internalVariables" index="2zBuUM" />
      </concept>
      <concept id="7206730950341598082" name="org.fbme.ide.iec61499.lang.structure.TransitionCondition" flags="ng" index="2EVYwv">
        <child id="7206730950341598650" name="guardCondition" index="2EVYSB" />
        <child id="3296901243641762237" name="event" index="2N3Qeb" />
      </concept>
      <concept id="2250044605250911632" name="org.fbme.ide.iec61499.lang.structure.ResourceTypeReference" flags="ng" index="2JYBSP">
        <reference id="2250044605250911633" name="decl" index="2JYBSO" />
      </concept>
      <concept id="2250044605250911586" name="org.fbme.ide.iec61499.lang.structure.DeviceDeclaration" flags="ng" index="2JYBV7">
        <reference id="2250044605250911589" name="type" index="2JYBV0" />
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
      <concept id="3018159903918047621" name="org.fbme.ide.iec61499.lang.structure.AdapterTypeDeclaration" flags="ng" index="XJABO" />
      <concept id="6049904230683977455" name="org.fbme.ide.iec61499.lang.structure.Position" flags="ng" index="10YbkR">
        <property id="6049904230683977456" name="x" index="10YbkC" />
        <property id="6049904230683977458" name="y" index="10YbkE" />
      </concept>
      <concept id="6279537560535774753" name="org.fbme.ide.iec61499.lang.structure.SegmentTypeDeclaration" flags="ng" index="16k505">
        <child id="6279537560535774808" name="parameters" index="16k51W" />
      </concept>
      <concept id="6279537560535821563" name="org.fbme.ide.iec61499.lang.structure.SegmentDeclaration" flags="ng" index="16k8Fv">
        <reference id="6279537560535821566" name="type" index="16k8Fq" />
        <child id="6279537560535821616" name="parameters" index="16k8Gk" />
      </concept>
      <concept id="6279537560537435403" name="org.fbme.ide.iec61499.lang.structure.Link" flags="ng" index="16EYGJ">
        <reference id="6279537560537435409" name="segment" index="16EYGP" />
        <child id="6279537560537435404" name="resource" index="16EYGC" />
      </concept>
      <concept id="1794427914277800439" name="org.fbme.ide.iec61499.lang.structure.STAlgorithmBody" flags="ng" index="1tttXp">
        <child id="8872717756042118835" name="body" index="1y4NXT" />
      </concept>
      <concept id="3589220129093680090" name="org.fbme.ide.iec61499.lang.structure.SocketDeclaration" flags="ng" index="3Iw0dE">
        <reference id="3589220129093680093" name="adapterType" index="3Iw0dH" />
        <child id="7816599728425115160" name="position" index="2oiVCh" />
      </concept>
      <concept id="3589220129094585243" name="org.fbme.ide.iec61499.lang.structure.ContextDataDestination" flags="ng" index="3I$zcF" />
      <concept id="3589220129094554521" name="org.fbme.ide.iec61499.lang.structure.ContextDataSource" flags="ng" index="3I$UGD" />
      <concept id="3589220129094132068" name="org.fbme.ide.iec61499.lang.structure.AdapterConnection" flags="ng" index="3IAhBk" />
      <concept id="3589220129094133401" name="org.fbme.ide.iec61499.lang.structure.ComponentDataSource" flags="ng" index="3IAhSD" />
      <concept id="3589220129094146209" name="org.fbme.ide.iec61499.lang.structure.ContextDataEndpoint" flags="ng" index="3IAu0h">
        <reference id="3589220129094146210" name="declaration" index="3IAu0i" />
      </concept>
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
      <concept id="554302972928539608" name="org.fbme.ide.iec61499.lang.structure.SubapplicationReference" flags="ng" index="3KU7L5">
        <reference id="554302972928539617" name="subapp" index="3KU7LW" />
        <child id="554302972928539611" name="parentApp" index="3KU7L6" />
      </concept>
      <concept id="554302972928570264" name="org.fbme.ide.iec61499.lang.structure.ResourceFunctionBlockReference" flags="ng" index="3KUfg5">
        <reference id="554302972930397634" name="functionBlock" index="3KLd9v" />
        <child id="554302972930397632" name="resource" index="3KLd9t" />
      </concept>
      <concept id="554302972921896510" name="org.fbme.ide.iec61499.lang.structure.DeclarationWithInterfaceAndAdapters" flags="ng" index="3LgDAz">
        <child id="8167217573769997767" name="plugs" index="3YHajr" />
        <child id="8167217573769997794" name="sockets" index="3YHajY" />
      </concept>
      <concept id="554302972921888569" name="org.fbme.ide.iec61499.lang.structure.SubapplicationTypeDeclaration" flags="ng" index="3LgJy$" />
      <concept id="554302972921888566" name="org.fbme.ide.iec61499.lang.structure.SubapplicationDeclaration" flags="ng" index="3LgJyF">
        <reference id="554302972921888567" name="type" index="3LgJyE" />
        <child id="8516149469254321801" name="position" index="n9Bpr" />
      </concept>
      <concept id="554302972921797056" name="org.fbme.ide.iec61499.lang.structure.IWithSubappNetwork" flags="ng" index="3LgLTt">
        <child id="554302972921888575" name="subapplications" index="3LgJyy" />
      </concept>
      <concept id="2693352324629967306" name="org.fbme.ide.iec61499.lang.structure.ParameterAssignment" flags="ng" index="1LUwhx">
        <reference id="2693352324629967307" name="decl" index="1LUwhw" />
        <child id="2693352324629967311" name="value" index="1LUwh$" />
      </concept>
      <concept id="2693352324629965896" name="org.fbme.ide.iec61499.lang.structure.DeviceTypeDeclaration" flags="ng" index="1LUxBz">
        <child id="2250044605250911628" name="instantiableResourceTypes" index="2JYBSD" />
        <child id="2693352324630440422" name="resources" index="1LWlLd" />
      </concept>
      <concept id="2693352324629965912" name="org.fbme.ide.iec61499.lang.structure.ResourceDeclaration" flags="ng" index="1LUxBN">
        <reference id="2693352324629965913" name="type" index="1LUxBM" />
      </concept>
      <concept id="967875482185482517" name="org.fbme.ide.iec61499.lang.structure.ComponentEventEndpoint" flags="ng" index="1N5Pia">
        <reference id="967875482185482524" name="declaration" index="1N5Pi3" />
      </concept>
      <concept id="967875482185482492" name="org.fbme.ide.iec61499.lang.structure.ComponentDataEndpoint" flags="ng" index="1N5Plz">
        <reference id="967875482185482487" name="component" index="1N5PlC" />
        <reference id="967875482185482484" name="declaration" index="1N5PlF" />
      </concept>
      <concept id="967875482185433878" name="org.fbme.ide.iec61499.lang.structure.DataConnection" flags="ng" index="1N5Tq9" />
      <concept id="967875482185433869" name="org.fbme.ide.iec61499.lang.structure.EventConnection" flags="ng" index="1N5Tqi" />
      <concept id="967875482185433822" name="org.fbme.ide.iec61499.lang.structure.FunctionBlockDeclaration" flags="ng" index="1N5Tt1">
        <reference id="967875482185433823" name="type" index="1N5Tt0" />
        <child id="4304617121954520353" name="position" index="b_cXm" />
      </concept>
      <concept id="967875482185433821" name="org.fbme.ide.iec61499.lang.structure.CompositeFBTypeDeclaration" flags="ng" index="1N5Tt2" />
      <concept id="2693352324616754503" name="org.fbme.ide.iec61499.lang.structure.ResourceTypeDeclaration" flags="ng" index="1QCq3G" />
      <concept id="2693352324618654708" name="org.fbme.ide.iec61499.lang.structure.IWithFBNetwork" flags="ng" index="1QJEpv">
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2zBDf2" id="3HBlKeoYFbB">
    <property role="TrG5h" value="FLASHER4" />
    <node concept="2zAPAq" id="3HBlKeoZeH0" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZ7_Q" resolve="sINIT" />
      <node concept="2EVYwv" id="6g3sTRf1JLN" role="2zAZMv">
        <node concept="3YHqtX" id="2lwHqHknvjZ" role="2N3Qeb">
          <ref role="3Yz8TM" node="3HBlKeoYV84" resolve="INIT" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtrf" role="2WSJUY">
        <property role="10YbkC" value="3746.0" />
        <property role="10YbkE" value="769.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZnWS" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZ7_X" resolve="FLASH_ALL" />
      <node concept="2EVYwv" id="6g3sTRf2ZjB" role="2zAZMv">
        <node concept="2zAFu8" id="6g3sTRf2ZjV" role="2EVYSB">
          <node concept="2zAFuc" id="6g3sTRf2ZjQ" role="398zGN">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
          <node concept="2zAFuh" id="6g3sTRf2Zk6" role="398zGL">
            <property role="2zAFug" value="0" />
          </node>
        </node>
        <node concept="3YHqtX" id="2lwHqHknvk1" role="2N3Qeb">
          <ref role="3Yz8TM" node="3HBlKeoYV8j" resolve="REQ" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtrg" role="2WSJUY">
        <property role="10YbkC" value="2069.0" />
        <property role="10YbkE" value="761.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZnXh" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZaFs" resolve="COUNT_UP" />
      <node concept="2EVYwv" id="6g3sTRf2Zk8" role="2zAZMv">
        <node concept="2zAFu8" id="6g3sTRf2Zkq" role="2EVYSB">
          <node concept="2zAFuc" id="6g3sTRf2Zkl" role="398zGN">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
          <node concept="2zAFuh" id="6g3sTRf2Zk_" role="398zGL">
            <property role="2zAFug" value="1" />
          </node>
        </node>
        <node concept="3YHqtX" id="2lwHqHknvk3" role="2N3Qeb">
          <ref role="3Yz8TM" node="3HBlKeoYV8j" resolve="REQ" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtrh" role="2WSJUY">
        <property role="10YbkC" value="1115.0" />
        <property role="10YbkE" value="1284.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZtYN" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZaF_" resolve="COUNT_DOWN" />
      <node concept="2EVYwv" id="6g3sTRf2ZkB" role="2zAZMv">
        <node concept="2zAFu8" id="2r29JVYcFtk" role="2EVYSB">
          <node concept="2zAFuc" id="6g3sTRf2ZkE" role="398zGN">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
          <node concept="2zAFuh" id="2r29JVYcFtl" role="398zGL">
            <property role="2zAFug" value="2" />
          </node>
        </node>
        <node concept="3YHqtX" id="2lwHqHknvk5" role="2N3Qeb">
          <ref role="3Yz8TM" node="3HBlKeoYV8j" resolve="REQ" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtri" role="2WSJUY">
        <property role="10YbkC" value="1407.0" />
        <property role="10YbkE" value="2561.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZtYZ" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZaFK" resolve="CHASE_UP" />
      <node concept="2EVYwv" id="6g3sTRf2ZkJ" role="2zAZMv">
        <node concept="2zAFu8" id="6g3sTRf2ZkK" role="2EVYSB">
          <node concept="2zAFuc" id="6g3sTRf2ZkM" role="398zGN">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
          <node concept="2zAFuh" id="6g3sTRf2ZkL" role="398zGL">
            <property role="2zAFug" value="3" />
          </node>
        </node>
        <node concept="3YHqtX" id="2lwHqHknvkS" role="2N3Qeb">
          <ref role="3Yz8TM" node="3HBlKeoYV8j" resolve="REQ" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtrj" role="2WSJUY">
        <property role="10YbkC" value="3000.0" />
        <property role="10YbkE" value="2323.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZtZd" role="2zAPxA">
      <ref role="2zAPx1" node="3HBlKeoZaFX" resolve="CHASE_DOWN" />
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2EVYwv" id="6g3sTRf2ZkR" role="2zAZMv">
        <node concept="2zAFu8" id="6g3sTRf2ZkS" role="2EVYSB">
          <node concept="2zAFuc" id="6g3sTRf2ZkU" role="398zGN">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
          <node concept="2zAFuh" id="6g3sTRf2ZkT" role="398zGL">
            <property role="2zAFug" value="4" />
          </node>
        </node>
        <node concept="3YHqtX" id="2lwHqHknvlC" role="2N3Qeb">
          <ref role="3Yz8TM" node="3HBlKeoYV8j" resolve="REQ" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtrk" role="2WSJUY">
        <property role="10YbkC" value="3646.0" />
        <property role="10YbkE" value="1746.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZtZP" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_Q" resolve="sINIT" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2EVYwv" id="6g3sTRf2ZkZ" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtrl" role="2WSJUY">
        <property role="10YbkC" value="3430.0" />
        <property role="10YbkE" value="700.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZu0f" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_X" resolve="FLASH_ALL" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2EVYwv" id="6g3sTRf2Zl1" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtrm" role="2WSJUY">
        <property role="10YbkC" value="1530.0" />
        <property role="10YbkE" value="846.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZu0F" role="2zAPxA">
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx3" node="3HBlKeoZaFs" resolve="COUNT_UP" />
      <node concept="2EVYwv" id="6g3sTRf2Zl3" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtrn" role="2WSJUY">
        <property role="10YbkC" value="1630.0" />
        <property role="10YbkE" value="1700.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="PI_pXYiHIY" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZaF_" resolve="COUNT_DOWN" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2EVYwv" id="6g3sTRf2Zl5" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtro" role="2WSJUY">
        <property role="10YbkC" value="2261.0" />
        <property role="10YbkE" value="2600.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZu19" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZaFK" resolve="CHASE_UP" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2EVYwv" id="6g3sTRf2Zl7" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtrp" role="2WSJUY">
        <property role="10YbkC" value="3461.0" />
        <property role="10YbkE" value="2376.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="PI_pXYiHKo" role="2zAPxA">
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx3" node="3HBlKeoZaFX" resolve="CHASE_DOWN" />
      <node concept="2EVYwv" id="6g3sTRf2Zl9" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtrq" role="2WSJUY">
        <property role="10YbkC" value="3776.0" />
        <property role="10YbkE" value="1569.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZu1D" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZaGc" resolve="START" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2EVYwv" id="6g3sTRf2Zlb" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtrr" role="2WSJUY">
        <property role="10YbkC" value="2823.0" />
        <property role="10YbkE" value="669.0" />
      </node>
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7_V" role="2zAPwS">
      <property role="TrG5h" value="INIT" />
      <node concept="1tttXp" id="7GyesCpdUAV" role="1toi31">
        <node concept="1y1qLN" id="7GyesCpdUAX" role="1y4NXT">
          <node concept="1y1qS$" id="7GyesCpmQI7" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpmQI5" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
            </node>
            <node concept="1yuJzB" id="7GyesCpnv6c" role="1y1qST">
              <node concept="2zAFuh" id="7GyesCpnv6o" role="398zGL">
                <property role="2zAFug" value="2" />
              </node>
              <node concept="2zAFuc" id="7GyesCpnv67" role="398zGN">
                <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
              </node>
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpnv6K" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpnv6I" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
            </node>
            <node concept="2zAFuh" id="7GyesCpnv6W" role="1y1qST">
              <property role="2zAFug" value="0" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpnv6Y" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpnv7Z" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
            </node>
            <node concept="2zAFuh" id="7GyesCpnv70" role="1y1qST">
              <property role="2zAFug" value="0" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpnv7c" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpnv82" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
            </node>
            <node concept="2zAFuh" id="7GyesCpnv7e" role="1y1qST">
              <property role="2zAFug" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7As" role="2zAPwS">
      <property role="TrG5h" value="COUNT_UP" />
      <node concept="1tttXp" id="7GyesCpcglK" role="1toi31">
        <node concept="1y1qLN" id="7GyesCpdU_T" role="1y4NXT">
          <node concept="1y1qS$" id="7GyesCppkLx" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCppkLv" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
            </node>
            <node concept="1yuI7X" id="7GyesCppkLE" role="1y1qST">
              <node concept="2zAFuc" id="7GyesCppkLS" role="1yuI7h">
                <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
              </node>
            </node>
          </node>
          <node concept="1y1qnd" id="7GyesCppkMo" role="1y1qVS">
            <node concept="1yuI7X" id="7GyesCpq$lV" role="1y1qn2">
              <node concept="2zAFuc" id="7GyesCpq$mb" role="1yuI7h">
                <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
              </node>
            </node>
            <node concept="1y1qLN" id="7GyesCppkMs" role="1y1qms">
              <node concept="1y1qS$" id="7GyesCpq$mi" role="1y1qVS">
                <node concept="2zAFuc" id="7GyesCpq$mg" role="1y1qSV">
                  <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
                </node>
                <node concept="1yuI7X" id="7GyesCpq$mr" role="1y1qST">
                  <node concept="2zAFuc" id="7GyesCpq$mD" role="1yuI7h">
                    <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
                  </node>
                </node>
              </node>
              <node concept="1y1qnd" id="7GyesCpq$mM" role="1y1qVS">
                <node concept="1yuI7X" id="7GyesCpq$nf" role="1y1qn2">
                  <node concept="2zAFuc" id="463hhT87ZI" role="1yuI7h">
                    <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
                  </node>
                </node>
                <node concept="1y1qLN" id="7GyesCpq$mQ" role="1y1qms">
                  <node concept="1y1qS$" id="7GyesCpq$n$" role="1y1qVS">
                    <node concept="2zAFuc" id="7GyesCpq$ny" role="1y1qSV">
                      <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
                    </node>
                    <node concept="1yuI7X" id="7GyesCpq$nH" role="1y1qST">
                      <node concept="2zAFuc" id="463hhT880o" role="1yuI7h">
                        <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
                      </node>
                    </node>
                  </node>
                  <node concept="1y1qnd" id="7GyesCpq$o2" role="1y1qVS">
                    <node concept="1yuI7X" id="7GyesCpq$om" role="1y1qn2">
                      <node concept="2zAFuc" id="463hhT8812" role="1yuI7h">
                        <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
                      </node>
                    </node>
                    <node concept="1y1qLN" id="7GyesCpq$o6" role="1y1qms">
                      <node concept="1y1qS$" id="7GyesCpq$oF" role="1y1qVS">
                        <node concept="2zAFuc" id="7GyesCpq$oD" role="1y1qSV">
                          <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
                        </node>
                        <node concept="1yuI7X" id="7GyesCpq$oP" role="1y1qST">
                          <node concept="2zAFuc" id="463hhT881$" role="1yuI7h">
                            <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7Ay" role="2zAPwS">
      <property role="TrG5h" value="COUNT_DOWN" />
      <node concept="1tttXp" id="1zB5ET5_Yeg" role="1toi31">
        <node concept="1y1qLN" id="7GyesCpdU_V" role="1y4NXT">
          <node concept="1y1qS$" id="7GyesCpreCh" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpreCi" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
            </node>
            <node concept="1yuI7X" id="7GyesCpreCj" role="1y1qST">
              <node concept="2zAFuc" id="463hhT88Jf" role="1yuI7h">
                <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
              </node>
            </node>
          </node>
          <node concept="1y1qnd" id="7GyesCpreCl" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpreCn" role="1y1qn2">
              <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
            </node>
            <node concept="1y1qLN" id="7GyesCpreCo" role="1y1qms">
              <node concept="1y1qS$" id="7GyesCpreCp" role="1y1qVS">
                <node concept="2zAFuc" id="7GyesCpreCq" role="1y1qSV">
                  <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
                </node>
                <node concept="1yuI7X" id="7GyesCpreCr" role="1y1qST">
                  <node concept="2zAFuc" id="463hhT88JT" role="1yuI7h">
                    <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
                  </node>
                </node>
              </node>
              <node concept="1y1qnd" id="7GyesCpreCt" role="1y1qVS">
                <node concept="2zAFuc" id="7GyesCpreCv" role="1y1qn2">
                  <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
                </node>
                <node concept="1y1qLN" id="7GyesCpreCw" role="1y1qms">
                  <node concept="1y1qS$" id="7GyesCpreCx" role="1y1qVS">
                    <node concept="2zAFuc" id="7GyesCpreCy" role="1y1qSV">
                      <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
                    </node>
                    <node concept="1yuI7X" id="7GyesCpreCz" role="1y1qST">
                      <node concept="2zAFuc" id="463hhT88Kr" role="1yuI7h">
                        <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
                      </node>
                    </node>
                  </node>
                  <node concept="1y1qnd" id="7GyesCpreC_" role="1y1qVS">
                    <node concept="2zAFuc" id="7GyesCpreCB" role="1y1qn2">
                      <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
                    </node>
                    <node concept="1y1qLN" id="7GyesCpreCC" role="1y1qms">
                      <node concept="1y1qS$" id="7GyesCpreCD" role="1y1qVS">
                        <node concept="2zAFuc" id="7GyesCpreCE" role="1y1qSV">
                          <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
                        </node>
                        <node concept="1yuI7X" id="7GyesCpreCF" role="1y1qST">
                          <node concept="2zAFuc" id="463hhT88KX" role="1yuI7h">
                            <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7A2" role="2zAPwS">
      <property role="TrG5h" value="FLASH_ALL" />
      <node concept="1tttXp" id="1zB5ET5_Yei" role="1toi31">
        <node concept="1y1qLN" id="7GyesCpdUAv" role="1y4NXT">
          <node concept="1y1qS$" id="7GyesCpsa2a" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa2b" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
            </node>
            <node concept="1yuI7X" id="7GyesCpsa2c" role="1y1qST">
              <node concept="2zAFuc" id="463hhT88Lv" role="1yuI7h">
                <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
              </node>
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa2i" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa32" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
            </node>
            <node concept="1yuI7X" id="7GyesCpsa2k" role="1y1qST">
              <node concept="2zAFuc" id="463hhT88M1" role="1yuI7h">
                <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
              </node>
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa2u" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa35" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
            </node>
            <node concept="1yuI7X" id="7GyesCpsa2w" role="1y1qST">
              <node concept="2zAFuc" id="463hhT88ML" role="1yuI7h">
                <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
              </node>
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa2I" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa38" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
            </node>
            <node concept="1yuI7X" id="7GyesCpsa2K" role="1y1qST">
              <node concept="2zAFuc" id="463hhT88Nk" role="1yuI7h">
                <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7A9" role="2zAPwS">
      <property role="TrG5h" value="CHASE_UP" />
      <node concept="1tttXp" id="1zB5ET5_Yek" role="1toi31">
        <node concept="1y1qLN" id="7GyesCpdUAx" role="1y4NXT">
          <node concept="1y1qS$" id="7GyesCpsa3D" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa5P" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoZMSp" resolve="OFLO" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa3G" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa5t" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa5u" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa60" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa3_" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa3A" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa66" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa3x" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa3y" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa6c" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa3t" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa3u" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa6r" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoZMSp" resolve="OFLO" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7Ad" role="2zAPwS">
      <property role="TrG5h" value="CHASE_DOWN" />
      <node concept="1tttXp" id="1zB5ET5_Yem" role="1toi31">
        <node concept="1y1qLN" id="7GyesCpdUAz" role="1y4NXT">
          <node concept="1y1qS$" id="7GyesCpsa6u" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa6v" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoZMSp" resolve="OFLO" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa7D" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa6W" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa6X" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ2i" resolve="LED0" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa7J" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa70" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa71" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYZ27" resolve="LED1" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa7P" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa74" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa75" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYWWO" resolve="LED2" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa7V" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
            </node>
          </node>
          <node concept="1y1qS$" id="7GyesCpsa78" role="1y1qVS">
            <node concept="2zAFuc" id="7GyesCpsa79" role="1y1qSV">
              <ref role="2zAFuj" node="3HBlKeoYWWK" resolve="LED3" />
            </node>
            <node concept="2zAFuc" id="7GyesCpsa7$" role="1y1qST">
              <ref role="2zAFuj" node="3HBlKeoZMSp" resolve="OFLO" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZ7_O" role="2zAPwY">
      <property role="TrG5h" value="WAIT" />
      <node concept="10YbkR" id="5jb5jNCal_w" role="2WOQdS">
        <property role="10YbkC" value="2615.0" />
        <property role="10YbkE" value="1461.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZ7_Q" role="2zAPwY">
      <property role="TrG5h" value="sINIT" />
      <node concept="2zAPAr" id="3HBlKeoZ7_T" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7_V" resolve="INIT" />
        <node concept="3YHrnl" id="2lwHqHknvjp" role="2NbhEN">
          <ref role="3Yz8TM" node="3HBlKeoYV8p" resolve="CNF" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_x" role="2WOQdS">
        <property role="10YbkC" value="4206.0" />
        <property role="10YbkE" value="356.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZ7_X" role="2zAPwY">
      <property role="TrG5h" value="FLASH_ALL" />
      <node concept="2zAPAr" id="3HBlKeoZ7A5" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7A2" resolve="FLASH_ALL" />
        <node concept="3YHrnl" id="2lwHqHknvjr" role="2NbhEN">
          <ref role="3Yz8TM" node="3HBlKeoYV8p" resolve="CNF" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_y" role="2WOQdS">
        <property role="10YbkC" value="1487.0" />
        <property role="10YbkE" value="287.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaFs" role="2zAPwY">
      <property role="TrG5h" value="COUNT_UP" />
      <node concept="2zAPAr" id="3HBlKeoZaFz" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7As" resolve="COUNT_UP" />
        <node concept="3YHrnl" id="2lwHqHknvjt" role="2NbhEN">
          <ref role="3Yz8TM" node="3HBlKeoYV8p" resolve="CNF" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_z" role="2WOQdS">
        <property role="10YbkC" value="437.0" />
        <property role="10YbkE" value="1681.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaF_" role="2zAPwY">
      <property role="TrG5h" value="COUNT_DOWN" />
      <node concept="2zAPAr" id="3HBlKeoZaFI" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7Ay" resolve="COUNT_DOWN" />
        <node concept="3YHrnl" id="2lwHqHknvjv" role="2NbhEN">
          <ref role="3Yz8TM" node="3HBlKeoYV8p" resolve="CNF" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_$" role="2WOQdS">
        <property role="10YbkC" value="1843.0" />
        <property role="10YbkE" value="3106.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaFK" role="2zAPwY">
      <property role="TrG5h" value="CHASE_UP" />
      <node concept="2zAPAr" id="3HBlKeoZaFV" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7A9" resolve="CHASE_UP" />
        <node concept="3YHrnl" id="2lwHqHknvjx" role="2NbhEN">
          <ref role="3Yz8TM" node="3HBlKeoYV8p" resolve="CNF" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal__" role="2WOQdS">
        <property role="10YbkC" value="3487.0" />
        <property role="10YbkE" value="2806.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaFX" role="2zAPwY">
      <property role="TrG5h" value="CHASE_DOWN" />
      <node concept="2zAPAr" id="3HBlKeoZaGa" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7Ad" resolve="CHASE_DOWN" />
        <node concept="3YHrnl" id="2lwHqHknvjz" role="2NbhEN">
          <ref role="3Yz8TM" node="3HBlKeoYV8p" resolve="CNF" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_A" role="2WOQdS">
        <property role="10YbkC" value="4481.0" />
        <property role="10YbkE" value="1787.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaGc" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="5jb5jNCal_B" role="2WOQdS">
        <property role="10YbkC" value="3062.0" />
        <property role="10YbkE" value="131.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="3HBlKeoZMSp" role="2zBuUM">
      <property role="TrG5h" value="OFLO" />
      <node concept="2zB9wT" id="3HBlKeoZMSt" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="3HBlKeoYV84" role="2zBDey">
      <property role="TrG5h" value="INIT" />
      <node concept="2zBDeU" id="3HBlKeoYV8d" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYV86" resolve="MODE" />
      </node>
    </node>
    <node concept="2zBDe_" id="3HBlKeoYV8j" role="2zBDey">
      <property role="TrG5h" value="REQ" />
      <node concept="2zBDeU" id="3HBlKeoYV8n" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYV86" resolve="MODE" />
      </node>
    </node>
    <node concept="2zBDe_" id="3HBlKeoYV8p" role="2zBDew">
      <property role="TrG5h" value="CNF" />
      <node concept="2zBDeU" id="38k27ITv_2U" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYZ2i" resolve="LED0" />
      </node>
      <node concept="2zBDeU" id="38k27ITxBbr" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYZ27" resolve="LED1" />
      </node>
      <node concept="2zBDeU" id="38k27ITxBbz" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYWWO" resolve="LED2" />
      </node>
      <node concept="2zBDeU" id="38k27ITxBbH" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYWWK" resolve="LED3" />
      </node>
    </node>
    <node concept="2zBDeF" id="3HBlKeoYV86" role="2zBDeD">
      <property role="TrG5h" value="MODE" />
      <node concept="2zB5BY" id="3HBlKeoYV8a" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="3HBlKeoYWWK" role="2zBDeH">
      <property role="TrG5h" value="LED3" />
      <node concept="2zB9wT" id="3HBlKeoYZ21" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="3HBlKeoYWWO" role="2zBDeH">
      <property role="TrG5h" value="LED2" />
      <node concept="2zB9wT" id="3HBlKeoYZ24" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="3HBlKeoYZ27" role="2zBDeH">
      <property role="TrG5h" value="LED1" />
      <node concept="2zB9wT" id="3HBlKeoYZ2f" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="3HBlKeoYZ2i" role="2zBDeH">
      <property role="TrG5h" value="LED0" />
      <node concept="2zB9wT" id="3HBlKeoYZ2s" role="2zB7qv" />
    </node>
  </node>
  <node concept="XJABO" id="5VLuTnkolQd">
    <property role="TrG5h" value="FOOBAR" />
    <node concept="2zBDe_" id="5VLuTnkolQe" role="2zBDey">
      <property role="TrG5h" value="FOO" />
      <node concept="2zBDeU" id="5VLuTnkolQf" role="2zBDeW">
        <ref role="2zBDeT" node="5VLuTnkolQg" resolve="D" />
      </node>
    </node>
    <node concept="2zBDeF" id="5VLuTnkolQg" role="2zBDeD">
      <property role="TrG5h" value="D" />
      <node concept="2zB9wT" id="5VLuTnkolQh" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="5VLuTnkolQi" role="2zBDew">
      <property role="TrG5h" value="BAR" />
      <node concept="2zBDeU" id="5VLuTnkolQj" role="2zBDeW">
        <ref role="2zBDeT" node="5VLuTnkolQk" resolve="X" />
      </node>
    </node>
    <node concept="2zBDeF" id="5VLuTnkolQk" role="2zBDeH">
      <property role="TrG5h" value="X" />
      <node concept="2zB9wT" id="5VLuTnkolQl" role="2zB7qv" />
    </node>
  </node>
  <node concept="1N5Tt2" id="5VLuTnkBd2b">
    <property role="TrG5h" value="Composite2" />
    <node concept="2zBDe_" id="5VLuTnkIcPb" role="2zBDey">
      <property role="TrG5h" value="X" />
      <node concept="2zBDeU" id="5VLuTnkLgj_" role="2zBDeW">
        <ref role="2zBDeT" node="5VLuTnkLfWR" resolve="A" />
      </node>
    </node>
    <node concept="2zBDeF" id="5VLuTnkLfWR" role="2zBDeD">
      <property role="TrG5h" value="A" />
      <node concept="2zB5BY" id="5VLuTnkLfWV" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="5VLuTnkLfWG" role="2zBDew">
      <property role="TrG5h" value="Y" />
      <node concept="2zBDeU" id="5VLuTnkLgjC" role="2zBDeW">
        <ref role="2zBDeT" node="5VLuTnkLfWY" resolve="B" />
      </node>
    </node>
    <node concept="2zBDeF" id="5VLuTnkLfWY" role="2zBDeH">
      <property role="TrG5h" value="B" />
      <node concept="2zB9wT" id="5VLuTnkLfX2" role="2zB7qv" />
    </node>
    <node concept="1N5Tt1" id="5VLuTnkBdh1" role="1N5PiY">
      <property role="TrG5h" value="fb3" />
      <ref role="1N5Tt0" node="5VLuTnkolRw" resolve="Composite1" />
      <node concept="10YbkR" id="3IX4BsKohv8" role="b_cXm">
        <property role="10YbkC" value="719.0" />
        <property role="10YbkE" value="438.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="4FRweWLm$i7" role="1N5PiY">
      <property role="TrG5h" value="fb1" />
      <ref role="1N5Tt0" node="5VLuTnkolRw" resolve="Composite1" />
      <node concept="10YbkR" id="4FRweWLm$i9" role="b_cXm">
        <property role="10YbkC" value="2092.0" />
        <property role="10YbkE" value="415.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4FRweWLm_mm" role="1N5PiQ">
      <node concept="3YHqtX" id="4FRweWLm_mk" role="2RhMKC">
        <ref role="3Yz8TM" node="5VLuTnkIcPb" resolve="X" />
      </node>
      <node concept="3Yx0EI" id="4FRweWLm_mP" role="2RhMK_">
        <ref role="1N5Pi3" node="6LU90BQ6Lgd" resolve="X" />
        <ref role="1N5Pi4" node="5VLuTnkBdh1" resolve="fb3" />
      </node>
      <node concept="bR32z" id="4gibKcMqyHA" role="bPNfo">
        <property role="bR32p" value="573.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4FRweWLm_mv" role="1N5PiQ">
      <node concept="3YB4oO" id="4FRweWLm_mt" role="2RhMKC">
        <ref role="1N5Pi3" node="5VLuTnkolR_" resolve="OUT" />
        <ref role="1N5Pi4" node="5VLuTnkBdh1" resolve="fb3" />
      </node>
      <node concept="3Yx0EI" id="4FRweWLm_mu" role="2RhMK_">
        <ref role="1N5Pi3" node="5VLuTnkolRx" resolve="INIT" />
        <ref role="1N5Pi4" node="4FRweWLm$i7" resolve="fb1" />
      </node>
      <node concept="bR32z" id="4gibKcMqU46" role="bPNfo">
        <property role="bR32p" value="450.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4FRweWLm_mz" role="1N5PiQ">
      <node concept="3YB4oO" id="4FRweWLm_mx" role="2RhMKC">
        <ref role="1N5Pi3" node="5VLuTnkolR_" resolve="OUT" />
        <ref role="1N5Pi4" node="4FRweWLm$i7" resolve="fb1" />
      </node>
      <node concept="3YHrnl" id="4FRweWLm_my" role="2RhMK_">
        <ref role="3Yz8TM" node="5VLuTnkLfWG" resolve="Y" />
      </node>
      <node concept="bR32z" id="4gibKcMqU47" role="bPNfo">
        <property role="bR32p" value="1234.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="4FRweWLm_mD" role="3IAhBJ">
      <node concept="3YV02_" id="4FRweWLm_mB" role="2RhMKC">
        <ref role="3YV02y" node="5VLuTnkBdh1" resolve="fb3" />
        <ref role="3YV03s" node="5VLuTnkoKSS" resolve="ASD" />
      </node>
      <node concept="3YV9EJ" id="4FRweWLm_mC" role="2RhMK_">
        <ref role="3YV9Vn" node="4FRweWLm$i7" resolve="fb1" />
        <ref role="3YV9Vh" node="5VLuTnkoKSU" resolve="DSA" />
      </node>
      <node concept="bR32z" id="4gibKcMqU48" role="bPNfo">
        <property role="bR32p" value="450.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="4FRweWLm_mH" role="3IAhBJ">
      <node concept="3YV02_" id="4FRweWLm_mF" role="2RhMKC">
        <ref role="3YV02y" node="4FRweWLm$i7" resolve="fb1" />
        <ref role="3YV03s" node="5VLuTnkoKSS" resolve="ASD" />
      </node>
      <node concept="3YV9EJ" id="4FRweWLm_mG" role="2RhMK_">
        <ref role="3YV9Vn" node="5VLuTnkBdh1" resolve="fb3" />
        <ref role="3YV9Vh" node="5VLuTnkoKSU" resolve="DSA" />
      </node>
      <node concept="bR73E" id="4gibKcMqU45" role="bPNfo">
        <property role="bR73D" value="150.0" />
        <property role="bR73n" value="357.0" />
        <property role="bR73k" value="150.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4FRweWLm_mM" role="1N5PiV">
      <node concept="3I$UGD" id="4FRweWLm_mK" role="2RhMKC">
        <ref role="3IAu0i" node="5VLuTnkLfWR" resolve="A" />
      </node>
      <node concept="3IAvtB" id="4FRweWLm_mL" role="2RhMK_">
        <ref role="1N5PlC" node="5VLuTnkBdh1" resolve="fb3" />
        <ref role="1N5PlF" node="6LU90BPBIzE" resolve="X" />
      </node>
      <node concept="bR32z" id="4gibKcMqyHC" role="bPNfo">
        <property role="bR32p" value="311.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="4FRweWLm_mS" role="1N5PiQ">
      <node concept="3YHqtX" id="4FRweWLm_mQ" role="2RhMKC">
        <ref role="3Yz8TM" node="5VLuTnkIcPb" resolve="X" />
      </node>
      <node concept="3Yx0EI" id="4FRweWLm_mR" role="2RhMK_">
        <ref role="1N5Pi3" node="5VLuTnkolRx" resolve="INIT" />
        <ref role="1N5Pi4" node="5VLuTnkBdh1" resolve="fb3" />
      </node>
      <node concept="bR32z" id="4gibKcMqyHB" role="bPNfo">
        <property role="bR32p" value="573.0" />
      </node>
    </node>
  </node>
  <node concept="1QCq3G" id="2lwHqHkq$rV">
    <property role="TrG5h" value="ResourceSampleType" />
    <node concept="1N5Tt1" id="2lwHqHkylvK" role="1N5PiY">
      <property role="TrG5h" value="A" />
      <ref role="1N5Tt0" node="5VLuTnkolRw" resolve="Composite1" />
      <node concept="10YbkR" id="3IX4BsKohv9" role="b_cXm">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="2lwHqHkylvM" role="1N5PiY">
      <property role="TrG5h" value="B" />
      <ref role="1N5Tt0" node="5VLuTnkBd2b" resolve="Composite2" />
      <node concept="10YbkR" id="3IX4BsKohva" role="b_cXm">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="2lwHqHkylwd" role="1N5PiV">
      <node concept="3IAhSD" id="2lwHqHkylwb" role="2RhMKC">
        <ref role="1N5PlC" node="2lwHqHkylvK" resolve="A" />
        <ref role="1N5PlF" node="5VLuTnkolRA" resolve="QO" />
      </node>
      <node concept="3IAvtB" id="2lwHqHkylwc" role="2RhMK_">
        <ref role="1N5PlC" node="2lwHqHkylvM" resolve="B" />
        <ref role="1N5PlF" node="5VLuTnkLfWR" resolve="A" />
      </node>
      <node concept="bR33I" id="3IX4BsKsyn_" role="bPNfo" />
    </node>
  </node>
  <node concept="1LUxBz" id="2lwHqHkC2HF">
    <property role="TrG5h" value="DeviceSampleType" />
    <node concept="2JYBSP" id="5s_pyghzCO8" role="2JYBSD">
      <ref role="2JYBSO" node="2lwHqHkq$rV" resolve="ResourceSampleType" />
    </node>
    <node concept="1LUxBN" id="2lwHqHkFasE" role="1LWlLd">
      <property role="TrG5h" value="ResourceInst" />
      <ref role="1LUxBM" node="2lwHqHkq$rV" resolve="ResourceSampleType" />
      <node concept="1N5Tt1" id="2lwHqHkMVuC" role="1N5PiY">
        <property role="TrG5h" value="FB" />
        <ref role="1N5Tt0" node="5VLuTnkolRw" resolve="Composite1" />
        <node concept="10YbkR" id="3IX4BsKohvb" role="b_cXm">
          <property role="10YbkC" value="1762.0" />
          <property role="10YbkE" value="125.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3LgJy$" id="uLhTRR5RMn">
    <property role="TrG5h" value="Subapp1" />
    <node concept="1N5Tqi" id="uLhTRR7Mv5" role="1N5PiQ">
      <node concept="3YB4oO" id="uLhTRR7Mvb" role="2RhMKC">
        <ref role="1N5Pi3" node="uLhTRR7Mv0" resolve="B" />
        <ref role="1N5Pi4" node="uLhTRR7MuW" resolve="subappX" />
      </node>
      <node concept="3Yx0EI" id="uLhTRR7Mve" role="2RhMK_">
        <ref role="1N5Pi3" node="uLhTRR7MuY" resolve="A" />
        <ref role="1N5Pi4" node="uLhTRR7Mv2" resolve="subappY" />
      </node>
      <node concept="bR33I" id="4gibKcMyGEG" role="bPNfo" />
    </node>
    <node concept="1N5Tqi" id="uLhTRR7Mvh" role="1N5PiQ">
      <node concept="3YB4oO" id="uLhTRR7Mvq" role="2RhMKC">
        <ref role="1N5Pi3" node="uLhTRR7Mv0" resolve="B" />
        <ref role="1N5Pi4" node="uLhTRR7Mv2" resolve="subappY" />
      </node>
      <node concept="3Yx0EI" id="uLhTRR7Mvt" role="2RhMK_">
        <ref role="1N5Pi3" node="uLhTRR7MuY" resolve="A" />
        <ref role="1N5Pi4" node="uLhTRR7MuW" resolve="subappX" />
      </node>
      <node concept="bR33I" id="4gibKcMyGEF" role="bPNfo" />
    </node>
    <node concept="3LgJyF" id="uLhTRR7MuW" role="3LgJyy">
      <property role="TrG5h" value="subappX" />
      <ref role="3LgJyE" node="uLhTRR7MuT" resolve="Subapp2" />
      <node concept="10YbkR" id="4gibKcMyGE_" role="n9Bpr">
        <property role="10YbkC" value="1561.0" />
        <property role="10YbkE" value="900.0" />
      </node>
    </node>
    <node concept="3LgJyF" id="uLhTRR7Mv2" role="3LgJyy">
      <property role="TrG5h" value="subappY" />
      <ref role="3LgJyE" node="uLhTRR7MuT" resolve="Subapp2" />
      <node concept="10YbkR" id="4gibKcMyGEA" role="n9Bpr">
        <property role="10YbkC" value="2080.0" />
        <property role="10YbkE" value="234.0" />
      </node>
    </node>
  </node>
  <node concept="3LgJy$" id="uLhTRR7MuT">
    <property role="TrG5h" value="Subapp2" />
    <node concept="1N5Tqi" id="uLhTRRDQbz" role="1N5PiQ">
      <node concept="3YB4oO" id="uLhTRRDQbD" role="2RhMKC">
        <ref role="1N5Pi3" node="3HBlKeoYV8p" resolve="CNF" />
        <ref role="1N5Pi4" node="uLhTRRDQbx" resolve="x" />
      </node>
      <node concept="3YHrnl" id="uLhTRRE18h" role="2RhMK_">
        <ref role="3Yz8TM" node="uLhTRR7Mv0" resolve="B" />
      </node>
      <node concept="bR32z" id="3Sv$YXXsyT7" role="bPNfo">
        <property role="bR32p" value="181.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="uLhTRRE18G" role="1N5PiQ">
      <node concept="3YHqtX" id="uLhTRRE18P" role="2RhMKC">
        <ref role="3Yz8TM" node="uLhTRR7MuY" resolve="A" />
      </node>
      <node concept="3Yx0EI" id="uLhTRRE18S" role="2RhMK_">
        <ref role="1N5Pi3" node="3HBlKeoYV8j" resolve="REQ" />
        <ref role="1N5Pi4" node="uLhTRRDQbx" resolve="x" />
      </node>
      <node concept="bR32z" id="3Sv$YXXsyT5" role="bPNfo">
        <property role="bR32p" value="131.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="uLhTRRDQbx" role="1N5PiY">
      <property role="TrG5h" value="x" />
      <ref role="1N5Tt0" node="3HBlKeoYFbB" resolve="FLASHER4" />
      <node concept="10YbkR" id="3IX4BsKohvc" role="b_cXm">
        <property role="10YbkC" value="2118.0" />
        <property role="10YbkE" value="287.0" />
      </node>
    </node>
    <node concept="2zBDe_" id="uLhTRR7Mv0" role="2zBDew">
      <property role="TrG5h" value="B" />
    </node>
    <node concept="2zBDe_" id="uLhTRR7MuY" role="2zBDey">
      <property role="TrG5h" value="A" />
    </node>
  </node>
  <node concept="3KFA1X" id="uLhTRR9P6A">
    <property role="TrG5h" value="SampleSystem" />
    <node concept="3KU5ap" id="5s_pyghIpVu" role="3KORhB">
      <node concept="3KUfg5" id="5s_pyghIpVx" role="3KUfg8">
        <ref role="3KLd9v" node="2lwHqHkMVuC" resolve="FB" />
        <node concept="3KQLYX" id="5s_pyghWI9A" role="3KLd9t">
          <ref role="3KQLYW" node="uLhTRRE18Y" resolve="X" />
          <ref role="3KQLYY" node="2lwHqHkFasE" resolve="ResourceInst" />
        </node>
      </node>
      <node concept="3KU5ao" id="5s_pyghIpVF" role="3KUfge">
        <ref role="3KUfjk" node="uLhTRRDQbx" resolve="x" />
        <node concept="3KU7L5" id="5s_pyghWI9w" role="3KUfjq">
          <ref role="3KU7LW" node="uLhTRR7MuW" resolve="subappX" />
          <node concept="3KU7L5" id="5s_pyghWI9r" role="3KU7L6">
            <ref role="3KU7LW" node="uLhTRRDQbv" resolve="subapp1" />
            <node concept="3KU5aq" id="5s_pyghMTYt" role="3KU7L6">
              <ref role="3KU5al" node="uLhTRRBP8T" resolve="XYZ" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="16k8Fv" id="5s_pyghGt4K" role="16kM_O">
      <property role="TrG5h" value="sampleSegment" />
      <ref role="16k8Fq" node="5s_pyghxHhH" resolve="SegmentSampleType" />
      <node concept="1LUwhx" id="5s_pyghGt4Y" role="16k8Gk">
        <ref role="1LUwhw" node="5s_pyghxHmu" resolve="x" />
        <node concept="1QCq3x" id="5s_pyghGt52" role="1LUwh$" />
      </node>
    </node>
    <node concept="16EYGJ" id="5s_pyghGt4D" role="16GI_C">
      <ref role="16EYGP" node="5s_pyghGt4K" resolve="sampleSegment" />
      <node concept="3KQLYX" id="5s_pyghGt4M" role="16EYGC">
        <ref role="3KQLYW" node="uLhTRRE18Y" resolve="X" />
        <ref role="3KQLYY" node="2lwHqHkFasE" resolve="ResourceInst" />
      </node>
    </node>
    <node concept="2JYBV7" id="uLhTRRE18Y" role="3KFA_1">
      <property role="TrG5h" value="X" />
      <ref role="2JYBV0" node="2lwHqHkC2HF" resolve="DeviceSampleType" />
    </node>
    <node concept="3KFAOZ" id="uLhTRRBP8T" role="3KFA_7">
      <property role="TrG5h" value="XYZ" />
      <node concept="3LgJyF" id="uLhTRRDQbv" role="3LgJyy">
        <property role="TrG5h" value="subapp1" />
        <ref role="3LgJyE" node="uLhTRR5RMn" resolve="Subapp1" />
        <node concept="10YbkR" id="2syzu7qDP95" role="n9Bpr">
          <property role="10YbkC" value="0.0" />
          <property role="10YbkE" value="0.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="uLhTRRDQbt" role="1N5PiY">
        <property role="TrG5h" value="c1" />
        <ref role="1N5Tt0" node="5VLuTnkolRw" resolve="Composite1" />
        <node concept="10YbkR" id="3IX4BsKohvd" role="b_cXm">
          <property role="10YbkC" value="0.0" />
          <property role="10YbkE" value="0.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="uLhTRSuiV4">
    <property role="TrG5h" value="EmptyComponentFB" />
  </node>
  <node concept="2zBDf2" id="4s7KBSjc0Wu">
    <property role="TrG5h" value="EmptyBasicFB" />
    <node concept="2zAPAk" id="1CoiI8TYDHo" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="1CoiI8TYDHp" role="2WOQdS">
        <property role="10YbkC" value="1937.0" />
        <property role="10YbkE" value="1075.0" />
      </node>
    </node>
  </node>
  <node concept="16k505" id="5s_pyghxHhH">
    <property role="TrG5h" value="SegmentSampleType" />
    <node concept="2zBDeF" id="5s_pyghxHmu" role="16k51W">
      <property role="TrG5h" value="x" />
      <node concept="3r5GIo" id="23XkovW6Wco" role="2zB7qv">
        <ref role="3r3idG" node="23XkovVZ9hf" resolve="XYZ" />
      </node>
    </node>
  </node>
  <node concept="3r5GIB" id="23XkovVZ9hf">
    <property role="TrG5h" value="XYZ" />
    <node concept="3sSFkS" id="23XkovW96zf" role="3r3idf">
      <node concept="3r5wdd" id="23XkovWbmLz" role="3sSFl7" />
      <node concept="3sSFnC" id="23XkovW96zj" role="3sSFtf">
        <node concept="2zAFuh" id="23XkovW96zl" role="3r1mEJ">
          <property role="2zAFug" value="1" />
        </node>
        <node concept="2zAFuh" id="23XkovW96zn" role="3r1mER">
          <property role="2zAFug" value="4" />
        </node>
      </node>
      <node concept="3sSFnC" id="23XkovW96zu" role="3sSFtf">
        <node concept="2zAFuh" id="23XkovW96zv" role="3r1mEJ">
          <property role="2zAFug" value="1" />
        </node>
        <node concept="2zAFuh" id="23XkovW96zw" role="3r1mER">
          <property role="2zAFug" value="4" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="5VLuTnkolRw">
    <property role="TrG5h" value="Composite1" />
    <node concept="2zBDe_" id="5VLuTnkolRx" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="2zBDe_" id="5VLuTnkolRy" role="2zBDey">
      <property role="TrG5h" value="REQ" />
      <node concept="2zBDeU" id="7qPnRGGBqKe" role="2zBDeW">
        <ref role="2zBDeT" node="5VLuTnkolRz" resolve="QI" />
      </node>
    </node>
    <node concept="2zBDe_" id="6LU90BQ6Lgd" role="2zBDey">
      <property role="TrG5h" value="X" />
    </node>
    <node concept="2zBDeF" id="5VLuTnkolRz" role="2zBDeD">
      <property role="TrG5h" value="QI" />
      <node concept="2zB9wT" id="5VLuTnkolR$" role="2zB7qv" />
      <node concept="1QCq3x" id="2lwHqHkvcnv" role="1L4frD" />
    </node>
    <node concept="2zBDeF" id="6LU90BPBIzE" role="2zBDeD">
      <property role="TrG5h" value="X" />
      <node concept="2zB9wT" id="6LU90BPBKF5" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="5VLuTnkolR_" role="2zBDew">
      <property role="TrG5h" value="OUT" />
      <node concept="2zBDeU" id="7qPnRGGBqKn" role="2zBDeW">
        <ref role="2zBDeT" node="5VLuTnkolRA" resolve="QO" />
      </node>
    </node>
    <node concept="2zBDeF" id="5VLuTnkolRA" role="2zBDeH">
      <property role="TrG5h" value="QO" />
      <node concept="2zB9wT" id="5VLuTnkolRB" role="2zB7qv" />
    </node>
    <node concept="1N5Tt1" id="5VLuTnkolRC" role="1N5PiY">
      <property role="TrG5h" value="F1" />
      <ref role="1N5Tt0" node="3HBlKeoYFbB" resolve="FLASHER4" />
      <node concept="10YbkR" id="3IX4BsKohv5" role="b_cXm">
        <property role="10YbkC" value="1473.0" />
        <property role="10YbkE" value="173.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="5VLuTnkolRD" role="1N5PiY">
      <property role="TrG5h" value="FB2" />
      <ref role="1N5Tt0" node="3HBlKeoYFbB" resolve="FLASHER4" />
      <node concept="10YbkR" id="3IX4BsKohv6" role="b_cXm">
        <property role="10YbkC" value="2434.0" />
        <property role="10YbkE" value="738.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="5VLuTnkolRE" role="1N5PiQ">
      <node concept="3YHqtX" id="5VLuTnkolRF" role="2RhMKC">
        <ref role="3Yz8TM" node="5VLuTnkolRx" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="5VLuTnkolRG" role="2RhMK_">
        <ref role="1N5Pi3" node="3HBlKeoYV84" resolve="INIT" />
        <ref role="1N5Pi4" node="5VLuTnkolRC" resolve="F1" />
      </node>
      <node concept="bR32z" id="4gibKcMqsMH" role="bPNfo">
        <property role="bR32p" value="1150.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="5VLuTnkolRT" role="1N5PiQ">
      <node concept="3YB4oO" id="5VLuTnkolRU" role="2RhMKC">
        <ref role="1N5Pi3" node="3HBlKeoYV8p" resolve="CNF" />
        <ref role="1N5Pi4" node="5VLuTnkolRC" resolve="F1" />
      </node>
      <node concept="3YHrnl" id="5VLuTnkolRV" role="2RhMK_">
        <ref role="3Yz8TM" node="5VLuTnkolR_" resolve="OUT" />
      </node>
      <node concept="bR32z" id="4gibKcMqsML" role="bPNfo">
        <property role="bR32p" value="1488.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="5VLuTnkolS2" role="1N5PiV">
      <node concept="3I$UGD" id="5VLuTnkolS3" role="2RhMKC">
        <ref role="3IAu0i" node="5VLuTnkolRz" resolve="QI" />
      </node>
      <node concept="3IAvtB" id="5VLuTnkolS4" role="2RhMK_">
        <ref role="1N5PlC" node="5VLuTnkolRC" resolve="F1" />
        <ref role="1N5PlF" node="3HBlKeoYV86" resolve="MODE" />
      </node>
      <node concept="bR32z" id="4gibKcMqsMI" role="bPNfo">
        <property role="bR32p" value="680.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="5VLuTnkoKSS" role="3YHajr">
      <property role="TrG5h" value="ASD" />
      <ref role="3IBQi8" node="5VLuTnkolQd" resolve="FOOBAR" />
      <node concept="10YbkR" id="6LU90BOqnLm" role="2oiNrz">
        <property role="10YbkC" value="2884.0" />
        <property role="10YbkE" value="1734.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="5VLuTnkoKSU" role="3YHajY">
      <property role="TrG5h" value="DSA" />
      <ref role="3Iw0dH" node="5VLuTnkolQd" resolve="FOOBAR" />
      <node concept="10YbkR" id="6LU90BOqnLo" role="2oiVCh">
        <property role="10YbkC" value="1142.0" />
        <property role="10YbkE" value="1738.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="6LU90BO_Gzv" role="1N5PiV">
      <node concept="3IAhSD" id="6LU90BO_Gzs" role="2RhMKC">
        <ref role="1N5PlC" node="5VLuTnkoKSS" resolve="ASD" />
        <ref role="1N5PlF" node="5VLuTnkolQg" resolve="D" />
      </node>
      <node concept="3I$zcF" id="6LU90BO_Gzt" role="2RhMK_">
        <ref role="3IAu0i" node="5VLuTnkolRA" resolve="QO" />
      </node>
      <node concept="bR32z" id="3vwudsn0eYa" role="bPNfo">
        <property role="bR32p" value="1150.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="6LU90BO_KRD" role="1N5PiQ">
      <node concept="3YB4oO" id="6LU90BO_KRA" role="2RhMKC">
        <ref role="1N5Pi3" node="5VLuTnkolQe" resolve="FOO" />
        <ref role="1N5Pi4" node="5VLuTnkoKSS" resolve="ASD" />
      </node>
      <node concept="3YHrnl" id="6LU90BO_KRB" role="2RhMK_">
        <ref role="3Yz8TM" node="5VLuTnkolR_" resolve="OUT" />
      </node>
      <node concept="bR32z" id="3vwudsn0eYc" role="bPNfo">
        <property role="bR32p" value="1511.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="6LU90BO_N3X" role="1N5PiQ">
      <node concept="3YHqtX" id="6LU90BO_N3U" role="2RhMKC">
        <ref role="3Yz8TM" node="5VLuTnkolRy" resolve="REQ" />
      </node>
      <node concept="3Yx0EI" id="5MmYuOgOyPQ" role="2RhMK_">
        <ref role="1N5Pi3" node="5VLuTnkolQe" resolve="FOO" />
        <ref role="1N5Pi4" node="5VLuTnkoKSU" resolve="DSA" />
      </node>
      <node concept="bR32z" id="3vwudsn0BRt" role="bPNfo">
        <property role="bR32p" value="303.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="6LU90BO_PeT" role="1N5PiV">
      <node concept="3I$UGD" id="6LU90BO_PeQ" role="2RhMKC">
        <ref role="3IAu0i" node="5VLuTnkolRz" resolve="QI" />
      </node>
      <node concept="3IAvtB" id="6LU90BO_PeR" role="2RhMK_">
        <ref role="1N5PlC" node="5VLuTnkoKSU" resolve="DSA" />
        <ref role="1N5PlF" node="5VLuTnkolQg" resolve="D" />
      </node>
      <node concept="bR32z" id="6YAH_gOB8ZD" role="bPNfo">
        <property role="bR32p" value="742.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="5MmYuOgMQBD" role="1N5PiQ">
      <node concept="3YHqtX" id="5MmYuOgMQBB" role="2RhMKC">
        <ref role="3Yz8TM" node="5VLuTnkolRy" resolve="REQ" />
      </node>
      <node concept="3Yx0EI" id="5MmYuOgMQBC" role="2RhMK_">
        <ref role="1N5Pi3" node="3HBlKeoYV84" resolve="INIT" />
        <ref role="1N5Pi4" node="5VLuTnkolRC" resolve="F1" />
      </node>
      <node concept="bR32z" id="4gibKcMqsMJ" role="bPNfo">
        <property role="bR32p" value="1088.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="5MmYuOgNwrh" role="1N5PiV">
      <node concept="3IAvtB" id="5MmYuOgNwrg" role="2RhMK_">
        <ref role="1N5PlC" node="5VLuTnkoKSS" resolve="ASD" />
        <ref role="1N5PlF" node="5VLuTnkolQk" resolve="X" />
      </node>
      <node concept="3IAhSD" id="1QSEqLhDqSV" role="2RhMKC">
        <ref role="1N5PlC" node="5VLuTnkolRC" resolve="F1" />
        <ref role="1N5PlF" node="3HBlKeoYWWK" resolve="LED3" />
      </node>
      <node concept="bR32z" id="4gibKcMqsMK" role="bPNfo">
        <property role="bR32p" value="73.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="5MmYuOgOwEY" role="1N5PiV">
      <node concept="3IAhSD" id="5MmYuOgOwEW" role="2RhMKC">
        <ref role="1N5PlC" node="5VLuTnkoKSU" resolve="DSA" />
        <ref role="1N5PlF" node="5VLuTnkolQk" resolve="X" />
      </node>
      <node concept="3IAvtB" id="5MmYuOgOwEX" role="2RhMK_">
        <ref role="1N5PlC" node="5VLuTnkoKSS" resolve="ASD" />
        <ref role="1N5PlF" node="5VLuTnkolQk" resolve="X" />
      </node>
      <node concept="bR32z" id="3vwudsn0eY7" role="bPNfo">
        <property role="bR32p" value="430.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="5MmYuOgQERh" role="1N5PiV">
      <node concept="3IAhSD" id="5MmYuOgQERf" role="2RhMKC">
        <ref role="1N5PlC" node="5VLuTnkolRC" resolve="F1" />
        <ref role="1N5PlF" node="3HBlKeoYWWO" resolve="LED2" />
      </node>
      <node concept="3IAvtB" id="5MmYuOgQERg" role="2RhMK_">
        <ref role="1N5PlC" node="5VLuTnkoKSS" resolve="ASD" />
        <ref role="1N5PlF" node="5VLuTnkolQk" resolve="X" />
      </node>
      <node concept="bR32z" id="4gibKcMqsMG" role="bPNfo">
        <property role="bR32p" value="73.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="5jb5jNBJrDG" role="1N5PiQ">
      <node concept="3YB4oO" id="5jb5jNBJrDE" role="2RhMKC">
        <ref role="1N5Pi3" node="5VLuTnkolQi" resolve="BAR" />
        <ref role="1N5Pi4" node="5VLuTnkoKSU" resolve="DSA" />
      </node>
      <node concept="3Yx0EI" id="5jb5jNBJrDF" role="2RhMK_">
        <ref role="1N5Pi3" node="5VLuTnkolQi" resolve="BAR" />
        <ref role="1N5Pi4" node="5VLuTnkoKSS" resolve="ASD" />
      </node>
      <node concept="bR32z" id="3vwudsn0eY8" role="bPNfo">
        <property role="bR32p" value="430.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4FRweWLewEc" role="1N5PiV">
      <node concept="3I$UGD" id="4FRweWLewEa" role="2RhMKC">
        <ref role="3IAu0i" node="5VLuTnkolRz" resolve="QI" />
      </node>
      <node concept="3IAvtB" id="4FRweWLewEb" role="2RhMK_">
        <ref role="1N5PlC" node="5VLuTnkolRD" resolve="FB2" />
        <ref role="1N5PlF" node="3HBlKeoYV86" resolve="MODE" />
      </node>
      <node concept="bR32z" id="4FRweWLewEd" role="bPNfo">
        <property role="bR32p" value="1169.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="4FRweWLewEg" role="1N5PiV">
      <node concept="3IAhSD" id="4FRweWLewEe" role="2RhMKC">
        <ref role="1N5PlC" node="5VLuTnkolRD" resolve="FB2" />
        <ref role="1N5PlF" node="3HBlKeoYWWK" resolve="LED3" />
      </node>
      <node concept="3I$zcF" id="4FRweWLewEf" role="2RhMK_">
        <ref role="3IAu0i" node="5VLuTnkolRA" resolve="QO" />
      </node>
      <node concept="bR32z" id="4FRweWLewEh" role="bPNfo">
        <property role="bR32p" value="1088.0" />
      </node>
    </node>
  </node>
</model>

