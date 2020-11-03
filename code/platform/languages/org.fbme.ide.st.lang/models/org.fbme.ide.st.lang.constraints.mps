<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:61b9f20a-ea16-4aa0-9e5f-415cf7d35073(org.fbme.ide.st.lang.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(org.fbme.ide.st.lang.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <reference id="1213106917431" name="defaultConcreteConcept" index="1MND4H" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="7GyesCp9TvH">
    <property role="3GE5qa" value="statements" />
    <ref role="1M2myG" to="gpgy:7GyesCp9Th6" resolve="Statement" />
    <ref role="1MND4H" to="gpgy:7GyesCp9Tu2" resolve="EmptyStatement" />
  </node>
  <node concept="1M2fIO" id="7GyesCpjDbj">
    <property role="3GE5qa" value="expressions" />
    <ref role="1M2myG" to="gpgy:3HBlKeoZu2f" resolve="VariableReference" />
    <node concept="1N5Pfh" id="7GyesCpjDbk" role="1Mr941">
      <ref role="1N5Vy1" to="gpgy:3HBlKeoZu2g" resolve="declaration" />
      <node concept="1dDu$B" id="7GyesCpjDbm" role="1N6uqs">
        <ref role="1dDu$A" to="gpgy:7GyesCpa3Ox" resolve="VariableDeclaration" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3kbdwfdGa9$">
    <ref role="1M2myG" to="gpgy:3kbdwfdGa98" resolve="Identifier" />
    <node concept="EnEH3" id="3kbdwfdGa9_" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="3kbdwfdGa9B" role="QCWH9">
        <node concept="3clFbS" id="3kbdwfdGa9C" role="2VODD2">
          <node concept="3clFbF" id="3kbdwfdGc92" role="3cqZAp">
            <node concept="1Wc70l" id="3kbdwfdGc8Z" role="3clFbG">
              <node concept="2OqwBi" id="3kbdwfdGdI_" role="3uHU7B">
                <node concept="1Wqviy" id="3kbdwfdGcgM" role="2Oq$k0" />
                <node concept="17RvpY" id="3kbdwfdGetz" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="3kbdwfdGbs$" role="3uHU7w">
                <node concept="1Wqviy" id="3kbdwfdGaZL" role="2Oq$k0" />
                <node concept="liA8E" id="3kbdwfdGbML" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                  <node concept="Xl_RD" id="3kbdwfdGeHt" role="37wK5m">
                    <property role="Xl_RC" value="[a-zA-Z_][a-zA-Z_0-9]*" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3Sv$YXXRidq">
    <property role="3GE5qa" value="expressions" />
    <ref role="1M2myG" to="gpgy:23XkovWnimN" resolve="FunctionCall" />
    <node concept="EnEH3" id="3Sv$YXXRid$" role="1MhHOB">
      <ref role="EomxK" to="gpgy:23XkovWnimO" resolve="functionName" />
      <node concept="QB0g5" id="3Sv$YXXRimd" role="QCWH9">
        <node concept="3clFbS" id="3Sv$YXXRime" role="2VODD2">
          <node concept="3clFbF" id="3Sv$YXXRitz" role="3cqZAp">
            <node concept="1Wc70l" id="3Sv$YXXRk$M" role="3clFbG">
              <node concept="2OqwBi" id="3Sv$YXXRl9X" role="3uHU7w">
                <node concept="1Wqviy" id="3Sv$YXXRkGJ" role="2Oq$k0" />
                <node concept="liA8E" id="3Sv$YXXRlEZ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                  <node concept="Xl_RD" id="3Sv$YXXRlN4" role="37wK5m">
                    <property role="Xl_RC" value="[a-zA-Z_][a-zA-Z_0-9]*" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3Sv$YXXRiQL" role="3uHU7B">
                <node concept="1Wqviy" id="3Sv$YXXRity" role="2Oq$k0" />
                <node concept="17RvpY" id="3Sv$YXXRjKx" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

