<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3da47d69-f16f-48fe-99e6-005e5c3b62dd(org.fbme.formalfb.plugin)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(org.fbme.ide.richediting.plugin)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="v900" ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(org.fbme.ide.platform)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="tsn" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components.panels(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
    <import index="51vd" ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(org.fbme.ide.platform.persistence)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="uvki" ref="5aff85f5-c1e8-49b6-a1f1-66d79702cceb/java:org.fbme.ide.iec61499.repository(org.fbme.ide.iec61499.adapter/)" />
    <import index="3c11" ref="64ba689f-8777-45a8-ad64-75a1e70142c1/java:org.fbme.formalfb.execution(org.fbme.formalfb/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" implicit="true" />
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
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
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
  <node concept="2DaZZR" id="2iJMYskfEgF" />
  <node concept="tC5Ba" id="2iJMYskfEgG">
    <property role="TrG5h" value="FormalFBGroup" />
    <node concept="ftmFs" id="2iJMYskfEgI" role="ftER_">
      <node concept="tCFHf" id="7DbY$XOLadd" role="ftvYc">
        <ref role="tCJdB" node="4Yh6vkI2_$8" resolve="Translate to SPIN" />
      </node>
    </node>
    <node concept="tT9cl" id="2b77TIBZnmz" role="2f5YQi">
      <ref role="tU$_T" to="5z5t:3DiEZ8TON84" resolve="IEC61499Actions" />
    </node>
  </node>
  <node concept="sEfby" id="2iJMYskfET2">
    <property role="TrG5h" value="Formal FB" />
    <node concept="2BZ0e9" id="2b77TIBOni_" role="2XNbBz">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="2b77TIBOniA" role="1B3o_S" />
      <node concept="3uibUv" id="2b77TIBPi_g" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2BZ0e9" id="4i$1wjaRYuA" role="2XNbBz">
      <property role="TrG5h" value="fbPath" />
      <node concept="3Tm6S6" id="4i$1wjaRYuB" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaRYBK" role="1tU5fm">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
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
    <node concept="2XrIbr" id="4i$1wjaRYLu" role="2XNbBy">
      <property role="TrG5h" value="setFbPath" />
      <node concept="3cqZAl" id="4i$1wjaRYRq" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaRYLw" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaRZaE" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaRZIN" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaRZJf" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjaRYVL" resolve="fbPath" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaRZgv" role="37vLTJ">
              <node concept="2WthIp" id="4i$1wjaRZaD" role="2Oq$k0" />
              <node concept="2BZ7hE" id="4i$1wjaRZo5" role="2OqNvi">
                <ref role="2WH_rO" node="4i$1wjaRYuA" resolve="fbPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaRYVL" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fbPath" />
        <node concept="3uibUv" id="4i$1wjaRZ37" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="3ryclnQbS_a" role="2XNbBz">
      <property role="TrG5h" value="compositeFb" />
      <node concept="3Tm6S6" id="3ryclnQbS_b" role="1B3o_S" />
      <node concept="3uibUv" id="3ZbtdGjsThf" role="1tU5fm">
        <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
      </node>
    </node>
    <node concept="2BZ0e9" id="64NFiWSmThH" role="2XNbBz">
      <property role="TrG5h" value="exported" />
      <node concept="3Tm6S6" id="64NFiWSmThI" role="1B3o_S" />
      <node concept="10P_77" id="64NFiWSmTtt" role="1tU5fm" />
    </node>
    <node concept="2XrIbr" id="3ryclnQbJrq" role="2XNbBy">
      <property role="TrG5h" value="setCompositeFb" />
      <node concept="3cqZAl" id="3ryclnQbJuN" role="3clF45" />
      <node concept="3clFbS" id="3ryclnQbJrs" role="3clF47">
        <node concept="3clFbF" id="3ryclnQbSYc" role="3cqZAp">
          <node concept="37vLTI" id="3ryclnQbTiy" role="3clFbG">
            <node concept="37vLTw" id="3ryclnQbTri" role="37vLTx">
              <ref role="3cqZAo" node="3ryclnQbJyb" resolve="compositeFb" />
            </node>
            <node concept="2OqwBi" id="3ryclnQbSZU" role="37vLTJ">
              <node concept="2WthIp" id="3ryclnQbSYb" role="2Oq$k0" />
              <node concept="2BZ7hE" id="4i$1wjaRYm2" role="2OqNvi">
                <ref role="2WH_rO" node="3ryclnQbS_a" resolve="compositeFb" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3ryclnQbJyb" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="compositeFb" />
        <node concept="3uibUv" id="3ZbtdGjsT73" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="64NFiWSmTxq" role="2XNbBy">
      <property role="TrG5h" value="setExproted" />
      <node concept="3cqZAl" id="64NFiWSmTHC" role="3clF45" />
      <node concept="3clFbS" id="64NFiWSmTxs" role="3clF47">
        <node concept="3clFbF" id="64NFiWSmTY4" role="3cqZAp">
          <node concept="37vLTI" id="64NFiWSmUw_" role="3clFbG">
            <node concept="2OqwBi" id="64NFiWSmU3T" role="37vLTJ">
              <node concept="2WthIp" id="64NFiWSmTY3" role="2Oq$k0" />
              <node concept="2BZ7hE" id="64NFiWSmUbW" role="2OqNvi">
                <ref role="2WH_rO" node="64NFiWSmThH" resolve="exported" />
              </node>
            </node>
            <node concept="37vLTw" id="64NFiWSmUGS" role="37vLTx">
              <ref role="3cqZAo" node="64NFiWSmTPJ" resolve="exported" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="64NFiWSmTPJ" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="exported" />
        <node concept="10P_77" id="64NFiWSmTTE" role="1tU5fm" />
      </node>
    </node>
    <node concept="2UmK3q" id="2iJMYskfET3" role="2Um5zG">
      <node concept="3clFbS" id="2iJMYskfET4" role="2VODD2">
        <node concept="3cpWs6" id="2NwTEkpSwjN" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjashJd" role="3cqZAk">
            <node concept="liA8E" id="4i$1wjashQI" role="2OqNvi">
              <ref role="37wK5l" to="3c11:~FormalFB.run(org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration,java.nio.file.Path)" resolve="run" />
              <node concept="2OqwBi" id="7DbY$XORrXu" role="37wK5m">
                <node concept="2WthIp" id="7DbY$XORrK6" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7DbY$XORsa$" role="2OqNvi">
                  <ref role="2WH_rO" node="3ryclnQbS_a" resolve="compositeFb" />
                </node>
              </node>
              <node concept="2OqwBi" id="7DbY$XORskE" role="37wK5m">
                <node concept="2WthIp" id="7DbY$XORsil" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7DbY$XORsyc" role="2OqNvi">
                  <ref role="2WH_rO" node="4i$1wjaRYuA" resolve="fbPath" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="4i$1wjaKnj8" role="2Oq$k0">
              <node concept="1pGfFk" id="4i$1wjaKnIU" role="2ShVmc">
                <ref role="37wK5l" to="3c11:~FormalFB.&lt;init&gt;(jetbrains.mps.project.MPSProject)" resolve="FormalFB" />
                <node concept="2OqwBi" id="4i$1wjaKo1m" role="37wK5m">
                  <node concept="2WthIp" id="4i$1wjaKnT3" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="4Yh6vkI24ND" role="2OqNvi">
                    <ref role="2WH_rO" node="2b77TIBOni_" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4i$1wjaIdNr">
    <property role="TrG5h" value="PathComponent" />
    <node concept="312cEg" id="1y1FD3qDXl5" role="jymVt">
      <property role="TrG5h" value="fieldValue" />
      <node concept="3uibUv" id="1y1FD3qDXbF" role="1tU5fm">
        <ref role="3uigEE" to="qqrq:~JBTextField" resolve="JBTextField" />
      </node>
      <node concept="3Tm6S6" id="1y1FD3qDXpz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1y1FD3qDWUl" role="jymVt" />
    <node concept="3clFbW" id="1y1FD3qDWLg" role="jymVt">
      <node concept="3cqZAl" id="1y1FD3qDWLi" role="3clF45" />
      <node concept="3Tm1VV" id="1y1FD3qDWLj" role="1B3o_S" />
      <node concept="3clFbS" id="1y1FD3qDWLk" role="3clF47">
        <node concept="XkiVB" id="1y1FD3qEq$X" role="3cqZAp">
          <ref role="37wK5l" to="qqrq:~JBPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JBPanel" />
          <node concept="2ShNRf" id="1y1FD3qEsoG" role="37wK5m">
            <node concept="1pGfFk" id="1y1FD3qEtdb" role="2ShVmc">
              <ref role="37wK5l" to="tsn:~VerticalLayout.&lt;init&gt;(int)" resolve="VerticalLayout" />
              <node concept="3cmrfG" id="1y1FD3qEu1Y" role="37wK5m">
                <property role="3cmrfH" value="4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1y1FD3qEZx3" role="3cqZAp">
          <node concept="3cpWsn" id="1y1FD3qEZx4" role="3cpWs9">
            <property role="TrG5h" value="inner" />
            <node concept="3uibUv" id="1y1FD3qEZx5" role="1tU5fm">
              <ref role="3uigEE" to="qqrq:~JBPanel" resolve="JBPanel" />
            </node>
            <node concept="2ShNRf" id="1y1FD3qEZR$" role="33vP2m">
              <node concept="1pGfFk" id="1y1FD3qF0ll" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JBPanel" />
                <node concept="2ShNRf" id="1y1FD3qFeZm" role="37wK5m">
                  <node concept="1pGfFk" id="1y1FD3qFh$9" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~FlowLayout.&lt;init&gt;(int)" resolve="FlowLayout" />
                    <node concept="10M0yZ" id="1y1FD3qFoWl" role="37wK5m">
                      <ref role="3cqZAo" to="z60i:~FlowLayout.LEFT" resolve="LEFT" />
                      <ref role="1PxDUh" to="z60i:~FlowLayout" resolve="FlowLayout" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1y1FD3qF1br" role="3cqZAp">
          <node concept="1rXfSq" id="1y1FD3qF1bp" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
            <node concept="37vLTw" id="1y1FD3qF1uc" role="37wK5m">
              <ref role="3cqZAo" node="1y1FD3qEZx4" resolve="inner" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1y1FD3qE9l4" role="3cqZAp">
          <node concept="2OqwBi" id="1y1FD3qF2tJ" role="3clFbG">
            <node concept="37vLTw" id="1y1FD3qF2ML" role="2Oq$k0">
              <ref role="3cqZAo" node="1y1FD3qEZx4" resolve="inner" />
            </node>
            <node concept="liA8E" id="1y1FD3qF2tM" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="2ShNRf" id="1y1FD3qE2tD" role="37wK5m">
                <node concept="1pGfFk" id="1y1FD3qE8rJ" role="2ShVmc">
                  <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(java.lang.String)" resolve="JBLabel" />
                  <node concept="37vLTw" id="4i$1wjaI$Ol" role="37wK5m">
                    <ref role="3cqZAo" node="4i$1wjaIjmk" resolve="fieldName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1y1FD3qEa3V" role="3cqZAp">
          <node concept="2OqwBi" id="1y1FD3qF3YV" role="3clFbG">
            <node concept="37vLTw" id="1y1FD3qF57g" role="2Oq$k0">
              <ref role="3cqZAo" node="1y1FD3qEZx4" resolve="inner" />
            </node>
            <node concept="liA8E" id="1y1FD3qF3YY" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTI" id="1y1FD3qEbwp" role="37wK5m">
                <node concept="2ShNRf" id="1y1FD3qEc8t" role="37vLTx">
                  <node concept="1pGfFk" id="1y1FD3qEc6q" role="2ShVmc">
                    <ref role="37wK5l" to="qqrq:~JBTextField.&lt;init&gt;(int)" resolve="JBTextField" />
                    <node concept="3cmrfG" id="7Mw$cFY1ttX" role="37wK5m">
                      <property role="3cmrfH" value="40" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1y1FD3qEal1" role="37vLTJ">
                  <ref role="3cqZAo" node="1y1FD3qDXl5" resolve="fieldValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaIjmk" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fieldName" />
        <node concept="17QB3L" id="4i$1wjaIm$g" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1y1FD3qEcdI" role="jymVt" />
    <node concept="3clFb_" id="1y1FD3qEd4n" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="3clFbS" id="1y1FD3qEd4q" role="3clF47">
        <node concept="3cpWs6" id="4i$1wjaIsrv" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaIvwg" role="3cqZAk">
            <node concept="37vLTw" id="4i$1wjaIu4L" role="2Oq$k0">
              <ref role="3cqZAo" node="1y1FD3qDXl5" resolve="fieldValue" />
            </node>
            <node concept="liA8E" id="4i$1wjaIy50" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4i$1wjaIqtv" role="3clF45" />
      <node concept="3Tm1VV" id="1y1FD3qEljc" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1y1FD3qEwSX" role="jymVt" />
    <node concept="3clFb_" id="1y1FD3qEluI" role="jymVt">
      <property role="TrG5h" value="setValue" />
      <node concept="3clFbS" id="1y1FD3qEluJ" role="3clF47">
        <node concept="3clFbF" id="1y1FD3qEogs" role="3cqZAp">
          <node concept="2OqwBi" id="1y1FD3qEluO" role="3clFbG">
            <node concept="liA8E" id="1y1FD3qEpDy" role="2OqNvi">
              <ref role="37wK5l" to="qqrq:~JBTextField.setText(java.lang.String)" resolve="setText" />
              <node concept="37vLTw" id="4i$1wjaIq2N" role="37wK5m">
                <ref role="3cqZAo" node="1y1FD3qEmGu" resolve="value" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaISLs" role="2Oq$k0">
              <ref role="3cqZAo" node="1y1FD3qDXl5" resolve="fieldValue" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1y1FD3qEn8Z" role="3clF45" />
      <node concept="3Tm1VV" id="1y1FD3qEluY" role="1B3o_S" />
      <node concept="37vLTG" id="1y1FD3qEmGu" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="4i$1wjaInU2" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wjaIdNs" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wjaIdPD" role="1zkMxy">
      <ref role="3uigEE" to="qqrq:~JBPanel" resolve="JBPanel" />
    </node>
  </node>
  <node concept="sE7Ow" id="4Yh6vkI2_$8">
    <property role="TrG5h" value="Translate to SPIN" />
    <property role="2uzpH1" value="Translate to SPIN" />
    <node concept="tnohg" id="4Yh6vkI2_$9" role="tncku">
      <node concept="3clFbS" id="4Yh6vkI2_$a" role="2VODD2">
        <node concept="3cpWs8" id="64NFiWSmz2U" role="3cqZAp">
          <node concept="3cpWsn" id="64NFiWSmz2V" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="platformRepository" />
            <node concept="3uibUv" id="64NFiWSmz2W" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="64NFiWSmz2X" role="33vP2m">
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <node concept="2OqwBi" id="64NFiWSmz2Y" role="37wK5m">
                <node concept="2WthIp" id="64NFiWSmz2Z" role="2Oq$k0" />
                <node concept="1DTwFV" id="64NFiWSmz30" role="2OqNvi">
                  <ref role="2WH_rO" node="7DbY$XOLHT2" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64NFiWSmz31" role="3cqZAp" />
        <node concept="3cpWs8" id="64NFiWSmz32" role="3cqZAp">
          <node concept="3cpWsn" id="64NFiWSmz33" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="fbTypeDecl" />
            <node concept="3Tqbb2" id="64NFiWSmz34" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="64NFiWSmz35" role="33vP2m">
              <node concept="2OqwBi" id="64NFiWSmz36" role="2Oq$k0">
                <node concept="2WthIp" id="64NFiWSmz37" role="2Oq$k0" />
                <node concept="3gHZIF" id="64NFiWSmz38" role="2OqNvi">
                  <ref role="2WH_rO" node="7DbY$XOLPmF" resolve="node" />
                </node>
              </node>
              <node concept="2Xjw5R" id="64NFiWSmz39" role="2OqNvi">
                <node concept="1xMEDy" id="64NFiWSmz3a" role="1xVPHs">
                  <node concept="chp4Y" id="64NFiWSmz3b" role="ri$Ld">
                    <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                  </node>
                </node>
                <node concept="1xIGOp" id="64NFiWSmz3c" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="64NFiWSmz3d" role="3cqZAp">
          <node concept="3cpWsn" id="64NFiWSmz3e" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="compositeFb" />
            <node concept="3uibUv" id="64NFiWSmz3f" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="64NFiWSmz3g" role="33vP2m">
              <node concept="37vLTw" id="64NFiWSmz3h" role="2Oq$k0">
                <ref role="3cqZAo" node="64NFiWSmz2V" resolve="platformRepository" />
              </node>
              <node concept="liA8E" id="64NFiWSmz3i" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="64NFiWSmz3j" role="37wK5m">
                  <ref role="3cqZAo" node="64NFiWSmz33" resolve="fbTypeDecl" />
                </node>
                <node concept="3VsKOn" id="64NFiWSmz3k" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="64NFiWSmz3l" role="3cqZAp">
          <node concept="3cpWsn" id="64NFiWSmz3m" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="fbPath" />
            <node concept="3uibUv" id="64NFiWSmz3n" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="64NFiWSmz3o" role="33vP2m">
              <ref role="1Pybhc" to="eoo2:~Path" resolve="Path" />
              <ref role="37wK5l" to="eoo2:~Path.of(java.lang.String,java.lang.String...)" resolve="of" />
              <node concept="2YIFZM" id="64NFiWSmz3p" role="37wK5m">
                <ref role="37wK5l" to="51vd:13uTNv4mi$Q" resolve="getPathToElement" />
                <ref role="1Pybhc" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
                <node concept="37vLTw" id="64NFiWSmz3q" role="37wK5m">
                  <ref role="3cqZAo" node="64NFiWSmz33" resolve="fbTypeDecl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7DbY$XORq7i" role="3cqZAp" />
        <node concept="3clFbH" id="7DbY$XORpEU" role="3cqZAp" />
        <node concept="3cpWs8" id="7DbY$XOLBp7" role="3cqZAp">
          <node concept="3cpWsn" id="7DbY$XOLBpa" role="3cpWs9">
            <property role="TrG5h" value="formalFB" />
            <node concept="1xUVSX" id="7DbY$XOLBp5" role="1tU5fm">
              <ref role="1xYkEM" node="2iJMYskfET2" resolve="Formal FB" />
            </node>
            <node concept="2OqwBi" id="7DbY$XOLJ63" role="33vP2m">
              <node concept="2OqwBi" id="7DbY$XOLBD$" role="2Oq$k0">
                <node concept="2WthIp" id="7DbY$XOLBqL" role="2Oq$k0" />
                <node concept="1DTwFV" id="7DbY$XOLIMw" role="2OqNvi">
                  <ref role="2WH_rO" node="7DbY$XOLHBU" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="7DbY$XOLJsh" role="2OqNvi">
                <ref role="LR4U5" node="2iJMYskfET2" resolve="Formal FB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DbY$XORnDa" role="3cqZAp">
          <node concept="2OqwBi" id="7DbY$XORnL3" role="3clFbG">
            <node concept="37vLTw" id="7DbY$XORnD8" role="2Oq$k0">
              <ref role="3cqZAo" node="7DbY$XOLBpa" resolve="formalFB" />
            </node>
            <node concept="2XshWL" id="7DbY$XORnTy" role="2OqNvi">
              <ref role="2WH_rO" node="7l78cIM8SQv" resolve="setProject" />
              <node concept="2OqwBi" id="7DbY$XORoVM" role="2XxRq1">
                <node concept="2WthIp" id="7DbY$XORnVu" role="2Oq$k0" />
                <node concept="1DTwFV" id="7DbY$XORpdf" role="2OqNvi">
                  <ref role="2WH_rO" node="7DbY$XOLHT2" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DbY$XORqy2" role="3cqZAp">
          <node concept="2OqwBi" id="7DbY$XORqGR" role="3clFbG">
            <node concept="37vLTw" id="7DbY$XORqy0" role="2Oq$k0">
              <ref role="3cqZAo" node="7DbY$XOLBpa" resolve="formalFB" />
            </node>
            <node concept="2XshWL" id="7DbY$XORqQe" role="2OqNvi">
              <ref role="2WH_rO" node="4i$1wjaRYLu" resolve="setFbPath" />
              <node concept="37vLTw" id="7DbY$XORqSo" role="2XxRq1">
                <ref role="3cqZAo" node="64NFiWSmz3m" resolve="fbPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DbY$XORret" role="3cqZAp">
          <node concept="2OqwBi" id="7DbY$XORrxl" role="3clFbG">
            <node concept="37vLTw" id="7DbY$XORrer" role="2Oq$k0">
              <ref role="3cqZAo" node="7DbY$XOLBpa" resolve="formalFB" />
            </node>
            <node concept="2XshWL" id="7DbY$XORrEi" role="2OqNvi">
              <ref role="2WH_rO" node="3ryclnQbJrq" resolve="setCompositeFb" />
              <node concept="37vLTw" id="7DbY$XORrGe" role="2XxRq1">
                <ref role="3cqZAo" node="64NFiWSmz3e" resolve="compositeFb" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DbY$XOLJ_r" role="3cqZAp">
          <node concept="2OqwBi" id="7DbY$XOLJHU" role="3clFbG">
            <node concept="37vLTw" id="7DbY$XOLJ_p" role="2Oq$k0">
              <ref role="3cqZAo" node="7DbY$XOLBpa" resolve="formalFB" />
            </node>
            <node concept="liA8E" id="7DbY$XOLJQ4" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="7DbY$XOLJXB" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="7DbY$XOLHBU" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7DbY$XOLHBV" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7DbY$XOLHT2" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7DbY$XOLHT3" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="7DbY$XOLPmF" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="7DbY$XOLPmG" role="1B3o_S" />
      <node concept="1oajcY" id="7DbY$XOLPmH" role="1oa70y" />
      <node concept="3Tqbb2" id="7DbY$XOLPeA" role="1tU5fm" />
    </node>
    <node concept="2ScWuX" id="7DbY$XOLKOu" role="tmbBb">
      <node concept="3clFbS" id="7DbY$XOLKOv" role="2VODD2">
        <node concept="3clFbF" id="7DbY$XOLPX_" role="3cqZAp">
          <node concept="2OqwBi" id="7DbY$XOLQT_" role="3clFbG">
            <node concept="2OqwBi" id="7DbY$XOLQm$" role="2Oq$k0">
              <node concept="2OqwBi" id="7DbY$XOLQ4I" role="2Oq$k0">
                <node concept="2WthIp" id="7DbY$XOLPXz" role="2Oq$k0" />
                <node concept="3gHZIF" id="7DbY$XOLQem" role="2OqNvi">
                  <ref role="2WH_rO" node="7DbY$XOLPmF" resolve="node" />
                </node>
              </node>
              <node concept="2Xjw5R" id="7DbY$XOLQwJ" role="2OqNvi">
                <node concept="1xMEDy" id="7DbY$XOLQwL" role="1xVPHs">
                  <node concept="chp4Y" id="7DbY$XOLQzH" role="ri$Ld">
                    <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                  </node>
                </node>
                <node concept="1xIGOp" id="7DbY$XOLQH7" role="1xVPHs" />
              </node>
            </node>
            <node concept="3x8VRR" id="7DbY$XOLRgp" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

