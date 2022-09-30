<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(org.fbme.ide.iec61499.adapter.fbnetwork)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="lv7i" ref="r:5472e35e-027d-42bb-bcce-32726ec4c9a9(org.fbme.ide.iec61499.adapter.ecc)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="g136" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.ecc(org.fbme.lib/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="xpc1" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations.hierarchies(org.fbme.lib/)" />
    <import index="6iyo" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork.subapp(org.fbme.lib/)" />
    <import index="pq5g" ref="r:832201cc-eba2-477d-a9e1-8c050863a010(org.fbme.ide.iec61499.adapter.fbnetwork.subapp)" />
    <import index="i51s" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel.generator.smodelAdapter(MPS.Core/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="h353" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.expressions(org.fbme.lib/)" />
    <import index="a9j9" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.types(org.fbme.lib/)" />
    <import index="x2xk" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.statements(org.fbme.lib/)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="sm75" ref="r:4a1e3170-2b3f-429d-845f-93bf3a5a9633(org.fbme.ide.iec61499.adapter.st)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(org.fbme.ide.st.lang.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
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
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
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
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="1R4IoyQ$gqL">
    <property role="TrG5h" value="CompositeFBTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQ$gqM" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQA3C1" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQA3Ct" role="11_B2D">
        <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQA3Hp" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
    </node>
    <node concept="2tJIrI" id="1v1P8mMvfhN" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQA3I2" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQA3I3" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQA3I4" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQA3I6" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQA3I8" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQA3Ic" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQA3I9" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mLRvo" role="37wK5m">
            <ref role="3cqZAo" node="29$Ci4mLRiR" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQA3I9" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQA3SS" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="29$Ci4mLRiR" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5Kxyj0RO" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQA3Wm" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQGq49" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="1R4IoyQGq4b" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQGq4c" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="1R4IoyQGq4g" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQGq75" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQGq6Z" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQGqnX" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1IuIrLUvuAR" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1IuIrLUpT8X" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="1IuIrLUpTh8" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQGq4h" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h47WZ4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQ_1A_">
    <property role="TrG5h" value="FBInterfaceDeclarationByNode" />
    <property role="1sVAO0" value="true" />
    <node concept="15s5l7" id="1IuIrLUpjkU" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @FBInterfaceDeclarationByNode.T extends node&lt;DeclarationWithInterface&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @FBInterfaceDeclarationByNode.T extends node&lt;DeclarationWithInterface&gt; is not a valid substitute for the bounded parameter T" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_1EN" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQ_Trz" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQ_Tr$" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQ_Tr_" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQ_TrB" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUpkCw" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1IuIrLUpCCt" resolve="PlatformDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUplq9" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQ_TrE" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUplKC" role="37wK5m">
            <ref role="3cqZAo" node="29$Ci4mLd8H" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQ_TrE" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="1R4IoyQ_TrD" role="1tU5fm">
          <ref role="16sUi3" node="1R4IoyQ_1BB" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="29$Ci4mLd8H" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyj1Wb" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_RKv" role="jymVt" />
    <node concept="3clFb_" id="29$Ci4mLfi5" role="jymVt">
      <property role="TrG5h" value="getInputEvents" />
      <node concept="3Tm1VV" id="29$Ci4mLfi6" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLfi8" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLfi9" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="29$Ci4mLfia" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLgCO" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLgCM" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLhWL" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLiiK" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLj1w" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUpodR" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLjTH" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLlEk" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUpptV" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29$Ci4mLfib" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48q$P" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="29$Ci4mLw0w" role="jymVt" />
    <node concept="3clFb_" id="29$Ci4mLfie" role="jymVt">
      <property role="TrG5h" value="getOutputEvents" />
      <node concept="3Tm1VV" id="29$Ci4mLfif" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLfih" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLfii" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="29$Ci4mLfij" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLmAy" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLmAz" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLmA$" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLmA_" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLmAA" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUpoI8" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLnKY" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLmAD" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUpq33" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29$Ci4mLfik" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48rD0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="29$Ci4mLuE5" role="jymVt" />
    <node concept="3clFb_" id="29$Ci4mLfin" role="jymVt">
      <property role="TrG5h" value="getInputParameters" />
      <node concept="3Tm1VV" id="29$Ci4mLfio" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLfiq" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLfir" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="29$Ci4mLfis" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLnTs" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLnTt" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLnTu" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLotd" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLnTw" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUpqPv" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLpee" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLnTz" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUpqDB" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29$Ci4mLfit" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48t0p" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="29$Ci4mLtLU" role="jymVt" />
    <node concept="3clFb_" id="29$Ci4mLfiw" role="jymVt">
      <property role="TrG5h" value="getOutputParameters" />
      <node concept="3Tm1VV" id="29$Ci4mLfix" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLfiz" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLfi$" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="29$Ci4mLfi_" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLqmi" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLqmj" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLqmk" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLqml" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLqmm" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUpruL" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLrq3" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLqmp" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUps4i" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29$Ci4mLfiA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48tV8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQ_1AA" role="1B3o_S" />
    <node concept="16euLQ" id="1R4IoyQ_1BB" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="1R4IoyQ_1CU" role="3ztrMU">
        <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
      </node>
    </node>
    <node concept="3uibUv" id="29$Ci4mL8J0" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~FBInterfaceDeclaration" resolve="FBInterfaceDeclaration" />
    </node>
    <node concept="3uibUv" id="3WC2DnYw0i_" role="EKbjA">
      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
    </node>
    <node concept="3uibUv" id="1IuIrLUpdlg" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1IuIrLUpCCg" resolve="PlatformDeclarationBase" />
      <node concept="16syzq" id="1IuIrLUpfAm" role="11_B2D">
        <ref role="16sUi3" node="1R4IoyQ_1BB" resolve="T" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQ_Pw7">
    <property role="TrG5h" value="FBInterfaceDeclarationWithAdaptersByNode" />
    <property role="1sVAO0" value="true" />
    <node concept="15s5l7" id="6z_cCa85Faz" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @FBTypeDescriptorWithAdaptersByNode.T extends node&lt;DeclarationWithInterfaceAndAdapters&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @FBTypeDescriptorWithAdaptersByNode.T extends node&lt;DeclarationWithInterfaceAndAdapters&gt; is not a valid substitute for the bounded parameter T" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_XwY" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQA1jy" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQA1jz" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQA1j$" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQA1jA" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQA1jC" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQ_Trz" resolve="FBInterfaceDeclarationByNode" />
          <node concept="37vLTw" id="1R4IoyQA1jG" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQA1jD" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mL$oz" role="37wK5m">
            <ref role="3cqZAo" node="29$Ci4mL$il" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQA1jD" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="1R4IoyQA1jF" role="1tU5fm">
          <ref role="16sUi3" node="1R4IoyQ_QUe" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="29$Ci4mL$il" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjGfO" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQA0W0" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_XNt" role="jymVt">
      <property role="TrG5h" value="getSockets" />
      <node concept="3Tm1VV" id="1R4IoyQ_XNu" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_XNv" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mL$FU" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~SocketDeclaration" resolve="SocketDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_XNU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48z4i" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1R4IoyQ_XNV" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mL$Rj" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mL$Rf" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mL_v_" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="29$Ci4mL_Kx" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUqDlq" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLA6e" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLAFJ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SocketDeclaration" resolve="SocketDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqE6F" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="29$Ci4mLCpN" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~SocketDeclaration" resolve="SocketDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJzQE" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_XNY" role="jymVt">
      <property role="TrG5h" value="getPlugs" />
      <node concept="3Tm1VV" id="1R4IoyQ_XNZ" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_XO0" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLCVI" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_XOr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48zok" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1R4IoyQ_XOs" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLBpa" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLBpb" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLBpc" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="29$Ci4mLBpd" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUqDB6" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="35zEkrvLKRP" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLBpg" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqEiU" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="29$Ci4mLCKF" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQ_Pw8" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQ_Xel" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBInterfaceDeclarationByNode" />
      <node concept="16syzq" id="1R4IoyQ_XeP" role="11_B2D">
        <ref role="16sUi3" node="1R4IoyQ_QUe" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="1R4IoyQ_QUe" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="1R4IoyQ_Xea" role="3ztrMU">
        <ref role="ehGHo" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
      </node>
    </node>
    <node concept="3uibUv" id="29$Ci4mLzZt" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~FBInterfaceDeclarationWithAdapters" resolve="FBInterfaceDeclarationWithAdapters" />
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQHa9H">
    <property role="TrG5h" value="BasicFBTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQHa9I" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQHb$P" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQHb_h" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHbDG" role="jymVt" />
    <node concept="2tJIrI" id="1R0_JUQUMu4" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQHbEt" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQHbEu" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQHbEv" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQHbEx" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQHbEz" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQHbEB" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQHbE$" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mLDXu" role="37wK5m">
            <ref role="3cqZAo" node="1R0_JUQUMx0" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQHbE$" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQHbME" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQUMx0" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjIsu" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHbPt" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQHc1S" role="jymVt">
      <property role="TrG5h" value="getEcc" />
      <node concept="3Tm1VV" id="1R4IoyQHc1U" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQHc1V" role="3clF45">
        <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
      </node>
      <node concept="3clFbS" id="1R4IoyQHc20" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQHcgh" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQHcgf" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQJes5" role="2ShVmc">
              <ref role="37wK5l" to="lv7i:5jb5jNC4z8M" resolve="ECCByNode" />
              <node concept="37vLTw" id="1IuIrLUpRBC" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="1IuIrLUpRN9" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQHc21" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQHc1W" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="6bsr$eapPXs" role="jymVt" />
    <node concept="3uibUv" id="1R4IoyQHc0Y" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
    </node>
    <node concept="3clFb_" id="6bsr$eapQ3E" role="jymVt">
      <property role="TrG5h" value="getInternalVariables" />
      <node concept="3Tm1VV" id="6bsr$eapQ3F" role="1B3o_S" />
      <node concept="2AHcQZ" id="6bsr$eapQ3H" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6bsr$eapQ3I" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bsr$eapQ3J" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="6bsr$eapQ3O" role="3clF47">
        <node concept="3clFbF" id="6bsr$eapQbG" role="3cqZAp">
          <node concept="2ShNRf" id="6bsr$eapQbA" role="3clFbG">
            <node concept="1pGfFk" id="6bsr$eapQxR" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6bsr$eapR37" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUpRU8" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="3qWNnbt9Jab" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYFAL" resolve="internalVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="6bsr$eapSa$" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUpSzA" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="6bsr$eapUni" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6bsr$eapQ3P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6bsr$eapROI" role="jymVt" />
    <node concept="3clFb_" id="6bsr$eapQ3S" role="jymVt">
      <property role="TrG5h" value="getAlgorithms" />
      <node concept="3Tm1VV" id="6bsr$eapQ3T" role="1B3o_S" />
      <node concept="2AHcQZ" id="6bsr$eapQ3V" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6bsr$eapQ3W" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bsr$eapQ3X" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="6bsr$eapQ42" role="3clF47">
        <node concept="3clFbF" id="6bsr$eapSO4" role="3cqZAp">
          <node concept="2ShNRf" id="6bsr$eapSO5" role="3clFbG">
            <node concept="1pGfFk" id="6bsr$eapSO6" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6bsr$eapSO7" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUpSbN" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="6bsr$eapSO9" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
                </node>
              </node>
              <node concept="3VsKOn" id="6bsr$eapSOa" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUpSKy" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="6bsr$eapUT7" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6bsr$eapQ43" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQJoAV">
    <property role="TrG5h" value="ServiceInterfaceFBTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQJoAW" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQJoCq" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQJoCS" role="11_B2D">
        <ref role="ehGHo" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQJoHl" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ServiceInterfaceFBTypeDeclaration" resolve="ServiceInterfaceFBTypeDeclaration" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQJsFq" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQJsG$" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQJsG_" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQJsGA" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQJsGC" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQJsGE" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQJsGI" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQJsGF" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mLXc0" role="37wK5m">
            <ref role="3cqZAo" node="29$Ci4mLX5v" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJsGF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQJsOz" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="29$Ci4mLX5v" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjYK1" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQJyKg">
    <property role="TrG5h" value="SubapplicationTypeByNode" />
    <node concept="2tJIrI" id="1R4IoyQJyTd" role="jymVt" />
    <node concept="3Tm1VV" id="1R4IoyQJyKh" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQJyLq" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQJyLT" role="11_B2D">
        <ref role="ehGHo" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQJySZ" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
    </node>
    <node concept="3clFbW" id="1R4IoyQJyUq" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQJyUr" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQJyUs" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQJyUu" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQJyUw" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQJyU$" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQJyUx" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mMaa_" role="37wK5m">
            <ref role="3cqZAo" node="29$Ci4mMa3k" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJyUx" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQJyZH" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="29$Ci4mMa3k" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5Kxyk0rr" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJz2y" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJz4u" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="1R4IoyQJz4w" role="1B3o_S" />
      <node concept="3uibUv" id="33NTkp0zbbs" role="3clF45">
        <ref role="3uigEE" to="6iyo:~SubappNetwork" resolve="SubappNetwork" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJz4z" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJz7i" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQJz7c" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQJzjz" role="2ShVmc">
              <ref role="37wK5l" to="pq5g:6YcNwH3zv22" resolve="SubappNetworkByNode" />
              <node concept="37vLTw" id="1hwo9XLEHg1" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="1hwo9XLEHqP" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJz4$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQK9Hs">
    <property role="TrG5h" value="AdapterTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQK9Ht" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQK9IH" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBInterfaceDeclarationByNode" />
      <node concept="3Tqbb2" id="1R4IoyQKatd" role="11_B2D">
        <ref role="ehGHo" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQKawr" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQKawP" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQKaxv" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQKaxw" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQKaxx" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQKaxz" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQKax_" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQ_Trz" resolve="FBInterfaceDeclarationByNode" />
          <node concept="37vLTw" id="1R4IoyQKaxD" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQKaxA" resolve="node" />
          </node>
          <node concept="37vLTw" id="3VhUp_YVBDs" role="37wK5m">
            <ref role="3cqZAo" node="1v1P8mMut_e" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQKaxA" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQKa_f" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1v1P8mMut_e" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5Kxyj0Yi" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2SU8oJdHGJF">
    <property role="TrG5h" value="SystemDeclarationByNode" />
    <node concept="2tJIrI" id="2SU8oJdHN50" role="jymVt" />
    <node concept="3Tm1VV" id="2SU8oJdHGJG" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdHMOp" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
    </node>
    <node concept="3uibUv" id="3WC2DnYw2i3" role="EKbjA">
      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
    </node>
    <node concept="3clFbW" id="1hwo9XLETtr" role="jymVt">
      <node concept="3cqZAl" id="1hwo9XLETts" role="3clF45" />
      <node concept="3Tm1VV" id="1hwo9XLETtt" role="1B3o_S" />
      <node concept="37vLTG" id="1hwo9XLETty" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1hwo9XLETtA" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1hwo9XLETt$" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyk1N8" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1hwo9XLETtB" role="3clF47">
        <node concept="XkiVB" id="1hwo9XLETtE" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1IuIrLUpCCt" resolve="PlatformDeclarationBase" />
          <node concept="37vLTw" id="1hwo9XLETtC" role="37wK5m">
            <ref role="3cqZAo" node="1hwo9XLETty" resolve="node" />
          </node>
          <node concept="37vLTw" id="1hwo9XLETtD" role="37wK5m">
            <ref role="3cqZAo" node="1hwo9XLETt$" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdUdQX" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdUdT8" role="jymVt">
      <property role="TrG5h" value="getApplications" />
      <node concept="3Tm1VV" id="2SU8oJdUdTa" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdUdTb" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdUdTc" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTd" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SU8oJdUdTe" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWdkI" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWdkE" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWdFB" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWe2b" role="37wK5m">
                <node concept="37vLTw" id="1hwo9XLEYgA" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWevI" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWhvj" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
              </node>
              <node concept="37vLTw" id="1hwo9XLEZXx" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="1R0_JUQWizU" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrtiB" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdUdTi" role="jymVt">
      <property role="TrG5h" value="getDevices" />
      <node concept="3Tm1VV" id="2SU8oJdUdTk" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdUdTl" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdUdTm" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SU8oJdUdTo" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWiW3" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWiW4" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWiW5" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWiW6" role="37wK5m">
                <node concept="37vLTw" id="1hwo9XLEYz1" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWjtZ" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRR7MVs" resolve="devices" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWiW9" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
              </node>
              <node concept="37vLTw" id="1hwo9XLF0rM" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="1R0_JUQWk8R" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKkJ_o" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKkK49" role="jymVt">
      <property role="TrG5h" value="getSegments" />
      <node concept="3Tm1VV" id="5z1uLkKkK4a" role="1B3o_S" />
      <node concept="2AHcQZ" id="5z1uLkKkK4c" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="5z1uLkKkK4d" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5z1uLkKkK4e" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKkK4f" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKkLUR" role="3cqZAp">
          <node concept="2ShNRf" id="5z1uLkKkLUT" role="3clFbG">
            <node concept="1pGfFk" id="5z1uLkKkLUU" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="5z1uLkKkLUV" role="37wK5m">
                <node concept="37vLTw" id="1hwo9XLEYMu" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="5z1uLkKkMw0" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5s_pyght$Xg" resolve="segments" />
                </node>
              </node>
              <node concept="3VsKOn" id="5z1uLkKkLUY" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
              </node>
              <node concept="37vLTw" id="1hwo9XLF0HT" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="5z1uLkKkMIk" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKkK4g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKkNlh" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKkK4j" role="jymVt">
      <property role="TrG5h" value="getLinks" />
      <node concept="3Tm1VV" id="5z1uLkKkK4k" role="1B3o_S" />
      <node concept="2AHcQZ" id="5z1uLkKkK4m" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="5z1uLkKkK4n" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1hwo9XLEICU" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~Link" resolve="Link" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKkK4p" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKkOJn" role="3cqZAp">
          <node concept="2ShNRf" id="5z1uLkKkOJo" role="3clFbG">
            <node concept="1pGfFk" id="5z1uLkKkOJp" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="5z1uLkKkOJq" role="37wK5m">
                <node concept="37vLTw" id="1hwo9XLEZ7y" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="5z1uLkKkPDo" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5s_pygh_SXc" resolve="links" />
                </node>
              </node>
              <node concept="3VsKOn" id="5z1uLkKkOJt" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Link" resolve="Link" />
              </node>
              <node concept="37vLTw" id="1hwo9XLF18C" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="1hwo9XLEJ1S" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~Link" resolve="Link" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKkK4q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4eWau" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4eXam" role="jymVt">
      <property role="TrG5h" value="getMappings" />
      <node concept="3Tm1VV" id="3lxP5h4eXan" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4eXap" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4eXaq" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1hwo9XLEKKo" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~Mapping" resolve="Mapping" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4eXas" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4eZ1P" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4eZ1Q" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h4eZ1R" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="3lxP5h4eZ1S" role="37wK5m">
                <node concept="37vLTw" id="1hwo9XLEZp$" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="3lxP5h4eZw9" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRRozfU" resolve="mappings" />
                </node>
              </node>
              <node concept="3VsKOn" id="3lxP5h4eZ1V" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Mapping" resolve="Mapping" />
              </node>
              <node concept="37vLTw" id="1hwo9XLF1uH" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="1hwo9XLEK4G" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~Mapping" resolve="Mapping" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4eXat" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1hwo9XLEMhc" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1IuIrLUpCCg" resolve="PlatformDeclarationBase" />
      <node concept="3Tqbb2" id="1hwo9XLEOoZ" role="11_B2D">
        <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4dM3MZ7oKoQ">
    <property role="TrG5h" value="ApplicationDeclarationByNode" />
    <node concept="2tJIrI" id="4gibKcMrduz" role="jymVt" />
    <node concept="3Tm1VV" id="4dM3MZ7oKoR" role="1B3o_S" />
    <node concept="3uibUv" id="4gibKcMrdui" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
    </node>
    <node concept="3clFbW" id="4gibKcMrdGG" role="jymVt">
      <node concept="3cqZAl" id="4gibKcMrdGH" role="3clF45" />
      <node concept="3Tm1VV" id="4gibKcMrdGI" role="1B3o_S" />
      <node concept="3clFbS" id="4gibKcMrdGK" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUpyiy" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_LX" resolve="PlatformContainedDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUpyB9" role="37wK5m">
            <ref role="3cqZAo" node="4gibKcMrdGN" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUpyFv" role="37wK5m">
            <ref role="3cqZAo" node="4gibKcMrg36" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4gibKcMrdGN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4gibKcMrdGM" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="4gibKcMrg36" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjBMC" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrdQM" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrdRG" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="4gibKcMrdRI" role="1B3o_S" />
      <node concept="3uibUv" id="1IuIrLUpz8V" role="3clF45">
        <ref role="3uigEE" to="6iyo:~SubappNetwork" resolve="SubappNetwork" />
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdRK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4gibKcMrdRL" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrenp" role="3cqZAp">
          <node concept="2ShNRf" id="4gibKcMrenj" role="3clFbG">
            <node concept="1pGfFk" id="4gibKcMreF3" role="2ShVmc">
              <ref role="37wK5l" to="pq5g:6YcNwH3zv22" resolve="SubappNetworkByNode" />
              <node concept="37vLTw" id="1IuIrLUpzAZ" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="1IuIrLUp$cN" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdRM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrgBQ" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrgNG" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="4gibKcMrgNI" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrgNJ" role="3clF45">
        <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
      </node>
      <node concept="3clFbS" id="4gibKcMrgNL" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDNGm" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLDNGn" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1hwo9XLDNGo" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrgNM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="4gibKcMrgNK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUpvWs" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLD_LP" resolve="PlatformContainedDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUpwHn" role="11_B2D">
        <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPdcu">
    <property role="TrG5h" value="DeviceDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPdds" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPdcv" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPdP$" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
    </node>
    <node concept="3clFbW" id="1IuIrLUpYVd" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUpYVe" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUpYVf" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUpYVh" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUpYVj" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_LX" resolve="PlatformContainedDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUpYVn" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUpYVk" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUpYVr" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUpYVo" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUpYVk" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUpYVm" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUpYVo" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjJu$" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPe5_" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPe8E" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="3MncU7wPe8G" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe8H" role="3clF45">
        <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe8I" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDWVf" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLDWVd" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1R0_JUQWrDJ" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe8J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4819q" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h47XZy" role="jymVt">
      <property role="TrG5h" value="getTypeReference" />
      <node concept="3Tm1VV" id="3lxP5h47XZz" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h47XZ_" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h4802t" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h47XZB" role="3clF47">
        <node concept="3clFbF" id="3lxP5h47XZC" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h47XZD" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h47XZE" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUq37f" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h47XZG" role="37wK5m">
                <ref role="359W_E" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                <ref role="359W_F" to="xiqq:1WTKUmKKVP_" resolve="type" />
              </node>
              <node concept="3VsKOn" id="3lxP5h47XZH" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
              </node>
              <node concept="3uibUv" id="3lxP5h480lN" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUq3yq" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h47XZK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h47XZ$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h481VR" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPe8U" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPe8W" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe8X" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="sOaa8ZXaOf" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPe8Z" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWsnr" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWsnh" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWsJ4" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWtg8" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUq3R_" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWtO7" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:fshQXbRNVN" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWuTc" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="1IuIrLUq4Vv" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="sOaa8ZXbui" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe90" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h482wk" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h483Nm" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPe93" role="jymVt">
      <property role="TrG5h" value="getResources" />
      <node concept="3Tm1VV" id="3MncU7wPe95" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe96" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPe97" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPe98" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWwF_" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWwFB" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWwFC" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWwFD" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUq4mm" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWxWl" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWwFG" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUq5qI" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="1R0_JUQWx3s" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe99" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h484nP" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h485ES" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPe9c" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPe9e" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe9f" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe9h" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlwOv" role="3cqZAp">
          <node concept="2ShNRf" id="_2FpOZlwOp" role="3clFbG">
            <node concept="1pGfFk" id="_2FpOZlx4s" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1IuIrLUvuAR" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1IuIrLUq5Bm" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="1IuIrLUq5WR" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe9i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe9g" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUpW$S" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLD_LP" resolve="PlatformContainedDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUpYrD" role="11_B2D">
        <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPjJU">
    <property role="TrG5h" value="DeviceTypeDeclarationByNode" />
    <node concept="3Tm1VV" id="3MncU7wPjJV" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPjMl" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
    </node>
    <node concept="2tJIrI" id="1R0_JUQWFnI" role="jymVt" />
    <node concept="3clFbW" id="1IuIrLUqf2q" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUqf2r" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUqf2s" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUqf2u" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUqf2w" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1IuIrLUpCCt" resolve="PlatformDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUqf2$" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqf2x" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUqf2C" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqf2_" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqf2x" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUqgy1" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqf2_" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjKg0" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3MncU7wPk7y" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPk7$" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk7_" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPk7A" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPk7C" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW$2h" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQW$2f" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQW$hu" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="1R0_JUQW$_N" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="1R0_JUQW_qz" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUqgJs" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQW_VL" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHkyELb" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWC3l" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqhvV" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7B" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWFJd" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPk7G" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPk7I" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk7J" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk7K" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPklb" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPkl5" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPkMP" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1IuIrLUvuAR" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1IuIrLUqhWG" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqibl" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48f6G" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWG6H" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPk7O" role="jymVt">
      <property role="TrG5h" value="getResources" />
      <node concept="3Tm1VV" id="3MncU7wPk7Q" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk7R" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPk7S" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7T" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk7U" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWCLf" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWCLg" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWCLh" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="1R0_JUQWDdQ" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="2OqwBi" id="1R0_JUQWCLj" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUqivS" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWDYq" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHk$uBA" resolve="resources" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWCLm" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqjax" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qAru235nTv" role="jymVt" />
    <node concept="3clFb_" id="7qAru235nfm" role="jymVt">
      <property role="TrG5h" value="getInstantiableResourceTypes" />
      <node concept="3Tm1VV" id="7qAru235nfn" role="1B3o_S" />
      <node concept="2AHcQZ" id="7qAru235nfo" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7qAru235nfp" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qAru235rem" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ResourceTypeReference" resolve="ResourceTypeReference" />
        </node>
      </node>
      <node concept="3clFbS" id="7qAru235nfr" role="3clF47">
        <node concept="3clFbF" id="7qAru235nfs" role="3cqZAp">
          <node concept="2ShNRf" id="7qAru235nft" role="3clFbG">
            <node concept="1pGfFk" id="7qAru235nfu" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="7qAru235nfv" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUqlSv" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="7qAru235sgB" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:1WTKUmKKVQc" resolve="instantiableResourceTypes" />
                </node>
              </node>
              <node concept="3VsKOn" id="7qAru235nfy" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceTypeReference" resolve="ResourceTypeReference" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqmnK" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="7qAru235rBr" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ResourceTypeReference" resolve="ResourceTypeReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7qAru235nf_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUqceT" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1IuIrLUpCCg" resolve="PlatformDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUqdz0" role="11_B2D">
        <ref role="ehGHo" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPlNy">
    <property role="TrG5h" value="ResourceDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPlP8" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPlNz" role="1B3o_S" />
    <node concept="3uibUv" id="2YkCud38mtj" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
    </node>
    <node concept="3clFbW" id="3MncU7wPlRE" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPlRF" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPlRG" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPlRI" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUtUCc" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_LX" resolve="PlatformContainedDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUtV01" role="37wK5m">
            <ref role="3cqZAo" node="3MncU7wPlRL" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUtV69" role="37wK5m">
            <ref role="3cqZAo" node="1R0_JUQUyJG" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPlRL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3MncU7wPlRK" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQUyJG" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyo9V5" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPz7W" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPGEs" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="3MncU7wPGEu" role="1B3o_S" />
      <node concept="3uibUv" id="6bsr$eaqjoW" role="3clF45">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPGEw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPGEx" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLEm8D" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLEm8B" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1R0_JUQUHBH" role="37wK5m">
              <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPGEy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPlWO" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPm1m" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPm1o" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPm1p" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1q" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPm1r" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPme3" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPmdX" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPmtp" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1IuIrLUvuAR" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1IuIrLUtVQI" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="1IuIrLUtWhN" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPnOO" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPo2a" role="jymVt">
      <property role="TrG5h" value="getTypeReference" />
      <node concept="3Tm1VV" id="3MncU7wPo2c" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4eRV2" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h4eSty" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2e" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPo2f" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPwwW" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPwwQ" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPwKm" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUtXpV" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4eT7y" role="37wK5m">
                <ref role="359W_E" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                <ref role="359W_F" to="xiqq:2lwHqHkyELp" resolve="type" />
              </node>
              <node concept="3VsKOn" id="3lxP5h4eTMO" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUtXGz" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="3lxP5h4eTxz" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPxEc" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPo2j" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPo2l" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPo2m" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="sOaa8ZXddN" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2o" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPo2p" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXdlk" role="3cqZAp">
          <node concept="2ShNRf" id="sOaa8ZXdlg" role="3clFbG">
            <node concept="1pGfFk" id="sOaa8ZXeDy" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="sOaa8ZXeFo" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="2OqwBi" id="sOaa8ZXf3d" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUtXVi" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="sOaa8ZXfyi" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="sOaa8ZXfMP" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="1IuIrLUtYrz" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUtSec" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLD_LP" resolve="PlatformContainedDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUtTxM" role="11_B2D">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPn$$">
    <property role="TrG5h" value="ResourceTypeDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPr0n" role="jymVt" />
    <node concept="2tJIrI" id="1IuIrLUu7ob" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPn$_" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPr07" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
    </node>
    <node concept="3clFbW" id="1IuIrLUu81y" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUu81z" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUu81$" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUu81A" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUu81C" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1IuIrLUpCCt" resolve="PlatformDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUu81G" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUu81D" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUu81K" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUu81H" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUu81D" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUu8zU" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUu81H" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjX91" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUu9pT" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPr9p" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPr9r" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPr9s" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPr9t" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPr9u" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWTfD" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWTfB" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWTvg" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="1R0_JUQWTNL" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="1R0_JUQWUoV" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUu9SR" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWUXz" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWWlU" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUuap8" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9v" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="7qAru235aFz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPrnU" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPr9y" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPr9$" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPr9_" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="3MncU7wPr9A" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPrtS" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPrtM" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPrHm" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1IuIrLUvuAR" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1IuIrLUub16" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="1IuIrLUubfn" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="7qAru235caU" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qAru235eq_" role="jymVt" />
    <node concept="3clFb_" id="7qAru235eP8" role="jymVt">
      <property role="TrG5h" value="getInstantiableFBTypes" />
      <node concept="3Tm1VV" id="7qAru235eP9" role="1B3o_S" />
      <node concept="2AHcQZ" id="7qAru235ePb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7qAru235ePc" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qAru235ePd" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~FBTypeReference" resolve="FBTypeReference" />
        </node>
      </node>
      <node concept="3clFbS" id="7qAru235ePe" role="3clF47">
        <node concept="3clFbF" id="7qAru235fcR" role="3cqZAp">
          <node concept="2ShNRf" id="7qAru235fcL" role="3clFbG">
            <node concept="1pGfFk" id="7qAru235h6o" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="7qAru235hJD" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUucwe" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="7qAru235ibY" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHjRwSo" resolve="instantiableFBTypes" />
                </node>
              </node>
              <node concept="3VsKOn" id="7qAru235j8H" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~FBTypeReference" resolve="FBTypeReference" />
              </node>
              <node concept="37vLTw" id="1IuIrLUucPH" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="7qAru235k0D" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~FBTypeReference" resolve="FBTypeReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7qAru235ePf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUu58E" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1IuIrLUpCCg" resolve="PlatformDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUu6n1" role="11_B2D">
        <ref role="ehGHo" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R0_JUQTAc2">
    <property role="TrG5h" value="ParameterAssignmentByNode" />
    <node concept="2tJIrI" id="1R0_JUQW8uY" role="jymVt" />
    <node concept="3clFbW" id="1IuIrLUqT8o" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUqT8p" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUqT8q" role="1B3o_S" />
      <node concept="37vLTG" id="1IuIrLUqT8$" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUqT8C" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqT8A" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjRtr" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUqT8D" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUqT8G" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="1IuIrLUqT8E" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqT8$" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUqT8F" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqT8A" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUqTS7" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQTAkG" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1R0_JUQTAkH" role="1B3o_S" />
      <node concept="3uibUv" id="6bsr$eaqaNy" role="3clF45">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="1R0_JUQTAkK" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLEek1" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLEek2" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1hwo9XLEek3" role="37wK5m">
              <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQTAkL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48HvX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQW9FU" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQTAkO" role="jymVt">
      <property role="TrG5h" value="getParameterReference" />
      <node concept="3Tm1VV" id="1R0_JUQTAkP" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h48CTC" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h48D85" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1R0_JUQTAkS" role="3clF47">
        <node concept="3clFbF" id="3lxP5h48DLK" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h48DLE" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h48E7v" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUqUQq" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h48Ers" role="37wK5m">
                <ref role="359W_E" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
                <ref role="359W_F" to="xiqq:2lwHqHkyF7b" resolve="decl" />
              </node>
              <node concept="3VsKOn" id="3lxP5h48EKo" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqVf1" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="3lxP5h48GiG" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQTAkT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48DuZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQW9MQ" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQTAkW" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="3Tm1VV" id="1R0_JUQTAkX" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghxNXVn" role="3clF45">
        <ref role="3uigEE" to="h353:~Literal" resolve="Literal" />
      </node>
      <node concept="3clFbS" id="1R0_JUQTAl0" role="3clF47">
        <node concept="3clFbF" id="6bsr$eaqcdE" role="3cqZAp">
          <node concept="2OqwBi" id="6bsr$eaqcsG" role="3clFbG">
            <node concept="37vLTw" id="1IuIrLUqVAa" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="6bsr$eaqcKS" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
              <node concept="2OqwBi" id="6bsr$eaqcQd" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUqWA2" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="6bsr$eaqcQf" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
                </node>
              </node>
              <node concept="3VsKOn" id="6bsr$eaqdnR" role="37wK5m">
                <ref role="3VsUkX" to="h353:~Literal" resolve="Literal" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQTAl1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6bsr$eaqdKh" role="jymVt" />
    <node concept="3clFb_" id="6bsr$eaqe4m" role="jymVt">
      <property role="TrG5h" value="setValue" />
      <node concept="3Tm1VV" id="6bsr$eaqe4n" role="1B3o_S" />
      <node concept="3cqZAl" id="6bsr$eaqe4p" role="3clF45" />
      <node concept="37vLTG" id="6bsr$eaqe4q" role="3clF46">
        <property role="TrG5h" value="literal" />
        <node concept="3uibUv" id="5F$aghxNXnf" role="1tU5fm">
          <ref role="3uigEE" to="h353:~Literal" resolve="Literal" />
        </node>
        <node concept="2AHcQZ" id="6bsr$eaqe4s" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="6bsr$eaqe4t" role="3clF47">
        <node concept="3clFbF" id="6bsr$eaqeBP" role="3cqZAp">
          <node concept="37vLTI" id="6bsr$eaqf8B" role="3clFbG">
            <node concept="3K4zz7" id="5F$aghxNTLj" role="37vLTx">
              <node concept="10Nm6u" id="5F$aghxNTXi" role="3K4E3e" />
              <node concept="2OqwBi" id="5F$aghxNV0q" role="3K4GZi">
                <node concept="1eOMI4" id="5F$aghxNUid" role="2Oq$k0">
                  <node concept="10QFUN" id="5F$aghxNUic" role="1eOMHV">
                    <node concept="37vLTw" id="5F$aghxNUib" role="10QFUP">
                      <ref role="3cqZAo" node="6bsr$eaqe4q" resolve="literal" />
                    </node>
                    <node concept="3uibUv" id="5F$aghxNWua" role="10QFUM">
                      <ref role="3uigEE" to="sm75:6uL6kAQcjuW" resolve="LiteralByNode" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5F$aghxNV_S" role="2OqNvi">
                  <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
                </node>
              </node>
              <node concept="3clFbC" id="5F$aghxNToy" role="3K4Cdx">
                <node concept="10Nm6u" id="5F$aghxNTJY" role="3uHU7w" />
                <node concept="37vLTw" id="1IuIrLUqWQD" role="3uHU7B">
                  <ref role="3cqZAo" node="6bsr$eaqe4q" resolve="literal" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6bsr$eaqeKr" role="37vLTJ">
              <node concept="37vLTw" id="5F$aghxNWGW" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="5F$aghxNX6_" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6bsr$eaqe4u" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R0_JUQTAc3" role="1B3o_S" />
    <node concept="3uibUv" id="4FdYnQC7eEl" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
    </node>
    <node concept="3uibUv" id="1IuIrLUqRkb" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="1IuIrLUqS77" role="11_B2D">
        <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3VhUp_YSqd4">
    <property role="TrG5h" value="PlugDeclarationByNode" />
    <node concept="2tJIrI" id="3VhUp_YSr0G" role="jymVt" />
    <node concept="3Tm1VV" id="3VhUp_YSqd5" role="1B3o_S" />
    <node concept="3uibUv" id="3VhUp_YSqg4" role="1zkMxy">
      <ref role="3uigEE" to="rwq3:3VhUp_YMiEx" resolve="FunctionBlockDeclarationBaseByNode" />
      <node concept="3Tqbb2" id="3VhUp_YSqWO" role="11_B2D">
        <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="3VhUp_YSr06" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
    </node>
    <node concept="3clFbW" id="3VhUp_YSrol" role="jymVt">
      <node concept="3cqZAl" id="3VhUp_YSrom" role="3clF45" />
      <node concept="3Tm1VV" id="3VhUp_YSron" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YSrop" role="3clF47">
        <node concept="XkiVB" id="3VhUp_YSror" role="3cqZAp">
          <ref role="37wK5l" to="rwq3:3VhUp_YMkxn" resolve="FunctionBlockDeclarationBaseByNode" />
          <node concept="37vLTw" id="3VhUp_YSrov" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YSros" resolve="node" />
          </node>
          <node concept="37vLTw" id="3VhUp_YSroz" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YSrow" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YSros" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3VhUp_YSrCp" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YSrow" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjSNQ" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YSrxS" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YSr32" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tqbb2" id="3VhUp_YSr34" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3Tmbuc" id="3VhUp_YSr35" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YSr36" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YTnoM" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YTn_j" role="3clFbG">
            <node concept="37vLTw" id="1IuIrLUtFki" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="3TrEf2" id="3VhUp_YTnVp" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:6LU90BOchbE" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YSr37" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YSsaF" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h48PxI" role="jymVt">
      <property role="TrG5h" value="getTypeReference" />
      <node concept="3Tm1VV" id="3lxP5h48PxJ" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h48PxM" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h48PxN" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h48PxT" role="3clF47">
        <node concept="3clFbF" id="3lxP5h48QmM" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h48QmG" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h48QH9" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUtFA4" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h48R79" role="37wK5m">
                <ref role="359W_E" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
                <ref role="359W_F" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
              <node concept="3VsKOn" id="3lxP5h48SVQ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
              </node>
              <node concept="3uibUv" id="3lxP5h48SgF" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUtFRB" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
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
              <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
              <node concept="3uibUv" id="3lxP5h48V3W" role="11_B2D">
                <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
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
            <node concept="3uibUv" id="3lxP5h48Yh9" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="3lxP5h48Yi6" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h48Yi7" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h48Vz0" resolve="typeReference" />
              </node>
              <node concept="liA8E" id="3lxP5h48Yi8" role="2OqNvi">
                <ref role="37wK5l" to="7adg:~Reference.getTarget()" resolve="getTarget" />
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
                <node concept="liA8E" id="3lxP5h49114" role="2OqNvi">
                  <ref role="37wK5l" to="cwd8:~AdapterTypeDeclaration.getPlugTypeDescriptor()" resolve="getPlugTypeDescriptor" />
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
                    <ref role="37wK5l" to="rwq3:3VhUp_YORJb" resolve="EmptyTypeDescriptor" />
                    <node concept="2OqwBi" id="3lxP5h492lg" role="37wK5m">
                      <node concept="37vLTw" id="3lxP5h492hF" role="2Oq$k0">
                        <ref role="3cqZAo" node="3lxP5h48Vz0" resolve="typeReference" />
                      </node>
                      <node concept="liA8E" id="3lxP5h492sw" role="2OqNvi">
                        <ref role="37wK5l" to="7adg:~Reference.getPresentation()" resolve="getPresentation" />
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
      <node concept="2AHcQZ" id="1IuIrLUuBbz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZltYb" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZluqL" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="_2FpOZluqM" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZluqO" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="_2FpOZluqP" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZluqW" role="3clF47">
        <node concept="3clFbF" id="_2FpOZluNM" role="3cqZAp">
          <node concept="2YIFZM" id="_2FpOZluP_" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="_2FpOZluTS" role="3PaCim">
              <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZluqX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUtG5C" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUtGAD" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1IuIrLUtGAE" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUtGAG" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1IuIrLUtJG$" role="3clF45">
        <ref role="3uigEE" to="cwd8:~FBInterfaceDeclarationWithAdapters" resolve="FBInterfaceDeclarationWithAdapters" />
      </node>
      <node concept="3clFbS" id="1IuIrLUtGB8" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUtKY3" role="3cqZAp">
          <node concept="2OqwBi" id="1IuIrLUtLw8" role="3clFbG">
            <node concept="37vLTw" id="1IuIrLUtKY0" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="1IuIrLUtLVO" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
              <node concept="2OqwBi" id="1IuIrLUtNQq" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUtNDr" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="1IuIrLUtOty" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="1IuIrLUtPqK" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~FBInterfaceDeclarationWithAdapters" resolve="FBInterfaceDeclarationWithAdapters" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUtGB9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3VhUp_YTV0x">
    <property role="TrG5h" value="SocketDeclarationByNode" />
    <node concept="2tJIrI" id="3VhUp_YTV0y" role="jymVt" />
    <node concept="3Tm1VV" id="3VhUp_YTV0z" role="1B3o_S" />
    <node concept="3uibUv" id="3VhUp_YTV0$" role="1zkMxy">
      <ref role="3uigEE" to="rwq3:3VhUp_YMiEx" resolve="FunctionBlockDeclarationBaseByNode" />
      <node concept="3Tqbb2" id="3VhUp_YTV0_" role="11_B2D">
        <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="3YCCv7garGx" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SocketDeclaration" resolve="SocketDeclaration" />
    </node>
    <node concept="3clFbW" id="3VhUp_YTV0B" role="jymVt">
      <node concept="3cqZAl" id="3VhUp_YTV0C" role="3clF45" />
      <node concept="3Tm1VV" id="3VhUp_YTV0D" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YTV0E" role="3clF47">
        <node concept="XkiVB" id="3VhUp_YTV0F" role="3cqZAp">
          <ref role="37wK5l" to="rwq3:3VhUp_YMkxn" resolve="FunctionBlockDeclarationBaseByNode" />
          <node concept="37vLTw" id="3VhUp_YTV0G" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YTV0I" resolve="node" />
          </node>
          <node concept="37vLTw" id="3VhUp_YTV0H" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YTV0K" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YTV0I" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3VhUp_YTV0J" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YTV0K" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjZAT" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTV0M" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YTV0N" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tqbb2" id="3VhUp_YTV0O" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3Tmbuc" id="3VhUp_YTV0P" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YTV0Q" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YTV0R" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YTV0S" role="3clFbG">
            <node concept="37vLTw" id="1IuIrLUux$_" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="3TrEf2" id="3VhUp_YTV0U" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:6LU90BOcpSo" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YTV0V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTV0W" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h495Ci" role="jymVt">
      <property role="TrG5h" value="getTypeReference" />
      <node concept="3Tm1VV" id="3lxP5h495Cj" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h495Ck" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h495Cl" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h495Cm" role="3clF47">
        <node concept="3clFbF" id="3lxP5h495Cn" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h495Co" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h495Cp" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUuxNe" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h495Cr" role="37wK5m">
                <ref role="359W_E" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
                <ref role="359W_F" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
              <node concept="3VsKOn" id="3lxP5h495Cs" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
              </node>
              <node concept="3uibUv" id="3lxP5h495Ct" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUuy6P" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h495Cv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h495Cw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h495Cx" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h495Cy" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="3lxP5h495Cz" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h495C$" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
      </node>
      <node concept="3clFbS" id="3lxP5h495C_" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h495CA" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h495CB" role="3cpWs9">
            <property role="TrG5h" value="typeReference" />
            <node concept="3uibUv" id="3lxP5h495CC" role="1tU5fm">
              <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
              <node concept="3uibUv" id="3lxP5h495CD" role="11_B2D">
                <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
              </node>
            </node>
            <node concept="1rXfSq" id="3lxP5h495CE" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h495Ci" resolve="getTypeReference" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3lxP5h495CF" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h495CG" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="3uibUv" id="3lxP5h495CH" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="3lxP5h495CI" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h495CJ" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h495CB" resolve="typeReference" />
              </node>
              <node concept="liA8E" id="3lxP5h495CK" role="2OqNvi">
                <ref role="37wK5l" to="7adg:~Reference.getTarget()" resolve="getTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3lxP5h495CL" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h495CM" role="3clFbx">
            <node concept="3cpWs6" id="3lxP5h495CN" role="3cqZAp">
              <node concept="2OqwBi" id="3lxP5h495CO" role="3cqZAk">
                <node concept="37vLTw" id="3lxP5h495CP" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h495CG" resolve="target" />
                </node>
                <node concept="liA8E" id="3lxP5h496n1" role="2OqNvi">
                  <ref role="37wK5l" to="cwd8:~AdapterTypeDeclaration.getSocketTypeDescriptor()" resolve="getSocketTypeDescriptor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3lxP5h495CR" role="3clFbw">
            <node concept="10Nm6u" id="3lxP5h495CS" role="3uHU7w" />
            <node concept="37vLTw" id="3lxP5h495CT" role="3uHU7B">
              <ref role="3cqZAo" node="3lxP5h495CG" resolve="target" />
            </node>
          </node>
          <node concept="9aQIb" id="3lxP5h495CU" role="9aQIa">
            <node concept="3clFbS" id="3lxP5h495CV" role="9aQI4">
              <node concept="3cpWs6" id="3lxP5h495CW" role="3cqZAp">
                <node concept="2ShNRf" id="3lxP5h495CX" role="3cqZAk">
                  <node concept="1pGfFk" id="3lxP5h495CY" role="2ShVmc">
                    <ref role="37wK5l" to="rwq3:3VhUp_YORJb" resolve="EmptyTypeDescriptor" />
                    <node concept="2OqwBi" id="3lxP5h495CZ" role="37wK5m">
                      <node concept="37vLTw" id="3lxP5h495D0" role="2Oq$k0">
                        <ref role="3cqZAo" node="3lxP5h495CB" resolve="typeReference" />
                      </node>
                      <node concept="liA8E" id="3lxP5h495D1" role="2OqNvi">
                        <ref role="37wK5l" to="7adg:~Reference.getPresentation()" resolve="getPresentation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h495D2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1IuIrLUuAdV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZXpMd" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXqws" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="sOaa8ZXqwt" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZXqwv" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="sOaa8ZXqww" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="sOaa8ZXqwB" role="3clF47">
        <node concept="3clFbF" id="_2FpOZk7OX" role="3cqZAp">
          <node concept="2YIFZM" id="_2FpOZk7QK" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="_2FpOZk7V3" role="3PaCim">
              <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXqwC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUu_uQ" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUu_uR" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1IuIrLUu_uS" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUu_uT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1IuIrLUu_uU" role="3clF45">
        <ref role="3uigEE" to="cwd8:~FBInterfaceDeclarationWithAdapters" resolve="FBInterfaceDeclarationWithAdapters" />
      </node>
      <node concept="3clFbS" id="1IuIrLUu_uV" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLEzT_" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLEzTz" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1IuIrLUu_v3" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~FBInterfaceDeclarationWithAdapters" resolve="FBInterfaceDeclarationWithAdapters" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUu_v4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZmNmF">
    <property role="TrG5h" value="ParameterDeclarationByNode" />
    <node concept="2tJIrI" id="_2FpOZmNoY" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZmNmG" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZmNo3" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
    </node>
    <node concept="3clFbW" id="1IuIrLUr0wv" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUr0ww" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUr0wx" role="1B3o_S" />
      <node concept="37vLTG" id="1IuIrLUr0wA" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUr0wE" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUr0wC" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjRRE" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUr0wF" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUr0wI" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_LX" resolve="PlatformContainedDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUr0wG" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUr0wA" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUr0wH" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUr0wC" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZmRrw" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmNq2" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="_2FpOZmNq3" role="1B3o_S" />
      <node concept="3uibUv" id="6bsr$eaqfF9" role="3clF45">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZmNq7" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLEhcc" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLEhcb" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1hwo9XLEhGt" role="37wK5m">
              <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNq8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNq5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="6bsr$eaqg6M" role="jymVt" />
    <node concept="3clFb_" id="6bsr$eaqgtQ" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="6bsr$eaqgtR" role="1B3o_S" />
      <node concept="2AHcQZ" id="6bsr$eaqgtT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6bsr$eaqgtU" role="3clF45">
        <ref role="3uigEE" to="a9j9:~DataType" resolve="DataType" />
      </node>
      <node concept="3clFbS" id="6bsr$eaqgtV" role="3clF47">
        <node concept="3cpWs6" id="69Ck8L_1DK" role="3cqZAp">
          <node concept="2YIFZM" id="69Ck8L_2g$" role="3cqZAk">
            <ref role="37wK5l" to="sm75:69Ck8L$deS" resolve="fromNode" />
            <ref role="1Pybhc" to="sm75:69Ck8LzStj" resolve="PlatformDataTypes" />
            <node concept="37vLTw" id="69Ck8L_2$f" role="37wK5m">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="2OqwBi" id="69Ck8L_3DP" role="37wK5m">
              <node concept="37vLTw" id="69Ck8L_3aw" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="69Ck8L_47z" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoYM6s" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6bsr$eaqgtW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUr3bF" role="jymVt" />
    <node concept="3clFb_" id="6bsr$eaqgtZ" role="jymVt">
      <property role="TrG5h" value="setType" />
      <node concept="3Tm1VV" id="6bsr$eaqgu0" role="1B3o_S" />
      <node concept="3cqZAl" id="6bsr$eaqgu2" role="3clF45" />
      <node concept="37vLTG" id="6bsr$eaqgu3" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="6bsr$eaqgu4" role="1tU5fm">
          <ref role="3uigEE" to="a9j9:~DataType" resolve="DataType" />
        </node>
        <node concept="2AHcQZ" id="6bsr$eaqgu5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="6bsr$eaqgu6" role="3clF47">
        <node concept="3clFbF" id="69Ck8L_6l9" role="3cqZAp">
          <node concept="37vLTI" id="69Ck8L_6Kl" role="3clFbG">
            <node concept="2OqwBi" id="69Ck8L_6xC" role="37vLTJ">
              <node concept="37vLTw" id="69Ck8L_6l8" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="69Ck8L_6HW" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoYM6s" resolve="type" />
              </node>
            </node>
            <node concept="2YIFZM" id="69Ck8L_4Ml" role="37vLTx">
              <ref role="1Pybhc" to="sm75:69Ck8LzStj" resolve="PlatformDataTypes" />
              <ref role="37wK5l" to="sm75:69Ck8L$dzG" resolve="toNode" />
              <node concept="37vLTw" id="69Ck8L_5th" role="37wK5m">
                <ref role="3cqZAo" node="6bsr$eaqgu3" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6bsr$eaqgu7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="oFXeIELJ2E" role="jymVt" />
    <node concept="3uibUv" id="1IuIrLUqYrd" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLD_LP" resolve="PlatformContainedDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUqZfN" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="3clFb_" id="oFXeIELJr3" role="jymVt">
      <property role="TrG5h" value="getInitialValue" />
      <node concept="3Tm1VV" id="oFXeIELJr4" role="1B3o_S" />
      <node concept="2AHcQZ" id="oFXeIELJr6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="oFXeIELJr7" role="3clF45">
        <ref role="3uigEE" to="h353:~Literal" resolve="Literal" />
        <node concept="3qTvmN" id="oFXeIELJr8" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="oFXeIELJrd" role="3clF47">
        <node concept="3clFbF" id="oFXeIELKIq" role="3cqZAp">
          <node concept="2OqwBi" id="oFXeIELKIr" role="3clFbG">
            <node concept="37vLTw" id="oFXeIELKIs" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="oFXeIELKIt" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
              <node concept="2OqwBi" id="oFXeIELKIu" role="37wK5m">
                <node concept="37vLTw" id="oFXeIELKIv" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="oFXeIELLzw" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:2lwHqHks4d2" resolve="initialValue" />
                </node>
              </node>
              <node concept="3VsKOn" id="oFXeIELKIx" role="37wK5m">
                <ref role="3VsUkX" to="h353:~Literal" resolve="Literal" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oFXeIELJre" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6sgdN49rkXl" role="jymVt" />
    <node concept="3clFb_" id="oFXeIELJrh" role="jymVt">
      <property role="TrG5h" value="setInitialValue" />
      <node concept="3Tm1VV" id="oFXeIELJri" role="1B3o_S" />
      <node concept="3cqZAl" id="oFXeIELJrk" role="3clF45" />
      <node concept="37vLTG" id="oFXeIELJrl" role="3clF46">
        <property role="TrG5h" value="literal" />
        <node concept="3uibUv" id="oFXeIELJrm" role="1tU5fm">
          <ref role="3uigEE" to="h353:~Literal" resolve="Literal" />
          <node concept="3qTvmN" id="oFXeIELJrn" role="11_B2D" />
        </node>
        <node concept="2AHcQZ" id="oFXeIELJro" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="oFXeIELJrt" role="3clF47">
        <node concept="3clFbF" id="oFXeIELM1W" role="3cqZAp">
          <node concept="37vLTI" id="oFXeIELM1X" role="3clFbG">
            <node concept="3K4zz7" id="oFXeIELM1Y" role="37vLTx">
              <node concept="10Nm6u" id="oFXeIELM1Z" role="3K4E3e" />
              <node concept="2OqwBi" id="oFXeIELM20" role="3K4GZi">
                <node concept="1eOMI4" id="oFXeIELM21" role="2Oq$k0">
                  <node concept="10QFUN" id="oFXeIELM22" role="1eOMHV">
                    <node concept="37vLTw" id="oFXeIELM23" role="10QFUP">
                      <ref role="3cqZAo" node="oFXeIELJrl" resolve="literal" />
                    </node>
                    <node concept="3uibUv" id="oFXeIELM24" role="10QFUM">
                      <ref role="3uigEE" to="sm75:6uL6kAQcjuW" resolve="LiteralByNode" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="oFXeIELM25" role="2OqNvi">
                  <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
                </node>
              </node>
              <node concept="3clFbC" id="oFXeIELM26" role="3K4Cdx">
                <node concept="10Nm6u" id="oFXeIELM27" role="3uHU7w" />
                <node concept="37vLTw" id="oFXeIELM28" role="3uHU7B">
                  <ref role="3cqZAo" node="oFXeIELJrl" resolve="literal" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="oFXeIELM29" role="37vLTJ">
              <node concept="37vLTw" id="oFXeIELM2a" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="oFXeIELM$L" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:2lwHqHks4d2" resolve="initialValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oFXeIELJru" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZmVWN">
    <property role="TrG5h" value="EventDeclarationByNode" />
    <node concept="2tJIrI" id="_2FpOZmVYW" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZmVWO" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZmVY1" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
    </node>
    <node concept="3clFbW" id="1IuIrLUqzzL" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUqzzM" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUqzzN" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUqzzP" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUqzzR" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_LX" resolve="PlatformContainedDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUqzzV" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqzzS" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUqzzZ" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqzzW" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqzzS" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUq_tN" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqzzW" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjKOQ" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUqCqF" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmWjT" role="jymVt">
      <property role="TrG5h" value="getAssociations" />
      <node concept="3Tm1VV" id="_2FpOZmWjU" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmWjW" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="_2FpOZmWjX" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~EventAssociation" resolve="EventAssociation" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZmWjY" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmWHX" role="3cqZAp">
          <node concept="2ShNRf" id="_2FpOZmWHR" role="3clFbG">
            <node concept="1pGfFk" id="_2FpOZmWY0" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="_2FpOZmXpY" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUq_HN" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="_2FpOZmXMS" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="_2FpOZmZds" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventAssociation" resolve="EventAssociation" />
              </node>
              <node concept="3uibUv" id="_2FpOZmYsQ" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~EventAssociation" resolve="EventAssociation" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqAqJ" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWjZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48i3E" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmWk2" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="_2FpOZmWk3" role="1B3o_S" />
      <node concept="3uibUv" id="6bsr$eaq3PK" role="3clF45">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZmWk7" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLE0VY" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLE0VZ" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1hwo9XLE0W0" role="37wK5m">
              <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWk8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWk5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUqyuj" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLD_LP" resolve="PlatformContainedDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUq$FJ" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZn5bZ">
    <property role="TrG5h" value="EventAssociationByNode" />
    <node concept="2tJIrI" id="_2FpOZn5dY" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZn5c0" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZn5dn" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~EventAssociation" resolve="EventAssociation" />
    </node>
    <node concept="3clFbW" id="1IuIrLUqpM6" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUqpM7" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUqpM8" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUqpMa" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUqpMc" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="1IuIrLUqpMg" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqpMd" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUqpMk" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqpMh" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqpMd" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUqqo9" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiT" resolve="EventAssociation" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqpMh" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjGMM" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUqqUz" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn5yx" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="_2FpOZn5yy" role="1B3o_S" />
      <node concept="2AHcQZ" id="_2FpOZn5y$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="_2FpOZn5y_" role="3clF45">
        <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZn5yA" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDZl$" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLDZl_" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1hwo9XLDZlA" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5yB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn697" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn5yE" role="jymVt">
      <property role="TrG5h" value="getParameterReference" />
      <node concept="3Tm1VV" id="_2FpOZn5yF" role="1B3o_S" />
      <node concept="2AHcQZ" id="_2FpOZn5yH" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h47Rtz" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h47S4w" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZn5yJ" role="3clF47">
        <node concept="3clFbF" id="3lxP5h47SjT" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h47SjP" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h47SE5" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUqs6O" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h47SNY" role="37wK5m">
                <ref role="359W_E" to="xiqq:3HBlKeoYsiT" resolve="EventAssociation" />
                <ref role="359W_F" to="xiqq:3HBlKeoYsiU" resolve="declaration" />
              </node>
              <node concept="3VsKOn" id="3lxP5h47Tqr" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="3uibUv" id="3lxP5h47T1n" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqrPV" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5yK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUqnN5" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="1IuIrLUqoRv" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiT" resolve="EventAssociation" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5z1uLkKkWC2">
    <property role="TrG5h" value="SegmentTypeDeclarationByNode" />
    <node concept="2tJIrI" id="5z1uLkKkWEL" role="jymVt" />
    <node concept="3Tm1VV" id="5z1uLkKkWC3" role="1B3o_S" />
    <node concept="3uibUv" id="5z1uLkKkWE5" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SegmentTypeDeclaration" resolve="SegmentTypeDeclaration" />
    </node>
    <node concept="3clFbW" id="1IuIrLUutpJ" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUutpK" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUutpL" role="1B3o_S" />
      <node concept="37vLTG" id="1IuIrLUutpM" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUutpN" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUutpO" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjYEz" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUutpU" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUutpX" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1IuIrLUpCCt" resolve="PlatformDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUutpV" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUutpM" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUutpW" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUutpO" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKkYBo" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKkWK8" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="5z1uLkKkWK9" role="1B3o_S" />
      <node concept="3uibUv" id="5z1uLkKkWKb" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5z1uLkKkWKc" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKkWKd" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKkYOS" role="3cqZAp">
          <node concept="2ShNRf" id="5z1uLkKkYOM" role="3clFbG">
            <node concept="1pGfFk" id="5z1uLkKkZ5d" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="5z1uLkKkZzl" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUuusS" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1IuIrLUuwZA" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5s_pyghtjpo" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="5z1uLkKl0s$" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUuv3v" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="5z1uLkKl1u5" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKkWKe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUuqhF" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1IuIrLUpCCg" resolve="PlatformDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUurpb" role="11_B2D">
        <ref role="ehGHo" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5z1uLkKlltx">
    <property role="TrG5h" value="LinkByNode" />
    <node concept="2tJIrI" id="5z1uLkKllyA" role="jymVt" />
    <node concept="3Tm1VV" id="5z1uLkKllty" role="1B3o_S" />
    <node concept="3uibUv" id="1IuIrLUoP$3" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~Link" resolve="Link" />
    </node>
    <node concept="3clFbW" id="1IuIrLUqHsK" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUqHsL" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUqHsM" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUqHsO" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUqHsQ" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="1IuIrLUqHsU" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqHsR" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUqHsY" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqHsV" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqHsR" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUqI9q" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5s_pyghzCOb" resolve="Link" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqHsV" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjNj_" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUqHOy" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKllBE" role="jymVt">
      <property role="TrG5h" value="getResourceReference" />
      <node concept="3Tm1VV" id="5z1uLkKllBF" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h48_rG" role="3clF45">
        <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="3lxP5h48_Sp" role="11_B2D">
          <ref role="3uigEE" to="xpc1:~ResourceHierarchy" resolve="ResourceHierarchy" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKllBJ" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKlmOI" role="3cqZAp">
          <node concept="2ShNRf" id="5z1uLkKlmOC" role="3clFbG">
            <node concept="1pGfFk" id="5z1uLkKln5b" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h49bRP" resolve="ResourceReferenceByNode" />
              <node concept="37vLTw" id="1IuIrLUqIFK" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4cyB7" role="37wK5m">
                <ref role="359W_E" to="xiqq:5s_pyghzCOb" resolve="Link" />
                <ref role="359W_F" to="xiqq:5s_pyghzCOc" resolve="resource" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqISe" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKllBK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="5z1uLkKllBH" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKlmHV" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKllBN" role="jymVt">
      <property role="TrG5h" value="getSegmentReference" />
      <node concept="3Tm1VV" id="5z1uLkKllBO" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h48$$_" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h48$ZP" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKllBS" role="3clF47">
        <node concept="3clFbF" id="3lxP5h499wG" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h499wC" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h499T0" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="3uibUv" id="3lxP5h499Vb" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqJ7A" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h49ajK" role="37wK5m">
                <ref role="359W_E" to="xiqq:5s_pyghzCOb" resolve="Link" />
                <ref role="359W_F" to="xiqq:5s_pyghzCOh" resolve="segment" />
              </node>
              <node concept="3VsKOn" id="3lxP5h49b4O" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqJJz" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKllBT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="5z1uLkKllBQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5XSMcahh3Wd" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKllBW" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="5z1uLkKllBX" role="1B3o_S" />
      <node concept="3uibUv" id="5z1uLkKllC0" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5z1uLkKllC1" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKllC2" role="3clF47">
        <node concept="3clFbF" id="5XSMcahh4Ed" role="3cqZAp">
          <node concept="2ShNRf" id="5XSMcahh4E7" role="3clFbG">
            <node concept="1pGfFk" id="5XSMcahh7tm" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="5XSMcahh7TG" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUqJsn" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="5XSMcahh8gA" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5s_pyghzCOe" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="5XSMcahh9XN" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="3uibUv" id="5XSMcahh8D$" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqJYy" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKllC3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="5z1uLkKllBZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLE6R6" role="jymVt" />
    <node concept="3uibUv" id="1IuIrLUqFaG" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="1IuIrLUqFRq" role="11_B2D">
        <ref role="ehGHo" to="xiqq:5s_pyghzCOb" resolve="Link" />
      </node>
    </node>
    <node concept="3clFb_" id="1hwo9XLE7bN" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1hwo9XLE7bO" role="1B3o_S" />
      <node concept="2AHcQZ" id="1hwo9XLE7bQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1hwo9XLE8tH" role="3clF45">
        <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
      </node>
      <node concept="3clFbS" id="1hwo9XLE7c1" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLE7Cy" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLE7Cv" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1hwo9XLE8dl" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLE7c2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3lxP5h49bFq">
    <property role="TrG5h" value="ResourceReferenceByNode" />
    <node concept="2tJIrI" id="3lxP5h49bJ7" role="jymVt" />
    <node concept="312cEg" id="3lxP5h49bKw" role="jymVt">
      <property role="TrG5h" value="myContainer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h49bJ$" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h49bKa" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h49bMp" role="jymVt">
      <property role="TrG5h" value="myLink" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h49bLr" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h49bM4" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h49bQp" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h49bPm" role="1B3o_S" />
      <node concept="3uibUv" id="QE5KxyjOqa" role="1tU5fm">
        <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h49bQX" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h49bFr" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h49bI5" role="EKbjA">
      <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
      <node concept="3uibUv" id="3lxP5h49bIK" role="11_B2D">
        <ref role="3uigEE" to="xpc1:~ResourceHierarchy" resolve="ResourceHierarchy" />
      </node>
    </node>
    <node concept="3clFbW" id="3lxP5h49bRP" role="jymVt">
      <node concept="3cqZAl" id="3lxP5h49bRQ" role="3clF45" />
      <node concept="3Tm1VV" id="3lxP5h49bRR" role="1B3o_S" />
      <node concept="3clFbS" id="3lxP5h49bRT" role="3clF47">
        <node concept="3clFbF" id="3lxP5h49bRX" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h49bRZ" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h49bS6" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h49bRW" resolve="container" />
            </node>
            <node concept="37vLTw" id="3lxP5h49bZF" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h49bKw" resolve="myContainer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h49bSa" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h49bSc" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h49bSj" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h49bS9" resolve="link" />
            </node>
            <node concept="37vLTw" id="3lxP5h49c4F" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h49bMp" resolve="myLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h49bSm" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h49bSo" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h49bSv" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h49bSl" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3lxP5h49c6K" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h49bQp" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h49bRW" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="3lxP5h49bRV" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h49bS9" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3lxP5h49bS8" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h49bSl" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjOA5" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h49c8J" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h49clb" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="3Tm1VV" id="3lxP5h49clc" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h49cle" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="3lxP5h49clg" role="3clF45">
        <ref role="3uigEE" to="xpc1:~ResourceHierarchy" resolve="ResourceHierarchy" />
      </node>
      <node concept="3clFbS" id="3lxP5h49clh" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bQSq" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bQSr" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bQSs" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4bQSt" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4bQSu" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4bQSv" role="10QFUP">
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <node concept="37vLTw" id="3lxP5h4bQSw" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h49bKw" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4bQSx" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h49bMp" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bSM0" role="3cqZAp">
          <node concept="1rXfSq" id="3lxP5h4bSLV" role="3clFbG">
            <ref role="37wK5l" node="3lxP5h4boQR" resolve="resolve" />
            <node concept="37vLTw" id="3lxP5h4bSWB" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bQSr" resolve="node" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bT2q" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h49bQp" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h49cli" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bUUQ" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h49clj" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="3Tm1VV" id="3lxP5h49clk" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h49clm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h49cln" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bsr$eaqmyn" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h49clp" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bRZ7" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bRZ8" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bRZ9" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4bRZa" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4bRZb" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4bRZc" role="10QFUP">
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <node concept="37vLTw" id="3lxP5h4bRZd" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h49bKw" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4bRZe" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h49bMp" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bTlh" role="3cqZAp">
          <node concept="1rXfSq" id="3lxP5h4bTlf" role="3clFbG">
            <ref role="37wK5l" node="3lxP5h4boSU" resolve="serialize" />
            <node concept="37vLTw" id="3lxP5h4bTFK" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bRZ8" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h49clq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bUe6" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h49clt" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="3lxP5h49clu" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h49clw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h49clx" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3lxP5h49cly" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bUAN" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bUAO" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bUAP" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4bUAQ" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4bUAR" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4bUAS" role="10QFUP">
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <node concept="37vLTw" id="3lxP5h4bUAT" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h49bKw" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4bUAU" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h49bMp" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bVRK" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4bW3$" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4bVRI" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4bUAO" resolve="node" />
            </node>
            <node concept="2qgKlT" id="3lxP5h4bW5W" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h49clz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bTHt" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h49clA" role="jymVt">
      <property role="TrG5h" value="setTarget" />
      <node concept="3Tm1VV" id="3lxP5h49clB" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h49clD" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h49clE" role="3clF46">
        <property role="TrG5h" value="hierarchy" />
        <node concept="3uibUv" id="3lxP5h49clH" role="1tU5fm">
          <ref role="3uigEE" to="xpc1:~ResourceHierarchy" resolve="ResourceHierarchy" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h49clG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h49clI" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bWGG" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bWGH" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bWGI" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
            </node>
            <node concept="1rXfSq" id="3lxP5h4bXbU" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4boRB" resolve="asNode" />
              <node concept="37vLTw" id="3lxP5h4bXlT" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h49clE" resolve="hierarchy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bXv5" role="3cqZAp">
          <node concept="2YIFZM" id="3lxP5h4bXv6" role="3clFbG">
            <ref role="37wK5l" to="i51s:~SLinkOperations.setTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setTarget" />
            <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
            <node concept="37vLTw" id="3lxP5h4bXv7" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h49bKw" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bXv8" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h49bMp" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bXv9" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bWGH" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h49clJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bWa_" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h49clK" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3Tm1VV" id="3lxP5h49clL" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h49clN" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h49clO" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="3lxP5h49clP" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3dz4Yurgi1M" role="11_B2D">
            <node concept="3uibUv" id="3dz4YurgikV" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3lxP5h49clR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h49clS" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bY4r" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bY4s" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bY4t" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
            </node>
            <node concept="1rXfSq" id="3lxP5h4bY4u" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4boTX" resolve="deserialize" />
              <node concept="37vLTw" id="3lxP5h4bYwp" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h49clO" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bXMH" role="3cqZAp">
          <node concept="2YIFZM" id="3lxP5h4bXMI" role="3clFbG">
            <ref role="37wK5l" to="i51s:~SLinkOperations.setTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setTarget" />
            <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
            <node concept="37vLTw" id="3lxP5h4bXMJ" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h49bKw" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bXMK" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h49bMp" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bZln" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bY4s" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h49clT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4boCf" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4boQR" role="jymVt">
      <property role="TrG5h" value="resolve" />
      <node concept="3clFbS" id="3lxP5h4boQS" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bvrQ" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bvrR" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3uibUv" id="3lxP5h4bvn6" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
            </node>
            <node concept="2OqwBi" id="3lxP5h4bvrS" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h4bvrT" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4boRz" resolve="repository" />
              </node>
              <node concept="liA8E" id="3lxP5h4bvrU" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="2OqwBi" id="3lxP5h4bvrV" role="37wK5m">
                  <node concept="37vLTw" id="3lxP5h4bvrW" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4boRx" resolve="reference" />
                  </node>
                  <node concept="3TrEf2" id="3lxP5h4bvrX" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRq_wx" resolve="device" />
                  </node>
                </node>
                <node concept="3VsKOn" id="3lxP5h4bvrY" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3lxP5h4bw9l" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bw9m" role="3cpWs9">
            <property role="TrG5h" value="resource" />
            <node concept="3uibUv" id="3lxP5h4bw9n" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="3lxP5h4bwzv" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h4bwth" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4boRz" resolve="repository" />
              </node>
              <node concept="liA8E" id="3lxP5h4bwE5" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="2OqwBi" id="3lxP5h4bwQC" role="37wK5m">
                  <node concept="37vLTw" id="3lxP5h4bwIh" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4boRx" resolve="reference" />
                  </node>
                  <node concept="3TrEf2" id="3lxP5h4bwZr" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
                  </node>
                </node>
                <node concept="3VsKOn" id="3lxP5h4bx7t" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4bxyl" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4bxG9" role="3cqZAk">
            <node concept="1pGfFk" id="3lxP5h4byfe" role="2ShVmc">
              <ref role="37wK5l" to="xpc1:~ResourceHierarchy.&lt;init&gt;(org.fbme.lib.iec61499.declarations.DeviceDeclaration,org.fbme.lib.iec61499.declarations.ResourceDeclaration)" resolve="ResourceHierarchy" />
              <node concept="37vLTw" id="3lxP5h4byph" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4bvrR" resolve="device" />
              </node>
              <node concept="37vLTw" id="3lxP5h4byC0" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4bw9m" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3lxP5h4brkh" role="3clF45">
        <ref role="3uigEE" to="xpc1:~ResourceHierarchy" resolve="ResourceHierarchy" />
      </node>
      <node concept="37vLTG" id="3lxP5h4boRx" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="3lxP5h4boRy" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4boRz" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjOCj" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4boR_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4boRA" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4boRB" role="jymVt">
      <property role="TrG5h" value="asNode" />
      <node concept="3clFbS" id="3lxP5h4boRC" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bzO0" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bzO1" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bzMO" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
            </node>
            <node concept="2ShNRf" id="3lxP5h4bzO2" role="33vP2m">
              <node concept="3zrR0B" id="3lxP5h4bzO3" role="2ShVmc">
                <node concept="3Tqbb2" id="3lxP5h4bzO4" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bz6x" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4b$Dw" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4bA8R" role="37vLTx">
              <node concept="1eOMI4" id="3lxP5h4b_zH" role="2Oq$k0">
                <node concept="10QFUN" id="3lxP5h4b_zG" role="1eOMHV">
                  <node concept="2OqwBi" id="3lxP5h4b_zD" role="10QFUP">
                    <node concept="37vLTw" id="3lxP5h4b_zE" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h4boSQ" resolve="hierarchy" />
                    </node>
                    <node concept="liA8E" id="3lxP5h4b_zF" role="2OqNvi">
                      <ref role="37wK5l" to="xpc1:~ResourceHierarchy.getDevice()" resolve="getDevice" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3lxP5h4bBcP" role="10QFUM">
                    <ref role="3uigEE" node="3MncU7wPdcu" resolve="DeviceDeclarationByNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3lxP5h4bAvY" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="3lxP5h4b$ia" role="37vLTJ">
              <node concept="37vLTw" id="3lxP5h4bzO5" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bzO1" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4b$rN" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRq_wx" resolve="device" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bACZ" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4bAD0" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4bAD1" role="37vLTx">
              <node concept="1eOMI4" id="3lxP5h4bAD2" role="2Oq$k0">
                <node concept="10QFUN" id="3lxP5h4bAD3" role="1eOMHV">
                  <node concept="2OqwBi" id="3lxP5h4bAD4" role="10QFUP">
                    <node concept="37vLTw" id="3lxP5h4bAD5" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h4boSQ" resolve="hierarchy" />
                    </node>
                    <node concept="liA8E" id="3lxP5h4bB$3" role="2OqNvi">
                      <ref role="37wK5l" to="xpc1:~ResourceHierarchy.getResource()" resolve="getResource" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3lxP5h4bBmA" role="10QFUM">
                    <ref role="3uigEE" node="3MncU7wPlNy" resolve="ResourceDeclarationByNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3lxP5h4bAD8" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="3lxP5h4bAD9" role="37vLTJ">
              <node concept="37vLTw" id="3lxP5h4bADa" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bzO1" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4bB7v" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4bEay" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4bEvE" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4bzO1" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3lxP5h4boSP" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
      </node>
      <node concept="37vLTG" id="3lxP5h4boSQ" role="3clF46">
        <property role="TrG5h" value="hierarchy" />
        <node concept="3uibUv" id="3lxP5h4brJH" role="1tU5fm">
          <ref role="3uigEE" to="xpc1:~ResourceHierarchy" resolve="ResourceHierarchy" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4boSS" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4boST" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4boSU" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3clFbS" id="3lxP5h4boSV" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bGsO" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bGsP" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="3lxP5h4bGkC" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="6bsr$eaqmNo" role="11_B2D">
                <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
              </node>
            </node>
            <node concept="2ShNRf" id="3lxP5h4bGsQ" role="33vP2m">
              <node concept="1pGfFk" id="3lxP5h4bGsR" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="6bsr$eaqnbx" role="1pMfVU">
                  <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bHR2" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4bIV3" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4bHR0" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4bGsP" resolve="res" />
            </node>
            <node concept="liA8E" id="3lxP5h4bK9V" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
              <node concept="2YIFZM" id="1VyPeINQBDS" role="37wK5m">
                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                <node concept="37vLTw" id="1VyPeINQBDT" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4boTT" resolve="reference" />
                </node>
                <node concept="359W_D" id="1VyPeINQBDU" role="37wK5m">
                  <ref role="359W_E" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
                  <ref role="359W_F" to="xiqq:uLhTRRq_wx" resolve="device" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bLhH" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4bLhI" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4bLhJ" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4bGsP" resolve="res" />
            </node>
            <node concept="liA8E" id="3lxP5h4bLhK" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
              <node concept="2YIFZM" id="1VyPeINQCOI" role="37wK5m">
                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                <node concept="37vLTw" id="1VyPeINQCOJ" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4boTT" resolve="reference" />
                </node>
                <node concept="359W_D" id="1VyPeINQCOK" role="37wK5m">
                  <ref role="359W_E" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
                  <ref role="359W_F" to="xiqq:uLhTRRq_wz" resolve="resource" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4bM84" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4bMnc" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4bGsP" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3lxP5h4boTR" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bsr$eaqmNh" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4boTT" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="3lxP5h4boTU" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4boTV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4boTW" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4boTX" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="3lxP5h4boTY" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bN3l" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bN3m" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bN3n" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
            </node>
            <node concept="2ShNRf" id="3lxP5h4bN3o" role="33vP2m">
              <node concept="3zrR0B" id="3lxP5h4bN3p" role="2ShVmc">
                <node concept="3Tqbb2" id="3lxP5h4bN3q" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VyPeINQFN4" role="3cqZAp">
          <node concept="2YIFZM" id="1VyPeINQFN6" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
            <node concept="37vLTw" id="1VyPeINQGBd" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bN3m" resolve="node" />
            </node>
            <node concept="359W_D" id="1VyPeINQFN8" role="37wK5m">
              <ref role="359W_E" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
              <ref role="359W_F" to="xiqq:uLhTRRq_wx" resolve="device" />
            </node>
            <node concept="10Nm6u" id="1VyPeINQFN9" role="37wK5m" />
            <node concept="2OqwBi" id="1VyPeINQFNa" role="37wK5m">
              <node concept="37vLTw" id="1VyPeINQFNb" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4boVa" resolve="path" />
              </node>
              <node concept="liA8E" id="1VyPeINQFNc" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="1VyPeINQGNs" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VyPeINQGUS" role="3cqZAp">
          <node concept="2YIFZM" id="1VyPeINQGUT" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
            <node concept="37vLTw" id="1VyPeINQGUU" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bN3m" resolve="node" />
            </node>
            <node concept="359W_D" id="1VyPeINQGUV" role="37wK5m">
              <ref role="359W_E" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
              <ref role="359W_F" to="xiqq:uLhTRRq_wz" resolve="resource" />
            </node>
            <node concept="10Nm6u" id="1VyPeINQGUW" role="37wK5m" />
            <node concept="2OqwBi" id="1VyPeINQGUX" role="37wK5m">
              <node concept="37vLTw" id="1VyPeINQGUY" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4boVa" resolve="path" />
              </node>
              <node concept="liA8E" id="1VyPeINQGUZ" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="1VyPeINQHIl" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4bN3P" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4bN3Q" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4bN3m" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3lxP5h4boV9" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRRq_ww" resolve="ResourceReference" />
      </node>
      <node concept="37vLTG" id="3lxP5h4boVa" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="3lxP5h4boVb" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3dz4Yurgiyq" role="11_B2D">
            <node concept="3uibUv" id="3dz4YurgiRm" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4boVd" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="3lxP5h4asS_">
    <property role="TrG5h" value="ApplicationReferenceByNode" />
    <node concept="2tJIrI" id="3lxP5h4asVo" role="jymVt" />
    <node concept="312cEg" id="3lxP5h4atDA" role="jymVt">
      <property role="TrG5h" value="myContainer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4atDB" role="1B3o_S" />
      <node concept="3Tqbb2" id="3lxP5h4aD8Q" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3lxP5h4atDD" role="jymVt">
      <property role="TrG5h" value="myLink" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4atDE" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4atDF" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h4atDG" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4atDH" role="1B3o_S" />
      <node concept="3uibUv" id="QE5KxyjELS" role="1tU5fm">
        <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4atDJ" role="jymVt" />
    <node concept="3clFbW" id="3lxP5h4atDK" role="jymVt">
      <node concept="3cqZAl" id="3lxP5h4atDL" role="3clF45" />
      <node concept="3Tm1VV" id="3lxP5h4atDM" role="1B3o_S" />
      <node concept="3clFbS" id="3lxP5h4atDN" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4atDO" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4atDP" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4atDQ" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4atE0" resolve="container" />
            </node>
            <node concept="37vLTw" id="3lxP5h4atDR" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4atDA" resolve="myContainer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4atDS" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4atDT" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4atDU" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4atE2" resolve="link" />
            </node>
            <node concept="37vLTw" id="3lxP5h4atDV" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4atDD" resolve="myLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4atDW" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4atDX" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4atDY" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4atE4" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3lxP5h4atDZ" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4atDG" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4atE0" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="3lxP5h4atE1" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4atE2" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3lxP5h4atE3" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4atE4" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjEZ4" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4at6k" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h4asSA" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h4asUk" role="EKbjA">
      <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
      <node concept="3uibUv" id="3lxP5h4asUZ" role="11_B2D">
        <ref role="3uigEE" to="xpc1:~ApplicationHierarchy" resolve="ApplicationHierarchy" />
      </node>
    </node>
    <node concept="3clFb_" id="3lxP5h4asW0" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="3Tm1VV" id="3lxP5h4asW1" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4asW3" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="3lxP5h4asW5" role="3clF45">
        <ref role="3uigEE" to="xpc1:~ApplicationHierarchy" resolve="ApplicationHierarchy" />
      </node>
      <node concept="3clFbS" id="3lxP5h4asW6" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aFlG" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aFlH" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aFla" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4aFlI" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4aFlJ" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4aFlK" role="10QFUP">
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <node concept="37vLTw" id="3lxP5h4aFlL" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4atDA" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4aFlM" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4atDD" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aFJr" role="3cqZAp">
          <node concept="1rXfSq" id="3lxP5h4aFJp" role="3clFbG">
            <ref role="37wK5l" node="3lxP5h4aAMz" resolve="resolve" />
            <node concept="37vLTw" id="3lxP5h4aFU2" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aFlH" resolve="node" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aGdm" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4atDG" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4asW7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4auSL" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4asW8" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="3Tm1VV" id="3lxP5h4asW9" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4asWb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4asWc" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3lxP5h4asWd" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4asWe" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aGne" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aGnf" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aGng" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4aGnh" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4aGni" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4aGnj" role="10QFUP">
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <node concept="37vLTw" id="3lxP5h4aGnk" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4atDA" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4aGnl" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4atDD" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aGDN" role="3cqZAp">
          <node concept="1rXfSq" id="3lxP5h4aGDL" role="3clFbG">
            <ref role="37wK5l" node="3lxP5h4a$78" resolve="serialize" />
            <node concept="37vLTw" id="3lxP5h4aGZK" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aGnf" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4asWf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4auLk" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4asWi" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="3lxP5h4asWj" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4asWl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4asWm" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3lxP5h4asWn" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aHs9" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aHsa" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aHsb" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4aHsc" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4aHsd" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4aHse" role="10QFUP">
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <node concept="37vLTw" id="3lxP5h4aHsf" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4atDA" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4aHsg" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4atDD" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aHPi" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4aI4E" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4aHPg" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4aHsa" resolve="node" />
            </node>
            <node concept="2qgKlT" id="3lxP5h4aIc6" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4asWo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4auzM" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4asWr" role="jymVt">
      <property role="TrG5h" value="setTarget" />
      <node concept="3Tm1VV" id="3lxP5h4asWs" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h4asWu" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h4asWv" role="3clF46">
        <property role="TrG5h" value="hierarchy" />
        <node concept="3uibUv" id="3lxP5h4asWy" role="1tU5fm">
          <ref role="3uigEE" to="xpc1:~ApplicationHierarchy" resolve="ApplicationHierarchy" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h4asWx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4asWz" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aI$x" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aI$y" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aIsI" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
            </node>
            <node concept="1rXfSq" id="3lxP5h4aI$z" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4a_$n" resolve="asNode" />
              <node concept="37vLTw" id="3lxP5h4aI$$" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4asWv" resolve="hierarchy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aIJE" role="3cqZAp">
          <node concept="2YIFZM" id="3lxP5h4aIYT" role="3clFbG">
            <ref role="37wK5l" to="i51s:~SLinkOperations.setTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setTarget" />
            <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
            <node concept="37vLTw" id="3lxP5h4aIYU" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4atDA" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aIYV" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4atDD" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aJgF" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aI$y" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4asW$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4av7J" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4asW_" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3Tm1VV" id="3lxP5h4asWA" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h4asWC" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h4asWD" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="3lxP5h4asWE" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3dz4YurgboF" role="11_B2D">
            <node concept="3uibUv" id="3dz4YurgbAK" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3lxP5h4asWG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4asWH" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aJih" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aJii" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aJij" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
            </node>
            <node concept="1rXfSq" id="3lxP5h4aJik" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4axXM" resolve="deserialize" />
              <node concept="37vLTw" id="3lxP5h4aJP3" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4asWD" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aJim" role="3cqZAp">
          <node concept="2YIFZM" id="3lxP5h4aJin" role="3clFbG">
            <ref role="37wK5l" to="i51s:~SLinkOperations.setTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setTarget" />
            <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
            <node concept="37vLTw" id="3lxP5h4aJio" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4atDA" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aJip" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4atDD" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aJiq" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aJii" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4asWI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4aw3x" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4aAMz" role="jymVt">
      <property role="TrG5h" value="resolve" />
      <node concept="3clFbS" id="3lxP5h4aAM_" role="3clF47">
        <node concept="3clFbJ" id="3lxP5h4aAMA" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h4aAMB" role="3clFbx">
            <node concept="3cpWs6" id="3lxP5h4aAMC" role="3cqZAp">
              <node concept="2ShNRf" id="3lxP5h4aAMD" role="3cqZAk">
                <node concept="1pGfFk" id="3lxP5h4aAME" role="2ShVmc">
                  <ref role="37wK5l" to="xpc1:~ApplicationHierarchy$Root.&lt;init&gt;(org.fbme.lib.iec61499.declarations.ApplicationDeclaration)" resolve="ApplicationHierarchy.Root" />
                  <node concept="2OqwBi" id="3lxP5h4aAMF" role="37wK5m">
                    <node concept="37vLTw" id="3lxP5h4aAMG" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h4aANh" resolve="repository" />
                    </node>
                    <node concept="liA8E" id="3lxP5h4aAMH" role="2OqNvi">
                      <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                      <node concept="2OqwBi" id="3lxP5h4aAMI" role="37wK5m">
                        <node concept="1PxgMI" id="3lxP5h4aAMJ" role="2Oq$k0">
                          <node concept="chp4Y" id="3lxP5h4aAMK" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
                          </node>
                          <node concept="37vLTw" id="3lxP5h4aAML" role="1m5AlR">
                            <ref role="3cqZAo" node="3lxP5h4aANf" resolve="reference" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3lxP5h4aAMM" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:uLhTRRmhk8" resolve="application" />
                        </node>
                      </node>
                      <node concept="3VsKOn" id="3lxP5h4aAMN" role="37wK5m">
                        <ref role="3VsUkX" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3lxP5h4aAMO" role="3clFbw">
            <node concept="37vLTw" id="3lxP5h4aAMP" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4aANf" resolve="reference" />
            </node>
            <node concept="1mIQ4w" id="3lxP5h4aAMQ" role="2OqNvi">
              <node concept="chp4Y" id="3lxP5h4aAMR" role="cj9EA">
                <ref role="cht4Q" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3lxP5h4aAMS" role="9aQIa">
            <node concept="3clFbS" id="3lxP5h4aAMT" role="9aQI4">
              <node concept="3cpWs6" id="3lxP5h4aAMU" role="3cqZAp">
                <node concept="2ShNRf" id="3lxP5h4aAMV" role="3cqZAk">
                  <node concept="1pGfFk" id="3lxP5h4aAMW" role="2ShVmc">
                    <ref role="37wK5l" to="xpc1:~ApplicationHierarchy$Subapplication.&lt;init&gt;(org.fbme.lib.iec61499.declarations.hierarchies.ApplicationHierarchy,org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration)" resolve="ApplicationHierarchy.Subapplication" />
                    <node concept="1rXfSq" id="3lxP5h4aAMX" role="37wK5m">
                      <ref role="37wK5l" node="3lxP5h4aAMz" resolve="resolve" />
                      <node concept="2OqwBi" id="3lxP5h4aAMY" role="37wK5m">
                        <node concept="1PxgMI" id="3lxP5h4aAMZ" role="2Oq$k0">
                          <node concept="chp4Y" id="3lxP5h4aAN0" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                          </node>
                          <node concept="37vLTw" id="3lxP5h4aAN1" role="1m5AlR">
                            <ref role="3cqZAo" node="3lxP5h4aANf" resolve="reference" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3lxP5h4aAN2" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:uLhTRRmjJr" resolve="parentApp" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3lxP5h4aAN3" role="37wK5m">
                        <ref role="3cqZAo" node="3lxP5h4aANh" resolve="repository" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3lxP5h4aAN4" role="37wK5m">
                      <node concept="37vLTw" id="3lxP5h4aAN5" role="2Oq$k0">
                        <ref role="3cqZAo" node="3lxP5h4aANh" resolve="repository" />
                      </node>
                      <node concept="liA8E" id="3lxP5h4aAN6" role="2OqNvi">
                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                        <node concept="2OqwBi" id="3lxP5h4aAN7" role="37wK5m">
                          <node concept="1PxgMI" id="3lxP5h4aAN8" role="2Oq$k0">
                            <node concept="chp4Y" id="3lxP5h4aAN9" role="3oSUPX">
                              <ref role="cht4Q" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                            </node>
                            <node concept="37vLTw" id="3lxP5h4aANa" role="1m5AlR">
                              <ref role="3cqZAo" node="3lxP5h4aANf" resolve="reference" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="3lxP5h4aANb" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:uLhTRRmjJx" resolve="subapp" />
                          </node>
                        </node>
                        <node concept="3VsKOn" id="3lxP5h4aANc" role="37wK5m">
                          <ref role="3VsUkX" to="6iyo:~SubapplicationDeclaration" resolve="SubapplicationDeclaration" />
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
      <node concept="3uibUv" id="3lxP5h4aANe" role="3clF45">
        <ref role="3uigEE" to="xpc1:~ApplicationHierarchy" resolve="ApplicationHierarchy" />
      </node>
      <node concept="37vLTG" id="3lxP5h4aANf" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="3lxP5h4aANg" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4aANh" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjF1i" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4aANd" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4aw6L" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4a_$n" role="jymVt">
      <property role="TrG5h" value="asNode" />
      <node concept="3clFbS" id="3lxP5h4a_$p" role="3clF47">
        <node concept="3clFbJ" id="3lxP5h4a_$q" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h4a_$r" role="3clFbx">
            <node concept="3cpWs8" id="3lxP5h4a_$s" role="3cqZAp">
              <node concept="3cpWsn" id="3lxP5h4a_$t" role="3cpWs9">
                <property role="TrG5h" value="application" />
                <node concept="3Tqbb2" id="3lxP5h4a_$u" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
                </node>
                <node concept="2OqwBi" id="3lxP5h4a_$v" role="33vP2m">
                  <node concept="1eOMI4" id="3lxP5h4a_$w" role="2Oq$k0">
                    <node concept="10QFUN" id="3lxP5h4a_$x" role="1eOMHV">
                      <node concept="2OqwBi" id="3lxP5h4a_$y" role="10QFUP">
                        <node concept="1eOMI4" id="3lxP5h4a_$z" role="2Oq$k0">
                          <node concept="10QFUN" id="3lxP5h4a_$$" role="1eOMHV">
                            <node concept="37vLTw" id="3lxP5h4a_$_" role="10QFUP">
                              <ref role="3cqZAo" node="3lxP5h4a__B" resolve="hierarchy" />
                            </node>
                            <node concept="3uibUv" id="3lxP5h4a_$A" role="10QFUM">
                              <ref role="3uigEE" to="xpc1:~ApplicationHierarchy$Root" resolve="ApplicationHierarchy.Root" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3lxP5h4a_$B" role="2OqNvi">
                          <ref role="37wK5l" to="xpc1:~ApplicationHierarchy$Root.getApplication()" resolve="getApplication" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="3lxP5h4a_$C" role="10QFUM">
                        <ref role="3uigEE" node="4dM3MZ7oKoQ" resolve="ApplicationDeclarationByNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3lxP5h4a_$D" role="2OqNvi">
                    <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3lxP5h4a_$E" role="3cqZAp">
              <node concept="3cpWsn" id="3lxP5h4a_$F" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3lxP5h4a_$G" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
                </node>
                <node concept="2ShNRf" id="3lxP5h4a_$H" role="33vP2m">
                  <node concept="3zrR0B" id="3lxP5h4a_$I" role="2ShVmc">
                    <node concept="3Tqbb2" id="3lxP5h4a_$J" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3lxP5h4a_$K" role="3cqZAp">
              <node concept="37vLTI" id="3lxP5h4a_$L" role="3clFbG">
                <node concept="37vLTw" id="3lxP5h4a_$M" role="37vLTx">
                  <ref role="3cqZAo" node="3lxP5h4a_$t" resolve="application" />
                </node>
                <node concept="2OqwBi" id="3lxP5h4a_$N" role="37vLTJ">
                  <node concept="37vLTw" id="3lxP5h4a_$O" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4a_$F" resolve="node" />
                  </node>
                  <node concept="3TrEf2" id="3lxP5h4a_$P" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmhk8" resolve="application" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3lxP5h4a_$Q" role="3cqZAp">
              <node concept="37vLTw" id="3lxP5h4a_$R" role="3cqZAk">
                <ref role="3cqZAo" node="3lxP5h4a_$F" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3lxP5h4a_$S" role="3clFbw">
            <node concept="3uibUv" id="3lxP5h4a_$T" role="2ZW6by">
              <ref role="3uigEE" to="xpc1:~ApplicationHierarchy$Root" resolve="ApplicationHierarchy.Root" />
            </node>
            <node concept="37vLTw" id="3lxP5h4a_$U" role="2ZW6bz">
              <ref role="3cqZAo" node="3lxP5h4a__B" resolve="hierarchy" />
            </node>
          </node>
          <node concept="9aQIb" id="3lxP5h4a_$V" role="9aQIa">
            <node concept="3clFbS" id="3lxP5h4a_$W" role="9aQI4">
              <node concept="3cpWs8" id="3lxP5h4a_$X" role="3cqZAp">
                <node concept="3cpWsn" id="3lxP5h4a_$Y" role="3cpWs9">
                  <property role="TrG5h" value="subHierarchy" />
                  <node concept="3uibUv" id="3lxP5h4a_$Z" role="1tU5fm">
                    <ref role="3uigEE" to="xpc1:~ApplicationHierarchy$Subapplication" resolve="ApplicationHierarchy.Subapplication" />
                  </node>
                  <node concept="10QFUN" id="3lxP5h4a__0" role="33vP2m">
                    <node concept="37vLTw" id="3lxP5h4a__1" role="10QFUP">
                      <ref role="3cqZAo" node="3lxP5h4a__B" resolve="hierarchy" />
                    </node>
                    <node concept="3uibUv" id="3lxP5h4a__2" role="10QFUM">
                      <ref role="3uigEE" to="xpc1:~ApplicationHierarchy$Subapplication" resolve="ApplicationHierarchy.Subapplication" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3lxP5h4a__3" role="3cqZAp">
                <node concept="3cpWsn" id="3lxP5h4a__4" role="3cpWs9">
                  <property role="TrG5h" value="subapplication" />
                  <node concept="3Tqbb2" id="3lxP5h4a__5" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="3lxP5h4a__6" role="33vP2m">
                    <node concept="1eOMI4" id="3lxP5h4a__7" role="2Oq$k0">
                      <node concept="10QFUN" id="3lxP5h4a__8" role="1eOMHV">
                        <node concept="2OqwBi" id="3lxP5h4a__9" role="10QFUP">
                          <node concept="37vLTw" id="3lxP5h4a__a" role="2Oq$k0">
                            <ref role="3cqZAo" node="3lxP5h4a_$Y" resolve="subHierarchy" />
                          </node>
                          <node concept="liA8E" id="3lxP5h4a__b" role="2OqNvi">
                            <ref role="37wK5l" to="xpc1:~ApplicationHierarchy$Subapplication.getSubapplication()" resolve="getSubapplication" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="3lxP5h4a__c" role="10QFUM">
                          <ref role="3uigEE" to="pq5g:3VhUp_YN5oU" resolve="SubapplicationDeclarationByNode" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4a__d" role="2OqNvi">
                      <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3lxP5h4a__e" role="3cqZAp" />
              <node concept="3cpWs8" id="3lxP5h4a__f" role="3cqZAp">
                <node concept="3cpWsn" id="3lxP5h4a__g" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3Tqbb2" id="3lxP5h4a__h" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                  </node>
                  <node concept="2ShNRf" id="3lxP5h4a__i" role="33vP2m">
                    <node concept="3zrR0B" id="3lxP5h4a__j" role="2ShVmc">
                      <node concept="3Tqbb2" id="3lxP5h4a__k" role="3zrR0E">
                        <ref role="ehGHo" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3lxP5h4a__l" role="3cqZAp">
                <node concept="37vLTI" id="3lxP5h4a__m" role="3clFbG">
                  <node concept="1rXfSq" id="3lxP5h4a__n" role="37vLTx">
                    <ref role="37wK5l" node="3lxP5h4a_$n" resolve="asNode" />
                    <node concept="2OqwBi" id="3lxP5h4a__o" role="37wK5m">
                      <node concept="37vLTw" id="3lxP5h4a__p" role="2Oq$k0">
                        <ref role="3cqZAo" node="3lxP5h4a_$Y" resolve="subHierarchy" />
                      </node>
                      <node concept="liA8E" id="3lxP5h4a__q" role="2OqNvi">
                        <ref role="37wK5l" to="xpc1:~ApplicationHierarchy$Subapplication.getParent()" resolve="getParent" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3lxP5h4a__r" role="37vLTJ">
                    <node concept="37vLTw" id="3lxP5h4a__s" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h4a__g" resolve="node" />
                    </node>
                    <node concept="3TrEf2" id="3lxP5h4a__t" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:uLhTRRmjJr" resolve="parentApp" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3lxP5h4a__u" role="3cqZAp">
                <node concept="37vLTI" id="3lxP5h4a__v" role="3clFbG">
                  <node concept="37vLTw" id="3lxP5h4a__w" role="37vLTx">
                    <ref role="3cqZAo" node="3lxP5h4a__4" resolve="subapplication" />
                  </node>
                  <node concept="2OqwBi" id="3lxP5h4a__x" role="37vLTJ">
                    <node concept="37vLTw" id="3lxP5h4a__y" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h4a__g" resolve="node" />
                    </node>
                    <node concept="3TrEf2" id="3lxP5h4a__z" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:uLhTRRmjJx" resolve="subapp" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3lxP5h4a__$" role="3cqZAp">
                <node concept="37vLTw" id="3lxP5h4a___" role="3cqZAk">
                  <ref role="3cqZAo" node="3lxP5h4a__g" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3lxP5h4a__D" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
      </node>
      <node concept="37vLTG" id="3lxP5h4a__B" role="3clF46">
        <property role="TrG5h" value="hierarchy" />
        <node concept="3uibUv" id="3lxP5h4a__C" role="1tU5fm">
          <ref role="3uigEE" to="xpc1:~ApplicationHierarchy" resolve="ApplicationHierarchy" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4a__A" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4aw84" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4a$78" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3clFbS" id="3lxP5h4a$7a" role="3clF47">
        <node concept="3clFbJ" id="3lxP5h4a$7b" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h4a$7c" role="3clFbx">
            <node concept="3cpWs8" id="3lxP5h4a$7d" role="3cqZAp">
              <node concept="3cpWsn" id="3lxP5h4a$7e" role="3cpWs9">
                <property role="TrG5h" value="res" />
                <node concept="3uibUv" id="3lxP5h4a$7f" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                  <node concept="3uibUv" id="6bsr$eapNdc" role="11_B2D">
                    <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                  </node>
                </node>
                <node concept="2ShNRf" id="3lxP5h4a$7h" role="33vP2m">
                  <node concept="1pGfFk" id="3lxP5h4a$7i" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="6bsr$eapNuM" role="1pMfVU">
                      <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3lxP5h4a$7k" role="3cqZAp">
              <node concept="2OqwBi" id="3lxP5h4a$7l" role="3clFbG">
                <node concept="37vLTw" id="3lxP5h4a$7m" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h4a$7e" resolve="res" />
                </node>
                <node concept="liA8E" id="3lxP5h4a$7n" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                  <node concept="2YIFZM" id="1VyPeINPoJa" role="37wK5m">
                    <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                    <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                    <node concept="37vLTw" id="1VyPeINQr$g" role="37wK5m">
                      <ref role="3cqZAo" node="3lxP5h4a$89" resolve="reference" />
                    </node>
                    <node concept="359W_D" id="1VyPeINPoJc" role="37wK5m">
                      <ref role="359W_E" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
                      <ref role="359W_F" to="xiqq:uLhTRRmhk8" resolve="application" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3lxP5h4a$7z" role="3cqZAp">
              <node concept="37vLTw" id="3lxP5h4a$7$" role="3cqZAk">
                <ref role="3cqZAo" node="3lxP5h4a$7e" resolve="res" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3lxP5h4a$7_" role="3clFbw">
            <node concept="37vLTw" id="3lxP5h4a$7A" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4a$89" resolve="reference" />
            </node>
            <node concept="1mIQ4w" id="3lxP5h4a$7B" role="2OqNvi">
              <node concept="chp4Y" id="3lxP5h4a$7C" role="cj9EA">
                <ref role="cht4Q" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3lxP5h4a$7D" role="9aQIa">
            <node concept="3clFbS" id="3lxP5h4a$7E" role="9aQI4">
              <node concept="3cpWs8" id="3lxP5h4a$7F" role="3cqZAp">
                <node concept="3cpWsn" id="3lxP5h4a$7G" role="3cpWs9">
                  <property role="TrG5h" value="res" />
                  <node concept="3uibUv" id="3lxP5h4a$7H" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="3lxP5h4a$7I" role="11_B2D">
                      <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="3lxP5h4a$7J" role="33vP2m">
                    <ref role="37wK5l" node="3lxP5h4a$78" resolve="serialize" />
                    <node concept="2OqwBi" id="3lxP5h4a$7K" role="37wK5m">
                      <node concept="1PxgMI" id="3lxP5h4a$7L" role="2Oq$k0">
                        <node concept="chp4Y" id="3lxP5h4a$7M" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                        </node>
                        <node concept="37vLTw" id="3lxP5h4a$7N" role="1m5AlR">
                          <ref role="3cqZAo" node="3lxP5h4a$89" resolve="reference" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3lxP5h4a$7O" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:uLhTRRmjJr" resolve="parentApp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3lxP5h4a$7P" role="3cqZAp">
                <node concept="2OqwBi" id="3lxP5h4a$7Q" role="3clFbG">
                  <node concept="37vLTw" id="3lxP5h4a$7R" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4a$7G" resolve="res" />
                  </node>
                  <node concept="liA8E" id="3lxP5h4a$7S" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="2YIFZM" id="1VyPeINQswk" role="37wK5m">
                      <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                      <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                      <node concept="37vLTw" id="1VyPeINQswl" role="37wK5m">
                        <ref role="3cqZAo" node="3lxP5h4a$89" resolve="reference" />
                      </node>
                      <node concept="359W_D" id="1VyPeINQswm" role="37wK5m">
                        <ref role="359W_E" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                        <ref role="359W_F" to="xiqq:uLhTRRmjJx" resolve="subapp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3lxP5h4a$84" role="3cqZAp">
                <node concept="37vLTw" id="3lxP5h4a$85" role="3cqZAk">
                  <ref role="3cqZAo" node="3lxP5h4a$7G" resolve="res" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3lxP5h4a$87" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bsr$eapMUe" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4a$89" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="3lxP5h4a$8a" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4a$86" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4aw97" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4axXM" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="3lxP5h4axXO" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4axXP" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4axXQ" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3Tqbb2" id="3lxP5h4axXR" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
            </node>
            <node concept="2ShNRf" id="3lxP5h4axXS" role="33vP2m">
              <node concept="3zrR0B" id="3lxP5h4axXT" role="2ShVmc">
                <node concept="3Tqbb2" id="3lxP5h4axXU" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VyPeINN3nq" role="3cqZAp">
          <node concept="2YIFZM" id="1VyPeINN3nr" role="3clFbG">
            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
            <node concept="37vLTw" id="1VyPeINQww_" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4axXQ" resolve="res" />
            </node>
            <node concept="359W_D" id="1VyPeINN3nt" role="37wK5m">
              <ref role="359W_E" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
              <ref role="359W_F" to="xiqq:uLhTRRmhk8" resolve="application" />
            </node>
            <node concept="10Nm6u" id="1VyPeINQwAU" role="37wK5m" />
            <node concept="2OqwBi" id="1VyPeINN3nv" role="37wK5m">
              <node concept="37vLTw" id="1VyPeINN3nw" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4axYY" resolve="path" />
              </node>
              <node concept="liA8E" id="1VyPeINN3nx" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="1VyPeINN3ny" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3lxP5h4axYd" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h4axYe" role="2LFqv$">
            <node concept="3cpWs8" id="3lxP5h4axYf" role="3cqZAp">
              <node concept="3cpWsn" id="3lxP5h4axYg" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3lxP5h4axYh" role="1tU5fm">
                  <ref role="ehGHo" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                </node>
                <node concept="2ShNRf" id="3lxP5h4axYi" role="33vP2m">
                  <node concept="3zrR0B" id="3lxP5h4axYj" role="2ShVmc">
                    <node concept="3Tqbb2" id="3lxP5h4axYk" role="3zrR0E">
                      <ref role="ehGHo" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3lxP5h4axYl" role="3cqZAp">
              <node concept="37vLTI" id="3lxP5h4axYm" role="3clFbG">
                <node concept="37vLTw" id="3lxP5h4axYn" role="37vLTx">
                  <ref role="3cqZAo" node="3lxP5h4axXQ" resolve="res" />
                </node>
                <node concept="2OqwBi" id="3lxP5h4axYo" role="37vLTJ">
                  <node concept="37vLTw" id="3lxP5h4axYp" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4axYg" resolve="node" />
                  </node>
                  <node concept="3TrEf2" id="3lxP5h4axYq" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmjJr" resolve="parentApp" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1VyPeINQxjF" role="3cqZAp">
              <node concept="2YIFZM" id="1VyPeINQxjG" role="3clFbG">
                <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                <node concept="37vLTw" id="1VyPeINQxjH" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4axXQ" resolve="res" />
                </node>
                <node concept="359W_D" id="1VyPeINQxjI" role="37wK5m">
                  <ref role="359W_E" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                  <ref role="359W_F" to="xiqq:uLhTRRmjJx" resolve="subapp" />
                </node>
                <node concept="10Nm6u" id="1VyPeINQxjJ" role="37wK5m" />
                <node concept="2OqwBi" id="1VyPeINQxjK" role="37wK5m">
                  <node concept="37vLTw" id="1VyPeINQxjL" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4axYY" resolve="path" />
                  </node>
                  <node concept="liA8E" id="1VyPeINQxjM" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="1VyPeINQxV9" role="37wK5m">
                      <ref role="3cqZAo" node="3lxP5h4axYL" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3lxP5h4axYH" role="3cqZAp">
              <node concept="37vLTI" id="3lxP5h4axYI" role="3clFbG">
                <node concept="37vLTw" id="3lxP5h4axYJ" role="37vLTx">
                  <ref role="3cqZAo" node="3lxP5h4axYg" resolve="node" />
                </node>
                <node concept="37vLTw" id="3lxP5h4axYK" role="37vLTJ">
                  <ref role="3cqZAo" node="3lxP5h4axXQ" resolve="res" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3lxP5h4axYL" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3lxP5h4axYM" role="1tU5fm" />
            <node concept="3cmrfG" id="3lxP5h4axYN" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3eOVzh" id="3lxP5h4axYO" role="1Dwp0S">
            <node concept="2OqwBi" id="3lxP5h4axYP" role="3uHU7w">
              <node concept="37vLTw" id="3lxP5h4axYQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4axYY" resolve="path" />
              </node>
              <node concept="liA8E" id="3lxP5h4axYR" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="3lxP5h4axYS" role="3uHU7B">
              <ref role="3cqZAo" node="3lxP5h4axYL" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3lxP5h4axYT" role="1Dwrff">
            <node concept="37vLTw" id="3lxP5h4axYU" role="2$L3a6">
              <ref role="3cqZAo" node="3lxP5h4axYL" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4axYV" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4axYW" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4axXQ" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3lxP5h4axZ1" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRRmhk6" resolve="ApplicationReference" />
      </node>
      <node concept="37vLTG" id="3lxP5h4axYY" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="3lxP5h4axYZ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3dz4Yurgd2C" role="11_B2D">
            <node concept="3uibUv" id="3dz4YurgdlR" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4axYX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4aw4L" role="jymVt" />
  </node>
  <node concept="312cEu" id="3lxP5h4aKp7">
    <property role="TrG5h" value="ApplicationFunctionBlockReferenceByNode" />
    <node concept="2tJIrI" id="3lxP5h4aKp8" role="jymVt" />
    <node concept="312cEg" id="3lxP5h4aKp9" role="jymVt">
      <property role="TrG5h" value="myContainer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4aKpa" role="1B3o_S" />
      <node concept="3Tqbb2" id="3lxP5h4aKpb" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3lxP5h4aKpc" role="jymVt">
      <property role="TrG5h" value="myLink" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4aKpd" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4aKpe" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h4aKpf" role="jymVt">
      <property role="TrG5h" value="myOwner" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4aKpg" role="1B3o_S" />
      <node concept="3uibUv" id="QE5KxyjCN8" role="1tU5fm">
        <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKpi" role="jymVt" />
    <node concept="3clFbW" id="3lxP5h4aKpj" role="jymVt">
      <node concept="3cqZAl" id="3lxP5h4aKpk" role="3clF45" />
      <node concept="3Tm1VV" id="3lxP5h4aKpl" role="1B3o_S" />
      <node concept="3clFbS" id="3lxP5h4aKpm" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4aKpn" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4aKpo" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4aKpp" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4aKpz" resolve="container" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aKpq" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4aKp9" resolve="myContainer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aKpr" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4aKps" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4aKpt" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4aKp_" resolve="link" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aKpu" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4aKpc" resolve="myLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aKpv" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4aKpw" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4aKpx" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4aKpB" resolve="owner" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aKpy" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4aKpf" resolve="myOwner" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4aKpz" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="3lxP5h4aKp$" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4aKp_" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3lxP5h4aKpA" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4aKpB" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjCWT" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKpD" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h4aKpE" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h4aKpF" role="EKbjA">
      <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
      <node concept="3uibUv" id="3lxP5h4aP3d" role="11_B2D">
        <ref role="3uigEE" to="xpc1:~ApplicationFunctionBlockHierarchy" resolve="ApplicationFunctionBlockHierarchy" />
      </node>
    </node>
    <node concept="3clFb_" id="3lxP5h4aKpH" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="3Tm1VV" id="3lxP5h4aKpI" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4aKpJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="3lxP5h4aPCd" role="3clF45">
        <ref role="3uigEE" to="xpc1:~ApplicationFunctionBlockHierarchy" resolve="ApplicationFunctionBlockHierarchy" />
      </node>
      <node concept="3clFbS" id="3lxP5h4aKpL" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aKpM" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aKpN" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aKpO" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4aKpP" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4aKpQ" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4aKpR" role="10QFUP">
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <node concept="37vLTw" id="3lxP5h4aKpS" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4aKp9" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4aKpT" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4aKpc" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aKpU" role="3cqZAp">
          <node concept="1rXfSq" id="3lxP5h4aKpV" role="3clFbG">
            <ref role="37wK5l" node="3lxP5h4aKrd" resolve="resolve" />
            <node concept="37vLTw" id="3lxP5h4aKpW" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aKpN" resolve="node" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aKpX" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aKpf" resolve="myOwner" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4aKpY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKpZ" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4aKq0" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="3Tm1VV" id="3lxP5h4aKq1" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4aKq2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4aKq3" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bsr$eapKgk" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4aKq5" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aKq6" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aKq7" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aKq8" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4aKq9" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4aKqa" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4aKqb" role="10QFUP">
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <node concept="37vLTw" id="3lxP5h4aKqc" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4aKp9" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4aKqd" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4aKpc" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aKqe" role="3cqZAp">
          <node concept="1rXfSq" id="3lxP5h4aKqf" role="3clFbG">
            <ref role="37wK5l" node="3lxP5h4aKtg" resolve="serialize" />
            <node concept="37vLTw" id="3lxP5h4aKqg" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aKq7" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4aKqh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKqi" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4aKqj" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="3lxP5h4aKqk" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4aKql" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4aKqm" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3lxP5h4aKqn" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aKqo" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aKqp" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aKqq" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4aKqr" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4aKqs" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4aKqt" role="10QFUP">
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <node concept="37vLTw" id="3lxP5h4aKqu" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4aKp9" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4aKqv" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4aKpc" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aKqw" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4aKqx" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4aKqy" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4aKqp" resolve="node" />
            </node>
            <node concept="2qgKlT" id="3lxP5h4aKqz" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4aKq$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKq_" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4aKqA" role="jymVt">
      <property role="TrG5h" value="setTarget" />
      <node concept="3Tm1VV" id="3lxP5h4aKqB" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h4aKqC" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h4aKqD" role="3clF46">
        <property role="TrG5h" value="hierarchy" />
        <node concept="3uibUv" id="3lxP5h4aTfv" role="1tU5fm">
          <ref role="3uigEE" to="xpc1:~ApplicationFunctionBlockHierarchy" resolve="ApplicationFunctionBlockHierarchy" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h4aKqF" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4aKqG" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aKqH" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aKqI" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aKqJ" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
            </node>
            <node concept="1rXfSq" id="3lxP5h4aKqK" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4aKrX" resolve="asNode" />
              <node concept="37vLTw" id="3lxP5h4aKqL" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4aKqD" resolve="hierarchy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aKqM" role="3cqZAp">
          <node concept="2YIFZM" id="3lxP5h4aKqN" role="3clFbG">
            <ref role="37wK5l" to="i51s:~SLinkOperations.setTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setTarget" />
            <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
            <node concept="37vLTw" id="3lxP5h4aKqO" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aKp9" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aKqP" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aKpc" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aKqQ" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aKqI" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4aKqR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKqS" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4aKqT" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3Tm1VV" id="3lxP5h4aKqU" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h4aKqV" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h4aKqW" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="3lxP5h4aKqX" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3dz4YurgJhn" role="11_B2D">
            <node concept="3uibUv" id="3dz4YurgJAR" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3lxP5h4aKqZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4aKr0" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4aKr1" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4aKr2" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4aKr3" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
            </node>
            <node concept="1rXfSq" id="3lxP5h4aKr4" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4aKuj" resolve="deserialize" />
              <node concept="37vLTw" id="1VyPeINNjIF" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4aKqW" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4aKr6" role="3cqZAp">
          <node concept="2YIFZM" id="3lxP5h4aKr7" role="3clFbG">
            <ref role="37wK5l" to="i51s:~SLinkOperations.setTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setTarget" />
            <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
            <node concept="37vLTw" id="3lxP5h4aKr8" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aKp9" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aKr9" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aKpc" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aKra" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4aKr2" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4aKrb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKrc" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4aKrd" role="jymVt">
      <property role="TrG5h" value="resolve" />
      <node concept="3clFbS" id="3lxP5h4aKre" role="3clF47">
        <node concept="3cpWs6" id="3lxP5h4aX$h" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4aXIZ" role="3cqZAk">
            <node concept="1pGfFk" id="3lxP5h4aYj2" role="2ShVmc">
              <ref role="37wK5l" to="xpc1:~ApplicationFunctionBlockHierarchy.&lt;init&gt;(org.fbme.lib.iec61499.declarations.hierarchies.ApplicationHierarchy,org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration)" resolve="ApplicationFunctionBlockHierarchy" />
              <node concept="2YIFZM" id="3lxP5h4aZ1M" role="37wK5m">
                <ref role="37wK5l" node="3lxP5h4aAMz" resolve="resolve" />
                <ref role="1Pybhc" node="3lxP5h4asS_" resolve="ApplicationReferenceByNode" />
                <node concept="2OqwBi" id="3lxP5h4aZ1N" role="37wK5m">
                  <node concept="37vLTw" id="3lxP5h4aZ1O" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4aKrR" resolve="reference" />
                  </node>
                  <node concept="3TrEf2" id="3lxP5h4aZ1P" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmrd7" resolve="application" />
                  </node>
                </node>
                <node concept="37vLTw" id="3lxP5h4aZ1Q" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4aKrT" resolve="repository" />
                </node>
              </node>
              <node concept="2OqwBi" id="3lxP5h4aZeo" role="37wK5m">
                <node concept="37vLTw" id="3lxP5h4aZep" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h4aKrT" resolve="repository" />
                </node>
                <node concept="liA8E" id="3lxP5h4aZeq" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                  <node concept="2OqwBi" id="3lxP5h4aZer" role="37wK5m">
                    <node concept="37vLTw" id="3lxP5h4aZes" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h4aKrR" resolve="reference" />
                    </node>
                    <node concept="3TrEf2" id="3lxP5h4aZet" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:uLhTRRmrd9" resolve="functionBlock" />
                    </node>
                  </node>
                  <node concept="3VsKOn" id="3lxP5h4aZeu" role="37wK5m">
                    <ref role="3VsUkX" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3lxP5h4aSyi" role="3clF45">
        <ref role="3uigEE" to="xpc1:~ApplicationFunctionBlockHierarchy" resolve="ApplicationFunctionBlockHierarchy" />
      </node>
      <node concept="37vLTG" id="3lxP5h4aKrR" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="3lxP5h4aKrS" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4aKrT" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjCYt" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4aKrV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKrW" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4aKrX" role="jymVt">
      <property role="TrG5h" value="asNode" />
      <node concept="3clFbS" id="3lxP5h4aKrY" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4b0ND" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4b0NE" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4b0_9" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
            </node>
            <node concept="2ShNRf" id="3lxP5h4b0NF" role="33vP2m">
              <node concept="3zrR0B" id="3lxP5h4b0NG" role="2ShVmc">
                <node concept="3Tqbb2" id="3lxP5h4b0NH" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4b1k8" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4b1U6" role="3clFbG">
            <node concept="2YIFZM" id="3lxP5h4b241" role="37vLTx">
              <ref role="37wK5l" node="3lxP5h4a_$n" resolve="asNode" />
              <ref role="1Pybhc" node="3lxP5h4asS_" resolve="ApplicationReferenceByNode" />
              <node concept="2OqwBi" id="3lxP5h4b2cf" role="37wK5m">
                <node concept="37vLTw" id="3lxP5h4b25L" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h4aKtc" resolve="hierarchy" />
                </node>
                <node concept="liA8E" id="3lxP5h4b2nI" role="2OqNvi">
                  <ref role="37wK5l" to="xpc1:~ApplicationFunctionBlockHierarchy.getApplication()" resolve="getApplication" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3lxP5h4b1te" role="37vLTJ">
              <node concept="37vLTw" id="3lxP5h4b1k6" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4b0NE" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4b1EZ" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRmrd7" resolve="application" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4b2pl" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4b2Zq" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4b4BY" role="37vLTx">
              <node concept="1eOMI4" id="3lxP5h4b3JL" role="2Oq$k0">
                <node concept="10QFUN" id="3lxP5h4b3Nj" role="1eOMHV">
                  <node concept="3uibUv" id="3lxP5h4b3Uu" role="10QFUM">
                    <ref role="3uigEE" to="rwq3:6LU90BOirFi" resolve="FunctionBlockDeclarationByNode" />
                  </node>
                  <node concept="2OqwBi" id="3lxP5h4b3bE" role="10QFUP">
                    <node concept="37vLTw" id="3lxP5h4b343" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h4aKtc" resolve="hierarchy" />
                    </node>
                    <node concept="liA8E" id="3lxP5h4b3nm" role="2OqNvi">
                      <ref role="37wK5l" to="xpc1:~ApplicationFunctionBlockHierarchy.getFunctionBlock()" resolve="getFunctionBlock" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3lxP5h4b5i6" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="3lxP5h4b2yW" role="37vLTJ">
              <node concept="37vLTw" id="3lxP5h4b2pj" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4b0NE" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4b2Pb" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRmrd9" resolve="functionBlock" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4aZER" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4b5kV" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4b0NE" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3lxP5h4aKtb" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
      </node>
      <node concept="37vLTG" id="3lxP5h4aKtc" role="3clF46">
        <property role="TrG5h" value="hierarchy" />
        <node concept="3uibUv" id="3lxP5h4aSRp" role="1tU5fm">
          <ref role="3uigEE" to="xpc1:~ApplicationFunctionBlockHierarchy" resolve="ApplicationFunctionBlockHierarchy" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4aKte" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKtf" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4aKtg" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3clFbS" id="3lxP5h4aKth" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4b7q9" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4b7qa" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="3lxP5h4b7kU" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6bsr$eapKVl" role="11_B2D">
                <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
              </node>
            </node>
            <node concept="2YIFZM" id="3lxP5h4b7qb" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4a$78" resolve="serialize" />
              <ref role="1Pybhc" node="3lxP5h4asS_" resolve="ApplicationReferenceByNode" />
              <node concept="2OqwBi" id="3lxP5h4b7qc" role="37wK5m">
                <node concept="37vLTw" id="3lxP5h4b7qd" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h4aKuf" resolve="reference" />
                </node>
                <node concept="3TrEf2" id="3lxP5h4b7qe" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRmrd7" resolve="application" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4b64G" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4b8$Q" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4b7qf" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4b7qa" resolve="res" />
            </node>
            <node concept="liA8E" id="3lxP5h4b9vS" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2YIFZM" id="1VyPeINNf4I" role="37wK5m">
                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                <node concept="37vLTw" id="1VyPeINNf9S" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4aKuf" resolve="reference" />
                </node>
                <node concept="359W_D" id="1VyPeINNfg0" role="37wK5m">
                  <ref role="359W_E" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
                  <ref role="359W_F" to="xiqq:uLhTRRmrd9" resolve="functionBlock" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4baYP" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4bb1S" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4b7qa" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3lxP5h4aKud" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bsr$eapKVe" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4aKuf" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="3lxP5h4aKug" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4aKuh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKui" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4aKuj" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="3lxP5h4aKuk" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bhfH" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bhfI" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bhf$" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
            </node>
            <node concept="2ShNRf" id="3lxP5h4bhfJ" role="33vP2m">
              <node concept="3zrR0B" id="3lxP5h4bhfK" role="2ShVmc">
                <node concept="3Tqbb2" id="3lxP5h4bhfL" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VyPeINNgc_" role="3cqZAp">
          <node concept="2YIFZM" id="1VyPeINNgJA" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
            <node concept="37vLTw" id="1VyPeINNgJB" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bhfI" resolve="node" />
            </node>
            <node concept="359W_D" id="1VyPeINNgJC" role="37wK5m">
              <ref role="359W_E" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
              <ref role="359W_F" to="xiqq:uLhTRRmrd9" resolve="functionBlock" />
            </node>
            <node concept="10Nm6u" id="1VyPeINNiWY" role="37wK5m" />
            <node concept="2OqwBi" id="1VyPeINNkjw" role="37wK5m">
              <node concept="37vLTw" id="1VyPeINNkjx" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4aKvw" resolve="path" />
              </node>
              <node concept="liA8E" id="1VyPeINNkjy" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.remove(int)" resolve="remove" />
                <node concept="3cpWsd" id="1VyPeINNkjz" role="37wK5m">
                  <node concept="3cmrfG" id="1VyPeINNkj$" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1VyPeINNkj_" role="3uHU7B">
                    <node concept="37vLTw" id="1VyPeINNkjA" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h4aKvw" resolve="path" />
                    </node>
                    <node concept="liA8E" id="1VyPeINNkjB" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bkCG" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4bltl" role="3clFbG">
            <node concept="2YIFZM" id="3lxP5h4blVJ" role="37vLTx">
              <ref role="37wK5l" node="3lxP5h4axXM" resolve="deserialize" />
              <ref role="1Pybhc" node="3lxP5h4asS_" resolve="ApplicationReferenceByNode" />
              <node concept="37vLTw" id="3lxP5h4bm0G" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4aKvw" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="3lxP5h4bkW9" role="37vLTJ">
              <node concept="37vLTw" id="3lxP5h4bkCE" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bhfI" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4blg9" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRmrd7" resolve="application" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4bmbZ" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4bmGs" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4bhfI" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3lxP5h4aKvv" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRRmhk5" resolve="ApplicationFunctionBlockReference" />
      </node>
      <node concept="37vLTG" id="3lxP5h4aKvw" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="3lxP5h4aKvx" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3dz4YurgJQw" role="11_B2D">
            <node concept="3uibUv" id="3dz4YurgKi$" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4aKvz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKv$" role="jymVt" />
  </node>
  <node concept="312cEu" id="3lxP5h4bZrv">
    <property role="TrG5h" value="ResourceFunctionBlockReferenceByNode" />
    <node concept="2tJIrI" id="3lxP5h4bZrw" role="jymVt" />
    <node concept="312cEg" id="3lxP5h4bZrx" role="jymVt">
      <property role="TrG5h" value="myContainer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4bZry" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4bZrz" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h4bZr$" role="jymVt">
      <property role="TrG5h" value="myLink" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4bZr_" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4bZrA" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h4bZrB" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4bZrC" role="1B3o_S" />
      <node concept="3uibUv" id="QE5KxyjQcV" role="1tU5fm">
        <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZrE" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h4bZrF" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h4bZrG" role="EKbjA">
      <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
      <node concept="3uibUv" id="3lxP5h4c360" role="11_B2D">
        <ref role="3uigEE" to="xpc1:~ResourceFunctionBlockHierarchy" resolve="ResourceFunctionBlockHierarchy" />
      </node>
    </node>
    <node concept="3clFbW" id="3lxP5h4bZrI" role="jymVt">
      <node concept="3cqZAl" id="3lxP5h4bZrJ" role="3clF45" />
      <node concept="3Tm1VV" id="3lxP5h4bZrK" role="1B3o_S" />
      <node concept="3clFbS" id="3lxP5h4bZrL" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4bZrM" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4bZrN" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4bZrO" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4bZrY" resolve="container" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bZrP" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4bZrx" resolve="myContainer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZrQ" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4bZrR" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4bZrS" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4bZs0" resolve="link" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bZrT" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4bZr$" resolve="myLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZrU" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4bZrV" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4bZrW" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4bZs2" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bZrX" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4bZrB" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4bZrY" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="3lxP5h4bZrZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4bZs0" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3lxP5h4bZs1" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4bZs2" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjQoS" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZs4" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4bZs5" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="3Tm1VV" id="3lxP5h4bZs6" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4bZs7" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="3lxP5h4c3yn" role="3clF45">
        <ref role="3uigEE" to="xpc1:~ResourceFunctionBlockHierarchy" resolve="ResourceFunctionBlockHierarchy" />
      </node>
      <node concept="3clFbS" id="3lxP5h4bZs9" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bZsa" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bZsb" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bZsc" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4bZsd" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4bZse" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4bZsf" role="10QFUP">
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <node concept="37vLTw" id="3lxP5h4bZsg" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4bZrx" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4bZsh" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4bZr$" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZsi" role="3cqZAp">
          <node concept="1rXfSq" id="3lxP5h4bZsj" role="3clFbG">
            <ref role="37wK5l" node="3lxP5h4bZt_" resolve="resolve" />
            <node concept="37vLTw" id="3lxP5h4bZsk" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZsb" resolve="node" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bZsl" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZrB" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4bZsm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZsn" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4bZso" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="3Tm1VV" id="3lxP5h4bZsp" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4bZsq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4bZsr" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bsr$eaq9pd" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4bZst" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bZsu" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bZsv" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bZsw" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4bZsx" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4bZsy" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4bZsz" role="10QFUP">
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <node concept="37vLTw" id="3lxP5h4bZs$" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4bZrx" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4bZs_" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4bZr$" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZsA" role="3cqZAp">
          <node concept="1rXfSq" id="3lxP5h4bZsB" role="3clFbG">
            <ref role="37wK5l" node="3lxP5h4bZuK" resolve="serialize" />
            <node concept="37vLTw" id="3lxP5h4bZsC" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZsv" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4bZsD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZsE" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4bZsF" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="3lxP5h4bZsG" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4bZsH" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4bZsI" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3lxP5h4bZsJ" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bZsK" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bZsL" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bZsM" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
            </node>
            <node concept="10QFUN" id="3lxP5h4bZsN" role="33vP2m">
              <node concept="3Tqbb2" id="3lxP5h4bZsO" role="10QFUM">
                <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
              </node>
              <node concept="2YIFZM" id="3lxP5h4bZsP" role="10QFUP">
                <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
                <ref role="37wK5l" to="i51s:~SLinkOperations.getTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getTarget" />
                <node concept="37vLTw" id="3lxP5h4bZsQ" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4bZrx" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h4bZsR" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4bZr$" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZsS" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4bZsT" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4bZsU" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4bZsL" resolve="node" />
            </node>
            <node concept="2qgKlT" id="3lxP5h4bZsV" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4bZsW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZsX" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4bZsY" role="jymVt">
      <property role="TrG5h" value="setTarget" />
      <node concept="3Tm1VV" id="3lxP5h4bZsZ" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h4bZt0" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h4bZt1" role="3clF46">
        <property role="TrG5h" value="hierarchy" />
        <node concept="3uibUv" id="3lxP5h4ceG6" role="1tU5fm">
          <ref role="3uigEE" to="xpc1:~ResourceFunctionBlockHierarchy" resolve="ResourceFunctionBlockHierarchy" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h4bZt3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4bZt4" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bZt5" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bZt6" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bZt7" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
            </node>
            <node concept="1rXfSq" id="3lxP5h4bZt8" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4bZu7" resolve="asNode" />
              <node concept="37vLTw" id="3lxP5h4bZt9" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4bZt1" resolve="hierarchy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZta" role="3cqZAp">
          <node concept="2YIFZM" id="3lxP5h4bZtb" role="3clFbG">
            <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
            <ref role="37wK5l" to="i51s:~SLinkOperations.setTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setTarget" />
            <node concept="37vLTw" id="3lxP5h4bZtc" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZrx" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bZtd" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZr$" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bZte" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZt6" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4bZtf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZtg" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4bZth" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3Tm1VV" id="3lxP5h4bZti" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h4bZtj" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h4bZtk" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="3lxP5h4bZtl" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3dz4YurgGYs" role="11_B2D">
            <node concept="3uibUv" id="3dz4YurgHhD" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3lxP5h4bZtn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4bZto" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bZtp" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bZtq" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bZtr" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
            </node>
            <node concept="1rXfSq" id="3lxP5h4bZts" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4bZvr" resolve="deserialize" />
              <node concept="37vLTw" id="3lxP5h4bZtt" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4bZtk" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZtu" role="3cqZAp">
          <node concept="2YIFZM" id="3lxP5h4bZtv" role="3clFbG">
            <ref role="1Pybhc" to="i51s:~SLinkOperations" resolve="SLinkOperations" />
            <ref role="37wK5l" to="i51s:~SLinkOperations.setTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setTarget" />
            <node concept="37vLTw" id="3lxP5h4bZtw" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZrx" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bZtx" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZr$" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="3lxP5h4bZty" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZtq" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4bZtz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZt$" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4bZt_" role="jymVt">
      <property role="TrG5h" value="resolve" />
      <node concept="3clFbS" id="3lxP5h4bZtA" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4ciN2" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4ciN3" role="3cpWs9">
            <property role="TrG5h" value="resource" />
            <node concept="3uibUv" id="3lxP5h4ciCm" role="1tU5fm">
              <ref role="3uigEE" to="xpc1:~ResourceHierarchy" resolve="ResourceHierarchy" />
            </node>
            <node concept="2YIFZM" id="3lxP5h4ciN4" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4boQR" resolve="resolve" />
              <ref role="1Pybhc" node="3lxP5h49bFq" resolve="ResourceReferenceByNode" />
              <node concept="2OqwBi" id="3lxP5h4ciN5" role="37wK5m">
                <node concept="37vLTw" id="3lxP5h4ciN6" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h4bZu1" resolve="reference" />
                </node>
                <node concept="3TrEf2" id="3lxP5h4ciN7" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRtpn0" resolve="resource" />
                </node>
              </node>
              <node concept="37vLTw" id="3lxP5h4ciN8" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4bZu3" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3lxP5h4bZtL" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bZtM" role="3cpWs9">
            <property role="TrG5h" value="functionBlock" />
            <node concept="3uibUv" id="3lxP5h4chjn" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
            </node>
            <node concept="2OqwBi" id="3lxP5h4bZtO" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h4bZtP" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bZu3" resolve="repository" />
              </node>
              <node concept="liA8E" id="3lxP5h4bZtQ" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="2OqwBi" id="3lxP5h4bZtR" role="37wK5m">
                  <node concept="37vLTw" id="3lxP5h4bZtS" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4bZu1" resolve="reference" />
                  </node>
                  <node concept="3TrEf2" id="1IuIrLUu2k6" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRtpn0" resolve="resource" />
                  </node>
                </node>
                <node concept="3VsKOn" id="3lxP5h4bZtU" role="37wK5m">
                  <ref role="3VsUkX" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4bZtV" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4bZtW" role="3cqZAk">
            <node concept="1pGfFk" id="3lxP5h4bZtX" role="2ShVmc">
              <ref role="37wK5l" to="xpc1:~ResourceFunctionBlockHierarchy.&lt;init&gt;(org.fbme.lib.iec61499.declarations.hierarchies.ResourceHierarchy,org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration)" resolve="ResourceFunctionBlockHierarchy" />
              <node concept="37vLTw" id="3lxP5h4ciN9" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4ciN3" resolve="resource" />
              </node>
              <node concept="37vLTw" id="3lxP5h4bZtZ" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4bZtM" resolve="functionBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3lxP5h4c4pY" role="3clF45">
        <ref role="3uigEE" to="xpc1:~ResourceFunctionBlockHierarchy" resolve="ResourceFunctionBlockHierarchy" />
      </node>
      <node concept="37vLTG" id="3lxP5h4bZu1" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="3lxP5h4bZu2" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4bZu3" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5Kxyo5R2" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4bZu5" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZu6" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4bZu7" role="jymVt">
      <property role="TrG5h" value="asNode" />
      <node concept="3clFbS" id="3lxP5h4bZu8" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bZu9" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bZua" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bZub" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
            </node>
            <node concept="2ShNRf" id="3lxP5h4bZuc" role="33vP2m">
              <node concept="3zrR0B" id="3lxP5h4bZud" role="2ShVmc">
                <node concept="3Tqbb2" id="3lxP5h4bZue" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZus" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4bZut" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4bZuA" role="37vLTJ">
              <node concept="37vLTw" id="3lxP5h4bZuB" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bZua" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4caO1" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRtpn0" resolve="resource" />
              </node>
            </node>
            <node concept="2YIFZM" id="3lxP5h4cbJ_" role="37vLTx">
              <ref role="37wK5l" node="3lxP5h4boRB" resolve="asNode" />
              <ref role="1Pybhc" node="3lxP5h49bFq" resolve="ResourceReferenceByNode" />
              <node concept="2OqwBi" id="3lxP5h4cbJA" role="37wK5m">
                <node concept="37vLTw" id="3lxP5h4cbSd" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h4bZuG" resolve="hierarchy" />
                </node>
                <node concept="liA8E" id="3lxP5h4cc03" role="2OqNvi">
                  <ref role="37wK5l" to="xpc1:~ResourceFunctionBlockHierarchy.getResourceHierarchy()" resolve="getResourceHierarchy" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZuf" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4bZug" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4bZuh" role="37vLTx">
              <node concept="1eOMI4" id="3lxP5h4bZui" role="2Oq$k0">
                <node concept="10QFUN" id="3lxP5h4bZuj" role="1eOMHV">
                  <node concept="2OqwBi" id="3lxP5h4bZuk" role="10QFUP">
                    <node concept="37vLTw" id="3lxP5h4bZul" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h4bZuG" resolve="hierarchy" />
                    </node>
                    <node concept="liA8E" id="3lxP5h4cbwb" role="2OqNvi">
                      <ref role="37wK5l" to="xpc1:~ResourceFunctionBlockHierarchy.getFunctionBlock()" resolve="getFunctionBlock" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3lxP5h4cc1j" role="10QFUM">
                    <ref role="3uigEE" to="rwq3:6LU90BOirFi" resolve="FunctionBlockDeclarationByNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3lxP5h4bZuo" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="3lxP5h4bZup" role="37vLTJ">
              <node concept="37vLTw" id="3lxP5h4bZuq" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bZua" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4cbjD" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRtpn2" resolve="functionBlock" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4bZuD" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4bZuE" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4bZua" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3lxP5h4bZuF" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
      </node>
      <node concept="37vLTG" id="3lxP5h4bZuG" role="3clF46">
        <property role="TrG5h" value="hierarchy" />
        <node concept="3uibUv" id="3lxP5h4c473" role="1tU5fm">
          <ref role="3uigEE" to="xpc1:~ResourceFunctionBlockHierarchy" resolve="ResourceFunctionBlockHierarchy" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4bZuI" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZuJ" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4bZuK" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3clFbS" id="3lxP5h4bZuL" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4c7gW" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4c7gX" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="3lxP5h4c7eY" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6bsr$eaq9Tp" role="11_B2D">
                <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
              </node>
            </node>
            <node concept="2YIFZM" id="3lxP5h4c7gY" role="33vP2m">
              <ref role="37wK5l" node="3lxP5h4boSU" resolve="serialize" />
              <ref role="1Pybhc" node="3lxP5h49bFq" resolve="ResourceReferenceByNode" />
              <node concept="2OqwBi" id="3lxP5h4c7gZ" role="37wK5m">
                <node concept="37vLTw" id="3lxP5h4c7h0" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h4bZvn" resolve="reference" />
                </node>
                <node concept="3TrEf2" id="3lxP5h4cahl" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRRtpn0" resolve="resource" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZv6" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4bZv7" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4c7Xh" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4c7gX" resolve="res" />
            </node>
            <node concept="liA8E" id="3lxP5h4bZv9" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="2YIFZM" id="1VyPeINQzj2" role="37wK5m">
                <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                <node concept="37vLTw" id="1VyPeINQzj3" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h4bZvn" resolve="reference" />
                </node>
                <node concept="359W_D" id="1VyPeINQzj4" role="37wK5m">
                  <ref role="359W_E" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
                  <ref role="359W_F" to="xiqq:uLhTRRtpn2" resolve="functionBlock" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4bZvj" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4c8nR" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4c7gX" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3lxP5h4bZvl" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bsr$eaq9DV" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4bZvn" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="3lxP5h4bZvo" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4bZvp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZvq" role="jymVt" />
    <node concept="2YIFZL" id="3lxP5h4bZvr" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="3lxP5h4bZvs" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h4bZvt" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h4bZvu" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h4bZvv" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
            </node>
            <node concept="2ShNRf" id="3lxP5h4bZvw" role="33vP2m">
              <node concept="3zrR0B" id="3lxP5h4bZvx" role="2ShVmc">
                <node concept="3Tqbb2" id="3lxP5h4bZvy" role="3zrR0E">
                  <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bZvP" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4cdMP" role="3clFbG">
            <node concept="2YIFZM" id="3lxP5h4ce3l" role="37vLTx">
              <ref role="37wK5l" node="3lxP5h4boTX" resolve="deserialize" />
              <ref role="1Pybhc" node="3lxP5h49bFq" resolve="ResourceReferenceByNode" />
              <node concept="37vLTw" id="3lxP5h4ce6p" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4bZwa" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="3lxP5h4bZvR" role="37vLTJ">
              <node concept="37vLTw" id="3lxP5h4bZvS" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bZvu" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4ceBE" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRtpn0" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VyPeINQzHB" role="3cqZAp">
          <node concept="2YIFZM" id="1VyPeINQ$dA" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
            <node concept="37vLTw" id="1VyPeINQ$dB" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h4bZvu" resolve="node" />
            </node>
            <node concept="359W_D" id="1VyPeINQ$dC" role="37wK5m">
              <ref role="359W_E" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
              <ref role="359W_F" to="xiqq:uLhTRRtpn2" resolve="functionBlock" />
            </node>
            <node concept="10Nm6u" id="1VyPeINQ$HM" role="37wK5m" />
            <node concept="2OqwBi" id="1VyPeINQ$PT" role="37wK5m">
              <node concept="37vLTw" id="1VyPeINQ$PU" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bZwa" resolve="path" />
              </node>
              <node concept="liA8E" id="1VyPeINQ$PV" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="1VyPeINQ$PW" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h4bZw7" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4bZw8" role="3cqZAk">
            <ref role="3cqZAo" node="3lxP5h4bZvu" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3lxP5h4bZw9" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRRmreo" resolve="ResourceFunctionBlockReference" />
      </node>
      <node concept="37vLTG" id="3lxP5h4bZwa" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="3lxP5h4bZwb" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3dz4YurgHQH" role="11_B2D">
            <node concept="3uibUv" id="3dz4YurgI3j" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4bZwd" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="3lxP5h4cjod">
    <property role="TrG5h" value="SegmentDeclarationByNode" />
    <node concept="3Tm1VV" id="3lxP5h4cjoe" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h4cjpz" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
    </node>
    <node concept="2tJIrI" id="3lxP5h4cjGX" role="jymVt" />
    <node concept="3clFbW" id="1IuIrLUuh8_" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUuh8A" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUuh8B" role="1B3o_S" />
      <node concept="37vLTG" id="1IuIrLUuh8G" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUuh8K" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUuh8I" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjYkd" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUuh8L" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUuh8O" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_LX" resolve="PlatformContainedDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUuh8M" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUuh8G" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUuh8N" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUuh8I" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUugSO" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4cjKl" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3lxP5h4cjKm" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4cjKo" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4cjKp" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3lxP5h4cjKq" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4cjKr" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4clNi" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4clNc" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h4cm9T" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="3lxP5h4cmBE" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUuhox" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="3lxP5h4cn85" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5s_pyghtuOK" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="3lxP5h4cnSN" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="3uibUv" id="3lxP5h4cokQ" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="1IuIrLUuhK2" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4cjKs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4clrM" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4cjKv" role="jymVt">
      <property role="TrG5h" value="getTypeReference" />
      <node concept="3Tm1VV" id="3lxP5h4cjKw" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4cjKy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4cjKz" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h4cjK$" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~SegmentTypeDeclaration" resolve="SegmentTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4cjK_" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4cphq" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4cphk" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h4cpC1" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUuiaM" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4cq0L" role="37wK5m">
                <ref role="359W_E" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
                <ref role="359W_F" to="xiqq:5s_pyghtuNY" resolve="type" />
              </node>
              <node concept="3VsKOn" id="3lxP5h4cqtw" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SegmentTypeDeclaration" resolve="SegmentTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUuim_" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="3lxP5h4crc9" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~SegmentTypeDeclaration" resolve="SegmentTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4cjKA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUufh5" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLD_LP" resolve="PlatformContainedDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUug8M" role="11_B2D">
        <ref role="ehGHo" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUuk2r" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUuj8U" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1IuIrLUuj8V" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUuj8X" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1IuIrLUukGR" role="3clF45">
        <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
      </node>
      <node concept="3clFbS" id="1IuIrLUuj9c" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLEwq2" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLEwq0" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1IuIrLUunUX" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUuj9d" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3lxP5h4czaq">
    <property role="TrG5h" value="MappingByNode" />
    <node concept="2tJIrI" id="3lxP5h4czdb" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h4czar" role="1B3o_S" />
    <node concept="3uibUv" id="1IuIrLUoL_k" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~Mapping" resolve="Mapping" />
    </node>
    <node concept="3clFbW" id="1IuIrLUqNBy" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUqNBz" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUqNB$" role="1B3o_S" />
      <node concept="37vLTG" id="1IuIrLUqNBI" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUqNBM" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUqNBK" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjPQ8" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUqNBN" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUqNBQ" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="1IuIrLUqNBO" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqNBI" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUqNBP" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUqNBK" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4czwP" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4czEd" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="3lxP5h4czEe" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4czEj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h4czEg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="3lxP5h4czEh" role="3clF45">
        <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
      </node>
      <node concept="3clFbS" id="3lxP5h4czEi" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLEcVr" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLEcVs" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1hwo9XLEcVt" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4c$mH" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4czEm" role="jymVt">
      <property role="TrG5h" value="getApplicationFBReference" />
      <node concept="3Tm1VV" id="3lxP5h4czEn" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4czEt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h4czEp" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4czEq" role="3clF45">
        <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="3lxP5h4czEr" role="11_B2D">
          <ref role="3uigEE" to="xpc1:~ApplicationFunctionBlockHierarchy" resolve="ApplicationFunctionBlockHierarchy" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4czEs" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4cBow" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4cBox" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h4cBoy" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h4aKpj" resolve="ApplicationFunctionBlockReferenceByNode" />
              <node concept="37vLTw" id="1IuIrLUqOQJ" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4cBo$" role="37wK5m">
                <ref role="359W_E" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
                <ref role="359W_F" to="xiqq:uLhTRRmrej" resolve="instance" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqQj2" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4c$BN" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4czEw" role="jymVt">
      <property role="TrG5h" value="getResourceFBReference" />
      <node concept="3Tm1VV" id="3lxP5h4czEx" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4czEB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h4czEz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4czE$" role="3clF45">
        <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="3lxP5h4czE_" role="11_B2D">
          <ref role="3uigEE" to="xpc1:~ResourceFunctionBlockHierarchy" resolve="ResourceFunctionBlockHierarchy" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4czEA" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4czED" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4cAmK" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h4cAHq" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h4bZrI" resolve="ResourceFunctionBlockReferenceByNode" />
              <node concept="37vLTw" id="1IuIrLUqP7j" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4cAXv" role="37wK5m">
                <ref role="359W_E" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
                <ref role="359W_F" to="xiqq:uLhTRRmrel" resolve="resource" />
              </node>
              <node concept="37vLTw" id="1IuIrLUqQ2j" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUqLap" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="1IuIrLUqLSw" role="11_B2D">
        <ref role="ehGHo" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1IuIrLUxD0h">
    <property role="TrG5h" value="FBTypeReferenceByNode" />
    <node concept="2tJIrI" id="1IuIrLUxD3F" role="jymVt" />
    <node concept="3Tm1VV" id="1IuIrLUxD0i" role="1B3o_S" />
    <node concept="3uibUv" id="1IuIrLUxD1H" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="1IuIrLUxD2l" role="11_B2D">
        <ref role="ehGHo" to="xiqq:2lwHqHjRwSl" resolve="FBTypeReference" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUxD3p" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~FBTypeReference" resolve="FBTypeReference" />
    </node>
    <node concept="3clFbW" id="1IuIrLUxD4t" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUxD4u" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUxD4v" role="1B3o_S" />
      <node concept="37vLTG" id="1IuIrLUxD4D" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUxD4H" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjRwSl" resolve="FBTypeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUxD4F" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjM81" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUxD4I" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUxD4L" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="1IuIrLUxD4J" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUxD4D" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUxD4K" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUxD4F" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUxD7h" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUxD8R" role="jymVt">
      <property role="TrG5h" value="getFBType" />
      <node concept="3Tm1VV" id="1IuIrLUxD8S" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUxD8U" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1IuIrLUxD8V" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="1IuIrLUxD8W" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUxD8Y" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUxEXE" role="3cqZAp">
          <node concept="2ShNRf" id="1IuIrLUxEXC" role="3clFbG">
            <node concept="1pGfFk" id="1IuIrLUxFkz" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUxFoM" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="1IuIrLUxFHa" role="37wK5m">
                <ref role="359W_E" to="xiqq:2lwHqHjRwSl" resolve="FBTypeReference" />
                <ref role="359W_F" to="xiqq:2lwHqHjRwSm" resolve="declaration" />
              </node>
              <node concept="3VsKOn" id="1IuIrLUxGoI" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUxGEE" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="1IuIrLUxH3U" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUxD8Z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUxEL$" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUxD9b" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1IuIrLUxD9c" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUxD9e" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1IuIrLUxDL3" role="3clF45">
        <ref role="3uigEE" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
      </node>
      <node concept="3clFbS" id="1IuIrLUxD9k" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLE4ig" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLE4ih" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1hwo9XLE4ii" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUxD9l" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1IuIrLUy4jZ">
    <property role="TrG5h" value="ResourceTypeReferenceByNode" />
    <node concept="2tJIrI" id="1IuIrLUy4k0" role="jymVt" />
    <node concept="3Tm1VV" id="1IuIrLUy4k1" role="1B3o_S" />
    <node concept="3uibUv" id="1IuIrLUy4k2" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="1IuIrLUy4k3" role="11_B2D">
        <ref role="ehGHo" to="xiqq:1WTKUmKKVQg" resolve="ResourceTypeReference" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUy8aW" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ResourceTypeReference" resolve="ResourceTypeReference" />
    </node>
    <node concept="3clFbW" id="1IuIrLUy4k5" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUy4k6" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUy4k7" role="1B3o_S" />
      <node concept="37vLTG" id="1IuIrLUy4k8" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUy4k9" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVQg" resolve="ResourceTypeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUy4ka" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjXCV" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUy4kc" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUy4kd" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="1IuIrLUy4ke" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUy4k8" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUy4kf" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUy4ka" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUy4kg" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUy4kh" role="jymVt">
      <property role="TrG5h" value="getResourceType" />
      <node concept="3Tm1VV" id="1IuIrLUy4ki" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUy4kj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1IuIrLUy4kk" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="1IuIrLUy6AV" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUy4km" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUy4kn" role="3cqZAp">
          <node concept="2ShNRf" id="1IuIrLUy4ko" role="3clFbG">
            <node concept="1pGfFk" id="1IuIrLUy4kp" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUy4kq" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="1IuIrLUy4kr" role="37wK5m">
                <ref role="359W_E" to="xiqq:1WTKUmKKVQg" resolve="ResourceTypeReference" />
                <ref role="359W_F" to="xiqq:1WTKUmKKVQh" resolve="decl" />
              </node>
              <node concept="3VsKOn" id="1IuIrLUy4ks" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUy4kt" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="1IuIrLUy6Tt" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUy4kv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUy4kE" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUy4kF" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1IuIrLUy4kG" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUy4kH" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1IuIrLUy8x1" role="3clF45">
        <ref role="3uigEE" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
      </node>
      <node concept="3clFbS" id="1IuIrLUy4kJ" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLErJt" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLErJr" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1IuIrLUy4kR" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUy4kS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1IuIrLUysyF">
    <property role="TrG5h" value="AlgorithmDeclarationByNode" />
    <node concept="2tJIrI" id="1IuIrLUys_E" role="jymVt" />
    <node concept="3Tm1VV" id="1IuIrLUysyG" role="1B3o_S" />
    <node concept="3uibUv" id="1IuIrLUyszB" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLD_LP" resolve="PlatformContainedDeclarationBase" />
      <node concept="3Tqbb2" id="1IuIrLUys$f" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1IuIrLUys_k" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
    </node>
    <node concept="3clFbW" id="1IuIrLUysAR" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUysAS" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUysAT" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUysAV" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUysAX" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_LX" resolve="PlatformContainedDeclarationBase" />
          <node concept="37vLTw" id="1IuIrLUysB1" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUysAY" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUysB5" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUysB2" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUysAY" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUysDO" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUysB2" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjBp9" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUysFn" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUysIj" role="jymVt">
      <property role="TrG5h" value="getBody" />
      <node concept="3Tm1VV" id="1IuIrLUysIk" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUysIm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1IuIrLUysIn" role="3clF45">
        <ref role="3uigEE" to="cwd8:~AlgorithmBody" resolve="AlgorithmBody" />
      </node>
      <node concept="3clFbS" id="1IuIrLUysIp" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUyt9R" role="3cqZAp">
          <node concept="2OqwBi" id="1IuIrLUytMr" role="3clFbG">
            <node concept="37vLTw" id="1IuIrLUytmI" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="1IuIrLUyudK" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
              <node concept="2OqwBi" id="1IuIrLUyuqV" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUyufc" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="1IuIrLUyuzs" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:1zB5ET5xzpJ" resolve="body" />
                </node>
              </node>
              <node concept="3VsKOn" id="1IuIrLUyvqt" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~AlgorithmBody" resolve="AlgorithmBody" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUysIq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2K1hwDRY0" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUysIt" role="jymVt">
      <property role="TrG5h" value="setBody" />
      <node concept="3Tm1VV" id="1IuIrLUysIu" role="1B3o_S" />
      <node concept="3cqZAl" id="1IuIrLUysIw" role="3clF45" />
      <node concept="37vLTG" id="1IuIrLUysIx" role="3clF46">
        <property role="TrG5h" value="body" />
        <node concept="3uibUv" id="1IuIrLUysIy" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~AlgorithmBody" resolve="AlgorithmBody" />
        </node>
        <node concept="2AHcQZ" id="1IuIrLUysIz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUysI_" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUyzT5" role="3cqZAp">
          <node concept="37vLTI" id="1IuIrLUy_ad" role="3clFbG">
            <node concept="2OqwBi" id="1IuIrLUy$xM" role="37vLTJ">
              <node concept="37vLTw" id="1IuIrLUy$oe" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="1IuIrLUy$E1" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:1zB5ET5xzpJ" resolve="body" />
              </node>
            </node>
            <node concept="3K4zz7" id="1IuIrLUyG7z" role="37vLTx">
              <node concept="10Nm6u" id="1IuIrLUyHzX" role="3K4E3e" />
              <node concept="3clFbC" id="1IuIrLUyF$y" role="3K4Cdx">
                <node concept="10Nm6u" id="1IuIrLUyG3a" role="3uHU7w" />
                <node concept="37vLTw" id="1IuIrLUyF15" role="3uHU7B">
                  <ref role="3cqZAo" node="1IuIrLUysIx" resolve="body" />
                </node>
              </node>
              <node concept="2OqwBi" id="1IuIrLUyCut" role="3K4GZi">
                <node concept="1eOMI4" id="1IuIrLUy_z3" role="2Oq$k0">
                  <node concept="10QFUN" id="1IuIrLUyBeC" role="1eOMHV">
                    <node concept="37vLTw" id="1IuIrLUyBS7" role="10QFUP">
                      <ref role="3cqZAo" node="1IuIrLUysIx" resolve="body" />
                    </node>
                    <node concept="3uibUv" id="1IuIrLUyBoy" role="10QFUM">
                      <ref role="3uigEE" to="fcfa:1IuIrLUoYWZ" resolve="PlatformElementBase" />
                      <node concept="3Tqbb2" id="1IuIrLUyBO8" role="11_B2D">
                        <ref role="ehGHo" to="xiqq:1zB5ET5xzpM" resolve="AlgorithmBody" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1IuIrLUyD4l" role="2OqNvi">
                  <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUysIA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tgPFZSd5xN" role="jymVt" />
    <node concept="3clFb_" id="sU78fQp0fG" role="jymVt">
      <property role="TrG5h" value="getTemporaryVariables" />
      <node concept="3Tm1VV" id="sU78fQp0fH" role="1B3o_S" />
      <node concept="2AHcQZ" id="sU78fQp0fJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="sU78fQp0fK" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="sU78fQp0fL" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="sU78fQp0fQ" role="3clF47">
        <node concept="3clFbF" id="sU78fQp3Gk" role="3cqZAp">
          <node concept="2ShNRf" id="sU78fQp3Gc" role="3clFbG">
            <node concept="1pGfFk" id="sU78fQp5LZ" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="sU78fQp6gM" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="sU78fQp9Dr" role="37wK5m">
                <node concept="37vLTw" id="sU78fQp8WL" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="sU78fQpad1" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5tgPFZSaxk4" resolve="temporaryVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="sU78fQpcxm" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="sU78fQpfe8" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sU78fQp0fR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLDEu5" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLDEBT" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1hwo9XLDEBU" role="1B3o_S" />
      <node concept="2AHcQZ" id="1hwo9XLDEBW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1hwo9XLDESI" role="3clF45">
        <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
      </node>
      <node concept="3clFbS" id="1hwo9XLDECf" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDLbu" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLDLbs" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="1hwo9XLDLWQ" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLDECg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5er1Yemvxz2">
    <property role="TrG5h" value="STAlgorithmBodyByNode" />
    <node concept="2tJIrI" id="5er1YemvHth" role="jymVt" />
    <node concept="3Tm1VV" id="5er1Yemvxz3" role="1B3o_S" />
    <node concept="3uibUv" id="5er1YemvHr2" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="5er1YemvHrE" role="11_B2D">
        <ref role="ehGHo" to="xiqq:1zB5ET5$GBR" resolve="STAlgorithmBody" />
      </node>
    </node>
    <node concept="3uibUv" id="5er1YemvHsZ" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~AlgorithmBody$ST" resolve="AlgorithmBody.ST" />
    </node>
    <node concept="3clFbW" id="5er1YemvHug" role="jymVt">
      <node concept="3cqZAl" id="5er1YemvHuh" role="3clF45" />
      <node concept="3Tm1VV" id="5er1YemvHui" role="1B3o_S" />
      <node concept="37vLTG" id="5er1YemvHus" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5er1YemvHuw" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1zB5ET5$GBR" resolve="STAlgorithmBody" />
        </node>
      </node>
      <node concept="37vLTG" id="5er1YemvHuu" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyk0gF" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="5er1YemvHux" role="3clF47">
        <node concept="XkiVB" id="5er1YemvHu$" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="5er1YemvHuy" role="37wK5m">
            <ref role="3cqZAo" node="5er1YemvHus" resolve="node" />
          </node>
          <node concept="37vLTw" id="5er1YemvHuz" role="37wK5m">
            <ref role="3cqZAo" node="5er1YemvHuu" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemvHwj" role="jymVt" />
    <node concept="3clFb_" id="5er1YemvHxz" role="jymVt">
      <property role="TrG5h" value="getStatements" />
      <node concept="3Tm1VV" id="5er1YemvHx$" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemvHxA" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5er1YemvHxB" role="11_B2D">
          <ref role="3uigEE" to="x2xk:~Statement" resolve="Statement" />
        </node>
      </node>
      <node concept="3clFbS" id="5er1YemvHxD" role="3clF47">
        <node concept="3clFbF" id="5er1YemvI7J" role="3cqZAp">
          <node concept="2ShNRf" id="5er1YemvI7D" role="3clFbG">
            <node concept="1pGfFk" id="5er1YemvK1Y" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="5er1YemvKO$" role="1pMfVU">
                <ref role="3uigEE" to="x2xk:~Statement" resolve="Statement" />
              </node>
              <node concept="2OqwBi" id="5er1YemvQoR" role="37wK5m">
                <node concept="2OqwBi" id="5er1YemvLu3" role="2Oq$k0">
                  <node concept="37vLTw" id="5er1YemvL8J" role="2Oq$k0">
                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                  </node>
                  <node concept="3TrEf2" id="5er1YemvPUx" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:7GyesCpcgqN" resolve="body" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="5er1YemvQWM" role="2OqNvi">
                  <ref role="3TtcxE" to="gpgy:7GyesCp9TsM" resolve="statements" />
                </node>
              </node>
              <node concept="3VsKOn" id="5er1YemvMO1" role="37wK5m">
                <ref role="3VsUkX" to="x2xk:~Statement" resolve="Statement" />
              </node>
              <node concept="37vLTw" id="5er1YemvNfc" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1YemvHxE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemvHV_" role="jymVt" />
    <node concept="3clFb_" id="5er1YemvHxH" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="5er1YemvHxI" role="1B3o_S" />
      <node concept="2AHcQZ" id="5er1YemvHxK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="5er1YemvRx8" role="3clF45">
        <ref role="3uigEE" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
      </node>
      <node concept="3clFbS" id="5er1YemvHxQ" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLEujL" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLEujJ" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="5er1YemvTlC" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1YemvHxR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5er1YemvTSA">
    <property role="TrG5h" value="UnknownAlgorithmBodyByNode" />
    <node concept="2tJIrI" id="5er1YemvTSB" role="jymVt" />
    <node concept="3Tm1VV" id="5er1YemvTSC" role="1B3o_S" />
    <node concept="3uibUv" id="5er1YemvTSD" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="5er1YemvTSE" role="11_B2D">
        <ref role="ehGHo" to="xiqq:23XkovWspjs" resolve="UnknownAlgorithmBody" />
      </node>
    </node>
    <node concept="3uibUv" id="5er1YemvVDa" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~AlgorithmBody$Unknown" resolve="AlgorithmBody.Unknown" />
    </node>
    <node concept="3clFbW" id="5er1YemvTSG" role="jymVt">
      <node concept="3cqZAl" id="5er1YemvTSH" role="3clF45" />
      <node concept="3Tm1VV" id="5er1YemvTSI" role="1B3o_S" />
      <node concept="37vLTG" id="5er1YemvTSJ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5er1YemvTSK" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:23XkovWspjs" resolve="UnknownAlgorithmBody" />
        </node>
      </node>
      <node concept="37vLTG" id="5er1YemvTSL" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyk5g9" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="5er1YemvTSN" role="3clF47">
        <node concept="XkiVB" id="5er1YemvTSO" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="5er1YemvTSP" role="37wK5m">
            <ref role="3cqZAo" node="5er1YemvTSJ" resolve="node" />
          </node>
          <node concept="37vLTw" id="5er1YemvTSQ" role="37wK5m">
            <ref role="3cqZAo" node="5er1YemvTSL" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemvWrZ" role="jymVt" />
    <node concept="3clFb_" id="5er1YemvWWm" role="jymVt">
      <property role="TrG5h" value="getLanguage" />
      <node concept="3Tm1VV" id="5er1YemvWWn" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemvWWp" role="3clF45">
        <ref role="3uigEE" to="cwd8:~AlgorithmLanguage" resolve="AlgorithmLanguage" />
        <node concept="3uibUv" id="5er1YemvX_b" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~AlgorithmBody$Unknown" resolve="AlgorithmBody.Unknown" />
        </node>
      </node>
      <node concept="3clFbS" id="5er1YemvWWu" role="3clF47">
        <node concept="3clFbF" id="5er1YemvXmB" role="3cqZAp">
          <node concept="2YIFZM" id="5er1YemvXNe" role="3clFbG">
            <ref role="37wK5l" to="cwd8:~AlgorithmLanguage.unknown(java.lang.String)" resolve="unknown" />
            <ref role="1Pybhc" to="cwd8:~AlgorithmLanguage" resolve="AlgorithmLanguage" />
            <node concept="2OqwBi" id="7PitsR5p1YF" role="37wK5m">
              <node concept="37vLTw" id="7PitsR5p1vp" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="7PitsR5p2q4" role="2OqNvi">
                <ref role="3TsBF5" to="xiqq:23XkovWsppH" resolve="languageName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1YemvWWv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemvTSR" role="jymVt" />
    <node concept="3clFb_" id="5er1YemvZl3" role="jymVt">
      <property role="TrG5h" value="getText" />
      <node concept="3Tm1VV" id="5er1YemvZl4" role="1B3o_S" />
      <node concept="2AHcQZ" id="5er1YemvZl6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="5er1YemvZl7" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="5er1YemvZl9" role="3clF47">
        <node concept="3clFbF" id="5er1Yemw0aI" role="3cqZAp">
          <node concept="2OqwBi" id="5er1Yemw2oc" role="3clFbG">
            <node concept="2OqwBi" id="5er1Yemw6R0" role="2Oq$k0">
              <node concept="2OqwBi" id="5er1Yemw0m5" role="2Oq$k0">
                <node concept="37vLTw" id="5er1Yemw0aF" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="5er1Yemw0JL" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:23XkovWspTW" resolve="code" />
                </node>
              </node>
              <node concept="3$u5V9" id="5er1Yemw8xO" role="2OqNvi">
                <node concept="1bVj0M" id="5er1Yemw8xQ" role="23t8la">
                  <node concept="3clFbS" id="5er1Yemw8xR" role="1bW5cS">
                    <node concept="3clFbF" id="5er1Yemw8Jk" role="3cqZAp">
                      <node concept="2OqwBi" id="5er1Yemw8TT" role="3clFbG">
                        <node concept="37vLTw" id="5er1Yemw8Jj" role="2Oq$k0">
                          <ref role="3cqZAo" node="5er1Yemw8xS" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="5er1Yemw98x" role="2OqNvi">
                          <ref role="3TsBF5" to="xiqq:23XkovWspPn" resolve="line" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5er1Yemw8xS" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5er1Yemw8xT" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uJxvA" id="5er1Yemw4hu" role="2OqNvi">
              <node concept="Xl_RD" id="5er1Yemw5bN" role="3uJOhx">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1YemvZla" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yemw9du" role="jymVt" />
    <node concept="3clFb_" id="5er1YemwarY" role="jymVt">
      <property role="TrG5h" value="setText" />
      <node concept="3Tm1VV" id="5er1YemwarZ" role="1B3o_S" />
      <node concept="3cqZAl" id="5er1Yemwas1" role="3clF45" />
      <node concept="37vLTG" id="5er1Yemwas2" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="5er1Yemwas3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="5er1Yemwas4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5er1Yemwas6" role="3clF47">
        <node concept="3clFbF" id="5er1YemwcYI" role="3cqZAp">
          <node concept="2OqwBi" id="5er1Yemwf2c" role="3clFbG">
            <node concept="2OqwBi" id="5er1Yemwd8h" role="2Oq$k0">
              <node concept="37vLTw" id="5er1YemwcYH" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3Tsc0h" id="5er1YemwdwV" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:23XkovWspTW" resolve="code" />
              </node>
            </node>
            <node concept="2Kehj3" id="5er1YemwgzC" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="5er1YemwkQc" role="3cqZAp">
          <node concept="2OqwBi" id="5er1YemwoVB" role="3clFbG">
            <node concept="2OqwBi" id="5er1Yemwn6d" role="2Oq$k0">
              <node concept="37vLTw" id="5er1YemwkQa" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3Tsc0h" id="5er1Yemwn_V" role="2OqNvi">
                <ref role="3TtcxE" to="xiqq:23XkovWspTW" resolve="code" />
              </node>
            </node>
            <node concept="X8dFx" id="5er1Yemwro0" role="2OqNvi">
              <node concept="2OqwBi" id="5er1Yemwxsy" role="25WWJ7">
                <node concept="2OqwBi" id="5er1Yemwufw" role="2Oq$k0">
                  <node concept="2OqwBi" id="5er1Yemwbi$" role="2Oq$k0">
                    <node concept="37vLTw" id="5er1Yemwb3O" role="2Oq$k0">
                      <ref role="3cqZAo" node="5er1Yemwas2" resolve="text" />
                    </node>
                    <node concept="liA8E" id="5er1YemwbQj" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                      <node concept="Xl_RD" id="5er1YemwbRL" role="37wK5m">
                        <property role="Xl_RC" value="\\r?\\n" />
                      </node>
                    </node>
                  </node>
                  <node concept="39bAoz" id="5er1YemwuO1" role="2OqNvi" />
                </node>
                <node concept="3$u5V9" id="5er1Yemwzi$" role="2OqNvi">
                  <node concept="1bVj0M" id="5er1YemwziA" role="23t8la">
                    <node concept="3clFbS" id="5er1YemwziB" role="1bW5cS">
                      <node concept="3cpWs8" id="5er1YemwEj_" role="3cqZAp">
                        <node concept="3cpWsn" id="5er1YemwEjA" role="3cpWs9">
                          <property role="TrG5h" value="line" />
                          <node concept="3Tqbb2" id="5er1YemwEhu" role="1tU5fm">
                            <ref role="ehGHo" to="xiqq:23XkovWspPm" resolve="CodeLine" />
                          </node>
                          <node concept="2ShNRf" id="5er1YemwEjB" role="33vP2m">
                            <node concept="3zrR0B" id="5er1YemwEjC" role="2ShVmc">
                              <node concept="3Tqbb2" id="5er1YemwEjD" role="3zrR0E">
                                <ref role="ehGHo" to="xiqq:23XkovWspPm" resolve="CodeLine" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5er1Yemw_Fj" role="3cqZAp">
                        <node concept="37vLTI" id="5er1YemwJiz" role="3clFbG">
                          <node concept="37vLTw" id="5er1YemwLHk" role="37vLTx">
                            <ref role="3cqZAo" node="5er1YemwziC" resolve="it" />
                          </node>
                          <node concept="2OqwBi" id="5er1YemwGTd" role="37vLTJ">
                            <node concept="37vLTw" id="5er1YemwEjE" role="2Oq$k0">
                              <ref role="3cqZAo" node="5er1YemwEjA" resolve="line" />
                            </node>
                            <node concept="3TrcHB" id="5er1YemwHdj" role="2OqNvi">
                              <ref role="3TsBF5" to="xiqq:23XkovWspPn" resolve="line" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5er1YemwOf7" role="3cqZAp">
                        <node concept="37vLTw" id="5er1YemwOf5" role="3clFbG">
                          <ref role="3cqZAo" node="5er1YemwEjA" resolve="line" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5er1YemwziC" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5er1YemwziD" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yemwas7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemvTT9" role="jymVt" />
    <node concept="3clFb_" id="5er1YemvTTa" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="5er1YemvTTb" role="1B3o_S" />
      <node concept="2AHcQZ" id="5er1YemvTTc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="5er1YemvTTd" role="3clF45">
        <ref role="3uigEE" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
      </node>
      <node concept="3clFbS" id="5er1YemvTTe" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLF89m" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLF89k" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="5er1YemvTTm" role="37wK5m">
              <ref role="3VsUkX" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1YemvTTn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

