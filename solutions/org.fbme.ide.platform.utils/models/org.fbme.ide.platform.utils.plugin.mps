<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cdaf15dc-8f67-43d2-84d0-f769ba7e05b2(org.fbme.ide.platform.utils.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
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
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431790189" name="jetbrains.mps.baseLanguage.structure.Type" flags="in" index="33vP2l" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1208623485264" name="jetbrains.mps.baseLanguage.structure.AbstractOperation" flags="nn" index="1B$H19" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="sE7Ow" id="13uTNv4pM1k">
    <property role="TrG5h" value="ExportProject" />
    <property role="2uzpH1" value="Export Project as Images" />
    <node concept="tnohg" id="13uTNv4pM1l" role="tncku">
      <node concept="3clFbS" id="13uTNv4pM1m" role="2VODD2">
        <node concept="3clFbF" id="13uTNv4pNgn" role="3cqZAp">
          <node concept="2OqwBi" id="13uTNv4pUlf" role="3clFbG">
            <node concept="1eOMI4" id="13uTNv4pUwe" role="2Oq$k0">
              <node concept="10QFUN" id="13uTNv4pUxe" role="1eOMHV">
                <node concept="33vP2l" id="13uTNv4pUxf" role="10QFUM" />
                <node concept="2OqwBi" id="13uTNv4pNgh" role="10QFUP">
                  <node concept="2WthIp" id="13uTNv4pNgk" role="2Oq$k0" />
                  <node concept="3gHZIF" id="13uTNv4pNgm" role="2OqNvi">
                    <ref role="2WH_rO" node="13uTNv4pMPR" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1B$H19" id="13uTNv4pUlo" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="13uTNv4pMPR" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="13uTNv4pMPS" role="1B3o_S" />
      <node concept="1oajcY" id="13uTNv4pMPT" role="1oa70y" />
      <node concept="H_c77" id="13uTNv4pME4" role="1tU5fm" />
    </node>
    <node concept="2ScWuX" id="13uTNv4pNVO" role="tmbBb">
      <node concept="3clFbS" id="13uTNv4pNVP" role="2VODD2">
        <node concept="3clFbF" id="13uTNv4pO3g" role="3cqZAp">
          <node concept="2ZW3vV" id="13uTNv4pOSV" role="3clFbG">
            <node concept="3uibUv" id="13uTNv4pR4e" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~DefaultSModelDescriptor" resolve="DefaultSModelDescriptor" />
            </node>
            <node concept="2OqwBi" id="13uTNv4pOrS" role="2ZW6bz">
              <node concept="2WthIp" id="13uTNv4pO3f" role="2Oq$k0" />
              <node concept="3gHZIF" id="13uTNv4pOIA" role="2OqNvi">
                <ref role="2WH_rO" node="13uTNv4pMPR" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="13uTNv4pM1D">
    <property role="TrG5h" value="ExportModel_Group" />
    <node concept="tT9cl" id="13uTNv4pN6D" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Hgq" resolve="ModelActions" />
      <ref role="2f8Tey" to="tprs:nyHhwyCI_x" resolve="make" />
    </node>
    <node concept="ftmFs" id="13uTNv4pN6K" role="ftER_">
      <node concept="tCFHf" id="13uTNv4pN6M" role="ftvYc">
        <ref role="tCJdB" node="13uTNv4pM1k" resolve="ExportProject" />
      </node>
    </node>
  </node>
</model>

