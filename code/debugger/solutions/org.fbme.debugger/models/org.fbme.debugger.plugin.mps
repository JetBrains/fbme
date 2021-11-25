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
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="uvki" ref="5aff85f5-c1e8-49b6-a1f1-66d79702cceb/java:org.fbme.ide.iec61499.repository(org.fbme.ide.iec61499.adapter/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="5896642449625987000" name="jetbrains.mps.lang.plugin.structure.AddTabOperation" flags="nn" index="2wDMaC">
        <child id="7566788359602201160" name="tab" index="11Dce$" />
      </concept>
      <concept id="5896642449625981893" name="jetbrains.mps.lang.plugin.structure.TabbedToolDeclaration" flags="ng" index="2wDNrl" />
      <concept id="6938053545825350222" name="jetbrains.mps.lang.plugin.structure.ToolTab" flags="ng" index="2BLXyY">
        <child id="6938053545825381648" name="componentExpression" index="2BLOvw" />
        <child id="6938053545825381649" name="titleExpression" index="2BLOvx" />
      </concept>
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
      </concept>
      <concept id="4295816563224240545" name="jetbrains.mps.lang.plugin.structure.PinTabOperation" flags="ng" index="1kDqZ6">
        <child id="5386424596292315200" name="componentExpression" index="3PF$jx" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="4jcZaGcGIN2" />
  <node concept="sE7Ow" id="62iAs64L7s7">
    <property role="TrG5h" value="DebuggerAction" />
    <property role="2uzpH1" value="Invoke FBME Debugger" />
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
        <node concept="3cpWs8" id="5aoGWvxN8gy" role="3cqZAp">
          <node concept="3cpWsn" id="5aoGWvxN8gz" role="3cpWs9">
            <property role="TrG5h" value="debugger" />
            <node concept="1xUVSX" id="5aoGWvxN8cR" role="1tU5fm">
              <ref role="1xYkEM" node="10LywHcMGPf" resolve="Debugger" />
            </node>
            <node concept="2OqwBi" id="5aoGWvxN8g$" role="33vP2m">
              <node concept="2OqwBi" id="5aoGWvxN8g_" role="2Oq$k0">
                <node concept="2WthIp" id="5aoGWvxN8gA" role="2Oq$k0" />
                <node concept="1DTwFV" id="5aoGWvxN8gB" role="2OqNvi">
                  <ref role="2WH_rO" node="2iJMYskfKmp" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="5aoGWvxN8gC" role="2OqNvi">
                <ref role="LR4U5" node="10LywHcMGPf" resolve="Debugger" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="e_aGwOhNYc" role="3cqZAp">
          <node concept="2OqwBi" id="e_aGwOhO6i" role="3clFbG">
            <node concept="37vLTw" id="e_aGwOhNYa" role="2Oq$k0">
              <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
            </node>
            <node concept="2XshWL" id="e_aGwOhOhe" role="2OqNvi">
              <ref role="2WH_rO" node="10LywHcMT1w" resolve="setProject" />
              <node concept="2OqwBi" id="e_aGwOhS3Y" role="2XxRq1">
                <node concept="2WthIp" id="e_aGwOhROv" role="2Oq$k0" />
                <node concept="1DTwFV" id="e_aGwOhSkc" role="2OqNvi">
                  <ref role="2WH_rO" node="7l78cIM8G$B" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5NJ46QcmZRY" role="3cqZAp">
          <node concept="2OqwBi" id="5NJ46Qcn02i" role="3clFbG">
            <node concept="37vLTw" id="5NJ46QcmZRW" role="2Oq$k0">
              <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
            </node>
            <node concept="2XshWL" id="5NJ46Qcn0it" role="2OqNvi">
              <ref role="2WH_rO" node="10LywHcMPlf" resolve="findDevices" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="kYaptYOWUZ" role="3cqZAp">
          <node concept="3cpWsn" id="kYaptYOWV0" role="3cpWs9">
            <property role="TrG5h" value="debuggerInstance" />
            <node concept="3uibUv" id="kYaptYOWPu" role="1tU5fm">
              <ref role="3uigEE" to="flkh:~Debugger" resolve="Debugger" />
            </node>
            <node concept="2OqwBi" id="kYaptYOWV1" role="33vP2m">
              <node concept="10M0yZ" id="kYaptYOWV2" role="2Oq$k0">
                <ref role="3cqZAo" to="flkh:~Debugger.Companion" resolve="Companion" />
                <ref role="1PxDUh" to="flkh:~Debugger" resolve="Debugger" />
              </node>
              <node concept="liA8E" id="kYaptYOWV3" role="2OqNvi">
                <ref role="37wK5l" to="flkh:~Debugger$Companion.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                <node concept="2OqwBi" id="kYaptYOWV4" role="37wK5m">
                  <node concept="2WthIp" id="kYaptYOWV5" role="2Oq$k0" />
                  <node concept="1DTwFV" id="kYaptYOWV6" role="2OqNvi">
                    <ref role="2WH_rO" node="7l78cIM8G$B" resolve="mpsProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3iKHL5Mq_km" role="3cqZAp">
          <node concept="2OqwBi" id="3iKHL5Mq_zK" role="3clFbG">
            <node concept="37vLTw" id="3iKHL5Mq_kk" role="2Oq$k0">
              <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
            </node>
            <node concept="2XshWL" id="3iKHL5MqJJd" role="2OqNvi">
              <ref role="2WH_rO" node="3iKHL5MqAYw" resolve="setDebugTab" />
              <node concept="2OqwBi" id="3iKHL5MqJKY" role="2XxRq1">
                <node concept="37vLTw" id="3iKHL5MqJKZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="kYaptYOWV0" resolve="debuggerInstance" />
                </node>
                <node concept="liA8E" id="3iKHL5MqJL0" role="2OqNvi">
                  <ref role="37wK5l" to="flkh:~Debugger.getDebuggerTab()" resolve="getDebuggerTab" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3iKHL5MqKOW" role="3cqZAp">
          <node concept="2OqwBi" id="3iKHL5MqL4g" role="3clFbG">
            <node concept="37vLTw" id="3iKHL5MqKOU" role="2Oq$k0">
              <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
            </node>
            <node concept="2XshWL" id="3iKHL5MqLaB" role="2OqNvi">
              <ref role="2WH_rO" node="3iKHL5MqDn5" resolve="setDeployTab" />
              <node concept="2OqwBi" id="3iKHL5MqLhH" role="2XxRq1">
                <node concept="37vLTw" id="3iKHL5MqLcQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="kYaptYOWV0" resolve="debuggerInstance" />
                </node>
                <node concept="liA8E" id="3iKHL5MqLz6" role="2OqNvi">
                  <ref role="37wK5l" to="flkh:~Debugger.getDevicesTab()" resolve="getDevicesTab" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5P65Gbm5dn9" role="3cqZAp" />
        <node concept="3clFbF" id="5oMHdxdTnUQ" role="3cqZAp">
          <node concept="2OqwBi" id="5oMHdxdTo8U" role="3clFbG">
            <node concept="37vLTw" id="5oMHdxdTnUO" role="2Oq$k0">
              <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
            </node>
            <node concept="liA8E" id="5oMHdxdTopI" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="5oMHdxdTorK" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yb5souHrEN" role="3cqZAp">
          <node concept="2OqwBi" id="6yb5souHrEO" role="3clFbG">
            <node concept="37vLTw" id="6yb5souHrEP" role="2Oq$k0">
              <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
            </node>
            <node concept="2wDMaC" id="6yb5souHrEQ" role="2OqNvi">
              <node concept="2BLXyY" id="6yb5souHrER" role="11Dce$">
                <node concept="Xl_RD" id="6yb5souHrF0" role="2BLOvx">
                  <property role="Xl_RC" value="Debug" />
                </node>
                <node concept="2OqwBi" id="3iKHL5MqQXy" role="2BLOvw">
                  <node concept="37vLTw" id="4oi8rFnpTs4" role="2Oq$k0">
                    <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
                  </node>
                  <node concept="2XshWL" id="3iKHL5MqR22" role="2OqNvi">
                    <ref role="2WH_rO" node="3iKHL5MqMkI" resolve="getDebugTab" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4oi8rFnq0mB" role="3cqZAp">
          <node concept="2OqwBi" id="4oi8rFnq0zR" role="3clFbG">
            <node concept="37vLTw" id="4oi8rFnq0m_" role="2Oq$k0">
              <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
            </node>
            <node concept="1kDqZ6" id="4oi8rFnq0Mn" role="2OqNvi">
              <node concept="2OqwBi" id="3iKHL5MqR6W" role="3PF$jx">
                <node concept="37vLTw" id="4oi8rFnq0Pe" role="2Oq$k0">
                  <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
                </node>
                <node concept="2XshWL" id="3iKHL5MqRec" role="2OqNvi">
                  <ref role="2WH_rO" node="3iKHL5MqMkI" resolve="getDebugTab" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6yb5souHzlj" role="3cqZAp">
          <node concept="2OqwBi" id="6yb5souHzlk" role="3clFbG">
            <node concept="37vLTw" id="6yb5souHzll" role="2Oq$k0">
              <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
            </node>
            <node concept="2wDMaC" id="6yb5souHzlm" role="2OqNvi">
              <node concept="2BLXyY" id="6yb5souHzln" role="11Dce$">
                <node concept="Xl_RD" id="6yb5souHzlw" role="2BLOvx">
                  <property role="Xl_RC" value="Deploy" />
                </node>
                <node concept="2OqwBi" id="3iKHL5MqRjR" role="2BLOvw">
                  <node concept="37vLTw" id="4oi8rFnpTFA" role="2Oq$k0">
                    <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
                  </node>
                  <node concept="2XshWL" id="3iKHL5MqRr8" role="2OqNvi">
                    <ref role="2WH_rO" node="3iKHL5MqOLy" resolve="getDeployTab" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4oi8rFnq7re" role="3cqZAp">
          <node concept="2OqwBi" id="4oi8rFnq7C_" role="3clFbG">
            <node concept="37vLTw" id="4oi8rFnq7rc" role="2Oq$k0">
              <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
            </node>
            <node concept="1kDqZ6" id="4oi8rFnq7NR" role="2OqNvi">
              <node concept="2OqwBi" id="3iKHL5MqRxD" role="3PF$jx">
                <node concept="37vLTw" id="4oi8rFnq7Qg" role="2Oq$k0">
                  <ref role="3cqZAo" node="5aoGWvxN8gz" resolve="debugger" />
                </node>
                <node concept="2XshWL" id="3iKHL5MqREn" role="2OqNvi">
                  <ref role="2WH_rO" node="3iKHL5MqOLy" resolve="getDeployTab" />
                </node>
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
  <node concept="2wDNrl" id="10LywHcMGPf">
    <property role="TrG5h" value="Debugger" />
    <property role="2XNbzY" value="FBME Debugger" />
    <node concept="2XrIbr" id="10LywHcMT1w" role="2XNbBy">
      <property role="TrG5h" value="setProject" />
      <node concept="3cqZAl" id="10LywHcMT1x" role="3clF45" />
      <node concept="3clFbS" id="10LywHcMT1y" role="3clF47">
        <node concept="3clFbF" id="10LywHcMT1z" role="3cqZAp">
          <node concept="37vLTI" id="10LywHcMT1$" role="3clFbG">
            <node concept="37vLTw" id="10LywHcMT1_" role="37vLTx">
              <ref role="3cqZAo" node="10LywHcMT1D" resolve="project" />
            </node>
            <node concept="2OqwBi" id="10LywHcMT1A" role="37vLTJ">
              <node concept="2WthIp" id="10LywHcMT1B" role="2Oq$k0" />
              <node concept="2BZ7hE" id="10LywHcMT1C" role="2OqNvi">
                <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="10LywHcMT1D" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="10LywHcMT1E" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3iKHL5MqMkI" role="2XNbBy">
      <property role="TrG5h" value="getDebugTab" />
      <node concept="3uibUv" id="3iKHL5MqNwU" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="3iKHL5MqMkK" role="3clF47">
        <node concept="3cpWs6" id="3iKHL5MqNQk" role="3cqZAp">
          <node concept="2OqwBi" id="3iKHL5MqNU3" role="3cqZAk">
            <node concept="2WthIp" id="3iKHL5MqNQM" role="2Oq$k0" />
            <node concept="2BZ7hE" id="3iKHL5MqNWS" role="2OqNvi">
              <ref role="2WH_rO" node="1W99A8Bdhfp" resolve="debugTab" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3iKHL5MqAYw" role="2XNbBy">
      <property role="TrG5h" value="setDebugTab" />
      <node concept="3cqZAl" id="3iKHL5MqBJD" role="3clF45" />
      <node concept="3clFbS" id="3iKHL5MqAYy" role="3clF47">
        <node concept="3clFbF" id="3iKHL5MqCSg" role="3cqZAp">
          <node concept="37vLTI" id="3iKHL5MqDg1" role="3clFbG">
            <node concept="37vLTw" id="3iKHL5MqDmb" role="37vLTx">
              <ref role="3cqZAo" node="3iKHL5MqCBt" resolve="debugTab" />
            </node>
            <node concept="2OqwBi" id="3iKHL5MqIs0" role="37vLTJ">
              <node concept="2WthIp" id="3iKHL5MqIcW" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3iKHL5MqI$j" role="2OqNvi">
                <ref role="2WH_rO" node="1W99A8Bdhfp" resolve="debugTab" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3iKHL5MqCBt" role="3clF46">
        <property role="TrG5h" value="debugTab" />
        <node concept="3uibUv" id="3iKHL5MqCBs" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3iKHL5MqOLy" role="2XNbBy">
      <property role="TrG5h" value="getDeployTab" />
      <node concept="3uibUv" id="3iKHL5MqQ7F" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="3iKHL5MqOL$" role="3clF47">
        <node concept="3cpWs6" id="3iKHL5MqQt$" role="3cqZAp">
          <node concept="2OqwBi" id="3iKHL5MqQx7" role="3cqZAk">
            <node concept="2WthIp" id="3iKHL5MqQtY" role="2Oq$k0" />
            <node concept="2BZ7hE" id="3iKHL5MqQDH" role="2OqNvi">
              <ref role="2WH_rO" node="1W99A8BdiVn" resolve="deployTab" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3iKHL5MqDn5" role="2XNbBy">
      <property role="TrG5h" value="setDeployTab" />
      <node concept="3clFbS" id="3iKHL5MqDn7" role="3clF47">
        <node concept="3clFbF" id="3iKHL5MqILt" role="3cqZAp">
          <node concept="37vLTI" id="3iKHL5MqJmM" role="3clFbG">
            <node concept="37vLTw" id="3iKHL5MqJyM" role="37vLTx">
              <ref role="3cqZAo" node="3iKHL5MqFtJ" resolve="deployTab" />
            </node>
            <node concept="2OqwBi" id="3iKHL5MqIRy" role="37vLTJ">
              <node concept="2WthIp" id="3iKHL5MqILs" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3iKHL5MqJ3O" role="2OqNvi">
                <ref role="2WH_rO" node="1W99A8BdiVn" resolve="deployTab" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3iKHL5MqES9" role="3clF45" />
      <node concept="37vLTG" id="3iKHL5MqFtJ" role="3clF46">
        <property role="TrG5h" value="deployTab" />
        <node concept="3uibUv" id="3iKHL5MqFtI" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="10LywHcMPlf" role="2XNbBy">
      <property role="TrG5h" value="findDevices" />
      <node concept="3clFbS" id="10LywHcMPlg" role="3clF47">
        <node concept="3cpWs8" id="10LywHcMPlh" role="3cqZAp">
          <node concept="3cpWsn" id="10LywHcMPli" role="3cpWs9">
            <property role="TrG5h" value="debugger" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="10LywHcMPlj" role="1tU5fm">
              <ref role="3uigEE" to="flkh:~Debugger" resolve="Debugger" />
            </node>
            <node concept="2OqwBi" id="10LywHcMPlk" role="33vP2m">
              <node concept="10M0yZ" id="10LywHcMPll" role="2Oq$k0">
                <ref role="3cqZAo" to="flkh:~Debugger.Companion" resolve="Companion" />
                <ref role="1PxDUh" to="flkh:~Debugger" resolve="Debugger" />
              </node>
              <node concept="liA8E" id="10LywHcMPlm" role="2OqNvi">
                <ref role="37wK5l" to="flkh:~Debugger$Companion.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                <node concept="2OqwBi" id="10LywHcMPln" role="37wK5m">
                  <node concept="2WthIp" id="10LywHcMPlo" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="10LywHcMPlp" role="2OqNvi">
                    <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="10LywHcMPlq" role="3cqZAp" />
        <node concept="3clFbF" id="10LywHcMPlr" role="3cqZAp">
          <node concept="2OqwBi" id="10LywHcMPls" role="3clFbG">
            <node concept="2ShNRf" id="10LywHcMPlt" role="2Oq$k0">
              <node concept="YeOm9" id="10LywHcMPlu" role="2ShVmc">
                <node concept="1Y3b0j" id="10LywHcMPlv" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Backgroundable" />
                  <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String)" resolve="Backgroundable" />
                  <node concept="312cEg" id="10LywHcMPlw" role="jymVt">
                    <property role="TrG5h" value="deviceDeclarations" />
                    <node concept="3Tm6S6" id="10LywHcMPlx" role="1B3o_S" />
                    <node concept="3uibUv" id="10LywHcMPly" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                      <node concept="3uibUv" id="10LywHcMPlz" role="11_B2D">
                        <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="10LywHcMPl$" role="33vP2m">
                      <node concept="1pGfFk" id="10LywHcMPl_" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                      </node>
                    </node>
                  </node>
                  <node concept="2tJIrI" id="10LywHcMPlA" role="jymVt" />
                  <node concept="3clFb_" id="10LywHcMPlB" role="jymVt">
                    <property role="TrG5h" value="onFinished" />
                    <node concept="3Tm1VV" id="10LywHcMPlC" role="1B3o_S" />
                    <node concept="3cqZAl" id="10LywHcMPlD" role="3clF45" />
                    <node concept="3clFbS" id="10LywHcMPlE" role="3clF47">
                      <node concept="3clFbF" id="5wVFqQXy61u" role="3cqZAp">
                        <node concept="2OqwBi" id="5wVFqQXy7cW" role="3clFbG">
                          <node concept="2OqwBi" id="5wVFqQXy61w" role="2Oq$k0">
                            <node concept="2OqwBi" id="5wVFqQXy61x" role="2Oq$k0">
                              <node concept="2WthIp" id="5wVFqQXy61y" role="2Oq$k0" />
                              <node concept="2BZ7hE" id="5wVFqQXy61z" role="2OqNvi">
                                <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="5wVFqQXy61$" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5wVFqQXy82V" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                            <node concept="1bVj0M" id="5wVFqQXy8Ms" role="37wK5m">
                              <node concept="3clFbS" id="5wVFqQXy8Mt" role="1bW5cS">
                                <node concept="3clFbF" id="10LywHcMPlF" role="3cqZAp">
                                  <node concept="2OqwBi" id="10LywHcMPlG" role="3clFbG">
                                    <node concept="37vLTw" id="10LywHcMPlH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="10LywHcMPli" resolve="debugger" />
                                    </node>
                                    <node concept="liA8E" id="10LywHcMPlI" role="2OqNvi">
                                      <ref role="37wK5l" to="flkh:~Debugger.addDevices(java.util.Set)" resolve="addDevices" />
                                      <node concept="37vLTw" id="10LywHcMPlJ" role="37wK5m">
                                        <ref role="3cqZAo" node="10LywHcMPlw" resolve="deviceDeclarations" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="10LywHcMPlK" role="3cqZAp">
                        <node concept="3nyPlj" id="10LywHcMPlL" role="3clFbG">
                          <ref role="37wK5l" to="xygl:~Task.onFinished()" resolve="onFinished" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="10LywHcMPlM" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="10LywHcMPlN" role="jymVt" />
                  <node concept="3Tm1VV" id="10LywHcMPlO" role="1B3o_S" />
                  <node concept="3clFb_" id="10LywHcMPlP" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="10LywHcMPlQ" role="1B3o_S" />
                    <node concept="3cqZAl" id="10LywHcMPlR" role="3clF45" />
                    <node concept="37vLTG" id="10LywHcMPlS" role="3clF46">
                      <property role="TrG5h" value="progressIndicator" />
                      <node concept="3uibUv" id="10LywHcMPlT" role="1tU5fm">
                        <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="10LywHcMPlU" role="3clF47">
                      <node concept="3clFbF" id="10LywHcMPlV" role="3cqZAp">
                        <node concept="2OqwBi" id="10LywHcMPlW" role="3clFbG">
                          <node concept="2OqwBi" id="10LywHcMPlX" role="2Oq$k0">
                            <node concept="2OqwBi" id="10LywHcMPlY" role="2Oq$k0">
                              <node concept="2WthIp" id="10LywHcMPlZ" role="2Oq$k0" />
                              <node concept="2BZ7hE" id="10LywHcMPm0" role="2OqNvi">
                                <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="10LywHcMPm1" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                          </node>
                          <node concept="liA8E" id="10LywHcMPm2" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                            <node concept="1bVj0M" id="10LywHcMPm3" role="37wK5m">
                              <node concept="3clFbS" id="10LywHcMPm4" role="1bW5cS">
                                <node concept="3cpWs8" id="10LywHcMPm5" role="3cqZAp">
                                  <node concept="3cpWsn" id="10LywHcMPm6" role="3cpWs9">
                                    <property role="TrG5h" value="findUsagesFacade" />
                                    <node concept="3uibUv" id="10LywHcMPm7" role="1tU5fm">
                                      <ref role="3uigEE" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                                    </node>
                                    <node concept="2YIFZM" id="10LywHcMPm8" role="33vP2m">
                                      <ref role="37wK5l" to="lui2:~FindUsagesFacade.getInstance()" resolve="getInstance" />
                                      <ref role="1Pybhc" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="10LywHcMPm9" role="3cqZAp" />
                                <node concept="3cpWs8" id="10LywHcMPma" role="3cqZAp">
                                  <node concept="3cpWsn" id="10LywHcMPmb" role="3cpWs9">
                                    <property role="TrG5h" value="progressMonitor" />
                                    <node concept="3uibUv" id="10LywHcMPmc" role="1tU5fm">
                                      <ref role="3uigEE" to="mk8z:~ProgressMonitorAdapter" resolve="ProgressMonitorAdapter" />
                                    </node>
                                    <node concept="2ShNRf" id="10LywHcMPmd" role="33vP2m">
                                      <node concept="1pGfFk" id="10LywHcMPme" role="2ShVmc">
                                        <property role="373rjd" value="true" />
                                        <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                        <node concept="37vLTw" id="10LywHcMPmf" role="37wK5m">
                                          <ref role="3cqZAo" node="10LywHcMPlS" resolve="progressIndicator" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="10LywHcMPmg" role="3cqZAp">
                                  <node concept="2OqwBi" id="10LywHcMPmh" role="3clFbG">
                                    <node concept="37vLTw" id="10LywHcMPmi" role="2Oq$k0">
                                      <ref role="3cqZAo" node="10LywHcMPm6" resolve="findUsagesFacade" />
                                    </node>
                                    <node concept="liA8E" id="10LywHcMPmj" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~FindUsagesFacade.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.Consumer,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                                      <node concept="2OqwBi" id="10LywHcMPmk" role="37wK5m">
                                        <node concept="2OqwBi" id="10LywHcMPml" role="2Oq$k0">
                                          <node concept="2WthIp" id="10LywHcMPmm" role="2Oq$k0" />
                                          <node concept="2BZ7hE" id="10LywHcMPmn" role="2OqNvi">
                                            <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="10LywHcMPmo" role="2OqNvi">
                                          <ref role="37wK5l" to="z1c4:~Project.getScope()" resolve="getScope" />
                                        </node>
                                      </node>
                                      <node concept="2YIFZM" id="10LywHcMPmp" role="37wK5m">
                                        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                                        <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                                        <node concept="35c_gC" id="10LywHcMPmq" role="37wK5m">
                                          <ref role="35c_gD" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                                        </node>
                                      </node>
                                      <node concept="3clFbT" id="10LywHcMPmr" role="37wK5m" />
                                      <node concept="2ShNRf" id="10LywHcMPms" role="37wK5m">
                                        <node concept="YeOm9" id="10LywHcMPmt" role="2ShVmc">
                                          <node concept="1Y3b0j" id="10LywHcMPmu" role="YeSDq">
                                            <property role="2bfB8j" value="true" />
                                            <property role="373rjd" value="true" />
                                            <ref role="1Y3XeK" to="yyf4:~Consumer" resolve="Consumer" />
                                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                            <node concept="3Tm1VV" id="10LywHcMPmv" role="1B3o_S" />
                                            <node concept="3clFb_" id="10LywHcMPmw" role="jymVt">
                                              <property role="TrG5h" value="consume" />
                                              <node concept="3Tm1VV" id="10LywHcMPmx" role="1B3o_S" />
                                              <node concept="3cqZAl" id="10LywHcMPmy" role="3clF45" />
                                              <node concept="37vLTG" id="10LywHcMPmz" role="3clF46">
                                                <property role="TrG5h" value="node" />
                                                <node concept="3uibUv" id="10LywHcMPm$" role="1tU5fm">
                                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                </node>
                                              </node>
                                              <node concept="3clFbS" id="10LywHcMPm_" role="3clF47">
                                                <node concept="3cpWs8" id="10LywHcMPmA" role="3cqZAp">
                                                  <node concept="3cpWsn" id="10LywHcMPmB" role="3cpWs9">
                                                    <property role="TrG5h" value="platformRepo" />
                                                    <node concept="3uibUv" id="10LywHcMPmC" role="1tU5fm">
                                                      <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
                                                    </node>
                                                    <node concept="2YIFZM" id="10LywHcMPmD" role="33vP2m">
                                                      <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                                                      <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                                                      <node concept="2OqwBi" id="10LywHcN1yh" role="37wK5m">
                                                        <node concept="2WthIp" id="10LywHcN1yk" role="2Oq$k0">
                                                          <ref role="32nkFo" node="10LywHcMGPf" resolve="Debugger" />
                                                        </node>
                                                        <node concept="2BZ7hE" id="10LywHcN1ym" role="2OqNvi">
                                                          <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs8" id="10LywHcMPmH" role="3cqZAp">
                                                  <node concept="3cpWsn" id="10LywHcMPmI" role="3cpWs9">
                                                    <property role="TrG5h" value="device" />
                                                    <node concept="2OqwBi" id="10LywHcMPmJ" role="33vP2m">
                                                      <node concept="37vLTw" id="10LywHcMPmK" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="10LywHcMPmB" resolve="platformRepo" />
                                                      </node>
                                                      <node concept="liA8E" id="10LywHcMPmL" role="2OqNvi">
                                                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                                        <node concept="37vLTw" id="10LywHcMPmM" role="37wK5m">
                                                          <ref role="3cqZAo" node="10LywHcMPmz" resolve="node" />
                                                        </node>
                                                        <node concept="3VsKOn" id="10LywHcMPmN" role="37wK5m">
                                                          <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3uibUv" id="10LywHcMPmO" role="1tU5fm">
                                                      <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="10LywHcMPmP" role="3cqZAp">
                                                  <node concept="2OqwBi" id="10LywHcMPmQ" role="3clFbG">
                                                    <node concept="37vLTw" id="10LywHcMPmR" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="10LywHcMPlw" resolve="deviceDeclarations" />
                                                    </node>
                                                    <node concept="liA8E" id="10LywHcMPmS" role="2OqNvi">
                                                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                                                      <node concept="37vLTw" id="10LywHcMPmT" role="37wK5m">
                                                        <ref role="3cqZAo" node="10LywHcMPmI" resolve="device" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2AHcQZ" id="10LywHcMPmU" role="2AJF6D">
                                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                              </node>
                                            </node>
                                            <node concept="3uibUv" id="10LywHcMPmV" role="2Ghqu4">
                                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="10LywHcMPmW" role="37wK5m">
                                        <ref role="3cqZAo" node="10LywHcMPmb" resolve="progressMonitor" />
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
                    <node concept="2AHcQZ" id="10LywHcMPmX" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="10LywHcMPmY" role="37wK5m">
                    <node concept="2OqwBi" id="10LywHcMZMB" role="2Oq$k0">
                      <node concept="2WthIp" id="10LywHcMZME" role="2Oq$k0">
                        <ref role="32nkFo" node="10LywHcMGPf" resolve="Debugger" />
                      </node>
                      <node concept="2BZ7hE" id="10LywHcMZMG" role="2OqNvi">
                        <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="10LywHcMPn2" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="10LywHcMPn3" role="37wK5m">
                    <property role="Xl_RC" value="Find devices" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="10LywHcMPn4" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~Task.queue()" resolve="queue" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="10LywHcMPn5" role="3clF45" />
    </node>
    <node concept="2BZ0e9" id="10LywHcMNoA" role="2XNbBz">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3Tm6S6" id="10LywHcMNoB" role="1B3o_S" />
      <node concept="3uibUv" id="10LywHcMNoC" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2BZ0e9" id="1W99A8Bdhfp" role="2XNbBz">
      <property role="TrG5h" value="debugTab" />
      <node concept="3Tm6S6" id="1W99A8Bdhfq" role="1B3o_S" />
      <node concept="3uibUv" id="1W99A8BdiVa" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="2BZ0e9" id="1W99A8BdiVn" role="2XNbBz">
      <property role="TrG5h" value="deployTab" />
      <node concept="3Tm6S6" id="1W99A8BdiVo" role="1B3o_S" />
      <node concept="3uibUv" id="1W99A8BdiVp" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
  </node>
</model>

