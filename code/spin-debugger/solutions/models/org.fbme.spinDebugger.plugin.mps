<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:17ae4978-8dea-4fcc-a308-136869211027(org.fbme.spinDebugger.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="nf5t" ref="r:1c3e83f1-dc29-416c-9a91-7ca7507c87bb(org.fbme.smvDebugger.plugin)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="6yb" ref="ea81373a-529d-4e5f-a3cf-1e9d8c08983c/java:org.fbme.smvDebugger.integration(org.fbme.smv-debugger.lib/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1210179134063" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentDeclaration" flags="ng" index="34j2dQ">
        <child id="1210179829398" name="persistenPropertyDeclaration" index="34lFYf" />
        <child id="1210684426855" name="preferencePage" index="3yq$HY" />
      </concept>
      <concept id="1210179190070" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyDeclaration" flags="ng" index="34jfKJ" />
      <concept id="1210180874794" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyReference" flags="nn" index="34pFcN" />
      <concept id="1210684385183" name="jetbrains.mps.lang.plugin.structure.PreferencePage" flags="ng" index="3yqqq6">
        <child id="1210686845551" name="component" index="3yzNdQ" />
        <child id="1210686936988" name="resetBlock" index="3y$9q5" />
        <child id="1210686956582" name="commitBlock" index="3y$ekZ" />
        <child id="1210763647050" name="isModifiedBlock" index="3B8L_j" />
      </concept>
      <concept id="1210686882550" name="jetbrains.mps.lang.plugin.structure.PreferencePageResetBlock" flags="in" index="3yzWfJ" />
      <concept id="1210686969356" name="jetbrains.mps.lang.plugin.structure.PreferencePageCommitBlock" flags="in" index="3y$hsl" />
      <concept id="1210690798207" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_PreferencePage_component" flags="nn" index="3yMSdA" />
      <concept id="1210763550007" name="jetbrains.mps.lang.plugin.structure.PreferencePageIsModifiedBlock" flags="in" index="3B8pKI" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="34j2dQ" id="4i$1wjaI7VF">
    <property role="TrG5h" value="SPINBinaryPaths" />
    <node concept="34jfKJ" id="4i$1wjaIc3X" role="34lFYf">
      <property role="TrG5h" value="spinPath" />
      <node concept="17QB3L" id="4i$1wjaIcAF" role="1tU5fm" />
    </node>
    <node concept="3yqqq6" id="4i$1wjaIbMT" role="3yq$HY">
      <property role="TrG5h" value="SPINPath" />
      <node concept="2ShNRf" id="4i$1wjaIBr4" role="3yzNdQ">
        <node concept="1pGfFk" id="4i$1wjaIBXr" role="2ShVmc">
          <ref role="37wK5l" to="nf5t:1y1FD3qDWLg" resolve="PathComponent" />
          <node concept="Xl_RD" id="4i$1wjaIC0z" role="37wK5m">
            <property role="Xl_RC" value="SPIN" />
          </node>
        </node>
      </node>
      <node concept="3B8pKI" id="4i$1wjaIbMV" role="3B8L_j">
        <node concept="3clFbS" id="4i$1wjaIbMW" role="2VODD2">
          <node concept="3clFbF" id="4i$1wjaIGRo" role="3cqZAp">
            <node concept="3y3z36" id="4i$1wjaIHBL" role="3clFbG">
              <node concept="2OqwBi" id="4i$1wjaIIFL" role="3uHU7w">
                <node concept="3yMSdA" id="4i$1wjaII7d" role="2Oq$k0" />
                <node concept="liA8E" id="4i$1wjaIKDn" role="2OqNvi">
                  <ref role="37wK5l" to="nf5t:1y1FD3qEd4n" resolve="getValue" />
                </node>
              </node>
              <node concept="2OqwBi" id="4i$1wjaIGYZ" role="3uHU7B">
                <node concept="2WthIp" id="4i$1wjaIGRn" role="2Oq$k0" />
                <node concept="34pFcN" id="4i$1wjaIH7m" role="2OqNvi">
                  <ref role="2WH_rO" node="4i$1wjaIc3X" resolve="fb2SmvPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3yzWfJ" id="4i$1wjaIbMX" role="3y$9q5">
        <node concept="3clFbS" id="4i$1wjaIbMY" role="2VODD2">
          <node concept="3clFbF" id="4i$1wjaICb$" role="3cqZAp">
            <node concept="2OqwBi" id="4i$1wjaICC2" role="3clFbG">
              <node concept="3yMSdA" id="4i$1wjaICbz" role="2Oq$k0" />
              <node concept="liA8E" id="4i$1wjaID_g" role="2OqNvi">
                <ref role="37wK5l" to="nf5t:1y1FD3qEluI" resolve="setValue" />
                <node concept="2OqwBi" id="4i$1wjaIDKa" role="37wK5m">
                  <node concept="2WthIp" id="4i$1wjaIDDo" role="2Oq$k0" />
                  <node concept="34pFcN" id="4i$1wjaIDPN" role="2OqNvi">
                    <ref role="2WH_rO" node="4i$1wjaIc3X" resolve="fb2SmvPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3y$hsl" id="4i$1wjaIbMZ" role="3y$ekZ">
        <node concept="3clFbS" id="4i$1wjaIbN0" role="2VODD2">
          <node concept="3clFbF" id="4i$1wjaIDYG" role="3cqZAp">
            <node concept="37vLTI" id="4i$1wjaIEmA" role="3clFbG">
              <node concept="2OqwBi" id="4i$1wjaIFqF" role="37vLTx">
                <node concept="3yMSdA" id="4i$1wjaIECT" role="2Oq$k0" />
                <node concept="liA8E" id="4i$1wjaIGxU" role="2OqNvi">
                  <ref role="37wK5l" to="nf5t:1y1FD3qEd4n" resolve="getValue" />
                </node>
              </node>
              <node concept="2OqwBi" id="4i$1wjaIE1S" role="37vLTJ">
                <node concept="2WthIp" id="4i$1wjaIDYF" role="2Oq$k0" />
                <node concept="34pFcN" id="4i$1wjaIE6D" role="2OqNvi">
                  <ref role="2WH_rO" node="4i$1wjaIc3X" resolve="fb2SmvPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="4p$ygW_$VrL">
    <property role="TrG5h" value="S" />
  </node>
  <node concept="312cEu" id="4p$ygW_$V_y">
    <property role="TrG5h" value="ServiceSPINPathProviderFactoryByPreferences" />
    <node concept="2tJIrI" id="4p$ygW_$Wq6" role="jymVt" />
    <node concept="3Tm1VV" id="4p$ygW_$V_z" role="1B3o_S" />
    <node concept="3uibUv" id="4p$ygW_$WQo" role="1zkMxy" />
  </node>
</model>

