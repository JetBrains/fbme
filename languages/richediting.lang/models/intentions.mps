<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cff58130-52d1-4c25-85e0-ab2c4990782e(richediting.lang.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3bo0" ref="r:2b66dd0d-2c90-4da0-994d-d7579a6bca2a(scenes.controllers.scene)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(mps.iec61499.model.fbnetwork)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="ppqf" ref="r:bc5caf0f-df14-4a61-a09e-297c528e7095(richediting.adapters.inspections)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(mps.lang.iec61499.behavior)" />
    <import index="o04u" ref="r:f0179f23-61bb-4719-8c52-ffe510b63d71(mps.ide.debugger)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
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
      <concept id="1240316299033" name="jetbrains.mps.lang.intentions.structure.QueryBlock" flags="in" index="38BcoT">
        <child id="1240393479918" name="paramType" index="3ddBve" />
      </concept>
      <concept id="1240322627579" name="jetbrains.mps.lang.intentions.structure.IntentionParameter" flags="nn" index="38Zlrr" />
      <concept id="1240395258925" name="jetbrains.mps.lang.intentions.structure.ParameterizedIntentionDeclaration" flags="ig" index="3dkpOd">
        <child id="1240395532443" name="queryBlock" index="3dlsAV" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="2S6QgY" id="1R4IoyRv3Ng">
    <property role="TrG5h" value="Rich_StartWatching" />
    <ref role="2ZfgGC" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="2S6ZIM" id="1R4IoyRv3Nh" role="2ZfVej">
      <node concept="3clFbS" id="1R4IoyRv3Ni" role="2VODD2">
        <node concept="3clFbF" id="1R4IoyRv4B4" role="3cqZAp">
          <node concept="Xl_RD" id="1R4IoyRv4B3" role="3clFbG">
            <property role="Xl_RC" value="Watch Debug Variables" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1R4IoyRv3Nj" role="2ZfgGD">
      <node concept="3clFbS" id="1R4IoyRv3Nk" role="2VODD2">
        <node concept="3cpWs8" id="1R4IoyRvbOP" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvbOQ" role="3cpWs9">
            <property role="TrG5h" value="fbnetwork" />
            <node concept="3uibUv" id="1R4IoyRvbY8" role="1tU5fm">
              <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
            </node>
            <node concept="2ShNRf" id="1R4IoyRvbOR" role="33vP2m">
              <node concept="1pGfFk" id="1R4IoyRvbOS" role="2ShVmc">
                <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
                <node concept="2Sf5sV" id="1R4IoyRvbOT" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRvckb" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvckc" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <node concept="3uibUv" id="1R4IoyRvcka" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRpAE3" resolve="InspectionManager" />
            </node>
            <node concept="2YIFZM" id="7eBFChAmu8L" role="33vP2m">
              <ref role="37wK5l" to="ppqf:7eBFChAmsKg" resolve="getInstance" />
              <ref role="1Pybhc" to="ppqf:1R4IoyRpADU" resolve="InspectionManagerImpl" />
              <node concept="2OqwBi" id="7eBFChAmuCc" role="37wK5m">
                <node concept="1XNTG" id="7eBFChAmulK" role="2Oq$k0" />
                <node concept="liA8E" id="7eBFChAmv6c" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRvdob" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvdoc" role="3cpWs9">
            <property role="TrG5h" value="inspectionProvider" />
            <node concept="3uibUv" id="1R4IoyRvdo3" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRvdod" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRvdoe" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRvckc" resolve="manager" />
              </node>
              <node concept="liA8E" id="1R4IoyRvdof" role="2OqNvi">
                <ref role="37wK5l" to="ppqf:1R4IoyRpAFf" resolve="provideInspection" />
                <node concept="37vLTw" id="1R4IoyRvdog" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRvbOQ" resolve="fbnetwork" />
                </node>
                <node concept="1bVj0M" id="1R4IoyRvdoh" role="37wK5m">
                  <node concept="3clFbS" id="1R4IoyRvdoi" role="1bW5cS">
                    <node concept="3clFbF" id="1R4IoyRvdoj" role="3cqZAp">
                      <node concept="2OqwBi" id="1R4IoyRvdok" role="3clFbG">
                        <node concept="liA8E" id="1R4IoyRvdom" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
                          <node concept="Rm8GO" id="1R4IoyRvdon" role="37wK5m">
                            <ref role="1Px2BO" node="1R4IoyRvaVM" resolve="NetworkObserved" />
                            <ref role="Rm8GQ" node="1R4IoyRvaYO" resolve="KEY" />
                          </node>
                          <node concept="10Nm6u" id="1R4IoyRvdoo" role="37wK5m" />
                        </node>
                        <node concept="2JrnkZ" id="7eBFChAmvwW" role="2Oq$k0">
                          <node concept="2Sf5sV" id="7eBFChAmvwX" role="2JrQYb" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRvaFp" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRvaOB" role="3clFbG">
            <node concept="liA8E" id="1R4IoyRvaUw" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolve="putUserObject" />
              <node concept="Rm8GO" id="1R4IoyRvb36" role="37wK5m">
                <ref role="Rm8GQ" node="1R4IoyRvaYO" resolve="KEY" />
                <ref role="1Px2BO" node="1R4IoyRvaVM" resolve="NetworkObserved" />
              </node>
              <node concept="37vLTw" id="1R4IoyRvdC$" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRvdoc" resolve="inspectionProvider" />
              </node>
            </node>
            <node concept="2JrnkZ" id="7eBFChAmvU_" role="2Oq$k0">
              <node concept="2Sf5sV" id="7eBFChAmvUA" role="2JrQYb" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1R4IoyRv7RR" role="2ZfVeh">
      <node concept="3clFbS" id="1R4IoyRv7RS" role="2VODD2">
        <node concept="3cpWs8" id="1R4IoyRve$H" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRve$I" role="3cpWs9">
            <property role="TrG5h" value="contextCell" />
            <node concept="3uibUv" id="1R4IoyRve$F" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRve$J" role="33vP2m">
              <node concept="liA8E" id="1R4IoyRve$K" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="getSelectedCell" />
              </node>
              <node concept="1XNTG" id="1R4IoyRve$L" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRv90E" role="3cqZAp">
          <node concept="1Wc70l" id="1R4IoyRvfKB" role="3clFbG">
            <node concept="3clFbC" id="1R4IoyRvkjj" role="3uHU7w">
              <node concept="10Nm6u" id="1R4IoyRvkx0" role="3uHU7w" />
              <node concept="2OqwBi" id="1R4IoyRvg7R" role="3uHU7B">
                <node concept="liA8E" id="1R4IoyRvh_2" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                  <node concept="Rm8GO" id="1R4IoyRvi1I" role="37wK5m">
                    <ref role="Rm8GQ" node="1R4IoyRvaYO" resolve="KEY" />
                    <ref role="1Px2BO" node="1R4IoyRvaVM" resolve="NetworkObserved" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7eBFChAmwzI" role="2Oq$k0">
                  <node concept="2Sf5sV" id="7eBFChAmwzJ" role="2JrQYb" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="1R4IoyRvajG" role="3uHU7B">
              <node concept="3uibUv" id="1R4IoyRvaul" role="2ZW6by">
                <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
              </node>
              <node concept="37vLTw" id="1R4IoyRve$M" role="2ZW6bz">
                <ref role="3cqZAo" node="1R4IoyRve$I" resolve="contextCell" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="1R4IoyRvaVM">
    <property role="TrG5h" value="NetworkObserved" />
    <node concept="3Tm1VV" id="1R4IoyRvaVN" role="1B3o_S" />
    <node concept="QsSxf" id="1R4IoyRvaYO" role="Qtgdg">
      <property role="TrG5h" value="KEY" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
  </node>
  <node concept="2S6QgY" id="1R4IoyRvkH_">
    <property role="TrG5h" value="Rich_StopWatching" />
    <ref role="2ZfgGC" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="2S6ZIM" id="1R4IoyRvkHA" role="2ZfVej">
      <node concept="3clFbS" id="1R4IoyRvkHB" role="2VODD2">
        <node concept="3clFbF" id="1R4IoyRvkHC" role="3cqZAp">
          <node concept="Xl_RD" id="1R4IoyRvkHD" role="3clFbG">
            <property role="Xl_RC" value="Stop Watching Debug Variables" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1R4IoyRvkHE" role="2ZfgGD">
      <node concept="3clFbS" id="1R4IoyRvkHF" role="2VODD2">
        <node concept="3cpWs8" id="1R4IoyRvkHM" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvkHN" role="3cpWs9">
            <property role="TrG5h" value="fbnetwork" />
            <node concept="3uibUv" id="1R4IoyRvkHO" role="1tU5fm">
              <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
            </node>
            <node concept="2ShNRf" id="1R4IoyRvkHP" role="33vP2m">
              <node concept="1pGfFk" id="1R4IoyRvkHQ" role="2ShVmc">
                <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
                <node concept="2Sf5sV" id="1R4IoyRvkHR" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRvkHS" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvkHT" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <node concept="3uibUv" id="1R4IoyRvkHU" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRpAE3" resolve="InspectionManager" />
            </node>
            <node concept="2YIFZM" id="1R4IoyRvkHV" role="33vP2m">
              <ref role="1Pybhc" to="ppqf:1R4IoyRpADU" resolve="InspectionManagerImpl" />
              <ref role="37wK5l" to="ppqf:7eBFChAmsKg" resolve="getInstance" />
              <node concept="2OqwBi" id="7eBFChAn8EB" role="37wK5m">
                <node concept="1XNTG" id="7eBFChAn8$t" role="2Oq$k0" />
                <node concept="liA8E" id="7eBFChAn8WC" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRvn0T" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRvkHZ" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRvkI0" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRvkHT" resolve="manager" />
            </node>
            <node concept="liA8E" id="1R4IoyRvkI1" role="2OqNvi">
              <ref role="37wK5l" to="ppqf:1R4IoyRpAYX" resolve="disposeInspection" />
              <node concept="37vLTw" id="1R4IoyRvkI2" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRvkHN" resolve="fbnetwork" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1R4IoyRvkIh" role="2ZfVeh">
      <node concept="3clFbS" id="1R4IoyRvkIi" role="2VODD2">
        <node concept="3cpWs8" id="1R4IoyRvkIj" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvkIk" role="3cpWs9">
            <property role="TrG5h" value="contextCell" />
            <node concept="3uibUv" id="1R4IoyRvkIl" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRvkIm" role="33vP2m">
              <node concept="liA8E" id="1R4IoyRvkIn" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="getContextCell" />
              </node>
              <node concept="1XNTG" id="1R4IoyRvkIo" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRvkIp" role="3cqZAp">
          <node concept="1Wc70l" id="1R4IoyRvkIq" role="3clFbG">
            <node concept="3y3z36" id="1R4IoyRvlZC" role="3uHU7w">
              <node concept="2OqwBi" id="1R4IoyRvkIt" role="3uHU7B">
                <node concept="liA8E" id="1R4IoyRvkIv" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                  <node concept="Rm8GO" id="1R4IoyRvkIw" role="37wK5m">
                    <ref role="Rm8GQ" node="1R4IoyRvaYO" resolve="KEY" />
                    <ref role="1Px2BO" node="1R4IoyRvaVM" resolve="NetworkObserved" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7eBFChAna1x" role="2Oq$k0">
                  <node concept="2Sf5sV" id="7eBFChAn9fb" role="2JrQYb" />
                </node>
              </node>
              <node concept="10Nm6u" id="1R4IoyRvkIs" role="3uHU7w" />
            </node>
            <node concept="2ZW3vV" id="1R4IoyRvkIx" role="3uHU7B">
              <node concept="3uibUv" id="1R4IoyRvkIy" role="2ZW6by">
                <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
              </node>
              <node concept="37vLTw" id="1R4IoyRvkIz" role="2ZW6bz">
                <ref role="3cqZAo" node="1R4IoyRvkIk" resolve="contextCell" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="1R4IoyRvnp2">
    <property role="TrG5h" value="Rich_AddDataToWatch" />
    <ref role="2ZfgGC" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="2S6ZIM" id="1R4IoyRvnp3" role="2ZfVej">
      <node concept="3clFbS" id="1R4IoyRvnp4" role="2VODD2">
        <node concept="3clFbF" id="1R4IoyRxd0v" role="3cqZAp">
          <node concept="3cpWs3" id="1R4IoyRxm9u" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyRxnHC" role="3uHU7w">
              <node concept="1LFfDK" id="1R4IoyRxn1h" role="2Oq$k0">
                <node concept="3cmrfG" id="1R4IoyRxniL" role="1LF_Uc">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="38Zlrr" id="1R4IoyRxmrX" role="1LFl5Q" />
              </node>
              <node concept="3TrcHB" id="1R4IoyRxoYc" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="1R4IoyRxkKZ" role="3uHU7B">
              <node concept="3cpWs3" id="1R4IoyRxeVt" role="3uHU7B">
                <node concept="Xl_RD" id="1R4IoyRxd0u" role="3uHU7B">
                  <property role="Xl_RC" value="Start watching " />
                </node>
                <node concept="2OqwBi" id="1R4IoyRxFa0" role="3uHU7w">
                  <node concept="2OqwBi" id="1R4IoyRxhKa" role="2Oq$k0">
                    <node concept="1LFfDK" id="1R4IoyRxhi8" role="2Oq$k0">
                      <node concept="3cmrfG" id="1R4IoyRxhrj" role="1LF_Uc">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="38Zlrr" id="1R4IoyRxgnV" role="1LFl5Q" />
                    </node>
                    <node concept="3TrEf2" id="1R4IoyRxDTQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="1R4IoyRxGAT" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1R4IoyRxl3b" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1R4IoyRvnp5" role="2ZfgGD">
      <node concept="3clFbS" id="1R4IoyRvnp6" role="2VODD2">
        <node concept="3cpWs8" id="1R4IoyRxMRw" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRxMRx" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1R4IoyRxMRo" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
            </node>
            <node concept="0kSF2" id="1R4IoyRxMRy" role="33vP2m">
              <node concept="3uibUv" id="1R4IoyRxMRz" role="0kSFW">
                <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
              </node>
              <node concept="2OqwBi" id="1R4IoyRxMR$" role="0kSFX">
                <node concept="liA8E" id="1R4IoyRxMRC" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                  <node concept="Rm8GO" id="1R4IoyRxMRD" role="37wK5m">
                    <ref role="1Px2BO" node="1R4IoyRvaVM" resolve="NetworkObserved" />
                    <ref role="Rm8GQ" node="1R4IoyRvaYO" resolve="KEY" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7eBFChAmoFW" role="2Oq$k0">
                  <node concept="2Sf5sV" id="7eBFChAmoFX" role="2JrQYb" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRxXGu" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRxXGv" role="3cpWs9">
            <property role="TrG5h" value="watcher" />
            <node concept="3uibUv" id="1R4IoyRxXGt" role="1tU5fm">
              <ref role="3uigEE" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="2YIFZM" id="1R4IoyRxXGw" role="33vP2m">
              <ref role="37wK5l" to="o04u:5jACUPF_QUm" resolve="getInstance" />
              <ref role="1Pybhc" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRyf83" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRyf84" role="3cpWs9">
            <property role="TrG5h" value="fbi" />
            <node concept="3Tqbb2" id="1R4IoyRyf82" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
            </node>
            <node concept="1LFfDK" id="1R4IoyRyf85" role="33vP2m">
              <node concept="3cmrfG" id="1R4IoyRyf86" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="38Zlrr" id="1R4IoyRyf87" role="1LFl5Q" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRye6B" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRye6C" role="3cpWs9">
            <property role="TrG5h" value="variable" />
            <node concept="3Tqbb2" id="1R4IoyRye6u" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
            </node>
            <node concept="1LFfDK" id="1R4IoyRye6D" role="33vP2m">
              <node concept="3cmrfG" id="1R4IoyRye6E" role="1LF_Uc">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="38Zlrr" id="1R4IoyRye6F" role="1LFl5Q" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRyfUb" role="3cqZAp" />
        <node concept="3clFbF" id="1R4IoyRxOtg" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRxPik" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRxXGx" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRxXGv" resolve="watcher" />
            </node>
            <node concept="liA8E" id="1R4IoyRxPrs" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPF_VLV" resolve="watch" />
              <node concept="2Sf5sV" id="1R4IoyRxRGL" role="37wK5m" />
              <node concept="37vLTw" id="1R4IoyRyf88" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRyf84" resolve="fbi" />
              </node>
              <node concept="2OqwBi" id="1R4IoyRxVxw" role="37wK5m">
                <node concept="37vLTw" id="1R4IoyRye6G" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRye6C" resolve="variable" />
                </node>
                <node concept="3TrcHB" id="1R4IoyRxWwK" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRygRF" role="3cqZAp" />
        <node concept="3cpWs8" id="1R4IoyRyd8V" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRyd8W" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1R4IoyRyd8r" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            </node>
            <node concept="2ShNRf" id="1R4IoyRyd8X" role="33vP2m">
              <node concept="1pGfFk" id="1R4IoyRyd8Y" role="2ShVmc">
                <ref role="37wK5l" to="tphl:7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
                <node concept="2ShNRf" id="1R4IoyRyd8Z" role="37wK5m">
                  <node concept="1pGfFk" id="1R4IoyRyd90" role="2ShVmc">
                    <ref role="37wK5l" to="rwq3:6LU90BOirFr" resolve="FBInstanceByNode" />
                    <node concept="37vLTw" id="1R4IoyRyf89" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRyf84" resolve="fbi" />
                    </node>
                    <node concept="3clFbT" id="1R4IoyRyd94" role="37wK5m" />
                    <node concept="10M0yZ" id="1R4IoyRyd95" role="37wK5m">
                      <ref role="3cqZAo" to="rwq3:1R4IoyQJeJf" resolve="FBI" />
                      <ref role="1PxDUh" to="rwq3:1R4IoyQGKdz" resolve="FBInstanceAdapter" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1R4IoyRyd96" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRye6H" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRye6C" resolve="variable" />
                  </node>
                  <node concept="2bSWHS" id="1R4IoyRyd9a" role="2OqNvi" />
                </node>
                <node concept="Rm8GO" id="1R4IoyRyd9b" role="37wK5m">
                  <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                  <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRyd9c" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRye6I" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRye6C" resolve="variable" />
                  </node>
                  <node concept="1BlSNk" id="1R4IoyRyd9g" role="2OqNvi">
                    <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                    <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRyhi_" role="3cqZAp" />
        <node concept="3clFbF" id="1R4IoyRxYo0" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRxYGK" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRxYnY" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRxXGv" resolve="watcher" />
            </node>
            <node concept="liA8E" id="1R4IoyRxZmq" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPFDAmD" resolve="addWatchedValueListener" />
              <node concept="2YIFZM" id="1R4IoyRy2OD" role="37wK5m">
                <ref role="37wK5l" to="o04u:6K_0vqjdycD" resolve="watchable" />
                <ref role="1Pybhc" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
                <node concept="2Sf5sV" id="1R4IoyRy2QR" role="37wK5m" />
                <node concept="37vLTw" id="1R4IoyRyf8a" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRyf84" resolve="fbi" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRy2QV" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRye6J" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRye6C" resolve="variable" />
                  </node>
                  <node concept="3TrcHB" id="1R4IoyRy2QZ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="1R4IoyRy33x" role="37wK5m">
                <node concept="YeOm9" id="1R4IoyRy3eH" role="2ShVmc">
                  <node concept="1Y3b0j" id="1R4IoyRy3eK" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="1R4IoyRy3eL" role="1B3o_S" />
                    <node concept="3clFb_" id="1R4IoyRy3eN" role="jymVt">
                      <property role="TrG5h" value="onValueChanged" />
                      <node concept="3Tm1VV" id="1R4IoyRy3eP" role="1B3o_S" />
                      <node concept="3cqZAl" id="1R4IoyRy3eQ" role="3clF45" />
                      <node concept="37vLTG" id="1R4IoyRy3eR" role="3clF46">
                        <property role="TrG5h" value="newValue" />
                        <node concept="17QB3L" id="1R4IoyRy3eS" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="1R4IoyRy3eT" role="3clF47">
                        <node concept="3clFbF" id="1R4IoyRy3oa" role="3cqZAp">
                          <node concept="2OqwBi" id="1R4IoyRy3u5" role="3clFbG">
                            <node concept="37vLTw" id="1R4IoyRy3o9" role="2Oq$k0">
                              <ref role="3cqZAo" node="1R4IoyRxMRx" resolve="provider" />
                            </node>
                            <node concept="liA8E" id="1R4IoyRy3$f" role="2OqNvi">
                              <ref role="37wK5l" to="ppqf:1R4IoyRp_nV" resolve="setInspectionForPort" />
                              <node concept="37vLTw" id="1R4IoyRyd9h" role="37wK5m">
                                <ref role="3cqZAo" node="1R4IoyRyd8W" resolve="port" />
                              </node>
                              <node concept="2ShNRf" id="1R4IoyRycjO" role="37wK5m">
                                <node concept="1pGfFk" id="1R4IoyRycEp" role="2ShVmc">
                                  <ref role="37wK5l" to="ppqf:1R4IoyQOiyk" resolve="Inspection" />
                                  <node concept="37vLTw" id="1R4IoyRycMs" role="37wK5m">
                                    <ref role="3cqZAo" node="1R4IoyRy3eR" resolve="newValue" />
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
          </node>
        </node>
      </node>
    </node>
    <node concept="38BcoT" id="1R4IoyRvo7A" role="3dlsAV">
      <node concept="3clFbS" id="1R4IoyRvo7B" role="2VODD2">
        <node concept="3clFbH" id="1R4IoyRvPrS" role="3cqZAp" />
        <node concept="3cpWs8" id="1R4IoyRvQAP" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvQAS" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="1R4IoyRvQAL" role="1tU5fm">
              <node concept="1LlUBW" id="1R4IoyRvRG8" role="_ZDj9">
                <node concept="3Tqbb2" id="1R4IoyRvRG9" role="1Lm7xW">
                  <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
                <node concept="3Tqbb2" id="1R4IoyRvRGa" role="1Lm7xW">
                  <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1R4IoyRvUEq" role="33vP2m">
              <node concept="Tc6Ow" id="1R4IoyRvVTE" role="2ShVmc">
                <node concept="1LlUBW" id="1R4IoyRvYn8" role="HW$YZ">
                  <node concept="3Tqbb2" id="1R4IoyRvYn9" role="1Lm7xW">
                    <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                  </node>
                  <node concept="3Tqbb2" id="1R4IoyRvYna" role="1Lm7xW">
                    <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRvZum" role="3cqZAp" />
        <node concept="2Gpval" id="1R4IoyRw7cV" role="3cqZAp">
          <node concept="2GrKxI" id="1R4IoyRw7cY" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="3clFbS" id="1R4IoyRw7d4" role="2LFqv$">
            <node concept="2Gpval" id="1R4IoyRwlzy" role="3cqZAp">
              <node concept="2GrKxI" id="1R4IoyRwlzz" role="2Gsz3X">
                <property role="TrG5h" value="dataSource" />
              </node>
              <node concept="2OqwBi" id="1R4IoyR_0Lm" role="2GsD0m">
                <node concept="2OqwBi" id="1R4IoyRwrln" role="2Oq$k0">
                  <node concept="2GrUjf" id="1R4IoyRwpZo" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1R4IoyRw7cY" resolve="component" />
                  </node>
                  <node concept="3TrEf2" id="1R4IoyR$BlE" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="1R4IoyR_26W" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
              <node concept="3clFbS" id="1R4IoyRwlz_" role="2LFqv$">
                <node concept="3clFbF" id="1R4IoyRwvSe" role="3cqZAp">
                  <node concept="2OqwBi" id="1R4IoyRwyK1" role="3clFbG">
                    <node concept="37vLTw" id="1R4IoyRwvSd" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRvQAS" resolve="res" />
                    </node>
                    <node concept="TSZUe" id="1R4IoyRwUcb" role="2OqNvi">
                      <node concept="1Ls8ON" id="1R4IoyRwUcd" role="25WWJ7">
                        <node concept="2GrUjf" id="1R4IoyRwUce" role="1Lso8e">
                          <ref role="2Gs0qQ" node="1R4IoyRw7cY" resolve="component" />
                        </node>
                        <node concept="2GrUjf" id="1R4IoyRwUcf" role="1Lso8e">
                          <ref role="2Gs0qQ" node="1R4IoyRwlzz" resolve="dataSource" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="1R4IoyRx0cM" role="3cqZAp">
              <node concept="2GrKxI" id="1R4IoyRx0cN" role="2Gsz3X">
                <property role="TrG5h" value="dataDesitnation" />
              </node>
              <node concept="2OqwBi" id="1R4IoyR_Jym" role="2GsD0m">
                <node concept="2OqwBi" id="1R4IoyRx0cO" role="2Oq$k0">
                  <node concept="2GrUjf" id="1R4IoyRx0cP" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1R4IoyRw7cY" resolve="component" />
                  </node>
                  <node concept="3TrEf2" id="1R4IoyR_m_q" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="1R4IoyR_KPX" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
              <node concept="3clFbS" id="1R4IoyRx0cR" role="2LFqv$">
                <node concept="3clFbF" id="1R4IoyRx0cS" role="3cqZAp">
                  <node concept="2OqwBi" id="1R4IoyRx0cT" role="3clFbG">
                    <node concept="37vLTw" id="1R4IoyRx0cU" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRvQAS" resolve="res" />
                    </node>
                    <node concept="TSZUe" id="1R4IoyRx0cV" role="2OqNvi">
                      <node concept="1Ls8ON" id="1R4IoyRx0cW" role="25WWJ7">
                        <node concept="2GrUjf" id="1R4IoyRx0cX" role="1Lso8e">
                          <ref role="2Gs0qQ" node="1R4IoyRw7cY" resolve="component" />
                        </node>
                        <node concept="2GrUjf" id="1R4IoyRx0cY" role="1Lso8e">
                          <ref role="2Gs0qQ" node="1R4IoyRx0cN" resolve="dataDesitnation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1R4IoyRwas$" role="2GsD0m">
            <node concept="2Sf5sV" id="1R4IoyRwas_" role="2Oq$k0" />
            <node concept="3Tsc0h" id="1R4IoyRwasA" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1R4IoyRxabd" role="3cqZAp">
          <node concept="37vLTw" id="1R4IoyRxacS" role="3cqZAk">
            <ref role="3cqZAo" node="1R4IoyRvQAS" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="1LlUBW" id="1R4IoyRvrO$" role="3ddBve">
        <node concept="3Tqbb2" id="1R4IoyRvsFG" role="1Lm7xW">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
        <node concept="3Tqbb2" id="1R4IoyRvu9R" role="1Lm7xW">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1R4IoyRxGWw" role="2ZfVeh">
      <node concept="3clFbS" id="1R4IoyRxGWx" role="2VODD2">
        <node concept="3cpWs8" id="1R4IoyRxIBR" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRxIBS" role="3cpWs9">
            <property role="TrG5h" value="contextCell" />
            <node concept="3uibUv" id="1R4IoyRxIBT" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRxIBU" role="33vP2m">
              <node concept="liA8E" id="1R4IoyRxIBV" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="getContextCell" />
              </node>
              <node concept="1XNTG" id="1R4IoyRxIBW" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRxIBX" role="3cqZAp">
          <node concept="1Wc70l" id="1R4IoyRxIBY" role="3clFbG">
            <node concept="3y3z36" id="1R4IoyRxIQp" role="3uHU7w">
              <node concept="2OqwBi" id="1R4IoyRxIC1" role="3uHU7B">
                <node concept="2JrnkZ" id="7eBFChAmnPf" role="2Oq$k0">
                  <node concept="2Sf5sV" id="7eBFChAmmXe" role="2JrQYb" />
                </node>
                <node concept="liA8E" id="1R4IoyRxIC3" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                  <node concept="Rm8GO" id="1R4IoyRxIC4" role="37wK5m">
                    <ref role="1Px2BO" node="1R4IoyRvaVM" resolve="NetworkObserved" />
                    <ref role="Rm8GQ" node="1R4IoyRvaYO" resolve="KEY" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="1R4IoyRxIC0" role="3uHU7w" />
            </node>
            <node concept="2ZW3vV" id="1R4IoyRxIC5" role="3uHU7B">
              <node concept="3uibUv" id="1R4IoyRxIC6" role="2ZW6by">
                <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
              </node>
              <node concept="37vLTw" id="1R4IoyRxIC7" role="2ZW6bz">
                <ref role="3cqZAo" node="1R4IoyRxIBS" resolve="contextCell" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="1R4IoyRyhHw">
    <property role="TrG5h" value="Rich_AddEventToWatch" />
    <ref role="2ZfgGC" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="2S6ZIM" id="1R4IoyRyhHx" role="2ZfVej">
      <node concept="3clFbS" id="1R4IoyRyhHy" role="2VODD2">
        <node concept="3clFbF" id="1R4IoyRyhHz" role="3cqZAp">
          <node concept="3cpWs3" id="1R4IoyRyhH$" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyRyhH_" role="3uHU7w">
              <node concept="1LFfDK" id="1R4IoyRyhHA" role="2Oq$k0">
                <node concept="3cmrfG" id="1R4IoyRyhHB" role="1LF_Uc">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="38Zlrr" id="1R4IoyRyhHC" role="1LFl5Q" />
              </node>
              <node concept="3TrcHB" id="1R4IoyRyhHD" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="1R4IoyRyhHE" role="3uHU7B">
              <node concept="3cpWs3" id="1R4IoyRyhHF" role="3uHU7B">
                <node concept="Xl_RD" id="1R4IoyRyhHG" role="3uHU7B">
                  <property role="Xl_RC" value="Start watching " />
                </node>
                <node concept="2OqwBi" id="1R4IoyRyhHH" role="3uHU7w">
                  <node concept="2OqwBi" id="1R4IoyRyhHI" role="2Oq$k0">
                    <node concept="1LFfDK" id="1R4IoyRyhHJ" role="2Oq$k0">
                      <node concept="3cmrfG" id="1R4IoyRyhHK" role="1LF_Uc">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="38Zlrr" id="1R4IoyRyhHL" role="1LFl5Q" />
                    </node>
                    <node concept="3TrEf2" id="1R4IoyRyhHM" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="1R4IoyRyhHN" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1R4IoyRyhHO" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1R4IoyRyhHP" role="2ZfgGD">
      <node concept="3clFbS" id="1R4IoyRyhHQ" role="2VODD2">
        <node concept="3cpWs8" id="1R4IoyRyhHR" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRyhHS" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1R4IoyRyhHT" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
            </node>
            <node concept="0kSF2" id="1R4IoyRyhHU" role="33vP2m">
              <node concept="3uibUv" id="1R4IoyRyhHV" role="0kSFW">
                <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
              </node>
              <node concept="2OqwBi" id="1R4IoyRyhHW" role="0kSFX">
                <node concept="liA8E" id="1R4IoyRyhI0" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                  <node concept="Rm8GO" id="1R4IoyRyhI1" role="37wK5m">
                    <ref role="Rm8GQ" node="1R4IoyRvaYO" resolve="KEY" />
                    <ref role="1Px2BO" node="1R4IoyRvaVM" resolve="NetworkObserved" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7eBFChAmqMF" role="2Oq$k0">
                  <node concept="2Sf5sV" id="7eBFChAmqMG" role="2JrQYb" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRyhI2" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRyhI3" role="3cpWs9">
            <property role="TrG5h" value="watcher" />
            <node concept="3uibUv" id="1R4IoyRyhI4" role="1tU5fm">
              <ref role="3uigEE" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="2YIFZM" id="1R4IoyRyhI5" role="33vP2m">
              <ref role="37wK5l" to="o04u:5jACUPF_QUm" resolve="getInstance" />
              <ref role="1Pybhc" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRyhI6" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRyhI7" role="3cpWs9">
            <property role="TrG5h" value="fbi" />
            <node concept="3Tqbb2" id="1R4IoyRyhI8" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
            </node>
            <node concept="1LFfDK" id="1R4IoyRyhI9" role="33vP2m">
              <node concept="3cmrfG" id="1R4IoyRyhIa" role="1LF_Uc">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="38Zlrr" id="1R4IoyRyhIb" role="1LFl5Q" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRyhIc" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRyhId" role="3cpWs9">
            <property role="TrG5h" value="event" />
            <node concept="3Tqbb2" id="1R4IoyRyhIe" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
            </node>
            <node concept="1LFfDK" id="1R4IoyRyhIf" role="33vP2m">
              <node concept="3cmrfG" id="1R4IoyRyhIg" role="1LF_Uc">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="38Zlrr" id="1R4IoyRyhIh" role="1LFl5Q" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRyhIi" role="3cqZAp" />
        <node concept="3clFbF" id="1R4IoyRyhIj" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRyhIk" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRyhIl" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRyhI3" resolve="watcher" />
            </node>
            <node concept="liA8E" id="1R4IoyRyhIm" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPF_VLV" resolve="watch" />
              <node concept="2Sf5sV" id="1R4IoyRyhIn" role="37wK5m" />
              <node concept="37vLTw" id="1R4IoyRyhIo" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRyhI7" resolve="fbi" />
              </node>
              <node concept="2OqwBi" id="1R4IoyRyhIp" role="37wK5m">
                <node concept="37vLTw" id="1R4IoyRyhIq" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRyhId" resolve="event" />
                </node>
                <node concept="3TrcHB" id="1R4IoyRyhIr" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRyhIs" role="3cqZAp" />
        <node concept="3cpWs8" id="1R4IoyRyhIt" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRyhIu" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1R4IoyRyhIv" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            </node>
            <node concept="2ShNRf" id="1R4IoyRyhIw" role="33vP2m">
              <node concept="1pGfFk" id="1R4IoyRyhIx" role="2ShVmc">
                <ref role="37wK5l" to="tphl:7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
                <node concept="2ShNRf" id="1R4IoyRyhIy" role="37wK5m">
                  <node concept="1pGfFk" id="1R4IoyRyhIz" role="2ShVmc">
                    <ref role="37wK5l" to="rwq3:6LU90BOirFr" resolve="FBInstanceByNode" />
                    <node concept="37vLTw" id="1R4IoyRyhI$" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRyhI7" resolve="fbi" />
                    </node>
                    <node concept="3clFbT" id="1R4IoyRyhI_" role="37wK5m" />
                    <node concept="10M0yZ" id="1R4IoyRyhIA" role="37wK5m">
                      <ref role="3cqZAo" to="rwq3:1R4IoyQJeJf" resolve="FBI" />
                      <ref role="1PxDUh" to="rwq3:1R4IoyQGKdz" resolve="FBInstanceAdapter" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1R4IoyRyhIB" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRyhIC" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRyhId" resolve="event" />
                  </node>
                  <node concept="2bSWHS" id="1R4IoyRyhID" role="2OqNvi" />
                </node>
                <node concept="Rm8GO" id="1R4IoyR_Pto" role="37wK5m">
                  <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                  <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRyhIF" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRyhIG" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRyhId" resolve="event" />
                  </node>
                  <node concept="1BlSNk" id="1R4IoyRyhIH" role="2OqNvi">
                    <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                    <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRyhII" role="3cqZAp" />
        <node concept="3clFbF" id="1R4IoyRyhIJ" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRyhIK" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRyhIL" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRyhI3" resolve="watcher" />
            </node>
            <node concept="liA8E" id="1R4IoyRyhIM" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPFDAmD" resolve="addWatchedValueListener" />
              <node concept="2YIFZM" id="1R4IoyRyhIN" role="37wK5m">
                <ref role="1Pybhc" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
                <ref role="37wK5l" to="o04u:6K_0vqjdycD" resolve="watchable" />
                <node concept="2Sf5sV" id="1R4IoyRyhIO" role="37wK5m" />
                <node concept="37vLTw" id="1R4IoyRyhIP" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRyhI7" resolve="fbi" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRyhIQ" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRyhIR" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRyhId" resolve="event" />
                  </node>
                  <node concept="3TrcHB" id="1R4IoyRyhIS" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="1R4IoyRyhIT" role="37wK5m">
                <node concept="YeOm9" id="1R4IoyRyhIU" role="2ShVmc">
                  <node concept="1Y3b0j" id="1R4IoyRyhIV" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="1R4IoyRyhIW" role="1B3o_S" />
                    <node concept="3clFb_" id="1R4IoyRyhIX" role="jymVt">
                      <property role="TrG5h" value="onValueChanged" />
                      <node concept="3Tm1VV" id="1R4IoyRyhIY" role="1B3o_S" />
                      <node concept="3cqZAl" id="1R4IoyRyhIZ" role="3clF45" />
                      <node concept="37vLTG" id="1R4IoyRyhJ0" role="3clF46">
                        <property role="TrG5h" value="newValue" />
                        <node concept="17QB3L" id="1R4IoyRyhJ1" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="1R4IoyRyhJ2" role="3clF47">
                        <node concept="3clFbF" id="1R4IoyRyhJ3" role="3cqZAp">
                          <node concept="2OqwBi" id="1R4IoyRyhJ4" role="3clFbG">
                            <node concept="37vLTw" id="1R4IoyRyhJ5" role="2Oq$k0">
                              <ref role="3cqZAo" node="1R4IoyRyhHS" resolve="provider" />
                            </node>
                            <node concept="liA8E" id="1R4IoyRyhJ6" role="2OqNvi">
                              <ref role="37wK5l" to="ppqf:1R4IoyRp_nV" resolve="setInspectionForPort" />
                              <node concept="37vLTw" id="1R4IoyRyhJ7" role="37wK5m">
                                <ref role="3cqZAo" node="1R4IoyRyhIu" resolve="port" />
                              </node>
                              <node concept="2ShNRf" id="1R4IoyRyhJ8" role="37wK5m">
                                <node concept="1pGfFk" id="1R4IoyRyhJ9" role="2ShVmc">
                                  <ref role="37wK5l" to="ppqf:1R4IoyQOiyk" resolve="Inspection" />
                                  <node concept="37vLTw" id="1R4IoyRyhJa" role="37wK5m">
                                    <ref role="3cqZAo" node="1R4IoyRyhJ0" resolve="newValue" />
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
          </node>
        </node>
      </node>
    </node>
    <node concept="38BcoT" id="1R4IoyRyhJb" role="3dlsAV">
      <node concept="3clFbS" id="1R4IoyRyhJc" role="2VODD2">
        <node concept="3clFbH" id="1R4IoyRyhJd" role="3cqZAp" />
        <node concept="3cpWs8" id="1R4IoyRyhJe" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRyhJf" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="1R4IoyRyhJg" role="1tU5fm">
              <node concept="1LlUBW" id="1R4IoyRyhJh" role="_ZDj9">
                <node concept="3Tqbb2" id="1R4IoyRyhJi" role="1Lm7xW">
                  <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                </node>
                <node concept="3Tqbb2" id="1R4IoyRyhJj" role="1Lm7xW">
                  <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1R4IoyRyhJk" role="33vP2m">
              <node concept="Tc6Ow" id="1R4IoyRyhJl" role="2ShVmc">
                <node concept="1LlUBW" id="1R4IoyRyhJm" role="HW$YZ">
                  <node concept="3Tqbb2" id="1R4IoyRyhJn" role="1Lm7xW">
                    <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                  </node>
                  <node concept="3Tqbb2" id="1R4IoyRyhJo" role="1Lm7xW">
                    <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRyhJp" role="3cqZAp" />
        <node concept="2Gpval" id="1R4IoyRyhJq" role="3cqZAp">
          <node concept="2GrKxI" id="1R4IoyRyhJr" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="3clFbS" id="1R4IoyRyhJs" role="2LFqv$">
            <node concept="2Gpval" id="1R4IoyRyhJt" role="3cqZAp">
              <node concept="2GrKxI" id="1R4IoyRyhJu" role="2Gsz3X">
                <property role="TrG5h" value="dataSource" />
              </node>
              <node concept="2OqwBi" id="1R4IoyRzfgh" role="2GsD0m">
                <node concept="2OqwBi" id="1R4IoyRyhJv" role="2Oq$k0">
                  <node concept="2GrUjf" id="1R4IoyRyhJw" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1R4IoyRyhJr" resolve="component" />
                  </node>
                  <node concept="3TrEf2" id="1R4IoyRyPAm" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="1R4IoyRzgFV" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="3clFbS" id="1R4IoyRyhJy" role="2LFqv$">
                <node concept="3clFbF" id="1R4IoyRyhJz" role="3cqZAp">
                  <node concept="2OqwBi" id="1R4IoyRyhJ$" role="3clFbG">
                    <node concept="37vLTw" id="1R4IoyRyhJ_" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRyhJf" resolve="res" />
                    </node>
                    <node concept="TSZUe" id="1R4IoyRyhJA" role="2OqNvi">
                      <node concept="1Ls8ON" id="1R4IoyRyhJB" role="25WWJ7">
                        <node concept="2GrUjf" id="1R4IoyRyhJC" role="1Lso8e">
                          <ref role="2Gs0qQ" node="1R4IoyRyhJr" resolve="component" />
                        </node>
                        <node concept="2GrUjf" id="1R4IoyRyhJD" role="1Lso8e">
                          <ref role="2Gs0qQ" node="1R4IoyRyhJu" resolve="dataSource" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="1R4IoyRyhJE" role="3cqZAp">
              <node concept="2GrKxI" id="1R4IoyRyhJF" role="2Gsz3X">
                <property role="TrG5h" value="dataDesitnation" />
              </node>
              <node concept="2OqwBi" id="1R4IoyRzYJl" role="2GsD0m">
                <node concept="2OqwBi" id="1R4IoyRyhJG" role="2Oq$k0">
                  <node concept="2GrUjf" id="1R4IoyRyhJH" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1R4IoyRyhJr" resolve="component" />
                  </node>
                  <node concept="3TrEf2" id="1R4IoyRz_Ni" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="1R4IoyR$ikf" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
              <node concept="3clFbS" id="1R4IoyRyhJJ" role="2LFqv$">
                <node concept="3clFbF" id="1R4IoyRyhJK" role="3cqZAp">
                  <node concept="2OqwBi" id="1R4IoyRyhJL" role="3clFbG">
                    <node concept="37vLTw" id="1R4IoyRyhJM" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRyhJf" resolve="res" />
                    </node>
                    <node concept="TSZUe" id="1R4IoyRyhJN" role="2OqNvi">
                      <node concept="1Ls8ON" id="1R4IoyRyhJO" role="25WWJ7">
                        <node concept="2GrUjf" id="1R4IoyRyhJP" role="1Lso8e">
                          <ref role="2Gs0qQ" node="1R4IoyRyhJr" resolve="component" />
                        </node>
                        <node concept="2GrUjf" id="1R4IoyRyhJQ" role="1Lso8e">
                          <ref role="2Gs0qQ" node="1R4IoyRyhJF" resolve="dataDesitnation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1R4IoyRyhJR" role="2GsD0m">
            <node concept="2Sf5sV" id="1R4IoyRyhJS" role="2Oq$k0" />
            <node concept="3Tsc0h" id="1R4IoyRyhJT" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1R4IoyRyhJU" role="3cqZAp">
          <node concept="37vLTw" id="1R4IoyRyhJV" role="3cqZAk">
            <ref role="3cqZAo" node="1R4IoyRyhJf" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="1LlUBW" id="1R4IoyRyhJW" role="3ddBve">
        <node concept="3Tqbb2" id="1R4IoyRyhJX" role="1Lm7xW">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
        <node concept="3Tqbb2" id="1R4IoyRyhJY" role="1Lm7xW">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1R4IoyRyhJZ" role="2ZfVeh">
      <node concept="3clFbS" id="1R4IoyRyhK0" role="2VODD2">
        <node concept="3cpWs8" id="1R4IoyRyhK1" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRyhK2" role="3cpWs9">
            <property role="TrG5h" value="contextCell" />
            <node concept="3uibUv" id="1R4IoyRyhK3" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRyhK4" role="33vP2m">
              <node concept="liA8E" id="1R4IoyRyhK5" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="getContextCell" />
              </node>
              <node concept="1XNTG" id="1R4IoyRyhK6" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRyhK7" role="3cqZAp">
          <node concept="1Wc70l" id="1R4IoyRyhK8" role="3clFbG">
            <node concept="3y3z36" id="1R4IoyRyhK9" role="3uHU7w">
              <node concept="2OqwBi" id="1R4IoyRyhKa" role="3uHU7B">
                <node concept="liA8E" id="1R4IoyRyhKc" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object):java.lang.Object" resolve="getUserObject" />
                  <node concept="Rm8GO" id="1R4IoyRyhKd" role="37wK5m">
                    <ref role="1Px2BO" node="1R4IoyRvaVM" resolve="NetworkObserved" />
                    <ref role="Rm8GQ" node="1R4IoyRvaYO" resolve="KEY" />
                  </node>
                </node>
                <node concept="2JrnkZ" id="7eBFChAmqpx" role="2Oq$k0">
                  <node concept="2Sf5sV" id="7eBFChAmqpy" role="2JrQYb" />
                </node>
              </node>
              <node concept="10Nm6u" id="1R4IoyRyhKe" role="3uHU7w" />
            </node>
            <node concept="2ZW3vV" id="1R4IoyRyhKf" role="3uHU7B">
              <node concept="3uibUv" id="1R4IoyRyhKg" role="2ZW6by">
                <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
              </node>
              <node concept="37vLTw" id="1R4IoyRyhKh" role="2ZW6bz">
                <ref role="3cqZAo" node="1R4IoyRyhK2" resolve="contextCell" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

