<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4533029f-ece5-4846-96d2-78f236591d4d(iec61499.meta.editor.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpcb" ref="r:00000000-0000-4000-0000-011c89590297(jetbrains.mps.lang.editor.behavior)" />
    <import index="g3qn" ref="r:9a144fca-becd-4385-a025-398ace28742a(iec61499.meta.editor.structure)" implicit="true" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
  <node concept="13h7C7" id="4JFQCPipsMt">
    <ref role="13h7C2" to="g3qn:4JFQCPipsJs" resolve="CellModel_CustomSyncronized" />
    <node concept="13hLZK" id="4JFQCPipsMu" role="13h7CW">
      <node concept="3clFbS" id="4JFQCPipsMv" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4JFQCPipsMC" role="13h7CS">
      <property role="TrG5h" value="canBeSynchronized" />
      <ref role="13i0hy" to="tpcb:3wXm3h1AYM7" resolve="canBeSynchronized" />
      <node concept="3Tm1VV" id="4JFQCPipsMD" role="1B3o_S" />
      <node concept="3clFbS" id="4JFQCPipsMG" role="3clF47">
        <node concept="3clFbF" id="4JFQCPipsN_" role="3cqZAp">
          <node concept="3clFbT" id="4JFQCPipsN$" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4JFQCPipsMH" role="3clF45" />
    </node>
    <node concept="13i0hz" id="4JFQCPipsMK" role="13h7CS">
      <property role="TrG5h" value="shellBeSynchronized" />
      <ref role="13i0hy" to="tpcb:3TPTV99_TMT" resolve="shellBeSynchronized" />
      <node concept="3Tm1VV" id="4JFQCPipsML" role="1B3o_S" />
      <node concept="3clFbS" id="4JFQCPipsMO" role="3clF47">
        <node concept="3clFbF" id="4JFQCPipsNT" role="3cqZAp">
          <node concept="3clFbT" id="4JFQCPipsNS" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4JFQCPipsMP" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="2_D_3xWx4oN">
    <ref role="13h7C2" to="g3qn:4JFQCPiKfs1" resolve="CellModel_Syncronizer" />
    <node concept="13hLZK" id="2_D_3xWx4oO" role="13h7CW">
      <node concept="3clFbS" id="2_D_3xWx4oP" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2_D_3xWx4z9" role="13h7CS">
      <property role="TrG5h" value="canBeSynchronized" />
      <ref role="13i0hy" to="tpcb:3wXm3h1AYM7" resolve="canBeSynchronized" />
      <node concept="3Tm1VV" id="2_D_3xWx4za" role="1B3o_S" />
      <node concept="3clFbS" id="2_D_3xWx4zd" role="3clF47">
        <node concept="3clFbF" id="2_D_3xWx4Dy" role="3cqZAp">
          <node concept="3clFbT" id="2_D_3xWx4Dx" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2_D_3xWx4ze" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2_D_3xWx4zh" role="13h7CS">
      <property role="TrG5h" value="shellBeSynchronized" />
      <ref role="13i0hy" to="tpcb:3TPTV99_TMT" resolve="shellBeSynchronized" />
      <node concept="3Tm1VV" id="2_D_3xWx4zi" role="1B3o_S" />
      <node concept="3clFbS" id="2_D_3xWx4zl" role="3clF47">
        <node concept="3clFbF" id="2_D_3xWx4DW" role="3cqZAp">
          <node concept="2OqwBi" id="2_D_3xWx78G" role="3clFbG">
            <node concept="1PxgMI" id="2_D_3xWx6Qn" role="2Oq$k0">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="2_D_3xWx6U9" role="3oSUPX">
                <ref role="cht4Q" to="tpc2:7ARneOGixdd" resolve="Synchronizeable" />
              </node>
              <node concept="2OqwBi" id="2_D_3xWx4Rm" role="1m5AlR">
                <node concept="13iPFW" id="2_D_3xWx4DV" role="2Oq$k0" />
                <node concept="3TrEf2" id="2_D_3xWx5eq" role="2OqNvi">
                  <ref role="3Tt5mk" to="g3qn:4JFQCPiKkdP" resolve="cellToSyncronize" />
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="2_D_3xWx7q0" role="2OqNvi">
              <ref role="37wK5l" to="tpcb:3TPTV99_TMT" resolve="shellBeSynchronized" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2_D_3xWx4zm" role="3clF45" />
    </node>
  </node>
</model>

