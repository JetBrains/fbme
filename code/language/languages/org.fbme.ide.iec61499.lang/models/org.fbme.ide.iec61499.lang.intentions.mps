<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:203f3a13-c1a9-46a3-8e50-0511c704bde3(org.fbme.ide.iec61499.lang.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" implicit="true" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2S6QgY" id="6wjDFs16l8p">
    <property role="TrG5h" value="GenerateBlocks" />
    <ref role="2ZfgGC" to="xiqq:15ruYIbk1Mw" resolve="CATBlockTypeDeclaration" />
    <node concept="2S6ZIM" id="6wjDFs16l8q" role="2ZfVej">
      <node concept="3clFbS" id="6wjDFs16l8r" role="2VODD2">
        <node concept="3clFbF" id="6wjDFs1748l" role="3cqZAp">
          <node concept="3cpWs3" id="6wjDFs175cP" role="3clFbG">
            <node concept="2OqwBi" id="6wjDFs175H2" role="3uHU7w">
              <node concept="2Sf5sV" id="6wjDFs175qL" role="2Oq$k0" />
              <node concept="3TrcHB" id="6wjDFs1766m" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="Xl_RD" id="6wjDFs174vW" role="3uHU7B">
              <property role="Xl_RC" value="Generate dependent function blocks for CAT config " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6wjDFs16l8s" role="2ZfgGD">
      <node concept="3clFbS" id="6wjDFs16l8t" role="2VODD2">
        <node concept="3cpWs8" id="6wjDFs18vHf" role="3cqZAp">
          <node concept="3cpWsn" id="6wjDFs18vHb" role="3cpWs9">
            <property role="TrG5h" value="block" />
            <node concept="3Tqbb2" id="6wjDFs18vWq" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
            </node>
            <node concept="2ShNRf" id="6wjDFs18vXZ" role="33vP2m">
              <node concept="3zrR0B" id="6wjDFs18w58" role="2ShVmc">
                <node concept="3Tqbb2" id="6wjDFs18w5a" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6wjDFs18wl9" role="3cqZAp">
          <node concept="37vLTI" id="6wjDFs18xzM" role="3clFbG">
            <node concept="2OqwBi" id="6wjDFs18xR0" role="37vLTx">
              <node concept="2Sf5sV" id="6wjDFs18xH_" role="2Oq$k0" />
              <node concept="3TrcHB" id="6wjDFs18yl_" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="6wjDFs18wBz" role="37vLTJ">
              <node concept="37vLTw" id="6wjDFs18wl7" role="2Oq$k0">
                <ref role="3cqZAo" node="6wjDFs18vHb" resolve="block" />
              </node>
              <node concept="3TrcHB" id="6wjDFs18xgM" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6wjDFs18u_5" role="3cqZAp">
          <node concept="2OqwBi" id="6wjDFs18v4Z" role="3clFbG">
            <node concept="2OqwBi" id="6wjDFs18uLj" role="2Oq$k0">
              <node concept="1XNTG" id="6wjDFs18u_4" role="2Oq$k0" />
              <node concept="liA8E" id="6wjDFs18uYY" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getModel()" resolve="getModel" />
              </node>
            </node>
            <node concept="liA8E" id="6wjDFs18vct" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="6wjDFs18DIr" role="37wK5m">
                <ref role="3cqZAo" node="6wjDFs18vHb" resolve="block" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6wjDFs18ivE" role="3cqZAp">
          <node concept="37vLTI" id="6wjDFs18jlD" role="3clFbG">
            <node concept="37vLTw" id="6wjDFs18Eel" role="37vLTx">
              <ref role="3cqZAo" node="6wjDFs18vHb" resolve="block" />
            </node>
            <node concept="2OqwBi" id="6wjDFs18iCX" role="37vLTJ">
              <node concept="2Sf5sV" id="6wjDFs18ivD" role="2Oq$k0" />
              <node concept="3TrEf2" id="6wjDFs18iOS" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:19ypCjbiylf" resolve="blockDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wjDFs18EQU" role="3cqZAp">
          <node concept="3cpWsn" id="6wjDFs18EQX" role="3cpWs9">
            <property role="TrG5h" value="hmi" />
            <node concept="3Tqbb2" id="6wjDFs18EQS" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:15ruYIbk1Mz" resolve="HMIInterfaceTypeDeclaration" />
            </node>
            <node concept="2ShNRf" id="6wjDFs18F8v" role="33vP2m">
              <node concept="3zrR0B" id="6wjDFs18Fgj" role="2ShVmc">
                <node concept="3Tqbb2" id="6wjDFs18Fgl" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:15ruYIbk1Mz" resolve="HMIInterfaceTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6wjDFs18FxB" role="3cqZAp">
          <node concept="37vLTI" id="6wjDFs18G_a" role="3clFbG">
            <node concept="3cpWs3" id="6wjDFs18HI6" role="37vLTx">
              <node concept="Xl_RD" id="6wjDFs18HNu" role="3uHU7w">
                <property role="Xl_RC" value="_HMI_CONF" />
              </node>
              <node concept="2OqwBi" id="6wjDFs18GXf" role="3uHU7B">
                <node concept="2Sf5sV" id="6wjDFs18GJ3" role="2Oq$k0" />
                <node concept="3TrcHB" id="6wjDFs18HoI" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6wjDFs18FKG" role="37vLTJ">
              <node concept="37vLTw" id="6wjDFs18Fx_" role="2Oq$k0">
                <ref role="3cqZAo" node="6wjDFs18EQX" resolve="hmi" />
              </node>
              <node concept="3TrcHB" id="6wjDFs18GfJ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6wjDFs18Iyk" role="3cqZAp">
          <node concept="2OqwBi" id="6wjDFs18Jdr" role="3clFbG">
            <node concept="2OqwBi" id="6wjDFs18IKn" role="2Oq$k0">
              <node concept="1XNTG" id="6wjDFs18Iyj" role="2Oq$k0" />
              <node concept="liA8E" id="6wjDFs18J70" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getModel()" resolve="getModel" />
              </node>
            </node>
            <node concept="liA8E" id="6wjDFs18JpM" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <node concept="37vLTw" id="6wjDFs18JqV" role="37wK5m">
                <ref role="3cqZAo" node="6wjDFs18EQX" resolve="hmi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6wjDFs18nXZ" role="3cqZAp">
          <node concept="37vLTI" id="6wjDFs18oT_" role="3clFbG">
            <node concept="2OqwBi" id="6wjDFs18o8H" role="37vLTJ">
              <node concept="2Sf5sV" id="6wjDFs18nXY" role="2Oq$k0" />
              <node concept="3TrEf2" id="6wjDFs18owR" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:19ypCjbiyll" resolve="hmiInterfaceDeclaration" />
              </node>
            </node>
            <node concept="37vLTw" id="6wjDFs18Ih4" role="37vLTx">
              <ref role="3cqZAo" node="6wjDFs18EQX" resolve="hmi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="6wjDFs16mFL" role="2ZfVeh">
      <node concept="3clFbS" id="6wjDFs16mFM" role="2VODD2">
        <node concept="3clFbF" id="6wjDFs16mKD" role="3cqZAp">
          <node concept="3clFbT" id="6wjDFs16mKC" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

