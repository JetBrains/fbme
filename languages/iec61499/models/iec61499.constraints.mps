<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a4fe33ac-e966-4c3c-bbd8-837296363b92(iec61499.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(iec61499.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="jv5c" ref="r:a4fe33ac-e966-4c3c-bbd8-837296363b92(iec61499.constraints)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(iec61499.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
    </language>
  </registry>
  <node concept="1M2fIO" id="3HBlKeoZ0X$">
    <property role="3GE5qa" value="expressions" />
    <ref role="1M2myG" to="xiqq:3HBlKeoZ0X9" resolve="Expression" />
  </node>
  <node concept="1M2fIO" id="PI_pXYaX1G">
    <property role="3GE5qa" value="fbtype.basic" />
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
    <property role="3GE5qa" value="connections.event" />
    <ref role="1M2myG" to="xiqq:PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="1N5Pfh" id="PI_pXYA12A" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus4r" resolve="component" />
      <node concept="3dgokm" id="PI_pXYA12D" role="1N6uqs">
        <node concept="3clFbS" id="PI_pXYA12E" role="2VODD2">
          <node concept="3clFbF" id="75nMhMfYQMz" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMfYQSO" role="3clFbG">
              <ref role="37wK5l" node="75nMhMfYK2M" resolve="contextComponents" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMfYQW3" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4KieeRVn_cg">
    <property role="3GE5qa" value="connections.data" />
    <ref role="1M2myG" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="1N5Pfh" id="4KieeRVnA0i" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus3R" resolve="component" />
      <node concept="3dgokm" id="4KieeRVnA0j" role="1N6uqs">
        <node concept="3clFbS" id="4KieeRVnA0k" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMfYK2R" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMfYK2Q" role="3cqZAk">
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <ref role="37wK5l" node="75nMhMfYK2M" resolve="contextComponents" />
              <node concept="2rP1CM" id="75nMhMfYK2P" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6g3sTReZ5Tg">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1M2myG" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
  </node>
  <node concept="1M2fIO" id="37fub3vlAqP">
    <property role="3GE5qa" value="connections.data" />
    <ref role="1M2myG" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
    <node concept="1N5Pfh" id="37fub3vlBdG" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus3O" resolve="declaration" />
      <node concept="3dgokm" id="37fub3vlBdH" role="1N6uqs">
        <node concept="3clFbS" id="37fub3vlBdI" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMfYRBE" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMfYRBD" role="3cqZAk">
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <ref role="37wK5l" node="75nMhMfYRB_" resolve="componentDataSources" />
              <node concept="2OqwBi" id="75nMhMfYRJ8" role="37wK5m">
                <node concept="3kakTB" id="75nMhMfYRJ9" role="2Oq$k0" />
                <node concept="3TrEf2" id="75nMhMfYRJa" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="37fub3vlCZN">
    <property role="3GE5qa" value="connections.data" />
    <ref role="1M2myG" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
    <node concept="1N5Pfh" id="37fub3vlCZU" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus3O" resolve="declaration" />
      <node concept="3dgokm" id="37fub3vlCZV" role="1N6uqs">
        <node concept="3clFbS" id="37fub3vlCZW" role="2VODD2">
          <node concept="3cpWs6" id="37fub3vlD05" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMfYVkq" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYSMQ" resolve="componentDataDestinations" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2OqwBi" id="75nMhMfYVXm" role="37wK5m">
                <node concept="3kakTB" id="75nMhMfYVIG" role="2Oq$k0" />
                <node concept="3TrEf2" id="75nMhMfYWcu" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="37fub3vndfU">
    <property role="3GE5qa" value="connections.data" />
    <ref role="1M2myG" to="xiqq:37fub3vndep" resolve="InterfaceDataSource" />
    <node concept="1N5Pfh" id="37fub3vndfV" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:37fub3vlDyy" resolve="declaration" />
      <node concept="3dgokm" id="37fub3vndfZ" role="1N6uqs">
        <node concept="3clFbS" id="37fub3vndg1" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMg1097" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMg10fW" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYWrA" resolve="interfaceDataSources" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMg10r0" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="37fub3vnkIU">
    <property role="3GE5qa" value="connections.data" />
    <ref role="1M2myG" to="xiqq:37fub3vnkIr" resolve="InterfaceDataDestination" />
    <node concept="1N5Pfh" id="37fub3vnkIV" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:37fub3vlDyy" resolve="declaration" />
      <node concept="3dgokm" id="37fub3vnkIW" role="1N6uqs">
        <node concept="3clFbS" id="37fub3vnkIX" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMfYWrF" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMg10Hq" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYXaa" resolve="interfaceDataDestinations" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMg10Hr" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="75nMhMfODmG">
    <property role="3GE5qa" value="connections.event" />
    <ref role="1M2myG" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
    <node concept="1N5Pfh" id="75nMhMfODmJ" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus4s" resolve="declaration" />
      <node concept="3dgokm" id="75nMhMfODmK" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMfODmL" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMg0YS6" role="3cqZAp">
            <node concept="2YIFZM" id="5L1OxDukz$X" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYTpb" resolve="componentEventSources" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2OqwBi" id="5L1OxDukz$Y" role="37wK5m">
                <node concept="3kakTB" id="5L1OxDukz$Z" role="2Oq$k0" />
                <node concept="3TrEf2" id="5L1OxDukz_0" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="75nMhMfQLm_">
    <property role="3GE5qa" value="connections.event" />
    <ref role="1M2myG" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
    <node concept="1N5Pfh" id="75nMhMfQLyX" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus4s" resolve="declaration" />
      <node concept="3dgokm" id="75nMhMfQLz1" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMfQLz3" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMg0ZUy" role="3cqZAp">
            <node concept="2YIFZM" id="5L1OxDukIcT" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYTps" resolve="componentEventDestinations" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2OqwBi" id="5L1OxDukIcU" role="37wK5m">
                <node concept="3kakTB" id="5L1OxDukIcV" role="2Oq$k0" />
                <node concept="3TrEf2" id="5L1OxDukIcW" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="75nMhMfSBak">
    <property role="3GE5qa" value="connections.event" />
    <ref role="1M2myG" to="xiqq:75nMhMfSATx" resolve="InterfaceEventSource" />
    <node concept="1N5Pfh" id="75nMhMfSBal" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:75nMhMfQOtI" resolve="declaration" />
      <node concept="3dgokm" id="75nMhMfSBat" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMfSBav" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMg10TN" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMg10Yj" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYXd4" resolve="interfaceEventSources" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMg10Yk" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="75nMhMfSBNz">
    <property role="3GE5qa" value="connections.event" />
    <ref role="1M2myG" to="xiqq:75nMhMfSBN9" resolve="InterfaceEventDestination" />
    <node concept="1N5Pfh" id="75nMhMfSBN$" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:75nMhMfQOtI" resolve="declaration" />
      <node concept="3dgokm" id="75nMhMfSBN_" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMfSBNA" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMg11aG" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMg11fc" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYXuq" resolve="interfaceEventDestinations" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMg11fd" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="75nMhMfYJQt">
    <property role="3GE5qa" value="connections" />
    <property role="TrG5h" value="EndpointScopes" />
    <node concept="2YIFZL" id="75nMhMfYK2M" role="jymVt">
      <property role="TrG5h" value="contextComponents" />
      <node concept="3Tm1VV" id="75nMhMfYK2N" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMfYK2O" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMfYK2H" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="75nMhMfYK2I" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="75nMhMfYK2v" role="3clF47">
        <node concept="3cpWs8" id="75nMhMfYK2w" role="3cqZAp">
          <node concept="3cpWsn" id="75nMhMfYK2x" role="3cpWs9">
            <property role="TrG5h" value="fbtype" />
            <node concept="3Tqbb2" id="75nMhMfYK2y" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="2YIFZM" id="75nMhMfZ04_" role="33vP2m">
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="enclosingFBType" />
              <node concept="37vLTw" id="75nMhMfZ04$" role="37wK5m">
                <ref role="3cqZAo" node="75nMhMfYK2H" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5L1OxDulfLk" role="3cqZAp">
          <node concept="3cpWsn" id="5L1OxDulfLn" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="5L1OxDulfLg" role="1tU5fm">
              <node concept="3Tqbb2" id="5L1OxDulfMW" role="_ZDj9">
                <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
              </node>
            </node>
            <node concept="2ShNRf" id="5L1OxDulfWm" role="33vP2m">
              <node concept="Tc6Ow" id="5L1OxDulh3Y" role="2ShVmc">
                <node concept="3Tqbb2" id="5L1OxDulho4" role="HW$YZ">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5L1OxDulC5A" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDulDgU" role="3clFbG">
            <node concept="37vLTw" id="5L1OxDulC5$" role="2Oq$k0">
              <ref role="3cqZAo" node="5L1OxDulfLn" resolve="res" />
            </node>
            <node concept="X8dFx" id="5L1OxDulG$c" role="2OqNvi">
              <node concept="2OqwBi" id="5L1OxDulHBR" role="25WWJ7">
                <node concept="1PxgMI" id="2R0WzquNJIu" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="2R0WzquNJVW" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                  </node>
                  <node concept="37vLTw" id="5L1OxDulHnW" role="1m5AlR">
                    <ref role="3cqZAo" node="75nMhMfYK2x" resolve="fbtype" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="5L1OxDulI1g" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5L1OxDuoeYp" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuogo1" role="3clFbG">
            <node concept="37vLTw" id="5L1OxDuoeYn" role="2Oq$k0">
              <ref role="3cqZAo" node="5L1OxDulfLn" resolve="res" />
            </node>
            <node concept="X8dFx" id="5L1OxDuojKq" role="2OqNvi">
              <node concept="2OqwBi" id="5L1OxDuolOq" role="25WWJ7">
                <node concept="37vLTw" id="5L1OxDuokXk" role="2Oq$k0">
                  <ref role="3cqZAo" node="75nMhMfYK2x" resolve="fbtype" />
                </node>
                <node concept="3Tsc0h" id="5L1OxDuomcL" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5L1OxDuomyq" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuomyr" role="3clFbG">
            <node concept="37vLTw" id="5L1OxDuomys" role="2Oq$k0">
              <ref role="3cqZAo" node="5L1OxDulfLn" resolve="res" />
            </node>
            <node concept="X8dFx" id="5L1OxDuomyt" role="2OqNvi">
              <node concept="2OqwBi" id="5L1OxDuomyu" role="25WWJ7">
                <node concept="37vLTw" id="5L1OxDuomyv" role="2Oq$k0">
                  <ref role="3cqZAo" node="75nMhMfYK2x" resolve="fbtype" />
                </node>
                <node concept="3Tsc0h" id="5L1OxDuoo8D" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="75nMhMfYK2C" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMfYK2D" role="3clFbG">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="37vLTw" id="5L1OxDuoBE7" role="37wK5m">
              <ref role="3cqZAo" node="5L1OxDulfLn" resolve="res" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="75nMhMfYZyK" role="jymVt" />
    <node concept="2YIFZL" id="75nMhMfYRB_" role="jymVt">
      <property role="TrG5h" value="componentDataSources" />
      <node concept="3Tm1VV" id="75nMhMfYS3n" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMfYRBB" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMfYRBw" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3Tqbb2" id="75nMhMfYRBx" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="75nMhMfYRBk" role="3clF47">
        <node concept="3cpWs6" id="75nMhMfYRBr" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMfYRBs" role="3cqZAk">
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <node concept="2OqwBi" id="5L1OxDuoFbq" role="37wK5m">
              <node concept="37vLTw" id="5L1OxDuoF0E" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMfYRBw" resolve="component" />
              </node>
              <node concept="2qgKlT" id="5L1OxDuoFF2" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:5L1OxDukYe7" resolve="dataSources" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMfYSMQ" role="jymVt">
      <property role="TrG5h" value="componentDataDestinations" />
      <node concept="3Tm1VV" id="75nMhMfYSMR" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMfYSMS" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMfYSMT" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3Tqbb2" id="75nMhMfYSMU" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="75nMhMfYSMV" role="3clF47">
        <node concept="3cpWs6" id="75nMhMfYSN2" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMfYSN3" role="3cqZAk">
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <node concept="2OqwBi" id="5L1OxDuoGq4" role="37wK5m">
              <node concept="37vLTw" id="5L1OxDuoGfk" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMfYSMT" resolve="component" />
              </node>
              <node concept="2qgKlT" id="5L1OxDuoGTo" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMfYTpb" role="jymVt">
      <property role="TrG5h" value="componentEventSources" />
      <node concept="3Tm1VV" id="75nMhMfYTpc" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMfYTpd" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMfYTpe" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3Tqbb2" id="75nMhMfYTpf" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="75nMhMfYTpg" role="3clF47">
        <node concept="3cpWs6" id="75nMhMfYTpn" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMfYTpo" role="3cqZAk">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="5L1OxDuoHB9" role="37wK5m">
              <node concept="37vLTw" id="5L1OxDuoHrY" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMfYTpe" resolve="component" />
              </node>
              <node concept="2qgKlT" id="5L1OxDuoHRd" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:5L1OxDukYcu" resolve="eventSources" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMfYTps" role="jymVt">
      <property role="TrG5h" value="componentEventDestinations" />
      <node concept="3Tm1VV" id="75nMhMfYTpt" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMfYTpu" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMfYTpv" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3Tqbb2" id="75nMhMfYTpw" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="75nMhMfYTpx" role="3clF47">
        <node concept="3cpWs6" id="75nMhMfYTpC" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMfYTpD" role="3cqZAk">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="5L1OxDuoI$n" role="37wK5m">
              <node concept="37vLTw" id="5L1OxDuoIpB" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMfYTpv" resolve="component" />
              </node>
              <node concept="2qgKlT" id="5L1OxDuoIO7" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:5L1OxDukYdN" resolve="eventDestinations" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="75nMhMfYWS4" role="jymVt" />
    <node concept="2YIFZL" id="75nMhMfYWrA" role="jymVt">
      <property role="TrG5h" value="interfaceDataSources" />
      <node concept="3Tm1VV" id="75nMhMfYWrB" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMfYWrC" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMfYWrx" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="75nMhMfYWry" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="75nMhMfYWrj" role="3clF47">
        <node concept="3cpWs8" id="75nMhMfYWrk" role="3cqZAp">
          <node concept="3cpWsn" id="75nMhMfYWrl" role="3cpWs9">
            <property role="TrG5h" value="fbtype" />
            <node concept="3Tqbb2" id="75nMhMfYWrm" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="1rXfSq" id="75nMhMfZ0X$" role="33vP2m">
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="enclosingFBType" />
              <node concept="37vLTw" id="75nMhMfYZSF" role="37wK5m">
                <ref role="3cqZAo" node="75nMhMfYWrx" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="75nMhMfYWrs" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMfYWrt" role="3cqZAk">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="75nMhMfYWru" role="37wK5m">
              <node concept="37vLTw" id="75nMhMfYWrv" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMfYWrl" resolve="fbtype" />
              </node>
              <node concept="3Tsc0h" id="75nMhMfYY9J" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMfYXaa" role="jymVt">
      <property role="TrG5h" value="interfaceDataDestinations" />
      <node concept="3Tm1VV" id="75nMhMfYXab" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMfYXac" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMfYXad" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="75nMhMfYXae" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="75nMhMfYXaf" role="3clF47">
        <node concept="3cpWs8" id="75nMhMfYXag" role="3cqZAp">
          <node concept="3cpWsn" id="75nMhMfYXah" role="3cpWs9">
            <property role="TrG5h" value="fbtype" />
            <node concept="3Tqbb2" id="75nMhMfYXai" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="1rXfSq" id="75nMhMfZ17s" role="33vP2m">
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="enclosingFBType" />
              <node concept="37vLTw" id="75nMhMfZ0cW" role="37wK5m">
                <ref role="3cqZAo" node="75nMhMfYXad" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="75nMhMfYXao" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMfYXap" role="3cqZAk">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="75nMhMfYXaq" role="37wK5m">
              <node concept="37vLTw" id="75nMhMfYXar" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMfYXah" resolve="fbtype" />
              </node>
              <node concept="3Tsc0h" id="75nMhMfYXas" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMfYXd4" role="jymVt">
      <property role="TrG5h" value="interfaceEventSources" />
      <node concept="3Tm1VV" id="75nMhMfYXd5" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMfYXd6" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMfYXd7" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="75nMhMfYXd8" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="75nMhMfYXd9" role="3clF47">
        <node concept="3cpWs8" id="75nMhMfYXda" role="3cqZAp">
          <node concept="3cpWsn" id="75nMhMfYXdb" role="3cpWs9">
            <property role="TrG5h" value="fbtype" />
            <node concept="3Tqbb2" id="75nMhMfYXdc" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="1rXfSq" id="75nMhMfZ1hn" role="33vP2m">
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="enclosingFBType" />
              <node concept="37vLTw" id="75nMhMfZ0lH" role="37wK5m">
                <ref role="3cqZAo" node="75nMhMfYXd7" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="75nMhMfYXdi" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMfYXdj" role="3cqZAk">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="75nMhMfYXdk" role="37wK5m">
              <node concept="37vLTw" id="75nMhMfYXdl" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMfYXdb" resolve="fbtype" />
              </node>
              <node concept="3Tsc0h" id="75nMhMfYZ80" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMfYXuq" role="jymVt">
      <property role="TrG5h" value="interfaceEventDestinations" />
      <node concept="3Tm1VV" id="75nMhMfYXur" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMfYXus" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMfYXut" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="75nMhMfYXuu" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="75nMhMfYXuv" role="3clF47">
        <node concept="3cpWs8" id="75nMhMfYXuw" role="3cqZAp">
          <node concept="3cpWsn" id="75nMhMfYXux" role="3cpWs9">
            <property role="TrG5h" value="fbtype" />
            <node concept="3Tqbb2" id="75nMhMfYXuy" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="1rXfSq" id="75nMhMfZ1rl" role="33vP2m">
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="enclosingFBType" />
              <node concept="37vLTw" id="75nMhMfZ0lL" role="37wK5m">
                <ref role="3cqZAo" node="75nMhMfYXut" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="75nMhMfYXuC" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMfYXuD" role="3cqZAk">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="75nMhMfYXuE" role="37wK5m">
              <node concept="37vLTw" id="75nMhMfYXuF" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMfYXux" resolve="fbtype" />
              </node>
              <node concept="3Tsc0h" id="5L1OxDukUtR" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="75nMhMfYSLm" role="jymVt" />
    <node concept="2YIFZL" id="75nMhMgipsk" role="jymVt">
      <property role="TrG5h" value="componentPlugs" />
      <node concept="3Tm1VV" id="75nMhMgipsl" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMgipsm" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMgipsn" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3Tqbb2" id="75nMhMgipso" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="3clFbS" id="75nMhMgipsp" role="3clF47">
        <node concept="3cpWs8" id="75nMhMgipsq" role="3cqZAp">
          <node concept="3cpWsn" id="75nMhMgipsr" role="3cpWs9">
            <property role="TrG5h" value="declaration" />
            <node concept="3Tqbb2" id="75nMhMgipss" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="75nMhMgipst" role="33vP2m">
              <node concept="37vLTw" id="75nMhMgipsu" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMgipsn" resolve="component" />
              </node>
              <node concept="3TrEf2" id="75nMhMgipsv" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="75nMhMgipsw" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMgipsx" role="3cqZAk">
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <node concept="2OqwBi" id="75nMhMgipsy" role="37wK5m">
              <node concept="3Tsc0h" id="75nMhMgir7n" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
              </node>
              <node concept="37vLTw" id="75nMhMgips$" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMgipsr" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMgips_" role="jymVt">
      <property role="TrG5h" value="componentSockets" />
      <node concept="3Tm1VV" id="75nMhMgipsA" role="1B3o_S" />
      <node concept="3uibUv" id="75nMhMgipsB" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="75nMhMgipsC" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3Tqbb2" id="75nMhMgipsD" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="3clFbS" id="75nMhMgipsE" role="3clF47">
        <node concept="3cpWs8" id="75nMhMgipsF" role="3cqZAp">
          <node concept="3cpWsn" id="75nMhMgipsG" role="3cpWs9">
            <property role="TrG5h" value="declaration" />
            <node concept="3Tqbb2" id="75nMhMgipsH" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="75nMhMgipsI" role="33vP2m">
              <node concept="37vLTw" id="75nMhMgipsJ" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMgipsC" resolve="component" />
              </node>
              <node concept="3TrEf2" id="75nMhMgipsK" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="75nMhMgipsL" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMgipsM" role="3cqZAk">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="75nMhMgipsN" role="37wK5m">
              <node concept="3Tsc0h" id="75nMhMgiruI" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
              </node>
              <node concept="37vLTw" id="75nMhMgipsP" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMgipsG" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="75nMhMgipnT" role="jymVt" />
    <node concept="2YIFZL" id="75nMhMfYZSC" role="jymVt">
      <property role="TrG5h" value="enclosingFBType" />
      <node concept="3Tm6S6" id="75nMhMfYZSD" role="1B3o_S" />
      <node concept="3Tqbb2" id="75nMhMfYZSE" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
      </node>
      <node concept="37vLTG" id="75nMhMfYZR8" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="75nMhMfYZR9" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="75nMhMfYZQF" role="3clF47">
        <node concept="3cpWs6" id="75nMhMfYZR2" role="3cqZAp">
          <node concept="2OqwBi" id="75nMhMfYZR3" role="3cqZAk">
            <node concept="37vLTw" id="75nMhMfYZSg" role="2Oq$k0">
              <ref role="3cqZAo" node="75nMhMfYZR8" resolve="contextNode" />
            </node>
            <node concept="2Xjw5R" id="75nMhMfYZR5" role="2OqNvi">
              <node concept="1xMEDy" id="75nMhMfYZR6" role="1xVPHs">
                <node concept="chp4Y" id="2R0WzquNA6a" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="75nMhMfYJQu" role="1B3o_S" />
  </node>
  <node concept="1M2fIO" id="75nMhMgiscB">
    <property role="3GE5qa" value="connections.adapter" />
    <ref role="1M2myG" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
    <node concept="1N5Pfh" id="75nMhMgiscC" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:75nMhMfIWAY" resolve="component" />
      <node concept="3dgokm" id="75nMhMgiscG" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMgiscI" role="2VODD2">
          <node concept="3clFbF" id="75nMhMgisfG" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMgisn1" role="3clFbG">
              <ref role="37wK5l" node="75nMhMfYK2M" resolve="contextComponents" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMgisqu" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="75nMhMgisuk" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:75nMhMfIWB0" resolve="declaration" />
      <node concept="3dgokm" id="75nMhMgisvc" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMgisve" role="2VODD2">
          <node concept="3clFbF" id="75nMhMgisyc" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMgisAU" role="3clFbG">
              <ref role="37wK5l" node="75nMhMgipsk" resolve="componentPlugs" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2OqwBi" id="75nMhMgisVW" role="37wK5m">
                <node concept="3kakTB" id="75nMhMgisJQ" role="2Oq$k0" />
                <node concept="3TrEf2" id="75nMhMgitaS" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="75nMhMgithQ">
    <property role="3GE5qa" value="connections.adapter" />
    <ref role="1M2myG" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
    <node concept="1N5Pfh" id="75nMhMgithR" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:75nMhMfIPvb" resolve="component" />
      <node concept="3dgokm" id="75nMhMgithS" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMgithT" role="2VODD2">
          <node concept="3clFbF" id="75nMhMgithU" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMgithV" role="3clFbG">
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <ref role="37wK5l" node="75nMhMfYK2M" resolve="contextComponents" />
              <node concept="2rP1CM" id="75nMhMgithW" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="75nMhMgithX" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:75nMhMfIPvd" resolve="declaration" />
      <node concept="3dgokm" id="75nMhMgithY" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMgithZ" role="2VODD2">
          <node concept="3clFbF" id="75nMhMgiti0" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMgitqg" role="3clFbG">
              <ref role="37wK5l" node="75nMhMgips_" resolve="componentSockets" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2OqwBi" id="75nMhMgitqh" role="37wK5m">
                <node concept="3kakTB" id="75nMhMgitqi" role="2Oq$k0" />
                <node concept="3TrEf2" id="75nMhMgitqj" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

