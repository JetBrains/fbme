<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(org.fbme.ide.iec61499.adapter.fbnetwork)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="74cb" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.instances(org.fbme.lib/)" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="6iyo" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork.subapp(org.fbme.lib/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="3609773094169249792" name="jetbrains.mps.lang.smodel.structure.Node_GetReferenceOperation" flags="nn" index="37Cfm0">
        <child id="3609773094169252180" name="linkQualifier" index="37CeNk" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="5708036808576088033" name="jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo" flags="nn" index="1FfNbt" />
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1172650591544" name="jetbrains.mps.baseLanguage.collections.structure.SkipOperation" flags="nn" index="7r0gD">
        <child id="1172658456740" name="elementsToSkip" index="7T0AP" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="3IX4BsKu5jS">
    <property role="TrG5h" value="FBNetworkConnectionByNode" />
    <node concept="2tJIrI" id="3IX4BsKu5l0" role="jymVt" />
    <node concept="312cEg" id="3IX4BsKu5By" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3IX4BsKu5qe" role="1B3o_S" />
      <node concept="3Tqbb2" id="3IX4BsKu5Bk" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:4KieeRVlhii" resolve="Connection" />
      </node>
    </node>
    <node concept="312cEg" id="6YcNwH3_SGG" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6YcNwH3_LXh" role="1B3o_S" />
      <node concept="3uibUv" id="6YcNwH3_Stu" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="1XSQy8A3lfL" role="jymVt" />
    <node concept="3clFbW" id="3IX4BsKu5KP" role="jymVt">
      <node concept="3cqZAl" id="3IX4BsKu5KR" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsKu5KS" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsKu5KT" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKu67h" role="3cqZAp">
          <node concept="37vLTI" id="3IX4BsKu6VB" role="3clFbG">
            <node concept="37vLTw" id="3IX4BsKu75k" role="37vLTx">
              <ref role="3cqZAo" node="3IX4BsKu5TQ" resolve="node" />
            </node>
            <node concept="37vLTw" id="3IX4BsKu67g" role="37vLTJ">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3_VAE" role="3cqZAp">
          <node concept="37vLTI" id="6YcNwH3_VXx" role="3clFbG">
            <node concept="37vLTw" id="6YcNwH3_We0" role="37vLTx">
              <ref role="3cqZAo" node="6YcNwH3_Vja" resolve="repository" />
            </node>
            <node concept="37vLTw" id="6YcNwH3_VAC" role="37vLTJ">
              <ref role="3cqZAo" node="6YcNwH3_SGG" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKu5TQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3IX4BsKu5TP" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:4KieeRVlhii" resolve="Connection" />
        </node>
      </node>
      <node concept="37vLTG" id="6YcNwH3_Vja" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="6YcNwH3_V$x" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKuu8v" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKutwO" role="jymVt">
      <property role="TrG5h" value="getSourcePort" />
      <node concept="3Tm1VV" id="3IX4BsKutwQ" role="1B3o_S" />
      <node concept="3uibUv" id="5FPxgJnzaxD" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
      </node>
      <node concept="3clFbS" id="3IX4BsKutwS" role="3clF47">
        <node concept="3clFbF" id="1XSQy8A3Fnf" role="3cqZAp">
          <node concept="1rXfSq" id="6YcNwH3_JwE" role="3clFbG">
            <ref role="37wK5l" node="1XSQy8A3yb1" resolve="createSourcePort" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKutwT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKuuqs" role="jymVt" />
    <node concept="3clFb_" id="1XSQy8A3yb1" role="jymVt">
      <property role="TrG5h" value="createSourcePort" />
      <node concept="3clFbS" id="1XSQy8A3yb4" role="3clF47">
        <node concept="3clFbJ" id="6oXN8hZQKG2" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZQKG4" role="3clFbx">
            <node concept="3cpWs8" id="6oXN8hZQPvO" role="3cqZAp">
              <node concept="3cpWsn" id="6oXN8hZQPvP" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="6oXN8hZQPvN" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
                </node>
                <node concept="2OqwBi" id="6oXN8hZQPvS" role="33vP2m">
                  <node concept="1PxgMI" id="6tmliaA5yEa" role="2Oq$k0">
                    <node concept="chp4Y" id="6tmliaA5zHo" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                    </node>
                    <node concept="37vLTw" id="6oXN8hZQPvT" role="1m5AlR">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6tmliaA5_aV" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA5Bxw" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA5Bxy" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA5NPz" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA5NP$" role="3cpWs9">
                    <property role="TrG5h" value="componentSource" />
                    <node concept="3Tqbb2" id="6tmliaA5NPq" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA5NP_" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA5NPA" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA5NPB" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="31Fn7oZCjtM" role="3cqZAp">
                  <node concept="3cpWsn" id="31Fn7oZCjtN" role="3cpWs9">
                    <property role="TrG5h" value="fb" />
                    <node concept="3uibUv" id="6mkmem0DuWX" role="1tU5fm">
                      <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                    </node>
                    <node concept="2OqwBi" id="6YcNwH3A08z" role="33vP2m">
                      <node concept="37vLTw" id="6YcNwH3_Z5k" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YcNwH3_SGG" resolve="myRepository" />
                      </node>
                      <node concept="liA8E" id="6YcNwH3A2Co" role="2OqNvi">
                        <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                        <node concept="2OqwBi" id="31Fn7oZCjtP" role="37wK5m">
                          <node concept="37vLTw" id="31Fn7oZCjtQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA5NP$" resolve="componentSource" />
                          </node>
                          <node concept="3TrEf2" id="31Fn7oZCjtR" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="3VsKOn" id="6YcNwH3A9uF" role="37wK5m">
                          <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="31Fn7oZEZUl" role="3cqZAp">
                  <node concept="3cpWsn" id="31Fn7oZEZUm" role="3cpWs9">
                    <property role="TrG5h" value="declaration" />
                    <node concept="3Tqbb2" id="31Fn7oZEZUn" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="31Fn7oZEZUo" role="33vP2m">
                      <node concept="37vLTw" id="31Fn7oZEZUp" role="2Oq$k0">
                        <ref role="3cqZAo" node="6tmliaA5NP$" resolve="componentSource" />
                      </node>
                      <node concept="3TrEf2" id="31Fn7oZF5EA" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="31Fn7oZEZUr" role="3cqZAp">
                  <node concept="3clFbS" id="31Fn7oZEZUs" role="3clFbx">
                    <node concept="3cpWs6" id="31Fn7oZEZUt" role="3cqZAp">
                      <node concept="2ShNRf" id="31Fn7oZEZUu" role="3cqZAk">
                        <node concept="1pGfFk" id="31Fn7oZEZUv" role="2ShVmc">
                          <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean)" resolve="FunctionBlockPortIdentity" />
                          <node concept="37vLTw" id="31Fn7oZEZUw" role="37wK5m">
                            <ref role="3cqZAo" node="31Fn7oZCjtN" resolve="fb" />
                          </node>
                          <node concept="2OqwBi" id="31Fn7oZEZUx" role="37wK5m">
                            <node concept="37vLTw" id="31Fn7oZEZUy" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZEZUm" resolve="declaration" />
                            </node>
                            <node concept="2bSWHS" id="31Fn7oZEZUz" role="2OqNvi" />
                          </node>
                          <node concept="Rm8GO" id="31Fn7oZF6IW" role="37wK5m">
                            <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                          </node>
                          <node concept="3clFbT" id="31Fn7oZEZU_" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="2OqwBi" id="1S4cYrOOnaC" role="37wK5m">
                            <node concept="37vLTw" id="1S4cYrOOlKT" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZEZUm" resolve="declaration" />
                            </node>
                            <node concept="3TrcHB" id="1S4cYrOOpNh" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="31Fn7oZEZUA" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="31Fn7oZEZUB" role="3clFbw">
                    <node concept="3y3z36" id="31Fn7oZEZUC" role="3uHU7B">
                      <node concept="37vLTw" id="31Fn7oZEZUD" role="3uHU7B">
                        <ref role="3cqZAo" node="31Fn7oZEZUm" resolve="declaration" />
                      </node>
                      <node concept="10Nm6u" id="31Fn7oZEZUE" role="3uHU7w" />
                    </node>
                    <node concept="2OqwBi" id="31Fn7oZEZUF" role="3uHU7w">
                      <node concept="2OqwBi" id="31Fn7oZEZUG" role="2Oq$k0">
                        <node concept="2OqwBi" id="31Fn7oZEZUH" role="2Oq$k0">
                          <node concept="37vLTw" id="31Fn7oZEZUI" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA5NP$" resolve="componentSource" />
                          </node>
                          <node concept="3TrEf2" id="31Fn7oZEZUJ" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="31Fn7oZF6$_" role="2OqNvi">
                          <ref role="37wK5l" to="t4dg:5L1OxDukYcu" resolve="eventSources" />
                        </node>
                      </node>
                      <node concept="3JPx81" id="31Fn7oZEZUL" role="2OqNvi">
                        <node concept="37vLTw" id="31Fn7oZEZUM" role="25WWJ7">
                          <ref role="3cqZAo" node="31Fn7oZEZUm" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="31Fn7oZEZUN" role="9aQIa">
                    <node concept="3clFbS" id="31Fn7oZEZUO" role="9aQI4">
                      <node concept="3cpWs6" id="6YcNwH3AqXm" role="3cqZAp">
                        <node concept="10Nm6u" id="6YcNwH3AsZq" role="3cqZAk" />
                      </node>
                      <node concept="1X3_iC" id="6YcNwH3An$R" role="lGtFl">
                        <property role="3V$3am" value="statement" />
                        <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                        <node concept="3cpWs6" id="31Fn7oZEZUP" role="8Wnug">
                          <node concept="2OqwBi" id="31Fn7oZEZUQ" role="3cqZAk">
                            <node concept="37vLTw" id="31Fn7oZEZUR" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZCjtN" resolve="fb" />
                            </node>
                            <node concept="liA8E" id="31Fn7oZEZUS" role="2OqNvi">
                              <ref role="37wK5l" to="g27j:~TypedFBNetworkComponent.getPort(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="getPort" />
                              <node concept="2OqwBi" id="31Fn7oZEZUT" role="37wK5m">
                                <node concept="2OqwBi" id="31Fn7oZEZUU" role="2Oq$k0">
                                  <node concept="37vLTw" id="31Fn7oZEZUV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="31Fn7oZC8Zb" resolve="myNetwork" />
                                  </node>
                                  <node concept="liA8E" id="31Fn7oZEZUW" role="2OqNvi">
                                    <ref role="37wK5l" node="31Fn7oZAYo3" resolve="getBrokenTargets" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="31Fn7oZEZUX" role="2OqNvi">
                                  <ref role="37wK5l" node="31Fn7oZzEGw" resolve="reportBrokenOutputEvent" />
                                  <node concept="37vLTw" id="31Fn7oZEZUY" role="37wK5m">
                                    <ref role="3cqZAo" node="31Fn7oZCjtN" resolve="fb" />
                                  </node>
                                  <node concept="2OqwBi" id="31Fn7oZEZUZ" role="37wK5m">
                                    <node concept="2OqwBi" id="31Fn7oZEZV0" role="2Oq$k0">
                                      <node concept="37vLTw" id="31Fn7oZEZV1" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6tmliaA5NP$" resolve="componentSource" />
                                      </node>
                                      <node concept="37Cfm0" id="31Fn7oZEZV2" role="2OqNvi">
                                        <node concept="1aIX9F" id="31Fn7oZEZV3" role="37CeNk">
                                          <node concept="26LbJo" id="31Fn7oZEZV4" role="1aIX9E">
                                            <ref role="26LbJp" to="xiqq:PI_pXYus4s" resolve="declaration" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1FfNbt" id="31Fn7oZEZV5" role="2OqNvi" />
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
              <node concept="2OqwBi" id="6tmliaA5CN$" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA5CCy" role="2Oq$k0">
                  <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA5K8i" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA5Kby" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA62mV" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA62mX" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA6b8_" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA6b8A" role="3cpWs9">
                    <property role="TrG5h" value="contextSource" />
                    <node concept="3Tqbb2" id="6tmliaA6b8B" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA6b8C" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA6uAM" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA6b8E" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6YcNwH3AwWO" role="3cqZAp">
                  <node concept="2ShNRf" id="31DWWgF7Cik" role="3cqZAk">
                    <node concept="1pGfFk" id="31DWWgF7G1n" role="2ShVmc">
                      <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                      <node concept="2OqwBi" id="31DWWgF7MDq" role="37wK5m">
                        <node concept="37vLTw" id="31DWWgF7MDr" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tmliaA6b8A" resolve="contextSource" />
                        </node>
                        <node concept="3TrEf2" id="31DWWgF7MDs" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="31DWWgF7ZU1" role="37wK5m">
                        <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="31DWWgF820h" role="3clFbw">
                <node concept="3y3z36" id="31DWWgF84TI" role="3uHU7w">
                  <node concept="10Nm6u" id="31DWWgF85rm" role="3uHU7w" />
                  <node concept="1rXfSq" id="31DWWgF84qM" role="3uHU7B">
                    <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6tmliaA63GT" role="3uHU7B">
                  <node concept="37vLTw" id="6tmliaA63xR" role="2Oq$k0">
                    <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                  </node>
                  <node concept="1mIQ4w" id="6tmliaA6b1h" role="2OqNvi">
                    <node concept="chp4Y" id="6tmliaA6b4x" role="cj9EA">
                      <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZQLdJ" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZQKPo" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZQOUu" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZQP07" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6oXN8hZRmW9" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRmWa" role="3clFbx">
            <node concept="3cpWs8" id="6oXN8hZRmWb" role="3cqZAp">
              <node concept="3cpWsn" id="6oXN8hZRmWc" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="6oXN8hZRmWd" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vlA5G" resolve="DataSource" />
                </node>
                <node concept="2OqwBi" id="6oXN8hZRmWg" role="33vP2m">
                  <node concept="1PxgMI" id="6tmliaA6AF9" role="2Oq$k0">
                    <node concept="chp4Y" id="6tmliaA6BS7" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                    </node>
                    <node concept="37vLTw" id="6oXN8hZRmWh" role="1m5AlR">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6tmliaA6Dqk" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus41" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA6Pd0" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA6Pd2" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA70H8" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA70Hb" role="3cpWs9">
                    <property role="TrG5h" value="componentSource" />
                    <node concept="3Tqbb2" id="6tmliaA70Hc" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA70Hd" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA73i1" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA70Hf" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="31Fn7oZCoLa" role="3cqZAp">
                  <node concept="3cpWsn" id="31Fn7oZCoLb" role="3cpWs9">
                    <property role="TrG5h" value="fb" />
                    <node concept="3uibUv" id="6mkmem0D$4D" role="1tU5fm">
                      <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                    </node>
                    <node concept="2OqwBi" id="31DWWgF8hSg" role="33vP2m">
                      <node concept="37vLTw" id="31DWWgF8hSh" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YcNwH3_SGG" resolve="myRepository" />
                      </node>
                      <node concept="liA8E" id="31DWWgF8hSi" role="2OqNvi">
                        <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                        <node concept="2OqwBi" id="31DWWgF8hSj" role="37wK5m">
                          <node concept="37vLTw" id="31DWWgF8hSk" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA70Hb" resolve="componentSource" />
                          </node>
                          <node concept="3TrEf2" id="31DWWgF8hSl" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="3VsKOn" id="31DWWgF8hSm" role="37wK5m">
                          <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="31Fn7oZCLB1" role="3cqZAp">
                  <node concept="3cpWsn" id="31Fn7oZCLB2" role="3cpWs9">
                    <property role="TrG5h" value="declaration" />
                    <node concept="3Tqbb2" id="31Fn7oZCJVc" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="31Fn7oZCLB3" role="33vP2m">
                      <node concept="37vLTw" id="31Fn7oZCLB4" role="2Oq$k0">
                        <ref role="3cqZAo" node="6tmliaA70Hb" resolve="componentSource" />
                      </node>
                      <node concept="3TrEf2" id="31Fn7oZCLB5" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="31Fn7oZCOmo" role="3cqZAp">
                  <node concept="3clFbS" id="31Fn7oZCOmq" role="3clFbx">
                    <node concept="3cpWs6" id="6oXN8hZRmWj" role="3cqZAp">
                      <node concept="2ShNRf" id="6oXN8hZRmWk" role="3cqZAk">
                        <node concept="1pGfFk" id="6oXN8hZRmWl" role="2ShVmc">
                          <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean)" resolve="FunctionBlockPortIdentity" />
                          <node concept="37vLTw" id="31Fn7oZCoLh" role="37wK5m">
                            <ref role="3cqZAo" node="31Fn7oZCoLb" resolve="fb" />
                          </node>
                          <node concept="2OqwBi" id="6oXN8hZRmWt" role="37wK5m">
                            <node concept="37vLTw" id="31Fn7oZCLB6" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZCLB2" resolve="declaration" />
                            </node>
                            <node concept="2bSWHS" id="6oXN8hZRmWx" role="2OqNvi" />
                          </node>
                          <node concept="Rm8GO" id="6oXN8hZRp5a" role="37wK5m">
                            <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                          </node>
                          <node concept="3clFbT" id="6oXN8hZRmWz" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="2OqwBi" id="1S4cYrOOrLi" role="37wK5m">
                            <node concept="37vLTw" id="1S4cYrOOrLj" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZCLB2" resolve="declaration" />
                            </node>
                            <node concept="3TrcHB" id="1S4cYrOOrLk" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="31Fn7oZEYwt" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="31Fn7oZCTmO" role="3clFbw">
                    <node concept="3y3z36" id="31Fn7oZCQAb" role="3uHU7B">
                      <node concept="37vLTw" id="31Fn7oZCPYO" role="3uHU7B">
                        <ref role="3cqZAo" node="31Fn7oZCLB2" resolve="declaration" />
                      </node>
                      <node concept="10Nm6u" id="31Fn7oZCQAr" role="3uHU7w" />
                    </node>
                    <node concept="2OqwBi" id="31Fn7oZD05k" role="3uHU7w">
                      <node concept="2OqwBi" id="31Fn7oZCXmP" role="2Oq$k0">
                        <node concept="2OqwBi" id="31Fn7oZCWhH" role="2Oq$k0">
                          <node concept="37vLTw" id="31Fn7oZCWhI" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA70Hb" resolve="componentSource" />
                          </node>
                          <node concept="3TrEf2" id="6z_cCa7WS$L" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="31Fn7oZCXAH" role="2OqNvi">
                          <ref role="37wK5l" to="t4dg:5L1OxDukYe7" resolve="dataSources" />
                        </node>
                      </node>
                      <node concept="3JPx81" id="31Fn7oZD3Kb" role="2OqNvi">
                        <node concept="37vLTw" id="31Fn7oZD3WC" role="25WWJ7">
                          <ref role="3cqZAo" node="31Fn7oZCLB2" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="31Fn7oZD4bY" role="9aQIa">
                    <node concept="3clFbS" id="31Fn7oZD4bZ" role="9aQI4">
                      <node concept="3cpWs6" id="31DWWgF8cHG" role="3cqZAp">
                        <node concept="10Nm6u" id="31DWWgF8dB8" role="3cqZAk" />
                      </node>
                      <node concept="1X3_iC" id="31DWWgF87Rc" role="lGtFl">
                        <property role="3V$3am" value="statement" />
                        <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                        <node concept="3cpWs6" id="31Fn7oZDajD" role="8Wnug">
                          <node concept="2OqwBi" id="31Fn7oZDc$V" role="3cqZAk">
                            <node concept="37vLTw" id="31Fn7oZDakJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZCoLb" resolve="fb" />
                            </node>
                            <node concept="liA8E" id="31Fn7oZDe1I" role="2OqNvi">
                              <ref role="37wK5l" to="g27j:~TypedFBNetworkComponent.getPort(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="getPort" />
                              <node concept="2OqwBi" id="31Fn7oZD7p4" role="37wK5m">
                                <node concept="2OqwBi" id="31Fn7oZD6G$" role="2Oq$k0">
                                  <node concept="37vLTw" id="31Fn7oZD6jD" role="2Oq$k0">
                                    <ref role="3cqZAo" node="31Fn7oZC8Zb" resolve="myNetwork" />
                                  </node>
                                  <node concept="liA8E" id="31Fn7oZD7bO" role="2OqNvi">
                                    <ref role="37wK5l" node="31Fn7oZAYo3" resolve="getBrokenTargets" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="31Fn7oZDfB4" role="2OqNvi">
                                  <ref role="37wK5l" node="31Fn7oZ$pq9" resolve="reportBrokenOutputData" />
                                  <node concept="37vLTw" id="31Fn7oZEWmx" role="37wK5m">
                                    <ref role="3cqZAo" node="31Fn7oZCoLb" resolve="fb" />
                                  </node>
                                  <node concept="2OqwBi" id="31Fn7oZETVj" role="37wK5m">
                                    <node concept="2OqwBi" id="31Fn7oZERzm" role="2Oq$k0">
                                      <node concept="37vLTw" id="31Fn7oZEQlD" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6tmliaA70Hb" resolve="componentSource" />
                                      </node>
                                      <node concept="37Cfm0" id="31Fn7oZETRx" role="2OqNvi">
                                        <node concept="1aIX9F" id="31Fn7oZETRz" role="37CeNk">
                                          <node concept="26LbJo" id="31Fn7oZETTz" role="1aIX9E">
                                            <ref role="26LbJp" to="xiqq:PI_pXYus3O" resolve="declaration" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1FfNbt" id="31Fn7oZEVf7" role="2OqNvi" />
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
              <node concept="2OqwBi" id="6tmliaA6QEz" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA6QuQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA6XZ$" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA6Y3v" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA79Pu" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA79Pw" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA7lts" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA7ltt" role="3cpWs9">
                    <property role="TrG5h" value="contextSource" />
                    <node concept="3Tqbb2" id="6tmliaA7ltu" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA7ltv" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA7mWJ" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA7ltx" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="31DWWgF8pjh" role="3cqZAp">
                  <node concept="2ShNRf" id="31DWWgF8pji" role="3cqZAk">
                    <node concept="1pGfFk" id="31DWWgF8pjj" role="2ShVmc">
                      <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                      <node concept="2OqwBi" id="31DWWgF8pjk" role="37wK5m">
                        <node concept="37vLTw" id="31DWWgF8pjl" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tmliaA7ltt" resolve="contextSource" />
                        </node>
                        <node concept="3TrEf2" id="31DWWgF8pjm" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="31DWWgF8pjn" role="37wK5m">
                        <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="31DWWgF8y_E" role="3clFbw">
                <node concept="2OqwBi" id="6tmliaA7bmV" role="3uHU7B">
                  <node concept="37vLTw" id="6tmliaA7bbe" role="2Oq$k0">
                    <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                  </node>
                  <node concept="1mIQ4w" id="6tmliaA7iH6" role="2OqNvi">
                    <node concept="chp4Y" id="6tmliaA7iL1" role="cj9EA">
                      <ref role="cht4Q" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="31DWWgF8_3k" role="3uHU7w">
                  <node concept="10Nm6u" id="31DWWgF8_3l" role="3uHU7w" />
                  <node concept="1rXfSq" id="31DWWgF8_3m" role="3uHU7B">
                    <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2syzu7riLzC" role="3cqZAp">
              <node concept="3clFbS" id="2syzu7riLzD" role="3clFbx">
                <node concept="3cpWs6" id="2syzu7riLzK" role="3cqZAp">
                  <node concept="2YIFZM" id="31DWWgF8QNF" role="3cqZAk">
                    <ref role="37wK5l" node="5HzRr7ELrGw" resolve="createForConstantSource" />
                    <ref role="1Pybhc" node="2syzu7qTf1n" resolve="InlineValueByNode" />
                    <node concept="1PxgMI" id="31DWWgF8X4n" role="37wK5m">
                      <node concept="chp4Y" id="31DWWgF8Z$b" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                      </node>
                      <node concept="37vLTw" id="31DWWgF8RS6" role="1m5AlR">
                        <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="31DWWgF936u" role="37wK5m">
                      <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="31DWWgF8_AN" role="3clFbw">
                <node concept="2OqwBi" id="2syzu7riLzQ" role="3uHU7B">
                  <node concept="37vLTw" id="2syzu7riLzR" role="2Oq$k0">
                    <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                  </node>
                  <node concept="1mIQ4w" id="2syzu7riLzS" role="2OqNvi">
                    <node concept="chp4Y" id="2syzu7riNrk" role="cj9EA">
                      <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="31DWWgF8C4U" role="3uHU7w">
                  <node concept="10Nm6u" id="31DWWgF8C4V" role="3uHU7w" />
                  <node concept="1rXfSq" id="31DWWgF8C4W" role="3uHU7B">
                    <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZRmW$" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRmW_" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRmWA" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRnBj" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6oXN8hZRrf2" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRrf3" role="3clFbx">
            <node concept="3cpWs8" id="6oXN8hZRrf4" role="3cqZAp">
              <node concept="3cpWsn" id="6oXN8hZRrf5" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3Tqbb2" id="6oXN8hZRrf6" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                </node>
                <node concept="1PxgMI" id="6oXN8hZRrf7" role="33vP2m">
                  <node concept="chp4Y" id="6oXN8hZRsuv" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                  </node>
                  <node concept="2OqwBi" id="6oXN8hZRrf9" role="1m5AlR">
                    <node concept="37vLTw" id="6oXN8hZRrfa" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                    <node concept="3TrEf2" id="6oXN8hZRrfb" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="31DWWgF97Ot" role="3cqZAp">
              <node concept="3cpWsn" id="31DWWgF97Ou" role="3cpWs9">
                <property role="TrG5h" value="fb" />
                <node concept="3uibUv" id="6mkmem0DBSB" role="1tU5fm">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                </node>
                <node concept="2OqwBi" id="31DWWgF97Ow" role="33vP2m">
                  <node concept="37vLTw" id="31DWWgF97Ox" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YcNwH3_SGG" resolve="myRepository" />
                  </node>
                  <node concept="liA8E" id="31DWWgF97Oy" role="2OqNvi">
                    <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                    <node concept="2OqwBi" id="31DWWgF97Oz" role="37wK5m">
                      <node concept="37vLTw" id="31DWWgF9fp1" role="2Oq$k0">
                        <ref role="3cqZAo" node="6oXN8hZRrf5" resolve="source" />
                      </node>
                      <node concept="3TrEf2" id="31DWWgF9ify" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                      </node>
                    </node>
                    <node concept="3VsKOn" id="31DWWgF97OA" role="37wK5m">
                      <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="31Fn7oZG2lc" role="3cqZAp">
              <node concept="3cpWsn" id="31Fn7oZG2ld" role="3cpWs9">
                <property role="TrG5h" value="declaration" />
                <node concept="3Tqbb2" id="31Fn7oZG2le" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZG2lf" role="33vP2m">
                  <node concept="37vLTw" id="31Fn7oZG67Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="6oXN8hZRrf5" resolve="source" />
                  </node>
                  <node concept="3TrEf2" id="31Fn7oZG8y9" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:75nMhMfIWB0" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="31Fn7oZG2li" role="3cqZAp">
              <node concept="3clFbS" id="31Fn7oZG2lj" role="3clFbx">
                <node concept="3cpWs6" id="31Fn7oZG2lk" role="3cqZAp">
                  <node concept="2ShNRf" id="31Fn7oZG2ll" role="3cqZAk">
                    <node concept="1pGfFk" id="31Fn7oZG2lm" role="2ShVmc">
                      <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean)" resolve="FunctionBlockPortIdentity" />
                      <node concept="37vLTw" id="31DWWgF9anY" role="37wK5m">
                        <ref role="3cqZAo" node="31DWWgF97Ou" resolve="fb" />
                      </node>
                      <node concept="2OqwBi" id="31Fn7oZG2lo" role="37wK5m">
                        <node concept="37vLTw" id="31Fn7oZG2lp" role="2Oq$k0">
                          <ref role="3cqZAo" node="31Fn7oZG2ld" resolve="declaration" />
                        </node>
                        <node concept="2bSWHS" id="31Fn7oZG2lq" role="2OqNvi" />
                      </node>
                      <node concept="Rm8GO" id="31Fn7oZGkqg" role="37wK5m">
                        <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                        <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                      </node>
                      <node concept="3clFbT" id="31Fn7oZG2ls" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="2OqwBi" id="1S4cYrOOvwR" role="37wK5m">
                        <node concept="37vLTw" id="1S4cYrOOvwS" role="2Oq$k0">
                          <ref role="3cqZAo" node="31Fn7oZG2ld" resolve="declaration" />
                        </node>
                        <node concept="3TrcHB" id="1S4cYrOOvwT" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="31Fn7oZG2lt" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="31Fn7oZG2lu" role="3clFbw">
                <node concept="3y3z36" id="31Fn7oZG2lv" role="3uHU7B">
                  <node concept="37vLTw" id="31Fn7oZG2lw" role="3uHU7B">
                    <ref role="3cqZAo" node="31Fn7oZG2ld" resolve="declaration" />
                  </node>
                  <node concept="10Nm6u" id="31Fn7oZG2lx" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZG2ly" role="3uHU7w">
                  <node concept="2OqwBi" id="31Fn7oZG2lz" role="2Oq$k0">
                    <node concept="2OqwBi" id="31Fn7oZG2l$" role="2Oq$k0">
                      <node concept="37vLTw" id="31Fn7oZG8ne" role="2Oq$k0">
                        <ref role="3cqZAo" node="6oXN8hZRrf5" resolve="source" />
                      </node>
                      <node concept="3TrEf2" id="31Fn7oZGbSS" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="31Fn7oZGcod" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:uLhTRQXdlm" resolve="getPlugs" />
                    </node>
                  </node>
                  <node concept="3JPx81" id="31Fn7oZG2lC" role="2OqNvi">
                    <node concept="37vLTw" id="31Fn7oZG2lD" role="25WWJ7">
                      <ref role="3cqZAo" node="31Fn7oZG2ld" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="31Fn7oZG2lE" role="9aQIa">
                <node concept="3clFbS" id="31Fn7oZG2lF" role="9aQI4">
                  <node concept="1X3_iC" id="31DWWgF9bPX" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs6" id="31Fn7oZG2lG" role="8Wnug">
                      <node concept="2OqwBi" id="31Fn7oZG2lH" role="3cqZAk">
                        <node concept="37vLTw" id="31DWWgF9cRf" role="2Oq$k0">
                          <ref role="3cqZAo" node="31DWWgF97Ou" resolve="fb" />
                        </node>
                        <node concept="liA8E" id="31Fn7oZG2lJ" role="2OqNvi">
                          <ref role="37wK5l" to="g27j:~TypedFBNetworkComponent.getPort(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="getPort" />
                          <node concept="2OqwBi" id="31Fn7oZG2lK" role="37wK5m">
                            <node concept="2OqwBi" id="31Fn7oZG2lL" role="2Oq$k0">
                              <node concept="37vLTw" id="31Fn7oZG2lM" role="2Oq$k0">
                                <ref role="3cqZAo" node="31Fn7oZC8Zb" resolve="myNetwork" />
                              </node>
                              <node concept="liA8E" id="31Fn7oZG2lN" role="2OqNvi">
                                <ref role="37wK5l" node="31Fn7oZAYo3" resolve="getBrokenTargets" />
                              </node>
                            </node>
                            <node concept="liA8E" id="31Fn7oZG2lO" role="2OqNvi">
                              <ref role="37wK5l" node="31Fn7oZ_77N" resolve="reportBrokenPlug" />
                              <node concept="37vLTw" id="31Fn7oZGeWQ" role="37wK5m">
                                <ref role="3cqZAo" node="31DWWgF97Ou" resolve="fb" />
                              </node>
                              <node concept="2OqwBi" id="31Fn7oZG2lQ" role="37wK5m">
                                <node concept="2OqwBi" id="31Fn7oZG2lR" role="2Oq$k0">
                                  <node concept="37vLTw" id="31Fn7oZGi5y" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6oXN8hZRrf5" resolve="source" />
                                  </node>
                                  <node concept="37Cfm0" id="31Fn7oZG2lT" role="2OqNvi">
                                    <node concept="1aIX9F" id="31Fn7oZG2lU" role="37CeNk">
                                      <node concept="26LbJo" id="31Fn7oZGi6w" role="1aIX9E">
                                        <ref role="26LbJp" to="xiqq:75nMhMfIWB0" resolve="declaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1FfNbt" id="31Fn7oZG2lW" role="2OqNvi" />
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
          <node concept="2OqwBi" id="6oXN8hZRrft" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRrfu" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRrfv" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRrWX" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6oXN8hZRpRb" role="3cqZAp">
          <node concept="10Nm6u" id="6oXN8hZRq_a" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1XSQy8A3xuZ" role="1B3o_S" />
      <node concept="3uibUv" id="1XSQy8A3D8$" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
      </node>
    </node>
    <node concept="2tJIrI" id="1XSQy8A6mIS" role="jymVt" />
    <node concept="3clFb_" id="1XSQy8A6p_w" role="jymVt">
      <property role="TrG5h" value="createTargetPort" />
      <node concept="3clFbS" id="1XSQy8A6p_z" role="3clF47">
        <node concept="3clFbJ" id="6oXN8hZRySQ" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRySR" role="3clFbx">
            <node concept="3cpWs8" id="6tmliaA7H0Q" role="3cqZAp">
              <node concept="3cpWsn" id="6tmliaA7H0R" role="3cpWs9">
                <property role="TrG5h" value="destination" />
                <node concept="3Tqbb2" id="6tmliaA7H0S" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                </node>
                <node concept="2OqwBi" id="6tmliaA7H0T" role="33vP2m">
                  <node concept="1PxgMI" id="6tmliaA7H0U" role="2Oq$k0">
                    <node concept="chp4Y" id="6tmliaA7H0V" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                    </node>
                    <node concept="37vLTw" id="6tmliaA7H0W" role="1m5AlR">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6tmliaA7IQH" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA7H0Y" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA7H0Z" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA7H10" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA7H11" role="3cpWs9">
                    <property role="TrG5h" value="componentDestination" />
                    <node concept="3Tqbb2" id="6tmliaA7H12" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA7H13" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA7TWo" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA7H15" role="1m5AlR">
                        <ref role="3cqZAo" node="6tmliaA7H0R" resolve="destination" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="31DWWgF9Pyb" role="3cqZAp">
                  <node concept="3cpWsn" id="31DWWgF9Pyc" role="3cpWs9">
                    <property role="TrG5h" value="fb" />
                    <node concept="3uibUv" id="6mkmem0DHj_" role="1tU5fm">
                      <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                    </node>
                    <node concept="2OqwBi" id="31DWWgF9Pye" role="33vP2m">
                      <node concept="37vLTw" id="31DWWgF9Pyf" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YcNwH3_SGG" resolve="myRepository" />
                      </node>
                      <node concept="liA8E" id="31DWWgF9Pyg" role="2OqNvi">
                        <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                        <node concept="2OqwBi" id="31DWWgF9Pyh" role="37wK5m">
                          <node concept="37vLTw" id="31DWWgF9SaH" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA7H11" resolve="componentDestination" />
                          </node>
                          <node concept="3TrEf2" id="31DWWgF9S$h" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="3VsKOn" id="31DWWgF9Pyk" role="37wK5m">
                          <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="31Fn7oZGmHl" role="3cqZAp">
                  <node concept="3cpWsn" id="31Fn7oZGmHm" role="3cpWs9">
                    <property role="TrG5h" value="declaration" />
                    <node concept="3Tqbb2" id="31Fn7oZGmHn" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="31Fn7oZGmHo" role="33vP2m">
                      <node concept="37vLTw" id="31Fn7oZGsCD" role="2Oq$k0">
                        <ref role="3cqZAo" node="6tmliaA7H11" resolve="componentDestination" />
                      </node>
                      <node concept="3TrEf2" id="31Fn7oZGmHq" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="31Fn7oZGmHr" role="3cqZAp">
                  <node concept="3clFbS" id="31Fn7oZGmHs" role="3clFbx">
                    <node concept="3cpWs6" id="31Fn7oZGmHt" role="3cqZAp">
                      <node concept="2ShNRf" id="31Fn7oZGmHu" role="3cqZAk">
                        <node concept="1pGfFk" id="31Fn7oZGmHv" role="2ShVmc">
                          <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean)" resolve="FunctionBlockPortIdentity" />
                          <node concept="37vLTw" id="31DWWgFaa$Q" role="37wK5m">
                            <ref role="3cqZAo" node="31DWWgF9Pyc" resolve="fb" />
                          </node>
                          <node concept="2OqwBi" id="31Fn7oZGmHx" role="37wK5m">
                            <node concept="37vLTw" id="31Fn7oZGmHy" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZGmHm" resolve="declaration" />
                            </node>
                            <node concept="2bSWHS" id="31Fn7oZGmHz" role="2OqNvi" />
                          </node>
                          <node concept="Rm8GO" id="2YkCud39S$A" role="37wK5m">
                            <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                            <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                          </node>
                          <node concept="3clFbT" id="31Fn7oZGmH_" role="37wK5m" />
                          <node concept="2OqwBi" id="1S4cYrOOy7D" role="37wK5m">
                            <node concept="37vLTw" id="1S4cYrOOy7E" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZGmHm" resolve="declaration" />
                            </node>
                            <node concept="3TrcHB" id="1S4cYrOOy7F" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="31Fn7oZGmHA" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="31Fn7oZGmHB" role="3clFbw">
                    <node concept="3y3z36" id="31Fn7oZGmHC" role="3uHU7B">
                      <node concept="37vLTw" id="31Fn7oZGmHD" role="3uHU7B">
                        <ref role="3cqZAo" node="31Fn7oZGmHm" resolve="declaration" />
                      </node>
                      <node concept="10Nm6u" id="31Fn7oZGmHE" role="3uHU7w" />
                    </node>
                    <node concept="2OqwBi" id="31Fn7oZGmHF" role="3uHU7w">
                      <node concept="2OqwBi" id="31Fn7oZGmHG" role="2Oq$k0">
                        <node concept="2OqwBi" id="31Fn7oZGmHH" role="2Oq$k0">
                          <node concept="37vLTw" id="31Fn7oZGun1" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA7H11" resolve="componentDestination" />
                          </node>
                          <node concept="3TrEf2" id="31Fn7oZGmHJ" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="31Fn7oZGu$9" role="2OqNvi">
                          <ref role="37wK5l" to="t4dg:5L1OxDukYdN" resolve="eventDestinations" />
                        </node>
                      </node>
                      <node concept="3JPx81" id="31Fn7oZGmHL" role="2OqNvi">
                        <node concept="37vLTw" id="31Fn7oZGmHM" role="25WWJ7">
                          <ref role="3cqZAo" node="31Fn7oZGmHm" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="31Fn7oZGmHN" role="9aQIa">
                    <node concept="3clFbS" id="31Fn7oZGmHO" role="9aQI4">
                      <node concept="3cpWs6" id="31DWWgF9o0P" role="3cqZAp">
                        <node concept="10Nm6u" id="31DWWgF9oRF" role="3cqZAk" />
                      </node>
                      <node concept="1X3_iC" id="31DWWgF9k6S" role="lGtFl">
                        <property role="3V$3am" value="statement" />
                        <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                        <node concept="3cpWs6" id="31Fn7oZGmHP" role="8Wnug">
                          <node concept="2OqwBi" id="31Fn7oZGmHQ" role="3cqZAk">
                            <node concept="37vLTw" id="31Fn7oZGwX8" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZCy9R" resolve="fb" />
                            </node>
                            <node concept="liA8E" id="31Fn7oZGmHS" role="2OqNvi">
                              <ref role="37wK5l" to="g27j:~TypedFBNetworkComponent.getPort(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="getPort" />
                              <node concept="2OqwBi" id="31Fn7oZGmHT" role="37wK5m">
                                <node concept="2OqwBi" id="31Fn7oZGmHU" role="2Oq$k0">
                                  <node concept="37vLTw" id="31Fn7oZGmHV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="31Fn7oZC8Zb" resolve="myNetwork" />
                                  </node>
                                  <node concept="liA8E" id="31Fn7oZGmHW" role="2OqNvi">
                                    <ref role="37wK5l" node="31Fn7oZAYo3" resolve="getBrokenTargets" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="31Fn7oZGmHX" role="2OqNvi">
                                  <ref role="37wK5l" node="31Fn7oZyLHV" resolve="reportBrokenInputEvent" />
                                  <node concept="37vLTw" id="31Fn7oZGyb6" role="37wK5m">
                                    <ref role="3cqZAo" node="31Fn7oZCy9R" resolve="fb" />
                                  </node>
                                  <node concept="2OqwBi" id="31Fn7oZGmHZ" role="37wK5m">
                                    <node concept="2OqwBi" id="31Fn7oZGmI0" role="2Oq$k0">
                                      <node concept="37vLTw" id="31Fn7oZGzdy" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6tmliaA7H11" resolve="componentDestination" />
                                      </node>
                                      <node concept="37Cfm0" id="31Fn7oZGmI2" role="2OqNvi">
                                        <node concept="1aIX9F" id="31Fn7oZGmI3" role="37CeNk">
                                          <node concept="26LbJo" id="31Fn7oZGmI4" role="1aIX9E">
                                            <ref role="26LbJp" to="xiqq:PI_pXYus4s" resolve="declaration" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1FfNbt" id="31Fn7oZGmI5" role="2OqNvi" />
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
              <node concept="2OqwBi" id="6tmliaA7H1o" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA7H1p" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaA7H0R" resolve="destination" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA7H1q" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA7OlN" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA7H1s" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA7H1t" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA7H1u" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA7H1v" role="3cpWs9">
                    <property role="TrG5h" value="contextDestination" />
                    <node concept="3Tqbb2" id="6tmliaA7H1w" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA7H1x" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA82Ok" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA7H1z" role="1m5AlR">
                        <ref role="3cqZAo" node="6tmliaA7H0R" resolve="destination" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="31DWWgF9rpn" role="3cqZAp">
                  <node concept="2ShNRf" id="31DWWgF9rpo" role="3cqZAk">
                    <node concept="1pGfFk" id="31DWWgF9rpp" role="2ShVmc">
                      <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                      <node concept="2OqwBi" id="31DWWgF9rpq" role="37wK5m">
                        <node concept="37vLTw" id="31DWWgF9udT" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tmliaA7H1v" resolve="contextDestination" />
                        </node>
                        <node concept="3TrEf2" id="31DWWgF9wVP" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="31DWWgF9rpt" role="37wK5m">
                        <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="31DWWgFa7hN" role="3clFbw">
                <node concept="2OqwBi" id="6tmliaA7H1G" role="3uHU7B">
                  <node concept="37vLTw" id="6tmliaA7H1H" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmliaA7H0R" resolve="destination" />
                  </node>
                  <node concept="1mIQ4w" id="6tmliaA7H1I" role="2OqNvi">
                    <node concept="chp4Y" id="6tmliaA7Yfx" role="cj9EA">
                      <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="31DWWgFa9RS" role="3uHU7w">
                  <node concept="10Nm6u" id="31DWWgFa9RT" role="3uHU7w" />
                  <node concept="1rXfSq" id="31DWWgFa9RU" role="3uHU7B">
                    <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZRyTh" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRyTi" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRyTj" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRyTk" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6oXN8hZRyTl" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRyTm" role="3clFbx">
            <node concept="3cpWs8" id="6tmliaA8a$Q" role="3cqZAp">
              <node concept="3cpWsn" id="6tmliaA8a$R" role="3cpWs9">
                <property role="TrG5h" value="destination" />
                <node concept="3Tqbb2" id="6tmliaA8a$S" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
                </node>
                <node concept="2OqwBi" id="6tmliaA8a$T" role="33vP2m">
                  <node concept="1PxgMI" id="6tmliaA8a$U" role="2Oq$k0">
                    <node concept="chp4Y" id="6tmliaA8dUr" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                    </node>
                    <node concept="37vLTw" id="6tmliaA8a$W" role="1m5AlR">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="6tmliaA8a$X" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA88Vl" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA88Vm" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA88Vn" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA88Vo" role="3cpWs9">
                    <property role="TrG5h" value="componentDestination" />
                    <node concept="3Tqbb2" id="6tmliaA88Vp" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA88Vq" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA8jgS" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA88Vs" role="1m5AlR">
                        <ref role="3cqZAo" node="6tmliaA8a$R" resolve="destination" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="31DWWgF9SA9" role="3cqZAp">
                  <node concept="3cpWsn" id="31DWWgF9SAa" role="3cpWs9">
                    <property role="TrG5h" value="fb" />
                    <node concept="3uibUv" id="6mkmem0Dpug" role="1tU5fm">
                      <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                    </node>
                    <node concept="2OqwBi" id="31DWWgF9SAc" role="33vP2m">
                      <node concept="37vLTw" id="31DWWgF9SAd" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YcNwH3_SGG" resolve="myRepository" />
                      </node>
                      <node concept="liA8E" id="31DWWgF9SAe" role="2OqNvi">
                        <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                        <node concept="2OqwBi" id="31DWWgF9SAf" role="37wK5m">
                          <node concept="37vLTw" id="31DWWgF9SAg" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA88Vo" resolve="componentDestination" />
                          </node>
                          <node concept="3TrEf2" id="31DWWgF9SAh" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="3VsKOn" id="31DWWgF9SAi" role="37wK5m">
                          <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="31Fn7oZGH0X" role="3cqZAp">
                  <node concept="3cpWsn" id="31Fn7oZGH0Y" role="3cpWs9">
                    <property role="TrG5h" value="declaration" />
                    <node concept="3Tqbb2" id="31Fn7oZGH0Z" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="31Fn7oZGH10" role="33vP2m">
                      <node concept="37vLTw" id="31Fn7oZGNgJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="6tmliaA88Vo" resolve="componentDestination" />
                      </node>
                      <node concept="3TrEf2" id="31Fn7oZGH12" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="31Fn7oZGH13" role="3cqZAp">
                  <node concept="3clFbS" id="31Fn7oZGH14" role="3clFbx">
                    <node concept="3cpWs6" id="31Fn7oZGH15" role="3cqZAp">
                      <node concept="2ShNRf" id="31Fn7oZGH16" role="3cqZAk">
                        <node concept="1pGfFk" id="31Fn7oZGH17" role="2ShVmc">
                          <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean)" resolve="FunctionBlockPortIdentity" />
                          <node concept="37vLTw" id="31DWWgF9VdL" role="37wK5m">
                            <ref role="3cqZAo" node="31DWWgF9SAa" resolve="fb" />
                          </node>
                          <node concept="2OqwBi" id="31Fn7oZGH19" role="37wK5m">
                            <node concept="37vLTw" id="31Fn7oZGH1a" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZGH0Y" resolve="declaration" />
                            </node>
                            <node concept="2bSWHS" id="31Fn7oZGH1b" role="2OqNvi" />
                          </node>
                          <node concept="Rm8GO" id="2YkCud39PSA" role="37wK5m">
                            <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                            <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                          </node>
                          <node concept="3clFbT" id="31Fn7oZGH1d" role="37wK5m" />
                          <node concept="2OqwBi" id="1S4cYrOO_6I" role="37wK5m">
                            <node concept="37vLTw" id="1S4cYrOO_6J" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZGH0Y" resolve="declaration" />
                            </node>
                            <node concept="3TrcHB" id="1S4cYrOO_6K" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="31Fn7oZGH1e" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="31Fn7oZGH1f" role="3clFbw">
                    <node concept="3y3z36" id="31Fn7oZGH1g" role="3uHU7B">
                      <node concept="37vLTw" id="31Fn7oZGH1h" role="3uHU7B">
                        <ref role="3cqZAo" node="31Fn7oZGH0Y" resolve="declaration" />
                      </node>
                      <node concept="10Nm6u" id="31Fn7oZGH1i" role="3uHU7w" />
                    </node>
                    <node concept="2OqwBi" id="31Fn7oZGH1j" role="3uHU7w">
                      <node concept="2OqwBi" id="31Fn7oZGH1k" role="2Oq$k0">
                        <node concept="2OqwBi" id="31Fn7oZGH1l" role="2Oq$k0">
                          <node concept="37vLTw" id="31Fn7oZGP34" role="2Oq$k0">
                            <ref role="3cqZAo" node="6tmliaA88Vo" resolve="componentDestination" />
                          </node>
                          <node concept="3TrEf2" id="6z_cCa7WSQx" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="31Fn7oZGTjM" role="2OqNvi">
                          <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
                        </node>
                      </node>
                      <node concept="3JPx81" id="31Fn7oZGH1p" role="2OqNvi">
                        <node concept="37vLTw" id="31Fn7oZGH1q" role="25WWJ7">
                          <ref role="3cqZAo" node="31Fn7oZGH0Y" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="31Fn7oZGH1r" role="9aQIa">
                    <node concept="3clFbS" id="31Fn7oZGH1s" role="9aQI4">
                      <node concept="1X3_iC" id="31DWWgF9IGz" role="lGtFl">
                        <property role="3V$3am" value="statement" />
                        <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                        <node concept="3cpWs6" id="31Fn7oZGH1t" role="8Wnug">
                          <node concept="2OqwBi" id="31Fn7oZGH1u" role="3cqZAk">
                            <node concept="37vLTw" id="31Fn7oZGH1v" role="2Oq$k0">
                              <ref role="3cqZAo" node="31Fn7oZGH0P" resolve="fb" />
                            </node>
                            <node concept="liA8E" id="31Fn7oZGH1w" role="2OqNvi">
                              <ref role="37wK5l" to="g27j:~TypedFBNetworkComponent.getPort(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="getPort" />
                              <node concept="2OqwBi" id="31Fn7oZGH1x" role="37wK5m">
                                <node concept="2OqwBi" id="31Fn7oZGH1y" role="2Oq$k0">
                                  <node concept="37vLTw" id="31Fn7oZGH1z" role="2Oq$k0">
                                    <ref role="3cqZAo" node="31Fn7oZC8Zb" resolve="myNetwork" />
                                  </node>
                                  <node concept="liA8E" id="31Fn7oZGH1$" role="2OqNvi">
                                    <ref role="37wK5l" node="31Fn7oZAYo3" resolve="getBrokenTargets" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="31Fn7oZGH1_" role="2OqNvi">
                                  <ref role="37wK5l" node="31Fn7oZzXRN" resolve="reportBrokenInputData" />
                                  <node concept="37vLTw" id="31Fn7oZGH1A" role="37wK5m">
                                    <ref role="3cqZAo" node="31Fn7oZGH0P" resolve="fb" />
                                  </node>
                                  <node concept="2OqwBi" id="31Fn7oZGH1B" role="37wK5m">
                                    <node concept="2OqwBi" id="31Fn7oZGH1C" role="2Oq$k0">
                                      <node concept="37vLTw" id="31Fn7oZGP5v" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6tmliaA88Vo" resolve="componentDestination" />
                                      </node>
                                      <node concept="37Cfm0" id="31Fn7oZGH1E" role="2OqNvi">
                                        <node concept="1aIX9F" id="31Fn7oZGH1F" role="37CeNk">
                                          <node concept="26LbJo" id="31Fn7oZGH1G" role="1aIX9E">
                                            <ref role="26LbJp" to="xiqq:PI_pXYus3O" resolve="declaration" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1FfNbt" id="31Fn7oZGH1H" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="31DWWgF9MI5" role="3cqZAp">
                        <node concept="10Nm6u" id="31DWWgF9MI6" role="3cqZAk" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6tmliaA88VJ" role="3clFbw">
                <node concept="37vLTw" id="6tmliaA88VK" role="2Oq$k0">
                  <ref role="3cqZAo" node="6tmliaA8a$R" resolve="destination" />
                </node>
                <node concept="1mIQ4w" id="6tmliaA88VL" role="2OqNvi">
                  <node concept="chp4Y" id="6tmliaA8hxr" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6tmliaA88VN" role="3cqZAp">
              <node concept="3clFbS" id="6tmliaA88VO" role="3clFbx">
                <node concept="3cpWs8" id="6tmliaA88VP" role="3cqZAp">
                  <node concept="3cpWsn" id="6tmliaA88VQ" role="3cpWs9">
                    <property role="TrG5h" value="contextDestination" />
                    <node concept="3Tqbb2" id="6tmliaA88VR" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                    </node>
                    <node concept="1PxgMI" id="6tmliaA88VS" role="33vP2m">
                      <node concept="chp4Y" id="6tmliaA8okB" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                      </node>
                      <node concept="37vLTw" id="6tmliaA88VU" role="1m5AlR">
                        <ref role="3cqZAo" node="6tmliaA8a$R" resolve="destination" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="31DWWgF9ypU" role="3cqZAp">
                  <node concept="2ShNRf" id="31DWWgF9ypV" role="3cqZAk">
                    <node concept="1pGfFk" id="31DWWgF9ypW" role="2ShVmc">
                      <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                      <node concept="2OqwBi" id="31DWWgF9ypX" role="37wK5m">
                        <node concept="37vLTw" id="31DWWgF9ypY" role="2Oq$k0">
                          <ref role="3cqZAo" node="6tmliaA88VQ" resolve="contextDestination" />
                        </node>
                        <node concept="3TrEf2" id="31DWWgF9ypZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="31DWWgF9yq0" role="37wK5m">
                        <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="31DWWgFa375" role="3clFbw">
                <node concept="3y3z36" id="31DWWgFa6tK" role="3uHU7w">
                  <node concept="10Nm6u" id="31DWWgFa6Xo" role="3uHU7w" />
                  <node concept="1rXfSq" id="31DWWgFa4XH" role="3uHU7B">
                    <ref role="37wK5l" node="31Fn7oZCeSM" resolve="getNetwork" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6tmliaA88W3" role="3uHU7B">
                  <node concept="37vLTw" id="6tmliaA88W4" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmliaA8a$R" resolve="destination" />
                  </node>
                  <node concept="1mIQ4w" id="6tmliaA88W5" role="2OqNvi">
                    <node concept="chp4Y" id="6tmliaA8myn" role="cj9EA">
                      <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZRyTK" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRyTL" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRyTM" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRyTN" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6oXN8hZRyTO" role="3cqZAp">
          <node concept="3clFbS" id="6oXN8hZRyTP" role="3clFbx">
            <node concept="3cpWs8" id="6oXN8hZRyTQ" role="3cqZAp">
              <node concept="3cpWsn" id="6oXN8hZRyTR" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3Tqbb2" id="6oXN8hZRyTS" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                </node>
                <node concept="1PxgMI" id="6oXN8hZRyTT" role="33vP2m">
                  <node concept="chp4Y" id="6oXN8hZREYv" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                  </node>
                  <node concept="2OqwBi" id="6oXN8hZRyTV" role="1m5AlR">
                    <node concept="37vLTw" id="6oXN8hZRyTW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                    <node concept="3TrEf2" id="6oXN8hZRCrq" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="31Fn7oZGXuF" role="3cqZAp">
              <node concept="3cpWsn" id="31Fn7oZGXuG" role="3cpWs9">
                <property role="TrG5h" value="declaration" />
                <node concept="3Tqbb2" id="31Fn7oZGXuH" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZGXuI" role="33vP2m">
                  <node concept="37vLTw" id="31Fn7oZH19m" role="2Oq$k0">
                    <ref role="3cqZAo" node="6oXN8hZRyTR" resolve="target" />
                  </node>
                  <node concept="3TrEf2" id="31Fn7oZH41Y" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="31DWWgF9XNN" role="3cqZAp">
              <node concept="3cpWsn" id="31DWWgF9XNO" role="3cpWs9">
                <property role="TrG5h" value="fb" />
                <node concept="3uibUv" id="6mkmem0DLQs" role="1tU5fm">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                </node>
                <node concept="2OqwBi" id="31DWWgF9XNQ" role="33vP2m">
                  <node concept="37vLTw" id="31DWWgF9XNR" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YcNwH3_SGG" resolve="myRepository" />
                  </node>
                  <node concept="liA8E" id="31DWWgF9XNS" role="2OqNvi">
                    <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                    <node concept="2OqwBi" id="31DWWgF9XNT" role="37wK5m">
                      <node concept="37vLTw" id="31DWWgF9ZW5" role="2Oq$k0">
                        <ref role="3cqZAo" node="6oXN8hZRyTR" resolve="target" />
                      </node>
                      <node concept="3TrEf2" id="31DWWgFa0dI" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                      </node>
                    </node>
                    <node concept="3VsKOn" id="31DWWgF9XNW" role="37wK5m">
                      <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="31Fn7oZGXuL" role="3cqZAp">
              <node concept="3clFbS" id="31Fn7oZGXuM" role="3clFbx">
                <node concept="3cpWs6" id="31Fn7oZGXuN" role="3cqZAp">
                  <node concept="2ShNRf" id="31Fn7oZGXuO" role="3cqZAk">
                    <node concept="1pGfFk" id="31Fn7oZGXuP" role="2ShVmc">
                      <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean)" resolve="FunctionBlockPortIdentity" />
                      <node concept="37vLTw" id="31DWWgFa0fF" role="37wK5m">
                        <ref role="3cqZAo" node="31DWWgF9XNO" resolve="fb" />
                      </node>
                      <node concept="2OqwBi" id="31Fn7oZGXuR" role="37wK5m">
                        <node concept="37vLTw" id="31Fn7oZGXuS" role="2Oq$k0">
                          <ref role="3cqZAo" node="31Fn7oZGXuG" resolve="declaration" />
                        </node>
                        <node concept="2bSWHS" id="31Fn7oZGXuT" role="2OqNvi" />
                      </node>
                      <node concept="Rm8GO" id="31Fn7oZGXuU" role="37wK5m">
                        <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                        <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                      </node>
                      <node concept="3clFbT" id="31Fn7oZGXuV" role="37wK5m" />
                      <node concept="2OqwBi" id="1S4cYrOOBeQ" role="37wK5m">
                        <node concept="37vLTw" id="1S4cYrOOBeR" role="2Oq$k0">
                          <ref role="3cqZAo" node="31Fn7oZGXuG" resolve="declaration" />
                        </node>
                        <node concept="3TrcHB" id="1S4cYrOOBeS" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="31Fn7oZGXuW" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="31Fn7oZGXuX" role="3clFbw">
                <node concept="3y3z36" id="31Fn7oZGXuY" role="3uHU7B">
                  <node concept="37vLTw" id="31Fn7oZGXuZ" role="3uHU7B">
                    <ref role="3cqZAo" node="31Fn7oZGXuG" resolve="declaration" />
                  </node>
                  <node concept="10Nm6u" id="31Fn7oZGXv0" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZGXv1" role="3uHU7w">
                  <node concept="2OqwBi" id="31Fn7oZGXv2" role="2Oq$k0">
                    <node concept="2OqwBi" id="31Fn7oZGXv3" role="2Oq$k0">
                      <node concept="37vLTw" id="31Fn7oZH3$H" role="2Oq$k0">
                        <ref role="3cqZAo" node="6oXN8hZRyTR" resolve="target" />
                      </node>
                      <node concept="3TrEf2" id="31Fn7oZH97x" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="31Fn7oZH8WG" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:uLhTRQXezk" resolve="getSockets" />
                    </node>
                  </node>
                  <node concept="3JPx81" id="31Fn7oZGXv7" role="2OqNvi">
                    <node concept="37vLTw" id="31Fn7oZGXv8" role="25WWJ7">
                      <ref role="3cqZAo" node="31Fn7oZGXuG" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="31Fn7oZGXv9" role="9aQIa">
                <node concept="3clFbS" id="31Fn7oZGXva" role="9aQI4">
                  <node concept="1X3_iC" id="31DWWgF9BwJ" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs6" id="31Fn7oZGXvb" role="8Wnug">
                      <node concept="2OqwBi" id="31Fn7oZGXvc" role="3cqZAk">
                        <node concept="37vLTw" id="31Fn7oZGXvd" role="2Oq$k0">
                          <ref role="3cqZAo" node="31Fn7oZHaFu" resolve="fb" />
                        </node>
                        <node concept="liA8E" id="31Fn7oZGXve" role="2OqNvi">
                          <ref role="37wK5l" to="g27j:~TypedFBNetworkComponent.getPort(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="getPort" />
                          <node concept="2OqwBi" id="31Fn7oZGXvf" role="37wK5m">
                            <node concept="2OqwBi" id="31Fn7oZGXvg" role="2Oq$k0">
                              <node concept="37vLTw" id="31Fn7oZGXvh" role="2Oq$k0">
                                <ref role="3cqZAo" node="31Fn7oZC8Zb" resolve="myNetwork" />
                              </node>
                              <node concept="liA8E" id="31Fn7oZGXvi" role="2OqNvi">
                                <ref role="37wK5l" node="31Fn7oZAYo3" resolve="getBrokenTargets" />
                              </node>
                            </node>
                            <node concept="liA8E" id="31Fn7oZGXvj" role="2OqNvi">
                              <ref role="37wK5l" node="31Fn7oZ$HfR" resolve="reportBrokenSocket" />
                              <node concept="37vLTw" id="31Fn7oZGXvk" role="37wK5m">
                                <ref role="3cqZAo" node="31Fn7oZHaFu" resolve="fb" />
                              </node>
                              <node concept="2OqwBi" id="31Fn7oZGXvl" role="37wK5m">
                                <node concept="2OqwBi" id="31Fn7oZGXvm" role="2Oq$k0">
                                  <node concept="37vLTw" id="31Fn7oZHkho" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6oXN8hZRyTR" resolve="target" />
                                  </node>
                                  <node concept="37Cfm0" id="31Fn7oZGXvo" role="2OqNvi">
                                    <node concept="1aIX9F" id="31Fn7oZGXvp" role="37CeNk">
                                      <node concept="26LbJo" id="31Fn7oZGXvq" role="1aIX9E">
                                        <ref role="26LbJp" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1FfNbt" id="31Fn7oZGXvr" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="31DWWgF9FvM" role="3cqZAp">
                    <node concept="10Nm6u" id="31DWWgF9GBK" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6oXN8hZRyUf" role="3clFbw">
            <node concept="37vLTw" id="6oXN8hZRyUg" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="6oXN8hZRyUh" role="2OqNvi">
              <node concept="chp4Y" id="6oXN8hZRyUi" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6oXN8hZRyUj" role="3cqZAp">
          <node concept="10Nm6u" id="6oXN8hZRyUk" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1XSQy8A6ora" role="1B3o_S" />
      <node concept="3uibUv" id="1XSQy8A6poN" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
      </node>
    </node>
    <node concept="2tJIrI" id="1XSQy8A6jIG" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKutwW" role="jymVt">
      <property role="TrG5h" value="getTargetPort" />
      <node concept="3Tm1VV" id="3IX4BsKutwY" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy5nj0K" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
      </node>
      <node concept="3clFbS" id="3IX4BsKutx0" role="3clF47">
        <node concept="3clFbF" id="1XSQy8A74U1" role="3cqZAp">
          <node concept="1rXfSq" id="6YcNwH3_JJu" role="3clFbG">
            <ref role="37wK5l" node="1XSQy8A6p_w" resolve="createTargetPort" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKutx1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKuuGq" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKutx4" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="3Tm1VV" id="3IX4BsKutx6" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy5A5vT" role="3clF45">
        <ref role="3uigEE" to="g27j:~ConnectionPath" resolve="ConnectionPath" />
      </node>
      <node concept="3clFbS" id="3IX4BsKutx8" role="3clF47">
        <node concept="3clFbF" id="1XSQy8A7kFv" role="3cqZAp">
          <node concept="1rXfSq" id="6YcNwH3_JX1" role="3clFbG">
            <ref role="37wK5l" node="1XSQy8A77a$" resolve="createConnectionPath" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKutx9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1XSQy8A79yg" role="jymVt" />
    <node concept="3clFb_" id="1XSQy8A77a$" role="jymVt">
      <property role="TrG5h" value="createConnectionPath" />
      <node concept="3Tm6S6" id="1XSQy8A77a_" role="1B3o_S" />
      <node concept="3uibUv" id="1XSQy8A77aA" role="3clF45">
        <ref role="3uigEE" to="g27j:~ConnectionPath" resolve="ConnectionPath" />
      </node>
      <node concept="3clFbS" id="1XSQy8A779A" role="3clF47">
        <node concept="3cpWs8" id="1XSQy8A779B" role="3cqZAp">
          <node concept="3cpWsn" id="1XSQy8A779C" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3Tqbb2" id="1XSQy8A779D" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3IX4BsKohXi" resolve="ConnectionPath" />
            </node>
            <node concept="2OqwBi" id="1XSQy8A779E" role="33vP2m">
              <node concept="37vLTw" id="1XSQy8A779F" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="1XSQy8A779G" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1XSQy8A779H" role="3cqZAp">
          <node concept="3clFbS" id="1XSQy8A779I" role="3clFbx">
            <node concept="3cpWs6" id="1XSQy8A779J" role="3cqZAp">
              <node concept="2ShNRf" id="1XSQy8A779K" role="3cqZAk">
                <node concept="1pGfFk" id="2YkCud37Jst" role="2ShVmc">
                  <ref role="37wK5l" to="g27j:~ConnectionPath.&lt;init&gt;()" resolve="ConnectionPath" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1XSQy8A779M" role="3clFbw">
            <node concept="37vLTw" id="1XSQy8A779N" role="2Oq$k0">
              <ref role="3cqZAo" node="1XSQy8A779C" resolve="path" />
            </node>
            <node concept="1mIQ4w" id="1XSQy8A779O" role="2OqNvi">
              <node concept="chp4Y" id="1XSQy8A779P" role="cj9EA">
                <ref role="cht4Q" to="xiqq:3IX4BsKoiap" resolve="StraightConnectionPath" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1XSQy8A779Q" role="3eNLev">
            <node concept="3clFbS" id="1XSQy8A779R" role="3eOfB_">
              <node concept="3cpWs6" id="1XSQy8A779S" role="3cqZAp">
                <node concept="2ShNRf" id="1XSQy8A779T" role="3cqZAk">
                  <node concept="1pGfFk" id="1XSQy8A779U" role="2ShVmc">
                    <ref role="37wK5l" to="g27j:~ConnectionPath.&lt;init&gt;(int)" resolve="ConnectionPath" />
                    <node concept="2OqwBi" id="1XSQy8A779V" role="37wK5m">
                      <node concept="1PxgMI" id="1XSQy8A779W" role="2Oq$k0">
                        <node concept="chp4Y" id="1XSQy8A779X" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
                        </node>
                        <node concept="37vLTw" id="1XSQy8A779Y" role="1m5AlR">
                          <ref role="3cqZAo" node="1XSQy8A779C" resolve="path" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="1XSQy8A779Z" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:3IX4BsKoiH9" resolve="getDX" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1XSQy8A77a0" role="3eO9$A">
              <node concept="37vLTw" id="1XSQy8A77a1" role="2Oq$k0">
                <ref role="3cqZAo" node="1XSQy8A779C" resolve="path" />
              </node>
              <node concept="1mIQ4w" id="1XSQy8A77a2" role="2OqNvi">
                <node concept="chp4Y" id="1XSQy8A77a3" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1XSQy8A77a4" role="3eNLev">
            <node concept="3clFbS" id="1XSQy8A77a5" role="3eOfB_">
              <node concept="3cpWs8" id="1XSQy8A77a6" role="3cqZAp">
                <node concept="3cpWsn" id="1XSQy8A77a7" role="3cpWs9">
                  <property role="TrG5h" value="fourAngle" />
                  <node concept="3Tqbb2" id="1XSQy8A77a8" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                  </node>
                  <node concept="1PxgMI" id="1XSQy8A77a9" role="33vP2m">
                    <node concept="chp4Y" id="1XSQy8A77aa" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                    </node>
                    <node concept="37vLTw" id="1XSQy8A77ab" role="1m5AlR">
                      <ref role="3cqZAo" node="1XSQy8A779C" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1XSQy8A77ac" role="3cqZAp">
                <node concept="2ShNRf" id="1XSQy8A77ad" role="3cqZAk">
                  <node concept="1pGfFk" id="1XSQy8A77ae" role="2ShVmc">
                    <ref role="37wK5l" to="g27j:~ConnectionPath.&lt;init&gt;(int,int,int)" resolve="ConnectionPath" />
                    <node concept="2OqwBi" id="1XSQy8A77af" role="37wK5m">
                      <node concept="37vLTw" id="1XSQy8A77ag" role="2Oq$k0">
                        <ref role="3cqZAo" node="1XSQy8A77a7" resolve="fourAngle" />
                      </node>
                      <node concept="2qgKlT" id="1XSQy8A77ah" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:3IX4BsKoo4v" resolve="getDX1" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1XSQy8A77ai" role="37wK5m">
                      <node concept="37vLTw" id="1XSQy8A77aj" role="2Oq$k0">
                        <ref role="3cqZAo" node="1XSQy8A77a7" resolve="fourAngle" />
                      </node>
                      <node concept="2qgKlT" id="1XSQy8A77ak" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:3IX4BsKoqdS" resolve="getDY" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1XSQy8A77al" role="37wK5m">
                      <node concept="37vLTw" id="1XSQy8A77am" role="2Oq$k0">
                        <ref role="3cqZAo" node="1XSQy8A77a7" resolve="fourAngle" />
                      </node>
                      <node concept="2qgKlT" id="1XSQy8A77an" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:3IX4BsKoq$j" resolve="getDX2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1XSQy8A77ao" role="3eO9$A">
              <node concept="37vLTw" id="1XSQy8A77ap" role="2Oq$k0">
                <ref role="3cqZAo" node="1XSQy8A779C" resolve="path" />
              </node>
              <node concept="1mIQ4w" id="1XSQy8A77aq" role="2OqNvi">
                <node concept="chp4Y" id="1XSQy8A77ar" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1XSQy8A77as" role="9aQIa">
            <node concept="3clFbS" id="1XSQy8A77at" role="9aQI4">
              <node concept="3cpWs6" id="4FRweWLdz7C" role="3cqZAp">
                <node concept="2ShNRf" id="4FRweWLdz7D" role="3cqZAk">
                  <node concept="1pGfFk" id="2YkCud37Jsr" role="2ShVmc">
                    <ref role="37wK5l" to="g27j:~ConnectionPath.&lt;init&gt;()" resolve="ConnectionPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1XSQy8A77aX" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5_zE$" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5__Lk" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3Tm1VV" id="6$FGuy5__Lm" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5__Ln" role="3clF45" />
      <node concept="37vLTG" id="6$FGuy5__Lo" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="6$FGuy5AFYd" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~ConnectionPath" resolve="ConnectionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="6$FGuy5__Lq" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5AV4q" role="3cqZAp">
          <node concept="37vLTI" id="4FRweWLgcq$" role="3clFbG">
            <node concept="2OqwBi" id="6$FGuy5AV4v" role="37vLTJ">
              <node concept="37vLTw" id="6$FGuy5AV4w" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="6$FGuy5AV4x" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
              </node>
            </node>
            <node concept="2YIFZM" id="6$FGuy5WdWj" role="37vLTx">
              <ref role="1Pybhc" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
              <ref role="37wK5l" node="1R4IoyQANP4" resolve="serializeConnectionPath" />
              <node concept="37vLTw" id="6$FGuy5We36" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5__Lo" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5__Lr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5wbSO" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5BcFu" role="jymVt">
      <property role="TrG5h" value="setSourcePort" />
      <node concept="3Tm1VV" id="6$FGuy5BcFw" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5BcFx" role="3clF45" />
      <node concept="37vLTG" id="6$FGuy5BcFy" role="3clF46">
        <property role="TrG5h" value="sourcePort" />
        <node concept="3uibUv" id="6$FGuy5BcFA" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="6$FGuy5BcFB" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5WePL" role="3cqZAp">
          <node concept="37vLTI" id="6$FGuy5WePM" role="3clFbG">
            <node concept="2OqwBi" id="6$FGuy5WePN" role="37vLTJ">
              <node concept="37vLTw" id="6$FGuy5WePO" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="6$FGuy5WhBc" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
              </node>
            </node>
            <node concept="2YIFZM" id="6$FGuy5WgcT" role="37vLTx">
              <ref role="1Pybhc" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
              <ref role="37wK5l" node="1R4IoyQANIF" resolve="serializeSourcePort" />
              <node concept="37vLTw" id="6$FGuy5WgcU" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5BcFy" resolve="sourcePort" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5BcFC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5BgMs" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5BcFD" role="jymVt">
      <property role="TrG5h" value="setTargetPort" />
      <node concept="3Tm1VV" id="6$FGuy5BcFF" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5BcFG" role="3clF45" />
      <node concept="37vLTG" id="6$FGuy5BcFH" role="3clF46">
        <property role="TrG5h" value="targetPort" />
        <node concept="3uibUv" id="6$FGuy5BcFL" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="6$FGuy5BcFM" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5WhGA" role="3cqZAp">
          <node concept="37vLTI" id="6$FGuy5WhGB" role="3clFbG">
            <node concept="2OqwBi" id="6$FGuy5WhGC" role="37vLTJ">
              <node concept="37vLTw" id="6$FGuy5WhGD" role="2Oq$k0">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="6$FGuy5Wio_" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
              </node>
            </node>
            <node concept="2YIFZM" id="6$FGuy5Wiuh" role="37vLTx">
              <ref role="1Pybhc" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
              <ref role="37wK5l" node="1R4IoyQANLS" resolve="serializeDestinationPort" />
              <node concept="37vLTw" id="6$FGuy5WjJz" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5BcFH" resolve="targetPort" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5BcFN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5BiMi" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5wd_D" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="6$FGuy5wd_F" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5wd_G" role="3clF45" />
      <node concept="3clFbS" id="6$FGuy5wd_I" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5wgYQ" role="3cqZAp">
          <node concept="2OqwBi" id="6$FGuy5whaK" role="3clFbG">
            <node concept="37vLTw" id="6$FGuy5wgYP" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="6$FGuy5wkTI" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5wd_J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5wbZY" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKutxc" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="3IX4BsKutxe" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKutxf" role="3clF45">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="3IX4BsKutxg" role="3clF47">
        <node concept="3clFbJ" id="3IX4BsKuvmU" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKuvNp" role="3clFbw">
            <node concept="37vLTw" id="3IX4BsKuvtw" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="3IX4BsKuztE" role="2OqNvi">
              <node concept="chp4Y" id="3IX4BsKuzxa" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3IX4BsKuvmW" role="3clFbx">
            <node concept="3cpWs6" id="3IX4BsKuzIs" role="3cqZAp">
              <node concept="Rm8GO" id="3IX4BsKu$yE" role="3cqZAk">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3IX4BsKu$K$" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKu$K_" role="3clFbw">
            <node concept="37vLTw" id="3IX4BsKu$KA" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="3IX4BsKu$KB" role="2OqNvi">
              <node concept="chp4Y" id="3IX4BsKu_89" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3IX4BsKu$KD" role="3clFbx">
            <node concept="3cpWs6" id="3IX4BsKu$KE" role="3cqZAp">
              <node concept="Rm8GO" id="2YkCud39NcL" role="3cqZAk">
                <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3IX4BsKu_xj" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKu_xk" role="3clFbw">
            <node concept="37vLTw" id="3IX4BsKu_xl" role="2Oq$k0">
              <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
            </node>
            <node concept="1mIQ4w" id="3IX4BsKu_xm" role="2OqNvi">
              <node concept="chp4Y" id="3IX4BsKu_WU" role="cj9EA">
                <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3IX4BsKu_xo" role="3clFbx">
            <node concept="3cpWs6" id="3IX4BsKu_xp" role="3cqZAp">
              <node concept="Rm8GO" id="3IX4BsKuA4k" role="3cqZAk">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3IX4BsKuB90" role="3cqZAp">
          <node concept="10Nm6u" id="3IX4BsKuByO" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKutxh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7PF$iX$pQny" role="jymVt" />
    <node concept="3clFb_" id="7PF$iX$pRuG" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="7PF$iX$pRuH" role="3clF45">
        <ref role="ehGHo" to="xiqq:4KieeRVlhii" resolve="Connection" />
      </node>
      <node concept="3Tm1VV" id="7PF$iX$pRuI" role="1B3o_S" />
      <node concept="3clFbS" id="7PF$iX$pRuJ" role="3clF47">
        <node concept="3clFbF" id="7PF$iX$pRuK" role="3cqZAp">
          <node concept="37vLTw" id="7PF$iX$pRuF" role="3clFbG">
            <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZCc03" role="jymVt" />
    <node concept="3clFb_" id="31DWWgF7qwp" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="31DWWgF7qwr" role="1B3o_S" />
      <node concept="3uibUv" id="31DWWgF7qws" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="31DWWgF7qwt" role="3clF47">
        <node concept="3clFbF" id="31DWWgF7t3Y" role="3cqZAp">
          <node concept="37vLTw" id="31DWWgF7t3V" role="3clFbG">
            <ref role="3cqZAo" node="6YcNwH3_SGG" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31DWWgF7qwu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="31DWWgF7tld" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZCeSM" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="31Fn7oZCeSO" role="1B3o_S" />
      <node concept="3uibUv" id="31DWWgF7P5W" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
      </node>
      <node concept="3clFbS" id="31Fn7oZCeSQ" role="3clF47">
        <node concept="3cpWs8" id="6YcNwH3_LDV" role="3cqZAp">
          <node concept="3cpWsn" id="6YcNwH3_LDW" role="3cpWs9">
            <property role="TrG5h" value="container" />
            <node concept="3uibUv" id="6YcNwH3_LDX" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
            </node>
            <node concept="2OqwBi" id="6YcNwH3_LDY" role="33vP2m">
              <node concept="37vLTw" id="31DWWgF7q8w" role="2Oq$k0">
                <ref role="3cqZAo" node="6YcNwH3_SGG" resolve="myRepository" />
              </node>
              <node concept="liA8E" id="6YcNwH3_LE0" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="2OqwBi" id="6YcNwH3_LE1" role="37wK5m">
                  <node concept="37vLTw" id="6YcNwH3_LE2" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                  </node>
                  <node concept="1mfA1w" id="6YcNwH3_LE3" role="2OqNvi" />
                </node>
                <node concept="3VsKOn" id="6YcNwH3_LE4" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3_LE5" role="3cqZAp">
          <node concept="10QFUN" id="6YcNwH3_LE6" role="3clFbG">
            <node concept="3uibUv" id="6YcNwH3_LE7" role="10QFUM">
              <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
            </node>
            <node concept="2YIFZM" id="6YcNwH3_LE8" role="10QFUP">
              <ref role="1Pybhc" to="g27j:~FBNetwork" resolve="FBNetwork" />
              <ref role="37wK5l" to="g27j:~FBNetwork.extractNetwork(org.fbme.lib.iec61499.declarations.Declaration)" resolve="extractNetwork" />
              <node concept="37vLTw" id="6YcNwH3_LE9" role="37wK5m">
                <ref role="3cqZAo" node="6YcNwH3_LDW" resolve="container" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31Fn7oZCeSR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7PF$iX$pQs_" role="jymVt" />
    <node concept="3Tm1VV" id="3IX4BsKu5jT" role="1B3o_S" />
    <node concept="3uibUv" id="7PF$iX$jL6W" role="EKbjA">
      <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
    </node>
    <node concept="3uibUv" id="6YcNwH3_POR" role="EKbjA">
      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFb_" id="3IX4BsKu79A" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="3IX4BsKu79B" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsKu79C" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsKu79D" role="3clF47">
        <node concept="3cpWs6" id="3IX4BsKu8fw" role="3cqZAp">
          <node concept="22lmx$" id="3IX4BsKu9zO" role="3cqZAk">
            <node concept="1eOMI4" id="3IX4BsKufBx" role="3uHU7w">
              <node concept="1Wc70l" id="3IX4BsKubHm" role="1eOMHV">
                <node concept="3clFbC" id="3IX4BsKud7J" role="3uHU7w">
                  <node concept="37vLTw" id="3IX4BsKuc2G" role="3uHU7B">
                    <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
                  </node>
                  <node concept="2OqwBi" id="3IX4BsKuej0" role="3uHU7w">
                    <node concept="2OwXpG" id="3IX4BsKuh79" role="2OqNvi">
                      <ref role="2Oxat5" node="3IX4BsKu5By" resolve="myNode" />
                    </node>
                    <node concept="1eOMI4" id="3IX4BsKufBv" role="2Oq$k0">
                      <node concept="10QFUN" id="3IX4BsKueCY" role="1eOMHV">
                        <node concept="3uibUv" id="3IX4BsKufZJ" role="10QFUM">
                          <ref role="3uigEE" node="3IX4BsKu5jS" resolve="FBNetworkConnectionByNode" />
                        </node>
                        <node concept="37vLTw" id="3IX4BsKue8S" role="10QFUP">
                          <ref role="3cqZAo" node="3IX4BsKu7a6" resolve="o" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="3IX4BsKuatp" role="3uHU7B">
                  <node concept="3uibUv" id="3IX4BsKuaLS" role="2ZW6by">
                    <ref role="3uigEE" node="3IX4BsKu5jS" resolve="FBNetworkConnectionByNode" />
                  </node>
                  <node concept="37vLTw" id="3IX4BsKua7$" role="2ZW6bz">
                    <ref role="3cqZAo" node="3IX4BsKu7a6" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3IX4BsKu8Xd" role="3uHU7B">
              <node concept="Xjq3P" id="3IX4BsKu8xO" role="3uHU7B" />
              <node concept="37vLTw" id="3IX4BsKu9eP" role="3uHU7w">
                <ref role="3cqZAo" node="3IX4BsKu7a6" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3IX4BsKu7a6" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="3IX4BsKu7a7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKu7a8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKuhBC" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKu7a_" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="3IX4BsKu7aA" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsKu7aB" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsKu7aC" role="3clF47">
        <node concept="3cpWs6" id="3IX4BsKusZq" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKuiQE" role="3cqZAk">
            <node concept="2JrnkZ" id="3IX4BsKuo_R" role="2Oq$k0">
              <node concept="37vLTw" id="3IX4BsKuiqL" role="2JrQYb">
                <ref role="3cqZAo" node="3IX4BsKu5By" resolve="myNode" />
              </node>
            </node>
            <node concept="liA8E" id="3IX4BsKusne" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKu7aD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6LU90BOirFi">
    <property role="TrG5h" value="FunctionBlockDeclarationByNode" />
    <node concept="15s5l7" id="4FRweWLidWm" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @FBInstanceByNode.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @FBInstanceByNode.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T" />
    </node>
    <node concept="2tJIrI" id="6LU90BOirFj" role="jymVt" />
    <node concept="3clFbW" id="6LU90BOirFr" role="jymVt">
      <node concept="3cqZAl" id="6LU90BOirFs" role="3clF45" />
      <node concept="3Tm1VV" id="6LU90BOirFt" role="1B3o_S" />
      <node concept="3clFbS" id="6LU90BOirFu" role="3clF47">
        <node concept="XkiVB" id="4FRweWLilUs" role="3cqZAp">
          <ref role="37wK5l" node="3VhUp_YMkxn" resolve="FunctionBlockDeclarationBaseByNode" />
          <node concept="37vLTw" id="4FRweWLim8g" role="37wK5m">
            <ref role="3cqZAo" node="6LU90BOirFB" resolve="node" />
          </node>
          <node concept="37vLTw" id="3VhUp_YOHhF" role="37wK5m">
            <ref role="3cqZAo" node="1v1P8mMv0OQ" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6LU90BOirFB" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3VhUp_YNo2n" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1v1P8mMv0OQ" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1v1P8mMv1kv" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YNp34" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YNpl9" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tqbb2" id="3VhUp_YNplb" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3Tmbuc" id="3VhUp_YNplc" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YNpld" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YNpE9" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YNpSv" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YNpE8" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
            </node>
            <node concept="3TrEf2" id="3VhUp_YNqiE" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:3IX4BsKatOx" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YNple" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YNnvl" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h48PxI" role="jymVt">
      <property role="TrG5h" value="getTypeReference" />
      <node concept="3Tm1VV" id="3lxP5h48PxJ" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h48PxM" role="3clF45">
        <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h4ewkr" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h48PxT" role="3clF47">
        <node concept="3clFbF" id="3lxP5h48QmM" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h48QmG" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h48QH9" role="2ShVmc">
              <ref role="37wK5l" to="go3h:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="3lxP5h48QLY" role="37wK5m">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h48R79" role="37wK5m">
                <ref role="359W_E" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                <ref role="359W_F" to="xiqq:PI_pXYugbv" resolve="type" />
              </node>
              <node concept="3VsKOn" id="3lxP5h48SVQ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
              </node>
              <node concept="3uibUv" id="3lxP5h4ewM5" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="3lxP5h48TxK" role="37wK5m">
                <ref role="3cqZAo" node="3VhUp_YNzQc" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h48PxU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48PxL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTrMm" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YTldY" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="3VhUp_YTldZ" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YTle1" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
      </node>
      <node concept="3clFbS" id="3VhUp_YTled" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h48VyZ" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h48Vz0" role="3cpWs9">
            <property role="TrG5h" value="typeReference" />
            <node concept="3uibUv" id="3lxP5h48V3T" role="1tU5fm">
              <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
              <node concept="3uibUv" id="3lxP5h4exWW" role="11_B2D">
                <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
              </node>
            </node>
            <node concept="1rXfSq" id="3lxP5h48Vz1" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h48PxI" resolve="getTypeReference" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3lxP5h48Yi4" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h48Yi5" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="3uibUv" id="3lxP5h4eyCJ" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="3lxP5h48Yi6" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h48Yi7" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h48Vz0" resolve="typeReference" />
              </node>
              <node concept="liA8E" id="3lxP5h48Yi8" role="2OqNvi">
                <ref role="37wK5l" to="v4vf:~Reference.getTarget()" resolve="getTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3lxP5h48Wo4" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h48Wo6" role="3clFbx">
            <node concept="3cpWs6" id="3lxP5h48ZQ1" role="3cqZAp">
              <node concept="2OqwBi" id="3lxP5h4906a" role="3cqZAk">
                <node concept="37vLTw" id="3lxP5h48ZR8" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h48Yi5" resolve="target" />
                </node>
                <node concept="liA8E" id="3lxP5h4etAb" role="2OqNvi">
                  <ref role="37wK5l" to="cwd8:~FBTypeDeclaration.getTypeDescriptor()" resolve="getTypeDescriptor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3lxP5h48ZC2" role="3clFbw">
            <node concept="10Nm6u" id="3lxP5h48ZO$" role="3uHU7w" />
            <node concept="37vLTw" id="3lxP5h48ZcU" role="3uHU7B">
              <ref role="3cqZAo" node="3lxP5h48Yi5" resolve="target" />
            </node>
          </node>
          <node concept="9aQIb" id="3lxP5h491w4" role="9aQIa">
            <node concept="3clFbS" id="3lxP5h491w5" role="9aQI4">
              <node concept="3cpWs6" id="3lxP5h492Wd" role="3cqZAp">
                <node concept="2ShNRf" id="3lxP5h491PJ" role="3cqZAk">
                  <node concept="1pGfFk" id="3lxP5h491PK" role="2ShVmc">
                    <ref role="37wK5l" node="3VhUp_YORJb" resolve="EmptyTypeDescriptor" />
                    <node concept="2OqwBi" id="3lxP5h492lg" role="37wK5m">
                      <node concept="37vLTw" id="3lxP5h492hF" role="2Oq$k0">
                        <ref role="3cqZAo" node="3lxP5h48Vz0" resolve="typeReference" />
                      </node>
                      <node concept="liA8E" id="3lxP5h492sw" role="2OqNvi">
                        <ref role="37wK5l" to="v4vf:~Reference.getPresentation()" resolve="getPresentation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YTlee" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4evqk" role="jymVt" />
    <node concept="2tJIrI" id="3lxP5h4evqW" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YWvnW" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3VhUp_YWvnX" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YWvnZ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6YcNwH3u36O" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YWvo6" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YWxL9" role="3cqZAp">
          <node concept="2ShNRf" id="3VhUp_YWxL7" role="3clFbG">
            <node concept="1pGfFk" id="5poOURFiJQV" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="6YcNwH3u3ME" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="2OqwBi" id="3VhUp_YWyAA" role="37wK5m">
                <node concept="37vLTw" id="3VhUp_YWyfI" role="2Oq$k0">
                  <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="3VhUp_YWzi3" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="3VhUp_YWzVQ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="3VhUp_YW_od" role="37wK5m">
                <ref role="3cqZAo" node="3VhUp_YNzQc" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YWvo7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6LU90BOirKG" role="1B3o_S" />
    <node concept="3uibUv" id="6LU90BOirKH" role="EKbjA">
      <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
    </node>
    <node concept="3uibUv" id="4FRweWLhixv" role="1zkMxy">
      <ref role="3uigEE" node="3VhUp_YMiEx" resolve="FunctionBlockDeclarationBaseByNode" />
      <node concept="3Tqbb2" id="3VhUp_YNmyZ" role="11_B2D">
        <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2syzu7qTf1n">
    <property role="TrG5h" value="InlineValueByNode" />
    <node concept="2tJIrI" id="2syzu7qTf2y" role="jymVt" />
    <node concept="312cEg" id="1XSQy8A5$m0" role="jymVt">
      <property role="TrG5h" value="myOppositePort" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1XSQy8A5zLJ" role="1B3o_S" />
      <node concept="3uibUv" id="1XSQy8A5$8d" role="1tU5fm">
        <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
      </node>
    </node>
    <node concept="312cEg" id="3VhUp_YVKxk" role="jymVt">
      <property role="TrG5h" value="myNetwork" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3VhUp_YVKa5" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YVLWo" role="1tU5fm">
        <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qThaW" role="jymVt" />
    <node concept="3clFbW" id="2syzu7qTgYV" role="jymVt">
      <node concept="3cqZAl" id="2syzu7qTgYW" role="3clF45" />
      <node concept="3Tm6S6" id="5HzRr7EM5Kg" role="1B3o_S" />
      <node concept="3clFbS" id="2syzu7qTgYZ" role="3clF47">
        <node concept="XkiVB" id="4FRweWLiAF1" role="3cqZAp">
          <ref role="37wK5l" node="4FRweWLh$Jg" resolve="FBNetworkComponentByNode" />
          <node concept="37vLTw" id="4FRweWLiB2L" role="37wK5m">
            <ref role="3cqZAo" node="2syzu7qTgZ2" resolve="node" />
          </node>
        </node>
        <node concept="3clFbF" id="5HzRr7ELy8q" role="3cqZAp">
          <node concept="37vLTI" id="5HzRr7ELyi$" role="3clFbG">
            <node concept="37vLTw" id="5HzRr7ELynp" role="37vLTx">
              <ref role="3cqZAo" node="5HzRr7ELwDh" resolve="oppositePort" />
            </node>
            <node concept="37vLTw" id="5HzRr7ELy8o" role="37vLTJ">
              <ref role="3cqZAo" node="1XSQy8A5$m0" resolve="myOppositePort" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3VhUp_YVKUw" role="3cqZAp">
          <node concept="37vLTI" id="3VhUp_YVL2h" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YVL8g" role="37vLTx">
              <ref role="3cqZAo" node="31Fn7oZFumW" resolve="network" />
            </node>
            <node concept="37vLTw" id="3VhUp_YVKUu" role="37vLTJ">
              <ref role="3cqZAo" node="3VhUp_YVKxk" resolve="myNetwork" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5HzRr7ELwDh" role="3clF46">
        <property role="TrG5h" value="oppositePort" />
        <node concept="3uibUv" id="5HzRr7ELwTB" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="37vLTG" id="2syzu7qTgZ2" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2syzu7qTgZ1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="31Fn7oZFumW" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="31Fn7oZFuxp" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YVJdV" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YVJ_J" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3VhUp_YVJ_K" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YVLGX" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
      </node>
      <node concept="3clFbS" id="3VhUp_YVJ_S" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YVM7A" role="3cqZAp">
          <node concept="37vLTw" id="3VhUp_YVM7z" role="3clFbG">
            <ref role="3cqZAo" node="3VhUp_YVKxk" resolve="myNetwork" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YVJ_T" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qThTc" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qTf3g" role="jymVt">
      <property role="TrG5h" value="getOpppositePort" />
      <node concept="3Tm1VV" id="2syzu7qTf3i" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qTf3j" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
      </node>
      <node concept="2AHcQZ" id="2syzu7qTf3k" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2syzu7qTf3l" role="3clF47">
        <node concept="3clFbF" id="1XSQy8A5FL8" role="3cqZAp">
          <node concept="37vLTw" id="1XSQy8A5FL7" role="3clFbG">
            <ref role="3cqZAo" node="1XSQy8A5$m0" resolve="myOppositePort" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qTf3m" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5HzRr7ELp_T" role="jymVt" />
    <node concept="2YIFZL" id="5HzRr7ELrGw" role="jymVt">
      <property role="TrG5h" value="createForConstantSource" />
      <node concept="37vLTG" id="5HzRr7ELrGx" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5HzRr7ELrGy" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
        </node>
      </node>
      <node concept="37vLTG" id="5HzRr7ELrGz" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="5HzRr7ELrG$" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
        </node>
      </node>
      <node concept="3clFbS" id="5HzRr7ELrGB" role="3clF47">
        <node concept="3cpWs8" id="5HzRr7ELsJj" role="3cqZAp">
          <node concept="3cpWsn" id="5HzRr7ELsJk" role="3cpWs9">
            <property role="TrG5h" value="destination" />
            <node concept="3Tqbb2" id="5HzRr7ELsJl" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
            </node>
            <node concept="1PxgMI" id="5HzRr7ELsJm" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="5HzRr7ELsJn" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
              </node>
              <node concept="2OqwBi" id="5HzRr7ELsJo" role="1m5AlR">
                <node concept="1PxgMI" id="5HzRr7ELsJp" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5HzRr7ELsJq" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:4KieeRVlhii" resolve="Connection" />
                  </node>
                  <node concept="2OqwBi" id="5HzRr7ELsJr" role="1m5AlR">
                    <node concept="1mfA1w" id="5HzRr7ELsJs" role="2OqNvi" />
                    <node concept="37vLTw" id="5HzRr7ELtoG" role="2Oq$k0">
                      <ref role="3cqZAo" node="5HzRr7ELrGx" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="5HzRr7ELsJu" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5HzRr7ELsJv" role="3cqZAp">
          <node concept="3cpWsn" id="5HzRr7ELsJw" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="6mkmem0DRmJ" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="5HzRr7ELsJ$" role="33vP2m">
              <node concept="liA8E" id="5HzRr7ELsJ_" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="2OqwBi" id="5HzRr7ELsJA" role="37wK5m">
                  <node concept="37vLTw" id="5HzRr7ELsJB" role="2Oq$k0">
                    <ref role="3cqZAo" node="5HzRr7ELsJk" resolve="destination" />
                  </node>
                  <node concept="3TrEf2" id="6z_cCa7WTNI" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
                <node concept="3VsKOn" id="31DWWgFbIYo" role="37wK5m">
                  <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                </node>
              </node>
              <node concept="2OqwBi" id="31DWWgFbIAK" role="2Oq$k0">
                <node concept="37vLTw" id="5HzRr7ELtJl" role="2Oq$k0">
                  <ref role="3cqZAo" node="5HzRr7ELrGz" resolve="network" />
                </node>
                <node concept="liA8E" id="31DWWgFbINd" role="2OqNvi">
                  <ref role="37wK5l" node="6YcNwH3wmZ5" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5HzRr7ELudq" role="3cqZAp">
          <node concept="3cpWsn" id="5HzRr7ELudr" role="3cpWs9">
            <property role="TrG5h" value="oppposite" />
            <node concept="3uibUv" id="5HzRr7ELuds" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5HzRr7ELtNy" role="3cqZAp" />
        <node concept="3clFbJ" id="5HzRr7ELsJF" role="3cqZAp">
          <node concept="3clFbS" id="5HzRr7ELsJG" role="3clFbx">
            <node concept="3clFbF" id="5HzRr7ELsJH" role="3cqZAp">
              <node concept="37vLTI" id="5HzRr7ELsJI" role="3clFbG">
                <node concept="37vLTw" id="5HzRr7ELuqU" role="37vLTJ">
                  <ref role="3cqZAo" node="5HzRr7ELudr" resolve="oppposite" />
                </node>
                <node concept="2ShNRf" id="5HzRr7ELsJK" role="37vLTx">
                  <node concept="1pGfFk" id="5HzRr7ELsJL" role="2ShVmc">
                    <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean)" resolve="FunctionBlockPortIdentity" />
                    <node concept="37vLTw" id="5HzRr7ELsJM" role="37wK5m">
                      <ref role="3cqZAo" node="5HzRr7ELsJw" resolve="fb" />
                    </node>
                    <node concept="2OqwBi" id="5HzRr7ELsJN" role="37wK5m">
                      <node concept="2OqwBi" id="5HzRr7ELsJO" role="2Oq$k0">
                        <node concept="37vLTw" id="5HzRr7ELsJP" role="2Oq$k0">
                          <ref role="3cqZAo" node="5HzRr7ELsJk" resolve="destination" />
                        </node>
                        <node concept="3TrEf2" id="5HzRr7ELsJQ" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                        </node>
                      </node>
                      <node concept="2bSWHS" id="5HzRr7ELsJR" role="2OqNvi" />
                    </node>
                    <node concept="Rm8GO" id="5HzRr7ELsJS" role="37wK5m">
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                      <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                    </node>
                    <node concept="3clFbT" id="5HzRr7ELsJT" role="37wK5m" />
                    <node concept="2OqwBi" id="1S4cYrOODz2" role="37wK5m">
                      <node concept="3TrcHB" id="1S4cYrOODz4" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="1S4cYrOOE9m" role="2Oq$k0">
                        <node concept="37vLTw" id="1S4cYrOODOL" role="2Oq$k0">
                          <ref role="3cqZAo" node="5HzRr7ELsJk" resolve="destination" />
                        </node>
                        <node concept="3TrEf2" id="1S4cYrOOErG" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbT" id="5HzRr7ELsJU" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5HzRr7ELsJV" role="3clFbw">
            <node concept="2OqwBi" id="5HzRr7ELsJW" role="3uHU7w">
              <node concept="2OqwBi" id="5HzRr7ELsJX" role="2Oq$k0">
                <node concept="2OqwBi" id="5HzRr7ELsJY" role="2Oq$k0">
                  <node concept="37vLTw" id="5HzRr7ELsJZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5HzRr7ELsJk" resolve="destination" />
                  </node>
                  <node concept="3TrEf2" id="6z_cCa7WTOS" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5HzRr7ELsK1" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
                </node>
              </node>
              <node concept="3JPx81" id="5HzRr7ELsK2" role="2OqNvi">
                <node concept="2OqwBi" id="5HzRr7ELsK3" role="25WWJ7">
                  <node concept="37vLTw" id="5HzRr7ELsK4" role="2Oq$k0">
                    <ref role="3cqZAo" node="5HzRr7ELsJk" resolve="destination" />
                  </node>
                  <node concept="3TrEf2" id="5HzRr7ELsK5" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5HzRr7ELsK6" role="3uHU7B">
              <node concept="2OqwBi" id="5HzRr7ELsK7" role="3uHU7B">
                <node concept="37vLTw" id="5HzRr7ELsK8" role="2Oq$k0">
                  <ref role="3cqZAo" node="5HzRr7ELsJk" resolve="destination" />
                </node>
                <node concept="3TrEf2" id="5HzRr7ELsK9" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                </node>
              </node>
              <node concept="10Nm6u" id="5HzRr7ELsKa" role="3uHU7w" />
            </node>
          </node>
          <node concept="9aQIb" id="5HzRr7ELsKb" role="9aQIa">
            <node concept="3clFbS" id="5HzRr7ELsKc" role="9aQI4">
              <node concept="3clFbF" id="5HzRr7ELsKd" role="3cqZAp">
                <node concept="37vLTI" id="5HzRr7ELsKe" role="3clFbG">
                  <node concept="37vLTw" id="5HzRr7ELuzy" role="37vLTJ">
                    <ref role="3cqZAo" node="5HzRr7ELudr" resolve="oppposite" />
                  </node>
                  <node concept="2OqwBi" id="5HzRr7ELsKg" role="37vLTx">
                    <node concept="37vLTw" id="5HzRr7ELsKh" role="2Oq$k0">
                      <ref role="3cqZAo" node="5HzRr7ELsJw" resolve="fb" />
                    </node>
                    <node concept="liA8E" id="5HzRr7ELsKi" role="2OqNvi">
                      <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getPort(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="getPort" />
                      <node concept="2OqwBi" id="5HzRr7ELsKj" role="37wK5m">
                        <node concept="2OqwBi" id="5HzRr7ELsKk" role="2Oq$k0">
                          <node concept="37vLTw" id="5HzRr7ELuJE" role="2Oq$k0">
                            <ref role="3cqZAo" node="5HzRr7ELrGz" resolve="network" />
                          </node>
                          <node concept="liA8E" id="5HzRr7ELsKm" role="2OqNvi">
                            <ref role="37wK5l" node="31Fn7oZAYo3" resolve="getBrokenTargets" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5HzRr7ELsKn" role="2OqNvi">
                          <ref role="37wK5l" node="31Fn7oZzXRN" resolve="reportBrokenInputData" />
                          <node concept="37vLTw" id="5HzRr7ELsKo" role="37wK5m">
                            <ref role="3cqZAo" node="5HzRr7ELsJw" resolve="fb" />
                          </node>
                          <node concept="2OqwBi" id="5HzRr7ELsKp" role="37wK5m">
                            <node concept="2OqwBi" id="5HzRr7ELsKq" role="2Oq$k0">
                              <node concept="37vLTw" id="5HzRr7ELsKr" role="2Oq$k0">
                                <ref role="3cqZAo" node="5HzRr7ELsJk" resolve="destination" />
                              </node>
                              <node concept="37Cfm0" id="5HzRr7ELsKs" role="2OqNvi">
                                <node concept="1aIX9F" id="5HzRr7ELsKt" role="37CeNk">
                                  <node concept="26LbJo" id="6z_cCa7WTU3" role="1aIX9E">
                                    <ref role="26LbJp" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1FfNbt" id="5HzRr7ELsKv" role="2OqNvi" />
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
        <node concept="3cpWs6" id="5HzRr7ELv61" role="3cqZAp">
          <node concept="2ShNRf" id="5HzRr7ELvpI" role="3cqZAk">
            <node concept="1pGfFk" id="5HzRr7ELvR2" role="2ShVmc">
              <ref role="37wK5l" node="2syzu7qTgYV" resolve="InlineValueByNode" />
              <node concept="37vLTw" id="5HzRr7ELzWm" role="37wK5m">
                <ref role="3cqZAo" node="5HzRr7ELudr" resolve="oppposite" />
              </node>
              <node concept="37vLTw" id="5HzRr7EL$aC" role="37wK5m">
                <ref role="3cqZAo" node="5HzRr7ELrGx" resolve="node" />
              </node>
              <node concept="37vLTw" id="5HzRr7EL$zw" role="37wK5m">
                <ref role="3cqZAo" node="5HzRr7ELrGz" resolve="network" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5HzRr7ELrGC" role="1B3o_S" />
      <node concept="3uibUv" id="5HzRr7ELrGD" role="3clF45">
        <ref role="3uigEE" node="2syzu7qTf1n" resolve="InlineValueByNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="5HzRr7EM5nJ" role="jymVt" />
    <node concept="2YIFZL" id="5HzRr7EL$Ty" role="jymVt">
      <property role="TrG5h" value="createForParameter" />
      <node concept="37vLTG" id="5HzRr7EL$Tz" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5HzRr7EL$T$" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="37vLTG" id="5HzRr7EL$T_" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="5HzRr7EL$TA" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
        </node>
      </node>
      <node concept="3clFbS" id="5HzRr7EL$TD" role="3clF47">
        <node concept="3cpWs8" id="5HzRr7EL$TE" role="3cqZAp">
          <node concept="3cpWsn" id="5HzRr7EL$TF" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3Tqbb2" id="5HzRr7EL$TG" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
            </node>
            <node concept="1PxgMI" id="5HzRr7EL$TK" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="31DWWgFbJGX" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
              </node>
              <node concept="2OqwBi" id="5HzRr7EL$TM" role="1m5AlR">
                <node concept="1mfA1w" id="5HzRr7EL$TN" role="2OqNvi" />
                <node concept="37vLTw" id="5HzRr7EL$TO" role="2Oq$k0">
                  <ref role="3cqZAo" node="5HzRr7EL$Tz" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5HzRr7EL$TQ" role="3cqZAp">
          <node concept="3cpWsn" id="5HzRr7EL$TR" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="6mkmem0IUj1" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="31DWWgFbJav" role="33vP2m">
              <node concept="liA8E" id="31DWWgFbJaw" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="37vLTw" id="31DWWgFbJBJ" role="37wK5m">
                  <ref role="3cqZAo" node="5HzRr7EL$TF" resolve="component" />
                </node>
                <node concept="3VsKOn" id="31DWWgFbJa$" role="37wK5m">
                  <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                </node>
              </node>
              <node concept="2OqwBi" id="31DWWgFbJa_" role="2Oq$k0">
                <node concept="37vLTw" id="31DWWgFbJaA" role="2Oq$k0">
                  <ref role="3cqZAo" node="5HzRr7EL$T_" resolve="network" />
                </node>
                <node concept="liA8E" id="31DWWgFbJaB" role="2OqNvi">
                  <ref role="37wK5l" node="6YcNwH3wmZ5" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5HzRr7EL$U1" role="3cqZAp">
          <node concept="3cpWsn" id="5HzRr7EL$U2" role="3cpWs9">
            <property role="TrG5h" value="oppposite" />
            <node concept="3uibUv" id="5HzRr7EL$U3" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5HzRr7EL$U4" role="3cqZAp" />
        <node concept="3clFbJ" id="5HzRr7EL$U5" role="3cqZAp">
          <node concept="3clFbS" id="5HzRr7EL$U6" role="3clFbx">
            <node concept="3clFbF" id="5HzRr7EL$U7" role="3cqZAp">
              <node concept="37vLTI" id="5HzRr7EL$U8" role="3clFbG">
                <node concept="37vLTw" id="5HzRr7EL$U9" role="37vLTJ">
                  <ref role="3cqZAo" node="5HzRr7EL$U2" resolve="oppposite" />
                </node>
                <node concept="2ShNRf" id="5HzRr7EL$Ua" role="37vLTx">
                  <node concept="1pGfFk" id="5HzRr7EL$Ub" role="2ShVmc">
                    <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean)" resolve="FunctionBlockPortIdentity" />
                    <node concept="37vLTw" id="5HzRr7EL$Uc" role="37wK5m">
                      <ref role="3cqZAo" node="5HzRr7EL$TR" resolve="fb" />
                    </node>
                    <node concept="2OqwBi" id="5HzRr7EL$Ud" role="37wK5m">
                      <node concept="2bSWHS" id="5HzRr7EL$Uh" role="2OqNvi" />
                      <node concept="2OqwBi" id="5HzRr7EM4vh" role="2Oq$k0">
                        <node concept="37vLTw" id="5HzRr7EM4vi" role="2Oq$k0">
                          <ref role="3cqZAo" node="5HzRr7EL$Tz" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="5HzRr7EM4vj" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7b" resolve="decl" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rm8GO" id="5HzRr7EL$Ui" role="37wK5m">
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                      <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                    </node>
                    <node concept="3clFbT" id="5HzRr7EL$Uj" role="37wK5m" />
                    <node concept="2OqwBi" id="1S4cYrOOEFZ" role="37wK5m">
                      <node concept="3TrcHB" id="1S4cYrOOEG0" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="1S4cYrOOEG1" role="2Oq$k0">
                        <node concept="37vLTw" id="1S4cYrOOER1" role="2Oq$k0">
                          <ref role="3cqZAo" node="5HzRr7EL$Tz" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1S4cYrOOF3_" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7b" resolve="decl" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbT" id="5HzRr7EL$Uk" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5HzRr7EL$Um" role="3clFbw">
            <node concept="2OqwBi" id="5HzRr7EL$Un" role="2Oq$k0">
              <node concept="37vLTw" id="5HzRr7EL$Up" role="2Oq$k0">
                <ref role="3cqZAo" node="5HzRr7EL$TF" resolve="component" />
              </node>
              <node concept="2qgKlT" id="31DWWgFbLzd" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
              </node>
            </node>
            <node concept="3JPx81" id="5HzRr7EL$Us" role="2OqNvi">
              <node concept="2OqwBi" id="5HzRr7ELBYO" role="25WWJ7">
                <node concept="37vLTw" id="5HzRr7ELBPx" role="2Oq$k0">
                  <ref role="3cqZAo" node="5HzRr7EL$Tz" resolve="node" />
                </node>
                <node concept="3TrEf2" id="5HzRr7ELC7K" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7b" resolve="decl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5HzRr7EL$U_" role="9aQIa">
            <node concept="3clFbS" id="5HzRr7EL$UA" role="9aQI4">
              <node concept="3clFbF" id="5HzRr7EL$UB" role="3cqZAp">
                <node concept="37vLTI" id="5HzRr7EL$UC" role="3clFbG">
                  <node concept="37vLTw" id="5HzRr7EL$UD" role="37vLTJ">
                    <ref role="3cqZAo" node="5HzRr7EL$U2" resolve="oppposite" />
                  </node>
                  <node concept="2OqwBi" id="5HzRr7EL$UE" role="37vLTx">
                    <node concept="37vLTw" id="5HzRr7EL$UF" role="2Oq$k0">
                      <ref role="3cqZAo" node="5HzRr7EL$TR" resolve="fb" />
                    </node>
                    <node concept="liA8E" id="5HzRr7EL$UG" role="2OqNvi">
                      <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getPort(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="getPort" />
                      <node concept="2OqwBi" id="5HzRr7EL$UH" role="37wK5m">
                        <node concept="2OqwBi" id="5HzRr7EL$UI" role="2Oq$k0">
                          <node concept="37vLTw" id="5HzRr7EL$UJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="5HzRr7EL$T_" resolve="network" />
                          </node>
                          <node concept="liA8E" id="5HzRr7EL$UK" role="2OqNvi">
                            <ref role="37wK5l" node="31Fn7oZAYo3" resolve="getBrokenTargets" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5HzRr7EL$UL" role="2OqNvi">
                          <ref role="37wK5l" node="31Fn7oZzXRN" resolve="reportBrokenInputData" />
                          <node concept="37vLTw" id="5HzRr7EL$UM" role="37wK5m">
                            <ref role="3cqZAo" node="5HzRr7EL$TR" resolve="fb" />
                          </node>
                          <node concept="2OqwBi" id="5HzRr7EL$UN" role="37wK5m">
                            <node concept="2OqwBi" id="5HzRr7EL$UO" role="2Oq$k0">
                              <node concept="37vLTw" id="5HzRr7EM4BC" role="2Oq$k0">
                                <ref role="3cqZAo" node="5HzRr7EL$Tz" resolve="node" />
                              </node>
                              <node concept="37Cfm0" id="5HzRr7EL$UQ" role="2OqNvi">
                                <node concept="1aIX9F" id="5HzRr7EL$UR" role="37CeNk">
                                  <node concept="26LbJo" id="5HzRr7EM4F$" role="1aIX9E">
                                    <ref role="26LbJp" to="xiqq:2lwHqHkyF7b" resolve="decl" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1FfNbt" id="5HzRr7EL$UT" role="2OqNvi" />
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
        <node concept="3cpWs6" id="5HzRr7EL$UU" role="3cqZAp">
          <node concept="2ShNRf" id="5HzRr7EL$UV" role="3cqZAk">
            <node concept="1pGfFk" id="5HzRr7EL$UW" role="2ShVmc">
              <ref role="37wK5l" node="2syzu7qTgYV" resolve="InlineValueByNode" />
              <node concept="37vLTw" id="5HzRr7EL$UX" role="37wK5m">
                <ref role="3cqZAo" node="5HzRr7EL$U2" resolve="oppposite" />
              </node>
              <node concept="37vLTw" id="5HzRr7EL$UY" role="37wK5m">
                <ref role="3cqZAo" node="5HzRr7EL$Tz" resolve="node" />
              </node>
              <node concept="37vLTw" id="5HzRr7EL$UZ" role="37wK5m">
                <ref role="3cqZAo" node="5HzRr7EL$T_" resolve="network" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5HzRr7EL$V1" role="1B3o_S" />
      <node concept="3uibUv" id="5HzRr7EL$V2" role="3clF45">
        <ref role="3uigEE" node="2syzu7qTf1n" resolve="InlineValueByNode" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2syzu7qTf1o" role="1B3o_S" />
    <node concept="3uibUv" id="2syzu7qTf2l" role="EKbjA">
      <ref role="3uigEE" to="g27j:~InlineValue" resolve="InlineValue" />
    </node>
    <node concept="3uibUv" id="4FRweWLhy2q" role="1zkMxy">
      <ref role="3uigEE" node="4FRweWLhg$b" resolve="FBNetworkComponentByNode" />
      <node concept="3Tqbb2" id="5HzRr7ELp6y" role="11_B2D" />
    </node>
  </node>
  <node concept="312cEu" id="6tmlia_XSFB">
    <property role="TrG5h" value="InterfaceEndpointByNode" />
    <node concept="2tJIrI" id="6tmlia_XSZg" role="jymVt" />
    <node concept="312cEg" id="6YcNwH3AEIX" role="jymVt">
      <property role="TrG5h" value="myNetwork" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6YcNwH3AEIY" role="1B3o_S" />
      <node concept="3uibUv" id="6YcNwH3AEIZ" role="1tU5fm">
        <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3ADZS" role="jymVt" />
    <node concept="3Tm1VV" id="6tmlia_XSFC" role="1B3o_S" />
    <node concept="3uibUv" id="6tmlia_XSGU" role="EKbjA">
      <ref role="3uigEE" to="g27j:~InterfaceEndpoint" resolve="InterfaceEndpoint" />
    </node>
    <node concept="3clFbW" id="6tmlia_XSZI" role="jymVt">
      <node concept="3cqZAl" id="6tmlia_XSZJ" role="3clF45" />
      <node concept="3Tm1VV" id="6tmlia_XSZK" role="1B3o_S" />
      <node concept="3clFbS" id="6tmlia_XSZM" role="3clF47">
        <node concept="XkiVB" id="4FRweWLiqWH" role="3cqZAp">
          <ref role="37wK5l" node="4FRweWLh$Jg" resolve="FBNetworkComponentByNode" />
          <node concept="37vLTw" id="4FRweWLircZ" role="37wK5m">
            <ref role="3cqZAo" node="6tmlia_XSZP" resolve="node" />
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3AFKu" role="3cqZAp">
          <node concept="37vLTI" id="6YcNwH3AG6m" role="3clFbG">
            <node concept="37vLTw" id="6YcNwH3AGhg" role="37vLTx">
              <ref role="3cqZAo" node="6YcNwH3ADmn" resolve="network" />
            </node>
            <node concept="37vLTw" id="6YcNwH3AFKs" role="37vLTJ">
              <ref role="3cqZAo" node="6YcNwH3AEIX" resolve="myNetwork" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6tmlia_XSZP" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6tmlia_XSZO" role="1tU5fm">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="6YcNwH3ADmn" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="6YcNwH3ADmo" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_XUgQ" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XUTE" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3clFbS" id="6tmlia_XUTH" role="3clF47">
        <node concept="3clFbF" id="6tmlia_XVPO" role="3cqZAp">
          <node concept="1PxgMI" id="6tmlia_Y20i" role="3clFbG">
            <node concept="chp4Y" id="6tmlia_Y27x" role="3oSUPX">
              <ref role="cht4Q" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
            </node>
            <node concept="2OqwBi" id="6tmlia_XW2k" role="1m5AlR">
              <node concept="37vLTw" id="6YcNwH3ALXA" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="1mfA1w" id="6tmlia_XYUp" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6tmlia_XUum" role="1B3o_S" />
      <node concept="3Tqbb2" id="6tmlia_XUJe" role="3clF45">
        <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_XTNs" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XTPK" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="3Tm1VV" id="6tmlia_XTPM" role="1B3o_S" />
      <node concept="10P_77" id="6tmlia_XTPN" role="3clF45" />
      <node concept="3clFbS" id="6tmlia_XTPO" role="3clF47">
        <node concept="3clFbF" id="6tmlia_YhX$" role="3cqZAp">
          <node concept="22lmx$" id="6tmlia_Yn5D" role="3clFbG">
            <node concept="2OqwBi" id="6tmlia_Yiey" role="3uHU7B">
              <node concept="1BlSNk" id="6tmlia_YloE" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
              </node>
              <node concept="37vLTw" id="6YcNwH3AMb6" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="6tmlia_Ynci" role="3uHU7w">
              <node concept="1BlSNk" id="6tmlia_Ynck" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
              </node>
              <node concept="37vLTw" id="6YcNwH3AMm3" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmlia_XTPP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_Y8Av" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XTPS" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="6tmlia_XTPU" role="1B3o_S" />
      <node concept="3uibUv" id="6tmlia_XTPV" role="3clF45">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="6tmlia_XTPW" role="3clF47">
        <node concept="3clFbJ" id="6tmlia_Yg3x" role="3cqZAp">
          <node concept="3clFbS" id="6tmlia_Yg3z" role="3clFbx">
            <node concept="3cpWs6" id="6tmlia_YnOv" role="3cqZAp">
              <node concept="Rm8GO" id="6tmlia_YonN" role="3cqZAk">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6tmlia_Ynv0" role="3clFbw">
            <node concept="2OqwBi" id="6tmlia_Ynv1" role="3uHU7B">
              <node concept="1BlSNk" id="6tmlia_Ynv3" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
              </node>
              <node concept="37vLTw" id="6YcNwH3AMw2" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="6tmlia_Ynv4" role="3uHU7w">
              <node concept="1BlSNk" id="6tmlia_Ynv6" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
              </node>
              <node concept="37vLTw" id="6YcNwH3AME2" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6tmlia_Yo$S" role="3cqZAp">
          <node concept="3clFbS" id="6tmlia_Yo$T" role="3clFbx">
            <node concept="3cpWs6" id="6tmlia_Yo$U" role="3cqZAp">
              <node concept="Rm8GO" id="6tmlia_YoQB" role="3cqZAk">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6tmlia_Yo$W" role="3clFbw">
            <node concept="2OqwBi" id="6tmlia_Yo$X" role="3uHU7B">
              <node concept="1BlSNk" id="6tmlia_Yo$Z" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
              </node>
              <node concept="37vLTw" id="6YcNwH3AMNW" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="6tmlia_Yo_0" role="3uHU7w">
              <node concept="1BlSNk" id="6tmlia_Yo_2" role="2OqNvi">
                <ref role="1BmUXE" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                <ref role="1Bn3mz" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
              </node>
              <node concept="37vLTw" id="6YcNwH3AMXK" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmlia_YpKe" role="3cqZAp">
          <node concept="10Nm6u" id="6tmlia_Yq1O" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmlia_XTPX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_Y6R4" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XTQ8" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="6tmlia_XTQa" role="1B3o_S" />
      <node concept="3uibUv" id="6tmlia_XTQb" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6tmlia_XTQc" role="3clF47">
        <node concept="3clFbF" id="6tmlia_Y2gW" role="3cqZAp">
          <node concept="2OqwBi" id="6tmlia_Y2P5" role="3clFbG">
            <node concept="1PxgMI" id="6tmlia_Y2ze" role="2Oq$k0">
              <node concept="chp4Y" id="6tmlia_Y2En" role="3oSUPX">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
              <node concept="1rXfSq" id="4FRweWLiu_I" role="1m5AlR">
                <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
              </node>
            </node>
            <node concept="3TrcHB" id="6tmlia_Y6NA" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmlia_XTQd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_XU8z" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XTQg" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tm1VV" id="6tmlia_XTQi" role="1B3o_S" />
      <node concept="10Oyi0" id="6tmlia_XTQj" role="3clF45" />
      <node concept="3clFbS" id="6tmlia_XTQl" role="3clF47">
        <node concept="3clFbF" id="6tmlia_YwX$" role="3cqZAp">
          <node concept="3cpWs3" id="6tmlia_YC7i" role="3clFbG">
            <node concept="1eOMI4" id="6tmlia_YCh7" role="3uHU7w">
              <node concept="3K4zz7" id="6tmlia_YFX7" role="1eOMHV">
                <node concept="3cmrfG" id="6tmlia_YQnZ" role="3K4GZi">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3clFbC" id="6tmlia_YDSY" role="3K4Cdx">
                  <node concept="Rm8GO" id="6tmlia_YEZq" role="3uHU7w">
                    <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                  </node>
                  <node concept="1rXfSq" id="6tmlia_YCFj" role="3uHU7B">
                    <ref role="37wK5l" node="6tmlia_XTPS" resolve="getKind" />
                  </node>
                </node>
                <node concept="2YIFZM" id="6tmlia_YSyl" role="3K4E3e">
                  <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <node concept="2OqwBi" id="6tmlia_YXgG" role="37wK5m">
                    <node concept="2OqwBi" id="6tmlia_YSym" role="2Oq$k0">
                      <node concept="1rXfSq" id="6tmlia_YSyn" role="2Oq$k0">
                        <ref role="37wK5l" node="6tmlia_XUTE" resolve="getContainer" />
                      </node>
                      <node concept="3Tsc0h" id="6tmlia_YSyo" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="6tmlia_Z3He" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="6tmlia_Z7NG" role="37wK5m">
                    <node concept="2OqwBi" id="6tmlia_YSyp" role="2Oq$k0">
                      <node concept="1rXfSq" id="6tmlia_YSyq" role="2Oq$k0">
                        <ref role="37wK5l" node="6tmlia_XUTE" resolve="getContainer" />
                      </node>
                      <node concept="3Tsc0h" id="6tmlia_YSyr" role="2OqNvi">
                        <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="6tmlia_ZeFq" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6tmlia_Yyf6" role="3uHU7B">
              <node concept="2bSWHS" id="6tmlia_Yyyy" role="2OqNvi" />
              <node concept="1rXfSq" id="4FRweWLiuOR" role="2Oq$k0">
                <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmlia_XTQm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3AGjF" role="jymVt" />
    <node concept="3uibUv" id="4FRweWLiqtl" role="1zkMxy">
      <ref role="3uigEE" node="4FRweWLhg$b" resolve="FBNetworkComponentByNode" />
      <node concept="3Tqbb2" id="6YcNwH3ANY$" role="11_B2D">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="3clFb_" id="6YcNwH3AH7_" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="6YcNwH3AH7A" role="1B3o_S" />
      <node concept="2AHcQZ" id="6YcNwH3AH7C" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6YcNwH3ARna" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
      </node>
      <node concept="3clFbS" id="6YcNwH3AH7I" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3APac" role="3cqZAp">
          <node concept="37vLTw" id="6YcNwH3APa9" role="3clFbG">
            <ref role="3cqZAo" node="6YcNwH3AEIX" resolve="myNetwork" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YcNwH3AH7J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQA3Yn">
    <property role="TrG5h" value="FBNetworkByNode" />
    <node concept="2tJIrI" id="1R4IoyQA407" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQANA3" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="6YcNwH3zrRb" role="1B3o_S" />
      <node concept="3Tqbb2" id="1R4IoyQANA5" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQXkK4" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="6YcNwH3zzNR" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQXkxn" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZ_Iz3" role="jymVt" />
    <node concept="312cEg" id="31Fn7oZ_Lb$" role="jymVt">
      <property role="TrG5h" value="myBrokenTargets" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="31Fn7oZ_JJ9" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZ_KQK" role="1tU5fm">
        <ref role="3uigEE" node="31Fn7oZuPIn" resolve="NetworkBrokenTargets" />
      </node>
      <node concept="2ShNRf" id="31Fn7oZ_MC$" role="33vP2m">
        <node concept="HV5vD" id="31Fn7oZ_N5s" role="2ShVmc">
          <ref role="HV5vE" node="31Fn7oZuPIn" resolve="NetworkBrokenTargets" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdMfc$" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQANA7" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQANA8" role="3clF45" />
      <node concept="3Tm1VV" id="1XSQy8A5quu" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQANAa" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQANAb" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyQANAc" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQANAd" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="1R4IoyQANAe" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQANAf" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R0_JUQXu1V" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQXwkU" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQXxYP" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQXqt0" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQXu1T" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQANAf" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQANAg" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQXqt0" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQXs6D" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3wis9" role="jymVt" />
    <node concept="3clFb_" id="6YcNwH3wmYk" role="jymVt">
      <property role="TrG5h" value="getFunctionBlocks" />
      <node concept="3Tm1VV" id="6YcNwH3wmYl" role="1B3o_S" />
      <node concept="2AHcQZ" id="6YcNwH3wmYn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6YcNwH3wmYo" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6YcNwH3wmYp" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="6YcNwH3wmYq" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3wWvq" role="3cqZAp">
          <node concept="2ShNRf" id="6YcNwH3wWvr" role="3clFbG">
            <node concept="1pGfFk" id="6YcNwH3wWvs" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3wWvt" role="37wK5m">
                <node concept="37vLTw" id="6YcNwH3wWvu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="6YcNwH3wXnf" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3wWvw" role="37wK5m">
                <ref role="3VsUkX" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
              <node concept="37vLTw" id="6YcNwH3wWvx" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="6YcNwH3wXJH" role="1pMfVU">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YcNwH3wmYr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3wYTE" role="jymVt" />
    <node concept="3clFb_" id="6YcNwH3wmYu" role="jymVt">
      <property role="TrG5h" value="getDataConnections" />
      <node concept="3Tm1VV" id="6YcNwH3wmYv" role="1B3o_S" />
      <node concept="2AHcQZ" id="6YcNwH3wmYx" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6YcNwH3wmYy" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6YcNwH3wmYz" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
        </node>
      </node>
      <node concept="3clFbS" id="6YcNwH3wmY$" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3wB9_" role="3cqZAp">
          <node concept="2ShNRf" id="6YcNwH3wB9v" role="3clFbG">
            <node concept="1pGfFk" id="6YcNwH3wBuk" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3wBVp" role="37wK5m">
                <node concept="37vLTw" id="6YcNwH3wBCQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="6YcNwH3wCBR" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3wDKo" role="37wK5m">
                <ref role="3VsUkX" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
              <node concept="37vLTw" id="6YcNwH3wEFr" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="6YcNwH3wFx_" role="1pMfVU">
                <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YcNwH3wmY_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3wRUj" role="jymVt" />
    <node concept="3clFb_" id="6YcNwH3wmYC" role="jymVt">
      <property role="TrG5h" value="getEventConnections" />
      <node concept="3Tm1VV" id="6YcNwH3wmYD" role="1B3o_S" />
      <node concept="2AHcQZ" id="6YcNwH3wmYF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6YcNwH3wmYG" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6YcNwH3wmYH" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
        </node>
      </node>
      <node concept="3clFbS" id="6YcNwH3wmYI" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3wG7r" role="3cqZAp">
          <node concept="2ShNRf" id="6YcNwH3wG7t" role="3clFbG">
            <node concept="1pGfFk" id="6YcNwH3wG7u" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3wG7v" role="37wK5m">
                <node concept="37vLTw" id="6YcNwH3wG7w" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="6YcNwH3wGZ9" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3wG7y" role="37wK5m">
                <ref role="3VsUkX" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
              <node concept="37vLTw" id="6YcNwH3wG7z" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="6YcNwH3wG7$" role="1pMfVU">
                <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YcNwH3wmYJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3wNdK" role="jymVt" />
    <node concept="3clFb_" id="6YcNwH3wmYM" role="jymVt">
      <property role="TrG5h" value="getAdapterConnections" />
      <node concept="3Tm1VV" id="6YcNwH3wmYN" role="1B3o_S" />
      <node concept="2AHcQZ" id="6YcNwH3wmYP" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6YcNwH3wmYQ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6YcNwH3wmYR" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
        </node>
      </node>
      <node concept="3clFbS" id="6YcNwH3wmYS" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3wHnx" role="3cqZAp">
          <node concept="2ShNRf" id="6YcNwH3wHny" role="3clFbG">
            <node concept="1pGfFk" id="6YcNwH3wHnz" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3wHn$" role="37wK5m">
                <node concept="37vLTw" id="6YcNwH3wHn_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="6YcNwH3wIaP" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3wHnB" role="37wK5m">
                <ref role="3VsUkX" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
              <node concept="37vLTw" id="6YcNwH3wHnC" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="6YcNwH3wHnD" role="1pMfVU">
                <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YcNwH3wmYT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3wIoL" role="jymVt" />
    <node concept="3clFb_" id="6YcNwH3wmYW" role="jymVt">
      <property role="TrG5h" value="getPrototype" />
      <node concept="3Tm1VV" id="6YcNwH3wmYX" role="1B3o_S" />
      <node concept="2AHcQZ" id="6YcNwH3wmYZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6YcNwH3wmZ0" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="6YcNwH3wmZ1" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3x3Ch" role="3cqZAp">
          <node concept="2YIFZM" id="6YcNwH3x43e" role="3clFbG">
            <ref role="37wK5l" to="g27j:~FBNetwork.extractNetwork(org.fbme.lib.iec61499.declarations.Declaration)" resolve="extractNetwork" />
            <ref role="1Pybhc" to="g27j:~FBNetwork" resolve="FBNetwork" />
            <node concept="2OqwBi" id="6YcNwH3x4$z" role="37wK5m">
              <node concept="37vLTw" id="6YcNwH3x4um" role="2Oq$k0">
                <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
              </node>
              <node concept="liA8E" id="6YcNwH3x53w" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="2OqwBi" id="6YcNwH3x5i$" role="37wK5m">
                  <node concept="37vLTw" id="6YcNwH3x59v" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
                  </node>
                  <node concept="2qgKlT" id="6YcNwH3x5Vk" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:2lwHqHk$skt" resolve="networkPrototype" />
                  </node>
                </node>
                <node concept="3VsKOn" id="6YcNwH3x6wZ" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YcNwH3wmZ2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3x6Lp" role="jymVt" />
    <node concept="3clFb_" id="6YcNwH3wmZ5" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="6YcNwH3wmZ7" role="1B3o_S" />
      <node concept="3uibUv" id="6YcNwH3wmZ8" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="6YcNwH3wmZ9" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3xbED" role="3cqZAp">
          <node concept="37vLTw" id="6YcNwH3xbEA" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YcNwH3wmZa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3wiOP" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQANAk" role="jymVt">
      <property role="TrG5h" value="getComponents" />
      <node concept="3Tm1VV" id="1R4IoyQCluY" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQANAm" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQANAn" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FBNetworkComponent" resolve="FBNetworkComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQANAo" role="3clF47">
        <node concept="3cpWs8" id="6YcNwH3xirE" role="3cqZAp">
          <node concept="3cpWsn" id="6YcNwH3xirF" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="6YcNwH3xi8g" role="1tU5fm">
              <node concept="3uibUv" id="6YcNwH3xi8j" role="_ZDj9">
                <ref role="3uigEE" to="g27j:~FBNetworkComponent" resolve="FBNetworkComponent" />
              </node>
            </node>
            <node concept="2ShNRf" id="6YcNwH3xirG" role="33vP2m">
              <node concept="Tc6Ow" id="6YcNwH3xirH" role="2ShVmc">
                <node concept="3uibUv" id="6YcNwH3xirI" role="HW$YZ">
                  <ref role="3uigEE" to="g27j:~FBNetworkComponent" resolve="FBNetworkComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3xjX_" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3xkRO" role="3clFbG">
            <node concept="37vLTw" id="6YcNwH3xjXz" role="2Oq$k0">
              <ref role="3cqZAo" node="6YcNwH3xirF" resolve="res" />
            </node>
            <node concept="X8dFx" id="6YcNwH3xlLk" role="2OqNvi">
              <node concept="1rXfSq" id="6YcNwH3xgw2" role="25WWJ7">
                <ref role="37wK5l" node="6YcNwH3wmYk" resolve="getFunctionBlocks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3vaU$" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3vaU_" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaUA" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3vaUB" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="3Tsc0h" id="6YcNwH3vaUC" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
              </node>
            </node>
            <node concept="2es0OD" id="6YcNwH3vaUD" role="2OqNvi">
              <node concept="1bVj0M" id="6YcNwH3vaUE" role="23t8la">
                <node concept="3clFbS" id="6YcNwH3vaUF" role="1bW5cS">
                  <node concept="3clFbF" id="6YcNwH3vaUQ" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3vaUR" role="3clFbG">
                      <node concept="2OqwBi" id="6YcNwH3vaUS" role="2Oq$k0">
                        <node concept="37vLTw" id="6YcNwH3vaUT" role="2Oq$k0">
                          <ref role="3cqZAo" node="6YcNwH3vaVh" resolve="fb" />
                        </node>
                        <node concept="3Tsc0h" id="6YcNwH3vaUU" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                        </node>
                      </node>
                      <node concept="2es0OD" id="6YcNwH3vaUV" role="2OqNvi">
                        <node concept="1bVj0M" id="6YcNwH3vaUW" role="23t8la">
                          <node concept="3clFbS" id="6YcNwH3vaUX" role="1bW5cS">
                            <node concept="3clFbF" id="6YcNwH3xnuP" role="3cqZAp">
                              <node concept="2OqwBi" id="6YcNwH3xnX0" role="3clFbG">
                                <node concept="37vLTw" id="6YcNwH3xnKf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6YcNwH3xirF" resolve="res" />
                                </node>
                                <node concept="TSZUe" id="6YcNwH3xouY" role="2OqNvi">
                                  <node concept="2YIFZM" id="6YcNwH3vaV3" role="25WWJ7">
                                    <ref role="1Pybhc" node="2syzu7qTf1n" resolve="InlineValueByNode" />
                                    <ref role="37wK5l" node="5HzRr7EL$Ty" resolve="createForParameter" />
                                    <node concept="37vLTw" id="6YcNwH3vaV4" role="37wK5m">
                                      <ref role="3cqZAo" node="6YcNwH3vaVf" resolve="it" />
                                    </node>
                                    <node concept="Xjq3P" id="6YcNwH3vaV5" role="37wK5m" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6YcNwH3vaVf" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6YcNwH3vaVg" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6YcNwH3vaVh" role="1bW2Oz">
                  <property role="TrG5h" value="fb" />
                  <node concept="2jxLKc" id="6YcNwH3vaVi" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3vaVj" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3vaVk" role="3clFbG">
            <node concept="2es0OD" id="6YcNwH3vaVl" role="2OqNvi">
              <node concept="1bVj0M" id="6YcNwH3vaVm" role="23t8la">
                <node concept="3clFbS" id="6YcNwH3vaVn" role="1bW5cS">
                  <node concept="3clFbF" id="6YcNwH3vaVo" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3xpzJ" role="3clFbG">
                      <node concept="37vLTw" id="6YcNwH3xpoh" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YcNwH3xirF" resolve="res" />
                      </node>
                      <node concept="TSZUe" id="6YcNwH3xpY4" role="2OqNvi">
                        <node concept="2OqwBi" id="6YcNwH3vaVt" role="25WWJ7">
                          <node concept="37vLTw" id="6YcNwH3vaVu" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
                          </node>
                          <node concept="liA8E" id="6YcNwH3vaVv" role="2OqNvi">
                            <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                            <node concept="37vLTw" id="6YcNwH3vaVw" role="37wK5m">
                              <ref role="3cqZAo" node="6YcNwH3vaVy" resolve="it" />
                            </node>
                            <node concept="3VsKOn" id="6YcNwH3vaVx" role="37wK5m">
                              <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6YcNwH3vaVy" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6YcNwH3vaVz" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6YcNwH3vaV$" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3vaV_" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="2qgKlT" id="6YcNwH3vaVA" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRVNr" resolve="contextComponents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YcNwH3vaVB" role="3cqZAp" />
        <node concept="3clFbF" id="6YcNwH3vaVC" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3vaVD" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaVE" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3vaVF" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="2qgKlT" id="6YcNwH3vaVG" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRZ6V" resolve="contextDataSources" />
              </node>
            </node>
            <node concept="2es0OD" id="6YcNwH3vaVH" role="2OqNvi">
              <node concept="1bVj0M" id="6YcNwH3vaVI" role="23t8la">
                <node concept="3clFbS" id="6YcNwH3vaVJ" role="1bW5cS">
                  <node concept="3clFbF" id="6YcNwH3vaVK" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3xqT1" role="3clFbG">
                      <node concept="37vLTw" id="6YcNwH3xqHz" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YcNwH3xirF" resolve="res" />
                      </node>
                      <node concept="TSZUe" id="6YcNwH3xrni" role="2OqNvi">
                        <node concept="2ShNRf" id="6YcNwH3vaVP" role="25WWJ7">
                          <node concept="1pGfFk" id="6YcNwH3vaVQ" role="2ShVmc">
                            <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                            <node concept="37vLTw" id="6YcNwH3vaVR" role="37wK5m">
                              <ref role="3cqZAo" node="6YcNwH3vaVT" resolve="it" />
                            </node>
                            <node concept="Xjq3P" id="6YcNwH3vaVS" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6YcNwH3vaVT" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6YcNwH3vaVU" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3vaVV" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3vaVW" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaVX" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3vaVY" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="2qgKlT" id="6YcNwH3vaVZ" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRX1R" resolve="contextDataDestinations" />
              </node>
            </node>
            <node concept="2es0OD" id="6YcNwH3vaW0" role="2OqNvi">
              <node concept="1bVj0M" id="6YcNwH3vaW1" role="23t8la">
                <node concept="3clFbS" id="6YcNwH3vaW2" role="1bW5cS">
                  <node concept="3clFbF" id="6YcNwH3vaW3" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3xr_i" role="3clFbG">
                      <node concept="37vLTw" id="6YcNwH3xr_j" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YcNwH3xirF" resolve="res" />
                      </node>
                      <node concept="TSZUe" id="6YcNwH3xr_k" role="2OqNvi">
                        <node concept="2ShNRf" id="6YcNwH3xr_l" role="25WWJ7">
                          <node concept="1pGfFk" id="6YcNwH3xr_m" role="2ShVmc">
                            <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                            <node concept="37vLTw" id="6YcNwH3xr_n" role="37wK5m">
                              <ref role="3cqZAo" node="6YcNwH3vaWc" resolve="it" />
                            </node>
                            <node concept="Xjq3P" id="6YcNwH3xr_o" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6YcNwH3vaWc" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6YcNwH3vaWd" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3vaWe" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3vaWf" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaWg" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3vaWh" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="2qgKlT" id="6YcNwH3vaWi" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRZ9n" resolve="contextEventSources" />
              </node>
            </node>
            <node concept="2es0OD" id="6YcNwH3vaWj" role="2OqNvi">
              <node concept="1bVj0M" id="6YcNwH3vaWk" role="23t8la">
                <node concept="3clFbS" id="6YcNwH3vaWl" role="1bW5cS">
                  <node concept="3clFbF" id="6YcNwH3vaWm" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3xrOP" role="3clFbG">
                      <node concept="37vLTw" id="6YcNwH3xrOQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YcNwH3xirF" resolve="res" />
                      </node>
                      <node concept="TSZUe" id="6YcNwH3xrOR" role="2OqNvi">
                        <node concept="2ShNRf" id="6YcNwH3xrOS" role="25WWJ7">
                          <node concept="1pGfFk" id="6YcNwH3xrOT" role="2ShVmc">
                            <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                            <node concept="37vLTw" id="6YcNwH3xrOU" role="37wK5m">
                              <ref role="3cqZAo" node="6YcNwH3vaWv" resolve="it" />
                            </node>
                            <node concept="Xjq3P" id="6YcNwH3xrOV" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6YcNwH3vaWv" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6YcNwH3vaWw" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3vaWx" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3vaWy" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaWz" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3vaW$" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="2qgKlT" id="6YcNwH3vaW_" role="2OqNvi">
                <ref role="37wK5l" to="t4dg:2lwHqHjRZn8" resolve="contextEventDestinations" />
              </node>
            </node>
            <node concept="2es0OD" id="6YcNwH3vaWA" role="2OqNvi">
              <node concept="1bVj0M" id="6YcNwH3vaWB" role="23t8la">
                <node concept="3clFbS" id="6YcNwH3vaWC" role="1bW5cS">
                  <node concept="3clFbF" id="6YcNwH3vaWD" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3xs3r" role="3clFbG">
                      <node concept="37vLTw" id="6YcNwH3xs3s" role="2Oq$k0">
                        <ref role="3cqZAo" node="6YcNwH3xirF" resolve="res" />
                      </node>
                      <node concept="TSZUe" id="6YcNwH3xs3t" role="2OqNvi">
                        <node concept="2ShNRf" id="6YcNwH3xs3u" role="25WWJ7">
                          <node concept="1pGfFk" id="6YcNwH3xs3v" role="2ShVmc">
                            <ref role="37wK5l" node="6tmlia_XSZI" resolve="InterfaceEndpointByNode" />
                            <node concept="37vLTw" id="6YcNwH3xs3w" role="37wK5m">
                              <ref role="3cqZAo" node="6YcNwH3vaWM" resolve="it" />
                            </node>
                            <node concept="Xjq3P" id="6YcNwH3xs3x" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6YcNwH3vaWM" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6YcNwH3vaWN" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YcNwH3x_rt" role="3cqZAp" />
        <node concept="3cpWs8" id="6YcNwH3xR3F" role="3cqZAp">
          <node concept="3cpWsn" id="6YcNwH3xR3G" role="3cpWs9">
            <property role="TrG5h" value="prototype" />
            <node concept="3uibUv" id="6YcNwH3xP_D" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="1rXfSq" id="6YcNwH3xR3H" role="33vP2m">
              <ref role="37wK5l" node="6YcNwH3wmYW" resolve="getPrototype" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6YcNwH3xM1Z" role="3cqZAp">
          <node concept="3clFbS" id="6YcNwH3xM21" role="3clFbx">
            <node concept="3clFbF" id="6YcNwH3y6GL" role="3cqZAp">
              <node concept="2OqwBi" id="6YcNwH3y7E0" role="3clFbG">
                <node concept="37vLTw" id="6YcNwH3y6GJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YcNwH3xirF" resolve="res" />
                </node>
                <node concept="X8dFx" id="6YcNwH3y8l9" role="2OqNvi">
                  <node concept="2OqwBi" id="6YcNwH3y8Fc" role="25WWJ7">
                    <node concept="37vLTw" id="6YcNwH3y8xl" role="2Oq$k0">
                      <ref role="3cqZAo" node="6YcNwH3xR3G" resolve="prototype" />
                    </node>
                    <node concept="liA8E" id="6YcNwH3y8PZ" role="2OqNvi">
                      <ref role="37wK5l" to="g27j:~FBNetwork.getComponents()" resolve="getComponents" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6YcNwH3y5Kr" role="3clFbw">
            <node concept="10Nm6u" id="6YcNwH3y6Fp" role="3uHU7w" />
            <node concept="37vLTw" id="6YcNwH3y4IF" role="3uHU7B">
              <ref role="3cqZAo" node="6YcNwH3xR3G" resolve="prototype" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YcNwH3xum5" role="3cqZAp" />
        <node concept="3cpWs6" id="6YcNwH3xw6X" role="3cqZAp">
          <node concept="37vLTw" id="6YcNwH3xx42" role="3cqZAk">
            <ref role="3cqZAo" node="6YcNwH3xirF" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQANCL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQANCM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQANDH" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQANDI" role="jymVt">
      <property role="TrG5h" value="getConnections" />
      <node concept="3Tm1VV" id="1R4IoyQCwcP" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQANDK" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQANDL" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQANDM" role="3clF47">
        <node concept="3cpWs8" id="PZB1W7hD8B" role="3cqZAp">
          <node concept="3cpWsn" id="PZB1W7hD8C" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="3VhUp_YUAM4" role="1tU5fm">
              <node concept="3uibUv" id="3VhUp_YUAM6" role="_ZDj9">
                <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
            </node>
            <node concept="2ShNRf" id="PZB1W7hD8D" role="33vP2m">
              <node concept="Tc6Ow" id="3VhUp_YU_gk" role="2ShVmc">
                <node concept="3uibUv" id="3VhUp_YU_gm" role="HW$YZ">
                  <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YcNwH3yf3$" role="3cqZAp" />
        <node concept="3clFbF" id="1XSQy8A25N_" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQANDZ" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyQANE0" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3uosz" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="3Tsc0h" id="1R4IoyQANE2" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
              </node>
            </node>
            <node concept="2es0OD" id="1XSQy8A51iR" role="2OqNvi">
              <node concept="1bVj0M" id="1XSQy8A51iT" role="23t8la">
                <node concept="3clFbS" id="1XSQy8A51iU" role="1bW5cS">
                  <node concept="3clFbF" id="1XSQy8A51iV" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3yh91" role="3clFbG">
                      <node concept="37vLTw" id="6YcNwH3ygs4" role="2Oq$k0">
                        <ref role="3cqZAo" node="PZB1W7hD8C" resolve="res" />
                      </node>
                      <node concept="TSZUe" id="6YcNwH3yhQG" role="2OqNvi">
                        <node concept="2OqwBi" id="6YcNwH3uq_A" role="25WWJ7">
                          <node concept="37vLTw" id="6YcNwH3uqcG" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
                          </node>
                          <node concept="liA8E" id="6YcNwH3ur0l" role="2OqNvi">
                            <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                            <node concept="37vLTw" id="6YcNwH3ur9h" role="37wK5m">
                              <ref role="3cqZAo" node="1XSQy8A51j5" resolve="it" />
                            </node>
                            <node concept="3VsKOn" id="6YcNwH3urBJ" role="37wK5m">
                              <ref role="3VsUkX" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1XSQy8A51j5" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1XSQy8A51j6" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XSQy8A29lR" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQANEg" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyQANEh" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3uoNG" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="3Tsc0h" id="1R4IoyQANEj" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
              </node>
            </node>
            <node concept="2es0OD" id="1XSQy8A53cb" role="2OqNvi">
              <node concept="1bVj0M" id="1XSQy8A53cd" role="23t8la">
                <node concept="3clFbS" id="1XSQy8A53ce" role="1bW5cS">
                  <node concept="3clFbF" id="1XSQy8A53cf" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3yipW" role="3clFbG">
                      <node concept="37vLTw" id="6YcNwH3yipX" role="2Oq$k0">
                        <ref role="3cqZAo" node="PZB1W7hD8C" resolve="res" />
                      </node>
                      <node concept="TSZUe" id="6YcNwH3yipY" role="2OqNvi">
                        <node concept="2OqwBi" id="6YcNwH3yipZ" role="25WWJ7">
                          <node concept="37vLTw" id="6YcNwH3yiq0" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
                          </node>
                          <node concept="liA8E" id="6YcNwH3yiq1" role="2OqNvi">
                            <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                            <node concept="37vLTw" id="6YcNwH3yiq2" role="37wK5m">
                              <ref role="3cqZAo" node="1XSQy8A53cp" resolve="it" />
                            </node>
                            <node concept="3VsKOn" id="6YcNwH3yiq3" role="37wK5m">
                              <ref role="3VsUkX" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1XSQy8A53cp" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1XSQy8A53cq" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XSQy8A2dVG" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQANEx" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyQANEy" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3upas" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="3Tsc0h" id="1R4IoyQANE$" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
              </node>
            </node>
            <node concept="2es0OD" id="1XSQy8A551F" role="2OqNvi">
              <node concept="1bVj0M" id="1XSQy8A551H" role="23t8la">
                <node concept="3clFbS" id="1XSQy8A551I" role="1bW5cS">
                  <node concept="3clFbF" id="1XSQy8A551J" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3yiV4" role="3clFbG">
                      <node concept="37vLTw" id="6YcNwH3yiV5" role="2Oq$k0">
                        <ref role="3cqZAo" node="PZB1W7hD8C" resolve="res" />
                      </node>
                      <node concept="TSZUe" id="6YcNwH3yiV6" role="2OqNvi">
                        <node concept="2OqwBi" id="6YcNwH3yiV7" role="25WWJ7">
                          <node concept="37vLTw" id="6YcNwH3yiV8" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R0_JUQXkK4" resolve="myRepository" />
                          </node>
                          <node concept="liA8E" id="6YcNwH3yiV9" role="2OqNvi">
                            <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                            <node concept="37vLTw" id="6YcNwH3yiVa" role="37wK5m">
                              <ref role="3cqZAo" node="1XSQy8A551T" resolve="it" />
                            </node>
                            <node concept="3VsKOn" id="6YcNwH3yiVb" role="37wK5m">
                              <ref role="3VsUkX" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1XSQy8A551T" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1XSQy8A551U" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3yn5L" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3yrhv" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3ynFS" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3yn5J" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="3Tsc0h" id="6YcNwH3yoSe" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
              </node>
            </node>
            <node concept="2es0OD" id="6YcNwH3yuvJ" role="2OqNvi">
              <node concept="1bVj0M" id="6YcNwH3yuvL" role="23t8la">
                <node concept="3clFbS" id="6YcNwH3yuvM" role="1bW5cS">
                  <node concept="3clFbF" id="6YcNwH3yuEQ" role="3cqZAp">
                    <node concept="2OqwBi" id="6YcNwH3yw_z" role="3clFbG">
                      <node concept="2OqwBi" id="6YcNwH3yuR8" role="2Oq$k0">
                        <node concept="37vLTw" id="6YcNwH3yuEP" role="2Oq$k0">
                          <ref role="3cqZAo" node="6YcNwH3yuvN" resolve="fb" />
                        </node>
                        <node concept="3Tsc0h" id="6YcNwH3yv9H" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                        </node>
                      </node>
                      <node concept="2es0OD" id="6YcNwH3yyhd" role="2OqNvi">
                        <node concept="1bVj0M" id="6YcNwH3yyhf" role="23t8la">
                          <node concept="3clFbS" id="6YcNwH3yyhg" role="1bW5cS">
                            <node concept="3clFbF" id="6YcNwH3yBoa" role="3cqZAp">
                              <node concept="2ShNRf" id="6YcNwH3yBoc" role="3clFbG">
                                <node concept="1pGfFk" id="6YcNwH3yBod" role="2ShVmc">
                                  <ref role="37wK5l" node="PZB1W7gNfH" resolve="FBNetworkConnectionByFBParameterNode" />
                                  <node concept="2YIFZM" id="31DWWgFdUnZ" role="37wK5m">
                                    <ref role="1Pybhc" node="2syzu7qTf1n" resolve="InlineValueByNode" />
                                    <ref role="37wK5l" node="5HzRr7EL$Ty" resolve="createForParameter" />
                                    <node concept="37vLTw" id="31DWWgFdUo0" role="37wK5m">
                                      <ref role="3cqZAo" node="6YcNwH3yyhh" resolve="it" />
                                    </node>
                                    <node concept="Xjq3P" id="31DWWgFdUo1" role="37wK5m" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6YcNwH3yyhh" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6YcNwH3yyhi" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6YcNwH3yuvN" role="1bW2Oz">
                  <property role="TrG5h" value="fb" />
                  <node concept="2jxLKc" id="6YcNwH3yuvO" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YcNwH3yf3M" role="3cqZAp" />
        <node concept="3cpWs8" id="6YcNwH3yjNz" role="3cqZAp">
          <node concept="3cpWsn" id="6YcNwH3yjN$" role="3cpWs9">
            <property role="TrG5h" value="prototype" />
            <node concept="3uibUv" id="6YcNwH3yjN_" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="1rXfSq" id="6YcNwH3yjNA" role="33vP2m">
              <ref role="37wK5l" node="6YcNwH3wmYW" resolve="getPrototype" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6YcNwH3yjNB" role="3cqZAp">
          <node concept="3clFbS" id="6YcNwH3yjNC" role="3clFbx">
            <node concept="3clFbF" id="6YcNwH3yjND" role="3cqZAp">
              <node concept="2OqwBi" id="6YcNwH3yjNE" role="3clFbG">
                <node concept="37vLTw" id="6YcNwH3yjNF" role="2Oq$k0">
                  <ref role="3cqZAo" node="PZB1W7hD8C" resolve="res" />
                </node>
                <node concept="X8dFx" id="6YcNwH3yjNG" role="2OqNvi">
                  <node concept="2OqwBi" id="6YcNwH3yjNH" role="25WWJ7">
                    <node concept="37vLTw" id="6YcNwH3yjNI" role="2Oq$k0">
                      <ref role="3cqZAo" node="6YcNwH3yjN$" resolve="prototype" />
                    </node>
                    <node concept="liA8E" id="6YcNwH3yloh" role="2OqNvi">
                      <ref role="37wK5l" to="g27j:~FBNetwork.getConnections()" resolve="getConnections" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6YcNwH3yjNK" role="3clFbw">
            <node concept="10Nm6u" id="6YcNwH3yjNL" role="3uHU7w" />
            <node concept="37vLTw" id="6YcNwH3yjNM" role="3uHU7B">
              <ref role="3cqZAo" node="6YcNwH3yjN$" resolve="prototype" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YcNwH3yjsg" role="3cqZAp" />
        <node concept="3clFbF" id="PZB1W7hIT9" role="3cqZAp">
          <node concept="37vLTw" id="PZB1W7hIT7" role="3clFbG">
            <ref role="3cqZAo" node="PZB1W7hD8C" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQANFE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQANFF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQANIa" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQANIb" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="3Tm1VV" id="1R4IoyQANIc" role="1B3o_S" />
      <node concept="10Oyi0" id="1R4IoyQANId" role="3clF45" />
      <node concept="3clFbS" id="1R4IoyQANIe" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQANIf" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQANIg" role="3clFbG">
            <node concept="2JrnkZ" id="1R4IoyQANIh" role="2Oq$k0">
              <node concept="37vLTw" id="1R4IoyQANIi" role="2JrQYb">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
            </node>
            <node concept="liA8E" id="1R4IoyQANIj" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQANIk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQANIl" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQANIm" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="3Tm1VV" id="1R4IoyQANIn" role="1B3o_S" />
      <node concept="10P_77" id="1R4IoyQANIo" role="3clF45" />
      <node concept="37vLTG" id="1R4IoyQANIp" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1R4IoyQANIq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQANIr" role="3clF47">
        <node concept="3cpWs6" id="1R4IoyQANIs" role="3cqZAp">
          <node concept="1Wc70l" id="1R4IoyQANIt" role="3cqZAk">
            <node concept="3clFbC" id="1R4IoyQANIu" role="3uHU7w">
              <node concept="37vLTw" id="1R4IoyQANIv" role="3uHU7B">
                <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
              </node>
              <node concept="2OqwBi" id="1R4IoyQANIw" role="3uHU7w">
                <node concept="1eOMI4" id="1R4IoyQANIx" role="2Oq$k0">
                  <node concept="10QFUN" id="1R4IoyQANIy" role="1eOMHV">
                    <node concept="3uibUv" id="1R4IoyQG6B2" role="10QFUM">
                      <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQANI$" role="10QFUP">
                      <ref role="3cqZAo" node="1R4IoyQANIp" resolve="o" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="1R4IoyQGgn6" role="2OqNvi">
                  <ref role="2Oxat5" node="1R4IoyQANA3" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="1R4IoyQANIA" role="3uHU7B">
              <node concept="3uibUv" id="1R4IoyQFYJy" role="2ZW6by">
                <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
              </node>
              <node concept="37vLTw" id="1R4IoyQANIC" role="2ZW6bz">
                <ref role="3cqZAo" node="1R4IoyQANIp" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQANID" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQANIE" role="jymVt" />
    <node concept="2YIFZL" id="1R4IoyQANIF" role="jymVt">
      <property role="TrG5h" value="serializeSourcePort" />
      <node concept="3clFbS" id="1R4IoyQANIG" role="3clF47">
        <node concept="3clFbJ" id="1R4IoyQANIH" role="3cqZAp">
          <node concept="3fqX7Q" id="1R4IoyQANII" role="3clFbw">
            <node concept="2OqwBi" id="1R4IoyQANIJ" role="3fr31v">
              <node concept="37vLTw" id="1R4IoyQANIK" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANLO" resolve="port" />
              </node>
              <node concept="liA8E" id="1R4IoyQANIL" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBPortIdentity.isSource()" resolve="isSource" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyQANIM" role="3clFbx">
            <node concept="3cpWs6" id="1R4IoyQANIN" role="3cqZAp">
              <node concept="10Nm6u" id="1R4IoyQANIO" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyQANIP" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyQANIQ" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="1R4IoyQANIR" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
            </node>
            <node concept="2OqwBi" id="1R4IoyQANIS" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyQANIT" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANLO" resolve="port" />
              </node>
              <node concept="liA8E" id="1R4IoyQANIU" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBPortIdentity.getKind()" resolve="getKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyQANIV" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyQANIW" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="1R4IoyQANIX" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetworkComponent" resolve="FBNetworkComponent" />
            </node>
            <node concept="2OqwBi" id="1R4IoyQANIY" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyQANIZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANLO" resolve="port" />
              </node>
              <node concept="liA8E" id="1R4IoyQANJ0" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBPortIdentity.getComponent()" resolve="getComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1R4IoyQANJ1" role="3cqZAp">
          <node concept="3clFbS" id="1R4IoyQANJ2" role="3clFbx">
            <node concept="3cpWs8" id="1R4IoyQANJ3" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQANJ4" role="3cpWs9">
                <property role="TrG5h" value="fbInstPort" />
                <node concept="3uibUv" id="1R4IoyQANJ5" role="1tU5fm">
                  <ref role="3uigEE" to="g27j:~FunctionBlockPortIdentity" resolve="FunctionBlockPortIdentity" />
                </node>
                <node concept="10QFUN" id="1R4IoyQANJ6" role="33vP2m">
                  <node concept="3uibUv" id="1R4IoyQANJ7" role="10QFUM">
                    <ref role="3uigEE" to="g27j:~FunctionBlockPortIdentity" resolve="FunctionBlockPortIdentity" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQANJ8" role="10QFUP">
                    <ref role="3cqZAo" node="1R4IoyQANLO" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQANJ9" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQANJa" role="3cpWs9">
                <property role="TrG5h" value="position" />
                <node concept="10Oyi0" id="1R4IoyQANJb" role="1tU5fm" />
                <node concept="2OqwBi" id="1R4IoyQANJc" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQANJd" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQANJ4" resolve="fbInstPort" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQANJe" role="2OqNvi">
                    <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.getPosition()" resolve="getPosition" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQANJf" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQANJg" role="3cpWs9">
                <property role="TrG5h" value="componentNode" />
                <node concept="3Tqbb2" id="1R4IoyQANJh" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
                <node concept="1PxgMI" id="1R4IoyQANJi" role="33vP2m">
                  <node concept="chp4Y" id="1R4IoyQANJj" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                  </node>
                  <node concept="2OqwBi" id="1R4IoyQANJk" role="1m5AlR">
                    <node concept="1eOMI4" id="1R4IoyQANJl" role="2Oq$k0">
                      <node concept="10QFUN" id="1R4IoyQANJm" role="1eOMHV">
                        <node concept="3uibUv" id="1R4IoyQANJn" role="10QFUM">
                          <ref role="3uigEE" node="6LU90BOirFi" resolve="FunctionBlockDeclarationByNode" />
                        </node>
                        <node concept="37vLTw" id="1R4IoyQANJo" role="10QFUP">
                          <ref role="3cqZAo" node="1R4IoyQANIW" resolve="component" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1R4IoyQANJp" role="2OqNvi">
                      <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1R4IoyQANJq" role="3cqZAp">
              <node concept="3clFbS" id="1R4IoyQANJr" role="3clFbx">
                <node concept="3cpWs8" id="1R4IoyQANJs" role="3cqZAp">
                  <node concept="3cpWsn" id="1R4IoyQANJt" role="3cpWs9">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="1R4IoyQANJu" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                    </node>
                    <node concept="2ShNRf" id="1R4IoyQANJv" role="33vP2m">
                      <node concept="3zrR0B" id="1R4IoyQANJw" role="2ShVmc">
                        <node concept="3Tqbb2" id="1R4IoyQANJx" role="3zrR0E">
                          <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1R4IoyQANJy" role="3cqZAp">
                  <node concept="37vLTI" id="1R4IoyQANJz" role="3clFbG">
                    <node concept="37vLTw" id="1R4IoyQANJ$" role="37vLTx">
                      <ref role="3cqZAo" node="1R4IoyQANJg" resolve="componentNode" />
                    </node>
                    <node concept="2OqwBi" id="1R4IoyQANJ_" role="37vLTJ">
                      <node concept="37vLTw" id="1R4IoyQANJA" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANJt" resolve="node" />
                      </node>
                      <node concept="3TrEf2" id="6z_cCa7WP4$" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1R4IoyQANJC" role="3cqZAp">
                  <node concept="37vLTI" id="1R4IoyQANJD" role="3clFbG">
                    <node concept="1y4W85" id="1R4IoyQANJE" role="37vLTx">
                      <node concept="37vLTw" id="1R4IoyQANJF" role="1y58nS">
                        <ref role="3cqZAo" node="1R4IoyQANJa" resolve="position" />
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANJG" role="1y566C">
                        <node concept="37vLTw" id="1R4IoyQANJH" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANJg" resolve="componentNode" />
                        </node>
                        <node concept="2qgKlT" id="1R4IoyQANJI" role="2OqNvi">
                          <ref role="37wK5l" to="t4dg:5L1OxDukYe7" resolve="dataSources" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1R4IoyQANJJ" role="37vLTJ">
                      <node concept="37vLTw" id="1R4IoyQANJK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANJt" resolve="node" />
                      </node>
                      <node concept="3TrEf2" id="1R4IoyQANJL" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1R4IoyQANJM" role="3cqZAp">
                  <node concept="37vLTw" id="1R4IoyQANJN" role="3cqZAk">
                    <ref role="3cqZAo" node="1R4IoyQANJt" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="1R4IoyQANJO" role="3clFbw">
                <node concept="Rm8GO" id="1R4IoyQANJP" role="3uHU7w">
                  <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                  <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                </node>
                <node concept="37vLTw" id="1R4IoyQANJQ" role="3uHU7B">
                  <ref role="3cqZAo" node="1R4IoyQANIQ" resolve="kind" />
                </node>
              </node>
              <node concept="3eNFk2" id="1R4IoyQANJR" role="3eNLev">
                <node concept="3clFbS" id="1R4IoyQANJS" role="3eOfB_">
                  <node concept="3cpWs8" id="1R4IoyQANJT" role="3cqZAp">
                    <node concept="3cpWsn" id="1R4IoyQANJU" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="1R4IoyQANJV" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                      </node>
                      <node concept="2ShNRf" id="1R4IoyQANJW" role="33vP2m">
                        <node concept="3zrR0B" id="1R4IoyQANJX" role="2ShVmc">
                          <node concept="3Tqbb2" id="1R4IoyQANJY" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANJZ" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANK0" role="3clFbG">
                      <node concept="37vLTw" id="1R4IoyQANK1" role="37vLTx">
                        <ref role="3cqZAo" node="1R4IoyQANJg" resolve="componentNode" />
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANK2" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANK3" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANJU" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANK4" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANK5" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANK6" role="3clFbG">
                      <node concept="1y4W85" id="1R4IoyQANK7" role="37vLTx">
                        <node concept="37vLTw" id="1R4IoyQANK8" role="1y58nS">
                          <ref role="3cqZAo" node="1R4IoyQANJa" resolve="position" />
                        </node>
                        <node concept="2OqwBi" id="1R4IoyQANK9" role="1y566C">
                          <node concept="37vLTw" id="1R4IoyQANKa" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R4IoyQANJg" resolve="componentNode" />
                          </node>
                          <node concept="2qgKlT" id="1R4IoyQANKb" role="2OqNvi">
                            <ref role="37wK5l" to="t4dg:5L1OxDukYcu" resolve="eventSources" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANKc" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANKd" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANJU" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANKe" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1R4IoyQANKf" role="3cqZAp">
                    <node concept="37vLTw" id="1R4IoyQANKg" role="3cqZAk">
                      <ref role="3cqZAo" node="1R4IoyQANJU" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1R4IoyQANKh" role="3eO9$A">
                  <node concept="Rm8GO" id="1R4IoyQANKi" role="3uHU7w">
                    <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQANKj" role="3uHU7B">
                    <ref role="3cqZAo" node="1R4IoyQANIQ" resolve="kind" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="1R4IoyQANKk" role="3eNLev">
                <node concept="3clFbS" id="1R4IoyQANKl" role="3eOfB_">
                  <node concept="3cpWs8" id="1R4IoyQANKm" role="3cqZAp">
                    <node concept="3cpWsn" id="1R4IoyQANKn" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="1R4IoyQANKo" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                      </node>
                      <node concept="2ShNRf" id="1R4IoyQANKp" role="33vP2m">
                        <node concept="3zrR0B" id="1R4IoyQANKq" role="2ShVmc">
                          <node concept="3Tqbb2" id="1R4IoyQANKr" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANKs" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANKt" role="3clFbG">
                      <node concept="1PxgMI" id="1R4IoyQANKu" role="37vLTx">
                        <node concept="chp4Y" id="1R4IoyQANKv" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                        </node>
                        <node concept="37vLTw" id="1R4IoyQANKw" role="1m5AlR">
                          <ref role="3cqZAo" node="1R4IoyQANJg" resolve="componentNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANKx" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANKy" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANKn" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANKz" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfIWAY" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANK$" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANK_" role="3clFbG">
                      <node concept="1y4W85" id="1R4IoyQANKA" role="37vLTx">
                        <node concept="37vLTw" id="1R4IoyQANKB" role="1y58nS">
                          <ref role="3cqZAo" node="1R4IoyQANJa" resolve="position" />
                        </node>
                        <node concept="2OqwBi" id="1R4IoyQANKC" role="1y566C">
                          <node concept="1PxgMI" id="1R4IoyQANKD" role="2Oq$k0">
                            <node concept="chp4Y" id="1R4IoyQANKE" role="3oSUPX">
                              <ref role="cht4Q" to="xiqq:uLhTRQXdkL" resolve="IComponentWithAdapters" />
                            </node>
                            <node concept="37vLTw" id="1R4IoyQANKF" role="1m5AlR">
                              <ref role="3cqZAo" node="1R4IoyQANJg" resolve="componentNode" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="1R4IoyQANKG" role="2OqNvi">
                            <ref role="37wK5l" to="t4dg:uLhTRQXdlm" resolve="getPlugs" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANKH" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANKI" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANKn" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANKJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfIWB0" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1R4IoyQANKK" role="3cqZAp">
                    <node concept="37vLTw" id="1R4IoyQANKL" role="3cqZAk">
                      <ref role="3cqZAo" node="1R4IoyQANKn" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1R4IoyQANKM" role="3eO9$A">
                  <node concept="Rm8GO" id="1R4IoyQANKN" role="3uHU7w">
                    <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQANKO" role="3uHU7B">
                    <ref role="3cqZAo" node="1R4IoyQANIQ" resolve="kind" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1R4IoyQANKP" role="3clFbw">
            <node concept="3uibUv" id="1R4IoyQANKQ" role="2ZW6by">
              <ref role="3uigEE" to="g27j:~FunctionBlockPortIdentity" resolve="FunctionBlockPortIdentity" />
            </node>
            <node concept="37vLTw" id="1R4IoyQANKR" role="2ZW6bz">
              <ref role="3cqZAo" node="1R4IoyQANLO" resolve="port" />
            </node>
          </node>
          <node concept="3eNFk2" id="1R4IoyQANKS" role="3eNLev">
            <node concept="2ZW3vV" id="1R4IoyQANKT" role="3eO9$A">
              <node concept="3uibUv" id="1R4IoyQANKU" role="2ZW6by">
                <ref role="3uigEE" to="g27j:~InterfaceEndpoint" resolve="InterfaceEndpoint" />
              </node>
              <node concept="37vLTw" id="1R4IoyQANKV" role="2ZW6bz">
                <ref role="3cqZAo" node="1R4IoyQANLO" resolve="port" />
              </node>
            </node>
            <node concept="3clFbS" id="1R4IoyQANKW" role="3eOfB_">
              <node concept="3cpWs8" id="1R4IoyQANKX" role="3cqZAp">
                <node concept="3cpWsn" id="1R4IoyQANKY" role="3cpWs9">
                  <property role="TrG5h" value="endpoint" />
                  <node concept="3uibUv" id="1R4IoyQANKZ" role="1tU5fm">
                    <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                  </node>
                  <node concept="10QFUN" id="1R4IoyQANL0" role="33vP2m">
                    <node concept="3uibUv" id="1R4IoyQANL1" role="10QFUM">
                      <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQANL2" role="10QFUP">
                      <ref role="3cqZAo" node="1R4IoyQANLO" resolve="port" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1R4IoyQANL3" role="3cqZAp">
                <node concept="3clFbS" id="1R4IoyQANL4" role="3clFbx">
                  <node concept="3cpWs8" id="1R4IoyQANL5" role="3cqZAp">
                    <node concept="3cpWsn" id="1R4IoyQANL6" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="1R4IoyQANL7" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                      </node>
                      <node concept="2ShNRf" id="1R4IoyQANL8" role="33vP2m">
                        <node concept="3zrR0B" id="1R4IoyQANL9" role="2ShVmc">
                          <node concept="3Tqbb2" id="1R4IoyQANLa" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANLb" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANLc" role="3clFbG">
                      <node concept="1PxgMI" id="1R4IoyQANLd" role="37vLTx">
                        <node concept="chp4Y" id="1R4IoyQANLe" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="1R4IoyQANLf" role="1m5AlR">
                          <node concept="37vLTw" id="1R4IoyQANLg" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R4IoyQANKY" resolve="endpoint" />
                          </node>
                          <node concept="liA8E" id="1R4IoyQANLh" role="2OqNvi">
                            <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANLi" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANLj" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANL6" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANLk" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1R4IoyQANLl" role="3cqZAp">
                    <node concept="37vLTw" id="1R4IoyQANLm" role="3cqZAk">
                      <ref role="3cqZAo" node="1R4IoyQANL6" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1R4IoyQANLn" role="3clFbw">
                  <node concept="Rm8GO" id="1R4IoyQANLo" role="3uHU7w">
                    <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQANLp" role="3uHU7B">
                    <ref role="3cqZAo" node="1R4IoyQANIQ" resolve="kind" />
                  </node>
                </node>
                <node concept="3eNFk2" id="1R4IoyQANLq" role="3eNLev">
                  <node concept="3clFbS" id="1R4IoyQANLr" role="3eOfB_">
                    <node concept="3cpWs8" id="1R4IoyQANLs" role="3cqZAp">
                      <node concept="3cpWsn" id="1R4IoyQANLt" role="3cpWs9">
                        <property role="TrG5h" value="node" />
                        <node concept="3Tqbb2" id="1R4IoyQANLu" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                        </node>
                        <node concept="2ShNRf" id="1R4IoyQANLv" role="33vP2m">
                          <node concept="3zrR0B" id="1R4IoyQANLw" role="2ShVmc">
                            <node concept="3Tqbb2" id="1R4IoyQANLx" role="3zrR0E">
                              <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1R4IoyQANLy" role="3cqZAp">
                      <node concept="37vLTI" id="1R4IoyQANLz" role="3clFbG">
                        <node concept="1PxgMI" id="1R4IoyQANL$" role="37vLTx">
                          <node concept="chp4Y" id="1R4IoyQANL_" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                          </node>
                          <node concept="2OqwBi" id="1R4IoyQANLA" role="1m5AlR">
                            <node concept="37vLTw" id="1R4IoyQANLB" role="2Oq$k0">
                              <ref role="3cqZAo" node="1R4IoyQANKY" resolve="endpoint" />
                            </node>
                            <node concept="liA8E" id="1R4IoyQANLC" role="2OqNvi">
                              <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1R4IoyQANLD" role="37vLTJ">
                          <node concept="37vLTw" id="1R4IoyQANLE" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R4IoyQANLt" resolve="node" />
                          </node>
                          <node concept="3TrEf2" id="1R4IoyQANLF" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1R4IoyQANLG" role="3cqZAp">
                      <node concept="37vLTw" id="1R4IoyQANLH" role="3cqZAk">
                        <ref role="3cqZAo" node="1R4IoyQANLt" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="1R4IoyQANLI" role="3eO9$A">
                    <node concept="Rm8GO" id="1R4IoyQANLJ" role="3uHU7w">
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                      <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQANLK" role="3uHU7B">
                      <ref role="3cqZAo" node="1R4IoyQANIQ" resolve="kind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1R4IoyQANLL" role="3cqZAp">
          <node concept="10Nm6u" id="1R4IoyQANLM" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQANLN" role="1B3o_S" />
      <node concept="37vLTG" id="1R4IoyQANLO" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="1R4IoyQANLP" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3Tqbb2" id="1R4IoyQANLQ" role="3clF45">
        <ref role="ehGHo" to="xiqq:37fub3vlApO" resolve="Source" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQANLR" role="jymVt" />
    <node concept="2YIFZL" id="1R4IoyQANLS" role="jymVt">
      <property role="TrG5h" value="serializeDestinationPort" />
      <node concept="3clFbS" id="1R4IoyQANLT" role="3clF47">
        <node concept="3clFbJ" id="1R4IoyQANLU" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQANLV" role="3clFbw">
            <node concept="37vLTw" id="1R4IoyQANLW" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQANP0" resolve="port" />
            </node>
            <node concept="liA8E" id="1R4IoyQANLX" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FBPortIdentity.isSource()" resolve="isSource" />
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyQANLY" role="3clFbx">
            <node concept="3cpWs6" id="1R4IoyQANLZ" role="3cqZAp">
              <node concept="10Nm6u" id="1R4IoyQANM0" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyQANM1" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyQANM2" role="3cpWs9">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="1R4IoyQANM3" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
            </node>
            <node concept="2OqwBi" id="1R4IoyQANM4" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyQANM5" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANP0" resolve="port" />
              </node>
              <node concept="liA8E" id="1R4IoyQANM6" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBPortIdentity.getKind()" resolve="getKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyQANM7" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyQANM8" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="1R4IoyQANM9" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetworkComponent" resolve="FBNetworkComponent" />
            </node>
            <node concept="2OqwBi" id="1R4IoyQANMa" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyQANMb" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQANP0" resolve="port" />
              </node>
              <node concept="liA8E" id="1R4IoyQANMc" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBPortIdentity.getComponent()" resolve="getComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1R4IoyQANMd" role="3cqZAp">
          <node concept="3clFbS" id="1R4IoyQANMe" role="3clFbx">
            <node concept="3cpWs8" id="1R4IoyQANMf" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQANMg" role="3cpWs9">
                <property role="TrG5h" value="fbInstPort" />
                <node concept="3uibUv" id="1R4IoyQANMh" role="1tU5fm">
                  <ref role="3uigEE" to="g27j:~FunctionBlockPortIdentity" resolve="FunctionBlockPortIdentity" />
                </node>
                <node concept="10QFUN" id="1R4IoyQANMi" role="33vP2m">
                  <node concept="3uibUv" id="1R4IoyQANMj" role="10QFUM">
                    <ref role="3uigEE" to="g27j:~FunctionBlockPortIdentity" resolve="FunctionBlockPortIdentity" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQANMk" role="10QFUP">
                    <ref role="3cqZAo" node="1R4IoyQANP0" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQANMl" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQANMm" role="3cpWs9">
                <property role="TrG5h" value="position" />
                <node concept="10Oyi0" id="1R4IoyQANMn" role="1tU5fm" />
                <node concept="2OqwBi" id="1R4IoyQANMo" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQANMp" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQANMg" resolve="fbInstPort" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQANMq" role="2OqNvi">
                    <ref role="37wK5l" to="g27j:~FunctionBlockPortIdentity.getPosition()" resolve="getPosition" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQANMr" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQANMs" role="3cpWs9">
                <property role="TrG5h" value="componentNode" />
                <node concept="3Tqbb2" id="1R4IoyQANMt" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                </node>
                <node concept="1PxgMI" id="1R4IoyQANMu" role="33vP2m">
                  <node concept="chp4Y" id="1R4IoyQANMv" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:5L1OxDukYbT" resolve="IComponent" />
                  </node>
                  <node concept="2OqwBi" id="1R4IoyQANMw" role="1m5AlR">
                    <node concept="1eOMI4" id="1R4IoyQANMx" role="2Oq$k0">
                      <node concept="10QFUN" id="1R4IoyQANMy" role="1eOMHV">
                        <node concept="3uibUv" id="1R4IoyQANMz" role="10QFUM">
                          <ref role="3uigEE" node="6LU90BOirFi" resolve="FunctionBlockDeclarationByNode" />
                        </node>
                        <node concept="37vLTw" id="1R4IoyQANM$" role="10QFUP">
                          <ref role="3cqZAo" node="1R4IoyQANM8" resolve="component" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1R4IoyQANM_" role="2OqNvi">
                      <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1R4IoyQANMA" role="3cqZAp">
              <node concept="3clFbS" id="1R4IoyQANMB" role="3clFbx">
                <node concept="3cpWs8" id="1R4IoyQANMC" role="3cqZAp">
                  <node concept="3cpWsn" id="1R4IoyQANMD" role="3cpWs9">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="1R4IoyQANME" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                    </node>
                    <node concept="2ShNRf" id="1R4IoyQANMF" role="33vP2m">
                      <node concept="3zrR0B" id="1R4IoyQANMG" role="2ShVmc">
                        <node concept="3Tqbb2" id="1R4IoyQANMH" role="3zrR0E">
                          <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1R4IoyQANMI" role="3cqZAp">
                  <node concept="37vLTI" id="1R4IoyQANMJ" role="3clFbG">
                    <node concept="37vLTw" id="1R4IoyQANMK" role="37vLTx">
                      <ref role="3cqZAo" node="1R4IoyQANMs" resolve="componentNode" />
                    </node>
                    <node concept="2OqwBi" id="1R4IoyQANML" role="37vLTJ">
                      <node concept="37vLTw" id="1R4IoyQANMM" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANMD" resolve="node" />
                      </node>
                      <node concept="3TrEf2" id="6z_cCa7WOB4" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1R4IoyQANMO" role="3cqZAp">
                  <node concept="37vLTI" id="1R4IoyQANMP" role="3clFbG">
                    <node concept="1y4W85" id="1R4IoyQANMQ" role="37vLTx">
                      <node concept="37vLTw" id="1R4IoyQANMR" role="1y58nS">
                        <ref role="3cqZAo" node="1R4IoyQANMm" resolve="position" />
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANMS" role="1y566C">
                        <node concept="37vLTw" id="1R4IoyQANMT" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANMs" resolve="componentNode" />
                        </node>
                        <node concept="2qgKlT" id="1R4IoyQANMU" role="2OqNvi">
                          <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1R4IoyQANMV" role="37vLTJ">
                      <node concept="37vLTw" id="1R4IoyQANMW" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANMD" resolve="node" />
                      </node>
                      <node concept="3TrEf2" id="1R4IoyQANMX" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1R4IoyQANMY" role="3cqZAp">
                  <node concept="37vLTw" id="1R4IoyQANMZ" role="3cqZAk">
                    <ref role="3cqZAo" node="1R4IoyQANMD" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="1R4IoyQANN0" role="3clFbw">
                <node concept="Rm8GO" id="1R4IoyQANN1" role="3uHU7w">
                  <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                  <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                </node>
                <node concept="37vLTw" id="1R4IoyQANN2" role="3uHU7B">
                  <ref role="3cqZAo" node="1R4IoyQANM2" resolve="kind" />
                </node>
              </node>
              <node concept="3eNFk2" id="1R4IoyQANN3" role="3eNLev">
                <node concept="3clFbS" id="1R4IoyQANN4" role="3eOfB_">
                  <node concept="3cpWs8" id="1R4IoyQANN5" role="3cqZAp">
                    <node concept="3cpWsn" id="1R4IoyQANN6" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="1R4IoyQANN7" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                      </node>
                      <node concept="2ShNRf" id="1R4IoyQANN8" role="33vP2m">
                        <node concept="3zrR0B" id="1R4IoyQANN9" role="2ShVmc">
                          <node concept="3Tqbb2" id="1R4IoyQANNa" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANNb" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANNc" role="3clFbG">
                      <node concept="37vLTw" id="1R4IoyQANNd" role="37vLTx">
                        <ref role="3cqZAo" node="1R4IoyQANMs" resolve="componentNode" />
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANNe" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANNf" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANN6" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANNg" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANNh" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANNi" role="3clFbG">
                      <node concept="1y4W85" id="1R4IoyQANNj" role="37vLTx">
                        <node concept="37vLTw" id="1R4IoyQANNk" role="1y58nS">
                          <ref role="3cqZAo" node="1R4IoyQANMm" resolve="position" />
                        </node>
                        <node concept="2OqwBi" id="1R4IoyQANNl" role="1y566C">
                          <node concept="37vLTw" id="1R4IoyQANNm" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R4IoyQANMs" resolve="componentNode" />
                          </node>
                          <node concept="2qgKlT" id="1R4IoyQANNn" role="2OqNvi">
                            <ref role="37wK5l" to="t4dg:5L1OxDukYdN" resolve="eventDestinations" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANNo" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANNp" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANN6" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANNq" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1R4IoyQANNr" role="3cqZAp">
                    <node concept="37vLTw" id="1R4IoyQANNs" role="3cqZAk">
                      <ref role="3cqZAo" node="1R4IoyQANN6" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1R4IoyQANNt" role="3eO9$A">
                  <node concept="Rm8GO" id="1R4IoyQANNu" role="3uHU7w">
                    <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQANNv" role="3uHU7B">
                    <ref role="3cqZAo" node="1R4IoyQANM2" resolve="kind" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="1R4IoyQANNw" role="3eNLev">
                <node concept="3clFbS" id="1R4IoyQANNx" role="3eOfB_">
                  <node concept="3cpWs8" id="1R4IoyQANNy" role="3cqZAp">
                    <node concept="3cpWsn" id="1R4IoyQANNz" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="1R4IoyQANN$" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                      </node>
                      <node concept="2ShNRf" id="1R4IoyQANN_" role="33vP2m">
                        <node concept="3zrR0B" id="1R4IoyQANNA" role="2ShVmc">
                          <node concept="3Tqbb2" id="1R4IoyQANNB" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANNC" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANND" role="3clFbG">
                      <node concept="1PxgMI" id="1R4IoyQANNE" role="37vLTx">
                        <node concept="chp4Y" id="1R4IoyQANNF" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                        </node>
                        <node concept="37vLTw" id="1R4IoyQANNG" role="1m5AlR">
                          <ref role="3cqZAo" node="1R4IoyQANMs" resolve="componentNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANNH" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANNI" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANNz" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANNJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANNK" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANNL" role="3clFbG">
                      <node concept="1y4W85" id="1R4IoyQANNM" role="37vLTx">
                        <node concept="37vLTw" id="1R4IoyQANNN" role="1y58nS">
                          <ref role="3cqZAo" node="1R4IoyQANMm" resolve="position" />
                        </node>
                        <node concept="2OqwBi" id="1R4IoyQANNO" role="1y566C">
                          <node concept="1PxgMI" id="1R4IoyQANNP" role="2Oq$k0">
                            <node concept="chp4Y" id="1R4IoyQANNQ" role="3oSUPX">
                              <ref role="cht4Q" to="xiqq:uLhTRQXdkL" resolve="IComponentWithAdapters" />
                            </node>
                            <node concept="37vLTw" id="1R4IoyQANNR" role="1m5AlR">
                              <ref role="3cqZAo" node="1R4IoyQANMs" resolve="componentNode" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="1R4IoyQANNS" role="2OqNvi">
                            <ref role="37wK5l" to="t4dg:uLhTRQXezk" resolve="getSockets" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANNT" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANNU" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANNz" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANNV" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1R4IoyQANNW" role="3cqZAp">
                    <node concept="37vLTw" id="1R4IoyQANNX" role="3cqZAk">
                      <ref role="3cqZAo" node="1R4IoyQANNz" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1R4IoyQANNY" role="3eO9$A">
                  <node concept="Rm8GO" id="1R4IoyQANNZ" role="3uHU7w">
                    <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQANO0" role="3uHU7B">
                    <ref role="3cqZAo" node="1R4IoyQANM2" resolve="kind" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1R4IoyQANO1" role="3clFbw">
            <node concept="3uibUv" id="1R4IoyQANO2" role="2ZW6by">
              <ref role="3uigEE" to="g27j:~FunctionBlockPortIdentity" resolve="FunctionBlockPortIdentity" />
            </node>
            <node concept="37vLTw" id="1R4IoyQANO3" role="2ZW6bz">
              <ref role="3cqZAo" node="1R4IoyQANP0" resolve="port" />
            </node>
          </node>
          <node concept="3eNFk2" id="1R4IoyQANO4" role="3eNLev">
            <node concept="2ZW3vV" id="1R4IoyQANO5" role="3eO9$A">
              <node concept="3uibUv" id="1R4IoyQANO6" role="2ZW6by">
                <ref role="3uigEE" to="g27j:~InterfaceEndpoint" resolve="InterfaceEndpoint" />
              </node>
              <node concept="37vLTw" id="1R4IoyQANO7" role="2ZW6bz">
                <ref role="3cqZAo" node="1R4IoyQANP0" resolve="port" />
              </node>
            </node>
            <node concept="3clFbS" id="1R4IoyQANO8" role="3eOfB_">
              <node concept="3cpWs8" id="1R4IoyQANO9" role="3cqZAp">
                <node concept="3cpWsn" id="1R4IoyQANOa" role="3cpWs9">
                  <property role="TrG5h" value="endpoint" />
                  <node concept="3uibUv" id="1R4IoyQANOb" role="1tU5fm">
                    <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                  </node>
                  <node concept="10QFUN" id="1R4IoyQANOc" role="33vP2m">
                    <node concept="3uibUv" id="1R4IoyQANOd" role="10QFUM">
                      <ref role="3uigEE" node="6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQANOe" role="10QFUP">
                      <ref role="3cqZAo" node="1R4IoyQANP0" resolve="port" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1R4IoyQANOf" role="3cqZAp">
                <node concept="3clFbS" id="1R4IoyQANOg" role="3clFbx">
                  <node concept="3cpWs8" id="1R4IoyQANOh" role="3cqZAp">
                    <node concept="3cpWsn" id="1R4IoyQANOi" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="1R4IoyQANOj" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                      </node>
                      <node concept="2ShNRf" id="1R4IoyQANOk" role="33vP2m">
                        <node concept="3zrR0B" id="1R4IoyQANOl" role="2ShVmc">
                          <node concept="3Tqbb2" id="1R4IoyQANOm" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1R4IoyQANOn" role="3cqZAp">
                    <node concept="37vLTI" id="1R4IoyQANOo" role="3clFbG">
                      <node concept="1PxgMI" id="1R4IoyQANOp" role="37vLTx">
                        <node concept="chp4Y" id="1R4IoyQANOq" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="1R4IoyQANOr" role="1m5AlR">
                          <node concept="37vLTw" id="1R4IoyQANOs" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R4IoyQANOa" resolve="endpoint" />
                          </node>
                          <node concept="liA8E" id="1R4IoyQANOt" role="2OqNvi">
                            <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1R4IoyQANOu" role="37vLTJ">
                        <node concept="37vLTw" id="1R4IoyQANOv" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQANOi" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="1R4IoyQANOw" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1R4IoyQANOx" role="3cqZAp">
                    <node concept="37vLTw" id="1R4IoyQANOy" role="3cqZAk">
                      <ref role="3cqZAo" node="1R4IoyQANOi" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1R4IoyQANOz" role="3clFbw">
                  <node concept="Rm8GO" id="1R4IoyQANO$" role="3uHU7w">
                    <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQANO_" role="3uHU7B">
                    <ref role="3cqZAo" node="1R4IoyQANM2" resolve="kind" />
                  </node>
                </node>
                <node concept="3eNFk2" id="1R4IoyQANOA" role="3eNLev">
                  <node concept="3clFbS" id="1R4IoyQANOB" role="3eOfB_">
                    <node concept="3cpWs8" id="1R4IoyQANOC" role="3cqZAp">
                      <node concept="3cpWsn" id="1R4IoyQANOD" role="3cpWs9">
                        <property role="TrG5h" value="node" />
                        <node concept="3Tqbb2" id="1R4IoyQANOE" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                        </node>
                        <node concept="2ShNRf" id="1R4IoyQANOF" role="33vP2m">
                          <node concept="3zrR0B" id="1R4IoyQANOG" role="2ShVmc">
                            <node concept="3Tqbb2" id="1R4IoyQANOH" role="3zrR0E">
                              <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1R4IoyQANOI" role="3cqZAp">
                      <node concept="37vLTI" id="1R4IoyQANOJ" role="3clFbG">
                        <node concept="1PxgMI" id="1R4IoyQANOK" role="37vLTx">
                          <node concept="chp4Y" id="1R4IoyQANOL" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                          </node>
                          <node concept="2OqwBi" id="1R4IoyQANOM" role="1m5AlR">
                            <node concept="37vLTw" id="1R4IoyQANON" role="2Oq$k0">
                              <ref role="3cqZAo" node="1R4IoyQANOa" resolve="endpoint" />
                            </node>
                            <node concept="liA8E" id="1R4IoyQANOO" role="2OqNvi">
                              <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1R4IoyQANOP" role="37vLTJ">
                          <node concept="37vLTw" id="1R4IoyQANOQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="1R4IoyQANOD" resolve="node" />
                          </node>
                          <node concept="3TrEf2" id="1R4IoyQANOR" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1R4IoyQANOS" role="3cqZAp">
                      <node concept="37vLTw" id="1R4IoyQANOT" role="3cqZAk">
                        <ref role="3cqZAo" node="1R4IoyQANOD" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="1R4IoyQANOU" role="3eO9$A">
                    <node concept="Rm8GO" id="1R4IoyQANOV" role="3uHU7w">
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                      <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQANOW" role="3uHU7B">
                      <ref role="3cqZAo" node="1R4IoyQANM2" resolve="kind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1R4IoyQANOX" role="3cqZAp">
          <node concept="10Nm6u" id="1R4IoyQANOY" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQANOZ" role="1B3o_S" />
      <node concept="37vLTG" id="1R4IoyQANP0" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="1R4IoyQANP1" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3Tqbb2" id="1R4IoyQANP2" role="3clF45">
        <ref role="ehGHo" to="xiqq:4KieeRVlhj7" resolve="Destination" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQANP3" role="jymVt" />
    <node concept="2YIFZL" id="1R4IoyQANP4" role="jymVt">
      <property role="TrG5h" value="serializeConnectionPath" />
      <node concept="3clFbS" id="1R4IoyQANP5" role="3clF47">
        <node concept="3KaCP$" id="1R4IoyQANP6" role="3cqZAp">
          <node concept="3KbdKl" id="1R4IoyQANP7" role="3KbHQx">
            <node concept="Rm8GO" id="1R4IoyQANP8" role="3Kbmr1">
              <ref role="1Px2BO" to="g27j:~ConnectionPath$Kind" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="g27j:~ConnectionPath$Kind.Straight" resolve="Straight" />
            </node>
            <node concept="3clFbS" id="1R4IoyQANP9" role="3Kbo56">
              <node concept="3cpWs6" id="1R4IoyQANPa" role="3cqZAp">
                <node concept="2ShNRf" id="1R4IoyQANPb" role="3cqZAk">
                  <node concept="3zrR0B" id="1R4IoyQANPc" role="2ShVmc">
                    <node concept="3Tqbb2" id="1R4IoyQANPd" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:3IX4BsKoiap" resolve="StraightConnectionPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1R4IoyQANPe" role="3KbGdf">
            <node concept="37vLTw" id="1R4IoyQANPf" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQANPZ" resolve="path" />
            </node>
            <node concept="liA8E" id="1R4IoyQANPg" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~ConnectionPath.getKind()" resolve="getKind" />
            </node>
          </node>
          <node concept="3KbdKl" id="1R4IoyQANPh" role="3KbHQx">
            <node concept="3clFbS" id="1R4IoyQANPi" role="3Kbo56">
              <node concept="3cpWs8" id="1R4IoyQANPj" role="3cqZAp">
                <node concept="3cpWsn" id="1R4IoyQANPk" role="3cpWs9">
                  <property role="TrG5h" value="twoAngles" />
                  <node concept="3Tqbb2" id="1R4IoyQANPl" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
                  </node>
                  <node concept="2ShNRf" id="1R4IoyQANPm" role="33vP2m">
                    <node concept="3zrR0B" id="1R4IoyQANPn" role="2ShVmc">
                      <node concept="3Tqbb2" id="1R4IoyQANPo" role="3zrR0E">
                        <ref role="ehGHo" to="xiqq:3IX4BsKoibk" resolve="TwoAngleConnectionPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1R4IoyQANPp" role="3cqZAp">
                <node concept="2OqwBi" id="1R4IoyQANPq" role="3clFbG">
                  <node concept="37vLTw" id="1R4IoyQANPr" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQANPk" resolve="twoAngles" />
                  </node>
                  <node concept="2qgKlT" id="1R4IoyQANPs" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:3IX4BsKojRN" resolve="setDX" />
                    <node concept="2OqwBi" id="1R4IoyQANPt" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQANPu" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANPZ" resolve="path" />
                      </node>
                      <node concept="liA8E" id="1R4IoyQANPv" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~ConnectionPath.getDX1()" resolve="getDX1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1R4IoyQANPw" role="3cqZAp">
                <node concept="37vLTw" id="1R4IoyQANPx" role="3cqZAk">
                  <ref role="3cqZAo" node="1R4IoyQANPk" resolve="twoAngles" />
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="1R4IoyQANPy" role="3Kbmr1">
              <ref role="1Px2BO" to="g27j:~ConnectionPath$Kind" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="g27j:~ConnectionPath$Kind.TwoAngles" resolve="TwoAngles" />
            </node>
          </node>
          <node concept="3KbdKl" id="1R4IoyQANPz" role="3KbHQx">
            <node concept="3clFbS" id="1R4IoyQANP$" role="3Kbo56">
              <node concept="3cpWs8" id="1R4IoyQANP_" role="3cqZAp">
                <node concept="3cpWsn" id="1R4IoyQANPA" role="3cpWs9">
                  <property role="TrG5h" value="fourAngles" />
                  <node concept="3Tqbb2" id="1R4IoyQANPB" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                  </node>
                  <node concept="2ShNRf" id="1R4IoyQANPC" role="33vP2m">
                    <node concept="3zrR0B" id="1R4IoyQANPD" role="2ShVmc">
                      <node concept="3Tqbb2" id="1R4IoyQANPE" role="3zrR0E">
                        <ref role="ehGHo" to="xiqq:3IX4BsKomat" resolve="FourAngleConncetionPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1R4IoyQANPF" role="3cqZAp">
                <node concept="2OqwBi" id="1R4IoyQANPG" role="3clFbG">
                  <node concept="37vLTw" id="1R4IoyQANPH" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQANPA" resolve="fourAngles" />
                  </node>
                  <node concept="2qgKlT" id="1R4IoyQANPI" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:3IX4BsKouNu" resolve="set" />
                    <node concept="2OqwBi" id="1R4IoyQANPJ" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQANPK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANPZ" resolve="path" />
                      </node>
                      <node concept="liA8E" id="1R4IoyQANPL" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~ConnectionPath.getDX1()" resolve="getDX1" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1R4IoyQANPM" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQANPN" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANPZ" resolve="path" />
                      </node>
                      <node concept="liA8E" id="1R4IoyQANPO" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~ConnectionPath.getDY()" resolve="getDY" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1R4IoyQANPP" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQANPQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANPZ" resolve="path" />
                      </node>
                      <node concept="liA8E" id="1R4IoyQANPR" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~ConnectionPath.getDX2()" resolve="getDX2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1R4IoyQANPS" role="3cqZAp">
                <node concept="37vLTw" id="1R4IoyQANPT" role="3cqZAk">
                  <ref role="3cqZAo" node="1R4IoyQANPA" resolve="fourAngles" />
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="1R4IoyQANPU" role="3Kbmr1">
              <ref role="1Px2BO" to="g27j:~ConnectionPath$Kind" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="g27j:~ConnectionPath$Kind.FourAngles" resolve="FourAngles" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1R4IoyQANPV" role="3cqZAp">
          <node concept="10Nm6u" id="1R4IoyQANPW" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQANPX" role="1B3o_S" />
      <node concept="3Tqbb2" id="1R4IoyQANPY" role="3clF45">
        <ref role="ehGHo" to="xiqq:3IX4BsKohXi" resolve="ConnectionPath" />
      </node>
      <node concept="37vLTG" id="1R4IoyQANPZ" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="1R4IoyQANQ0" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~ConnectionPath" resolve="ConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQANQ2" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQANQ3" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="1R4IoyQANQ4" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
      <node concept="3Tm1VV" id="1R4IoyQANQ5" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQANQ6" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQANQ7" role="3cqZAp">
          <node concept="37vLTw" id="1R4IoyQANQ8" role="3clFbG">
            <ref role="3cqZAo" node="1R4IoyQANA3" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZANN_" role="jymVt" />
    <node concept="3Tm1VV" id="1R4IoyQA3Yo" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQA3ZV" role="EKbjA">
      <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
    </node>
    <node concept="3uibUv" id="2CN1Od1duI1" role="EKbjA">
      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFb_" id="31Fn7oZAYo3" role="jymVt">
      <property role="TrG5h" value="getBrokenTargets" />
      <node concept="3uibUv" id="31Fn7oZAYo4" role="3clF45">
        <ref role="3uigEE" node="31Fn7oZuPIn" resolve="NetworkBrokenTargets" />
      </node>
      <node concept="3Tm1VV" id="31Fn7oZAYo5" role="1B3o_S" />
      <node concept="3clFbS" id="31Fn7oZAYo6" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZAYo7" role="3cqZAp">
          <node concept="37vLTw" id="31Fn7oZBl3o" role="3clFbG">
            <ref role="3cqZAo" node="31Fn7oZ_Lb$" resolve="myBrokenTargets" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="31Fn7oZuPIn">
    <property role="TrG5h" value="NetworkBrokenTargets" />
    <node concept="2tJIrI" id="31Fn7oZuPKh" role="jymVt" />
    <node concept="312cEg" id="31Fn7oZwb0h" role="jymVt">
      <property role="TrG5h" value="myFBBrokenPorts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="31Fn7oZw8Vi" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZwaWz" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="6mkmem0EgAO" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="3uibUv" id="31Fn7oZwaYy" role="11_B2D">
          <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
        </node>
      </node>
      <node concept="2ShNRf" id="31Fn7oZwhAD" role="33vP2m">
        <node concept="1pGfFk" id="31Fn7oZwhPY" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="6mkmem0Ed3f" role="1pMfVU">
            <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
          </node>
          <node concept="3uibUv" id="31Fn7oZwi5P" role="1pMfVU">
            <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZxpoF" role="jymVt" />
    <node concept="3Tm1VV" id="31Fn7oZuPIo" role="1B3o_S" />
    <node concept="3clFb_" id="31Fn7oZwpUZ" role="jymVt">
      <property role="TrG5h" value="adaptFBType" />
      <node concept="3clFbS" id="31Fn7oZwpV2" role="3clF47">
        <node concept="3cpWs6" id="31Fn7oZwDiX" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZwDjo" role="3cqZAk">
            <node concept="1pGfFk" id="31Fn7oZwFvm" role="2ShVmc">
              <ref role="37wK5l" node="31Fn7oZuTGz" resolve="NetworkBrokenTargets.TypeDescriptorAdapter" />
              <node concept="37vLTw" id="31Fn7oZBSX4" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZBNCv" resolve="type" />
              </node>
              <node concept="10Nm6u" id="31Fn7oZwO5l" role="37wK5m" />
              <node concept="2OqwBi" id="31Fn7oZwX2i" role="37wK5m">
                <node concept="37vLTw" id="31Fn7oZwV5S" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZwb0h" resolve="myFBBrokenPorts" />
                </node>
                <node concept="liA8E" id="31Fn7oZwZrC" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                  <node concept="37vLTw" id="31Fn7oZx1zL" role="37wK5m">
                    <ref role="3cqZAo" node="31Fn7oZwxuG" resolve="fb" />
                  </node>
                  <node concept="37vLTw" id="31Fn7oZx$9l" role="37wK5m">
                    <ref role="3cqZAo" node="31Fn7oZxv_Y" resolve="BROKEN_PORTS_FACTORY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZwmX0" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZwp2Z" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
      </node>
      <node concept="37vLTG" id="31Fn7oZwxuG" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="6mkmem0EkkM" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZwzv3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="31Fn7oZBNCv" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="31Fn7oZJ$8O" role="1tU5fm">
          <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZBNCx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="31Fn7oZyaoy" role="jymVt">
      <property role="TrG5h" value="adaptFBBrokenType" />
      <node concept="3clFbS" id="31Fn7oZyaoz" role="3clF47">
        <node concept="3cpWs6" id="31Fn7oZyao$" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZyao_" role="3cqZAk">
            <node concept="1pGfFk" id="31Fn7oZyaoA" role="2ShVmc">
              <ref role="37wK5l" node="31Fn7oZuTGz" resolve="NetworkBrokenTargets.TypeDescriptorAdapter" />
              <node concept="10Nm6u" id="31Fn7oZyj3O" role="37wK5m" />
              <node concept="37vLTw" id="31Fn7oZygSm" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZyeJW" resolve="typeName" />
              </node>
              <node concept="2OqwBi" id="31Fn7oZyaoF" role="37wK5m">
                <node concept="37vLTw" id="31Fn7oZyaoG" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZwb0h" resolve="myFBBrokenPorts" />
                </node>
                <node concept="liA8E" id="31Fn7oZyaoH" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                  <node concept="37vLTw" id="31Fn7oZyaoI" role="37wK5m">
                    <ref role="3cqZAo" node="31Fn7oZyaoM" resolve="fb" />
                  </node>
                  <node concept="37vLTw" id="31Fn7oZyaoJ" role="37wK5m">
                    <ref role="3cqZAo" node="31Fn7oZxv_Y" resolve="BROKEN_PORTS_FACTORY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZyaoK" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZyaoL" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
      </node>
      <node concept="37vLTG" id="31Fn7oZyaoM" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="6mkmem0EnDd" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZyaoO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="31Fn7oZyeJW" role="3clF46">
        <property role="TrG5h" value="typeName" />
        <node concept="3uibUv" id="31Fn7oZygAm" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZygO2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZypbM" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZyLHV" role="jymVt">
      <property role="TrG5h" value="reportBrokenInputEvent" />
      <node concept="37vLTG" id="31Fn7oZyObU" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="6mkmem0Er2v" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZyObW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="31Fn7oZySf2" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="31Fn7oZySf3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZySf4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="31Fn7oZyLHY" role="3clF47">
        <node concept="3cpWs8" id="31Fn7oZyYaD" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZyYaE" role="3cpWs9">
            <property role="TrG5h" value="brokenPorts" />
            <node concept="3uibUv" id="31Fn7oZyXbc" role="1tU5fm">
              <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
            </node>
            <node concept="2OqwBi" id="31Fn7oZyYaF" role="33vP2m">
              <node concept="37vLTw" id="31Fn7oZyYaG" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZwb0h" resolve="myFBBrokenPorts" />
              </node>
              <node concept="liA8E" id="31Fn7oZyYaH" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                <node concept="37vLTw" id="31Fn7oZyYaI" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZyObU" resolve="fb" />
                </node>
                <node concept="37vLTw" id="31Fn7oZyYaJ" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZxv_Y" resolve="BROKEN_PORTS_FACTORY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="31Fn7oZz2$l" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZz2$m" role="3cpWs9">
            <property role="TrG5h" value="nameIndex" />
            <node concept="10Oyi0" id="31Fn7oZz2yE" role="1tU5fm" />
            <node concept="2OqwBi" id="31Fn7oZz2$n" role="33vP2m">
              <node concept="2OqwBi" id="31Fn7oZz2$o" role="2Oq$k0">
                <node concept="37vLTw" id="31Fn7oZz2$p" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZyYaE" resolve="brokenPorts" />
                </node>
                <node concept="2OwXpG" id="31Fn7oZz2$q" role="2OqNvi">
                  <ref role="2Oxat5" node="31Fn7oZuPQ8" resolve="myInputEvents" />
                </node>
              </node>
              <node concept="2WmjW8" id="31Fn7oZz2$r" role="2OqNvi">
                <node concept="37vLTw" id="31Fn7oZz2$s" role="25WWJ7">
                  <ref role="3cqZAo" node="31Fn7oZySf2" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZz2Vx" role="3cqZAp">
          <node concept="3clFbS" id="31Fn7oZz2Vz" role="3clFbx">
            <node concept="3clFbF" id="31Fn7oZz4Nr" role="3cqZAp">
              <node concept="37vLTI" id="31Fn7oZz5vu" role="3clFbG">
                <node concept="37vLTw" id="31Fn7oZz4Np" role="37vLTJ">
                  <ref role="3cqZAo" node="31Fn7oZz2$m" resolve="nameIndex" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZz6Pr" role="37vLTx">
                  <node concept="2OqwBi" id="31Fn7oZz5Jk" role="2Oq$k0">
                    <node concept="37vLTw" id="31Fn7oZz5Jl" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZyYaE" resolve="brokenPorts" />
                    </node>
                    <node concept="2OwXpG" id="31Fn7oZz6Nt" role="2OqNvi">
                      <ref role="2Oxat5" node="31Fn7oZuPQ8" resolve="myInputEvents" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="31Fn7oZz7nQ" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="31Fn7oZz84V" role="3cqZAp">
              <node concept="2OqwBi" id="31Fn7oZz8nj" role="3clFbG">
                <node concept="2OqwBi" id="31Fn7oZz84X" role="2Oq$k0">
                  <node concept="37vLTw" id="31Fn7oZz84Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZyYaE" resolve="brokenPorts" />
                  </node>
                  <node concept="2OwXpG" id="31Fn7oZz84Z" role="2OqNvi">
                    <ref role="2Oxat5" node="31Fn7oZuPQ8" resolve="myInputEvents" />
                  </node>
                </node>
                <node concept="2Ke9KJ" id="31Fn7oZz8H0" role="2OqNvi">
                  <node concept="37vLTw" id="31Fn7oZz8N1" role="25WWJ7">
                    <ref role="3cqZAo" node="31Fn7oZySf2" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="31Fn7oZz4nT" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZz38h" role="3uHU7B">
              <ref role="3cqZAo" node="31Fn7oZz2$m" resolve="nameIndex" />
            </node>
            <node concept="3cmrfG" id="31Fn7oZz4oy" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="31Fn7oZz94q" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZz9I$" role="3cqZAk">
            <node concept="1pGfFk" id="31Fn7oZzcjv" role="2ShVmc">
              <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
              <node concept="37vLTw" id="31Fn7oZzfXI" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZySf2" resolve="name" />
              </node>
              <node concept="Rm8GO" id="31Fn7oZzpuL" role="37wK5m">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
              </node>
              <node concept="37vLTw" id="31Fn7oZzu7P" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZz2$m" resolve="nameIndex" />
              </node>
              <node concept="3clFbT" id="31Fn7oZzyR2" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="31Fn7oZzBWp" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZys_b" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZyu$F" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZ$lzn" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZzEGw" role="jymVt">
      <property role="TrG5h" value="reportBrokenOutputEvent" />
      <node concept="37vLTG" id="31Fn7oZzEGx" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="6mkmem0Evan" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZzEGz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="31Fn7oZzEG$" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="31Fn7oZzEG_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZzEGA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="31Fn7oZzEGB" role="3clF47">
        <node concept="3cpWs8" id="31Fn7oZzEGC" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZzEGD" role="3cpWs9">
            <property role="TrG5h" value="brokenPorts" />
            <node concept="3uibUv" id="31Fn7oZzEGE" role="1tU5fm">
              <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
            </node>
            <node concept="2OqwBi" id="31Fn7oZzEGF" role="33vP2m">
              <node concept="37vLTw" id="31Fn7oZzEGG" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZwb0h" resolve="myFBBrokenPorts" />
              </node>
              <node concept="liA8E" id="31Fn7oZzEGH" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                <node concept="37vLTw" id="31Fn7oZzEGI" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZzEGx" resolve="fb" />
                </node>
                <node concept="37vLTw" id="31Fn7oZzEGJ" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZxv_Y" resolve="BROKEN_PORTS_FACTORY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="31Fn7oZzEGK" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZzEGL" role="3cpWs9">
            <property role="TrG5h" value="nameIndex" />
            <node concept="10Oyi0" id="31Fn7oZzEGM" role="1tU5fm" />
            <node concept="2OqwBi" id="31Fn7oZzEGN" role="33vP2m">
              <node concept="2OqwBi" id="31Fn7oZzEGO" role="2Oq$k0">
                <node concept="37vLTw" id="31Fn7oZzEGP" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZzEGD" resolve="brokenPorts" />
                </node>
                <node concept="2OwXpG" id="31Fn7oZzQY$" role="2OqNvi">
                  <ref role="2Oxat5" node="31Fn7oZuS_9" resolve="myOutputEvents" />
                </node>
              </node>
              <node concept="2WmjW8" id="31Fn7oZzEGR" role="2OqNvi">
                <node concept="37vLTw" id="31Fn7oZzEGS" role="25WWJ7">
                  <ref role="3cqZAo" node="31Fn7oZzEG$" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZzEGT" role="3cqZAp">
          <node concept="3clFbS" id="31Fn7oZzEGU" role="3clFbx">
            <node concept="3clFbF" id="31Fn7oZzEGV" role="3cqZAp">
              <node concept="37vLTI" id="31Fn7oZzEGW" role="3clFbG">
                <node concept="37vLTw" id="31Fn7oZzEGX" role="37vLTJ">
                  <ref role="3cqZAo" node="31Fn7oZzEGL" resolve="nameIndex" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZzEGY" role="37vLTx">
                  <node concept="2OqwBi" id="31Fn7oZzEGZ" role="2Oq$k0">
                    <node concept="37vLTw" id="31Fn7oZzEH0" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZzEGD" resolve="brokenPorts" />
                    </node>
                    <node concept="2OwXpG" id="31Fn7oZzUg_" role="2OqNvi">
                      <ref role="2Oxat5" node="31Fn7oZuS_9" resolve="myOutputEvents" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="31Fn7oZzEH2" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="31Fn7oZzEH3" role="3cqZAp">
              <node concept="2OqwBi" id="31Fn7oZzEH4" role="3clFbG">
                <node concept="2OqwBi" id="31Fn7oZzEH5" role="2Oq$k0">
                  <node concept="37vLTw" id="31Fn7oZzEH6" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZzEGD" resolve="brokenPorts" />
                  </node>
                  <node concept="2OwXpG" id="31Fn7oZzUj2" role="2OqNvi">
                    <ref role="2Oxat5" node="31Fn7oZuS_9" resolve="myOutputEvents" />
                  </node>
                </node>
                <node concept="2Ke9KJ" id="31Fn7oZzEH8" role="2OqNvi">
                  <node concept="37vLTw" id="31Fn7oZzEH9" role="25WWJ7">
                    <ref role="3cqZAo" node="31Fn7oZzEG$" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="31Fn7oZzEHa" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZzEHb" role="3uHU7B">
              <ref role="3cqZAo" node="31Fn7oZzEGL" resolve="nameIndex" />
            </node>
            <node concept="3cmrfG" id="31Fn7oZzEHc" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="31Fn7oZzEHd" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZzEHe" role="3cqZAk">
            <node concept="1pGfFk" id="31Fn7oZzEHf" role="2ShVmc">
              <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
              <node concept="37vLTw" id="31Fn7oZzEHg" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZzEG$" resolve="name" />
              </node>
              <node concept="Rm8GO" id="31Fn7oZzEHh" role="37wK5m">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
              </node>
              <node concept="37vLTw" id="31Fn7oZzEHi" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZzEGL" resolve="nameIndex" />
              </node>
              <node concept="3clFbT" id="31Fn7oZzEHj" role="37wK5m" />
              <node concept="3clFbT" id="31Fn7oZzEHk" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZzEHl" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZzEHm" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZ$iYf" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZzXRN" role="jymVt">
      <property role="TrG5h" value="reportBrokenInputData" />
      <node concept="37vLTG" id="31Fn7oZzXRO" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="6mkmem0DXWq" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZzXRQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="31Fn7oZzXRR" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="31Fn7oZzXRS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZzXRT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="31Fn7oZzXRU" role="3clF47">
        <node concept="3cpWs8" id="31Fn7oZzXRV" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZzXRW" role="3cpWs9">
            <property role="TrG5h" value="brokenPorts" />
            <node concept="3uibUv" id="31Fn7oZzXRX" role="1tU5fm">
              <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
            </node>
            <node concept="2OqwBi" id="31Fn7oZzXRY" role="33vP2m">
              <node concept="37vLTw" id="31Fn7oZzXRZ" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZwb0h" resolve="myFBBrokenPorts" />
              </node>
              <node concept="liA8E" id="31Fn7oZzXS0" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                <node concept="37vLTw" id="31Fn7oZzXS1" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZzXRO" resolve="fb" />
                </node>
                <node concept="37vLTw" id="31Fn7oZzXS2" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZxv_Y" resolve="BROKEN_PORTS_FACTORY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="31Fn7oZzXS3" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZzXS4" role="3cpWs9">
            <property role="TrG5h" value="nameIndex" />
            <node concept="10Oyi0" id="31Fn7oZzXS5" role="1tU5fm" />
            <node concept="2OqwBi" id="31Fn7oZzXS6" role="33vP2m">
              <node concept="2OqwBi" id="31Fn7oZzXS7" role="2Oq$k0">
                <node concept="37vLTw" id="31Fn7oZzXS8" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZzXRW" resolve="brokenPorts" />
                </node>
                <node concept="2OwXpG" id="31Fn7oZ$99Q" role="2OqNvi">
                  <ref role="2Oxat5" node="31Fn7oZuS_u" resolve="myInputDatas" />
                </node>
              </node>
              <node concept="2WmjW8" id="31Fn7oZzXSa" role="2OqNvi">
                <node concept="37vLTw" id="31Fn7oZzXSb" role="25WWJ7">
                  <ref role="3cqZAo" node="31Fn7oZzXRR" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZzXSc" role="3cqZAp">
          <node concept="3clFbS" id="31Fn7oZzXSd" role="3clFbx">
            <node concept="3clFbF" id="31Fn7oZzXSe" role="3cqZAp">
              <node concept="37vLTI" id="31Fn7oZzXSf" role="3clFbG">
                <node concept="37vLTw" id="31Fn7oZzXSg" role="37vLTJ">
                  <ref role="3cqZAo" node="31Fn7oZzXS4" resolve="nameIndex" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZzXSh" role="37vLTx">
                  <node concept="2OqwBi" id="31Fn7oZzXSi" role="2Oq$k0">
                    <node concept="37vLTw" id="31Fn7oZzXSj" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZzXRW" resolve="brokenPorts" />
                    </node>
                    <node concept="2OwXpG" id="31Fn7oZ$csb" role="2OqNvi">
                      <ref role="2Oxat5" node="31Fn7oZuS_u" resolve="myInputDatas" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="31Fn7oZzXSl" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="31Fn7oZzXSm" role="3cqZAp">
              <node concept="2OqwBi" id="31Fn7oZzXSn" role="3clFbG">
                <node concept="2OqwBi" id="31Fn7oZzXSo" role="2Oq$k0">
                  <node concept="37vLTw" id="31Fn7oZzXSp" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZzXRW" resolve="brokenPorts" />
                  </node>
                  <node concept="2OwXpG" id="31Fn7oZ$czP" role="2OqNvi">
                    <ref role="2Oxat5" node="31Fn7oZuS_u" resolve="myInputDatas" />
                  </node>
                </node>
                <node concept="2Ke9KJ" id="31Fn7oZzXSr" role="2OqNvi">
                  <node concept="37vLTw" id="31Fn7oZzXSs" role="25WWJ7">
                    <ref role="3cqZAo" node="31Fn7oZzXRR" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="31Fn7oZzXSt" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZzXSu" role="3uHU7B">
              <ref role="3cqZAo" node="31Fn7oZzXS4" resolve="nameIndex" />
            </node>
            <node concept="3cmrfG" id="31Fn7oZzXSv" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="31Fn7oZzXSw" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZzXSx" role="3cqZAk">
            <node concept="1pGfFk" id="31Fn7oZzXSy" role="2ShVmc">
              <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
              <node concept="37vLTw" id="31Fn7oZzXSz" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZzXRR" resolve="name" />
              </node>
              <node concept="Rm8GO" id="31Fn7oZ$cR7" role="37wK5m">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
              </node>
              <node concept="37vLTw" id="31Fn7oZzXS_" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZzXS4" resolve="nameIndex" />
              </node>
              <node concept="3clFbT" id="31Fn7oZzXSA" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="31Fn7oZzXSB" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZzXSC" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZzXSD" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZ$tbA" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZ$pq9" role="jymVt">
      <property role="TrG5h" value="reportBrokenOutputData" />
      <node concept="37vLTG" id="31Fn7oZ$pqa" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="6mkmem0EzD9" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZ$pqc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="31Fn7oZ$pqd" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="31Fn7oZ$pqe" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZ$pqf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="31Fn7oZ$pqg" role="3clF47">
        <node concept="3cpWs8" id="31Fn7oZ$pqh" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZ$pqi" role="3cpWs9">
            <property role="TrG5h" value="brokenPorts" />
            <node concept="3uibUv" id="31Fn7oZ$pqj" role="1tU5fm">
              <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
            </node>
            <node concept="2OqwBi" id="31Fn7oZ$pqk" role="33vP2m">
              <node concept="37vLTw" id="31Fn7oZ$pql" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZwb0h" resolve="myFBBrokenPorts" />
              </node>
              <node concept="liA8E" id="31Fn7oZ$pqm" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                <node concept="37vLTw" id="31Fn7oZ$pqn" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZ$pqa" resolve="fb" />
                </node>
                <node concept="37vLTw" id="31Fn7oZ$pqo" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZxv_Y" resolve="BROKEN_PORTS_FACTORY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="31Fn7oZ$pqp" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZ$pqq" role="3cpWs9">
            <property role="TrG5h" value="nameIndex" />
            <node concept="10Oyi0" id="31Fn7oZ$pqr" role="1tU5fm" />
            <node concept="2OqwBi" id="31Fn7oZ$pqs" role="33vP2m">
              <node concept="2OqwBi" id="31Fn7oZ$pqt" role="2Oq$k0">
                <node concept="37vLTw" id="31Fn7oZ$pqu" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZ$pqi" resolve="brokenPorts" />
                </node>
                <node concept="2OwXpG" id="31Fn7oZ$_JX" role="2OqNvi">
                  <ref role="2Oxat5" node="31Fn7oZuSFa" resolve="myOutputDatas" />
                </node>
              </node>
              <node concept="2WmjW8" id="31Fn7oZ$pqw" role="2OqNvi">
                <node concept="37vLTw" id="31Fn7oZ$pqx" role="25WWJ7">
                  <ref role="3cqZAo" node="31Fn7oZ$pqd" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZ$pqy" role="3cqZAp">
          <node concept="3clFbS" id="31Fn7oZ$pqz" role="3clFbx">
            <node concept="3clFbF" id="31Fn7oZ$pq$" role="3cqZAp">
              <node concept="37vLTI" id="31Fn7oZ$pq_" role="3clFbG">
                <node concept="37vLTw" id="31Fn7oZ$pqA" role="37vLTJ">
                  <ref role="3cqZAo" node="31Fn7oZ$pqq" resolve="nameIndex" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZ$pqB" role="37vLTx">
                  <node concept="2OqwBi" id="31Fn7oZ$pqC" role="2Oq$k0">
                    <node concept="37vLTw" id="31Fn7oZ$pqD" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZ$pqi" resolve="brokenPorts" />
                    </node>
                    <node concept="2OwXpG" id="31Fn7oZ$D_z" role="2OqNvi">
                      <ref role="2Oxat5" node="31Fn7oZuSFa" resolve="myOutputDatas" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="31Fn7oZ$pqF" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="31Fn7oZ$pqG" role="3cqZAp">
              <node concept="2OqwBi" id="31Fn7oZ$pqH" role="3clFbG">
                <node concept="2OqwBi" id="31Fn7oZ$pqI" role="2Oq$k0">
                  <node concept="37vLTw" id="31Fn7oZ$pqJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZ$pqi" resolve="brokenPorts" />
                  </node>
                  <node concept="2OwXpG" id="31Fn7oZ$DC8" role="2OqNvi">
                    <ref role="2Oxat5" node="31Fn7oZuSFa" resolve="myOutputDatas" />
                  </node>
                </node>
                <node concept="2Ke9KJ" id="31Fn7oZ$pqL" role="2OqNvi">
                  <node concept="37vLTw" id="31Fn7oZ$pqM" role="25WWJ7">
                    <ref role="3cqZAo" node="31Fn7oZ$pqd" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="31Fn7oZ$pqN" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZ$pqO" role="3uHU7B">
              <ref role="3cqZAo" node="31Fn7oZ$pqq" resolve="nameIndex" />
            </node>
            <node concept="3cmrfG" id="31Fn7oZ$pqP" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="31Fn7oZ$pqQ" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZ$pqR" role="3cqZAk">
            <node concept="1pGfFk" id="31Fn7oZ$pqS" role="2ShVmc">
              <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
              <node concept="37vLTw" id="31Fn7oZ$pqT" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZ$pqd" resolve="name" />
              </node>
              <node concept="Rm8GO" id="31Fn7oZ$pqU" role="37wK5m">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
              </node>
              <node concept="37vLTw" id="31Fn7oZ$pqV" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZ$pqq" resolve="nameIndex" />
              </node>
              <node concept="3clFbT" id="31Fn7oZ$pqW" role="37wK5m" />
              <node concept="3clFbT" id="31Fn7oZ$pqX" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZ$pqY" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZ$pqZ" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZ$L3C" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZ$HfR" role="jymVt">
      <property role="TrG5h" value="reportBrokenSocket" />
      <node concept="37vLTG" id="31Fn7oZ$HfS" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="6mkmem0EC17" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZ$HfU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="31Fn7oZ$HfV" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="31Fn7oZ$HfW" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZ$HfX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="31Fn7oZ$HfY" role="3clF47">
        <node concept="3cpWs8" id="31Fn7oZ$HfZ" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZ$Hg0" role="3cpWs9">
            <property role="TrG5h" value="brokenPorts" />
            <node concept="3uibUv" id="31Fn7oZ$Hg1" role="1tU5fm">
              <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
            </node>
            <node concept="2OqwBi" id="31Fn7oZ$Hg2" role="33vP2m">
              <node concept="37vLTw" id="31Fn7oZ$Hg3" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZwb0h" resolve="myFBBrokenPorts" />
              </node>
              <node concept="liA8E" id="31Fn7oZ$Hg4" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                <node concept="37vLTw" id="31Fn7oZ$Hg5" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZ$HfS" resolve="fb" />
                </node>
                <node concept="37vLTw" id="31Fn7oZ$Hg6" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZxv_Y" resolve="BROKEN_PORTS_FACTORY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="31Fn7oZ$Hg7" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZ$Hg8" role="3cpWs9">
            <property role="TrG5h" value="nameIndex" />
            <node concept="10Oyi0" id="31Fn7oZ$Hg9" role="1tU5fm" />
            <node concept="2OqwBi" id="31Fn7oZ$Hga" role="33vP2m">
              <node concept="2OqwBi" id="31Fn7oZ$Hgb" role="2Oq$k0">
                <node concept="37vLTw" id="31Fn7oZ$Hgc" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZ$Hg0" resolve="brokenPorts" />
                </node>
                <node concept="2OwXpG" id="31Fn7oZ$ZP9" role="2OqNvi">
                  <ref role="2Oxat5" node="31Fn7oZuTfW" resolve="mySockets" />
                </node>
              </node>
              <node concept="2WmjW8" id="31Fn7oZ$Hge" role="2OqNvi">
                <node concept="37vLTw" id="31Fn7oZ$Hgf" role="25WWJ7">
                  <ref role="3cqZAo" node="31Fn7oZ$HfV" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZ$Hgg" role="3cqZAp">
          <node concept="3clFbS" id="31Fn7oZ$Hgh" role="3clFbx">
            <node concept="3clFbF" id="31Fn7oZ$Hgi" role="3cqZAp">
              <node concept="37vLTI" id="31Fn7oZ$Hgj" role="3clFbG">
                <node concept="37vLTw" id="31Fn7oZ$Hgk" role="37vLTJ">
                  <ref role="3cqZAo" node="31Fn7oZ$Hg8" resolve="nameIndex" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZ$Hgl" role="37vLTx">
                  <node concept="2OqwBi" id="31Fn7oZ$Hgm" role="2Oq$k0">
                    <node concept="37vLTw" id="31Fn7oZ$Hgn" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZ$Hg0" resolve="brokenPorts" />
                    </node>
                    <node concept="2OwXpG" id="31Fn7oZ_3s4" role="2OqNvi">
                      <ref role="2Oxat5" node="31Fn7oZuTfW" resolve="mySockets" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="31Fn7oZ$Hgp" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="31Fn7oZ$Hgq" role="3cqZAp">
              <node concept="2OqwBi" id="31Fn7oZ$Hgr" role="3clFbG">
                <node concept="2OqwBi" id="31Fn7oZ$Hgs" role="2Oq$k0">
                  <node concept="37vLTw" id="31Fn7oZ$Hgt" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZ$Hg0" resolve="brokenPorts" />
                  </node>
                  <node concept="2OwXpG" id="31Fn7oZ_3uD" role="2OqNvi">
                    <ref role="2Oxat5" node="31Fn7oZuTfW" resolve="mySockets" />
                  </node>
                </node>
                <node concept="2Ke9KJ" id="31Fn7oZ$Hgv" role="2OqNvi">
                  <node concept="37vLTw" id="31Fn7oZ$Hgw" role="25WWJ7">
                    <ref role="3cqZAo" node="31Fn7oZ$HfV" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="31Fn7oZ$Hgx" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZ$Hgy" role="3uHU7B">
              <ref role="3cqZAo" node="31Fn7oZ$Hg8" resolve="nameIndex" />
            </node>
            <node concept="3cmrfG" id="31Fn7oZ$Hgz" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="31Fn7oZ$Hg$" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZ$Hg_" role="3cqZAk">
            <node concept="1pGfFk" id="31Fn7oZ$HgA" role="2ShVmc">
              <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
              <node concept="37vLTw" id="31Fn7oZ$HgB" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZ$HfV" resolve="name" />
              </node>
              <node concept="Rm8GO" id="31Fn7oZ$WMo" role="37wK5m">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
              </node>
              <node concept="37vLTw" id="31Fn7oZ$HgD" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZ$Hg8" resolve="nameIndex" />
              </node>
              <node concept="3clFbT" id="31Fn7oZ$HgE" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="31Fn7oZ$HgF" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZ$HgG" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZ$HgH" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZ_bdY" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZ_77N" role="jymVt">
      <property role="TrG5h" value="reportBrokenPlug" />
      <node concept="37vLTG" id="31Fn7oZ_77O" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="6mkmem0EFHj" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZ_77Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="31Fn7oZ_77R" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="31Fn7oZ_77S" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="31Fn7oZ_77T" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="31Fn7oZ_77U" role="3clF47">
        <node concept="3cpWs8" id="31Fn7oZ_77V" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZ_77W" role="3cpWs9">
            <property role="TrG5h" value="brokenPorts" />
            <node concept="3uibUv" id="31Fn7oZ_77X" role="1tU5fm">
              <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
            </node>
            <node concept="2OqwBi" id="31Fn7oZ_77Y" role="33vP2m">
              <node concept="37vLTw" id="31Fn7oZ_77Z" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZwb0h" resolve="myFBBrokenPorts" />
              </node>
              <node concept="liA8E" id="31Fn7oZ_780" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                <node concept="37vLTw" id="31Fn7oZ_781" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZ_77O" resolve="fb" />
                </node>
                <node concept="37vLTw" id="31Fn7oZ_782" role="37wK5m">
                  <ref role="3cqZAo" node="31Fn7oZxv_Y" resolve="BROKEN_PORTS_FACTORY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="31Fn7oZ_783" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZ_784" role="3cpWs9">
            <property role="TrG5h" value="nameIndex" />
            <node concept="10Oyi0" id="31Fn7oZ_785" role="1tU5fm" />
            <node concept="2OqwBi" id="31Fn7oZ_786" role="33vP2m">
              <node concept="2OqwBi" id="31Fn7oZ_787" role="2Oq$k0">
                <node concept="37vLTw" id="31Fn7oZ_788" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZ_77W" resolve="brokenPorts" />
                </node>
                <node concept="2OwXpG" id="31Fn7oZ_jeK" role="2OqNvi">
                  <ref role="2Oxat5" node="31Fn7oZuT5q" resolve="myPlugs" />
                </node>
              </node>
              <node concept="2WmjW8" id="31Fn7oZ_78a" role="2OqNvi">
                <node concept="37vLTw" id="31Fn7oZ_78b" role="25WWJ7">
                  <ref role="3cqZAo" node="31Fn7oZ_77R" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZ_78c" role="3cqZAp">
          <node concept="3clFbS" id="31Fn7oZ_78d" role="3clFbx">
            <node concept="3clFbF" id="31Fn7oZ_78e" role="3cqZAp">
              <node concept="37vLTI" id="31Fn7oZ_78f" role="3clFbG">
                <node concept="37vLTw" id="31Fn7oZ_78g" role="37vLTJ">
                  <ref role="3cqZAo" node="31Fn7oZ_784" resolve="nameIndex" />
                </node>
                <node concept="2OqwBi" id="31Fn7oZ_78h" role="37vLTx">
                  <node concept="2OqwBi" id="31Fn7oZ_78i" role="2Oq$k0">
                    <node concept="37vLTw" id="31Fn7oZ_78j" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZ_77W" resolve="brokenPorts" />
                    </node>
                    <node concept="2OwXpG" id="31Fn7oZ_nBo" role="2OqNvi">
                      <ref role="2Oxat5" node="31Fn7oZuT5q" resolve="myPlugs" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="31Fn7oZ_78l" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="31Fn7oZ_78m" role="3cqZAp">
              <node concept="2OqwBi" id="31Fn7oZ_78n" role="3clFbG">
                <node concept="2OqwBi" id="31Fn7oZ_78o" role="2Oq$k0">
                  <node concept="37vLTw" id="31Fn7oZ_78p" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZ_77W" resolve="brokenPorts" />
                  </node>
                  <node concept="2OwXpG" id="31Fn7oZ_nDH" role="2OqNvi">
                    <ref role="2Oxat5" node="31Fn7oZuT5q" resolve="myPlugs" />
                  </node>
                </node>
                <node concept="2Ke9KJ" id="31Fn7oZ_78r" role="2OqNvi">
                  <node concept="37vLTw" id="31Fn7oZ_78s" role="25WWJ7">
                    <ref role="3cqZAo" node="31Fn7oZ_77R" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="31Fn7oZ_78t" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZ_78u" role="3uHU7B">
              <ref role="3cqZAo" node="31Fn7oZ_784" resolve="nameIndex" />
            </node>
            <node concept="3cmrfG" id="31Fn7oZ_78v" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="31Fn7oZ_78w" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZ_78x" role="3cqZAk">
            <node concept="1pGfFk" id="31Fn7oZ_78y" role="2ShVmc">
              <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
              <node concept="37vLTw" id="31Fn7oZ_78z" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZ_77R" resolve="name" />
              </node>
              <node concept="Rm8GO" id="31Fn7oZ_78$" role="37wK5m">
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
              </node>
              <node concept="37vLTw" id="31Fn7oZ_78_" role="37wK5m">
                <ref role="3cqZAo" node="31Fn7oZ_784" resolve="nameIndex" />
              </node>
              <node concept="3clFbT" id="31Fn7oZ_78A" role="37wK5m" />
              <node concept="3clFbT" id="31Fn7oZ_78B" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZ_78C" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZ_78D" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZwkR4" role="jymVt" />
    <node concept="Wx3nA" id="31Fn7oZxv_Y" role="jymVt">
      <property role="TrG5h" value="BROKEN_PORTS_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="31Fn7oZxts7" role="1B3o_S" />
      <node concept="1bVj0M" id="31Fn7oZx5_c" role="33vP2m">
        <node concept="3clFbS" id="31Fn7oZx5_e" role="1bW5cS">
          <node concept="3clFbF" id="31Fn7oZxfzr" role="3cqZAp">
            <node concept="2ShNRf" id="31Fn7oZxfzp" role="3clFbG">
              <node concept="HV5vD" id="31Fn7oZxhPN" role="2ShVmc">
                <ref role="HV5vE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="31Fn7oZx9UN" role="1bW2Oz">
          <property role="TrG5h" value="fb" />
          <node concept="3uibUv" id="6mkmem0E8N1" role="1tU5fm">
            <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="31Fn7oZxJw2" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="6mkmem0E4jq" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="3uibUv" id="31Fn7oZxQNB" role="11_B2D">
          <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZuPLH" role="jymVt" />
    <node concept="312cEu" id="31Fn7oZuPMK" role="jymVt">
      <property role="TrG5h" value="FBInstanceBrokenPorts" />
      <node concept="312cEg" id="31Fn7oZuPQ8" role="jymVt">
        <property role="TrG5h" value="myInputEvents" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="31Fn7oZyuJB" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZyuJD" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="2ShNRf" id="31Fn7oZuPQT" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuR9v" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuSr$" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="31Fn7oZuSw_" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="31Fn7oZuS_9" role="jymVt">
        <property role="TrG5h" value="myOutputEvents" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuS_c" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuS_d" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuS_e" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="31Fn7oZuS_f" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZywIm" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZywIo" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuS_u" role="jymVt">
        <property role="TrG5h" value="myInputDatas" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuS_x" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuS_y" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuS_z" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="31Fn7oZuS_$" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZyyu5" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZyyu7" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuSFa" role="jymVt">
        <property role="TrG5h" value="myOutputDatas" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuSFd" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuSFe" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuSFf" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="31Fn7oZuSFg" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZy$dM" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZy$dO" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuT5q" role="jymVt">
        <property role="TrG5h" value="myPlugs" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuT5t" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuT5u" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuT5v" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="31Fn7oZuT5w" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZy_Bg" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZy_Bi" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuTfW" role="jymVt">
        <property role="TrG5h" value="mySockets" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuTfZ" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuTg0" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuTg1" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="31Fn7oZuTg2" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZyBmV" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZyBmX" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="31Fn7oZuPMn" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="31Fn7oZuTqt" role="jymVt" />
    <node concept="312cEu" id="31Fn7oZuTwK" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TypeDescriptorAdapter" />
      <node concept="312cEg" id="31Fn7oZuT_x" role="jymVt">
        <property role="TrG5h" value="myOriginal" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="31Fn7oZuT_5" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZJGDp" role="1tU5fm">
          <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuTF0" role="jymVt">
        <property role="TrG5h" value="myBrokenTypeName" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="31Fn7oZuTDO" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuTE$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuTCt" role="jymVt">
        <property role="TrG5h" value="myBrokenPorts" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="31Fn7oZuTB0" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuTBH" role="1tU5fm">
          <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
        </node>
      </node>
      <node concept="2tJIrI" id="31Fn7oZuTFV" role="jymVt" />
      <node concept="3Tm6S6" id="31Fn7oZuTsE" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZuT$i" role="EKbjA">
        <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
      </node>
      <node concept="3clFbW" id="31Fn7oZuTGz" role="jymVt">
        <node concept="3cqZAl" id="31Fn7oZuTG$" role="3clF45" />
        <node concept="3Tm1VV" id="31Fn7oZuTG_" role="1B3o_S" />
        <node concept="3clFbS" id="31Fn7oZuTGB" role="3clF47">
          <node concept="3clFbF" id="31Fn7oZuTGF" role="3cqZAp">
            <node concept="37vLTI" id="31Fn7oZuTGH" role="3clFbG">
              <node concept="37vLTw" id="31Fn7oZuTGO" role="37vLTx">
                <ref role="3cqZAo" node="31Fn7oZuTGE" resolve="original" />
              </node>
              <node concept="37vLTw" id="31Fn7oZuUkx" role="37vLTJ">
                <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="31Fn7oZuTGR" role="3cqZAp">
            <node concept="37vLTI" id="31Fn7oZuTGT" role="3clFbG">
              <node concept="37vLTw" id="31Fn7oZuTH0" role="37vLTx">
                <ref role="3cqZAo" node="31Fn7oZuTGQ" resolve="brokenTypeName" />
              </node>
              <node concept="37vLTw" id="31Fn7oZuUmu" role="37vLTJ">
                <ref role="3cqZAo" node="31Fn7oZuTF0" resolve="myBrokenTypeName" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="31Fn7oZwk82" role="3cqZAp">
            <node concept="37vLTI" id="31Fn7oZwkqV" role="3clFbG">
              <node concept="37vLTw" id="31Fn7oZwkA4" role="37vLTx">
                <ref role="3cqZAo" node="31Fn7oZwjPO" resolve="brokenPorts" />
              </node>
              <node concept="37vLTw" id="31Fn7oZwk80" role="37vLTJ">
                <ref role="3cqZAo" node="31Fn7oZuTCt" resolve="myBrokenPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="31Fn7oZuTGE" role="3clF46">
          <property role="TrG5h" value="original" />
          <node concept="3uibUv" id="31Fn7oZJCDc" role="1tU5fm">
            <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
          </node>
        </node>
        <node concept="37vLTG" id="31Fn7oZuTGQ" role="3clF46">
          <property role="TrG5h" value="brokenTypeName" />
          <node concept="3uibUv" id="31Fn7oZuTGP" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="31Fn7oZwjPO" role="3clF46">
          <property role="TrG5h" value="brokenPorts" />
          <node concept="3uibUv" id="31Fn7oZwk2b" role="1tU5fm">
            <ref role="3uigEE" node="31Fn7oZuPMK" resolve="NetworkBrokenTargets.FBInstanceBrokenPorts" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="31Fn7oZuUnT" role="jymVt" />
      <node concept="3clFb_" id="31Fn7oZI_Ik" role="jymVt">
        <property role="TrG5h" value="getDeclaration" />
        <node concept="3Tm1VV" id="31Fn7oZI_Io" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZKZQO" role="3clF45">
          <ref role="3uigEE" to="cwd8:~NamedDeclaration" resolve="NamedDeclaration" />
        </node>
        <node concept="3clFbS" id="31Fn7oZI_Iq" role="3clF47">
          <node concept="3clFbF" id="31Fn7oZJRok" role="3cqZAp">
            <node concept="3K4zz7" id="31Fn7oZJRQP" role="3clFbG">
              <node concept="10Nm6u" id="31Fn7oZJSKQ" role="3K4GZi" />
              <node concept="3y3z36" id="31Fn7oZJSwJ" role="3K4Cdx">
                <node concept="37vLTw" id="31Fn7oZJRoi" role="3uHU7B">
                  <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                </node>
                <node concept="10Nm6u" id="31Fn7oZJRAH" role="3uHU7w" />
              </node>
              <node concept="2OqwBi" id="31Fn7oZJIwI" role="3K4E3e">
                <node concept="37vLTw" id="31Fn7oZIIvM" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                </node>
                <node concept="liA8E" id="31Fn7oZJQq4" role="2OqNvi">
                  <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDeclaration()" resolve="getDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZI_Ir" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="31Fn7oZIxaO" role="jymVt" />
      <node concept="3clFb_" id="31Fn7oZuUq1" role="jymVt">
        <property role="TrG5h" value="getTypeName" />
        <node concept="3Tm1VV" id="31Fn7oZuUq3" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuUq4" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="31Fn7oZuUq5" role="3clF47">
          <node concept="3clFbF" id="31Fn7oZuURJ" role="3cqZAp">
            <node concept="3K4zz7" id="31Fn7oZuVtk" role="3clFbG">
              <node concept="2OqwBi" id="31Fn7oZuVKi" role="3K4E3e">
                <node concept="37vLTw" id="31Fn7oZuVAT" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                </node>
                <node concept="liA8E" id="31Fn7oZuVZJ" role="2OqNvi">
                  <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getTypeName()" resolve="getTypeName" />
                </node>
              </node>
              <node concept="37vLTw" id="31Fn7oZuWa5" role="3K4GZi">
                <ref role="3cqZAo" node="31Fn7oZuTF0" resolve="myBrokenTypeName" />
              </node>
              <node concept="3y3z36" id="31Fn7oZuV8U" role="3K4Cdx">
                <node concept="10Nm6u" id="31Fn7oZuVsy" role="3uHU7w" />
                <node concept="37vLTw" id="31Fn7oZuURG" role="3uHU7B">
                  <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZuUq6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="31Fn7oZuUq9" role="jymVt">
        <property role="TrG5h" value="getEventInputPorts" />
        <node concept="3Tm1VV" id="31Fn7oZuUqb" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuUqc" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="31Fn7oZuUqd" role="11_B2D">
            <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="31Fn7oZuUqe" role="3clF47">
          <node concept="3cpWs8" id="31Fn7oZuXvh" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZuXvi" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="31Fn7oZuXmL" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="31Fn7oZuXmO" role="11_B2D">
                  <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                </node>
              </node>
              <node concept="2ShNRf" id="31Fn7oZuXvj" role="33vP2m">
                <node concept="1pGfFk" id="31Fn7oZuXvk" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="31Fn7oZuXvl" role="1pMfVU">
                    <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="31Fn7oZvrmL" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZvrmO" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="31Fn7oZvrmJ" role="1tU5fm" />
              <node concept="3cmrfG" id="31Fn7oZvrZ$" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="31Fn7oZuYHN" role="3cqZAp">
            <node concept="3clFbS" id="31Fn7oZuYHP" role="3clFbx">
              <node concept="3cpWs8" id="31Fn7oZvBgt" role="3cqZAp">
                <node concept="3cpWsn" id="31Fn7oZvBgu" role="3cpWs9">
                  <property role="TrG5h" value="ports" />
                  <node concept="3uibUv" id="31Fn7oZv$NI" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="31Fn7oZv$NL" role="11_B2D">
                      <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvBgv" role="33vP2m">
                    <node concept="37vLTw" id="31Fn7oZvBgw" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvBgx" role="2OqNvi">
                      <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getEventInputPorts()" resolve="getEventInputPorts" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZuZde" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZv0dl" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZuZdc" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZuXvi" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZv1_g" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.addAll(java.util.Collection)" resolve="addAll" />
                    <node concept="37vLTw" id="31Fn7oZvBgy" role="37wK5m">
                      <ref role="3cqZAo" node="31Fn7oZvBgu" resolve="ports" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZvs6n" role="3cqZAp">
                <node concept="37vLTI" id="31Fn7oZvsSN" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvs6l" role="37vLTJ">
                    <ref role="3cqZAo" node="31Fn7oZvrmO" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvtQn" role="37vLTx">
                    <node concept="37vLTw" id="31Fn7oZvBgz" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZvBgu" resolve="ports" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvuuA" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="31Fn7oZuYZy" role="3clFbw">
              <node concept="10Nm6u" id="31Fn7oZuZcf" role="3uHU7w" />
              <node concept="37vLTw" id="31Fn7oZuYIT" role="3uHU7B">
                <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="31Fn7oZvpxL" role="3cqZAp">
            <node concept="2GrKxI" id="31Fn7oZvpxN" role="2Gsz3X">
              <property role="TrG5h" value="eventName" />
            </node>
            <node concept="3clFbS" id="31Fn7oZvpxR" role="2LFqv$">
              <node concept="3clFbF" id="31Fn7oZvuUS" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZvvV3" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvuUR" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZuXvi" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZvx40" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="31Fn7oZvgHO" role="37wK5m">
                      <node concept="1pGfFk" id="31Fn7oZvh20" role="2ShVmc">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
                        <node concept="2GrUjf" id="31Fn7oZvzyc" role="37wK5m">
                          <ref role="2Gs0qQ" node="31Fn7oZvpxN" resolve="eventName" />
                        </node>
                        <node concept="Rm8GO" id="31Fn7oZvi9e" role="37wK5m">
                          <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                          <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                        </node>
                        <node concept="3uNrnE" id="31Fn7oZvy8c" role="37wK5m">
                          <node concept="37vLTw" id="31Fn7oZvy8e" role="2$L3a6">
                            <ref role="3cqZAo" node="31Fn7oZvrmO" resolve="i" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="31Fn7oZvyPD" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="3clFbT" id="31Fn7oZvzle" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="31Fn7oZv5Ck" role="2GsD0m">
              <node concept="37vLTw" id="31Fn7oZv5ru" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZuTCt" resolve="myBrokenPorts" />
              </node>
              <node concept="2OwXpG" id="31Fn7oZv64i" role="2OqNvi">
                <ref role="2Oxat5" node="31Fn7oZuPQ8" resolve="myInputEvents" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="31Fn7oZv$p4" role="3cqZAp">
            <node concept="37vLTw" id="31Fn7oZv$qb" role="3cqZAk">
              <ref role="3cqZAo" node="31Fn7oZuXvi" resolve="list" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZuUqf" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="31Fn7oZuUqi" role="jymVt">
        <property role="TrG5h" value="getEventOutputPorts" />
        <node concept="3Tm1VV" id="31Fn7oZuUqk" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuUql" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="31Fn7oZuUqm" role="11_B2D">
            <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="31Fn7oZuUqn" role="3clF47">
          <node concept="3cpWs8" id="31Fn7oZv$W_" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZv$WA" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="31Fn7oZv$WB" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="31Fn7oZv$WC" role="11_B2D">
                  <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                </node>
              </node>
              <node concept="2ShNRf" id="31Fn7oZv$WD" role="33vP2m">
                <node concept="1pGfFk" id="31Fn7oZv$WE" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="31Fn7oZv$WF" role="1pMfVU">
                    <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="31Fn7oZv$WG" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZv$WH" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="31Fn7oZv$WI" role="1tU5fm" />
              <node concept="3cmrfG" id="31Fn7oZv$WJ" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="31Fn7oZv$WK" role="3cqZAp">
            <node concept="3clFbS" id="31Fn7oZv$WL" role="3clFbx">
              <node concept="3cpWs8" id="31Fn7oZvAnp" role="3cqZAp">
                <node concept="3cpWsn" id="31Fn7oZvAnq" role="3cpWs9">
                  <property role="TrG5h" value="ports" />
                  <node concept="3uibUv" id="31Fn7oZv_Vz" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="31Fn7oZv_VA" role="11_B2D">
                      <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvAnr" role="33vP2m">
                    <node concept="37vLTw" id="31Fn7oZvAns" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvAnt" role="2OqNvi">
                      <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getEventOutputPorts()" resolve="getEventOutputPorts" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZv$WM" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZv$WN" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZv$WO" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZv$WA" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZv$WP" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.addAll(java.util.Collection)" resolve="addAll" />
                    <node concept="37vLTw" id="31Fn7oZvAnu" role="37wK5m">
                      <ref role="3cqZAo" node="31Fn7oZvAnq" resolve="ports" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZv$WT" role="3cqZAp">
                <node concept="37vLTI" id="31Fn7oZv$WU" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZv$WV" role="37vLTJ">
                    <ref role="3cqZAo" node="31Fn7oZv$WH" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZv$WW" role="37vLTx">
                    <node concept="37vLTw" id="31Fn7oZvAnv" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZvAnq" resolve="ports" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZv$X0" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="31Fn7oZv$X1" role="3clFbw">
              <node concept="10Nm6u" id="31Fn7oZv$X2" role="3uHU7w" />
              <node concept="37vLTw" id="31Fn7oZv$X3" role="3uHU7B">
                <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="31Fn7oZv$X4" role="3cqZAp">
            <node concept="2GrKxI" id="31Fn7oZv$X5" role="2Gsz3X">
              <property role="TrG5h" value="eventName" />
            </node>
            <node concept="3clFbS" id="31Fn7oZv$X6" role="2LFqv$">
              <node concept="3clFbF" id="31Fn7oZv$X7" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZv$X8" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZv$X9" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZv$WA" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZv$Xa" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="31Fn7oZv$Xb" role="37wK5m">
                      <node concept="1pGfFk" id="31Fn7oZv$Xc" role="2ShVmc">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
                        <node concept="2GrUjf" id="31Fn7oZv$Xd" role="37wK5m">
                          <ref role="2Gs0qQ" node="31Fn7oZv$X5" resolve="eventName" />
                        </node>
                        <node concept="Rm8GO" id="31Fn7oZv$Xe" role="37wK5m">
                          <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                          <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                        </node>
                        <node concept="3uNrnE" id="31Fn7oZv$Xf" role="37wK5m">
                          <node concept="37vLTw" id="31Fn7oZv$Xg" role="2$L3a6">
                            <ref role="3cqZAo" node="31Fn7oZv$WH" resolve="i" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="31Fn7oZv$Xh" role="37wK5m" />
                        <node concept="3clFbT" id="31Fn7oZv$Xi" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="31Fn7oZv$Xj" role="2GsD0m">
              <node concept="37vLTw" id="31Fn7oZv$Xk" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZuTCt" resolve="myBrokenPorts" />
              </node>
              <node concept="2OwXpG" id="31Fn7oZvCl_" role="2OqNvi">
                <ref role="2Oxat5" node="31Fn7oZuS_9" resolve="myOutputEvents" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="31Fn7oZv$Xm" role="3cqZAp">
            <node concept="37vLTw" id="31Fn7oZv$Xn" role="3cqZAk">
              <ref role="3cqZAo" node="31Fn7oZv$WA" resolve="list" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZuUqo" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="31Fn7oZuUqr" role="jymVt">
        <property role="TrG5h" value="getDataInputPorts" />
        <node concept="3Tm1VV" id="31Fn7oZuUqt" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuUqu" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="31Fn7oZuUqv" role="11_B2D">
            <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="31Fn7oZuUqw" role="3clF47">
          <node concept="3cpWs8" id="31Fn7oZvE9l" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZvE9m" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="31Fn7oZvE9n" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="31Fn7oZvE9o" role="11_B2D">
                  <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                </node>
              </node>
              <node concept="2ShNRf" id="31Fn7oZvE9p" role="33vP2m">
                <node concept="1pGfFk" id="31Fn7oZvE9q" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="31Fn7oZvE9r" role="1pMfVU">
                    <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="31Fn7oZvE9s" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZvE9t" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="31Fn7oZvE9u" role="1tU5fm" />
              <node concept="3cmrfG" id="31Fn7oZvE9v" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="31Fn7oZvE9w" role="3cqZAp">
            <node concept="3clFbS" id="31Fn7oZvE9x" role="3clFbx">
              <node concept="3cpWs8" id="31Fn7oZvE9y" role="3cqZAp">
                <node concept="3cpWsn" id="31Fn7oZvE9z" role="3cpWs9">
                  <property role="TrG5h" value="ports" />
                  <node concept="3uibUv" id="31Fn7oZvE9$" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="31Fn7oZvE9_" role="11_B2D">
                      <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvE9A" role="33vP2m">
                    <node concept="37vLTw" id="31Fn7oZvE9B" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvFmI" role="2OqNvi">
                      <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDataInputPorts()" resolve="getDataInputPorts" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZvE9D" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZvE9E" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvE9F" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZvE9m" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZvE9G" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.addAll(java.util.Collection)" resolve="addAll" />
                    <node concept="37vLTw" id="31Fn7oZvE9H" role="37wK5m">
                      <ref role="3cqZAo" node="31Fn7oZvE9z" resolve="ports" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZvE9I" role="3cqZAp">
                <node concept="37vLTI" id="31Fn7oZvE9J" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvE9K" role="37vLTJ">
                    <ref role="3cqZAo" node="31Fn7oZvE9t" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvE9L" role="37vLTx">
                    <node concept="37vLTw" id="31Fn7oZvE9M" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZvE9z" resolve="ports" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvE9N" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="31Fn7oZvE9O" role="3clFbw">
              <node concept="10Nm6u" id="31Fn7oZvE9P" role="3uHU7w" />
              <node concept="37vLTw" id="31Fn7oZvE9Q" role="3uHU7B">
                <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="31Fn7oZvE9R" role="3cqZAp">
            <node concept="2GrKxI" id="31Fn7oZvE9S" role="2Gsz3X">
              <property role="TrG5h" value="eventName" />
            </node>
            <node concept="3clFbS" id="31Fn7oZvE9T" role="2LFqv$">
              <node concept="3clFbF" id="31Fn7oZvE9U" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZvE9V" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvE9W" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZvE9m" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZvE9X" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="31Fn7oZvE9Y" role="37wK5m">
                      <node concept="1pGfFk" id="31Fn7oZvE9Z" role="2ShVmc">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
                        <node concept="2GrUjf" id="31Fn7oZvEa0" role="37wK5m">
                          <ref role="2Gs0qQ" node="31Fn7oZvE9S" resolve="eventName" />
                        </node>
                        <node concept="Rm8GO" id="31Fn7oZvFPD" role="37wK5m">
                          <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                          <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                        </node>
                        <node concept="3uNrnE" id="31Fn7oZvEa2" role="37wK5m">
                          <node concept="37vLTw" id="31Fn7oZvEa3" role="2$L3a6">
                            <ref role="3cqZAo" node="31Fn7oZvE9t" resolve="i" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="31Fn7oZvEa4" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="3clFbT" id="31Fn7oZvEa5" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="31Fn7oZvEa6" role="2GsD0m">
              <node concept="37vLTw" id="31Fn7oZvEa7" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZuTCt" resolve="myBrokenPorts" />
              </node>
              <node concept="2OwXpG" id="31Fn7oZvGL4" role="2OqNvi">
                <ref role="2Oxat5" node="31Fn7oZuS_u" resolve="myInputDatas" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="31Fn7oZvEa9" role="3cqZAp">
            <node concept="37vLTw" id="31Fn7oZvEaa" role="3cqZAk">
              <ref role="3cqZAo" node="31Fn7oZvE9m" resolve="list" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZuUqx" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="31Fn7oZuUq$" role="jymVt">
        <property role="TrG5h" value="getDataOutputPorts" />
        <node concept="3Tm1VV" id="31Fn7oZuUqA" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuUqB" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="31Fn7oZuUqC" role="11_B2D">
            <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="31Fn7oZuUqD" role="3clF47">
          <node concept="3cpWs8" id="31Fn7oZvHuN" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZvHuO" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="31Fn7oZvHuP" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="31Fn7oZvHuQ" role="11_B2D">
                  <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                </node>
              </node>
              <node concept="2ShNRf" id="31Fn7oZvHuR" role="33vP2m">
                <node concept="1pGfFk" id="31Fn7oZvHuS" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="31Fn7oZvHuT" role="1pMfVU">
                    <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="31Fn7oZvHuU" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZvHuV" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="31Fn7oZvHuW" role="1tU5fm" />
              <node concept="3cmrfG" id="31Fn7oZvHuX" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="31Fn7oZvHuY" role="3cqZAp">
            <node concept="3clFbS" id="31Fn7oZvHuZ" role="3clFbx">
              <node concept="3cpWs8" id="31Fn7oZvHv0" role="3cqZAp">
                <node concept="3cpWsn" id="31Fn7oZvHv1" role="3cpWs9">
                  <property role="TrG5h" value="ports" />
                  <node concept="3uibUv" id="31Fn7oZvHv2" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="31Fn7oZvHv3" role="11_B2D">
                      <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvHv4" role="33vP2m">
                    <node concept="37vLTw" id="31Fn7oZvHv5" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvIOl" role="2OqNvi">
                      <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDataOutputPorts()" resolve="getDataOutputPorts" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZvHv7" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZvHv8" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvHv9" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZvHuO" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZvHva" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.addAll(java.util.Collection)" resolve="addAll" />
                    <node concept="37vLTw" id="31Fn7oZvHvb" role="37wK5m">
                      <ref role="3cqZAo" node="31Fn7oZvHv1" resolve="ports" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZvHvc" role="3cqZAp">
                <node concept="37vLTI" id="31Fn7oZvHvd" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvHve" role="37vLTJ">
                    <ref role="3cqZAo" node="31Fn7oZvHuV" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvHvf" role="37vLTx">
                    <node concept="37vLTw" id="31Fn7oZvHvg" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZvHv1" resolve="ports" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvHvh" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="31Fn7oZvHvi" role="3clFbw">
              <node concept="10Nm6u" id="31Fn7oZvHvj" role="3uHU7w" />
              <node concept="37vLTw" id="31Fn7oZvHvk" role="3uHU7B">
                <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="31Fn7oZvHvl" role="3cqZAp">
            <node concept="2GrKxI" id="31Fn7oZvHvm" role="2Gsz3X">
              <property role="TrG5h" value="eventName" />
            </node>
            <node concept="3clFbS" id="31Fn7oZvHvn" role="2LFqv$">
              <node concept="3clFbF" id="31Fn7oZvHvo" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZvHvp" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvHvq" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZvHuO" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZvHvr" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="31Fn7oZvHvs" role="37wK5m">
                      <node concept="1pGfFk" id="31Fn7oZvHvt" role="2ShVmc">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
                        <node concept="2GrUjf" id="31Fn7oZvHvu" role="37wK5m">
                          <ref role="2Gs0qQ" node="31Fn7oZvHvm" resolve="eventName" />
                        </node>
                        <node concept="Rm8GO" id="31Fn7oZvHvv" role="37wK5m">
                          <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                          <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                        </node>
                        <node concept="3uNrnE" id="31Fn7oZvHvw" role="37wK5m">
                          <node concept="37vLTw" id="31Fn7oZvHvx" role="2$L3a6">
                            <ref role="3cqZAo" node="31Fn7oZvHuV" resolve="i" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="31Fn7oZvHvy" role="37wK5m" />
                        <node concept="3clFbT" id="31Fn7oZvHvz" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="31Fn7oZvHv$" role="2GsD0m">
              <node concept="37vLTw" id="31Fn7oZvHv_" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZuTCt" resolve="myBrokenPorts" />
              </node>
              <node concept="2OwXpG" id="31Fn7oZvJey" role="2OqNvi">
                <ref role="2Oxat5" node="31Fn7oZuSFa" resolve="myOutputDatas" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="31Fn7oZvHvB" role="3cqZAp">
            <node concept="37vLTw" id="31Fn7oZvHvC" role="3cqZAk">
              <ref role="3cqZAo" node="31Fn7oZvHuO" resolve="list" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZuUqE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="31Fn7oZuUqH" role="jymVt">
        <property role="TrG5h" value="getSocketPorts" />
        <node concept="3Tm1VV" id="31Fn7oZuUqJ" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuUqK" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="31Fn7oZuUqL" role="11_B2D">
            <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="31Fn7oZuUqM" role="3clF47">
          <node concept="3cpWs8" id="31Fn7oZvLjw" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZvLjx" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="31Fn7oZvLjy" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="31Fn7oZvLjz" role="11_B2D">
                  <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                </node>
              </node>
              <node concept="2ShNRf" id="31Fn7oZvLj$" role="33vP2m">
                <node concept="1pGfFk" id="31Fn7oZvLj_" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="31Fn7oZvLjA" role="1pMfVU">
                    <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="31Fn7oZvLjB" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZvLjC" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="31Fn7oZvLjD" role="1tU5fm" />
              <node concept="3cmrfG" id="31Fn7oZvLjE" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="31Fn7oZvLjF" role="3cqZAp">
            <node concept="3clFbS" id="31Fn7oZvLjG" role="3clFbx">
              <node concept="3cpWs8" id="31Fn7oZvLjH" role="3cqZAp">
                <node concept="3cpWsn" id="31Fn7oZvLjI" role="3cpWs9">
                  <property role="TrG5h" value="ports" />
                  <node concept="3uibUv" id="31Fn7oZvLjJ" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="31Fn7oZvLjK" role="11_B2D">
                      <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvLjL" role="33vP2m">
                    <node concept="37vLTw" id="31Fn7oZvLjM" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvMLb" role="2OqNvi">
                      <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getSocketPorts()" resolve="getSocketPorts" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZvLjO" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZvLjP" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvLjQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZvLjx" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZvLjR" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.addAll(java.util.Collection)" resolve="addAll" />
                    <node concept="37vLTw" id="31Fn7oZvLjS" role="37wK5m">
                      <ref role="3cqZAo" node="31Fn7oZvLjI" resolve="ports" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZvLjT" role="3cqZAp">
                <node concept="37vLTI" id="31Fn7oZvLjU" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvLjV" role="37vLTJ">
                    <ref role="3cqZAo" node="31Fn7oZvLjC" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvLjW" role="37vLTx">
                    <node concept="37vLTw" id="31Fn7oZvLjX" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZvLjI" resolve="ports" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvLjY" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="31Fn7oZvLjZ" role="3clFbw">
              <node concept="10Nm6u" id="31Fn7oZvLk0" role="3uHU7w" />
              <node concept="37vLTw" id="31Fn7oZvLk1" role="3uHU7B">
                <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="31Fn7oZvLk2" role="3cqZAp">
            <node concept="2GrKxI" id="31Fn7oZvLk3" role="2Gsz3X">
              <property role="TrG5h" value="eventName" />
            </node>
            <node concept="3clFbS" id="31Fn7oZvLk4" role="2LFqv$">
              <node concept="3clFbF" id="31Fn7oZvLk5" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZvLk6" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvLk7" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZvLjx" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZvLk8" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="31Fn7oZvLk9" role="37wK5m">
                      <node concept="1pGfFk" id="31Fn7oZvLka" role="2ShVmc">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
                        <node concept="2GrUjf" id="31Fn7oZvLkb" role="37wK5m">
                          <ref role="2Gs0qQ" node="31Fn7oZvLk3" resolve="eventName" />
                        </node>
                        <node concept="Rm8GO" id="31Fn7oZvOw0" role="37wK5m">
                          <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                          <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                        </node>
                        <node concept="3uNrnE" id="31Fn7oZvLkd" role="37wK5m">
                          <node concept="37vLTw" id="31Fn7oZvLke" role="2$L3a6">
                            <ref role="3cqZAo" node="31Fn7oZvLjC" resolve="i" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="31Fn7oZvLkf" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="3clFbT" id="31Fn7oZvLkg" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="31Fn7oZvLkh" role="2GsD0m">
              <node concept="37vLTw" id="31Fn7oZvLki" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZuTCt" resolve="myBrokenPorts" />
              </node>
              <node concept="2OwXpG" id="31Fn7oZvNbL" role="2OqNvi">
                <ref role="2Oxat5" node="31Fn7oZuTfW" resolve="mySockets" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="31Fn7oZvLkk" role="3cqZAp">
            <node concept="37vLTw" id="31Fn7oZvLkl" role="3cqZAk">
              <ref role="3cqZAo" node="31Fn7oZvLjx" resolve="list" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZuUqN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="31Fn7oZuUqQ" role="jymVt">
        <property role="TrG5h" value="getPlugPorts" />
        <node concept="3Tm1VV" id="31Fn7oZuUqS" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuUqT" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="31Fn7oZuUqU" role="11_B2D">
            <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
          </node>
        </node>
        <node concept="3clFbS" id="31Fn7oZuUqV" role="3clF47">
          <node concept="3cpWs8" id="31Fn7oZvTRd" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZvTRe" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="3uibUv" id="31Fn7oZvTRf" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                <node concept="3uibUv" id="31Fn7oZvTRg" role="11_B2D">
                  <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                </node>
              </node>
              <node concept="2ShNRf" id="31Fn7oZvTRh" role="33vP2m">
                <node concept="1pGfFk" id="31Fn7oZvTRi" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="31Fn7oZvTRj" role="1pMfVU">
                    <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="31Fn7oZvTRk" role="3cqZAp">
            <node concept="3cpWsn" id="31Fn7oZvTRl" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="31Fn7oZvTRm" role="1tU5fm" />
              <node concept="3cmrfG" id="31Fn7oZvTRn" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="31Fn7oZvTRo" role="3cqZAp">
            <node concept="3clFbS" id="31Fn7oZvTRp" role="3clFbx">
              <node concept="3cpWs8" id="31Fn7oZvTRq" role="3cqZAp">
                <node concept="3cpWsn" id="31Fn7oZvTRr" role="3cpWs9">
                  <property role="TrG5h" value="ports" />
                  <node concept="3uibUv" id="31Fn7oZvTRs" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="31Fn7oZvTRt" role="11_B2D">
                      <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvTRu" role="33vP2m">
                    <node concept="37vLTw" id="31Fn7oZvTRv" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvVwA" role="2OqNvi">
                      <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getPlugPorts()" resolve="getPlugPorts" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZvTRx" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZvTRy" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvTRz" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZvTRe" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZvTR$" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.addAll(java.util.Collection)" resolve="addAll" />
                    <node concept="37vLTw" id="31Fn7oZvTR_" role="37wK5m">
                      <ref role="3cqZAo" node="31Fn7oZvTRr" resolve="ports" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31Fn7oZvTRA" role="3cqZAp">
                <node concept="37vLTI" id="31Fn7oZvTRB" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvTRC" role="37vLTJ">
                    <ref role="3cqZAo" node="31Fn7oZvTRl" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZvTRD" role="37vLTx">
                    <node concept="37vLTw" id="31Fn7oZvTRE" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZvTRr" resolve="ports" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZvTRF" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="31Fn7oZvTRG" role="3clFbw">
              <node concept="10Nm6u" id="31Fn7oZvTRH" role="3uHU7w" />
              <node concept="37vLTw" id="31Fn7oZvTRI" role="3uHU7B">
                <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="31Fn7oZvTRJ" role="3cqZAp">
            <node concept="2GrKxI" id="31Fn7oZvTRK" role="2Gsz3X">
              <property role="TrG5h" value="eventName" />
            </node>
            <node concept="3clFbS" id="31Fn7oZvTRL" role="2LFqv$">
              <node concept="3clFbF" id="31Fn7oZvTRM" role="3cqZAp">
                <node concept="2OqwBi" id="31Fn7oZvTRN" role="3clFbG">
                  <node concept="37vLTw" id="31Fn7oZvTRO" role="2Oq$k0">
                    <ref role="3cqZAo" node="31Fn7oZvTRe" resolve="list" />
                  </node>
                  <node concept="liA8E" id="31Fn7oZvTRP" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="31Fn7oZvTRQ" role="37wK5m">
                      <node concept="1pGfFk" id="31Fn7oZvTRR" role="2ShVmc">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean)" resolve="FBPortDescriptor" />
                        <node concept="2GrUjf" id="31Fn7oZvTRS" role="37wK5m">
                          <ref role="2Gs0qQ" node="31Fn7oZvTRK" resolve="eventName" />
                        </node>
                        <node concept="Rm8GO" id="31Fn7oZvTRT" role="37wK5m">
                          <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                          <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                        </node>
                        <node concept="3uNrnE" id="31Fn7oZvTRU" role="37wK5m">
                          <node concept="37vLTw" id="31Fn7oZvTRV" role="2$L3a6">
                            <ref role="3cqZAo" node="31Fn7oZvTRl" resolve="i" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="31Fn7oZvTRW" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="3clFbT" id="31Fn7oZvTRX" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="31Fn7oZvTRY" role="2GsD0m">
              <node concept="37vLTw" id="31Fn7oZvTRZ" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZuTCt" resolve="myBrokenPorts" />
              </node>
              <node concept="2OwXpG" id="31Fn7oZvW1M" role="2OqNvi">
                <ref role="2Oxat5" node="31Fn7oZuT5q" resolve="myPlugs" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="31Fn7oZvTS1" role="3cqZAp">
            <node concept="37vLTw" id="31Fn7oZvTS2" role="3cqZAk">
              <ref role="3cqZAo" node="31Fn7oZvTRe" resolve="list" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZuUqW" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="31Fn7oZuUqZ" role="jymVt">
        <property role="TrG5h" value="getAssociatedVariablesForInputEvent" />
        <node concept="3Tm1VV" id="31Fn7oZuUr1" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuUr2" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="31Fn7oZuUr3" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
        <node concept="37vLTG" id="31Fn7oZuUr4" role="3clF46">
          <property role="TrG5h" value="eventNumber" />
          <node concept="10Oyi0" id="31Fn7oZuUr5" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="31Fn7oZuUr6" role="3clF47">
          <node concept="3clFbF" id="31Fn7oZvXwo" role="3cqZAp">
            <node concept="3K4zz7" id="31Fn7oZvXwp" role="3clFbG">
              <node concept="2YIFZM" id="31Fn7oZw0sK" role="3K4GZi">
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="3uibUv" id="31Fn7oZw2Tg" role="3PaCim">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
              <node concept="3y3z36" id="31Fn7oZvXwu" role="3K4Cdx">
                <node concept="10Nm6u" id="31Fn7oZvXwv" role="3uHU7w" />
                <node concept="37vLTw" id="31Fn7oZvXww" role="3uHU7B">
                  <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                </node>
              </node>
              <node concept="2OqwBi" id="31Fn7oZvXwq" role="3K4E3e">
                <node concept="37vLTw" id="31Fn7oZvXwr" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                </node>
                <node concept="liA8E" id="31Fn7oZvXSZ" role="2OqNvi">
                  <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getAssociatedVariablesForInputEvent(int)" resolve="getAssociatedVariablesForInputEvent" />
                  <node concept="37vLTw" id="31Fn7oZvZ3N" role="37wK5m">
                    <ref role="3cqZAo" node="31Fn7oZuUr4" resolve="eventNumber" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZuUr7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="31Fn7oZuUra" role="jymVt">
        <property role="TrG5h" value="getAssociatedVariablesForOutputEvent" />
        <node concept="3Tm1VV" id="31Fn7oZuUrc" role="1B3o_S" />
        <node concept="3uibUv" id="31Fn7oZuUrd" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="31Fn7oZuUre" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
        <node concept="37vLTG" id="31Fn7oZuUrf" role="3clF46">
          <property role="TrG5h" value="eventNumber" />
          <node concept="10Oyi0" id="31Fn7oZuUrg" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="31Fn7oZuUrh" role="3clF47">
          <node concept="3clFbF" id="31Fn7oZw5ut" role="3cqZAp">
            <node concept="3K4zz7" id="31Fn7oZw5uu" role="3clFbG">
              <node concept="2YIFZM" id="31Fn7oZw5uv" role="3K4GZi">
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="3uibUv" id="31Fn7oZw5uw" role="3PaCim">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
              <node concept="3y3z36" id="31Fn7oZw5ux" role="3K4Cdx">
                <node concept="10Nm6u" id="31Fn7oZw5uy" role="3uHU7w" />
                <node concept="37vLTw" id="31Fn7oZw5uz" role="3uHU7B">
                  <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                </node>
              </node>
              <node concept="2OqwBi" id="31Fn7oZw5u$" role="3K4E3e">
                <node concept="37vLTw" id="31Fn7oZw5u_" role="2Oq$k0">
                  <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
                </node>
                <node concept="liA8E" id="31Fn7oZw5uA" role="2OqNvi">
                  <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getAssociatedVariablesForOutputEvent(int)" resolve="getAssociatedVariablesForOutputEvent" />
                  <node concept="37vLTw" id="31Fn7oZw5uB" role="37wK5m">
                    <ref role="3cqZAo" node="31Fn7oZuUrf" resolve="eventNumber" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="31Fn7oZuUri" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZvc8b" role="jymVt" />
  </node>
  <node concept="312cEu" id="1QSEqLhWl9W">
    <property role="TrG5h" value="MPSNetworkInstanceReference" />
    <node concept="2tJIrI" id="1QSEqLhWlbo" role="jymVt" />
    <node concept="312cEg" id="1QSEqLhWlc7" role="jymVt">
      <property role="TrG5h" value="myRoot" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhWlbF" role="1B3o_S" />
      <node concept="2sp9CU" id="1QSEqLhWlcZ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1QSEqLhWldS" role="jymVt">
      <property role="TrG5h" value="myNestedList" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhWlcF" role="1B3o_S" />
      <node concept="_YKpA" id="1QSEqLhWldC" role="1tU5fm">
        <node concept="3uibUv" id="1QSEqLhWytA" role="_ZDj9">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhWWWn" role="jymVt" />
    <node concept="3clFbW" id="1QSEqLhWXdX" role="jymVt">
      <node concept="3cqZAl" id="1QSEqLhWXdY" role="3clF45" />
      <node concept="3Tm1VV" id="1QSEqLhWXdZ" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLhWXe1" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhWXe5" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhWXe7" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhWXee" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhWXe4" resolve="root" />
            </node>
            <node concept="37vLTw" id="1QSEqLhWXXU" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhWlc7" resolve="myRoot" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLhWXei" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhWXek" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhWXer" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhWXeh" resolve="nestedList" />
            </node>
            <node concept="37vLTw" id="1QSEqLhWY0Z" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhWldS" resolve="myNestedList" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhWXe4" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="2sp9CU" id="1QSEqLhWXe3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1QSEqLhWXeh" role="3clF46">
        <property role="TrG5h" value="nestedList" />
        <node concept="_YKpA" id="1QSEqLhWXef" role="1tU5fm">
          <node concept="3uibUv" id="1QSEqLhWXeg" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhWXGL" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhWlfG" role="jymVt">
      <property role="TrG5h" value="resolve" />
      <node concept="3clFbS" id="1QSEqLhWlfJ" role="3clF47">
        <node concept="3cpWs8" id="1QSEqLhWlET" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLhWlEU" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="1QSEqLhWlEv" role="1tU5fm" />
            <node concept="2OqwBi" id="1QSEqLhWlEV" role="33vP2m">
              <node concept="37vLTw" id="1QSEqLhWlEW" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLhWlc7" resolve="myRoot" />
              </node>
              <node concept="Vyspw" id="1QSEqLhWlEX" role="2OqNvi">
                <node concept="2OqwBi" id="5poOURFiQ9D" role="Vysub">
                  <node concept="37vLTw" id="1QSEqLhWlEY" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhWlgh" resolve="repository" />
                  </node>
                  <node concept="liA8E" id="5poOURFiR33" role="2OqNvi">
                    <ref role="37wK5l" to="1u7h:6YcNwH3$wj1" resolve="getMPSRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QSEqLhWr7B" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhWr7D" role="3clFbx">
            <node concept="3cpWs6" id="1QSEqLhWriW" role="3cqZAp">
              <node concept="10Nm6u" id="1QSEqLhWrjk" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="1QSEqLhWri7" role="3clFbw">
            <node concept="10Nm6u" id="1QSEqLhWrim" role="3uHU7w" />
            <node concept="37vLTw" id="1QSEqLhWr9D" role="3uHU7B">
              <ref role="3cqZAo" node="1QSEqLhWlEU" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLhWqKg" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLhWqKh" role="3cpWs9">
            <property role="TrG5h" value="declaration" />
            <node concept="3uibUv" id="1QSEqLhWqJV" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
            </node>
            <node concept="2OqwBi" id="31DWWgF52y4" role="33vP2m">
              <node concept="37vLTw" id="31DWWgF525u" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLhWlgh" resolve="repository" />
              </node>
              <node concept="liA8E" id="31DWWgF53EE" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="37vLTw" id="31DWWgF542e" role="37wK5m">
                  <ref role="3cqZAo" node="1QSEqLhWlEU" resolve="node" />
                </node>
                <node concept="3VsKOn" id="31DWWgF5665" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QSEqLhWweP" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhWweQ" role="3clFbx">
            <node concept="3cpWs6" id="1QSEqLhWweR" role="3cqZAp">
              <node concept="10Nm6u" id="1QSEqLhWweS" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="1QSEqLhW_As" role="3clFbw">
            <node concept="10Nm6u" id="1QSEqLhW_Sn" role="3uHU7w" />
            <node concept="37vLTw" id="1QSEqLhW_g$" role="3uHU7B">
              <ref role="3cqZAo" node="1QSEqLhWqKh" resolve="declaration" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4kSwwtS_Ag3" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS_Ag4" role="3cpWs9">
            <property role="TrG5h" value="networkInstance" />
            <node concept="3uibUv" id="4kSwwtS_Ag5" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2YIFZM" id="31DWWgF500V" role="33vP2m">
              <ref role="37wK5l" to="74cb:~NetworkInstance.createForDeclaration(org.fbme.lib.iec61499.declarations.Declaration)" resolve="createForDeclaration" />
              <ref role="1Pybhc" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
              <node concept="37vLTw" id="31DWWgF500W" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLhWqKh" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QSEqLhWwIB" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhWwIC" role="3clFbx">
            <node concept="3cpWs6" id="1QSEqLhWwID" role="3cqZAp">
              <node concept="10Nm6u" id="1QSEqLhWwIE" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="1QSEqLhWwIF" role="3clFbw">
            <node concept="10Nm6u" id="1QSEqLhWwIG" role="3uHU7w" />
            <node concept="37vLTw" id="4kSwwtS_BVC" role="3uHU7B">
              <ref role="3cqZAo" node="4kSwwtS_Ag4" resolve="networkInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QSEqLhWqVp" role="3cqZAp" />
        <node concept="2Gpval" id="1QSEqLhWuiH" role="3cqZAp">
          <node concept="2GrKxI" id="1QSEqLhWuiJ" role="2Gsz3X">
            <property role="TrG5h" value="nested" />
          </node>
          <node concept="37vLTw" id="1QSEqLhWunZ" role="2GsD0m">
            <ref role="3cqZAo" node="1QSEqLhWldS" resolve="myNestedList" />
          </node>
          <node concept="3clFbS" id="1QSEqLhWuiN" role="2LFqv$">
            <node concept="3clFbF" id="1QSEqLhWv$T" role="3cqZAp">
              <node concept="37vLTI" id="1QSEqLhWv$V" role="3clFbG">
                <node concept="37vLTw" id="1QSEqLhWv$Z" role="37vLTJ">
                  <ref role="3cqZAo" node="1QSEqLhWlEU" resolve="node" />
                </node>
                <node concept="2OqwBi" id="1QSEqLhWEY5" role="37vLTx">
                  <node concept="2OqwBi" id="1QSEqLhWClC" role="2Oq$k0">
                    <node concept="37vLTw" id="1QSEqLhW$zX" role="2Oq$k0">
                      <ref role="3cqZAo" node="1QSEqLhWlEU" resolve="node" />
                    </node>
                    <node concept="32TBzR" id="1QSEqLhWDO8" role="2OqNvi" />
                  </node>
                  <node concept="1z4cxt" id="1QSEqLhWFZ1" role="2OqNvi">
                    <node concept="1bVj0M" id="1QSEqLhWFZ3" role="23t8la">
                      <node concept="3clFbS" id="1QSEqLhWFZ4" role="1bW5cS">
                        <node concept="3clFbF" id="1QSEqLhWGjt" role="3cqZAp">
                          <node concept="17R0WA" id="1QSEqLhWHsi" role="3clFbG">
                            <node concept="2GrUjf" id="1QSEqLhWHLu" role="3uHU7w">
                              <ref role="2Gs0qQ" node="1QSEqLhWuiJ" resolve="nested" />
                            </node>
                            <node concept="2OqwBi" id="1QSEqLhWGIw" role="3uHU7B">
                              <node concept="liA8E" id="1QSEqLhWH5t" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                              </node>
                              <node concept="2JrnkZ" id="1QSEqLhWGI_" role="2Oq$k0">
                                <node concept="37vLTw" id="1QSEqLhWGjs" role="2JrQYb">
                                  <ref role="3cqZAo" node="1QSEqLhWFZ5" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="1QSEqLhWFZ5" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="1QSEqLhWFZ6" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1QSEqLhWU07" role="3cqZAp">
              <node concept="3cpWsn" id="1QSEqLhWU08" role="3cpWs9">
                <property role="TrG5h" value="component" />
                <node concept="3uibUv" id="6mkmem0ELQm" role="1tU5fm">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4kSwwtS_UMA" role="3cqZAp">
              <node concept="3cpWsn" id="4kSwwtS_UMB" role="3cpWs9">
                <property role="TrG5h" value="network" />
                <node concept="3uibUv" id="4kSwwtS_W29" role="1tU5fm">
                  <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
                </node>
                <node concept="10QFUN" id="4kSwwtS_W4F" role="33vP2m">
                  <node concept="3uibUv" id="4kSwwtS_Wdj" role="10QFUM">
                    <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
                  </node>
                  <node concept="2OqwBi" id="4kSwwtS_UMC" role="10QFUP">
                    <node concept="37vLTw" id="4kSwwtS_UMD" role="2Oq$k0">
                      <ref role="3cqZAo" node="4kSwwtS_Ag4" resolve="networkInstance" />
                    </node>
                    <node concept="liA8E" id="4kSwwtS_UME" role="2OqNvi">
                      <ref role="37wK5l" to="74cb:~NetworkInstance.getNetworkDeclaration()" resolve="getNetworkDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4gibKcMz7xX" role="3cqZAp">
              <node concept="3clFbS" id="4gibKcMz7xZ" role="3clFbx">
                <node concept="3clFbF" id="4gibKcMzbgN" role="3cqZAp">
                  <node concept="37vLTI" id="4gibKcMzbgP" role="3clFbG">
                    <node concept="37vLTw" id="4gibKcMzbgT" role="37vLTJ">
                      <ref role="3cqZAo" node="1QSEqLhWU08" resolve="component" />
                    </node>
                    <node concept="2OqwBi" id="5poOURFiSJb" role="37vLTx">
                      <node concept="37vLTw" id="5poOURFiSDb" role="2Oq$k0">
                        <ref role="3cqZAo" node="1QSEqLhWlgh" resolve="repository" />
                      </node>
                      <node concept="liA8E" id="5poOURFiSQF" role="2OqNvi">
                        <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                        <node concept="1PxgMI" id="1QSEqLhWU0b" role="37wK5m">
                          <node concept="chp4Y" id="1QSEqLhWU0c" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                          </node>
                          <node concept="37vLTw" id="1QSEqLhWVBZ" role="1m5AlR">
                            <ref role="3cqZAo" node="1QSEqLhWlEU" resolve="node" />
                          </node>
                        </node>
                        <node concept="3VsKOn" id="5poOURFiT8K" role="37wK5m">
                          <ref role="3VsUkX" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4gibKcMz84K" role="3clFbw">
                <node concept="37vLTw" id="4gibKcMz7Ww" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QSEqLhWlEU" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="4gibKcMz8aK" role="2OqNvi">
                  <node concept="chp4Y" id="4gibKcMz8cR" role="cj9EA">
                    <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4gibKcMza6s" role="3eNLev">
                <node concept="3clFbS" id="4gibKcMza6t" role="3eOfB_">
                  <node concept="3clFbF" id="4gibKcMzbXD" role="3cqZAp">
                    <node concept="37vLTI" id="4gibKcMzctj" role="3clFbG">
                      <node concept="37vLTw" id="4gibKcMzbXC" role="37vLTJ">
                        <ref role="3cqZAo" node="1QSEqLhWU08" resolve="component" />
                      </node>
                      <node concept="2OqwBi" id="5poOURFiTt3" role="37vLTx">
                        <node concept="37vLTw" id="5poOURFiTt4" role="2Oq$k0">
                          <ref role="3cqZAo" node="1QSEqLhWlgh" resolve="repository" />
                        </node>
                        <node concept="liA8E" id="5poOURFiTt5" role="2OqNvi">
                          <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                          <node concept="1PxgMI" id="5poOURFiTt6" role="37wK5m">
                            <node concept="chp4Y" id="5poOURFjrgr" role="3oSUPX">
                              <ref role="cht4Q" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
                            </node>
                            <node concept="37vLTw" id="5poOURFiTt8" role="1m5AlR">
                              <ref role="3cqZAo" node="1QSEqLhWlEU" resolve="node" />
                            </node>
                          </node>
                          <node concept="3VsKOn" id="5poOURFiTt9" role="37wK5m">
                            <ref role="3VsUkX" to="6iyo:~SubapplicationDeclaration" resolve="SubapplicationDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4gibKcMza7K" role="3eO9$A">
                  <node concept="37vLTw" id="4gibKcMza7L" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhWlEU" resolve="node" />
                  </node>
                  <node concept="1mIQ4w" id="4gibKcMza7M" role="2OqNvi">
                    <node concept="chp4Y" id="4gibKcMza8B" role="cj9EA">
                      <ref role="cht4Q" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4gibKcMzdxt" role="9aQIa">
                <node concept="3clFbS" id="4gibKcMzdxu" role="9aQI4">
                  <node concept="3cpWs6" id="4gibKcMzdB_" role="3cqZAp">
                    <node concept="10Nm6u" id="4gibKcMzeCO" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4kSwwtS_F3n" role="3cqZAp">
              <node concept="3cpWsn" id="4kSwwtS_F3o" role="3cpWs9">
                <property role="TrG5h" value="fbInstance" />
                <node concept="3uibUv" id="4kSwwtS_F3p" role="1tU5fm">
                  <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
                </node>
                <node concept="2OqwBi" id="4kSwwtS_QGc" role="33vP2m">
                  <node concept="37vLTw" id="4kSwwtS_Qzn" role="2Oq$k0">
                    <ref role="3cqZAo" node="4kSwwtS_Ag4" resolve="networkInstance" />
                  </node>
                  <node concept="liA8E" id="4kSwwtS_QO$" role="2OqNvi">
                    <ref role="37wK5l" to="74cb:~NetworkInstance.getChild(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase)" resolve="getChild" />
                    <node concept="37vLTw" id="4kSwwtS_QPS" role="37wK5m">
                      <ref role="3cqZAo" node="1QSEqLhWU08" resolve="component" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1QSEqLhWUPi" role="3cqZAp">
              <node concept="37vLTI" id="1QSEqLhWVms" role="3clFbG">
                <node concept="37vLTw" id="4kSwwtS_DuG" role="37vLTJ">
                  <ref role="3cqZAo" node="4kSwwtS_Ag4" resolve="networkInstance" />
                </node>
                <node concept="2OqwBi" id="4kSwwtS_R5c" role="37vLTx">
                  <node concept="37vLTw" id="4kSwwtS_QWy" role="2Oq$k0">
                    <ref role="3cqZAo" node="4kSwwtS_F3o" resolve="fbInstance" />
                  </node>
                  <node concept="liA8E" id="4kSwwtS_Re5" role="2OqNvi">
                    <ref role="37wK5l" to="74cb:~FunctionBlockInstance.getContainedNetwork()" resolve="getContainedNetwork" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1_XvODPHGrS" role="3cqZAp">
              <node concept="37vLTI" id="1_XvODPHGX1" role="3clFbG">
                <node concept="2OqwBi" id="1_XvODPHHeb" role="37vLTx">
                  <node concept="liA8E" id="1_XvODPHHqj" role="2OqNvi">
                    <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                  <node concept="1eOMI4" id="1_XvODPHbAn" role="2Oq$k0">
                    <node concept="10QFUN" id="1_XvODPHbAk" role="1eOMHV">
                      <node concept="3uibUv" id="4kSwwtS_XD4" role="10QFUM">
                        <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
                      </node>
                      <node concept="2OqwBi" id="1_XvODPHbpz" role="10QFUP">
                        <node concept="37vLTw" id="4kSwwtS_Wo7" role="2Oq$k0">
                          <ref role="3cqZAo" node="4kSwwtS_Ag4" resolve="networkInstance" />
                        </node>
                        <node concept="liA8E" id="4kSwwtS_XAm" role="2OqNvi">
                          <ref role="37wK5l" to="74cb:~Instance.getDeclaration()" resolve="getDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1_XvODPHGrQ" role="37vLTJ">
                  <ref role="3cqZAo" node="1QSEqLhWlEU" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1QSEqLhWWlY" role="3cqZAp">
          <node concept="37vLTw" id="4kSwwtS_Pr1" role="3cqZAk">
            <ref role="3cqZAo" node="4kSwwtS_Ag4" resolve="networkInstance" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1QSEqLhWlf8" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_IV0" role="3clF45">
        <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="1QSEqLhWlgh" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5poOURFiORp" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhWlhe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhWYy1" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhWZMH" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3clFbS" id="1QSEqLhWZMJ" role="3clF47">
        <node concept="3cpWs8" id="1QSEqLhWZMK" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLhWZML" role="3cpWs9">
            <property role="TrG5h" value="pf" />
            <node concept="3uibUv" id="1QSEqLhWZMM" role="1tU5fm">
              <ref role="3uigEE" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
            <node concept="2YIFZM" id="1QSEqLhWZMN" role="33vP2m">
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLhX0IF" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLhX0IG" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="1QSEqLhX0IH" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="1QSEqLhX0Jt" role="33vP2m">
              <node concept="1pGfFk" id="1QSEqLhX1i8" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                <node concept="2OqwBi" id="1QSEqLhWZMP" role="37wK5m">
                  <node concept="37vLTw" id="1QSEqLhWZMQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhWZML" resolve="pf" />
                  </node>
                  <node concept="liA8E" id="1QSEqLhWZMR" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="asString" />
                    <node concept="37vLTw" id="1QSEqLhX0h1" role="37wK5m">
                      <ref role="3cqZAo" node="1QSEqLhWlc7" resolve="myRoot" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1QSEqLhX1Ab" role="3cqZAp">
          <node concept="2GrKxI" id="1QSEqLhX1Ad" role="2Gsz3X">
            <property role="TrG5h" value="nested" />
          </node>
          <node concept="37vLTw" id="1QSEqLhX1UO" role="2GsD0m">
            <ref role="3cqZAo" node="1QSEqLhWldS" resolve="myNestedList" />
          </node>
          <node concept="3clFbS" id="1QSEqLhX1Ah" role="2LFqv$">
            <node concept="3clFbF" id="1QSEqLhX24q" role="3cqZAp">
              <node concept="2OqwBi" id="1QSEqLhX2rJ" role="3clFbG">
                <node concept="37vLTw" id="1QSEqLhX24p" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QSEqLhX0IG" resolve="sb" />
                </node>
                <node concept="liA8E" id="1QSEqLhX31C" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="1QSEqLhX7m7" role="37wK5m">
                    <node concept="Xl_RD" id="1QSEqLhX84N" role="3uHU7B">
                      <property role="Xl_RC" value="//" />
                    </node>
                    <node concept="2OqwBi" id="1QSEqLhX3by" role="3uHU7w">
                      <node concept="37vLTw" id="1QSEqLhX32N" role="2Oq$k0">
                        <ref role="3cqZAo" node="1QSEqLhWZML" resolve="pf" />
                      </node>
                      <node concept="liA8E" id="1QSEqLhX3oP" role="2OqNvi">
                        <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SNodeId)" resolve="asString" />
                        <node concept="2GrUjf" id="1QSEqLhX3Js" role="37wK5m">
                          <ref role="2Gs0qQ" node="1QSEqLhX1Ad" resolve="nested" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1QSEqLhX445" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhX5pb" role="3cqZAk">
            <node concept="37vLTw" id="1QSEqLhX4B5" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLhX0IG" resolve="sb" />
            </node>
            <node concept="liA8E" id="1QSEqLhX6pU" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1QSEqLhWZMT" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3Tm1VV" id="1QSEqLhWZMS" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1QSEqLhX6Ul" role="jymVt" />
    <node concept="2YIFZL" id="1QSEqLhZdF9" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="1QSEqLhZdFb" role="3clF47">
        <node concept="3cpWs8" id="1QSEqLhZdFc" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLhZdFd" role="3cpWs9">
            <property role="TrG5h" value="pf" />
            <node concept="3uibUv" id="1QSEqLhZdFe" role="1tU5fm">
              <ref role="3uigEE" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
            <node concept="2YIFZM" id="1QSEqLhZdFf" role="33vP2m">
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLhZdFg" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLhZdFh" role="3cpWs9">
            <property role="TrG5h" value="values" />
            <node concept="10Q1$e" id="1QSEqLhZdFi" role="1tU5fm">
              <node concept="3uibUv" id="1QSEqLhZdFj" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="1QSEqLhZdFk" role="33vP2m">
              <node concept="37vLTw" id="1QSEqLhZdFl" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLhZdFZ" resolve="value" />
              </node>
              <node concept="liA8E" id="1QSEqLhZdFm" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                <node concept="Xl_RD" id="1QSEqLhZdFn" role="37wK5m">
                  <property role="Xl_RC" value="\\/\\/" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLhZdFo" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLhZdFp" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="2sp9CU" id="1QSEqLhZdFq" role="1tU5fm" />
            <node concept="2OqwBi" id="1QSEqLhZdFr" role="33vP2m">
              <node concept="37vLTw" id="1QSEqLhZdFs" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLhZdFd" resolve="pf" />
              </node>
              <node concept="liA8E" id="1QSEqLhZdFt" role="2OqNvi">
                <ref role="37wK5l" to="dush:~PersistenceFacade.createNodeReference(java.lang.String)" resolve="createNodeReference" />
                <node concept="AH0OO" id="1QSEqLhZdFu" role="37wK5m">
                  <node concept="3cmrfG" id="1QSEqLhZdFv" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="1QSEqLhZdFw" role="AHHXb">
                    <ref role="3cqZAo" node="1QSEqLhZdFh" resolve="values" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLhZdFx" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLhZdFy" role="3cpWs9">
            <property role="TrG5h" value="nestedList" />
            <node concept="_YKpA" id="1QSEqLhZdFz" role="1tU5fm">
              <node concept="3uibUv" id="1QSEqLhZdF$" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="2OqwBi" id="1QSEqLhZdF_" role="33vP2m">
              <node concept="2OqwBi" id="1QSEqLhZdFA" role="2Oq$k0">
                <node concept="2OqwBi" id="1QSEqLhZdFB" role="2Oq$k0">
                  <node concept="2OqwBi" id="1QSEqLhZdFC" role="2Oq$k0">
                    <node concept="37vLTw" id="1QSEqLhZdFD" role="2Oq$k0">
                      <ref role="3cqZAo" node="1QSEqLhZdFh" resolve="values" />
                    </node>
                    <node concept="39bAoz" id="1QSEqLhZdFE" role="2OqNvi" />
                  </node>
                  <node concept="7r0gD" id="1QSEqLhZdFF" role="2OqNvi">
                    <node concept="3cmrfG" id="1QSEqLhZdFG" role="7T0AP">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="1QSEqLhZdFH" role="2OqNvi">
                  <node concept="1bVj0M" id="1QSEqLhZdFI" role="23t8la">
                    <node concept="3clFbS" id="1QSEqLhZdFJ" role="1bW5cS">
                      <node concept="3clFbF" id="1QSEqLhZdFK" role="3cqZAp">
                        <node concept="2OqwBi" id="1QSEqLhZdFL" role="3clFbG">
                          <node concept="37vLTw" id="1QSEqLhZdFM" role="2Oq$k0">
                            <ref role="3cqZAo" node="1QSEqLhZdFd" resolve="pf" />
                          </node>
                          <node concept="liA8E" id="1QSEqLhZdFN" role="2OqNvi">
                            <ref role="37wK5l" to="dush:~PersistenceFacade.createNodeId(java.lang.String)" resolve="createNodeId" />
                            <node concept="37vLTw" id="1QSEqLhZdFO" role="37wK5m">
                              <ref role="3cqZAo" node="1QSEqLhZdFP" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1QSEqLhZdFP" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1QSEqLhZdFQ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1QSEqLhZdFR" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLhZdFS" role="3cqZAp">
          <node concept="2ShNRf" id="1QSEqLhZdFT" role="3clFbG">
            <node concept="1pGfFk" id="1QSEqLhZdFU" role="2ShVmc">
              <ref role="37wK5l" node="1QSEqLhWXdX" resolve="MPSNetworkInstanceReference" />
              <node concept="37vLTw" id="1QSEqLhZdFV" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLhZdFp" resolve="root" />
              </node>
              <node concept="37vLTw" id="1QSEqLhZdFW" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLhZdFy" resolve="nestedList" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1QSEqLhZdFY" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
      </node>
      <node concept="37vLTG" id="1QSEqLhZdFZ" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="1QSEqLhZdG0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1QSEqLhZdFX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1QSEqLhWm1W" role="jymVt" />
    <node concept="2tJIrI" id="1QSEqLhXoQR" role="jymVt" />
    <node concept="2YIFZL" id="1QSEqLhXrjF" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="3clFbS" id="1QSEqLhXrjI" role="3clF47">
        <node concept="3cpWs8" id="1QSEqLhXE3U" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLhXE3X" role="3cpWs9">
            <property role="TrG5h" value="nestedList" />
            <node concept="_YKpA" id="1QSEqLhXE3S" role="1tU5fm">
              <node concept="3uibUv" id="1QSEqLhXE4i" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="2ShNRf" id="1QSEqLhXEBc" role="33vP2m">
              <node concept="Tc6Ow" id="1QSEqLhXESv" role="2ShVmc">
                <node concept="3uibUv" id="1QSEqLhXFfN" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4kSwwtS_Nzj" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS_Nzk" role="3cpWs9">
            <property role="TrG5h" value="parentInstance" />
            <node concept="3uibUv" id="4kSwwtS_ND5" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
            </node>
            <node concept="0kSF2" id="4kSwwtS_NV$" role="33vP2m">
              <node concept="3uibUv" id="4kSwwtS_NVB" role="0kSFW">
                <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
              </node>
              <node concept="2OqwBi" id="4kSwwtS_NOo" role="0kSFX">
                <node concept="37vLTw" id="4kSwwtS_NOp" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QSEqLhXs1B" resolve="networInstance" />
                </node>
                <node concept="liA8E" id="4kSwwtS_NOq" role="2OqNvi">
                  <ref role="37wK5l" to="74cb:~Instance.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="1QSEqLhXFLj" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhXFLl" role="2LFqv$">
            <node concept="3cpWs8" id="4kSwwtS$_0z" role="3cqZAp">
              <node concept="3cpWsn" id="4kSwwtS$_0$" role="3cpWs9">
                <property role="TrG5h" value="functionBlock" />
                <node concept="3uibUv" id="4kSwwtS$_0_" role="1tU5fm">
                  <ref role="3uigEE" node="6LU90BOirFi" resolve="FunctionBlockDeclarationByNode" />
                </node>
                <node concept="10QFUN" id="3GSF_IeYS$f" role="33vP2m">
                  <node concept="2OqwBi" id="3GSF_IeYSm9" role="10QFUP">
                    <node concept="37vLTw" id="3GSF_IeYSaK" role="2Oq$k0">
                      <ref role="3cqZAo" node="4kSwwtS_Nzk" resolve="parentInstance" />
                    </node>
                    <node concept="liA8E" id="3GSF_IeYSvy" role="2OqNvi">
                      <ref role="37wK5l" to="74cb:~FunctionBlockInstance.getDeclaration()" resolve="getDeclaration" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3GSF_IeYS$g" role="10QFUM">
                    <ref role="3uigEE" node="6LU90BOirFi" resolve="FunctionBlockDeclarationByNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1QSEqLhXGxX" role="3cqZAp">
              <node concept="2OqwBi" id="1QSEqLhXHbx" role="3clFbG">
                <node concept="37vLTw" id="1QSEqLhXGxV" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QSEqLhXE3X" resolve="nestedList" />
                </node>
                <node concept="TSZUe" id="1QSEqLhXHKu" role="2OqNvi">
                  <node concept="2OqwBi" id="1QSEqLhXJcd" role="25WWJ7">
                    <node concept="liA8E" id="1QSEqLhXJmH" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                    <node concept="2JrnkZ" id="1QSEqLhXJcm" role="2Oq$k0">
                      <node concept="2OqwBi" id="1QSEqLhXImx" role="2JrQYb">
                        <node concept="37vLTw" id="1QSEqLhXHNJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="4kSwwtS$_0$" resolve="functionBlock" />
                        </node>
                        <node concept="liA8E" id="1QSEqLhXIAH" role="2OqNvi">
                          <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2hWn4IdS76v" role="3cqZAp">
              <node concept="37vLTI" id="2hWn4IdS7d6" role="3clFbG">
                <node concept="2OqwBi" id="2hWn4IdS7fN" role="37vLTx">
                  <node concept="37vLTw" id="4kSwwtS_O1L" role="2Oq$k0">
                    <ref role="3cqZAo" node="4kSwwtS_Nzk" resolve="parentInstance" />
                  </node>
                  <node concept="liA8E" id="2hWn4IdS7mF" role="2OqNvi">
                    <ref role="37wK5l" to="74cb:~FunctionBlockInstance.getParent()" resolve="getParent" />
                  </node>
                </node>
                <node concept="37vLTw" id="2hWn4IdS76t" role="37vLTJ">
                  <ref role="3cqZAo" node="1QSEqLhXs1B" resolve="networInstance" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1YajDgt1$s" role="3cqZAp">
              <node concept="37vLTI" id="1YajDgt1KQ" role="3clFbG">
                <node concept="37vLTw" id="1YajDgt1$q" role="37vLTJ">
                  <ref role="3cqZAo" node="4kSwwtS_Nzk" resolve="parentInstance" />
                </node>
                <node concept="0kSF2" id="1YajDgt1Nx" role="37vLTx">
                  <node concept="3uibUv" id="1YajDgt1Ny" role="0kSFW">
                    <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
                  </node>
                  <node concept="2OqwBi" id="1YajDgt1Nz" role="0kSFX">
                    <node concept="37vLTw" id="1YajDgt1N$" role="2Oq$k0">
                      <ref role="3cqZAo" node="1QSEqLhXs1B" resolve="networInstance" />
                    </node>
                    <node concept="liA8E" id="1YajDgt1N_" role="2OqNvi">
                      <ref role="37wK5l" to="74cb:~Instance.getParent()" resolve="getParent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1QSEqLhXG10" role="2$JKZa">
            <node concept="10Nm6u" id="1QSEqLhXG5j" role="3uHU7w" />
            <node concept="37vLTw" id="4kSwwtS_NYQ" role="3uHU7B">
              <ref role="3cqZAo" node="4kSwwtS_Nzk" resolve="parentInstance" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4kSwwtS$wHh" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS$wHi" role="3cpWs9">
            <property role="TrG5h" value="rootReference" />
            <node concept="3uibUv" id="4kSwwtS$wHj" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="4kSwwtS$wHk" role="33vP2m">
              <node concept="2OqwBi" id="4kSwwtS$wHl" role="2Oq$k0">
                <node concept="1eOMI4" id="4kSwwtS$wHm" role="2Oq$k0">
                  <node concept="10QFUN" id="4kSwwtS$wHn" role="1eOMHV">
                    <node concept="3uibUv" id="4kSwwtS$wHo" role="10QFUM">
                      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
                    </node>
                    <node concept="2OqwBi" id="4kSwwtS$wHp" role="10QFUP">
                      <node concept="liA8E" id="4kSwwtS$wHr" role="2OqNvi">
                        <ref role="37wK5l" to="74cb:~Instance.getDeclaration()" resolve="getDeclaration" />
                      </node>
                      <node concept="37vLTw" id="4kSwwtS_PlK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1QSEqLhXs1B" resolve="networInstance" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4kSwwtS$wHs" role="2OqNvi">
                  <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                </node>
              </node>
              <node concept="liA8E" id="4kSwwtS$wHt" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1QSEqLhXKU5" role="3cqZAp">
          <node concept="2ShNRf" id="1QSEqLhXL2R" role="3cqZAk">
            <node concept="1pGfFk" id="1QSEqLhXLnX" role="2ShVmc">
              <ref role="37wK5l" node="1QSEqLhWXdX" resolve="MPSNetworkInstanceReference" />
              <node concept="37vLTw" id="1QSEqLhXLuL" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtS$wHi" resolve="rootReference" />
              </node>
              <node concept="2OqwBi" id="1QSEqLhXMyR" role="37wK5m">
                <node concept="37vLTw" id="1QSEqLhXLHq" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QSEqLhXE3X" resolve="nestedList" />
                </node>
                <node concept="35Qw8J" id="1QSEqLhXNj6" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1QSEqLhXpCP" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhXqMj" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
      </node>
      <node concept="37vLTG" id="1QSEqLhXs1B" role="3clF46">
        <property role="TrG5h" value="networInstance" />
        <node concept="3uibUv" id="4kSwwtS_K2Z" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="2hWn4IdS7yu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhWm2t" role="jymVt" />
    <node concept="3Tm1VV" id="1QSEqLhWl9X" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4FRweWLhg$b">
    <property role="1sVAO0" value="true" />
    <property role="TrG5h" value="FBNetworkComponentByNode" />
    <node concept="2tJIrI" id="4FRweWLhg_0" role="jymVt" />
    <node concept="312cEg" id="2syzu7qTgQb" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="16syzq" id="4FRweWLh$Hx" role="1tU5fm">
        <ref role="16sUi3" node="4FRweWLh$As" resolve="T" />
      </node>
      <node concept="3Tmbuc" id="3VhUp_YMpp9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4FRweWLhziL" role="jymVt" />
    <node concept="3clFbW" id="4FRweWLh$Jg" role="jymVt">
      <node concept="3cqZAl" id="4FRweWLh$Jh" role="3clF45" />
      <node concept="3Tm1VV" id="4FRweWLh$Ji" role="1B3o_S" />
      <node concept="3clFbS" id="4FRweWLh$Jk" role="3clF47">
        <node concept="3clFbF" id="4FRweWLh$Jo" role="3cqZAp">
          <node concept="37vLTI" id="4FRweWLh$Jq" role="3clFbG">
            <node concept="37vLTw" id="4FRweWLh$Jx" role="37vLTx">
              <ref role="3cqZAo" node="4FRweWLh$Jn" resolve="node" />
            </node>
            <node concept="37vLTw" id="4FRweWLh$YV" role="37vLTJ">
              <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4FRweWLh$Jn" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="4FRweWLh$Jm" role="1tU5fm">
          <ref role="16sUi3" node="4FRweWLh$As" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4FRweWLh_20" role="jymVt" />
    <node concept="3clFb_" id="4FRweWLhgAR" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3clFbS" id="4FRweWLhgAU" role="3clF47">
        <node concept="3clFbF" id="4FRweWLh$$m" role="3cqZAp">
          <node concept="37vLTw" id="4FRweWLh$$l" role="3clFbG">
            <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4FRweWLhgA8" role="1B3o_S" />
      <node concept="16syzq" id="4FRweWLh$Dr" role="3clF45">
        <ref role="16sUi3" node="4FRweWLh$As" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="4FRweWLh_3B" role="jymVt" />
    <node concept="3Tm1VV" id="4FRweWLhg$c" role="1B3o_S" />
    <node concept="3uibUv" id="4FRweWLhg_n" role="EKbjA">
      <ref role="3uigEE" to="g27j:~FBNetworkComponent" resolve="FBNetworkComponent" />
    </node>
    <node concept="16euLQ" id="4FRweWLh$As" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="4FRweWLh$BF" role="3ztrMU" />
    </node>
    <node concept="3clFb_" id="3VhUp_YNvRz" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <property role="1EzhhJ" value="true" />
      <node concept="3Tm1VV" id="3VhUp_YNvR$" role="1B3o_S" />
      <node concept="2AHcQZ" id="3VhUp_YNvRA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="3VhUp_YNwgR" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
      </node>
      <node concept="3clFbS" id="3VhUp_YNvRC" role="3clF47" />
      <node concept="2AHcQZ" id="3VhUp_YNvRD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4FRweWLhD_F" role="jymVt" />
    <node concept="3clFb_" id="2syzu7r3Jkn" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="3Tm1VV" id="2syzu7r3Jko" role="1B3o_S" />
      <node concept="10P_77" id="2syzu7r3Jkq" role="3clF45" />
      <node concept="37vLTG" id="2syzu7r3Jkr" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="2syzu7r3Jks" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2syzu7r3Jkv" role="3clF47">
        <node concept="3cpWs6" id="2syzu7r3KDF" role="3cqZAp">
          <node concept="1Wc70l" id="2syzu7r3NFv" role="3cqZAk">
            <node concept="3clFbC" id="2syzu7r3Qmh" role="3uHU7w">
              <node concept="37vLTw" id="2syzu7r3TRe" role="3uHU7w">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="2OqwBi" id="2syzu7r3RBD" role="3uHU7B">
                <node concept="1eOMI4" id="2syzu7r3P26" role="2Oq$k0">
                  <node concept="10QFUN" id="2syzu7r3P23" role="1eOMHV">
                    <node concept="3uibUv" id="4FRweWLhEbz" role="10QFUM">
                      <ref role="3uigEE" node="4FRweWLhg$b" resolve="FBNetworkComponentByNode" />
                    </node>
                    <node concept="37vLTw" id="2syzu7r3OzK" role="10QFUP">
                      <ref role="3cqZAo" node="2syzu7r3Jkr" resolve="other" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="4FRweWLhExs" role="2OqNvi">
                  <ref role="2Oxat5" node="2syzu7qTgQb" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="2syzu7r3Lla" role="3uHU7B">
              <node concept="3uibUv" id="4FRweWLhDTw" role="2ZW6by">
                <ref role="3uigEE" node="4FRweWLhg$b" resolve="FBNetworkComponentByNode" />
              </node>
              <node concept="37vLTw" id="2syzu7r3KIm" role="2ZW6bz">
                <ref role="3cqZAo" node="2syzu7r3Jkr" resolve="other" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7r3Jkw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7r40th" role="jymVt" />
    <node concept="3clFb_" id="2syzu7r3Jk$" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="3Tm1VV" id="2syzu7r3Jk_" role="1B3o_S" />
      <node concept="10Oyi0" id="2syzu7r3JkB" role="3clF45" />
      <node concept="3clFbS" id="2syzu7r3JkE" role="3clF47">
        <node concept="3clFbF" id="2syzu7r3UzR" role="3cqZAp">
          <node concept="2OqwBi" id="4FRweWLhHlm" role="3clFbG">
            <node concept="1eOMI4" id="4FRweWLhGLy" role="2Oq$k0">
              <node concept="10QFUN" id="4FRweWLhGVW" role="1eOMHV">
                <node concept="3uibUv" id="4FRweWLhH66" role="10QFUM">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="37vLTw" id="4FRweWLhEP2" role="10QFUP">
                  <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4FRweWLhH$k" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7r3JkF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="PZB1W7gNfj">
    <property role="TrG5h" value="FBNetworkConnectionByFBParameterNode" />
    <node concept="2tJIrI" id="PZB1W7gNfk" role="jymVt" />
    <node concept="312cEg" id="31DWWgFdBCJ" role="jymVt">
      <property role="TrG5h" value="myInlineValue" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="31DWWgFdBmy" role="1B3o_S" />
      <node concept="3uibUv" id="31DWWgFdNhz" role="1tU5fm">
        <ref role="3uigEE" node="2syzu7qTf1n" resolve="InlineValueByNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNfG" role="jymVt" />
    <node concept="3clFbW" id="PZB1W7gNfH" role="jymVt">
      <node concept="3cqZAl" id="PZB1W7gNfI" role="3clF45" />
      <node concept="3Tm1VV" id="PZB1W7gNfJ" role="1B3o_S" />
      <node concept="3clFbS" id="PZB1W7gNfK" role="3clF47">
        <node concept="3clFbF" id="PZB1W7gNfL" role="3cqZAp">
          <node concept="37vLTI" id="PZB1W7gNfM" role="3clFbG">
            <node concept="37vLTw" id="31DWWgFdCwZ" role="37vLTx">
              <ref role="3cqZAo" node="31DWWgFdAe_" resolve="inlineValue" />
            </node>
            <node concept="37vLTw" id="31DWWgFdCgh" role="37vLTJ">
              <ref role="3cqZAo" node="31DWWgFdBCJ" resolve="myInlineValue" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="31DWWgFdAe_" role="3clF46">
        <property role="TrG5h" value="inlineValue" />
        <node concept="3uibUv" id="31DWWgFdNeJ" role="1tU5fm">
          <ref role="3uigEE" node="2syzu7qTf1n" resolve="InlineValueByNode" />
        </node>
        <node concept="2AHcQZ" id="31DWWgFdAtl" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNgo" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNgp" role="jymVt">
      <property role="TrG5h" value="getSourcePort" />
      <node concept="3Tm1VV" id="PZB1W7gNgq" role="1B3o_S" />
      <node concept="3uibUv" id="PZB1W7gNgr" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
      </node>
      <node concept="3clFbS" id="PZB1W7gNgs" role="3clF47">
        <node concept="3clFbF" id="31DWWgFdLzd" role="3cqZAp">
          <node concept="37vLTw" id="31DWWgFdLze" role="3clFbG">
            <ref role="3cqZAo" node="31DWWgFdBCJ" resolve="myInlineValue" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="PZB1W7gNgv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="31DWWgFdIsg" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNpW" role="jymVt">
      <property role="TrG5h" value="getTargetPort" />
      <node concept="3Tm1VV" id="PZB1W7gNpX" role="1B3o_S" />
      <node concept="3uibUv" id="PZB1W7gNpY" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
      </node>
      <node concept="3clFbS" id="PZB1W7gNpZ" role="3clF47">
        <node concept="3clFbF" id="31DWWgFdLgM" role="3cqZAp">
          <node concept="2OqwBi" id="31DWWgFdLgN" role="3clFbG">
            <node concept="37vLTw" id="31DWWgFdLgO" role="2Oq$k0">
              <ref role="3cqZAo" node="31DWWgFdBCJ" resolve="myInlineValue" />
            </node>
            <node concept="liA8E" id="31DWWgFdLgP" role="2OqNvi">
              <ref role="37wK5l" node="2syzu7qTf3g" resolve="getOpppositePort" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="PZB1W7gNq2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNq3" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNq4" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="3Tm1VV" id="PZB1W7gNq5" role="1B3o_S" />
      <node concept="3uibUv" id="PZB1W7gNq6" role="3clF45">
        <ref role="3uigEE" to="g27j:~ConnectionPath" resolve="ConnectionPath" />
      </node>
      <node concept="3clFbS" id="PZB1W7gNq7" role="3clF47">
        <node concept="3clFbF" id="31DWWgFdJDB" role="3cqZAp">
          <node concept="2ShNRf" id="PZB1W7hvrP" role="3clFbG">
            <node concept="1pGfFk" id="2YkCud37EAm" role="2ShVmc">
              <ref role="37wK5l" to="g27j:~ConnectionPath.&lt;init&gt;()" resolve="ConnectionPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="PZB1W7gNqa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNrb" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNrc" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3Tm1VV" id="PZB1W7gNrd" role="1B3o_S" />
      <node concept="3cqZAl" id="PZB1W7gNre" role="3clF45" />
      <node concept="37vLTG" id="PZB1W7gNrf" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="PZB1W7gNrg" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~ConnectionPath" resolve="ConnectionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="PZB1W7gNrh" role="3clF47" />
      <node concept="2AHcQZ" id="PZB1W7gNrt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNru" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNrv" role="jymVt">
      <property role="TrG5h" value="setSourcePort" />
      <node concept="3Tm1VV" id="PZB1W7gNrw" role="1B3o_S" />
      <node concept="3cqZAl" id="PZB1W7gNrx" role="3clF45" />
      <node concept="37vLTG" id="PZB1W7gNry" role="3clF46">
        <property role="TrG5h" value="sourcePort" />
        <node concept="3uibUv" id="PZB1W7gNrz" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="PZB1W7gNr$" role="3clF47" />
      <node concept="2AHcQZ" id="PZB1W7gNrK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNrL" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNrM" role="jymVt">
      <property role="TrG5h" value="setTargetPort" />
      <node concept="3Tm1VV" id="PZB1W7gNrN" role="1B3o_S" />
      <node concept="3cqZAl" id="PZB1W7gNrO" role="3clF45" />
      <node concept="37vLTG" id="PZB1W7gNrP" role="3clF46">
        <property role="TrG5h" value="targetPort" />
        <node concept="3uibUv" id="PZB1W7gNrQ" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBPortIdentity" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="PZB1W7gNrR" role="3clF47" />
      <node concept="2AHcQZ" id="PZB1W7gNs3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNs4" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNs5" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="PZB1W7gNs6" role="1B3o_S" />
      <node concept="3cqZAl" id="PZB1W7gNs7" role="3clF45" />
      <node concept="3clFbS" id="PZB1W7gNs8" role="3clF47" />
      <node concept="2AHcQZ" id="PZB1W7gNsn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNso" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNsp" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="PZB1W7gNsq" role="1B3o_S" />
      <node concept="3uibUv" id="PZB1W7gNsr" role="3clF45">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="PZB1W7gNss" role="3clF47">
        <node concept="3clFbF" id="PZB1W7h$cb" role="3cqZAp">
          <node concept="Rm8GO" id="2YkCud3arDF" role="3clFbG">
            <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
            <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="PZB1W7gNsR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNsS" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNsT" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="PZB1W7gNsU" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
      </node>
      <node concept="3Tm1VV" id="PZB1W7gNsV" role="1B3o_S" />
      <node concept="3clFbS" id="PZB1W7gNsW" role="3clF47">
        <node concept="3clFbF" id="PZB1W7gNsX" role="3cqZAp">
          <node concept="1PxgMI" id="31DWWgFdR4e" role="3clFbG">
            <node concept="chp4Y" id="31DWWgFdRl_" role="3oSUPX">
              <ref role="cht4Q" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
            </node>
            <node concept="2OqwBi" id="31DWWgFdMQb" role="1m5AlR">
              <node concept="37vLTw" id="31DWWgFdMA6" role="2Oq$k0">
                <ref role="3cqZAo" node="31DWWgFdBCJ" resolve="myInlineValue" />
              </node>
              <node concept="liA8E" id="31DWWgFdOUn" role="2OqNvi">
                <ref role="37wK5l" node="4FRweWLhgAR" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNsZ" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNt0" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="PZB1W7gNt1" role="1B3o_S" />
      <node concept="3uibUv" id="PZB1W7gNt2" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="PZB1W7gNt3" role="3clF47">
        <node concept="3clFbF" id="PZB1W7gNt4" role="3cqZAp">
          <node concept="2OqwBi" id="31DWWgFdRmI" role="3clFbG">
            <node concept="37vLTw" id="31DWWgFdRmJ" role="2Oq$k0">
              <ref role="3cqZAo" node="31DWWgFdBCJ" resolve="myInlineValue" />
            </node>
            <node concept="liA8E" id="31DWWgFdRUa" role="2OqNvi">
              <ref role="37wK5l" node="3VhUp_YVJ_J" resolve="getNetwork" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="PZB1W7gNt6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNt7" role="jymVt" />
    <node concept="3Tm1VV" id="PZB1W7gNt8" role="1B3o_S" />
    <node concept="3uibUv" id="PZB1W7gNt9" role="EKbjA">
      <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
    </node>
    <node concept="3clFb_" id="PZB1W7gNta" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="PZB1W7gNtb" role="3clF45" />
      <node concept="3Tm1VV" id="PZB1W7gNtc" role="1B3o_S" />
      <node concept="3clFbS" id="PZB1W7gNtd" role="3clF47">
        <node concept="3cpWs6" id="PZB1W7gNte" role="3cqZAp">
          <node concept="22lmx$" id="PZB1W7gNtf" role="3cqZAk">
            <node concept="1eOMI4" id="PZB1W7gNtg" role="3uHU7w">
              <node concept="1Wc70l" id="PZB1W7gNth" role="1eOMHV">
                <node concept="3clFbC" id="PZB1W7gNti" role="3uHU7w">
                  <node concept="37vLTw" id="31DWWgFdS3f" role="3uHU7B">
                    <ref role="3cqZAo" node="31DWWgFdBCJ" resolve="myInlineValue" />
                  </node>
                  <node concept="2OqwBi" id="PZB1W7gNtk" role="3uHU7w">
                    <node concept="2OwXpG" id="31DWWgFdSGL" role="2OqNvi">
                      <ref role="2Oxat5" node="31DWWgFdBCJ" resolve="myInlineValue" />
                    </node>
                    <node concept="1eOMI4" id="PZB1W7gNtm" role="2Oq$k0">
                      <node concept="10QFUN" id="PZB1W7gNtn" role="1eOMHV">
                        <node concept="3uibUv" id="PZB1W7gNto" role="10QFUM">
                          <ref role="3uigEE" node="PZB1W7gNfj" resolve="FBNetworkConnectionByFBParameterNode" />
                        </node>
                        <node concept="37vLTw" id="PZB1W7gNtp" role="10QFUP">
                          <ref role="3cqZAo" node="PZB1W7gNtw" resolve="o" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="PZB1W7gNtq" role="3uHU7B">
                  <node concept="3uibUv" id="PZB1W7gNtr" role="2ZW6by">
                    <ref role="3uigEE" node="PZB1W7gNfj" resolve="FBNetworkConnectionByFBParameterNode" />
                  </node>
                  <node concept="37vLTw" id="PZB1W7gNts" role="2ZW6bz">
                    <ref role="3cqZAo" node="PZB1W7gNtw" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="PZB1W7gNtt" role="3uHU7B">
              <node concept="Xjq3P" id="PZB1W7gNtu" role="3uHU7B" />
              <node concept="37vLTw" id="PZB1W7gNtv" role="3uHU7w">
                <ref role="3cqZAo" node="PZB1W7gNtw" resolve="o" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="PZB1W7gNtw" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="PZB1W7gNtx" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="PZB1W7gNty" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PZB1W7gNtz" role="jymVt" />
    <node concept="3clFb_" id="PZB1W7gNt$" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="PZB1W7gNt_" role="3clF45" />
      <node concept="3Tm1VV" id="PZB1W7gNtA" role="1B3o_S" />
      <node concept="3clFbS" id="PZB1W7gNtB" role="3clF47">
        <node concept="3cpWs6" id="PZB1W7gNtC" role="3cqZAp">
          <node concept="2OqwBi" id="PZB1W7gNtD" role="3cqZAk">
            <node concept="37vLTw" id="31DWWgFdSWZ" role="2Oq$k0">
              <ref role="3cqZAo" node="31DWWgFdBCJ" resolve="myInlineValue" />
            </node>
            <node concept="liA8E" id="PZB1W7gNtG" role="2OqNvi">
              <ref role="37wK5l" node="2syzu7r3Jk$" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="PZB1W7gNtH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3VhUp_YMiEx">
    <property role="TrG5h" value="FunctionBlockDeclarationBaseByNode" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3VhUp_YMjx4" role="jymVt" />
    <node concept="312cEg" id="3VhUp_YNzQc" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="3VhUp_YOIyl" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YNzBe" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YNx_d" role="jymVt" />
    <node concept="3clFbW" id="3VhUp_YMkxn" role="jymVt">
      <node concept="3cqZAl" id="3VhUp_YMkxo" role="3clF45" />
      <node concept="3Tm1VV" id="3VhUp_YMkxp" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YMkxr" role="3clF47">
        <node concept="XkiVB" id="3VhUp_YMkxt" role="3cqZAp">
          <ref role="37wK5l" node="4FRweWLh$Jg" resolve="FBNetworkComponentByNode" />
          <node concept="37vLTw" id="3VhUp_YMkxx" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YMkxu" resolve="node" />
          </node>
        </node>
        <node concept="3clFbF" id="3VhUp_YN$e_" role="3cqZAp">
          <node concept="37vLTI" id="3VhUp_YN_gZ" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YN_xi" role="37vLTx">
              <ref role="3cqZAo" node="3VhUp_YNytC" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3VhUp_YN$ez" role="37vLTJ">
              <ref role="3cqZAo" node="3VhUp_YNzQc" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YMkxu" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="3VhUp_YMlR3" role="1tU5fm">
          <ref role="16sUi3" node="3VhUp_YMiG2" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YNytC" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3VhUp_YNyHM" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YMv$K" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YMjGU" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="3VhUp_YMjGX" role="3clF47" />
      <node concept="3Tqbb2" id="3VhUp_YMjG3" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3Tmbuc" id="3VhUp_YMjIq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3VhUp_YMjJ6" role="jymVt" />
    <node concept="15s5l7" id="3VhUp_YMjvl" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @FBNetworkComponentDeclarationByNode.T extends node&lt;&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @FBNetworkComponentDeclarationByNode.T extends node&lt;&gt; is not a valid substitute for the bounded parameter T" />
    </node>
    <node concept="3Tm1VV" id="3VhUp_YMiEy" role="1B3o_S" />
    <node concept="3uibUv" id="3VhUp_YMju4" role="1zkMxy">
      <ref role="3uigEE" node="4FRweWLhg$b" resolve="FBNetworkComponentByNode" />
      <node concept="16syzq" id="3VhUp_YMjuG" role="11_B2D">
        <ref role="16sUi3" node="3VhUp_YMiG2" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="3VhUp_YMiG2" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="3VhUp_YMjtX" role="3ztrMU">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="3uibUv" id="6mkmem0DiDX" role="EKbjA">
      <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
    </node>
    <node concept="3uibUv" id="6YcNwH3AJB2" role="EKbjA">
      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFb_" id="3VhUp_YMjLc" role="jymVt">
      <property role="TrG5h" value="getX" />
      <node concept="3Tm1VV" id="3VhUp_YMjLd" role="1B3o_S" />
      <node concept="10Oyi0" id="3VhUp_YMjLf" role="3clF45" />
      <node concept="3clFbS" id="3VhUp_YMjLh" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YMmL1" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YMmU1" role="3clFbG">
            <node concept="1rXfSq" id="3VhUp_YMmL0" role="2Oq$k0">
              <ref role="37wK5l" node="3VhUp_YMjGU" resolve="getPosition" />
            </node>
            <node concept="2qgKlT" id="3VhUp_YMne3" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3isp" resolve="getX" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YMjLi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YMtY$" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YMjLj" role="jymVt">
      <property role="TrG5h" value="setX" />
      <node concept="3Tm1VV" id="3VhUp_YMjLk" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YMjLm" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YMjLn" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="3VhUp_YMjLo" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3VhUp_YMjLq" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YMnik" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YMnim" role="3clFbG">
            <node concept="1rXfSq" id="3VhUp_YMnin" role="2Oq$k0">
              <ref role="37wK5l" node="3VhUp_YMjGU" resolve="getPosition" />
            </node>
            <node concept="2qgKlT" id="3VhUp_YMnwz" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3jp5" resolve="setX" />
              <node concept="37vLTw" id="3VhUp_YMn_i" role="37wK5m">
                <ref role="3cqZAo" node="3VhUp_YMjLn" resolve="x" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YMjLr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YMtGE" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YMjLs" role="jymVt">
      <property role="TrG5h" value="getY" />
      <node concept="3Tm1VV" id="3VhUp_YMjLt" role="1B3o_S" />
      <node concept="10Oyi0" id="3VhUp_YMjLv" role="3clF45" />
      <node concept="3clFbS" id="3VhUp_YMjLx" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YMo0$" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YMo0_" role="3clFbG">
            <node concept="1rXfSq" id="3VhUp_YMo0A" role="2Oq$k0">
              <ref role="37wK5l" node="3VhUp_YMjGU" resolve="getPosition" />
            </node>
            <node concept="2qgKlT" id="3VhUp_YMo0B" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3iXb" resolve="getY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YMjLy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YMtqL" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YMjLz" role="jymVt">
      <property role="TrG5h" value="setY" />
      <node concept="3Tm1VV" id="3VhUp_YMjL$" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YMjLA" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YMjLB" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="3VhUp_YMjLC" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3VhUp_YMjLE" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YMoyw" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YMoyx" role="3clFbG">
            <node concept="1rXfSq" id="3VhUp_YMoyy" role="2Oq$k0">
              <ref role="37wK5l" node="3VhUp_YMjGU" resolve="getPosition" />
            </node>
            <node concept="2qgKlT" id="3VhUp_YMoyz" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3lay" resolve="setY" />
              <node concept="37vLTw" id="3VhUp_YMp0b" role="37wK5m">
                <ref role="3cqZAo" node="3VhUp_YMjLB" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YMjLF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YMt1e" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YMjLS" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3VhUp_YMjLT" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YMjLV" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3VhUp_YMjLZ" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YMqka" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YMqFX" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YMqk9" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="3VhUp_YMr1Z" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YMjM0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YMsF9" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YMjM3" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="3VhUp_YMjM4" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YMjM6" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YMjM7" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="3VhUp_YMjM8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YMjMc" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YMr4E" role="3cqZAp">
          <node concept="37vLTI" id="3VhUp_YMrSC" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YMs9T" role="37vLTx">
              <ref role="3cqZAo" node="3VhUp_YMjM7" resolve="name" />
            </node>
            <node concept="2OqwBi" id="3VhUp_YMrdf" role="37vLTJ">
              <node concept="37vLTw" id="3VhUp_YMr4D" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="3VhUp_YMr$o" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YMjMd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YNsrF" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YNsSE" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="3VhUp_YNsSF" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YNsSG" role="3clF45" />
      <node concept="2AHcQZ" id="3VhUp_YNsSW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3VhUp_YNsSX" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YNxiu" role="3cqZAp">
          <node concept="1rXfSq" id="3VhUp_YNxis" role="3clFbG">
            <ref role="37wK5l" node="3VhUp_YNILC" resolve="getNetwork" />
          </node>
        </node>
        <node concept="3clFbF" id="3VhUp_YNtj6" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YNtrF" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YNtj3" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="3VhUp_YNtS6" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YNIpb" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YNILC" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3VhUp_YNILD" role="1B3o_S" />
      <node concept="2AHcQZ" id="3VhUp_YNILF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="3VhUp_YNJ$G" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
      </node>
      <node concept="3clFbS" id="3VhUp_YNILK" role="3clF47">
        <node concept="3cpWs8" id="3VhUp_YNKy6" role="3cqZAp">
          <node concept="3cpWsn" id="3VhUp_YNKy7" role="3cpWs9">
            <property role="TrG5h" value="container" />
            <node concept="3uibUv" id="3VhUp_YNKy8" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
            </node>
            <node concept="2OqwBi" id="3VhUp_YNKX8" role="33vP2m">
              <node concept="37vLTw" id="3VhUp_YNKQk" role="2Oq$k0">
                <ref role="3cqZAo" node="3VhUp_YNzQc" resolve="myRepository" />
              </node>
              <node concept="liA8E" id="3VhUp_YNLlY" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="2OqwBi" id="3VhUp_YNLPQ" role="37wK5m">
                  <node concept="37vLTw" id="3VhUp_YNLoJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2syzu7qTgQb" resolve="myNode" />
                  </node>
                  <node concept="1mfA1w" id="3VhUp_YNMiz" role="2OqNvi" />
                </node>
                <node concept="3VsKOn" id="3VhUp_YNMpq" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3VhUp_YNMMx" role="3cqZAp">
          <node concept="10QFUN" id="3VhUp_YNNd1" role="3clFbG">
            <node concept="3uibUv" id="3VhUp_YNNuW" role="10QFUM">
              <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
            </node>
            <node concept="2YIFZM" id="6YcNwH3vFra" role="10QFUP">
              <ref role="37wK5l" to="g27j:~FBNetwork.extractNetwork(org.fbme.lib.iec61499.declarations.Declaration)" resolve="extractNetwork" />
              <ref role="1Pybhc" to="g27j:~FBNetwork" resolve="FBNetwork" />
              <node concept="37vLTw" id="6YcNwH3vFsh" role="37wK5m">
                <ref role="3cqZAo" node="3VhUp_YNKy7" resolve="container" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YNILL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZk4Tu" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZk5wg" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZk5wi" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZk5wj" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZk5wo" role="3clF47">
        <node concept="3clFbF" id="_2FpOZk61x" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZk61u" role="3clFbG">
            <ref role="3cqZAo" node="3VhUp_YNzQc" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZk5wp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3VhUp_YORIY">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="EmptyTypeDescriptor" />
    <node concept="312cEg" id="3VhUp_YORJ2" role="jymVt">
      <property role="TrG5h" value="myBrokenTypeName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3VhUp_YORJ3" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORJ4" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YORJ8" role="jymVt" />
    <node concept="3uibUv" id="3VhUp_YORJa" role="EKbjA">
      <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
    </node>
    <node concept="3clFbW" id="3VhUp_YORJb" role="jymVt">
      <node concept="3cqZAl" id="3VhUp_YORJc" role="3clF45" />
      <node concept="3Tm1VV" id="3VhUp_YORJd" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YORJe" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YORJj" role="3cqZAp">
          <node concept="37vLTI" id="3VhUp_YORJk" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YORJl" role="37vLTx">
              <ref role="3cqZAo" node="3VhUp_YORJt" resolve="brokenTypeName" />
            </node>
            <node concept="37vLTw" id="3VhUp_YORJm" role="37vLTJ">
              <ref role="3cqZAo" node="3VhUp_YORJ2" resolve="myBrokenTypeName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YORJt" role="3clF46">
        <property role="TrG5h" value="brokenTypeName" />
        <node concept="3uibUv" id="3VhUp_YORJu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YORJx" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YORJy" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="3VhUp_YORJz" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORJ$" role="3clF45">
        <ref role="3uigEE" to="cwd8:~NamedDeclaration" resolve="NamedDeclaration" />
      </node>
      <node concept="3clFbS" id="3VhUp_YORJ_" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YORJA" role="3cqZAp">
          <node concept="10Nm6u" id="3VhUp_YORJC" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YORJJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YORJK" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YORJL" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="3VhUp_YORJM" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORJN" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3VhUp_YORJO" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YPt6B" role="3cqZAp">
          <node concept="37vLTw" id="3VhUp_YPt6D" role="3clFbG">
            <ref role="3cqZAo" node="3VhUp_YORJ2" resolve="myBrokenTypeName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YORJY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YP0Jr" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YORJZ" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3Tm1VV" id="3VhUp_YORK0" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORK1" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3VhUp_YORK2" role="11_B2D">
          <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YORK3" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YPu$c" role="3cqZAp">
          <node concept="2YIFZM" id="3VhUp_YPaGH" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <node concept="3uibUv" id="3VhUp_YPeFR" role="3PaCim">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YORKU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YP_dB" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YORKV" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3Tm1VV" id="3VhUp_YORKW" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORKX" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3VhUp_YORKY" role="11_B2D">
          <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YORKZ" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YPvE4" role="3cqZAp">
          <node concept="2YIFZM" id="3VhUp_YPvE5" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <node concept="3uibUv" id="3VhUp_YPvE6" role="3PaCim">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YORLQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YP_tI" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YORLR" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3Tm1VV" id="3VhUp_YORLS" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORLT" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3VhUp_YORLU" role="11_B2D">
          <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YORLV" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YPwWP" role="3cqZAp">
          <node concept="2YIFZM" id="3VhUp_YPwWQ" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <node concept="3uibUv" id="3VhUp_YPwWR" role="3PaCim">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YORMM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YP_H4" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YORMN" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3Tm1VV" id="3VhUp_YORMO" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORMP" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3VhUp_YORMQ" role="11_B2D">
          <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YORMR" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YPxXI" role="3cqZAp">
          <node concept="2YIFZM" id="3VhUp_YPxXJ" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <node concept="3uibUv" id="3VhUp_YPxXK" role="3PaCim">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YORNI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YP_Wr" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YORNJ" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="3VhUp_YORNK" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORNL" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3VhUp_YORNM" role="11_B2D">
          <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YORNN" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YPz0j" role="3cqZAp">
          <node concept="2YIFZM" id="3VhUp_YPz0k" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <node concept="3uibUv" id="3VhUp_YPz0l" role="3PaCim">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YOROE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YPAbN" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YOROF" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="3VhUp_YOROG" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YOROH" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3VhUp_YOROI" role="11_B2D">
          <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YOROJ" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YP$jU" role="3cqZAp">
          <node concept="2YIFZM" id="3VhUp_YP$jV" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="3VhUp_YP$jW" role="3PaCim">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YORPA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YPArY" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YORPB" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForInputEvent" />
      <node concept="3Tm1VV" id="3VhUp_YORPC" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORPD" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3VhUp_YORPE" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YORPF" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="3VhUp_YORPG" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3VhUp_YORPH" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YP$DR" role="3cqZAp">
          <node concept="2YIFZM" id="3VhUp_YP$DS" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="3VhUp_YP$Qq" role="3PaCim">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YORPT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YPAFo" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YORPU" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForOutputEvent" />
      <node concept="3Tm1VV" id="3VhUp_YORPV" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YORPW" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3VhUp_YORPX" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YORPY" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="3VhUp_YORPZ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3VhUp_YORQ0" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YP_1b" role="3cqZAp">
          <node concept="2YIFZM" id="3VhUp_YP_1c" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <node concept="3uibUv" id="3VhUp_YP_1d" role="3PaCim">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YORQc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3VhUp_YPIpy" role="1B3o_S" />
  </node>
</model>

