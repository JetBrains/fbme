<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cb7bb46e-db4e-4c60-8bfe-1c06690663cc(iec64199.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="iec61499" version="0" />
    <use id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="iec61499">
      <concept id="4280485643802193727" name="iec61499.structure.AndExpression" flags="ng" index="2zABwW" />
      <concept id="4280485643802239115" name="iec61499.structure.EqualsExpression" flags="ng" index="2zAFu8" />
      <concept id="4280485643802239119" name="iec61499.structure.VariableReference" flags="ng" index="2zAFuc">
        <reference id="4280485643802239120" name="declaration" index="2zAFuj" />
      </concept>
      <concept id="4280485643802239122" name="iec61499.structure.NumericLiteral" flags="ng" index="2zAFuh">
        <property id="4280485643802239123" name="value" index="2zAFug" />
      </concept>
      <concept id="4280485643802119831" name="iec61499.structure.StateDeclaration" flags="ng" index="2zAPAk">
        <child id="4280485643802119923" name="actions" index="2zAPBK" />
      </concept>
      <concept id="4280485643802119834" name="iec61499.structure.AlgorithmDeclaration" flags="ng" index="2zAPAp" />
      <concept id="4280485643802119833" name="iec61499.structure.StateTransition" flags="ng" index="2zAPAq">
        <reference id="4280485643802120002" name="targetState" index="2zAPx1" />
        <reference id="4280485643802120000" name="sourceState" index="2zAPx3" />
        <child id="4280485643802160028" name="condition" index="2zAZMv" />
      </concept>
      <concept id="4280485643802119832" name="iec61499.structure.StateAction" flags="ng" index="2zAPAr">
        <reference id="4280485643802119839" name="outputEvent" index="2zAPAs" />
        <reference id="4280485643802119837" name="algorithm" index="2zAPAu" />
      </concept>
      <concept id="4280485643802176324" name="iec61499.structure.InputEventGuard" flags="ng" index="2zAVL7">
        <reference id="4280485643802176325" name="inputEvent" index="2zAVL6" />
      </concept>
      <concept id="4280485643802054397" name="iec61499.structure.UIntType" flags="ng" index="2zB5BY" />
      <concept id="4280485643802103610" name="iec61499.structure.BoolType" flags="ng" index="2zB9wT" />
      <concept id="4280485643801969824" name="iec61499.structure.FunctionBlockDeclarationBase" flags="ng" index="2zBDez">
        <child id="4280485643801969827" name="outputEvents" index="2zBDew" />
        <child id="4280485643801969825" name="inputEvents" index="2zBDey" />
        <child id="4280485643801969834" name="inputVariables" index="2zBDeD" />
        <child id="4280485643801969838" name="outputVariables" index="2zBDeH" />
      </concept>
      <concept id="4280485643801969830" name="iec61499.structure.EventDeclaration" flags="ng" index="2zBDe_">
        <child id="4280485643801969855" name="associatedVariables" index="2zBDeW" />
      </concept>
      <concept id="4280485643801969832" name="iec61499.structure.VariableDeclaration" flags="ng" index="2zBDeF">
        <child id="4280485643802059164" name="type" index="2zB7qv" />
      </concept>
      <concept id="4280485643801969849" name="iec61499.structure.VariableAssociation" flags="ng" index="2zBDeU">
        <reference id="4280485643801969850" name="declaration" index="2zBDeT" />
      </concept>
      <concept id="4280485643801969857" name="iec61499.structure.BasicFunctionBlockDeclaration" flags="ng" index="2zBDf2">
        <child id="4280485643802119995" name="algorithms" index="2zAPwS" />
        <child id="4280485643802119997" name="states" index="2zAPwY" />
        <child id="4280485643802120037" name="transitions" index="2zAPxA" />
        <child id="4280485643802032561" name="internalVariables" index="2zBuUM" />
      </concept>
      <concept id="4435217627499935168" name="iec61499.structure.BinaryExpression" flags="ng" index="398zGI">
        <child id="4435217627499935199" name="right" index="398zGL" />
        <child id="4435217627499935197" name="left" index="398zGN" />
      </concept>
      <concept id="967875482185482517" name="iec61499.structure.EventInstance" flags="ng" index="1N5Pia">
        <reference id="967875482185482524" name="declaration" index="1N5Pi3" />
        <reference id="967875482185482523" name="container" index="1N5Pi4" />
      </concept>
      <concept id="967875482185482427" name="iec61499.structure.TargetEventInstance" flags="ng" index="1N5Pk$" />
      <concept id="967875482185482492" name="iec61499.structure.DataInstance" flags="ng" index="1N5Plz">
        <reference id="967875482185482487" name="container" index="1N5PlC" />
        <reference id="967875482185482484" name="declaration" index="1N5PlF" />
      </concept>
      <concept id="967875482185482482" name="iec61499.structure.TargetDataInstance" flags="ng" index="1N5PlH" />
      <concept id="967875482185482481" name="iec61499.structure.SourceDataInstance" flags="ng" index="1N5PlI" />
      <concept id="967875482185433887" name="iec61499.structure.SourceEventInstance" flags="ng" index="1N5Tq0" />
      <concept id="967875482185433878" name="iec61499.structure.DataConnection" flags="ng" index="1N5Tq9">
        <child id="967875482185482504" name="target" index="1N5Pin" />
        <child id="967875482185482497" name="source" index="1N5Piu" />
      </concept>
      <concept id="967875482185433869" name="iec61499.structure.EventConncetion" flags="ng" index="1N5Tqi">
        <child id="967875482185482418" name="target" index="1N5PkH" />
        <child id="967875482185482411" name="source" index="1N5PkO" />
      </concept>
      <concept id="967875482185433822" name="iec61499.structure.FunctionBlockInstance" flags="ng" index="1N5Tt1">
        <reference id="967875482185433823" name="declaration" index="1N5Tt0" />
      </concept>
      <concept id="967875482185433821" name="iec61499.structure.CompositeFunctionBlockDeclaration" flags="ng" index="1N5Tt2">
        <child id="967875482185482537" name="eventConncetions" index="1N5PiQ" />
        <child id="967875482185482532" name="dataConncetions" index="1N5PiV" />
        <child id="967875482185482529" name="components" index="1N5PiY" />
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
  <node concept="2zBDf2" id="3HBlKeoYFbB">
    <property role="TrG5h" value="FLASHER4" />
    <node concept="2zAPAq" id="3HBlKeoZeH0" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZ7_Q" resolve="INIT" />
      <node concept="2zAVL7" id="3HBlKeoZnWP" role="2zAZMv">
        <ref role="2zAVL6" node="3HBlKeoYV84" resolve="INIT" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZnWS" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZ7_X" resolve="FLASH_ALL" />
      <node concept="2zABwW" id="PI_pXYiHGP" role="2zAZMv">
        <node concept="2zAVL7" id="3HBlKeoZnXe" role="398zGN">
          <ref role="2zAVL6" node="3HBlKeoYV8j" resolve="REQ" />
        </node>
        <node concept="2zAFu8" id="PI_pXYiHGQ" role="398zGL">
          <node concept="2zAFuc" id="3HBlKeoZzuU" role="398zGN">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
          <node concept="2zAFuh" id="PI_pXYiHGR" role="398zGL">
            <property role="2zAFug" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZnXh" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZaFs" resolve="COUNT_UP" />
      <node concept="2zAFu8" id="3Qd3IVOHmro" role="2zAZMv">
        <node concept="2zABwW" id="3Qd3IVOHmrp" role="398zGN">
          <node concept="2zAVL7" id="3Qd3IVOHmqX" role="398zGN">
            <ref role="2zAVL6" node="3HBlKeoYV8j" resolve="REQ" />
          </node>
          <node concept="2zAFuc" id="3Qd3IVOHmre" role="398zGL">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
        </node>
        <node concept="2zAFuh" id="3Qd3IVOHmsy" role="398zGL">
          <property role="2zAFug" value="1" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZtYN" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZaF_" resolve="COUNT_DOWN" />
      <node concept="2zAFu8" id="3Qd3IVOHmtb" role="2zAZMv">
        <node concept="2zABwW" id="3Qd3IVOHmtc" role="398zGN">
          <node concept="2zAVL7" id="3Qd3IVOHmsF" role="398zGN">
            <ref role="2zAVL6" node="3HBlKeoYV8j" resolve="REQ" />
          </node>
          <node concept="2zAFuc" id="3Qd3IVOHmt1" role="398zGL">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
        </node>
        <node concept="2zAFuh" id="3Qd3IVOHmtm" role="398zGL">
          <property role="2zAFug" value="2" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZtYZ" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZaFK" resolve="CHASE_UP" />
      <node concept="2zAFu8" id="3Qd3IVOHmu0" role="2zAZMv">
        <node concept="2zABwW" id="3Qd3IVOHmu1" role="398zGN">
          <node concept="2zAVL7" id="3Qd3IVOHmtw" role="398zGN">
            <ref role="2zAVL6" node="3HBlKeoYV8j" resolve="REQ" />
          </node>
          <node concept="2zAFuc" id="3Qd3IVOHmtQ" role="398zGL">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
        </node>
        <node concept="2zAFuh" id="3Qd3IVOHmub" role="398zGL">
          <property role="2zAFug" value="3" />
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZtZd" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx1" node="3HBlKeoZaFX" resolve="CHASE_DOWN" />
      <node concept="2zABwW" id="3Qd3IVOK7Ap" role="2zAZMv">
        <node concept="2zAVL7" id="3Qd3IVOHmuk" role="398zGN">
          <ref role="2zAVL6" node="3HBlKeoYV8j" resolve="REQ" />
        </node>
        <node concept="2zAFu8" id="3Qd3IVOK7Aq" role="398zGL">
          <node concept="2zAFuc" id="3Qd3IVOK7AC" role="398zGN">
            <ref role="2zAFuj" node="3HBlKeoYV86" resolve="MODE" />
          </node>
          <node concept="2zAFuh" id="3Qd3IVOK7Ar" role="398zGL">
            <property role="2zAFug" value="4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZtZP" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_Q" resolve="INIT" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2zAFuh" id="3Qd3IVOHmvb" role="2zAZMv">
        <property role="2zAFug" value="1" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZu0f" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZ7_X" resolve="FLASH_ALL" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2zAFuh" id="PI_pXYiHIV" role="2zAZMv">
        <property role="2zAFug" value="1" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZu0F" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZaFs" resolve="COUNT_UP" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2zAFuh" id="3Qd3IVOHmvp" role="2zAZMv">
        <property role="2zAFug" value="1" />
      </node>
    </node>
    <node concept="2zAPAq" id="PI_pXYiHIY" role="2zAPxA">
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx3" node="3HBlKeoZaF_" resolve="COUNT_DOWN" />
      <node concept="2zAFuh" id="PI_pXYiHIZ" role="2zAZMv">
        <property role="2zAFug" value="1" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZu19" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZaFK" resolve="CHASE_UP" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2zAFuh" id="3Qd3IVOHmvw" role="2zAZMv">
        <property role="2zAFug" value="1" />
      </node>
    </node>
    <node concept="2zAPAq" id="PI_pXYiHKo" role="2zAPxA">
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <ref role="2zAPx3" node="3HBlKeoZaFX" resolve="CHASE_DOWN" />
      <node concept="2zAFuh" id="PI_pXYiHKp" role="2zAZMv">
        <property role="2zAFug" value="1" />
      </node>
    </node>
    <node concept="2zAPAq" id="3HBlKeoZu1D" role="2zAPxA">
      <ref role="2zAPx3" node="3HBlKeoZaGc" resolve="START" />
      <ref role="2zAPx1" node="3HBlKeoZ7_O" resolve="WAIT" />
      <node concept="2zAFuh" id="3Qd3IVOHmvT" role="2zAZMv">
        <property role="2zAFug" value="1" />
      </node>
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7_V" role="2zAPwS">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7As" role="2zAPwS">
      <property role="TrG5h" value="COUNT_UP" />
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7Ay" role="2zAPwS">
      <property role="TrG5h" value="COUNT_DOWN" />
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7A2" role="2zAPwS">
      <property role="TrG5h" value="FLASH_ALL" />
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7A9" role="2zAPwS">
      <property role="TrG5h" value="CHASE_UP" />
    </node>
    <node concept="2zAPAp" id="3HBlKeoZ7Ad" role="2zAPwS">
      <property role="TrG5h" value="CHASE_DOWN" />
    </node>
    <node concept="2zAPAk" id="3HBlKeoZ7_O" role="2zAPwY">
      <property role="TrG5h" value="WAIT" />
    </node>
    <node concept="2zAPAk" id="3HBlKeoZ7_Q" role="2zAPwY">
      <property role="TrG5h" value="INIT" />
      <node concept="2zAPAr" id="3HBlKeoZ7_T" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7_V" resolve="INIT" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZ7_X" role="2zAPwY">
      <property role="TrG5h" value="FLASH_ALL" />
      <node concept="2zAPAr" id="3HBlKeoZ7A5" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7A2" resolve="FLASH_ALL" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaFs" role="2zAPwY">
      <property role="TrG5h" value="COUNT_UP" />
      <node concept="2zAPAr" id="3HBlKeoZaFz" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7As" resolve="COUNT_UP" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaF_" role="2zAPwY">
      <property role="TrG5h" value="COUNT_DOWN" />
      <node concept="2zAPAr" id="3HBlKeoZaFI" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7Ay" resolve="COUNT_DOWN" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaFK" role="2zAPwY">
      <property role="TrG5h" value="CHASE_UP" />
      <node concept="2zAPAr" id="3HBlKeoZaFV" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7A9" resolve="CHASE_UP" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaFX" role="2zAPwY">
      <property role="TrG5h" value="CHASE_DOWN" />
      <node concept="2zAPAr" id="3HBlKeoZaGa" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7Ad" resolve="CHASE_DOWN" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaGc" role="2zAPwY">
      <property role="TrG5h" value="START" />
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
    <node concept="2zBDeF" id="3HBlKeoYV86" role="2zBDeD">
      <property role="TrG5h" value="MODE" />
      <node concept="2zB5BY" id="3HBlKeoYV8a" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="3HBlKeoYV8p" role="2zBDew">
      <property role="TrG5h" value="CNF" />
      <node concept="2zBDeU" id="3HBlKeoYZ2A" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYWWK" resolve="LED3" />
      </node>
      <node concept="2zBDeU" id="3HBlKeoYZ2F" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYWWO" resolve="LED2" />
      </node>
      <node concept="2zBDeU" id="3HBlKeoYZ2N" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYZ27" resolve="LED1" />
      </node>
      <node concept="2zBDeU" id="3HBlKeoYZ2X" role="2zBDeW">
        <ref role="2zBDeT" node="3HBlKeoYZ2i" resolve="LED0" />
      </node>
    </node>
    <node concept="2zBDeF" id="3HBlKeoZMSp" role="2zBuUM">
      <property role="TrG5h" value="OFLO" />
      <node concept="2zB9wT" id="3HBlKeoZMSt" role="2zB7qv" />
    </node>
    <node concept="37mRI7" id="PI_pXYebYU" role="lGtFl">
      <node concept="37mRIm" id="PI_pXYebYV" role="37mRID">
        <property role="37mO49" value="4280485643802147188" />
        <node concept="gqqVs" id="PI_pXYebYT" role="37mO4d">
          <property role="gqqTZ" value="1411.0" />
          <property role="gqqTW" value="313.0002746582031" />
          <property role="gqqTX" value="188.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebYX" role="37mRID">
        <property role="37mO49" value="4280485643802147190" />
        <node concept="gqqVs" id="PI_pXYebYW" role="37mO4d">
          <property role="gqqTZ" value="296.0" />
          <property role="gqqTW" value="87.0000991821289" />
          <property role="gqqTX" value="175.0" />
          <property role="gqqTy" value="46.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebYZ" role="37mRID">
        <property role="37mO49" value="4280485643802147197" />
        <node concept="gqqVs" id="PI_pXYebYY" role="37mO4d">
          <property role="gqqTZ" value="2040.9998779296875" />
          <property role="gqqTW" value="87.0000991821289" />
          <property role="gqqTX" value="305.0" />
          <property role="gqqTy" value="46.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ1" role="37mRID">
        <property role="37mO49" value="4280485643802159836" />
        <node concept="gqqVs" id="PI_pXYebZ0" role="37mO4d">
          <property role="gqqTZ" value="1365.5" />
          <property role="gqqTW" value="479.00048828125" />
          <property role="gqqTX" value="279.0" />
          <property role="gqqTy" value="46.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ3" role="37mRID">
        <property role="37mO49" value="4280485643802159845" />
        <node concept="gqqVs" id="PI_pXYebZ2" role="37mO4d">
          <property role="gqqTZ" value="603.4999389648438" />
          <property role="gqqTW" value="87.0000991821289" />
          <property role="gqqTX" value="331.0" />
          <property role="gqqTy" value="46.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ5" role="37mRID">
        <property role="37mO49" value="4280485643802159856" />
        <node concept="gqqVs" id="PI_pXYebZ4" role="37mO4d">
          <property role="gqqTZ" value="1365.5" />
          <property role="gqqTW" value="87.0000991821289" />
          <property role="gqqTX" value="279.0" />
          <property role="gqqTy" value="46.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ7" role="37mRID">
        <property role="37mO49" value="4280485643802159869" />
        <node concept="gqqVs" id="PI_pXYebZ6" role="37mO4d">
          <property role="gqqTZ" value="984.4999389648438" />
          <property role="gqqTW" value="87.0000991821289" />
          <property role="gqqTX" value="331.0" />
          <property role="gqqTy" value="46.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ9" role="37mRID">
        <property role="37mO49" value="4280485643802159884" />
        <node concept="gqqVs" id="PI_pXYebZ8" role="37mO4d">
          <property role="gqqTZ" value="1694.5" />
          <property role="gqqTW" value="97.0000991821289" />
          <property role="gqqTX" value="201.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZb" role="37mRID">
        <property role="37mO49" value="4280485643802176320" />
        <node concept="2VclpC" id="PI_pXYgpnT" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYgpnY" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpnZ" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpo0" role="3wpmZR">
                <property role="2Vclpx" value="-354.74957275390636" />
                <property role="2Vclpz" value="-191.0001983642578" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpo1" role="3wpmZP">
                <property role="2Vclpx" value="600.7495727539064" />
                <property role="2Vclpz" value="374.0003967285156" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpo2" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpo3" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpo4" role="3wpmZR">
                <property role="2Vclpx" value="-803.2353247786656" />
                <property role="2Vclpz" value="-407.831705635925" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpo5" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="360.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpo6" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpo7" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpo8" role="3wpmZR">
                <property role="2Vclpx" value="-296.8766636901463" />
                <property role="2Vclpz" value="208.92303944919644" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpo9" role="3wpmZP">
                <property role="2Vclpx" value="383.50006103515625" />
                <property role="2Vclpz" value="98.51471862576143" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="PI_pXYiHzI" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="2VclrF" id="PI_pXYiHzJ" role="2Vcluh">
            <property role="2Vclpx" value="246.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="2VclrF" id="PI_pXYiImx" role="2Vcluh">
            <property role="2Vclpx" value="246.0" />
            <property role="2Vclpz" value="37.0" />
          </node>
          <node concept="2VclrF" id="PI_pXYiImy" role="2Vcluh">
            <property role="2Vclpx" value="383.50006103515625" />
            <property role="2Vclpz" value="37.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZd" role="37mRID">
        <property role="37mO49" value="4280485643802214200" />
        <node concept="2VclpC" id="PI_pXYgpoa" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYgpof" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpog" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoh" role="3wpmZR">
                <property role="2Vclpx" value="138.24960327148438" />
                <property role="2Vclpz" value="-191.0001983642578" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoi" role="3wpmZP">
                <property role="2Vclpx" value="2257.7503967285156" />
                <property role="2Vclpz" value="374.0003967285156" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpoj" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpok" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpol" role="3wpmZR">
                <property role="2Vclpx" value="-805.3158894633914" />
                <property role="2Vclpz" value="-559.218965223025" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpom" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="360.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpon" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpoo" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpop" role="3wpmZR">
                <property role="2Vclpx" value="-2604.2146161322426" />
                <property role="2Vclpz" value="506.0026548247119" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoq" role="3wpmZP">
                <property role="2Vclpx" value="2193.5" />
                <property role="2Vclpz" value="98.51471862576143" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="PI_pXYiHSB" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="2VclrF" id="PI_pXYiHSC" role="2Vcluh">
            <property role="2Vclpx" value="2396.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="2VclrF" id="PI_pXYiImz" role="2Vcluh">
            <property role="2Vclpx" value="2396.0" />
            <property role="2Vclpz" value="37.0" />
          </node>
          <node concept="2VclrF" id="PI_pXYiIm$" role="2Vcluh">
            <property role="2Vclpx" value="2193.5" />
            <property role="2Vclpz" value="37.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZf" role="37mRID">
        <property role="37mO49" value="4280485643802214225" />
        <node concept="2VclpC" id="PI_pXYgpor" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYgpow" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpox" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoy" role="3wpmZR">
                <property role="2Vclpx" value="-183.0" />
                <property role="2Vclpz" value="-40.999603271484375" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoz" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="440.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpo$" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpo_" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoA" role="3wpmZR">
                <property role="2Vclpx" value="-882.625437876947" />
                <property role="2Vclpz" value="-1098.7858025191586" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoB" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="389.4852813742386" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpoC" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpoD" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoE" role="3wpmZR">
                <property role="2Vclpx" value="-1061.506033557006" />
                <property role="2Vclpz" value="-75.82452992595807" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoF" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="490.5147186257614" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZh" role="37mRID">
        <property role="37mO49" value="4280485643802238899" />
        <node concept="2VclpC" id="PI_pXYgpoG" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYgpoH" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="2VclrF" id="PI_pXYgpoI" role="2Vcluh">
            <property role="2Vclpx" value="246.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="3ul5H1" id="PI_pXYgpoP" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpoQ" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoR" role="3wpmZR">
                <property role="2Vclpx" value="-194.99981689453125" />
                <property role="2Vclpz" value="-11.999984741210938" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoS" role="3wpmZP">
                <property role="2Vclpx" value="234.99981689453125" />
                <property role="2Vclpz" value="288.00018310546875" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpoT" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpoU" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoV" role="3wpmZR">
                <property role="2Vclpx" value="-794.4238735546228" />
                <property role="2Vclpz" value="-364.1278353122356" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoW" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="360.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpoX" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpoY" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoZ" role="3wpmZR">
                <property role="2Vclpx" value="-100.97725405982806" />
                <property role="2Vclpz" value="1143.8087542877404" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpp0" role="3wpmZP">
                <property role="2Vclpx" value="769.0" />
                <property role="2Vclpz" value="98.51471862576143" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="PI_pXYrpDl" role="2Vcluh">
            <property role="2Vclpx" value="246.0" />
            <property role="2Vclpz" value="288.00018310546875" />
          </node>
          <node concept="2VclrF" id="PI_pXYrpDm" role="2Vcluh">
            <property role="2Vclpx" value="12.0" />
            <property role="2Vclpz" value="288.00018310546875" />
          </node>
          <node concept="2VclrF" id="22$VZ0Kvv2Z" role="2Vcluh">
            <property role="2Vclpx" value="12.0" />
            <property role="2Vclpz" value="12.0" />
          </node>
          <node concept="2VclrF" id="22$VZ0Kvv30" role="2Vcluh">
            <property role="2Vclpx" value="769.0" />
            <property role="2Vclpz" value="12.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZj" role="37mRID">
        <property role="37mO49" value="4280485643802238911" />
        <node concept="2VclpC" id="PI_pXYgpp1" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYgpp2" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="2VclrF" id="PI_pXYgpp3" role="2Vcluh">
            <property role="2Vclpx" value="2396.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="3ul5H1" id="PI_pXYgpp6" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpp7" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpp8" role="3wpmZR">
                <property role="2Vclpx" value="-380.4998016357422" />
                <property role="2Vclpz" value="-55.0" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpp9" role="3wpmZP">
                <property role="2Vclpx" value="2325.999801635742" />
                <property role="2Vclpz" value="238.0001983642578" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppa" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgppb" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppc" role="3wpmZR">
                <property role="2Vclpx" value="-806.1783389936464" />
                <property role="2Vclpz" value="-552.5566691264567" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppd" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="360.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppe" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgppf" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppg" role="3wpmZR">
                <property role="2Vclpx" value="-2238.148308179614" />
                <property role="2Vclpz" value="590.1019650730966" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpph" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="98.51471862576143" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="PI_pXYiImD" role="2Vcluh">
            <property role="2Vclpx" value="2396.0" />
            <property role="2Vclpz" value="238.0001983642578" />
          </node>
          <node concept="2VclrF" id="PI_pXYiImE" role="2Vcluh">
            <property role="2Vclpx" value="1945.5" />
            <property role="2Vclpz" value="238.0001983642578" />
          </node>
          <node concept="2VclrF" id="22$VZ0Kvv31" role="2Vcluh">
            <property role="2Vclpx" value="1945.5" />
            <property role="2Vclpz" value="37.0" />
          </node>
          <node concept="2VclrF" id="22$VZ0Kvv32" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="37.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZl" role="37mRID">
        <property role="37mO49" value="4280485643802238925" />
        <node concept="2VclpC" id="PI_pXYgppi" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYgppj" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="2VclrF" id="PI_pXYgppk" role="2Vcluh">
            <property role="2Vclpx" value="246.0" />
            <property role="2Vclpz" value="374.0003967285156" />
          </node>
          <node concept="3ul5H1" id="PI_pXYgppr" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpps" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppt" role="3wpmZR">
                <property role="2Vclpx" value="275.0" />
                <property role="2Vclpz" value="-162.4998016357422" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppu" role="3wpmZP">
                <property role="2Vclpx" value="246.0" />
                <property role="2Vclpz" value="345.5" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppv" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgppw" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppx" role="3wpmZR">
                <property role="2Vclpx" value="-841.6172161182997" />
                <property role="2Vclpz" value="-399.155750274434" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppy" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="360.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppz" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpp$" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpp_" role="3wpmZR">
                <property role="2Vclpx" value="-1709.465347713713" />
                <property role="2Vclpz" value="308.9126120858704" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppA" role="3wpmZP">
                <property role="2Vclpx" value="1150.0" />
                <property role="2Vclpz" value="98.51471862576143" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="PI_pXYiHSD" role="2Vcluh">
            <property role="2Vclpx" value="246.0" />
            <property role="2Vclpz" value="288.00018310546875" />
          </node>
          <node concept="2VclrF" id="PI_pXYiHSE" role="2Vcluh">
            <property role="2Vclpx" value="521.0" />
            <property role="2Vclpz" value="288.00018310546875" />
          </node>
          <node concept="2VclrF" id="22$VZ0Kvv33" role="2Vcluh">
            <property role="2Vclpx" value="521.0" />
            <property role="2Vclpz" value="37.0" />
          </node>
          <node concept="2VclrF" id="22$VZ0Kvv34" role="2Vcluh">
            <property role="2Vclpx" value="1150.0" />
            <property role="2Vclpz" value="37.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZn" role="37mRID">
        <property role="37mO49" value="4280485643802238965" />
        <node concept="2VclpC" id="PI_pXYgppB" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYgppC" role="2Vcluh">
            <property role="2Vclpx" value="383.50006103515625" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="2VclrF" id="PI_pXYgppD" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="3ul5H1" id="PI_pXYgppG" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgppH" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppI" role="3wpmZR">
                <property role="2Vclpx" value="-560.749786376953" />
                <property role="2Vclpz" value="-79.99998474121094" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppJ" role="3wpmZP">
                <property role="2Vclpx" value="930.2498474121093" />
                <property role="2Vclpz" value="263.00018310546875" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppK" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgppL" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppM" role="3wpmZR">
                <property role="2Vclpx" value="-239.1394806288173" />
                <property role="2Vclpz" value="185.2163282073545" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppN" role="3wpmZP">
                <property role="2Vclpx" value="383.50006103515625" />
                <property role="2Vclpz" value="173.48528137423858" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppO" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgppP" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppQ" role="3wpmZR">
                <property role="2Vclpx" value="-1031.3940472175527" />
                <property role="2Vclpz" value="-505.56263701579746" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppR" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="324.5147186257614" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZp" role="37mRID">
        <property role="37mO49" value="4280485643802238991" />
        <node concept="2VclpC" id="PI_pXYgppS" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYgppT" role="2Vcluh">
            <property role="2Vclpx" value="2193.5" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="2VclrF" id="PI_pXYgppU" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="3ul5H1" id="PI_pXYgppZ" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpq0" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpq1" role="3wpmZR">
                <property role="2Vclpx" value="316.24981689453125" />
                <property role="2Vclpz" value="-79.99998474121094" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpq2" role="3wpmZP">
                <property role="2Vclpx" value="1863.2501831054688" />
                <property role="2Vclpz" value="263.00018310546875" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpq3" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpq4" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpq5" role="3wpmZR">
                <property role="2Vclpx" value="-2475.837349923331" />
                <property role="2Vclpz" value="487.6414582783252" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpq6" role="3wpmZP">
                <property role="2Vclpx" value="2193.5" />
                <property role="2Vclpz" value="173.48528137423858" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpq7" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpq8" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpq9" role="3wpmZR">
                <property role="2Vclpx" value="-1034.3043521125564" />
                <property role="2Vclpz" value="-502.8049489955836" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqa" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="324.5147186257614" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZr" role="37mRID">
        <property role="37mO49" value="4280485643802239019" />
        <node concept="2VclpC" id="PI_pXYgpqb" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYgpqc" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="550.0006103515625" />
          </node>
          <node concept="2VclrF" id="PI_pXYgpqd" role="2Vcluh">
            <property role="2Vclpx" value="1257.0" />
            <property role="2Vclpz" value="550.0006103515625" />
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqg" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpqh" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqi" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="30.000213623046875" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqj" role="3wpmZP">
                <property role="2Vclpx" value="1257.0" />
                <property role="2Vclpz" value="369.00018310546875" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqk" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpql" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqm" role="3wpmZR">
                <property role="2Vclpx" value="-1051.2592369596978" />
                <property role="2Vclpz" value="-93.31227281735801" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqn" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="536.5147186257615" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqo" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqp" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqq" role="3wpmZR">
                <property role="2Vclpx" value="-775.0924418073652" />
                <property role="2Vclpz" value="-527.0804799471198" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqr" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="324.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="PI_pXYgpTG" role="2Vcluh">
            <property role="2Vclpx" value="1257.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="2VclrF" id="PI_pXYrppY" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZt" role="37mRID">
        <property role="37mO49" value="4280485643802239049" />
        <node concept="2VclpC" id="PI_pXYgpqs" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYgpqz" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpq$" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpq_" role="3wpmZR">
                <property role="2Vclpx" value="-14.0" />
                <property role="2Vclpz" value="-65.99980163574219" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqA" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="249.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqB" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqC" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqD" role="3wpmZR">
                <property role="2Vclpx" value="-2021.9239604055124" />
                <property role="2Vclpz" value="543.9107904421628" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqE" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="173.48528137423858" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqF" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqG" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqH" role="3wpmZR">
                <property role="2Vclpx" value="-958.6531966951193" />
                <property role="2Vclpz" value="-511.6482133132504" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqI" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="324.5147186257614" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZv" role="37mRID">
        <property role="37mO49" value="4280485643802239081" />
        <node concept="2VclpC" id="PI_pXYgpqJ" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYgpqM" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpqN" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqO" role="3wpmZR">
                <property role="2Vclpx" value="116.99981689453125" />
                <property role="2Vclpz" value="-79.99998474121094" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqP" role="3wpmZP">
                <property role="2Vclpx" value="1664.0001831054688" />
                <property role="2Vclpz" value="263.00018310546875" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqQ" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqR" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqS" role="3wpmZR">
                <property role="2Vclpx" value="-2685.7205708061747" />
                <property role="2Vclpz" value="218.47168679229344" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqT" role="3wpmZP">
                <property role="2Vclpx" value="1795.0" />
                <property role="2Vclpz" value="173.48528137423858" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqU" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqV" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqW" role="3wpmZR">
                <property role="2Vclpx" value="-1021.3491737369061" />
                <property role="2Vclpz" value="-528.5313469796915" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqX" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="324.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="PI_pXYiHTd" role="2Vcluh">
            <property role="2Vclpx" value="1795.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="2VclrF" id="PI_pXYiHTe" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYec30" role="37mRID">
        <property role="37mO49" value="967875482181222368" />
        <node concept="gqqVs" id="PI_pXYec2Z" role="37mO4d">
          <property role="gqqTZ" value="-8.0" />
          <property role="gqqTW" value="430.0" />
          <property role="gqqTX" value="136.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYiHSG" role="37mRID">
        <property role="37mO49" value="967875482182409150" />
        <node concept="2VclpC" id="PI_pXYiHSF" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYiHSH" role="2Vcluh">
            <property role="2Vclpx" value="769.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="2VclrF" id="PI_pXYiHSI" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="3ul5H1" id="PI_pXYiHSL" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYiHSM" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHSN" role="3wpmZR">
                <property role="2Vclpx" value="-367.99981689453125" />
                <property role="2Vclpz" value="-79.99998474121094" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHSO" role="3wpmZP">
                <property role="2Vclpx" value="1122.9998168945312" />
                <property role="2Vclpz" value="263.00018310546875" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYiHSP" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYiHSQ" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHSR" role="3wpmZR">
                <property role="2Vclpx" value="662.5300238847217" />
                <property role="2Vclpz" value="911.2690133406746" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHSS" role="3wpmZP">
                <property role="2Vclpx" value="769.0" />
                <property role="2Vclpz" value="173.48528137423858" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYiHST" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYiHSU" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHSV" role="3wpmZR">
                <property role="2Vclpx" value="-1097.58212643706" />
                <property role="2Vclpz" value="-12.210714137559307" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHSW" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="324.5147186257614" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYiHSY" role="37mRID">
        <property role="37mO49" value="967875482182409240" />
        <node concept="2VclpC" id="PI_pXYiHSX" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYiHSZ" role="2Vcluh">
            <property role="2Vclpx" value="1150.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="2VclrF" id="PI_pXYiHT0" role="2Vcluh">
            <property role="2Vclpx" value="1505.0" />
            <property role="2Vclpz" value="263.00018310546875" />
          </node>
          <node concept="3ul5H1" id="PI_pXYiHT1" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYiHT2" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHT3" role="3wpmZR">
                <property role="2Vclpx" value="-177.49981689453125" />
                <property role="2Vclpz" value="-79.99998474121094" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHT4" role="3wpmZP">
                <property role="2Vclpx" value="1313.4998168945312" />
                <property role="2Vclpz" value="263.00018310546875" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYiHT5" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYiHT6" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHT7" role="3wpmZR">
                <property role="2Vclpx" value="-772.1195170849405" />
                <property role="2Vclpz" value="145.46287223880728" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHT8" role="3wpmZP">
                <property role="2Vclpx" value="1150.0" />
                <property role="2Vclpz" value="173.48528137423858" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYiHT9" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYiHTa" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHTb" role="3wpmZR">
                <property role="2Vclpx" value="-1101.3767997304687" />
                <property role="2Vclpz" value="-3.004235184100537" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHTc" role="3wpmZP">
                <property role="2Vclpx" value="1505.0" />
                <property role="2Vclpz" value="324.5147186257614" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYiLnV" role="37mRID">
        <property role="37mO49" value="967875482182424027" />
        <node concept="gqqVs" id="PI_pXYiLnU" role="37mO4d">
          <property role="gqqTZ" value="12.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="175.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYl1OY" role="37mRID">
        <property role="37mO49" value="967875482183014604" />
        <node concept="2VclpC" id="PI_pXYl1OX" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYl1P5" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYl1P6" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYl1P7" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="PI_pXYl1P8" role="3wpmZP">
                <property role="2Vclpx" value="890.5" />
                <property role="2Vclpz" value="447.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYl1P9" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYl1Pa" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYl1Pb" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="PI_pXYl1Pc" role="3wpmZP">
                <property role="2Vclpx" value="894.4616633472396" />
                <property role="2Vclpz" value="553.5247255591074" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYl1Pd" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYl1Pe" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYl1Pf" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="PI_pXYl1Pg" role="3wpmZP">
                <property role="2Vclpx" value="886.5383366527604" />
                <property role="2Vclpz" value="340.4752744408926" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$b" role="37mRID">
        <property role="37mO49" value="4280485643802214197" />
        <node concept="gqqVs" id="PI_pXYty$a" role="37mO4d">
          <property role="gqqTZ" value="705.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="58.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$d" role="37mRID">
        <property role="37mO49" value="967875482182409013" />
        <node concept="gqqVs" id="PI_pXYty$c" role="37mO4d">
          <property role="gqqTZ" value="843.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="188.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$f" role="37mRID">
        <property role="37mO49" value="4435217627500340952" />
        <node concept="gqqVs" id="PI_pXYty$e" role="37mO4d">
          <property role="gqqTZ" value="1111.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="188.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$h" role="37mRID">
        <property role="37mO49" value="4435217627500341067" />
        <node concept="gqqVs" id="PI_pXYty$g" role="37mO4d">
          <property role="gqqTZ" value="1379.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="188.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$j" role="37mRID">
        <property role="37mO49" value="4435217627500341120" />
        <node concept="gqqVs" id="PI_pXYty$i" role="37mO4d">
          <property role="gqqTZ" value="1647.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="188.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$l" role="37mRID">
        <property role="37mO49" value="4435217627501066649" />
        <node concept="gqqVs" id="PI_pXYty$k" role="37mO4d">
          <property role="gqqTZ" value="1915.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="188.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$n" role="37mRID">
        <property role="37mO49" value="4435217627500341195" />
        <node concept="gqqVs" id="PI_pXYty$m" role="37mO4d">
          <property role="gqqTZ" value="12.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="19.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$p" role="37mRID">
        <property role="37mO49" value="967875482182409147" />
        <node concept="gqqVs" id="PI_pXYty$o" role="37mO4d">
          <property role="gqqTZ" value="111.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="19.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$r" role="37mRID">
        <property role="37mO49" value="4435217627500341209" />
        <node concept="gqqVs" id="PI_pXYty$q" role="37mO4d">
          <property role="gqqTZ" value="210.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="19.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$t" role="37mRID">
        <property role="37mO49" value="967875482182409151" />
        <node concept="gqqVs" id="PI_pXYty$s" role="37mO4d">
          <property role="gqqTZ" value="309.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="19.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$v" role="37mRID">
        <property role="37mO49" value="4435217627500341216" />
        <node concept="gqqVs" id="PI_pXYty$u" role="37mO4d">
          <property role="gqqTZ" value="408.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="19.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$x" role="37mRID">
        <property role="37mO49" value="967875482182409241" />
        <node concept="gqqVs" id="PI_pXYty$w" role="37mO4d">
          <property role="gqqTZ" value="507.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="19.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYty$z" role="37mRID">
        <property role="37mO49" value="4435217627500341241" />
        <node concept="gqqVs" id="PI_pXYty$y" role="37mO4d">
          <property role="gqqTZ" value="606.0" />
          <property role="gqqTW" value="12.000100135803223" />
          <property role="gqqTX" value="19.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="PI_pXYw3K8">
    <property role="TrG5h" value="Composite1" />
    <node concept="2zBDe_" id="PI_pXYw3K9" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
    <node concept="2zBDeF" id="PI_pXYw4Ge" role="2zBDeD">
      <property role="TrG5h" value="QI" />
      <node concept="2zB9wT" id="PI_pXYw4Gk" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="PI_pXYw4Go" role="2zBDeH">
      <property role="TrG5h" value="QO" />
      <node concept="2zB9wT" id="PI_pXYw4Gu" role="2zB7qv" />
    </node>
    <node concept="1N5Tt1" id="PI_pXYw4Gy" role="1N5PiY">
      <property role="TrG5h" value="FB1" />
      <ref role="1N5Tt0" node="3HBlKeoYFbB" resolve="FLASHER4" />
    </node>
    <node concept="37mRI7" id="PI_pXYC1R9" role="lGtFl">
      <node concept="37mRIm" id="PI_pXYC1Ra" role="37mRID">
        <property role="37mO49" value="967875482185911074" />
        <node concept="gqqVs" id="PI_pXYC1R8" role="37mO4d">
          <property role="gqqTZ" value="558.0001831054688" />
          <property role="gqqTW" value="174.28564453125" />
          <property role="gqqTX" value="318.0" />
          <property role="gqqTy" value="216.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="PI_pXYLk2J" role="1pap1a">
            <property role="1pa3iD" value="INIT" />
            <property role="2gRgW$" value="196" />
          </node>
          <node concept="1pa3jb" id="PI_pXYLk2L" role="1pap1a">
            <property role="1pa3iD" value="CNF" />
            <property role="2gRgW$" value="208" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYC1Rf" role="37mRID">
        <property role="37mO49" value="967875482187035717" />
        <node concept="2VclpC" id="3nFX2lGSsHU" role="37mO4d">
          <node concept="2VclrF" id="3nFX2lGSsHV" role="2Vcluh">
            <property role="2Vclpx" value="12.0" />
            <property role="2Vclpz" value="113.300048828125" />
          </node>
          <node concept="2VclrF" id="3nFX2lGSsHW" role="2Vcluh">
            <property role="2Vclpx" value="12.0" />
            <property role="2Vclpz" value="200.0000457763672" />
          </node>
          <node concept="2VclrF" id="3nFX2lGSsHX" role="2Vcluh">
            <property role="2Vclpx" value="299.0" />
            <property role="2Vclpz" value="200.0000457763672" />
          </node>
          <node concept="2VclrF" id="3nFX2lGSsHY" role="2Vcluh">
            <property role="2Vclpx" value="299.0" />
            <property role="2Vclpz" value="86.94540405273438" />
          </node>
          <node concept="3ul5H1" id="3nFX2lGSsHZ" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lGSsI0" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGSsI1" role="3wpmZR">
                <property role="2Vclpx" value="-20.612962066602762" />
                <property role="2Vclpz" value="83.12263062396886" />
              </node>
              <node concept="2VclrF" id="3nFX2lGSsI2" role="3wpmZP">
                <property role="2Vclpx" value="158.5340052976322" />
                <property role="2Vclpz" value="200.0000457763672" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGSsI3" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lGSsI4" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGSsI5" role="3wpmZR">
                <property role="2Vclpx" value="54.481026263887784" />
                <property role="2Vclpz" value="118.67002024159078" />
              </node>
              <node concept="2VclrF" id="3nFX2lGSsI6" role="3wpmZP">
                <property role="2Vclpx" value="49.14841547576988" />
                <property role="2Vclpz" value="132.61722827656436" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGSsI7" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lGSsI8" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGSsI9" role="3wpmZR">
                <property role="2Vclpx" value="-8.673690479812905" />
                <property role="2Vclpz" value="139.3267418551091" />
              </node>
              <node concept="2VclrF" id="3nFX2lGSsIa" role="3wpmZP">
                <property role="2Vclpx" value="284.03987434571934" />
                <property role="2Vclpz" value="102.50393602197083" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYC1Rh" role="37mRID">
        <property role="37mO49" value="967875482185907209" />
        <node concept="gqqVs" id="PI_pXYC1Rg" role="37mO4d">
          <property role="gqqTZ" value="5.500099182128906" />
          <property role="gqqTW" value="174.28564453125" />
          <property role="gqqTX" value="58.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYLk2S" role="37mRID">
        <property role="37mO49" value="INIT" />
        <node concept="gqqVs" id="PI_pXYLk2R" role="37mO4d">
          <property role="gqqTZ" value="12.000100135803223" />
          <property role="gqqTW" value="12.0" />
          <property role="gqqTX" value="58.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lGWDQF" role="37mRID">
        <property role="37mO49" value="3885467545115991449" />
        <node concept="2VclpC" id="3nFX2lGWDQE" role="37mO4d">
          <node concept="2VclrF" id="3nFX2lGWDQG" role="2Vcluh">
            <property role="2Vclpx" value="12.0" />
            <property role="2Vclpz" value="80.00005340576172" />
          </node>
          <node concept="2VclrF" id="3nFX2lGWDQH" role="2Vcluh">
            <property role="2Vclpx" value="12.0" />
            <property role="2Vclpz" value="30.000049591064453" />
          </node>
          <node concept="3ul5H1" id="3nFX2lGWDQI" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lGWDQJ" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGWDQK" role="3wpmZR">
                <property role="2Vclpx" value="-113.58699724592557" />
                <property role="2Vclpz" value="118.2463383106153" />
              </node>
              <node concept="2VclrF" id="3nFX2lGWDQL" role="3wpmZP">
                <property role="2Vclpx" value="109.58699748434415" />
                <property role="2Vclpz" value="38.13229938142646" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGWDQM" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lGWDQN" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGWDQO" role="3wpmZR">
                <property role="2Vclpx" value="34.241811950807886" />
                <property role="2Vclpz" value="115.52041893517345" />
              </node>
              <node concept="2VclrF" id="3nFX2lGWDQP" role="3wpmZP">
                <property role="2Vclpx" value="60.64175489747173" />
                <property role="2Vclpz" value="100.39820868534663" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGWDQQ" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lGWDQR" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGWDQS" role="3wpmZR">
                <property role="2Vclpx" value="-305.1564528857288" />
                <property role="2Vclpz" value="-6.966905321896817" />
              </node>
              <node concept="2VclrF" id="3nFX2lGWDQT" role="3wpmZP">
                <property role="2Vclpx" value="309.564754289519" />
                <property role="2Vclpz" value="54.797112448524366" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lGXBx4" role="37mRID">
        <property role="37mO49" value="3885467545116244018" />
        <node concept="2VclpC" id="3nFX2lGXBx3" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lGXBx5" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lGXBx6" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGXBx7" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lGXBx8" role="3wpmZP">
                <property role="2Vclpx" value="133.07520940808604" />
                <property role="2Vclpz" value="38.521019466452614" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGXBx9" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lGXBxa" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGXBxb" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lGXBxc" role="3wpmZP">
                <property role="2Vclpx" value="52.64334392084263" />
                <property role="2Vclpz" value="109.14218907727448" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGXBxd" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lGXBxe" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGXBxf" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lGXBxg" role="3wpmZP">
                <property role="2Vclpx" value="309.57504225076997" />
                <property role="2Vclpz" value="54.67945486754339" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="3nFX2lGXB$n" role="2Vcluh">
            <property role="2Vclpx" value="40.0" />
            <property role="2Vclpz" value="94.20005798339844" />
          </node>
          <node concept="2VclrF" id="3nFX2lGXB$o" role="2Vcluh">
            <property role="2Vclpx" value="40.0" />
            <property role="2Vclpz" value="30.000049591064453" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lGZBMb" role="37mRID">
        <property role="37mO49" value="3885467545116769407" />
        <node concept="2VclpC" id="3nFX2lGZBMa" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lGZBMc" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lGZBMd" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGZBMe" role="3wpmZR">
                <property role="2Vclpx" value="-851.9266743760058" />
                <property role="2Vclpz" value="-1090.036580952399" />
              </node>
              <node concept="2VclrF" id="3nFX2lGZBMf" role="3wpmZP">
                <property role="2Vclpx" value="300.3903839972177" />
                <property role="2Vclpz" value="158.28564453125" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGZBMg" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lGZBMh" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGZBMi" role="3wpmZR">
                <property role="2Vclpx" value="-2565.7613727599787" />
                <property role="2Vclpz" value="-1534.7874798014689" />
              </node>
              <node concept="2VclrF" id="3nFX2lGZBMj" role="3wpmZP">
                <property role="2Vclpx" value="71.71113306787385" />
                <property role="2Vclpz" value="206.02347993181604" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGZBMk" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lGZBMl" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGZBMm" role="3wpmZR">
                <property role="2Vclpx" value="182.6563010305914" />
                <property role="2Vclpz" value="-339.8564366334707" />
              </node>
              <node concept="2VclrF" id="3nFX2lGZBMn" role="3wpmZP">
                <property role="2Vclpx" value="533.8596050020042" />
                <property role="2Vclpz" value="207.81296670387843" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drkRui" role="2Vcluh">
            <property role="2Vclpx" value="80.35018920898438" />
            <property role="2Vclpz" value="192.2856903076172" />
          </node>
          <node concept="2VclrF" id="1Oxt8drkRuj" role="2Vcluh">
            <property role="2Vclpx" value="80.35018920898438" />
            <property role="2Vclpz" value="158.28564453125" />
          </node>
          <node concept="2VclrF" id="1Oxt8drrB2I" role="2Vcluh">
            <property role="2Vclpx" value="506.0501708984375" />
            <property role="2Vclpz" value="158.28564453125" />
          </node>
          <node concept="2VclrF" id="1Oxt8drrB2J" role="2Vcluh">
            <property role="2Vclpx" value="506.0501708984375" />
            <property role="2Vclpz" value="189.71421813964844" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lGZBRE" role="37mRID">
        <property role="37mO49" value="3885467545116769752" />
        <node concept="2VclpC" id="3nFX2lGZBRD" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lGZBRF" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lGZBRG" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGZBRH" role="3wpmZR">
                <property role="2Vclpx" value="20.571427576865034" />
                <property role="2Vclpz" value="-100.11079359716649" />
              </node>
              <node concept="2VclrF" id="3nFX2lGZBRI" role="3wpmZP">
                <property role="2Vclpx" value="247.37286303749127" />
                <property role="2Vclpz" value="135.800048828125" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGZBRJ" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lGZBRK" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGZBRL" role="3wpmZR">
                <property role="2Vclpx" value="11.18198818558983" />
                <property role="2Vclpz" value="-99.52910338164287" />
              </node>
              <node concept="2VclrF" id="3nFX2lGZBRM" role="3wpmZP">
                <property role="2Vclpx" value="367.04007105672747" />
                <property role="2Vclpz" value="183.30392985467134" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGZBRN" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lGZBRO" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGZBRP" role="3wpmZR">
                <property role="2Vclpx" value="14.58741325579237" />
                <property role="2Vclpz" value="-100.77969769854411" />
              </node>
              <node concept="2VclrF" id="3nFX2lGZBRQ" role="3wpmZP">
                <property role="2Vclpx" value="134.96032419872773" />
                <property role="2Vclpz" value="190.55857847040312" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="3nFX2lGZBW3" role="2Vcluh">
            <property role="2Vclpx" value="382.00018310546875" />
            <property role="2Vclpz" value="167.7454071044922" />
          </node>
          <node concept="2VclrF" id="3nFX2lGZBW4" role="2Vcluh">
            <property role="2Vclpx" value="382.00018310546875" />
            <property role="2Vclpz" value="135.800048828125" />
          </node>
          <node concept="2VclrF" id="3nFX2lGZBW5" role="2Vcluh">
            <property role="2Vclpx" value="120.00019836425781" />
            <property role="2Vclpz" value="135.800048828125" />
          </node>
          <node concept="2VclrF" id="3nFX2lGZBW6" role="2Vcluh">
            <property role="2Vclpx" value="120.00019836425781" />
            <property role="2Vclpz" value="175.0000457763672" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1Pbu" role="37mRID">
        <property role="37mO49" value="3885467545117348566" />
        <node concept="gqqVs" id="3nFX2lH1Pbt" role="37mO4d">
          <property role="gqqTZ" value="12.000099182128906" />
          <property role="gqqTW" value="111.7142333984375" />
          <property role="gqqTX" value="45.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1Pid" role="37mRID">
        <property role="37mO49" value="3885467545117348961" />
        <node concept="gqqVs" id="3nFX2lH1Pic" role="37mO4d">
          <property role="gqqTZ" value="119.00018310546875" />
          <property role="gqqTW" value="174.28564453125" />
          <property role="gqqTX" value="318.0" />
          <property role="gqqTy" value="216.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1Pq6" role="37mRID">
        <property role="37mO49" value="3885467545117349450" />
        <node concept="2VclpC" id="3nFX2lH1Pq5" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH1Pq7" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1Pq8" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Pq9" role="3wpmZR">
                <property role="2Vclpx" value="-11.393438670087534" />
                <property role="2Vclpz" value="-20.01074368837125" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Pqa" role="3wpmZP">
                <property role="2Vclpx" value="108.52479009198231" />
                <property role="2Vclpz" value="31.47009985694089" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Pqb" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1Pqc" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Pqd" role="3wpmZR">
                <property role="2Vclpx" value="-29.86988537443483" />
                <property role="2Vclpz" value="-4.944124810866455" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Pqe" role="3wpmZP">
                <property role="2Vclpx" value="82.21863740112434" />
                <property role="2Vclpz" value="48.22005752482761" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Pqf" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1Pqg" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Pqh" role="3wpmZR">
                <property role="2Vclpx" value="-4.218307424674521" />
                <property role="2Vclpz" value="-11.57889990142833" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Pqi" role="3wpmZP">
                <property role="2Vclpx" value="133.47298523928714" />
                <property role="2Vclpz" value="47.22812102796378" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="3nFX2lH1QKD" role="2Vcluh">
            <property role="2Vclpx" value="110.83353424072266" />
            <property role="2Vclpz" value="30.000049591064453" />
          </node>
          <node concept="2VclrF" id="3nFX2lH1QKE" role="2Vcluh">
            <property role="2Vclpx" value="110.83353424072266" />
            <property role="2Vclpz" value="30.000049591064453" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1PvX" role="37mRID">
        <property role="37mO49" value="3885467545117349523" />
        <node concept="2VclpC" id="3nFX2lH1PvW" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH1PvY" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1PvZ" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Pw0" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Pw1" role="3wpmZP">
                <property role="2Vclpx" value="226.0001983642578" />
                <property role="2Vclpz" value="185.5" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Pw2" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1Pw3" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Pw4" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Pw5" role="3wpmZP">
                <property role="2Vclpx" value="226.0001983642578" />
                <property role="2Vclpz" value="223.51471862576142" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Pw6" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1Pw7" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Pw8" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Pw9" role="3wpmZP">
                <property role="2Vclpx" value="226.0001983642578" />
                <property role="2Vclpz" value="147.48528137423858" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1PAm" role="37mRID">
        <property role="37mO49" value="3885467545117349898" />
        <node concept="2VclpC" id="3nFX2lH1PAl" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH1PAn" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1PAo" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1PAp" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1PAq" role="3wpmZP">
                <property role="2Vclpx" value="282.0001983642578" />
                <property role="2Vclpz" value="185.5" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1PAr" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1PAs" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1PAt" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1PAu" role="3wpmZP">
                <property role="2Vclpx" value="282.0001983642578" />
                <property role="2Vclpz" value="147.48528137423858" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1PAv" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1PAw" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1PAx" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1PAy" role="3wpmZP">
                <property role="2Vclpx" value="282.0001983642578" />
                <property role="2Vclpz" value="223.51471862576142" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1PHh" role="37mRID">
        <property role="37mO49" value="3885467545117350307" />
        <node concept="2VclpC" id="3nFX2lH1PHg" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH1PHi" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1PHj" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1PHk" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1PHl" role="3wpmZP">
                <property role="2Vclpx" value="373.5000991821289" />
                <property role="2Vclpz" value="141.47267640033607" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1PHm" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1PHn" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1PHo" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1PHp" role="3wpmZP">
                <property role="2Vclpx" value="419.978183974012" />
                <property role="2Vclpz" value="57.61479203033193" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1PHq" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1PHr" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1PHs" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1PHt" role="3wpmZP">
                <property role="2Vclpx" value="327.02201439024583" />
                <property role="2Vclpz" value="225.33056077034018" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1Qg8" role="37mRID">
        <property role="37mO49" value="3885467545117352898" />
        <node concept="2VclpC" id="3nFX2lH1Qg7" role="37mO4d">
          <node concept="2VclrF" id="3nFX2lH1Qg9" role="2Vcluh">
            <property role="2Vclpx" value="523.1502075195312" />
            <property role="2Vclpz" value="129.7142791748047" />
          </node>
          <node concept="2VclrF" id="3nFX2lH1Qga" role="2Vcluh">
            <property role="2Vclpx" value="523.1502075195312" />
            <property role="2Vclpz" value="189.71421813964844" />
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Qgb" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1Qgc" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Qgd" role="3wpmZR">
                <property role="2Vclpx" value="-237.63854782733716" />
                <property role="2Vclpz" value="192.16750748104357" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Qge" role="3wpmZP">
                <property role="2Vclpx" value="337.3086036503938" />
                <property role="2Vclpz" value="140.07978287437157" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Qgf" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1Qgg" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Qgh" role="3wpmZR">
                <property role="2Vclpx" value="-22.885056331286023" />
                <property role="2Vclpz" value="-486.8371080782466" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Qgi" role="3wpmZP">
                <property role="2Vclpx" value="71.46280221786552" />
                <property role="2Vclpz" value="154.90760173135692" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Qgj" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1Qgk" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Qgl" role="3wpmZR">
                <property role="2Vclpx" value="186.5343510657014" />
                <property role="2Vclpz" value="-216.09833336371304" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Qgm" role="3wpmZP">
                <property role="2Vclpx" value="536.4378848214104" />
                <property role="2Vclpz" value="204.83369078786592" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1QwN" role="37mRID">
        <property role="37mO49" value="3885467545117353997" />
        <node concept="2VclpC" id="3nFX2lH1QwM" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH1QwO" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1QwP" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QwQ" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QwR" role="3wpmZP">
                <property role="2Vclpx" value="251.0001983642578" />
                <property role="2Vclpz" value="162.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1QwS" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1QwT" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QwU" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QwV" role="3wpmZP">
                <property role="2Vclpx" value="251.0001983642578" />
                <property role="2Vclpz" value="172.51471862576142" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1QwW" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1QwX" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QwY" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QwZ" role="3wpmZP">
                <property role="2Vclpx" value="251.0001983642578" />
                <property role="2Vclpz" value="151.48528137423858" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1QC$" role="37mRID">
        <property role="37mO49" value="3885467545117354048" />
        <node concept="2VclpC" id="3nFX2lH1QCz" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH1QC_" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1QCA" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QCB" role="3wpmZR">
                <property role="2Vclpx" value="91.6596438629362" />
                <property role="2Vclpz" value="-44.47041016132738" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QCC" role="3wpmZP">
                <property role="2Vclpx" value="488.9501953125" />
                <property role="2Vclpz" value="212.65766957230514" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1QCD" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1QCE" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QCF" role="3wpmZR">
                <property role="2Vclpx" value="297.1819603706838" />
                <property role="2Vclpz" value="-460.0777457774903" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QCG" role="3wpmZP">
                <property role="2Vclpx" value="461.1407612089333" />
                <property role="2Vclpz" value="207.81296670387843" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1QCH" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1QCI" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QCJ" role="3wpmZR">
                <property role="2Vclpx" value="206.46305361106107" />
                <property role="2Vclpz" value="-233.13022097380974" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QCK" role="3wpmZP">
                <property role="2Vclpx" value="532.8192105440997" />
                <property role="2Vclpz" value="240.564251457569" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="3nFX2lH1QKF" role="2Vcluh">
            <property role="2Vclpx" value="488.9501953125" />
            <property role="2Vclpz" value="189.71421813964844" />
          </node>
          <node concept="2VclrF" id="3nFX2lH1QKG" role="2Vcluh">
            <property role="2Vclpx" value="488.9501953125" />
            <property role="2Vclpz" value="220.57135009765625" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1QO1" role="37mRID">
        <property role="37mO49" value="3885467545117355253" />
        <node concept="gqqVs" id="3nFX2lH1QO0" role="37mO4d">
          <property role="gqqTZ" value="211.0" />
          <property role="gqqTW" value="352.0" />
          <property role="gqqTX" value="292.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1QV4" role="37mRID">
        <property role="37mO49" value="3885467545117355684" />
        <node concept="2VclpC" id="3nFX2lH1QV3" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH1QV5" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1QV6" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QV7" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QV8" role="3wpmZP">
                <property role="2Vclpx" value="251.0001983642578" />
                <property role="2Vclpz" value="162.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1QV9" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1QVa" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QVb" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QVc" role="3wpmZP">
                <property role="2Vclpx" value="251.0001983642578" />
                <property role="2Vclpz" value="172.51471862576142" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1QVd" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1QVe" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QVf" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QVg" role="3wpmZP">
                <property role="2Vclpx" value="251.0001983642578" />
                <property role="2Vclpz" value="151.48528137423858" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1R4b" role="37mRID">
        <property role="37mO49" value="3885467545117356267" />
        <node concept="2VclpC" id="3nFX2lH1R4a" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH1R4c" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1R4d" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1R4e" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1R4f" role="3wpmZP">
                <property role="2Vclpx" value="251.0001983642578" />
                <property role="2Vclpz" value="162.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1R4g" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1R4h" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1R4i" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1R4j" role="3wpmZP">
                <property role="2Vclpx" value="251.0001983642578" />
                <property role="2Vclpz" value="172.51471862576142" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1R4k" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1R4l" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1R4m" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1R4n" role="3wpmZP">
                <property role="2Vclpx" value="251.0001983642578" />
                <property role="2Vclpz" value="151.48528137423858" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH3zjz" role="37mRID">
        <property role="37mO49" value="3885467545117799637" />
        <node concept="2VclpC" id="3nFX2lH3zjy" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH3zjC" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH3zjD" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH3zjE" role="3wpmZR">
                <property role="2Vclpx" value="159.61087447647532" />
                <property role="2Vclpz" value="-299.2726505037185" />
              </node>
              <node concept="2VclrF" id="3nFX2lH3zjF" role="3wpmZP">
                <property role="2Vclpx" value="497.50018310546875" />
                <property role="2Vclpz" value="308.28564453125" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH3zjG" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH3zjH" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH3zjI" role="3wpmZR">
                <property role="2Vclpx" value="279.96042573594366" />
                <property role="2Vclpz" value="-462.1403574887667" />
              </node>
              <node concept="2VclrF" id="3nFX2lH3zjJ" role="3wpmZP">
                <property role="2Vclpx" value="463.48546447970733" />
                <property role="2Vclpz" value="308.28564453125" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH3zjK" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH3zjL" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH3zjM" role="3wpmZR">
                <property role="2Vclpx" value="228.8887853753215" />
                <property role="2Vclpz" value="-266.19378293082104" />
              </node>
              <node concept="2VclrF" id="3nFX2lH3zjN" role="3wpmZP">
                <property role="2Vclpx" value="531.5149017312302" />
                <property role="2Vclpz" value="308.28564453125" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH4KVb" role="37mRID">
        <property role="37mO49" value="3885467545118117571" />
        <node concept="gqqVs" id="3nFX2lH4KVa" role="37mO4d">
          <property role="gqqTZ" value="928.0003051757812" />
          <property role="gqqTW" value="111.7142333984375" />
          <property role="gqqTX" value="45.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH65oh" role="37mRID">
        <property role="37mO49" value="967875482185911054" />
        <node concept="gqqVs" id="3nFX2lH65og" role="37mO4d">
          <property role="gqqTZ" value="12.000099182128906" />
          <property role="gqqTW" value="354.28564453125" />
          <property role="gqqTX" value="32.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH65oj" role="37mRID">
        <property role="37mO49" value="3885467545118117580" />
        <node concept="gqqVs" id="3nFX2lH65oi" role="37mO4d">
          <property role="gqqTZ" value="25.000099182128906" />
          <property role="gqqTW" value="352.800048828125" />
          <property role="gqqTX" value="123.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH65ol" role="37mRID">
        <property role="37mO49" value="967875482185911064" />
        <node concept="gqqVs" id="3nFX2lH65ok" role="37mO4d">
          <property role="gqqTZ" value="934.5003051757812" />
          <property role="gqqTW" value="484.0" />
          <property role="gqqTX" value="32.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH65on" role="37mRID">
        <property role="37mO49" value="3885467545118118097" />
        <node concept="gqqVs" id="3nFX2lH65om" role="37mO4d">
          <property role="gqqTZ" value="704.0" />
          <property role="gqqTW" value="226.0" />
          <property role="gqqTX" value="123.0" />
          <property role="gqqTy" value="36.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH8ajs" role="37mRID">
        <property role="37mO49" value="3885467545119007938" />
        <node concept="2VclpC" id="3nFX2lH8ajr" role="37mO4d">
          <node concept="2VclrF" id="3nFX2lH8ajt" role="2Vcluh">
            <property role="2Vclpx" value="82.00019073486328" />
            <property role="2Vclpz" value="372.28570556640625" />
          </node>
          <node concept="2VclrF" id="3nFX2lH8aju" role="2Vcluh">
            <property role="2Vclpx" value="82.00019073486328" />
            <property role="2Vclpz" value="406.28564453125" />
          </node>
          <node concept="3ul5H1" id="3nFX2lH8ajv" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH8ajw" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8ajx" role="3wpmZR">
                <property role="2Vclpx" value="46.18995189712004" />
                <property role="2Vclpz" value="-810.6510312933646" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8ajy" role="3wpmZP">
                <property role="2Vclpx" value="339.91449315432055" />
                <property role="2Vclpz" value="406.28564453125" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8ajz" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aj$" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aj_" role="3wpmZR">
                <property role="2Vclpx" value="-16.705619307839157" />
                <property role="2Vclpz" value="-454.80012206020785" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8ajA" role="3wpmZP">
                <property role="2Vclpx" value="55.95482703305031" />
                <property role="2Vclpz" value="390.1061281261767" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8ajB" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH8ajC" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8ajD" role="3wpmZR">
                <property role="2Vclpx" value="222.64923994511298" />
                <property role="2Vclpz" value="-247.16961422212796" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8ajE" role="3wpmZP">
                <property role="2Vclpx" value="533.9477004744671" />
                <property role="2Vclpz" value="300.2506561105822" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drrB2G" role="2Vcluh">
            <property role="2Vclpx" value="507.00018310546875" />
            <property role="2Vclpz" value="406.28564453125" />
          </node>
          <node concept="2VclrF" id="1Oxt8drrB2H" role="2Vcluh">
            <property role="2Vclpx" value="507.00018310546875" />
            <property role="2Vclpz" value="282.28564453125" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH8aul" role="37mRID">
        <property role="37mO49" value="3885467545119008629" />
        <node concept="2VclpC" id="3nFX2lH8auk" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH8auo" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH8aup" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8auq" role="3wpmZR">
                <property role="2Vclpx" value="145.11361548771345" />
                <property role="2Vclpz" value="-436.72999714747675" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aur" role="3wpmZP">
                <property role="2Vclpx" value="914.2501831054688" />
                <property role="2Vclpz" value="421.15908694439406" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aus" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aut" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8auu" role="3wpmZR">
                <property role="2Vclpx" value="133.85801658275932" />
                <property role="2Vclpz" value="-344.2386302926145" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8auv" role="3wpmZP">
                <property role="2Vclpx" value="898.2917155493136" />
                <property role="2Vclpz" value="359.8064158148719" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8auw" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aux" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8auy" role="3wpmZR">
                <property role="2Vclpx" value="468.2812648152661" />
                <property role="2Vclpz" value="-344.49360143392624" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8auz" role="3wpmZP">
                <property role="2Vclpx" value="925.9644473403779" />
                <property role="2Vclpz" value="516.6783047833171" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drkRug" role="2Vcluh">
            <property role="2Vclpx" value="914.2501831054688" />
            <property role="2Vclpz" value="343.99993896484375" />
          </node>
          <node concept="2VclrF" id="1Oxt8drkRuh" role="2Vcluh">
            <property role="2Vclpx" value="914.2501831054688" />
            <property role="2Vclpz" value="502.00006103515625" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH8aH4" role="37mRID">
        <property role="37mO49" value="3885467545119009566" />
        <node concept="2VclpC" id="3nFX2lH8aH3" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH8aH7" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH8aH8" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aH9" role="3wpmZR">
                <property role="2Vclpx" value="729.7625627855069" />
                <property role="2Vclpz" value="-869.2717604040567" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aHa" role="3wpmZP">
                <property role="2Vclpx" value="652.6948310103926" />
                <property role="2Vclpz" value="140.02220998087665" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aHb" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aHc" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aHd" role="3wpmZR">
                <property role="2Vclpx" value="292.710886701875" />
                <property role="2Vclpz" value="-498.1939890055037" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aHe" role="3wpmZP">
                <property role="2Vclpx" value="458.5624885951591" />
                <property role="2Vclpz" value="204.83369712050586" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aHf" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aHg" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aHh" role="3wpmZR">
                <property role="2Vclpx" value="1275.4837850135614" />
                <property role="2Vclpz" value="-806.1283740190281" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aHi" role="3wpmZP">
                <property role="2Vclpx" value="913.5381918089028" />
                <property role="2Vclpz" value="154.88997320322818" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drhHBx" role="2Vcluh">
            <property role="2Vclpx" value="471.8501892089844" />
            <property role="2Vclpz" value="189.71421813964844" />
          </node>
          <node concept="2VclrF" id="1Oxt8drhHBy" role="2Vcluh">
            <property role="2Vclpx" value="471.8501892089844" />
            <property role="2Vclpz" value="129.7142791748047" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH8aUt" role="37mRID">
        <property role="37mO49" value="3885467545119010423" />
        <node concept="2VclpC" id="3nFX2lH8aUs" role="37mO4d">
          <node concept="3ul5H1" id="3nFX2lH8aUw" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH8aUx" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aUy" role="3wpmZR">
                <property role="2Vclpx" value="167.90256502702164" />
                <property role="2Vclpz" value="-661.0765055031382" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aUz" role="3wpmZP">
                <property role="2Vclpx" value="63.00019073486328" />
                <property role="2Vclpz" value="317.8331121112963" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aU$" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aU_" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aUA" role="3wpmZR">
                <property role="2Vclpx" value="-36.037980154806974" />
                <property role="2Vclpz" value="-517.4560711495461" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aUB" role="3wpmZP">
                <property role="2Vclpx" value="52.54661224060882" />
                <property role="2Vclpz" value="386.59045885248275" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aUC" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aUD" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aUE" role="3wpmZR">
                <property role="2Vclpx" value="345.61313371766687" />
                <property role="2Vclpz" value="-517.7358250888101" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aUF" role="3wpmZP">
                <property role="2Vclpx" value="94.52942066137197" />
                <property role="2Vclpz" value="300.91655635470005" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drhHBt" role="2Vcluh">
            <property role="2Vclpx" value="63.00019073486328" />
            <property role="2Vclpz" value="372.28570556640625" />
          </node>
          <node concept="2VclrF" id="1Oxt8drhHBu" role="2Vcluh">
            <property role="2Vclpx" value="63.00019073486328" />
            <property role="2Vclpz" value="282.28564453125" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="22$VZ0Kvv7o" role="37mRID">
        <property role="37mO49" value="2352268720278991296" />
        <node concept="2VclpC" id="22$VZ0Kvv7n" role="37mO4d">
          <node concept="3ul5H1" id="22$VZ0Kvv7r" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="22$VZ0Kvv7s" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvv7t" role="3wpmZR">
                <property role="2Vclpx" value="57.83579859904067" />
                <property role="2Vclpz" value="-519.7206131748035" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvv7u" role="3wpmZP">
                <property role="2Vclpx" value="84.15019226074219" />
                <property role="2Vclpz" value="158.2253676448624" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="22$VZ0Kvv7v" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="22$VZ0Kvv7w" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvv7x" role="3wpmZR">
                <property role="2Vclpx" value="1.9383460441877816" />
                <property role="2Vclpz" value="-462.87832252358885" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvv7y" role="3wpmZP">
                <property role="2Vclpx" value="67.46184629623781" />
                <property role="2Vclpz" value="145.69563911915054" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="22$VZ0Kvv7z" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="22$VZ0Kvv7$" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvv7_" role="3wpmZR">
                <property role="2Vclpx" value="315.07871923585935" />
                <property role="2Vclpz" value="-475.73243906453007" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvv7A" role="3wpmZP">
                <property role="2Vclpx" value="97.43788121859282" />
                <property role="2Vclpz" value="204.83369395418623" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drrAMS" role="2Vcluh">
            <property role="2Vclpx" value="84.15019226074219" />
            <property role="2Vclpz" value="129.7142791748047" />
          </node>
          <node concept="2VclrF" id="1Oxt8drrAMT" role="2Vcluh">
            <property role="2Vclpx" value="84.15019226074219" />
            <property role="2Vclpz" value="189.71421813964844" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="22$VZ0KvvdZ" role="37mRID">
        <property role="37mO49" value="2352268720278991335" />
        <node concept="2VclpC" id="22$VZ0KvvdY" role="37mO4d">
          <node concept="3ul5H1" id="22$VZ0Kvve2" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="22$VZ0Kvve3" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvve4" role="3wpmZR">
                <property role="2Vclpx" value="424.35590581265285" />
                <property role="2Vclpz" value="-1036.214872342909" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvve5" role="3wpmZP">
                <property role="2Vclpx" value="609.2367938960646" />
                <property role="2Vclpz" value="509.05185784002884" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="22$VZ0Kvve6" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="22$VZ0Kvve7" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvve8" role="3wpmZR">
                <property role="2Vclpx" value="310.58582248053676" />
                <property role="2Vclpz" value="-416.432385439428" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvve9" role="3wpmZP">
                <property role="2Vclpx" value="461.0526669801309" />
                <property role="2Vclpz" value="361.9649436903589" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="22$VZ0Kvvea" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="22$VZ0Kvveb" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvvec" role="3wpmZR">
                <property role="2Vclpx" value="366.7322821875392" />
                <property role="2Vclpz" value="-213.41297357509927" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvved" role="3wpmZP">
                <property role="2Vclpx" value="920.5391601710863" />
                <property role="2Vclpz" value="527.1589380159929" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drrAMQ" role="2Vcluh">
            <property role="2Vclpx" value="488.00018310546875" />
            <property role="2Vclpz" value="343.99993896484375" />
          </node>
          <node concept="2VclrF" id="1Oxt8drrAMR" role="2Vcluh">
            <property role="2Vclpx" value="488.00018310546875" />
            <property role="2Vclpz" value="502.00006103515625" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="1Oxt8driIXD" role="37mRID">
        <property role="37mO49" value="2099087008852537175" />
        <node concept="gqqVs" id="1Oxt8driIXC" role="37mO4d">
          <property role="gqqTZ" value="420.0" />
          <property role="gqqTW" value="12.0" />
          <property role="gqqTX" value="318.0" />
          <property role="gqqTy" value="216.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="1Oxt8drkR_k" role="37mRID">
        <property role="37mO49" value="2099087008853096738" />
        <node concept="2VclpC" id="1Oxt8drkR_j" role="37mO4d">
          <node concept="3ul5H1" id="1Oxt8drkR_l" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="1Oxt8drkR_m" role="3ul5Gz">
              <node concept="2VclrF" id="1Oxt8drkR_n" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="1Oxt8drkR_o" role="3wpmZP">
                <property role="2Vclpx" value="689.0000915527344" />
                <property role="2Vclpz" value="691.4373342452894" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="1Oxt8drkR_p" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="1Oxt8drkR_q" role="3ul5Gz">
              <node concept="2VclrF" id="1Oxt8drkR_r" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="1Oxt8drkR_s" role="3wpmZP">
                <property role="2Vclpx" value="902.6261014719096" />
                <property role="2Vclpz" value="780.3107384991287" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="1Oxt8drkR_t" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="1Oxt8drkR_u" role="3ul5Gz">
              <node concept="2VclrF" id="1Oxt8drkR_v" role="3wpmZR">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="1Oxt8drkR_w" role="3wpmZP">
                <property role="2Vclpx" value="475.3740816335591" />
                <property role="2Vclpz" value="602.5639299914502" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="1Oxt8drlXLN" role="37mRID">
        <property role="37mO49" value="2099087008853384287" />
        <node concept="gqqVs" id="1Oxt8drlXLM" role="37mO4d">
          <property role="gqqTZ" value="24.0" />
          <property role="gqqTW" value="12.0" />
          <property role="gqqTX" value="292.0" />
          <property role="gqqTy" value="216.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
    </node>
    <node concept="1N5Tqi" id="3nFX2lGZBLZ" role="1N5PiQ">
      <node concept="1N5Tq0" id="3nFX2lGZBM0" role="1N5PkO">
        <ref role="1N5Pi3" node="PI_pXYw3K9" resolve="INIT" />
      </node>
      <node concept="1N5Pk$" id="3nFX2lGZBM1" role="1N5PkH">
        <ref role="1N5Pi4" node="PI_pXYw4Gy" resolve="FB1" />
        <ref role="1N5Pi3" node="3HBlKeoYV84" resolve="INIT" />
      </node>
    </node>
    <node concept="2zBDe_" id="3nFX2lH1Pbm" role="2zBDey">
      <property role="TrG5h" value="REQ" />
    </node>
    <node concept="1N5Tt1" id="3nFX2lH1Phx" role="1N5PiY">
      <property role="TrG5h" value="FB2" />
      <ref role="1N5Tt0" node="3HBlKeoYFbB" resolve="FLASHER4" />
    </node>
    <node concept="1N5Tqi" id="3nFX2lH1Qf2" role="1N5PiQ">
      <node concept="1N5Tq0" id="3nFX2lH1Qf3" role="1N5PkO">
        <ref role="1N5Pi3" node="3nFX2lH1Pbm" resolve="REQ" />
      </node>
      <node concept="1N5Pk$" id="3nFX2lH1Qf4" role="1N5PkH">
        <ref role="1N5Pi4" node="PI_pXYw4Gy" resolve="FB1" />
        <ref role="1N5Pi3" node="3HBlKeoYV84" resolve="INIT" />
      </node>
    </node>
    <node concept="1N5Tqi" id="3nFX2lH1Qx0" role="1N5PiQ">
      <node concept="1N5Tq0" id="3nFX2lH1Qx1" role="1N5PkO">
        <ref role="1N5Pi4" node="3nFX2lH1Phx" resolve="FB2" />
        <ref role="1N5Pi3" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
      <node concept="1N5Pk$" id="3nFX2lH1Qx2" role="1N5PkH">
        <ref role="1N5Pi4" node="PI_pXYw4Gy" resolve="FB1" />
        <ref role="1N5Pi3" node="3HBlKeoYV8j" resolve="REQ" />
      </node>
    </node>
    <node concept="1N5Tq9" id="3nFX2lH3zjl" role="1N5PiV">
      <node concept="1N5PlI" id="3nFX2lH3zjm" role="1N5Piu">
        <ref role="1N5PlC" node="3nFX2lH1Phx" resolve="FB2" />
        <ref role="1N5PlF" node="3HBlKeoYWWK" resolve="LED3" />
      </node>
      <node concept="1N5PlH" id="3nFX2lH3zjn" role="1N5Pin">
        <ref role="1N5PlC" node="PI_pXYw4Gy" resolve="FB1" />
        <ref role="1N5PlF" node="3HBlKeoYV86" resolve="MODE" />
      </node>
    </node>
    <node concept="2zBDe_" id="3nFX2lH4KV3" role="2zBDew">
      <property role="TrG5h" value="OUT" />
    </node>
    <node concept="1N5Tq9" id="3nFX2lH8aj2" role="1N5PiV">
      <node concept="1N5PlI" id="3nFX2lH8aj3" role="1N5Piu">
        <ref role="1N5PlF" node="PI_pXYw4Ge" resolve="QI" />
      </node>
      <node concept="1N5PlH" id="3nFX2lH8aj4" role="1N5Pin">
        <ref role="1N5PlC" node="PI_pXYw4Gy" resolve="FB1" />
        <ref role="1N5PlF" node="3HBlKeoYV86" resolve="MODE" />
      </node>
    </node>
    <node concept="1N5Tq9" id="3nFX2lH8atP" role="1N5PiV">
      <node concept="1N5PlI" id="3nFX2lH8atQ" role="1N5Piu">
        <ref role="1N5PlC" node="PI_pXYw4Gy" resolve="FB1" />
        <ref role="1N5PlF" node="3HBlKeoYZ27" resolve="LED1" />
      </node>
      <node concept="1N5PlH" id="3nFX2lH8atR" role="1N5Pin">
        <ref role="1N5PlF" node="PI_pXYw4Go" resolve="QO" />
      </node>
    </node>
    <node concept="1N5Tqi" id="3nFX2lH8aGu" role="1N5PiQ">
      <node concept="1N5Tq0" id="3nFX2lH8aGv" role="1N5PkO">
        <ref role="1N5Pi4" node="3nFX2lH1Phx" resolve="FB2" />
        <ref role="1N5Pi3" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
      <node concept="1N5Pk$" id="3nFX2lH8aGw" role="1N5PkH">
        <ref role="1N5Pi3" node="3nFX2lH4KV3" resolve="OUT" />
      </node>
    </node>
    <node concept="1N5Tq9" id="3nFX2lH8aTR" role="1N5PiV">
      <node concept="1N5PlI" id="3nFX2lH8aTS" role="1N5Piu">
        <ref role="1N5PlF" node="PI_pXYw4Ge" resolve="QI" />
      </node>
      <node concept="1N5PlH" id="3nFX2lH8aTT" role="1N5Pin">
        <ref role="1N5PlC" node="3nFX2lH1Phx" resolve="FB2" />
        <ref role="1N5PlF" node="3HBlKeoYV86" resolve="MODE" />
      </node>
    </node>
    <node concept="1N5Tqi" id="22$VZ0Kvv70" role="1N5PiQ">
      <node concept="1N5Tq0" id="22$VZ0Kvv71" role="1N5PkO">
        <ref role="1N5Pi3" node="3nFX2lH1Pbm" resolve="REQ" />
      </node>
      <node concept="1N5Pk$" id="22$VZ0Kvv72" role="1N5PkH">
        <ref role="1N5Pi4" node="3nFX2lH1Phx" resolve="FB2" />
        <ref role="1N5Pi3" node="3HBlKeoYV84" resolve="INIT" />
      </node>
    </node>
    <node concept="1N5Tq9" id="22$VZ0Kvv7B" role="1N5PiV">
      <node concept="1N5PlI" id="22$VZ0Kvv7C" role="1N5Piu">
        <ref role="1N5PlC" node="3nFX2lH1Phx" resolve="FB2" />
        <ref role="1N5PlF" node="3HBlKeoYZ27" resolve="LED1" />
      </node>
      <node concept="1N5PlH" id="22$VZ0Kvv7D" role="1N5Pin">
        <ref role="1N5PlF" node="PI_pXYw4Go" resolve="QO" />
      </node>
    </node>
  </node>
</model>

