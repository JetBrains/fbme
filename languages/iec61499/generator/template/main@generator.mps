<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eba6360c-f145-4c6e-bffa-c4d413ed1309(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(iec61499.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(iec61499.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="2133624044437898907" name="jetbrains.mps.core.xml.structure.XmlDoctypeDeclaration" flags="ng" index="29q25o">
        <property id="2133624044437898910" name="doctypeName" index="29q25t" />
        <child id="2133624044438029120" name="externalId" index="29qyi3" />
      </concept>
      <concept id="2133624044438029119" name="jetbrains.mps.core.xml.structure.XmlExternalId" flags="ng" index="29qyjW">
        <property id="2133624044438029124" name="systemId" index="29qyi7" />
      </concept>
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681299057" name="jetbrains.mps.core.xml.structure.XmlProlog" flags="ng" index="2pNm8N">
        <child id="7604553062773674214" name="elements" index="BGLLu" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <property id="6999033275467544021" name="shortEmptyNotation" index="qg3DV" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG" />
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
        <child id="6666499814681299060" name="prolog" index="2pNm8Q" />
      </concept>
      <concept id="5228786488744996718" name="jetbrains.mps.core.xml.structure.XmlDeclaration" flags="ng" index="3W$oVP">
        <property id="5491461270226117667" name="version" index="1D$jbd" />
        <property id="3374336260035925078" name="encoding" index="1UZly_" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1510949579266781519" name="jetbrains.mps.lang.generator.structure.TemplateCallMacro" flags="ln" index="5jKBG" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168559512253" name="jetbrains.mps.lang.generator.structure.DismissTopMappingRule" flags="lg" index="j$LIH">
        <child id="1169669152123" name="generatorMessage" index="1lHHLF" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1169670156577" name="jetbrains.mps.lang.generator.structure.GeneratorMessage" flags="lg" index="1lLz0L">
        <property id="1169670173015" name="messageText" index="1lLB17" />
        <property id="1169670356567" name="messageType" index="1lMjX7" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="3HBlKeoYshz">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="3HBlKep02Zq" role="3lj3bC">
      <property role="36QftV" value="true" />
      <ref role="3lhOvi" node="3HBlKeoZMSw" resolve="mapping_FunctionBlockDeclarationBase" />
      <ref role="30HIoZ" to="xiqq:3HBlKeoYsiw" resolve="FunctionBlockDeclarationBase" />
    </node>
  </node>
  <node concept="2pMbU2" id="3HBlKeoZMSw">
    <property role="TrG5h" value="mapping_FunctionBlockDeclarationBase" />
    <node concept="3rIKKV" id="3HBlKeoZMSx" role="2pMbU3">
      <node concept="2pNNFK" id="3HBlKeoZPLJ" role="2pNm8H">
        <property role="2pNNFO" value="FBType" />
        <node concept="2pNUuL" id="3HBlKeoZPM_" role="2pNNFR">
          <property role="2pNUuO" value="GUID" />
          <node concept="2pMdtt" id="3HBlKeoZPMB" role="2pMdts">
            <property role="2pMdty" value="TODO" />
          </node>
        </node>
        <node concept="2pNUuL" id="3HBlKeoZPMH" role="2pNNFR">
          <property role="2pNUuO" value="Name" />
          <node concept="2pMdtt" id="3HBlKeoZPML" role="2pMdts">
            <property role="2pMdty" value="FB_Name" />
            <node concept="17Uvod" id="3HBlKeoZPMN" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="3HBlKeoZPMO" role="3zH0cK">
                <node concept="3clFbS" id="3HBlKeoZPMP" role="2VODD2">
                  <node concept="3clFbF" id="3HBlKeoZPVi" role="3cqZAp">
                    <node concept="2OqwBi" id="3HBlKeoZQ9D" role="3clFbG">
                      <node concept="30H73N" id="3HBlKeoZPVh" role="2Oq$k0" />
                      <node concept="3TrcHB" id="3HBlKeoZQqO" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="3HBlKeoZPMm" role="3o6s8t">
          <property role="2pNNFO" value="Identification" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="3HBlKeoZQOI" role="2pNNFR">
            <property role="2pNUuO" value="Standard" />
            <node concept="2pMdtt" id="3HBlKeoZQOK" role="2pMdts">
              <property role="2pMdty" value="61499-2" />
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="3HBlKeoZQZo" role="3o6s8t">
          <property role="2pNNFO" value="VersionInfo" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="3HBlKeoZRa1" role="2pNNFR">
            <property role="2pNUuO" value="Organization" />
            <node concept="2pMdtt" id="3HBlKeoZRa3" role="2pMdts">
              <property role="2pMdty" value="TODO" />
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="3HBlKeoZRl4" role="3o6s8t">
          <property role="2pNNFO" value="InterfaceList" />
          <property role="qg3DV" value="false" />
          <node concept="2pNNFK" id="3HBlKeoZRvN" role="3o6s8t">
            <property role="2pNNFO" value="EventInputs" />
            <node concept="2pNNFK" id="3HBlKeoZRvW" role="3o6s8t">
              <property role="2pNNFO" value="Event" />
              <property role="qg3DV" value="true" />
              <node concept="1WS0z7" id="3HBlKeoZRw1" role="lGtFl">
                <node concept="3JmXsc" id="3HBlKeoZRw4" role="3Jn$fo">
                  <node concept="3clFbS" id="3HBlKeoZRw5" role="2VODD2">
                    <node concept="3clFbF" id="3HBlKeoZRwb" role="3cqZAp">
                      <node concept="2OqwBi" id="3HBlKeoZRw6" role="3clFbG">
                        <node concept="3Tsc0h" id="3HBlKeoZRw9" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                        </node>
                        <node concept="30H73N" id="3HBlKeoZRwa" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="5jKBG" id="3HBlKep00iM" role="lGtFl">
                <ref role="v9R2y" node="3HBlKeoZW8b" resolve="reduce_EventDeclaration" />
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="3HBlKeoZSjF" role="3o6s8t">
            <property role="2pNNFO" value="EventOutputs" />
            <node concept="2pNNFK" id="3HBlKep01F8" role="3o6s8t">
              <property role="2pNNFO" value="Event" />
              <property role="qg3DV" value="true" />
              <node concept="1WS0z7" id="3HBlKep01F9" role="lGtFl">
                <node concept="3JmXsc" id="3HBlKep01Fa" role="3Jn$fo">
                  <node concept="3clFbS" id="3HBlKep01Fb" role="2VODD2">
                    <node concept="3clFbF" id="3HBlKep01Fc" role="3cqZAp">
                      <node concept="2OqwBi" id="3HBlKep01Fd" role="3clFbG">
                        <node concept="3Tsc0h" id="3HBlKep02cY" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                        </node>
                        <node concept="30H73N" id="3HBlKep01Ff" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="5jKBG" id="3HBlKep01Fg" role="lGtFl">
                <ref role="v9R2y" node="3HBlKeoZW8b" resolve="reduce_EventDeclaration" />
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="3tDlCSlVIVM" role="3o6s8t">
            <property role="2pNNFO" value="InputVars" />
            <node concept="2pNNFK" id="3tDlCSlVJ4_" role="3o6s8t">
              <property role="2pNNFO" value="VarDeclaration" />
              <property role="qg3DV" value="true" />
              <node concept="1WS0z7" id="3tDlCSlVJ4F" role="lGtFl">
                <node concept="3JmXsc" id="3tDlCSlVJ4I" role="3Jn$fo">
                  <node concept="3clFbS" id="3tDlCSlVJ4J" role="2VODD2">
                    <node concept="3clFbF" id="3tDlCSlVJ4P" role="3cqZAp">
                      <node concept="2OqwBi" id="3tDlCSlVJ4K" role="3clFbG">
                        <node concept="3Tsc0h" id="71yVXwEDQyr" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                        </node>
                        <node concept="30H73N" id="3tDlCSlVJ4O" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="5jKBG" id="71yVXwEDPW1" role="lGtFl">
                <ref role="v9R2y" node="3tDlCSlVJwU" resolve="reduce_VariableDeclaration" />
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="PI_pXY9FAx" role="3o6s8t">
            <property role="2pNNFO" value="OutputVars" />
            <node concept="2pNNFK" id="PI_pXY9FAy" role="3o6s8t">
              <property role="2pNNFO" value="VarDeclaration" />
              <property role="qg3DV" value="true" />
              <node concept="1WS0z7" id="PI_pXY9FAz" role="lGtFl">
                <node concept="3JmXsc" id="PI_pXY9FA$" role="3Jn$fo">
                  <node concept="3clFbS" id="PI_pXY9FA_" role="2VODD2">
                    <node concept="3clFbF" id="PI_pXY9FAA" role="3cqZAp">
                      <node concept="2OqwBi" id="PI_pXY9FAB" role="3clFbG">
                        <node concept="3Tsc0h" id="PI_pXY9LBN" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                        </node>
                        <node concept="30H73N" id="PI_pXY9FAD" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="5jKBG" id="PI_pXY9FAE" role="lGtFl">
                <ref role="v9R2y" node="3tDlCSlVJwU" resolve="reduce_VariableDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3o6iSG" id="3HBlKeoZSdH" role="3o6s8t" />
        </node>
        <node concept="2pNNFK" id="3HBlKep07f0" role="3o6s8t">
          <property role="2pNNFO" value="BFData" />
          <property role="qg3DV" value="true" />
          <node concept="1sPUBX" id="3HBlKep07xe" role="lGtFl">
            <ref role="v9R2y" node="3HBlKep07xh" resolve="switch_FunctionBlock_XmlData" />
          </node>
        </node>
      </node>
      <node concept="2pNm8N" id="3HBlKeoZPLy" role="2pNm8Q">
        <node concept="3W$oVP" id="3HBlKeoZPL$" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="utf-8" />
        </node>
        <node concept="29q25o" id="3HBlKeoZPLD" role="BGLLu">
          <property role="29q25t" value="FBType" />
          <node concept="29qyjW" id="3HBlKeoZPLH" role="29qyi3">
            <property role="29qyi7" value="&quot;TODO&quot;" />
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="3HBlKeoZMSz" role="lGtFl">
      <ref role="n9lRv" to="xiqq:3HBlKeoYsiw" resolve="FunctionBlockDeclarationBase" />
    </node>
    <node concept="17Uvod" id="3HBlKeoZMTw" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="3HBlKeoZMTx" role="3zH0cK">
        <node concept="3clFbS" id="3HBlKeoZMTy" role="2VODD2">
          <node concept="3clFbF" id="3HBlKeoZN20" role="3cqZAp">
            <node concept="2OqwBi" id="3HBlKeoZNgn" role="3clFbG">
              <node concept="30H73N" id="3HBlKeoZN1Z" role="2Oq$k0" />
              <node concept="3TrcHB" id="3HBlKeoZNxy" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="3HBlKeoZW8b">
    <property role="TrG5h" value="reduce_EventDeclaration" />
    <ref role="3gUMe" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="2pNNFK" id="3HBlKeoZW8g" role="13RCb5">
      <property role="2pNNFO" value="Event" />
      <node concept="2pNUuL" id="3HBlKeoZW8m" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="3HBlKeoZW8s" role="2pMdts">
          <property role="2pMdty" value="" />
          <node concept="17Uvod" id="3HBlKeoZW8u" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="3HBlKeoZW8v" role="3zH0cK">
              <node concept="3clFbS" id="3HBlKeoZW8w" role="2VODD2">
                <node concept="3clFbF" id="3HBlKeoZWgX" role="3cqZAp">
                  <node concept="2OqwBi" id="3HBlKeoZWuy" role="3clFbG">
                    <node concept="30H73N" id="3HBlKeoZWgW" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3HBlKeoZWIs" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="3HBlKeoZXbO" role="3o6s8t">
        <property role="2pNNFO" value="With" />
        <property role="qg3DV" value="true" />
        <node concept="2pNUuL" id="3HBlKeoZXwK" role="2pNNFR">
          <property role="2pNUuO" value="Var" />
          <node concept="2pMdtt" id="3HBlKeoZXwO" role="2pMdts">
            <node concept="17Uvod" id="3HBlKeoZXwQ" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="3HBlKeoZXwR" role="3zH0cK">
                <node concept="3clFbS" id="3HBlKeoZXwS" role="2VODD2">
                  <node concept="3clFbF" id="3HBlKeoZXLY" role="3cqZAp">
                    <node concept="2OqwBi" id="3HBlKeoZYIn" role="3clFbG">
                      <node concept="2OqwBi" id="3HBlKeoZXZm" role="2Oq$k0">
                        <node concept="30H73N" id="3HBlKeoZXLX" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3HBlKeoZYko" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:3HBlKeoYsiU" resolve="declaration" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="3HBlKeoZZ2f" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="3HBlKeoZXDl" role="lGtFl">
          <node concept="3JmXsc" id="3HBlKeoZXDo" role="3Jn$fo">
            <node concept="3clFbS" id="3HBlKeoZXDp" role="2VODD2">
              <node concept="3clFbF" id="3HBlKeoZXDv" role="3cqZAp">
                <node concept="2OqwBi" id="3HBlKeoZXDq" role="3clFbG">
                  <node concept="3Tsc0h" id="3HBlKeoZXDt" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                  </node>
                  <node concept="30H73N" id="3HBlKeoZXDu" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="3HBlKeoZW8o" role="lGtFl" />
    </node>
  </node>
  <node concept="jVnub" id="3HBlKep07xh">
    <property role="TrG5h" value="switch_FunctionBlock_XmlData" />
    <node concept="3aamgX" id="3HBlKep07xl" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="xiqq:3HBlKeoYsj1" resolve="BasicFunctionBlockDeclaration" />
      <node concept="j$656" id="3tDlCSlVIxn" role="1lVwrX">
        <ref role="v9R2y" node="3tDlCSlVIxl" resolve="reduce_BasicFunctionBlockDeclaration_XmlData" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="3tDlCSlVIxl">
    <property role="TrG5h" value="reduce_BasicFunctionBlockDeclaration_XmlData" />
    <ref role="3gUMe" to="xiqq:3HBlKeoYsj1" resolve="BasicFunctionBlockDeclaration" />
    <node concept="2pNNFK" id="3HBlKep07xv" role="13RCb5">
      <property role="2pNNFO" value="BasicFB" />
      <property role="qg3DV" value="false" />
      <node concept="2pNNFK" id="3tDlCSlVMGL" role="3o6s8t">
        <property role="2pNNFO" value="InternalVars" />
        <node concept="2pNNFK" id="3tDlCSlVMGU" role="3o6s8t">
          <property role="2pNNFO" value="VarDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="1WS0z7" id="3tDlCSlVMH2" role="lGtFl">
            <node concept="3JmXsc" id="3tDlCSlVMH5" role="3Jn$fo">
              <node concept="3clFbS" id="3tDlCSlVMH6" role="2VODD2">
                <node concept="3clFbF" id="3tDlCSlVMHc" role="3cqZAp">
                  <node concept="2OqwBi" id="3tDlCSlVMH7" role="3clFbG">
                    <node concept="3Tsc0h" id="3tDlCSlVMHa" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYFAL" resolve="internalVariables" />
                    </node>
                    <node concept="30H73N" id="3tDlCSlVMHb" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="5jKBG" id="3tDlCSlVN9d" role="lGtFl">
            <ref role="v9R2y" node="3tDlCSlVJwU" resolve="reduce_VariableDeclaration" />
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="3tDlCSlVNzT" role="3o6s8t">
        <property role="2pNNFO" value="ECC" />
        <node concept="2pNNFK" id="3tDlCSlVNFz" role="3o6s8t">
          <property role="2pNNFO" value="ECState" />
          <property role="qg3DV" value="false" />
          <node concept="2pNUuL" id="3tDlCSlVPFc" role="2pNNFR">
            <property role="2pNUuO" value="Name" />
            <node concept="2pMdtt" id="3tDlCSlVPSk" role="2pMdts">
              <node concept="17Uvod" id="3tDlCSlVPZy" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="3tDlCSlVPZz" role="3zH0cK">
                  <node concept="3clFbS" id="3tDlCSlVPZ$" role="2VODD2">
                    <node concept="3clFbF" id="3tDlCSlVQ81" role="3cqZAp">
                      <node concept="2OqwBi" id="3tDlCSlVQmb" role="3clFbG">
                        <node concept="30H73N" id="3tDlCSlVQ80" role="2Oq$k0" />
                        <node concept="3TrcHB" id="3tDlCSlVQGu" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="3tDlCSlVPlg" role="3o6s8t">
            <property role="2pNNFO" value="ECAction" />
            <property role="qg3DV" value="true" />
            <node concept="2pNUuL" id="3tDlCSlVS0k" role="2pNNFR">
              <property role="2pNUuO" value="Algorithm" />
              <node concept="2pMdtt" id="3tDlCSlVSdt" role="2pMdts">
                <node concept="17Uvod" id="3tDlCSlVSk8" role="lGtFl">
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                  <property role="2qtEX9" value="text" />
                  <node concept="3zFVjK" id="3tDlCSlVSk9" role="3zH0cK">
                    <node concept="3clFbS" id="3tDlCSlVSka" role="2VODD2">
                      <node concept="3clFbF" id="3tDlCSlVSsB" role="3cqZAp">
                        <node concept="2OqwBi" id="3tDlCSlVTEE" role="3clFbG">
                          <node concept="2OqwBi" id="3tDlCSlVSDZ" role="2Oq$k0">
                            <node concept="30H73N" id="3tDlCSlVSsA" role="2Oq$k0" />
                            <node concept="3TrEf2" id="3tDlCSlVTaK" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0Ut" resolve="algorithm" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="3tDlCSlVTYu" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="3tDlCSlVUM6" role="lGtFl">
                <node concept="3IZrLx" id="3tDlCSlVUM8" role="3IZSJc">
                  <node concept="3clFbS" id="3tDlCSlVUMa" role="2VODD2">
                    <node concept="3clFbF" id="3tDlCSlVV62" role="3cqZAp">
                      <node concept="2OqwBi" id="3tDlCSlVW5e" role="3clFbG">
                        <node concept="2OqwBi" id="3tDlCSlVViM" role="2Oq$k0">
                          <node concept="30H73N" id="3tDlCSlVV61" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3tDlCSlVVA$" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0Ut" resolve="algorithm" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="3tDlCSlVWwt" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2pNUuL" id="3tDlCSlVXli" role="2pNNFR">
              <property role="2pNUuO" value="Output" />
              <node concept="2pMdtt" id="3tDlCSlVXRd" role="2pMdts">
                <node concept="17Uvod" id="3tDlCSlVXXS" role="lGtFl">
                  <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                  <property role="2qtEX9" value="text" />
                  <node concept="3zFVjK" id="3tDlCSlVXXT" role="3zH0cK">
                    <node concept="3clFbS" id="3tDlCSlVXXU" role="2VODD2">
                      <node concept="3clFbF" id="3tDlCSlVY6n" role="3cqZAp">
                        <node concept="2OqwBi" id="3tDlCSlVZkq" role="3clFbG">
                          <node concept="2OqwBi" id="3tDlCSlVYjJ" role="2Oq$k0">
                            <node concept="30H73N" id="3tDlCSlVY6m" role="2Oq$k0" />
                            <node concept="3TrEf2" id="3tDlCSlVYOw" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0Uv" resolve="outputEvent" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="3tDlCSlW0u6" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="3tDlCSlW1fT" role="lGtFl">
                <node concept="3IZrLx" id="3tDlCSlW1fV" role="3IZSJc">
                  <node concept="3clFbS" id="3tDlCSlW1fX" role="2VODD2">
                    <node concept="3clFbF" id="3tDlCSlW1zP" role="3cqZAp">
                      <node concept="2OqwBi" id="3tDlCSlW2z1" role="3clFbG">
                        <node concept="2OqwBi" id="3tDlCSlW1K_" role="2Oq$k0">
                          <node concept="30H73N" id="3tDlCSlW1zO" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3tDlCSlW24n" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0Uv" resolve="outputEvent" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="3tDlCSlW2Yg" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="3tDlCSlVRg1" role="lGtFl">
              <node concept="3JmXsc" id="3tDlCSlVRg4" role="3Jn$fo">
                <node concept="3clFbS" id="3tDlCSlVRg5" role="2VODD2">
                  <node concept="3clFbF" id="3tDlCSlVRgb" role="3cqZAp">
                    <node concept="2OqwBi" id="3tDlCSlVRg6" role="3clFbG">
                      <node concept="3Tsc0h" id="3tDlCSlVRg9" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
                      </node>
                      <node concept="30H73N" id="3tDlCSlVRga" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="3tDlCSlVNFD" role="lGtFl">
            <node concept="3JmXsc" id="3tDlCSlVNFG" role="3Jn$fo">
              <node concept="3clFbS" id="3tDlCSlVNFH" role="2VODD2">
                <node concept="3clFbF" id="3tDlCSlVNFN" role="3cqZAp">
                  <node concept="2OqwBi" id="3tDlCSlVNFI" role="3clFbG">
                    <node concept="3Tsc0h" id="3tDlCSlVNFL" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WX" resolve="states" />
                    </node>
                    <node concept="30H73N" id="3tDlCSlVNFM" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="3tDlCSlW3Jt" role="3o6s8t">
          <property role="2pNNFO" value="ECTransition" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="3tDlCSlW4l3" role="2pNNFR">
            <property role="2pNUuO" value="Source" />
            <node concept="2pMdtt" id="3tDlCSlW4l5" role="2pMdts">
              <property role="2pMdty" value="" />
              <node concept="17Uvod" id="3tDlCSlW4Eg" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="3tDlCSlW4Eh" role="3zH0cK">
                  <node concept="3clFbS" id="3tDlCSlW4Ei" role="2VODD2">
                    <node concept="3clFbF" id="3tDlCSlW4MJ" role="3cqZAp">
                      <node concept="2OqwBi" id="3tDlCSlW5P3" role="3clFbG">
                        <node concept="2OqwBi" id="3tDlCSlW507" role="2Oq$k0">
                          <node concept="30H73N" id="3tDlCSlW4MI" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3tDlCSlW5l9" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="3tDlCSlW7MW" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="3tDlCSlW8sN" role="2pNNFR">
            <property role="2pNUuO" value="Target" />
            <node concept="2pMdtt" id="3tDlCSlW8KS" role="2pMdts">
              <node concept="17Uvod" id="3tDlCSlW8Rz" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="3tDlCSlW8R$" role="3zH0cK">
                  <node concept="3clFbS" id="3tDlCSlW8R_" role="2VODD2">
                    <node concept="3clFbF" id="3tDlCSlW902" role="3cqZAp">
                      <node concept="2OqwBi" id="3tDlCSlWa2m" role="3clFbG">
                        <node concept="2OqwBi" id="3tDlCSlW9dq" role="2Oq$k0">
                          <node concept="30H73N" id="3tDlCSlW901" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3tDlCSlW9ys" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="3tDlCSlWama" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="3tDlCSlWb59" role="2pNNFR">
            <property role="2pNUuO" value="Condition" />
            <node concept="2pMdtt" id="3tDlCSlWbAB" role="2pMdts">
              <node concept="17Uvod" id="3tDlCSlWbNX" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <property role="2qtEX9" value="text" />
                <node concept="3zFVjK" id="3tDlCSlWbNY" role="3zH0cK">
                  <node concept="3clFbS" id="3tDlCSlWbNZ" role="2VODD2">
                    <node concept="3clFbF" id="3tDlCSlWbWs" role="3cqZAp">
                      <node concept="2OqwBi" id="3tDlCSlX0eJ" role="3clFbG">
                        <node concept="2OqwBi" id="3tDlCSlWc9O" role="2Oq$k0">
                          <node concept="30H73N" id="3tDlCSlWbWr" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3tDlCSlWcuQ" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:3HBlKeoZaIs" resolve="condition" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="3tDlCSlX0CA" role="2OqNvi">
                          <ref role="37wK5l" to="t4dg:3tDlCSlWdit" resolve="xmlValuePresentation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="3tDlCSlW4l8" role="lGtFl">
            <node concept="3JmXsc" id="3tDlCSlW4lb" role="3Jn$fo">
              <node concept="3clFbS" id="3tDlCSlW4lc" role="2VODD2">
                <node concept="3clFbF" id="3tDlCSlW4li" role="3cqZAp">
                  <node concept="2OqwBi" id="3tDlCSlW4ld" role="3clFbG">
                    <node concept="3Tsc0h" id="3tDlCSlW4lg" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
                    </node>
                    <node concept="30H73N" id="3tDlCSlW4lh" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="3tDlCSlVIxr" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="3tDlCSlVJwU">
    <property role="TrG5h" value="reduce_VariableDeclaration" />
    <ref role="3gUMe" to="xiqq:3HBlKeoYsiC" resolve="VariableDeclaration" />
    <node concept="2pNNFK" id="3tDlCSlVJwW" role="13RCb5">
      <property role="2pNNFO" value="VarDeclaration" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="3tDlCSlVJx2" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="3tDlCSlVJx4" role="2pMdts">
          <node concept="17Uvod" id="3tDlCSlVJx7" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="3tDlCSlVJx8" role="3zH0cK">
              <node concept="3clFbS" id="3tDlCSlVJx9" role="2VODD2">
                <node concept="3clFbF" id="3tDlCSlVKtg" role="3cqZAp">
                  <node concept="2OqwBi" id="3tDlCSlVKEP" role="3clFbG">
                    <node concept="30H73N" id="3tDlCSlVKtf" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3tDlCSlVKUJ" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="3tDlCSlVLo7" role="2pNNFR">
        <property role="2pNUuO" value="Type" />
        <node concept="2pMdtt" id="3tDlCSlVLyE" role="2pMdts">
          <property role="2pMdty" value="" />
          <node concept="1sPUBX" id="3tDlCSlVLzu" role="lGtFl">
            <ref role="v9R2y" node="3tDlCSlVLyN" resolve="switch_Type_XmlValue" />
            <node concept="3NFfHV" id="3tDlCSlVLzx" role="1sPUBK">
              <node concept="3clFbS" id="3tDlCSlVLzy" role="2VODD2">
                <node concept="3clFbF" id="3tDlCSlVLAR" role="3cqZAp">
                  <node concept="2OqwBi" id="3tDlCSlVLKl" role="3clFbG">
                    <node concept="30H73N" id="3tDlCSlVLAQ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3tDlCSlVLTv" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:3HBlKeoYM6s" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="3tDlCSlVJDI" role="lGtFl" />
    </node>
  </node>
  <node concept="jVnub" id="3tDlCSlVLyN">
    <property role="TrG5h" value="switch_Type_XmlValue" />
    <node concept="3aamgX" id="3tDlCSlVLyO" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="xiqq:3HBlKeoYWWU" resolve="BoolType" />
      <node concept="gft3U" id="3tDlCSlVLyY" role="1lVwrX">
        <node concept="2pMdtt" id="3tDlCSlVLz2" role="gfFT$">
          <property role="2pMdty" value="BOOL" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3tDlCSlVLze" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="xiqq:3HBlKeoYKVX" resolve="UIntType" />
      <node concept="gft3U" id="3tDlCSlVLzf" role="1lVwrX">
        <node concept="2pMdtt" id="3tDlCSlVLzg" role="gfFT$">
          <property role="2pMdty" value="UINT" />
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="3tDlCSlVLzp" role="jxRDz">
      <node concept="1lLz0L" id="3tDlCSlVLzs" role="1lHHLF">
        <property role="1lMjX7" value="error" />
        <property role="1lLB17" value="Unknown type" />
      </node>
    </node>
  </node>
</model>

