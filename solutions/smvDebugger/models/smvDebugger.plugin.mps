<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1c3e83f1-dc29-416c-9a91-7ca7507c87bb(smvDebugger.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="fhh" ref="r:f4a915f7-fe0a-4d70-93d8-9a6c9b61418e(smvDebugger.java)" />
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.interfacepart)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(mps.iec61499.model.interfacepart)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(richediting.plugin)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" implicit="true" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" implicit="true" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
      </concept>
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
      </concept>
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
      <concept id="681855071694758165" name="jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation" flags="nn" index="LR4U6">
        <reference id="681855071694758166" name="tool" index="LR4U5" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="2iJMYskfEgF" />
  <node concept="tC5Ba" id="2iJMYskfEgG">
    <property role="TrG5h" value="SmvDebuggerGroup" />
    <node concept="ftmFs" id="2iJMYskfEgI" role="ftER_">
      <node concept="tCFHf" id="2iJMYskfECv" role="ftvYc">
        <ref role="tCJdB" node="2iJMYskfEgN" resolve="Debug SMV" />
      </node>
    </node>
    <node concept="tT9cl" id="2b77TIBZnmz" role="2f5YQi">
      <ref role="tU$_T" to="5z5t:3DiEZ8TON84" resolve="IEC61499Actions" />
    </node>
  </node>
  <node concept="sE7Ow" id="2iJMYskfEgN">
    <property role="TrG5h" value="Debug SMV" />
    <property role="2uzpH1" value="Debug SMV" />
    <node concept="tnohg" id="2iJMYskfEgO" role="tncku">
      <node concept="3clFbS" id="2iJMYskfEgP" role="2VODD2">
        <node concept="3cpWs8" id="2iJMYskfNpF" role="3cqZAp">
          <node concept="3cpWsn" id="2iJMYskfNpI" role="3cpWs9">
            <property role="TrG5h" value="debugger" />
            <node concept="1xUVSX" id="2iJMYskfNpD" role="1tU5fm">
              <ref role="1xYkEM" node="2iJMYskfET2" resolve="Debug SMV" />
            </node>
            <node concept="2OqwBi" id="2iJMYskfPc1" role="33vP2m">
              <node concept="2OqwBi" id="2iJMYskfOmy" role="2Oq$k0">
                <node concept="2WthIp" id="2iJMYskfO7z" role="2Oq$k0" />
                <node concept="1DTwFV" id="2iJMYskfOTo" role="2OqNvi">
                  <ref role="2WH_rO" node="2iJMYskfKmp" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="2iJMYskfPMY" role="2OqNvi">
                <ref role="LR4U5" node="2iJMYskfET2" resolve="Debug SMV" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2b77TIBOqiK" role="3cqZAp">
          <node concept="2OqwBi" id="2b77TIBOquG" role="3clFbG">
            <node concept="37vLTw" id="2b77TIBOqiI" role="2Oq$k0">
              <ref role="3cqZAo" node="2iJMYskfNpI" resolve="debugger" />
            </node>
            <node concept="2XshWL" id="2b77TIBOrfQ" role="2OqNvi">
              <ref role="2WH_rO" node="7l78cIM8SQv" resolve="setProject" />
              <node concept="2OqwBi" id="2b77TIBZagw" role="2XxRq1">
                <node concept="2WthIp" id="2b77TIBZ9Gt" role="2Oq$k0" />
                <node concept="1DTwFV" id="2b77TIBZb9_" role="2OqNvi">
                  <ref role="2WH_rO" node="7l78cIM8G$B" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ryclnQeZre" role="3cqZAp">
          <node concept="2OqwBi" id="3ryclnQeZIY" role="3clFbG">
            <node concept="37vLTw" id="3ryclnQeZrc" role="2Oq$k0">
              <ref role="3cqZAo" node="2iJMYskfNpI" resolve="debugger" />
            </node>
            <node concept="2XshWL" id="3ryclnQf0$5" role="2OqNvi">
              <ref role="2WH_rO" node="3ryclnQbJrq" resolve="setCompositeFB" />
              <node concept="2ShNRf" id="3ryclnQf0In" role="2XxRq1">
                <node concept="1pGfFk" id="3ryclnQf1Cd" role="2ShVmc">
                  <ref role="37wK5l" to="go3h:1R4IoyQA3I2" resolve="CompositeFBTypeByNode" />
                  <node concept="10QFUN" id="3ryclnQf1Y5" role="37wK5m">
                    <node concept="3Tqbb2" id="3ryclnQf2oq" role="10QFUM">
                      <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="3ryclnQf3eQ" role="10QFUP">
                      <node concept="2WthIp" id="3ryclnQf2Yy" role="2Oq$k0" />
                      <node concept="3gHZIF" id="3ryclnQf3NC" role="2OqNvi">
                        <ref role="2WH_rO" node="2iJMYskfKcY" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2iJMYskfQgk" role="3cqZAp">
          <node concept="2OqwBi" id="2iJMYskfQpu" role="3clFbG">
            <node concept="37vLTw" id="2iJMYskfQgi" role="2Oq$k0">
              <ref role="3cqZAo" node="2iJMYskfNpI" resolve="debugger" />
            </node>
            <node concept="liA8E" id="2iJMYskfQWp" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="2iJMYskfR6U" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="2iJMYskfKmp" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="2iJMYskfKmq" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7l78cIM8G$B" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7l78cIM8G$C" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="2iJMYskfKcY" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="2iJMYskfKcZ" role="1B3o_S" />
      <node concept="1oajcY" id="2iJMYskfKd0" role="1oa70y" />
      <node concept="3Tqbb2" id="2iJMYskfK87" role="1tU5fm" />
    </node>
    <node concept="2ScWuX" id="3ryclnQb6JW" role="tmbBb">
      <node concept="3clFbS" id="3ryclnQb6JX" role="2VODD2">
        <node concept="3clFbF" id="3ryclnQb7K_" role="3cqZAp">
          <node concept="2OqwBi" id="3ryclnQb8aL" role="3clFbG">
            <node concept="2OqwBi" id="3ryclnQb7Kv" role="2Oq$k0">
              <node concept="2WthIp" id="3ryclnQb7Ky" role="2Oq$k0" />
              <node concept="3gHZIF" id="3ryclnQb7K$" role="2OqNvi">
                <ref role="2WH_rO" node="2iJMYskfKcY" resolve="node" />
              </node>
            </node>
            <node concept="1mIQ4w" id="3ryclnQb8Ea" role="2OqNvi">
              <node concept="chp4Y" id="3ryclnQcosL" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sEfby" id="2iJMYskfET2">
    <property role="TrG5h" value="Debug SMV" />
    <node concept="2BZ0e9" id="2b77TIBOni_" role="2XNbBz">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="2b77TIBOniA" role="1B3o_S" />
      <node concept="3uibUv" id="2b77TIBPi_g" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2XrIbr" id="7l78cIM8SQv" role="2XNbBy">
      <property role="TrG5h" value="setProject" />
      <node concept="3cqZAl" id="7l78cIM8T1N" role="3clF45" />
      <node concept="3clFbS" id="7l78cIM8SQx" role="3clF47">
        <node concept="3clFbF" id="2b77TIBOnJr" role="3cqZAp">
          <node concept="37vLTI" id="2b77TIBOo53" role="3clFbG">
            <node concept="37vLTw" id="2b77TIBOo6Z" role="37vLTx">
              <ref role="3cqZAo" node="7l78cIM8Tas" resolve="project" />
            </node>
            <node concept="2OqwBi" id="2b77TIBOnPo" role="37vLTJ">
              <node concept="2WthIp" id="2b77TIBOnJq" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2b77TIBOnXr" role="2OqNvi">
                <ref role="2WH_rO" node="2b77TIBOni_" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7l78cIM8Tas" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2b77TIBPiMl" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="3ryclnQbS_a" role="2XNbBz">
      <property role="TrG5h" value="compositeFB" />
      <node concept="3Tm6S6" id="3ryclnQbS_b" role="1B3o_S" />
      <node concept="3uibUv" id="3ryclnQbSRQ" role="1tU5fm">
        <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
      </node>
    </node>
    <node concept="2XrIbr" id="3ryclnQbJrq" role="2XNbBy">
      <property role="TrG5h" value="setCompositeFB" />
      <node concept="3cqZAl" id="3ryclnQbJuN" role="3clF45" />
      <node concept="3clFbS" id="3ryclnQbJrs" role="3clF47">
        <node concept="3clFbF" id="3ryclnQbSYc" role="3cqZAp">
          <node concept="37vLTI" id="3ryclnQbTiy" role="3clFbG">
            <node concept="37vLTw" id="3ryclnQbTri" role="37vLTx">
              <ref role="3cqZAo" node="3ryclnQbJyb" resolve="compositeFB" />
            </node>
            <node concept="2OqwBi" id="3ryclnQbSZU" role="37vLTJ">
              <node concept="2WthIp" id="3ryclnQbSYb" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3ryclnQbT3E" role="2OqNvi">
                <ref role="2WH_rO" node="3ryclnQbS_a" resolve="compositeFB" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3ryclnQbJyb" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="compositeFB" />
        <node concept="3uibUv" id="3ryclnQcpjS" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2UmK3q" id="2iJMYskfET3" role="2Um5zG">
      <node concept="3clFbS" id="2iJMYskfET4" role="2VODD2">
        <node concept="3cpWs6" id="2iJMYskfF5o" role="3cqZAp">
          <node concept="2YIFZM" id="2iJMYskfI2V" role="3cqZAk">
            <ref role="1Pybhc" to="fhh:2iJMYskfEGs" resolve="SmvDebugger" />
            <ref role="37wK5l" to="fhh:1F2d4ZDxoej" resolve="getPanel" />
            <node concept="2OqwBi" id="3ryclnQbTDI" role="37wK5m">
              <node concept="2WthIp" id="3ryclnQbTvN" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6vY3mK7SW9b" role="2OqNvi">
                <ref role="2WH_rO" node="2b77TIBOni_" resolve="project" />
              </node>
            </node>
            <node concept="2OqwBi" id="2b77TIBOGUf" role="37wK5m">
              <node concept="2WthIp" id="2b77TIBOGMa" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6vY3mK7SWc1" role="2OqNvi">
                <ref role="2WH_rO" node="3ryclnQbS_a" resolve="compositeFB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

