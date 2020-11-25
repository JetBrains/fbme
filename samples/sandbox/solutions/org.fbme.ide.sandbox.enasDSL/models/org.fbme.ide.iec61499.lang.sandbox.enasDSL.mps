<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5163ebd0-8a64-4cdc-a356-0072f9a71ec3(org.fbme.ide.iec61499.lang.sandbox.enasDSL)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="078e33a9-a07c-4fc1-a94d-df8e6071f71e" name="org.fbme.ide.enas.lang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="078e33a9-a07c-4fc1-a94d-df8e6071f71e" name="org.fbme.ide.enas.lang">
      <concept id="7558503085825161366" name="org.fbme.ide.enas.lang.structure.StandartSection" flags="ng" index="3wE4Ck" />
      <concept id="7558503085825161364" name="org.fbme.ide.enas.lang.structure.EnasSystem" flags="ng" index="3wE4Cm">
        <child id="7558503085825161516" name="components" index="3wE4II" />
        <child id="7558503085825161520" name="points" index="3wE4IM" />
        <child id="7558503085825161525" name="receipts" index="3wE4IR" />
        <child id="7558503085825978331" name="configurations" index="3wJdPp" />
      </concept>
      <concept id="7558503085825161368" name="org.fbme.ide.enas.lang.structure.StaticPosition" flags="ng" index="3wE4Cq">
        <property id="7558503085825161383" name="rotation" index="3wE4C_" />
        <property id="7558503085825161385" name="x" index="3wE4CF" />
        <property id="7558503085825161388" name="y" index="3wE4CI" />
      </concept>
      <concept id="7558503085825161392" name="org.fbme.ide.enas.lang.structure.ConfigurableStand" flags="ng" index="3wE4CM">
        <child id="7558503085825161395" name="positions" index="3wE4CL" />
      </concept>
      <concept id="7558503085825161393" name="org.fbme.ide.enas.lang.structure.PositionDeclaration" flags="ng" index="3wE4CN">
        <child id="7558503085825161403" name="position" index="3wE4CT" />
      </concept>
      <concept id="7558503085825161405" name="org.fbme.ide.enas.lang.structure.StaticComponent" flags="ng" index="3wE4CZ">
        <child id="7558503085825161408" name="position" index="3wE4D2" />
      </concept>
      <concept id="7558503085825161410" name="org.fbme.ide.enas.lang.structure.JackStation" flags="ng" index="3wE4D0" />
      <concept id="7558503085825161650" name="org.fbme.ide.enas.lang.structure.SwitchInstruction" flags="ng" index="3wE4GK">
        <child id="7558503085825272985" name="condition" index="3wExSr" />
        <child id="7558503085825272886" name="cases" index="3wExUO" />
      </concept>
      <concept id="7558503085825161651" name="org.fbme.ide.enas.lang.structure.SwitchCase" flags="ng" index="3wE4GL">
        <child id="7558503085825161671" name="instructions" index="3wE4H5" />
        <child id="7558503085825161669" name="predicate" index="3wE4H7" />
      </concept>
      <concept id="7558503085825161654" name="org.fbme.ide.enas.lang.structure.CameraTestCondition" flags="ng" index="3wE4GO">
        <reference id="7558503085825617715" name="camera" index="3wGlQL" />
      </concept>
      <concept id="7558503085825161655" name="org.fbme.ide.enas.lang.structure.CameraOutputPredicate" flags="ng" index="3wE4GP">
        <property id="7558503085825161665" name="cameraOutput" index="3wE4H3" />
      </concept>
      <concept id="7558503085825161674" name="org.fbme.ide.enas.lang.structure.OtherwisePredicate" flags="ng" index="3wE4H8" />
      <concept id="7558503085825161486" name="org.fbme.ide.enas.lang.structure.Camera" flags="ng" index="3wE4Ic" />
      <concept id="7558503085825161485" name="org.fbme.ide.enas.lang.structure.SectionGate" flags="ng" index="3wE4If">
        <property id="7558503085825844277" name="side" index="3wGHqR" />
        <reference id="7558503085825844267" name="section" index="3wGHqD" />
      </concept>
      <concept id="7558503085825161511" name="org.fbme.ide.enas.lang.structure.PositionOnStand" flags="ng" index="3wE4I_">
        <property id="7558503085825161514" name="relativeRotation" index="3wE4IC" />
        <reference id="7558503085825161512" name="stand" index="3wE4IE" />
      </concept>
      <concept id="7558503085825161524" name="org.fbme.ide.enas.lang.structure.SectionDeliveryPoint" flags="ng" index="3wE4IQ">
        <reference id="7558503085825172372" name="section" index="3wE94m" />
      </concept>
      <concept id="7558503085825161529" name="org.fbme.ide.enas.lang.structure.Receipt" flags="ng" index="3wE4IV">
        <reference id="7558503085825516959" name="startingPoint" index="3wHXst" />
        <reference id="7558503085826098814" name="startingConfiguration" index="3wJJjW" />
        <child id="7558503085825161532" name="parts" index="3wE4IY" />
      </concept>
      <concept id="7558503085825161535" name="org.fbme.ide.enas.lang.structure.MoveToPoint" flags="ng" index="3wE4IX">
        <reference id="7558503085825172432" name="point" index="3wE95i" />
      </concept>
      <concept id="7558503085825161536" name="org.fbme.ide.enas.lang.structure.TriggerJack" flags="ng" index="3wE4J2">
        <property id="7558503085825161548" name="action" index="3wE4Je" />
        <reference id="7558503085825161550" name="jackStation" index="3wE4Jc" />
      </concept>
      <concept id="7558503085825172364" name="org.fbme.ide.enas.lang.structure.PointDeclaration" flags="ng" index="3wE94e">
        <child id="7558503085825172367" name="decsriptor" index="3wE94d" />
      </concept>
      <concept id="7558503085825228985" name="org.fbme.ide.enas.lang.structure.SRSection" flags="ng" index="3wEV8V" />
      <concept id="7558503085825844153" name="org.fbme.ide.enas.lang.structure.ConfigurationDeclaration" flags="ng" index="3wGH4V">
        <child id="7558503085825844158" name="specs" index="3wGH4W" />
      </concept>
      <concept id="7558503085825844156" name="org.fbme.ide.enas.lang.structure.StandPositionSpecification" flags="ng" index="3wGH4Y">
        <reference id="7558503085825844162" name="position" index="3wGH50" />
        <reference id="7558503085825844160" name="stand" index="3wGH52" />
      </concept>
      <concept id="7558503085825844257" name="org.fbme.ide.enas.lang.structure.GateStateSpecification" flags="ng" index="3wGHqz">
        <property id="7558503085825844263" name="state" index="3wGHq_" />
        <reference id="7558503085825844265" name="gate" index="3wGHqF" />
      </concept>
      <concept id="7558503085825724034" name="org.fbme.ide.enas.lang.structure.LoopInstruction" flags="ng" index="3wGNK0">
        <child id="7558503085825724035" name="instructions" index="3wGNK1" />
      </concept>
      <concept id="7558503085825781918" name="org.fbme.ide.enas.lang.structure.DoneInstruction" flags="ng" index="3wGW8s" />
      <concept id="7558503085825366513" name="org.fbme.ide.enas.lang.structure.SRSectionStartPoint" flags="ng" index="3wHqHN">
        <reference id="7558503085825366514" name="section" index="3wHqHK" />
      </concept>
      <concept id="7558503085826098727" name="org.fbme.ide.enas.lang.structure.SetConfiguraitonInstruction" flags="ng" index="3wJJi_">
        <reference id="7558503085826098728" name="configuration" index="3wJJiE" />
      </concept>
    </language>
  </registry>
  <node concept="3wE4Cm" id="6z_cCa8j$h3">
    <property role="TrG5h" value="EnAS Sample" />
    <node concept="3wGH4V" id="6z_cCa8mSZC" role="3wJdPp">
      <property role="TrG5h" value="Feed" />
      <node concept="3wGH4Y" id="6z_cCa8mSZE" role="3wGH4W">
        <ref role="3wGH52" node="6z_cCa8jC1v" resolve="SR Stand" />
        <ref role="3wGH50" node="6z_cCa8jC1x" resolve="TOP" />
      </node>
      <node concept="3wGHqz" id="6z_cCa8mUGS" role="3wGH4W">
        <ref role="3wGHqF" node="6z_cCa8jC0E" resolve="SGate2" />
      </node>
      <node concept="3wGHqz" id="6z_cCa8mWou" role="3wGH4W">
        <ref role="3wGHqF" node="6z_cCa8jAIL" resolve="SGate5" />
      </node>
    </node>
    <node concept="3wGH4V" id="6z_cCa8mWoh" role="3wJdPp">
      <property role="TrG5h" value="Collect" />
      <node concept="3wGH4Y" id="6z_cCa8mWoi" role="3wGH4W">
        <ref role="3wGH52" node="6z_cCa8jC1v" resolve="SR Stand" />
        <ref role="3wGH50" node="6z_cCa8jC1x" resolve="TOP" />
      </node>
      <node concept="3wGHqz" id="6z_cCa8mWoj" role="3wGH4W">
        <ref role="3wGHqF" node="6z_cCa8jC0E" resolve="SGate2" />
      </node>
      <node concept="3wGHqz" id="6z_cCa8mWoz" role="3wGH4W">
        <property role="3wGHq_" value="6z_cCa8lYgz/Opened" />
        <ref role="3wGHqF" node="6z_cCa8jAIL" resolve="SGate5" />
      </node>
    </node>
    <node concept="3wE94e" id="6z_cCa8jAFV" role="3wE4IM">
      <property role="TrG5h" value="W1" />
      <node concept="3wHqHN" id="6z_cCa8kxK4" role="3wE94d">
        <ref role="3wHqHK" node="6z_cCa8k9Bd" resolve="SRSection" />
      </node>
    </node>
    <node concept="3wE94e" id="6z_cCa8kxK6" role="3wE4IM">
      <property role="TrG5h" value="W2" />
      <node concept="3wE4IQ" id="6z_cCa8kxKc" role="3wE94d">
        <ref role="3wE94m" node="6z_cCa8jAGf" resolve="Section3" />
      </node>
    </node>
    <node concept="3wE94e" id="6z_cCa8kxKf" role="3wE4IM">
      <property role="TrG5h" value="W3" />
      <node concept="3wE4IQ" id="6z_cCa8kxKn" role="3wE94d">
        <ref role="3wE94m" node="6z_cCa8jAGF" resolve="Section5" />
      </node>
    </node>
    <node concept="3wE94e" id="6z_cCa8kxKq" role="3wE4IM">
      <property role="TrG5h" value="W4" />
      <node concept="3wE4IQ" id="6z_cCa8kxK$" role="3wE94d">
        <ref role="3wE94m" node="6z_cCa8jAHd" resolve="Section6" />
      </node>
    </node>
    <node concept="3wE4IV" id="6z_cCa8jAFT" role="3wE4IR">
      <property role="TrG5h" value="ProduceGreen" />
      <ref role="3wHXst" node="6z_cCa8jAFV" resolve="W1" />
      <ref role="3wJJjW" node="6z_cCa8mSZC" resolve="Feed" />
      <node concept="3wGNK0" id="6z_cCa8lWRo" role="3wE4IY">
        <node concept="3wE4IX" id="6z_cCa8kVeU" role="3wGNK1">
          <ref role="3wE95i" node="6z_cCa8kxK6" resolve="W2" />
        </node>
        <node concept="3wE4J2" id="6z_cCa8l6VS" role="3wGNK1">
          <property role="3wE4Je" value="6z_cCa8jn_8/PlaceGreen" />
          <ref role="3wE4Jc" node="6z_cCa8jAHD" resolve="Jack1" />
        </node>
        <node concept="3wE4IX" id="6z_cCa8l6W0" role="3wGNK1">
          <ref role="3wE95i" node="6z_cCa8kxKf" resolve="W3" />
        </node>
        <node concept="3wE4GK" id="6z_cCa8l6Wa" role="3wGNK1">
          <node concept="3wE4GO" id="6z_cCa8l6Wj" role="3wExSr">
            <ref role="3wGlQL" node="6z_cCa8jAMd" resolve="Camera" />
          </node>
          <node concept="3wE4GL" id="6z_cCa8lkxo" role="3wExUO">
            <node concept="3wJJi_" id="6z_cCa8nhcA" role="3wE4H5">
              <ref role="3wJJiE" node="6z_cCa8mWoh" resolve="Collect" />
            </node>
            <node concept="3wE4GP" id="6z_cCa8lkxu" role="3wE4H7">
              <property role="3wE4H3" value="6z_cCa8jnAU/GREEN" />
            </node>
            <node concept="3wE4IX" id="6z_cCa8lWSe" role="3wE4H5">
              <ref role="3wE95i" node="6z_cCa8jAFV" resolve="W1" />
            </node>
            <node concept="3wGW8s" id="6z_cCa8lYdS" role="3wE4H5" />
          </node>
          <node concept="3wE4GL" id="6z_cCa8lkxI" role="3wExUO">
            <node concept="3wE4H8" id="6z_cCa8lkxS" role="3wE4H7" />
            <node concept="3wE4IX" id="6z_cCa8lYdW" role="3wE4H5">
              <ref role="3wE95i" node="6z_cCa8kxKq" resolve="W4" />
            </node>
            <node concept="3wE4J2" id="6z_cCa8lYe2" role="3wE4H5">
              <property role="3wE4Je" value="6z_cCa8jn_4/RemoveWP" />
              <ref role="3wE4Jc" node="6z_cCa8jAIb" resolve="Jack2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3wE4IV" id="6z_cCa8lYe6" role="3wE4IR">
      <property role="TrG5h" value="ProduceRed" />
      <ref role="3wHXst" node="6z_cCa8jAFV" resolve="W1" />
      <ref role="3wJJjW" node="6z_cCa8mSZC" resolve="Feed" />
      <node concept="3wGNK0" id="6z_cCa8lYe7" role="3wE4IY">
        <node concept="3wE4IX" id="6z_cCa8lYe8" role="3wGNK1">
          <ref role="3wE95i" node="6z_cCa8kxK6" resolve="W2" />
        </node>
        <node concept="3wE4J2" id="6z_cCa8lYe9" role="3wGNK1">
          <property role="3wE4Je" value="6z_cCa8jn_5/PlaceRed" />
          <ref role="3wE4Jc" node="6z_cCa8jAHD" resolve="Jack1" />
        </node>
        <node concept="3wE4IX" id="6z_cCa8lYea" role="3wGNK1">
          <ref role="3wE95i" node="6z_cCa8kxKf" resolve="W3" />
        </node>
        <node concept="3wE4GK" id="6z_cCa8lYeb" role="3wGNK1">
          <node concept="3wE4GO" id="6z_cCa8lYec" role="3wExSr">
            <ref role="3wGlQL" node="6z_cCa8jAMd" resolve="Camera" />
          </node>
          <node concept="3wE4GL" id="6z_cCa8lYed" role="3wExUO">
            <node concept="3wJJi_" id="6z_cCa8nhcJ" role="3wE4H5">
              <ref role="3wJJiE" node="6z_cCa8mWoh" resolve="Collect" />
            </node>
            <node concept="3wE4GP" id="6z_cCa8lYee" role="3wE4H7">
              <property role="3wE4H3" value="6z_cCa8jnAT/RED" />
            </node>
            <node concept="3wE4IX" id="6z_cCa8lYef" role="3wE4H5">
              <ref role="3wE95i" node="6z_cCa8jAFV" resolve="W1" />
            </node>
            <node concept="3wGW8s" id="6z_cCa8lYeg" role="3wE4H5" />
          </node>
          <node concept="3wE4GL" id="6z_cCa8lYeh" role="3wExUO">
            <node concept="3wE4H8" id="6z_cCa8lYei" role="3wE4H7" />
            <node concept="3wE4IX" id="6z_cCa8lYej" role="3wE4H5">
              <ref role="3wE95i" node="6z_cCa8kxKq" resolve="W4" />
            </node>
            <node concept="3wE4J2" id="6z_cCa8lYek" role="3wE4H5">
              <property role="3wE4Je" value="6z_cCa8jn_4/RemoveWP" />
              <ref role="3wE4Jc" node="6z_cCa8jAIb" resolve="Jack2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3wE4Ck" id="6z_cCa8jAFZ" role="3wE4II">
      <property role="TrG5h" value="Section1" />
      <node concept="3wE4Cq" id="6z_cCa8jAJr" role="3wE4D2">
        <property role="3wE4CF" value="0" />
        <property role="3wE4CI" value="5" />
        <property role="3wE4C_" value="6z_cCa8jnyr/Degree90" />
      </node>
    </node>
    <node concept="3wE4Ck" id="6z_cCa8jAG7" role="3wE4II">
      <property role="TrG5h" value="Section2" />
      <node concept="3wE4Cq" id="6z_cCa8jAK6" role="3wE4D2">
        <property role="3wE4CF" value="0" />
        <property role="3wE4CI" value="14" />
        <property role="3wE4C_" value="6z_cCa8jnyr/Degree90" />
      </node>
    </node>
    <node concept="3wE4Ck" id="6z_cCa8jAGf" role="3wE4II">
      <property role="TrG5h" value="Section3" />
      <node concept="3wE4Cq" id="6z_cCa8jAK9" role="3wE4D2">
        <property role="3wE4CF" value="1" />
        <property role="3wE4CI" value="22" />
        <property role="3wE4C_" value="6z_cCa8jnyu/Degree180" />
      </node>
    </node>
    <node concept="3wE4Ck" id="6z_cCa8jAGn" role="3wE4II">
      <property role="TrG5h" value="Section4" />
      <node concept="3wE4Cq" id="6z_cCa8jAM4" role="3wE4D2">
        <property role="3wE4C_" value="6z_cCa8jnyy/Degree270" />
        <property role="3wE4CF" value="10" />
        <property role="3wE4CI" value="22" />
      </node>
    </node>
    <node concept="3wE4Ck" id="6z_cCa8jAGF" role="3wE4II">
      <property role="TrG5h" value="Section5" />
      <node concept="3wE4Cq" id="6z_cCa8jAM7" role="3wE4D2">
        <property role="3wE4CF" value="10" />
        <property role="3wE4CI" value="13" />
        <property role="3wE4C_" value="6z_cCa8jnyy/Degree270" />
      </node>
    </node>
    <node concept="3wE4Ck" id="6z_cCa8jAHd" role="3wE4II">
      <property role="TrG5h" value="Section6" />
      <node concept="3wE4Cq" id="6z_cCa8jAMa" role="3wE4D2">
        <property role="3wE4CF" value="9" />
        <property role="3wE4CI" value="5" />
      </node>
    </node>
    <node concept="3wE4D0" id="6z_cCa8jAHD" role="3wE4II">
      <property role="TrG5h" value="Jack1" />
      <node concept="3wE4Cq" id="6z_cCa8jAM_" role="3wE4D2">
        <property role="3wE4CF" value="4" />
        <property role="3wE4CI" value="6" />
        <property role="3wE4C_" value="6z_cCa8jnyy/Degree270" />
      </node>
    </node>
    <node concept="3wE4D0" id="6z_cCa8jAIb" role="3wE4II">
      <property role="TrG5h" value="Jack2" />
      <node concept="3wE4Cq" id="6z_cCa8jAMC" role="3wE4D2">
        <property role="3wE4CF" value="4" />
        <property role="3wE4CI" value="21" />
        <property role="3wE4C_" value="6z_cCa8jnyr/Degree90" />
      </node>
    </node>
    <node concept="3wE4If" id="6z_cCa8jAIL" role="3wE4II">
      <property role="TrG5h" value="SGate5" />
      <property role="3wGHqR" value="6z_cCa8lYgI/onLeftSide" />
      <ref role="3wGHqD" node="6z_cCa8jAGF" resolve="Section5" />
    </node>
    <node concept="3wE4If" id="6z_cCa8jC0E" role="3wE4II">
      <property role="TrG5h" value="SGate2" />
      <property role="3wGHqR" value="6z_cCa8lYgI/onLeftSide" />
      <ref role="3wGHqD" node="6z_cCa8jAG7" resolve="Section2" />
    </node>
    <node concept="3wE4Ic" id="6z_cCa8jAMd" role="3wE4II">
      <property role="TrG5h" value="Camera" />
      <node concept="3wE4Cq" id="6z_cCa8lYeN" role="3wE4D2">
        <property role="3wE4CF" value="9" />
        <property role="3wE4CI" value="9" />
        <property role="3wE4C_" value="6z_cCa8jnyu/Degree180" />
      </node>
    </node>
    <node concept="3wE4CM" id="6z_cCa8jC1v" role="3wE4II">
      <property role="TrG5h" value="SR Stand" />
      <node concept="3wE4CN" id="6z_cCa8jC1x" role="3wE4CL">
        <property role="TrG5h" value="TOP" />
        <node concept="3wE4Cq" id="6z_cCa8jC1z" role="3wE4CT">
          <property role="3wE4CF" value="0" />
          <property role="3wE4CI" value="0" />
        </node>
      </node>
      <node concept="3wE4CN" id="6z_cCa8k9AE" role="3wE4CL">
        <property role="TrG5h" value="BOTTOM" />
        <node concept="3wE4Cq" id="6z_cCa8k9AF" role="3wE4CT">
          <property role="3wE4CF" value="10" />
          <property role="3wE4CI" value="0" />
        </node>
      </node>
    </node>
    <node concept="3wEV8V" id="6z_cCa8k9Bd" role="3wE4II">
      <property role="TrG5h" value="SRSection" />
      <node concept="3wE4I_" id="6z_cCa8lYeQ" role="3wE4D2">
        <property role="3wE4IC" value="6z_cCa8jnyr/Degree90" />
        <ref role="3wE4IE" node="6z_cCa8jC1v" resolve="SR Stand" />
      </node>
    </node>
  </node>
</model>

