<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fa1d0806-1ef2-432a-bb40-cd4f72545972(org.fbme.integration.nxt.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
  </languages>
  <imports>
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="kdnk" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers(org.fbme.scenes.lib/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(org.fbme.ide.richediting.plugin)" />
    <import index="je9f" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.editor(org.fbme.richediting.lib/)" />
    <import index="1hzy" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.viewmodel(org.fbme.richediting.lib/)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
    <import index="ylvl" ref="00c8d7a5-e1fd-4a2c-bbdf-9d0d4ac80c94/java:org.fbme.integration.nxt.refactorings(org.fbme.integration.nxt.lib/)" />
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
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
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
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="4sMntFAig8l">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="sE7Ow" id="6wb8cxJd_Qx">
    <property role="TrG5h" value="CreateComposite" />
    <property role="2uzpH1" value="Create Composite" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="6wb8cxJd_Qy" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="6wb8cxJd_Qz" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="6wb8cxJe6fC" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="6wb8cxJe6fD" role="1B3o_S" />
      <node concept="1oajcY" id="6wb8cxJe6fE" role="1oa70y" />
      <node concept="H_c77" id="6wb8cxJe5UN" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="6wb8cxJe7K8" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6wb8cxJe7K9" role="1oa70y" />
    </node>
    <node concept="tnohg" id="6wb8cxJd_Q$" role="tncku">
      <node concept="3clFbS" id="6wb8cxJd_Q_" role="2VODD2">
        <node concept="3cpWs8" id="6wb8cxJd_QA" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJd_QB" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="6wb8cxJd_QC" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="6wb8cxJd_QD" role="33vP2m">
              <node concept="2OqwBi" id="6wb8cxJd_QE" role="2Oq$k0">
                <node concept="2WthIp" id="6wb8cxJd_QF" role="2Oq$k0" />
                <node concept="1DTwFV" id="6wb8cxJd_QG" role="2OqNvi">
                  <ref role="2WH_rO" node="6wb8cxJd_Qy" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="6wb8cxJd_QH" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJeedC" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJeedD" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="6wb8cxJeedE" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="6wb8cxJeedF" role="33vP2m">
              <node concept="37vLTw" id="6wb8cxJeedG" role="2Oq$k0">
                <ref role="3cqZAo" node="6wb8cxJd_QB" resolve="style" />
              </node>
              <node concept="liA8E" id="6wb8cxJeedH" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="2g7iZ5Y1g0X" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJeedJ" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJeedK" role="3cpWs9">
            <property role="TrG5h" value="selected" />
            <node concept="3uibUv" id="6wb8cxJeedL" role="1tU5fm">
              <ref role="3uigEE" to="kdnk:~SelectionModel" resolve="SelectionModel" />
              <node concept="3uibUv" id="6wb8cxJeedM" role="11_B2D">
                <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2OqwBi" id="6wb8cxJeedN" role="33vP2m">
              <node concept="37vLTw" id="6wb8cxJeedO" role="2Oq$k0">
                <ref role="3cqZAo" node="6wb8cxJd_QB" resolve="style" />
              </node>
              <node concept="liA8E" id="6wb8cxJeedP" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6wb8cxJeedQ" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJefk0" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJefk1" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="6wb8cxJefk2" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="6wb8cxJeftv" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="2OqwBi" id="6wb8cxJefLh" role="37wK5m">
                <node concept="2WthIp" id="6wb8cxJefvf" role="2Oq$k0" />
                <node concept="1DTwFV" id="6wb8cxJeg6t" role="2OqNvi">
                  <ref role="2WH_rO" node="6wb8cxJe7K8" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJehh2" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJehh3" role="3cpWs9">
            <property role="TrG5h" value="blockList" />
            <node concept="3uibUv" id="6wb8cxJehh0" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6wb8cxJehzA" role="11_B2D">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
            <node concept="2ShNRf" id="6wb8cxJeh_r" role="33vP2m">
              <node concept="1pGfFk" id="6wb8cxJeljx" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="6wb8cxJelLT" role="1pMfVU">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6wb8cxJemiq" role="3cqZAp">
          <node concept="2GrKxI" id="6wb8cxJemis" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="2OqwBi" id="6wb8cxJemJJ" role="2GsD0m">
            <node concept="37vLTw" id="6wb8cxJemyj" role="2Oq$k0">
              <ref role="3cqZAo" node="6wb8cxJeedK" resolve="selected" />
            </node>
            <node concept="liA8E" id="6wb8cxJemZ8" role="2OqNvi">
              <ref role="37wK5l" to="kdnk:~SelectionModel.getSelectedComponents()" resolve="getSelectedComponents" />
            </node>
          </node>
          <node concept="3clFbS" id="6wb8cxJemiw" role="2LFqv$">
            <node concept="3clFbJ" id="15Dc3O5c4ja" role="3cqZAp">
              <node concept="3clFbS" id="15Dc3O5c4jc" role="3clFbx">
                <node concept="3clFbF" id="15Dc3O5c5nD" role="3cqZAp">
                  <node concept="2OqwBi" id="15Dc3O5c5Tu" role="3clFbG">
                    <node concept="37vLTw" id="15Dc3O5c5nB" role="2Oq$k0">
                      <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
                    </node>
                    <node concept="liA8E" id="15Dc3O5c6Cw" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="10QFUN" id="15Dc3O5c8JC" role="37wK5m">
                        <node concept="3uibUv" id="15Dc3O5c994" role="10QFUM">
                          <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="15Dc3O5c7YP" role="10QFUP">
                          <node concept="1eOMI4" id="15Dc3O5c7HI" role="2Oq$k0">
                            <node concept="10QFUN" id="15Dc3O5c6VX" role="1eOMHV">
                              <node concept="3uibUv" id="15Dc3O5c7hP" role="10QFUM">
                                <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                              </node>
                              <node concept="2GrUjf" id="15Dc3O5c6JK" role="10QFUP">
                                <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="15Dc3O5c8pB" role="2OqNvi">
                            <ref role="37wK5l" to="1hzy:~FunctionBlockView.getComponent()" resolve="getComponent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="15Dc3O5c4Ql" role="3clFbw">
                <node concept="3uibUv" id="15Dc3O5c57t" role="2ZW6by">
                  <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                </node>
                <node concept="2GrUjf" id="15Dc3O5c4sw" role="2ZW6bz">
                  <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="15Dc3O5c9nJ" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="1qXw8gQje2m" role="8Wnug">
                <node concept="2OqwBi" id="1qXw8gQjeyq" role="3clFbG">
                  <node concept="37vLTw" id="1qXw8gQje2k" role="2Oq$k0">
                    <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
                  </node>
                  <node concept="liA8E" id="1qXw8gQjfpP" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="10QFUN" id="1qXw8gQjfGX" role="37wK5m">
                      <node concept="3uibUv" id="1qXw8gQjg3a" role="10QFUM">
                        <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                      </node>
                      <node concept="2GrUjf" id="1qXw8gQjfwK" role="10QFUP">
                        <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="1qXw8gQjgS3" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbJ" id="6wb8cxJenba" role="8Wnug">
                <node concept="2ZW3vV" id="6wb8cxJenyf" role="3clFbw">
                  <node concept="3uibUv" id="6wb8cxJenOa" role="2ZW6by">
                    <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                  </node>
                  <node concept="2GrUjf" id="6wb8cxJencb" role="2ZW6bz">
                    <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
                  </node>
                </node>
                <node concept="3clFbS" id="6wb8cxJenbc" role="3clFbx">
                  <node concept="3clFbF" id="6wb8cxJeo5m" role="3cqZAp">
                    <node concept="2OqwBi" id="6wb8cxJeoB8" role="3clFbG">
                      <node concept="37vLTw" id="6wb8cxJeo5l" role="2Oq$k0">
                        <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
                      </node>
                      <node concept="liA8E" id="6wb8cxJeqfL" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="10QFUN" id="6wb8cxJeqxP" role="37wK5m">
                          <node concept="3uibUv" id="6wb8cxJerpf" role="10QFUM">
                            <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                          </node>
                          <node concept="2GrUjf" id="6wb8cxJeqls" role="10QFUP">
                            <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
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
        <node concept="3clFbH" id="3GESaPG8id8" role="3cqZAp" />
        <node concept="3clFbF" id="3GESaPG8jAi" role="3cqZAp">
          <node concept="2OqwBi" id="3GESaPG8tN6" role="3clFbG">
            <node concept="2ShNRf" id="3GESaPG8jAe" role="2Oq$k0">
              <node concept="1pGfFk" id="2g7iZ5Y1$EO" role="2ShVmc">
                <ref role="37wK5l" to="ylvl:~CompositeCreator.&lt;init&gt;()" resolve="CompositeCreator" />
              </node>
            </node>
            <node concept="liA8E" id="3GESaPG8u1L" role="2OqNvi">
              <ref role="37wK5l" to="ylvl:~CompositeCreator.createComposite(org.fbme.lib.iec61499.fbnetwork.FBNetwork,java.util.List,org.jetbrains.mps.openapi.model.SModel,org.fbme.lib.iec61499.IEC61499Factory)" resolve="createComposite" />
              <node concept="37vLTw" id="3GESaPG8u2K" role="37wK5m">
                <ref role="3cqZAo" node="6wb8cxJeedD" resolve="network" />
              </node>
              <node concept="37vLTw" id="3GESaPG8u4C" role="37wK5m">
                <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
              </node>
              <node concept="2OqwBi" id="3GESaPG8umU" role="37wK5m">
                <node concept="2WthIp" id="3GESaPG8u7j" role="2Oq$k0" />
                <node concept="3gHZIF" id="3GESaPG8uDt" role="2OqNvi">
                  <ref role="2WH_rO" node="6wb8cxJe6fC" resolve="model" />
                </node>
              </node>
              <node concept="2OqwBi" id="3GESaPG8uPJ" role="37wK5m">
                <node concept="37vLTw" id="3GESaPG8uIl" role="2Oq$k0">
                  <ref role="3cqZAo" node="6wb8cxJefk1" resolve="instance" />
                </node>
                <node concept="liA8E" id="3GESaPG8v2w" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getIec61499Factory()" resolve="getIec61499Factory" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="6wb8cxJd_RJ" role="tmbBb">
      <node concept="3clFbS" id="6wb8cxJd_RK" role="2VODD2">
        <node concept="3cpWs8" id="6wb8cxJd_RL" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJd_RM" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="6wb8cxJd_RN" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="6wb8cxJd_RO" role="33vP2m">
              <node concept="2OqwBi" id="6wb8cxJd_RP" role="2Oq$k0">
                <node concept="2WthIp" id="6wb8cxJd_RQ" role="2Oq$k0" />
                <node concept="1DTwFV" id="6wb8cxJd_RR" role="2OqNvi">
                  <ref role="2WH_rO" node="6wb8cxJd_Qy" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="6wb8cxJd_RS" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJd_RT" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJd_RU" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="6wb8cxJd_RV" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="6wb8cxJd_RW" role="33vP2m">
              <node concept="37vLTw" id="6wb8cxJd_RX" role="2Oq$k0">
                <ref role="3cqZAo" node="6wb8cxJd_RM" resolve="style" />
              </node>
              <node concept="liA8E" id="6wb8cxJd_RY" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="2g7iZ5Y1dO$" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJe9PK" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJe9PL" role="3cpWs9">
            <property role="TrG5h" value="selected" />
            <node concept="3uibUv" id="6wb8cxJe9PI" role="1tU5fm">
              <ref role="3uigEE" to="kdnk:~SelectionModel" resolve="SelectionModel" />
              <node concept="3uibUv" id="6wb8cxJea6P" role="11_B2D">
                <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2OqwBi" id="6wb8cxJeb8L" role="33vP2m">
              <node concept="37vLTw" id="6wb8cxJeaU8" role="2Oq$k0">
                <ref role="3cqZAo" node="6wb8cxJd_RM" resolve="style" />
              </node>
              <node concept="liA8E" id="6wb8cxJebw7" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="2g7iZ5Y1exs" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6wb8cxJe8Bw" role="3cqZAp" />
        <node concept="3clFbF" id="6wb8cxJd_Se" role="3cqZAp">
          <node concept="1Wc70l" id="6wb8cxJecxa" role="3clFbG">
            <node concept="3y3z36" id="6wb8cxJed7D" role="3uHU7w">
              <node concept="10Nm6u" id="6wb8cxJeduV" role="3uHU7w" />
              <node concept="37vLTw" id="6wb8cxJecMw" role="3uHU7B">
                <ref role="3cqZAo" node="6wb8cxJe9PL" resolve="selected" />
              </node>
            </node>
            <node concept="3y3z36" id="6wb8cxJd_So" role="3uHU7B">
              <node concept="37vLTw" id="6wb8cxJd_Sp" role="3uHU7B">
                <ref role="3cqZAo" node="6wb8cxJd_RU" resolve="network" />
              </node>
              <node concept="10Nm6u" id="6wb8cxJd_Sq" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="6wb8cxJesrm">
    <property role="TrG5h" value="NxtIntegrationGroup" />
    <node concept="ftmFs" id="6wb8cxJesrn" role="ftER_">
      <node concept="tCFHf" id="6wb8cxJesSI" role="ftvYc">
        <ref role="tCJdB" node="6wb8cxJd_Qx" resolve="CreateComposite" />
      </node>
    </node>
    <node concept="tT9cl" id="6wb8cxJesrq" role="2f5YQi">
      <ref role="tU$_T" to="5z5t:3DiEZ8TON84" resolve="IEC61499Actions" />
    </node>
  </node>
</model>

