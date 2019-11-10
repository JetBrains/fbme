<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:02589d2f-0161-41cb-817b-e5767f9e0127(iec61499.sandbox.festo)">
  <persistence version="9" />
  <languages>
    <use id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout" version="0" />
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="iec61499" version="0" />
    <use id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="ST" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="ST">
      <concept id="4280485643802103610" name="ST.structure.BoolType" flags="ng" index="2zB9wT" />
      <concept id="8872717756041500089" name="ST.structure.StatementList" flags="ng" index="1y1qLN" />
    </language>
    <language id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="iec61499">
      <concept id="4304617121958142617" name="iec61499.structure.StraightConnectionPath" flags="ng" index="bR33I" />
      <concept id="4280485643802119831" name="iec61499.structure.StateDeclaration" flags="ng" index="2zAPAk">
        <child id="4280485643802119923" name="actions" index="2zAPBK" />
        <child id="6110000670794348100" name="position" index="2WOQdS" />
      </concept>
      <concept id="4280485643802119834" name="iec61499.structure.AlgorithmDeclaration" flags="ng" index="2zAPAp">
        <child id="1794427914276976239" name="body" index="1toi31" />
      </concept>
      <concept id="4280485643802119833" name="iec61499.structure.StateTransition" flags="ng" index="2zAPAq">
        <reference id="4280485643802120002" name="targetState" index="2zAPx1" />
        <reference id="4280485643802120000" name="sourceState" index="2zAPx3" />
        <child id="4280485643802160028" name="condition" index="2zAZMv" />
        <child id="6110000670795492226" name="position" index="2WSJUY" />
      </concept>
      <concept id="4280485643802119832" name="iec61499.structure.StateAction" flags="ng" index="2zAPAr">
        <reference id="4280485643802119837" name="algorithm" index="2zAPAu" />
        <child id="3296901243643750533" name="event" index="2NbhEN" />
      </concept>
      <concept id="4280485643801969830" name="iec61499.structure.EventDeclaration" flags="ng" index="2zBDe_">
        <child id="4280485643801969855" name="associatedVariables" index="2zBDeW" />
      </concept>
      <concept id="4280485643801969832" name="iec61499.structure.ParameterDeclaration" flags="ng" index="2zBDeF">
        <child id="4280485643802059164" name="type" index="2zB7qv" />
      </concept>
      <concept id="4280485643801969849" name="iec61499.structure.ParameterAssociation" flags="ng" index="2zBDeU">
        <reference id="4280485643801969850" name="declaration" index="2zBDeT" />
      </concept>
      <concept id="4280485643801969857" name="iec61499.structure.BasicFBTypeDeclaration" flags="ng" index="2zBDf2">
        <child id="4280485643802119995" name="algorithms" index="2zAPwS" />
        <child id="4280485643802119997" name="states" index="2zAPwY" />
        <child id="4280485643802120037" name="transitions" index="2zAPxA" />
      </concept>
      <concept id="7206730950341598082" name="iec61499.structure.TransitionCondition" flags="ng" index="2EVYwv">
        <child id="3296901243641762237" name="event" index="2N3Qeb" />
      </concept>
      <concept id="5481506291238376594" name="iec61499.structure.Connection" flags="ng" index="2RhMLZ">
        <child id="4304617121958732207" name="path" index="bPNfo" />
        <child id="5481506291238376648" name="destination" index="2RhMK_" />
        <child id="5481506291238376645" name="source" index="2RhMKC" />
      </concept>
      <concept id="3018159903918042962" name="iec61499.structure.DeclarationWithInterface" flags="ng" index="XJwsz">
        <child id="4280485643801969827" name="outputEvents" index="2zBDew" />
        <child id="4280485643801969825" name="inputEvents" index="2zBDey" />
        <child id="4280485643801969834" name="inputVariables" index="2zBDeD" />
        <child id="4280485643801969838" name="outputVariables" index="2zBDeH" />
      </concept>
      <concept id="3018159903918047621" name="iec61499.structure.AdapterTypeDeclaration" flags="ng" index="XJABO" />
      <concept id="6049904230683977455" name="iec61499.structure.Position" flags="ng" index="10YbkR">
        <property id="6049904230683977456" name="x" index="10YbkC" />
        <property id="6049904230683977458" name="y" index="10YbkE" />
      </concept>
      <concept id="1794427914277800439" name="iec61499.structure.STAlgorithmBody" flags="ng" index="1tttXp">
        <child id="8872717756042118835" name="body" index="1y4NXT" />
      </concept>
      <concept id="3589220129093680090" name="iec61499.structure.SocketDeclaration" flags="ng" index="3Iw0dE">
        <reference id="3589220129093680093" name="adapterType" index="3Iw0dH" />
      </concept>
      <concept id="3589220129094132068" name="iec61499.structure.AdapterConnection" flags="ng" index="3IAhBk" />
      <concept id="3589220129093721141" name="iec61499.structure.PlugDeclaration" flags="ng" index="3IBQi5">
        <reference id="3589220129093721144" name="adapterType" index="3IBQi8" />
      </concept>
      <concept id="554302972921896510" name="iec61499.structure.DeclarationWithInterfaceAndAdapters" flags="ng" index="3LgDAz">
        <child id="8167217573769997767" name="plugs" index="3YHajr" />
        <child id="8167217573769997794" name="sockets" index="3YHajY" />
      </concept>
      <concept id="967875482185482517" name="iec61499.structure.ComponentEventEndpoint" flags="ng" index="1N5Pia">
        <reference id="967875482185482524" name="declaration" index="1N5Pi3" />
        <reference id="967875482185482523" name="component" index="1N5Pi4" />
      </concept>
      <concept id="967875482185433869" name="iec61499.structure.EventConnection" flags="ng" index="1N5Tqi" />
      <concept id="967875482185433822" name="iec61499.structure.FunctionBlockInstance" flags="ng" index="1N5Tt1">
        <reference id="967875482185433823" name="type" index="1N5Tt0" />
        <child id="4304617121954520353" name="position" index="b_cXm" />
      </concept>
      <concept id="967875482185433821" name="iec61499.structure.CompositeFBTypeDeclaration" flags="ng" index="1N5Tt2" />
      <concept id="2693352324618654708" name="iec61499.structure.IWithFBNetwork" flags="ng" index="1QJEpv">
        <child id="3589220129094132063" name="adapterConnections" index="3IAhBJ" />
        <child id="967875482185482537" name="eventConnections" index="1N5PiQ" />
        <child id="967875482185482529" name="functionBlocks" index="1N5PiY" />
      </concept>
      <concept id="8167217573768971186" name="iec61499.structure.ComponentEventDestination" flags="ng" index="3Yx0EI" />
      <concept id="8167217573769463661" name="iec61499.structure.ContextEventEndpoint" flags="ng" index="3Yz8TL">
        <reference id="8167217573769463662" name="declaration" index="3Yz8TM" />
      </concept>
      <concept id="8167217573768433448" name="iec61499.structure.ComponentEventSource" flags="ng" index="3YB4oO" />
      <concept id="8167217573769932385" name="iec61499.structure.ContextEventSource" flags="ng" index="3YHqtX" />
      <concept id="8167217573769936073" name="iec61499.structure.ContextEventDestination" flags="ng" index="3YHrnl" />
      <concept id="8167217573767399865" name="iec61499.structure.FBPlugReference" flags="ng" index="3YV02_">
        <reference id="8167217573767399870" name="component" index="3YV02y" />
        <reference id="8167217573767399872" name="declaration" index="3YV03s" />
      </concept>
      <concept id="8167217573767369651" name="iec61499.structure.FBSocketReference" flags="ng" index="3YV9EJ">
        <reference id="8167217573767370701" name="declaration" index="3YV9Vh" />
        <reference id="8167217573767370699" name="component" index="3YV9Vn" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout">
      <concept id="6720495385597071406" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Box" flags="ng" index="gqqVs">
        <property id="6720495385597071504" name="bounds_height" index="gqqTy" />
        <property id="6720495385597071502" name="bounds_y" index="gqqTW" />
        <property id="6720495385597071503" name="bounds_width" index="gqqTX" />
        <property id="6720495385597071501" name="bounds_x" index="gqqTZ" />
        <property id="4583510071007917016" name="transform" index="TgtnS" />
        <child id="738815095926774816" name="portLayouts" index="1pap1a" />
      </concept>
      <concept id="2319506556913310852" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Connection" flags="ng" index="2VclpC">
        <child id="2319506556913311101" name="anchors" index="2Vcluh" />
        <child id="4767615435799372763" name="labels" index="3ul5Gx" />
      </concept>
      <concept id="2319506556913310727" name="de.itemis.mps.editor.diagram.layout.structure.Point" flags="ng" index="2VclrF">
        <property id="2319506556913310861" name="x" index="2Vclpx" />
        <property id="2319506556913310863" name="y" index="2Vclpz" />
      </concept>
      <concept id="8963411245960991886" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMap" flags="ng" index="37mRI7">
        <child id="8963411245960991904" name="entries" index="37mRID" />
      </concept>
      <concept id="8963411245960991903" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMapEntry" flags="ng" index="37mRIm">
        <property id="8963411245960998400" name="key" index="37mO49" />
        <child id="8963411245960998404" name="value" index="37mO4d" />
      </concept>
      <concept id="738815095926749345" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Port" flags="ng" index="1pa3jb">
        <property id="7964702570467115501" name="ordinal" index="2gRgW$" />
        <property id="738815095926749379" name="portName" index="1pa3iD" />
      </concept>
      <concept id="4767615435799372731" name="de.itemis.mps.editor.diagram.layout.structure.Layout_EdgeLabel" flags="ng" index="3ul5H1">
        <property id="4767615435799372759" name="type" index="3ul5GH" />
        <child id="4767615435799372761" name="position" index="3ul5Gz" />
      </concept>
      <concept id="3253043142928125505" name="de.itemis.mps.editor.diagram.layout.structure.RelativePosition" flags="ng" index="3wpmZ1">
        <child id="3253043142928125557" name="referencePoint" index="3wpmZP" />
        <child id="3253043142928125559" name="offset" index="3wpmZR" />
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
    <node concept="2zBDe_" id="G6ZN4MYPdA" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="G6ZN4MYPdy" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="37mRI7" id="G6ZN4MYPdI" role="lGtFl">
      <node concept="37mRIm" id="G6ZN4MYPdJ" role="37mRID">
        <property role="37mO49" value="794602971051283304" />
        <node concept="gqqVs" id="G6ZN4MYPdH" role="37mO4d">
          <property role="gqqTZ" value="78.0" />
          <property role="gqqTW" value="8.5" />
          <property role="gqqTX" value="276.0" />
          <property role="gqqTy" value="131.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="G6ZN4MYPdL" role="37mRID">
        <property role="37mO49" value="794602971051283306" />
        <node concept="gqqVs" id="G6ZN4MYPdK" role="37mO4d">
          <property role="gqqTZ" value="404.0" />
          <property role="gqqTW" value="0.0" />
          <property role="gqqTX" value="316.0" />
          <property role="gqqTy" value="148.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="G6ZN4MYPdN" role="37mRID">
        <property role="37mO49" value="794602971051283298" />
        <node concept="gqqVs" id="G6ZN4MYPdM" role="37mO4d">
          <property role="gqqTZ" value="1.0" />
          <property role="gqqTW" value="33.0" />
          <property role="gqqTX" value="44.0" />
          <property role="gqqTy" value="29.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="G6ZN4MYPdP" role="37mRID">
        <property role="37mO49" value="794602971051283302" />
        <node concept="gqqVs" id="G6ZN4MYPdO" role="37mO4d">
          <property role="gqqTZ" value="746.0" />
          <property role="gqqTW" value="17.0" />
          <property role="gqqTX" value="52.0" />
          <property role="gqqTy" value="29.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
    </node>
    <node concept="3Iw0dE" id="G6ZN4MYPdC" role="3YHajY">
      <property role="TrG5h" value="StackIO" />
      <ref role="3Iw0dH" node="1rxLtFPnd5y" resolve="StackMagazineIO" />
    </node>
    <node concept="3Iw0dE" id="G6ZN4MYPdE" role="3YHajY">
      <property role="TrG5h" value="ArmIO" />
      <ref role="3Iw0dH" node="1rxLtFPnd3x" resolve="RotatingArmIO" />
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
    <node concept="37mRI7" id="G6ZN4N48Gh" role="lGtFl">
      <node concept="37mRIm" id="G6ZN4N48Gi" role="37mRID">
        <property role="37mO49" value="794602971052673803" />
        <node concept="gqqVs" id="G6ZN4N48Gg" role="37mO4d">
          <property role="gqqTZ" value="88.00019836425781" />
          <property role="gqqTW" value="12.0" />
          <property role="gqqTX" value="274.0" />
          <property role="gqqTy" value="134.64285714285717" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="G6ZN4N48Gk" role="37mRID">
        <property role="37mO49" value="794602971052673805" />
        <node concept="gqqVs" id="G6ZN4N48Gj" role="37mO4d">
          <property role="gqqTZ" value="80.00019836425781" />
          <property role="gqqTW" value="166.64285714285717" />
          <property role="gqqTX" value="314.0" />
          <property role="gqqTy" value="151.75" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="G6ZN4N48Gm" role="37mRID">
        <property role="37mO49" value="794602971052673799" />
        <node concept="gqqVs" id="G6ZN4N48Gl" role="37mO4d">
          <property role="gqqTZ" value="12.000100000000003" />
          <property role="gqqTW" value="179.89280714285718" />
          <property role="gqqTX" value="42.0" />
          <property role="gqqTy" value="27.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="G6ZN4N48Go" role="37mRID">
        <property role="37mO49" value="794602971052673801" />
        <node concept="gqqVs" id="G6ZN4N48Gn" role="37mO4d">
          <property role="gqqTZ" value="12.000099999999975" />
          <property role="gqqTW" value="12.0" />
          <property role="gqqTX" value="50.0" />
          <property role="gqqTy" value="27.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
    </node>
    <node concept="3IBQi5" id="G6ZN4N48Gb" role="3YHajr">
      <property role="TrG5h" value="StackIO" />
      <ref role="3IBQi8" node="1rxLtFPnd5y" resolve="StackMagazineIO" />
    </node>
    <node concept="3IBQi5" id="G6ZN4N48Gd" role="3YHajr">
      <property role="TrG5h" value="ArmIO" />
      <ref role="3IBQi8" node="1rxLtFPnd3x" resolve="RotatingArmIO" />
    </node>
    <node concept="1N5Tqi" id="7qPnRGFpNOT" role="1N5PiQ">
      <node concept="3YHqtX" id="7qPnRGFpNOR" role="2RhMKC">
        <ref role="3Yz8TM" node="G6ZN4N48G7" resolve="INIT" />
      </node>
      <node concept="3Yx0EI" id="7qPnRGFpNOS" role="2RhMK_">
        <ref role="1N5Pi4" node="G6ZN4N48Gd" resolve="ArmIO" />
        <ref role="1N5Pi3" node="1rxLtFPnd4Y" resolve="IND" />
      </node>
      <node concept="bR33I" id="3IX4BsKsymY" role="bPNfo" />
    </node>
  </node>
  <node concept="1N5Tt2" id="G6ZN4N49KI">
    <property role="TrG5h" value="DistributingStation" />
    <node concept="2zBDe_" id="2lwHqHkihC4" role="2zBDey">
      <property role="TrG5h" value="X" />
    </node>
    <node concept="37mRI7" id="G6ZN4N49KP" role="lGtFl">
      <node concept="37mRIm" id="G6ZN4N49KQ" role="37mRID">
        <property role="37mO49" value="794602971052678191" />
        <node concept="gqqVs" id="G6ZN4N49KO" role="37mO4d">
          <property role="gqqTZ" value="-158.62670546505382" />
          <property role="gqqTW" value="35.527345255452104" />
          <property role="gqqTX" value="180.0" />
          <property role="gqqTy" value="131.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="G6ZN4N49KS" role="37mRID">
        <property role="37mO49" value="794602971052678193" />
        <node concept="gqqVs" id="G6ZN4N49KR" role="37mO4d">
          <property role="gqqTZ" value="207.37329453494618" />
          <property role="gqqTW" value="35.527345255452104" />
          <property role="gqqTX" value="212.0" />
          <property role="gqqTy" value="131.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="2lwHqHklpdH" role="1pap1a">
            <property role="1pa3iD" value="StackIO" />
            <property role="2gRgW$" value="238" />
          </node>
          <node concept="1pa3jb" id="2lwHqHklpdI" role="1pap1a">
            <property role="1pa3iD" value="ArmIO" />
            <property role="2gRgW$" value="260" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="G6ZN4N49Lq" role="37mRID">
        <property role="37mO49" value="794602971052678218" />
        <node concept="2VclpC" id="G6ZN4N49Lp" role="37mO4d">
          <node concept="2VclrF" id="G6ZN4N49Lr" role="2Vcluh">
            <property role="2Vclpx" value="448.3732945349461" />
            <property role="2Vclpz" value="155.61067858878542" />
          </node>
          <node concept="2VclrF" id="G6ZN4N49Ls" role="2Vcluh">
            <property role="2Vclpx" value="448.3732945349461" />
            <property role="2Vclpz" value="200.02734525545213" />
          </node>
          <node concept="2VclrF" id="G6ZN4N49Lt" role="2Vcluh">
            <property role="2Vclpx" value="-185.62670546505382" />
            <property role="2Vclpz" value="200.02734525545213" />
          </node>
          <node concept="2VclrF" id="G6ZN4N49Lu" role="2Vcluh">
            <property role="2Vclpx" value="-185.62670546505382" />
            <property role="2Vclpz" value="155.61067858878542" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="G6ZN4N49LX" role="37mRID">
        <property role="37mO49" value="794602971052678212" />
        <node concept="2VclpC" id="G6ZN4N49LW" role="37mO4d">
          <node concept="2VclrF" id="G6ZN4N49LY" role="2Vcluh">
            <property role="2Vclpx" value="462.3732945349461" />
            <property role="2Vclpz" value="133.7773452554521" />
          </node>
          <node concept="2VclrF" id="G6ZN4N49LZ" role="2Vcluh">
            <property role="2Vclpx" value="462.3732945349461" />
            <property role="2Vclpz" value="215.02734525545213" />
          </node>
          <node concept="2VclrF" id="G6ZN4N49M0" role="2Vcluh">
            <property role="2Vclpx" value="-199.62670546505382" />
            <property role="2Vclpz" value="215.02734525545213" />
          </node>
          <node concept="2VclrF" id="G6ZN4N49M1" role="2Vcluh">
            <property role="2Vclpx" value="-199.62670546505382" />
            <property role="2Vclpz" value="133.7773452554521" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="2lwHqHkihC7" role="37mRID">
        <property role="37mO49" value="2693352324625668612" />
        <node concept="gqqVs" id="2lwHqHkihC6" role="37mO4d">
          <property role="gqqTZ" value="-350.0" />
          <property role="gqqTW" value="-34.0" />
          <property role="gqqTX" value="30.0" />
          <property role="gqqTy" value="29.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
    </node>
    <node concept="1N5Tt1" id="G6ZN4N49KJ" role="1N5PiY">
      <property role="TrG5h" value="Model" />
      <ref role="1N5Tt0" node="G6ZN4MYPdv" resolve="Model" />
      <node concept="10YbkR" id="3IX4BsKohuX" role="b_cXm">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="G6ZN4N49KL" role="1N5PiY">
      <property role="TrG5h" value="Control" />
      <ref role="1N5Tt0" node="G6ZN4N48G6" resolve="DSControl1" />
      <node concept="10YbkR" id="3IX4BsKohuY" role="b_cXm">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="G6ZN4N49L4" role="3IAhBJ">
      <node concept="3YV02_" id="G6ZN4N49L5" role="2RhMKC">
        <ref role="3YV02y" node="G6ZN4N49KL" resolve="Control" />
        <ref role="3YV03s" node="G6ZN4N48Gb" resolve="StackIO" />
      </node>
      <node concept="3YV9EJ" id="G6ZN4N49L6" role="2RhMK_">
        <ref role="3YV9Vn" node="G6ZN4N49KJ" resolve="Model" />
        <ref role="3YV9Vh" node="G6ZN4MYPdC" resolve="StackIO" />
      </node>
      <node concept="bR33I" id="3IX4BsKsymW" role="bPNfo" />
    </node>
    <node concept="3IAhBk" id="G6ZN4N49La" role="3IAhBJ">
      <node concept="3YV02_" id="G6ZN4N49Lb" role="2RhMKC">
        <ref role="3YV02y" node="G6ZN4N49KL" resolve="Control" />
        <ref role="3YV03s" node="G6ZN4N48Gd" resolve="ArmIO" />
      </node>
      <node concept="3YV9EJ" id="G6ZN4N49Lc" role="2RhMK_">
        <ref role="3YV9Vn" node="G6ZN4N49KJ" resolve="Model" />
        <ref role="3YV9Vh" node="G6ZN4MYPdE" resolve="ArmIO" />
      </node>
      <node concept="bR33I" id="3IX4BsKsymX" role="bPNfo" />
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
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="2R0WzquVuwJ" role="2zAPxA">
      <ref role="2zAPx3" node="G6ZN4N970Y" resolve="INIT" />
      <ref role="2zAPx1" node="2R0WzquVuwB" resolve="ARM" />
      <node concept="2EVYwv" id="2R0WzquVuwK" role="2zAZMv">
        <node concept="3YB4oO" id="2R0WzquVuwS" role="2N3Qeb">
          <ref role="1N5Pi4" node="G6ZN4N970I" resolve="ArmIO" />
          <ref role="1N5Pi3" node="1rxLtFPnd3y" resolve="REQ" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtrb" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="2R0WzquVuxa" role="2zAPxA">
      <ref role="2zAPx3" node="G6ZN4N970Y" resolve="INIT" />
      <ref role="2zAPx1" node="2R0WzquVuxo" resolve="STACK" />
      <node concept="2EVYwv" id="2R0WzquVuxb" role="2zAZMv">
        <node concept="3YB4oO" id="2R0WzquVuxc" role="2N3Qeb">
          <ref role="1N5Pi4" node="G6ZN4N970H" resolve="StackIO" />
          <ref role="1N5Pi3" node="1rxLtFPnd65" resolve="REQ" />
        </node>
      </node>
      <node concept="10YbkR" id="38k27ITgtrc" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="2R0WzquVux0" role="2zAPxA">
      <ref role="2zAPx3" node="2R0WzquVuwB" resolve="ARM" />
      <ref role="2zAPx1" node="G6ZN4N970Y" resolve="INIT" />
      <node concept="2EVYwv" id="2R0WzquVux1" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtrd" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAq" id="2R0WzquVux_" role="2zAPxA">
      <ref role="2zAPx1" node="G6ZN4N970Y" resolve="INIT" />
      <ref role="2zAPx3" node="2R0WzquVuxo" resolve="STACK" />
      <node concept="2EVYwv" id="2R0WzquVuxA" role="2zAZMv" />
      <node concept="10YbkR" id="38k27ITgtre" role="2WSJUY">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="G6ZN4N970F" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="5jb5jNCal_s" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
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
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="2R0WzquVuwB" role="2zAPwY">
      <property role="TrG5h" value="ARM" />
      <node concept="2zAPAr" id="2R0WzquVuwX" role="2zAPBK">
        <ref role="2zAPAu" node="2R0WzquVuxO" resolve="PrepareArm" />
        <node concept="3Yx0EI" id="2R0WzquXoFd" role="2NbhEN">
          <ref role="1N5Pi4" node="G6ZN4N970I" resolve="ArmIO" />
          <ref role="1N5Pi3" node="1rxLtFPnd4Y" resolve="IND" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_u" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zAPAk" id="2R0WzquVuxo" role="2zAPwY">
      <property role="TrG5h" value="STACK" />
      <node concept="2zAPAr" id="2R0WzquVuxq" role="2zAPBK">
        <ref role="2zAPAu" node="2R0WzquVuxV" resolve="PrepareStack" />
        <node concept="3Yx0EI" id="2R0WzquXoFf" role="2NbhEN">
          <ref role="1N5Pi4" node="G6ZN4N970H" resolve="StackIO" />
          <ref role="1N5Pi3" node="1rxLtFPnd6y" resolve="IND" />
        </node>
      </node>
      <node concept="10YbkR" id="5jb5jNCal_v" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="37mRI7" id="G6ZN4N970Q" role="lGtFl">
      <node concept="37mRIm" id="G6ZN4N970R" role="37mRID">
        <property role="37mO49" value="794602971053977643" />
        <node concept="gqqVs" id="G6ZN4N970P" role="37mO4d">
          <property role="gqqTZ" value="211.0" />
          <property role="gqqTW" value="52.0001" />
          <property role="gqqTX" value="50.0" />
          <property role="gqqTy" value="27.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoFi" role="37mRID">
        <property role="37mO49" value="794602971053977662" />
        <node concept="gqqVs" id="2R0WzquXoFh" role="37mO4d">
          <property role="gqqTZ" value="134.0" />
          <property role="gqqTW" value="156.00029836425782" />
          <property role="gqqTX" value="42.0" />
          <property role="gqqTy" value="27.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoFk" role="37mRID">
        <property role="37mO49" value="3296901243643750439" />
        <node concept="gqqVs" id="2R0WzquXoFj" role="37mO4d">
          <property role="gqqTZ" value="138.0" />
          <property role="gqqTW" value="260.0004967285156" />
          <property role="gqqTX" value="34.0" />
          <property role="gqqTy" value="27.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoFm" role="37mRID">
        <property role="37mO49" value="3296901243643750488" />
        <node concept="gqqVs" id="2R0WzquXoFl" role="37mO4d">
          <property role="gqqTZ" value="130.0" />
          <property role="gqqTW" value="52.0001" />
          <property role="gqqTX" value="50.0" />
          <property role="gqqTy" value="27.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoFo" role="37mRID">
        <property role="37mO49" value="794602971053977680" />
        <node concept="2VclpC" id="2R0WzquXoFn" role="37mO4d">
          <node concept="2VclrF" id="2R0WzquXoFp" role="2Vcluh">
            <property role="2Vclpx" value="237.00005" />
            <property role="2Vclpz" value="136.0001983642578" />
          </node>
          <node concept="2VclrF" id="2R0WzquXoFq" role="2Vcluh">
            <property role="2Vclpx" value="156.00005" />
            <property role="2Vclpz" value="136.0001983642578" />
          </node>
          <node concept="3ul5H1" id="2R0WzquXoFr" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2R0WzquXoFs" role="3ul5Gz">
              <node concept="2VclrF" id="2R0WzquXoFt" role="3wpmZR">
                <property role="2Vclpx" value="195.00005" />
                <property role="2Vclpz" value="99.00019836425781" />
              </node>
              <node concept="2VclrF" id="2R0WzquXoFu" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoFw" role="37mRID">
        <property role="37mO49" value="3296901243643750447" />
        <node concept="2VclpC" id="2R0WzquXoFv" role="37mO4d">
          <node concept="3ul5H1" id="2R0WzquXoFx" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2R0WzquXoFy" role="3ul5Gz">
              <node concept="2VclrF" id="2R0WzquXoFz" role="3wpmZR">
                <property role="2Vclpx" value="74.00004999999999" />
                <property role="2Vclpz" value="223.00039672851562" />
              </node>
              <node concept="2VclrF" id="2R0WzquXoF$" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoFA" role="37mRID">
        <property role="37mO49" value="3296901243643750474" />
        <node concept="2VclpC" id="2R0WzquXoF_" role="37mO4d">
          <node concept="2VclrF" id="2R0WzquXoFB" role="2Vcluh">
            <property role="2Vclpx" value="156.00005" />
            <property role="2Vclpz" value="203.00039672851562" />
          </node>
          <node concept="2VclrF" id="2R0WzquXoFC" role="2Vcluh">
            <property role="2Vclpx" value="110.0" />
            <property role="2Vclpz" value="203.00039672851562" />
          </node>
          <node concept="2VclrF" id="2R0WzquXoFD" role="2Vcluh">
            <property role="2Vclpx" value="110.0" />
            <property role="2Vclpz" value="12.0" />
          </node>
          <node concept="2VclrF" id="2R0WzquXoFE" role="2Vcluh">
            <property role="2Vclpx" value="156.00005" />
            <property role="2Vclpz" value="12.0" />
          </node>
          <node concept="3ul5H1" id="2R0WzquXoFF" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2R0WzquXoFG" role="3ul5Gz">
              <node concept="2VclrF" id="2R0WzquXoFH" role="3wpmZR">
                <property role="2Vclpx" value="12.0" />
                <property role="2Vclpz" value="99.00019836425781" />
              </node>
              <node concept="2VclrF" id="2R0WzquXoFI" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoFK" role="37mRID">
        <property role="37mO49" value="3296901243643750464" />
        <node concept="2VclpC" id="2R0WzquXoFJ" role="37mO4d">
          <node concept="2VclrF" id="2R0WzquXoFL" role="2Vcluh">
            <property role="2Vclpx" value="156.00005" />
            <property role="2Vclpz" value="307.0006103515625" />
          </node>
          <node concept="2VclrF" id="2R0WzquXoFM" role="2Vcluh">
            <property role="2Vclpx" value="196.0" />
            <property role="2Vclpz" value="307.0006103515625" />
          </node>
          <node concept="2VclrF" id="2R0WzquXoFN" role="2Vcluh">
            <property role="2Vclpx" value="196.0" />
            <property role="2Vclpz" value="136.0001983642578" />
          </node>
          <node concept="2VclrF" id="2R0WzquXoFO" role="2Vcluh">
            <property role="2Vclpx" value="156.00005" />
            <property role="2Vclpz" value="136.0001983642578" />
          </node>
          <node concept="3ul5H1" id="2R0WzquXoFP" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2R0WzquXoFQ" role="3ul5Gz">
              <node concept="2VclrF" id="2R0WzquXoFR" role="3wpmZR">
                <property role="2Vclpx" value="207.0" />
                <property role="2Vclpz" value="223.00039672851562" />
              </node>
              <node concept="2VclrF" id="2R0WzquXoFS" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoFU" role="37mRID">
        <property role="37mO49" value="3296901243643750501" />
        <node concept="2VclpC" id="2R0WzquXoFT" role="37mO4d">
          <node concept="3ul5H1" id="2R0WzquXoFV" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2R0WzquXoFW" role="3ul5Gz">
              <node concept="2VclrF" id="2R0WzquXoFX" role="3wpmZR">
                <property role="2Vclpx" value="167.00005" />
                <property role="2Vclpz" value="99.00019836425781" />
              </node>
              <node concept="2VclrF" id="2R0WzquXoFY" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoG0" role="37mRID">
        <property role="37mO49" value="794602971053977663" />
        <node concept="gqqVs" id="2R0WzquXoFZ" role="37mO4d">
          <property role="gqqTZ" value="0.0" />
          <property role="gqqTW" value="-10016.0" />
          <property role="gqqTX" value="10006.0" />
          <property role="gqqTy" value="10006.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoG2" role="37mRID">
        <property role="37mO49" value="3296901243643750440" />
        <node concept="gqqVs" id="2R0WzquXoG1" role="37mO4d">
          <property role="gqqTZ" value="0.0" />
          <property role="gqqTW" value="-10016.0" />
          <property role="gqqTX" value="10006.0" />
          <property role="gqqTy" value="10006.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2R0WzquXoG4" role="37mRID">
        <property role="37mO49" value="3296901243643750489" />
        <node concept="gqqVs" id="2R0WzquXoG3" role="37mO4d">
          <property role="gqqTZ" value="0.0" />
          <property role="gqqTW" value="-10016.0" />
          <property role="gqqTX" value="10006.0" />
          <property role="gqqTy" value="10006.0" />
        </node>
      </node>
    </node>
    <node concept="3IBQi5" id="G6ZN4N970H" role="3YHajr">
      <property role="TrG5h" value="StackIO" />
      <ref role="3IBQi8" node="1rxLtFPnd5y" resolve="StackMagazineIO" />
    </node>
    <node concept="3IBQi5" id="G6ZN4N970I" role="3YHajr">
      <property role="TrG5h" value="ArmIO" />
      <ref role="3IBQi8" node="1rxLtFPnd3x" resolve="RotatingArmIO" />
    </node>
    <node concept="2zBDe_" id="G6ZN4N970L" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="2zBDe_" id="G6ZN4N970N" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
  </node>
</model>

