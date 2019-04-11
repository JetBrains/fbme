<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fb13b7e5-37c8-4188-96ed-057d5b8154fd(ST.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="4fey" ref="r:05205c64-537e-47b2-8e85-2f142fc11ac8(ST.behavior)" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(ST.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1196434649611" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1177327570013" name="jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_Substitute" flags="in" index="ucgPf" />
      <concept id="8478191136883534237" name="jetbrains.mps.lang.editor.structure.IExtensibleSubstituteMenuPart" flags="ng" index="upBLQ">
        <child id="8478191136883534238" name="features" index="upBLP" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8998492695583125082" name="jetbrains.mps.lang.editor.structure.SubstituteFeature_MatchingText" flags="ng" index="16NfWO">
        <child id="8998492695583129244" name="query" index="16NeZM" />
      </concept>
      <concept id="7342352913006985483" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Action" flags="ng" index="3eGOop">
        <child id="8612453216082699922" name="substituteHandler" index="3aKz83" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="2722384699544370949" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Placeholder" flags="ng" index="3VyMlK" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells">
      <concept id="1716599163375643733" name="com.mbeddr.mpsutil.grammarcells.structure.BracketsCell" flags="ng" index="drBAd">
        <child id="1716599163375643743" name="left" index="drBA7" />
        <child id="1716599163375643746" name="inner" index="drBAU" />
        <child id="1716599163375643751" name="right" index="drBAZ" />
      </concept>
      <concept id="5083944728300220902" name="com.mbeddr.mpsutil.grammarcells.structure.SubstituteCell" flags="ng" index="yw3OH">
        <child id="5083944728300220903" name="wrapped" index="yw3OG" />
      </concept>
      <concept id="5083944728298846680" name="com.mbeddr.mpsutil.grammarcells.structure.OptionalCell" flags="ng" index="_tjkj">
        <child id="5083944728298846681" name="option" index="_tjki" />
      </concept>
      <concept id="8207263695490893775" name="com.mbeddr.mpsutil.grammarcells.structure.CellBasedRule" flags="ng" index="2ElW$n">
        <child id="8207263695490893799" name="symbols" index="2ElW$Z" />
        <child id="8207263695491670784" name="priority" index="2EmURo" />
      </concept>
      <concept id="8207263695491691232" name="com.mbeddr.mpsutil.grammarcells.structure.SubconceptExpression" flags="ng" index="2EmZKS" />
      <concept id="7363578995839435357" name="com.mbeddr.mpsutil.grammarcells.structure.WrapperCell" flags="ng" index="1kIj98">
        <child id="7363578995839435358" name="wrapped" index="1kIj9b" />
      </concept>
      <concept id="2862331529394479412" name="com.mbeddr.mpsutil.grammarcells.structure.GrammarConstantQuery" flags="ig" index="1Lj6DC" />
      <concept id="2862331529394479405" name="com.mbeddr.mpsutil.grammarcells.structure.GrammarConstantQueryCell" flags="ng" index="1Lj6DL">
        <child id="2862331529394487726" name="query" index="1Lj8FM" />
      </concept>
      <concept id="2862331529394480355" name="com.mbeddr.mpsutil.grammarcells.structure.Parameter_SubConcept" flags="ng" index="1Lj6YZ" />
      <concept id="3011849438420226693" name="com.mbeddr.mpsutil.grammarcells.structure.GrammarInfoCell" flags="ng" index="1WcQYu">
        <child id="8207263695490916687" name="rules" index="2El2Yn" />
        <child id="2862331529394260612" name="projection" index="1LiK7o" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="2lwHqHjKxcf">
    <property role="3GE5qa" value="datatypes" />
    <ref role="1XX52x" to="gpgy:3HBlKeoYKVW" resolve="DataType" />
    <node concept="1QoScp" id="2lwHqHjKxcg" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="2lwHqHjKxch" role="3e4ffs">
        <node concept="3clFbS" id="2lwHqHjKxci" role="2VODD2">
          <node concept="3clFbF" id="2lwHqHjKxcj" role="3cqZAp">
            <node concept="3fqX7Q" id="2lwHqHjKxck" role="3clFbG">
              <node concept="2OqwBi" id="2lwHqHjKxcl" role="3fr31v">
                <node concept="2OqwBi" id="2lwHqHjKxcm" role="2Oq$k0">
                  <node concept="pncrf" id="2lwHqHjKxcn" role="2Oq$k0" />
                  <node concept="2yIwOk" id="2lwHqHjKxco" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="2lwHqHjKxcp" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2lwHqHjKxcq" role="1QoS34">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="3HBlKeoYLKT" resolve="Type" />
      </node>
      <node concept="1xolST" id="2lwHqHjKxcr" role="1QoVPY">
        <property role="1xolSY" value="no type" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoZzvo">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3HBlKeoZu2f" resolve="VariableReference" />
    <node concept="1iCGBv" id="3HBlKeoZzvq" role="2wV5jI">
      <ref role="1NtTu8" to="gpgy:3HBlKeoZu2g" resolve="declaration" />
      <node concept="1sVBvm" id="3HBlKeoZzvs" role="1sWHZn">
        <node concept="3SHvHV" id="3HBlKeoZzvz" role="2wV5jI" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHjKxW0">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:2lwHqHjKxV$" resolve="StringLiteral" />
    <node concept="3EZMnI" id="2lwHqHjKxW2" role="2wV5jI">
      <node concept="3F0ifn" id="2lwHqHjKxW9" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="VechU" id="2lwHqHjKyOf" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
        </node>
        <node concept="11LMrY" id="2lwHqHjKyOt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2lwHqHjKxWs" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:2lwHqHjKxV_" resolve="value" />
        <node concept="VechU" id="2lwHqHjKyOx" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
        </node>
        <node concept="Vb9p2" id="2lwHqHjKyOA" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHjKxWn" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="VechU" id="2lwHqHjKyOh" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
        </node>
        <node concept="11L4FC" id="2lwHqHjKyOm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2lwHqHjKxW5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3Qd3IVOFNm1">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3Qd3IVOFNl$" resolve="ParensExpression" />
    <node concept="1WcQYu" id="3Qd3IVOFNmp" role="2wV5jI">
      <node concept="2ElW$n" id="3Qd3IVOFNmw" role="2El2Yn" />
      <node concept="3EZMnI" id="3Qd3IVOJFMp" role="1LiK7o">
        <node concept="drBAd" id="3Qd3IVOFNmd" role="3EZMnx">
          <node concept="3F0ifn" id="3Qd3IVOFNmf" role="drBA7">
            <property role="3F0ifm" value="(" />
            <node concept="11LMrY" id="3Qd3IVOHTAx" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F1sOY" id="3Qd3IVOFNmh" role="drBAU">
            <ref role="1NtTu8" to="gpgy:3Qd3IVOFNmU" resolve="expr" />
          </node>
          <node concept="3F0ifn" id="3Qd3IVOFNmj" role="drBAZ">
            <property role="3F0ifm" value=")" />
            <node concept="11L4FC" id="3Qd3IVOHTAB" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="3Qd3IVOJFMq" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HBlKeoZzvZ">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3HBlKeoZu2i" resolve="NumericLiteral" />
    <node concept="1WcQYu" id="3Qd3IVOFP8C" role="2wV5jI">
      <node concept="2ElW$n" id="3Qd3IVOFP8D" role="2El2Yn" />
      <node concept="1kIj98" id="3Qd3IVOK7JM" role="1LiK7o">
        <node concept="3F0A7n" id="3Qd3IVOK7JS" role="1kIj9b">
          <ref role="1NtTu8" to="gpgy:3HBlKeoZu2j" resolve="value" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHjKyP5">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
    <node concept="1QoScp" id="2lwHqHkvcwj" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="3F0ifn" id="2lwHqHkvcBJ" role="1QoS34">
        <property role="3F0ifm" value="TRUE" />
        <node concept="Vb9p2" id="2lwHqHkveeZ" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
        <node concept="VechU" id="2lwHqHkvef4" role="3F10Kt">
          <property role="Vb096" value="red" />
        </node>
      </node>
      <node concept="pkWqt" id="2lwHqHkvcwm" role="3e4ffs">
        <node concept="3clFbS" id="2lwHqHkvcwo" role="2VODD2">
          <node concept="3clFbF" id="2lwHqHkvcC3" role="3cqZAp">
            <node concept="2OqwBi" id="2lwHqHkvcQ4" role="3clFbG">
              <node concept="pncrf" id="2lwHqHkvcC2" role="2Oq$k0" />
              <node concept="3TrcHB" id="7GyesCp5Awg" role="2OqNvi">
                <ref role="3TsBF5" to="gpgy:2lwHqHjKyOE" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2lwHqHkvcBO" role="1QoVPY">
        <property role="3F0ifm" value="FALSE" />
        <node concept="VechU" id="2lwHqHkvef8" role="3F10Kt">
          <property role="Vb096" value="red" />
        </node>
      </node>
      <node concept="Vb9p2" id="2lwHqHkvdMd" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="2lwHqHkvefA">
    <property role="3GE5qa" value="expressions" />
    <ref role="aqKnT" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
    <node concept="3eGOop" id="2lwHqHkvefG" role="3ft7WO">
      <node concept="ucgPf" id="2lwHqHkvefH" role="3aKz83">
        <node concept="3clFbS" id="2lwHqHkvefI" role="2VODD2">
          <node concept="3cpWs8" id="2lwHqHkvfAD" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHkvfAE" role="3cpWs9">
              <property role="TrG5h" value="lit" />
              <node concept="3Tqbb2" id="2lwHqHkvfAB" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
              </node>
              <node concept="2ShNRf" id="2lwHqHkvfAF" role="33vP2m">
                <node concept="3zrR0B" id="2lwHqHkvfAG" role="2ShVmc">
                  <node concept="3Tqbb2" id="2lwHqHkvfAH" role="3zrR0E">
                    <ref role="ehGHo" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHkveJ7" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHkvhBw" role="3clFbG">
              <node concept="3clFbT" id="2lwHqHkvhH_" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="2lwHqHkvfRZ" role="37vLTJ">
                <node concept="37vLTw" id="2lwHqHkvfAI" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHkvfAE" resolve="lit" />
                </node>
                <node concept="3TrcHB" id="7GyesCp5Bxp" role="2OqNvi">
                  <ref role="3TsBF5" to="gpgy:2lwHqHjKyOE" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHkvi25" role="3cqZAp">
            <node concept="37vLTw" id="2lwHqHkvi23" role="3clFbG">
              <ref role="3cqZAo" node="2lwHqHkvfAE" resolve="lit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2lwHqHkves9" role="upBLP">
        <node concept="2h3Zct" id="2lwHqHkveIW" role="16NeZM">
          <property role="2h4Kg1" value="TRUE" />
        </node>
      </node>
    </node>
    <node concept="3eGOop" id="2lwHqHkvitk" role="3ft7WO">
      <node concept="ucgPf" id="2lwHqHkvitl" role="3aKz83">
        <node concept="3clFbS" id="2lwHqHkvitm" role="2VODD2">
          <node concept="3cpWs8" id="2lwHqHkvitn" role="3cqZAp">
            <node concept="3cpWsn" id="2lwHqHkvito" role="3cpWs9">
              <property role="TrG5h" value="lit" />
              <node concept="3Tqbb2" id="2lwHqHkvitp" role="1tU5fm">
                <ref role="ehGHo" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
              </node>
              <node concept="2ShNRf" id="2lwHqHkvitq" role="33vP2m">
                <node concept="3zrR0B" id="2lwHqHkvitr" role="2ShVmc">
                  <node concept="3Tqbb2" id="2lwHqHkvits" role="3zrR0E">
                    <ref role="ehGHo" to="gpgy:2lwHqHjKhla" resolve="BooleanLiteral" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHkvitt" role="3cqZAp">
            <node concept="37vLTI" id="2lwHqHkvitu" role="3clFbG">
              <node concept="3clFbT" id="2lwHqHkvitv" role="37vLTx" />
              <node concept="2OqwBi" id="2lwHqHkvitw" role="37vLTJ">
                <node concept="37vLTw" id="2lwHqHkvitx" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lwHqHkvito" resolve="lit" />
                </node>
                <node concept="3TrcHB" id="7GyesCp5CgB" role="2OqNvi">
                  <ref role="3TsBF5" to="gpgy:2lwHqHjKyOE" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2lwHqHkvitz" role="3cqZAp">
            <node concept="37vLTw" id="2lwHqHkvit$" role="3clFbG">
              <ref role="3cqZAo" node="2lwHqHkvito" resolve="lit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16NfWO" id="2lwHqHkvit_" role="upBLP">
        <node concept="2h3Zct" id="2lwHqHkvitA" role="16NeZM">
          <property role="2h4Kg1" value="FALSE" />
        </node>
      </node>
    </node>
    <node concept="3VyMlK" id="2lwHqHkvimm" role="3ft7WO" />
  </node>
  <node concept="24kQdi" id="3Qd3IVOFNo4">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:3Qd3IVOFNn0" resolve="BinaryExpression" />
    <node concept="1WcQYu" id="3Qd3IVOFNwL" role="2wV5jI">
      <node concept="2ElW$n" id="3Qd3IVOFNwM" role="2El2Yn">
        <node concept="2OqwBi" id="3Qd3IVOHRVh" role="2EmURo">
          <node concept="2EmZKS" id="3Qd3IVOHRH4" role="2Oq$k0" />
          <node concept="2qgKlT" id="3Qd3IVOIneO" role="2OqNvi">
            <ref role="37wK5l" to="4fey:3Qd3IVOHS$E" resolve="getPriority" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="3HBlKeoZiXw" role="1LiK7o">
        <node concept="1kIj98" id="3Qd3IVOFNl4" role="3EZMnx">
          <node concept="3F1sOY" id="3HBlKeoZiXB" role="1kIj9b">
            <ref role="1NtTu8" to="gpgy:3Qd3IVOFNnt" resolve="left" />
          </node>
        </node>
        <node concept="yw3OH" id="3Qd3IVOFIvR" role="3EZMnx">
          <node concept="1Lj6DL" id="3Qd3IVOFIw2" role="yw3OG">
            <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
            <node concept="1Lj6DC" id="3Qd3IVOFIw4" role="1Lj8FM">
              <node concept="3clFbS" id="3Qd3IVOFIw6" role="2VODD2">
                <node concept="3clFbF" id="3Qd3IVOFNLZ" role="3cqZAp">
                  <node concept="2OqwBi" id="3Qd3IVOFOfa" role="3clFbG">
                    <node concept="1Lj6YZ" id="3Qd3IVOFNLY" role="2Oq$k0" />
                    <node concept="3n3YKJ" id="3Qd3IVOFOZQ" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1kIj98" id="3Qd3IVOFNll" role="3EZMnx">
          <node concept="3F1sOY" id="3Qd3IVOFNlm" role="1kIj9b">
            <ref role="1NtTu8" to="gpgy:3Qd3IVOFNnv" resolve="right" />
          </node>
        </node>
        <node concept="l2Vlx" id="3HBlKeoZiXz" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="7GyesCp5_6g">
    <property role="TrG5h" value="STDefaultStyles" />
    <node concept="14StLt" id="3HBlKeoYLKT" role="V601i">
      <property role="TrG5h" value="Type" />
      <node concept="VechU" id="3HBlKeoYLL3" role="3F10Kt">
        <property role="Vb096" value="red" />
      </node>
      <node concept="Vb9p2" id="3HBlKeoYLLf" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="3HBlKeoYLK_" role="V601i">
      <property role="TrG5h" value="Keyword" />
      <node concept="VechU" id="3HBlKeoYLKH" role="3F10Kt">
        <property role="Vb096" value="red" />
      </node>
      <node concept="Vb9p2" id="3HBlKeoYLL9" role="3F10Kt">
        <property role="Vbekb" value="PLAIN" />
      </node>
    </node>
    <node concept="14StLt" id="7GyesCpx4MI" role="V601i">
      <property role="TrG5h" value="Operational" />
      <node concept="VechU" id="7GyesCpx4MJ" role="3F10Kt">
        <property role="Vb096" value="DARK_BLUE" />
      </node>
      <node concept="Vb9p2" id="7GyesCpx4MK" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9Ttd">
    <ref role="1XX52x" to="gpgy:7GyesCp9TmT" resolve="StatementList" />
    <node concept="3F2HdR" id="7GyesCp9Ttm" role="2wV5jI">
      <ref role="1NtTu8" to="gpgy:7GyesCp9TsM" resolve="statements" />
      <node concept="l2Vlx" id="7GyesCp9Tto" role="2czzBx" />
      <node concept="pj6Ft" id="7GyesCp9Ttt" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="3F0ifn" id="7GyesCp9Ttx" role="2czzBI">
        <property role="3F0ifm" value="" />
        <property role="ilYzB" value="no statements" />
        <node concept="Vb9p2" id="7GyesCplzfZ" role="3F10Kt">
          <property role="Vbekb" value="ITALIC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9Tus">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9Tu2" resolve="EmptyStatement" />
    <node concept="3F0ifn" id="7GyesCpdUBx" role="2wV5jI">
      <node concept="VPxyj" id="7GyesCpl1wL" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="7GyesCp9TuU">
    <property role="3GE5qa" value="statements" />
    <ref role="aqKnT" to="gpgy:7GyesCp9Tu2" resolve="EmptyStatement" />
  </node>
  <node concept="24kQdi" id="7GyesCp9Twf">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9TvI" resolve="AssigmentStatement" />
    <node concept="3EZMnI" id="7GyesCp9Txs" role="2wV5jI">
      <node concept="1kIj98" id="7GyesCp9Twt" role="3EZMnx">
        <node concept="3F1sOY" id="7GyesCp9Twz" role="1kIj9b">
          <ref role="1NtTu8" to="gpgy:7GyesCp9TvL" resolve="variable" />
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCp9TxA" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCp9TxK" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TvN" resolve="expression" />
      </node>
      <node concept="PMmxH" id="7GyesCpsaNL" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCp9Txv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9TKD">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9TKa" resolve="IfStatementElseifClause" />
    <node concept="3EZMnI" id="7GyesCp9TKF" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCp9TKM" role="3EZMnx">
        <property role="3F0ifm" value="ELSIF" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCp9TKS" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TKb" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="7GyesCp9TL0" role="3EZMnx">
        <property role="3F0ifm" value="THEN" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCp9TLg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCp9TLa" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TKd" resolve="body" />
        <node concept="lj46D" id="7GyesCp9TLi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7GyesCp9TKI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9TLV">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9TK7" resolve="IfStatement" />
    <node concept="3EZMnI" id="7GyesCp9TMv" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCp9TMw" role="3EZMnx">
        <property role="3F0ifm" value="IF" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCp9TMx" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TK8" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="7GyesCp9TMy" role="3EZMnx">
        <property role="3F0ifm" value="THEN" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCp9TMz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCp9TM$" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TLm" resolve="thenClause" />
        <node concept="lj46D" id="7GyesCp9TM_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCp9TMB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7GyesCp9TMY" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9TLp" resolve="elseifClauses" />
        <node concept="l2Vlx" id="7GyesCp9TN0" role="2czzBx" />
        <node concept="pj6Ft" id="7GyesCp9TNa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="7GyesCpq$x6" role="pqm2j">
          <node concept="3clFbS" id="7GyesCpq$x7" role="2VODD2">
            <node concept="3clFbF" id="7GyesCpq$Cs" role="3cqZAp">
              <node concept="2OqwBi" id="7GyesCpqA7q" role="3clFbG">
                <node concept="2OqwBi" id="7GyesCpq$PF" role="2Oq$k0">
                  <node concept="pncrf" id="7GyesCpq$Cr" role="2Oq$k0" />
                  <node concept="Bykcj" id="7GyesCpq_t7" role="2OqNvi">
                    <node concept="1aIX9F" id="7GyesCpq_t9" role="1xVPHs">
                      <node concept="26LbJo" id="7GyesCpq_M3" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:7GyesCp9TLp" resolve="elseifClauses" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="7GyesCpqBQJ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7GyesCp9TPC" role="3EZMnx">
        <node concept="VPM3Z" id="7GyesCp9TPE" role="3F10Kt" />
        <node concept="3F0ifn" id="7GyesCp9TNr" role="3EZMnx">
          <property role="3F0ifm" value="ELSE" />
          <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
          <node concept="ljvvj" id="7GyesCp9TOm" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="7GyesCp9TNR" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:7GyesCp9TLt" resolve="elseClause" />
          <node concept="lj46D" id="7GyesCp9TOB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="7GyesCp9TOG" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="7GyesCp9TPH" role="2iSdaV" />
        <node concept="pkWqt" id="7GyesCp9TQ4" role="pqm2j">
          <node concept="3clFbS" id="7GyesCp9TQ5" role="2VODD2">
            <node concept="3clFbF" id="7GyesCp9TXq" role="3cqZAp">
              <node concept="2OqwBi" id="7GyesCp9V82" role="3clFbG">
                <node concept="2OqwBi" id="7GyesCp9U9R" role="2Oq$k0">
                  <node concept="pncrf" id="7GyesCp9TXp" role="2Oq$k0" />
                  <node concept="Bykcj" id="7GyesCp9UtM" role="2OqNvi">
                    <node concept="1aIX9F" id="7GyesCp9UtO" role="1xVPHs">
                      <node concept="26LbJo" id="7GyesCp9UMG" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:7GyesCp9TLt" resolve="elseClause" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="7GyesCp9WVc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCp9TOl" role="3EZMnx">
        <property role="3F0ifm" value="ENDIF" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbpk" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCp9TMA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCp9Xat">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9Xas" resolve="CaseStatement" />
    <node concept="3EZMnI" id="7GyesCp9XaG" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCp9XaD" role="3EZMnx">
        <property role="3F0ifm" value="CASE" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="3F1sOY" id="7GyesCp9XaO" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9Xav" resolve="expression" />
      </node>
      <node concept="3F0ifn" id="7GyesCp9XaW" role="3EZMnx">
        <property role="3F0ifm" value="OF" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
        <node concept="ljvvj" id="7GyesCp9Xb6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7GyesCp9Xb8" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCp9Xax" resolve="cases" />
        <node concept="l2Vlx" id="7GyesCp9Xba" role="2czzBx" />
        <node concept="lj46D" id="7GyesCp9Xbh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="7GyesCp9Xbm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="7GyesCp9Xbs" role="2czzBI">
          <property role="3F0ifm" value="" />
        </node>
      </node>
      <node concept="3EZMnI" id="7GyesCp9Xcc" role="3EZMnx">
        <node concept="VPM3Z" id="7GyesCp9Xce" role="3F10Kt" />
        <node concept="lj46D" id="7GyesCp9Xcz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCp9XcF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="7GyesCpa2ka" role="3EZMnx">
          <property role="3F0ifm" value="ELSE" />
          <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0ifn" id="7GyesCpa3zT" role="3EZMnx">
          <property role="3F0ifm" value="-&gt;" />
          <node concept="ljvvj" id="7GyesCpa3zU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="7GyesCpa3zV" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:7GyesCp9Xa_" resolve="elseCase" />
          <node concept="lj46D" id="7GyesCpa3zW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="7GyesCp9Xch" role="2iSdaV" />
        <node concept="pkWqt" id="7GyesCp9XcK" role="pqm2j">
          <node concept="3clFbS" id="7GyesCp9XcL" role="2VODD2">
            <node concept="3clFbF" id="7GyesCp9Xk6" role="3cqZAp">
              <node concept="2OqwBi" id="7GyesCpa02f" role="3clFbG">
                <node concept="2OqwBi" id="7GyesCp9Xxl" role="2Oq$k0">
                  <node concept="pncrf" id="7GyesCp9Xk5" role="2Oq$k0" />
                  <node concept="Bykcj" id="7GyesCp9ZnT" role="2OqNvi">
                    <node concept="1aIX9F" id="7GyesCp9ZnV" role="1xVPHs">
                      <node concept="26LbJo" id="7GyesCp9ZGS" role="1aIX9E">
                        <ref role="26LbJp" to="gpgy:7GyesCp9Xa_" resolve="elseCase" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="7GyesCpa1Lx" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCpa3b0" role="3EZMnx">
        <property role="3F0ifm" value="END_CASE" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="PMmxH" id="7GyesCpsb7R" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCp9XaH" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpa3rq">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCp9Xa$" resolve="CaseElement" />
    <node concept="3EZMnI" id="7GyesCpa3rs" role="2wV5jI">
      <node concept="3F1sOY" id="7GyesCpa3rz" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpa3qW" resolve="element" />
      </node>
      <node concept="3F0ifn" id="7GyesCpa3rD" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
        <node concept="ljvvj" id="7GyesCpa3rQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCpa3rL" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpa3qY" resolve="body" />
        <node concept="lj46D" id="7GyesCpa3rS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7GyesCpa3rv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpa3NX">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpa3Nz" resolve="ReturnStatement" />
    <node concept="3EZMnI" id="7GyesCpsbys" role="2wV5jI">
      <node concept="l2Vlx" id="7GyesCpsbyt" role="2iSdaV" />
      <node concept="PMmxH" id="7GyesCpa3NZ" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" node="3HBlKeoYLK_" resolve="Keyword" />
      </node>
      <node concept="PMmxH" id="7GyesCpsby_" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpa3Or">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpa3O1" resolve="ExitStatement" />
    <node concept="3EZMnI" id="7GyesCpsbg3" role="2wV5jI">
      <node concept="PMmxH" id="7GyesCpa3Ot" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbgf" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCpsbg4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpem9n">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpem8O" resolve="ControlVariableDeclaration" />
    <node concept="3EZMnI" id="7GyesCpem9p" role="2wV5jI">
      <node concept="3F0A7n" id="7GyesCpem9w" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="7GyesCpem9A" role="3EZMnx">
        <property role="3F0ifm" value=":=" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpem9I" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpem8P" resolve="beginExpression" />
      </node>
      <node concept="3F0ifn" id="7GyesCpem9S" role="3EZMnx">
        <property role="3F0ifm" value="TO" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpema4" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpem8R" resolve="endExpression" />
      </node>
      <node concept="_tjkj" id="7GyesCpemai" role="3EZMnx">
        <node concept="3EZMnI" id="7GyesCpemat" role="_tjki">
          <node concept="3F0ifn" id="7GyesCpemaA" role="3EZMnx">
            <property role="3F0ifm" value="BY" />
            <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
          </node>
          <node concept="3F1sOY" id="7GyesCpemaG" role="3EZMnx">
            <ref role="1NtTu8" to="gpgy:7GyesCpem8U" resolve="byExpression" />
          </node>
          <node concept="l2Vlx" id="7GyesCpemaw" role="2iSdaV" />
          <node concept="VPM3Z" id="7GyesCpemax" role="3F10Kt" />
        </node>
      </node>
      <node concept="l2Vlx" id="7GyesCpem9s" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpgUag">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpa3Ov" resolve="ForStatement" />
    <node concept="3EZMnI" id="7GyesCpgUal" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCpgUas" role="3EZMnx">
        <property role="3F0ifm" value="FOR" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpgUay" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpemaK" resolve="var" />
      </node>
      <node concept="3F0ifn" id="7GyesCpgUaE" role="3EZMnx">
        <property role="3F0ifm" value="DO" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCpgUaU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCpgUaO" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpgU9O" resolve="body" />
        <node concept="lj46D" id="7GyesCpgUaW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCpgUbi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCpgUb6" role="3EZMnx">
        <property role="3F0ifm" value="END_FOR" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbgi" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCpgUao" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpj6w_">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpj6w6" resolve="WhileStatement" />
    <node concept="3EZMnI" id="7GyesCpj6wB" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCpj6wC" role="3EZMnx">
        <property role="3F0ifm" value="WHILE" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpj6wD" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpj6w7" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="7GyesCpj6wE" role="3EZMnx">
        <property role="3F0ifm" value="DO" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCpj6wF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCpj6wG" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpj6w9" resolve="body" />
        <node concept="lj46D" id="7GyesCpj6wH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCpj6wI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCpj6wJ" role="3EZMnx">
        <property role="3F0ifm" value="END_WHILE" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbyC" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCpj6wK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpj6xq">
    <property role="3GE5qa" value="statements" />
    <ref role="1XX52x" to="gpgy:7GyesCpj6wV" resolve="RepeatStatement" />
    <node concept="3EZMnI" id="7GyesCpj6xs" role="2wV5jI">
      <node concept="3F0ifn" id="7GyesCpj6xz" role="3EZMnx">
        <property role="3F0ifm" value="REPEAT" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        <node concept="ljvvj" id="7GyesCpj6ye" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="7GyesCpj6xD" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpj6wY" resolve="body" />
        <node concept="lj46D" id="7GyesCpj6yg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7GyesCpj6yl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7GyesCpj6xL" role="3EZMnx">
        <property role="3F0ifm" value="UNTIL" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="3F1sOY" id="7GyesCpj6xV" role="3EZMnx">
        <ref role="1NtTu8" to="gpgy:7GyesCpj6wW" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="7GyesCpj6y7" role="3EZMnx">
        <property role="3F0ifm" value="END_REPEAT" />
        <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
      </node>
      <node concept="PMmxH" id="7GyesCpsbyi" role="3EZMnx">
        <ref role="PMmxG" node="7GyesCpsa$X" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="7GyesCpj6xv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpmdvI">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:7GyesCpmdvk" resolve="NegExpression" />
    <node concept="1WcQYu" id="7GyesCpmdvU" role="2wV5jI">
      <node concept="2ElW$n" id="7GyesCpmdvV" role="2El2Yn" />
      <node concept="3EZMnI" id="7GyesCpmdw4" role="1LiK7o">
        <node concept="1kIj98" id="7GyesCpmdwh" role="3EZMnx">
          <node concept="3F0ifn" id="7GyesCpmdwo" role="1kIj9b">
            <property role="3F0ifm" value="-" />
            <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
            <node concept="11LMrY" id="7GyesCpmdwA" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="3F1sOY" id="7GyesCpmdwx" role="3EZMnx">
          <ref role="1NtTu8" to="gpgy:7GyesCpmdwr" resolve="expression" />
        </node>
        <node concept="l2Vlx" id="7GyesCpmdw7" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7GyesCpmdxh">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="gpgy:7GyesCpmdwR" resolve="NotExpression" />
    <node concept="1WcQYu" id="7GyesCpmdxv" role="2wV5jI">
      <node concept="2ElW$n" id="7GyesCpmdxw" role="2El2Yn">
        <node concept="3EZMnI" id="7GyesCprw0z" role="2ElW$Z">
          <node concept="3F0ifn" id="7GyesCprw0$" role="3EZMnx">
            <property role="3F0ifm" value="NOT" />
          </node>
          <node concept="3F1sOY" id="7GyesCprw13" role="3EZMnx">
            <ref role="1NtTu8" to="gpgy:7GyesCpmdxN" resolve="expression" />
          </node>
          <node concept="l2Vlx" id="7GyesCprw0B" role="2iSdaV" />
        </node>
      </node>
      <node concept="3EZMnI" id="7GyesCpmdxx" role="1LiK7o">
        <node concept="3F0ifn" id="7GyesCpmdxz" role="3EZMnx">
          <property role="3F0ifm" value="NOT" />
          <ref role="1k5W1q" node="7GyesCpx4MI" resolve="Operational" />
        </node>
        <node concept="1kIj98" id="7GyesCprw0j" role="3EZMnx">
          <node concept="3F1sOY" id="7GyesCprw0v" role="1kIj9b">
            <ref role="1NtTu8" to="gpgy:7GyesCpmdxN" resolve="expression" />
          </node>
        </node>
        <node concept="l2Vlx" id="7GyesCpmdxA" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="7GyesCpsa$X">
    <property role="TrG5h" value="Semicolon" />
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="3F0ifn" id="7GyesCpsa$Y" role="2wV5jI">
      <property role="3F0ifm" value=";" />
      <node concept="11L4FC" id="7GyesCpsa$Z" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="VechU" id="7GyesCpsa_j" role="3F10Kt">
        <property role="Vb096" value="lightGray" />
      </node>
    </node>
  </node>
</model>

