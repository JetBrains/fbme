<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:15c4f516-1dda-43ce-8ca8-7bc6eb823edc(iec61499.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="v900" ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(iec61499.ide)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(iec61499.structure)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
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
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
  </registry>
  <node concept="2S6QgY" id="3FOY8IKiJxz">
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="StartWatchingForEvent" />
    <ref role="2ZfgGC" to="xiqq:PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="2S6ZIM" id="3FOY8IKiJx$" role="2ZfVej">
      <node concept="3clFbS" id="3FOY8IKiJx_" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKiJNG" role="3cqZAp">
          <node concept="3cpWs3" id="3FOY8IKiLIW" role="3clFbG">
            <node concept="2OqwBi" id="3FOY8IKiM83" role="3uHU7w">
              <node concept="2Sf5sV" id="3FOY8IKiLRK" role="2Oq$k0" />
              <node concept="2qgKlT" id="3FOY8IKiMC$" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
            <node concept="Xl_RD" id="3FOY8IKiJNF" role="3uHU7B">
              <property role="Xl_RC" value="Start watching for " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FOY8IKiJxA" role="2ZfgGD">
      <node concept="3clFbS" id="3FOY8IKiJxB" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKiUjP" role="3cqZAp">
          <node concept="2OqwBi" id="3FOY8IKiUqU" role="3clFbG">
            <node concept="2YIFZM" id="3FOY8IKiUlm" role="2Oq$k0">
              <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
              <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="liA8E" id="3FOY8IKiUxv" role="2OqNvi">
              <ref role="37wK5l" to="v900:5jACUPF_VLV" resolve="watch" />
              <node concept="2OqwBi" id="4uvvnUOu46E" role="37wK5m">
                <node concept="2Sf5sV" id="4uvvnUOu46F" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4uvvnUOu46G" role="2OqNvi">
                  <node concept="1xMEDy" id="4uvvnUOu46H" role="1xVPHs">
                    <node concept="chp4Y" id="4uvvnUOu46I" role="ri$Ld">
                      <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1PxgMI" id="3FOY8IKiVV2" role="37wK5m">
                <node concept="chp4Y" id="3FOY8IKiVYx" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
                <node concept="2OqwBi" id="3FOY8IKiUGk" role="1m5AlR">
                  <node concept="2Sf5sV" id="3FOY8IKiUyr" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3FOY8IKiURn" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3FOY8IKiWTz" role="37wK5m">
                <node concept="2OqwBi" id="3FOY8IKiWht" role="2Oq$k0">
                  <node concept="2Sf5sV" id="3FOY8IKiW77" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3FOY8IKiW_N" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3FOY8IKiXq_" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3FOY8IKiXwd" role="2ZfVeh">
      <node concept="3clFbS" id="3FOY8IKiXwe" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKiXVY" role="3cqZAp">
          <node concept="1Wc70l" id="3FOY8IKj11R" role="3clFbG">
            <node concept="2OqwBi" id="3FOY8IKiZ3o" role="3uHU7B">
              <node concept="2OqwBi" id="3FOY8IKiY95" role="2Oq$k0">
                <node concept="2Sf5sV" id="3FOY8IKiXVX" role="2Oq$k0" />
                <node concept="3TrEf2" id="3FOY8IKiYCf" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                </node>
              </node>
              <node concept="1mIQ4w" id="3FOY8IKiZLk" role="2OqNvi">
                <node concept="chp4Y" id="3FOY8IKj00e" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3FOY8IKj1RR" role="3uHU7w">
              <node concept="2OqwBi" id="3FOY8IKj1RT" role="3fr31v">
                <node concept="2YIFZM" id="3FOY8IKj1RU" role="2Oq$k0">
                  <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
                  <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="3FOY8IKj1RV" role="2OqNvi">
                  <ref role="37wK5l" to="v900:5jACUPF_X3O" resolve="isWatched" />
                  <node concept="2OqwBi" id="6K_0vqjiGDf" role="37wK5m">
                    <node concept="2Sf5sV" id="6K_0vqjiGDg" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="6K_0vqjiGDh" role="2OqNvi">
                      <node concept="1xMEDy" id="6K_0vqjiGDi" role="1xVPHs">
                        <node concept="chp4Y" id="6K_0vqjiGDj" role="ri$Ld">
                          <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1PxgMI" id="3FOY8IKj1RW" role="37wK5m">
                    <node concept="chp4Y" id="3FOY8IKj1RX" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                    </node>
                    <node concept="2OqwBi" id="3FOY8IKj1RY" role="1m5AlR">
                      <node concept="2Sf5sV" id="3FOY8IKj1RZ" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3FOY8IKj1S0" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3FOY8IKj1S1" role="37wK5m">
                    <node concept="2OqwBi" id="3FOY8IKj1S2" role="2Oq$k0">
                      <node concept="2Sf5sV" id="3FOY8IKj1S3" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3FOY8IKj1S4" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3FOY8IKj1S5" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
  <node concept="2S6QgY" id="3FOY8IKj3lT">
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="StartWatchingForData" />
    <ref role="2ZfgGC" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="2S6ZIM" id="3FOY8IKj3lU" role="2ZfVej">
      <node concept="3clFbS" id="3FOY8IKj3lV" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKj3lW" role="3cqZAp">
          <node concept="3cpWs3" id="3FOY8IKj3lX" role="3clFbG">
            <node concept="2OqwBi" id="3FOY8IKj3lY" role="3uHU7w">
              <node concept="2Sf5sV" id="3FOY8IKj3lZ" role="2Oq$k0" />
              <node concept="2qgKlT" id="3FOY8IKj3m0" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
            <node concept="Xl_RD" id="3FOY8IKj3m1" role="3uHU7B">
              <property role="Xl_RC" value="Start watching for " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FOY8IKj3m2" role="2ZfgGD">
      <node concept="3clFbS" id="3FOY8IKj3m3" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKj3m4" role="3cqZAp">
          <node concept="2OqwBi" id="3FOY8IKj3m5" role="3clFbG">
            <node concept="2YIFZM" id="3FOY8IKj3m6" role="2Oq$k0">
              <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
              <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="liA8E" id="3FOY8IKj3m7" role="2OqNvi">
              <ref role="37wK5l" to="v900:5jACUPF_VLV" resolve="watch" />
              <node concept="2OqwBi" id="4uvvnUOu2gG" role="37wK5m">
                <node concept="2Sf5sV" id="4uvvnUOu26d" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4uvvnUOu2Kg" role="2OqNvi">
                  <node concept="1xMEDy" id="4uvvnUOu2Ki" role="1xVPHs">
                    <node concept="chp4Y" id="4uvvnUOu2OK" role="ri$Ld">
                      <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1PxgMI" id="3FOY8IKj3m8" role="37wK5m">
                <node concept="chp4Y" id="3FOY8IKj3m9" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
                <node concept="2OqwBi" id="3FOY8IKj3ma" role="1m5AlR">
                  <node concept="2Sf5sV" id="3FOY8IKj3mb" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3FOY8IKj3mc" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3FOY8IKj3md" role="37wK5m">
                <node concept="2OqwBi" id="3FOY8IKj3me" role="2Oq$k0">
                  <node concept="2Sf5sV" id="3FOY8IKj3mf" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3FOY8IKj3mg" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3FOY8IKj3mh" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3FOY8IKj3mi" role="2ZfVeh">
      <node concept="3clFbS" id="3FOY8IKj3mj" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKj3mk" role="3cqZAp">
          <node concept="1Wc70l" id="3FOY8IKj3ml" role="3clFbG">
            <node concept="2OqwBi" id="3FOY8IKj3mm" role="3uHU7B">
              <node concept="2OqwBi" id="3FOY8IKj3mn" role="2Oq$k0">
                <node concept="2Sf5sV" id="3FOY8IKj3mo" role="2Oq$k0" />
                <node concept="3TrEf2" id="3FOY8IKj3mp" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                </node>
              </node>
              <node concept="1mIQ4w" id="3FOY8IKj3mq" role="2OqNvi">
                <node concept="chp4Y" id="3FOY8IKj3mr" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3FOY8IKj3ms" role="3uHU7w">
              <node concept="2OqwBi" id="3FOY8IKj3mt" role="3fr31v">
                <node concept="2YIFZM" id="3FOY8IKj3mu" role="2Oq$k0">
                  <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
                  <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="3FOY8IKj3mv" role="2OqNvi">
                  <ref role="37wK5l" to="v900:5jACUPF_X3O" resolve="isWatched" />
                  <node concept="2OqwBi" id="6K_0vqjiF_s" role="37wK5m">
                    <node concept="2Sf5sV" id="6K_0vqjiF_t" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="6K_0vqjiF_u" role="2OqNvi">
                      <node concept="1xMEDy" id="6K_0vqjiF_v" role="1xVPHs">
                        <node concept="chp4Y" id="6K_0vqjiF_w" role="ri$Ld">
                          <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1PxgMI" id="3FOY8IKj3mw" role="37wK5m">
                    <node concept="chp4Y" id="3FOY8IKj3mx" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                    </node>
                    <node concept="2OqwBi" id="3FOY8IKj3my" role="1m5AlR">
                      <node concept="2Sf5sV" id="3FOY8IKj3mz" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3FOY8IKj3m$" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3FOY8IKj3m_" role="37wK5m">
                    <node concept="2OqwBi" id="3FOY8IKj3mA" role="2Oq$k0">
                      <node concept="2Sf5sV" id="3FOY8IKj3mB" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3FOY8IKj3mC" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3FOY8IKj3mD" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
  <node concept="2S6QgY" id="3FOY8IKj5JG">
    <property role="3GE5qa" value="network.connections.data" />
    <property role="TrG5h" value="StopWatchingForData" />
    <ref role="2ZfgGC" to="xiqq:PI_pXYus3W" resolve="ComponentDataEndpoint" />
    <node concept="2S6ZIM" id="3FOY8IKj5JH" role="2ZfVej">
      <node concept="3clFbS" id="3FOY8IKj5JI" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKj5JJ" role="3cqZAp">
          <node concept="3cpWs3" id="3FOY8IKj5JK" role="3clFbG">
            <node concept="2OqwBi" id="3FOY8IKj5JL" role="3uHU7w">
              <node concept="2Sf5sV" id="3FOY8IKj5JM" role="2Oq$k0" />
              <node concept="2qgKlT" id="3FOY8IKj5JN" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
            <node concept="Xl_RD" id="3FOY8IKj5JO" role="3uHU7B">
              <property role="Xl_RC" value="Stop watching for " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FOY8IKj5JP" role="2ZfgGD">
      <node concept="3clFbS" id="3FOY8IKj5JQ" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKj5JR" role="3cqZAp">
          <node concept="2OqwBi" id="3FOY8IKj5JS" role="3clFbG">
            <node concept="2YIFZM" id="3FOY8IKj5JT" role="2Oq$k0">
              <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
              <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="liA8E" id="3FOY8IKj5JU" role="2OqNvi">
              <ref role="37wK5l" to="v900:5jACUPFAos4" resolve="unwatch" />
              <node concept="2OqwBi" id="4uvvnUOu5aV" role="37wK5m">
                <node concept="2Sf5sV" id="4uvvnUOu5aW" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4uvvnUOu5aX" role="2OqNvi">
                  <node concept="1xMEDy" id="4uvvnUOu5aY" role="1xVPHs">
                    <node concept="chp4Y" id="4uvvnUOu5aZ" role="ri$Ld">
                      <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1PxgMI" id="3FOY8IKj5JV" role="37wK5m">
                <node concept="chp4Y" id="3FOY8IKj5JW" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
                <node concept="2OqwBi" id="3FOY8IKj5JX" role="1m5AlR">
                  <node concept="2Sf5sV" id="3FOY8IKj5JY" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3FOY8IKj5JZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3FOY8IKj5K0" role="37wK5m">
                <node concept="2OqwBi" id="3FOY8IKj5K1" role="2Oq$k0">
                  <node concept="2Sf5sV" id="3FOY8IKj5K2" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3FOY8IKj5K3" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3FOY8IKj5K4" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3FOY8IKj5K5" role="2ZfVeh">
      <node concept="3clFbS" id="3FOY8IKj5K6" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKj5K7" role="3cqZAp">
          <node concept="1Wc70l" id="3FOY8IKj5K8" role="3clFbG">
            <node concept="2OqwBi" id="3FOY8IKj5K9" role="3uHU7B">
              <node concept="2OqwBi" id="3FOY8IKj5Ka" role="2Oq$k0">
                <node concept="2Sf5sV" id="3FOY8IKj5Kb" role="2Oq$k0" />
                <node concept="3TrEf2" id="3FOY8IKj5Kc" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                </node>
              </node>
              <node concept="1mIQ4w" id="3FOY8IKj5Kd" role="2OqNvi">
                <node concept="chp4Y" id="3FOY8IKj5Ke" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3FOY8IKj5Kg" role="3uHU7w">
              <node concept="2YIFZM" id="3FOY8IKj5Kh" role="2Oq$k0">
                <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
                <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="3FOY8IKj5Ki" role="2OqNvi">
                <ref role="37wK5l" to="v900:5jACUPF_X3O" resolve="isWatched" />
                <node concept="2OqwBi" id="6K_0vqjiHQv" role="37wK5m">
                  <node concept="2Sf5sV" id="6K_0vqjiHQw" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="6K_0vqjiHQx" role="2OqNvi">
                    <node concept="1xMEDy" id="6K_0vqjiHQy" role="1xVPHs">
                      <node concept="chp4Y" id="6K_0vqjiHQz" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1PxgMI" id="3FOY8IKj5Kj" role="37wK5m">
                  <node concept="chp4Y" id="3FOY8IKj5Kk" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                  </node>
                  <node concept="2OqwBi" id="3FOY8IKj5Kl" role="1m5AlR">
                    <node concept="2Sf5sV" id="3FOY8IKj5Km" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3FOY8IKj5Kn" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus3R" resolve="component" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3FOY8IKj5Ko" role="37wK5m">
                  <node concept="2OqwBi" id="3FOY8IKj5Kp" role="2Oq$k0">
                    <node concept="2Sf5sV" id="3FOY8IKj5Kq" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3FOY8IKj5Kr" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3FOY8IKj5Ks" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3FOY8IKj89I">
    <property role="3GE5qa" value="network.connections.event" />
    <property role="TrG5h" value="StopWatchingForEvent" />
    <ref role="2ZfgGC" to="xiqq:PI_pXYus4l" resolve="ComponentEventEndpoint" />
    <node concept="2S6ZIM" id="3FOY8IKj89J" role="2ZfVej">
      <node concept="3clFbS" id="3FOY8IKj89K" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKj89L" role="3cqZAp">
          <node concept="3cpWs3" id="3FOY8IKj89M" role="3clFbG">
            <node concept="2OqwBi" id="3FOY8IKj89N" role="3uHU7w">
              <node concept="2Sf5sV" id="3FOY8IKj89O" role="2Oq$k0" />
              <node concept="2qgKlT" id="3FOY8IKj89P" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
            <node concept="Xl_RD" id="3FOY8IKj89Q" role="3uHU7B">
              <property role="Xl_RC" value="Stop watching for " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3FOY8IKj89R" role="2ZfgGD">
      <node concept="3clFbS" id="3FOY8IKj89S" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKj89T" role="3cqZAp">
          <node concept="2OqwBi" id="3FOY8IKj89U" role="3clFbG">
            <node concept="2YIFZM" id="3FOY8IKj89V" role="2Oq$k0">
              <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
              <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="liA8E" id="3FOY8IKj89W" role="2OqNvi">
              <ref role="37wK5l" to="v900:5jACUPFAos4" resolve="unwatch" />
              <node concept="2OqwBi" id="4uvvnUOu62A" role="37wK5m">
                <node concept="2Sf5sV" id="4uvvnUOu62B" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4uvvnUOu62C" role="2OqNvi">
                  <node concept="1xMEDy" id="4uvvnUOu62D" role="1xVPHs">
                    <node concept="chp4Y" id="4uvvnUOu62E" role="ri$Ld">
                      <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1PxgMI" id="3FOY8IKj89X" role="37wK5m">
                <node concept="chp4Y" id="3FOY8IKj89Y" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
                <node concept="2OqwBi" id="3FOY8IKj89Z" role="1m5AlR">
                  <node concept="2Sf5sV" id="3FOY8IKj8a0" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3FOY8IKj8a1" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3FOY8IKj8a2" role="37wK5m">
                <node concept="2OqwBi" id="3FOY8IKj8a3" role="2Oq$k0">
                  <node concept="2Sf5sV" id="3FOY8IKj8a4" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3FOY8IKj8a5" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3FOY8IKj8a6" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="3FOY8IKj8a7" role="2ZfVeh">
      <node concept="3clFbS" id="3FOY8IKj8a8" role="2VODD2">
        <node concept="3clFbF" id="3FOY8IKj8a9" role="3cqZAp">
          <node concept="1Wc70l" id="3FOY8IKj8aa" role="3clFbG">
            <node concept="2OqwBi" id="3FOY8IKj8ab" role="3uHU7B">
              <node concept="2OqwBi" id="3FOY8IKj8ac" role="2Oq$k0">
                <node concept="2Sf5sV" id="3FOY8IKj8ad" role="2Oq$k0" />
                <node concept="3TrEf2" id="3FOY8IKj8ae" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                </node>
              </node>
              <node concept="1mIQ4w" id="3FOY8IKj8af" role="2OqNvi">
                <node concept="chp4Y" id="3FOY8IKj8ag" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3FOY8IKj8ah" role="3uHU7w">
              <node concept="2YIFZM" id="3FOY8IKj8ai" role="2Oq$k0">
                <ref role="1Pybhc" to="v900:3wAsKTk9819" resolve="WatcherFacade" />
                <ref role="37wK5l" to="v900:5jACUPF_QUm" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="3FOY8IKj8aj" role="2OqNvi">
                <ref role="37wK5l" to="v900:5jACUPF_X3O" resolve="isWatched" />
                <node concept="2OqwBi" id="6K_0vqjiJ3S" role="37wK5m">
                  <node concept="2Sf5sV" id="6K_0vqjiJ3T" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="6K_0vqjiJ3U" role="2OqNvi">
                    <node concept="1xMEDy" id="6K_0vqjiJ3V" role="1xVPHs">
                      <node concept="chp4Y" id="6K_0vqjiJ3W" role="ri$Ld">
                        <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1PxgMI" id="3FOY8IKj8ak" role="37wK5m">
                  <node concept="chp4Y" id="3FOY8IKj8al" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                  </node>
                  <node concept="2OqwBi" id="3FOY8IKj8am" role="1m5AlR">
                    <node concept="2Sf5sV" id="3FOY8IKj8an" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3FOY8IKj8ao" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3FOY8IKj8ap" role="37wK5m">
                  <node concept="2OqwBi" id="3FOY8IKj8aq" role="2Oq$k0">
                    <node concept="2Sf5sV" id="3FOY8IKj8ar" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3FOY8IKj8as" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3FOY8IKj8at" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="1AAdgmLZuyE">
    <property role="3GE5qa" value="resources" />
    <property role="TrG5h" value="DeployResource" />
    <ref role="2ZfgGC" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="2S6ZIM" id="1AAdgmLZuyF" role="2ZfVej">
      <node concept="3clFbS" id="1AAdgmLZuyG" role="2VODD2">
        <node concept="3clFbF" id="1AAdgmLZuFN" role="3cqZAp">
          <node concept="Xl_RD" id="1AAdgmLZuFM" role="3clFbG">
            <property role="Xl_RC" value="Deploy Resource" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1AAdgmLZuyH" role="2ZfgGD">
      <node concept="3clFbS" id="1AAdgmLZuyI" role="2VODD2">
        <node concept="SfApY" id="4uvvnUOsm5e" role="3cqZAp">
          <node concept="3clFbS" id="4uvvnUOsm5g" role="SfCbr">
            <node concept="3cpWs8" id="4uvvnUOsgMT" role="3cqZAp">
              <node concept="3cpWsn" id="4uvvnUOsgMU" role="3cpWs9">
                <property role="TrG5h" value="client" />
                <node concept="3uibUv" id="4uvvnUOsgMR" role="1tU5fm">
                  <ref role="3uigEE" to="v900:3wAsKTk9bGj" resolve="ForteDeviceClient" />
                </node>
                <node concept="2YIFZM" id="4uvvnUOsgMV" role="33vP2m">
                  <ref role="37wK5l" to="v900:3wAsKTkhPKR" resolve="attach" />
                  <ref role="1Pybhc" to="v900:3wAsKTkhPuA" resolve="ForteDevicesFacade" />
                  <node concept="1PxgMI" id="4uvvnUOsgMW" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="4uvvnUOsgMX" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                    </node>
                    <node concept="2OqwBi" id="4uvvnUOsgMY" role="1m5AlR">
                      <node concept="2Sf5sV" id="4uvvnUOsgMZ" role="2Oq$k0" />
                      <node concept="1mfA1w" id="4uvvnUOsgN0" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4uvvnUOsfmj" role="3cqZAp">
              <node concept="2OqwBi" id="4uvvnUOshqs" role="3clFbG">
                <node concept="37vLTw" id="4uvvnUOsgN1" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uvvnUOsgMU" resolve="client" />
                </node>
                <node concept="liA8E" id="4uvvnUOslX8" role="2OqNvi">
                  <ref role="37wK5l" to="v900:3wAsKTktpyN" resolve="deployResource" />
                  <node concept="2Sf5sV" id="4uvvnUOslYd" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4uvvnUOsm5h" role="TEbGg">
            <node concept="3cpWsn" id="4uvvnUOsm5j" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4uvvnUOssO$" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4uvvnUOsm5n" role="TDEfX">
              <node concept="RRSsy" id="4uvvnUOssV4" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="37vLTw" id="4uvvnUOssV8" role="RRSow">
                  <ref role="3cqZAo" node="4uvvnUOsm5j" resolve="e" />
                </node>
                <node concept="Xl_RD" id="4uvvnUOssYe" role="RRSoy">
                  <property role="Xl_RC" value="on resource deployment" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

