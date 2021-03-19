<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d3f4a0a0-c4fe-4469-baba-a585d555c3fc(org.fbme.ide.iec61499.lang.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1175517400280" name="jetbrains.mps.lang.typesystem.structure.AssertStatement" flags="nn" index="2Mj0R9">
        <child id="1175517761460" name="condition" index="2MkoU_" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1216383170661" name="jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix" flags="ng" index="Q5z_Y">
        <child id="1216383424566" name="executeBlock" index="Q6x$H" />
        <child id="1216391046856" name="descriptionBlock" index="QzAvj" />
      </concept>
      <concept id="1216383287005" name="jetbrains.mps.lang.typesystem.structure.QuickFixExecuteBlock" flags="in" index="Q5ZZ6" />
      <concept id="1216383337216" name="jetbrains.mps.lang.typesystem.structure.ConceptFunctionParameter_node" flags="nn" index="Q6c8r" />
      <concept id="1216390987552" name="jetbrains.mps.lang.typesystem.structure.QuickFixDescriptionBlock" flags="in" index="QznSV" />
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643221" name="helginsIntention" index="1urrFz" />
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
    </language>
  </registry>
  <node concept="18kY7G" id="23XkovWsqlx">
    <property role="TrG5h" value="check_UnknownAlgorithmBody" />
    <property role="3GE5qa" value="fbtype.basic" />
    <node concept="3clFbS" id="23XkovWsqly" role="18ibNy">
      <node concept="a7r0C" id="23XkovWsqlC" role="3cqZAp">
        <node concept="3cpWs3" id="23XkovWss0G" role="a7wSD">
          <node concept="Xl_RD" id="23XkovWss7v" role="3uHU7w">
            <property role="Xl_RC" value="' is unknown." />
          </node>
          <node concept="3cpWs3" id="23XkovWsqUT" role="3uHU7B">
            <node concept="Xl_RD" id="23XkovWsqlU" role="3uHU7B">
              <property role="Xl_RC" value="Language '" />
            </node>
            <node concept="2OqwBi" id="23XkovWsr7s" role="3uHU7w">
              <node concept="1YBJjd" id="23XkovWsqVn" role="2Oq$k0">
                <ref role="1YBMHb" node="23XkovWsql$" resolve="body" />
              </node>
              <node concept="3TrcHB" id="23XkovWsrgj" role="2OqNvi">
                <ref role="3TsBF5" to="xiqq:23XkovWsppH" resolve="languageName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1YBJjd" id="23XkovWst2s" role="1urrMF">
          <ref role="1YBMHb" node="23XkovWsql$" resolve="body" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="23XkovWsql$" role="1YuTPh">
      <property role="TrG5h" value="body" />
      <ref role="1YaFvo" to="xiqq:23XkovWspjs" resolve="UnknownAlgorithmBody" />
    </node>
  </node>
  <node concept="18kY7G" id="2yTUlOHFGNO">
    <property role="TrG5h" value="check_IWithFBNetwork" />
    <property role="3GE5qa" value="network.fb" />
    <node concept="3clFbS" id="2yTUlOHFGNP" role="18ibNy">
      <node concept="1X3_iC" id="z_4K7JAk0X" role="lGtFl">
        <property role="3V$3am" value="statement" />
        <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
        <node concept="2Mj0R9" id="2yTUlOHFIAO" role="8Wnug">
          <node concept="3Cnw8n" id="2yTUlOHFVA5" role="1urrFz">
            <ref role="QpYPw" node="2yTUlOHFNap" resolve="FixInvalidPaths" />
          </node>
          <node concept="Xl_RD" id="2yTUlOHFMpy" role="2MkJ7o">
            <property role="Xl_RC" value="Network has invalid connection paths" />
          </node>
          <node concept="1YBJjd" id="2yTUlOHFMPG" role="1urrMF">
            <ref role="1YBMHb" node="2yTUlOHFGNR" resolve="network" />
          </node>
          <node concept="2OqwBi" id="2yTUlOHFKeC" role="2MkoU_">
            <node concept="2OqwBi" id="2yTUlOHFIBz" role="2Oq$k0">
              <node concept="1YBJjd" id="2yTUlOHFIB$" role="2Oq$k0">
                <ref role="1YBMHb" node="2yTUlOHFGNR" resolve="network" />
              </node>
              <node concept="2Rf3mk" id="2yTUlOHFIB_" role="2OqNvi">
                <node concept="1xMEDy" id="2yTUlOHFIBA" role="1xVPHs">
                  <node concept="chp4Y" id="2yTUlOHFIBB" role="ri$Ld">
                    <ref role="cht4Q" to="xiqq:4KieeRVlhii" resolve="Connection" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HxqBE" id="2yTUlOHFLT4" role="2OqNvi">
              <node concept="1bVj0M" id="2yTUlOHFLT6" role="23t8la">
                <node concept="3clFbS" id="2yTUlOHFLT7" role="1bW5cS">
                  <node concept="3clFbF" id="2yTUlOHFLWD" role="3cqZAp">
                    <node concept="22lmx$" id="2yTUlOHFTyY" role="3clFbG">
                      <node concept="2OqwBi" id="2yTUlOHFU$g" role="3uHU7w">
                        <node concept="2OqwBi" id="2yTUlOHFU4c" role="2Oq$k0">
                          <node concept="37vLTw" id="2yTUlOHFTWd" role="2Oq$k0">
                            <ref role="3cqZAo" node="2yTUlOHFLT8" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="2yTUlOHFUnm" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                          </node>
                        </node>
                        <node concept="1mIQ4w" id="2yTUlOHFUNA" role="2OqNvi">
                          <node concept="chp4Y" id="2yTUlOHFVkV" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                          </node>
                        </node>
                      </node>
                      <node concept="1eOMI4" id="2yTUlOHFTo1" role="3uHU7B">
                        <node concept="1Wc70l" id="2yTUlOHFLWF" role="1eOMHV">
                          <node concept="3fqX7Q" id="2yTUlOHFMbi" role="3uHU7w">
                            <node concept="2OqwBi" id="2yTUlOHFMbk" role="3fr31v">
                              <node concept="2OqwBi" id="2yTUlOHFMbl" role="2Oq$k0">
                                <node concept="37vLTw" id="2yTUlOHFMMy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2yTUlOHFLT8" resolve="it" />
                                </node>
                                <node concept="3TrEf2" id="2yTUlOHFMbn" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
                                </node>
                              </node>
                              <node concept="1mIQ4w" id="2yTUlOHFMbo" role="2OqNvi">
                                <node concept="chp4Y" id="2yTUlOHFMjd" role="cj9EA">
                                  <ref role="cht4Q" to="xiqq:3IX4BsKoiap" resolve="StraightConnectionPath" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="2yTUlOHFLWM" role="3uHU7B">
                            <node concept="2OqwBi" id="2yTUlOHFLWN" role="3uHU7B">
                              <node concept="37vLTw" id="2yTUlOHFME0" role="2Oq$k0">
                                <ref role="3cqZAo" node="2yTUlOHFLT8" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="2yTUlOHFLWP" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
                              </node>
                            </node>
                            <node concept="10Nm6u" id="2yTUlOHFLWQ" role="3uHU7w" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2yTUlOHFLT8" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2yTUlOHFLT9" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2yTUlOHFGNR" role="1YuTPh">
      <property role="TrG5h" value="network" />
      <ref role="1YaFvo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
    </node>
  </node>
  <node concept="Q5z_Y" id="2yTUlOHFNap">
    <property role="3GE5qa" value="network.fb" />
    <property role="TrG5h" value="FixInvalidPaths" />
    <node concept="Q5ZZ6" id="2yTUlOHFNaq" role="Q6x$H">
      <node concept="3clFbS" id="2yTUlOHFNar" role="2VODD2">
        <node concept="3clFbF" id="2yTUlOHFNb0" role="3cqZAp">
          <node concept="2OqwBi" id="2yTUlOHFP$d" role="3clFbG">
            <node concept="2OqwBi" id="2yTUlOHFNGx" role="2Oq$k0">
              <node concept="Q6c8r" id="2yTUlOHFNaZ" role="2Oq$k0" />
              <node concept="2Rf3mk" id="2yTUlOHFNPv" role="2OqNvi">
                <node concept="1xMEDy" id="2yTUlOHFNPx" role="1xVPHs">
                  <node concept="chp4Y" id="2yTUlOHFNWL" role="ri$Ld">
                    <ref role="cht4Q" to="xiqq:4KieeRVlhii" resolve="Connection" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="2yTUlOHFQPU" role="2OqNvi">
              <node concept="1bVj0M" id="2yTUlOHFQPW" role="23t8la">
                <node concept="3clFbS" id="2yTUlOHFQPX" role="1bW5cS">
                  <node concept="3clFbJ" id="2yTUlOHFWgf" role="3cqZAp">
                    <node concept="3clFbS" id="2yTUlOHFWgh" role="3clFbx">
                      <node concept="3cpWs6" id="2yTUlOHFXak" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="2yTUlOHFWMd" role="3clFbw">
                      <node concept="2OqwBi" id="2yTUlOHFWtW" role="2Oq$k0">
                        <node concept="37vLTw" id="2yTUlOHFWn8" role="2Oq$k0">
                          <ref role="3cqZAo" node="2yTUlOHFQPY" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="2yTUlOHFW_A" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="2yTUlOHFX1d" role="2OqNvi">
                        <node concept="chp4Y" id="2yTUlOHFX6f" role="cj9EA">
                          <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2yTUlOHFR8M" role="3cqZAp">
                    <node concept="1Wc70l" id="2yTUlOHFXut" role="3clFbw">
                      <node concept="3y3z36" id="2yTUlOHFXqK" role="3uHU7B">
                        <node concept="2OqwBi" id="2yTUlOHFRhw" role="3uHU7B">
                          <node concept="37vLTw" id="2yTUlOHFRbg" role="2Oq$k0">
                            <ref role="3cqZAo" node="2yTUlOHFQPY" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="2yTUlOHFRr5" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="2yTUlOHFRGe" role="3uHU7w" />
                      </node>
                      <node concept="3fqX7Q" id="2yTUlOHFXyw" role="3uHU7w">
                        <node concept="2OqwBi" id="2yTUlOHFXyy" role="3fr31v">
                          <node concept="2OqwBi" id="2yTUlOHFXyz" role="2Oq$k0">
                            <node concept="37vLTw" id="2yTUlOHFXy$" role="2Oq$k0">
                              <ref role="3cqZAo" node="2yTUlOHFQPY" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="2yTUlOHFXy_" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
                            </node>
                          </node>
                          <node concept="1mIQ4w" id="2yTUlOHFXyA" role="2OqNvi">
                            <node concept="chp4Y" id="2yTUlOHFXyB" role="cj9EA">
                              <ref role="cht4Q" to="xiqq:3IX4BsKoiap" resolve="StraightConnectionPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2yTUlOHFR8O" role="3clFbx">
                      <node concept="3cpWs6" id="2yTUlOHFXAn" role="3cqZAp" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="2yTUlOHFXNA" role="3cqZAp" />
                  <node concept="3clFbF" id="2yTUlOHFZnm" role="3cqZAp">
                    <node concept="2OqwBi" id="2yTUlOHG04q" role="3clFbG">
                      <node concept="2OqwBi" id="2yTUlOHFZy9" role="2Oq$k0">
                        <node concept="37vLTw" id="2yTUlOHFZnk" role="2Oq$k0">
                          <ref role="3cqZAo" node="2yTUlOHFQPY" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="2yTUlOHFZNu" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
                        </node>
                      </node>
                      <node concept="1_qnLN" id="2yTUlOHG0l5" role="2OqNvi">
                        <ref role="1_rbq0" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2yTUlOHFQPY" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2yTUlOHFQPZ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="2yTUlOHFVFI" role="QzAvj">
      <node concept="3clFbS" id="2yTUlOHFVFJ" role="2VODD2">
        <node concept="3clFbF" id="2yTUlOHFVKD" role="3cqZAp">
          <node concept="Xl_RD" id="2yTUlOHFVKC" role="3clFbG">
            <property role="Xl_RC" value="Fix invalid paths " />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

