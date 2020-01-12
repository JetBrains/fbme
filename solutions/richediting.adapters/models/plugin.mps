<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(richediting.adapters.plugin)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ppqf" ref="r:bc5caf0f-df14-4a61-a09e-297c528e7095(richediting.adapters.inspections)" />
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="ubo9" ref="r:15c6feaa-d38f-494f-a105-0b74d654dd08(richediting.adapters.fb)" />
    <import index="vjnt" ref="r:dcc8041c-4feb-4a59-913c-c4ff83a14df3(richediting.adapters.fbnetwork)" />
    <import index="78d5" ref="r:d018f155-a8e1-4632-87ac-0cbc89a1f1c2(richediting.lang.editor)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.interfacepart)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(mps.iec61499.model.fbnetwork)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="o04u" ref="r:f0179f23-61bb-4719-8c52-ffe510b63d71(mps.ide.debugger)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(mps.iec61499.model.interfacepart)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="3s15" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench(MPS.Workbench/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="1204991940915" name="caption" index="2f7twF" />
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="1R4IoyRA8wZ">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="2uRRBy" id="7eBFChAk6_E">
    <property role="TrG5h" value="InspectionsManager" />
    <node concept="2uRRBT" id="7eBFChAkMK2" role="2uRRB$">
      <node concept="3clFbS" id="7eBFChAkMK3" role="2VODD2">
        <node concept="3cpWs8" id="7eBFChAkOBg" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAkOBh" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="7eBFChAkOBf" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="7eBFChAkOBi" role="33vP2m">
              <node concept="1KvdUw" id="7eBFChAkOBj" role="2Oq$k0" />
              <node concept="liA8E" id="7eBFChAkOBk" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7eBFChAkOBl" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eBFChAkMNA" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAkOJI" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAkOBm" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAkOBh" resolve="reg" />
            </node>
            <node concept="liA8E" id="7eBFChAkOQV" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.registerExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="registerExtension" />
              <node concept="10M0yZ" id="7eBFChAkQ4u" role="37wK5m">
                <ref role="3cqZAo" to="ppqf:7eBFChAkdvZ" resolve="EDITOR_EXTENSION" />
                <ref role="1PxDUh" to="ppqf:1R4IoyRpADU" resolve="InspectionManagerImpl" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="7eBFChAkQc4" role="2uRRB_">
      <node concept="3clFbS" id="7eBFChAkQc5" role="2VODD2">
        <node concept="3cpWs8" id="7eBFChAkQcx" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAkQcy" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="7eBFChAkQcz" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="7eBFChAkQc$" role="33vP2m">
              <node concept="1KvdUw" id="7eBFChAkQc_" role="2Oq$k0" />
              <node concept="liA8E" id="7eBFChAkQcA" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7eBFChAkQcB" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eBFChAkQcC" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAkQcD" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAkQcE" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAkQcy" resolve="reg" />
            </node>
            <node concept="liA8E" id="7eBFChAkQcF" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.unregisterExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="unregisterExtension" />
              <node concept="10M0yZ" id="7eBFChAkQcG" role="37wK5m">
                <ref role="3cqZAo" to="ppqf:7eBFChAkdvZ" resolve="EDITOR_EXTENSION" />
                <ref role="1PxDUh" to="ppqf:1R4IoyRpADU" resolve="InspectionManagerImpl" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3DiEZ8TM99k">
    <property role="TrG5h" value="FBAttributes" />
    <node concept="2tJIrI" id="3DiEZ8TM9ae" role="jymVt" />
    <node concept="Wx3nA" id="3DiEZ8TM9f3" role="jymVt">
      <property role="TrG5h" value="NETWORK" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3DiEZ8TM9aS" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TM9dK" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="3DiEZ8TM9eT" role="11_B2D">
          <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
        </node>
      </node>
      <node concept="10M0yZ" id="3DiEZ8TM9kK" role="33vP2m">
        <ref role="3cqZAo" to="78d5:3DiEZ8TM66d" resolve="FB_NETWORK_ATTR" />
        <ref role="1PxDUh" to="78d5:7oJsd9wVHpq" resolve="FBNetworkEditors" />
      </node>
    </node>
    <node concept="Wx3nA" id="3DiEZ8TM9th" role="jymVt">
      <property role="TrG5h" value="PORT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3DiEZ8TM9ti" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TM9tj" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="3DiEZ8TM9w9" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="10M0yZ" id="3DiEZ8TM9yD" role="33vP2m">
        <ref role="1PxDUh" to="ubo9:7qPnRGG6q3r" resolve="FBTypeCellComponent" />
        <ref role="3cqZAo" to="ubo9:3DiEZ8TJfwn" resolve="FB_PORT_ATTR" />
      </node>
    </node>
    <node concept="Wx3nA" id="3DiEZ8TM9F8" role="jymVt">
      <property role="TrG5h" value="TYPE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3DiEZ8TM9F9" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TM9Fa" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="3DiEZ8TM9H4" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
        </node>
      </node>
      <node concept="10M0yZ" id="3DiEZ8TM9IG" role="33vP2m">
        <ref role="1PxDUh" to="ubo9:7qPnRGG6q3r" resolve="FBTypeCellComponent" />
        <ref role="3cqZAo" to="ubo9:3DiEZ8TK8YC" resolve="FB_TYPE_ATTR" />
      </node>
    </node>
    <node concept="Wx3nA" id="3DiEZ8TO1Tb" role="jymVt">
      <property role="TrG5h" value="FB" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3DiEZ8TO1Tc" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TO1Td" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="3DiEZ8TO1VK" role="11_B2D">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
      </node>
      <node concept="10M0yZ" id="3DiEZ8TO3lX" role="33vP2m">
        <ref role="3cqZAo" to="vjnt:3DiEZ8TNK25" resolve="FB_INST_ATTR" />
        <ref role="1PxDUh" to="vjnt:3IX4BsK5Mi_" resolve="FBInstanceController" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3DiEZ8TM99l" role="1B3o_S" />
  </node>
  <node concept="2uRRBC" id="7TC3cEN$DDK">
    <property role="TrG5h" value="FBStyleAttributeRegistar" />
    <node concept="2uRRBj" id="7TC3cEN$DDL" role="2uRRBE">
      <node concept="3clFbS" id="7TC3cEN$DDM" role="2VODD2">
        <node concept="3clFbF" id="7TC3cEN$EMW" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$F5n" role="3clFbG">
            <node concept="10M0yZ" id="7TC3cEN$EO6" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
              <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZfW" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$Zh8" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$Zh9" role="3clFbG">
            <node concept="10M0yZ" id="7TC3cEN$Zp2" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TM9f3" resolve="NETWORK" />
              <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$Zhb" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$Zhr" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$Zhs" role="3clFbG">
            <node concept="10M0yZ" id="7TC3cEN$Zyn" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
              <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$Zhu" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$ZhM" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZhN" role="3clFbG">
            <node concept="10M0yZ" id="7TC3cEN$ZFG" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TM9F8" resolve="TYPE" />
              <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZhP" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="7TC3cEN$DE7" role="2uRRBF">
      <node concept="3clFbS" id="7TC3cEN$DE8" role="2VODD2">
        <node concept="3clFbF" id="7TC3cEN$ZNz" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZN$" role="3clFbG">
            <node concept="10M0yZ" id="7TC3cEN$ZN_" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
              <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZNA" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$ZNB" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZNC" role="3clFbG">
            <node concept="10M0yZ" id="7TC3cEN$ZND" role="2Oq$k0">
              <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
              <ref role="3cqZAo" node="3DiEZ8TM9f3" resolve="NETWORK" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZNE" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$ZNF" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZNG" role="3clFbG">
            <node concept="10M0yZ" id="7TC3cEN$ZNH" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
              <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZNI" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TC3cEN$ZNJ" role="3cqZAp">
          <node concept="2OqwBi" id="7TC3cEN$ZNK" role="3clFbG">
            <node concept="10M0yZ" id="7TC3cEN$ZNL" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TM9F8" resolve="TYPE" />
              <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
            </node>
            <node concept="liA8E" id="7TC3cEN$ZNM" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.unregister()" resolve="unregister" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3DiEZ8TMy35">
    <property role="TrG5h" value="Debug_DisableWatching" />
    <property role="2uzpH1" value="Disable Watching for Resource" />
    <node concept="2S4$dB" id="3DiEZ8TMy36" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="3DiEZ8TMy37" role="1B3o_S" />
      <node concept="1oajcY" id="3DiEZ8TMy38" role="1oa70y" />
      <node concept="3Tqbb2" id="3DiEZ8TMy39" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="3DiEZ8TMy3a" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="3DiEZ8TMy3b" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3DiEZ8TMy3c" role="tncku">
      <node concept="3clFbS" id="3DiEZ8TMy3d" role="2VODD2">
        <node concept="3cpWs8" id="3DiEZ8TMy3e" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TMy3f" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3DiEZ8TMy3g" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
            </node>
            <node concept="1PxgMI" id="3DiEZ8TMy3h" role="33vP2m">
              <node concept="chp4Y" id="3DiEZ8TMy3i" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
              </node>
              <node concept="2OqwBi" id="3DiEZ8TMy3j" role="1m5AlR">
                <node concept="2WthIp" id="3DiEZ8TMy3k" role="2Oq$k0" />
                <node concept="3gHZIF" id="3DiEZ8TMy3l" role="2OqNvi">
                  <ref role="2WH_rO" node="3DiEZ8TMy36" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TMy3m" role="3cqZAp" />
        <node concept="3cpWs8" id="3DiEZ8TMy3n" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TMy3o" role="3cpWs9">
            <property role="TrG5h" value="fbnetwork" />
            <node concept="3uibUv" id="3DiEZ8TMy3p" role="1tU5fm">
              <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
            </node>
            <node concept="2ShNRf" id="3DiEZ8TMy3q" role="33vP2m">
              <node concept="1pGfFk" id="3DiEZ8TMy3r" role="2ShVmc">
                <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
                <node concept="37vLTw" id="3DiEZ8TMy3s" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TMy3f" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3DiEZ8TMy3t" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TMy3u" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <node concept="3uibUv" id="3DiEZ8TMy3v" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRpAE3" resolve="InspectionManager" />
            </node>
            <node concept="2YIFZM" id="3DiEZ8TMy3w" role="33vP2m">
              <ref role="37wK5l" to="ppqf:7eBFChAmsKg" resolve="getInstance" />
              <ref role="1Pybhc" to="ppqf:1R4IoyRpADU" resolve="InspectionManagerImpl" />
              <node concept="2OqwBi" id="3DiEZ8TMy3x" role="37wK5m">
                <node concept="liA8E" id="3DiEZ8TMy3y" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getEditorComponent()" resolve="getEditorComponent" />
                </node>
                <node concept="2OqwBi" id="3DiEZ8TMy3z" role="2Oq$k0">
                  <node concept="2WthIp" id="3DiEZ8TMy3$" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3DiEZ8TMy3_" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TMy3a" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TMB_2" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TMBR6" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TMB_0" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TMy3u" resolve="manager" />
            </node>
            <node concept="liA8E" id="3DiEZ8TMD_G" role="2OqNvi">
              <ref role="37wK5l" to="ppqf:1R4IoyRpAYX" resolve="disposeInspection" />
              <node concept="37vLTw" id="3DiEZ8TMDAT" role="37wK5m">
                <ref role="3cqZAo" node="3DiEZ8TMy3o" resolve="fbnetwork" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3DiEZ8TMy3X" role="tmbBb">
      <node concept="3clFbS" id="3DiEZ8TMy3Y" role="2VODD2">
        <node concept="3clFbF" id="3DiEZ8TMy3Z" role="3cqZAp">
          <node concept="1Wc70l" id="3DiEZ8TMy40" role="3clFbG">
            <node concept="1Wc70l" id="3DiEZ8TMy41" role="3uHU7B">
              <node concept="3y3z36" id="3DiEZ8TMy42" role="3uHU7B">
                <node concept="10Nm6u" id="3DiEZ8TMy43" role="3uHU7w" />
                <node concept="2OqwBi" id="3DiEZ8TMy44" role="3uHU7B">
                  <node concept="2OqwBi" id="3DiEZ8TMy45" role="2Oq$k0">
                    <node concept="2OqwBi" id="3DiEZ8TMy46" role="2Oq$k0">
                      <node concept="2WthIp" id="3DiEZ8TMy47" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3DiEZ8TMy48" role="2OqNvi">
                        <ref role="2WH_rO" node="3DiEZ8TMy3a" resolve="cell" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3DiEZ8TMy49" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3DiEZ8TMy4a" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                    <node concept="10M0yZ" id="7TC3cEN_y8b" role="37wK5m">
                      <ref role="3cqZAo" node="3DiEZ8TM9f3" resolve="NETWORK" />
                      <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3DiEZ8TMzgF" role="3uHU7w">
                <node concept="2YIFZM" id="5PjcHHGcZc5" role="3uHU7B">
                  <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
                  <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
                  <node concept="2OqwBi" id="5PjcHHGcZrK" role="37wK5m">
                    <node concept="2WthIp" id="5PjcHHGcZrN" role="2Oq$k0" />
                    <node concept="3gHZIF" id="5PjcHHGcZrP" role="2OqNvi">
                      <ref role="2WH_rO" node="3DiEZ8TMy36" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="3DiEZ8TMy4k" role="3uHU7w" />
              </node>
            </node>
            <node concept="2OqwBi" id="3DiEZ8TMy4l" role="3uHU7w">
              <node concept="2OqwBi" id="3DiEZ8TMy4m" role="2Oq$k0">
                <node concept="2WthIp" id="3DiEZ8TMy4n" role="2Oq$k0" />
                <node concept="3gHZIF" id="3DiEZ8TMy4o" role="2OqNvi">
                  <ref role="2WH_rO" node="3DiEZ8TMy36" resolve="node" />
                </node>
              </node>
              <node concept="1mIQ4w" id="3DiEZ8TMy4p" role="2OqNvi">
                <node concept="chp4Y" id="3DiEZ8TMy4q" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3DiEZ8TMaHe">
    <property role="TrG5h" value="Debug_EnableWatching" />
    <property role="2uzpH1" value="Enable Watching for Resource" />
    <node concept="2S4$dB" id="3DiEZ8TMaKP" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="3DiEZ8TMaKQ" role="1B3o_S" />
      <node concept="1oajcY" id="3DiEZ8TMaKR" role="1oa70y" />
      <node concept="3Tqbb2" id="3DiEZ8TMaH_" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="3DiEZ8TMdTf" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="3DiEZ8TMdTg" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3DiEZ8TMaHf" role="tncku">
      <node concept="3clFbS" id="3DiEZ8TMaHg" role="2VODD2">
        <node concept="3cpWs8" id="3DiEZ8TMtGg" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TMtGh" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3DiEZ8TMtGb" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
            </node>
            <node concept="1PxgMI" id="3DiEZ8TMtGi" role="33vP2m">
              <node concept="chp4Y" id="3DiEZ8TMtGj" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
              </node>
              <node concept="2OqwBi" id="3DiEZ8TMtGk" role="1m5AlR">
                <node concept="2WthIp" id="3DiEZ8TMtGl" role="2Oq$k0" />
                <node concept="3gHZIF" id="3DiEZ8TMtGm" role="2OqNvi">
                  <ref role="2WH_rO" node="3DiEZ8TMaKP" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TMsWo" role="3cqZAp" />
        <node concept="3cpWs8" id="1R4IoyRvbOP" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvbOQ" role="3cpWs9">
            <property role="TrG5h" value="fbnetwork" />
            <node concept="3uibUv" id="1R4IoyRvbY8" role="1tU5fm">
              <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
            </node>
            <node concept="2ShNRf" id="1R4IoyRvbOR" role="33vP2m">
              <node concept="1pGfFk" id="1R4IoyRvbOS" role="2ShVmc">
                <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
                <node concept="37vLTw" id="3DiEZ8TMtQK" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TMtGh" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRvckb" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvckc" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <node concept="3uibUv" id="1R4IoyRvcka" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRpAE3" resolve="InspectionManager" />
            </node>
            <node concept="2YIFZM" id="7eBFChAmu8L" role="33vP2m">
              <ref role="1Pybhc" to="ppqf:1R4IoyRpADU" resolve="InspectionManagerImpl" />
              <ref role="37wK5l" to="ppqf:7eBFChAmsKg" resolve="getInstance" />
              <node concept="2OqwBi" id="7eBFChAmuCc" role="37wK5m">
                <node concept="liA8E" id="7eBFChAmv6c" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getEditorComponent()" resolve="getEditorComponent" />
                </node>
                <node concept="2OqwBi" id="3DiEZ8TMwWH" role="2Oq$k0">
                  <node concept="2WthIp" id="3DiEZ8TMwWK" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3DiEZ8TMwWM" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TMdTf" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRvdob" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvdoc" role="3cpWs9">
            <property role="TrG5h" value="inspectionProvider" />
            <node concept="3uibUv" id="1R4IoyRvdo3" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRvdod" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRvdoe" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRvckc" resolve="manager" />
              </node>
              <node concept="liA8E" id="1R4IoyRvdof" role="2OqNvi">
                <ref role="37wK5l" to="ppqf:1R4IoyRpAFf" resolve="provideInspection" />
                <node concept="37vLTw" id="1R4IoyRvdog" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRvbOQ" resolve="fbnetwork" />
                </node>
                <node concept="1bVj0M" id="1R4IoyRvdoh" role="37wK5m">
                  <node concept="3clFbS" id="1R4IoyRvdoi" role="1bW5cS">
                    <node concept="3clFbF" id="1R4IoyRvdoj" role="3cqZAp">
                      <node concept="2YIFZM" id="5PjcHHGd3dp" role="3clFbG">
                        <ref role="37wK5l" node="5PjcHHGd0Iw" resolve="setInspectionProvider" />
                        <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
                        <node concept="2OqwBi" id="5PjcHHGd3dq" role="37wK5m">
                          <node concept="2WthIp" id="5PjcHHGd3dr" role="2Oq$k0" />
                          <node concept="3gHZIF" id="5PjcHHGd3ds" role="2OqNvi">
                            <ref role="2WH_rO" node="3DiEZ8TMaKP" resolve="node" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="5PjcHHGd3Pa" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRvaFp" role="3cqZAp">
          <node concept="2YIFZM" id="5PjcHHGd48M" role="3clFbG">
            <ref role="37wK5l" node="5PjcHHGd0Iw" resolve="setInspectionProvider" />
            <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
            <node concept="2OqwBi" id="5PjcHHGd48N" role="37wK5m">
              <node concept="2WthIp" id="5PjcHHGd48O" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGd48P" role="2OqNvi">
                <ref role="2WH_rO" node="3DiEZ8TMaKP" resolve="node" />
              </node>
            </node>
            <node concept="37vLTw" id="5PjcHHGd4sJ" role="37wK5m">
              <ref role="3cqZAo" node="1R4IoyRvdoc" resolve="inspectionProvider" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3DiEZ8TMaLf" role="tmbBb">
      <node concept="3clFbS" id="3DiEZ8TMaLg" role="2VODD2">
        <node concept="3clFbF" id="1R4IoyRv90E" role="3cqZAp">
          <node concept="1Wc70l" id="3DiEZ8TMpZO" role="3clFbG">
            <node concept="1Wc70l" id="1R4IoyRvfKB" role="3uHU7B">
              <node concept="3y3z36" id="3DiEZ8TMnAP" role="3uHU7B">
                <node concept="10Nm6u" id="3DiEZ8TMnP4" role="3uHU7w" />
                <node concept="2OqwBi" id="3DiEZ8TMfWy" role="3uHU7B">
                  <node concept="2OqwBi" id="3DiEZ8TMfjY" role="2Oq$k0">
                    <node concept="2OqwBi" id="3DiEZ8TMep6" role="2Oq$k0">
                      <node concept="2WthIp" id="3DiEZ8TMep9" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3DiEZ8TMepb" role="2OqNvi">
                        <ref role="2WH_rO" node="3DiEZ8TMdTf" resolve="cell" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3DiEZ8TMfEF" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3DiEZ8TMgk3" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                    <node concept="10M0yZ" id="7TC3cEN_wPA" role="37wK5m">
                      <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                      <ref role="3cqZAo" node="3DiEZ8TM9f3" resolve="NETWORK" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="1R4IoyRvkjj" role="3uHU7w">
                <node concept="10Nm6u" id="1R4IoyRvkx0" role="3uHU7w" />
                <node concept="2YIFZM" id="5PjcHHGd0ih" role="3uHU7B">
                  <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
                  <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
                  <node concept="2OqwBi" id="5PjcHHGd0ii" role="37wK5m">
                    <node concept="2WthIp" id="5PjcHHGd0ij" role="2Oq$k0" />
                    <node concept="3gHZIF" id="5PjcHHGd0ik" role="2OqNvi">
                      <ref role="2WH_rO" node="3DiEZ8TMaKP" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3DiEZ8TMb88" role="3uHU7w">
              <node concept="2OqwBi" id="3DiEZ8TMaVR" role="2Oq$k0">
                <node concept="2WthIp" id="3DiEZ8TMaVU" role="2Oq$k0" />
                <node concept="3gHZIF" id="3DiEZ8TMaVW" role="2OqNvi">
                  <ref role="2WH_rO" node="3DiEZ8TMaKP" resolve="node" />
                </node>
              </node>
              <node concept="1mIQ4w" id="3DiEZ8TMcnw" role="2OqNvi">
                <node concept="chp4Y" id="3DiEZ8TMc$q" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3DiEZ8TIFei">
    <property role="TrG5h" value="Debug_WatchPort" />
    <property role="2uzpH1" value="Watch for Port" />
    <node concept="tnohg" id="3DiEZ8TIFej" role="tncku">
      <node concept="3clFbS" id="3DiEZ8TIFek" role="2VODD2">
        <node concept="3clFbF" id="5PjcHHGec9h" role="3cqZAp">
          <node concept="2YIFZM" id="5PjcHHGecwQ" role="3clFbG">
            <ref role="37wK5l" node="5PjcHHGcB40" resolve="watchPort" />
            <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
            <node concept="2OqwBi" id="5PjcHHGf0Mj" role="37wK5m">
              <node concept="2WthIp" id="5PjcHHGf0Mk" role="2Oq$k0" />
              <node concept="2XshWL" id="5PjcHHGf0Ml" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Dz" resolve="resource" />
              </node>
            </node>
            <node concept="2OqwBi" id="5PjcHHGecVj" role="37wK5m">
              <node concept="2WthIp" id="5PjcHHGecDC" role="2Oq$k0" />
              <node concept="1DTwFV" id="5PjcHHGedi9" role="2OqNvi">
                <ref role="2WH_rO" node="3DiEZ8TIO$g" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="3DiEZ8TIFGm" role="tmbBb">
      <node concept="3clFbS" id="3DiEZ8TIFGn" role="2VODD2">
        <node concept="3cpWs8" id="3DiEZ8TIH7W" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TIH7X" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="3DiEZ8TIH7U" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="3DiEZ8TIH7Y" role="33vP2m">
              <node concept="tl45R" id="3DiEZ8TIH7Z" role="2Oq$k0" />
              <node concept="liA8E" id="3DiEZ8TIH80" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7BKWMw_X_7u" role="3cqZAp">
          <node concept="3cpWsn" id="7BKWMw_X_7v" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="7BKWMw_X_7t" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
            </node>
            <node concept="2OqwBi" id="7BKWMw_X_7w" role="33vP2m">
              <node concept="2WthIp" id="7BKWMw_X_7x" role="2Oq$k0" />
              <node concept="2XshWL" id="7BKWMw_X_7y" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Dz" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7BKWMw_XAce" role="3cqZAp">
          <node concept="3clFbS" id="7BKWMw_XAcg" role="3clFbx">
            <node concept="3clFbF" id="7BKWMw_XB2v" role="3cqZAp">
              <node concept="2OqwBi" id="7BKWMw_XB2w" role="3clFbG">
                <node concept="37vLTw" id="7BKWMw_XB2x" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DiEZ8TIH7X" resolve="presentation" />
                </node>
                <node concept="liA8E" id="7BKWMw_XB2y" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
                  <node concept="3clFbT" id="7BKWMw_XB5y" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7BKWMw_XBb8" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7BKWMw_XABN" role="3clFbw">
            <node concept="10Nm6u" id="7BKWMw_XAMI" role="3uHU7w" />
            <node concept="37vLTw" id="7BKWMw_XAkq" role="3uHU7B">
              <ref role="3cqZAo" node="7BKWMw_X_7v" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGe9CD" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGe9CE" role="3cpWs9">
            <property role="TrG5h" value="hasPortToWatch" />
            <node concept="10P_77" id="5PjcHHGe9C$" role="1tU5fm" />
            <node concept="2YIFZM" id="5PjcHHGe9CF" role="33vP2m">
              <ref role="37wK5l" node="5PjcHHGcD9B" resolve="hasPortToWatch" />
              <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
              <node concept="37vLTw" id="7BKWMw_X_7z" role="37wK5m">
                <ref role="3cqZAo" node="7BKWMw_X_7v" resolve="node" />
              </node>
              <node concept="2OqwBi" id="5PjcHHGe9CG" role="37wK5m">
                <node concept="2WthIp" id="5PjcHHGe9CH" role="2Oq$k0" />
                <node concept="1DTwFV" id="5PjcHHGe9CI" role="2OqNvi">
                  <ref role="2WH_rO" node="3DiEZ8TIO$g" resolve="cell" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3DiEZ8TKUa5" role="3cqZAp">
          <node concept="3clFbS" id="3DiEZ8TKUa7" role="3clFbx">
            <node concept="3clFbF" id="3DiEZ8TIFQV" role="3cqZAp">
              <node concept="2OqwBi" id="3DiEZ8TIHhV" role="3clFbG">
                <node concept="37vLTw" id="3DiEZ8TIH81" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DiEZ8TIH7X" resolve="presentation" />
                </node>
                <node concept="liA8E" id="3DiEZ8TIHsx" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="3DiEZ8TL3ab" role="37wK5m">
                    <node concept="Xl_RD" id="3DiEZ8TIMCI" role="3uHU7B">
                      <property role="Xl_RC" value="Watch for Port " />
                    </node>
                    <node concept="2YIFZM" id="5PjcHHGdZmx" role="3uHU7w">
                      <ref role="37wK5l" node="5PjcHHGdY9q" resolve="portToWatch" />
                      <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
                      <node concept="2OqwBi" id="5PjcHHGdZMW" role="37wK5m">
                        <node concept="2WthIp" id="5PjcHHGdZsq" role="2Oq$k0" />
                        <node concept="1DTwFV" id="5PjcHHGe09L" role="2OqNvi">
                          <ref role="2WH_rO" node="3DiEZ8TIO$g" resolve="cell" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5PjcHHGeb$Y" role="3clFbw">
            <ref role="3cqZAo" node="5PjcHHGe9CE" resolve="hasPortToWatch" />
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TLpjH" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TLpxr" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TLpjF" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TIH7X" resolve="presentation" />
            </node>
            <node concept="liA8E" id="3DiEZ8TLpG1" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="37vLTw" id="5PjcHHGebGU" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGe9CE" resolve="hasPortToWatch" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="3DiEZ8TMGQ_" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="3DiEZ8TMGQA" role="1B3o_S" />
      <node concept="1oajcY" id="3DiEZ8TMGQB" role="1oa70y" />
      <node concept="3Tqbb2" id="3DiEZ8TMGN2" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="3DiEZ8TIO$g" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="3DiEZ8TIO$h" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="5PjcHHGf0Dz" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="5PjcHHGf0D$" role="1B3o_S" />
      <node concept="3Tqbb2" id="5PjcHHGf0D_" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
      </node>
      <node concept="3clFbS" id="5PjcHHGf0Cl" role="3clF47">
        <node concept="3cpWs6" id="5PjcHHGf0CS" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGf0CT" role="3cqZAk">
            <node concept="2OqwBi" id="5PjcHHGf0CU" role="2Oq$k0">
              <node concept="2WthIp" id="5PjcHHGf0CV" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGf0CW" role="2OqNvi">
                <ref role="2WH_rO" node="3DiEZ8TMGQ_" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5PjcHHGf0CX" role="2OqNvi">
              <node concept="1xMEDy" id="5PjcHHGf0CY" role="1xVPHs">
                <node concept="chp4Y" id="5PjcHHGf0CZ" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="3DiEZ8TON84">
    <property role="TrG5h" value="IEC61499Actions" />
    <property role="2f7twF" value="Debug" />
    <node concept="ftmFs" id="3DiEZ8TON86" role="ftER_">
      <node concept="tCFHf" id="44qSI5$Vldw" role="ftvYc">
        <ref role="tCJdB" node="44qSI5$V0ef" resolve="DeployResource" />
      </node>
      <node concept="2a7GMi" id="44qSI5$VldK" role="ftvYc" />
      <node concept="tCFHf" id="uP0FLzWYpv" role="ftvYc">
        <ref role="tCJdB" node="uP0FLzNOoL" resolve="AddConstantToPort" />
      </node>
      <node concept="2a7GMi" id="uP0FLzWYpj" role="ftvYc" />
      <node concept="tCFHf" id="3DiEZ8TON89" role="ftvYc">
        <ref role="tCJdB" node="3DiEZ8TMy35" resolve="Debug_DisableWatching" />
      </node>
      <node concept="tCFHf" id="3DiEZ8TON8e" role="ftvYc">
        <ref role="tCJdB" node="3DiEZ8TMaHe" resolve="Debug_EnableWatching" />
      </node>
      <node concept="tCFHf" id="3DiEZ8TON8m" role="ftvYc">
        <ref role="tCJdB" node="3DiEZ8TIFei" resolve="Debug_WatchPort" />
      </node>
      <node concept="tCFHf" id="2nz0_8qr3U8" role="ftvYc">
        <ref role="tCJdB" node="5PjcHHGf0WD" resolve="Debug_UnwatchPort" />
      </node>
      <node concept="tCFHf" id="2nz0_8qr3U$" role="ftvYc">
        <ref role="tCJdB" node="5PjcHHGf4rU" resolve="Debug_WatchECCState" />
      </node>
      <node concept="tCFHf" id="2nz0_8qr3UU" role="ftvYc">
        <ref role="tCJdB" node="5PjcHHGgRM$" resolve="Debug_UnwatchECCState" />
      </node>
    </node>
    <node concept="tT9cl" id="3DiEZ8TON8r" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
    </node>
  </node>
  <node concept="Qs71p" id="1R4IoyRvaVM">
    <property role="TrG5h" value="NetworkObserved" />
    <node concept="3Tm1VV" id="1R4IoyRvaVN" role="1B3o_S" />
    <node concept="QsSxf" id="1R4IoyRvaYO" role="Qtgdg">
      <property role="TrG5h" value="KEY" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
  </node>
  <node concept="sE7Ow" id="uP0FLzNOoL">
    <property role="TrG5h" value="AddConstantToPort" />
    <property role="2uzpH1" value="Add Constant" />
    <node concept="1DS2jV" id="uP0FLzNP3X" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="uP0FLzNP3Y" role="1oa70y" />
    </node>
    <node concept="tnohg" id="uP0FLzNOoM" role="tncku">
      <node concept="3clFbS" id="uP0FLzNOoN" role="2VODD2">
        <node concept="3cpWs8" id="uP0FLzO7Ei" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzO7Ej" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="uP0FLzO7Ek" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="uP0FLzO7El" role="33vP2m">
              <node concept="2OqwBi" id="uP0FLzO7Em" role="2Oq$k0">
                <node concept="2WthIp" id="uP0FLzO7En" role="2Oq$k0" />
                <node concept="1DTwFV" id="uP0FLzO7Eo" role="2OqNvi">
                  <ref role="2WH_rO" node="uP0FLzNP3X" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="uP0FLzO7Ep" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="uP0FLzQijH" role="3cqZAp" />
        <node concept="3cpWs8" id="uP0FLzQhX4" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzQhX5" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="uP0FLzQhX6" role="1tU5fm">
              <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="uP0FLzQhX7" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzQhX8" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzO7Ej" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzQhX9" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="uP0FLzQhXa" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TM9f3" resolve="NETWORK" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uP0FLzO7Eq" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzO7Er" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="uP0FLzO7Es" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="uP0FLzO7Et" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzO7Eu" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzO7Ej" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzO7Ev" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="uP0FLzO7Ew" role="37wK5m">
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uP0FLzO7Ex" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzO7Ey" role="3cpWs9">
            <property role="TrG5h" value="portDecl" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="uP0FLzO7Ez" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="uP0FLzO7E$" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzO7E_" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzO7Ej" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzO7EA" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="uP0FLzO7EB" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="uP0FLzO7IJ" role="3cqZAp" />
        <node concept="3cpWs8" id="uP0FLzQhgG" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzQhgJ" role="3cpWs9">
            <property role="TrG5h" value="networkNode" />
            <node concept="3Tqbb2" id="uP0FLzQhgE" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
            </node>
            <node concept="1PxgMI" id="uP0FLzQjtF" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="uP0FLzQjxv" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
              </node>
              <node concept="2OqwBi" id="uP0FLzQjtH" role="1m5AlR">
                <node concept="1eOMI4" id="uP0FLzQjtI" role="2Oq$k0">
                  <node concept="10QFUN" id="uP0FLzQjtJ" role="1eOMHV">
                    <node concept="3uibUv" id="uP0FLzQjtK" role="10QFUM">
                      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
                    </node>
                    <node concept="37vLTw" id="uP0FLzWWRx" role="10QFUP">
                      <ref role="3cqZAo" node="uP0FLzQhX5" resolve="network" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="uP0FLzQjtM" role="2OqNvi">
                  <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uP0FLzOJ11" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzOJ14" role="3cpWs9">
            <property role="TrG5h" value="fbNode" />
            <node concept="3Tqbb2" id="uP0FLzOJ0Z" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
            </node>
            <node concept="1PxgMI" id="uP0FLzPziV" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="uP0FLzPzkp" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
              <node concept="2OqwBi" id="uP0FLzOJsc" role="1m5AlR">
                <node concept="1eOMI4" id="uP0FLzP6hU" role="2Oq$k0">
                  <node concept="10QFUN" id="uP0FLzP6iK" role="1eOMHV">
                    <node concept="3uibUv" id="uP0FLzP6uc" role="10QFUM">
                      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
                    </node>
                    <node concept="37vLTw" id="uP0FLzOJi4" role="10QFUP">
                      <ref role="3cqZAo" node="uP0FLzO7Er" resolve="fb" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="uP0FLzPtm2" role="2OqNvi">
                  <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2CN1Od1giy3" role="3cqZAp">
          <node concept="3cpWsn" id="2CN1Od1giy4" role="3cpWs9">
            <property role="TrG5h" value="portDeclNode" />
            <node concept="3Tqbb2" id="2CN1Od1gixK" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
            </node>
            <node concept="1y4W85" id="2CN1Od1giy5" role="33vP2m">
              <node concept="2OqwBi" id="2CN1Od1giy6" role="1y58nS">
                <node concept="37vLTw" id="2CN1Od1giy7" role="2Oq$k0">
                  <ref role="3cqZAo" node="uP0FLzO7Ey" resolve="portDecl" />
                </node>
                <node concept="liA8E" id="2CN1Od1giy8" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:3DiEZ8TNgqG" resolve="getPosition" />
                </node>
              </node>
              <node concept="2OqwBi" id="2CN1Od1giy9" role="1y566C">
                <node concept="2OqwBi" id="2CN1Od1giya" role="2Oq$k0">
                  <node concept="37vLTw" id="2CN1Od1giyb" role="2Oq$k0">
                    <ref role="3cqZAo" node="uP0FLzOJ14" resolve="fbNode" />
                  </node>
                  <node concept="3TrEf2" id="2CN1Od1giyc" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="2CN1Od1giyd" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="uP0FLzOvCG" role="3cqZAp" />
        <node concept="3cpWs8" id="uP0FLzRle8" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzRle9" role="3cpWs9">
            <property role="TrG5h" value="conn" />
            <node concept="3Tqbb2" id="uP0FLzRldx" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
            </node>
            <node concept="2OqwBi" id="uP0FLzRlea" role="33vP2m">
              <node concept="2OqwBi" id="uP0FLzRleb" role="2Oq$k0">
                <node concept="37vLTw" id="uP0FLzRlec" role="2Oq$k0">
                  <ref role="3cqZAo" node="uP0FLzQhgJ" resolve="networkNode" />
                </node>
                <node concept="3Tsc0h" id="uP0FLzRled" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                </node>
              </node>
              <node concept="WFELt" id="uP0FLzRlee" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uP0FLzQlk6" role="3cqZAp">
          <node concept="2OqwBi" id="uP0FLzStg5" role="3clFbG">
            <node concept="2OqwBi" id="uP0FLzRm4H" role="2Oq$k0">
              <node concept="37vLTw" id="uP0FLzRlef" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzRle9" resolve="conn" />
              </node>
              <node concept="3TrEf2" id="uP0FLzRmlO" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
              </node>
            </node>
            <node concept="zfrQC" id="uP0FLzT$uA" role="2OqNvi">
              <ref role="1A9B2P" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uP0FLzT$ZE" role="3cqZAp">
          <node concept="2OqwBi" id="uP0FLzVNrW" role="3clFbG">
            <node concept="2OqwBi" id="uP0FLzT_xx" role="2Oq$k0">
              <node concept="37vLTw" id="uP0FLzT$ZC" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzRle9" resolve="conn" />
              </node>
              <node concept="3TrEf2" id="uP0FLzUGvR" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
              </node>
            </node>
            <node concept="2oxUTD" id="uP0FLzWUEt" role="2OqNvi">
              <node concept="2pJPEk" id="uP0FLzWUIn" role="2oxUTC">
                <node concept="2pJPED" id="uP0FLzWUNa" role="2pJPEn">
                  <ref role="2pJxaS" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                  <node concept="2pIpSj" id="uP0FLzWUZb" role="2pJxcM">
                    <ref role="2pIpSl" to="xiqq:PI_pXYus3R" resolve="component" />
                    <node concept="36biLy" id="uP0FLzWV5j" role="2pJxcZ">
                      <node concept="37vLTw" id="uP0FLzWV8m" role="36biLW">
                        <ref role="3cqZAo" node="uP0FLzOJ14" resolve="fbNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="uP0FLzWVgF" role="2pJxcM">
                    <ref role="2pIpSl" to="xiqq:PI_pXYus3O" resolve="declaration" />
                    <node concept="36biLy" id="uP0FLzWVkB" role="2pJxcZ">
                      <node concept="37vLTw" id="2CN1Od1gk3j" role="36biLW">
                        <ref role="3cqZAo" node="2CN1Od1giy4" resolve="portDeclNode" />
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
    <node concept="2ScWuX" id="uP0FLzNSk9" role="tmbBb">
      <node concept="3clFbS" id="uP0FLzNSka" role="2VODD2">
        <node concept="3cpWs8" id="uP0FLzNW37" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzNW38" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="uP0FLzNW32" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="uP0FLzNW39" role="33vP2m">
              <node concept="2OqwBi" id="uP0FLzNW3a" role="2Oq$k0">
                <node concept="2WthIp" id="uP0FLzNW3b" role="2Oq$k0" />
                <node concept="1DTwFV" id="uP0FLzNW3c" role="2OqNvi">
                  <ref role="2WH_rO" node="uP0FLzNP3X" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="uP0FLzNW3d" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uP0FLzPzS_" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzPzSA" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="uP0FLzPzS7" role="1tU5fm">
              <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="uP0FLzPzSB" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzPzSC" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzNW38" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzPzSD" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="uP0FLzPzSE" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TM9f3" resolve="NETWORK" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uP0FLzPAe_" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzPAeA" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="uP0FLzPAey" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="uP0FLzPAeB" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzPAeC" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzNW38" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzPAeD" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="uP0FLzPAeE" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="uP0FLzPAPY" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzPAPZ" role="3cpWs9">
            <property role="TrG5h" value="portDecl" />
            <node concept="3uibUv" id="uP0FLzPAPT" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="uP0FLzPAQ0" role="33vP2m">
              <node concept="37vLTw" id="uP0FLzPAQ1" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzNW38" resolve="style" />
              </node>
              <node concept="liA8E" id="uP0FLzPAQ2" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="uP0FLzPAQ3" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="uP0FLzNV2K" role="3cqZAp">
          <node concept="1Wc70l" id="uP0FLzQ6Ib" role="3clFbG">
            <node concept="3clFbC" id="uP0FLzQeur" role="3uHU7w">
              <node concept="Rm8GO" id="uP0FLzQg3c" role="3uHU7w">
                <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
              </node>
              <node concept="2OqwBi" id="uP0FLzQ7kn" role="3uHU7B">
                <node concept="37vLTw" id="uP0FLzQ6Yo" role="2Oq$k0">
                  <ref role="3cqZAo" node="uP0FLzPAPZ" resolve="portDecl" />
                </node>
                <node concept="liA8E" id="uP0FLzQ7HO" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:5fP$XwiOazh" resolve="getConnecitonKind" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="uP0FLzPD5j" role="3uHU7B">
              <node concept="1Wc70l" id="uP0FLzNV2M" role="3uHU7B">
                <node concept="1Wc70l" id="uP0FLzOHBF" role="3uHU7B">
                  <node concept="3y3z36" id="uP0FLzNV2N" role="3uHU7B">
                    <node concept="37vLTw" id="uP0FLzPzSF" role="3uHU7B">
                      <ref role="3cqZAo" node="uP0FLzPzSA" resolve="network" />
                    </node>
                    <node concept="10Nm6u" id="uP0FLzNV2O" role="3uHU7w" />
                  </node>
                  <node concept="3y3z36" id="uP0FLzOHPm" role="3uHU7w">
                    <node concept="37vLTw" id="uP0FLzPAeF" role="3uHU7B">
                      <ref role="3cqZAo" node="uP0FLzPAeA" resolve="fb" />
                    </node>
                    <node concept="10Nm6u" id="uP0FLzOHPr" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3y3z36" id="uP0FLzO2ZW" role="3uHU7w">
                  <node concept="37vLTw" id="uP0FLzPAQ4" role="3uHU7B">
                    <ref role="3cqZAo" node="uP0FLzPAPZ" resolve="portDecl" />
                  </node>
                  <node concept="10Nm6u" id="uP0FLzO3Pc" role="3uHU7w" />
                </node>
              </node>
              <node concept="2OqwBi" id="uP0FLzPDEi" role="3uHU7w">
                <node concept="37vLTw" id="uP0FLzPDkF" role="2Oq$k0">
                  <ref role="3cqZAo" node="uP0FLzPAPZ" resolve="portDecl" />
                </node>
                <node concept="liA8E" id="uP0FLzQ0uG" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:3DiEZ8TNwDw" resolve="isInput" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="44qSI5$V0ef">
    <property role="TrG5h" value="DeployResource" />
    <property role="2uzpH1" value="Deploy Resource" />
    <node concept="tnohg" id="44qSI5$V0eg" role="tncku">
      <node concept="3clFbS" id="44qSI5$V0eh" role="2VODD2">
        <node concept="3cpWs8" id="44qSI5$Vjux" role="3cqZAp">
          <node concept="3cpWsn" id="44qSI5$Vju$" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="44qSI5$Vjuv" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
            </node>
            <node concept="1PxgMI" id="44qSI5$Vk3R" role="33vP2m">
              <node concept="chp4Y" id="44qSI5$Vk5T" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
              </node>
              <node concept="2OqwBi" id="44qSI5$Vjz_" role="1m5AlR">
                <node concept="2WthIp" id="44qSI5$VjzA" role="2Oq$k0" />
                <node concept="3gHZIF" id="44qSI5$VjzB" role="2OqNvi">
                  <ref role="2WH_rO" node="44qSI5$VfWX" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="4uvvnUOsm5e" role="3cqZAp">
          <node concept="3clFbS" id="4uvvnUOsm5g" role="SfCbr">
            <node concept="3cpWs8" id="42vv4xsG7_$" role="3cqZAp">
              <node concept="3cpWsn" id="42vv4xsG7__" role="3cpWs9">
                <property role="TrG5h" value="device" />
                <node concept="3Tqbb2" id="42vv4xsG7_y" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                </node>
                <node concept="1PxgMI" id="42vv4xsG7_A" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="42vv4xsG7_B" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                  </node>
                  <node concept="2OqwBi" id="42vv4xsG7_C" role="1m5AlR">
                    <node concept="1mfA1w" id="42vv4xsG7_E" role="2OqNvi" />
                    <node concept="37vLTw" id="44qSI5$Vk9G" role="2Oq$k0">
                      <ref role="3cqZAo" node="44qSI5$Vju$" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4uvvnUOsgMT" role="3cqZAp">
              <node concept="3cpWsn" id="4uvvnUOsgMU" role="3cpWs9">
                <property role="TrG5h" value="connection" />
                <node concept="3uibUv" id="42vv4xsG5hg" role="1tU5fm">
                  <ref role="3uigEE" to="o04u:7pEplJkHbDy" resolve="DeviceConnection" />
                </node>
                <node concept="2OqwBi" id="42vv4xsG1VN" role="33vP2m">
                  <node concept="2YIFZM" id="42vv4xsG1ZF" role="2Oq$k0">
                    <ref role="1Pybhc" to="o04u:3wAsKTkhPuA" resolve="DevicesFacade" />
                    <ref role="37wK5l" to="o04u:42vv4xsA5S3" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="42vv4xsG54M" role="2OqNvi">
                    <ref role="37wK5l" to="o04u:42vv4xs$B7p" resolve="attach" />
                    <node concept="37vLTw" id="42vv4xsG7_F" role="37wK5m">
                      <ref role="3cqZAo" node="42vv4xsG7__" resolve="device" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="42vv4xsG5sp" role="3cqZAp">
              <node concept="3clFbS" id="42vv4xsG5sr" role="3clFbx">
                <node concept="3clFbF" id="4uvvnUOsfmj" role="3cqZAp">
                  <node concept="2OqwBi" id="4uvvnUOshqs" role="3clFbG">
                    <node concept="37vLTw" id="4uvvnUOsgN1" role="2Oq$k0">
                      <ref role="3cqZAo" node="4uvvnUOsgMU" resolve="connection" />
                    </node>
                    <node concept="liA8E" id="4uvvnUOslX8" role="2OqNvi">
                      <ref role="37wK5l" to="o04u:42vv4xsAc9v" resolve="deployResource" />
                      <node concept="37vLTw" id="44qSI5$VkmB" role="37wK5m">
                        <ref role="3cqZAo" node="44qSI5$Vju$" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="42vv4xsG6Bg" role="3clFbw">
                <node concept="10Nm6u" id="42vv4xsG6Ch" role="3uHU7w" />
                <node concept="37vLTw" id="42vv4xsG5w4" role="3uHU7B">
                  <ref role="3cqZAo" node="4uvvnUOsgMU" resolve="connection" />
                </node>
              </node>
              <node concept="9aQIb" id="42vv4xsG6L8" role="9aQIa">
                <node concept="3clFbS" id="42vv4xsG6L9" role="9aQI4">
                  <node concept="RRSsy" id="42vv4xsG6OH" role="3cqZAp">
                    <property role="RRSoG" value="error" />
                    <node concept="3cpWs3" id="42vv4xsG7zk" role="RRSoy">
                      <node concept="2OqwBi" id="42vv4xsG7Xx" role="3uHU7w">
                        <node concept="37vLTw" id="42vv4xsG7GW" role="2Oq$k0">
                          <ref role="3cqZAo" node="42vv4xsG7__" resolve="device" />
                        </node>
                        <node concept="3TrcHB" id="42vv4xsGbCP" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="42vv4xsG6OJ" role="3uHU7B">
                        <property role="Xl_RC" value="Can't connect to device " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4uvvnUOsm5h" role="TEbGg">
            <node concept="3cpWsn" id="4uvvnUOsm5j" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4uvvnUOssO$" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4uvvnUOsm5n" role="TDEfX">
              <node concept="RRSsy" id="4uvvnUOssV4" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="37vLTw" id="4uvvnUOssV8" role="RRSow">
                  <ref role="3cqZAo" node="4uvvnUOsm5j" resolve="e" />
                </node>
                <node concept="Xl_RD" id="4uvvnUOssYe" role="RRSoy">
                  <property role="Xl_RC" value="on resource deployment" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="44qSI5$V8ZS" role="tmbBb">
      <node concept="3clFbS" id="44qSI5$V8ZT" role="2VODD2">
        <node concept="3clFbF" id="44qSI5$V9Qf" role="3cqZAp">
          <node concept="2OqwBi" id="44qSI5$VhOq" role="3clFbG">
            <node concept="2OqwBi" id="44qSI5$V9Q9" role="2Oq$k0">
              <node concept="2WthIp" id="44qSI5$V9Qc" role="2Oq$k0" />
              <node concept="3gHZIF" id="44qSI5$Vgjr" role="2OqNvi">
                <ref role="2WH_rO" node="44qSI5$VfWX" resolve="node" />
              </node>
            </node>
            <node concept="1mIQ4w" id="44qSI5$Vi5S" role="2OqNvi">
              <node concept="chp4Y" id="44qSI5$ViiM" role="cj9EA">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="44qSI5$VfWX" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="44qSI5$VfWY" role="1B3o_S" />
      <node concept="1oajcY" id="44qSI5$VfWZ" role="1oa70y" />
      <node concept="3Tqbb2" id="44qSI5$VfSR" role="1tU5fm" />
    </node>
  </node>
  <node concept="312cEu" id="5PjcHHGcAKb">
    <property role="TrG5h" value="WatchActionsFacade" />
    <node concept="2tJIrI" id="5PjcHHGcALC" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGcD9B" role="jymVt">
      <property role="TrG5h" value="hasPortToWatch" />
      <node concept="37vLTG" id="5PjcHHGeeEm" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5PjcHHGeeEn" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGcDab" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="5PjcHHGcDac" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3clFbS" id="5PjcHHGcD9E" role="3clF47">
        <node concept="3clFbJ" id="zSdbF1MKV4" role="3cqZAp">
          <node concept="3clFbS" id="zSdbF1MKV6" role="3clFbx">
            <node concept="3cpWs6" id="zSdbF1MMER" role="3cqZAp">
              <node concept="3clFbT" id="zSdbF1MMFJ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="zSdbF1MMmg" role="3clFbw">
            <node concept="10Nm6u" id="zSdbF1MMmZ" role="3uHU7w" />
            <node concept="1rXfSq" id="zSdbF1MLan" role="3uHU7B">
              <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
              <node concept="37vLTw" id="zSdbF1MLqP" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGeeEm" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="zSdbF1MOxV" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGe2vg" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGe2vh" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5PjcHHGe2vc" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGe2G5" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGe2yM" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcDab" resolve="cell" />
              </node>
              <node concept="liA8E" id="5PjcHHGe36x" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGe2mW" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGe2mX" role="3cpWs9">
            <property role="TrG5h" value="portDescriptor" />
            <node concept="3uibUv" id="5PjcHHGe2mY" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGe2mZ" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGe2vj" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGe2vh" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGe2n1" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGe2n2" role="37wK5m">
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                  <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGe2n7" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGe2n8" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="5PjcHHGe2n9" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGe2na" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGe2vk" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGe2vh" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGe2nc" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGe2nd" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5PjcHHGe3gI" role="3cqZAp">
          <node concept="1Wc70l" id="5PjcHHGee_g" role="3cqZAk">
            <node concept="1Wc70l" id="5PjcHHGe99n" role="3uHU7B">
              <node concept="3y3z36" id="5PjcHHGe8YJ" role="3uHU7B">
                <node concept="37vLTw" id="5PjcHHGe3jN" role="3uHU7B">
                  <ref role="3cqZAo" node="5PjcHHGe2n8" resolve="fb" />
                </node>
                <node concept="10Nm6u" id="5PjcHHGe93b" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="5PjcHHGe9pn" role="3uHU7w">
                <node concept="37vLTw" id="5PjcHHGe9e7" role="3uHU7B">
                  <ref role="3cqZAo" node="5PjcHHGe2mX" resolve="portDescriptor" />
                </node>
                <node concept="10Nm6u" id="5PjcHHGe9u6" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbC" id="5PjcHHGeZGr" role="3uHU7w">
              <node concept="10Nm6u" id="5PjcHHGeZQa" role="3uHU7w" />
              <node concept="1rXfSq" id="5PjcHHGeBbj" role="3uHU7B">
                <ref role="37wK5l" node="5PjcHHGd5mW" resolve="getPortListener" />
                <node concept="37vLTw" id="5PjcHHGeBjC" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGeeEm" resolve="node" />
                </node>
                <node concept="2OqwBi" id="5PjcHHGeBKR" role="37wK5m">
                  <node concept="37vLTw" id="5PjcHHGeB$4" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGe2n8" resolve="fb" />
                  </node>
                  <node concept="liA8E" id="5PjcHHGeYqC" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:3DiEZ8TN9rs" resolve="getPort" />
                    <node concept="37vLTw" id="5PjcHHGeYzK" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGe2mX" resolve="portDescriptor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGcD0m" role="1B3o_S" />
      <node concept="10P_77" id="5PjcHHGe28d" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="5PjcHHGedEz" role="jymVt">
      <property role="TrG5h" value="hasWatchedPort" />
      <node concept="37vLTG" id="5PjcHHGeeK5" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5PjcHHGeeK6" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGedE$" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="5PjcHHGedE_" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3clFbS" id="5PjcHHGedEA" role="3clF47">
        <node concept="3clFbJ" id="zSdbF1MMUk" role="3cqZAp">
          <node concept="3clFbS" id="zSdbF1MMUl" role="3clFbx">
            <node concept="3cpWs6" id="zSdbF1MMUm" role="3cqZAp">
              <node concept="3clFbT" id="zSdbF1MMUn" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="zSdbF1MMUo" role="3clFbw">
            <node concept="10Nm6u" id="zSdbF1MMUp" role="3uHU7w" />
            <node concept="1rXfSq" id="zSdbF1MMUq" role="3uHU7B">
              <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
              <node concept="37vLTw" id="zSdbF1MMUr" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGeeK5" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="zSdbF1MOLa" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGeZX6" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGeZX7" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5PjcHHGeZX8" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGeZX9" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGeZXa" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGedE$" resolve="cell" />
              </node>
              <node concept="liA8E" id="5PjcHHGeZXb" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGeZXc" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGeZXd" role="3cpWs9">
            <property role="TrG5h" value="portDescriptor" />
            <node concept="3uibUv" id="5PjcHHGeZXe" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGeZXf" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGeZXg" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGeZX7" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGeZXh" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGeZXi" role="37wK5m">
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                  <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGeZXp" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGeZXq" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="5PjcHHGeZXr" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGeZXs" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGeZXt" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGeZX7" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGeZXu" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGeZXv" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5PjcHHGeZXA" role="3cqZAp">
          <node concept="1Wc70l" id="5PjcHHGeZXB" role="3cqZAk">
            <node concept="1Wc70l" id="5PjcHHGeZXC" role="3uHU7B">
              <node concept="3y3z36" id="5PjcHHGeZXD" role="3uHU7B">
                <node concept="37vLTw" id="5PjcHHGeZXE" role="3uHU7B">
                  <ref role="3cqZAo" node="5PjcHHGeZXq" resolve="fb" />
                </node>
                <node concept="10Nm6u" id="5PjcHHGeZXF" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="5PjcHHGeZXG" role="3uHU7w">
                <node concept="37vLTw" id="5PjcHHGeZXH" role="3uHU7B">
                  <ref role="3cqZAo" node="5PjcHHGeZXd" resolve="portDescriptor" />
                </node>
                <node concept="10Nm6u" id="5PjcHHGeZXI" role="3uHU7w" />
              </node>
            </node>
            <node concept="3y3z36" id="5PjcHHGf08s" role="3uHU7w">
              <node concept="1rXfSq" id="5PjcHHGeZXL" role="3uHU7B">
                <ref role="37wK5l" node="5PjcHHGd5mW" resolve="getPortListener" />
                <node concept="37vLTw" id="5PjcHHGeZXM" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGeeK5" resolve="node" />
                </node>
                <node concept="2OqwBi" id="5PjcHHGeZXN" role="37wK5m">
                  <node concept="37vLTw" id="5PjcHHGeZXO" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGeZXq" resolve="fb" />
                  </node>
                  <node concept="liA8E" id="5PjcHHGeZXP" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:3DiEZ8TN9rs" resolve="getPort" />
                    <node concept="37vLTw" id="5PjcHHGeZXQ" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGeZXd" resolve="portDescriptor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="5PjcHHGeZXK" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGedF3" role="1B3o_S" />
      <node concept="10P_77" id="5PjcHHGedF4" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGdYxq" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGdY9q" role="jymVt">
      <property role="TrG5h" value="portToWatch" />
      <node concept="37vLTG" id="5PjcHHGdY9t" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="5PjcHHGdY9u" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3clFbS" id="5PjcHHGdY9v" role="3clF47">
        <node concept="3cpWs8" id="5PjcHHGeeQ1" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGeeQ2" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5PjcHHGeeQ3" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGeeQ4" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGeeQ5" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGdY9t" resolve="cell" />
              </node>
              <node concept="liA8E" id="5PjcHHGeeQ6" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGeeQ7" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGeeQ8" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="3uibUv" id="5PjcHHGeeQ9" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGeeQa" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGeeQb" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGeeQ2" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGeeQc" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGeeQd" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGef3q" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGefb9" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGef3o" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGeeQ8" resolve="port" />
            </node>
            <node concept="liA8E" id="5PjcHHGe_ym" role="2OqNvi">
              <ref role="37wK5l" to="2xsi:1HEL0zWeift" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGdY9w" role="1B3o_S" />
      <node concept="17QB3L" id="5PjcHHGdYso" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGcALL" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGcB40" role="jymVt">
      <property role="TrG5h" value="watchPort" />
      <node concept="3clFbS" id="5PjcHHGcB43" role="3clF47">
        <node concept="3cpWs8" id="5PjcHHGcHdc" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcHdd" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGcHde" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
            </node>
            <node concept="1rXfSq" id="5PjcHHGcYgV" role="33vP2m">
              <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
              <node concept="37vLTw" id="5PjcHHGcYkF" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGcCPc" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGcHdm" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcHdn" role="3cpWs9">
            <property role="TrG5h" value="watcher" />
            <node concept="3uibUv" id="5PjcHHGcHdo" role="1tU5fm">
              <ref role="3uigEE" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="2YIFZM" id="5PjcHHGcHdp" role="33vP2m">
              <ref role="37wK5l" to="o04u:5jACUPF_QUm" resolve="getInstance" />
              <ref role="1Pybhc" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGcHdq" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGcHdr" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcHds" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5PjcHHGcHdt" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGcHdu" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGcHSf" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcCQ7" resolve="cell" />
              </node>
              <node concept="liA8E" id="5PjcHHGcHdy" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGcHdz" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcHd$" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGcHd_" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGcHdA" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGcHdB" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcHds" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGcHdC" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGcHdD" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGcHdJ" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcHdK" role="3cpWs9">
            <property role="TrG5h" value="portDescriptor" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGcHdL" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGcHdM" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGcHdN" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcHds" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGcHdO" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGcHdP" role="37wK5m">
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                  <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGcHdV" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGcHdW" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcHdX" role="3cpWs9">
            <property role="TrG5h" value="fbNode" />
            <node concept="3Tqbb2" id="5PjcHHGcHdY" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
            </node>
            <node concept="1PxgMI" id="5PjcHHGcHdZ" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5PjcHHGcHe0" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
              <node concept="2OqwBi" id="5PjcHHGcHe1" role="1m5AlR">
                <node concept="1eOMI4" id="5PjcHHGcHe2" role="2Oq$k0">
                  <node concept="10QFUN" id="5PjcHHGcHe3" role="1eOMHV">
                    <node concept="3uibUv" id="5PjcHHGcHe4" role="10QFUM">
                      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
                    </node>
                    <node concept="37vLTw" id="5PjcHHGcHe5" role="10QFUP">
                      <ref role="3cqZAo" node="5PjcHHGcHd$" resolve="fb" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5PjcHHGcHe6" role="2OqNvi">
                  <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGcHe7" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcHe8" role="3cpWs9">
            <property role="TrG5h" value="watchable" />
            <node concept="3uibUv" id="5PjcHHGcHe9" role="1tU5fm">
              <ref role="3uigEE" to="o04u:5PjcHHG7mbE" resolve="Watchable" />
            </node>
            <node concept="2ShNRf" id="5PjcHHGcHea" role="33vP2m">
              <node concept="1pGfFk" id="5PjcHHGcHeb" role="2ShVmc">
                <ref role="37wK5l" to="o04u:5PjcHHG7mRu" resolve="Watchable" />
                <node concept="2ShNRf" id="5PjcHHGcHec" role="37wK5m">
                  <node concept="1pGfFk" id="5PjcHHGcHed" role="2ShVmc">
                    <ref role="37wK5l" to="o04u:5PjcHHG52gR" resolve="WatchablePath" />
                    <node concept="37vLTw" id="5PjcHHGcHee" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGcCPc" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="5PjcHHGcHef" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGcHdX" resolve="fbNode" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5PjcHHGcHeg" role="37wK5m">
                  <node concept="37vLTw" id="5PjcHHGcHeh" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGcHdK" resolve="portDescriptor" />
                  </node>
                  <node concept="liA8E" id="5PjcHHGcHei" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:1HEL0zWeift" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGdcut" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGdcuu" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGdcu3" role="1tU5fm">
              <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGdcuv" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGdcuw" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcHd$" resolve="fb" />
              </node>
              <node concept="liA8E" id="5PjcHHGdcux" role="2OqNvi">
                <ref role="37wK5l" to="tphl:3DiEZ8TN9rs" resolve="getPort" />
                <node concept="37vLTw" id="5PjcHHGdcuy" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGcHdK" resolve="portDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGdd4$" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGd8ga" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGd8gb" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="5PjcHHGd8g9" role="1tU5fm">
              <ref role="3uigEE" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
            </node>
            <node concept="2ShNRf" id="5PjcHHGd8gc" role="33vP2m">
              <node concept="YeOm9" id="5PjcHHGd8gd" role="2ShVmc">
                <node concept="1Y3b0j" id="5PjcHHGd8ge" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
                  <node concept="3Tm1VV" id="5PjcHHGd8gf" role="1B3o_S" />
                  <node concept="3clFb_" id="5PjcHHGd8gg" role="jymVt">
                    <property role="TrG5h" value="onValueChanged" />
                    <node concept="3Tm1VV" id="5PjcHHGd8gh" role="1B3o_S" />
                    <node concept="3cqZAl" id="5PjcHHGd8gi" role="3clF45" />
                    <node concept="37vLTG" id="5PjcHHGd8gj" role="3clF46">
                      <property role="TrG5h" value="newValue" />
                      <node concept="17QB3L" id="5PjcHHGd8gk" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="5PjcHHGd8gl" role="3clF47">
                      <node concept="3clFbF" id="5PjcHHGd8gm" role="3cqZAp">
                        <node concept="2OqwBi" id="5PjcHHGd8gn" role="3clFbG">
                          <node concept="37vLTw" id="5PjcHHGd8go" role="2Oq$k0">
                            <ref role="3cqZAo" node="5PjcHHGcHdd" resolve="provider" />
                          </node>
                          <node concept="liA8E" id="5PjcHHGd8gp" role="2OqNvi">
                            <ref role="37wK5l" to="ppqf:1R4IoyRp_nV" resolve="setInspectionForPort" />
                            <node concept="37vLTw" id="5PjcHHGdcuz" role="37wK5m">
                              <ref role="3cqZAo" node="5PjcHHGdcuu" resolve="port" />
                            </node>
                            <node concept="2ShNRf" id="5PjcHHGd8gu" role="37wK5m">
                              <node concept="1pGfFk" id="5PjcHHGd8gv" role="2ShVmc">
                                <ref role="37wK5l" to="ppqf:1R4IoyQOiyk" resolve="Inspection" />
                                <node concept="37vLTw" id="5PjcHHGd8gw" role="37wK5m">
                                  <ref role="3cqZAo" node="5PjcHHGd8gj" resolve="newValue" />
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
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGd9cV" role="3cqZAp" />
        <node concept="3clFbF" id="5PjcHHGcHej" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGcHek" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGcHel" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGcHdn" resolve="watcher" />
            </node>
            <node concept="liA8E" id="5PjcHHGcHem" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPF_VLV" resolve="watch" />
              <node concept="37vLTw" id="5PjcHHGcHen" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGcHe8" resolve="watchable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGcHep" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGcHeq" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGcHer" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGcHdn" resolve="watcher" />
            </node>
            <node concept="liA8E" id="5PjcHHGcHes" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPFDAmD" resolve="addWatchedValueListener" />
              <node concept="2OqwBi" id="5PjcHHGcHet" role="37wK5m">
                <node concept="37vLTw" id="5PjcHHGcHeu" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGcHe8" resolve="watchable" />
                </node>
                <node concept="liA8E" id="5PjcHHGcHev" role="2OqNvi">
                  <ref role="37wK5l" to="o04u:5PjcHHG7rfc" resolve="serialize" />
                </node>
              </node>
              <node concept="37vLTw" id="5PjcHHGd8gx" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGd8gb" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGdbNP" role="3cqZAp">
          <node concept="1rXfSq" id="5PjcHHGdbNN" role="3clFbG">
            <ref role="37wK5l" node="5PjcHHGd5nh" resolve="setPortListener" />
            <node concept="37vLTw" id="5PjcHHGdc2f" role="37wK5m">
              <ref role="3cqZAo" node="5PjcHHGcCPc" resolve="node" />
            </node>
            <node concept="37vLTw" id="5PjcHHGdekn" role="37wK5m">
              <ref role="3cqZAo" node="5PjcHHGdcuu" resolve="port" />
            </node>
            <node concept="37vLTw" id="5PjcHHGdfp8" role="37wK5m">
              <ref role="3cqZAo" node="5PjcHHGd8gb" resolve="listener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGcAUN" role="1B3o_S" />
      <node concept="3cqZAl" id="5PjcHHGcB3T" role="3clF45" />
      <node concept="37vLTG" id="5PjcHHGcCPc" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5PjcHHGcCPb" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGcCQ7" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="5PjcHHGcCUV" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGcDc8" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGcDaP" role="jymVt">
      <property role="TrG5h" value="unwatchPort" />
      <node concept="3clFbS" id="5PjcHHGcDaQ" role="3clF47">
        <node concept="3cpWs8" id="5PjcHHGcI2o" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcI2p" role="3cpWs9">
            <property role="TrG5h" value="watcher" />
            <node concept="3uibUv" id="5PjcHHGcI2q" role="1tU5fm">
              <ref role="3uigEE" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="2YIFZM" id="5PjcHHGcI2r" role="33vP2m">
              <ref role="1Pybhc" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
              <ref role="37wK5l" to="o04u:5jACUPF_QUm" resolve="getInstance" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGcI2e" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcI2f" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGcI2g" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
            </node>
            <node concept="1rXfSq" id="5PjcHHGcXS2" role="33vP2m">
              <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
              <node concept="37vLTw" id="5PjcHHGcXVY" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGcDaT" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGcI2s" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGcI2t" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcI2u" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5PjcHHGcI2v" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGcI2w" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGcI2x" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcDaV" resolve="cell" />
              </node>
              <node concept="liA8E" id="5PjcHHGcI2y" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGcI2z" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcI2$" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGcI2_" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGcI2A" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGcI2B" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcI2u" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGcI2C" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGcI2D" role="37wK5m">
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGcI2J" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcI2K" role="3cpWs9">
            <property role="TrG5h" value="portDescriptor" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGcI2L" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGcI2M" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGcI2N" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcI2u" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGcI2O" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGcI2P" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGcI2V" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGcI2W" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcI2X" role="3cpWs9">
            <property role="TrG5h" value="fbNode" />
            <node concept="3Tqbb2" id="5PjcHHGcI2Y" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
            </node>
            <node concept="1PxgMI" id="5PjcHHGcI2Z" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5PjcHHGcI30" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
              <node concept="2OqwBi" id="5PjcHHGcI31" role="1m5AlR">
                <node concept="1eOMI4" id="5PjcHHGcI32" role="2Oq$k0">
                  <node concept="10QFUN" id="5PjcHHGcI33" role="1eOMHV">
                    <node concept="3uibUv" id="5PjcHHGcI34" role="10QFUM">
                      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
                    </node>
                    <node concept="37vLTw" id="5PjcHHGcI35" role="10QFUP">
                      <ref role="3cqZAo" node="5PjcHHGcI2$" resolve="fb" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5PjcHHGcI36" role="2OqNvi">
                  <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGcI37" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGcI38" role="3cpWs9">
            <property role="TrG5h" value="watchable" />
            <node concept="3uibUv" id="5PjcHHGcI39" role="1tU5fm">
              <ref role="3uigEE" to="o04u:5PjcHHG7mbE" resolve="Watchable" />
            </node>
            <node concept="2ShNRf" id="5PjcHHGcI3a" role="33vP2m">
              <node concept="1pGfFk" id="5PjcHHGcI3b" role="2ShVmc">
                <ref role="37wK5l" to="o04u:5PjcHHG7mRu" resolve="Watchable" />
                <node concept="2ShNRf" id="5PjcHHGcI3c" role="37wK5m">
                  <node concept="1pGfFk" id="5PjcHHGcI3d" role="2ShVmc">
                    <ref role="37wK5l" to="o04u:5PjcHHG52gR" resolve="WatchablePath" />
                    <node concept="37vLTw" id="5PjcHHGcI3e" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGcDaT" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="5PjcHHGcI3f" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGcI2X" resolve="fbNode" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5PjcHHGcI3g" role="37wK5m">
                  <node concept="37vLTw" id="5PjcHHGcI3h" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGcI2K" resolve="portDescriptor" />
                  </node>
                  <node concept="liA8E" id="5PjcHHGcI3i" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:1HEL0zWeift" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGdg82" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGdg83" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGdg84" role="1tU5fm">
              <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGdg85" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGdg86" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcI2$" resolve="fb" />
              </node>
              <node concept="liA8E" id="5PjcHHGdg87" role="2OqNvi">
                <ref role="37wK5l" to="tphl:3DiEZ8TN9rs" resolve="getPort" />
                <node concept="37vLTw" id="5PjcHHGdg88" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGcI2K" resolve="portDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGcI3o" role="3cqZAp" />
        <node concept="3clFbF" id="5PjcHHGcI3j" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGcI3k" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGcI3l" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGcI2p" resolve="watcher" />
            </node>
            <node concept="liA8E" id="5PjcHHGcI3m" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPFAos4" resolve="unwatch" />
              <node concept="37vLTw" id="5PjcHHGcI3n" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGcI38" resolve="watchable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGcI3p" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGcI3q" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGcI3r" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGcI2p" resolve="watcher" />
            </node>
            <node concept="liA8E" id="5PjcHHGcI3s" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPFDJsw" resolve="removeWatchedValueListener" />
              <node concept="2OqwBi" id="5PjcHHGcI3t" role="37wK5m">
                <node concept="37vLTw" id="5PjcHHGcI3u" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGcI38" resolve="watchable" />
                </node>
                <node concept="liA8E" id="5PjcHHGcI3v" role="2OqNvi">
                  <ref role="37wK5l" to="o04u:5PjcHHG7rfc" resolve="serialize" />
                </node>
              </node>
              <node concept="1rXfSq" id="5PjcHHGdfOu" role="37wK5m">
                <ref role="37wK5l" node="5PjcHHGd5mW" resolve="getPortListener" />
                <node concept="37vLTw" id="5PjcHHGdfSc" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGcDaT" resolve="node" />
                </node>
                <node concept="37vLTw" id="5PjcHHGdgra" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGdg83" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGdgZr" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGdha$" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGdXUy" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGcI2f" resolve="provider" />
            </node>
            <node concept="liA8E" id="5PjcHHGdY2a" role="2OqNvi">
              <ref role="37wK5l" to="ppqf:1R4IoyRp_nV" resolve="setInspectionForPort" />
              <node concept="37vLTw" id="5PjcHHGdY3u" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGdg83" resolve="port" />
              </node>
              <node concept="10Nm6u" id="5PjcHHGdY8C" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGcDaR" role="1B3o_S" />
      <node concept="3cqZAl" id="5PjcHHGcDaS" role="3clF45" />
      <node concept="37vLTG" id="5PjcHHGcDaT" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5PjcHHGcDaU" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGcDaV" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="5PjcHHGcDaW" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGfR1d" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGfRDa" role="jymVt">
      <property role="TrG5h" value="hasEccToWatch" />
      <node concept="37vLTG" id="5PjcHHGfRDb" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5PjcHHGfRDc" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGfRDd" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="5PjcHHGfRDe" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3clFbS" id="5PjcHHGfRDf" role="3clF47">
        <node concept="3clFbJ" id="zSdbF1MNq5" role="3cqZAp">
          <node concept="3clFbS" id="zSdbF1MNq6" role="3clFbx">
            <node concept="3cpWs6" id="zSdbF1MNq7" role="3cqZAp">
              <node concept="3clFbT" id="zSdbF1MNq8" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="zSdbF1MNq9" role="3clFbw">
            <node concept="10Nm6u" id="zSdbF1MNqa" role="3uHU7w" />
            <node concept="1rXfSq" id="zSdbF1MNqb" role="3uHU7B">
              <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
              <node concept="37vLTw" id="zSdbF1MNqc" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGfRDb" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="zSdbF1MNpA" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGfRDg" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfRDh" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5PjcHHGfRDi" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGfRDj" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGfRDk" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGfRDd" resolve="cell" />
              </node>
              <node concept="liA8E" id="5PjcHHGfRDl" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGfRDt" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfRDu" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="5PjcHHGfRDv" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGfRDw" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGfRDx" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGfRDh" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGfRDy" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGfRDz" role="37wK5m">
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5PjcHHGfRD$" role="3cqZAp">
          <node concept="1Wc70l" id="5PjcHHGfRD_" role="3cqZAk">
            <node concept="1Wc70l" id="5PjcHHGfRDA" role="3uHU7B">
              <node concept="3y3z36" id="5PjcHHGfRDB" role="3uHU7B">
                <node concept="37vLTw" id="5PjcHHGfRDC" role="3uHU7B">
                  <ref role="3cqZAo" node="5PjcHHGfRDu" resolve="fb" />
                </node>
                <node concept="10Nm6u" id="5PjcHHGfRDD" role="3uHU7w" />
              </node>
              <node concept="2ZW3vV" id="5PjcHHGgKo3" role="3uHU7w">
                <node concept="3uibUv" id="5PjcHHGgKKh" role="2ZW6by">
                  <ref role="3uigEE" to="2xsi:1R4IoyQwdLk" resolve="BasicFBType" />
                </node>
                <node concept="2OqwBi" id="5PjcHHGgjn5" role="2ZW6bz">
                  <node concept="37vLTw" id="5PjcHHGgj3q" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGfRDu" resolve="fb" />
                  </node>
                  <node concept="liA8E" id="5PjcHHGgE5F" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:1R4IoyQw8aL" resolve="getType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5PjcHHGfRDH" role="3uHU7w">
              <node concept="10Nm6u" id="5PjcHHGfRDI" role="3uHU7w" />
              <node concept="1rXfSq" id="5PjcHHGfRDJ" role="3uHU7B">
                <ref role="37wK5l" node="5PjcHHGfL6y" resolve="getECCStateListener" />
                <node concept="37vLTw" id="5PjcHHGfRDK" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGfRDb" resolve="node" />
                </node>
                <node concept="37vLTw" id="5PjcHHGfRDM" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGfRDu" resolve="fb" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGfRDP" role="1B3o_S" />
      <node concept="10P_77" id="5PjcHHGfRDQ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGfSnK" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGfRE9" role="jymVt">
      <property role="TrG5h" value="hasWatchedEcc" />
      <node concept="37vLTG" id="5PjcHHGfREa" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5PjcHHGfREb" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGfREc" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="5PjcHHGfREd" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3clFbS" id="5PjcHHGfREe" role="3clF47">
        <node concept="3clFbJ" id="zSdbF1MO4a" role="3cqZAp">
          <node concept="3clFbS" id="zSdbF1MO4b" role="3clFbx">
            <node concept="3cpWs6" id="zSdbF1MO4c" role="3cqZAp">
              <node concept="3clFbT" id="zSdbF1MO4d" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="zSdbF1MO4e" role="3clFbw">
            <node concept="10Nm6u" id="zSdbF1MO4f" role="3uHU7w" />
            <node concept="1rXfSq" id="zSdbF1MO4g" role="3uHU7B">
              <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
              <node concept="37vLTw" id="zSdbF1MO4h" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGfREa" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="zSdbF1MNQK" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGfREf" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfREg" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5PjcHHGfREh" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGfREi" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGfREj" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGfREc" resolve="cell" />
              </node>
              <node concept="liA8E" id="5PjcHHGfREk" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGfREs" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfREt" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="5PjcHHGfREu" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGfREv" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGfREw" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGfREg" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGfREx" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGfREy" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5PjcHHGgLrA" role="3cqZAp">
          <node concept="1Wc70l" id="5PjcHHGgLrB" role="3cqZAk">
            <node concept="1Wc70l" id="5PjcHHGgLrC" role="3uHU7B">
              <node concept="3y3z36" id="5PjcHHGgLrD" role="3uHU7B">
                <node concept="37vLTw" id="5PjcHHGgLrE" role="3uHU7B">
                  <ref role="3cqZAo" node="5PjcHHGfREt" resolve="fb" />
                </node>
                <node concept="10Nm6u" id="5PjcHHGgLrF" role="3uHU7w" />
              </node>
              <node concept="2ZW3vV" id="5PjcHHGgLrG" role="3uHU7w">
                <node concept="3uibUv" id="5PjcHHGgLrH" role="2ZW6by">
                  <ref role="3uigEE" to="2xsi:1R4IoyQwdLk" resolve="BasicFBType" />
                </node>
                <node concept="2OqwBi" id="5PjcHHGgLrI" role="2ZW6bz">
                  <node concept="37vLTw" id="5PjcHHGgLrJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGfREt" resolve="fb" />
                  </node>
                  <node concept="liA8E" id="5PjcHHGgLrK" role="2OqNvi">
                    <ref role="37wK5l" to="tphl:1R4IoyQw8aL" resolve="getType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5PjcHHGgLEb" role="3uHU7w">
              <node concept="1rXfSq" id="5PjcHHGgLrN" role="3uHU7B">
                <ref role="37wK5l" node="5PjcHHGfL6y" resolve="getECCStateListener" />
                <node concept="37vLTw" id="5PjcHHGgLrO" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGfREa" resolve="node" />
                </node>
                <node concept="37vLTw" id="5PjcHHGgLrP" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGfREt" resolve="fb" />
                </node>
              </node>
              <node concept="10Nm6u" id="5PjcHHGgLrM" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGfREO" role="1B3o_S" />
      <node concept="10P_77" id="5PjcHHGfREP" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGfRbi" role="jymVt" />
    <node concept="2tJIrI" id="5PjcHHGf75a" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGf6cW" role="jymVt">
      <property role="TrG5h" value="watchEcc" />
      <node concept="3clFbS" id="5PjcHHGf6cX" role="3clF47">
        <node concept="3cpWs8" id="5PjcHHGf6cY" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf6cZ" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGf6d0" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
            </node>
            <node concept="1rXfSq" id="5PjcHHGf6d1" role="33vP2m">
              <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
              <node concept="37vLTw" id="5PjcHHGf6d2" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGf6eA" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGf6d3" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf6d4" role="3cpWs9">
            <property role="TrG5h" value="watcher" />
            <node concept="3uibUv" id="5PjcHHGf6d5" role="1tU5fm">
              <ref role="3uigEE" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="2YIFZM" id="5PjcHHGf6d6" role="33vP2m">
              <ref role="1Pybhc" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
              <ref role="37wK5l" to="o04u:5jACUPF_QUm" resolve="getInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGf6d7" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGf6d8" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf6d9" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5PjcHHGf6da" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGf6db" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGf6dc" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGf6eC" resolve="cell" />
              </node>
              <node concept="liA8E" id="5PjcHHGf6dd" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGf6de" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf6df" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGf6dg" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGf6dh" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGf6di" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGf6d9" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGf6dj" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGf6dk" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGf6ds" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGf6dt" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf6du" role="3cpWs9">
            <property role="TrG5h" value="fbNode" />
            <node concept="3Tqbb2" id="5PjcHHGf6dv" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
            </node>
            <node concept="1PxgMI" id="5PjcHHGf6dw" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5PjcHHGf6dx" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
              <node concept="2OqwBi" id="5PjcHHGf6dy" role="1m5AlR">
                <node concept="1eOMI4" id="5PjcHHGf6dz" role="2Oq$k0">
                  <node concept="10QFUN" id="5PjcHHGf6d$" role="1eOMHV">
                    <node concept="3uibUv" id="5PjcHHGf6d_" role="10QFUM">
                      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
                    </node>
                    <node concept="37vLTw" id="5PjcHHGf6dA" role="10QFUP">
                      <ref role="3cqZAo" node="5PjcHHGf6df" resolve="fb" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5PjcHHGf6dB" role="2OqNvi">
                  <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="5PjcHHGfNME" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="5PjcHHGf9j6" role="8Wnug">
            <node concept="3cpWsn" id="5PjcHHGf9j9" role="3cpWs9">
              <property role="TrG5h" value="fbType" />
              <node concept="3Tqbb2" id="5PjcHHGf9j4" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
              </node>
              <node concept="1PxgMI" id="5PjcHHGfD9V" role="33vP2m">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="5PjcHHGfDej" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                </node>
                <node concept="2OqwBi" id="5PjcHHGf9KF" role="1m5AlR">
                  <node concept="37vLTw" id="5PjcHHGf9z3" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHGf6du" resolve="fbNode" />
                  </node>
                  <node concept="3TrEf2" id="5PjcHHGfa5a" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGfEfR" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGf6dC" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf6dD" role="3cpWs9">
            <property role="TrG5h" value="stateWatchable" />
            <node concept="3uibUv" id="5PjcHHGf6dE" role="1tU5fm">
              <ref role="3uigEE" to="o04u:5PjcHHG7mbE" resolve="Watchable" />
            </node>
            <node concept="2ShNRf" id="5PjcHHGf6dF" role="33vP2m">
              <node concept="1pGfFk" id="5PjcHHGf6dG" role="2ShVmc">
                <ref role="37wK5l" to="o04u:5PjcHHG7mRu" resolve="Watchable" />
                <node concept="2ShNRf" id="5PjcHHGf6dH" role="37wK5m">
                  <node concept="1pGfFk" id="5PjcHHGf6dI" role="2ShVmc">
                    <ref role="37wK5l" to="o04u:5PjcHHG52gR" resolve="WatchablePath" />
                    <node concept="37vLTw" id="5PjcHHGf6dJ" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGf6eA" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="5PjcHHGf6dK" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGf6du" resolve="fbNode" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="5PjcHHGfDWs" role="37wK5m">
                  <property role="Xl_RC" value="$ECC" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGfE3x" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGf6dW" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf6dX" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="5PjcHHGf6dY" role="1tU5fm">
              <ref role="3uigEE" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
            </node>
            <node concept="2ShNRf" id="5PjcHHGf6dZ" role="33vP2m">
              <node concept="YeOm9" id="5PjcHHGf6e0" role="2ShVmc">
                <node concept="1Y3b0j" id="5PjcHHGf6e1" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
                  <node concept="3Tm1VV" id="5PjcHHGf6e2" role="1B3o_S" />
                  <node concept="3clFb_" id="5PjcHHGf6e3" role="jymVt">
                    <property role="TrG5h" value="onValueChanged" />
                    <node concept="3Tm1VV" id="5PjcHHGf6e4" role="1B3o_S" />
                    <node concept="3cqZAl" id="5PjcHHGf6e5" role="3clF45" />
                    <node concept="37vLTG" id="5PjcHHGf6e6" role="3clF46">
                      <property role="TrG5h" value="newValue" />
                      <node concept="17QB3L" id="5PjcHHGf6e7" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="5PjcHHGf6e8" role="3clF47">
                      <node concept="3clFbF" id="5PjcHHGf6e9" role="3cqZAp">
                        <node concept="2OqwBi" id="5PjcHHGf6ea" role="3clFbG">
                          <node concept="37vLTw" id="5PjcHHGf6eb" role="2Oq$k0">
                            <ref role="3cqZAo" node="5PjcHHGf6cZ" resolve="provider" />
                          </node>
                          <node concept="liA8E" id="5PjcHHGf6ec" role="2OqNvi">
                            <ref role="37wK5l" to="ppqf:1R4IoyRp_or" resolve="setInspectionForComponent" />
                            <node concept="37vLTw" id="5PjcHHGfI0_" role="37wK5m">
                              <ref role="3cqZAo" node="5PjcHHGf6df" resolve="fb" />
                            </node>
                            <node concept="2ShNRf" id="5PjcHHGf6ee" role="37wK5m">
                              <node concept="1pGfFk" id="5PjcHHGf6ef" role="2ShVmc">
                                <ref role="37wK5l" to="ppqf:1R4IoyQOiyk" resolve="Inspection" />
                                <node concept="3cpWs3" id="5PjcHHGfH3f" role="37wK5m">
                                  <node concept="37vLTw" id="5PjcHHGfHuR" role="3uHU7w">
                                    <ref role="3cqZAo" node="5PjcHHGf6e6" resolve="newValue" />
                                  </node>
                                  <node concept="Xl_RD" id="5PjcHHGfGr2" role="3uHU7B">
                                    <property role="Xl_RC" value="State: " />
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
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGf6eh" role="3cqZAp" />
        <node concept="3clFbF" id="5PjcHHGf6ei" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGf6ej" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGf6ek" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGf6d4" resolve="watcher" />
            </node>
            <node concept="liA8E" id="5PjcHHGf6el" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPF_VLV" resolve="watch" />
              <node concept="37vLTw" id="5PjcHHGf6em" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGf6dD" resolve="stateWatchable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGf6en" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGf6eo" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGf6ep" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGf6d4" resolve="watcher" />
            </node>
            <node concept="liA8E" id="5PjcHHGf6eq" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPFDAmD" resolve="addWatchedValueListener" />
              <node concept="2OqwBi" id="5PjcHHGf6er" role="37wK5m">
                <node concept="37vLTw" id="5PjcHHGf6es" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGf6dD" resolve="stateWatchable" />
                </node>
                <node concept="liA8E" id="5PjcHHGf6et" role="2OqNvi">
                  <ref role="37wK5l" to="o04u:5PjcHHG7rfc" resolve="serialize" />
                </node>
              </node>
              <node concept="37vLTw" id="5PjcHHGf6eu" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGf6dX" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGf6ev" role="3cqZAp">
          <node concept="1rXfSq" id="5PjcHHGf6ew" role="3clFbG">
            <ref role="37wK5l" node="5PjcHHGfL6Q" resolve="setECCStateListener" />
            <node concept="37vLTw" id="5PjcHHGf6ex" role="37wK5m">
              <ref role="3cqZAo" node="5PjcHHGf6eA" resolve="node" />
            </node>
            <node concept="37vLTw" id="5PjcHHGfNKm" role="37wK5m">
              <ref role="3cqZAo" node="5PjcHHGf6df" resolve="fb" />
            </node>
            <node concept="37vLTw" id="5PjcHHGf6ez" role="37wK5m">
              <ref role="3cqZAo" node="5PjcHHGf6dX" resolve="listener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGf6e$" role="1B3o_S" />
      <node concept="3cqZAl" id="5PjcHHGf6e_" role="3clF45" />
      <node concept="37vLTG" id="5PjcHHGf6eA" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5PjcHHGf6eB" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGf6eC" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="5PjcHHGf6eD" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGf7bF" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGfP1g" role="jymVt">
      <property role="TrG5h" value="unwatchEcc" />
      <node concept="3clFbS" id="5PjcHHGfP1h" role="3clF47">
        <node concept="3cpWs8" id="5PjcHHGfP1i" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfP1j" role="3cpWs9">
            <property role="TrG5h" value="watcher" />
            <node concept="3uibUv" id="5PjcHHGfP1k" role="1tU5fm">
              <ref role="3uigEE" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
            </node>
            <node concept="2YIFZM" id="5PjcHHGfP1l" role="33vP2m">
              <ref role="1Pybhc" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
              <ref role="37wK5l" to="o04u:5jACUPF_QUm" resolve="getInstance" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGfP1m" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfP1n" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGfP1o" role="1tU5fm">
              <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
            </node>
            <node concept="1rXfSq" id="5PjcHHGfP1p" role="33vP2m">
              <ref role="37wK5l" node="5PjcHHGcXbz" resolve="getInspectionProvider" />
              <node concept="37vLTw" id="5PjcHHGfP1q" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGfP2B" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGfP1r" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGfP1s" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfP1t" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5PjcHHGfP1u" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGfP1v" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGfP1w" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGfP2D" resolve="cell" />
              </node>
              <node concept="liA8E" id="5PjcHHGfP1x" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGfP1y" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfP1z" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5PjcHHGfP1$" role="1tU5fm">
              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGfP1_" role="33vP2m">
              <node concept="37vLTw" id="5PjcHHGfP1A" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGfP1t" resolve="style" />
              </node>
              <node concept="liA8E" id="5PjcHHGfP1B" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5PjcHHGfP1C" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
                  <ref role="1PxDUh" node="3DiEZ8TM99k" resolve="FBAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGfP1K" role="3cqZAp" />
        <node concept="3cpWs8" id="5PjcHHGfP1L" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfP1M" role="3cpWs9">
            <property role="TrG5h" value="fbNode" />
            <node concept="3Tqbb2" id="5PjcHHGfP1N" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
            </node>
            <node concept="1PxgMI" id="5PjcHHGfP1O" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5PjcHHGfP1P" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
              </node>
              <node concept="2OqwBi" id="5PjcHHGfP1Q" role="1m5AlR">
                <node concept="1eOMI4" id="5PjcHHGfP1R" role="2Oq$k0">
                  <node concept="10QFUN" id="5PjcHHGfP1S" role="1eOMHV">
                    <node concept="3uibUv" id="5PjcHHGfP1T" role="10QFUM">
                      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
                    </node>
                    <node concept="37vLTw" id="5PjcHHGfP1U" role="10QFUP">
                      <ref role="3cqZAo" node="5PjcHHGfP1z" resolve="fb" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5PjcHHGfP1V" role="2OqNvi">
                  <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGfP1W" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGfP1X" role="3cpWs9">
            <property role="TrG5h" value="watchable" />
            <node concept="3uibUv" id="5PjcHHGfP1Y" role="1tU5fm">
              <ref role="3uigEE" to="o04u:5PjcHHG7mbE" resolve="Watchable" />
            </node>
            <node concept="2ShNRf" id="5PjcHHGfP1Z" role="33vP2m">
              <node concept="1pGfFk" id="5PjcHHGfP20" role="2ShVmc">
                <ref role="37wK5l" to="o04u:5PjcHHG7mRu" resolve="Watchable" />
                <node concept="2ShNRf" id="5PjcHHGfP21" role="37wK5m">
                  <node concept="1pGfFk" id="5PjcHHGfP22" role="2ShVmc">
                    <ref role="37wK5l" to="o04u:5PjcHHG52gR" resolve="WatchablePath" />
                    <node concept="37vLTw" id="5PjcHHGfP23" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGfP2B" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="5PjcHHGfP24" role="37wK5m">
                      <ref role="3cqZAo" node="5PjcHHGfP1M" resolve="fbNode" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="5PjcHHGfPRk" role="37wK5m">
                  <property role="Xl_RC" value="$ECC" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5PjcHHGfP2f" role="3cqZAp" />
        <node concept="3clFbF" id="5PjcHHGfP2g" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGfP2h" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGfP2i" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGfP1j" resolve="watcher" />
            </node>
            <node concept="liA8E" id="5PjcHHGfP2j" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPFAos4" resolve="unwatch" />
              <node concept="37vLTw" id="5PjcHHGfP2k" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGfP1X" resolve="watchable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGfP2l" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGfP2m" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGfP2n" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGfP1j" resolve="watcher" />
            </node>
            <node concept="liA8E" id="5PjcHHGfP2o" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPFDJsw" resolve="removeWatchedValueListener" />
              <node concept="2OqwBi" id="5PjcHHGfP2p" role="37wK5m">
                <node concept="37vLTw" id="5PjcHHGfP2q" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGfP1X" resolve="watchable" />
                </node>
                <node concept="liA8E" id="5PjcHHGfP2r" role="2OqNvi">
                  <ref role="37wK5l" to="o04u:5PjcHHG7rfc" resolve="serialize" />
                </node>
              </node>
              <node concept="1rXfSq" id="5PjcHHGfP2s" role="37wK5m">
                <ref role="37wK5l" node="5PjcHHGfL6y" resolve="getECCStateListener" />
                <node concept="37vLTw" id="5PjcHHGfP2t" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGfP2B" resolve="node" />
                </node>
                <node concept="37vLTw" id="5PjcHHGfQzI" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGfP1z" resolve="fb" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGfP2v" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGfP2w" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGfP2x" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGfP1n" resolve="provider" />
            </node>
            <node concept="liA8E" id="5PjcHHGfP2y" role="2OqNvi">
              <ref role="37wK5l" to="ppqf:1R4IoyRp_or" resolve="setInspectionForComponent" />
              <node concept="37vLTw" id="5PjcHHGfQom" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGfP1z" resolve="fb" />
              </node>
              <node concept="10Nm6u" id="5PjcHHGfP2$" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGfP2_" role="1B3o_S" />
      <node concept="3cqZAl" id="5PjcHHGfP2A" role="3clF45" />
      <node concept="37vLTG" id="5PjcHHGfP2B" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5PjcHHGfP2C" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGfP2D" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="5PjcHHGfP2E" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGfOSn" role="jymVt" />
    <node concept="2tJIrI" id="5PjcHHGcWkX" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGcXbz" role="jymVt">
      <property role="TrG5h" value="getInspectionProvider" />
      <node concept="3clFbS" id="5PjcHHGcXbA" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGcXMd" role="3cqZAp">
          <node concept="0kSF2" id="5PjcHHGcI2h" role="3clFbG">
            <node concept="3uibUv" id="5PjcHHGcI2i" role="0kSFW">
              <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGcI2j" role="0kSFX">
              <node concept="liA8E" id="5PjcHHGcI2k" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                <node concept="10M0yZ" id="5PjcHHGcWj4" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGcJNo" resolve="INSPECTION_PROVIDER" />
                  <ref role="1PxDUh" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                </node>
              </node>
              <node concept="2JrnkZ" id="5PjcHHGcI2m" role="2Oq$k0">
                <node concept="37vLTw" id="5PjcHHGcI2n" role="2JrQYb">
                  <ref role="3cqZAo" node="5PjcHHGcXCi" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGcWOS" role="1B3o_S" />
      <node concept="3uibUv" id="5PjcHHGcXyo" role="3clF45">
        <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
      </node>
      <node concept="37vLTG" id="5PjcHHGcXCi" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5PjcHHGcXCh" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGcXFT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGd15$" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGd0Iw" role="jymVt">
      <property role="TrG5h" value="setInspectionProvider" />
      <node concept="3clFbS" id="5PjcHHGd0Ix" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGd0Iy" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGd0I_" role="3clFbG">
            <node concept="liA8E" id="5PjcHHGd0IA" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="10M0yZ" id="5PjcHHGd0IB" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGcJNo" resolve="INSPECTION_PROVIDER" />
                <ref role="1PxDUh" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
              </node>
              <node concept="37vLTw" id="5PjcHHGd2pB" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGd1oD" resolve="inspectionProvider" />
              </node>
            </node>
            <node concept="2JrnkZ" id="5PjcHHGd0IC" role="2Oq$k0">
              <node concept="37vLTw" id="5PjcHHGd0ID" role="2JrQYb">
                <ref role="3cqZAo" node="5PjcHHGd0IG" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGd0IE" role="1B3o_S" />
      <node concept="3cqZAl" id="5PjcHHGd2yk" role="3clF45" />
      <node concept="37vLTG" id="5PjcHHGd0IG" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5PjcHHGd0IH" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGd0II" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGd1oD" role="3clF46">
        <property role="TrG5h" value="inspectionProvider" />
        <node concept="3uibUv" id="5PjcHHGd1GP" role="1tU5fm">
          <ref role="3uigEE" to="ppqf:1R4IoyRp$8l" resolve="InspectionProvider" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGd1Q$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGd54t" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGd5mW" role="jymVt">
      <property role="TrG5h" value="getPortListener" />
      <node concept="3clFbS" id="5PjcHHGd5mX" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGd5mY" role="3cqZAp">
          <node concept="0kSF2" id="5PjcHHGd5mZ" role="3clFbG">
            <node concept="3uibUv" id="5PjcHHGd6I0" role="0kSFW">
              <ref role="3uigEE" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGd5n1" role="0kSFX">
              <node concept="liA8E" id="5PjcHHGd5n2" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                <node concept="2YIFZM" id="5PjcHHGd6PQ" role="37wK5m">
                  <ref role="37wK5l" node="5PjcHHGcJZ0" resolve="portListener" />
                  <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                  <node concept="37vLTw" id="5PjcHHGd6RJ" role="37wK5m">
                    <ref role="3cqZAo" node="5PjcHHGd62L" resolve="port" />
                  </node>
                </node>
              </node>
              <node concept="2JrnkZ" id="5PjcHHGd5n4" role="2Oq$k0">
                <node concept="37vLTw" id="5PjcHHGd5n5" role="2JrQYb">
                  <ref role="3cqZAo" node="5PjcHHGd5n8" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGd5n6" role="1B3o_S" />
      <node concept="3uibUv" id="5PjcHHGd6BA" role="3clF45">
        <ref role="3uigEE" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
      </node>
      <node concept="37vLTG" id="5PjcHHGd5n8" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5PjcHHGd5n9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGd5na" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGd62L" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5PjcHHGd6mX" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGd6qC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGd5ng" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGd5nh" role="jymVt">
      <property role="TrG5h" value="setPortListener" />
      <node concept="3clFbS" id="5PjcHHGd5ni" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGd5nj" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGd5nk" role="3clFbG">
            <node concept="liA8E" id="5PjcHHGd5nl" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="2YIFZM" id="5PjcHHGd6U9" role="37wK5m">
                <ref role="37wK5l" node="5PjcHHGcJZ0" resolve="portListener" />
                <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                <node concept="37vLTw" id="5PjcHHGd7Dk" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGd7oR" resolve="port" />
                </node>
              </node>
              <node concept="37vLTw" id="5PjcHHGd5nn" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGd5nv" resolve="listener" />
              </node>
            </node>
            <node concept="2JrnkZ" id="5PjcHHGd5no" role="2Oq$k0">
              <node concept="37vLTw" id="5PjcHHGd5np" role="2JrQYb">
                <ref role="3cqZAo" node="5PjcHHGd5ns" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGd5nq" role="1B3o_S" />
      <node concept="3cqZAl" id="5PjcHHGd5nr" role="3clF45" />
      <node concept="37vLTG" id="5PjcHHGd5ns" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5PjcHHGd5nt" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGd5nu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGd7oR" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5PjcHHGd7oS" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGd7oT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGd5nv" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="5PjcHHGd76W" role="1tU5fm">
          <ref role="3uigEE" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGd5nx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGfKCV" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGfL6y" role="jymVt">
      <property role="TrG5h" value="getECCStateListener" />
      <node concept="3clFbS" id="5PjcHHGfL6z" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGfL6$" role="3cqZAp">
          <node concept="0kSF2" id="5PjcHHGfL6_" role="3clFbG">
            <node concept="3uibUv" id="5PjcHHGfL6A" role="0kSFW">
              <ref role="3uigEE" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGfL6B" role="0kSFX">
              <node concept="liA8E" id="5PjcHHGfL6C" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                <node concept="2YIFZM" id="5PjcHHGfN8u" role="37wK5m">
                  <ref role="37wK5l" node="5PjcHHGfJug" resolve="eccStateListener" />
                  <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                  <node concept="37vLTw" id="5PjcHHGfN8v" role="37wK5m">
                    <ref role="3cqZAo" node="5PjcHHGfL6M" resolve="fb" />
                  </node>
                </node>
              </node>
              <node concept="2JrnkZ" id="5PjcHHGfL6F" role="2Oq$k0">
                <node concept="37vLTw" id="5PjcHHGfL6G" role="2JrQYb">
                  <ref role="3cqZAo" node="5PjcHHGfL6J" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGfL6H" role="1B3o_S" />
      <node concept="3uibUv" id="5PjcHHGfL6I" role="3clF45">
        <ref role="3uigEE" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
      </node>
      <node concept="37vLTG" id="5PjcHHGfL6J" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5PjcHHGfL6K" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfL6L" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGfL6M" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="5PjcHHGfMFV" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfL6O" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGfL6P" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGfL6Q" role="jymVt">
      <property role="TrG5h" value="setECCStateListener" />
      <node concept="3clFbS" id="5PjcHHGfL6R" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGfL6S" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGfL6T" role="3clFbG">
            <node concept="liA8E" id="5PjcHHGfL6U" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="2YIFZM" id="5PjcHHGfNv6" role="37wK5m">
                <ref role="37wK5l" node="5PjcHHGfJug" resolve="eccStateListener" />
                <ref role="1Pybhc" node="5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                <node concept="37vLTw" id="5PjcHHGfNv7" role="37wK5m">
                  <ref role="3cqZAo" node="5PjcHHGfNfb" resolve="fb" />
                </node>
              </node>
              <node concept="37vLTw" id="5PjcHHGfL6X" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGfL78" resolve="listener" />
              </node>
            </node>
            <node concept="2JrnkZ" id="5PjcHHGfL6Y" role="2Oq$k0">
              <node concept="37vLTw" id="5PjcHHGfL6Z" role="2JrQYb">
                <ref role="3cqZAo" node="5PjcHHGfL72" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGfL70" role="1B3o_S" />
      <node concept="3cqZAl" id="5PjcHHGfL71" role="3clF45" />
      <node concept="37vLTG" id="5PjcHHGfL72" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5PjcHHGfL73" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfL74" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGfNfb" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="5PjcHHGfNfc" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfNfd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5PjcHHGfL78" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="5PjcHHGfL79" role="1tU5fm">
          <ref role="3uigEE" to="o04u:5jACUPF_hkq" resolve="WatchedValueListener" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfL7a" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGfKL8" role="jymVt" />
    <node concept="3Tm1VV" id="5PjcHHGcAKc" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5PjcHHGcIHv">
    <property role="TrG5h" value="InspectionListener" />
    <node concept="3Tm1VV" id="5PjcHHGcIHw" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5PjcHHGcIKn">
    <property role="TrG5h" value="NetworkObservationKeys" />
    <node concept="2tJIrI" id="5PjcHHGcIM_" role="jymVt" />
    <node concept="Wx3nA" id="5PjcHHGcJNo" role="jymVt">
      <property role="TrG5h" value="INSPECTION_PROVIDER" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5PjcHHGcJNr" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="5PjcHHGcJNs" role="33vP2m">
        <node concept="1pGfFk" id="5PjcHHGcJNt" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGcJNq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGcJDL" role="jymVt" />
    <node concept="2YIFZL" id="5PjcHHGcJZ0" role="jymVt">
      <property role="TrG5h" value="portListener" />
      <node concept="3clFbS" id="5PjcHHGcJZ3" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGcSyz" role="3cqZAp">
          <node concept="2ShNRf" id="5PjcHHGcSyx" role="3clFbG">
            <node concept="1pGfFk" id="5PjcHHGcSOy" role="2ShVmc">
              <ref role="37wK5l" node="5PjcHHGcLcR" resolve="NetworkObservationKeys.PortListenerKey" />
              <node concept="37vLTw" id="5PjcHHGcSRP" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGcK8Z" resolve="port" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGcJIA" role="1B3o_S" />
      <node concept="3uibUv" id="5PjcHHGcJX0" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="5PjcHHGcK8Z" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="5PjcHHGcK8Y" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGcSSW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5PjcHHGfJug" role="jymVt">
      <property role="TrG5h" value="eccStateListener" />
      <node concept="3clFbS" id="5PjcHHGfJuh" role="3clF47">
        <node concept="3clFbF" id="5PjcHHGfJui" role="3cqZAp">
          <node concept="2ShNRf" id="5PjcHHGfJuj" role="3clFbG">
            <node concept="1pGfFk" id="5PjcHHGfJuk" role="2ShVmc">
              <ref role="37wK5l" node="5PjcHHGfIeQ" resolve="NetworkObservationKeys.ECCStateListenerKey" />
              <node concept="37vLTw" id="5PjcHHGfJul" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGfJuo" resolve="fb" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PjcHHGfJum" role="1B3o_S" />
      <node concept="3uibUv" id="5PjcHHGfJun" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="5PjcHHGfJuo" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="5PjcHHGfJPb" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfJuq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGcKHz" role="jymVt" />
    <node concept="312cEu" id="5PjcHHGcKRT" role="jymVt">
      <property role="TrG5h" value="PortListenerKey" />
      <node concept="2tJIrI" id="5PjcHHGcKTz" role="jymVt" />
      <node concept="312cEg" id="5PjcHHGcLbZ" role="jymVt">
        <property role="TrG5h" value="myPort" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5PjcHHGcKYf" role="1B3o_S" />
        <node concept="3uibUv" id="5PjcHHGcLbO" role="1tU5fm">
          <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="2tJIrI" id="5PjcHHGcLck" role="jymVt" />
      <node concept="3Tm6S6" id="5PjcHHGcKMU" role="1B3o_S" />
      <node concept="3clFbW" id="5PjcHHGcLcR" role="jymVt">
        <node concept="3cqZAl" id="5PjcHHGcLcS" role="3clF45" />
        <node concept="3Tm6S6" id="5PjcHHGcLcT" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGcLcV" role="3clF47">
          <node concept="3clFbF" id="5PjcHHGcLcZ" role="3cqZAp">
            <node concept="37vLTI" id="5PjcHHGcLd1" role="3clFbG">
              <node concept="37vLTw" id="5PjcHHGcLd8" role="37vLTx">
                <ref role="3cqZAo" node="5PjcHHGcLcY" resolve="port" />
              </node>
              <node concept="37vLTw" id="5PjcHHGcLlN" role="37vLTJ">
                <ref role="3cqZAo" node="5PjcHHGcLbZ" resolve="myPort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5PjcHHGcLcY" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="3uibUv" id="5PjcHHGcLcX" role="1tU5fm">
            <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5PjcHHGfJlE" role="jymVt" />
      <node concept="3clFb_" id="5PjcHHGcLq8" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="5PjcHHGcLq9" role="3clF45" />
        <node concept="3Tm1VV" id="5PjcHHGcLqa" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGcLqb" role="3clF47">
          <node concept="3clFbJ" id="5PjcHHGcLqc" role="3cqZAp">
            <node concept="3clFbS" id="5PjcHHGcLqd" role="3clFbx">
              <node concept="3cpWs6" id="5PjcHHGcLqe" role="3cqZAp">
                <node concept="3clFbT" id="5PjcHHGcLqf" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5PjcHHGcLqg" role="3clFbw">
              <node concept="Xjq3P" id="5PjcHHGcLq7" role="3uHU7B" />
              <node concept="37vLTw" id="5PjcHHGcLqh" role="3uHU7w">
                <ref role="3cqZAo" node="5PjcHHGcLqC" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5PjcHHGcLqi" role="3cqZAp">
            <node concept="3clFbS" id="5PjcHHGcLqj" role="3clFbx">
              <node concept="3cpWs6" id="5PjcHHGcLqk" role="3cqZAp">
                <node concept="3clFbT" id="5PjcHHGcLql" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="5PjcHHGcM5S" role="3clFbw">
              <node concept="1eOMI4" id="5PjcHHGcM5U" role="3fr31v">
                <node concept="2ZW3vV" id="5PjcHHGcMrs" role="1eOMHV">
                  <node concept="3uibUv" id="5PjcHHGcMCv" role="2ZW6by">
                    <ref role="3uigEE" node="5PjcHHGcKRT" resolve="NetworkObservationKeys.PortListenerKey" />
                  </node>
                  <node concept="37vLTw" id="5PjcHHGcMeR" role="2ZW6bz">
                    <ref role="3cqZAo" node="5PjcHHGcLqC" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PjcHHGcLqx" role="3cqZAp" />
          <node concept="3cpWs8" id="5PjcHHGcLqy" role="3cqZAp">
            <node concept="3cpWsn" id="5PjcHHGcLqz" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="5PjcHHGcLq$" role="1tU5fm">
                <ref role="3uigEE" node="5PjcHHGcKRT" resolve="NetworkObservationKeys.PortListenerKey" />
              </node>
              <node concept="10QFUN" id="5PjcHHGcLq_" role="33vP2m">
                <node concept="3uibUv" id="5PjcHHGcLqA" role="10QFUM">
                  <ref role="3uigEE" node="5PjcHHGcKRT" resolve="NetworkObservationKeys.PortListenerKey" />
                </node>
                <node concept="37vLTw" id="5PjcHHGcLqB" role="10QFUP">
                  <ref role="3cqZAo" node="5PjcHHGcLqC" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PjcHHGcNax" role="3cqZAp" />
          <node concept="3clFbF" id="5PjcHHGcNyG" role="3cqZAp">
            <node concept="17R0WA" id="5PjcHHGcOcb" role="3clFbG">
              <node concept="2OqwBi" id="5PjcHHGcOqa" role="3uHU7w">
                <node concept="37vLTw" id="5PjcHHGcOjv" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGcLqz" resolve="that" />
                </node>
                <node concept="2OwXpG" id="5PjcHHGcPft" role="2OqNvi">
                  <ref role="2Oxat5" node="5PjcHHGcLbZ" resolve="myPort" />
                </node>
              </node>
              <node concept="37vLTw" id="5PjcHHGcNyE" role="3uHU7B">
                <ref role="3cqZAo" node="5PjcHHGcLbZ" resolve="myPort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5PjcHHGcLqC" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="5PjcHHGcLqD" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5PjcHHGcLqE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5PjcHHGcLr4" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="5PjcHHGcLr5" role="3clF45" />
        <node concept="3Tm1VV" id="5PjcHHGcLr6" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGcLr7" role="3clF47">
          <node concept="3clFbF" id="5PjcHHGcPU_" role="3cqZAp">
            <node concept="2OqwBi" id="5PjcHHGcQ4M" role="3clFbG">
              <node concept="37vLTw" id="5PjcHHGcPU$" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGcLbZ" resolve="myPort" />
              </node>
              <node concept="liA8E" id="5PjcHHGcS68" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5PjcHHGcLr8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="5PjcHHGfIeJ" role="jymVt">
      <property role="TrG5h" value="ECCStateListenerKey" />
      <node concept="2tJIrI" id="5PjcHHGfIeK" role="jymVt" />
      <node concept="312cEg" id="5PjcHHGfIeL" role="jymVt">
        <property role="TrG5h" value="myFB" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5PjcHHGfIeM" role="1B3o_S" />
        <node concept="3uibUv" id="5PjcHHGfIKW" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
      </node>
      <node concept="2tJIrI" id="5PjcHHGfIeO" role="jymVt" />
      <node concept="3Tm6S6" id="5PjcHHGfIeP" role="1B3o_S" />
      <node concept="3clFbW" id="5PjcHHGfIeQ" role="jymVt">
        <node concept="3cqZAl" id="5PjcHHGfIeR" role="3clF45" />
        <node concept="3Tm6S6" id="5PjcHHGfIeS" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGfIeT" role="3clF47">
          <node concept="3clFbF" id="5PjcHHGfIeU" role="3cqZAp">
            <node concept="37vLTI" id="5PjcHHGfIeV" role="3clFbG">
              <node concept="37vLTw" id="5PjcHHGfIeW" role="37vLTx">
                <ref role="3cqZAo" node="5PjcHHGfIeY" resolve="fb" />
              </node>
              <node concept="37vLTw" id="5PjcHHGfIeX" role="37vLTJ">
                <ref role="3cqZAo" node="5PjcHHGfIeL" resolve="myFB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5PjcHHGfIeY" role="3clF46">
          <property role="TrG5h" value="fb" />
          <node concept="3uibUv" id="5PjcHHGfJaQ" role="1tU5fm">
            <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5PjcHHGfJdn" role="jymVt" />
      <node concept="3clFb_" id="5PjcHHGfIf0" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="5PjcHHGfIf1" role="3clF45" />
        <node concept="3Tm1VV" id="5PjcHHGfIf2" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGfIf3" role="3clF47">
          <node concept="3clFbJ" id="5PjcHHGfIf4" role="3cqZAp">
            <node concept="3clFbS" id="5PjcHHGfIf5" role="3clFbx">
              <node concept="3cpWs6" id="5PjcHHGfIf6" role="3cqZAp">
                <node concept="3clFbT" id="5PjcHHGfIf7" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5PjcHHGfIf8" role="3clFbw">
              <node concept="Xjq3P" id="5PjcHHGfIf9" role="3uHU7B" />
              <node concept="37vLTw" id="5PjcHHGfIfa" role="3uHU7w">
                <ref role="3cqZAo" node="5PjcHHGfIfy" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5PjcHHGfIfb" role="3cqZAp">
            <node concept="3clFbS" id="5PjcHHGfIfc" role="3clFbx">
              <node concept="3cpWs6" id="5PjcHHGfIfd" role="3cqZAp">
                <node concept="3clFbT" id="5PjcHHGfIfe" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="5PjcHHGfIff" role="3clFbw">
              <node concept="1eOMI4" id="5PjcHHGfIfg" role="3fr31v">
                <node concept="2ZW3vV" id="5PjcHHGfIfh" role="1eOMHV">
                  <node concept="3uibUv" id="5PjcHHGfIfi" role="2ZW6by">
                    <ref role="3uigEE" node="5PjcHHGfIeJ" resolve="NetworkObservationKeys.ECCStateListenerKey" />
                  </node>
                  <node concept="37vLTw" id="5PjcHHGfIfj" role="2ZW6bz">
                    <ref role="3cqZAo" node="5PjcHHGfIfy" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PjcHHGfIfk" role="3cqZAp" />
          <node concept="3cpWs8" id="5PjcHHGfIfl" role="3cqZAp">
            <node concept="3cpWsn" id="5PjcHHGfIfm" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="5PjcHHGfIfn" role="1tU5fm">
                <ref role="3uigEE" node="5PjcHHGfIeJ" resolve="NetworkObservationKeys.ECCStateListenerKey" />
              </node>
              <node concept="10QFUN" id="5PjcHHGfIfo" role="33vP2m">
                <node concept="3uibUv" id="5PjcHHGfIfp" role="10QFUM">
                  <ref role="3uigEE" node="5PjcHHGfIeJ" resolve="NetworkObservationKeys.ECCStateListenerKey" />
                </node>
                <node concept="37vLTw" id="5PjcHHGfIfq" role="10QFUP">
                  <ref role="3cqZAo" node="5PjcHHGfIfy" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5PjcHHGfIfr" role="3cqZAp" />
          <node concept="3clFbF" id="5PjcHHGfIfs" role="3cqZAp">
            <node concept="17R0WA" id="5PjcHHGfIft" role="3clFbG">
              <node concept="2OqwBi" id="5PjcHHGfIfu" role="3uHU7w">
                <node concept="37vLTw" id="5PjcHHGfIfv" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGfIfm" resolve="that" />
                </node>
                <node concept="2OwXpG" id="5PjcHHGfIfw" role="2OqNvi">
                  <ref role="2Oxat5" node="5PjcHHGfIeL" resolve="myFB" />
                </node>
              </node>
              <node concept="37vLTw" id="5PjcHHGfIfx" role="3uHU7B">
                <ref role="3cqZAo" node="5PjcHHGfIeL" resolve="myFB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5PjcHHGfIfy" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="5PjcHHGfIfz" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfIf$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5PjcHHGfIf_" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="5PjcHHGfIfA" role="3clF45" />
        <node concept="3Tm1VV" id="5PjcHHGfIfB" role="1B3o_S" />
        <node concept="3clFbS" id="5PjcHHGfIfC" role="3clF47">
          <node concept="3clFbF" id="5PjcHHGfIfD" role="3cqZAp">
            <node concept="2OqwBi" id="5PjcHHGfIfE" role="3clFbG">
              <node concept="37vLTw" id="5PjcHHGfIfF" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHGfIeL" resolve="myFB" />
              </node>
              <node concept="liA8E" id="5PjcHHGfIfG" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5PjcHHGfIfH" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5PjcHHGcIKo" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="5PjcHHGf0WD">
    <property role="TrG5h" value="Debug_UnwatchPort" />
    <property role="2uzpH1" value="Stop Watching for Port" />
    <node concept="tnohg" id="5PjcHHGf0WE" role="tncku">
      <node concept="3clFbS" id="5PjcHHGf0WF" role="2VODD2">
        <node concept="3clFbF" id="5PjcHHGf0WG" role="3cqZAp">
          <node concept="2YIFZM" id="5PjcHHGf2l1" role="3clFbG">
            <ref role="37wK5l" node="5PjcHHGcDaP" resolve="unwatchPort" />
            <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
            <node concept="2OqwBi" id="5PjcHHGf2l2" role="37wK5m">
              <node concept="2WthIp" id="5PjcHHGf2l3" role="2Oq$k0" />
              <node concept="2XshWL" id="5PjcHHGf2l4" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Xu" resolve="resource" />
              </node>
            </node>
            <node concept="2OqwBi" id="5PjcHHGf2l5" role="37wK5m">
              <node concept="2WthIp" id="5PjcHHGf2l6" role="2Oq$k0" />
              <node concept="1DTwFV" id="5PjcHHGf2l7" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Xs" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="5PjcHHGf0WO" role="tmbBb">
      <node concept="3clFbS" id="5PjcHHGf0WP" role="2VODD2">
        <node concept="3cpWs8" id="5PjcHHGf0WQ" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf0WR" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="5PjcHHGf0WS" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGf0WT" role="33vP2m">
              <node concept="tl45R" id="5PjcHHGf0WU" role="2Oq$k0" />
              <node concept="liA8E" id="5PjcHHGf0WV" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7BKWMw_XDRy" role="3cqZAp">
          <node concept="3cpWsn" id="7BKWMw_XDRz" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="7BKWMw_XDRv" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
            </node>
            <node concept="2OqwBi" id="7BKWMw_XDR$" role="33vP2m">
              <node concept="2WthIp" id="7BKWMw_XDR_" role="2Oq$k0" />
              <node concept="2XshWL" id="7BKWMw_XDRA" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Xu" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7BKWMw_XEke" role="3cqZAp">
          <node concept="3clFbS" id="7BKWMw_XEkf" role="3clFbx">
            <node concept="3clFbF" id="7BKWMw_XEkg" role="3cqZAp">
              <node concept="2OqwBi" id="7BKWMw_XEkh" role="3clFbG">
                <node concept="37vLTw" id="7BKWMw_XEki" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGf0WR" resolve="presentation" />
                </node>
                <node concept="liA8E" id="7BKWMw_XEkj" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
                  <node concept="3clFbT" id="7BKWMw_XEkk" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7BKWMw_XEkl" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7BKWMw_XEkm" role="3clFbw">
            <node concept="10Nm6u" id="7BKWMw_XEkn" role="3uHU7w" />
            <node concept="37vLTw" id="7BKWMw_XEko" role="3uHU7B">
              <ref role="3cqZAo" node="7BKWMw_XDRz" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGf0WW" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf0WX" role="3cpWs9">
            <property role="TrG5h" value="hasWatchedPort" />
            <node concept="10P_77" id="5PjcHHGf0WY" role="1tU5fm" />
            <node concept="2YIFZM" id="5PjcHHGf2aP" role="33vP2m">
              <ref role="37wK5l" node="5PjcHHGedEz" resolve="hasWatchedPort" />
              <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
              <node concept="37vLTw" id="7BKWMw_XDRB" role="37wK5m">
                <ref role="3cqZAo" node="7BKWMw_XDRz" resolve="node" />
              </node>
              <node concept="2OqwBi" id="5PjcHHGf2aT" role="37wK5m">
                <node concept="2WthIp" id="5PjcHHGf2aU" role="2Oq$k0" />
                <node concept="1DTwFV" id="5PjcHHGf2aV" role="2OqNvi">
                  <ref role="2WH_rO" node="5PjcHHGf0Xs" resolve="cell" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5PjcHHGf0X6" role="3cqZAp">
          <node concept="3clFbS" id="5PjcHHGf0X7" role="3clFbx">
            <node concept="3clFbF" id="5PjcHHGf0X8" role="3cqZAp">
              <node concept="2OqwBi" id="5PjcHHGf0X9" role="3clFbG">
                <node concept="37vLTw" id="5PjcHHGf0Xa" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGf0WR" resolve="presentation" />
                </node>
                <node concept="liA8E" id="5PjcHHGf0Xb" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="5PjcHHGf0Xc" role="37wK5m">
                    <node concept="Xl_RD" id="5PjcHHGf0Xd" role="3uHU7B">
                      <property role="Xl_RC" value="Stop Watching for Port " />
                    </node>
                    <node concept="2YIFZM" id="5PjcHHGf0Xe" role="3uHU7w">
                      <ref role="37wK5l" node="5PjcHHGdY9q" resolve="portToWatch" />
                      <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
                      <node concept="2OqwBi" id="5PjcHHGf0Xf" role="37wK5m">
                        <node concept="2WthIp" id="5PjcHHGf0Xg" role="2Oq$k0" />
                        <node concept="1DTwFV" id="5PjcHHGf0Xh" role="2OqNvi">
                          <ref role="2WH_rO" node="5PjcHHGf0Xs" resolve="cell" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5PjcHHGf0Xi" role="3clFbw">
            <ref role="3cqZAo" node="5PjcHHGf0WX" resolve="hasWatchedPort" />
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGf0Xj" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGf0Xk" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGf0Xl" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGf0WR" resolve="presentation" />
            </node>
            <node concept="liA8E" id="5PjcHHGf0Xm" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="37vLTw" id="5PjcHHGf0Xn" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGf0WX" resolve="hasWatchedPort" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="5PjcHHGf0Xo" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="5PjcHHGf0Xp" role="1B3o_S" />
      <node concept="1oajcY" id="5PjcHHGf0Xq" role="1oa70y" />
      <node concept="3Tqbb2" id="5PjcHHGf0Xr" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="5PjcHHGf0Xs" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5PjcHHGf0Xt" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="5PjcHHGf0Xu" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="5PjcHHGf0Xv" role="1B3o_S" />
      <node concept="3Tqbb2" id="5PjcHHGf0Xw" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
      </node>
      <node concept="3clFbS" id="5PjcHHGf0Xx" role="3clF47">
        <node concept="3cpWs6" id="5PjcHHGf0Xy" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGf0Xz" role="3cqZAk">
            <node concept="2OqwBi" id="5PjcHHGf0X$" role="2Oq$k0">
              <node concept="2WthIp" id="5PjcHHGf0X_" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGf0XA" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Xo" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5PjcHHGf0XB" role="2OqNvi">
              <node concept="1xMEDy" id="5PjcHHGf0XC" role="1xVPHs">
                <node concept="chp4Y" id="5PjcHHGf0XD" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5PjcHHGf4rU">
    <property role="TrG5h" value="Debug_WatchECCState" />
    <property role="2uzpH1" value="Watch for ECC Internal State" />
    <node concept="2XrIbr" id="5PjcHHGgQPx" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="5PjcHHGgQPy" role="1B3o_S" />
      <node concept="3Tqbb2" id="5PjcHHGgQPz" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
      </node>
      <node concept="3clFbS" id="5PjcHHGgQP$" role="3clF47">
        <node concept="3cpWs6" id="5PjcHHGgQP_" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGgQPA" role="3cqZAk">
            <node concept="2OqwBi" id="5PjcHHGgQPB" role="2Oq$k0">
              <node concept="2WthIp" id="5PjcHHGgQPC" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGgQPD" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgOsC" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5PjcHHGgQPE" role="2OqNvi">
              <node concept="1xMEDy" id="5PjcHHGgQPF" role="1xVPHs">
                <node concept="chp4Y" id="5PjcHHGgQPG" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="5PjcHHGgOsC" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="5PjcHHGgOsD" role="1B3o_S" />
      <node concept="1oajcY" id="5PjcHHGgOsE" role="1oa70y" />
      <node concept="3Tqbb2" id="5PjcHHGgOsF" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="5PjcHHGgOsG" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5PjcHHGgOsH" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5PjcHHGf4rV" role="tncku">
      <node concept="3clFbS" id="5PjcHHGf4rW" role="2VODD2">
        <node concept="3clFbF" id="5PjcHHGgR$l" role="3cqZAp">
          <node concept="2YIFZM" id="5PjcHHGgRCv" role="3clFbG">
            <ref role="37wK5l" node="5PjcHHGf6cW" resolve="watchEcc" />
            <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
            <node concept="2OqwBi" id="5PjcHHGgRCw" role="37wK5m">
              <node concept="2WthIp" id="5PjcHHGgRCx" role="2Oq$k0" />
              <node concept="2XshWL" id="5PjcHHGgRCy" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgQPx" resolve="resource" />
              </node>
            </node>
            <node concept="2OqwBi" id="5PjcHHGgRCz" role="37wK5m">
              <node concept="2WthIp" id="5PjcHHGgRC$" role="2Oq$k0" />
              <node concept="1DTwFV" id="5PjcHHGgRC_" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgOsG" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="5PjcHHGgOep" role="tmbBb">
      <node concept="3clFbS" id="5PjcHHGgOeq" role="2VODD2">
        <node concept="3cpWs8" id="7BKWMw_XBCh" role="3cqZAp">
          <node concept="3cpWsn" id="7BKWMw_XBCi" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="7BKWMw_XBCj" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
            </node>
            <node concept="2OqwBi" id="7BKWMw_XBCk" role="33vP2m">
              <node concept="2WthIp" id="7BKWMw_XBCl" role="2Oq$k0" />
              <node concept="2XshWL" id="7BKWMw_XBCm" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgQPx" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGgQ$_" role="3cqZAp">
          <node concept="1Wc70l" id="7BKWMw_XCGE" role="3clFbG">
            <node concept="3y3z36" id="7BKWMw_XDfh" role="3uHU7B">
              <node concept="10Nm6u" id="7BKWMw_XDpi" role="3uHU7w" />
              <node concept="37vLTw" id="7BKWMw_XCS4" role="3uHU7B">
                <ref role="3cqZAo" node="7BKWMw_XBCi" resolve="node" />
              </node>
            </node>
            <node concept="2YIFZM" id="5PjcHHGgRre" role="3uHU7w">
              <ref role="37wK5l" node="5PjcHHGfRDa" resolve="hasEccToWatch" />
              <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
              <node concept="37vLTw" id="7BKWMw_XC4v" role="37wK5m">
                <ref role="3cqZAo" node="7BKWMw_XBCi" resolve="node" />
              </node>
              <node concept="2OqwBi" id="5PjcHHGgRri" role="37wK5m">
                <node concept="2WthIp" id="5PjcHHGgRrj" role="2Oq$k0" />
                <node concept="1DTwFV" id="5PjcHHGgRrk" role="2OqNvi">
                  <ref role="2WH_rO" node="5PjcHHGgOsG" resolve="cell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5PjcHHGf4LE">
    <property role="TrG5h" value="ECCInternalStateData" />
    <node concept="312cEg" id="5PjcHHGf50M" role="jymVt">
      <property role="TrG5h" value="myStateValue" />
      <node concept="3Tm1VV" id="5PjcHHGf5pp" role="1B3o_S" />
      <node concept="17QB3L" id="5PjcHHGf50A" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGf510" role="jymVt" />
    <node concept="312cEg" id="5PjcHHGf5o9" role="jymVt">
      <property role="TrG5h" value="myInternalValues" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5PjcHHGf5pz" role="1B3o_S" />
      <node concept="3rvAFt" id="5PjcHHGf5eW" role="1tU5fm">
        <node concept="17QB3L" id="5PjcHHGf5j_" role="3rvQeY" />
        <node concept="17QB3L" id="5PjcHHGf5o6" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="5PjcHHGf5qw" role="33vP2m">
        <node concept="3rGOSV" id="5PjcHHGf5H9" role="2ShVmc">
          <node concept="17QB3L" id="5PjcHHGf5TJ" role="3rHrn6" />
          <node concept="17QB3L" id="5PjcHHGf62S" role="3rHtpV" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5PjcHHGf4LF" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="5PjcHHGgRM$">
    <property role="TrG5h" value="Debug_UnwatchECCState" />
    <property role="2uzpH1" value="Stop Watching for ECC Internal State" />
    <node concept="2XrIbr" id="5PjcHHGgRM_" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="5PjcHHGgRMA" role="1B3o_S" />
      <node concept="3Tqbb2" id="5PjcHHGgRMB" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
      </node>
      <node concept="3clFbS" id="5PjcHHGgRMC" role="3clF47">
        <node concept="3cpWs6" id="5PjcHHGgRMD" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGgRME" role="3cqZAk">
            <node concept="2OqwBi" id="5PjcHHGgRMF" role="2Oq$k0">
              <node concept="2WthIp" id="5PjcHHGgRMG" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGgRMH" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgRML" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5PjcHHGgRMI" role="2OqNvi">
              <node concept="1xMEDy" id="5PjcHHGgRMJ" role="1xVPHs">
                <node concept="chp4Y" id="5PjcHHGgRMK" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="5PjcHHGgRML" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="5PjcHHGgRMM" role="1B3o_S" />
      <node concept="1oajcY" id="5PjcHHGgRMN" role="1oa70y" />
      <node concept="3Tqbb2" id="5PjcHHGgRMO" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="5PjcHHGgRMP" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5PjcHHGgRMQ" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5PjcHHGgRMR" role="tncku">
      <node concept="3clFbS" id="5PjcHHGgRMS" role="2VODD2">
        <node concept="3clFbF" id="5PjcHHGgRMT" role="3cqZAp">
          <node concept="2YIFZM" id="5PjcHHGgStt" role="3clFbG">
            <ref role="37wK5l" node="5PjcHHGfP1g" resolve="unwatchEcc" />
            <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
            <node concept="2OqwBi" id="5PjcHHGgStu" role="37wK5m">
              <node concept="2WthIp" id="5PjcHHGgStv" role="2Oq$k0" />
              <node concept="2XshWL" id="5PjcHHGgStw" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgRM_" resolve="resource" />
              </node>
            </node>
            <node concept="2OqwBi" id="5PjcHHGgStx" role="37wK5m">
              <node concept="2WthIp" id="5PjcHHGgSty" role="2Oq$k0" />
              <node concept="1DTwFV" id="5PjcHHGgStz" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgRMP" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="5PjcHHGgRN1" role="tmbBb">
      <node concept="3clFbS" id="5PjcHHGgRN2" role="2VODD2">
        <node concept="3cpWs8" id="7BKWMw_XFpx" role="3cqZAp">
          <node concept="3cpWsn" id="7BKWMw_XFpy" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="7BKWMw_XFpv" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
            </node>
            <node concept="2OqwBi" id="7BKWMw_XFpz" role="33vP2m">
              <node concept="2WthIp" id="7BKWMw_XFp$" role="2Oq$k0" />
              <node concept="2XshWL" id="7BKWMw_XFp_" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgRM_" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGgRN3" role="3cqZAp">
          <node concept="1Wc70l" id="7BKWMw_XGpe" role="3clFbG">
            <node concept="3y3z36" id="7BKWMw_XGUf" role="3uHU7B">
              <node concept="10Nm6u" id="7BKWMw_XH6Y" role="3uHU7w" />
              <node concept="37vLTw" id="7BKWMw_XGzP" role="3uHU7B">
                <ref role="3cqZAo" node="7BKWMw_XFpy" resolve="node" />
              </node>
            </node>
            <node concept="2YIFZM" id="5PjcHHGgSi8" role="3uHU7w">
              <ref role="37wK5l" node="5PjcHHGfRE9" resolve="hasWatchedEcc" />
              <ref role="1Pybhc" node="5PjcHHGcAKb" resolve="WatchActionsFacade" />
              <node concept="37vLTw" id="7BKWMw_XFpA" role="37wK5m">
                <ref role="3cqZAo" node="7BKWMw_XFpy" resolve="node" />
              </node>
              <node concept="2OqwBi" id="5PjcHHGgSic" role="37wK5m">
                <node concept="2WthIp" id="5PjcHHGgSid" role="2Oq$k0" />
                <node concept="1DTwFV" id="5PjcHHGgSie" role="2OqNvi">
                  <ref role="2WH_rO" node="5PjcHHGgRMP" resolve="cell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

