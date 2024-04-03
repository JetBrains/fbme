<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a4fe33ac-e966-4c3c-bbd8-837296363b92(org.fbme.ide.iec61499.lang.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(org.fbme.ide.st.lang.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
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
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
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
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
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
    <property role="3GE5qa" value="network.connections.event" />
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
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1M2myG" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="1N5Pfh" id="4KieeRVnA0i" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:PI_pXYus4r" resolve="component" />
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
    <property role="3GE5qa" value="network.connections.data" />
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
                <node concept="3TrEf2" id="6z_cCa7P34I" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="37fub3vlCZN">
    <property role="3GE5qa" value="network.connections.data" />
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
                <node concept="3TrEf2" id="6z_cCa7No4i" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="37fub3vndfU">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1M2myG" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
    <node concept="1N5Pfh" id="37fub3vndfV" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:37fub3vlDyy" resolve="declaration" />
      <node concept="3dgokm" id="37fub3vndfZ" role="1N6uqs">
        <node concept="3clFbS" id="37fub3vndg1" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMg1097" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMg10fW" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYWrA" resolve="contextDataSources" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMg10r0" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="37fub3vnkIU">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="1M2myG" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
    <node concept="1N5Pfh" id="37fub3vnkIV" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:37fub3vlDyy" resolve="declaration" />
      <node concept="3dgokm" id="37fub3vnkIW" role="1N6uqs">
        <node concept="3clFbS" id="37fub3vnkIX" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMfYWrF" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMg10Hq" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYXaa" resolve="contextDataDestinations" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMg10Hr" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="75nMhMfODmG">
    <property role="3GE5qa" value="network.connections.event" />
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
    <property role="3GE5qa" value="network.connections.event" />
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
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="1M2myG" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
    <node concept="1N5Pfh" id="75nMhMfSBal" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:75nMhMfQOtI" resolve="declaration" />
      <node concept="3dgokm" id="75nMhMfSBat" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMfSBav" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMg10TN" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMg10Yj" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYXd4" resolve="contextEventSources" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMg10Yk" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="75nMhMfSBNz">
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="1M2myG" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
    <node concept="1N5Pfh" id="75nMhMfSBN$" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:75nMhMfQOtI" resolve="declaration" />
      <node concept="3dgokm" id="75nMhMfSBN_" role="1N6uqs">
        <node concept="3clFbS" id="75nMhMfSBNA" role="2VODD2">
          <node concept="3cpWs6" id="75nMhMg11aG" role="3cqZAp">
            <node concept="2YIFZM" id="75nMhMg11fc" role="3cqZAk">
              <ref role="37wK5l" node="75nMhMfYXuq" resolve="contextEventDestinations" />
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <node concept="2rP1CM" id="75nMhMg11fd" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="75nMhMfYJQt">
    <property role="3GE5qa" value="network.connections" />
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
            <property role="TrG5h" value="context" />
            <node concept="3Tqbb2" id="75nMhMfYK2y" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:4s7KBSjc3Il" resolve="IContext" />
            </node>
            <node concept="2YIFZM" id="75nMhMfZ04_" role="33vP2m">
              <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="context" />
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
              <node concept="2OqwBi" id="7qPnRGFpAqF" role="25WWJ7">
                <node concept="1PxgMI" id="7qPnRGFp_lt" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="7qPnRGFp_uu" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
                  </node>
                  <node concept="37vLTw" id="5L1OxDulHnW" role="1m5AlR">
                    <ref role="3cqZAo" node="75nMhMfYK2x" resolve="context" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="7qPnRGFpD3g" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uLhTRQXjlL" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRQXks2" role="3clFbG">
            <node concept="37vLTw" id="uLhTRQXjlJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5L1OxDulfLn" resolve="res" />
            </node>
            <node concept="X8dFx" id="uLhTRQXo1e" role="2OqNvi">
              <node concept="2OqwBi" id="uLhTRQXuN1" role="25WWJ7">
                <node concept="1PxgMI" id="uLhTRQXtgf" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="uLhTRQXtXE" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
                  </node>
                  <node concept="37vLTw" id="uLhTRQXo$n" role="1m5AlR">
                    <ref role="3cqZAo" node="75nMhMfYK2x" resolve="context" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="uLhTRQXv7J" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
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
                  <ref role="3cqZAo" node="75nMhMfYK2x" resolve="context" />
                </node>
                <node concept="2qgKlT" id="2lwHqHkyxY$" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRVNr" resolve="contextComponents" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wAsKTkuG50" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTkuG51" role="3cpWs9">
            <property role="TrG5h" value="networkPrototype" />
            <node concept="3Tqbb2" id="3wAsKTkuG4U" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
            </node>
            <node concept="2OqwBi" id="3wAsKTkuG52" role="33vP2m">
              <node concept="1PxgMI" id="7qPnRGFpE2u" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="7qPnRGFpFhm" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
                </node>
                <node concept="37vLTw" id="3wAsKTkuG53" role="1m5AlR">
                  <ref role="3cqZAo" node="75nMhMfYK2x" resolve="context" />
                </node>
              </node>
              <node concept="2qgKlT" id="7qPnRGFpGU_" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHk$skt" resolve="networkPrototype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wAsKTkuCUB" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkuCUD" role="3clFbx">
            <node concept="3clFbF" id="3wAsKTkuMv5" role="3cqZAp">
              <node concept="2OqwBi" id="3wAsKTkuMv6" role="3clFbG">
                <node concept="37vLTw" id="3wAsKTkuMv7" role="2Oq$k0">
                  <ref role="3cqZAo" node="5L1OxDulfLn" resolve="res" />
                </node>
                <node concept="X8dFx" id="3wAsKTkuMv8" role="2OqNvi">
                  <node concept="2OqwBi" id="3wAsKTkuMv9" role="25WWJ7">
                    <node concept="37vLTw" id="3wAsKTkuNPH" role="2Oq$k0">
                      <ref role="3cqZAo" node="3wAsKTkuG51" resolve="networkPrototype" />
                    </node>
                    <node concept="3Tsc0h" id="3wAsKTkuMvb" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3wAsKTkuMvc" role="3cqZAp">
              <node concept="2OqwBi" id="3wAsKTkuMvd" role="3clFbG">
                <node concept="37vLTw" id="3wAsKTkuMve" role="2Oq$k0">
                  <ref role="3cqZAo" node="5L1OxDulfLn" resolve="res" />
                </node>
                <node concept="X8dFx" id="3wAsKTkuMvf" role="2OqNvi">
                  <node concept="2OqwBi" id="3wAsKTkuMvg" role="25WWJ7">
                    <node concept="1PxgMI" id="3wAsKTkuMvh" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="3wAsKTkuMvi" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
                      </node>
                      <node concept="37vLTw" id="3wAsKTkuNZk" role="1m5AlR">
                        <ref role="3cqZAo" node="3wAsKTkuG51" resolve="networkPrototype" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="3wAsKTkuMvk" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3wAsKTkuMvl" role="3cqZAp">
              <node concept="2OqwBi" id="3wAsKTkuMvm" role="3clFbG">
                <node concept="37vLTw" id="3wAsKTkuMvn" role="2Oq$k0">
                  <ref role="3cqZAo" node="5L1OxDulfLn" resolve="res" />
                </node>
                <node concept="X8dFx" id="3wAsKTkuMvo" role="2OqNvi">
                  <node concept="2OqwBi" id="3wAsKTkuMvp" role="25WWJ7">
                    <node concept="37vLTw" id="3wAsKTkuOmx" role="2Oq$k0">
                      <ref role="3cqZAo" node="3wAsKTkuG51" resolve="networkPrototype" />
                    </node>
                    <node concept="2qgKlT" id="3wAsKTkuMvr" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:2lwHqHjRVNr" resolve="contextComponents" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3wAsKTkuH9Y" role="3clFbw">
            <node concept="37vLTw" id="3wAsKTkuG55" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTkuG51" resolve="networkPrototype" />
            </node>
            <node concept="3x8VRR" id="3wAsKTkuMqk" role="2OqNvi" />
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
      <property role="TrG5h" value="contextDataSources" />
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
            <property role="TrG5h" value="context" />
            <node concept="3Tqbb2" id="75nMhMfYWrm" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:4s7KBSjc3Il" resolve="IContext" />
            </node>
            <node concept="1rXfSq" id="75nMhMfZ0X$" role="33vP2m">
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="context" />
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
                <ref role="3cqZAo" node="75nMhMfYWrl" resolve="context" />
              </node>
              <node concept="2qgKlT" id="2lwHqHky_ea" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRZ6V" resolve="contextDataSources" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMfYXaa" role="jymVt">
      <property role="TrG5h" value="contextDataDestinations" />
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
            <property role="TrG5h" value="context" />
            <node concept="3Tqbb2" id="75nMhMfYXai" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:4s7KBSjc3Il" resolve="IContext" />
            </node>
            <node concept="1rXfSq" id="75nMhMfZ17s" role="33vP2m">
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="context" />
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
                <ref role="3cqZAo" node="75nMhMfYXah" resolve="context" />
              </node>
              <node concept="2qgKlT" id="2lwHqHky_XM" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRX1R" resolve="contextDataDestinations" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMfYXd4" role="jymVt">
      <property role="TrG5h" value="contextEventSources" />
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
            <property role="TrG5h" value="context" />
            <node concept="3Tqbb2" id="75nMhMfYXdc" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:4s7KBSjc3Il" resolve="IContext" />
            </node>
            <node concept="1rXfSq" id="75nMhMfZ1hn" role="33vP2m">
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="context" />
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
                <ref role="3cqZAo" node="75nMhMfYXdb" resolve="context" />
              </node>
              <node concept="2qgKlT" id="2lwHqHkyASV" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRZ9n" resolve="contextEventSources" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="75nMhMfYXuq" role="jymVt">
      <property role="TrG5h" value="contextEventDestinations" />
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
            <property role="TrG5h" value="context" />
            <node concept="3Tqbb2" id="75nMhMfYXuy" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:4s7KBSjc3Il" resolve="IContext" />
            </node>
            <node concept="1rXfSq" id="75nMhMfZ1rl" role="33vP2m">
              <ref role="37wK5l" node="75nMhMfYZSC" resolve="context" />
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
                <ref role="3cqZAo" node="75nMhMfYXux" resolve="context" />
              </node>
              <node concept="2qgKlT" id="2lwHqHkyBZX" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRZn8" resolve="contextEventDestinations" />
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
          <ref role="ehGHo" to="xiqq:uLhTRQXdkL" resolve="IComponentWithAdapters" />
        </node>
      </node>
      <node concept="3clFbS" id="75nMhMgipsp" role="3clF47">
        <node concept="3cpWs6" id="75nMhMgipsw" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMgipsx" role="3cqZAk">
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <node concept="2OqwBi" id="uLhTRR1S83" role="37wK5m">
              <node concept="37vLTw" id="uLhTRR1RSF" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMgipsn" resolve="component" />
              </node>
              <node concept="2qgKlT" id="uLhTRR1S_N" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:uLhTRQXdlm" resolve="getPlugs" />
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
          <ref role="ehGHo" to="xiqq:uLhTRQXdkL" resolve="IComponentWithAdapters" />
        </node>
      </node>
      <node concept="3clFbS" id="75nMhMgipsE" role="3clF47">
        <node concept="3cpWs6" id="75nMhMgipsL" role="3cqZAp">
          <node concept="2YIFZM" id="75nMhMgipsM" role="3cqZAk">
            <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
            <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
            <node concept="2OqwBi" id="uLhTRR1SJJ" role="37wK5m">
              <node concept="37vLTw" id="uLhTRR1SJK" role="2Oq$k0">
                <ref role="3cqZAo" node="75nMhMgipsC" resolve="component" />
              </node>
              <node concept="2qgKlT" id="uLhTRR1Tan" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:uLhTRQXezk" resolve="getSockets" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="75nMhMgipnT" role="jymVt" />
    <node concept="2YIFZL" id="75nMhMfYZSC" role="jymVt">
      <property role="TrG5h" value="context" />
      <node concept="3Tm6S6" id="75nMhMfYZSD" role="1B3o_S" />
      <node concept="3Tqbb2" id="75nMhMfYZSE" role="3clF45">
        <ref role="ehGHo" to="xiqq:4s7KBSjc3Il" resolve="IContext" />
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
                <node concept="chp4Y" id="4s7KBSjeQvT" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:4s7KBSjc3Il" resolve="IContext" />
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
    <property role="3GE5qa" value="network.connections.adapter" />
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
    <property role="3GE5qa" value="network.connections.adapter" />
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
  <node concept="1M2fIO" id="2lwHqHkyF8L">
    <ref role="1M2myG" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
    <node concept="1N5Pfh" id="2lwHqHkyF8M" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:2lwHqHkyF7b" resolve="decl" />
      <node concept="1dDu$B" id="2lwHqHkyF8Q" role="1N6uqs">
        <ref role="1dDu$A" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="uLhTRRmh$X">
    <property role="3GE5qa" value="system" />
    <ref role="1M2myG" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
    <node concept="1N5Pfh" id="uLhTRRmh$Y" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:uLhTRRmhk8" resolve="application" />
      <node concept="3dgokm" id="uLhTRRmh_2" role="1N6uqs">
        <node concept="3clFbS" id="uLhTRRmh_4" role="2VODD2">
          <node concept="3clFbF" id="uLhTRRmhC2" role="3cqZAp">
            <node concept="2YIFZM" id="uLhTRRmjyS" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="uLhTRRmiCM" role="37wK5m">
                <node concept="2OqwBi" id="uLhTRRmi1h" role="2Oq$k0">
                  <node concept="2rP1CM" id="uLhTRRmhOz" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="uLhTRRmiln" role="2OqNvi">
                    <node concept="1xMEDy" id="uLhTRRmilp" role="1xVPHs">
                      <node concept="chp4Y" id="uLhTRRmirN" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="uLhTRRmiP0" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="uLhTRRqOcn">
    <property role="3GE5qa" value="system" />
    <ref role="1M2myG" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="1N5Pfh" id="uLhTRRqOco" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:uLhTRRq_wx" resolve="device" />
      <node concept="3dgokm" id="uLhTRRqOcs" role="1N6uqs">
        <node concept="3clFbS" id="uLhTRRqOcu" role="2VODD2">
          <node concept="3clFbF" id="uLhTRRqOfs" role="3cqZAp">
            <node concept="2YIFZM" id="uLhTRRqQnG" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="uLhTRRqPtm" role="37wK5m">
                <node concept="2OqwBi" id="uLhTRRqOIV" role="2Oq$k0">
                  <node concept="2rP1CM" id="uLhTRRqOrX" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="uLhTRRqORm" role="2OqNvi">
                    <node concept="1xMEDy" id="uLhTRRqORo" role="1xVPHs">
                      <node concept="chp4Y" id="uLhTRRqOXM" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="uLhTRRqPD$" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRR7MVs" resolve="devices" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="uLhTRRsXJx" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:uLhTRRq_wz" resolve="resource" />
      <node concept="3dgokm" id="uLhTRRsXK9" role="1N6uqs">
        <node concept="3clFbS" id="uLhTRRsXKb" role="2VODD2">
          <node concept="3cpWs8" id="uLhTRRsYMu" role="3cqZAp">
            <node concept="3cpWsn" id="uLhTRRsYMv" role="3cpWs9">
              <property role="TrG5h" value="device" />
              <node concept="3Tqbb2" id="uLhTRRsYMt" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
              </node>
              <node concept="2OqwBi" id="uLhTRRsYMw" role="33vP2m">
                <node concept="3kakTB" id="uLhTRRsYMx" role="2Oq$k0" />
                <node concept="3TrEf2" id="uLhTRRsYMy" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRq_wx" resolve="device" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="uLhTRRsZS3" role="3cqZAp">
            <node concept="3cpWsn" id="uLhTRRsZS4" role="3cpWs9">
              <property role="TrG5h" value="res" />
              <node concept="_YKpA" id="uLhTRRsZRV" role="1tU5fm">
                <node concept="3Tqbb2" id="uLhTRRsZRY" role="_ZDj9">
                  <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
              <node concept="2ShNRf" id="uLhTRRsZS5" role="33vP2m">
                <node concept="Tc6Ow" id="uLhTRRsZS6" role="2ShVmc">
                  <node concept="3Tqbb2" id="uLhTRRsZS7" role="HW$YZ">
                    <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="uLhTRRsYWN" role="3cqZAp">
            <node concept="2OqwBi" id="uLhTRRt2bx" role="3clFbG">
              <node concept="37vLTw" id="uLhTRRsZS8" role="2Oq$k0">
                <ref role="3cqZAo" node="uLhTRRsZS4" resolve="res" />
              </node>
              <node concept="X8dFx" id="uLhTRRt9XX" role="2OqNvi">
                <node concept="2OqwBi" id="uLhTRRt9XZ" role="25WWJ7">
                  <node concept="37vLTw" id="uLhTRRt9Y0" role="2Oq$k0">
                    <ref role="3cqZAo" node="uLhTRRsYMv" resolve="device" />
                  </node>
                  <node concept="3Tsc0h" id="uLhTRRt9Y1" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="uLhTRRtaam" role="3cqZAp">
            <node concept="2OqwBi" id="uLhTRRtaan" role="3clFbG">
              <node concept="37vLTw" id="uLhTRRtaao" role="2Oq$k0">
                <ref role="3cqZAo" node="uLhTRRsZS4" resolve="res" />
              </node>
              <node concept="X8dFx" id="uLhTRRtaap" role="2OqNvi">
                <node concept="2OqwBi" id="uLhTRRtaaq" role="25WWJ7">
                  <node concept="2OqwBi" id="uLhTRRte3u" role="2Oq$k0">
                    <node concept="37vLTw" id="uLhTRRtaar" role="2Oq$k0">
                      <ref role="3cqZAo" node="uLhTRRsYMv" resolve="device" />
                    </node>
                    <node concept="3TrEf2" id="uLhTRRteGV" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:1WTKUmKKVP_" resolve="type" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="uLhTRRtfFz" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:2lwHqHk$uBA" resolve="resources" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="uLhTRRtkPB" role="3cqZAp">
            <node concept="2YIFZM" id="uLhTRRtl$2" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="uLhTRRtnq7" role="37wK5m">
                <ref role="3cqZAo" node="uLhTRRsZS4" resolve="res" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="uLhTRRvps_">
    <property role="3GE5qa" value="system" />
    <ref role="1M2myG" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
    <node concept="1N5Pfh" id="uLhTRRvpsA" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:uLhTRRtpn2" resolve="functionBlock" />
      <node concept="3dgokm" id="uLhTRRvpsE" role="1N6uqs">
        <node concept="3clFbS" id="uLhTRRvpsG" role="2VODD2">
          <node concept="3clFbF" id="uLhTRRvpvE" role="3cqZAp">
            <node concept="2YIFZM" id="uLhTRRvrBQ" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="uLhTRRvqo4" role="37wK5m">
                <node concept="2OqwBi" id="uLhTRRvpEM" role="2Oq$k0">
                  <node concept="3kakTB" id="uLhTRRvpNj" role="2Oq$k0" />
                  <node concept="3TrEf2" id="uLhTRRvpX8" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRtpn0" resolve="resource" />
                  </node>
                </node>
                <node concept="2qgKlT" id="uLhTRRvqYF" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:uLhTRRtpnV" resolve="functionBlocks" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="uLhTRRBI84">
    <property role="3GE5qa" value="system" />
    <ref role="1M2myG" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
    <node concept="1N5Pfh" id="uLhTRRBI87" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:uLhTRRmjJx" resolve="subapp" />
      <node concept="3dgokm" id="uLhTRRBI8b" role="1N6uqs">
        <node concept="3clFbS" id="uLhTRRBI8d" role="2VODD2">
          <node concept="3clFbF" id="uLhTRRBIbb" role="3cqZAp">
            <node concept="2YIFZM" id="uLhTRRBIg8" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="uLhTRRBJhT" role="37wK5m">
                <node concept="2OqwBi" id="uLhTRRBI_0" role="2Oq$k0">
                  <node concept="3kakTB" id="uLhTRRBIkr" role="2Oq$k0" />
                  <node concept="3TrEf2" id="uLhTRRBINT" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmjJr" resolve="parentApp" />
                  </node>
                </node>
                <node concept="2qgKlT" id="uLhTRRBJyJ" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:uLhTRRmhzD" resolve="subapplications" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="uLhTRRT2Px">
    <property role="3GE5qa" value="system" />
    <ref role="1M2myG" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
    <node concept="1N5Pfh" id="uLhTRRT2Py" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:uLhTRRmrd9" resolve="functionBlock" />
      <node concept="3dgokm" id="uLhTRRT2PA" role="1N6uqs">
        <node concept="3clFbS" id="uLhTRRT2PC" role="2VODD2">
          <node concept="3clFbF" id="uLhTRRT2SA" role="3cqZAp">
            <node concept="2YIFZM" id="uLhTRRT4FM" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="uLhTRRT3Fg" role="37wK5m">
                <node concept="2OqwBi" id="uLhTRRT34w" role="2Oq$k0">
                  <node concept="3kakTB" id="uLhTRRT2S_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="uLhTRRT3ew" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmrd7" resolve="application" />
                  </node>
                </node>
                <node concept="2qgKlT" id="uLhTRRT3SB" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:uLhTRRmowC" resolve="functionBlocks" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5s_pyghzCRH">
    <property role="3GE5qa" value="system" />
    <ref role="1M2myG" to="xiqq:5s_pyghzCOb" resolve="Link" />
    <node concept="1N5Pfh" id="5s_pyghzCRK" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:5s_pyghzCOh" resolve="segment" />
      <node concept="3dgokm" id="5s_pyghzCRO" role="1N6uqs">
        <node concept="3clFbS" id="5s_pyghzCRQ" role="2VODD2">
          <node concept="3clFbF" id="5s_pyghzD0L" role="3cqZAp">
            <node concept="2YIFZM" id="5s_pyghzFfT" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="5s_pyghzEmN" role="37wK5m">
                <node concept="1PxgMI" id="5s_pyghzDZN" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5s_pyghzE9l" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="5s_pyghzDdt" role="1m5AlR">
                    <node concept="3kakTB" id="5s_pyghzD0K" role="2Oq$k0" />
                    <node concept="1mfA1w" id="5s_pyghzDp2" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="5s_pyghzEzV" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5s_pyght$Xg" resolve="segments" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="23XkovWgxDt">
    <property role="3GE5qa" value="interface" />
    <ref role="1M2myG" to="xiqq:3HBlKeoYsiT" resolve="EventAssociation" />
    <node concept="1N5Pfh" id="23XkovWgxDu" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:3HBlKeoYsiU" resolve="declaration" />
      <node concept="3dgokm" id="23XkovWgxDy" role="1N6uqs">
        <node concept="3clFbS" id="23XkovWgxD$" role="2VODD2">
          <node concept="3cpWs8" id="23XkovWgyAz" role="3cqZAp">
            <node concept="3cpWsn" id="23XkovWgyA$" role="3cpWs9">
              <property role="TrG5h" value="event" />
              <node concept="3Tqbb2" id="23XkovWgyAy" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
              </node>
              <node concept="2OqwBi" id="23XkovWgyA_" role="33vP2m">
                <node concept="2rP1CM" id="23XkovWgyAA" role="2Oq$k0" />
                <node concept="2Xjw5R" id="23XkovWgyAB" role="2OqNvi">
                  <node concept="1xMEDy" id="23XkovWgyAC" role="1xVPHs">
                    <node concept="chp4Y" id="23XkovWg$$5" role="ri$Ld">
                      <ref role="cht4Q" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="23XkovWg_2H" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="23XkovWg$Jh" role="3cqZAp">
            <node concept="3clFbS" id="23XkovWg$Jj" role="3clFbx">
              <node concept="3cpWs6" id="23XkovWgCjE" role="3cqZAp">
                <node concept="2YIFZM" id="23XkovWgCvP" role="3cqZAk">
                  <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2OqwBi" id="23XkovWgJGF" role="37wK5m">
                    <node concept="1PxgMI" id="23XkovWgIYS" role="2Oq$k0">
                      <node concept="chp4Y" id="23XkovWgJfZ" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                      </node>
                      <node concept="2OqwBi" id="23XkovWgDse" role="1m5AlR">
                        <node concept="37vLTw" id="23XkovWgD1b" role="2Oq$k0">
                          <ref role="3cqZAo" node="23XkovWgyA$" resolve="event" />
                        </node>
                        <node concept="1mfA1w" id="23XkovWgGeu" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="23XkovWgKbL" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="23XkovWg_ip" role="3clFbw">
              <node concept="37vLTw" id="23XkovWg$OB" role="2Oq$k0">
                <ref role="3cqZAo" node="23XkovWgyA$" resolve="event" />
              </node>
              <node concept="1BlSNk" id="23XkovWgC40" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
              </node>
            </node>
            <node concept="3eNFk2" id="23XkovWgKN2" role="3eNLev">
              <node concept="3clFbS" id="23XkovWgKN3" role="3eOfB_">
                <node concept="3cpWs6" id="23XkovWgN1e" role="3cqZAp">
                  <node concept="2YIFZM" id="23XkovWgN1f" role="3cqZAk">
                    <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                    <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <node concept="2OqwBi" id="23XkovWgN1g" role="37wK5m">
                      <node concept="1PxgMI" id="23XkovWgN1h" role="2Oq$k0">
                        <node concept="chp4Y" id="23XkovWgN1i" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                        </node>
                        <node concept="2OqwBi" id="23XkovWgN1j" role="1m5AlR">
                          <node concept="37vLTw" id="23XkovWgN1k" role="2Oq$k0">
                            <ref role="3cqZAo" node="23XkovWgyA$" resolve="event" />
                          </node>
                          <node concept="1mfA1w" id="23XkovWgN1l" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="23XkovWgN_F" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="23XkovWgM71" role="3eO9$A">
                <node concept="37vLTw" id="23XkovWgM72" role="2Oq$k0">
                  <ref role="3cqZAo" node="23XkovWgyA$" resolve="event" />
                </node>
                <node concept="1BlSNk" id="23XkovWgM73" role="2OqNvi">
                  <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                  <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="23XkovWgNV3" role="3cqZAp">
            <node concept="10Nm6u" id="23XkovWgP36" role="3cqZAk" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="23XkovWiYgB">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1M2myG" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
    <node concept="1N5Pfh" id="23XkovWiYgE" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
      <node concept="1dDu$B" id="23XkovWiYjD" role="1N6uqs">
        <ref role="1dDu$A" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
      </node>
    </node>
    <node concept="1N5Pfh" id="23XkovWiYsi" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
      <node concept="1dDu$B" id="23XkovWiYso" role="1N6uqs">
        <ref role="1dDu$A" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="23XkovWmEM4">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1M2myG" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
    <node concept="1N5Pfh" id="23XkovWmEM5" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:3HBlKeoZ0Ut" resolve="algorithm" />
      <node concept="1dDu$B" id="23XkovWmEM9" role="1N6uqs">
        <ref role="1dDu$A" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3IX4BsKgDng">
    <property role="3GE5qa" value="canvas" />
    <ref role="1M2myG" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
    <node concept="EnEH3" id="3IX4BsKgDnh" role="1MhHOB">
      <ref role="EomxK" to="xiqq:5fP$Xwj3irK" resolve="x" />
      <node concept="QB0g5" id="3IX4BsKgDyh" role="QCWH9">
        <node concept="3clFbS" id="3IX4BsKgDyi" role="2VODD2">
          <node concept="3J1_TO" id="3IX4BsKgEO8" role="3cqZAp">
            <node concept="3clFbS" id="3IX4BsKgEO9" role="1zxBo7">
              <node concept="3clFbF" id="3IX4BsKgDDA" role="3cqZAp">
                <node concept="2YIFZM" id="3IX4BsKaJWl" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                  <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
                  <node concept="1Wqviy" id="3IX4BsKgEcq" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="3IX4BsKgEr2" role="3cqZAp">
                <node concept="3clFbT" id="3IX4BsKgEzW" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="3IX4BsKgEOa" role="1zxBo5">
              <node concept="XOnhg" id="3IX4BsKgEOb" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="b3uDW19oxLh" role="1tU5fm">
                  <node concept="3uibUv" id="3IX4BsKgFy6" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3IX4BsKgEOd" role="1zc67A">
                <node concept="3cpWs6" id="3IX4BsKgFYm" role="3cqZAp">
                  <node concept="3clFbT" id="3IX4BsKgG7o" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="3IX4BsKgGpB" role="1MhHOB">
      <ref role="EomxK" to="xiqq:5fP$Xwj3irM" resolve="y" />
      <node concept="QB0g5" id="3IX4BsKgGpC" role="QCWH9">
        <node concept="3clFbS" id="3IX4BsKgGpD" role="2VODD2">
          <node concept="3J1_TO" id="3IX4BsKgGpE" role="3cqZAp">
            <node concept="3clFbS" id="3IX4BsKgGpF" role="1zxBo7">
              <node concept="3clFbF" id="3IX4BsKgGpG" role="3cqZAp">
                <node concept="2YIFZM" id="3IX4BsKgGpH" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
                  <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                  <node concept="1Wqviy" id="3IX4BsKgGpI" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="3IX4BsKgGpJ" role="3cqZAp">
                <node concept="3clFbT" id="3IX4BsKgGpK" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="3IX4BsKgGpL" role="1zxBo5">
              <node concept="XOnhg" id="3IX4BsKgGpM" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="b3uDW19oGEz" role="1tU5fm">
                  <node concept="3uibUv" id="3IX4BsKgGpN" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3IX4BsKgGpO" role="1zc67A">
                <node concept="3cpWs6" id="3IX4BsKgGpP" role="3cqZAp">
                  <node concept="3clFbT" id="3IX4BsKgGpQ" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3IX4BsKoiaN">
    <property role="3GE5qa" value="canvas" />
    <ref role="1M2myG" to="xiqq:3IX4BsKohXi" resolve="ConnectionPath" />
  </node>
  <node concept="1M2fIO" id="3IX4BsKoieg">
    <property role="3GE5qa" value="canvas" />
    <ref role="1M2myG" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
    <node concept="EnEH3" id="3IX4BsKoitE" role="1MhHOB">
      <ref role="EomxK" to="xiqq:3IX4BsKoibI" resolve="dx" />
      <node concept="QB0g5" id="3IX4BsKoitF" role="QCWH9">
        <node concept="3clFbS" id="3IX4BsKoitG" role="2VODD2">
          <node concept="3J1_TO" id="3IX4BsKoitH" role="3cqZAp">
            <node concept="3clFbS" id="3IX4BsKoitI" role="1zxBo7">
              <node concept="3clFbF" id="3IX4BsKoitJ" role="3cqZAp">
                <node concept="2YIFZM" id="3IX4BsKoitK" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                  <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
                  <node concept="1Wqviy" id="3IX4BsKoitL" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="3IX4BsKoitM" role="3cqZAp">
                <node concept="3clFbT" id="3IX4BsKoitN" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="3IX4BsKoitO" role="1zxBo5">
              <node concept="XOnhg" id="3IX4BsKoitP" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="b3uDW199gyH" role="1tU5fm">
                  <node concept="3uibUv" id="3IX4BsKoitQ" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3IX4BsKoitR" role="1zc67A">
                <node concept="3cpWs6" id="3IX4BsKoitS" role="3cqZAp">
                  <node concept="3clFbT" id="3IX4BsKoitT" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3IX4BsKombp">
    <property role="3GE5qa" value="canvas" />
    <ref role="1M2myG" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
    <node concept="EnEH3" id="3IX4BsKompN" role="1MhHOB">
      <ref role="EomxK" to="xiqq:3IX4BsKomau" resolve="dx1" />
      <node concept="QB0g5" id="3IX4BsKompO" role="QCWH9">
        <node concept="3clFbS" id="3IX4BsKompP" role="2VODD2">
          <node concept="3J1_TO" id="3IX4BsKompQ" role="3cqZAp">
            <node concept="3clFbS" id="3IX4BsKompR" role="1zxBo7">
              <node concept="3clFbF" id="3IX4BsKompS" role="3cqZAp">
                <node concept="2YIFZM" id="3IX4BsKompT" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                  <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
                  <node concept="1Wqviy" id="3IX4BsKompU" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="3IX4BsKompV" role="3cqZAp">
                <node concept="3clFbT" id="3IX4BsKompW" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="3IX4BsKompX" role="1zxBo5">
              <node concept="XOnhg" id="3IX4BsKompY" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="b3uDW199oEV" role="1tU5fm">
                  <node concept="3uibUv" id="3IX4BsKompZ" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3IX4BsKomq0" role="1zc67A">
                <node concept="3cpWs6" id="3IX4BsKomq1" role="3cqZAp">
                  <node concept="3clFbT" id="3IX4BsKomq2" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="3IX4BsKomCF" role="1MhHOB">
      <ref role="EomxK" to="xiqq:3IX4BsKomaw" resolve="dy" />
      <node concept="QB0g5" id="3IX4BsKomCG" role="QCWH9">
        <node concept="3clFbS" id="3IX4BsKomCH" role="2VODD2">
          <node concept="3J1_TO" id="3IX4BsKomCI" role="3cqZAp">
            <node concept="3clFbS" id="3IX4BsKomCJ" role="1zxBo7">
              <node concept="3clFbF" id="3IX4BsKomCK" role="3cqZAp">
                <node concept="2YIFZM" id="3IX4BsKomCL" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                  <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
                  <node concept="1Wqviy" id="3IX4BsKomCM" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="3IX4BsKomCN" role="3cqZAp">
                <node concept="3clFbT" id="3IX4BsKomCO" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="3IX4BsKomCP" role="1zxBo5">
              <node concept="XOnhg" id="3IX4BsKomCQ" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="b3uDW199p8F" role="1tU5fm">
                  <node concept="3uibUv" id="3IX4BsKomCR" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3IX4BsKomCS" role="1zc67A">
                <node concept="3cpWs6" id="3IX4BsKomCT" role="3cqZAp">
                  <node concept="3clFbT" id="3IX4BsKomCU" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="3IX4BsKomS1" role="1MhHOB">
      <ref role="EomxK" to="xiqq:3IX4BsKomaz" resolve="dx2" />
      <node concept="QB0g5" id="3IX4BsKomS2" role="QCWH9">
        <node concept="3clFbS" id="3IX4BsKomS3" role="2VODD2">
          <node concept="3J1_TO" id="3IX4BsKomS4" role="3cqZAp">
            <node concept="3clFbS" id="3IX4BsKomS5" role="1zxBo7">
              <node concept="3clFbF" id="3IX4BsKomS6" role="3cqZAp">
                <node concept="2YIFZM" id="3IX4BsKomS7" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                  <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
                  <node concept="1Wqviy" id="3IX4BsKomS8" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="3IX4BsKomS9" role="3cqZAp">
                <node concept="3clFbT" id="3IX4BsKomSa" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="3IX4BsKomSb" role="1zxBo5">
              <node concept="XOnhg" id="3IX4BsKomSc" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="b3uDW199pDv" role="1tU5fm">
                  <node concept="3uibUv" id="3IX4BsKomSd" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3IX4BsKomSe" role="1zc67A">
                <node concept="3cpWs6" id="3IX4BsKomSf" role="3cqZAp">
                  <node concept="3clFbT" id="3IX4BsKomSg" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3hdyZKs8YDq">
    <property role="3GE5qa" value="network" />
    <ref role="1M2myG" to="xiqq:1fUwyp9CzsN" resolve="EndpointCoordinate" />
    <node concept="1N5Pfh" id="3hdyZKs8YDr" role="1Mr941">
      <ref role="1N5Vy1" to="xiqq:_yMviEJHiZ" resolve="endpoint" />
      <node concept="3dgokm" id="3hdyZKs8YDv" role="1N6uqs">
        <node concept="3clFbS" id="3hdyZKs8YDx" role="2VODD2">
          <node concept="3cpWs6" id="3hdyZKs8YIq" role="3cqZAp">
            <node concept="2YIFZM" id="40_VC_36W1w" role="3cqZAk">
              <ref role="1Pybhc" to="o8zo:7ipADkTevLt" resolve="CompositeScope" />
              <ref role="37wK5l" to="o8zo:7ipADkTevQ_" resolve="createComposite" />
              <node concept="2YIFZM" id="3hdyZKs8YIr" role="37wK5m">
                <ref role="37wK5l" node="75nMhMfYWrA" resolve="contextDataSources" />
                <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
                <node concept="2rP1CM" id="3hdyZKs8YIs" role="37wK5m" />
              </node>
              <node concept="2YIFZM" id="40_VC_36WlF" role="37wK5m">
                <ref role="37wK5l" node="75nMhMfYXaa" resolve="contextDataDestinations" />
                <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
                <node concept="2rP1CM" id="40_VC_36WlG" role="37wK5m" />
              </node>
              <node concept="2YIFZM" id="40_VC_36Wpl" role="37wK5m">
                <ref role="37wK5l" node="75nMhMfYXd4" resolve="contextEventSources" />
                <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
                <node concept="2rP1CM" id="40_VC_36Wpm" role="37wK5m" />
              </node>
              <node concept="2YIFZM" id="40_VC_36WsZ" role="37wK5m">
                <ref role="37wK5l" node="75nMhMfYXuq" resolve="contextEventDestinations" />
                <ref role="1Pybhc" node="75nMhMfYJQt" resolve="EndpointScopes" />
                <node concept="2rP1CM" id="40_VC_36Wt0" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

