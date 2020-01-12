<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(mps.lang.iec61499.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(mps.lang.ST.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="13h7C7" id="61urdBygzY8">
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="13h7C2" to="xiqq:PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="13i0hz" id="61urdBygsoc" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="61urdBygsop" role="1B3o_S" />
      <node concept="3clFbS" id="61urdBygsoq" role="3clF47">
        <node concept="3cpWs6" id="61urdByguyw" role="3cqZAp">
          <node concept="3cpWs3" id="61urdBygxEt" role="3cqZAk">
            <node concept="2OqwBi" id="61urdBygyTw" role="3uHU7w">
              <node concept="2OqwBi" id="61urdBygxZN" role="2Oq$k0">
                <node concept="13iPFW" id="61urdBygxNy" role="2Oq$k0" />
                <node concept="3TrEf2" id="61urdBygyuo" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="61urdBygzeY" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="61urdBygwMa" role="3uHU7B">
              <node concept="2OqwBi" id="61urdBygvQr" role="3uHU7B">
                <node concept="2OqwBi" id="61urdByguWs" role="2Oq$k0">
                  <node concept="13iPFW" id="61urdByguJ4" role="2Oq$k0" />
                  <node concept="3TrEf2" id="61urdBygvmB" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
                <node concept="2qgKlT" id="uLhTRR3PZt" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="61urdBygwQV" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="61urdBygsor" role="3clF45" />
    </node>
    <node concept="13i0hz" id="75nMhMfYu1I" role="13h7CS">
      <property role="TrG5h" value="create" />
      <property role="2Ki8OM" value="true" />
      <node concept="37vLTG" id="75nMhMfYu1J" role="3clF46">
        <property role="TrG5h" value="isInput" />
        <node concept="10P_77" id="75nMhMfYu1K" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="75nMhMfYu1L" role="1B3o_S" />
      <node concept="3Tqbb2" id="75nMhMfYu1M" role="3clF45">
        <ref role="ehGHo" to="xiqq:PI_pXYus4l" resolve="ComponentEventEndpoint" />
      </node>
      <node concept="3clFbS" id="75nMhMfYu1N" role="3clF47">
        <node concept="3clFbJ" id="75nMhMfYu1O" role="3cqZAp">
          <node concept="37vLTw" id="75nMhMfYu1P" role="3clFbw">
            <ref role="3cqZAo" node="75nMhMfYu1J" resolve="isInput" />
          </node>
          <node concept="3clFbS" id="75nMhMfYu1Q" role="3clFbx">
            <node concept="3cpWs6" id="75nMhMfYu1R" role="3cqZAp">
              <node concept="2ShNRf" id="75nMhMfYu1S" role="3cqZAk">
                <node concept="3zrR0B" id="75nMhMfYu1T" role="2ShVmc">
                  <node concept="3Tqbb2" id="75nMhMfYu1U" role="3zrR0E">
                    <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="75nMhMfYu1V" role="9aQIa">
            <node concept="3clFbS" id="75nMhMfYu1W" role="9aQI4">
              <node concept="3cpWs6" id="75nMhMfYu1X" role="3cqZAp">
                <node concept="2ShNRf" id="75nMhMfYu1Y" role="3cqZAk">
                  <node concept="3zrR0B" id="75nMhMfYu1Z" role="2ShVmc">
                    <node concept="3Tqbb2" id="75nMhMfYu20" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="61urdBygzY9" role="13h7CW">
      <node concept="3clFbS" id="61urdBygzYa" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="61urdByg$ib">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="13h7C2" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="13hLZK" id="61urdByg$ic" role="13h7CW">
      <node concept="3clFbS" id="61urdByg$id" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="61urdByg$tE" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="61urdByg$tF" role="1B3o_S" />
      <node concept="3clFbS" id="61urdByg$tG" role="3clF47">
        <node concept="3cpWs6" id="61urdByg$tO" role="3cqZAp">
          <node concept="3cpWs3" id="61urdByg$tP" role="3cqZAk">
            <node concept="2OqwBi" id="61urdByg$tQ" role="3uHU7w">
              <node concept="2OqwBi" id="61urdByg$tR" role="2Oq$k0">
                <node concept="13iPFW" id="61urdByg$tS" role="2Oq$k0" />
                <node concept="3TrEf2" id="61urdByg$tT" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="61urdByg$tU" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="61urdByg$tV" role="3uHU7B">
              <node concept="2OqwBi" id="61urdByg$tW" role="3uHU7B">
                <node concept="2OqwBi" id="61urdByg$tX" role="2Oq$k0">
                  <node concept="13iPFW" id="61urdByg$tY" role="2Oq$k0" />
                  <node concept="3TrEf2" id="61urdByg$tZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                  </node>
                </node>
                <node concept="2qgKlT" id="uLhTRR3OWY" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="61urdByg$u1" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="61urdByg$ua" role="3clF45" />
    </node>
    <node concept="13i0hz" id="75nMhMfYrW8" role="13h7CS">
      <property role="TrG5h" value="create" />
      <property role="2Ki8OM" value="true" />
      <node concept="37vLTG" id="75nMhMfYs8Z" role="3clF46">
        <property role="TrG5h" value="isInput" />
        <node concept="10P_77" id="75nMhMfYs9d" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="75nMhMfYrW9" role="1B3o_S" />
      <node concept="3Tqbb2" id="75nMhMfYs7$" role="3clF45">
        <ref role="ehGHo" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
      </node>
      <node concept="3clFbS" id="75nMhMfYrWb" role="3clF47">
        <node concept="3clFbJ" id="75nMhMfYs9X" role="3cqZAp">
          <node concept="37vLTw" id="75nMhMfYsah" role="3clFbw">
            <ref role="3cqZAo" node="75nMhMfYs8Z" resolve="isInput" />
          </node>
          <node concept="3clFbS" id="75nMhMfYs9Z" role="3clFbx">
            <node concept="3cpWs6" id="75nMhMfYsax" role="3cqZAp">
              <node concept="2ShNRf" id="75nMhMfYsb0" role="3cqZAk">
                <node concept="3zrR0B" id="75nMhMfYth1" role="2ShVmc">
                  <node concept="3Tqbb2" id="75nMhMfYth3" role="3zrR0E">
                    <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="75nMhMfYti_" role="9aQIa">
            <node concept="3clFbS" id="75nMhMfYtiA" role="9aQI4">
              <node concept="3cpWs6" id="75nMhMfYtjU" role="3cqZAp">
                <node concept="2ShNRf" id="75nMhMfYtlb" role="3cqZAk">
                  <node concept="3zrR0B" id="75nMhMfYtsZ" role="2ShVmc">
                    <node concept="3Tqbb2" id="75nMhMfYtt1" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
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
  <node concept="13h7C7" id="61urdByg_Fh">
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="13h7C2" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
    <node concept="13i0hz" id="61urdByg_MH" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="61urdByg_MI" role="1B3o_S" />
      <node concept="3clFbS" id="61urdByg_MJ" role="3clF47">
        <node concept="3clFbF" id="61urdByg_ZI" role="3cqZAp">
          <node concept="3cpWs3" id="61urdBygDyn" role="3clFbG">
            <node concept="2OqwBi" id="61urdBygEJO" role="3uHU7w">
              <node concept="2OqwBi" id="61urdBygDXA" role="2Oq$k0">
                <node concept="13iPFW" id="61urdBygDGM" role="2Oq$k0" />
                <node concept="3TrEf2" id="61urdBygEqn" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                </node>
              </node>
              <node concept="2qgKlT" id="61urdBygFj2" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
            <node concept="3cpWs3" id="61urdBygC8J" role="3uHU7B">
              <node concept="2OqwBi" id="61urdBygAJZ" role="3uHU7B">
                <node concept="2OqwBi" id="61urdBygA8k" role="2Oq$k0">
                  <node concept="13iPFW" id="61urdByg_ZH" role="2Oq$k0" />
                  <node concept="3TrEf2" id="61urdBygArs" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                  </node>
                </node>
                <node concept="2qgKlT" id="61urdBygBbf" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="61urdBygCeQ" role="3uHU7w">
                <property role="Xl_RC" value=" -&gt; " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="61urdByg_Nd" role="3clF45" />
    </node>
    <node concept="13hLZK" id="61urdByg_Fi" role="13h7CW">
      <node concept="3clFbS" id="61urdByg_Fj" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="61urdBygFx9">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="13h7C2" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
    <node concept="13i0hz" id="61urdBygFC_" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="61urdBygFCA" role="1B3o_S" />
      <node concept="3clFbS" id="61urdBygFCB" role="3clF47">
        <node concept="3clFbF" id="61urdBygFCC" role="3cqZAp">
          <node concept="3cpWs3" id="61urdBygFCD" role="3clFbG">
            <node concept="2OqwBi" id="61urdBygFCE" role="3uHU7w">
              <node concept="2OqwBi" id="61urdBygFCF" role="2Oq$k0">
                <node concept="13iPFW" id="61urdBygFCG" role="2Oq$k0" />
                <node concept="3TrEf2" id="61urdBygFCH" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                </node>
              </node>
              <node concept="2qgKlT" id="61urdBygFCI" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
            <node concept="3cpWs3" id="61urdBygFCJ" role="3uHU7B">
              <node concept="2OqwBi" id="61urdBygFCK" role="3uHU7B">
                <node concept="2OqwBi" id="61urdBygFCL" role="2Oq$k0">
                  <node concept="13iPFW" id="61urdBygFCM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="61urdBygFCN" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
                  </node>
                </node>
                <node concept="2qgKlT" id="61urdBygFCO" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="61urdBygFCP" role="3uHU7w">
                <property role="Xl_RC" value=" -&gt; " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="61urdBygFCQ" role="3clF45" />
    </node>
    <node concept="13hLZK" id="61urdBygFxa" role="13h7CW">
      <node concept="3clFbS" id="61urdBygFxb" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1zB5ET5xzqc">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:1zB5ET5xzpM" resolve="AlgorithmBody" />
    <node concept="13i0hz" id="1zB5ET5xzrF" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="languageType" />
      <node concept="3Tm1VV" id="1zB5ET5xzrG" role="1B3o_S" />
      <node concept="17QB3L" id="1zB5ET5xzrV" role="3clF45" />
      <node concept="3clFbS" id="1zB5ET5xzrI" role="3clF47" />
    </node>
    <node concept="13i0hz" id="1zB5ET5xzsQ" role="13h7CS">
      <property role="TrG5h" value="languageTypeSafe" />
      <node concept="3Tm1VV" id="1zB5ET5xzsR" role="1B3o_S" />
      <node concept="17QB3L" id="1zB5ET5xztq" role="3clF45" />
      <node concept="3clFbS" id="1zB5ET5xzsT" role="3clF47">
        <node concept="SfApY" id="1zB5ET5xzu5" role="3cqZAp">
          <node concept="3clFbS" id="1zB5ET5xzu6" role="SfCbr">
            <node concept="3cpWs6" id="1zB5ET5xzxz" role="3cqZAp">
              <node concept="BsUDl" id="1zB5ET5xzy1" role="3cqZAk">
                <ref role="37wK5l" node="1zB5ET5xzrF" resolve="languageType" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1zB5ET5xzu7" role="TEbGg">
            <node concept="3cpWsn" id="1zB5ET5xzu8" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="1zB5ET5xzuv" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="1zB5ET5xzua" role="TDEfX">
              <node concept="3cpWs6" id="1zB5ET5xzyv" role="3cqZAp">
                <node concept="Xl_RD" id="1zB5ET5xzz7" role="3cqZAk">
                  <property role="Xl_RC" value="&lt;unknown&gt;" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="1zB5ET5xzqd" role="13h7CW">
      <node concept="3clFbS" id="1zB5ET5xzqe" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1zB5ET5$GCj">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:1zB5ET5$GBR" resolve="STAlgorithmBody" />
    <node concept="13hLZK" id="1zB5ET5$GCk" role="13h7CW">
      <node concept="3clFbS" id="1zB5ET5$GCl" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1zB5ET5$GCu" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="languageType" />
      <ref role="13i0hy" node="1zB5ET5xzrF" resolve="languageType" />
      <node concept="3Tm1VV" id="1zB5ET5$GCv" role="1B3o_S" />
      <node concept="3clFbS" id="1zB5ET5$GCy" role="3clF47">
        <node concept="3cpWs6" id="1zB5ET5$GCK" role="3cqZAp">
          <node concept="Xl_RD" id="1zB5ET5$GCY" role="3cqZAk">
            <property role="Xl_RC" value="ST" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1zB5ET5$GCz" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="37fub3vnbaH">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="13h7C2" to="xiqq:37fub3vlDyx" resolve="ContextDataEndpoint" />
    <node concept="13hLZK" id="37fub3vnbaI" role="13h7CW">
      <node concept="3clFbS" id="37fub3vnbaJ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="37fub3vnbb8" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="37fub3vnbbl" role="1B3o_S" />
      <node concept="3clFbS" id="37fub3vnbbm" role="3clF47">
        <node concept="3cpWs6" id="37fub3vnbjk" role="3cqZAp">
          <node concept="2OqwBi" id="37fub3vnc4w" role="3cqZAk">
            <node concept="2OqwBi" id="37fub3vnbsT" role="2Oq$k0">
              <node concept="13iPFW" id="37fub3vnbjX" role="2Oq$k0" />
              <node concept="3TrEf2" id="37fub3vnbBz" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
              </node>
            </node>
            <node concept="3TrcHB" id="37fub3vncCk" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="37fub3vnbbn" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="75nMhMfIPx8">
    <property role="3GE5qa" value="network.connections.adapter" />
    <ref role="13h7C2" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
    <node concept="13hLZK" id="75nMhMfIPx9" role="13h7CW">
      <node concept="3clFbS" id="75nMhMfIPxa" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="75nMhMfIPxj" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="75nMhMfIPxw" role="1B3o_S" />
      <node concept="3clFbS" id="75nMhMfIPxx" role="3clF47">
        <node concept="3clFbF" id="75nMhMfIPDu" role="3cqZAp">
          <node concept="3cpWs3" id="75nMhMfISlL" role="3clFbG">
            <node concept="2OqwBi" id="75nMhMfITKg" role="3uHU7w">
              <node concept="2OqwBi" id="75nMhMfISEb" role="2Oq$k0">
                <node concept="13iPFW" id="75nMhMfISuy" role="2Oq$k0" />
                <node concept="3TrEf2" id="75nMhMfITev" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="75nMhMfIUpM" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="75nMhMfIRGY" role="3uHU7B">
              <node concept="2OqwBi" id="75nMhMfIQpV" role="3uHU7B">
                <node concept="2OqwBi" id="75nMhMfIPMm" role="2Oq$k0">
                  <node concept="13iPFW" id="75nMhMfIPDp" role="2Oq$k0" />
                  <node concept="3TrEf2" id="75nMhMfIPWY" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                  </node>
                </node>
                <node concept="2qgKlT" id="uLhTRR3RcO" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="75nMhMfIRLp" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="75nMhMfIPxy" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="75nMhMfIWCd">
    <property role="3GE5qa" value="network.connections.adapter" />
    <ref role="13h7C2" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
    <node concept="13i0hz" id="75nMhMfIWCo" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="75nMhMfIWCp" role="1B3o_S" />
      <node concept="3clFbS" id="75nMhMfIWCq" role="3clF47">
        <node concept="3clFbF" id="75nMhMfIWCr" role="3cqZAp">
          <node concept="3cpWs3" id="75nMhMfIZLy" role="3clFbG">
            <node concept="3cpWs3" id="75nMhMfJ0_U" role="3uHU7B">
              <node concept="Xl_RD" id="75nMhMfJ0_X" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
              <node concept="2OqwBi" id="75nMhMfIYtP" role="3uHU7B">
                <node concept="2OqwBi" id="75nMhMfIXAK" role="2Oq$k0">
                  <node concept="13iPFW" id="75nMhMfIXsu" role="2Oq$k0" />
                  <node concept="3TrEf2" id="75nMhMfIYaq" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                  </node>
                </node>
                <node concept="2qgKlT" id="uLhTRR3S9P" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="75nMhMfIWCs" role="3uHU7w">
              <node concept="2OqwBi" id="75nMhMfIWCt" role="2Oq$k0">
                <node concept="13iPFW" id="75nMhMfIWCu" role="2Oq$k0" />
                <node concept="3TrEf2" id="75nMhMfIWCv" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:75nMhMfIWB0" resolve="declaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="75nMhMfIWCw" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="75nMhMfIWCx" role="3clF45" />
    </node>
    <node concept="13hLZK" id="75nMhMfIWCe" role="13h7CW">
      <node concept="3clFbS" id="75nMhMfIWCf" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="75nMhMfQOuT">
    <property role="3GE5qa" value="network.connections.event" />
    <ref role="13h7C2" to="xiqq:75nMhMfQOtH" resolve="ContextEventEndpoint" />
    <node concept="13hLZK" id="75nMhMfQOuU" role="13h7CW">
      <node concept="3clFbS" id="75nMhMfQOuV" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="75nMhMfQOvk" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="75nMhMfQOvx" role="1B3o_S" />
      <node concept="3clFbS" id="75nMhMfQOvy" role="3clF47">
        <node concept="3clFbF" id="75nMhMfQOBB" role="3cqZAp">
          <node concept="2OqwBi" id="75nMhMfQPx0" role="3clFbG">
            <node concept="2OqwBi" id="75nMhMfQOKn" role="2Oq$k0">
              <node concept="13iPFW" id="75nMhMfQOBy" role="2Oq$k0" />
              <node concept="3TrEf2" id="75nMhMfQPcr" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
              </node>
            </node>
            <node concept="3TrcHB" id="75nMhMfQQ41" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="75nMhMfQOvz" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5L1OxDukYcj">
    <property role="3GE5qa" value="network.fb" />
    <ref role="13h7C2" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
    <node concept="13i0hz" id="5L1OxDukYcu" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="eventSources" />
      <node concept="3Tm1VV" id="5L1OxDukYcv" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYcx" role="3clF47" />
      <node concept="2I9FWS" id="5L1OxDukYdp" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYdN" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="eventDestinations" />
      <node concept="3Tm1VV" id="5L1OxDukYdO" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYdP" role="3clF47" />
      <node concept="2I9FWS" id="5L1OxDukYdQ" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYe7" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="dataSources" />
      <node concept="3Tm1VV" id="5L1OxDukYe8" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYe9" role="3clF47" />
      <node concept="2I9FWS" id="5L1OxDukYea" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYen" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="dataDestinations" />
      <node concept="3Tm1VV" id="5L1OxDukYeo" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYep" role="3clF47" />
      <node concept="2I9FWS" id="5L1OxDukYeq" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13hLZK" id="5L1OxDukYck" role="13h7CW">
      <node concept="3clFbS" id="5L1OxDukYcl" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5L1OxDukYif">
    <property role="3GE5qa" value="network.fb" />
    <ref role="13h7C2" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
    <node concept="13hLZK" id="5L1OxDukYig" role="13h7CW">
      <node concept="3clFbS" id="5L1OxDukYih" role="2VODD2">
        <node concept="3clFbF" id="3IX4BsKatWq" role="3cqZAp">
          <node concept="37vLTI" id="3IX4BsKavd0" role="3clFbG">
            <node concept="2ShNRf" id="3IX4BsKavhX" role="37vLTx">
              <node concept="3zrR0B" id="3IX4BsKavhV" role="2ShVmc">
                <node concept="3Tqbb2" id="3IX4BsKavhW" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3IX4BsKau6A" role="37vLTJ">
              <node concept="13iPFW" id="3IX4BsKatWp" role="2Oq$k0" />
              <node concept="3TrEf2" id="3IX4BsKauQs" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3IX4BsKatOx" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYiq" role="13h7CS">
      <property role="TrG5h" value="eventSources" />
      <ref role="13i0hy" node="5L1OxDukYcu" resolve="eventSources" />
      <node concept="3Tm1VV" id="5L1OxDukYir" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYiu" role="3clF47">
        <node concept="3clFbF" id="5L1OxDukYjz" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDukZbV" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDukYtR" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDukYjy" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDukYGj" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDukZud" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDukYiv" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYiw" role="13h7CS">
      <property role="TrG5h" value="eventDestinations" />
      <ref role="13i0hy" node="5L1OxDukYdN" resolve="eventDestinations" />
      <node concept="3Tm1VV" id="5L1OxDukYix" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYi$" role="3clF47">
        <node concept="3clFbF" id="5L1OxDukZEe" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDukZEf" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDukZEg" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDukZEh" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDukZEi" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDul061" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDukYi_" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYiA" role="13h7CS">
      <property role="TrG5h" value="dataSources" />
      <ref role="13i0hy" node="5L1OxDukYe7" resolve="dataSources" />
      <node concept="3Tm1VV" id="5L1OxDukYiB" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYiE" role="3clF47">
        <node concept="3clFbF" id="5L1OxDul0ax" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDul1qm" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDul0kP" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDul0aw" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDul0Sx" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDul2fb" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDukYiF" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDukYiG" role="13h7CS">
      <property role="TrG5h" value="dataDestinations" />
      <ref role="13i0hy" node="5L1OxDukYen" resolve="dataDestinations" />
      <node concept="3Tm1VV" id="5L1OxDukYiH" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDukYiK" role="3clF47">
        <node concept="3clFbF" id="5L1OxDul2jF" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDul3eg" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDul2tZ" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDul2jE" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDul2Gr" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDul435" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDukYiL" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRQXv_i" role="13h7CS">
      <property role="TrG5h" value="getSockets" />
      <ref role="13i0hy" node="uLhTRQXezk" resolve="getSockets" />
      <node concept="3Tm1VV" id="uLhTRQXv_j" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRQXv_q" role="3clF47">
        <node concept="3clFbF" id="uLhTRQXv_v" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRQXxfS" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRQXw3N" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRQXvS$" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRQXwFj" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRQXxRb" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRQXv_r" role="3clF45">
        <ref role="2I9WkF" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRQXv_w" role="13h7CS">
      <property role="TrG5h" value="getPlugs" />
      <ref role="13i0hy" node="uLhTRQXdlm" resolve="getPlugs" />
      <node concept="3Tm1VV" id="uLhTRQXv_x" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRQXv_C" role="3clF47">
        <node concept="3clFbF" id="uLhTRQXxVT" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRQXzj4" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRQXy6Z" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRQXxVO" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRQXyIv" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRQXzUn" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRQXv_D" role="3clF45">
        <ref role="2I9WkF" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5L1OxDuoomP">
    <property role="3GE5qa" value="adapter" />
    <ref role="13h7C2" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
    <node concept="13hLZK" id="5L1OxDuoomQ" role="13h7CW">
      <node concept="3clFbS" id="5L1OxDuoomR" role="2VODD2">
        <node concept="3clFbF" id="6LU90BOcjjC" role="3cqZAp">
          <node concept="37vLTI" id="6LU90BOcjjD" role="3clFbG">
            <node concept="2ShNRf" id="6LU90BOcjjE" role="37vLTx">
              <node concept="3zrR0B" id="6LU90BOcjjF" role="2ShVmc">
                <node concept="3Tqbb2" id="6LU90BOcjjG" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6LU90BOcjjH" role="37vLTJ">
              <node concept="13iPFW" id="6LU90BOcjjI" role="2Oq$k0" />
              <node concept="3TrEf2" id="6LU90BOcjjJ" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:6LU90BOchbE" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuoon0" role="13h7CS">
      <property role="TrG5h" value="eventSources" />
      <ref role="13i0hy" node="5L1OxDukYcu" resolve="eventSources" />
      <node concept="3Tm1VV" id="5L1OxDuoon1" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuoon4" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuooo9" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuopiI" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuooyt" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuooo8" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuooKT" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuop_0" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuoon5" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuoon6" role="13h7CS">
      <property role="TrG5h" value="eventDestinations" />
      <ref role="13i0hy" node="5L1OxDukYdN" resolve="eventDestinations" />
      <node concept="3Tm1VV" id="5L1OxDuoon7" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuoona" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuopL1" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuopL2" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuopL3" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuopL4" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuopL5" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuoqkm" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuoonb" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuoonc" role="13h7CS">
      <property role="TrG5h" value="dataSources" />
      <ref role="13i0hy" node="5L1OxDukYe7" resolve="dataSources" />
      <node concept="3Tm1VV" id="5L1OxDuoond" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuoong" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuoqKF" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuoqKG" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuoqKH" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuoqKI" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuoqKJ" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuosae" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuoonh" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuooni" role="13h7CS">
      <property role="TrG5h" value="dataDestinations" />
      <ref role="13i0hy" node="5L1OxDukYen" resolve="dataDestinations" />
      <node concept="3Tm1VV" id="5L1OxDuoonj" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuoonm" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuoqoP" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuoqoQ" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuoqoR" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuoqoS" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuoqoT" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuorB8" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuoonn" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5L1OxDuosf6">
    <property role="3GE5qa" value="adapter" />
    <ref role="13h7C2" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
    <node concept="13i0hz" id="5L1OxDuosfh" role="13h7CS">
      <property role="TrG5h" value="eventSources" />
      <ref role="13i0hy" node="5L1OxDukYcu" resolve="eventSources" />
      <node concept="3Tm1VV" id="5L1OxDuosfi" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuosfj" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuosfk" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuosfl" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuosfm" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuosfn" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuosfo" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuosHp" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuosfq" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuosfr" role="13h7CS">
      <property role="TrG5h" value="eventDestinations" />
      <ref role="13i0hy" node="5L1OxDukYdN" resolve="eventDestinations" />
      <node concept="3Tm1VV" id="5L1OxDuosfs" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuosft" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuosfu" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuosfv" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuosfw" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuosfx" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuosfy" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuotgm" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuosf$" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuosf_" role="13h7CS">
      <property role="TrG5h" value="dataSources" />
      <ref role="13i0hy" node="5L1OxDukYe7" resolve="dataSources" />
      <node concept="3Tm1VV" id="5L1OxDuosfA" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuosfB" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuosfC" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuosfD" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuosfE" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuosfF" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuosfG" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuouek" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuosfI" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="5L1OxDuosfJ" role="13h7CS">
      <property role="TrG5h" value="dataDestinations" />
      <ref role="13i0hy" node="5L1OxDukYen" resolve="dataDestinations" />
      <node concept="3Tm1VV" id="5L1OxDuosfK" role="1B3o_S" />
      <node concept="3clFbS" id="5L1OxDuosfL" role="3clF47">
        <node concept="3clFbF" id="5L1OxDuosfM" role="3cqZAp">
          <node concept="2OqwBi" id="5L1OxDuosfN" role="3clFbG">
            <node concept="2OqwBi" id="5L1OxDuosfO" role="2Oq$k0">
              <node concept="13iPFW" id="5L1OxDuosfP" role="2Oq$k0" />
              <node concept="3TrEf2" id="5L1OxDuosfQ" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="3Tsc0h" id="5L1OxDuouDJ" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="5L1OxDuosfS" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13hLZK" id="5L1OxDuosf7" role="13h7CW">
      <node concept="3clFbS" id="5L1OxDuosf8" role="2VODD2">
        <node concept="3clFbF" id="6LU90BOcpYG" role="3cqZAp">
          <node concept="37vLTI" id="6LU90BOcrhY" role="3clFbG">
            <node concept="2ShNRf" id="6LU90BOcrmx" role="37vLTx">
              <node concept="3zrR0B" id="6LU90BOcrmv" role="2ShVmc">
                <node concept="3Tqbb2" id="6LU90BOcrmw" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6LU90BOcq82" role="37vLTJ">
              <node concept="13iPFW" id="6LU90BOcpYF" role="2Oq$k0" />
              <node concept="3TrEf2" id="6LU90BOcqMG" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:6LU90BOcpSo" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHjRVNg">
    <property role="3GE5qa" value="network.fb" />
    <ref role="13h7C2" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
    <node concept="13i0hz" id="2lwHqHk$skt" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="networkPrototype" />
      <node concept="3Tm1VV" id="2lwHqHk$sku" role="1B3o_S" />
      <node concept="3Tqbb2" id="2lwHqHk$slC" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
      <node concept="3clFbS" id="2lwHqHk$skw" role="3clF47">
        <node concept="3cpWs6" id="2lwHqHk$snr" role="3cqZAp">
          <node concept="10Nm6u" id="2lwHqHk$snU" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5s_pyghXe$Z" role="13h7CS">
      <property role="TrG5h" value="hasNetwork" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5s_pyghXe_0" role="1B3o_S" />
      <node concept="10P_77" id="5s_pyghXeA0" role="3clF45" />
      <node concept="3clFbS" id="5s_pyghXe_2" role="3clF47">
        <node concept="3clFbF" id="5s_pyghXeAO" role="3cqZAp">
          <node concept="22lmx$" id="5s_pyghXrxY" role="3clFbG">
            <node concept="2OqwBi" id="5s_pyghXibF" role="3uHU7B">
              <node concept="2OqwBi" id="5s_pyghXeM8" role="2Oq$k0">
                <node concept="13iPFW" id="5s_pyghXeAN" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5s_pyghXfhk" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                </node>
              </node>
              <node concept="3GX2aA" id="5s_pyghXnYb" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="5s_pyghXrVG" role="3uHU7w">
              <node concept="BsUDl" id="5s_pyghXrLX" role="2Oq$k0">
                <ref role="37wK5l" node="2lwHqHk$skt" resolve="networkPrototype" />
              </node>
              <node concept="2qgKlT" id="5s_pyghXsAh" role="2OqNvi">
                <ref role="37wK5l" node="5s_pyghXe$Z" resolve="hasNetwork" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2lwHqHjRVNh" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHjRVNi" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHkaB5C">
    <property role="3GE5qa" value="fbtype.composite" />
    <ref role="13h7C2" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
    <node concept="13hLZK" id="2lwHqHkaB5D" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHkaB5E" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHkn6uT">
    <property role="3GE5qa" value="resources" />
    <ref role="13h7C2" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
    <node concept="13hLZK" id="2lwHqHkn6uU" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHkn6uV" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2lwHqHkn6v4" role="13h7CS">
      <property role="TrG5h" value="contextDataSources" />
      <ref role="13i0hy" node="2lwHqHjRZ6V" resolve="contextDataSources" />
      <node concept="3Tm1VV" id="2lwHqHkn6v5" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkn6vc" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkn6zq" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkn6HI" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHkn6zp" role="2Oq$k0" />
            <node concept="3Tsc0h" id="2lwHqHkn7hq" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lwHqHkn6vd" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHk$fut">
    <property role="3GE5qa" value="resources" />
    <ref role="13h7C2" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="13hLZK" id="2lwHqHk$fuu" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHk$fuv" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2lwHqHk$fuC" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="2lwHqHk$fuD" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHk$fuM" role="3clF47">
        <node concept="3clFbJ" id="2lwHqHk$f_Z" role="3cqZAp">
          <node concept="3clFbS" id="2lwHqHk$fA1" role="3clFbx">
            <node concept="3cpWs6" id="2lwHqHk$g$q" role="3cqZAp">
              <node concept="2YIFZM" id="2lwHqHk$iNa" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="2lwHqHk$iNb" role="37wK5m">
                  <node concept="2OqwBi" id="2lwHqHk$iNc" role="2Oq$k0">
                    <node concept="13iPFW" id="2lwHqHk$iNd" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2lwHqHk$iNe" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:2lwHqHkyELp" resolve="type" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="2lwHqHk$iNf" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2lwHqHk$fOc" role="3clFbw">
            <node concept="37vLTw" id="2lwHqHk$fAm" role="2Oq$k0">
              <ref role="3cqZAo" node="2lwHqHk$fuN" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="2lwHqHk$gu8" role="2OqNvi">
              <node concept="chp4Y" id="2lwHqHk$gxe" role="3QVz_e">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2lwHqHk$j1f" role="3cqZAp">
          <node concept="10Nm6u" id="2lwHqHk$j89" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="2lwHqHk$fuN" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="2lwHqHk$fuO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2lwHqHk$fuP" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="2lwHqHk$fuQ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2lwHqHk$fuR" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHk$_sz" role="13h7CS">
      <property role="TrG5h" value="networkPrototype" />
      <ref role="13i0hy" node="2lwHqHk$skt" resolve="networkPrototype" />
      <node concept="3Tm1VV" id="2lwHqHk$_s$" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHk$_sD" role="3clF47">
        <node concept="3clFbF" id="2lwHqHk$_Bl" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHk$_KV" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHk$_Bk" role="2Oq$k0" />
            <node concept="3TrEf2" id="2lwHqHk$Aor" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:2lwHqHkyELp" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2lwHqHk$_sE" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
    </node>
    <node concept="13i0hz" id="6K_0vqjbmeG" role="13h7CS">
      <property role="TrG5h" value="allFunctionBlocks" />
      <node concept="3Tm1VV" id="6K_0vqjbmeH" role="1B3o_S" />
      <node concept="_YKpA" id="6K_0vqjbmos" role="3clF45">
        <node concept="3Tqbb2" id="6K_0vqjbmoC" role="_ZDj9">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="3clFbS" id="6K_0vqjbmeJ" role="3clF47">
        <node concept="3cpWs8" id="6K_0vqjboxd" role="3cqZAp">
          <node concept="3cpWsn" id="6K_0vqjboxe" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="_YKpA" id="6K_0vqjbox9" role="1tU5fm">
              <node concept="3Tqbb2" id="6K_0vqjboxc" role="_ZDj9">
                <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
            </node>
            <node concept="2ShNRf" id="6K_0vqjboxf" role="33vP2m">
              <node concept="Tc6Ow" id="6K_0vqjboxg" role="2ShVmc">
                <node concept="3Tqbb2" id="6K_0vqjboxh" role="HW$YZ">
                  <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6K_0vqjboyV" role="3cqZAp">
          <node concept="2OqwBi" id="6K_0vqjbqyn" role="3clFbG">
            <node concept="37vLTw" id="6K_0vqjboyT" role="2Oq$k0">
              <ref role="3cqZAo" node="6K_0vqjboxe" resolve="list" />
            </node>
            <node concept="X8dFx" id="6K_0vqjbwUG" role="2OqNvi">
              <node concept="2OqwBi" id="6K_0vqjbxkk" role="25WWJ7">
                <node concept="13iPFW" id="6K_0vqjbx4i" role="2Oq$k0" />
                <node concept="3Tsc0h" id="6K_0vqjbyyl" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6K_0vqjbzxD" role="3cqZAp">
          <node concept="2OqwBi" id="6K_0vqjbB6E" role="3clFbG">
            <node concept="37vLTw" id="6K_0vqjbzxB" role="2Oq$k0">
              <ref role="3cqZAo" node="6K_0vqjboxe" resolve="list" />
            </node>
            <node concept="X8dFx" id="6K_0vqjbHAC" role="2OqNvi">
              <node concept="2OqwBi" id="6K_0vqjbJHS" role="25WWJ7">
                <node concept="2OqwBi" id="6K_0vqjbHUe" role="2Oq$k0">
                  <node concept="13iPFW" id="6K_0vqjbHEc" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6K_0vqjbIOt" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:2lwHqHkyELp" resolve="type" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6K_0vqjbKbS" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6K_0vqjbmqj" role="3cqZAp">
          <node concept="37vLTw" id="6K_0vqjboxi" role="3cqZAk">
            <ref role="3cqZAo" node="6K_0vqjboxe" resolve="list" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2lwHqHkAfsO">
    <property role="3GE5qa" value="devices" />
    <ref role="13h7C2" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
    <node concept="13hLZK" id="2lwHqHkAfsP" role="13h7CW">
      <node concept="3clFbS" id="2lwHqHkAfsQ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2lwHqHkAftn" role="13h7CS">
      <property role="TrG5h" value="contextDataSources" />
      <ref role="13i0hy" node="2lwHqHjRZ6V" resolve="contextDataSources" />
      <node concept="3Tm1VV" id="2lwHqHkAfto" role="1B3o_S" />
      <node concept="3clFbS" id="2lwHqHkAftv" role="3clF47">
        <node concept="3clFbF" id="2lwHqHkAfDk" role="3cqZAp">
          <node concept="2OqwBi" id="2lwHqHkAfNC" role="3clFbG">
            <node concept="13iPFW" id="2lwHqHkAfDf" role="2Oq$k0" />
            <node concept="3Tsc0h" id="2lwHqHkBXqW" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:2lwHqHkyELb" resolve="parameters" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2lwHqHkAftw" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="fshQXbRNWB">
    <property role="3GE5qa" value="system" />
    <ref role="13h7C2" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
    <node concept="13hLZK" id="fshQXbRNWC" role="13h7CW">
      <node concept="3clFbS" id="fshQXbRNWD" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="fshQXbRNWM" role="13h7CS">
      <property role="TrG5h" value="networkPrototype" />
      <ref role="13i0hy" node="2lwHqHk$skt" resolve="networkPrototype" />
      <node concept="3Tm1VV" id="fshQXbRNWN" role="1B3o_S" />
      <node concept="3clFbS" id="fshQXbRNWS" role="3clF47">
        <node concept="3clFbF" id="fshQXbRO3S" role="3cqZAp">
          <node concept="2OqwBi" id="fshQXbROdn" role="3clFbG">
            <node concept="13iPFW" id="fshQXbRO3R" role="2Oq$k0" />
            <node concept="3TrEf2" id="fshQXbROOR" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:1WTKUmKKVP_" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="fshQXbRNWT" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
    </node>
    <node concept="13i0hz" id="fshQXbRPPs" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="fshQXbRPPt" role="1B3o_S" />
      <node concept="3clFbS" id="fshQXbRPPu" role="3clF47">
        <node concept="3clFbJ" id="fshQXbRPPv" role="3cqZAp">
          <node concept="3clFbS" id="fshQXbRPPw" role="3clFbx">
            <node concept="3cpWs6" id="fshQXbRPPx" role="3cqZAp">
              <node concept="2YIFZM" id="fshQXbRPPy" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="fshQXbRPPz" role="37wK5m">
                  <node concept="2OqwBi" id="fshQXbRPP$" role="2Oq$k0">
                    <node concept="13iPFW" id="fshQXbRPP_" role="2Oq$k0" />
                    <node concept="3TrEf2" id="fshQXbRPPA" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:1WTKUmKKVP_" resolve="type" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="fshQXbRQq4" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:2lwHqHkyELb" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="fshQXbRPPC" role="3clFbw">
            <node concept="37vLTw" id="fshQXbRPPD" role="2Oq$k0">
              <ref role="3cqZAo" node="fshQXbRPPI" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="fshQXbRPPE" role="2OqNvi">
              <node concept="chp4Y" id="fshQXbRPPF" role="3QVz_e">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="fshQXbRPPG" role="3cqZAp">
          <node concept="10Nm6u" id="fshQXbRPPH" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="fshQXbRPPI" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="fshQXbRPPJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="fshQXbRPPK" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="fshQXbRPPL" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="fshQXbRPPM" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="uLhTRQXdlb">
    <property role="3GE5qa" value="network.fb" />
    <ref role="13h7C2" to="xiqq:uLhTRQXdkL" resolve="IComponentWithAdapters" />
    <node concept="13i0hz" id="uLhTRQXdlm" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getPlugs" />
      <node concept="3Tm1VV" id="uLhTRQXdln" role="1B3o_S" />
      <node concept="2I9FWS" id="uLhTRQXdlI" role="3clF45">
        <ref role="2I9WkF" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
      </node>
      <node concept="3clFbS" id="uLhTRQXdlp" role="3clF47">
        <node concept="3clFbF" id="uLhTRQXdmr" role="3cqZAp">
          <node concept="2ShNRf" id="uLhTRQXdmp" role="3clFbG">
            <node concept="Tc6Ow" id="uLhTRQXera" role="2ShVmc">
              <node concept="3Tqbb2" id="uLhTRQXewT" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRQXezk" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getSockets" />
      <node concept="3Tm1VV" id="uLhTRQXezl" role="1B3o_S" />
      <node concept="2I9FWS" id="uLhTRQXezm" role="3clF45">
        <ref role="2I9WkF" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
      </node>
      <node concept="3clFbS" id="uLhTRQXezn" role="3clF47">
        <node concept="3clFbF" id="uLhTRQXezo" role="3cqZAp">
          <node concept="2ShNRf" id="uLhTRQXezp" role="3clFbG">
            <node concept="Tc6Ow" id="uLhTRQXezq" role="2ShVmc">
              <node concept="3Tqbb2" id="uLhTRQXezr" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="uLhTRQXdlc" role="13h7CW">
      <node concept="3clFbS" id="uLhTRQXdld" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="uLhTRQXzZK">
    <property role="3GE5qa" value="network.subapp" />
    <ref role="13h7C2" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationInstance" />
    <node concept="13i0hz" id="uLhTRQXzZV" role="13h7CS">
      <property role="TrG5h" value="eventSources" />
      <ref role="13i0hy" node="5L1OxDukYcu" resolve="eventSources" />
      <node concept="3Tm1VV" id="uLhTRQXzZW" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRQXzZX" role="3clF47">
        <node concept="3clFbF" id="uLhTRQXzZY" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRQXzZZ" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRQX$00" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRQX$01" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRQX$02" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRQX$03" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRQX$04" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRQX$05" role="13h7CS">
      <property role="TrG5h" value="eventDestinations" />
      <ref role="13i0hy" node="5L1OxDukYdN" resolve="eventDestinations" />
      <node concept="3Tm1VV" id="uLhTRQX$06" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRQX$07" role="3clF47">
        <node concept="3clFbF" id="uLhTRQX$08" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRQX$09" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRQX$0a" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRQX$0b" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRQX$0c" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRQX$0d" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRQX$0e" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRQX$0f" role="13h7CS">
      <property role="TrG5h" value="dataSources" />
      <ref role="13i0hy" node="5L1OxDukYe7" resolve="dataSources" />
      <node concept="3Tm1VV" id="uLhTRQX$0g" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRQX$0h" role="3clF47">
        <node concept="3clFbF" id="uLhTRQX$0i" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRQX$0j" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRQX$0k" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRQX$0l" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRQX$0m" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRQX$0n" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRQX$0o" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRQX$0p" role="13h7CS">
      <property role="TrG5h" value="dataDestinations" />
      <ref role="13i0hy" node="5L1OxDukYen" resolve="dataDestinations" />
      <node concept="3Tm1VV" id="uLhTRQX$0q" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRQX$0r" role="3clF47">
        <node concept="3clFbF" id="uLhTRQX$0s" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRQX$0t" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRQX$0u" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRQX$0v" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRQX$0w" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRQX$0x" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRQX$0y" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRQX$0z" role="13h7CS">
      <property role="TrG5h" value="getSockets" />
      <ref role="13i0hy" node="uLhTRQXezk" resolve="getSockets" />
      <node concept="3Tm1VV" id="uLhTRQX$0$" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRQX$0_" role="3clF47">
        <node concept="3clFbF" id="uLhTRQX$0A" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRQX$0B" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRQX$0C" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRQX$0D" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRQX$0E" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRQX$0F" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRQX$0G" role="3clF45">
        <ref role="2I9WkF" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRQX$0H" role="13h7CS">
      <property role="TrG5h" value="getPlugs" />
      <ref role="13i0hy" node="uLhTRQXdlm" resolve="getPlugs" />
      <node concept="3Tm1VV" id="uLhTRQX$0I" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRQX$0J" role="3clF47">
        <node concept="3clFbF" id="uLhTRQX$0K" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRQX$0L" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRQX$0M" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRQX$0N" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRQX$0O" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRQX$0P" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRQX$0Q" role="3clF45">
        <ref role="2I9WkF" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
      </node>
    </node>
    <node concept="13hLZK" id="uLhTRQXzZL" role="13h7CW">
      <node concept="3clFbS" id="uLhTRQXzZM" role="2VODD2">
        <node concept="3clFbF" id="2syzu7qDPh2" role="3cqZAp">
          <node concept="37vLTI" id="2syzu7qDQyc" role="3clFbG">
            <node concept="2ShNRf" id="2syzu7qDQAY" role="37vLTx">
              <node concept="3zrR0B" id="2syzu7qDQAW" role="2ShVmc">
                <node concept="3Tqbb2" id="2syzu7qDQAX" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2syzu7qDPre" role="37vLTJ">
              <node concept="13iPFW" id="2syzu7qDPh1" role="2Oq$k0" />
              <node concept="3TrEf2" id="2syzu7qDQbF" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:7oJsd9x2gq9" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="uLhTRRmhkz">
    <property role="3GE5qa" value="system" />
    <ref role="13h7C2" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
    <node concept="13i0hz" id="uLhTRRmhzD" role="13h7CS">
      <property role="TrG5h" value="subapplications" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="uLhTRRmhzE" role="1B3o_S" />
      <node concept="2I9FWS" id="uLhTRRmhzT" role="3clF45">
        <ref role="2I9WkF" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationInstance" />
      </node>
      <node concept="3clFbS" id="uLhTRRmhzG" role="3clF47">
        <node concept="3cpWs6" id="uLhTRRmjL$" role="3cqZAp">
          <node concept="2ShNRf" id="uLhTRRmjLF" role="3cqZAk">
            <node concept="Tc6Ow" id="uLhTRRmjWv" role="2ShVmc">
              <node concept="3Tqbb2" id="uLhTRRmk2G" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationInstance" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRRmowC" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="functionBlocks" />
      <node concept="3Tm1VV" id="uLhTRRmowD" role="1B3o_S" />
      <node concept="2I9FWS" id="uLhTRRmox8" role="3clF45">
        <ref role="2I9WkF" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
      <node concept="3clFbS" id="uLhTRRmowF" role="3clF47">
        <node concept="3cpWs6" id="uLhTRRmoy3" role="3cqZAp">
          <node concept="2ShNRf" id="uLhTRRmoy4" role="3cqZAk">
            <node concept="Tc6Ow" id="uLhTRRmoy5" role="2ShVmc">
              <node concept="3Tqbb2" id="uLhTRRmoy6" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="uLhTRRmhk$" role="13h7CW">
      <node concept="3clFbS" id="uLhTRRmhk_" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="uLhTRRmjL9">
    <property role="3GE5qa" value="system" />
    <ref role="13h7C2" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
    <node concept="13hLZK" id="uLhTRRmjLa" role="13h7CW">
      <node concept="3clFbS" id="uLhTRRmjLb" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="uLhTRRmk6N" role="13h7CS">
      <property role="TrG5h" value="subapplications" />
      <ref role="13i0hy" node="uLhTRRmhzD" resolve="subapplications" />
      <node concept="3Tm1VV" id="uLhTRRmk6O" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRRmk6V" role="3clF47">
        <node concept="3clFbF" id="uLhTRRmq_J" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRRmmru" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRRmlhZ" role="2Oq$k0">
              <node concept="2OqwBi" id="uLhTRRmktk" role="2Oq$k0">
                <node concept="13iPFW" id="uLhTRRmkjG" role="2Oq$k0" />
                <node concept="3TrEf2" id="uLhTRRmkXe" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRmjJx" resolve="subapp" />
                </node>
              </node>
              <node concept="3TrEf2" id="uLhTRRmlA2" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRRmmPL" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRRmk6W" role="3clF45">
        <ref role="2I9WkF" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationInstance" />
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRRmqcR" role="13h7CS">
      <property role="TrG5h" value="functionBlocks" />
      <ref role="13i0hy" node="uLhTRRmowC" resolve="functionBlocks" />
      <node concept="3Tm1VV" id="uLhTRRmqcS" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRRmqcT" role="3clF47">
        <node concept="3clFbF" id="uLhTRRmqcU" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRRmqcV" role="3clFbG">
            <node concept="3Tsc0h" id="uLhTRRmqcZ" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
            </node>
            <node concept="2OqwBi" id="uLhTRRmqmI" role="2Oq$k0">
              <node concept="2OqwBi" id="uLhTRRmqmJ" role="2Oq$k0">
                <node concept="13iPFW" id="uLhTRRmqmK" role="2Oq$k0" />
                <node concept="3TrEf2" id="uLhTRRmqmL" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRmjJx" resolve="subapp" />
                </node>
              </node>
              <node concept="3TrEf2" id="uLhTRRmqmM" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRRmqd0" role="3clF45">
        <ref role="2I9WkF" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
    </node>
    <node concept="13i0hz" id="5s_pyghZBHH" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="5s_pyghZBHU" role="1B3o_S" />
      <node concept="3clFbS" id="5s_pyghZBHV" role="3clF47">
        <node concept="3clFbF" id="5s_pyghZBXO" role="3cqZAp">
          <node concept="3cpWs3" id="5s_pyghZG7D" role="3clFbG">
            <node concept="2OqwBi" id="5s_pyghZHyo" role="3uHU7w">
              <node concept="2OqwBi" id="5s_pyghZG_H" role="2Oq$k0">
                <node concept="13iPFW" id="5s_pyghZGhQ" role="2Oq$k0" />
                <node concept="3TrEf2" id="5s_pyghZGVQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRmjJx" resolve="subapp" />
                </node>
              </node>
              <node concept="3TrcHB" id="5s_pyghZIib" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="5s_pyghZEfS" role="3uHU7B">
              <node concept="2OqwBi" id="5s_pyghZCRA" role="3uHU7B">
                <node concept="2OqwBi" id="5s_pyghZC7m" role="2Oq$k0">
                  <node concept="13iPFW" id="5s_pyghZBXN" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5s_pyghZCBe" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmjJr" resolve="parentApp" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5s_pyghZD5O" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="5s_pyghZFfZ" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5s_pyghZBHW" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="uLhTRRmmWZ">
    <property role="3GE5qa" value="system" />
    <ref role="13h7C2" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
    <node concept="13hLZK" id="uLhTRRmmX0" role="13h7CW">
      <node concept="3clFbS" id="uLhTRRmmX1" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="uLhTRRmmXa" role="13h7CS">
      <property role="TrG5h" value="subapplications" />
      <ref role="13i0hy" node="uLhTRRmhzD" resolve="subapplications" />
      <node concept="3Tm1VV" id="uLhTRRmmXb" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRRmmXi" role="3clF47">
        <node concept="3clFbF" id="uLhTRRmn9y" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRRmo05" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRRmnj4" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRRmn9x" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRRmnvA" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRmhk8" resolve="application" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRRmok6" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRRmmXj" role="3clF45">
        <ref role="2I9WkF" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationInstance" />
      </node>
    </node>
    <node concept="13i0hz" id="uLhTRRmoDp" role="13h7CS">
      <property role="TrG5h" value="functionBlocks" />
      <ref role="13i0hy" node="uLhTRRmowC" resolve="functionBlocks" />
      <node concept="3Tm1VV" id="uLhTRRmoDq" role="1B3o_S" />
      <node concept="3clFbS" id="uLhTRRmoDx" role="3clF47">
        <node concept="3clFbF" id="uLhTRRmp2y" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRRmp2z" role="3clFbG">
            <node concept="2OqwBi" id="uLhTRRmp2$" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRRmp2_" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRRmp2A" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRmhk8" resolve="application" />
              </node>
            </node>
            <node concept="3Tsc0h" id="uLhTRRmq1w" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="uLhTRRmoDy" role="3clF45">
        <ref role="2I9WkF" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
    </node>
    <node concept="13i0hz" id="5s_pyghZICl" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="5s_pyghZICy" role="1B3o_S" />
      <node concept="3clFbS" id="5s_pyghZICz" role="3clF47">
        <node concept="3clFbF" id="5s_pyghZILM" role="3cqZAp">
          <node concept="2OqwBi" id="5s_pyghZJB8" role="3clFbG">
            <node concept="2OqwBi" id="5s_pyghZIVk" role="2Oq$k0">
              <node concept="13iPFW" id="5s_pyghZILH" role="2Oq$k0" />
              <node concept="3TrEf2" id="5s_pyghZJ7Q" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRmhk8" resolve="application" />
              </node>
            </node>
            <node concept="3TrcHB" id="5s_pyghZKga" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5s_pyghZIC$" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="uLhTRRtpnK">
    <property role="3GE5qa" value="system" />
    <ref role="13h7C2" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
    <node concept="13i0hz" id="uLhTRRtpnV" role="13h7CS">
      <property role="TrG5h" value="functionBlocks" />
      <node concept="3Tm1VV" id="uLhTRRtpnW" role="1B3o_S" />
      <node concept="2I9FWS" id="uLhTRRtpob" role="3clF45">
        <ref role="2I9WkF" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
      <node concept="3clFbS" id="uLhTRRtpnY" role="3clF47">
        <node concept="3cpWs8" id="uLhTRRtO85" role="3cqZAp">
          <node concept="3cpWsn" id="uLhTRRtO86" role="3cpWs9">
            <property role="TrG5h" value="functionBlocks" />
            <node concept="2I9FWS" id="uLhTRRtO87" role="1tU5fm">
              <ref role="2I9WkF" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
            </node>
            <node concept="2ShNRf" id="uLhTRRtO88" role="33vP2m">
              <node concept="Tc6Ow" id="uLhTRRtO89" role="2ShVmc">
                <node concept="3Tqbb2" id="uLhTRRtO8a" role="HW$YZ">
                  <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="uLhTRRtpuE" role="3cqZAp">
          <node concept="2OqwBi" id="uLhTRRtqvt" role="3clFbw">
            <node concept="2OqwBi" id="uLhTRRtpIL" role="2Oq$k0">
              <node concept="13iPFW" id="uLhTRRtpuY" role="2Oq$k0" />
              <node concept="3TrEf2" id="uLhTRRtqaR" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
              </node>
            </node>
            <node concept="3w_OXm" id="uLhTRRtrnS" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="uLhTRRtpuG" role="3clFbx">
            <node concept="3clFbF" id="uLhTRRttTO" role="3cqZAp">
              <node concept="2OqwBi" id="uLhTRRtvV6" role="3clFbG">
                <node concept="37vLTw" id="uLhTRRvc7O" role="2Oq$k0">
                  <ref role="3cqZAo" node="uLhTRRtO86" resolve="functionBlocks" />
                </node>
                <node concept="X8dFx" id="uLhTRRtyF1" role="2OqNvi">
                  <node concept="2OqwBi" id="uLhTRRtsTU" role="25WWJ7">
                    <node concept="2OqwBi" id="uLhTRRtsTV" role="2Oq$k0">
                      <node concept="13iPFW" id="uLhTRRtsTW" role="2Oq$k0" />
                      <node concept="3TrEf2" id="uLhTRRtsTX" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:uLhTRRq_wx" resolve="device" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="uLhTRRtsTY" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="uLhTRRtB8h" role="3cqZAp">
              <node concept="2OqwBi" id="uLhTRRtB8i" role="3clFbG">
                <node concept="37vLTw" id="uLhTRRvd3_" role="2Oq$k0">
                  <ref role="3cqZAo" node="uLhTRRtO86" resolve="functionBlocks" />
                </node>
                <node concept="X8dFx" id="uLhTRRtB8k" role="2OqNvi">
                  <node concept="2OqwBi" id="uLhTRRtB8l" role="25WWJ7">
                    <node concept="2OqwBi" id="uLhTRRtFde" role="2Oq$k0">
                      <node concept="2OqwBi" id="uLhTRRtB8m" role="2Oq$k0">
                        <node concept="13iPFW" id="uLhTRRtB8n" role="2Oq$k0" />
                        <node concept="3TrEf2" id="uLhTRRtB8o" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:uLhTRRq_wx" resolve="device" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="uLhTRRtJyo" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:1WTKUmKKVP_" resolve="type" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="uLhTRRtB8p" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="uLhTRRtLYG" role="9aQIa">
            <node concept="3clFbS" id="uLhTRRtLYH" role="9aQI4">
              <node concept="3clFbF" id="uLhTRRtO8b" role="3cqZAp">
                <node concept="2OqwBi" id="uLhTRRtO8c" role="3clFbG">
                  <node concept="37vLTw" id="uLhTRRtO8d" role="2Oq$k0">
                    <ref role="3cqZAo" node="uLhTRRtO86" resolve="functionBlocks" />
                  </node>
                  <node concept="X8dFx" id="uLhTRRtO8e" role="2OqNvi">
                    <node concept="2OqwBi" id="uLhTRRtO8f" role="25WWJ7">
                      <node concept="2OqwBi" id="uLhTRRtO8g" role="2Oq$k0">
                        <node concept="13iPFW" id="uLhTRRtO8h" role="2Oq$k0" />
                        <node concept="3TrEf2" id="uLhTRRtSMR" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="uLhTRRtO8j" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="uLhTRRtO8k" role="3cqZAp">
                <node concept="2OqwBi" id="uLhTRRtO8l" role="3clFbG">
                  <node concept="37vLTw" id="uLhTRRtO8m" role="2Oq$k0">
                    <ref role="3cqZAo" node="uLhTRRtO86" resolve="functionBlocks" />
                  </node>
                  <node concept="X8dFx" id="uLhTRRtO8n" role="2OqNvi">
                    <node concept="2OqwBi" id="uLhTRRtO8o" role="25WWJ7">
                      <node concept="2OqwBi" id="uLhTRRtO8p" role="2Oq$k0">
                        <node concept="2OqwBi" id="uLhTRRtO8q" role="2Oq$k0">
                          <node concept="13iPFW" id="uLhTRRtO8r" role="2Oq$k0" />
                          <node concept="3TrEf2" id="uLhTRRtTLe" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="uLhTRRu5Q_" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:2lwHqHkyELp" resolve="type" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="uLhTRRu9HI" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="uLhTRRugIR" role="3cqZAp">
          <node concept="37vLTw" id="uLhTRRvk$W" role="3cqZAk">
            <ref role="3cqZAo" node="uLhTRRtO86" resolve="functionBlocks" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5s_pyghZY$o" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="5s_pyghZY$_" role="1B3o_S" />
      <node concept="3clFbS" id="5s_pyghZY$A" role="3clF47">
        <node concept="3clFbJ" id="5s_pygi05KZ" role="3cqZAp">
          <node concept="2OqwBi" id="5s_pygi06y6" role="3clFbw">
            <node concept="2OqwBi" id="5s_pygi05U3" role="2Oq$k0">
              <node concept="13iPFW" id="5s_pygi05Lj" role="2Oq$k0" />
              <node concept="3TrEf2" id="5s_pygi064H" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
              </node>
            </node>
            <node concept="3w_OXm" id="5s_pygi07uv" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="5s_pygi05L1" role="3clFbx">
            <node concept="3cpWs6" id="5s_pygi07z0" role="3cqZAp">
              <node concept="2OqwBi" id="5s_pygi08Iv" role="3cqZAk">
                <node concept="2OqwBi" id="5s_pygi07Gd" role="2Oq$k0">
                  <node concept="13iPFW" id="5s_pygi07zf" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5s_pygi08cA" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRq_wx" resolve="device" />
                  </node>
                </node>
                <node concept="3TrcHB" id="5s_pygi09pX" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5s_pygi09x5" role="9aQIa">
            <node concept="3clFbS" id="5s_pygi09x6" role="9aQI4">
              <node concept="3cpWs6" id="5s_pygi09C9" role="3cqZAp">
                <node concept="3cpWs3" id="5s_pygi0dI9" role="3cqZAk">
                  <node concept="2OqwBi" id="5s_pygi0faA" role="3uHU7w">
                    <node concept="2OqwBi" id="5s_pygi0e67" role="2Oq$k0">
                      <node concept="13iPFW" id="5s_pygi0dU5" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pygi0eH$" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pygi0fX8" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="5s_pygi0cFn" role="3uHU7B">
                    <node concept="2OqwBi" id="5s_pygi0bab" role="3uHU7B">
                      <node concept="2OqwBi" id="5s_pygi09LB" role="2Oq$k0">
                        <node concept="13iPFW" id="5s_pygi09Cu" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5s_pygi0akz" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:uLhTRRq_wx" resolve="device" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5s_pygi0bSc" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5s_pygi0cMX" role="3uHU7w">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5s_pyghZY$B" role="3clF45" />
    </node>
    <node concept="13hLZK" id="uLhTRRtpnL" role="13h7CW">
      <node concept="3clFbS" id="uLhTRRtpnM" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="uLhTRRDRLL">
    <property role="3GE5qa" value="subapp" />
    <ref role="13h7C2" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
    <node concept="13hLZK" id="uLhTRRDRLM" role="13h7CW">
      <node concept="3clFbS" id="uLhTRRDRLN" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4s7KBSjc3IJ">
    <property role="3GE5qa" value="interface" />
    <ref role="13h7C2" to="xiqq:4s7KBSjc3Il" resolve="IContext" />
    <node concept="13hLZK" id="4s7KBSjc3IK" role="13h7CW">
      <node concept="3clFbS" id="4s7KBSjc3IL" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2lwHqHjRZ6V" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextDataSources" />
      <node concept="3Tm1VV" id="2lwHqHjRZ6W" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRZ6X" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRZ6Y" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRZ6Z" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRZ70" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRZ71" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRZ72" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHjRX1R" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextDataDestinations" />
      <node concept="3Tm1VV" id="2lwHqHjRX1S" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRX1T" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRX1U" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRX1V" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRX1W" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRX1X" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRX1Y" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHjRZ9n" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextEventSources" />
      <node concept="3Tm1VV" id="2lwHqHjRZ9o" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRZf5" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRZ9q" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRZko" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRZkp" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRZkq" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRZkr" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHjRZn8" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextEventDestinations" />
      <node concept="3Tm1VV" id="2lwHqHjRZn9" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRZna" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRZnb" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRZnc" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRZnd" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRZne" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRZnf" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2lwHqHjRVNr" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="contextComponents" />
      <node concept="3Tm1VV" id="2lwHqHjRVNs" role="1B3o_S" />
      <node concept="2I9FWS" id="2lwHqHjRVNN" role="3clF45">
        <ref role="2I9WkF" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
      </node>
      <node concept="3clFbS" id="2lwHqHjRVNu" role="3clF47">
        <node concept="3clFbF" id="2lwHqHjRVOC" role="3cqZAp">
          <node concept="2ShNRf" id="2lwHqHjRVOA" role="3clFbG">
            <node concept="Tc6Ow" id="2lwHqHjRWVt" role="2ShVmc">
              <node concept="3Tqbb2" id="2lwHqHjRWZs" role="HW$YZ">
                <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4s7KBSjc843">
    <property role="3GE5qa" value="interface" />
    <ref role="13h7C2" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="13hLZK" id="4s7KBSjc844" role="13h7CW">
      <node concept="3clFbS" id="4s7KBSjc845" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4s7KBSjc84e" role="13h7CS">
      <property role="TrG5h" value="contextDataSources" />
      <ref role="13i0hy" node="2lwHqHjRZ6V" resolve="contextDataSources" />
      <node concept="3Tm1VV" id="4s7KBSjc84f" role="1B3o_S" />
      <node concept="3clFbS" id="4s7KBSjc84m" role="3clF47">
        <node concept="3clFbF" id="4s7KBSjc8iO" role="3cqZAp">
          <node concept="2OqwBi" id="4s7KBSjc8tg" role="3clFbG">
            <node concept="13iPFW" id="4s7KBSjc8iJ" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4s7KBSjc90Y" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="4s7KBSjc84n" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="4s7KBSjc84s" role="13h7CS">
      <property role="TrG5h" value="contextDataDestinations" />
      <ref role="13i0hy" node="2lwHqHjRX1R" resolve="contextDataDestinations" />
      <node concept="3Tm1VV" id="4s7KBSjc84t" role="1B3o_S" />
      <node concept="3clFbS" id="4s7KBSjc84$" role="3clF47">
        <node concept="3clFbF" id="4s7KBSjc9iM" role="3cqZAp">
          <node concept="2OqwBi" id="4s7KBSjc9iN" role="3clFbG">
            <node concept="13iPFW" id="4s7KBSjc9iO" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4s7KBSjc9MH" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="4s7KBSjc84_" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="4s7KBSjc84E" role="13h7CS">
      <property role="TrG5h" value="contextEventSources" />
      <ref role="13i0hy" node="2lwHqHjRZ9n" resolve="contextEventSources" />
      <node concept="3Tm1VV" id="4s7KBSjc84F" role="1B3o_S" />
      <node concept="3clFbS" id="4s7KBSjc84M" role="3clF47">
        <node concept="3clFbF" id="4s7KBSjca4C" role="3cqZAp">
          <node concept="2OqwBi" id="4s7KBSjcaeW" role="3clFbG">
            <node concept="13iPFW" id="4s7KBSjca4z" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4s7KBSjcaMC" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="4s7KBSjc84N" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="4s7KBSjc84S" role="13h7CS">
      <property role="TrG5h" value="contextEventDestinations" />
      <ref role="13i0hy" node="2lwHqHjRZn8" resolve="contextEventDestinations" />
      <node concept="3Tm1VV" id="4s7KBSjc84T" role="1B3o_S" />
      <node concept="3clFbS" id="4s7KBSjc850" role="3clF47">
        <node concept="3clFbF" id="4s7KBSjc855" role="3cqZAp">
          <node concept="2OqwBi" id="4s7KBSjcbjt" role="3clFbG">
            <node concept="13iPFW" id="4s7KBSjcaWZ" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4s7KBSjcbR9" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="4s7KBSjc851" role="3clF45">
        <ref role="2I9WkF" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4s7KBSjcbU4">
    <property role="3GE5qa" value="interface" />
    <ref role="13h7C2" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
    <node concept="13hLZK" id="4s7KBSjcbU5" role="13h7CW">
      <node concept="3clFbS" id="4s7KBSjcbU6" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4s7KBSjcbUf" role="13h7CS">
      <property role="TrG5h" value="contextComponents" />
      <ref role="13i0hy" node="2lwHqHjRVNr" resolve="contextComponents" />
      <node concept="3Tm1VV" id="4s7KBSjcbUg" role="1B3o_S" />
      <node concept="3clFbS" id="4s7KBSjcbUn" role="3clF47">
        <node concept="3cpWs8" id="4s7KBSjcdh5" role="3cqZAp">
          <node concept="3cpWsn" id="4s7KBSjcdh6" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="4s7KBSjcdgX" role="1tU5fm">
              <node concept="3Tqbb2" id="4s7KBSjcdh0" role="_ZDj9">
                <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
              </node>
            </node>
            <node concept="2ShNRf" id="4s7KBSjcdh7" role="33vP2m">
              <node concept="Tc6Ow" id="4s7KBSjcdh8" role="2ShVmc">
                <node concept="3Tqbb2" id="4s7KBSjcdh9" role="HW$YZ">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4s7KBSjcbYy" role="3cqZAp">
          <node concept="2OqwBi" id="4s7KBSjcepr" role="3clFbG">
            <node concept="37vLTw" id="4s7KBSjcdha" role="2Oq$k0">
              <ref role="3cqZAo" node="4s7KBSjcdh6" resolve="res" />
            </node>
            <node concept="X8dFx" id="4s7KBSjciEq" role="2OqNvi">
              <node concept="2OqwBi" id="4s7KBSjcjBL" role="25WWJ7">
                <node concept="13iPFW" id="4s7KBSjcjbf" role="2Oq$k0" />
                <node concept="3Tsc0h" id="4s7KBSjckcG" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4s7KBSjckmo" role="3cqZAp">
          <node concept="2OqwBi" id="4s7KBSjckmp" role="3clFbG">
            <node concept="37vLTw" id="4s7KBSjckmq" role="2Oq$k0">
              <ref role="3cqZAo" node="4s7KBSjcdh6" resolve="res" />
            </node>
            <node concept="X8dFx" id="4s7KBSjckmr" role="2OqNvi">
              <node concept="2OqwBi" id="4s7KBSjckms" role="25WWJ7">
                <node concept="13iPFW" id="4s7KBSjckmt" role="2Oq$k0" />
                <node concept="3Tsc0h" id="4s7KBSjckOg" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4s7KBSjcmc8" role="3cqZAp">
          <node concept="37vLTw" id="4s7KBSjcnsb" role="3cqZAk">
            <ref role="3cqZAo" node="4s7KBSjcdh6" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="4s7KBSjcbUo" role="3clF45">
        <ref role="2I9WkF" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5s_pyghtuPH">
    <property role="3GE5qa" value="system" />
    <ref role="13h7C2" to="xiqq:5s_pyghtuNV" resolve="Segment" />
    <node concept="13hLZK" id="5s_pyghtuPI" role="13h7CW">
      <node concept="3clFbS" id="5s_pyghtuPJ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5s_pyghtuPS" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="5s_pyghtuPT" role="1B3o_S" />
      <node concept="3clFbS" id="5s_pyghtuQ2" role="3clF47">
        <node concept="3clFbJ" id="5s_pyghtuU$" role="3cqZAp">
          <node concept="2OqwBi" id="5s_pyghtv8A" role="3clFbw">
            <node concept="37vLTw" id="5s_pyghtuUS" role="2Oq$k0">
              <ref role="3cqZAo" node="5s_pyghtuQ3" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="5s_pyghtvMy" role="2OqNvi">
              <node concept="chp4Y" id="5s_pyghtvPC" role="3QVz_e">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5s_pyghtuUA" role="3clFbx">
            <node concept="3cpWs6" id="5s_pyghtvTt" role="3cqZAp">
              <node concept="2YIFZM" id="5s_pyghtvWk" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="5s_pyghtylv" role="37wK5m">
                  <node concept="2OqwBi" id="5s_pyghtwrr" role="2Oq$k0">
                    <node concept="13iPFW" id="5s_pyghtwfC" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5s_pyght$qA" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:5s_pyghtuNY" resolve="type" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5s_pyght$FV" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:5s_pyghtjpo" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5s_pyght$ML" role="3cqZAp">
          <node concept="10Nm6u" id="5s_pyght$Ow" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="5s_pyghtuQ3" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="5s_pyghtuQ4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5s_pyghtuQ5" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="5s_pyghtuQ6" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5s_pyghtuQ7" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5s_pygh_M3q">
    <property role="3GE5qa" value="system" />
    <ref role="13h7C2" to="xiqq:5s_pyghzCOb" resolve="Link" />
    <node concept="13i0hz" id="5s_pygh_MiT" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="5s_pygh_MiU" role="1B3o_S" />
      <node concept="3clFbS" id="5s_pygh_MiV" role="3clF47">
        <node concept="3clFbJ" id="5s_pygh_MiW" role="3cqZAp">
          <node concept="2OqwBi" id="5s_pygh_MiX" role="3clFbw">
            <node concept="37vLTw" id="5s_pygh_MiY" role="2Oq$k0">
              <ref role="3cqZAo" node="5s_pygh_Mjb" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="5s_pygh_MiZ" role="2OqNvi">
              <node concept="chp4Y" id="5s_pygh_Mj0" role="3QVz_e">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5s_pygh_Mj1" role="3clFbx">
            <node concept="3cpWs6" id="5s_pygh_Mj2" role="3cqZAp">
              <node concept="2YIFZM" id="5s_pygh_Mj3" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="5s_pygh_Mj4" role="37wK5m">
                  <node concept="2OqwBi" id="5s_pygh_Mj5" role="2Oq$k0">
                    <node concept="2OqwBi" id="5s_pygh_M_J" role="2Oq$k0">
                      <node concept="13iPFW" id="5s_pygh_Mj6" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pygh_MQD" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:5s_pyghzCOh" resolve="segment" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="5s_pygh_Neq" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:5s_pyghtuNY" resolve="type" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5s_pygh_Mj8" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:5s_pyghtjpo" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5s_pygh_Mj9" role="3cqZAp">
          <node concept="10Nm6u" id="5s_pygh_Mja" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="5s_pygh_Mjb" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="5s_pygh_Mjc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5s_pygh_Mjd" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="5s_pygh_Mje" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5s_pygh_Mjf" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13hLZK" id="5s_pygh_M3r" role="13h7CW">
      <node concept="3clFbS" id="5s_pygh_M3s" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5s_pyghXtpj">
    <property role="3GE5qa" value="network.subapp" />
    <ref role="13h7C2" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
    <node concept="13hLZK" id="5s_pyghXtpk" role="13h7CW">
      <node concept="3clFbS" id="5s_pyghXtpl" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5s_pyghXtAn" role="13h7CS">
      <property role="TrG5h" value="hasNetwork" />
      <ref role="13i0hy" node="5s_pyghXe$Z" resolve="hasNetwork" />
      <node concept="3Tm1VV" id="5s_pyghXtAo" role="1B3o_S" />
      <node concept="3clFbS" id="5s_pyghXtA_" role="3clF47">
        <node concept="3clFbF" id="5s_pyghXtF4" role="3cqZAp">
          <node concept="22lmx$" id="5s_pyghXFpJ" role="3clFbG">
            <node concept="2OqwBi" id="5s_pyghXFDK" role="3uHU7w">
              <node concept="13iAh5" id="5s_pyghXFte" role="2Oq$k0" />
              <node concept="2qgKlT" id="5s_pyghXFWt" role="2OqNvi">
                <ref role="37wK5l" node="5s_pyghXe$Z" resolve="hasNetwork" />
              </node>
            </node>
            <node concept="2OqwBi" id="5s_pyghXwU6" role="3uHU7B">
              <node concept="2OqwBi" id="5s_pyghXtPp" role="2Oq$k0">
                <node concept="13iPFW" id="5s_pyghXtEZ" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5s_pyghXuop" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
                </node>
              </node>
              <node concept="3GX2aA" id="5s_pyghXAGY" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5s_pyghXtAA" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5s_pyghZxBl">
    <property role="3GE5qa" value="system" />
    <ref role="13h7C2" to="xiqq:uLhTRRmhk5" resolve="FBInstanceReference" />
    <node concept="13hLZK" id="5s_pyghZxBm" role="13h7CW">
      <node concept="3clFbS" id="5s_pyghZxBn" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5s_pyghZxBw" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="5s_pyghZxBH" role="1B3o_S" />
      <node concept="3clFbS" id="5s_pyghZxBI" role="3clF47">
        <node concept="3clFbF" id="5s_pyghZxF$" role="3cqZAp">
          <node concept="3cpWs3" id="5s_pyghZ_3W" role="3clFbG">
            <node concept="2OqwBi" id="5s_pyghZAAu" role="3uHU7w">
              <node concept="2OqwBi" id="5s_pyghZ_A7" role="2Oq$k0">
                <node concept="13iPFW" id="5s_pyghZ_ed" role="2Oq$k0" />
                <node concept="3TrEf2" id="5s_pyghZAbQ" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRmrd9" resolve="functionBlock" />
                </node>
              </node>
              <node concept="3TrcHB" id="5s_pyghZBll" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="5s_pyghZzSi" role="3uHU7B">
              <node concept="2OqwBi" id="5s_pyghZyr7" role="3uHU7B">
                <node concept="2OqwBi" id="5s_pyghZxOk" role="2Oq$k0">
                  <node concept="13iPFW" id="5s_pyghZxFz" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5s_pyghZxYW" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmrd7" resolve="application" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5s_pyghZz7Q" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="5s_pyghZzYb" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5s_pyghZxBJ" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5s_pyghZKpj">
    <property role="3GE5qa" value="system" />
    <ref role="13h7C2" to="xiqq:uLhTRRmreo" resolve="FBResourceReference" />
    <node concept="13hLZK" id="5s_pyghZKpk" role="13h7CW">
      <node concept="3clFbS" id="5s_pyghZKpl" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5s_pyghZKpu" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="5s_pyghZKpF" role="1B3o_S" />
      <node concept="3clFbS" id="5s_pyghZKpG" role="3clF47">
        <node concept="3clFbF" id="5s_pyghZKtC" role="3cqZAp">
          <node concept="3cpWs3" id="5s_pyghZNIr" role="3clFbG">
            <node concept="2OqwBi" id="5s_pyghZOX7" role="3uHU7w">
              <node concept="2OqwBi" id="5s_pyghZO4k" role="2Oq$k0">
                <node concept="13iPFW" id="5s_pyghZNSG" role="2Oq$k0" />
                <node concept="3TrEf2" id="5s_pyghZOoB" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRtpn2" resolve="functionBlock" />
                </node>
              </node>
              <node concept="3TrcHB" id="5s_pyghZPFW" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="5s_pyghZMjh" role="3uHU7B">
              <node concept="2OqwBi" id="5s_pyghZLkJ" role="3uHU7B">
                <node concept="2OqwBi" id="5s_pyghZKAo" role="2Oq$k0">
                  <node concept="13iPFW" id="5s_pyghZKtz" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5s_pyghZL2s" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRtpn0" resolve="resource" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5s_pyghZLyP" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
              <node concept="Xl_RD" id="5s_pyghZMGN" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5s_pyghZKpH" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7GyesCpjDsm">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="13hLZK" id="7GyesCpjDsn" role="13h7CW">
      <node concept="3clFbS" id="7GyesCpjDso" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7GyesCpjDsx" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="7GyesCpjDsy" role="1B3o_S" />
      <node concept="3clFbS" id="7GyesCpjDsF" role="3clF47">
        <node concept="3clFbJ" id="7GyesCpjDyt" role="3cqZAp">
          <node concept="2OqwBi" id="7GyesCpjDKB" role="3clFbw">
            <node concept="37vLTw" id="7GyesCpjDyL" role="2Oq$k0">
              <ref role="3cqZAo" node="7GyesCpjDsG" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="7GyesCpjEqF" role="2OqNvi">
              <node concept="chp4Y" id="7GyesCpjEtL" role="3QVz_e">
                <ref role="cht4Q" to="gpgy:7GyesCpa3Ox" resolve="VariableDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7GyesCpjDyv" role="3clFbx">
            <node concept="3cpWs8" id="7GyesCpjE_3" role="3cqZAp">
              <node concept="3cpWsn" id="7GyesCpjE_6" role="3cpWs9">
                <property role="TrG5h" value="decls" />
                <node concept="2I9FWS" id="7GyesCpjE__" role="1tU5fm">
                  <ref role="2I9WkF" to="gpgy:7GyesCpa3Ox" resolve="VariableDeclaration" />
                </node>
                <node concept="2ShNRf" id="7GyesCpjEAI" role="33vP2m">
                  <node concept="Tc6Ow" id="7GyesCpjFKJ" role="2ShVmc">
                    <node concept="3Tqbb2" id="7GyesCpjFQP" role="HW$YZ">
                      <ref role="ehGHo" to="gpgy:7GyesCpa3Ox" resolve="VariableDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7GyesCpjFTA" role="3cqZAp">
              <node concept="2OqwBi" id="7GyesCpjHs0" role="3clFbG">
                <node concept="37vLTw" id="7GyesCpjFT$" role="2Oq$k0">
                  <ref role="3cqZAo" node="7GyesCpjE_6" resolve="decls" />
                </node>
                <node concept="X8dFx" id="7GyesCpjJz1" role="2OqNvi">
                  <node concept="2OqwBi" id="7GyesCpjNSO" role="25WWJ7">
                    <node concept="13iPFW" id="7GyesCpjMk9" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7GyesCpjPMV" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7GyesCpjRSL" role="3cqZAp">
              <node concept="2OqwBi" id="7GyesCpjRSM" role="3clFbG">
                <node concept="37vLTw" id="7GyesCpjRSN" role="2Oq$k0">
                  <ref role="3cqZAo" node="7GyesCpjE_6" resolve="decls" />
                </node>
                <node concept="X8dFx" id="7GyesCpjRSO" role="2OqNvi">
                  <node concept="2OqwBi" id="7GyesCpjRSP" role="25WWJ7">
                    <node concept="13iPFW" id="7GyesCpjRSQ" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7GyesCpjZuh" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7GyesCpjSPn" role="3cqZAp">
              <node concept="2OqwBi" id="7GyesCpjSPo" role="3clFbG">
                <node concept="37vLTw" id="7GyesCpjSPp" role="2Oq$k0">
                  <ref role="3cqZAo" node="7GyesCpjE_6" resolve="decls" />
                </node>
                <node concept="X8dFx" id="7GyesCpjSPq" role="2OqNvi">
                  <node concept="2OqwBi" id="7GyesCpjSPr" role="25WWJ7">
                    <node concept="13iPFW" id="7GyesCpjSPs" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7GyesCpk1ZE" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYFAL" resolve="internalVariables" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7GyesCpk3sy" role="3cqZAp">
              <node concept="2YIFZM" id="7GyesCpkfth" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="37vLTw" id="7GyesCpkjHv" role="37wK5m">
                  <ref role="3cqZAo" node="7GyesCpjE_6" resolve="decls" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23XkovWivCe" role="3cqZAp">
          <node concept="3clFbS" id="23XkovWivCg" role="3clFbx">
            <node concept="3cpWs6" id="23XkovWiANQ" role="3cqZAp">
              <node concept="2YIFZM" id="23XkovWiGmI" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="23XkovWiQQm" role="37wK5m">
                  <node concept="13iPFW" id="23XkovWiMsc" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="23XkovWiS1m" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WX" resolve="states" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="23XkovWiA0B" role="3clFbw">
            <node concept="37vLTw" id="23XkovWi_M9" role="2Oq$k0">
              <ref role="3cqZAo" node="7GyesCpjDsG" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="23XkovWiAFr" role="2OqNvi">
              <node concept="chp4Y" id="23XkovWiAJh" role="3QVz_e">
                <ref role="cht4Q" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23XkovWmJ8c" role="3cqZAp">
          <node concept="3clFbS" id="23XkovWmJ8d" role="3clFbx">
            <node concept="3cpWs6" id="23XkovWmJ8e" role="3cqZAp">
              <node concept="2YIFZM" id="23XkovWmJ8f" role="3cqZAk">
                <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="2OqwBi" id="23XkovWmJ8g" role="37wK5m">
                  <node concept="13iPFW" id="23XkovWmJ8h" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="23XkovWmM9v" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="23XkovWmJ8j" role="3clFbw">
            <node concept="37vLTw" id="23XkovWmJ8k" role="2Oq$k0">
              <ref role="3cqZAo" node="7GyesCpjDsG" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="23XkovWmJ8l" role="2OqNvi">
              <node concept="chp4Y" id="23XkovWmLJf" role="3QVz_e">
                <ref role="cht4Q" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7GyesCpkCWG" role="3cqZAp">
          <node concept="10Nm6u" id="7GyesCpkHMS" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="7GyesCpjDsG" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="7GyesCpjDsH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7GyesCpjDsI" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="7GyesCpjDsJ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7GyesCpjDsK" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="23XkovWspUp">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:23XkovWspjs" resolve="UnknownAlgorithmBody" />
    <node concept="13hLZK" id="23XkovWspUq" role="13h7CW">
      <node concept="3clFbS" id="23XkovWspUr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="23XkovWspU$" role="13h7CS">
      <property role="TrG5h" value="languageType" />
      <ref role="13i0hy" node="1zB5ET5xzrF" resolve="languageType" />
      <node concept="3Tm1VV" id="23XkovWspU_" role="1B3o_S" />
      <node concept="3clFbS" id="23XkovWspUC" role="3clF47">
        <node concept="3cpWs6" id="23XkovWspWo" role="3cqZAp">
          <node concept="2OqwBi" id="23XkovWsq6j" role="3cqZAk">
            <node concept="13iPFW" id="23XkovWspWH" role="2Oq$k0" />
            <node concept="3TrcHB" id="23XkovWsqiR" role="2OqNvi">
              <ref role="3TsBF5" to="xiqq:23XkovWsppH" resolve="languageName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="23XkovWspUD" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3wAsKTkvJWZ">
    <property role="3GE5qa" value="network.connections.data" />
    <ref role="13h7C2" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
    <node concept="13hLZK" id="3wAsKTkvJX0" role="13h7CW">
      <node concept="3clFbS" id="3wAsKTkvJX1" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3wAsKTkvJXa" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="3wAsKTkvJXn" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkvJXo" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkvK1n" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTkvLdS" role="3clFbG">
            <node concept="2OqwBi" id="3wAsKTkvKeN" role="2Oq$k0">
              <node concept="13iPFW" id="3wAsKTkvK1m" role="2Oq$k0" />
              <node concept="3TrEf2" id="3wAsKTkvKTt" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:7DSsXPFKSqX" resolve="value" />
              </node>
            </node>
            <node concept="2qgKlT" id="3wAsKTkvM4D" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3wAsKTkvJXp" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5fP$Xwj3ise">
    <property role="3GE5qa" value="canvas" />
    <ref role="13h7C2" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
    <node concept="13i0hz" id="5fP$Xwj3isp" role="13h7CS">
      <property role="TrG5h" value="getX" />
      <node concept="3Tm1VV" id="5fP$Xwj3isq" role="1B3o_S" />
      <node concept="10Oyi0" id="3IX4BsKaJqd" role="3clF45" />
      <node concept="3clFbS" id="5fP$Xwj3iss" role="3clF47">
        <node concept="3clFbF" id="5fP$Xwj3it5" role="3cqZAp">
          <node concept="2YIFZM" id="3IX4BsKaJ_p" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <ref role="37wK5l" to="wyt6:~Math.round(float)" resolve="round" />
            <node concept="2YIFZM" id="5fP$Xwj3itp" role="37wK5m">
              <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
              <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
              <node concept="2OqwBi" id="5fP$Xwj3iCB" role="37wK5m">
                <node concept="13iPFW" id="5fP$Xwj3iv3" role="2Oq$k0" />
                <node concept="3TrcHB" id="5fP$Xwj3iTt" role="2OqNvi">
                  <ref role="3TsBF5" to="xiqq:5fP$Xwj3irK" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5fP$Xwj3jp5" role="13h7CS">
      <property role="TrG5h" value="setX" />
      <node concept="3Tm1VV" id="5fP$Xwj3jp6" role="1B3o_S" />
      <node concept="3cqZAl" id="5fP$Xwj3jD4" role="3clF45" />
      <node concept="3clFbS" id="5fP$Xwj3jp8" role="3clF47">
        <node concept="3clFbF" id="5fP$Xwj3jMj" role="3cqZAp">
          <node concept="37vLTI" id="5fP$Xwj3kBW" role="3clFbG">
            <node concept="3cpWs3" id="5fP$Xwj3kZF" role="37vLTx">
              <node concept="37vLTw" id="5fP$Xwj3kZM" role="3uHU7w">
                <ref role="3cqZAo" node="5fP$Xwj3jGI" resolve="x" />
              </node>
              <node concept="Xl_RD" id="5fP$Xwj3kEp" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
            </node>
            <node concept="2OqwBi" id="5fP$Xwj3jU5" role="37vLTJ">
              <node concept="13iPFW" id="5fP$Xwj3jMi" role="2Oq$k0" />
              <node concept="3TrcHB" id="5fP$Xwj3k9g" role="2OqNvi">
                <ref role="3TsBF5" to="xiqq:5fP$Xwj3irK" resolve="x" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5fP$Xwj3jGI" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10OMs4" id="5fP$Xwj3jGH" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="5fP$Xwj3iXb" role="13h7CS">
      <property role="TrG5h" value="getY" />
      <node concept="3Tm1VV" id="5fP$Xwj3iXc" role="1B3o_S" />
      <node concept="10Oyi0" id="3IX4BsKaK62" role="3clF45" />
      <node concept="3clFbS" id="5fP$Xwj3iXe" role="3clF47">
        <node concept="3clFbF" id="5fP$Xwj3iXf" role="3cqZAp">
          <node concept="2YIFZM" id="3IX4BsKaJWk" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Math.round(float)" resolve="round" />
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <node concept="2YIFZM" id="3IX4BsKaJWl" role="37wK5m">
              <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
              <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
              <node concept="2OqwBi" id="3IX4BsKaJWm" role="37wK5m">
                <node concept="13iPFW" id="3IX4BsKaJWn" role="2Oq$k0" />
                <node concept="3TrcHB" id="3IX4BsKaKpa" role="2OqNvi">
                  <ref role="3TsBF5" to="xiqq:5fP$Xwj3irM" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5fP$Xwj3lay" role="13h7CS">
      <property role="TrG5h" value="setY" />
      <node concept="3Tm1VV" id="5fP$Xwj3laz" role="1B3o_S" />
      <node concept="3cqZAl" id="5fP$Xwj3la$" role="3clF45" />
      <node concept="3clFbS" id="5fP$Xwj3la_" role="3clF47">
        <node concept="3clFbF" id="5fP$Xwj3laA" role="3cqZAp">
          <node concept="37vLTI" id="5fP$Xwj3laB" role="3clFbG">
            <node concept="3cpWs3" id="5fP$Xwj3laC" role="37vLTx">
              <node concept="37vLTw" id="5fP$Xwj3laD" role="3uHU7w">
                <ref role="3cqZAo" node="5fP$Xwj3laI" resolve="y" />
              </node>
              <node concept="Xl_RD" id="5fP$Xwj3laE" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
            </node>
            <node concept="2OqwBi" id="5fP$Xwj3laF" role="37vLTJ">
              <node concept="13iPFW" id="5fP$Xwj3laG" role="2Oq$k0" />
              <node concept="3TrcHB" id="5fP$Xwj3m1_" role="2OqNvi">
                <ref role="3TsBF5" to="xiqq:5fP$Xwj3irM" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5fP$Xwj3laI" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10OMs4" id="5fP$Xwj3laJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="5fP$Xwj3m8c" role="13h7CS">
      <property role="TrG5h" value="set" />
      <node concept="37vLTG" id="5fP$Xwj3miK" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10OMs4" id="5fP$Xwj3miY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5fP$Xwj3mjq" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10OMs4" id="5fP$Xwj3mjE" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5fP$Xwj3m8d" role="1B3o_S" />
      <node concept="3cqZAl" id="5fP$Xwj3mit" role="3clF45" />
      <node concept="3clFbS" id="5fP$Xwj3m8f" role="3clF47">
        <node concept="3clFbF" id="5fP$Xwj3mPH" role="3cqZAp">
          <node concept="BsUDl" id="5fP$Xwj3mPG" role="3clFbG">
            <ref role="37wK5l" node="5fP$Xwj3jp5" resolve="setX" />
            <node concept="37vLTw" id="5fP$Xwj3mQ6" role="37wK5m">
              <ref role="3cqZAo" node="5fP$Xwj3miK" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$Xwj3mQp" role="3cqZAp">
          <node concept="BsUDl" id="5fP$Xwj3mQq" role="3clFbG">
            <ref role="37wK5l" node="5fP$Xwj3lay" resolve="setY" />
            <node concept="37vLTw" id="5fP$Xwj3mRh" role="37wK5m">
              <ref role="3cqZAo" node="5fP$Xwj3mjq" resolve="y" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5fP$Xwj3isf" role="13h7CW">
      <node concept="3clFbS" id="5fP$Xwj3isg" role="2VODD2">
        <node concept="3clFbF" id="3IX4BsKhQ$p" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKhQG3" role="3clFbG">
            <node concept="13iPFW" id="3IX4BsKhQ$o" role="2Oq$k0" />
            <node concept="2qgKlT" id="3IX4BsKhR40" role="2OqNvi">
              <ref role="37wK5l" node="5fP$Xwj3m8c" resolve="set" />
              <node concept="3cmrfG" id="3IX4BsKhR8g" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="3IX4BsKhRi0" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3IX4BsKoiGV">
    <property role="3GE5qa" value="canvas" />
    <ref role="13h7C2" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
    <node concept="13i0hz" id="3IX4BsKoiH9" role="13h7CS">
      <property role="TrG5h" value="getDX" />
      <node concept="3Tm1VV" id="3IX4BsKoiHa" role="1B3o_S" />
      <node concept="10Oyi0" id="3IX4BsKoiHp" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKoiHc" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKoiHP" role="3cqZAp">
          <node concept="2YIFZM" id="3IX4BsKoiIb" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <ref role="37wK5l" to="wyt6:~Math.round(float)" resolve="round" />
            <node concept="2YIFZM" id="3IX4BsKoiXk" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
              <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
              <node concept="2OqwBi" id="3IX4BsKojoU" role="37wK5m">
                <node concept="13iPFW" id="3IX4BsKojcn" role="2Oq$k0" />
                <node concept="3TrcHB" id="3IX4BsKojJi" role="2OqNvi">
                  <ref role="3TsBF5" to="xiqq:3IX4BsKoibI" resolve="dx" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3IX4BsKojRN" role="13h7CS">
      <property role="TrG5h" value="setDX" />
      <node concept="3Tm1VV" id="3IX4BsKojRO" role="1B3o_S" />
      <node concept="3cqZAl" id="3IX4BsKojWx" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKojRQ" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKojXm" role="3cqZAp">
          <node concept="37vLTI" id="3IX4BsKol0v" role="3clFbG">
            <node concept="3cpWs3" id="3IX4BsKolxj" role="37vLTx">
              <node concept="37vLTw" id="3IX4BsKolxq" role="3uHU7w">
                <ref role="3cqZAo" node="3IX4BsKojWX" resolve="dx" />
              </node>
              <node concept="Xl_RD" id="3IX4BsKolbL" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
            </node>
            <node concept="2OqwBi" id="3IX4BsKok5Q" role="37vLTJ">
              <node concept="13iPFW" id="3IX4BsKojXl" role="2Oq$k0" />
              <node concept="3TrcHB" id="3IX4BsKokse" role="2OqNvi">
                <ref role="3TsBF5" to="xiqq:3IX4BsKoibI" resolve="dx" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKojWX" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10OMs4" id="3IX4BsKojWW" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="3IX4BsKoiGW" role="13h7CW">
      <node concept="3clFbS" id="3IX4BsKoiGX" role="2VODD2">
        <node concept="3clFbF" id="3IX4BsKolCM" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKolLq" role="3clFbG">
            <node concept="13iPFW" id="3IX4BsKolCL" role="2Oq$k0" />
            <node concept="2qgKlT" id="3IX4BsKom0G" role="2OqNvi">
              <ref role="37wK5l" node="3IX4BsKojRN" resolve="setDX" />
              <node concept="3cmrfG" id="3IX4BsKom5d" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3IX4BsKonCB">
    <property role="3GE5qa" value="canvas" />
    <ref role="13h7C2" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
    <node concept="13i0hz" id="3IX4BsKoo4v" role="13h7CS">
      <property role="TrG5h" value="getDX1" />
      <node concept="3Tm1VV" id="3IX4BsKoo4w" role="1B3o_S" />
      <node concept="10Oyi0" id="3IX4BsKoo4x" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKoo4y" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKoo4z" role="3cqZAp">
          <node concept="2YIFZM" id="3IX4BsKoo4$" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <ref role="37wK5l" to="wyt6:~Math.round(float)" resolve="round" />
            <node concept="2YIFZM" id="3IX4BsKoo4_" role="37wK5m">
              <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
              <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
              <node concept="2OqwBi" id="3IX4BsKoo4A" role="37wK5m">
                <node concept="13iPFW" id="3IX4BsKoo4B" role="2Oq$k0" />
                <node concept="3TrcHB" id="3IX4BsKopuZ" role="2OqNvi">
                  <ref role="3TsBF5" to="xiqq:3IX4BsKomau" resolve="dx1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3IX4BsKoqdS" role="13h7CS">
      <property role="TrG5h" value="getDY" />
      <node concept="3Tm1VV" id="3IX4BsKoqdT" role="1B3o_S" />
      <node concept="10Oyi0" id="3IX4BsKoqdU" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKoqdV" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKoqdW" role="3cqZAp">
          <node concept="2YIFZM" id="3IX4BsKoqdX" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <ref role="37wK5l" to="wyt6:~Math.round(float)" resolve="round" />
            <node concept="2YIFZM" id="3IX4BsKoqdY" role="37wK5m">
              <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
              <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
              <node concept="2OqwBi" id="3IX4BsKoqdZ" role="37wK5m">
                <node concept="13iPFW" id="3IX4BsKoqe0" role="2Oq$k0" />
                <node concept="3TrcHB" id="3IX4BsKorYe" role="2OqNvi">
                  <ref role="3TsBF5" to="xiqq:3IX4BsKomaw" resolve="dy" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3IX4BsKoq$j" role="13h7CS">
      <property role="TrG5h" value="getDX2" />
      <node concept="3Tm1VV" id="3IX4BsKoq$k" role="1B3o_S" />
      <node concept="10Oyi0" id="3IX4BsKoq$l" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKoq$m" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKoq$n" role="3cqZAp">
          <node concept="2YIFZM" id="3IX4BsKoq$o" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <ref role="37wK5l" to="wyt6:~Math.round(float)" resolve="round" />
            <node concept="2YIFZM" id="3IX4BsKoq$p" role="37wK5m">
              <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
              <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String)" resolve="parseFloat" />
              <node concept="2OqwBi" id="3IX4BsKoq$q" role="37wK5m">
                <node concept="13iPFW" id="3IX4BsKoq$r" role="2Oq$k0" />
                <node concept="3TrcHB" id="3IX4BsKosFk" role="2OqNvi">
                  <ref role="3TsBF5" to="xiqq:3IX4BsKomaz" resolve="dx2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3IX4BsKoo4D" role="13h7CS">
      <property role="TrG5h" value="setDX1" />
      <node concept="3Tm1VV" id="3IX4BsKoo4E" role="1B3o_S" />
      <node concept="3cqZAl" id="3IX4BsKoo4F" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKoo4G" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKoo4H" role="3cqZAp">
          <node concept="37vLTI" id="3IX4BsKoo4I" role="3clFbG">
            <node concept="3cpWs3" id="3IX4BsKoo4J" role="37vLTx">
              <node concept="37vLTw" id="3IX4BsKoo4K" role="3uHU7w">
                <ref role="3cqZAo" node="3IX4BsKoo4P" resolve="dx1" />
              </node>
              <node concept="Xl_RD" id="3IX4BsKoo4L" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
            </node>
            <node concept="2OqwBi" id="3IX4BsKoo4M" role="37vLTJ">
              <node concept="13iPFW" id="3IX4BsKoo4N" role="2Oq$k0" />
              <node concept="3TrcHB" id="3IX4BsKovGf" role="2OqNvi">
                <ref role="3TsBF5" to="xiqq:3IX4BsKomau" resolve="dx1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKoo4P" role="3clF46">
        <property role="TrG5h" value="dx1" />
        <node concept="10OMs4" id="3IX4BsKoo4Q" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="3IX4BsKovSa" role="13h7CS">
      <property role="TrG5h" value="setDY" />
      <node concept="3Tm1VV" id="3IX4BsKovSb" role="1B3o_S" />
      <node concept="3cqZAl" id="3IX4BsKovSc" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKovSd" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKovSe" role="3cqZAp">
          <node concept="37vLTI" id="3IX4BsKovSf" role="3clFbG">
            <node concept="3cpWs3" id="3IX4BsKovSg" role="37vLTx">
              <node concept="37vLTw" id="3IX4BsKovSh" role="3uHU7w">
                <ref role="3cqZAo" node="3IX4BsKovSm" resolve="dy" />
              </node>
              <node concept="Xl_RD" id="3IX4BsKovSi" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
            </node>
            <node concept="2OqwBi" id="3IX4BsKovSj" role="37vLTJ">
              <node concept="13iPFW" id="3IX4BsKovSk" role="2Oq$k0" />
              <node concept="3TrcHB" id="3IX4BsKowOc" role="2OqNvi">
                <ref role="3TsBF5" to="xiqq:3IX4BsKomaw" resolve="dy" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKovSm" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10OMs4" id="3IX4BsKovSn" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="3IX4BsKox07" role="13h7CS">
      <property role="TrG5h" value="setDX2" />
      <node concept="3Tm1VV" id="3IX4BsKox08" role="1B3o_S" />
      <node concept="3cqZAl" id="3IX4BsKox09" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKox0a" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKox0b" role="3cqZAp">
          <node concept="37vLTI" id="3IX4BsKox0c" role="3clFbG">
            <node concept="3cpWs3" id="3IX4BsKox0d" role="37vLTx">
              <node concept="37vLTw" id="3IX4BsKox0e" role="3uHU7w">
                <ref role="3cqZAo" node="3IX4BsKox0j" resolve="dx2" />
              </node>
              <node concept="Xl_RD" id="3IX4BsKox0f" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
            </node>
            <node concept="2OqwBi" id="3IX4BsKox0g" role="37vLTJ">
              <node concept="13iPFW" id="3IX4BsKox0h" role="2Oq$k0" />
              <node concept="3TrcHB" id="3IX4BsKoy83" role="2OqNvi">
                <ref role="3TsBF5" to="xiqq:3IX4BsKomaz" resolve="dx2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKox0j" role="3clF46">
        <property role="TrG5h" value="dx2" />
        <node concept="10OMs4" id="3IX4BsKox0k" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="3IX4BsKouNu" role="13h7CS">
      <property role="TrG5h" value="set" />
      <node concept="3Tm1VV" id="3IX4BsKouNv" role="1B3o_S" />
      <node concept="3cqZAl" id="3IX4BsKouNw" role="3clF45" />
      <node concept="3clFbS" id="3IX4BsKouNx" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKoyo_" role="3cqZAp">
          <node concept="BsUDl" id="3IX4BsKoyo$" role="3clFbG">
            <ref role="37wK5l" node="3IX4BsKoo4D" resolve="setDX1" />
            <node concept="37vLTw" id="3IX4BsKoyoY" role="37wK5m">
              <ref role="3cqZAo" node="3IX4BsKouNE" resolve="dx1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3IX4BsKoyvk" role="3cqZAp">
          <node concept="BsUDl" id="3IX4BsKoyvi" role="3clFbG">
            <ref role="37wK5l" node="3IX4BsKovSa" resolve="setDY" />
            <node concept="37vLTw" id="3IX4BsKoyw5" role="37wK5m">
              <ref role="3cqZAo" node="3IX4BsKouNG" resolve="dy" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3IX4BsKoyph" role="3cqZAp">
          <node concept="BsUDl" id="3IX4BsKoypi" role="3clFbG">
            <ref role="37wK5l" node="3IX4BsKox07" resolve="setDX2" />
            <node concept="37vLTw" id="3IX4BsKoysB" role="37wK5m">
              <ref role="3cqZAo" node="3IX4BsKouNI" resolve="dx2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKouNE" role="3clF46">
        <property role="TrG5h" value="dx1" />
        <node concept="10OMs4" id="3IX4BsKouNF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3IX4BsKouNG" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10OMs4" id="3IX4BsKouNH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3IX4BsKouNI" role="3clF46">
        <property role="TrG5h" value="dx2" />
        <node concept="10OMs4" id="3IX4BsKouNJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="3IX4BsKonCC" role="13h7CW">
      <node concept="3clFbS" id="3IX4BsKonCD" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3IX4BsKqy7c">
    <property role="3GE5qa" value="network.connections" />
    <ref role="13h7C2" to="xiqq:4KieeRVlhii" resolve="Connection" />
    <node concept="13hLZK" id="3IX4BsKqy7d" role="13h7CW">
      <node concept="3clFbS" id="3IX4BsKqy7e" role="2VODD2">
        <node concept="3clFbF" id="3IX4BsKqy7o" role="3cqZAp">
          <node concept="37vLTI" id="3IX4BsKqza8" role="3clFbG">
            <node concept="2ShNRf" id="3IX4BsKqzeq" role="37vLTx">
              <node concept="3zrR0B" id="3IX4BsKqzeo" role="2ShVmc">
                <node concept="3Tqbb2" id="3IX4BsKqzep" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:3IX4BsKoiap" resolve="StraightConnectionPath" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3IX4BsKqyf2" role="37vLTJ">
              <node concept="13iPFW" id="3IX4BsKqy7n" role="2Oq$k0" />
              <node concept="3TrEf2" id="3IX4BsKqyz3" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5jb5jNC67xo">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
    <node concept="13hLZK" id="5jb5jNC67xp" role="13h7CW">
      <node concept="3clFbS" id="5jb5jNC67xq" role="2VODD2">
        <node concept="3clFbF" id="5jb5jNC67x$" role="3cqZAp">
          <node concept="37vLTI" id="5jb5jNC68zg" role="3clFbG">
            <node concept="2ShNRf" id="5jb5jNC68BH" role="37vLTx">
              <node concept="3zrR0B" id="5jb5jNC68BF" role="2ShVmc">
                <node concept="3Tqbb2" id="5jb5jNC68BG" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5jb5jNC67E4" role="37vLTJ">
              <node concept="13iPFW" id="5jb5jNC67xz" role="2Oq$k0" />
              <node concept="3TrEf2" id="5jb5jNC68fy" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5jb5jNCauIw">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="13h7C2" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
    <node concept="13hLZK" id="5jb5jNCauIx" role="13h7CW">
      <node concept="3clFbS" id="5jb5jNCauIy" role="2VODD2">
        <node concept="3clFbF" id="5jb5jNCauJ1" role="3cqZAp">
          <node concept="37vLTI" id="5jb5jNCavGQ" role="3clFbG">
            <node concept="2ShNRf" id="5jb5jNCavL8" role="37vLTx">
              <node concept="3zrR0B" id="5jb5jNCavL6" role="2ShVmc">
                <node concept="3Tqbb2" id="5jb5jNCavL7" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5jb5jNCauQF" role="37vLTJ">
              <node concept="13iPFW" id="5jb5jNCauJ0" role="2Oq$k0" />
              <node concept="3TrEf2" id="5jb5jNCavmX" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRJtJd" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRJtJe" role="3clFbG">
            <node concept="2ShNRf" id="38k27IRJtJf" role="37vLTx">
              <node concept="3zrR0B" id="38k27IRJtJg" role="2ShVmc">
                <node concept="3Tqbb2" id="38k27IRJtJh" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="38k27IRJtJi" role="37vLTJ">
              <node concept="13iPFW" id="38k27IRJtJj" role="2Oq$k0" />
              <node concept="3TrEf2" id="38k27IRJu4i" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZaIs" resolve="condition" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

