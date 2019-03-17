<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:77562afc-b226-4e64-be56-d7d95a741553(iec61499.meta.editor.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="2qld" ref="r:24bac084-437d-402d-b9a3-49599b18a0d1(de.itemis.mps.editor.diagram.structure)" />
    <import index="g3qn" ref="r:9a144fca-becd-4385-a025-398ace28742a(iec61499.meta.editor.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <property id="1158952310477" name="description" index="3mWdv0" />
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
      <concept id="5584396657084920413" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_SampleNode" flags="nn" index="1r4N5L" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
  <node concept="37WguZ" id="2JGKyjirxqU">
    <property role="TrG5h" value="NF_ReplacePortWithSmall" />
    <node concept="37WvkG" id="2JGKyjirxyR" role="37WGs$">
      <property role="3mWdv0" value="Replace original port with small" />
      <ref role="37XkoT" to="g3qn:2JGKyjipIlL" resolve="SmallPort" />
      <node concept="37Y9Zx" id="2JGKyjirxyS" role="37ZfLb">
        <node concept="3clFbS" id="2JGKyjirxyT" role="2VODD2">
          <node concept="3clFbJ" id="2JGKyjirxz5" role="3cqZAp">
            <node concept="2OqwBi" id="2JGKyjirxFj" role="3clFbw">
              <node concept="1r4N5L" id="2JGKyjirxzp" role="2Oq$k0" />
              <node concept="1mIQ4w" id="2JGKyjirxVc" role="2OqNvi">
                <node concept="chp4Y" id="2JGKyjirxX7" role="cj9EA">
                  <ref role="cht4Q" to="2qld:5FQFTBpWGgz" resolve="Port" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2JGKyjirxz7" role="3clFbx">
              <node concept="3cpWs8" id="2JGKyjiry1s" role="3cqZAp">
                <node concept="3cpWsn" id="2JGKyjiry1v" role="3cpWs9">
                  <property role="TrG5h" value="samplePort" />
                  <node concept="3Tqbb2" id="2JGKyjiry1r" role="1tU5fm">
                    <ref role="ehGHo" to="2qld:5FQFTBpWGgz" resolve="Port" />
                  </node>
                  <node concept="1PxgMI" id="2JGKyjiryCK" role="33vP2m">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="2JGKyjiryGu" role="3oSUPX">
                      <ref role="cht4Q" to="2qld:5FQFTBpWGgz" resolve="Port" />
                    </node>
                    <node concept="1r4N5L" id="2JGKyjiry3n" role="1m5AlR" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2JGKyjiryI7" role="3cqZAp">
                <node concept="37vLTI" id="2JGKyjirz1D" role="3clFbG">
                  <node concept="2OqwBi" id="2JGKyjirzd_" role="37vLTx">
                    <node concept="37vLTw" id="2JGKyjirz3Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JGKyjiry1v" resolve="samplePort" />
                    </node>
                    <node concept="3TrEf2" id="2JGKyjir$_6" role="2OqNvi">
                      <ref role="3Tt5mk" to="2qld:5FQFTBpWGkr" resolve="label" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2JGKyjirzLH" role="37vLTJ">
                    <node concept="1r4Lsj" id="2JGKyjiryI5" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2JGKyjir$vu" role="2OqNvi">
                      <ref role="3Tt5mk" to="2qld:5FQFTBpWGkr" resolve="label" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2JGKyjir$Ho" role="3cqZAp">
                <node concept="37vLTI" id="2JGKyjir_pg" role="3clFbG">
                  <node concept="2OqwBi" id="2JGKyjir_D3" role="37vLTx">
                    <node concept="37vLTw" id="2JGKyjir_tr" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JGKyjiry1v" resolve="samplePort" />
                    </node>
                    <node concept="3TrEf2" id="2JGKyjir_S8" role="2OqNvi">
                      <ref role="3Tt5mk" to="2qld:5FQFTBpWGkt" resolve="shape" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2JGKyjir$Q8" role="37vLTJ">
                    <node concept="1r4Lsj" id="2JGKyjir$Hm" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2JGKyjir_6B" role="2OqNvi">
                      <ref role="3Tt5mk" to="2qld:5FQFTBpWGkt" resolve="shape" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2JGKyjirA0S" role="3cqZAp">
                <node concept="37vLTI" id="2JGKyjirAZR" role="3clFbG">
                  <node concept="2OqwBi" id="2JGKyjirBfF" role="37vLTx">
                    <node concept="37vLTw" id="2JGKyjirB43" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JGKyjiry1v" resolve="samplePort" />
                    </node>
                    <node concept="3TrEf2" id="2JGKyjirBDG" role="2OqNvi">
                      <ref role="3Tt5mk" to="2qld:5FQFTBpWGku" resolve="positionX" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2JGKyjirAjB" role="37vLTJ">
                    <node concept="1r4Lsj" id="2JGKyjirA7w" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2JGKyjirAH2" role="2OqNvi">
                      <ref role="3Tt5mk" to="2qld:5FQFTBpWGku" resolve="positionX" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2JGKyjirBMU" role="3cqZAp">
                <node concept="37vLTI" id="2JGKyjirCw2" role="3clFbG">
                  <node concept="2OqwBi" id="2JGKyjirCHI" role="37vLTx">
                    <node concept="37vLTw" id="2JGKyjirC$b" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JGKyjiry1v" resolve="samplePort" />
                    </node>
                    <node concept="3TrEf2" id="2JGKyjirCWO" role="2OqNvi">
                      <ref role="3Tt5mk" to="2qld:5FQFTBpWGkv" resolve="positionY" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2JGKyjirC0h" role="37vLTJ">
                    <node concept="1r4Lsj" id="2JGKyjirBMS" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2JGKyjirCdd" role="2OqNvi">
                      <ref role="3Tt5mk" to="2qld:5FQFTBpWGkv" resolve="positionY" />
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
</model>

