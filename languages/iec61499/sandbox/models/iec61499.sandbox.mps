<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cb7bb46e-db4e-4c60-8bfe-1c06690663cc(iec61499.sandbox)">
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
      <concept id="9128111731364718677" name="iec61499.structure.StateActionsEnabler" flags="ng" index="2WJ7$k" />
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
      <node concept="2WJ7$k" id="7t6qmPMALt_" role="lGtFl" />
    </node>
    <node concept="2zAPAk" id="3HBlKeoZ7_Q" role="2zAPwY">
      <property role="TrG5h" value="INIT" />
      <node concept="2zAPAr" id="3HBlKeoZ7_T" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7_V" resolve="INIT" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
      <node concept="2WJ7$k" id="7t6qmPMALtC" role="lGtFl" />
    </node>
    <node concept="2zAPAk" id="3HBlKeoZ7_X" role="2zAPwY">
      <property role="TrG5h" value="FLASH_ALL" />
      <node concept="2zAPAr" id="3HBlKeoZ7A5" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7A2" resolve="FLASH_ALL" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
      <node concept="2WJ7$k" id="7t6qmPMALtx" role="lGtFl" />
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaFs" role="2zAPwY">
      <property role="TrG5h" value="COUNT_UP" />
      <node concept="2zAPAr" id="3HBlKeoZaFz" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7As" resolve="COUNT_UP" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
      <node concept="2WJ7$k" id="7t6qmPMALtz" role="lGtFl" />
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaF_" role="2zAPwY">
      <property role="TrG5h" value="COUNT_DOWN" />
      <node concept="2zAPAr" id="3HBlKeoZaFI" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7Ay" resolve="COUNT_DOWN" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
      <node concept="2WJ7$k" id="7t6qmPMALty" role="lGtFl" />
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaFK" role="2zAPwY">
      <property role="TrG5h" value="CHASE_UP" />
      <node concept="2zAPAr" id="3HBlKeoZaFV" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7A9" resolve="CHASE_UP" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
      <node concept="2WJ7$k" id="7t6qmPMALtB" role="lGtFl" />
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaFX" role="2zAPwY">
      <property role="TrG5h" value="CHASE_DOWN" />
      <node concept="2zAPAr" id="3HBlKeoZaGa" role="2zAPBK">
        <ref role="2zAPAu" node="3HBlKeoZ7Ad" resolve="CHASE_DOWN" />
        <ref role="2zAPAs" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
      <node concept="2WJ7$k" id="7t6qmPMALt$" role="lGtFl" />
    </node>
    <node concept="2zAPAk" id="3HBlKeoZaGc" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="2WJ7$k" id="7t6qmPMALtA" role="lGtFl" />
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
          <property role="gqqTZ" value="565.9999389648438" />
          <property role="gqqTW" value="252.00030517578125" />
          <property role="gqqTX" value="38.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebYX" role="37mRID">
        <property role="37mO49" value="4280485643802147190" />
        <node concept="gqqVs" id="PI_pXYebYW" role="37mO4d">
          <property role="gqqTZ" value="164.9999542236328" />
          <property role="gqqTW" value="157.0000991821289" />
          <property role="gqqTX" value="38.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebYZ" role="37mRID">
        <property role="37mO49" value="4280485643802147197" />
        <node concept="gqqVs" id="PI_pXYebYY" role="37mO4d">
          <property role="gqqTZ" value="144.9999542236328" />
          <property role="gqqTW" value="332.0000991821289" />
          <property role="gqqTX" value="78.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ1" role="37mRID">
        <property role="37mO49" value="4280485643802159836" />
        <node concept="gqqVs" id="PI_pXYebZ0" role="37mO4d">
          <property role="gqqTZ" value="549.9999389648438" />
          <property role="gqqTW" value="447.00048828125" />
          <property role="gqqTX" value="70.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ3" role="37mRID">
        <property role="37mO49" value="4280485643802159845" />
        <node concept="gqqVs" id="PI_pXYebZ2" role="37mO4d">
          <property role="gqqTZ" value="549.9999389648438" />
          <property role="gqqTW" value="55.000099182128906" />
          <property role="gqqTX" value="86.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ5" role="37mRID">
        <property role="37mO49" value="4280485643802159856" />
        <node concept="gqqVs" id="PI_pXYebZ4" role="37mO4d">
          <property role="gqqTZ" value="958.9999389648438" />
          <property role="gqqTW" value="157.0000991821289" />
          <property role="gqqTX" value="70.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ7" role="37mRID">
        <property role="37mO49" value="4280485643802159869" />
        <node concept="gqqVs" id="PI_pXYebZ6" role="37mO4d">
          <property role="gqqTZ" value="942.9999389648438" />
          <property role="gqqTW" value="332.0000991821289" />
          <property role="gqqTX" value="86.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZ9" role="37mRID">
        <property role="37mO49" value="4280485643802159884" />
        <node concept="gqqVs" id="PI_pXYebZ8" role="37mO4d">
          <property role="gqqTZ" value="405.99993896484375" />
          <property role="gqqTW" value="447.00048828125" />
          <property role="gqqTX" value="46.0" />
          <property role="gqqTy" value="23.0" />
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
                <property role="2Vclpx" value="-144.0" />
                <property role="2Vclpz" value="-32.49980163574219" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpo1" role="3wpmZP">
                <property role="2Vclpx" value="384.10397312382185" />
                <property role="2Vclpz" value="243.8944949607166" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpo2" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpo3" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpo4" role="3wpmZR">
                <property role="2Vclpx" value="-370.8504381076281" />
                <property role="2Vclpz" value="-279.4552106652888" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpo5" role="3wpmZP">
                <property role="2Vclpx" value="551.7628198173431" />
                <property role="2Vclpz" value="275.3305287157518" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpo6" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpo7" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpo8" role="3wpmZR">
                <property role="2Vclpx" value="629.3087583242209" />
                <property role="2Vclpz" value="598.8403106148609" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpo9" role="3wpmZP">
                <property role="2Vclpx" value="217.11433063821733" />
                <property role="2Vclpz" value="209.257153224204" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="2JGKyjiUEsC" role="2Vcluh">
            <property role="2Vclpx" value="294.0" />
            <property role="2Vclpz" value="227.0" />
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
                <property role="2Vclpx" value="-178.4998016357422" />
                <property role="2Vclpz" value="-8.0" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoi" role="3wpmZP">
                <property role="2Vclpx" value="387.3831150934944" />
                <property role="2Vclpz" value="293.9609109396451" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpoj" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpok" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpol" role="3wpmZR">
                <property role="2Vclpx" value="-226.97267524348626" />
                <property role="2Vclpz" value="-616.7599205266891" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpom" role="3wpmZP">
                <property role="2Vclpx" value="551.5259537876423" />
                <property role="2Vclpz" value="300.4295942379366" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpon" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpoo" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpop" role="3wpmZR">
                <property role="2Vclpx" value="634.3750930662854" />
                <property role="2Vclpz" value="530.201917074614" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoq" role="3wpmZP">
                <property role="2Vclpx" value="236.1382801067937" />
                <property role="2Vclpz" value="351.9000842361315" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="5OOChIHyl2H" role="2Vcluh">
            <property role="2Vclpx" value="363.0" />
            <property role="2Vclpz" value="293.0" />
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
                <property role="2Vclpx" value="15.00006103515625" />
                <property role="2Vclpz" value="6.500396728515625" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoz" role="3wpmZP">
                <property role="2Vclpx" value="584.9999389648438" />
                <property role="2Vclpz" value="387.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpo$" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpo_" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoA" role="3wpmZR">
                <property role="2Vclpx" value="9.823911887751592" />
                <property role="2Vclpz" value="-1186.692645560409" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoB" role="3wpmZP">
                <property role="2Vclpx" value="584.9999389648438" />
                <property role="2Vclpz" value="315.4852813742386" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpoC" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpoD" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoE" role="3wpmZR">
                <property role="2Vclpx" value="-357.13837117689627" />
                <property role="2Vclpz" value="-98.47493140178489" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoF" role="3wpmZP">
                <property role="2Vclpx" value="584.9999389648438" />
                <property role="2Vclpz" value="458.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="7t6qmPMMHP0" role="2Vcluh">
            <property role="2Vclpx" value="584.9999389648438" />
            <property role="2Vclpz" value="361.0003967285156" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZh" role="37mRID">
        <property role="37mO49" value="4280485643802238899" />
        <node concept="2VclpC" id="PI_pXYgpoG" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYgpoP" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpoQ" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoR" role="3wpmZR">
                <property role="2Vclpx" value="-119.0" />
                <property role="2Vclpz" value="-69.49980163574219" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoS" role="3wpmZP">
                <property role="2Vclpx" value="584.9999389648438" />
                <property role="2Vclpz" value="191.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpoT" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpoU" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoV" role="3wpmZR">
                <property role="2Vclpx" value="-375.4003460118803" />
                <property role="2Vclpz" value="-374.05604822651367" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpoW" role="3wpmZP">
                <property role="2Vclpx" value="585.0" />
                <property role="2Vclpz" value="263.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpoX" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpoY" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpoZ" role="3wpmZR">
                <property role="2Vclpx" value="1339.0599564762533" />
                <property role="2Vclpz" value="1092.8086053547454" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpp0" role="3wpmZP">
                <property role="2Vclpx" value="584.9999389648438" />
                <property role="2Vclpz" value="118.48528137423857" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZj" role="37mRID">
        <property role="37mO49" value="4280485643802238911" />
        <node concept="2VclpC" id="PI_pXYgpp1" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYgpp2" role="2Vcluh">
            <property role="2Vclpx" value="827.0" />
            <property role="2Vclpz" value="232.0" />
          </node>
          <node concept="3ul5H1" id="PI_pXYgpp6" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpp7" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpp8" role="3wpmZR">
                <property role="2Vclpx" value="96.0" />
                <property role="2Vclpz" value="-23.499801635742188" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpp9" role="3wpmZP">
                <property role="2Vclpx" value="781.3810808177984" />
                <property role="2Vclpz" value="241.41018063848105" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppa" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgppb" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppc" role="3wpmZR">
                <property role="2Vclpx" value="-453.38722486024585" />
                <property role="2Vclpz" value="-542.6782122582688" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppd" role="3wpmZP">
                <property role="2Vclpx" value="618.1866011647967" />
                <property role="2Vclpz" value="275.0736159032258" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppe" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgppf" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppg" role="3wpmZR">
                <property role="2Vclpx" value="-655.988742644256" />
                <property role="2Vclpz" value="956.1003016885174" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpph" role="3wpmZP">
                <property role="2Vclpx" value="944.7877911950767" />
                <property role="2Vclpz" value="208.7993744615758" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZl" role="37mRID">
        <property role="37mO49" value="4280485643802238925" />
        <node concept="2VclpC" id="PI_pXYgppi" role="37mO4d">
          <node concept="2VclrF" id="PI_pXYgppj" role="2Vcluh">
            <property role="2Vclpx" value="913.0" />
            <property role="2Vclpz" value="297.0" />
          </node>
          <node concept="3ul5H1" id="PI_pXYgppr" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpps" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppt" role="3wpmZR">
                <property role="2Vclpx" value="93.99993896484375" />
                <property role="2Vclpz" value="-10.499801635742188" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppu" role="3wpmZP">
                <property role="2Vclpx" value="792.4861213465363" />
                <property role="2Vclpz" value="298.56005020910635" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppv" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgppw" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppx" role="3wpmZR">
                <property role="2Vclpx" value="-430.10568873261934" />
                <property role="2Vclpz" value="-253.18125580798494" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppy" role="3wpmZP">
                <property role="2Vclpx" value="618.4840678585757" />
                <property role="2Vclpz" value="300.8125039759408" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppz" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpp$" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpp_" role="3wpmZR">
                <property role="2Vclpx" value="-696.3376745967241" />
                <property role="2Vclpz" value="498.7300286257253" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppA" role="3wpmZP">
                <property role="2Vclpx" value="936.6073606145476" />
                <property role="2Vclpz" value="345.00163324958" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZn" role="37mRID">
        <property role="37mO49" value="4280485643802238965" />
        <node concept="2VclpC" id="PI_pXYgppB" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYgppG" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgppH" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppI" role="3wpmZR">
                <property role="2Vclpx" value="-105.49980163574219" />
                <property role="2Vclpz" value="-29.0" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppJ" role="3wpmZP">
                <property role="2Vclpx" value="392.5461394370636" />
                <property role="2Vclpz" value="204.11396876182027" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppK" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgppL" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppM" role="3wpmZR">
                <property role="2Vclpx" value="515.985855628189" />
                <property role="2Vclpz" value="262.4000004597811" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppN" role="3wpmZP">
                <property role="2Vclpx" value="217.4845643520931" />
                <property role="2Vclpz" value="205.85587498157122" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgppO" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgppP" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgppQ" role="3wpmZR">
                <property role="2Vclpx" value="-216.0466978978784" />
                <property role="2Vclpz" value="-465.73033357196755" />
              </node>
              <node concept="2VclrF" id="PI_pXYgppR" role="3wpmZP">
                <property role="2Vclpx" value="552.8242495414552" />
                <property role="2Vclpz" value="271.9814473214054" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="2JGKyjiYUyK" role="2Vcluh">
            <property role="2Vclpx" value="404.0" />
            <property role="2Vclpz" value="204.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZp" role="37mRID">
        <property role="37mO49" value="4280485643802238991" />
        <node concept="2VclpC" id="PI_pXYgppS" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYgppZ" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpq0" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpq1" role="3wpmZR">
                <property role="2Vclpx" value="-103.49980163574219" />
                <property role="2Vclpz" value="14.0" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpq2" role="3wpmZP">
                <property role="2Vclpx" value="393.997959261626" />
                <property role="2Vclpz" value="326.10752347104597" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpq3" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpq4" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpq5" role="3wpmZR">
                <property role="2Vclpx" value="374.74271943446183" />
                <property role="2Vclpz" value="236.78980620156983" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpq6" role="3wpmZP">
                <property role="2Vclpx" value="237.23973244394398" />
                <property role="2Vclpz" value="355.3441768854549" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpq7" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpq8" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpq9" role="3wpmZR">
                <property role="2Vclpx" value="-143.59696475341457" />
                <property role="2Vclpz" value="-525.0379972291462" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqa" role="3wpmZP">
                <property role="2Vclpx" value="551.6013953336773" />
                <property role="2Vclpz" value="302.58226424904643" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="5OOChIHzJfU" role="2Vcluh">
            <property role="2Vclpx" value="475.0" />
            <property role="2Vclpz" value="311.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYebZr" role="37mRID">
        <property role="37mO49" value="4280485643802239019" />
        <node concept="2VclpC" id="PI_pXYgpqb" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYgpqg" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYgpqh" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqi" role="3wpmZR">
                <property role="2Vclpx" value="-15.0" />
                <property role="2Vclpz" value="11.500198364257812" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqj" role="3wpmZP">
                <property role="2Vclpx" value="569.333251953125" />
                <property role="2Vclpz" value="387.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqk" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpql" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqm" role="3wpmZR">
                <property role="2Vclpx" value="-1097.7288973963061" />
                <property role="2Vclpz" value="-114.56540700949995" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqn" role="3wpmZP">
                <property role="2Vclpx" value="569.333251953125" />
                <property role="2Vclpz" value="458.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqo" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqp" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqq" role="3wpmZR">
                <property role="2Vclpx" value="454.32621372066774" />
                <property role="2Vclpz" value="-393.4815489758147" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqr" role="3wpmZP">
                <property role="2Vclpx" value="569.333251953125" />
                <property role="2Vclpz" value="315.4852813742386" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="7t6qmPMGMPA" role="2Vcluh">
            <property role="2Vclpx" value="569.333251953125" />
            <property role="2Vclpz" value="361.0003967285156" />
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
                <property role="2Vclpx" value="-13.485294144752288" />
                <property role="2Vclpz" value="-27.08278013638136" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqA" role="3wpmZP">
                <property role="2Vclpx" value="772.122309883805" />
                <property role="2Vclpz" value="206.81251169615737" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqB" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqC" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqD" role="3wpmZR">
                <property role="2Vclpx" value="-686.4199683959334" />
                <property role="2Vclpz" value="989.642230243688" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqE" role="3wpmZP">
                <property role="2Vclpx" value="944.5148555357426" />
                <property role="2Vclpz" value="206.06297888897504" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqF" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqG" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqH" role="3wpmZR">
                <property role="2Vclpx" value="-188.69925629828526" />
                <property role="2Vclpz" value="-431.0379963920166" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqI" role="3wpmZP">
                <property role="2Vclpx" value="616.5953063816127" />
                <property role="2Vclpz" value="270.845865975244" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="7t6qmPMMHLi" role="2Vcluh">
            <property role="2Vclpx" value="729.0" />
            <property role="2Vclpz" value="207.0" />
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
                <property role="2Vclpx" value="-6.4998016357421875" />
                <property role="2Vclpz" value="-24.0" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqP" role="3wpmZP">
                <property role="2Vclpx" value="509.0" />
                <property role="2Vclpz" value="387.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqQ" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqR" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqS" role="3wpmZR">
                <property role="2Vclpx" value="-1433.0027653664824" />
                <property role="2Vclpz" value="105.42927338525901" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqT" role="3wpmZP">
                <property role="2Vclpx" value="460.00256035953583" />
                <property role="2Vclpz" value="460.9259615628056" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYgpqU" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYgpqV" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYgpqW" role="3wpmZR">
                <property role="2Vclpx" value="-388.2982856826663" />
                <property role="2Vclpz" value="-558.6362059464932" />
              </node>
              <node concept="2VclrF" id="PI_pXYgpqX" role="3wpmZP">
                <property role="2Vclpx" value="557.9974396404641" />
                <property role="2Vclpz" value="313.0740384371944" />
              </node>
            </node>
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
          <node concept="3ul5H1" id="PI_pXYiHSL" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYiHSM" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHSN" role="3wpmZR">
                <property role="2Vclpx" value="6.103515625E-5" />
                <property role="2Vclpz" value="-72.49980163574219" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHSO" role="3wpmZP">
                <property role="2Vclpx" value="592.9999389648438" />
                <property role="2Vclpz" value="191.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYiHSP" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYiHSQ" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHSR" role="3wpmZR">
                <property role="2Vclpx" value="1287.3081529091337" />
                <property role="2Vclpz" value="700.0043719772948" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHSS" role="3wpmZP">
                <property role="2Vclpx" value="592.9999389648438" />
                <property role="2Vclpz" value="118.48528137423857" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYiHST" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYiHSU" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHSV" role="3wpmZR">
                <property role="2Vclpx" value="-507.1676734242117" />
                <property role="2Vclpz" value="-82.7872800117193" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHSW" role="3wpmZP">
                <property role="2Vclpx" value="592.9999389648438" />
                <property role="2Vclpz" value="263.5147186257614" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="PI_pXYiHSY" role="37mRID">
        <property role="37mO49" value="967875482182409240" />
        <node concept="2VclpC" id="PI_pXYiHSX" role="37mO4d">
          <node concept="3ul5H1" id="PI_pXYiHT1" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="PI_pXYiHT2" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHT3" role="3wpmZR">
                <property role="2Vclpx" value="53.49980163574219" />
                <property role="2Vclpz" value="0.0" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHT4" role="3wpmZP">
                <property role="2Vclpx" value="773.6974917104894" />
                <property role="2Vclpz" value="328.2978055632438" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYiHT5" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="PI_pXYiHT6" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHT7" role="3wpmZR">
                <property role="2Vclpx" value="-447.902518277903" />
                <property role="2Vclpz" value="65.11687078673506" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHT8" role="3wpmZP">
                <property role="2Vclpx" value="928.7326203564653" />
                <property role="2Vclpz" value="355.49695093973077" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="PI_pXYiHT9" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="PI_pXYiHTa" role="3ul5Gz">
              <node concept="2VclrF" id="PI_pXYiHTb" role="3wpmZR">
                <property role="2Vclpx" value="-427.9621072780294" />
                <property role="2Vclpz" value="111.39262723363942" />
              </node>
              <node concept="2VclrF" id="PI_pXYiHTc" role="3wpmZP">
                <property role="2Vclpx" value="618.3183301211379" />
                <property role="2Vclpz" value="303.19289740594" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="7t6qmPMGM$U" role="2Vcluh">
            <property role="2Vclpx" value="715.0" />
            <property role="2Vclpz" value="318.00000000000006" />
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
      <node concept="37mRIm" id="2JGKyjj0i8$" role="37mRID">
        <property role="37mO49" value="3165118101549294065" />
        <node concept="2VclpC" id="2JGKyjj0i8z" role="37mO4d">
          <node concept="2VclrF" id="2JGKyjj0i8_" role="2Vcluh">
            <property role="2Vclpx" value="713.0" />
            <property role="2Vclpz" value="227.0001983642578" />
          </node>
          <node concept="3ul5H1" id="2JGKyjj0i8A" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2JGKyjj0i8B" role="3ul5Gz">
              <node concept="2VclrF" id="2JGKyjj0i8C" role="3wpmZR">
                <property role="2Vclpx" value="47.49980163574219" />
                <property role="2Vclpz" value="-42.0" />
              </node>
              <node concept="2VclrF" id="2JGKyjj0i8D" role="3wpmZP">
                <property role="2Vclpx" value="656.5001983642578" />
                <property role="2Vclpz" value="227.0001983642578" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2JGKyjj0i8E" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="2JGKyjj0i8F" role="3ul5Gz">
              <node concept="2VclrF" id="2JGKyjj0i8G" role="3wpmZR">
                <property role="2Vclpx" value="-540.2222174191764" />
                <property role="2Vclpz" value="463.05496655515174" />
              </node>
              <node concept="2VclrF" id="2JGKyjj0i8H" role="3wpmZP">
                <property role="2Vclpx" value="713.0" />
                <property role="2Vclpz" value="175.48528137423858" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2JGKyjj0i8I" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="2JGKyjj0i8J" role="3ul5Gz">
              <node concept="2VclrF" id="2JGKyjj0i8K" role="3wpmZR">
                <property role="2Vclpx" value="-29.539902572016956" />
                <property role="2Vclpz" value="264.1238472108692" />
              </node>
              <node concept="2VclrF" id="2JGKyjj0i8L" role="3wpmZP">
                <property role="2Vclpx" value="585.0" />
                <property role="2Vclpz" value="263.5147186257614" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="7t6qmPMMHyV" role="2Vcluh">
            <property role="2Vclpx" value="585.0" />
            <property role="2Vclpz" value="227.0001983642578" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHu7cl" role="37mRID">
        <property role="37mO49" value="_actionsof_FLASHER4" />
        <node concept="gqqVs" id="5OOChIHu7ck" role="37mO4d">
          <property role="gqqTZ" value="123.00010013580322" />
          <property role="gqqTW" value="102.0" />
          <property role="gqqTX" value="78.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVsI" role="37mRID">
        <property role="37mO49" value="_actionsof_WAIT" />
        <node concept="gqqVs" id="5OOChIHwVsH" role="37mO4d">
          <property role="gqqTZ" value="529.000732421875" />
          <property role="gqqTW" value="519.4999389648438" />
          <property role="gqqTX" value="78.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVsK" role="37mRID">
        <property role="37mO49" value="_actionsof_INIT" />
        <node concept="gqqVs" id="5OOChIHwVsJ" role="37mO4d">
          <property role="gqqTZ" value="223.00030517578125" />
          <property role="gqqTW" value="1002.4999389648438" />
          <property role="gqqTX" value="70.0" />
          <property role="gqqTy" value="33.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVsM" role="37mRID">
        <property role="37mO49" value="_actionsof_FLASH_ALL" />
        <node concept="gqqVs" id="5OOChIHwVsL" role="37mO4d">
          <property role="gqqTZ" value="223.00030517578125" />
          <property role="gqqTW" value="150.0" />
          <property role="gqqTX" value="110.0" />
          <property role="gqqTy" value="33.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVsO" role="37mRID">
        <property role="37mO49" value="_actionsof_COUNT_UP" />
        <node concept="gqqVs" id="5OOChIHwVsN" role="37mO4d">
          <property role="gqqTZ" value="786.0009155273438" />
          <property role="gqqTW" value="630.9998779296875" />
          <property role="gqqTX" value="102.0" />
          <property role="gqqTy" value="33.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVsQ" role="37mRID">
        <property role="37mO49" value="_actionsof_COUNT_DOWN" />
        <node concept="gqqVs" id="5OOChIHwVsP" role="37mO4d">
          <property role="gqqTZ" value="223.00030517578125" />
          <property role="gqqTW" value="450.49993896484375" />
          <property role="gqqTX" value="126.0" />
          <property role="gqqTy" value="60.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVsS" role="37mRID">
        <property role="37mO49" value="_actionsof_CHASE_UP" />
        <node concept="gqqVs" id="5OOChIHwVsR" role="37mO4d">
          <property role="gqqTZ" value="223.00030517578125" />
          <property role="gqqTW" value="919.4999389648438" />
          <property role="gqqTX" value="102.0" />
          <property role="gqqTy" value="33.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVsU" role="37mRID">
        <property role="37mO49" value="_actionsof_CHASE_DOWN" />
        <node concept="gqqVs" id="5OOChIHwVsT" role="37mO4d">
          <property role="gqqTZ" value="223.00030517578125" />
          <property role="gqqTW" value="698.4999389648438" />
          <property role="gqqTX" value="118.0" />
          <property role="gqqTy" value="33.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVsW" role="37mRID">
        <property role="37mO49" value="_actionsof_START" />
        <node concept="gqqVs" id="5OOChIHwVsV" role="37mO4d">
          <property role="gqqTZ" value="248.00030517578125" />
          <property role="gqqTW" value="219.0" />
          <property role="gqqTX" value="78.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVt4" role="37mRID">
        <property role="37mO49" value="_actionedgeof_WAIT" />
        <node concept="2VclpC" id="5OOChIHwVt3" role="37mO4d">
          <node concept="3ul5H1" id="5OOChIHwVt7" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="5OOChIHwVt8" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVt9" role="3wpmZR">
                <property role="2Vclpx" value="-73.24943312442417" />
                <property role="2Vclpz" value="-473.4606337588244" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVta" role="3wpmZP">
                <property role="2Vclpx" value="504.0" />
                <property role="2Vclpz" value="556.9999389648438" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVtb" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5OOChIHwVtc" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVtd" role="3wpmZR">
                <property role="2Vclpx" value="-292.1262356771012" />
                <property role="2Vclpz" value="-586.2802734985833" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVte" role="3wpmZP">
                <property role="2Vclpx" value="493.4852813742386" />
                <property role="2Vclpz" value="556.9999389648438" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVtf" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5OOChIHwVtg" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVth" role="3wpmZR">
                <property role="2Vclpx" value="-108.7354022125304" />
                <property role="2Vclpz" value="-89.51606357968694" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVti" role="3wpmZP">
                <property role="2Vclpx" value="514.5147186257615" />
                <property role="2Vclpz" value="556.9999389648438" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVtk" role="37mRID">
        <property role="37mO49" value="_actionedgeof_INIT" />
        <node concept="2VclpC" id="5OOChIHwVtj" role="37mO4d">
          <node concept="3ul5H1" id="5OOChIHwVtl" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="5OOChIHwVtm" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVtn" role="3wpmZR">
                <property role="2Vclpx" value="20.625454915280187" />
                <property role="2Vclpz" value="-949.4153481714364" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVto" role="3wpmZP">
                <property role="2Vclpx" value="434.5003372103967" />
                <property role="2Vclpz" value="1051.5" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVtp" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5OOChIHwVtq" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVtr" role="3wpmZR">
                <property role="2Vclpx" value="9.929209172059615" />
                <property role="2Vclpz" value="-1017.0959722675733" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVts" role="3wpmZP">
                <property role="2Vclpx" value="617.5917826991147" />
                <property role="2Vclpz" value="996.6635413533589" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVtt" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5OOChIHwVtu" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVtv" role="3wpmZR">
                <property role="2Vclpx" value="-49.44962458894278" />
                <property role="2Vclpz" value="-794.6487284695573" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVtw" role="3wpmZP">
                <property role="2Vclpx" value="215.40836958945877" />
                <property role="2Vclpz" value="1032.6634476371796" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="7UH$k72cflD" role="2Vcluh">
            <property role="2Vclpx" value="626.000244140625" />
            <property role="2Vclpz" value="983.0" />
          </node>
          <node concept="2VclrF" id="7UH$k72cflE" role="2Vcluh">
            <property role="2Vclpx" value="626.000244140625" />
            <property role="2Vclpz" value="1051.5" />
          </node>
          <node concept="2VclrF" id="7t6qmPMygj8" role="2Vcluh">
            <property role="2Vclpx" value="207.0001983642578" />
            <property role="2Vclpz" value="1051.5" />
          </node>
          <node concept="2VclrF" id="7t6qmPMygj9" role="2Vcluh">
            <property role="2Vclpx" value="207.0001983642578" />
            <property role="2Vclpz" value="1019.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVty" role="37mRID">
        <property role="37mO49" value="_actionedgeof_FLASH_ALL" />
        <node concept="2VclpC" id="5OOChIHwVtx" role="37mO4d">
          <node concept="3ul5H1" id="5OOChIHwVtz" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="5OOChIHwVt$" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVt_" role="3wpmZR">
                <property role="2Vclpx" value="39.88011277640885" />
                <property role="2Vclpz" value="-148.9102763223549" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVtA" role="3wpmZP">
                <property role="2Vclpx" value="198.0" />
                <property role="2Vclpz" value="192.5" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVtB" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5OOChIHwVtC" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVtD" role="3wpmZR">
                <property role="2Vclpx" value="62.98861196734684" />
                <property role="2Vclpz" value="-164.84588782362528" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVtE" role="3wpmZP">
                <property role="2Vclpx" value="187.48528137423858" />
                <property role="2Vclpz" value="192.5" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVtF" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5OOChIHwVtG" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVtH" role="3wpmZR">
                <property role="2Vclpx" value="-98.5281828633014" />
                <property role="2Vclpz" value="-21.404031785292716" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVtI" role="3wpmZP">
                <property role="2Vclpx" value="208.51471862576142" />
                <property role="2Vclpz" value="192.5" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVtK" role="37mRID">
        <property role="37mO49" value="_actionedgeof_COUNT_UP" />
        <node concept="2VclpC" id="5OOChIHwVtJ" role="37mO4d">
          <node concept="3ul5H1" id="5OOChIHwVtL" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="5OOChIHwVtM" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVtN" role="3wpmZR">
                <property role="2Vclpx" value="-503.562865025871" />
                <property role="2Vclpz" value="-252.49993896484375" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVtO" role="3wpmZP">
                <property role="2Vclpx" value="734.5008544921875" />
                <property role="2Vclpz" value="644.9991761706914" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVtP" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5OOChIHwVtQ" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVtR" role="3wpmZR">
                <property role="2Vclpx" value="-521.6802481320644" />
                <property role="2Vclpz" value="-648.045608142832" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVtS" role="3wpmZP">
                <property role="2Vclpx" value="695.930867391832" />
                <property role="2Vclpz" value="661.9718423827059" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVtT" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5OOChIHwVtU" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVtV" role="3wpmZR">
                <property role="2Vclpx" value="-112.98050066087774" />
                <property role="2Vclpz" value="-274.74125640278766" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVtW" role="3wpmZP">
                <property role="2Vclpx" value="773.0692197622661" />
                <property role="2Vclpz" value="666.9716697505501" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="7t6qmPMCqt4" role="2Vcluh">
            <property role="2Vclpx" value="734.5008544921875" />
            <property role="2Vclpz" value="642.4999389648438" />
          </node>
          <node concept="2VclrF" id="7t6qmPMCqt5" role="2Vcluh">
            <property role="2Vclpx" value="734.5008544921875" />
            <property role="2Vclpz" value="647.4999389648438" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVtY" role="37mRID">
        <property role="37mO49" value="_actionedgeof_COUNT_DOWN" />
        <node concept="2VclpC" id="5OOChIHwVtX" role="37mO4d">
          <node concept="3ul5H1" id="5OOChIHwVtZ" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="5OOChIHwVu0" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVu1" role="3wpmZR">
                <property role="2Vclpx" value="-17.37454490303324" />
                <property role="2Vclpz" value="-300.73359989982237" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVu2" role="3wpmZP">
                <property role="2Vclpx" value="198.0" />
                <property role="2Vclpz" value="506.49993896484375" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVu3" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5OOChIHwVu4" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVu5" role="3wpmZR">
                <property role="2Vclpx" value="73.37411276767938" />
                <property role="2Vclpz" value="-480.88408492646" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVu6" role="3wpmZP">
                <property role="2Vclpx" value="187.48528137423858" />
                <property role="2Vclpz" value="506.49993896484375" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVu7" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5OOChIHwVu8" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVu9" role="3wpmZR">
                <property role="2Vclpx" value="-113.2745906312825" />
                <property role="2Vclpz" value="-110.67441984986715" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVua" role="3wpmZP">
                <property role="2Vclpx" value="208.51471862576142" />
                <property role="2Vclpz" value="506.49993896484375" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVuc" role="37mRID">
        <property role="37mO49" value="_actionedgeof_CHASE_UP" />
        <node concept="2VclpC" id="5OOChIHwVub" role="37mO4d">
          <node concept="3ul5H1" id="5OOChIHwVud" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="5OOChIHwVue" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVuf" role="3wpmZR">
                <property role="2Vclpx" value="-55.62810596121486" />
                <property role="2Vclpz" value="-556.6536164084046" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVug" role="3wpmZP">
                <property role="2Vclpx" value="198.0001983642578" />
                <property role="2Vclpz" value="867.7498319944258" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVuh" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5OOChIHwVui" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVuj" role="3wpmZR">
                <property role="2Vclpx" value="56.11486738888466" />
                <property role="2Vclpz" value="-791.0096374373676" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVuk" role="3wpmZP">
                <property role="2Vclpx" value="183.0399161700554" />
                <property role="2Vclpz" value="815.0585089962464" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVul" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5OOChIHwVum" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVun" role="3wpmZR">
                <property role="2Vclpx" value="-97.25920966016878" />
                <property role="2Vclpz" value="-415.7919656715268" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVuo" role="3wpmZP">
                <property role="2Vclpx" value="212.96016661483998" />
                <property role="2Vclpz" value="951.5584904305417" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="5OOChIHzJg2" role="2Vcluh">
            <property role="2Vclpx" value="198.0001983642578" />
            <property role="2Vclpz" value="799.4999389648438" />
          </node>
          <node concept="2VclrF" id="5OOChIHzJg3" role="2Vcluh">
            <property role="2Vclpx" value="198.0001983642578" />
            <property role="2Vclpz" value="936.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVuq" role="37mRID">
        <property role="37mO49" value="_actionedgeof_CHASE_DOWN" />
        <node concept="2VclpC" id="5OOChIHwVup" role="37mO4d">
          <node concept="3ul5H1" id="5OOChIHwVur" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="5OOChIHwVus" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVut" role="3wpmZR">
                <property role="2Vclpx" value="-74.37474326729105" />
                <property role="2Vclpz" value="-317.93769374174997" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVuu" role="3wpmZP">
                <property role="2Vclpx" value="198.0001983642578" />
                <property role="2Vclpz" value="681.2498319944258" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVuv" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5OOChIHwVuw" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVux" role="3wpmZR">
                <property role="2Vclpx" value="73.32939051323339" />
                <property role="2Vclpz" value="-644.0314739336003" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVuy" role="3wpmZP">
                <property role="2Vclpx" value="183.0399161700554" />
                <property role="2Vclpz" value="663.0585089962464" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVuz" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5OOChIHwVu$" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVu_" role="3wpmZR">
                <property role="2Vclpx" value="-118.27213955198698" />
                <property role="2Vclpz" value="-121.7278899460863" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVuA" role="3wpmZP">
                <property role="2Vclpx" value="212.96016661483998" />
                <property role="2Vclpz" value="730.5584904305417" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="5OOChIHAMFJ" role="2Vcluh">
            <property role="2Vclpx" value="198.0001983642578" />
            <property role="2Vclpz" value="647.4999389648438" />
          </node>
          <node concept="2VclrF" id="5OOChIHAMFK" role="2Vcluh">
            <property role="2Vclpx" value="198.0001983642578" />
            <property role="2Vclpz" value="715.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5OOChIHwVuC" role="37mRID">
        <property role="37mO49" value="_actionedgeof_START" />
        <node concept="2VclpC" id="5OOChIHwVuB" role="37mO4d">
          <node concept="3ul5H1" id="5OOChIHwVuD" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="5OOChIHwVuE" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVuF" role="3wpmZR">
                <property role="2Vclpx" value="133.00050069164737" />
                <property role="2Vclpz" value="-128.30939549777077" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVuG" role="3wpmZP">
                <property role="2Vclpx" value="223.0001983642578" />
                <property role="2Vclpz" value="199.2498854001875" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVuH" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5OOChIHwVuI" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVuJ" role="3wpmZR">
                <property role="2Vclpx" value="-6.504394065917168" />
                <property role="2Vclpz" value="-159.67093047995192" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVuK" role="3wpmZP">
                <property role="2Vclpx" value="208.0399161700554" />
                <property role="2Vclpz" value="183.55857003140264" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5OOChIHwVuL" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5OOChIHwVuM" role="3ul5Gz">
              <node concept="2VclrF" id="5OOChIHwVuN" role="3wpmZR">
                <property role="2Vclpx" value="-76.65820907801256" />
                <property role="2Vclpz" value="69.26844362287795" />
              </node>
              <node concept="2VclrF" id="5OOChIHwVuO" role="3wpmZP">
                <property role="2Vclpx" value="237.96016661483998" />
                <property role="2Vclpz" value="246.0585362069089" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="5OOChIHzJg4" role="2Vcluh">
            <property role="2Vclpx" value="223.0001983642578" />
            <property role="2Vclpz" value="168.0" />
          </node>
          <node concept="2VclrF" id="5OOChIHzJg5" role="2Vcluh">
            <property role="2Vclpx" value="223.0001983642578" />
            <property role="2Vclpz" value="230.5000457763672" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="7UH$k729nqx" role="37mRID">
        <property role="37mO49" value="9128111731366000286" />
        <node concept="gqqVs" id="7UH$k729nqw" role="37mO4d">
          <property role="gqqTZ" value="60.0" />
          <property role="gqqTW" value="-5.0" />
          <property role="gqqTX" value="70.0" />
          <property role="gqqTy" value="33.0" />
        </node>
      </node>
      <node concept="37mRIm" id="7t6qmPMALBN" role="37mRID">
        <property role="37mO49" value="8594672857678288741" />
        <node concept="gqqVs" id="7t6qmPMALBM" role="37mO4d">
          <property role="gqqTZ" value="0.0" />
          <property role="gqqTW" value="-33.0" />
          <property role="gqqTX" value="78.0" />
          <property role="gqqTy" value="23.0" />
        </node>
      </node>
      <node concept="37mRIm" id="7t6qmPMALBP" role="37mRID">
        <property role="37mO49" value="8594672857678288744" />
        <node concept="gqqVs" id="7t6qmPMALBO" role="37mO4d">
          <property role="gqqTZ" value="-4.0" />
          <property role="gqqTW" value="-54.0" />
          <property role="gqqTX" value="70.0" />
          <property role="gqqTy" value="33.0" />
        </node>
      </node>
      <node concept="37mRIm" id="7t6qmPMALBR" role="37mRID">
        <property role="37mO49" value="8594672857678288737" />
        <node concept="gqqVs" id="7t6qmPMALBQ" role="37mO4d">
          <property role="gqqTZ" value="-11.0" />
          <property role="gqqTW" value="47.0" />
          <property role="gqqTX" value="110.0" />
          <property role="gqqTy" value="33.0" />
        </node>
      </node>
      <node concept="37mRIm" id="7t6qmPMALBT" role="37mRID">
        <property role="37mO49" value="8594672857678288739" />
        <node concept="gqqVs" id="7t6qmPMALBS" role="37mO4d">
          <property role="gqqTZ" value="-26.0" />
          <property role="gqqTW" value="54.0" />
          <property role="gqqTX" value="102.0" />
          <property role="gqqTy" value="33.0" />
        </node>
      </node>
      <node concept="37mRIm" id="7t6qmPMALBV" role="37mRID">
        <property role="37mO49" value="8594672857678288738" />
        <node concept="gqqVs" id="7t6qmPMALBU" role="37mO4d">
          <property role="gqqTZ" value="0.0" />
          <property role="gqqTW" value="-70.0" />
          <property role="gqqTX" value="126.0" />
          <property role="gqqTy" value="60.0" />
        </node>
      </node>
      <node concept="37mRIm" id="7t6qmPMALBX" role="37mRID">
        <property role="37mO49" value="8594672857678288743" />
        <node concept="gqqVs" id="7t6qmPMALBW" role="37mO4d">
          <property role="gqqTZ" value="0.0" />
          <property role="gqqTW" value="-43.0" />
          <property role="gqqTX" value="102.0" />
          <property role="gqqTy" value="33.0" />
        </node>
      </node>
      <node concept="37mRIm" id="7t6qmPMALBZ" role="37mRID">
        <property role="37mO49" value="8594672857678288740" />
        <node concept="gqqVs" id="7t6qmPMALBY" role="37mO4d">
          <property role="gqqTZ" value="-12.0" />
          <property role="gqqTW" value="46.0" />
          <property role="gqqTX" value="118.0" />
          <property role="gqqTy" value="33.0" />
        </node>
      </node>
      <node concept="37mRIm" id="7t6qmPMALC1" role="37mRID">
        <property role="37mO49" value="8594672857678288742" />
        <node concept="gqqVs" id="7t6qmPMALC0" role="37mO4d">
          <property role="gqqTZ" value="0.0" />
          <property role="gqqTW" value="-33.0" />
          <property role="gqqTX" value="78.0" />
          <property role="gqqTy" value="23.0" />
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
          <property role="gqqTZ" value="408.00018310546875" />
          <property role="gqqTW" value="63.0" />
          <property role="gqqTX" value="150.0" />
          <property role="gqqTy" value="159.0" />
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
          <property role="gqqTZ" value="12.000100135803223" />
          <property role="gqqTW" value="185.4166208902995" />
          <property role="gqqTX" value="38.0" />
          <property role="gqqTy" value="23.0" />
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
                <property role="2Vclpx" value="-1396.0673615963763" />
                <property role="2Vclpz" value="-1681.8384525674185" />
              </node>
              <node concept="2VclrF" id="3nFX2lGZBMf" role="3wpmZP">
                <property role="2Vclpx" value="201.77027382038034" />
                <property role="2Vclpz" value="120.74999237060547" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGZBMg" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lGZBMh" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGZBMi" role="3wpmZR">
                <property role="2Vclpx" value="-4064.2271998176197" />
                <property role="2Vclpz" value="-2118.3819626541795" />
              </node>
              <node concept="2VclrF" id="3nFX2lGZBMj" role="3wpmZP">
                <property role="2Vclpx" value="61.28838906159611" />
                <property role="2Vclpz" value="213.83946684806497" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lGZBMk" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lGZBMl" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lGZBMm" role="3wpmZR">
                <property role="2Vclpx" value="392.16964163577126" />
                <property role="2Vclpz" value="-851.0307029789731" />
              </node>
              <node concept="2VclrF" id="3nFX2lGZBMn" role="3wpmZP">
                <property role="2Vclpx" value="388.8054077358804" />
                <property role="2Vclpz" value="109.5232718451507" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drkRui" role="2Vcluh">
            <property role="2Vclpx" value="82.33353424072266" />
            <property role="2Vclpz" value="196.9166717529297" />
          </node>
          <node concept="2VclrF" id="1Oxt8drkRuj" role="2Vcluh">
            <property role="2Vclpx" value="82.33353424072266" />
            <property role="2Vclpz" value="120.74999237060547" />
          </node>
          <node concept="2VclrF" id="6SHOz3ukad8" role="2Vcluh">
            <property role="2Vclpx" value="344.6001892089844" />
            <property role="2Vclpz" value="120.74999237060547" />
          </node>
          <node concept="2VclrF" id="6SHOz3ukad9" role="2Vcluh">
            <property role="2Vclpx" value="344.6001892089844" />
            <property role="2Vclpz" value="89.5" />
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
          <property role="gqqTZ" value="12.000100135803223" />
          <property role="gqqTW" value="90.24994659423828" />
          <property role="gqqTX" value="30.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH1Pid" role="37mRID">
        <property role="37mO49" value="3885467545117348961" />
        <node concept="gqqVs" id="3nFX2lH1Pic" role="37mO4d">
          <property role="gqqTZ" value="146.0001983642578" />
          <property role="gqqTW" value="152.75" />
          <property role="gqqTX" value="150.0" />
          <property role="gqqTy" value="159.0" />
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
            <property role="2Vclpx" value="331.3001708984375" />
            <property role="2Vclpz" value="101.75" />
          </node>
          <node concept="2VclrF" id="3nFX2lH1Qga" role="2Vcluh">
            <property role="2Vclpx" value="331.3001708984375" />
            <property role="2Vclpz" value="89.5" />
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Qgb" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH1Qgc" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Qgd" role="3wpmZR">
                <property role="2Vclpx" value="-121.71957065366246" />
                <property role="2Vclpz" value="102.31461928191926" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Qge" role="3wpmZP">
                <property role="2Vclpx" value="230.26391666146858" />
                <property role="2Vclpz" value="110.83033549376441" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Qgf" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1Qgg" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Qgh" role="3wpmZR">
                <property role="2Vclpx" value="-270.6594438368041" />
                <property role="2Vclpz" value="-949.6879093806613" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Qgi" role="3wpmZP">
                <property role="2Vclpx" value="56.42713467020967" />
                <property role="2Vclpz" value="126.45340380283724" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1Qgj" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1Qgk" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1Qgl" role="3wpmZR">
                <property role="2Vclpx" value="398.36886782010174" />
                <property role="2Vclpz" value="-725.7318876916936" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1Qgm" role="3wpmZP">
                <property role="2Vclpx" value="388.4050663728645" />
                <property role="2Vclpz" value="110.50038226283988" />
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
                <property role="2Vclpx" value="134.42664701709492" />
                <property role="2Vclpz" value="-570.8165910952218" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QCC" role="3wpmZP">
                <property role="2Vclpx" value="357.9001770019531" />
                <property role="2Vclpz" value="148.43675603465155" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1QCD" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH1QCE" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QCF" role="3wpmZR">
                <property role="2Vclpx" value="377.273600042381" />
                <property role="2Vclpz" value="-848.1026113147283" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QCG" role="3wpmZP">
                <property role="2Vclpx" value="315.13430790522085" />
                <property role="2Vclpz" value="199.14110950688698" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH1QCH" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH1QCI" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH1QCJ" role="3wpmZR">
                <property role="2Vclpx" value="415.34742332762227" />
                <property role="2Vclpz" value="-744.983526286389" />
              </node>
              <node concept="2VclrF" id="3nFX2lH1QCK" role="3wpmZP">
                <property role="2Vclpx" value="389.52210229107664" />
                <property role="2Vclpz" value="125.80997748739848" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="2JGKyjiFDhU" role="2Vcluh">
            <property role="2Vclpx" value="357.9001770019531" />
            <property role="2Vclpz" value="179.25" />
          </node>
          <node concept="2VclrF" id="2JGKyjiFDhV" role="2Vcluh">
            <property role="2Vclpx" value="357.9001770019531" />
            <property role="2Vclpz" value="107.16667175292969" />
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
                <property role="2Vclpx" value="135.12628585342844" />
                <property role="2Vclpz" value="-872.5473008901357" />
              </node>
              <node concept="2VclrF" id="3nFX2lH3zjF" role="3wpmZP">
                <property role="2Vclpx" value="371.2001953125" />
                <property role="2Vclpz" value="221.84984831274272" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH3zjG" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH3zjH" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH3zjI" role="3wpmZR">
                <property role="2Vclpx" value="365.9927726254916" />
                <property role="2Vclpz" value="-856.0502850945326" />
              </node>
              <node concept="2VclrF" id="3nFX2lH3zjJ" role="3wpmZP">
                <property role="2Vclpx" value="315.5599654075556" />
                <property role="2Vclpz" value="270.8219542879" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH3zjK" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH3zjL" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH3zjM" role="3wpmZR">
                <property role="2Vclpx" value="419.68320616388513" />
                <property role="2Vclpz" value="-759.1936711046565" />
              </node>
              <node concept="2VclrF" id="3nFX2lH3zjN" role="3wpmZP">
                <property role="2Vclpx" value="390.9314239173924" />
                <property role="2Vclpz" value="176.82290155150895" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="61urdBzeYo$" role="2Vcluh">
            <property role="2Vclpx" value="371.2001953125" />
            <property role="2Vclpz" value="249.91665649414062" />
          </node>
          <node concept="2VclrF" id="61urdBzeYo_" role="2Vcluh">
            <property role="2Vclpx" value="371.2001953125" />
            <property role="2Vclpz" value="160.16665649414062" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH4KVb" role="37mRID">
        <property role="37mO49" value="3885467545118117571" />
        <node concept="gqqVs" id="3nFX2lH4KVa" role="37mO4d">
          <property role="gqqTZ" value="662.0003051757812" />
          <property role="gqqTW" value="34.99994659423828" />
          <property role="gqqTX" value="30.0" />
          <property role="gqqTy" value="23.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3nFX2lH65oh" role="37mRID">
        <property role="37mO49" value="967875482185911054" />
        <node concept="gqqVs" id="3nFX2lH65og" role="37mO4d">
          <property role="gqqTZ" value="12.000100135803223" />
          <property role="gqqTW" value="350.24993896484375" />
          <property role="gqqTX" value="78.0" />
          <property role="gqqTy" value="23.0" />
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
          <property role="gqqTZ" value="614.0003051757812" />
          <property role="gqqTW" value="273.74993896484375" />
          <property role="gqqTX" value="78.0" />
          <property role="gqqTy" value="23.0" />
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
            <property role="2Vclpx" value="384.50018310546875" />
            <property role="2Vclpz" value="361.75" />
          </node>
          <node concept="2VclrF" id="3nFX2lH8aju" role="2Vcluh">
            <property role="2Vclpx" value="384.50018310546875" />
            <property role="2Vclpz" value="160.16665649414062" />
          </node>
          <node concept="3ul5H1" id="3nFX2lH8ajv" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3nFX2lH8ajw" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8ajx" role="3wpmZR">
                <property role="2Vclpx" value="106.17617758946412" />
                <property role="2Vclpz" value="-1242.164753374595" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8ajy" role="3wpmZP">
                <property role="2Vclpx" value="353.260968853669" />
                <property role="2Vclpz" value="364.5079594755495" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8ajz" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aj$" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aj_" role="3wpmZR">
                <property role="2Vclpx" value="-19.671185006123025" />
                <property role="2Vclpz" value="-741.7399367961135" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8ajA" role="3wpmZP">
                <property role="2Vclpx" value="104.42915813030547" />
                <property role="2Vclpz" value="386.4761192593093" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8ajB" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH8ajC" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8ajD" role="3wpmZR">
                <property role="2Vclpx" value="425.642018255773" />
                <property role="2Vclpz" value="-760.8753704375557" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8ajE" role="3wpmZP">
                <property role="2Vclpx" value="393.91194647159745" />
                <property role="2Vclpz" value="174.14985325189798" />
              </node>
            </node>
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
                <property role="2Vclpx" value="449.07894751896345" />
                <property role="2Vclpz" value="-647.0307951805935" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aur" role="3wpmZP">
                <property role="2Vclpx" value="589.0001831054688" />
                <property role="2Vclpz" value="240.37493654412256" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aus" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aut" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8auu" role="3wpmZR">
                <property role="2Vclpx" value="361.3687831183628" />
                <property role="2Vclpz" value="-865.6753627227602" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8auv" role="3wpmZP">
                <property role="2Vclpx" value="574.0400578833131" />
                <property role="2Vclpz" value="211.05853023104183" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8auw" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aux" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8auy" role="3wpmZR">
                <property role="2Vclpx" value="835.4981332351903" />
                <property role="2Vclpz" value="-237.5556735049425" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8auz" role="3wpmZP">
                <property role="2Vclpx" value="603.9601634307705" />
                <property role="2Vclpz" value="300.8084934921236" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="6SHOz3ukach" role="2Vcluh">
            <property role="2Vclpx" value="589.0001831054688" />
            <property role="2Vclpz" value="195.5" />
          </node>
          <node concept="2VclrF" id="6SHOz3ukaci" role="2Vcluh">
            <property role="2Vclpx" value="589.0001831054688" />
            <property role="2Vclpz" value="285.25" />
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
                <property role="2Vclpx" value="1415.9978296940515" />
                <property role="2Vclpz" value="-1341.981310765653" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aHa" role="3wpmZP">
                <property role="2Vclpx" value="408.6092109633712" />
                <property role="2Vclpz" value="53.34457722701711" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aHb" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aHc" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aHd" role="3wpmZR">
                <property role="2Vclpx" value="365.3587855375106" />
                <property role="2Vclpz" value="-892.0941447992949" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aHe" role="3wpmZP">
                <property role="2Vclpx" value="309.6152089511415" />
                <property role="2Vclpz" value="192.9278658401837" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aHf" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aHg" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aHh" role="3wpmZR">
                <property role="2Vclpx" value="3161.905106769048" />
                <property role="2Vclpz" value="-1078.6653349384376" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aHi" role="3wpmZP">
                <property role="2Vclpx" value="647.5559323658791" />
                <property role="2Vclpz" value="71.40807738255019" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drhHBx" role="2Vcluh">
            <property role="2Vclpx" value="318.06805419921875" />
            <property role="2Vclpz" value="179.25" />
          </node>
          <node concept="2VclrF" id="1Oxt8drhHBy" role="2Vcluh">
            <property role="2Vclpx" value="318.06805419921875" />
            <property role="2Vclpz" value="46.499996185302734" />
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
                <property role="2Vclpx" value="147.90254213883804" />
                <property role="2Vclpz" value="-1000.8296078344805" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aUz" role="3wpmZP">
                <property role="2Vclpx" value="115.00019836425781" />
                <property role="2Vclpz" value="305.83339332486315" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aU$" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aU_" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aUA" role="3wpmZR">
                <property role="2Vclpx" value="-111.8947781799236" />
                <property role="2Vclpz" value="-795.2581827601093" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aUB" role="3wpmZP">
                <property role="2Vclpx" value="100.03991617005539" />
                <property role="2Vclpz" value="377.30857003140267" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="3nFX2lH8aUC" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="3nFX2lH8aUD" role="3ul5Gz">
              <node concept="2VclrF" id="3nFX2lH8aUE" role="3wpmZR">
                <property role="2Vclpx" value="407.4409280348625" />
                <property role="2Vclpz" value="-894.2450349454741" />
              </node>
              <node concept="2VclrF" id="3nFX2lH8aUF" role="3wpmZP">
                <property role="2Vclpx" value="129.96032562746092" />
                <property role="2Vclpz" value="265.47519493516324" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="1Oxt8drhHBt" role="2Vcluh">
            <property role="2Vclpx" value="115.00019836425781" />
            <property role="2Vclpz" value="361.75" />
          </node>
          <node concept="2VclrF" id="1Oxt8drhHBu" role="2Vcluh">
            <property role="2Vclpx" value="115.00019836425781" />
            <property role="2Vclpz" value="249.91665649414062" />
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
                <property role="2Vclpx" value="-49.87988011086772" />
                <property role="2Vclpz" value="-1041.940521442511" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvv7u" role="3wpmZP">
                <property role="2Vclpx" value="101.33353424072266" />
                <property role="2Vclpz" value="131.40751387581693" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="22$VZ0Kvv7v" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="22$VZ0Kvv7w" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvv7x" role="3wpmZR">
                <property role="2Vclpx" value="-266.9549606989923" />
                <property role="2Vclpz" value="-995.1998069098493" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvv7y" role="3wpmZP">
                <property role="2Vclpx" value="55.26738039619681" />
                <property role="2Vclpz" value="121.93622378195761" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="22$VZ0Kvv7z" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="22$VZ0Kvv7$" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvv7_" role="3wpmZR">
                <property role="2Vclpx" value="403.4608432583776" />
                <property role="2Vclpz" value="-888.7153594203701" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvv7A" role="3wpmZP">
                <property role="2Vclpx" value="127.97969549739882" />
                <property role="2Vclpz" value="197.16724754067664" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="2JGKyjiFEaC" role="2Vcluh">
            <property role="2Vclpx" value="101.33353424072266" />
            <property role="2Vclpz" value="101.75" />
          </node>
          <node concept="2VclrF" id="2JGKyjiFEaD" role="2Vcluh">
            <property role="2Vclpx" value="101.33353424072266" />
            <property role="2Vclpz" value="179.25" />
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
                <property role="2Vclpx" value="577.428481924272" />
                <property role="2Vclpz" value="-1276.4937111880288" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvve5" role="3wpmZP">
                <property role="2Vclpx" value="458.0001014503289" />
                <property role="2Vclpz" value="285.2500136091913" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="22$VZ0Kvve6" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="22$VZ0Kvve7" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvve8" role="3wpmZR">
                <property role="2Vclpx" value="395.6665174312665" />
                <property role="2Vclpz" value="-832.0910519132735" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvve9" role="3wpmZP">
                <property role="2Vclpx" value="316.28839185903354" />
                <property role="2Vclpz" value="308.86863418460945" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="22$VZ0Kvvea" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="22$VZ0Kvveb" role="3ul5Gz">
              <node concept="2VclrF" id="22$VZ0Kvvec" role="3wpmZR">
                <property role="2Vclpx" value="738.6335749264932" />
                <property role="2Vclpz" value="-137.655963612312" />
              </node>
              <node concept="2VclrF" id="22$VZ0Kvved" role="3wpmZP">
                <property role="2Vclpx" value="599.7118069207181" />
                <property role="2Vclpz" value="308.86863169164815" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="6SHOz3ukad6" role="2Vcluh">
            <property role="2Vclpx" value="458.00018310546875" />
            <property role="2Vclpz" value="285.25" />
          </node>
          <node concept="2VclrF" id="6SHOz3ukad7" role="2Vcluh">
            <property role="2Vclpx" value="458.00018310546875" />
            <property role="2Vclpz" value="285.25" />
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
      <node concept="37mRIm" id="2JGKyjiFDtS" role="37mRID">
        <property role="37mO49" value="3165118101543884659" />
        <node concept="gqqVs" id="2JGKyjiFDtR" role="37mO4d">
          <property role="gqqTZ" value="198.0001983642578" />
          <property role="gqqTW" value="398.74993896484375" />
          <property role="gqqTX" value="150.0" />
          <property role="gqqTy" value="142.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2JGKyjiFE1n" role="37mRID">
        <property role="37mO49" value="3165118101543886930" />
        <node concept="gqqVs" id="2JGKyjiFE1m" role="37mO4d">
          <property role="gqqTZ" value="18.0" />
          <property role="gqqTW" value="12.0" />
          <property role="gqqTX" value="150.0" />
          <property role="gqqTy" value="142.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2JGKyjiFEdw" role="37mRID">
        <property role="37mO49" value="3165118101543887658" />
        <node concept="2VclpC" id="2JGKyjiFEdv" role="37mO4d">
          <node concept="3ul5H1" id="2JGKyjiFEdz" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2JGKyjiFEd$" role="3ul5Gz">
              <node concept="2VclrF" id="2JGKyjiFEd_" role="3wpmZR">
                <property role="2Vclpx" value="65.00712448349645" />
                <property role="2Vclpz" value="-71.48165573666346" />
              </node>
              <node concept="2VclrF" id="2JGKyjiFEdA" role="3wpmZP">
                <property role="2Vclpx" value="613.0001831054688" />
                <property role="2Vclpz" value="68.00007896563642" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2JGKyjiFEdB" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="2JGKyjiFEdC" role="3ul5Gz">
              <node concept="2VclrF" id="2JGKyjiFEdD" role="3wpmZR">
                <property role="2Vclpx" value="32.587347657389955" />
                <property role="2Vclpz" value="5.312959223554557" />
              </node>
              <node concept="2VclrF" id="2JGKyjiFEdE" role="3wpmZP">
                <property role="2Vclpx" value="576.7957422218929" />
                <property role="2Vclpz" value="108.71051965250965" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2JGKyjiFEdF" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="2JGKyjiFEdG" role="3ul5Gz">
              <node concept="2VclrF" id="2JGKyjiFEdH" role="3wpmZR">
                <property role="2Vclpx" value="93.43029286519936" />
                <property role="2Vclpz" value="-87.20352131583458" />
              </node>
              <node concept="2VclrF" id="2JGKyjiFEdI" role="3wpmZP">
                <property role="2Vclpx" value="649.2044513883229" />
                <property role="2Vclpz" value="65.71049604044133" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="6SHOz3uka0P" role="2Vcluh">
            <property role="2Vclpx" value="613.0001831054688" />
            <property role="2Vclpz" value="89.5" />
          </node>
          <node concept="2VclrF" id="6SHOz3uka0Q" role="2Vcluh">
            <property role="2Vclpx" value="613.0001831054688" />
            <property role="2Vclpz" value="46.499996185302734" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="2JGKyjj0i04" role="37mRID">
        <property role="37mO49" value="3165118101549293530" />
        <node concept="2VclpC" id="2JGKyjj0i03" role="37mO4d">
          <node concept="3ul5H1" id="2JGKyjj0i07" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2JGKyjj0i08" role="3ul5Gz">
              <node concept="2VclrF" id="2JGKyjj0i09" role="3wpmZR">
                <property role="2Vclpx" value="14.828699173220514" />
                <property role="2Vclpz" value="-98.5966887908236" />
              </node>
              <node concept="2VclrF" id="2JGKyjj0i0a" role="3wpmZP">
                <property role="2Vclpx" value="96.45051756097422" />
                <property role="2Vclpz" value="199.3898783137346" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2JGKyjj0i0b" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="2JGKyjj0i0c" role="3ul5Gz">
              <node concept="2VclrF" id="2JGKyjj0i0d" role="3wpmZR">
                <property role="2Vclpx" value="-8.530097009375865" />
                <property role="2Vclpz" value="-116.40429381322451" />
              </node>
              <node concept="2VclrF" id="2JGKyjj0i0e" role="3wpmZP">
                <property role="2Vclpx" value="62.922301555394505" />
                <property role="2Vclpz" value="216.3716355420053" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2JGKyjj0i0f" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="2JGKyjj0i0g" role="3ul5Gz">
              <node concept="2VclrF" id="2JGKyjj0i0h" role="3wpmZR">
                <property role="2Vclpx" value="27.829186971180775" />
                <property role="2Vclpz" value="-15.815129681400634" />
              </node>
              <node concept="2VclrF" id="2JGKyjj0i0i" role="3wpmZP">
                <property role="2Vclpx" value="127.97969476522738" />
                <property role="2Vclpz" value="214.83391529621372" />
              </node>
            </node>
          </node>
          <node concept="2VclrF" id="6SHOz3uka0R" role="2Vcluh">
            <property role="2Vclpx" value="101.33353424072266" />
            <property role="2Vclpz" value="196.9166717529297" />
          </node>
          <node concept="2VclrF" id="6SHOz3uka0S" role="2Vcluh">
            <property role="2Vclpx" value="101.33353424072266" />
            <property role="2Vclpz" value="196.9166717529297" />
          </node>
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
    <node concept="1N5Tqi" id="2JGKyjiFEcE" role="1N5PiQ">
      <node concept="1N5Tq0" id="2JGKyjiFEcF" role="1N5PkO">
        <ref role="1N5Pi4" node="PI_pXYw4Gy" resolve="FB1" />
        <ref role="1N5Pi3" node="3HBlKeoYV8p" resolve="CNF" />
      </node>
      <node concept="1N5Pk$" id="2JGKyjiFEcG" role="1N5PkH">
        <ref role="1N5Pi3" node="3nFX2lH4KV3" resolve="OUT" />
      </node>
    </node>
    <node concept="1N5Tqi" id="2JGKyjj0hZq" role="1N5PiQ">
      <node concept="1N5Tq0" id="2JGKyjj0hZr" role="1N5PkO">
        <ref role="1N5Pi3" node="PI_pXYw3K9" resolve="INIT" />
      </node>
      <node concept="1N5Pk$" id="2JGKyjj0hZs" role="1N5PkH">
        <ref role="1N5Pi4" node="3nFX2lH1Phx" resolve="FB2" />
        <ref role="1N5Pi3" node="3HBlKeoYV8j" resolve="REQ" />
      </node>
    </node>
  </node>
</model>

