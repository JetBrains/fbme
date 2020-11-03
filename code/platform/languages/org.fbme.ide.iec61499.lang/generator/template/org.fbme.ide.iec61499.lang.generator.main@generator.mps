<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eba6360c-f145-4c6e-bffa-c4d413ed1309(org.fbme.ide.iec61499.lang.generator.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="maoc" ref="r:708b782d-113c-419f-b694-3872a997714c(mps.lang.iec61499.generator.util)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
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
      <concept id="7604553062773750440" name="jetbrains.mps.core.xml.structure.XmlWhitespace" flags="nn" index="BH3og">
        <property id="5228786488744844115" name="value" index="3VrZF8" />
      </concept>
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
      <concept id="1510949579266781519" name="jetbrains.mps.lang.generator.structure.TemplateCallMacro" flags="ln" index="5jKBG">
        <child id="1510949579266801461" name="sourceNodeQuery" index="5jGum" />
      </concept>
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
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
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
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
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="bUwia" id="3HBlKeoYshz">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="3HBlKep02Zq" role="3lj3bC">
      <property role="36QftV" value="true" />
      <ref role="3lhOvi" node="3HBlKeoZMSw" resolve="mapping_BFTypeDeclaration" />
      <ref role="30HIoZ" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
    </node>
    <node concept="3lhOvk" id="2ByE74koPjz" role="3lj3bC">
      <ref role="30HIoZ" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
      <ref role="3lhOvi" node="2ByE74koV1M" resolve="mapping_AdapterTypeDeclaration" />
    </node>
    <node concept="3lhOvk" id="5s_pyghWI9E" role="3lj3bC">
      <ref role="30HIoZ" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
      <ref role="3lhOvi" node="5s_pyghWI9I" resolve="mapping_SubapplicationTypeDeclaration" />
    </node>
    <node concept="3lhOvk" id="23XkovWErSG" role="3lj3bC">
      <ref role="30HIoZ" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
      <ref role="3lhOvi" node="5s_pyghXO4w" resolve="mapping_ResourceTypeDeclaration" />
    </node>
    <node concept="3lhOvk" id="5s_pyghXbOP" role="3lj3bC">
      <ref role="30HIoZ" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
      <ref role="3lhOvi" node="5s_pyghXbOU" resolve="mapping_DeviceTypeDeclaration" />
    </node>
    <node concept="3lhOvk" id="5s_pyghYW5Q" role="3lj3bC">
      <ref role="30HIoZ" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
      <ref role="3lhOvi" node="5s_pyghYW5W" resolve="mapping_SegmentTypeDeclaration" />
    </node>
    <node concept="3lhOvk" id="5s_pyghZeR2" role="3lj3bC">
      <ref role="30HIoZ" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
      <ref role="3lhOvi" node="5s_pyghZg1H" resolve="mapping_SystemConfiguration" />
    </node>
    <node concept="3aamgX" id="4KieeRVl5ii" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      <node concept="j$656" id="4KieeRVl5AP" role="1lVwrX">
        <ref role="v9R2y" node="3HBlKeoZW8b" resolve="reduce_EventDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="4KieeRVl5I1" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      <node concept="j$656" id="4KieeRVl5I7" role="1lVwrX">
        <ref role="v9R2y" node="3tDlCSlVJwU" resolve="reduce_VariableDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghX1kE" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
      <node concept="j$656" id="5s_pyghX1l4" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghWVAz" resolve="reduce_PlugDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghX1kQ" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
      <node concept="j$656" id="5s_pyghX1l7" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghWVnH" resolve="reduce_SocketDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="4KieeRVl5Ia" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
      <node concept="j$656" id="4KieeRVl6dF" role="1lVwrX">
        <ref role="v9R2y" node="4KieeRVl6dD" resolve="reduce_FunctionBlockDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghXbWk" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:1WTKUmKKVQg" resolve="ResourceTypeReference" />
      <node concept="j$656" id="5s_pyghXbWC" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghXbWA" resolve="reduce_ResourceTypeReference" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghXLby" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:2lwHqHjRwSl" resolve="FBTypeReference" />
      <node concept="j$656" id="5s_pyghXLbU" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghXLbS" resolve="reduce_FBTypeReference" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghYk5R" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      <node concept="j$656" id="5s_pyghYk6d" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghYk6b" resolve="reduce_ResourceDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghYIxm" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
      <node concept="j$656" id="5s_pyghYIxK" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghYIxI" resolve="reduce_DeviceDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghYUm9" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
      <node concept="j$656" id="5s_pyghYUm_" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghYUmz" resolve="reduce_ApplicationDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghYY8g" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
      <node concept="j$656" id="5s_pyghYY8I" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghYY8G" resolve="reduce_Mapping" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghZa_h" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
      <node concept="j$656" id="5s_pyghZa_N" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghZa_L" resolve="reduce_Segment" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghZ2Vs" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:5s_pyghzCOb" resolve="Link" />
      <node concept="j$656" id="5s_pyghZ2VW" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghZ2VU" resolve="reduce_Link" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pyghYsC8" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
      <node concept="j$656" id="5s_pyghYsCw" role="1lVwrX">
        <ref role="v9R2y" node="5s_pyghYsCu" resolve="reduce_Parameter" />
      </node>
    </node>
    <node concept="3aamgX" id="4KieeRVqGAG" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="xiqq:4KieeRVlhii" resolve="Connection" />
      <node concept="j$656" id="4KieeRVqGAS" role="1lVwrX">
        <ref role="v9R2y" node="4KieeRVqGAQ" resolve="reduce_Connection" />
      </node>
    </node>
    <node concept="3aamgX" id="5s_pygi0msI" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
      <node concept="j$656" id="5s_pygi0msJ" role="1lVwrX">
        <ref role="v9R2y" node="5s_pygi0msG" resolve="reduce_SubapplicationDeclaration" />
      </node>
    </node>
    <node concept="3aamgX" id="463hhT7Lxd" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:1zB5ET5$GBR" resolve="STAlgorithmBody" />
      <node concept="j$656" id="463hhT7LxN" role="1lVwrX">
        <ref role="v9R2y" node="463hhT7LxL" resolve="reduce_STAlgorithmBody" />
      </node>
    </node>
    <node concept="3aamgX" id="23XkovWDSbQ" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:23XkovWspjs" resolve="UnknownAlgorithmBody" />
      <node concept="j$656" id="23XkovWDScs" role="1lVwrX">
        <ref role="v9R2y" node="23XkovWuesg" resolve="reduce_UnknownAlgorithmBody" />
      </node>
    </node>
    <node concept="3aamgX" id="5jb5jNCay8P" role="3acgRq">
      <ref role="30HIoZ" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      <node concept="j$656" id="5jb5jNCay9t" role="1lVwrX">
        <ref role="v9R2y" node="4KEbQaicULP" resolve="reduce_Position" />
      </node>
    </node>
  </node>
  <node concept="2pMbU2" id="3HBlKeoZMSw">
    <property role="TrG5h" value="mapping_BFTypeDeclaration" />
    <property role="3GE5qa" value="fbtype" />
    <node concept="3rIKKV" id="3HBlKeoZMSx" role="2pMbU3">
      <node concept="2pNNFK" id="3HBlKeoZPLJ" role="2pNm8H">
        <property role="2pNNFO" value="FBType" />
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
        <node concept="2pNNFK" id="2ByE74koQT9" role="3o6s8t">
          <property role="2pNNFO" value="InterfaceList" />
          <property role="qg3DV" value="true" />
          <node concept="5jKBG" id="2ByE74koV1J" role="lGtFl">
            <ref role="v9R2y" node="2ByE74koR_F" resolve="reduce_DeclarationWithInterface_InterfaceListElement" />
          </node>
        </node>
        <node concept="2pNNFK" id="3HBlKep07f0" role="3o6s8t">
          <property role="2pNNFO" value="BasicFB" />
          <property role="qg3DV" value="true" />
          <node concept="1W57fq" id="4KieeRVkQ6Z" role="lGtFl">
            <node concept="3IZrLx" id="4KieeRVkQ71" role="3IZSJc">
              <node concept="3clFbS" id="4KieeRVkQ73" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVkQxu" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVkRf8" role="3clFbG">
                    <node concept="30H73N" id="4KieeRVkQxt" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="4KieeRVkR$U" role="2OqNvi">
                      <node concept="chp4Y" id="4KieeRVkRIh" role="cj9EA">
                        <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="5jKBG" id="4KieeRVkKrb" role="lGtFl">
            <ref role="v9R2y" node="3tDlCSlVIxl" resolve="reduce_BasicFBTypeDeclaration_BasicFBElement" />
            <node concept="3NFfHV" id="4KieeRVkORq" role="5jGum">
              <node concept="3clFbS" id="4KieeRVkORr" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVkOUL" role="3cqZAp">
                  <node concept="1PxgMI" id="4KieeRVkPSL" role="3clFbG">
                    <node concept="chp4Y" id="4KieeRVkPWD" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                    </node>
                    <node concept="30H73N" id="4KieeRVkOUK" role="1m5AlR" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="4KieeRVkTO5" role="3o6s8t">
          <property role="2pNNFO" value="FBNetwork" />
          <property role="qg3DV" value="true" />
          <node concept="1W57fq" id="4KieeRVkTO6" role="lGtFl">
            <node concept="3IZrLx" id="4KieeRVkTO7" role="3IZSJc">
              <node concept="3clFbS" id="4KieeRVkTO8" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVkTO9" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVkTOa" role="3clFbG">
                    <node concept="30H73N" id="4KieeRVkTOb" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="4KieeRVkTOc" role="2OqNvi">
                      <node concept="chp4Y" id="4KieeRVkWrO" role="cj9EA">
                        <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="5jKBG" id="4KieeRVkTOe" role="lGtFl">
            <ref role="v9R2y" node="4KieeRVkWYp" resolve="reduce_IWithFBNetwork_FBNetworkElement" />
            <node concept="3NFfHV" id="4KieeRVkTOf" role="5jGum">
              <node concept="3clFbS" id="4KieeRVkTOg" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVkTOh" role="3cqZAp">
                  <node concept="1PxgMI" id="4KieeRVkTOi" role="3clFbG">
                    <node concept="chp4Y" id="4KieeRVkWNR" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="30H73N" id="4KieeRVkTOk" role="1m5AlR" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNm8N" id="3HBlKeoZPLy" role="2pNm8Q">
        <node concept="3W$oVP" id="3HBlKeoZPL$" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="utf-8" />
        </node>
        <node concept="BH3og" id="4KieeRVkkst" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="BH3og" id="4KieeRVkksy" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="29q25o" id="3HBlKeoZPLD" role="BGLLu">
          <property role="29q25t" value="FBType" />
          <node concept="29qyjW" id="3HBlKeoZPLH" role="29qyi3">
            <property role="29qyi7" value="http://www.holobloc.com/xml/LibraryElement.dtd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="3HBlKeoZMSz" role="lGtFl">
      <ref role="n9lRv" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
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
    <property role="3GE5qa" value="interface" />
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
  <node concept="13MO4I" id="3tDlCSlVIxl">
    <property role="TrG5h" value="reduce_BasicFBTypeDeclaration_BasicFBElement" />
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="3gUMe" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="2pNNFK" id="3HBlKep07xv" role="13RCb5">
      <property role="2pNNFO" value="BasicFB" />
      <property role="qg3DV" value="false" />
      <node concept="2pNNFK" id="3tDlCSlVMGL" role="3o6s8t">
        <property role="2pNNFO" value="InternalVars" />
        <node concept="2pNNFK" id="3tDlCSlVMGU" role="3o6s8t">
          <property role="2pNNFO" value="VarDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="4KieeRVqO9a" role="lGtFl">
            <node concept="3JmXsc" id="4KieeRVqO9c" role="2P8S$">
              <node concept="3clFbS" id="4KieeRVqO9d" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVqO9e" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVqO9f" role="3clFbG">
                    <node concept="3Tsc0h" id="4KieeRVqO9g" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYFAL" resolve="internalVariables" />
                    </node>
                    <node concept="30H73N" id="4KieeRVqO9h" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="4KieeRVqOXm" role="lGtFl">
          <node concept="3IZrLx" id="4KieeRVqOXo" role="3IZSJc">
            <node concept="3clFbS" id="4KieeRVqOXq" role="2VODD2">
              <node concept="3clFbF" id="4KieeRVqPbU" role="3cqZAp">
                <node concept="2OqwBi" id="4KieeRVqS1K" role="3clFbG">
                  <node concept="2OqwBi" id="4KieeRVqPpD" role="2Oq$k0">
                    <node concept="30H73N" id="4KieeRVqPbT" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4KieeRVqPD$" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4KieeRVqUKW" role="2OqNvi" />
                </node>
              </node>
            </node>
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
          <node concept="2pNUuL" id="5jb5jNCao8u" role="2pNNFR">
            <property role="2pNUuO" value="position" />
            <node concept="2pMdtt" id="5jb5jNCao8v" role="2pMdts" />
            <node concept="29HgVG" id="5jb5jNCaoSV" role="lGtFl">
              <node concept="3NFfHV" id="5jb5jNCaoSW" role="3NFExx">
                <node concept="3clFbS" id="5jb5jNCaoSX" role="2VODD2">
                  <node concept="3clFbF" id="5jb5jNCaoT3" role="3cqZAp">
                    <node concept="2OqwBi" id="5jb5jNCaoSY" role="3clFbG">
                      <node concept="3TrEf2" id="5jb5jNCaoT1" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
                      </node>
                      <node concept="30H73N" id="5jb5jNCaoT2" role="2Oq$k0" />
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
                            <node concept="3TrEf2" id="KJ7$QGCxhX" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:2R0WzquVuy5" resolve="event" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="KJ7$QGCDvB" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
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
                          <node concept="3TrEf2" id="KJ7$QGCy4I" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:2R0WzquVuy5" resolve="event" />
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
            <property role="2pNUuO" value="Destination" />
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
                    <node concept="3clFbF" id="7bQ9AP7_H9y" role="3cqZAp">
                      <node concept="2YIFZM" id="7bQ9AP7_HN1" role="3clFbG">
                        <ref role="37wK5l" to="maoc:463hhTc_g0" resolve="print" />
                        <ref role="1Pybhc" to="maoc:463hhTc9vV" resolve="XmlAttributePrinter" />
                        <node concept="1iwH7S" id="7DSsXPFBD0p" role="37wK5m" />
                        <node concept="2OqwBi" id="7bQ9AP7_IfJ" role="37wK5m">
                          <node concept="30H73N" id="7bQ9AP7_I24" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7bQ9AP7_QNF" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:3HBlKeoZaIs" resolve="condition" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="5jb5jNCaxte" role="2pNNFR">
            <property role="2pNUuO" value="position" />
            <node concept="2pMdtt" id="5jb5jNCaxtf" role="2pMdts" />
            <node concept="29HgVG" id="5jb5jNCaxtg" role="lGtFl">
              <node concept="3NFfHV" id="5jb5jNCaxth" role="3NFExx">
                <node concept="3clFbS" id="5jb5jNCaxti" role="2VODD2">
                  <node concept="3clFbF" id="5jb5jNCaxtj" role="3cqZAp">
                    <node concept="2OqwBi" id="5jb5jNCaxtk" role="3clFbG">
                      <node concept="3TrEf2" id="5jb5jNCaxtl" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
                      </node>
                      <node concept="30H73N" id="5jb5jNCaxtm" role="2Oq$k0" />
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
      <node concept="2pNNFK" id="1zB5ET5_ZO$" role="3o6s8t">
        <property role="2pNNFO" value="Algorithm" />
        <node concept="2pNUuL" id="1zB5ET5A0Cl" role="2pNNFR">
          <property role="2pNUuO" value="Name" />
          <node concept="2pMdtt" id="1zB5ET5A0Cn" role="2pMdts">
            <node concept="17Uvod" id="1zB5ET5A0Cp" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="1zB5ET5A0Cs" role="3zH0cK">
                <node concept="3clFbS" id="1zB5ET5A0Ct" role="2VODD2">
                  <node concept="3clFbF" id="1zB5ET5A0Cz" role="3cqZAp">
                    <node concept="2OqwBi" id="1zB5ET5A0Cu" role="3clFbG">
                      <node concept="3TrcHB" id="1zB5ET5A0Cx" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="30H73N" id="1zB5ET5A0Cy" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="1zB5ET5A1hk" role="3o6s8t">
          <property role="2pNNFO" value="ST" />
          <property role="qg3DV" value="true" />
          <node concept="29HgVG" id="463hhT7BRA" role="lGtFl">
            <node concept="3NFfHV" id="463hhT7BRC" role="3NFExx">
              <node concept="3clFbS" id="463hhT7BRD" role="2VODD2">
                <node concept="3clFbF" id="463hhT7BVa" role="3cqZAp">
                  <node concept="2OqwBi" id="463hhT7C6u" role="3clFbG">
                    <node concept="30H73N" id="463hhT7BV9" role="2Oq$k0" />
                    <node concept="3TrEf2" id="463hhT7Lq$" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:1zB5ET5xzpJ" resolve="body" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="1zB5ET5A0Y6" role="lGtFl">
          <node concept="3JmXsc" id="1zB5ET5A0Y9" role="3Jn$fo">
            <node concept="3clFbS" id="1zB5ET5A0Ya" role="2VODD2">
              <node concept="3clFbF" id="1zB5ET5A0Yg" role="3cqZAp">
                <node concept="2OqwBi" id="1zB5ET5A0Yb" role="3clFbG">
                  <node concept="3Tsc0h" id="1zB5ET5A0Ye" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
                  </node>
                  <node concept="30H73N" id="1zB5ET5A0Yf" role="2Oq$k0" />
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
    <property role="3GE5qa" value="interface" />
    <ref role="3gUMe" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
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
        <node concept="2pMdtt" id="23XkovWbncm" role="2pMdts">
          <node concept="17Uvod" id="23XkovWbnco" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="23XkovWbncp" role="3zH0cK">
              <node concept="3clFbS" id="23XkovWbncq" role="2VODD2">
                <node concept="3clFbF" id="23XkovWbnpd" role="3cqZAp">
                  <node concept="2YIFZM" id="23XkovWbnS6" role="3clFbG">
                    <ref role="37wK5l" to="maoc:463hhTc_g0" resolve="print" />
                    <ref role="1Pybhc" to="maoc:463hhTc9vV" resolve="XmlAttributePrinter" />
                    <node concept="1iwH7S" id="7DSsXPFBB$5" role="37wK5m" />
                    <node concept="2OqwBi" id="23XkovWbojv" role="37wK5m">
                      <node concept="30H73N" id="23XkovWbo5u" role="2Oq$k0" />
                      <node concept="3TrEf2" id="23XkovWboOw" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:3HBlKeoYM6s" resolve="type" />
                      </node>
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
  <node concept="13MO4I" id="4KieeRVkWYp">
    <property role="TrG5h" value="reduce_IWithFBNetwork_FBNetworkElement" />
    <property role="3GE5qa" value="fbnetwork" />
    <ref role="3gUMe" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
    <node concept="2pNNFK" id="4KieeRVkWYq" role="13RCb5">
      <property role="2pNNFO" value="FBNetwork" />
      <property role="qg3DV" value="false" />
      <node concept="2pNNFK" id="4KieeRVl5ab" role="3o6s8t">
        <property role="2pNNFO" value="FB" />
        <property role="qg3DV" value="true" />
        <node concept="2b32R4" id="4KieeRVl8B3" role="lGtFl">
          <node concept="3JmXsc" id="4KieeRVl8B5" role="2P8S$">
            <node concept="3clFbS" id="4KieeRVl8B7" role="2VODD2">
              <node concept="3clFbF" id="4KieeRVl8G6" role="3cqZAp">
                <node concept="2OqwBi" id="4KieeRVl8SN" role="3clFbG">
                  <node concept="30H73N" id="4KieeRVl8G5" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4KieeRVl96o" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4KieeRVl9AR" role="3o6s8t">
        <property role="2pNNFO" value="EventConnections" />
        <node concept="2pNNFK" id="4KieeRVleVU" role="3o6s8t">
          <property role="2pNNFO" value="Connection" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="4KieeRVqXxj" role="lGtFl">
            <node concept="3JmXsc" id="4KieeRVqXxl" role="2P8S$">
              <node concept="3clFbS" id="4KieeRVqXxn" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVqXAg" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVqXMX" role="3clFbG">
                    <node concept="30H73N" id="4KieeRVqXAf" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4KieeRVqY8Z" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="4KieeRVl9Ir" role="lGtFl">
          <node concept="3IZrLx" id="4KieeRVl9It" role="3IZSJc">
            <node concept="3clFbS" id="4KieeRVl9Iv" role="2VODD2">
              <node concept="3clFbF" id="4KieeRVl9PK" role="3cqZAp">
                <node concept="2OqwBi" id="4KieeRVlcg4" role="3clFbG">
                  <node concept="2OqwBi" id="4KieeRVla3v" role="2Oq$k0">
                    <node concept="30H73N" id="4KieeRVl9PJ" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4KieeRVlarR" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4KieeRVleC0" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4KieeRVqZwb" role="3o6s8t">
        <property role="2pNNFO" value="DataConnections" />
        <node concept="2pNNFK" id="4KieeRVqZwc" role="3o6s8t">
          <property role="2pNNFO" value="Connection" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="4KieeRVqZwd" role="lGtFl">
            <node concept="3JmXsc" id="4KieeRVqZwe" role="2P8S$">
              <node concept="3clFbS" id="4KieeRVqZwf" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVqZwg" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVqZwh" role="3clFbG">
                    <node concept="30H73N" id="4KieeRVqZwi" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4KieeRVr1Kv" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="4KieeRVqZwk" role="lGtFl">
          <node concept="3IZrLx" id="4KieeRVqZwl" role="3IZSJc">
            <node concept="3clFbS" id="4KieeRVqZwm" role="2VODD2">
              <node concept="3clFbF" id="4KieeRVqZwn" role="3cqZAp">
                <node concept="2OqwBi" id="4KieeRVqZwo" role="3clFbG">
                  <node concept="2OqwBi" id="4KieeRVqZwp" role="2Oq$k0">
                    <node concept="30H73N" id="4KieeRVqZwq" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4KieeRVr1ja" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4KieeRVqZws" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="75nMhMfGLuf" role="3o6s8t">
        <property role="2pNNFO" value="AdapterConnections" />
        <node concept="2pNNFK" id="75nMhMfGLug" role="3o6s8t">
          <property role="2pNNFO" value="Connection" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="75nMhMfGLuh" role="lGtFl">
            <node concept="3JmXsc" id="75nMhMfGLui" role="2P8S$">
              <node concept="3clFbS" id="75nMhMfGLuj" role="2VODD2">
                <node concept="3clFbF" id="75nMhMfGLuk" role="3cqZAp">
                  <node concept="2OqwBi" id="75nMhMfGLul" role="3clFbG">
                    <node concept="30H73N" id="75nMhMfGLum" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="75nMhMfGNhW" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="75nMhMfGLuo" role="lGtFl">
          <node concept="3IZrLx" id="75nMhMfGLup" role="3IZSJc">
            <node concept="3clFbS" id="75nMhMfGLuq" role="2VODD2">
              <node concept="3clFbF" id="75nMhMfGLur" role="3cqZAp">
                <node concept="2OqwBi" id="75nMhMfGLus" role="3clFbG">
                  <node concept="2OqwBi" id="75nMhMfGLut" role="2Oq$k0">
                    <node concept="30H73N" id="75nMhMfGLuu" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="75nMhMfGMHt" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="75nMhMfGLuw" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4KieeRVkX0g" role="lGtFl" />
      <node concept="1W57fq" id="5s_pyghXJ13" role="lGtFl">
        <node concept="3IZrLx" id="5s_pyghXJ14" role="3IZSJc">
          <node concept="3clFbS" id="5s_pyghXJ15" role="2VODD2">
            <node concept="3clFbF" id="5s_pyghXJmA" role="3cqZAp">
              <node concept="2OqwBi" id="5s_pyghXJzI" role="3clFbG">
                <node concept="30H73N" id="5s_pyghXJm_" role="2Oq$k0" />
                <node concept="2qgKlT" id="5s_pyghXJXZ" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:5s_pyghXe$Z" resolve="hasNetwork" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4KieeRVl6dD">
    <property role="TrG5h" value="reduce_FunctionBlockDeclaration" />
    <property role="3GE5qa" value="fbnetwork" />
    <ref role="3gUMe" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
    <node concept="2pNNFK" id="4KieeRVl6dI" role="13RCb5">
      <property role="2pNNFO" value="FB" />
      <property role="qg3DV" value="true" />
      <node concept="2pNNFK" id="5HzRr7EF$Iq" role="3o6s8t">
        <property role="2pNNFO" value="Parameter" />
        <property role="qg3DV" value="true" />
        <node concept="2b32R4" id="5HzRr7EF$Yk" role="lGtFl">
          <node concept="3JmXsc" id="5HzRr7EF$Yn" role="2P8S$">
            <node concept="3clFbS" id="5HzRr7EF$Yo" role="2VODD2">
              <node concept="3clFbF" id="5HzRr7EF$Yu" role="3cqZAp">
                <node concept="2OqwBi" id="5HzRr7EF$Yp" role="3clFbG">
                  <node concept="3Tsc0h" id="5HzRr7EF$Ys" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                  </node>
                  <node concept="30H73N" id="5HzRr7EF$Yt" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="4KieeRVl6dP" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="4KieeRVl6dY" role="2pMdts">
          <node concept="17Uvod" id="4KieeRVl6e0" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="4KieeRVl6e3" role="3zH0cK">
              <node concept="3clFbS" id="4KieeRVl6e4" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVl6ea" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVl6e5" role="3clFbG">
                    <node concept="3TrcHB" id="4KieeRVl6e8" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="4KieeRVl6e9" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="4KieeRVl6zs" role="2pNNFR">
        <property role="2pNUuO" value="Type" />
        <node concept="2pMdtt" id="4KieeRVl6HX" role="2pMdts">
          <node concept="17Uvod" id="4KieeRVl6HZ" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="4KieeRVl6I0" role="3zH0cK">
              <node concept="3clFbS" id="4KieeRVl6I1" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVl6Qu" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVl7Yu" role="3clFbG">
                    <node concept="2OqwBi" id="4KieeRVl743" role="2Oq$k0">
                      <node concept="30H73N" id="4KieeRVl6Qt" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4KieeRVl7jX" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4KieeRVl8i4" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="4KEbQaicRAn" role="2pNNFR">
        <property role="2pNUuO" value="position" />
        <node concept="2pMdtt" id="4KEbQaicRAo" role="2pMdts" />
        <node concept="29HgVG" id="5jb5jNCapv2" role="lGtFl">
          <node concept="3NFfHV" id="5jb5jNCapv4" role="3NFExx">
            <node concept="3clFbS" id="5jb5jNCapv5" role="2VODD2">
              <node concept="3clFbF" id="5jb5jNCapL6" role="3cqZAp">
                <node concept="2OqwBi" id="5jb5jNCapY4" role="3clFbG">
                  <node concept="30H73N" id="5jb5jNCapL5" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5jb5jNCaqnz" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:3IX4BsKatOx" resolve="position" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4KieeRVl6dW" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="4KieeRVqGAQ">
    <property role="TrG5h" value="reduce_Connection" />
    <property role="3GE5qa" value="" />
    <ref role="3gUMe" to="xiqq:4KieeRVlhii" resolve="Connection" />
    <node concept="2pNNFK" id="4KieeRVqGAV" role="13RCb5">
      <property role="2pNNFO" value="Connection" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="4KieeRVqGB1" role="2pNNFR">
        <property role="2pNUuO" value="Source" />
        <node concept="2pMdtt" id="4KieeRVqGMo" role="2pMdts">
          <node concept="17Uvod" id="4KieeRVqGMq" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="4KieeRVqGMr" role="3zH0cK">
              <node concept="3clFbS" id="4KieeRVqGMs" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVqGUT" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVqHIX" role="3clFbG">
                    <node concept="2OqwBi" id="4KieeRVqH7G" role="2Oq$k0">
                      <node concept="30H73N" id="4KieeRVqGUS" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4KieeRVqHml" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="4KieeRVqIc6" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="4KieeRVqIJZ" role="2pNNFR">
        <property role="2pNUuO" value="Destination" />
        <node concept="2pMdtt" id="4KieeRVqIXL" role="2pMdts">
          <node concept="17Uvod" id="4KieeRVqIXN" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="4KieeRVqIXO" role="3zH0cK">
              <node concept="3clFbS" id="4KieeRVqIXP" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVqJ6i" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVqJj5" role="3clFbG">
                    <node concept="2OqwBi" id="4KieeRVqJZs" role="2Oq$k0">
                      <node concept="30H73N" id="4KieeRVqJ6h" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4KieeRVqKpp" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="4KieeRVqJBD" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="4KEbQaidpGF" role="2pNNFR">
        <property role="2pNUuO" value="path" />
        <node concept="2pMdtt" id="4KEbQaidpGG" role="2pMdts" />
        <node concept="1sPUBX" id="4KEbQaidpZx" role="lGtFl">
          <ref role="v9R2y" node="4KEbQaidh$y" resolve="switch_ConncectionPath" />
          <node concept="3NFfHV" id="4KEbQaidpZz" role="1sPUBK">
            <node concept="3clFbS" id="4KEbQaidpZ$" role="2VODD2">
              <node concept="3clFbF" id="4KEbQaidq35" role="3cqZAp">
                <node concept="2OqwBi" id="4KEbQaidqdo" role="3clFbG">
                  <node concept="30H73N" id="4KEbQaidq34" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4KEbQaidqwv" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4KieeRVqGMm" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="2ByE74koR_F">
    <property role="TrG5h" value="reduce_DeclarationWithInterface_InterfaceListElement" />
    <property role="3GE5qa" value="interface" />
    <ref role="3gUMe" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="2pNNFK" id="3HBlKeoZRl4" role="13RCb5">
      <property role="2pNNFO" value="InterfaceList" />
      <property role="qg3DV" value="false" />
      <node concept="2pNNFK" id="3HBlKeoZRvN" role="3o6s8t">
        <property role="2pNNFO" value="EventInputs" />
        <node concept="2pNNFK" id="3HBlKeoZRvW" role="3o6s8t">
          <property role="2pNNFO" value="Event" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="4KieeRVqNi2" role="lGtFl">
            <node concept="3JmXsc" id="4KieeRVqNi4" role="2P8S$">
              <node concept="3clFbS" id="4KieeRVqNi5" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVqNi6" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVqNi7" role="3clFbG">
                    <node concept="3Tsc0h" id="4KieeRVqNi8" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                    </node>
                    <node concept="30H73N" id="4KieeRVqNi9" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="4KieeRVkmm3" role="lGtFl">
          <node concept="3IZrLx" id="4KieeRVkmm5" role="3IZSJc">
            <node concept="3clFbS" id="4KieeRVkmm7" role="2VODD2">
              <node concept="3clFbF" id="4KieeRVkm$B" role="3cqZAp">
                <node concept="2OqwBi" id="4KieeRVkpue" role="3clFbG">
                  <node concept="2OqwBi" id="4KieeRVkmL$" role="2Oq$k0">
                    <node concept="30H73N" id="4KieeRVkm$A" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4KieeRVkn7q" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4KieeRVksdj" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="3HBlKeoZSjF" role="3o6s8t">
        <property role="2pNNFO" value="EventOutputs" />
        <node concept="2pNNFK" id="3HBlKep01F8" role="3o6s8t">
          <property role="2pNNFO" value="Event" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="4KieeRVqNam" role="lGtFl">
            <node concept="3JmXsc" id="4KieeRVqNao" role="2P8S$">
              <node concept="3clFbS" id="4KieeRVqNap" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVqNaq" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVqNar" role="3clFbG">
                    <node concept="3Tsc0h" id="4KieeRVqNas" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                    </node>
                    <node concept="30H73N" id="4KieeRVqNat" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="4KieeRVksNt" role="lGtFl">
          <node concept="3IZrLx" id="4KieeRVksNv" role="3IZSJc">
            <node concept="3clFbS" id="4KieeRVksNx" role="2VODD2">
              <node concept="3clFbF" id="4KieeRVkt24" role="3cqZAp">
                <node concept="2OqwBi" id="4KieeRVkvCN" role="3clFbG">
                  <node concept="2OqwBi" id="4KieeRVktf1" role="2Oq$k0">
                    <node concept="30H73N" id="4KieeRVkt23" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4KieeRVkyQo" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4KieeRVkynS" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="3tDlCSlVIVM" role="3o6s8t">
        <property role="2pNNFO" value="InputVars" />
        <node concept="2pNNFK" id="3tDlCSlVJ4_" role="3o6s8t">
          <property role="2pNNFO" value="VarDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="4KieeRVqMag" role="lGtFl">
            <node concept="3JmXsc" id="4KieeRVqMai" role="2P8S$">
              <node concept="3clFbS" id="4KieeRVqMaj" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVqMak" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVqMal" role="3clFbG">
                    <node concept="3Tsc0h" id="4KieeRVqMam" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                    </node>
                    <node concept="30H73N" id="4KieeRVqMan" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="4KieeRVkzG5" role="lGtFl">
          <node concept="3IZrLx" id="4KieeRVkzG7" role="3IZSJc">
            <node concept="3clFbS" id="4KieeRVkzG9" role="2VODD2">
              <node concept="3clFbF" id="4KieeRVkzUG" role="3cqZAp">
                <node concept="2OqwBi" id="4KieeRVkAxr" role="3clFbG">
                  <node concept="2OqwBi" id="4KieeRVk$7D" role="2Oq$k0">
                    <node concept="30H73N" id="4KieeRVkzUF" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4KieeRVk$tv" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4KieeRVkDgw" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="PI_pXY9FAx" role="3o6s8t">
        <property role="2pNNFO" value="OutputVars" />
        <node concept="2pNNFK" id="PI_pXY9FAy" role="3o6s8t">
          <property role="2pNNFO" value="VarDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="4KieeRVqNFd" role="lGtFl">
            <node concept="3JmXsc" id="4KieeRVqNFf" role="2P8S$">
              <node concept="3clFbS" id="4KieeRVqNFg" role="2VODD2">
                <node concept="3clFbF" id="4KieeRVqNFh" role="3cqZAp">
                  <node concept="2OqwBi" id="4KieeRVqNFi" role="3clFbG">
                    <node concept="3Tsc0h" id="4KieeRVqNFj" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                    </node>
                    <node concept="30H73N" id="4KieeRVqNFk" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="4KieeRVkDRu" role="lGtFl">
          <node concept="3IZrLx" id="4KieeRVkDRw" role="3IZSJc">
            <node concept="3clFbS" id="4KieeRVkDRy" role="2VODD2">
              <node concept="3clFbF" id="4KieeRVkE65" role="3cqZAp">
                <node concept="2OqwBi" id="4KieeRVkGGO" role="3clFbG">
                  <node concept="2OqwBi" id="4KieeRVkEj2" role="2Oq$k0">
                    <node concept="30H73N" id="4KieeRVkE64" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4KieeRVkECS" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4KieeRVkJrT" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghWLO4" role="3o6s8t">
        <property role="2pNNFO" value="Plugs" />
        <node concept="2pNNFK" id="5s_pyghWLO5" role="3o6s8t">
          <property role="2pNNFO" value="AdapterDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghWLO6" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghWLO7" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghWLO8" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghWLO9" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghWOPz" role="3clFbG">
                    <node concept="1PxgMI" id="5s_pyghWOP$" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="5s_pyghWOP_" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
                      </node>
                      <node concept="30H73N" id="5s_pyghWOPA" role="1m5AlR" />
                    </node>
                    <node concept="3Tsc0h" id="5s_pyghWOPB" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="5s_pyghWLOd" role="lGtFl">
          <node concept="3IZrLx" id="5s_pyghWLOe" role="3IZSJc">
            <node concept="3clFbS" id="5s_pyghWLOf" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghWLOg" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghWLOh" role="3clFbG">
                  <node concept="2OqwBi" id="5s_pyghWLOi" role="2Oq$k0">
                    <node concept="1PxgMI" id="5s_pyghWMNr" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="5s_pyghWMWa" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
                      </node>
                      <node concept="30H73N" id="5s_pyghWLOj" role="1m5AlR" />
                    </node>
                    <node concept="3Tsc0h" id="5s_pyghWNrY" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="5s_pyghWLOl" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghWLOm" role="3o6s8t">
        <property role="2pNNFO" value="Sockets" />
        <node concept="2pNNFK" id="5s_pyghWLOn" role="3o6s8t">
          <property role="2pNNFO" value="AdapterDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghWLOo" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghWLOp" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghWLOq" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghWLOr" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghWQlk" role="3clFbG">
                    <node concept="1PxgMI" id="5s_pyghWQll" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="5s_pyghWQlm" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
                      </node>
                      <node concept="30H73N" id="5s_pyghWQln" role="1m5AlR" />
                    </node>
                    <node concept="3Tsc0h" id="5s_pyghWSSm" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="5s_pyghWLOv" role="lGtFl">
          <node concept="3IZrLx" id="5s_pyghWLOw" role="3IZSJc">
            <node concept="3clFbS" id="5s_pyghWLOx" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghWLOy" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghWLOz" role="3clFbG">
                  <node concept="3GX2aA" id="5s_pyghWLOB" role="2OqNvi" />
                  <node concept="2OqwBi" id="5s_pyghWPg4" role="2Oq$k0">
                    <node concept="1PxgMI" id="5s_pyghWPg5" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="5s_pyghWPg6" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
                      </node>
                      <node concept="30H73N" id="5s_pyghWPg7" role="1m5AlR" />
                    </node>
                    <node concept="3Tsc0h" id="5s_pyghWPV7" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="2ByE74koRXW" role="lGtFl" />
    </node>
  </node>
  <node concept="2pMbU2" id="2ByE74koV1M">
    <property role="3GE5qa" value="adapter" />
    <property role="TrG5h" value="mapping_AdapterTypeDeclaration" />
    <node concept="3rIKKV" id="2ByE74koV1N" role="2pMbU3">
      <node concept="2pNNFK" id="2ByE74koV2x" role="2pNm8H">
        <property role="2pNNFO" value="AdapterType" />
        <node concept="2pNNFK" id="2ByE74koXnt" role="3o6s8t">
          <property role="2pNNFO" value="Identification" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="2ByE74koXnu" role="2pNNFR">
            <property role="2pNUuO" value="Standard" />
            <node concept="2pMdtt" id="2ByE74koXnv" role="2pMdts">
              <property role="2pMdty" value="61499-2" />
            </node>
          </node>
        </node>
        <node concept="2pNUuL" id="2ByE74koWih" role="2pNNFR">
          <property role="2pNUuO" value="Name" />
          <node concept="2pMdtt" id="2ByE74koWii" role="2pMdts">
            <property role="2pMdty" value="Adapter_Name" />
            <node concept="17Uvod" id="2ByE74koWij" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="2ByE74koWik" role="3zH0cK">
                <node concept="3clFbS" id="2ByE74koWil" role="2VODD2">
                  <node concept="3clFbF" id="2ByE74koWim" role="3cqZAp">
                    <node concept="2OqwBi" id="2ByE74koWin" role="3clFbG">
                      <node concept="30H73N" id="2ByE74koWio" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2ByE74koWip" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="2ByE74koV2C" role="3o6s8t">
          <property role="2pNNFO" value="InterfaceList" />
          <property role="qg3DV" value="true" />
          <node concept="5jKBG" id="2ByE74koV2K" role="lGtFl">
            <ref role="v9R2y" node="2ByE74koR_F" resolve="reduce_DeclarationWithInterface_InterfaceListElement" />
          </node>
        </node>
      </node>
      <node concept="2pNm8N" id="2ByE74koV2l" role="2pNm8Q">
        <node concept="3W$oVP" id="2ByE74koV2m" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="utf-8" />
        </node>
        <node concept="BH3og" id="2ByE74koV2n" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="BH3og" id="2ByE74koV2o" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="29q25o" id="2ByE74koV2p" role="BGLLu">
          <property role="29q25t" value="AdapterType" />
          <node concept="29qyjW" id="2ByE74koV2q" role="29qyi3">
            <property role="29qyi7" value="http://www.holobloc.com/xml/LibraryElement.dtd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="2ByE74koV1P" role="lGtFl">
      <ref role="n9lRv" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
    </node>
    <node concept="17Uvod" id="2ByE74koV2N" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="2ByE74koV2O" role="3zH0cK">
        <node concept="3clFbS" id="2ByE74koV2P" role="2VODD2">
          <node concept="3clFbF" id="2ByE74koVbv" role="3cqZAp">
            <node concept="2OqwBi" id="2ByE74koVq9" role="3clFbG">
              <node concept="30H73N" id="2ByE74koVbu" role="2Oq$k0" />
              <node concept="3TrcHB" id="2ByE74koVNp" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2pMbU2" id="5s_pyghWI9I">
    <property role="TrG5h" value="mapping_SubapplicationTypeDeclaration" />
    <property role="3GE5qa" value="subapp" />
    <node concept="3rIKKV" id="5s_pyghWI9J" role="2pMbU3">
      <node concept="2pNm8N" id="5s_pyghWIPh" role="2pNm8Q">
        <node concept="3W$oVP" id="5s_pyghWIPi" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="utf-8" />
        </node>
        <node concept="BH3og" id="5s_pyghWIPj" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="BH3og" id="5s_pyghWIPk" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="29q25o" id="5s_pyghWIPl" role="BGLLu">
          <property role="29q25t" value="SubAppType" />
          <node concept="29qyjW" id="5s_pyghWIPm" role="29qyi3">
            <property role="29qyi7" value="http://www.holobloc.com/xml/LibraryElement.dtd" />
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghWIPt" role="2pNm8H">
        <property role="2pNNFO" value="SubAppType" />
        <node concept="2pNUuL" id="5s_pyghWIPu" role="2pNNFR">
          <property role="2pNUuO" value="Name" />
          <node concept="2pMdtt" id="5s_pyghWIPv" role="2pMdts">
            <property role="2pMdty" value="Subapp_Name" />
            <node concept="17Uvod" id="5s_pyghWIPw" role="lGtFl">
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="5s_pyghWIPx" role="3zH0cK">
                <node concept="3clFbS" id="5s_pyghWIPy" role="2VODD2">
                  <node concept="3clFbF" id="5s_pyghWIPz" role="3cqZAp">
                    <node concept="2OqwBi" id="5s_pyghWIP$" role="3clFbG">
                      <node concept="30H73N" id="5s_pyghWIP_" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5s_pyghWIPA" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghWIPB" role="3o6s8t">
          <property role="2pNNFO" value="Identification" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="5s_pyghWIPC" role="2pNNFR">
            <property role="2pNUuO" value="Standard" />
            <node concept="2pMdtt" id="5s_pyghWIPD" role="2pMdts">
              <property role="2pMdty" value="61499-2" />
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghWIPE" role="3o6s8t">
          <property role="2pNNFO" value="InterfaceList" />
          <property role="qg3DV" value="true" />
          <node concept="5jKBG" id="5s_pyghWIPF" role="lGtFl">
            <ref role="v9R2y" node="7H$5i_Y8OY4" resolve="reduce_DeclarationWithInterface_SubAppInterfaceListElement" />
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghWIPW" role="3o6s8t">
          <property role="2pNNFO" value="SubAppNetwork" />
          <property role="qg3DV" value="true" />
          <node concept="5jKBG" id="5s_pyghWIQ5" role="lGtFl">
            <ref role="v9R2y" node="5s_pyghX1VY" resolve="reduce_IWithSubappNetwork_SubappNetworkElement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="5s_pyghWI9L" role="lGtFl">
      <ref role="n9lRv" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
    </node>
    <node concept="17Uvod" id="5s_pygi0wyT" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="5s_pygi0wyW" role="3zH0cK">
        <node concept="3clFbS" id="5s_pygi0wyX" role="2VODD2">
          <node concept="3clFbF" id="5s_pygi0wz3" role="3cqZAp">
            <node concept="2OqwBi" id="5s_pygi0wyY" role="3clFbG">
              <node concept="3TrcHB" id="5s_pygi0wz1" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="30H73N" id="5s_pygi0wz2" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghWVnH">
    <property role="TrG5h" value="reduce_SocketDeclaration" />
    <property role="3GE5qa" value="interface" />
    <ref role="3gUMe" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
    <node concept="2pNNFK" id="5s_pyghWVnI" role="13RCb5">
      <property role="2pNNFO" value="AdapterDeclaration" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="5s_pyghWVnJ" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pyghWVnK" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghWVnL" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="5s_pyghWVnM" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghWVnN" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghWVnO" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghWVnP" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghWVnQ" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5s_pyghWVnR" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghWVnS" role="2pNNFR">
        <property role="2pNUuO" value="Type" />
        <node concept="2pMdtt" id="5s_pyghWXDT" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghWXDV" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghWXDW" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghWXDX" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghWXM_" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghWYZh" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghWY1f" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghWXM$" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghWYD1" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyghWZCg" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5jb5jNCascj" role="2pNNFR">
        <property role="2pNUuO" value="position" />
        <node concept="2pMdtt" id="5jb5jNCasck" role="2pMdts" />
        <node concept="29HgVG" id="5jb5jNCascl" role="lGtFl">
          <node concept="3NFfHV" id="5jb5jNCascm" role="3NFExx">
            <node concept="3clFbS" id="5jb5jNCascn" role="2VODD2">
              <node concept="3clFbF" id="5jb5jNCasco" role="3cqZAp">
                <node concept="2OqwBi" id="5jb5jNCascp" role="3clFbG">
                  <node concept="30H73N" id="5jb5jNCascq" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5jb5jNCascr" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:6LU90BOcpSo" resolve="position" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghWVo1" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghWVAz">
    <property role="TrG5h" value="reduce_PlugDeclaration" />
    <property role="3GE5qa" value="interface" />
    <ref role="3gUMe" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
    <node concept="2pNNFK" id="5s_pyghWVA$" role="13RCb5">
      <property role="2pNNFO" value="AdapterDeclaration" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="5s_pyghWVA_" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pyghWVAA" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghWVAB" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="5s_pyghWVAC" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghWVAD" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghWVAE" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghWVAF" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghWVAG" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5s_pyghWVAH" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghX0W7" role="2pNNFR">
        <property role="2pNUuO" value="Type" />
        <node concept="2pMdtt" id="5s_pyghX0W8" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghX0W9" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghX0Wa" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghX0Wb" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghX0Wc" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghX0Wd" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghX0We" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghX0Wf" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghX0Wg" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyghX0Wh" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5jb5jNCaqQ6" role="2pNNFR">
        <property role="2pNUuO" value="position" />
        <node concept="2pMdtt" id="5jb5jNCaqQ7" role="2pMdts" />
        <node concept="29HgVG" id="5jb5jNCaqQ8" role="lGtFl">
          <node concept="3NFfHV" id="5jb5jNCaqQ9" role="3NFExx">
            <node concept="3clFbS" id="5jb5jNCaqQa" role="2VODD2">
              <node concept="3clFbF" id="5jb5jNCaqQb" role="3cqZAp">
                <node concept="2OqwBi" id="5jb5jNCaqQc" role="3clFbG">
                  <node concept="30H73N" id="5jb5jNCaqQd" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5jb5jNCaqQe" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:6LU90BOchbE" resolve="position" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghWVAR" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghX1VY">
    <property role="TrG5h" value="reduce_IWithSubappNetwork_SubappNetworkElement" />
    <property role="3GE5qa" value="fbnetwork" />
    <ref role="3gUMe" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
    <node concept="2pNNFK" id="5s_pyghX1VZ" role="13RCb5">
      <property role="2pNNFO" value="SubAppNetwork" />
      <property role="qg3DV" value="false" />
      <node concept="2pNNFK" id="5s_pyghX3i4" role="3o6s8t">
        <property role="2pNNFO" value="SubApp" />
        <property role="qg3DV" value="true" />
        <node concept="2b32R4" id="5s_pyghX3i5" role="lGtFl">
          <node concept="3JmXsc" id="5s_pyghX3i6" role="2P8S$">
            <node concept="3clFbS" id="5s_pyghX3i7" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghX3i8" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghX3i9" role="3clFbG">
                  <node concept="30H73N" id="5s_pyghX3ia" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5s_pyghX4GU" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghX1W0" role="3o6s8t">
        <property role="2pNNFO" value="FB" />
        <property role="qg3DV" value="true" />
        <node concept="2b32R4" id="5s_pyghX1W1" role="lGtFl">
          <node concept="3JmXsc" id="5s_pyghX1W2" role="2P8S$">
            <node concept="3clFbS" id="5s_pyghX1W3" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghX1W4" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghX1W5" role="3clFbG">
                  <node concept="30H73N" id="5s_pyghX1W6" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5s_pyghX1W7" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghX1W8" role="3o6s8t">
        <property role="2pNNFO" value="EventConnections" />
        <node concept="2pNNFK" id="5s_pyghX1W9" role="3o6s8t">
          <property role="2pNNFO" value="Connection" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghX1Wa" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghX1Wb" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghX1Wc" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghX1Wd" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghX1We" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghX1Wf" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghX1Wg" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="5s_pyghX1Wh" role="lGtFl">
          <node concept="3IZrLx" id="5s_pyghX1Wi" role="3IZSJc">
            <node concept="3clFbS" id="5s_pyghX1Wj" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghX1Wk" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghX1Wl" role="3clFbG">
                  <node concept="2OqwBi" id="5s_pyghX1Wm" role="2Oq$k0">
                    <node concept="30H73N" id="5s_pyghX1Wn" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghX1Wo" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="5s_pyghX1Wp" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghX1Wq" role="3o6s8t">
        <property role="2pNNFO" value="DataConnections" />
        <node concept="2pNNFK" id="5s_pyghX1Wr" role="3o6s8t">
          <property role="2pNNFO" value="Connection" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghX1Ws" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghX1Wt" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghX1Wu" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghX1Wv" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghX1Ww" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghX1Wx" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghX1Wy" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="5s_pyghX1Wz" role="lGtFl">
          <node concept="3IZrLx" id="5s_pyghX1W$" role="3IZSJc">
            <node concept="3clFbS" id="5s_pyghX1W_" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghX1WA" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghX1WB" role="3clFbG">
                  <node concept="2OqwBi" id="5s_pyghX1WC" role="2Oq$k0">
                    <node concept="30H73N" id="5s_pyghX1WD" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghX1WE" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="5s_pyghX1WF" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghX1WG" role="3o6s8t">
        <property role="2pNNFO" value="AdapterConnections" />
        <node concept="2pNNFK" id="5s_pyghX1WH" role="3o6s8t">
          <property role="2pNNFO" value="Connection" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghX1WI" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghX1WJ" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghX1WK" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghX1WL" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghX1WM" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghX1WN" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghX1WO" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="5s_pyghX1WP" role="lGtFl">
          <node concept="3IZrLx" id="5s_pyghX1WQ" role="3IZSJc">
            <node concept="3clFbS" id="5s_pyghX1WR" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghX1WS" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghX1WT" role="3clFbG">
                  <node concept="2OqwBi" id="5s_pyghX1WU" role="2Oq$k0">
                    <node concept="30H73N" id="5s_pyghX1WV" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghX1WW" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="5s_pyghX1WX" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghX1WY" role="lGtFl" />
      <node concept="1W57fq" id="5s_pyghXH7i" role="lGtFl">
        <node concept="3IZrLx" id="5s_pyghXH7j" role="3IZSJc">
          <node concept="3clFbS" id="5s_pyghXH7k" role="2VODD2">
            <node concept="3clFbF" id="5s_pyghXHu9" role="3cqZAp">
              <node concept="2OqwBi" id="5s_pyghXHG3" role="3clFbG">
                <node concept="30H73N" id="5s_pyghXHu8" role="2Oq$k0" />
                <node concept="2qgKlT" id="5s_pyghXI8N" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:5s_pyghXe$Z" resolve="hasNetwork" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2pMbU2" id="5s_pyghXbOU">
    <property role="TrG5h" value="mapping_DeviceTypeDeclaration" />
    <property role="3GE5qa" value="devices" />
    <node concept="n94m4" id="5s_pyghXbOX" role="lGtFl">
      <ref role="n9lRv" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
    </node>
    <node concept="3rIKKV" id="5s_pyghYaPp" role="2pMbU3">
      <node concept="2pNNFK" id="5s_pyghYaPq" role="2pNm8H">
        <property role="2pNNFO" value="DeviceType" />
        <node concept="2pNUuL" id="23XkovWECDV" role="2pNNFR">
          <property role="2pNUuO" value="Name" />
          <node concept="2pMdtt" id="23XkovWECNG" role="2pMdts">
            <node concept="17Uvod" id="23XkovWECNI" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="23XkovWECNJ" role="3zH0cK">
                <node concept="3clFbS" id="23XkovWECNK" role="2VODD2">
                  <node concept="3clFbF" id="23XkovWED0z" role="3cqZAp">
                    <node concept="2OqwBi" id="23XkovWEDfZ" role="3clFbG">
                      <node concept="30H73N" id="23XkovWED0y" role="2Oq$k0" />
                      <node concept="3TrcHB" id="23XkovWEDLS" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghYaPr" role="3o6s8t">
          <property role="2pNNFO" value="Identification" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="5s_pyghYaPs" role="2pNNFR">
            <property role="2pNUuO" value="Standard" />
            <node concept="2pMdtt" id="5s_pyghYaPt" role="2pMdts">
              <property role="2pMdty" value="61499-2" />
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghYaPA" role="3o6s8t">
          <property role="2pNNFO" value="VarDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghYaPB" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghYaPC" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghYaPD" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYaPE" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYaPF" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghYaPG" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghYaPH" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:2lwHqHkyELb" resolve="parameters" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghYaPu" role="3o6s8t">
          <property role="2pNNFO" value="ResourceTypeName" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghYaPv" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghYaPw" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghYaPx" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYaPy" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYaPz" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghYaP$" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghYc_u" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:1WTKUmKKVQc" resolve="instantiableResourceTypes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghYdkP" role="3o6s8t">
          <property role="2pNNFO" value="Resource" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghYdu5" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghYdu8" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghYdu9" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYduf" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYdua" role="3clFbG">
                    <node concept="3Tsc0h" id="5s_pyghYdud" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:2lwHqHk$uBA" resolve="resources" />
                    </node>
                    <node concept="30H73N" id="5s_pyghYdue" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghYaPI" role="3o6s8t">
          <property role="2pNNFO" value="FBNetwork" />
          <property role="qg3DV" value="true" />
          <node concept="5jKBG" id="5s_pyghYaPJ" role="lGtFl">
            <ref role="v9R2y" node="4KieeRVkWYp" resolve="reduce_IWithFBNetwork_FBNetworkElement" />
          </node>
        </node>
      </node>
      <node concept="2pNm8N" id="5s_pyghYaPK" role="2pNm8Q">
        <node concept="3W$oVP" id="5s_pyghYaPL" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="utf-8" />
        </node>
        <node concept="BH3og" id="5s_pyghYaPM" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="BH3og" id="5s_pyghYaPN" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="29q25o" id="5s_pyghYaPO" role="BGLLu">
          <property role="29q25t" value="DeviceType" />
          <node concept="29qyjW" id="5s_pyghYaPP" role="29qyi3">
            <property role="29qyi7" value="http://www.holobloc.com/xml/LibraryElement.dtd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="17Uvod" id="5s_pyghYaZp" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="5s_pyghYaZq" role="3zH0cK">
        <node concept="3clFbS" id="5s_pyghYaZr" role="2VODD2">
          <node concept="3clFbF" id="5s_pyghYbgV" role="3cqZAp">
            <node concept="2OqwBi" id="5s_pyghYbwn" role="3clFbG">
              <node concept="30H73N" id="5s_pyghYbgU" role="2Oq$k0" />
              <node concept="3TrcHB" id="5s_pyghYbVc" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghXbWA">
    <property role="TrG5h" value="reduce_ResourceTypeReference" />
    <ref role="3gUMe" to="xiqq:1WTKUmKKVQg" resolve="ResourceTypeReference" />
    <node concept="2pNNFK" id="5s_pyghXbWF" role="13RCb5">
      <property role="2pNNFO" value="ResourceType" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="5s_pyghXbWK" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pyghXbWL" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghXbWT" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghXbWU" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghXbWV" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghXc5G" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghXdgj" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghXciM" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghXc5F" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghXcNV" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:1WTKUmKKVQh" resolve="decl" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyghXdT0" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghXemT" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghXLbS">
    <property role="TrG5h" value="reduce_FBTypeReference" />
    <ref role="3gUMe" to="xiqq:2lwHqHjRwSl" resolve="FBTypeReference" />
    <node concept="2pNNFK" id="5s_pyghXLbW" role="13RCb5">
      <property role="2pNNFO" value="FBTypeName" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="5s_pyghXLc4" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pyghXLc5" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghXLc9" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghXLca" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghXLcb" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghXLl3" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghXMVN" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghXLP6" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghXLl2" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghXMdm" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:2lwHqHjRwSm" resolve="declaration" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyghXNA8" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghXLkV" role="lGtFl" />
    </node>
  </node>
  <node concept="2pMbU2" id="5s_pyghXO4w">
    <property role="TrG5h" value="mapping_ResourceTypeDeclaration" />
    <property role="3GE5qa" value="resources" />
    <node concept="3rIKKV" id="5s_pyghXO4x" role="2pMbU3">
      <node concept="2pNNFK" id="5s_pyghXQX7" role="2pNm8H">
        <property role="2pNNFO" value="ResourceType" />
        <node concept="2pNUuL" id="23XkovWE_VV" role="2pNNFR">
          <property role="2pNUuO" value="Name" />
          <node concept="2pMdtt" id="23XkovWE_VW" role="2pMdts">
            <node concept="17Uvod" id="23XkovWEA4C" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="23XkovWEA4D" role="3zH0cK">
                <node concept="3clFbS" id="23XkovWEA4E" role="2VODD2">
                  <node concept="3clFbF" id="23XkovWEAht" role="3cqZAp">
                    <node concept="2OqwBi" id="23XkovWEAwT" role="3clFbG">
                      <node concept="30H73N" id="23XkovWEAhs" role="2Oq$k0" />
                      <node concept="3TrcHB" id="23XkovWEB09" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghY4E$" role="3o6s8t">
          <property role="2pNNFO" value="Identification" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="5s_pyghY4E_" role="2pNNFR">
            <property role="2pNUuO" value="Standard" />
            <node concept="2pMdtt" id="5s_pyghY4EA" role="2pMdts">
              <property role="2pMdty" value="61499-2" />
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghXQXi" role="3o6s8t">
          <property role="2pNNFO" value="FBTypeName" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghXQXs" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghXQXt" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghXQXu" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghXR2m" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghXRg4" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghXR2l" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghXRTv" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:2lwHqHjRwSo" resolve="instantiableFBTypes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghXSsG" role="3o6s8t">
          <property role="2pNNFO" value="VarDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghXS$$" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghXS$_" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghXS$A" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghXSDu" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghXSTc" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghXSDt" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghXTzv" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghXTZc" role="3o6s8t">
          <property role="2pNNFO" value="FBNetwork" />
          <property role="qg3DV" value="true" />
          <node concept="5jKBG" id="5s_pyghXU8o" role="lGtFl">
            <ref role="v9R2y" node="4KieeRVkWYp" resolve="reduce_IWithFBNetwork_FBNetworkElement" />
          </node>
        </node>
      </node>
      <node concept="2pNm8N" id="5s_pyghXQWV" role="2pNm8Q">
        <node concept="3W$oVP" id="5s_pyghXQWX" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="utf-8" />
        </node>
        <node concept="BH3og" id="5s_pyghXQWY" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="BH3og" id="5s_pyghXQWZ" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="29q25o" id="5s_pyghXQX0" role="BGLLu">
          <property role="29q25t" value="ResourceType" />
          <node concept="29qyjW" id="5s_pyghXQX1" role="29qyi3">
            <property role="29qyi7" value="http://www.holobloc.com/xml/LibraryElement.dtd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="5s_pyghXO4z" role="lGtFl">
      <ref role="n9lRv" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
    </node>
    <node concept="17Uvod" id="5s_pyghXO4D" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="5s_pyghXO4E" role="3zH0cK">
        <node concept="3clFbS" id="5s_pyghXO4F" role="2VODD2">
          <node concept="3clFbF" id="5s_pyghXOdk" role="3cqZAp">
            <node concept="2OqwBi" id="5s_pyghXOsK" role="3clFbG">
              <node concept="30H73N" id="5s_pyghXOdj" role="2Oq$k0" />
              <node concept="3TrcHB" id="5s_pyghXOPu" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghYk6b">
    <property role="TrG5h" value="reduce_ResourceDeclaration" />
    <ref role="3gUMe" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
    <node concept="2pNNFK" id="5s_pyghYk6g" role="13RCb5">
      <property role="2pNNFO" value="Resource" />
      <node concept="2pNNFK" id="5s_pyghYkfi" role="3o6s8t">
        <property role="2pNNFO" value="Parameter" />
        <property role="qg3DV" value="true" />
        <node concept="2b32R4" id="5s_pyghYlzr" role="lGtFl">
          <node concept="3JmXsc" id="5s_pyghYlzs" role="2P8S$">
            <node concept="3clFbS" id="5s_pyghYlzt" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghYlCl" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghYlQP" role="3clFbG">
                  <node concept="30H73N" id="5s_pyghYlCk" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5s_pyghYmp2" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghYn0J" role="3o6s8t">
        <property role="2pNNFO" value="FBNetwork" />
        <property role="qg3DV" value="true" />
        <node concept="5jKBG" id="5s_pyghYnhw" role="lGtFl">
          <ref role="v9R2y" node="4KieeRVkWYp" resolve="reduce_IWithFBNetwork_FBNetworkElement" />
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghYk6l" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pyghYk6m" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghYk6q" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghYk6r" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghYk6s" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYkfq" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYkvC" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghYkfp" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5s_pyghYkW2" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghYohE" role="2pNNFR">
        <property role="2pNUuO" value="Type" />
        <node concept="2pMdtt" id="5s_pyghYohF" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghYoyw" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghYoyx" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghYoyy" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYoFa" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYq1t" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghYoVo" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghYoF9" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghYpnM" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:2lwHqHkyELp" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyghYqEH" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghYlog" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghYsCu">
    <property role="TrG5h" value="reduce_Parameter" />
    <ref role="3gUMe" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
    <node concept="2pNNFK" id="5s_pyghYsC_" role="13RCb5">
      <property role="2pNNFO" value="Parameter" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="5s_pyghYsCI" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pyghYsCJ" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghYsCN" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghYsCO" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghYsCP" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYsLt" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYtHE" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghYsYz" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghYsLs" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghYtiy" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7b" resolve="decl" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyghYuj7" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghYuXa" role="2pNNFR">
        <property role="2pNUuO" value="Value" />
        <node concept="2pMdtt" id="5s_pyghYuXb" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghYv9S" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghYv9T" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghYv9U" role="2VODD2">
                <node concept="3clFbF" id="7bQ9AP7_TQT" role="3cqZAp">
                  <node concept="2YIFZM" id="7bQ9AP7_Ub2" role="3clFbG">
                    <ref role="37wK5l" to="maoc:463hhTc_g0" resolve="print" />
                    <ref role="1Pybhc" to="maoc:463hhTc9vV" resolve="XmlAttributePrinter" />
                    <node concept="1iwH7S" id="7DSsXPFBAj6" role="37wK5m" />
                    <node concept="2OqwBi" id="7bQ9AP7_UAp" role="37wK5m">
                      <node concept="30H73N" id="7bQ9AP7_UpS" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7bQ9AP7_VhJ" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghYsCB" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghYIxI">
    <property role="TrG5h" value="reduce_DeviceDeclaration" />
    <ref role="3gUMe" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
    <node concept="2pNNFK" id="5s_pyghYIxN" role="13RCb5">
      <property role="2pNNFO" value="Device" />
      <node concept="2pNUuL" id="5s_pyghYIxT" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pyghYIxU" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghYIEz" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghYIEA" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghYIEB" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYIEH" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYIEC" role="3clFbG">
                    <node concept="3TrcHB" id="5s_pyghYIEF" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="5s_pyghYIEG" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghYIy1" role="2pNNFR">
        <property role="2pNUuO" value="Type" />
        <node concept="2pMdtt" id="5s_pyghYIy2" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghYIQa" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghYIQb" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghYIQc" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYIYO" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYKE9" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghYJf2" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghYIYN" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghYKde" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:1WTKUmKKVP_" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyghYL8l" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghYIy7" role="lGtFl" />
      <node concept="2pNNFK" id="5s_pyghYIy9" role="3o6s8t">
        <property role="2pNNFO" value="Parameter" />
        <property role="qg3DV" value="true" />
        <node concept="2b32R4" id="5s_pyghYIyd" role="lGtFl">
          <node concept="3JmXsc" id="5s_pyghYIyg" role="2P8S$">
            <node concept="3clFbS" id="5s_pyghYIyh" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghYIyn" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghYIyi" role="3clFbG">
                  <node concept="3Tsc0h" id="5s_pyghYIyl" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:fshQXbRNVN" resolve="parameters" />
                  </node>
                  <node concept="30H73N" id="5s_pyghYIym" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghYLlU" role="3o6s8t">
        <property role="2pNNFO" value="Resource" />
        <property role="qg3DV" value="true" />
        <node concept="2b32R4" id="5s_pyghYLlV" role="lGtFl">
          <node concept="3JmXsc" id="5s_pyghYLlW" role="2P8S$">
            <node concept="3clFbS" id="5s_pyghYLlX" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghYLlY" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghYLlZ" role="3clFbG">
                  <node concept="3Tsc0h" id="5s_pyghYMsw" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                  </node>
                  <node concept="30H73N" id="5s_pyghYLm1" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghYLuC" role="3o6s8t">
        <property role="2pNNFO" value="FBNetwork" />
        <property role="qg3DV" value="true" />
        <node concept="5jKBG" id="5s_pyghYNrV" role="lGtFl">
          <ref role="v9R2y" node="4KieeRVkWYp" resolve="reduce_IWithFBNetwork_FBNetworkElement" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghYUmz">
    <property role="TrG5h" value="reduce_ApplicationDeclaration" />
    <ref role="3gUMe" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
    <node concept="2pNNFK" id="5s_pyghYUmC" role="13RCb5">
      <property role="2pNNFO" value="Application" />
      <node concept="2pNUuL" id="5s_pyghYUmI" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pyghYUmR" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghYUmU" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghYUmX" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghYUmY" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYUn4" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYUmZ" role="3clFbG">
                    <node concept="3TrcHB" id="5s_pyghYUn2" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="5s_pyghYUn3" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="5s_pyghYV3P" role="3o6s8t">
        <property role="2pNNFO" value="SubAppNetwork" />
        <property role="qg3DV" value="true" />
        <node concept="5jKBG" id="5s_pyghYVq2" role="lGtFl">
          <ref role="v9R2y" node="5s_pyghX1VY" resolve="reduce_IWithSubappNetwork_SubappNetworkElement" />
        </node>
      </node>
      <node concept="raruj" id="5s_pyghYUHE" role="lGtFl" />
    </node>
  </node>
  <node concept="2pMbU2" id="5s_pyghYW5W">
    <property role="TrG5h" value="mapping_SegmentTypeDeclaration" />
    <property role="3GE5qa" value="segments" />
    <node concept="3rIKKV" id="5s_pyghYW5X" role="2pMbU3">
      <node concept="2pNNFK" id="5s_pyghYW6d" role="2pNm8H">
        <property role="2pNNFO" value="Segment" />
        <node concept="2pNNFK" id="5s_pyghZpmx" role="3o6s8t">
          <property role="2pNNFO" value="Identification" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="5s_pyghZpmy" role="2pNNFR">
            <property role="2pNUuO" value="Standard" />
            <node concept="2pMdtt" id="5s_pyghZpmz" role="2pMdts">
              <property role="2pMdty" value="61499-2" />
            </node>
          </node>
        </node>
        <node concept="2pNUuL" id="5s_pyghYW6j" role="2pNNFR">
          <property role="2pNUuO" value="Name" />
          <node concept="2pMdtt" id="5s_pyghYW6k" role="2pMdts">
            <node concept="17Uvod" id="5s_pyghYW6p" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="5s_pyghYW6q" role="3zH0cK">
                <node concept="3clFbS" id="5s_pyghYW6r" role="2VODD2">
                  <node concept="3clFbF" id="5s_pyghYWf3" role="3cqZAp">
                    <node concept="2OqwBi" id="5s_pyghYWsV" role="3clFbG">
                      <node concept="30H73N" id="5s_pyghYWf2" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5s_pyghYWMv" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghYXc9" role="3o6s8t">
          <property role="2pNNFO" value="VarDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghYXmT" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghYXmU" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghYXmV" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYXrN" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYXBX" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghYXrM" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5s_pyghYXWi" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:5s_pyghtjpo" resolve="parameters" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNm8N" id="5s_pyghYW61" role="2pNm8Q">
        <node concept="3W$oVP" id="5s_pyghYW63" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="utf-8" />
        </node>
        <node concept="BH3og" id="5s_pyghYW64" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="BH3og" id="5s_pyghYW65" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="29q25o" id="5s_pyghYW66" role="BGLLu">
          <property role="29q25t" value="SegmentType" />
          <node concept="29qyjW" id="5s_pyghYW67" role="29qyi3">
            <property role="29qyi7" value="http://www.holobloc.com/xml/LibraryElement.dtd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="5s_pyghYW5Z" role="lGtFl">
      <ref role="n9lRv" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
    </node>
    <node concept="17Uvod" id="5s_pygi0xix" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="5s_pygi0xi$" role="3zH0cK">
        <node concept="3clFbS" id="5s_pygi0xi_" role="2VODD2">
          <node concept="3clFbF" id="5s_pygi0xiF" role="3cqZAp">
            <node concept="2OqwBi" id="5s_pygi0xiA" role="3clFbG">
              <node concept="3TrcHB" id="5s_pygi0xiD" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="30H73N" id="5s_pygi0xiE" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghYY8G">
    <property role="TrG5h" value="reduce_Mapping" />
    <ref role="3gUMe" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
    <node concept="2pNNFK" id="5s_pyghYY8L" role="13RCb5">
      <property role="2pNNFO" value="Mapping" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="5s_pyghYY8Q" role="2pNNFR">
        <property role="2pNUuO" value="From" />
        <node concept="2pMdtt" id="5s_pyghYY8R" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghYY98" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghYY99" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghYY9a" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghYYhM" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghYZxc" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghYYuS" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghYYhL" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghYYMR" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:uLhTRRmrej" resolve="instance" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="5s_pyghZ0hB" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghYY8W" role="2pNNFR">
        <property role="2pNUuO" value="To" />
        <node concept="2pMdtt" id="5s_pyghYY8X" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghZ0Mz" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghZ0M$" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghZ0M_" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZ0Vd" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZ2eW" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghZ18j" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghZ0Vc" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghZ1OA" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:uLhTRRmrel" resolve="resource" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="5s_pyghZ2Gy" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghYY96" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghZ2VU">
    <property role="TrG5h" value="reduce_Link" />
    <ref role="3gUMe" to="xiqq:5s_pyghzCOb" resolve="Link" />
    <node concept="2pNNFK" id="5s_pyghZ2VZ" role="13RCb5">
      <property role="2pNNFO" value="Link" />
      <node concept="2pNNFK" id="5s_pyghZ66_" role="3o6s8t">
        <property role="2pNNFO" value="Parameter" />
        <property role="qg3DV" value="true" />
        <node concept="2b32R4" id="5s_pyghZ6jr" role="lGtFl">
          <node concept="3JmXsc" id="5s_pyghZ6js" role="2P8S$">
            <node concept="3clFbS" id="5s_pyghZ6jt" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghZ6ol" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghZ6$v" role="3clFbG">
                  <node concept="30H73N" id="5s_pyghZ6ok" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5s_pyghZ77_" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:5s_pyghzCOe" resolve="parameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghZ2Wa" role="2pNNFR">
        <property role="2pNUuO" value="SegmentName" />
        <node concept="2pMdtt" id="5s_pyghZ2Wb" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghZ2Wf" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghZ2Wg" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghZ2Wh" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZ34T" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZ4ei" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghZ3kx" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghZ34S" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghZ3SO" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:5s_pyghzCOh" resolve="segment" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyghZ4Pw" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghZ7QE" role="2pNNFR">
        <property role="2pNUuO" value="CommResource" />
        <node concept="2pMdtt" id="5s_pyghZ7QF" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghZ89c" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghZ89d" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghZ89e" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZ8hQ" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZ9_Q" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghZ8vI" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghZ8hP" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghZ93E" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:5s_pyghzCOc" resolve="resource" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="5s_pyghZamq" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghZ2W1" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="5s_pyghZa_L">
    <property role="TrG5h" value="reduce_Segment" />
    <ref role="3gUMe" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
    <node concept="2pNNFK" id="5s_pyghZa_Q" role="13RCb5">
      <property role="2pNNFO" value="Segment" />
      <node concept="2pNNFK" id="5s_pyghZexA" role="3o6s8t">
        <property role="2pNNFO" value="Parameter" />
        <property role="qg3DV" value="true" />
        <node concept="2b32R4" id="5s_pyghZeIX" role="lGtFl">
          <node concept="3JmXsc" id="5s_pyghZeJ0" role="2P8S$">
            <node concept="3clFbS" id="5s_pyghZeJ1" role="2VODD2">
              <node concept="3clFbF" id="5s_pyghZeJ7" role="3cqZAp">
                <node concept="2OqwBi" id="5s_pyghZeJ2" role="3clFbG">
                  <node concept="3Tsc0h" id="5s_pyghZeJ5" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:5s_pyghtuOK" resolve="parameters" />
                  </node>
                  <node concept="30H73N" id="5s_pyghZeJ6" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghZa_X" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pyghZa_Y" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghZaA4" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghZaA5" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghZaA6" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZaII" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZaXo" role="3clFbG">
                    <node concept="30H73N" id="5s_pyghZaIH" role="2Oq$k0" />
                    <node concept="3TrcHB" id="5s_pyghZbkx" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pyghZbTr" role="2pNNFR">
        <property role="2pNUuO" value="Type" />
        <node concept="2pMdtt" id="5s_pyghZbTs" role="2pMdts">
          <node concept="17Uvod" id="5s_pyghZc4r" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="5s_pyghZc4s" role="3zH0cK">
              <node concept="3clFbS" id="5s_pyghZc4t" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZcd5" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZdg5" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pyghZcrJ" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pyghZcd4" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyghZcOZ" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:5s_pyghtuNY" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyghZdPO" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pyghZa_S" role="lGtFl" />
    </node>
  </node>
  <node concept="2pMbU2" id="5s_pyghZg1H">
    <property role="TrG5h" value="mapping_SystemConfiguration" />
    <property role="3GE5qa" value="system" />
    <node concept="3rIKKV" id="5s_pyghZg1I" role="2pMbU3">
      <node concept="2pNNFK" id="5s_pyghZgsb" role="2pNm8H">
        <property role="2pNNFO" value="System" />
        <node concept="2pNNFK" id="5s_pyghZor2" role="3o6s8t">
          <property role="2pNNFO" value="Identification" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="5s_pyghZor3" role="2pNNFR">
            <property role="2pNUuO" value="Standard" />
            <node concept="2pMdtt" id="5s_pyghZor4" role="2pMdts">
              <property role="2pMdty" value="61499-2" />
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghZi7p" role="3o6s8t">
          <property role="2pNNFO" value="Application" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghZiq6" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghZiq9" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghZiqa" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZiqg" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZiqb" role="3clFbG">
                    <node concept="3Tsc0h" id="5s_pyghZiqe" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                    </node>
                    <node concept="30H73N" id="5s_pyghZiqf" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghZiy4" role="3o6s8t">
          <property role="2pNNFO" value="Device" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghZiy5" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghZiy6" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghZiy7" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZiy8" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZiy9" role="3clFbG">
                    <node concept="3Tsc0h" id="5s_pyghZjjQ" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:uLhTRR7MVs" resolve="devices" />
                    </node>
                    <node concept="30H73N" id="5s_pyghZiyb" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghZjKs" role="3o6s8t">
          <property role="2pNNFO" value="Mapping" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghZjKt" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghZjKu" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghZjKv" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZjKw" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZjKx" role="3clFbG">
                    <node concept="3Tsc0h" id="5s_pyghZk$Z" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:uLhTRRozfU" resolve="mappings" />
                    </node>
                    <node concept="30H73N" id="5s_pyghZjKz" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghZl0b" role="3o6s8t">
          <property role="2pNNFO" value="Segment" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghZl0c" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghZl0d" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghZl0e" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZl0f" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZl0g" role="3clFbG">
                    <node concept="3Tsc0h" id="5s_pyghZm3P" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:5s_pyght$Xg" resolve="segments" />
                    </node>
                    <node concept="30H73N" id="5s_pyghZl0i" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="5s_pyghZmws" role="3o6s8t">
          <property role="2pNNFO" value="Link" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="5s_pyghZmwt" role="lGtFl">
            <node concept="3JmXsc" id="5s_pyghZmwu" role="2P8S$">
              <node concept="3clFbS" id="5s_pyghZmwv" role="2VODD2">
                <node concept="3clFbF" id="5s_pyghZmww" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pyghZmwx" role="3clFbG">
                    <node concept="3Tsc0h" id="5s_pyghZnuW" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:5s_pygh_SXc" resolve="links" />
                    </node>
                    <node concept="30H73N" id="5s_pyghZmwz" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNUuL" id="5s_pyghZgsf" role="2pNNFR">
          <property role="2pNUuO" value="Name" />
          <node concept="2pMdtt" id="5s_pyghZgsg" role="2pMdts">
            <node concept="17Uvod" id="5s_pyghZgsj" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="5s_pyghZgsk" role="3zH0cK">
                <node concept="3clFbS" id="5s_pyghZgsl" role="2VODD2">
                  <node concept="3clFbF" id="5s_pyghZg$X" role="3cqZAp">
                    <node concept="2OqwBi" id="5s_pyghZgMP" role="3clFbG">
                      <node concept="30H73N" id="5s_pyghZg$W" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5s_pyghZhaw" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNm8N" id="5s_pyghZgrZ" role="2pNm8Q">
        <node concept="3W$oVP" id="5s_pyghZgs0" role="BGLLu">
          <property role="1D$jbd" value="1.0" />
          <property role="1UZly_" value="utf-8" />
        </node>
        <node concept="BH3og" id="5s_pyghZgs1" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="BH3og" id="5s_pyghZgs2" role="BGLLu">
          <property role="3VrZF8" value="" />
        </node>
        <node concept="29q25o" id="5s_pyghZgs3" role="BGLLu">
          <property role="29q25t" value="System" />
          <node concept="29qyjW" id="5s_pyghZgs4" role="29qyi3">
            <property role="29qyi7" value="LibraryElement.dtd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="5s_pyghZg1K" role="lGtFl">
      <ref role="n9lRv" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
    </node>
    <node concept="17Uvod" id="5s_pyghZg1Q" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="5s_pyghZg1T" role="3zH0cK">
        <node concept="3clFbS" id="5s_pyghZg1U" role="2VODD2">
          <node concept="3clFbF" id="5s_pyghZg20" role="3cqZAp">
            <node concept="2OqwBi" id="5s_pyghZg1V" role="3clFbG">
              <node concept="3TrcHB" id="5s_pyghZg1Y" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="30H73N" id="5s_pyghZg1Z" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="5s_pygi0msG">
    <property role="TrG5h" value="reduce_SubapplicationDeclaration" />
    <property role="3GE5qa" value="network.subapp" />
    <ref role="3gUMe" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
    <node concept="2pNNFK" id="5s_pygi0mV_" role="13RCb5">
      <property role="2pNNFO" value="SubApp" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="5s_pygi0mVA" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="5s_pygi0mVB" role="2pMdts">
          <node concept="17Uvod" id="5s_pygi0mVC" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="5s_pygi0mVD" role="3zH0cK">
              <node concept="3clFbS" id="5s_pygi0mVE" role="2VODD2">
                <node concept="3clFbF" id="5s_pygi0mVF" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pygi0mVG" role="3clFbG">
                    <node concept="3TrcHB" id="5s_pygi0mVH" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="5s_pygi0mVI" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="5s_pygi0mVJ" role="2pNNFR">
        <property role="2pNUuO" value="Type" />
        <node concept="2pMdtt" id="5s_pygi0mVK" role="2pMdts">
          <node concept="17Uvod" id="5s_pygi0mVL" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="5s_pygi0mVM" role="3zH0cK">
              <node concept="3clFbS" id="5s_pygi0mVN" role="2VODD2">
                <node concept="3clFbF" id="5s_pygi0mVO" role="3cqZAp">
                  <node concept="2OqwBi" id="5s_pygi0mVP" role="3clFbG">
                    <node concept="2OqwBi" id="5s_pygi0mVQ" role="2Oq$k0">
                      <node concept="30H73N" id="5s_pygi0mVR" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pygi0mVS" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pygi0mVT" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="2syzu7qDXi8" role="2pNNFR">
        <property role="2pNUuO" value="position" />
        <node concept="2pMdtt" id="2syzu7qDXi9" role="2pMdts" />
        <node concept="29HgVG" id="2syzu7qDXia" role="lGtFl">
          <node concept="3NFfHV" id="2syzu7qDXib" role="3NFExx">
            <node concept="3clFbS" id="2syzu7qDXic" role="2VODD2">
              <node concept="3clFbF" id="2syzu7qDXid" role="3cqZAp">
                <node concept="2OqwBi" id="2syzu7qDXie" role="3clFbG">
                  <node concept="30H73N" id="2syzu7qDXif" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2syzu7qDXig" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:7oJsd9x2gq9" resolve="position" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="5s_pygi0mVU" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="463hhT7LxL">
    <property role="TrG5h" value="reduce_STAlgorithmBody" />
    <ref role="3gUMe" to="xiqq:1zB5ET5$GBR" resolve="STAlgorithmBody" />
    <node concept="2pNNFK" id="463hhT7LxQ" role="13RCb5">
      <property role="2pNNFO" value="ST" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="463hhTcjSL" role="2pNNFR">
        <property role="2pNUuO" value="Text" />
        <node concept="2pMdtt" id="463hhTcjSM" role="2pMdts">
          <node concept="17Uvod" id="463hhTckqK" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="463hhTckqL" role="3zH0cK">
              <node concept="3clFbS" id="463hhTckqM" role="2VODD2">
                <node concept="3clFbF" id="463hhTckzq" role="3cqZAp">
                  <node concept="2YIFZM" id="463hhTdKwB" role="3clFbG">
                    <ref role="37wK5l" to="maoc:463hhTc_g0" resolve="print" />
                    <ref role="1Pybhc" to="maoc:463hhTc9vV" resolve="XmlAttributePrinter" />
                    <node concept="1iwH7S" id="7DSsXPFBAQB" role="37wK5m" />
                    <node concept="2OqwBi" id="463hhTdKwC" role="37wK5m">
                      <node concept="30H73N" id="463hhTdKwD" role="2Oq$k0" />
                      <node concept="3TrEf2" id="463hhTdKwE" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:7GyesCpcgqN" resolve="body" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="463hhT7Ly1" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="23XkovWuesg">
    <property role="TrG5h" value="reduce_UnknownAlgorithmBody" />
    <ref role="3gUMe" to="xiqq:23XkovWspjs" resolve="UnknownAlgorithmBody" />
    <node concept="2pNNFK" id="23XkovWuesi" role="13RCb5">
      <property role="2pNNFO" value="Other" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="23XkovWueso" role="2pNNFR">
        <property role="2pNUuO" value="Language" />
        <node concept="2pMdtt" id="23XkovWuesp" role="2pMdts">
          <node concept="17Uvod" id="23XkovWuesx" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="23XkovWuesy" role="3zH0cK">
              <node concept="3clFbS" id="23XkovWuesz" role="2VODD2">
                <node concept="3clFbF" id="23XkovWueDn" role="3cqZAp">
                  <node concept="2OqwBi" id="23XkovWueRf" role="3clFbG">
                    <node concept="30H73N" id="23XkovWueDm" role="2Oq$k0" />
                    <node concept="3TrcHB" id="23XkovWufh8" role="2OqNvi">
                      <ref role="3TsBF5" to="xiqq:23XkovWsppH" resolve="languageName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNUuL" id="23XkovWug6u" role="2pNNFR">
        <property role="2pNUuO" value="Text" />
        <node concept="2pMdtt" id="23XkovWug6v" role="2pMdts">
          <node concept="17Uvod" id="23XkovWujo$" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="23XkovWujo_" role="3zH0cK">
              <node concept="3clFbS" id="23XkovWujoA" role="2VODD2">
                <node concept="3clFbF" id="23XkovWuk9U" role="3cqZAp">
                  <node concept="2YIFZM" id="23XkovWuB1C" role="3clFbG">
                    <ref role="37wK5l" to="maoc:23XkovWuhk6" resolve="escapeXML" />
                    <ref role="1Pybhc" to="maoc:463hhTc9vV" resolve="XmlAttributePrinter" />
                    <node concept="2OqwBi" id="23XkovWut1_" role="37wK5m">
                      <node concept="2OqwBi" id="23XkovWumPH" role="2Oq$k0">
                        <node concept="2OqwBi" id="23XkovWuknM" role="2Oq$k0">
                          <node concept="30H73N" id="23XkovWuk9T" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="23XkovWukM0" role="2OqNvi">
                            <ref role="3TtcxE" to="xiqq:23XkovWspTW" resolve="code" />
                          </node>
                        </node>
                        <node concept="3$u5V9" id="23XkovWuqaP" role="2OqNvi">
                          <node concept="1bVj0M" id="23XkovWuqaR" role="23t8la">
                            <node concept="3clFbS" id="23XkovWuqaS" role="1bW5cS">
                              <node concept="3clFbF" id="23XkovWuqIt" role="3cqZAp">
                                <node concept="2OqwBi" id="23XkovWuqYd" role="3clFbG">
                                  <node concept="37vLTw" id="23XkovWuqIs" role="2Oq$k0">
                                    <ref role="3cqZAo" node="23XkovWuqaT" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="23XkovWusdE" role="2OqNvi">
                                    <ref role="3TsBF5" to="xiqq:23XkovWspPn" resolve="line" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="23XkovWuqaT" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="23XkovWuqaU" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uJxvA" id="23XkovWutOH" role="2OqNvi">
                        <node concept="Xl_RD" id="23XkovWu_ha" role="3uJOhx">
                          <property role="Xl_RC" value="\n" />
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
      <node concept="raruj" id="23XkovWuj_z" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="4KEbQaicULP">
    <property role="TrG5h" value="reduce_Position" />
    <ref role="3gUMe" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
    <node concept="2pNNFK" id="4KEbQaid3Dr" role="13RCb5">
      <property role="2pNNFO" value="foo" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="4KEbQaid3D$" role="2pNNFR">
        <property role="2pNUuO" value="x" />
        <node concept="2pMdtt" id="4KEbQaid3D_" role="2pMdts">
          <node concept="17Uvod" id="4KEbQaid3DO" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="4KEbQaid3DP" role="3zH0cK">
              <node concept="3clFbS" id="4KEbQaid3DQ" role="2VODD2">
                <node concept="3clFbF" id="4KEbQaid3MN" role="3cqZAp">
                  <node concept="2OqwBi" id="4KEbQaid40z" role="3clFbG">
                    <node concept="30H73N" id="4KEbQaid3MM" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4KEbQaid4fS" role="2OqNvi">
                      <ref role="3TsBF5" to="xiqq:5fP$Xwj3irK" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="4KEbQaid3MD" role="lGtFl" />
      </node>
      <node concept="2pNUuL" id="4KEbQaid3DG" role="2pNNFR">
        <property role="2pNUuO" value="y" />
        <node concept="2pMdtt" id="4KEbQaid4ze" role="2pMdts">
          <node concept="17Uvod" id="4KEbQaid4zg" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="4KEbQaid4zh" role="3zH0cK">
              <node concept="3clFbS" id="4KEbQaid4zi" role="2VODD2">
                <node concept="3clFbF" id="4KEbQaid4FU" role="3cqZAp">
                  <node concept="2OqwBi" id="4KEbQaid4TE" role="3clFbG">
                    <node concept="30H73N" id="4KEbQaid4FT" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4KEbQaid5jK" role="2OqNvi">
                      <ref role="3TsBF5" to="xiqq:5fP$Xwj3irM" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="4KEbQaid3MH" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="4KEbQaidh$y">
    <property role="TrG5h" value="switch_ConncectionPath" />
    <node concept="3aamgX" id="4KEbQaidh$z" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="xiqq:3IX4BsKoiap" resolve="StraightConnectionPath" />
      <node concept="b5Tf3" id="4KEbQaidkl1" role="1lVwrX" />
    </node>
    <node concept="3aamgX" id="4KEbQaidh$E" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
      <node concept="1Koe21" id="4KEbQaidkl4" role="1lVwrX">
        <node concept="2pNNFK" id="4KEbQaidkla" role="1Koe22">
          <property role="2pNNFO" value="foo" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="4KEbQaidkle" role="2pNNFR">
            <property role="2pNUuO" value="dx1" />
            <node concept="2pMdtt" id="4KEbQaidklf" role="2pMdts">
              <node concept="17Uvod" id="4KEbQaidklj" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="4KEbQaidklk" role="3zH0cK">
                  <node concept="3clFbS" id="4KEbQaidkll" role="2VODD2">
                    <node concept="3clFbF" id="4KEbQaidkup" role="3cqZAp">
                      <node concept="2OqwBi" id="4KEbQaidkH9" role="3clFbG">
                        <node concept="30H73N" id="4KEbQaidkuo" role="2Oq$k0" />
                        <node concept="3TrcHB" id="4KEbQaidlmi" role="2OqNvi">
                          <ref role="3TsBF5" to="xiqq:3IX4BsKoibI" resolve="dx" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="4KEbQaidku5" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4KEbQaidmba" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
      <node concept="1Koe21" id="4KEbQaidmbb" role="1lVwrX">
        <node concept="2pNNFK" id="4KEbQaidmbc" role="1Koe22">
          <property role="2pNNFO" value="foo" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="4KEbQaidmbd" role="2pNNFR">
            <property role="2pNUuO" value="dx1" />
            <node concept="2pMdtt" id="4KEbQaidmbe" role="2pMdts">
              <node concept="17Uvod" id="4KEbQaidmbf" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="4KEbQaidmbg" role="3zH0cK">
                  <node concept="3clFbS" id="4KEbQaidmbh" role="2VODD2">
                    <node concept="3clFbF" id="4KEbQaidmbi" role="3cqZAp">
                      <node concept="2OqwBi" id="4KEbQaidmbj" role="3clFbG">
                        <node concept="30H73N" id="4KEbQaidmbk" role="2Oq$k0" />
                        <node concept="3TrcHB" id="4KEbQaidnZs" role="2OqNvi">
                          <ref role="3TsBF5" to="xiqq:3IX4BsKomau" resolve="dx1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="4KEbQaidmbm" role="lGtFl" />
          </node>
          <node concept="2pNUuL" id="4KEbQaidmQW" role="2pNNFR">
            <property role="2pNUuO" value="dy" />
            <node concept="2pMdtt" id="4KEbQaidmQX" role="2pMdts">
              <node concept="17Uvod" id="4KEbQaidmQY" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="4KEbQaidmQZ" role="3zH0cK">
                  <node concept="3clFbS" id="4KEbQaidmR0" role="2VODD2">
                    <node concept="3clFbF" id="4KEbQaidmR1" role="3cqZAp">
                      <node concept="2OqwBi" id="4KEbQaidmR2" role="3clFbG">
                        <node concept="30H73N" id="4KEbQaidmR3" role="2Oq$k0" />
                        <node concept="3TrcHB" id="4KEbQaido_u" role="2OqNvi">
                          <ref role="3TsBF5" to="xiqq:3IX4BsKomaw" resolve="dy" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="4KEbQaidmR5" role="lGtFl" />
          </node>
          <node concept="2pNUuL" id="4KEbQaidn2I" role="2pNNFR">
            <property role="2pNUuO" value="dx2" />
            <node concept="2pMdtt" id="4KEbQaidn2J" role="2pMdts">
              <node concept="17Uvod" id="4KEbQaidn2K" role="lGtFl">
                <property role="2qtEX9" value="text" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
                <node concept="3zFVjK" id="4KEbQaidn2L" role="3zH0cK">
                  <node concept="3clFbS" id="4KEbQaidn2M" role="2VODD2">
                    <node concept="3clFbF" id="4KEbQaidn2N" role="3cqZAp">
                      <node concept="2OqwBi" id="4KEbQaidn2O" role="3clFbG">
                        <node concept="30H73N" id="4KEbQaidn2P" role="2Oq$k0" />
                        <node concept="3TrcHB" id="4KEbQaidpdq" role="2OqNvi">
                          <ref role="3TsBF5" to="xiqq:3IX4BsKomaz" resolve="dx2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="4KEbQaidn2R" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="4KEbQaid$Uy" role="jxRDz">
      <node concept="1lLz0L" id="4KEbQaid$U$" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="unknown connection path" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="7H$5i_Y8OY4">
    <property role="TrG5h" value="reduce_DeclarationWithInterface_SubAppInterfaceListElement" />
    <property role="3GE5qa" value="interface" />
    <ref role="3gUMe" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="2pNNFK" id="7H$5i_Y8OY5" role="13RCb5">
      <property role="2pNNFO" value="SubAppInterfaceList" />
      <property role="qg3DV" value="false" />
      <node concept="2pNNFK" id="7H$5i_Y8OY6" role="3o6s8t">
        <property role="2pNNFO" value="SubAppEventInputs" />
        <node concept="2pNNFK" id="7H$5i_Y8OY7" role="3o6s8t">
          <property role="2pNNFO" value="Event" />
          <property role="qg3DV" value="true" />
          <node concept="1WS0z7" id="7H$5i_Y8S3Y" role="lGtFl">
            <node concept="3JmXsc" id="7H$5i_Y8S3Z" role="3Jn$fo">
              <node concept="3clFbS" id="7H$5i_Y8S40" role="2VODD2">
                <node concept="3clFbF" id="7H$5i_Y8S6K" role="3cqZAp">
                  <node concept="2OqwBi" id="7H$5i_Y8SjT" role="3clFbG">
                    <node concept="30H73N" id="7H$5i_Y8S6J" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7H$5i_Y8Sul" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="5jKBG" id="7H$5i_Y8ST8" role="lGtFl">
            <ref role="v9R2y" node="7H$5i_Y8QEa" resolve="reduce_EventDeclaration_SubApp" />
          </node>
        </node>
        <node concept="1W57fq" id="7H$5i_Y8OYf" role="lGtFl">
          <node concept="3IZrLx" id="7H$5i_Y8OYg" role="3IZSJc">
            <node concept="3clFbS" id="7H$5i_Y8OYh" role="2VODD2">
              <node concept="3clFbF" id="7H$5i_Y8OYi" role="3cqZAp">
                <node concept="2OqwBi" id="7H$5i_Y8OYj" role="3clFbG">
                  <node concept="2OqwBi" id="7H$5i_Y8OYk" role="2Oq$k0">
                    <node concept="30H73N" id="7H$5i_Y8OYl" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7H$5i_Y8OYm" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="7H$5i_Y8OYn" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="7H$5i_Y8OYo" role="3o6s8t">
        <property role="2pNNFO" value="SubAppEventOutputs" />
        <node concept="2pNNFK" id="7H$5i_Y8SVt" role="3o6s8t">
          <property role="2pNNFO" value="Event" />
          <property role="qg3DV" value="true" />
          <node concept="1WS0z7" id="7H$5i_Y8SVu" role="lGtFl">
            <node concept="3JmXsc" id="7H$5i_Y8SVv" role="3Jn$fo">
              <node concept="3clFbS" id="7H$5i_Y8SVw" role="2VODD2">
                <node concept="3clFbF" id="7H$5i_Y8SVx" role="3cqZAp">
                  <node concept="2OqwBi" id="7H$5i_Y8SVy" role="3clFbG">
                    <node concept="30H73N" id="7H$5i_Y8SVz" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7H$5i_Y8TEn" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="5jKBG" id="7H$5i_Y8SV_" role="lGtFl">
            <ref role="v9R2y" node="7H$5i_Y8QEa" resolve="reduce_EventDeclaration_SubApp" />
          </node>
        </node>
        <node concept="1W57fq" id="7H$5i_Y8OYx" role="lGtFl">
          <node concept="3IZrLx" id="7H$5i_Y8OYy" role="3IZSJc">
            <node concept="3clFbS" id="7H$5i_Y8OYz" role="2VODD2">
              <node concept="3clFbF" id="7H$5i_Y8OY$" role="3cqZAp">
                <node concept="2OqwBi" id="7H$5i_Y8OY_" role="3clFbG">
                  <node concept="2OqwBi" id="7H$5i_Y8OYA" role="2Oq$k0">
                    <node concept="30H73N" id="7H$5i_Y8OYB" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7H$5i_Y8OYC" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="7H$5i_Y8OYD" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="7H$5i_Y8OYE" role="3o6s8t">
        <property role="2pNNFO" value="InputVars" />
        <node concept="2pNNFK" id="7H$5i_Y8OYF" role="3o6s8t">
          <property role="2pNNFO" value="VarDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="7H$5i_Y8OYG" role="lGtFl">
            <node concept="3JmXsc" id="7H$5i_Y8OYH" role="2P8S$">
              <node concept="3clFbS" id="7H$5i_Y8OYI" role="2VODD2">
                <node concept="3clFbF" id="7H$5i_Y8OYJ" role="3cqZAp">
                  <node concept="2OqwBi" id="7H$5i_Y8OYK" role="3clFbG">
                    <node concept="3Tsc0h" id="7H$5i_Y8OYL" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                    </node>
                    <node concept="30H73N" id="7H$5i_Y8OYM" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="7H$5i_Y8OYN" role="lGtFl">
          <node concept="3IZrLx" id="7H$5i_Y8OYO" role="3IZSJc">
            <node concept="3clFbS" id="7H$5i_Y8OYP" role="2VODD2">
              <node concept="3clFbF" id="7H$5i_Y8OYQ" role="3cqZAp">
                <node concept="2OqwBi" id="7H$5i_Y8OYR" role="3clFbG">
                  <node concept="2OqwBi" id="7H$5i_Y8OYS" role="2Oq$k0">
                    <node concept="30H73N" id="7H$5i_Y8OYT" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7H$5i_Y8OYU" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="7H$5i_Y8OYV" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="7H$5i_Y8OYW" role="3o6s8t">
        <property role="2pNNFO" value="OutputVars" />
        <node concept="2pNNFK" id="7H$5i_Y8OYX" role="3o6s8t">
          <property role="2pNNFO" value="VarDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="7H$5i_Y8OYY" role="lGtFl">
            <node concept="3JmXsc" id="7H$5i_Y8OYZ" role="2P8S$">
              <node concept="3clFbS" id="7H$5i_Y8OZ0" role="2VODD2">
                <node concept="3clFbF" id="7H$5i_Y8OZ1" role="3cqZAp">
                  <node concept="2OqwBi" id="7H$5i_Y8OZ2" role="3clFbG">
                    <node concept="3Tsc0h" id="7H$5i_Y8OZ3" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                    </node>
                    <node concept="30H73N" id="7H$5i_Y8OZ4" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="7H$5i_Y8OZ5" role="lGtFl">
          <node concept="3IZrLx" id="7H$5i_Y8OZ6" role="3IZSJc">
            <node concept="3clFbS" id="7H$5i_Y8OZ7" role="2VODD2">
              <node concept="3clFbF" id="7H$5i_Y8OZ8" role="3cqZAp">
                <node concept="2OqwBi" id="7H$5i_Y8OZ9" role="3clFbG">
                  <node concept="2OqwBi" id="7H$5i_Y8OZa" role="2Oq$k0">
                    <node concept="30H73N" id="7H$5i_Y8OZb" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7H$5i_Y8OZc" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="7H$5i_Y8OZd" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="7H$5i_Y8OZe" role="3o6s8t">
        <property role="2pNNFO" value="Plugs" />
        <node concept="2pNNFK" id="7H$5i_Y8OZf" role="3o6s8t">
          <property role="2pNNFO" value="AdapterDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="7H$5i_Y8OZg" role="lGtFl">
            <node concept="3JmXsc" id="7H$5i_Y8OZh" role="2P8S$">
              <node concept="3clFbS" id="7H$5i_Y8OZi" role="2VODD2">
                <node concept="3clFbF" id="7H$5i_Y8OZj" role="3cqZAp">
                  <node concept="2OqwBi" id="7H$5i_Y8OZk" role="3clFbG">
                    <node concept="1PxgMI" id="7H$5i_Y8OZl" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="7H$5i_Y8OZm" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
                      </node>
                      <node concept="30H73N" id="7H$5i_Y8OZn" role="1m5AlR" />
                    </node>
                    <node concept="3Tsc0h" id="7H$5i_Y8OZo" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="7H$5i_Y8OZp" role="lGtFl">
          <node concept="3IZrLx" id="7H$5i_Y8OZq" role="3IZSJc">
            <node concept="3clFbS" id="7H$5i_Y8OZr" role="2VODD2">
              <node concept="3clFbF" id="7H$5i_Y8OZs" role="3cqZAp">
                <node concept="2OqwBi" id="7H$5i_Y8OZt" role="3clFbG">
                  <node concept="2OqwBi" id="7H$5i_Y8OZu" role="2Oq$k0">
                    <node concept="1PxgMI" id="7H$5i_Y8OZv" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="7H$5i_Y8OZw" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
                      </node>
                      <node concept="30H73N" id="7H$5i_Y8OZx" role="1m5AlR" />
                    </node>
                    <node concept="3Tsc0h" id="7H$5i_Y8OZy" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="7H$5i_Y8OZz" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="7H$5i_Y8OZ$" role="3o6s8t">
        <property role="2pNNFO" value="Sockets" />
        <node concept="2pNNFK" id="7H$5i_Y8OZ_" role="3o6s8t">
          <property role="2pNNFO" value="AdapterDeclaration" />
          <property role="qg3DV" value="true" />
          <node concept="2b32R4" id="7H$5i_Y8OZA" role="lGtFl">
            <node concept="3JmXsc" id="7H$5i_Y8OZB" role="2P8S$">
              <node concept="3clFbS" id="7H$5i_Y8OZC" role="2VODD2">
                <node concept="3clFbF" id="7H$5i_Y8OZD" role="3cqZAp">
                  <node concept="2OqwBi" id="7H$5i_Y8OZE" role="3clFbG">
                    <node concept="1PxgMI" id="7H$5i_Y8OZF" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="7H$5i_Y8OZG" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
                      </node>
                      <node concept="30H73N" id="7H$5i_Y8OZH" role="1m5AlR" />
                    </node>
                    <node concept="3Tsc0h" id="7H$5i_Y8OZI" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1W57fq" id="7H$5i_Y8OZJ" role="lGtFl">
          <node concept="3IZrLx" id="7H$5i_Y8OZK" role="3IZSJc">
            <node concept="3clFbS" id="7H$5i_Y8OZL" role="2VODD2">
              <node concept="3clFbF" id="7H$5i_Y8OZM" role="3cqZAp">
                <node concept="2OqwBi" id="7H$5i_Y8OZN" role="3clFbG">
                  <node concept="3GX2aA" id="7H$5i_Y8OZO" role="2OqNvi" />
                  <node concept="2OqwBi" id="7H$5i_Y8OZP" role="2Oq$k0">
                    <node concept="1PxgMI" id="7H$5i_Y8OZQ" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="7H$5i_Y8OZR" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
                      </node>
                      <node concept="30H73N" id="7H$5i_Y8OZS" role="1m5AlR" />
                    </node>
                    <node concept="3Tsc0h" id="7H$5i_Y8OZT" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="7H$5i_Y8OZU" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="7H$5i_Y8QEa">
    <property role="TrG5h" value="reduce_EventDeclaration_SubApp" />
    <property role="3GE5qa" value="interface" />
    <ref role="3gUMe" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="2pNNFK" id="7H$5i_Y8QEb" role="13RCb5">
      <property role="2pNNFO" value="SubAppEvent" />
      <property role="qg3DV" value="true" />
      <node concept="2pNUuL" id="7H$5i_Y8QEc" role="2pNNFR">
        <property role="2pNUuO" value="Name" />
        <node concept="2pMdtt" id="7H$5i_Y8QEd" role="2pMdts">
          <property role="2pMdty" value="" />
          <node concept="17Uvod" id="7H$5i_Y8QEe" role="lGtFl">
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <property role="2qtEX9" value="text" />
            <node concept="3zFVjK" id="7H$5i_Y8QEf" role="3zH0cK">
              <node concept="3clFbS" id="7H$5i_Y8QEg" role="2VODD2">
                <node concept="3clFbF" id="7H$5i_Y8QEh" role="3cqZAp">
                  <node concept="2OqwBi" id="7H$5i_Y8QEi" role="3clFbG">
                    <node concept="30H73N" id="7H$5i_Y8QEj" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7H$5i_Y8QEk" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="7H$5i_Y8QEC" role="lGtFl" />
    </node>
  </node>
</model>

