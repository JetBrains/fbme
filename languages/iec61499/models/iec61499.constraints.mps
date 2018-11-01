<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a4fe33ac-e966-4c3c-bbd8-837296363b92(iec61499.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(iec61499.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1222260469397" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpOperation" flags="nn" index="2kpEY9" />
      <concept id="1174482808826" name="jetbrains.mps.baseLanguage.regexp.structure.StarRegexp" flags="ng" index="1OCmVF" />
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554211468" name="jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp" flags="ng" index="1SSJmt" />
      <concept id="1174557878319" name="jetbrains.mps.baseLanguage.regexp.structure.CharacterSymbolClassPart" flags="ng" index="1T6I$Y">
        <property id="1174557887320" name="character" index="1T6KD9" />
      </concept>
      <concept id="1174558301835" name="jetbrains.mps.baseLanguage.regexp.structure.IntervalSymbolClassPart" flags="ng" index="1T8lYq">
        <property id="1174558315290" name="start" index="1T8p8b" />
        <property id="1174558317822" name="end" index="1T8pRJ" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ng" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="3HBlKeoZ0X$">
    <property role="3GE5qa" value="expressions" />
    <ref role="1M2myG" to="xiqq:3HBlKeoZ0X9" resolve="Expression" />
  </node>
  <node concept="1M2fIO" id="PI_pXYaX1G">
    <property role="3GE5qa" value="basic" />
    <ref role="1M2myG" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
    <node concept="EnEH3" id="PI_pXYaX1L" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="PI_pXYaX1N" role="QCWH9">
        <node concept="3clFbS" id="PI_pXYaX1O" role="2VODD2">
          <node concept="3clFbF" id="PI_pXYaXFH" role="3cqZAp">
            <node concept="22lmx$" id="PI_pXYaZU4" role="3clFbG">
              <node concept="2OqwBi" id="PI_pXYb0ui" role="3uHU7w">
                <node concept="1Wqviy" id="PI_pXYb01P" role="2Oq$k0" />
                <node concept="2kpEY9" id="PI_pXYb1sN" role="2OqNvi">
                  <node concept="1Qi9sc" id="PI_pXYb1sP" role="1YN4dH">
                    <node concept="1OCmVF" id="PI_pXYb6ry" role="1QigWp">
                      <node concept="1SSJmt" id="PI_pXYb1C3" role="1OLDsb">
                        <node concept="1T8lYq" id="PI_pXYb1Ym" role="1T5LoC">
                          <property role="1T8p8b" value="0" />
                          <property role="1T8pRJ" value="9" />
                        </node>
                        <node concept="1T8lYq" id="PI_pXYb59P" role="1T5LoC">
                          <property role="1T8p8b" value="a" />
                          <property role="1T8pRJ" value="z" />
                        </node>
                        <node concept="1T8lYq" id="PI_pXYb5sO" role="1T5LoC">
                          <property role="1T8p8b" value="A" />
                          <property role="1T8pRJ" value="Z" />
                        </node>
                        <node concept="1T6I$Y" id="PI_pXYb8cW" role="1T5LoC">
                          <property role="1T6KD9" value="_" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="PI_pXYaY7R" role="3uHU7B">
                <node concept="1Wqviy" id="PI_pXYaXFG" role="2Oq$k0" />
                <node concept="17RlXB" id="PI_pXYaYEu" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="PI_pXYw3K_">
    <property role="3GE5qa" value="interface" />
    <ref role="1M2myG" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="EnEH3" id="PI_pXYw3S8" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="PI_pXYw3Sb" role="QCWH9">
        <node concept="3clFbS" id="PI_pXYw3Sc" role="2VODD2">
          <node concept="3clFbF" id="PI_pXYw3Zm" role="3cqZAp">
            <node concept="22lmx$" id="PI_pXYw3Zn" role="3clFbG">
              <node concept="2OqwBi" id="PI_pXYw3Zo" role="3uHU7w">
                <node concept="1Wqviy" id="PI_pXYw3Zp" role="2Oq$k0" />
                <node concept="2kpEY9" id="PI_pXYw3Zq" role="2OqNvi">
                  <node concept="1Qi9sc" id="PI_pXYw3Zr" role="1YN4dH">
                    <node concept="1OCmVF" id="PI_pXYw3Zs" role="1QigWp">
                      <node concept="1SSJmt" id="PI_pXYw3Zt" role="1OLDsb">
                        <node concept="1T8lYq" id="PI_pXYw3Zu" role="1T5LoC">
                          <property role="1T8p8b" value="0" />
                          <property role="1T8pRJ" value="9" />
                        </node>
                        <node concept="1T8lYq" id="PI_pXYw3Zv" role="1T5LoC">
                          <property role="1T8p8b" value="a" />
                          <property role="1T8pRJ" value="z" />
                        </node>
                        <node concept="1T8lYq" id="PI_pXYw3Zw" role="1T5LoC">
                          <property role="1T8p8b" value="A" />
                          <property role="1T8pRJ" value="Z" />
                        </node>
                        <node concept="1T6I$Y" id="PI_pXYw3Zx" role="1T5LoC">
                          <property role="1T6KD9" value="_" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="PI_pXYw3Zy" role="3uHU7B">
                <node concept="1Wqviy" id="PI_pXYw3Zz" role="2Oq$k0" />
                <node concept="17RlXB" id="PI_pXYw3Z$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="PI_pXYA12v">
    <property role="3GE5qa" value="composite.events" />
    <ref role="1M2myG" to="xiqq:PI_pXYus4l" resolve="EventInstance" />
    <node concept="1N5Pfh" id="PI_pXYA12A" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus4r" resolve="container" />
      <node concept="3dgokm" id="PI_pXYA12D" role="1N6uqs">
        <node concept="3clFbS" id="PI_pXYA12E" role="2VODD2">
          <node concept="3clFbF" id="PI_pXYA1fL" role="3cqZAp">
            <node concept="2YIFZM" id="PI_pXYA1iS" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="PI_pXYA7qt" role="37wK5m">
                <node concept="2OqwBi" id="PI_pXYA7qu" role="2Oq$k0">
                  <node concept="2rP1CM" id="PI_pXYA7qv" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="PI_pXYA7qw" role="2OqNvi">
                    <node concept="1xMEDy" id="PI_pXYA7qx" role="1xVPHs">
                      <node concept="chp4Y" id="PI_pXYA7qy" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFunctionBlockDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="PI_pXYA7qz" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="components" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="PI_pXYA7$n" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus4s" resolve="declaration" />
      <node concept="3dgokm" id="PI_pXYA7$V" role="1N6uqs">
        <node concept="3clFbS" id="PI_pXYA7$X" role="2VODD2">
          <node concept="3clFbJ" id="PI_pXYA7BS" role="3cqZAp">
            <node concept="2OqwBi" id="PI_pXYA8ih" role="3clFbw">
              <node concept="2OqwBi" id="PI_pXYA7P1" role="2Oq$k0">
                <node concept="3kakTB" id="PI_pXYA7EW" role="2Oq$k0" />
                <node concept="3TrEf2" id="PI_pXYA7Yd" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="container" />
                </node>
              </node>
              <node concept="3x8VRR" id="PI_pXYA8CU" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="PI_pXYA7BU" role="3clFbx">
              <node concept="3cpWs6" id="PI_pXYA8JJ" role="3cqZAp">
                <node concept="2YIFZM" id="PI_pXYA8Ra" role="3cqZAk">
                  <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2OqwBi" id="PI_pXYA8Rb" role="37wK5m">
                    <node concept="3Tsc0h" id="PI_pXYAaUZ" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                    </node>
                    <node concept="2OqwBi" id="PI_pXYAalM" role="2Oq$k0">
                      <node concept="2OqwBi" id="PI_pXYA9K6" role="2Oq$k0">
                        <node concept="3kakTB" id="PI_pXYA9pv" role="2Oq$k0" />
                        <node concept="3TrEf2" id="PI_pXYAa52" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="container" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="PI_pXYAaBQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="PI_pXYAcsJ" role="9aQIa">
              <node concept="3clFbS" id="PI_pXYAcsK" role="9aQI4">
                <node concept="3cpWs6" id="PI_pXYAcBc" role="3cqZAp">
                  <node concept="2YIFZM" id="PI_pXYAcWD" role="3cqZAk">
                    <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                    <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <node concept="2OqwBi" id="PI_pXYAcWE" role="37wK5m">
                      <node concept="2OqwBi" id="PI_pXYAcWF" role="2Oq$k0">
                        <node concept="2rP1CM" id="PI_pXYAcWG" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="PI_pXYAcWH" role="2OqNvi">
                          <node concept="1xMEDy" id="PI_pXYAcWI" role="1xVPHs">
                            <node concept="chp4Y" id="PI_pXYAcWJ" role="ri$Ld">
                              <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFunctionBlockDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="PI_pXYAdkj" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
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
  <node concept="1M2fIO" id="PI_pXYAdzr">
    <property role="3GE5qa" value="composite.events" />
    <ref role="1M2myG" to="xiqq:PI_pXYugcv" resolve="SourceEventInstance" />
    <node concept="1N5Pfh" id="PI_pXYAdz_" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus4s" resolve="declaration" />
      <node concept="3dgokm" id="PI_pXYAdzF" role="1N6uqs">
        <node concept="3clFbS" id="PI_pXYAdzH" role="2VODD2">
          <node concept="3clFbJ" id="PI_pXYAdAC" role="3cqZAp">
            <node concept="2OqwBi" id="PI_pXYAdAD" role="3clFbw">
              <node concept="2OqwBi" id="PI_pXYAdAE" role="2Oq$k0">
                <node concept="3kakTB" id="PI_pXYAdAF" role="2Oq$k0" />
                <node concept="3TrEf2" id="PI_pXYAdAG" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="container" />
                </node>
              </node>
              <node concept="3x8VRR" id="PI_pXYAdAH" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="PI_pXYAdAI" role="3clFbx">
              <node concept="3cpWs6" id="PI_pXYAdAJ" role="3cqZAp">
                <node concept="2YIFZM" id="PI_pXYAdAK" role="3cqZAk">
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                  <node concept="2OqwBi" id="PI_pXYAdAL" role="37wK5m">
                    <node concept="3Tsc0h" id="3nFX2lGY_2o" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                    </node>
                    <node concept="2OqwBi" id="PI_pXYAdAN" role="2Oq$k0">
                      <node concept="2OqwBi" id="PI_pXYAdAO" role="2Oq$k0">
                        <node concept="3kakTB" id="PI_pXYAdAP" role="2Oq$k0" />
                        <node concept="3TrEf2" id="PI_pXYAdAQ" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="container" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="PI_pXYAdAR" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="PI_pXYAdAS" role="9aQIa">
              <node concept="3clFbS" id="PI_pXYAdAT" role="9aQI4">
                <node concept="3cpWs6" id="PI_pXYAdAU" role="3cqZAp">
                  <node concept="2YIFZM" id="PI_pXYAdAV" role="3cqZAk">
                    <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                    <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <node concept="2OqwBi" id="PI_pXYAdAW" role="37wK5m">
                      <node concept="2OqwBi" id="PI_pXYAdAX" role="2Oq$k0">
                        <node concept="2rP1CM" id="PI_pXYAdAY" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="PI_pXYAdAZ" role="2OqNvi">
                          <node concept="1xMEDy" id="PI_pXYAdB0" role="1xVPHs">
                            <node concept="chp4Y" id="PI_pXYAdB1" role="ri$Ld">
                              <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFunctionBlockDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="PI_pXYAdB2" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
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
  <node concept="1M2fIO" id="PI_pXYAdQx">
    <property role="3GE5qa" value="composite.events" />
    <ref role="1M2myG" to="xiqq:PI_pXYus2V" resolve="TargetEventInstance" />
    <node concept="1N5Pfh" id="PI_pXYAdTI" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus4s" resolve="declaration" />
      <node concept="3dgokm" id="PI_pXYAdTJ" role="1N6uqs">
        <node concept="3clFbS" id="PI_pXYAdTK" role="2VODD2">
          <node concept="3clFbJ" id="PI_pXYAdTL" role="3cqZAp">
            <node concept="2OqwBi" id="PI_pXYAdTM" role="3clFbw">
              <node concept="2OqwBi" id="PI_pXYAdTN" role="2Oq$k0">
                <node concept="3kakTB" id="PI_pXYAdTO" role="2Oq$k0" />
                <node concept="3TrEf2" id="PI_pXYAdTP" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="container" />
                </node>
              </node>
              <node concept="3x8VRR" id="PI_pXYAdTQ" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="PI_pXYAdTR" role="3clFbx">
              <node concept="3cpWs6" id="PI_pXYAdTS" role="3cqZAp">
                <node concept="2YIFZM" id="PI_pXYAdTT" role="3cqZAk">
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                  <node concept="2OqwBi" id="PI_pXYAdTU" role="37wK5m">
                    <node concept="3Tsc0h" id="3nFX2lGY_rq" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                    </node>
                    <node concept="2OqwBi" id="PI_pXYAdTW" role="2Oq$k0">
                      <node concept="2OqwBi" id="PI_pXYAdTX" role="2Oq$k0">
                        <node concept="3kakTB" id="PI_pXYAdTY" role="2Oq$k0" />
                        <node concept="3TrEf2" id="PI_pXYAdTZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="container" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="PI_pXYAdU0" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="PI_pXYAdU1" role="9aQIa">
              <node concept="3clFbS" id="PI_pXYAdU2" role="9aQI4">
                <node concept="3cpWs6" id="PI_pXYAdU3" role="3cqZAp">
                  <node concept="2YIFZM" id="PI_pXYAdU4" role="3cqZAk">
                    <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                    <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <node concept="2OqwBi" id="PI_pXYAdU5" role="37wK5m">
                      <node concept="2OqwBi" id="PI_pXYAdU6" role="2Oq$k0">
                        <node concept="2rP1CM" id="PI_pXYAdU7" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="PI_pXYAdU8" role="2OqNvi">
                          <node concept="1xMEDy" id="PI_pXYAdU9" role="1xVPHs">
                            <node concept="chp4Y" id="PI_pXYAdUa" role="ri$Ld">
                              <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFunctionBlockDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="PI_pXYAfCY" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
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
</model>

