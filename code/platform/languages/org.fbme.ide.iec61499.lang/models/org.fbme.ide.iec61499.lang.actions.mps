<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0b878598-a2fa-4e5b-8d30-a0805c2c91e4(org.fbme.ide.iec61499.lang.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
    </language>
  </registry>
  <node concept="37WguZ" id="5abAOk8l7Cc">
    <property role="TrG5h" value="NF_" />
    <node concept="37WvkG" id="5abAOk8l7Cd" role="37WGs$">
      <property role="3mWdv0" value="Setup START state" />
      <ref role="37XkoT" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      <node concept="37Y9Zx" id="5abAOk8l7Ce" role="37ZfLb">
        <node concept="3clFbS" id="5abAOk8l7Cf" role="2VODD2">
          <node concept="3clFbF" id="5abAOk8l8rQ" role="3cqZAp">
            <node concept="2OqwBi" id="5abAOk8lbbn" role="3clFbG">
              <node concept="2OqwBi" id="5abAOk8l8W8" role="2Oq$k0">
                <node concept="1r4Lsj" id="5abAOk8l8rP" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5abAOk8l994" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WX" resolve="states" />
                </node>
              </node>
              <node concept="2DeJg1" id="5abAOk8ld8l" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="5abAOk8lhfB" role="3cqZAp">
            <node concept="37vLTI" id="5abAOk8lkW4" role="3clFbG">
              <node concept="Xl_RD" id="5abAOk8ll1a" role="37vLTx">
                <property role="Xl_RC" value="START" />
              </node>
              <node concept="2OqwBi" id="5abAOk8ljUh" role="37vLTJ">
                <node concept="1y4W85" id="5abAOk8ljDK" role="2Oq$k0">
                  <node concept="3cmrfG" id="5abAOk8ljIq" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="5abAOk8lhHp" role="1y566C">
                    <node concept="1r4Lsj" id="5abAOk8lhf_" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5abAOk8lhUl" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WX" resolve="states" />
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="5abAOk8lk8N" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

