<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:02589d2f-0161-41cb-817b-e5767f9e0127(org.fbme.ide.iec61499.lang.sandbox.festo)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang" version="0" />
    <use id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="org.fbme.ide.st.lang" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="org.fbme.ide.st.lang">
      <concept id="4280485643802103610" name="org.fbme.ide.st.lang.structure.BoolType" flags="ng" index="2zB9wT" />
      <concept id="8872717756041500089" name="org.fbme.ide.st.lang.structure.StatementList" flags="ng" index="1y1qLN" />
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
      <concept id="3018159903918047621" name="org.fbme.ide.iec61499.lang.structure.AdapterTypeDeclaration" flags="ng" index="XJABO" />
      <concept id="6049904230683977455" name="org.fbme.ide.iec61499.lang.structure.Position" flags="ng" index="10YbkR">
        <property id="6049904230683977456" name="x" index="10YbkC" />
        <property id="6049904230683977458" name="y" index="10YbkE" />
      </concept>
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
      <concept id="7558503085816725073" name="org.fbme.ide.iec61499.lang.structure.ComponentEndpoint" flags="ng" index="3JaoNj">
        <reference id="967875482185482523" name="component" index="1N5Pi4" />
      </concept>
      <concept id="554302972921896510" name="org.fbme.ide.iec61499.lang.structure.DeclarationWithInterfaceAndAdapters" flags="ng" index="3LgDAz">
        <child id="8167217573769997767" name="plugs" index="3YHajr" />
        <child id="8167217573769997794" name="sockets" index="3YHajY" />
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
  <node concept="XJABO" id="1rxLtFPnd3x">
    <property role="TrG5h" value="RotatingArmIO" />
    <node concept="2zBDeF" id="1rxLtFPnd43" role="2zBDeH">
      <property role="TrG5h" value="vaccuum_on" />
      <node concept="2zB9wT" id="1rxLtFPnd47" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1rxLtFPnd4a" role="2zBDeH">
      <property role="TrG5h" value="vaccuum_off" />
      <node concept="2zB9wT" id="1rxLtFPnd4g" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1rxLtFPnd4j" role="2zBDeH">
      <property role="TrG5h" value="to_magazaine" />
      <node concept="2zB9wT" id="1rxLtFPnd4r" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1rxLtFPnd4u" role="2zBDeH">
      <property role="TrG5h" value="to_client" />
      <node concept="2zB9wT" id="1rxLtFPnd4C" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1rxLtFPnd3y" role="2zBDey">
      <property role="TrG5h" value="REQ" />
      <node concept="2zBDeU" id="1rxLtFPnd4F" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd3C" resolve="at_magazine" />
      </node>
      <node concept="2zBDeU" id="1rxLtFPnd4L" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd3J" resolve="at_client" />
      </node>
      <node concept="2zBDeU" id="1rxLtFPnd4T" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd3S" resolve="vac_on" />
      </node>
    </node>
    <node concept="2zBDeF" id="1rxLtFPnd3C" role="2zBDeD">
      <property role="TrG5h" value="at_magazine" />
      <node concept="2zB9wT" id="1rxLtFPnd3G" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1rxLtFPnd3J" role="2zBDeD">
      <property role="TrG5h" value="at_client" />
      <node concept="2zB9wT" id="1rxLtFPnd3P" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1rxLtFPnd3S" role="2zBDeD">
      <property role="TrG5h" value="vac_on" />
      <node concept="2zB9wT" id="1rxLtFPnd40" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1rxLtFPnd4Y" role="2zBDew">
      <property role="TrG5h" value="IND" />
      <node concept="2zBDeU" id="1rxLtFPnd54" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd43" resolve="vaccuum_on" />
      </node>
      <node concept="2zBDeU" id="1rxLtFPnd5a" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd4a" resolve="vaccuum_off" />
      </node>
      <node concept="2zBDeU" id="1rxLtFPnd5i" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd4j" resolve="to_magazaine" />
      </node>
      <node concept="2zBDeU" id="1rxLtFPnd5s" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd4u" resolve="to_client" />
      </node>
    </node>
  </node>
  <node concept="XJABO" id="1rxLtFPnd5y">
    <property role="TrG5h" value="StackMagazineIO" />
    <node concept="2zBDeF" id="1rxLtFPnd5Y" role="2zBDeH">
      <property role="TrG5h" value="retract" />
      <node concept="2zB9wT" id="1rxLtFPnd62" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1rxLtFPnd5z" role="2zBDeD">
      <property role="TrG5h" value="empty" />
      <node concept="2zB9wT" id="1rxLtFPnd5B" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1rxLtFPnd5E" role="2zBDeD">
      <property role="TrG5h" value="retracted" />
      <node concept="2zB9wT" id="1rxLtFPnd5K" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="1rxLtFPnd5N" role="2zBDeD">
      <property role="TrG5h" value="extended" />
      <node concept="2zB9wT" id="1rxLtFPnd5V" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="1rxLtFPnd65" role="2zBDey">
      <property role="TrG5h" value="REQ" />
      <node concept="2zBDeU" id="1rxLtFPnd6b" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd5z" resolve="empty" />
      </node>
      <node concept="2zBDeU" id="1rxLtFPnd6l" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd5E" resolve="retracted" />
      </node>
      <node concept="2zBDeU" id="1rxLtFPnd6t" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd5N" resolve="extended" />
      </node>
    </node>
    <node concept="2zBDe_" id="1rxLtFPnd6y" role="2zBDew">
      <property role="TrG5h" value="IND" />
      <node concept="2zBDeU" id="1rxLtFPnd6C" role="2zBDeW">
        <ref role="2zBDeT" node="1rxLtFPnd5Y" resolve="retract" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="G6ZN4MYPdv">
    <property role="TrG5h" value="Model" />
    <node concept="1N5Tq9" id="7MP0dMz4Ds" role="1N5PiV">
      <node concept="3IAvtB" id="7MP0dMz4Dv" role="2RhMK_">
        <ref role="1N5Pi4" node="G6ZN4MYPdE" resolve="ArmIO" />
        <ref role="1N5PlF" node="1rxLtFPnd3J" resolve="at_client" />
      </node>
      <node concept="3IAhSD" id="7MP0dMz4DB" role="2RhMKC">
        <ref role="1N5Pi4" node="G6ZN4MYPdE" resolve="ArmIO" />
        <ref role="1N5PlF" node="1rxLtFPnd4u" resolve="to_client" />
      </node>
      <node concept="bR73E" id="7MP0dMz4DE" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="116.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="2zBDe_" id="G6ZN4MYPdA" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="G6ZN4MYPdy" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="3Iw0dE" id="G6ZN4MYPdC" role="3YHajY">
      <property role="TrG5h" value="StackIO" />
      <ref role="3Iw0dH" node="1rxLtFPnd5y" resolve="StackMagazineIO" />
      <node concept="10YbkR" id="1CoiI8TYDHk" role="2oiVCh">
        <property role="10YbkC" value="843.0" />
        <property role="10YbkE" value="800.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="G6ZN4MYPdE" role="3YHajY">
      <property role="TrG5h" value="ArmIO" />
      <ref role="3Iw0dH" node="1rxLtFPnd3x" resolve="RotatingArmIO" />
      <node concept="10YbkR" id="1CoiI8TYDHm" role="2oiVCh">
        <property role="10YbkC" value="2900.0" />
        <property role="10YbkE" value="718.0" />
      </node>
    </node>
    <node concept="1N5Tq9" id="7MP0dMz9Li" role="1N5PiV">
      <node concept="3IAhSD" id="7MP0dMz9Lk" role="2RhMKC">
        <ref role="1N5Pi4" node="G6ZN4MYPdC" resolve="StackIO" />
        <ref role="1N5PlF" node="1rxLtFPnd5Y" resolve="retract" />
      </node>
      <node concept="3IAvtB" id="7MP0dMz9Ll" role="2RhMK_">
        <ref role="1N5Pi4" node="G6ZN4MYPdE" resolve="ArmIO" />
        <ref role="1N5PlF" node="1rxLtFPnd3C" resolve="at_magazine" />
      </node>
      <node concept="bR32z" id="7MP0dMz9Lm" role="bPNfo">
        <property role="bR32p" value="753.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="G6ZN4N48G6">
    <property role="TrG5h" value="DSControl1" />
    <node concept="2zBDe_" id="G6ZN4N48G9" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="G6ZN4N48G7" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="3IBQi5" id="G6ZN4N48Gb" role="3YHajr">
      <property role="TrG5h" value="StackIO" />
      <ref role="3IBQi8" node="1rxLtFPnd5y" resolve="StackMagazineIO" />
      <node concept="10YbkR" id="1CoiI8TYDEn" role="2oiNrz">
        <property role="10YbkC" value="3637.0" />
        <property role="10YbkE" value="631.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="G6ZN4N48Gd" role="3YHajr">
      <property role="TrG5h" value="ArmIO" />
      <ref role="3IBQi8" node="1rxLtFPnd3x" resolve="RotatingArmIO" />
      <node concept="10YbkR" id="1CoiI8TYDEp" role="2oiNrz">
        <property role="10YbkC" value="1362.0" />
        <property role="10YbkE" value="575.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="7qPnRGFpNOT" role="1N5PiQ">
      <node concept="3YHqtX" id="7qPnRGFpNOR" role="2RhMKC">
        <ref role="3Yz8TM" node="G6ZN4N48G7" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="7qPnRGFpNOS" role="2RhMK_">
        <ref role="1N5Pi3" node="1rxLtFPnd4Y" resolve="IND" />
        <ref role="1N5Pi4" node="G6ZN4N48Gd" resolve="ArmIO" />
      </node>
      <node concept="bR32z" id="1CoiI8TYDF3" role="bPNfo">
        <property role="bR32p" value="118.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="1CoiI8TYDEO" role="1N5PiQ">
      <node concept="3YB4oO" id="1CoiI8TYDEM" role="2RhMKC">
        <ref role="1N5Pi3" node="1rxLtFPnd3y" resolve="REQ" />
        <ref role="1N5Pi4" node="G6ZN4N48Gd" resolve="ArmIO" />
      </node>
      <node concept="3Yx0EI" id="1CoiI8TYDEN" role="2RhMK_">
        <ref role="1N5Pi3" node="1rxLtFPnd6y" resolve="IND" />
        <ref role="1N5Pi4" node="G6ZN4N48Gb" resolve="StackIO" />
      </node>
      <node concept="bR32z" id="1CoiI8TYDF4" role="bPNfo">
        <property role="bR32p" value="425.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="G6ZN4N49KI">
    <property role="TrG5h" value="DistributingStation" />
    <node concept="2zBDe_" id="2lwHqHkihC4" role="2zBDey">
      <property role="TrG5h" value="X" />
    </node>
    <node concept="1N5Tt1" id="G6ZN4N49KJ" role="1N5PiY">
      <property role="TrG5h" value="Model" />
      <ref role="1N5Tt0" node="G6ZN4MYPdv" resolve="Model" />
      <node concept="10YbkR" id="3IX4BsKohuX" role="b_cXm">
        <property role="10YbkC" value="3206.0" />
        <property role="10YbkE" value="543.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="G6ZN4N49KL" role="1N5PiY">
      <property role="TrG5h" value="Control" />
      <ref role="1N5Tt0" node="G6ZN4N48G6" resolve="DSControl1" />
      <node concept="10YbkR" id="3IX4BsKohuY" role="b_cXm">
        <property role="10YbkC" value="1743.0" />
        <property role="10YbkE" value="543.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1CoiI8TYDG3" role="3IAhBJ">
      <node concept="3YV02_" id="1CoiI8TYDG1" role="2RhMKC">
        <ref role="3YV02y" node="G6ZN4N49KL" resolve="Control" />
        <ref role="3YV03s" node="G6ZN4N48Gb" resolve="StackIO" />
      </node>
      <node concept="3YV9EJ" id="1CoiI8TYDG2" role="2RhMK_">
        <ref role="3YV9Vn" node="G6ZN4N49KJ" resolve="Model" />
        <ref role="3YV9Vh" node="G6ZN4MYPdC" resolve="StackIO" />
      </node>
      <node concept="bR32z" id="1CoiI8TZJ1c" role="bPNfo">
        <property role="bR32p" value="325.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="1CoiI8TYDGk" role="3IAhBJ">
      <node concept="3YV02_" id="1CoiI8TYDGi" role="2RhMKC">
        <ref role="3YV02y" node="G6ZN4N49KL" resolve="Control" />
        <ref role="3YV03s" node="G6ZN4N48Gd" resolve="ArmIO" />
      </node>
      <node concept="3YV9EJ" id="1CoiI8TYDGj" role="2RhMK_">
        <ref role="3YV9Vn" node="G6ZN4N49KJ" resolve="Model" />
        <ref role="3YV9Vh" node="G6ZN4MYPdE" resolve="ArmIO" />
      </node>
      <node concept="bR32z" id="1CoiI8TZJ1b" role="bPNfo">
        <property role="bR32p" value="325.0" />
      </node>
    </node>
    <node concept="1N5Tqi" id="1CoiI8TYDH1" role="1N5PiQ">
      <node concept="3YHqtX" id="1CoiI8TYDGZ" role="2RhMKC">
        <ref role="3Yz8TM" node="2lwHqHkihC4" resolve="X" />
      </node>
      <node concept="3Yx0EI" id="1CoiI8TYDH0" role="2RhMK_">
        <ref role="1N5Pi3" node="G6ZN4N48G7" resolve="INIT" />
        <ref role="1N5Pi4" node="G6ZN4N49KL" resolve="Control" />
      </node>
      <node concept="bR32z" id="1CoiI8TYDH2" role="bPNfo">
        <property role="bR32p" value="806.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="G6ZN4N970E">
    <property role="TrG5h" value="DSControl2" />
    <node concept="2zAPAp" id="2R0WzquVuxO" role="2zAPwS">
      <property role="TrG5h" value="PrepareArm" />
      <node concept="1tttXp" id="2R0WzquVuxS" role="1toi31">
        <node concept="1y1qLN" id="7DSsXPFKRNw" role="1y4NXT" />
      </node>
    </node>
    <node concept="2zAPAp" id="2R0WzquVuxV" role="2zAPwS">
      <property role="TrG5h" value="PrepareStack" />
      <node concept="1tttXp" id="2R0WzquVuy1" role="1toi31">
        <node concept="1y1qLN" id="7DSsXPFKRNy" role="1y4NXT" />
      </node>
    </node>
    <node concept="2zAPAq" id="G6ZN4N971g" role="2zAPxA">
      <ref role="2zAPx3" node="G6ZN4N970F" resolve="START" />
      <ref role="2zAPx1" node="G6ZN4N970Y" resolve="INIT" />
      <node concept="2EVYwv" id="G6ZN4N971h" role="2zAZMv">
        <node concept="3YHqtX" id="2R0WzquVuw$" role="2N3Qeb">
          <ref role="3Yz8TM" node="G6ZN4N970L" resolve="INIT" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtra" role="2WSJUY">
        <property role="10YbkC" value="756.0" />
        <property role="10YbkE" value="1875.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="2R0WzquVuwJ" role="2zAPxA">
      <ref role="2zAPx3" node="G6ZN4N970Y" resolve="INIT" />
      <ref role="2zAPx1" node="2R0WzquVuwB" resolve="ARM" />
      <node concept="2EVYwv" id="2R0WzquVuwK" role="2zAZMv">
        <node concept="3YB4oO" id="2R0WzquVuwS" role="2N3Qeb">
          <ref role="1N5Pi3" node="1rxLtFPnd3y" resolve="REQ" />
          <ref role="1N5Pi4" node="G6ZN4N970I" resolve="ArmIO" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtrb" role="2WSJUY">
        <property role="10YbkC" value="2425.0" />
        <property role="10YbkE" value="1531.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="2R0WzquVuxa" role="2zAPxA">
      <ref role="2zAPx3" node="G6ZN4N970Y" resolve="INIT" />
      <ref role="2zAPx1" node="2R0WzquVuxo" resolve="STACK" />
      <node concept="2EVYwv" id="2R0WzquVuxb" role="2zAZMv">
        <node concept="3YB4oO" id="2R0WzquVuxc" role="2N3Qeb">
          <ref role="1N5Pi3" node="1rxLtFPnd65" resolve="REQ" />
          <ref role="1N5Pi4" node="G6ZN4N970H" resolve="StackIO" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtrc" role="2WSJUY">
        <property role="10YbkC" value="2250.0" />
        <property role="10YbkE" value="2287.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="2R0WzquVux0" role="2zAPxA">
      <ref role="2zAPx3" node="2R0WzquVuwB" resolve="ARM" />
      <ref role="2zAPx1" node="G6ZN4N970Y" resolve="INIT" />
      <node concept="2EVYwv" id="2R0WzquVux1" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtrd" role="2WSJUY">
        <property role="10YbkC" value="1925.0" />
        <property role="10YbkE" value="1468.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="2R0WzquVux_" role="2zAPxA">
      <ref role="2zAPx1" node="G6ZN4N970Y" resolve="INIT" />
      <ref role="2zAPx3" node="2R0WzquVuxo" resolve="STACK" />
      <node concept="2EVYwv" id="2R0WzquVuxA" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtre" role="2WSJUY">
        <property role="10YbkC" value="1712.0" />
        <property role="10YbkE" value="2543.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="G6ZN4N970F" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="5jb5jNCal_s" role="2WOQdS">
        <property role="10YbkC" value="718.0" />
        <property role="10YbkE" value="1193.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="G6ZN4N970Y" role="2zAPwY">
      <property role="TrG5h" value="INIT" />
      <node concept="2zAPAr" id="2R0WzquXoF8" role="2zAPBK">
        <node concept="3YHrnl" id="2R0WzquXoFb" role="2NbhEN">
          <ref role="3Yz8TM" node="G6ZN4N970N" resolve="INITO" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_t" role="2WOQdS">
        <property role="10YbkC" value="2056.0" />
        <property role="10YbkE" value="1912.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="2R0WzquVuwB" role="2zAPwY">
      <property role="TrG5h" value="ARM" />
      <node concept="2zAPAr" id="2R0WzquVuwX" role="2zAPBK">
        <ref role="2zAPAu" node="2R0WzquVuxO" resolve="PrepareArm" />
        <node concept="3Yx0EI" id="2R0WzquXoFd" role="2NbhEN">
          <ref role="1N5Pi3" node="1rxLtFPnd4Y" resolve="IND" />
          <ref role="1N5Pi4" node="G6ZN4N970I" resolve="ArmIO" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_u" role="2WOQdS">
        <property role="10YbkC" value="2156.0" />
        <property role="10YbkE" value="1162.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="2R0WzquVuxo" role="2zAPwY">
      <property role="TrG5h" value="STACK" />
      <node concept="2zAPAr" id="2R0WzquVuxq" role="2zAPBK">
        <ref role="2zAPAu" node="2R0WzquVuxV" resolve="PrepareStack" />
        <node concept="3Yx0EI" id="2R0WzquXoFf" role="2NbhEN">
          <ref role="1N5Pi3" node="1rxLtFPnd6y" resolve="IND" />
          <ref role="1N5Pi4" node="G6ZN4N970H" resolve="StackIO" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_v" role="2WOQdS">
        <property role="10YbkC" value="2018.0" />
        <property role="10YbkE" value="2868.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="G6ZN4N970H" role="3YHajr">
      <property role="TrG5h" value="StackIO" />
      <ref role="3IBQi8" node="1rxLtFPnd5y" resolve="StackMagazineIO" />
      <node concept="10YbkR" id="1CoiI8TYDF7" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="G6ZN4N970I" role="3YHajr">
      <property role="TrG5h" value="ArmIO" />
      <ref role="3IBQi8" node="1rxLtFPnd3x" resolve="RotatingArmIO" />
      <node concept="10YbkR" id="1CoiI8TYDF9" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDe_" id="G6ZN4N970L" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="2zBDe_" id="G6ZN4N970N" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
  </node>
</model>

