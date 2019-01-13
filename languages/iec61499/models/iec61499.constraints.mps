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
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="5564765827938108528" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_containmentLink" flags="ng" index="3dgs5T" />
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
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
    <property role="3GE5qa" value="fbtype.composite" />
    <ref role="1M2myG" to="xiqq:PI_pXYus4l" resolve="EventEndpoint" />
    <node concept="1N5Pfh" id="PI_pXYA12A" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus4r" resolve="component" />
      <node concept="3dgokm" id="PI_pXYA12D" role="1N6uqs">
        <node concept="3clFbS" id="PI_pXYA12E" role="2VODD2">
          <node concept="3cpWs8" id="4KieeRVlIn7" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVlIn8" role="3cpWs9">
              <property role="TrG5h" value="typeDeclaration" />
              <node concept="3Tqbb2" id="4KieeRVlIn5" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="4KieeRVlIn9" role="33vP2m">
                <node concept="2rP1CM" id="4KieeRVlIna" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4KieeRVlInb" role="2OqNvi">
                  <node concept="1xMEDy" id="4KieeRVlInc" role="1xVPHs">
                    <node concept="chp4Y" id="4KieeRVlInd" role="ri$Ld">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="PI_pXYA1fL" role="3cqZAp">
            <node concept="2YIFZM" id="PI_pXYA1iS" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="PI_pXYA7qt" role="37wK5m">
                <node concept="37vLTw" id="4KieeRVlIne" role="2Oq$k0">
                  <ref role="3cqZAo" node="4KieeRVlIn8" resolve="typeDeclaration" />
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
          <node concept="3cpWs8" id="4KieeRVlnHg" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVlnHh" role="3cpWs9">
              <property role="TrG5h" value="link" />
              <node concept="3uibUv" id="4KieeRVlnHi" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
              <node concept="3K4zz7" id="4KieeRVlpqc" role="33vP2m">
                <node concept="2OqwBi" id="4KieeRVlpUb" role="3K4E3e">
                  <node concept="3kakTB" id="4KieeRVlpAN" role="2Oq$k0" />
                  <node concept="2NL2c5" id="4KieeRVlqcI" role="2OqNvi" />
                </node>
                <node concept="3dgs5T" id="4KieeRVlr2C" role="3K4GZi" />
                <node concept="2OqwBi" id="4KieeRVlorc" role="3K4Cdx">
                  <node concept="3kakTB" id="4KieeRVlo6r" role="2Oq$k0" />
                  <node concept="3x8VRR" id="4KieeRVloNu" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4KieeRVluss" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVlusv" role="3cpWs9">
              <property role="TrG5h" value="isInput" />
              <node concept="10P_77" id="4KieeRVlusq" role="1tU5fm" />
              <node concept="22lmx$" id="4KieeRVzzGB" role="33vP2m">
                <node concept="3clFbC" id="4KieeRVz_89" role="3uHU7B">
                  <node concept="10Nm6u" id="4KieeRVz_8a" role="3uHU7w" />
                  <node concept="37vLTw" id="4KieeRVz_8b" role="3uHU7B">
                    <ref role="3cqZAo" node="4KieeRVlnHh" resolve="link" />
                  </node>
                </node>
                <node concept="17R0WA" id="4KieeRVz_8c" role="3uHU7w">
                  <node concept="37vLTw" id="4KieeRVz_8d" role="3uHU7B">
                    <ref role="3cqZAo" node="4KieeRVlnHh" resolve="link" />
                  </node>
                  <node concept="359W_D" id="4KieeRVz_8e" role="3uHU7w">
                    <ref role="359W_E" to="xiqq:4KieeRVlhii" resolve="Connection" />
                    <ref role="359W_F" to="xiqq:4KieeRVlhj5" resolve="input" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4KieeRVzyKj" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVzyKk" role="3cpWs9">
              <property role="TrG5h" value="isOutput" />
              <node concept="10P_77" id="4KieeRVzyKl" role="1tU5fm" />
              <node concept="22lmx$" id="4KieeRVz_nW" role="33vP2m">
                <node concept="3clFbC" id="4KieeRVz_Zb" role="3uHU7B">
                  <node concept="10Nm6u" id="4KieeRVzAiT" role="3uHU7w" />
                  <node concept="37vLTw" id="4KieeRVz_BP" role="3uHU7B">
                    <ref role="3cqZAo" node="4KieeRVlnHh" resolve="link" />
                  </node>
                </node>
                <node concept="17R0WA" id="4KieeRVzyKm" role="3uHU7w">
                  <node concept="359W_D" id="4KieeRVzyKn" role="3uHU7w">
                    <ref role="359W_E" to="xiqq:4KieeRVlhii" resolve="Connection" />
                    <ref role="359W_F" to="xiqq:4KieeRVlhj8" resolve="output" />
                  </node>
                  <node concept="37vLTw" id="4KieeRVzyKo" role="3uHU7B">
                    <ref role="3cqZAo" node="4KieeRVlnHh" resolve="link" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4KieeRVzAMQ" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVzAMT" role="3cpWs9">
              <property role="TrG5h" value="events" />
              <node concept="2I9FWS" id="4KieeRVzBiW" role="1tU5fm">
                <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
              </node>
              <node concept="2ShNRf" id="4KieeRVzFca" role="33vP2m">
                <node concept="Tc6Ow" id="4KieeRVzFvR" role="2ShVmc">
                  <node concept="3Tqbb2" id="4KieeRVzG3O" role="HW$YZ">
                    <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4KieeRVltEL" role="3cqZAp">
            <node concept="2OqwBi" id="4KieeRVltEM" role="3clFbw">
              <node concept="2OqwBi" id="4KieeRVltEN" role="2Oq$k0">
                <node concept="3kakTB" id="4KieeRVltEO" role="2Oq$k0" />
                <node concept="3TrEf2" id="4KieeRVltEP" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                </node>
              </node>
              <node concept="3x8VRR" id="4KieeRVltEQ" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4KieeRVltER" role="3clFbx">
              <node concept="3cpWs8" id="4KieeRVlysA" role="3cqZAp">
                <node concept="3cpWsn" id="4KieeRVlysB" role="3cpWs9">
                  <property role="TrG5h" value="componentDeclaration" />
                  <node concept="3Tqbb2" id="4KieeRVlysy" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="BFTypeDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="4KieeRVlysC" role="33vP2m">
                    <node concept="2OqwBi" id="4KieeRVlysD" role="2Oq$k0">
                      <node concept="3kakTB" id="4KieeRVlysE" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4KieeRVlysF" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4KieeRVlysG" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4KieeRVzGPV" role="3cqZAp">
                <node concept="3clFbS" id="4KieeRVzGPX" role="3clFbx">
                  <node concept="3clFbF" id="4KieeRVzHmm" role="3cqZAp">
                    <node concept="2OqwBi" id="4KieeRVzKIY" role="3clFbG">
                      <node concept="37vLTw" id="4KieeRVzHmk" role="2Oq$k0">
                        <ref role="3cqZAo" node="4KieeRVzAMT" resolve="events" />
                      </node>
                      <node concept="X8dFx" id="4KieeRVzPJS" role="2OqNvi">
                        <node concept="2OqwBi" id="4KieeRVzPJU" role="25WWJ7">
                          <node concept="37vLTw" id="4KieeRVzPJV" role="2Oq$k0">
                            <ref role="3cqZAo" node="4KieeRVlysB" resolve="componentDeclaration" />
                          </node>
                          <node concept="3Tsc0h" id="4KieeRVzPJW" role="2OqNvi">
                            <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4KieeRVzH6n" role="3clFbw">
                  <ref role="3cqZAo" node="4KieeRVlusv" resolve="isInput" />
                </node>
              </node>
              <node concept="3clFbJ" id="4KieeRVzS_b" role="3cqZAp">
                <node concept="3clFbS" id="4KieeRVzS_c" role="3clFbx">
                  <node concept="3clFbF" id="4KieeRVzS_d" role="3cqZAp">
                    <node concept="2OqwBi" id="4KieeRVzS_e" role="3clFbG">
                      <node concept="37vLTw" id="4KieeRVzS_f" role="2Oq$k0">
                        <ref role="3cqZAo" node="4KieeRVzAMT" resolve="events" />
                      </node>
                      <node concept="X8dFx" id="4KieeRVzS_g" role="2OqNvi">
                        <node concept="2OqwBi" id="4KieeRVzS_h" role="25WWJ7">
                          <node concept="37vLTw" id="4KieeRVzS_i" role="2Oq$k0">
                            <ref role="3cqZAo" node="4KieeRVlysB" resolve="componentDeclaration" />
                          </node>
                          <node concept="3Tsc0h" id="4KieeRVzYZ9" role="2OqNvi">
                            <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4KieeRVzWJn" role="3clFbw">
                  <ref role="3cqZAo" node="4KieeRVzyKk" resolve="isOutput" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="4KieeRVltF1" role="9aQIa">
              <node concept="3clFbS" id="4KieeRVltF2" role="9aQI4">
                <node concept="3cpWs8" id="4KieeRVlC4x" role="3cqZAp">
                  <node concept="3cpWsn" id="4KieeRVlC4y" role="3cpWs9">
                    <property role="TrG5h" value="typeDeclaration" />
                    <node concept="3Tqbb2" id="4KieeRVlC4t" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="4KieeRVlC4z" role="33vP2m">
                      <node concept="2rP1CM" id="4KieeRVlC4$" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="4KieeRVlC4_" role="2OqNvi">
                        <node concept="1xMEDy" id="4KieeRVlC4A" role="1xVPHs">
                          <node concept="chp4Y" id="4KieeRVlC4B" role="ri$Ld">
                            <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4KieeRV$bZ4" role="3cqZAp">
                  <node concept="3clFbS" id="4KieeRV$bZ5" role="3clFbx">
                    <node concept="3clFbF" id="4KieeRV$bZ6" role="3cqZAp">
                      <node concept="2OqwBi" id="4KieeRV$bZ7" role="3clFbG">
                        <node concept="37vLTw" id="4KieeRV$bZ8" role="2Oq$k0">
                          <ref role="3cqZAo" node="4KieeRVzAMT" resolve="events" />
                        </node>
                        <node concept="X8dFx" id="4KieeRV$bZ9" role="2OqNvi">
                          <node concept="2OqwBi" id="4KieeRV$bZa" role="25WWJ7">
                            <node concept="37vLTw" id="4KieeRV$Lyg" role="2Oq$k0">
                              <ref role="3cqZAo" node="4KieeRVlC4y" resolve="typeDeclaration" />
                            </node>
                            <node concept="3Tsc0h" id="4KieeRV$QNO" role="2OqNvi">
                              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4KieeRV$bZd" role="3clFbw">
                    <ref role="3cqZAo" node="4KieeRVlusv" resolve="isInput" />
                  </node>
                </node>
                <node concept="3clFbJ" id="4KieeRV$bZe" role="3cqZAp">
                  <node concept="3clFbS" id="4KieeRV$bZf" role="3clFbx">
                    <node concept="3clFbF" id="4KieeRV$bZg" role="3cqZAp">
                      <node concept="2OqwBi" id="4KieeRV$bZh" role="3clFbG">
                        <node concept="37vLTw" id="4KieeRV$bZi" role="2Oq$k0">
                          <ref role="3cqZAo" node="4KieeRVzAMT" resolve="events" />
                        </node>
                        <node concept="X8dFx" id="4KieeRV$bZj" role="2OqNvi">
                          <node concept="2OqwBi" id="4KieeRV$bZk" role="25WWJ7">
                            <node concept="37vLTw" id="4KieeRV$VNV" role="2Oq$k0">
                              <ref role="3cqZAo" node="4KieeRVlC4y" resolve="typeDeclaration" />
                            </node>
                            <node concept="3Tsc0h" id="4KieeRV_3rc" role="2OqNvi">
                              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4KieeRV$bZn" role="3clFbw">
                    <ref role="3cqZAo" node="4KieeRVzyKk" resolve="isOutput" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4KieeRVltES" role="3cqZAp">
            <node concept="2YIFZM" id="4KieeRVltET" role="3cqZAk">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="4KieeRV$5vQ" role="37wK5m">
                <ref role="3cqZAo" node="4KieeRVzAMT" resolve="events" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4KieeRVn_cg">
    <property role="3GE5qa" value="fbtype.composite" />
    <ref role="1M2myG" to="xiqq:PI_pXYus3W" resolve="DataEndpoint" />
    <node concept="1N5Pfh" id="4KieeRVnA0i" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus3R" resolve="component" />
      <node concept="3dgokm" id="4KieeRVnA0j" role="1N6uqs">
        <node concept="3clFbS" id="4KieeRVnA0k" role="2VODD2">
          <node concept="3cpWs8" id="4KieeRVnA0l" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVnA0m" role="3cpWs9">
              <property role="TrG5h" value="typeDeclaration" />
              <node concept="3Tqbb2" id="4KieeRVnA0n" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="4KieeRVnA0o" role="33vP2m">
                <node concept="2rP1CM" id="4KieeRVnA0p" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4KieeRVnA0q" role="2OqNvi">
                  <node concept="1xMEDy" id="4KieeRVnA0r" role="1xVPHs">
                    <node concept="chp4Y" id="4KieeRVnA0s" role="ri$Ld">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4KieeRVnA0t" role="3cqZAp">
            <node concept="2YIFZM" id="4KieeRVnA0u" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="4KieeRVnA0v" role="37wK5m">
                <node concept="37vLTw" id="4KieeRVnA0w" role="2Oq$k0">
                  <ref role="3cqZAo" node="4KieeRVnA0m" resolve="typeDeclaration" />
                </node>
                <node concept="3Tsc0h" id="4KieeRVnA0x" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="components" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="4KieeRVnA0y" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus3O" resolve="declaration" />
      <node concept="3dgokm" id="4KieeRVnA0z" role="1N6uqs">
        <node concept="3clFbS" id="4KieeRVnA0$" role="2VODD2">
          <node concept="3cpWs8" id="4KieeRVnA0_" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVnA0A" role="3cpWs9">
              <property role="TrG5h" value="link" />
              <node concept="3uibUv" id="4KieeRVnA0B" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
              <node concept="3K4zz7" id="4KieeRVnA0C" role="33vP2m">
                <node concept="2OqwBi" id="4KieeRVnA0D" role="3K4E3e">
                  <node concept="3kakTB" id="4KieeRVnA0E" role="2Oq$k0" />
                  <node concept="2NL2c5" id="4KieeRVnA0F" role="2OqNvi" />
                </node>
                <node concept="3dgs5T" id="4KieeRVnA0G" role="3K4GZi" />
                <node concept="2OqwBi" id="4KieeRVnA0H" role="3K4Cdx">
                  <node concept="3kakTB" id="4KieeRVnA0I" role="2Oq$k0" />
                  <node concept="3x8VRR" id="4KieeRVnA0J" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4KieeRVnA0K" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVnA0L" role="3cpWs9">
              <property role="TrG5h" value="isInput" />
              <node concept="10P_77" id="4KieeRVnA0M" role="1tU5fm" />
              <node concept="17R0WA" id="4KieeRVnA0N" role="33vP2m">
                <node concept="359W_D" id="4KieeRVnA0O" role="3uHU7w">
                  <ref role="359W_E" to="xiqq:4KieeRVlhii" resolve="Connection" />
                  <ref role="359W_F" to="xiqq:4KieeRVlhj5" resolve="input" />
                </node>
                <node concept="37vLTw" id="4KieeRVnA0P" role="3uHU7B">
                  <ref role="3cqZAo" node="4KieeRVnA0A" resolve="link" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4KieeRVnA0Q" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVnA0R" role="3cpWs9">
              <property role="TrG5h" value="declaration" />
              <node concept="3Tqbb2" id="4KieeRVnA0S" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="BFTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="4KieeRVnA0T" role="33vP2m">
                <node concept="2OqwBi" id="4KieeRVnA0U" role="2Oq$k0">
                  <node concept="3kakTB" id="4KieeRVnA0V" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4KieeRVnA0W" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4KieeRVnA0X" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="declaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4KieeRVnA0Y" role="3cqZAp">
            <node concept="3cpWsn" id="4KieeRVnA0Z" role="3cpWs9">
              <property role="TrG5h" value="typeDeclaration" />
              <node concept="3Tqbb2" id="4KieeRVnA10" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="4KieeRVnA11" role="33vP2m">
                <node concept="2rP1CM" id="4KieeRVnA12" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4KieeRVnA13" role="2OqNvi">
                  <node concept="1xMEDy" id="4KieeRVnA14" role="1xVPHs">
                    <node concept="chp4Y" id="4KieeRVnA15" role="ri$Ld">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4KieeRVnA16" role="3cqZAp">
            <node concept="2OqwBi" id="4KieeRVnA17" role="3clFbw">
              <node concept="2OqwBi" id="4KieeRVnA18" role="2Oq$k0">
                <node concept="3kakTB" id="4KieeRVnA19" role="2Oq$k0" />
                <node concept="3TrEf2" id="4KieeRVnA1a" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                </node>
              </node>
              <node concept="3x8VRR" id="4KieeRVnA1b" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="4KieeRVnA1c" role="3clFbx">
              <node concept="3cpWs6" id="4KieeRVnA1d" role="3cqZAp">
                <node concept="2YIFZM" id="4KieeRVnA1e" role="3cqZAk">
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                  <node concept="3K4zz7" id="4KieeRVnA1f" role="37wK5m">
                    <node concept="2OqwBi" id="4KieeRVnA1g" role="3K4GZi">
                      <node concept="37vLTw" id="4KieeRVnA1h" role="2Oq$k0">
                        <ref role="3cqZAo" node="4KieeRVnA0R" resolve="declaration" />
                      </node>
                      <node concept="3Tsc0h" id="4KieeRVnIl9" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4KieeRVnA1j" role="3K4Cdx">
                      <ref role="3cqZAo" node="4KieeRVnA0L" resolve="isInput" />
                    </node>
                    <node concept="2OqwBi" id="4KieeRVnA1k" role="3K4E3e">
                      <node concept="3Tsc0h" id="4KieeRVnBfP" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                      </node>
                      <node concept="37vLTw" id="4KieeRVnA1m" role="2Oq$k0">
                        <ref role="3cqZAo" node="4KieeRVnA0R" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="4KieeRVnA1n" role="9aQIa">
              <node concept="3clFbS" id="4KieeRVnA1o" role="9aQI4">
                <node concept="3cpWs6" id="4KieeRVnA1p" role="3cqZAp">
                  <node concept="2YIFZM" id="4KieeRVnA1q" role="3cqZAk">
                    <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                    <node concept="3K4zz7" id="4KieeRVnA1r" role="37wK5m">
                      <node concept="2OqwBi" id="4KieeRVnA1s" role="3K4GZi">
                        <node concept="37vLTw" id="4KieeRVnA1t" role="2Oq$k0">
                          <ref role="3cqZAo" node="4KieeRVnA0Z" resolve="typeDeclaration" />
                        </node>
                        <node concept="3Tsc0h" id="4KieeRVnQe_" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4KieeRVnA1v" role="3K4Cdx">
                        <ref role="3cqZAo" node="4KieeRVnA0L" resolve="isInput" />
                      </node>
                      <node concept="2OqwBi" id="4KieeRVnA1w" role="3K4E3e">
                        <node concept="37vLTw" id="4KieeRVnA1x" role="2Oq$k0">
                          <ref role="3cqZAo" node="4KieeRVnA0Z" resolve="typeDeclaration" />
                        </node>
                        <node concept="3Tsc0h" id="4KieeRVnJ1E" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
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
  <node concept="1M2fIO" id="6g3sTReZ5Tg">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1M2myG" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
    <node concept="1N5Pfh" id="6g3sTReZ5Th" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:6g3sTReV9I3" resolve="eventInput" />
      <node concept="3dgokm" id="6g3sTReZ5Tl" role="1N6uqs">
        <node concept="3clFbS" id="6g3sTReZ5Tn" role="2VODD2">
          <node concept="3clFbF" id="6g3sTReZ626" role="3cqZAp">
            <node concept="2YIFZM" id="6g3sTReZ7BJ" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="6g3sTReZ6H0" role="37wK5m">
                <node concept="2OqwBi" id="6g3sTReZ6bt" role="2Oq$k0">
                  <node concept="2rP1CM" id="6g3sTReZ625" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="6g3sTReZ6jk" role="2OqNvi">
                    <node concept="1xMEDy" id="6g3sTReZ6jm" role="1xVPHs">
                      <node concept="chp4Y" id="6g3sTReZ6r8" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="6g3sTReZ72r" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

