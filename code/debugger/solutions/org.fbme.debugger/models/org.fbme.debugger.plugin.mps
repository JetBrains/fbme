<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b158891b-59fa-43c8-ad54-2e563dd60d68(org.fbme.debugger.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
  </languages>
  <imports>
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="flkh" ref="15002a50-4ccf-4200-98db-35093fe08692/java:org.fbme.debugger(org.fbme.debugger/)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(org.fbme.ide.richediting.plugin)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="uvki" ref="5aff85f5-c1e8-49b6-a1f1-66d79702cceb/java:org.fbme.ide.iec61499.repository(org.fbme.ide.iec61499.adapter/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
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
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
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
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
  <node concept="2DaZZR" id="4jcZaGcGIN2" />
  <node concept="sEfby" id="4w1gZTMnY9f">
    <property role="TrG5h" value="Debugger" />
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
    <node concept="2BZ0e9" id="2b77TIBOni_" role="2XNbBz">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="2b77TIBOniA" role="1B3o_S" />
      <node concept="3uibUv" id="2b77TIBPi_g" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2UmK3q" id="4w1gZTMnY9g" role="2Um5zG">
      <node concept="3clFbS" id="4w1gZTMnY9h" role="2VODD2">
        <node concept="3cpWs6" id="7UhQjJlHv$c" role="3cqZAp">
          <node concept="2OqwBi" id="e_aGwOhMhm" role="3cqZAk">
            <node concept="2OqwBi" id="e_aGwOhqgN" role="2Oq$k0">
              <node concept="10M0yZ" id="e_aGwOhqbT" role="2Oq$k0">
                <ref role="3cqZAo" to="flkh:~Debugger.Companion" resolve="Companion" />
                <ref role="1PxDUh" to="flkh:~Debugger" resolve="Debugger" />
              </node>
              <node concept="liA8E" id="e_aGwOhqsB" role="2OqNvi">
                <ref role="37wK5l" to="flkh:~Debugger$Companion.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                <node concept="2OqwBi" id="e_aGwOhMbR" role="37wK5m">
                  <node concept="2WthIp" id="e_aGwOhMbU" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="e_aGwOhMbW" role="2OqNvi">
                    <ref role="2WH_rO" node="2b77TIBOni_" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="e_aGwOhMzo" role="2OqNvi">
              <ref role="37wK5l" to="flkh:~Debugger.getComponent()" resolve="getComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="62iAs64L7s7">
    <property role="TrG5h" value="DebuggerAction" />
    <property role="2uzpH1" value="Invoke Debugger" />
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
    <node concept="tnohg" id="62iAs64L7s8" role="tncku">
      <node concept="3clFbS" id="62iAs64L7s9" role="2VODD2">
        <node concept="3cpWs8" id="62iAs64LKr2" role="3cqZAp">
          <node concept="3cpWsn" id="62iAs64LKr0" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="debugger" />
            <node concept="1xUVSX" id="62iAs64LKBV" role="1tU5fm">
              <ref role="1xYkEM" node="4w1gZTMnY9f" resolve="Debugger" />
            </node>
            <node concept="2OqwBi" id="62iAs64LNIf" role="33vP2m">
              <node concept="2OqwBi" id="62iAs64LKW4" role="2Oq$k0">
                <node concept="2WthIp" id="62iAs64LKJW" role="2Oq$k0" />
                <node concept="1DTwFV" id="62iAs64LMJ7" role="2OqNvi">
                  <ref role="2WH_rO" node="2iJMYskfKmp" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="62iAs64LO4n" role="2OqNvi">
                <ref role="LR4U5" node="4w1gZTMnY9f" resolve="Debugger" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="e_aGwOhNYc" role="3cqZAp">
          <node concept="2OqwBi" id="e_aGwOhO6i" role="3clFbG">
            <node concept="37vLTw" id="e_aGwOhNYa" role="2Oq$k0">
              <ref role="3cqZAo" node="62iAs64LKr0" resolve="debugger" />
            </node>
            <node concept="2XshWL" id="e_aGwOhOhe" role="2OqNvi">
              <ref role="2WH_rO" node="7l78cIM8SQv" resolve="setProject" />
              <node concept="2OqwBi" id="e_aGwOhS3Y" role="2XxRq1">
                <node concept="2WthIp" id="e_aGwOhROv" role="2Oq$k0" />
                <node concept="1DTwFV" id="e_aGwOhSkc" role="2OqNvi">
                  <ref role="2WH_rO" node="7l78cIM8G$B" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62iAs64LOn6" role="3cqZAp">
          <node concept="2OqwBi" id="62iAs64LOvG" role="3clFbG">
            <node concept="37vLTw" id="62iAs64LOn4" role="2Oq$k0">
              <ref role="3cqZAo" node="62iAs64LKr0" resolve="debugger" />
            </node>
            <node concept="liA8E" id="62iAs64LOC5" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="62iAs64LQSh" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="7UhQjJlHsQO">
    <property role="TrG5h" value="FBME Degugger" />
    <node concept="2uRRBT" id="7UhQjJlHsSh" role="2uRRB$">
      <node concept="3clFbS" id="7UhQjJlHsSi" role="2VODD2">
        <node concept="3clFbF" id="e_aGwOhcP$" role="3cqZAp">
          <node concept="2OqwBi" id="e_aGwOhif8" role="3clFbG">
            <node concept="10M0yZ" id="e_aGwOhiaq" role="2Oq$k0">
              <ref role="3cqZAo" to="flkh:~Debugger.Companion" resolve="Companion" />
              <ref role="1PxDUh" to="flkh:~Debugger" resolve="Debugger" />
            </node>
            <node concept="liA8E" id="e_aGwOhimz" role="2OqNvi">
              <ref role="37wK5l" to="flkh:~Debugger$Companion.register(jetbrains.mps.project.Project)" resolve="register" />
              <node concept="1KvdUw" id="e_aGwOhmi0" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="e_aGwOhmlz" role="2uRRB_">
      <node concept="3clFbS" id="e_aGwOhml$" role="2VODD2">
        <node concept="3clFbF" id="e_aGwOhmsq" role="3cqZAp">
          <node concept="2OqwBi" id="e_aGwOhm$z" role="3clFbG">
            <node concept="10M0yZ" id="e_aGwOhmvE" role="2Oq$k0">
              <ref role="3cqZAo" to="flkh:~Debugger.Companion" resolve="Companion" />
              <ref role="1PxDUh" to="flkh:~Debugger" resolve="Debugger" />
            </node>
            <node concept="liA8E" id="e_aGwOhmG5" role="2OqNvi">
              <ref role="37wK5l" to="flkh:~Debugger$Companion.unregister(jetbrains.mps.project.Project)" resolve="unregister" />
              <node concept="1KvdUw" id="e_aGwOhmGJ" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5TrqGtWx$SM">
    <property role="TrG5h" value="Watch" />
    <property role="2uzpH1" value="Watch" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="2XrIbr" id="5PjcHHGf0Dz" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="5PjcHHGf0D$" role="1B3o_S" />
      <node concept="3Tqbb2" id="5PjcHHGf0D_" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="5PjcHHGf0Cl" role="3clF47">
        <node concept="3cpWs6" id="5PjcHHGf0CS" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGf0CT" role="3cqZAk">
            <node concept="2OqwBi" id="5PjcHHGf0CU" role="2Oq$k0">
              <node concept="2WthIp" id="5PjcHHGf0CV" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGf0CW" role="2OqNvi">
                <ref role="2WH_rO" node="3DiEZ8TMGQ_" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5PjcHHGf0CX" role="2OqNvi">
              <node concept="1xMEDy" id="5PjcHHGf0CY" role="1xVPHs">
                <node concept="chp4Y" id="5PjcHHGf0CZ" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="3DiEZ8TMGQ_" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="3DiEZ8TMGQA" role="1B3o_S" />
      <node concept="1oajcY" id="3DiEZ8TMGQB" role="1oa70y" />
      <node concept="3Tqbb2" id="3DiEZ8TMGN2" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="3DiEZ8TIO$g" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="3DiEZ8TIO$h" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4DCUOSBv7oF" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4DCUOSBv7oG" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4iwji" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4iwjj" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5TrqGtWx$SN" role="tncku">
      <node concept="3clFbS" id="5TrqGtWx$SO" role="2VODD2">
        <node concept="3cpWs8" id="2jTpPq_b0Vd" role="3cqZAp">
          <node concept="3cpWsn" id="2jTpPq_b0Vg" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2jTpPq_b0Vh" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="2jTpPq_b0Vi" role="33vP2m">
              <node concept="2WthIp" id="2jTpPq_b0Vj" role="2Oq$k0" />
              <node concept="2XshWL" id="2jTpPq_b0Vk" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Dz" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2jTpPq_b06q" role="3cqZAp">
          <node concept="3cpWsn" id="2jTpPq_b06t" role="3cpWs9">
            <property role="TrG5h" value="resourceDeclaration" />
            <node concept="3uibUv" id="2jTpPq_b06u" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="2jTpPq_b06v" role="33vP2m">
              <node concept="liA8E" id="2jTpPq_b06w" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="2jTpPq_b06x" role="37wK5m">
                  <ref role="3cqZAo" node="2jTpPq_b0Vg" resolve="node" />
                </node>
                <node concept="3VsKOn" id="2jTpPq_b06y" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                </node>
              </node>
              <node concept="2YIFZM" id="2jTpPq_b06z" role="2Oq$k0">
                <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                <node concept="2OqwBi" id="2jTpPq_b06$" role="37wK5m">
                  <node concept="2WthIp" id="2jTpPq_b06_" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2jTpPq_b06A" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iwji" resolve="mpsProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jTpPq_b03K" role="3cqZAp" />
        <node concept="3cpWs8" id="1d5CvdmFXng" role="3cqZAp">
          <node concept="3cpWsn" id="1d5CvdmFXnh" role="3cpWs9">
            <property role="TrG5h" value="watchActionsProvider" />
            <node concept="3uibUv" id="1d5CvdmFXni" role="1tU5fm">
              <ref role="3uigEE" to="flkh:~WatchActionsProvider" resolve="WatchActionsProvider" />
            </node>
            <node concept="2ShNRf" id="2jTpPq_aZM0" role="33vP2m">
              <node concept="1pGfFk" id="2jTpPq_aZM2" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="flkh:~WatchActionsProvider.&lt;init&gt;(jetbrains.mps.openapi.editor.cells.EditorCell,org.fbme.lib.iec61499.declarations.ResourceDeclaration,jetbrains.mps.project.Project)" resolve="WatchActionsProvider" />
                <node concept="2OqwBi" id="2jTpPq_aZM3" role="37wK5m">
                  <node concept="2WthIp" id="2jTpPq_aZM4" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2jTpPq_aZM5" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TIO$g" resolve="cell" />
                  </node>
                </node>
                <node concept="37vLTw" id="2jTpPq_aZM6" role="37wK5m">
                  <ref role="3cqZAo" node="2jTpPq_b06t" resolve="resourceDeclaration" />
                </node>
                <node concept="2OqwBi" id="2jTpPq_aZM7" role="37wK5m">
                  <node concept="2WthIp" id="2jTpPq_aZM8" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2jTpPq_aZM9" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iwji" resolve="mpsProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1d5CvdmGmbD" role="3cqZAp">
          <node concept="3clFbS" id="1d5CvdmGmbF" role="3clFbx">
            <node concept="3clFbF" id="1d5CvdmGmGI" role="3cqZAp">
              <node concept="2OqwBi" id="1d5CvdmGmLz" role="3clFbG">
                <node concept="37vLTw" id="1d5CvdmGmGG" role="2Oq$k0">
                  <ref role="3cqZAo" node="1d5CvdmFXnh" resolve="watchActionsProvider" />
                </node>
                <node concept="liA8E" id="1d5CvdmGmSZ" role="2OqNvi">
                  <ref role="37wK5l" to="flkh:~WatchActionsProvider.watch()" resolve="watch" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1d5CvdmGmkE" role="3clFbw">
            <node concept="37vLTw" id="1d5CvdmGmeu" role="2Oq$k0">
              <ref role="3cqZAo" node="1d5CvdmFXnh" resolve="watchActionsProvider" />
            </node>
            <node concept="liA8E" id="1d5CvdmGmzR" role="2OqNvi">
              <ref role="37wK5l" to="flkh:~WatchActionsProvider.isWatchable()" resolve="isWatchable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="3DiEZ8TIFGm" role="tmbBb">
      <node concept="3clFbS" id="3DiEZ8TIFGn" role="2VODD2">
        <node concept="3cpWs8" id="19RKY2xGAOh" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGAOi" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="19RKY2xGAOj" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="19RKY2xGAOk" role="33vP2m">
              <node concept="tl45R" id="19RKY2xGAOl" role="2Oq$k0" />
              <node concept="liA8E" id="19RKY2xGAOm" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xGAOn" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGAOo" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="19RKY2xGAOp" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="19RKY2xGAOq" role="33vP2m">
              <node concept="2WthIp" id="19RKY2xGAOr" role="2Oq$k0" />
              <node concept="2XshWL" id="19RKY2xGAOs" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Dz" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="19RKY2xGAOt" role="3cqZAp">
          <node concept="3clFbS" id="19RKY2xGAOu" role="3clFbx">
            <node concept="3clFbF" id="19RKY2xGAOv" role="3cqZAp">
              <node concept="2OqwBi" id="19RKY2xGAOw" role="3clFbG">
                <node concept="37vLTw" id="19RKY2xGAOx" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xGAOi" resolve="presentation" />
                </node>
                <node concept="liA8E" id="19RKY2xGAOy" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
                  <node concept="3clFbT" id="19RKY2xGAOz" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="19RKY2xGAO$" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="19RKY2xGAO_" role="3clFbw">
            <node concept="10Nm6u" id="19RKY2xGAOA" role="3uHU7w" />
            <node concept="37vLTw" id="19RKY2xGAOB" role="3uHU7B">
              <ref role="3cqZAo" node="19RKY2xGAOo" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Dkp_bkvlkT" role="3cqZAp">
          <node concept="3cpWsn" id="5Dkp_bkvlkU" role="3cpWs9">
            <property role="TrG5h" value="resourceDeclaration" />
            <node concept="3uibUv" id="5Dkp_bkvlkV" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="6Vznkw4hqRZ" role="33vP2m">
              <node concept="liA8E" id="6Vznkw4hrdl" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="6Vznkw4htCY" role="37wK5m">
                  <ref role="3cqZAo" node="19RKY2xGAOo" resolve="node" />
                </node>
                <node concept="3VsKOn" id="6Vznkw4hsp8" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                </node>
              </node>
              <node concept="2YIFZM" id="6Vznkw4fSVu" role="2Oq$k0">
                <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                <node concept="2OqwBi" id="5Dkp_bkvh92" role="37wK5m">
                  <node concept="2WthIp" id="5Dkp_bkvh95" role="2Oq$k0" />
                  <node concept="1DTwFV" id="5Dkp_bkvh97" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iwji" resolve="mpsProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Dkp_bkvccb" role="3cqZAp" />
        <node concept="3cpWs8" id="1d5CvdmGmT_" role="3cqZAp">
          <node concept="3cpWsn" id="1d5CvdmGmTA" role="3cpWs9">
            <property role="TrG5h" value="watchActionsProvider" />
            <node concept="3uibUv" id="1d5CvdmGmTB" role="1tU5fm">
              <ref role="3uigEE" to="flkh:~WatchActionsProvider" resolve="WatchActionsProvider" />
            </node>
            <node concept="2ShNRf" id="2jTpPq_aTQ5" role="33vP2m">
              <node concept="1pGfFk" id="2jTpPq_aYTb" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="flkh:~WatchActionsProvider.&lt;init&gt;(jetbrains.mps.openapi.editor.cells.EditorCell,org.fbme.lib.iec61499.declarations.ResourceDeclaration,jetbrains.mps.project.Project)" resolve="WatchActionsProvider" />
                <node concept="2OqwBi" id="2jTpPq_aYUv" role="37wK5m">
                  <node concept="2WthIp" id="2jTpPq_aYUy" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2jTpPq_aYU$" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TIO$g" resolve="cell" />
                  </node>
                </node>
                <node concept="37vLTw" id="2jTpPq_aYY3" role="37wK5m">
                  <ref role="3cqZAo" node="5Dkp_bkvlkU" resolve="resourceDeclaration" />
                </node>
                <node concept="2OqwBi" id="2jTpPq_aZiM" role="37wK5m">
                  <node concept="2WthIp" id="2jTpPq_aZiP" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2jTpPq_aZiR" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iwji" resolve="mpsProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1d5CvdmGZ_7" role="3cqZAp">
          <node concept="3clFbS" id="1d5CvdmGZ_9" role="3clFbx">
            <node concept="3cpWs8" id="2AbC$4M_2d$" role="3cqZAp">
              <node concept="3cpWsn" id="2AbC$4M_2d_" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="3uibUv" id="2AbC$4M_2dA" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="2AbC$4M_2mm" role="33vP2m">
                  <node concept="37vLTw" id="2AbC$4M_2gR" role="2Oq$k0">
                    <ref role="3cqZAo" node="1d5CvdmGmTA" resolve="watchActionsProvider" />
                  </node>
                  <node concept="liA8E" id="2AbC$4M_2wl" role="2OqNvi">
                    <ref role="37wK5l" to="flkh:~WatchActionsProvider.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2AbC$4M_4Bf" role="3cqZAp">
              <node concept="3cpWsn" id="2AbC$4M_4Bg" role="3cpWs9">
                <property role="TrG5h" value="type" />
                <node concept="3uibUv" id="2AbC$4M_4Bh" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="Xl_RD" id="2AbC$4M_4Hg" role="33vP2m">
                  <property role="Xl_RC" value="&lt;unknown&gt;" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2AbC$4M_5sA" role="3cqZAp">
              <node concept="3clFbS" id="2AbC$4M_5sC" role="3clFbx">
                <node concept="3clFbF" id="2AbC$4M_68y" role="3cqZAp">
                  <node concept="37vLTI" id="2AbC$4M_6k5" role="3clFbG">
                    <node concept="Xl_RD" id="2AbC$4M_6p7" role="37vLTx">
                      <property role="Xl_RC" value="block" />
                    </node>
                    <node concept="37vLTw" id="2AbC$4M_68w" role="37vLTJ">
                      <ref role="3cqZAo" node="2AbC$4M_4Bg" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2AbC$4M_5B$" role="3clFbw">
                <node concept="37vLTw" id="2AbC$4M_5wO" role="2Oq$k0">
                  <ref role="3cqZAo" node="1d5CvdmGmTA" resolve="watchActionsProvider" />
                </node>
                <node concept="liA8E" id="2AbC$4M_5Rh" role="2OqNvi">
                  <ref role="37wK5l" to="flkh:~WatchActionsProvider.isFB()" resolve="isFB" />
                </node>
              </node>
              <node concept="3eNFk2" id="2AbC$4M_6w4" role="3eNLev">
                <node concept="2OqwBi" id="2AbC$4M_6Cu" role="3eO9$A">
                  <node concept="37vLTw" id="2AbC$4M_6xI" role="2Oq$k0">
                    <ref role="3cqZAo" node="1d5CvdmGmTA" resolve="watchActionsProvider" />
                  </node>
                  <node concept="liA8E" id="2AbC$4M_6Sb" role="2OqNvi">
                    <ref role="37wK5l" to="flkh:~WatchActionsProvider.isPort()" resolve="isPort" />
                  </node>
                </node>
                <node concept="3clFbS" id="2AbC$4M_6w6" role="3eOfB_">
                  <node concept="3clFbF" id="2AbC$4M_79r" role="3cqZAp">
                    <node concept="37vLTI" id="2AbC$4M_7AW" role="3clFbG">
                      <node concept="Xl_RD" id="2AbC$4M_7BF" role="37vLTx">
                        <property role="Xl_RC" value="port" />
                      </node>
                      <node concept="37vLTw" id="2AbC$4M_79q" role="37vLTJ">
                        <ref role="3cqZAo" node="2AbC$4M_4Bg" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AbC$4MzTno" role="3cqZAp">
              <node concept="2OqwBi" id="2AbC$4MzTv0" role="3clFbG">
                <node concept="37vLTw" id="2AbC$4MzTnm" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xGAOi" resolve="presentation" />
                </node>
                <node concept="liA8E" id="2AbC$4MzTPF" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="2AbC$4M_bRp" role="37wK5m">
                    <node concept="37vLTw" id="2AbC$4M_cnY" role="3uHU7w">
                      <ref role="3cqZAo" node="2AbC$4M_2d_" resolve="name" />
                    </node>
                    <node concept="3cpWs3" id="2AbC$4M_851" role="3uHU7B">
                      <node concept="3cpWs3" id="2AbC$4M_1h9" role="3uHU7B">
                        <node concept="Xl_RD" id="2AbC$4M$ON3" role="3uHU7B">
                          <property role="Xl_RC" value="Watch " />
                        </node>
                        <node concept="37vLTw" id="2AbC$4M_7Fb" role="3uHU7w">
                          <ref role="3cqZAo" node="2AbC$4M_4Bg" resolve="type" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2AbC$4M_bd4" role="3uHU7w">
                        <property role="Xl_RC" value=" " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1d5CvdmH0i_" role="3cqZAp">
              <node concept="2OqwBi" id="1d5CvdmH0pA" role="3clFbG">
                <node concept="37vLTw" id="1d5CvdmH0iz" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xGAOi" resolve="presentation" />
                </node>
                <node concept="liA8E" id="1d5CvdmH0Kh" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
                  <node concept="3clFbT" id="1d5CvdmH0LM" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1d5CvdmGZLz" role="3clFbw">
            <node concept="37vLTw" id="1d5CvdmGZFn" role="2Oq$k0">
              <ref role="3cqZAo" node="1d5CvdmGmTA" resolve="watchActionsProvider" />
            </node>
            <node concept="liA8E" id="1d5CvdmH01s" role="2OqNvi">
              <ref role="37wK5l" to="flkh:~WatchActionsProvider.isWatchable()" resolve="isWatchable" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7n3j0fSoe3e">
    <property role="TrG5h" value="DebuggerActions" />
    <node concept="tT9cl" id="7n3j0fSoe3g" role="2f5YQi">
      <ref role="tU$_T" to="5z5t:3DiEZ8TON84" resolve="IEC61499Actions" />
    </node>
    <node concept="ftmFs" id="7n3j0fSoe3u" role="ftER_">
      <node concept="tCFHf" id="7n3j0fSoe3x" role="ftvYc">
        <ref role="tCJdB" node="5TrqGtWx$SM" resolve="WatchPort" />
      </node>
    </node>
  </node>
</model>

