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
    <import index="flkh" ref="15002a50-4ccf-4200-98db-35093fe08692/java:org.fbme.debugger(org.fbme.debugger/)" />
    <import index="6w4o" ref="292e01a6-3380-40ca-8417-b86844de2d63/java:org.fbme.ide.platform.debugger(org.fbme.ide.platform/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
      </concept>
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
</model>

