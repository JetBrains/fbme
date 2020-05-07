<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(mps.iec61499.model.fbnetwork)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="lv7i" ref="r:5472e35e-027d-42bb-bcce-32726ec4c9a9(mps.iec61499.model.ecc)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="g136" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.ecc(org.fbme.lib/)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="xpc1" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations.hierarchies(org.fbme.lib/)" />
    <import index="6iyo" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork.subapp(org.fbme.lib/)" />
    <import index="pq5g" ref="r:832201cc-eba2-477d-a9e1-8c050863a010(org.fbme.ide.iec61499.adapter.fbnetwork.subapp)" />
    <import index="i51s" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel.generator.smodelAdapter(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU">
        <reference id="7400021826771268269" name="concept" index="2sp9C9" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
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
      <concept id="942336824646299470" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetPointerOperation" flags="ng" index="1AR3kn">
        <child id="942336824646299471" name="linkTarget" index="1AR3km" />
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
        <node concept="3uibUv" id="29$Ci4mLRm0" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1R4IoyQGqph" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLWPh" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
    <node concept="2tJIrI" id="1R4IoyQ_1EN" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQ_1Yn" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="1R4IoyQ_1Yc" role="1B3o_S" />
      <node concept="16syzq" id="1R4IoyQ_1Y2" role="1tU5fm">
        <ref role="16sUi3" node="1R4IoyQ_1BB" resolve="T" />
      </node>
    </node>
    <node concept="312cEg" id="29$Ci4mLccL" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="29$Ci4mLaP3" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLc21" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_1YE" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQ_Trz" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQ_Tr$" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQ_Tr_" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQ_TrB" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQ_TrF" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyQ_TrH" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQ_TrO" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQ_TrE" resolve="node" />
            </node>
            <node concept="37vLTw" id="1R4IoyQ_WbX" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29$Ci4mLdpQ" role="3cqZAp">
          <node concept="37vLTI" id="29$Ci4mLdGd" role="3clFbG">
            <node concept="37vLTw" id="29$Ci4mLdTh" role="37vLTx">
              <ref role="3cqZAo" node="29$Ci4mLd8H" resolve="repository" />
            </node>
            <node concept="37vLTw" id="29$Ci4mLdpO" role="37vLTJ">
              <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
            </node>
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
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="29$Ci4mLdms" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZJdQq" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZJeE6" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="31Fn7oZJeE8" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJeE9" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJeEa" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJftK" role="3cqZAp">
          <node concept="2OqwBi" id="31Fn7oZJfQR" role="3clFbG">
            <node concept="37vLTw" id="31Fn7oZJftH" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="31Fn7oZJgfR" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31Fn7oZJeEb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48oyw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YPYL8" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YQ0bC" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="3VhUp_YQ0bD" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YQ0bF" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YQ0bG" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="3VhUp_YQ0bH" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h48qcU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YQ0bJ" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YQ1af" role="3cqZAp">
          <node concept="37vLTI" id="3VhUp_YQ2sF" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YQ2MH" role="37vLTx">
              <ref role="3cqZAo" node="3VhUp_YQ0bG" resolve="name" />
            </node>
            <node concept="2OqwBi" id="3VhUp_YQ1E7" role="37vLTJ">
              <node concept="37vLTw" id="3VhUp_YQ1ae" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="3VhUp_YQ29f" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YQ0bK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLiiK" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLj1w" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLiFq" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLjTH" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLlEk" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLmeC" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLmA_" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLmAA" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLmAB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLnKY" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLmAD" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLmAE" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLotd" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLnTw" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLnTx" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLpee" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLnTz" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLnT$" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLqml" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLqmm" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLqmn" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLrq3" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLqmp" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLqmq" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
    <node concept="2tJIrI" id="1JYTWWzyYzW" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzyZUR" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="1JYTWWzyZUT" role="1B3o_S" />
      <node concept="16syzq" id="1DfKejr9V21" role="3clF45">
        <ref role="16sUi3" node="1R4IoyQ_1BB" resolve="T" />
      </node>
      <node concept="3clFbS" id="1JYTWWzyZUV" role="3clF47">
        <node concept="3clFbF" id="1JYTWWzz1kZ" role="3cqZAp">
          <node concept="37vLTw" id="1JYTWWzz1kY" role="3clFbG">
            <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1JYTWWzyZUW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48vca" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="31DWWgFh8Y5" role="jymVt" />
    <node concept="3clFb_" id="31DWWgFhavC" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="31DWWgFhavE" role="1B3o_S" />
      <node concept="3uibUv" id="31DWWgFhavF" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="31DWWgFhavH" role="3clF47">
        <node concept="3clFbF" id="31DWWgFhbOC" role="3cqZAp">
          <node concept="37vLTw" id="31DWWgFhbO_" role="3clFbG">
            <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31DWWgFhavI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48wfR" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3tYGpuLw7cf" role="jymVt" />
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
    <node concept="3uibUv" id="1JYTWWzyXeC" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFb_" id="3tYGpuLw8xl" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="3tYGpuLw8xm" role="3clF45" />
      <node concept="3Tm1VV" id="3tYGpuLw8xn" role="1B3o_S" />
      <node concept="3clFbS" id="3tYGpuLw8xo" role="3clF47">
        <node concept="3clFbJ" id="3tYGpuLw8xp" role="3cqZAp">
          <node concept="3clFbS" id="3tYGpuLw8xq" role="3clFbx">
            <node concept="3cpWs6" id="3tYGpuLw8xr" role="3cqZAp">
              <node concept="3clFbT" id="3tYGpuLw8xs" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3tYGpuLw8xt" role="3clFbw">
            <node concept="Xjq3P" id="3tYGpuLw8xk" role="3uHU7B" />
            <node concept="37vLTw" id="3tYGpuLw8xu" role="3uHU7w">
              <ref role="3cqZAo" node="3tYGpuLw8xP" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3tYGpuLw8xv" role="3cqZAp">
          <node concept="3clFbS" id="3tYGpuLw8xw" role="3clFbx">
            <node concept="3cpWs6" id="3tYGpuLw8xx" role="3cqZAp">
              <node concept="3clFbT" id="3tYGpuLw8xy" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3tYGpuLw8xz" role="3clFbw">
            <node concept="3clFbC" id="3tYGpuLw8x$" role="3uHU7B">
              <node concept="37vLTw" id="3tYGpuLw8x_" role="3uHU7B">
                <ref role="3cqZAo" node="3tYGpuLw8xP" resolve="o" />
              </node>
              <node concept="10Nm6u" id="3tYGpuLw8xA" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="3tYGpuLw8xB" role="3uHU7w">
              <node concept="2OqwBi" id="3tYGpuLw8xC" role="3uHU7B">
                <node concept="Xjq3P" id="3tYGpuLw8xD" role="2Oq$k0" />
                <node concept="liA8E" id="3tYGpuLw8xE" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="3tYGpuLw8xF" role="3uHU7w">
                <node concept="37vLTw" id="3tYGpuLw8xG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3tYGpuLw8xP" resolve="o" />
                </node>
                <node concept="liA8E" id="3tYGpuLw8xH" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3tYGpuLw8xI" role="3cqZAp" />
        <node concept="3cpWs8" id="3tYGpuLw8xJ" role="3cqZAp">
          <node concept="3cpWsn" id="3tYGpuLw8xK" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="3tYGpuLw8xL" role="1tU5fm">
              <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBInterfaceDeclarationByNode" />
            </node>
            <node concept="10QFUN" id="3tYGpuLw8xM" role="33vP2m">
              <node concept="3uibUv" id="3tYGpuLw8xN" role="10QFUM">
                <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBInterfaceDeclarationByNode" />
              </node>
              <node concept="37vLTw" id="3tYGpuLw8xO" role="10QFUP">
                <ref role="3cqZAo" node="3tYGpuLw8xP" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3tYGpuLw8xZ" role="3cqZAp">
          <node concept="3clFbS" id="3tYGpuLw8y0" role="3clFbx">
            <node concept="3cpWs6" id="3tYGpuLw8y1" role="3cqZAp">
              <node concept="3clFbT" id="3tYGpuLw8y2" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="3tYGpuLwdj2" role="3clFbw">
            <node concept="2OqwBi" id="3tYGpuLwf9v" role="3uHU7w">
              <node concept="37vLTw" id="3tYGpuLweKD" role="2Oq$k0">
                <ref role="3cqZAo" node="3tYGpuLw8xK" resolve="that" />
              </node>
              <node concept="2OwXpG" id="3tYGpuLwfti" role="2OqNvi">
                <ref role="2Oxat5" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="3tYGpuLwbNY" role="3uHU7B">
              <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3tYGpuLw8yh" role="3cqZAp" />
        <node concept="3clFbF" id="3tYGpuLw8yi" role="3cqZAp">
          <node concept="3clFbT" id="3tYGpuLw8yj" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3tYGpuLw8xP" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="3tYGpuLw8xQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYGpuLw8xR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48xaD" role="jymVt" />
    <node concept="3clFb_" id="3tYGpuLw8yk" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="3tYGpuLw8yl" role="3clF45" />
      <node concept="3Tm1VV" id="3tYGpuLw8ym" role="1B3o_S" />
      <node concept="3clFbS" id="3tYGpuLw8yn" role="3clF47">
        <node concept="3clFbF" id="3tYGpuLwqVf" role="3cqZAp">
          <node concept="3K4zz7" id="3tYGpuLw8yE" role="3clFbG">
            <node concept="3cmrfG" id="3tYGpuLw8yF" role="3K4GZi">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3y3z36" id="3tYGpuLw8yG" role="3K4Cdx">
              <node concept="10Nm6u" id="3tYGpuLw8yH" role="3uHU7w" />
              <node concept="37vLTw" id="3tYGpuLw8y$" role="3uHU7B">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="3tYGpuLwoQz" role="3K4E3e">
              <node concept="1eOMI4" id="3tYGpuLwn2y" role="2Oq$k0">
                <node concept="10QFUN" id="3tYGpuLwnuv" role="1eOMHV">
                  <node concept="3uibUv" id="3tYGpuLwokJ" role="10QFUM">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="37vLTw" id="3tYGpuLw8y_" role="10QFUP">
                    <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3tYGpuLwpw9" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYGpuLw8yo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
        <node concept="3uibUv" id="29$Ci4mL$j6" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="29$Ci4mL_Kx" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mL_wW" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLA6e" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLAFJ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SocketDeclaration" resolve="SocketDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLB2u" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="29$Ci4mLBpd" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLBpe" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLBpf" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLBpg" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLBph" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
        <node concept="3uibUv" id="1R0_JUQUMyY" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
              <node concept="37vLTw" id="1R4IoyQJetp" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLDYd" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
    <node concept="3uibUv" id="1R4IoyQHc0Y" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
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
        <node concept="3uibUv" id="29$Ci4mLX6e" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
        <node concept="3uibUv" id="29$Ci4mMa6g" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJz2y" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJz4u" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="1R4IoyQJz4w" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJz4x" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJz4z" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJz7i" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQJz7c" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQJzjz" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1R4IoyQJzlA" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="29$Ci4mMaqV" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
        <node concept="3uibUv" id="1v1P8mMutA1" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1JYTWWzyU94">
    <property role="TrG5h" value="RepositoryEntry" />
    <node concept="2tJIrI" id="1JYTWWzyU9i" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzyU9A" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3clFbS" id="1JYTWWzyU9D" role="3clF47" />
      <node concept="3Tm1VV" id="1JYTWWzyU9E" role="1B3o_S" />
      <node concept="3uibUv" id="1JYTWWzyU9r" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h4csE2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4FdYnQC9Fqw" role="jymVt" />
    <node concept="3clFb_" id="4FdYnQC9Frm" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3clFbS" id="4FdYnQC9Frp" role="3clF47" />
      <node concept="3Tm1VV" id="4FdYnQC9Frq" role="1B3o_S" />
      <node concept="3uibUv" id="4FdYnQC9Fr1" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h4csEL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1JYTWWzyU95" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2SU8oJdHGJF">
    <property role="TrG5h" value="SystemDeclarationByNode" />
    <node concept="2tJIrI" id="2SU8oJdHGKl" role="jymVt" />
    <node concept="312cEg" id="2SU8oJdHMRl" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SU8oJdHMQt" role="1B3o_S" />
      <node concept="3Tqbb2" id="2SU8oJdHMQM" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQWciC" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQWbYu" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWcdk" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdHMPn" role="jymVt" />
    <node concept="3clFbW" id="2SU8oJdHMPG" role="jymVt">
      <node concept="37vLTG" id="2SU8oJdHMRF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2SU8oJdHMRH" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQWcPo" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWcXr" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="2SU8oJdHMPH" role="3clF45" />
      <node concept="3clFbS" id="2SU8oJdHMPJ" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdHMSO" role="3cqZAp">
          <node concept="37vLTI" id="2SU8oJdHN2p" role="3clFbG">
            <node concept="37vLTw" id="2SU8oJdHN4_" role="37vLTx">
              <ref role="3cqZAo" node="2SU8oJdHMRF" resolve="node" />
            </node>
            <node concept="37vLTw" id="2SU8oJdHMSN" role="37vLTJ">
              <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R0_JUQWcyi" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQWcIs" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQWcYw" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQWcPo" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQWcyg" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2SU8oJdHMP0" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2SU8oJdHN50" role="jymVt" />
    <node concept="3Tm1VV" id="2SU8oJdHGJG" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdHMOp" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
    </node>
    <node concept="3uibUv" id="2SU8oJdHMOE" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFb_" id="2SU8oJdHN5U" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="2SU8oJdHN5W" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdHN5X" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="2SU8oJdHN5Z" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdHN8t" role="3cqZAp">
          <node concept="37vLTw" id="2SU8oJdHN8q" role="3clFbG">
            <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdHN60" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZWPb3" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZWP$I" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="sOaa8ZWP$K" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZWP$L" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="sOaa8ZWP$N" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZWPZp" role="3cqZAp">
          <node concept="37vLTw" id="sOaa8ZWPZm" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZWP$O" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdUe3L" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdUedU" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="2SU8oJdUedW" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdUedX" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="2SU8oJdUedZ" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdUelh" role="3cqZAp">
          <node concept="2OqwBi" id="2SU8oJdUe_V" role="3clFbG">
            <node concept="37vLTw" id="2SU8oJdUele" role="2Oq$k0">
              <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="2SU8oJdUeO2" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUee0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlgOK" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlhmS" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZlhmT" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZlhmV" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZlhmW" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZlhmX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZlhmZ" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlhNO" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZliGX" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZliZk" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZlhmW" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZli54" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZlhNN" role="2Oq$k0">
                <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZlinz" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlhn0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWe2b" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWdGG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWevI" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWhvj" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWhKA" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWiW6" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWiW7" role="2Oq$k0">
                  <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWjtZ" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRR7MVs" resolve="devices" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWiW9" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWiWa" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="5z1uLkKkLUV" role="37wK5m">
                <node concept="37vLTw" id="5z1uLkKkLUW" role="2Oq$k0">
                  <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="5z1uLkKkMw0" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5s_pyght$Xg" resolve="segments" />
                </node>
              </node>
              <node concept="3VsKOn" id="5z1uLkKkLUY" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
              </node>
              <node concept="37vLTw" id="5z1uLkKkLUZ" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
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
        <node concept="3uibUv" id="5z1uLkKkK4o" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~LinkDeclaration" resolve="LinkDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKkK4p" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKkOJn" role="3cqZAp">
          <node concept="2ShNRf" id="5z1uLkKkOJo" role="3clFbG">
            <node concept="1pGfFk" id="5z1uLkKkOJp" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="5z1uLkKkOJq" role="37wK5m">
                <node concept="37vLTw" id="5z1uLkKkOJr" role="2Oq$k0">
                  <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="5z1uLkKkPDo" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5s_pygh_SXc" resolve="links" />
                </node>
              </node>
              <node concept="3VsKOn" id="5z1uLkKkOJt" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~LinkDeclaration" resolve="LinkDeclaration" />
              </node>
              <node concept="37vLTw" id="5z1uLkKkOJu" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="5z1uLkKkPc1" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~LinkDeclaration" resolve="LinkDeclaration" />
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
        <node concept="3uibUv" id="3lxP5h4eXar" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~MappingDeclaration" resolve="MappingDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4eXas" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4eZ1P" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4eZ1Q" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h4eZ1R" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="3lxP5h4eZ1S" role="37wK5m">
                <node concept="37vLTw" id="3lxP5h4eZ1T" role="2Oq$k0">
                  <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="3lxP5h4eZw9" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRRozfU" resolve="mappings" />
                </node>
              </node>
              <node concept="3VsKOn" id="3lxP5h4eZ1V" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~MappingDeclaration" resolve="MappingDeclaration" />
              </node>
              <node concept="37vLTw" id="3lxP5h4eZ1W" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="3lxP5h4eZLc" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~MappingDeclaration" resolve="MappingDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4eXat" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4dM3MZ7oKoQ">
    <property role="TrG5h" value="ApplicationDeclarationByNode" />
    <node concept="2tJIrI" id="4gibKcMrduy" role="jymVt" />
    <node concept="312cEg" id="4gibKcMrdFn" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="4gibKcMrdER" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
      </node>
      <node concept="3Tm6S6" id="4gibKcMrdGg" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4gibKcMrfXn" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4gibKcMrfNm" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWkH_" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrduz" role="jymVt" />
    <node concept="3Tm1VV" id="4dM3MZ7oKoR" role="1B3o_S" />
    <node concept="3uibUv" id="4gibKcMrdui" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
    </node>
    <node concept="3uibUv" id="4gibKcMrdFU" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="4gibKcMrdGG" role="jymVt">
      <node concept="3cqZAl" id="4gibKcMrdGH" role="3clF45" />
      <node concept="3Tm1VV" id="4gibKcMrdGI" role="1B3o_S" />
      <node concept="3clFbS" id="4gibKcMrdGK" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrdGO" role="3cqZAp">
          <node concept="37vLTI" id="4gibKcMrdGQ" role="3clFbG">
            <node concept="37vLTw" id="4gibKcMrdQ6" role="37vLTJ">
              <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="4gibKcMrdGX" role="37vLTx">
              <ref role="3cqZAo" node="4gibKcMrdGN" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4gibKcMrgaC" role="3cqZAp">
          <node concept="37vLTI" id="4gibKcMrgvG" role="3clFbG">
            <node concept="37vLTw" id="4gibKcMrg$J" role="37vLTx">
              <ref role="3cqZAo" node="4gibKcMrg36" resolve="repository" />
            </node>
            <node concept="37vLTw" id="4gibKcMrgaA" role="37vLTJ">
              <ref role="3cqZAo" node="4gibKcMrfXn" resolve="myRepository" />
            </node>
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
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWkUs" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrdQM" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrdRG" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="4gibKcMrdRI" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrdRJ" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdRK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4gibKcMrdRL" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrenp" role="3cqZAp">
          <node concept="2ShNRf" id="4gibKcMrenj" role="3clFbG">
            <node concept="1pGfFk" id="4gibKcMreF3" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="4gibKcMreGk" role="37wK5m">
                <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLZnz" role="37wK5m">
                <ref role="3cqZAo" node="4gibKcMrfXn" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdRM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMre2H" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrdRP" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="4gibKcMrdRR" role="1B3o_S" />
      <node concept="3clFbS" id="4gibKcMrdRU" role="3clF47">
        <node concept="3clFbF" id="4gibKcMreOP" role="3cqZAp">
          <node concept="37vLTw" id="4gibKcMreOM" role="3clFbG">
            <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdRV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tqbb2" id="1DfKejra0Su" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZXk3S" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXkl3" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="sOaa8ZXkl5" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZXkl6" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="sOaa8ZXkl8" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXklb" role="3cqZAp">
          <node concept="37vLTw" id="sOaa8ZXkww" role="3clFbG">
            <ref role="3cqZAo" node="4gibKcMrfXn" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXkl9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMre7v" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrdRY" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="4gibKcMrdS0" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrdS1" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="4gibKcMrdS3" role="3clF47">
        <node concept="3clFbF" id="4gibKcMreVP" role="3cqZAp">
          <node concept="2OqwBi" id="4gibKcMrfcS" role="3clFbG">
            <node concept="37vLTw" id="4gibKcMreVM" role="2Oq$k0">
              <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="4gibKcMrfu8" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdS4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h47Vca" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZXkCv" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXkV2" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="sOaa8ZXkV3" role="1B3o_S" />
      <node concept="3cqZAl" id="sOaa8ZXkV5" role="3clF45" />
      <node concept="37vLTG" id="sOaa8ZXkV6" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="sOaa8ZXkV7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h47VHd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="sOaa8ZXkV9" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXllL" role="3cqZAp">
          <node concept="37vLTI" id="sOaa8ZXmaO" role="3clFbG">
            <node concept="37vLTw" id="sOaa8ZXmn0" role="37vLTx">
              <ref role="3cqZAo" node="sOaa8ZXkV6" resolve="name" />
            </node>
            <node concept="2OqwBi" id="sOaa8ZXlxd" role="37vLTJ">
              <node concept="37vLTw" id="sOaa8ZXllK" role="2Oq$k0">
                <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="sOaa8ZXlSI" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXkVa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrgBQ" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrgNG" role="jymVt">
      <property role="TrG5h" value="getSytem" />
      <node concept="3Tm1VV" id="4gibKcMrgNI" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrgNJ" role="3clF45">
        <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
      </node>
      <node concept="3clFbS" id="4gibKcMrgNL" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrh52" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQWlrG" role="3clFbG">
            <node concept="37vLTw" id="4gibKcMrh4Z" role="2Oq$k0">
              <ref role="3cqZAo" node="4gibKcMrfXn" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1R0_JUQWlBW" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="1R0_JUQWlQu" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWlDH" role="2Oq$k0">
                  <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="1R0_JUQWm9y" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="1R0_JUQWmmw" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
              </node>
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
  </node>
  <node concept="312cEu" id="3MncU7wPdcu">
    <property role="TrG5h" value="DeviceDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPdds" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPdR9" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPdQb" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPdQy" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQWogq" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQWnU4" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWo8z" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWnJE" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPdcv" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPdP$" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
    </node>
    <node concept="3uibUv" id="3MncU7wPdPP" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="3MncU7wPdU_" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPdUA" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPdUB" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPdUD" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPdUT" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPdUV" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPdV2" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPdUS" resolve="node" />
            </node>
            <node concept="37vLTw" id="3MncU7wPe3w" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3MncU7wPdUH" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPdUJ" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPdUQ" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPdUG" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQWozJ" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPdUS" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3MncU7wPdUR" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPdUG" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWoqU" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPe5_" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPe8E" role="jymVt">
      <property role="TrG5h" value="getSystem" />
      <node concept="3Tm1VV" id="3MncU7wPe8G" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe8H" role="3clF45">
        <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe8I" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPel7" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQWp0t" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQWoTZ" role="2Oq$k0">
              <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1R0_JUQWpf9" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="37vLTw" id="1R0_JUQWqLu" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
              </node>
              <node concept="3VsKOn" id="1R0_JUQWrDJ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
              </node>
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
        <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h4802t" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h47XZB" role="3clF47">
        <node concept="3clFbF" id="3lxP5h47XZC" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h47XZD" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h47XZE" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="3lxP5h47XZF" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
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
              <node concept="37vLTw" id="3lxP5h47XZJ" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWtg8" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWsTY" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWtO7" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:fshQXbRNVN" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWuTc" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWvkz" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWwFD" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWwFE" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWxWl" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWwFG" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWwFH" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
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
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="_2FpOZlx5$" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="_2FpOZlxWM" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
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
    <node concept="2tJIrI" id="3lxP5h486LU" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPe9l" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="3MncU7wPe9n" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPe9q" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPexc" role="3cqZAp">
          <node concept="37vLTw" id="3MncU7wPex9" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe9r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h487oZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3Tqbb2" id="3lxP5h4bCcg" role="3clF45">
        <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h488CS" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlyID" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZlyIF" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZlyIG" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZlyII" role="3clF47">
        <node concept="3clFbF" id="3lxP5h489ez" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h489ew" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlyIJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h489sO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48aKl" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPe9u" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3MncU7wPe9w" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe9x" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe9z" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPeFA" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wPf01" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPeFz" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="3MncU7wPfml" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe9$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48bl9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48cCF" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlyIM" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZlyIN" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZlyIP" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZlyIQ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZlyIR" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h48dfo" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZlyIT" role="3clF47">
        <node concept="3clFbF" id="_2FpOZl$E8" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZl_xx" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZl_KF" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZlyIQ" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZl$P$" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZl$E7" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZl_fo" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlyIU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPjJU">
    <property role="TrG5h" value="DeviceTypeDeclarationByNode" />
    <node concept="3Tm1VV" id="3MncU7wPjJV" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPjMl" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
    </node>
    <node concept="3uibUv" id="_2FpOZlbk9" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="2tJIrI" id="3MncU7wPjPL" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPjQL" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPjQ2" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPjQk" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQWzk7" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQWz4y" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWzfC" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPjR4" role="jymVt" />
    <node concept="3clFbW" id="3MncU7wPjR$" role="jymVt">
      <node concept="37vLTG" id="3MncU7wPjRZ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3MncU7wPjS1" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQWzw7" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWz_n" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="3MncU7wPjRA" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPjRB" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPjRC" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPjT1" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPk3X" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPk6b" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPjRZ" resolve="node" />
            </node>
            <node concept="37vLTw" id="3MncU7wPjT0" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R0_JUQWzB2" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQWzNC" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQWzTx" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQWzw7" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQWzB0" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWFnI" role="jymVt" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="1R0_JUQW$_N" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="1R0_JUQW_qz" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQW_3Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQW_VL" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHkyELb" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWC3l" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWCr9" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
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
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="3MncU7wPkO4" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="29$Ci4mM3pC" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="1R0_JUQWDdQ" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="2OqwBi" id="1R0_JUQWCLj" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWCLk" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWDYq" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHk$uBA" resolve="resources" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWCLm" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWCLn" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWGCH" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPk7Y" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3MncU7wPk80" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk81" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk83" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPlbX" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wPluf" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPlbU" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="3MncU7wPlJh" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk84" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZl9Q5" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlalo" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZlalp" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZlalr" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZlals" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZlalt" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZlalv" role="3clF47">
        <node concept="3clFbF" id="_2FpOZleN$" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZlfDl" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZlfFd" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZlals" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZleYe" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZleNz" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZlfkH" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlalw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlbI3" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlca3" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="_2FpOZlca5" role="1B3o_S" />
      <node concept="3Tqbb2" id="_2FpOZlcY3" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZlca8" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlcND" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZlcNA" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlca9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZle1f" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlcac" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZlcae" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZlcaf" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZlcah" role="3clF47">
        <node concept="3clFbF" id="_2FpOZleuR" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZleuO" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlcai" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPlNy">
    <property role="TrG5h" value="ResourceDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPlP8" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPlQM" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPlPp" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPlPT" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="3MncU7wPGbb" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPFWA" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQUEMB" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPlR5" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPlNz" role="1B3o_S" />
    <node concept="3uibUv" id="2YkCud38mtj" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
    </node>
    <node concept="3uibUv" id="3MncU7wPlYc" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="3MncU7wPlRE" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPlRF" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPlRG" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPlRI" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPlRM" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPlRO" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPlRV" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPlRL" resolve="resource" />
            </node>
            <node concept="37vLTw" id="3MncU7wPlUi" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3MncU7wPHDE" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPHTf" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQUFES" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQUyJG" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3MncU7wPHDC" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPlRL" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="3MncU7wPlRK" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQUyJG" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQUEIa" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPz7W" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPGEs" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="3MncU7wPGEu" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPGEv" role="3clF45">
        <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPGEw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPGEx" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQUGSg" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQUGYM" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQUGSf" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1R0_JUQUHdm" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="1R0_JUQUGnt" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQUG1X" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="1R0_JUQUGG3" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="1R0_JUQUHBH" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
              </node>
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
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="3MncU7wPmuE" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="sOaa8ZXcCd" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPmBm" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPm1v" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="3MncU7wPm1x" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPm1$" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPmH3" role="3cqZAp">
          <node concept="37vLTw" id="3MncU7wPmH0" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tqbb2" id="1DfKejraene" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZjZdY" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZjZe0" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZjZe1" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZjZe3" role="3clF47">
        <node concept="3clFbF" id="_2FpOZjZIv" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZjZIs" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZjZe4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPxYz" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPm1C" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3MncU7wPm1E" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPm1F" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3MncU7wPm1H" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPmO5" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wPn7k" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPmO2" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="3MncU7wPnoy" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZjZRk" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZk0fy" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZk0fz" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZk0f_" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZk0fA" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZk0fB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZk0fD" role="3clF47">
        <node concept="3clFbF" id="_2FpOZk0Fc" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZk1Am" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZk1Cm" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZk0fA" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZk0QC" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZk0Fb" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZk1fP" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZk0fE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPnOO" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPo2a" role="jymVt">
      <property role="TrG5h" value="getTypeReference" />
      <node concept="3Tm1VV" id="3MncU7wPo2c" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4eRV2" role="3clF45">
        <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
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
              <ref role="37wK5l" node="3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="3MncU7wPwLA" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4eT7y" role="37wK5m">
                <ref role="359W_E" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                <ref role="359W_F" to="xiqq:2lwHqHkyELp" resolve="type" />
              </node>
              <node concept="3VsKOn" id="3lxP5h4eTMO" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="_2FpOZjZ2p" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="sOaa8ZXeFo" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="2OqwBi" id="sOaa8ZXf3d" role="37wK5m">
                <node concept="37vLTw" id="sOaa8ZXeOz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="sOaa8ZXfyi" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="sOaa8ZXfMP" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="sOaa8ZXg5A" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPn$$">
    <property role="TrG5h" value="ResourceTypeDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPr0n" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPr2r" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPr1t" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPr1O" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQWSAg" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQWSpy" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWSx3" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPr3u" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPn$_" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPr07" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
    </node>
    <node concept="3uibUv" id="3MncU7wPr17" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="3MncU7wPr3S" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPr3T" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPr3U" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPr3W" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPr40" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPr42" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPr49" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPr3Z" resolve="node" />
            </node>
            <node concept="37vLTw" id="3MncU7wPr6u" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R0_JUQWSWe" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQWT8h" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQWTeU" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQWSNo" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQWSWc" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQWSAg" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPr3Z" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3MncU7wPr3Y" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQWSNo" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWSTj" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPr8i" role="jymVt" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="1R0_JUQWTNL" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="1R0_JUQWUoV" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWU2r" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWUXz" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWWlU" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWZ9V" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWSAg" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9v" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="3MncU7wPrIB" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="sOaa8ZXh9S" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWSAg" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPrVh" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPr9E" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="3MncU7wPr9G" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPr9J" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPs1V" role="3cqZAp">
          <node concept="37vLTw" id="3MncU7wPs1S" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9K" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tqbb2" id="_2FpOZlqP8" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlqxC" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlpJQ" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZlpJS" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZlpJT" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZlpJV" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlsf5" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZlsf2" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQWSAg" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlpJW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPs7T" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPr9N" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3MncU7wPr9P" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPr9Q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3MncU7wPr9S" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPseJ" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wPsx7" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPseG" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="3MncU7wPsN1" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9T" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlppW" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlpJZ" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZlpK0" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZlpK2" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZlpK3" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="_2FpOZlpK4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZlpK6" role="3clF47" />
      <node concept="2AHcQZ" id="_2FpOZlpK7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R0_JUQTAc2">
    <property role="TrG5h" value="ParameterAssignmentByNode" />
    <node concept="2tJIrI" id="1R0_JUQTAdQ" role="jymVt" />
    <node concept="312cEg" id="1R0_JUQTAeX" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQTAea" role="1B3o_S" />
      <node concept="3Tqbb2" id="1R0_JUQTAev" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQW7ET" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQW5ST" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQW61V" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQTAg4" role="jymVt" />
    <node concept="3clFbW" id="1R0_JUQW86A" role="jymVt">
      <node concept="3cqZAl" id="1R0_JUQW86B" role="3clF45" />
      <node concept="3Tm1VV" id="1R0_JUQW86C" role="1B3o_S" />
      <node concept="3clFbS" id="1R0_JUQW86E" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW86I" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQW86K" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQW86R" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQW86H" resolve="node" />
            </node>
            <node concept="37vLTw" id="1R0_JUQW8_i" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R0_JUQW86U" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQW86W" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQW873" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQW86T" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQW8DQ" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQW7ET" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQW86H" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R0_JUQW86G" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQW86T" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQW86S" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQW8uY" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQTAkG" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1R0_JUQTAkH" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQTAkJ" role="3clF45">
        <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="1R0_JUQTAkK" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW8Ik" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQW8VT" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQW8Ii" role="2Oq$k0">
              <ref role="3cqZAo" node="1R0_JUQW7ET" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1R0_JUQW98G" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="1R0_JUQTAFn" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQTAsw" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="1R0_JUQW7X0" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="1R0_JUQW9AD" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
              </node>
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
        <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h48D85" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1R0_JUQTAkS" role="3clF47">
        <node concept="3clFbF" id="3lxP5h48DLK" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h48DLE" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h48E7v" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="3lxP5h48Ecb" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h48Ers" role="37wK5m">
                <ref role="359W_E" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
                <ref role="359W_F" to="xiqq:2lwHqHkyF7b" resolve="decl" />
              </node>
              <node concept="3VsKOn" id="3lxP5h48EKo" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="3lxP5h48G21" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQW7ET" resolve="myRepository" />
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
      <node concept="3uibUv" id="1R0_JUQTAkZ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="1R0_JUQTAl0" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW9Vp" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQWax5" role="3clFbG">
            <node concept="2OqwBi" id="1R0_JUQWa9Y" role="2Oq$k0">
              <node concept="37vLTw" id="1R0_JUQW9Vo" role="2Oq$k0">
                <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="1R0_JUQWal0" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
              </node>
            </node>
            <node concept="2qgKlT" id="1R0_JUQWb6m" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQTAl1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQTAgv" role="jymVt" />
    <node concept="3Tm1VV" id="1R0_JUQTAc3" role="1B3o_S" />
    <node concept="3uibUv" id="4FdYnQC7eEl" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
    </node>
    <node concept="3uibUv" id="1R0_JUQTAfA" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFb_" id="1R0_JUQTAh3" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="1R0_JUQTAh4" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
      </node>
      <node concept="3Tm1VV" id="1R0_JUQTAh5" role="1B3o_S" />
      <node concept="3clFbS" id="1R0_JUQTAh6" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQTAh7" role="3cqZAp">
          <node concept="37vLTw" id="1R0_JUQWbi2" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h48Gwf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48GM5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZXnaL" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXnxL" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="sOaa8ZXnxN" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZXnxO" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="sOaa8ZXnxP" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXoES" role="3cqZAp">
          <node concept="37vLTw" id="sOaa8ZXoEP" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQW7ET" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXnxQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48HjE" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZXogp" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXnxF" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="sOaa8ZXnxG" role="1B3o_S" />
      <node concept="3cqZAl" id="sOaa8ZXnxI" role="3clF45" />
      <node concept="3clFbS" id="sOaa8ZXnxJ" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXnGs" role="3cqZAp">
          <node concept="2OqwBi" id="sOaa8ZXnTW" role="3clFbG">
            <node concept="37vLTw" id="sOaa8ZXnGr" role="2Oq$k0">
              <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="sOaa8ZXoeN" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXnxK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
        <node concept="3uibUv" id="3VhUp_YSroy" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
            <node concept="37vLTw" id="3VhUp_YTnoL" role="2Oq$k0">
              <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
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
        <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h48PxN" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h48PxT" role="3clF47">
        <node concept="3clFbF" id="3lxP5h48QmM" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h48QmG" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h48QH9" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="3lxP5h48QLY" role="37wK5m">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
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
              <node concept="37vLTw" id="3lxP5h48TxK" role="37wK5m">
                <ref role="3cqZAo" to="rwq3:3VhUp_YNzQc" resolve="myRepository" />
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
    <node concept="3uibUv" id="3VhUp_YTV0A" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
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
        <node concept="3uibUv" id="3VhUp_YTV0L" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
            <node concept="37vLTw" id="3VhUp_YTV0T" role="2Oq$k0">
              <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
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
        <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h495Cl" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h495Cm" role="3clF47">
        <node concept="3clFbF" id="3lxP5h495Cn" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h495Co" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h495Cp" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="3lxP5h495Cq" role="37wK5m">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
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
              <node concept="37vLTw" id="3lxP5h495Cu" role="37wK5m">
                <ref role="3cqZAo" to="rwq3:3VhUp_YNzQc" resolve="myRepository" />
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
              <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
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
                <ref role="37wK5l" to="v4vf:~Reference.getTarget()" resolve="getTarget" />
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
      <node concept="2AHcQZ" id="3lxP5h495D2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
  </node>
  <node concept="312cEu" id="_2FpOZmNmF">
    <property role="TrG5h" value="ParameterDeclarationByNode" />
    <node concept="2tJIrI" id="_2FpOZmNoY" role="jymVt" />
    <node concept="312cEg" id="_2FpOZmPJW" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZmNSF" role="1B3o_S" />
      <node concept="3Tqbb2" id="_2FpOZmO1S" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="_2FpOZmQsi" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZmQ2o" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmQjV" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZmQIN" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZmNmG" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZmNo3" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
    </node>
    <node concept="3uibUv" id="_2FpOZmNoA" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="_2FpOZmQSV" role="jymVt">
      <node concept="3cqZAl" id="_2FpOZmQSW" role="3clF45" />
      <node concept="3Tm1VV" id="_2FpOZmQSX" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZmQSZ" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmQT3" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmQT5" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmQTc" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmQT2" resolve="node" />
            </node>
            <node concept="37vLTw" id="_2FpOZmR_W" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZmQTf" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmQTh" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmQTo" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmQTe" resolve="repository" />
            </node>
            <node concept="37vLTw" id="_2FpOZmRTM" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZmQsi" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZmQT2" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="_2FpOZmQT1" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZmQTe" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="_2FpOZmQTd" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZmRrw" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmNq2" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="_2FpOZmNq3" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmNq6" role="3clF45">
        <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZmNq7" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmUND" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZmUU8" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmUNA" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmQsi" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="_2FpOZmV9t" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="_2FpOZmVnw" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZmVba" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="_2FpOZmVGG" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="_2FpOZmVJr" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
              </node>
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
    <node concept="2tJIrI" id="3lxP5h48IsI" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmNqb" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="_2FpOZmNqc" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZmNqe" role="3clF45" />
      <node concept="3clFbS" id="_2FpOZmNqf" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmUiX" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZmUu0" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmUiW" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="_2FpOZmUMq" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48IDR" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmNqh" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="_2FpOZmNqj" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZmNqm" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmScF" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZmScC" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48IR1" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3Tqbb2" id="_2FpOZmS38" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48Jkb" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmNqq" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZmNqs" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmNqt" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZmNqv" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmSpg" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZmSpd" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZmQsi" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48JHh" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48Kat" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmNqz" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="_2FpOZmNq$" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmNqA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="_2FpOZmNqC" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmSyS" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZmSJ6" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmSyP" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="_2FpOZmSTi" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48K$X" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48KnF" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmNqG" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZmNqH" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZmNqJ" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZmNqK" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZmNqL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h48Lcc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZmNqN" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmTac" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmTL3" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmTY1" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmNqK" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZmTls" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZmTab" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZmTuU" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZmVWN">
    <property role="TrG5h" value="EventDeclarationByNode" />
    <node concept="2tJIrI" id="_2FpOZmVYW" role="jymVt" />
    <node concept="312cEg" id="_2FpOZmVZO" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZmVZq" role="1B3o_S" />
      <node concept="3Tqbb2" id="_2FpOZmW0e" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="_2FpOZmW27" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZmW1k" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmW1L" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZmW2B" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZmVWO" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZmVY1" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
    </node>
    <node concept="3uibUv" id="_2FpOZmVY$" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="_2FpOZmW3j" role="jymVt">
      <node concept="3cqZAl" id="_2FpOZmW3k" role="3clF45" />
      <node concept="3Tm1VV" id="_2FpOZmW3l" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZmW3n" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmW3r" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmW3t" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmW3$" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmW3q" resolve="node" />
            </node>
            <node concept="37vLTw" id="_2FpOZmW8N" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZmW3B" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmW3D" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmW3K" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmW3A" resolve="repository" />
            </node>
            <node concept="37vLTw" id="_2FpOZmWcC" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZmW27" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZmW3q" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="_2FpOZmW3p" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZmW3A" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="_2FpOZmW3_" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZmWfc" role="jymVt" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="_2FpOZmXpY" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZmX6N" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
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
              <node concept="37vLTw" id="_2FpOZmZDi" role="37wK5m">
                <ref role="3cqZAo" node="_2FpOZmW27" resolve="myRepository" />
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
      <node concept="3uibUv" id="_2FpOZmWk6" role="3clF45">
        <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZmWk7" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn0mT" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZn0to" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn0mS" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmW27" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="_2FpOZn0Hn" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="_2FpOZn13q" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZn0J4" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="_2FpOZn1mP" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="_2FpOZn1Ax" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
              </node>
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
    <node concept="2tJIrI" id="3lxP5h48iQC" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmWkb" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="_2FpOZmWkc" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZmWke" role="3clF45" />
      <node concept="3clFbS" id="_2FpOZmWkf" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn1Lv" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZn1Uk" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn1Lu" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="_2FpOZn2cQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48jda" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmWkh" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="_2FpOZmWkj" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZmWkm" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn2dS" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZn2dP" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48mGD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3Tqbb2" id="_2FpOZn2qY" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48jzH" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmWkq" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZmWks" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmWkt" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZmWkv" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn2Ou" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZn2Or" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZmW27" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48lUZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48jWI" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmWkz" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="_2FpOZmWk$" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmWkA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="_2FpOZmWkC" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn2YI" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZn3jt" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn2YF" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="_2FpOZn3_5" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48kIQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h48kog" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmWkG" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZmWkH" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZmWkJ" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZmWkK" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZmWkL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h48lKR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZmWkN" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn3BH" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZn4vs" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn4Ga" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmWkK" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZn3UK" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZn3BG" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZn4cb" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZn5bZ">
    <property role="TrG5h" value="EventAssociationByNode" />
    <node concept="2tJIrI" id="_2FpOZn5dY" role="jymVt" />
    <node concept="312cEg" id="_2FpOZn5g7" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZn5eM" role="1B3o_S" />
      <node concept="3Tqbb2" id="_2FpOZn5fv" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiT" resolve="ParameterAssociation" />
      </node>
    </node>
    <node concept="312cEg" id="_2FpOZn5hK" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZn5gX" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZn5hq" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn5ig" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZn5c0" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZn5dn" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~EventAssociation" resolve="EventAssociation" />
    </node>
    <node concept="3uibUv" id="_2FpOZn5dV" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="_2FpOZn5ml" role="jymVt">
      <node concept="3cqZAl" id="_2FpOZn5mm" role="3clF45" />
      <node concept="3Tm1VV" id="_2FpOZn5mn" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZn5mp" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn5mt" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZn5mv" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn5mA" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZn5ms" resolve="node" />
            </node>
            <node concept="37vLTw" id="_2FpOZn5re" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZn5mD" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZn5mF" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn5mM" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZn5mC" resolve="repository" />
            </node>
            <node concept="37vLTw" id="_2FpOZn5tV" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZn5hK" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZn5ms" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="_2FpOZn5mr" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiT" resolve="ParameterAssociation" />
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZn5mC" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="_2FpOZn5mB" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn5vh" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn5yx" role="jymVt">
      <property role="TrG5h" value="getEvent" />
      <node concept="3Tm1VV" id="_2FpOZn5yy" role="1B3o_S" />
      <node concept="2AHcQZ" id="_2FpOZn5y$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="_2FpOZn5y_" role="3clF45">
        <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZn5yA" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn5Jj" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZn6YJ" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn6Lg" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZn5hK" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="_2FpOZn7cb" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="_2FpOZn5T2" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZn5Jg" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="_2FpOZn661" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="_2FpOZn7se" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
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
        <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h47S4w" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZn5yJ" role="3clF47">
        <node concept="3clFbF" id="3lxP5h47SjT" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h47SjP" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h47SE5" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="3lxP5h47SES" role="37wK5m">
                <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h47SNY" role="37wK5m">
                <ref role="359W_E" to="xiqq:3HBlKeoYsiT" resolve="ParameterAssociation" />
                <ref role="359W_F" to="xiqq:3HBlKeoYsiU" resolve="declaration" />
              </node>
              <node concept="3VsKOn" id="3lxP5h47Tqr" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="3uibUv" id="3lxP5h47T1n" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="3lxP5h47TCX" role="37wK5m">
                <ref role="3cqZAo" node="_2FpOZn5hK" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5yK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h47Udc" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn5z5" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="_2FpOZn5z6" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZn5z8" role="3clF45" />
      <node concept="3clFbS" id="_2FpOZn5z9" role="3clF47">
        <node concept="3clFbF" id="_2FpOZnx9J" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZnxia" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZnx9I" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="_2FpOZnxxM" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5za" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h47Upe" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn5zb" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="_2FpOZn5zd" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZn5zf" role="3clF47">
        <node concept="3clFbF" id="_2FpOZnxzJ" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZnxzG" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5zg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tqbb2" id="_2FpOZnxHp" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiT" resolve="ParameterAssociation" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h47U_h" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn5zj" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZn5zl" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZn5zm" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZn5zn" role="3clF47">
        <node concept="3clFbF" id="_2FpOZnxZx" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZnxZu" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZn5hK" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5zo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5z1uLkKkWC2">
    <property role="TrG5h" value="SegmentTypeDeclarationByNode" />
    <node concept="2tJIrI" id="5z1uLkKkWEL" role="jymVt" />
    <node concept="312cEg" id="5z1uLkKkWGv" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5z1uLkKkWFa" role="1B3o_S" />
      <node concept="3Tqbb2" id="5z1uLkKkWFR" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="5z1uLkKkWIO" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5z1uLkKkWI1" role="1B3o_S" />
      <node concept="3uibUv" id="5z1uLkKkWIu" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKkWJk" role="jymVt" />
    <node concept="3Tm1VV" id="5z1uLkKkWC3" role="1B3o_S" />
    <node concept="3uibUv" id="5z1uLkKkWE5" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SegmentTypeDeclaration" resolve="SegmentTypeDeclaration" />
    </node>
    <node concept="3uibUv" id="5z1uLkKkWEp" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="5z1uLkKkXPj" role="jymVt">
      <node concept="3cqZAl" id="5z1uLkKkXPk" role="3clF45" />
      <node concept="3Tm1VV" id="5z1uLkKkXPl" role="1B3o_S" />
      <node concept="3clFbS" id="5z1uLkKkXPn" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKkXPr" role="3cqZAp">
          <node concept="37vLTI" id="5z1uLkKkXPt" role="3clFbG">
            <node concept="37vLTw" id="5z1uLkKkXP$" role="37vLTx">
              <ref role="3cqZAo" node="5z1uLkKkXPq" resolve="node" />
            </node>
            <node concept="37vLTw" id="5z1uLkKkY4X" role="37vLTJ">
              <ref role="3cqZAo" node="5z1uLkKkWGv" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5z1uLkKkXPB" role="3cqZAp">
          <node concept="37vLTI" id="5z1uLkKkXPD" role="3clFbG">
            <node concept="37vLTw" id="5z1uLkKkXPK" role="37vLTx">
              <ref role="3cqZAo" node="5z1uLkKkXPA" resolve="repository" />
            </node>
            <node concept="37vLTw" id="5z1uLkKkYkW" role="37vLTJ">
              <ref role="3cqZAo" node="5z1uLkKkWIO" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5z1uLkKkXPq" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5z1uLkKkXPp" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="5z1uLkKkXPA" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5z1uLkKkXP_" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="5z1uLkKkZzl" role="37wK5m">
                <node concept="37vLTw" id="5z1uLkKkZe0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5z1uLkKkWGv" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="5z1uLkKl02f" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5s_pyghtjpo" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="5z1uLkKl0s$" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="5z1uLkKl0Hn" role="37wK5m">
                <ref role="3cqZAo" node="5z1uLkKkWIO" resolve="myRepository" />
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
    <node concept="2tJIrI" id="5z1uLkKl2P9" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKkWKh" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="5z1uLkKkWKj" role="1B3o_S" />
      <node concept="3Tqbb2" id="5z1uLkKl1Vz" role="3clF45">
        <ref role="ehGHo" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
      </node>
      <node concept="3clFbS" id="5z1uLkKkWKm" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKl1Kf" role="3cqZAp">
          <node concept="37vLTw" id="5z1uLkKl1Kc" role="3clFbG">
            <ref role="3cqZAo" node="5z1uLkKkWGv" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKkWKn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKl2z8" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKkWKq" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="5z1uLkKkWKs" role="1B3o_S" />
      <node concept="3uibUv" id="5z1uLkKkWKt" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="5z1uLkKkWKv" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKl3rK" role="3cqZAp">
          <node concept="37vLTw" id="5z1uLkKl3rH" role="3clFbG">
            <ref role="3cqZAo" node="5z1uLkKkWIO" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKkWKw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKl37b" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKkWKz" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="5z1uLkKkWK$" role="1B3o_S" />
      <node concept="3uibUv" id="5z1uLkKkWKA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="5z1uLkKkWKC" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKkX41" role="3cqZAp">
          <node concept="2OqwBi" id="5z1uLkKkXmJ" role="3clFbG">
            <node concept="37vLTw" id="5z1uLkKkX3Y" role="2Oq$k0">
              <ref role="3cqZAo" node="5z1uLkKkWGv" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="5z1uLkKkXBM" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKkWKD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKl3$x" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKkWKG" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="5z1uLkKkWKH" role="1B3o_S" />
      <node concept="3cqZAl" id="5z1uLkKkWKJ" role="3clF45" />
      <node concept="37vLTG" id="5z1uLkKkWKK" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="5z1uLkKkWKL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKkWKN" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKl3Uo" role="3cqZAp">
          <node concept="37vLTI" id="5z1uLkKl4Kq" role="3clFbG">
            <node concept="37vLTw" id="5z1uLkKl4M9" role="37vLTx">
              <ref role="3cqZAo" node="5z1uLkKkWKK" resolve="name" />
            </node>
            <node concept="2OqwBi" id="5z1uLkKl4aC" role="37vLTJ">
              <node concept="37vLTw" id="5z1uLkKl3Un" role="2Oq$k0">
                <ref role="3cqZAo" node="5z1uLkKkWGv" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="5z1uLkKl4sg" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKkWKO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5z1uLkKlltx">
    <property role="TrG5h" value="LinkDeclarationByNode" />
    <node concept="2tJIrI" id="5z1uLkKllyA" role="jymVt" />
    <node concept="312cEg" id="5z1uLkKll$1" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5z1uLkKllyZ" role="1B3o_S" />
      <node concept="3Tqbb2" id="5z1uLkKllzp" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:5s_pyghzCOb" resolve="LinkDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="5z1uLkKllAi" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5z1uLkKll_c" role="1B3o_S" />
      <node concept="3uibUv" id="5z1uLkKll_W" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKllAM" role="jymVt" />
    <node concept="3Tm1VV" id="5z1uLkKllty" role="1B3o_S" />
    <node concept="3uibUv" id="5z1uLkKllxE" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~LinkDeclaration" resolve="LinkDeclaration" />
    </node>
    <node concept="3uibUv" id="5z1uLkKllye" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="5z1uLkKllW3" role="jymVt">
      <node concept="3cqZAl" id="5z1uLkKllW4" role="3clF45" />
      <node concept="3Tm1VV" id="5z1uLkKllW5" role="1B3o_S" />
      <node concept="3clFbS" id="5z1uLkKllW7" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKllWb" role="3cqZAp">
          <node concept="37vLTI" id="5z1uLkKllWd" role="3clFbG">
            <node concept="37vLTw" id="5z1uLkKllWk" role="37vLTx">
              <ref role="3cqZAo" node="5z1uLkKllWa" resolve="node" />
            </node>
            <node concept="37vLTw" id="5z1uLkKlmri" role="37vLTJ">
              <ref role="3cqZAo" node="5z1uLkKll$1" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5z1uLkKllWn" role="3cqZAp">
          <node concept="37vLTI" id="5z1uLkKllWp" role="3clFbG">
            <node concept="37vLTw" id="5z1uLkKllWw" role="37vLTx">
              <ref role="3cqZAo" node="5z1uLkKllWm" resolve="repository" />
            </node>
            <node concept="37vLTw" id="5z1uLkKlmC9" role="37vLTJ">
              <ref role="3cqZAo" node="5z1uLkKllAi" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5z1uLkKllWa" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5z1uLkKllW9" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5s_pyghzCOb" resolve="LinkDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="5z1uLkKllWm" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5z1uLkKllWl" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5z1uLkKllPn" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKllBE" role="jymVt">
      <property role="TrG5h" value="getResourceReference" />
      <node concept="3Tm1VV" id="5z1uLkKllBF" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h48_rG" role="3clF45">
        <ref role="3uigEE" to="v4vf:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="3lxP5h48_Sp" role="11_B2D">
          <ref role="3uigEE" to="xpc1:~ResourceHierarchy" resolve="ResourceHierarchy" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKllBJ" role="3clF47">
        <node concept="3clFbF" id="5z1uLkKlmOI" role="3cqZAp">
          <node concept="2ShNRf" id="5z1uLkKlmOC" role="3clFbG">
            <node concept="1pGfFk" id="5z1uLkKln5b" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h49bRP" resolve="ResourceReferenceByNode" />
              <node concept="37vLTw" id="5z1uLkKln6i" role="37wK5m">
                <ref role="3cqZAo" node="5z1uLkKll$1" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4cyB7" role="37wK5m">
                <ref role="359W_E" to="xiqq:5s_pyghzCOb" resolve="LinkDeclaration" />
                <ref role="359W_F" to="xiqq:5s_pyghzCOc" resolve="resource" />
              </node>
              <node concept="37vLTw" id="5z1uLkKlqLs" role="37wK5m">
                <ref role="3cqZAo" node="5z1uLkKllAi" resolve="myRepository" />
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
        <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h48$ZP" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="5z1uLkKllBS" role="3clF47">
        <node concept="3clFbF" id="3lxP5h499wG" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h499wC" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h499T0" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="3uibUv" id="3lxP5h499Vb" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
              </node>
              <node concept="37vLTw" id="3lxP5h49a6W" role="37wK5m">
                <ref role="3cqZAo" node="5z1uLkKll$1" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h49ajK" role="37wK5m">
                <ref role="359W_E" to="xiqq:5s_pyghzCOb" resolve="LinkDeclaration" />
                <ref role="359W_F" to="xiqq:5s_pyghzCOh" resolve="segment" />
              </node>
              <node concept="3VsKOn" id="3lxP5h49b4O" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
              </node>
              <node concept="37vLTw" id="3lxP5h49bhM" role="37wK5m">
                <ref role="3cqZAo" node="5z1uLkKllAi" resolve="myRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="5XSMcahh7TG" role="37wK5m">
                <node concept="37vLTw" id="5XSMcahh7A9" role="2Oq$k0">
                  <ref role="3cqZAo" node="5z1uLkKll$1" resolve="myNode" />
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
              <node concept="37vLTw" id="5XSMcahhaFy" role="37wK5m">
                <ref role="3cqZAo" node="5z1uLkKllAi" resolve="myRepository" />
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
    <node concept="2tJIrI" id="5XSMcahhaVg" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKllC6" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="5z1uLkKllC8" role="1B3o_S" />
      <node concept="3clFbS" id="5z1uLkKllCa" role="3clF47">
        <node concept="3clFbF" id="5XSMcahh4qZ" role="3cqZAp">
          <node concept="37vLTw" id="5XSMcahh4qW" role="3clFbG">
            <ref role="3cqZAo" node="5z1uLkKll$1" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKllCb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48B9U" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3Tqbb2" id="5XSMcahh4jz" role="3clF45">
        <ref role="ehGHo" to="xiqq:5s_pyghzCOb" resolve="LinkDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="5XSMcahh4bK" role="jymVt" />
    <node concept="3clFb_" id="5z1uLkKllCe" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="5z1uLkKllCg" role="1B3o_S" />
      <node concept="3uibUv" id="5z1uLkKllCh" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="5z1uLkKllCi" role="3clF47">
        <node concept="3clFbF" id="5XSMcahh4yw" role="3cqZAp">
          <node concept="37vLTw" id="5XSMcahh4yt" role="3clFbG">
            <ref role="3cqZAo" node="5z1uLkKllAi" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5z1uLkKllCj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h48AF6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3lxP5h46M7s">
    <property role="TrG5h" value="PlatformReference" />
    <node concept="2tJIrI" id="3lxP5h46Ne_" role="jymVt" />
    <node concept="312cEg" id="3lxP5h46O5H" role="jymVt">
      <property role="TrG5h" value="myContainer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h46NSe" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4796p" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h476YM" role="jymVt">
      <property role="TrG5h" value="myLink" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h476xW" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h476Rh" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h46QRv" role="jymVt">
      <property role="TrG5h" value="myTargetClass" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h46Qzc" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h46QED" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="16syzq" id="3lxP5h46QLP" role="11_B2D">
          <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h46Pyt" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h46Pkt" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h46Pru" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46Oce" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h46M7t" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h46M8J" role="EKbjA">
      <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
      <node concept="16syzq" id="3lxP5h46M9u" role="11_B2D">
        <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
      </node>
    </node>
    <node concept="16euLQ" id="3lxP5h46M8l" role="16eVyc">
      <property role="TrG5h" value="DeclarationT" />
      <node concept="3uibUv" id="3lxP5h46TNE" role="3ztrMU">
        <ref role="3uigEE" to="cwd8:~NamedDeclaration" resolve="NamedDeclaration" />
      </node>
    </node>
    <node concept="3clFbW" id="3lxP5h46OjL" role="jymVt">
      <node concept="3cqZAl" id="3lxP5h46OjM" role="3clF45" />
      <node concept="3Tm1VV" id="3lxP5h46OjN" role="1B3o_S" />
      <node concept="3clFbS" id="3lxP5h46OjP" role="3clF47">
        <node concept="3clFbF" id="3lxP5h46OjT" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h46OjV" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h46Ok2" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h46OjS" resolve="container" />
            </node>
            <node concept="37vLTw" id="3lxP5h46OWp" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h477Bd" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4784D" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h478gi" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h477m$" resolve="link" />
            </node>
            <node concept="37vLTw" id="3lxP5h477Bb" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h46RzO" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h46S2E" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h46SaJ" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h46Qie" resolve="targetClass" />
            </node>
            <node concept="37vLTw" id="3lxP5h46RzM" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h46QRv" resolve="myTargetClass" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h46PPP" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h46PXw" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h46Q5S" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h46PEc" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3lxP5h46PPN" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h46Pyt" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h46OjS" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3Tqbb2" id="3lxP5h477jb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3lxP5h477m$" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3lxP5h477xl" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h46Qie" role="3clF46">
        <property role="TrG5h" value="targetClass" />
        <node concept="3uibUv" id="3lxP5h46RnF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="3lxP5h46Roy" role="11_B2D">
            <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h46PEc" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3lxP5h46PMN" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46OIZ" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46Mbg" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="3Tm1VV" id="3lxP5h46Mbh" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h46Mbj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="16syzq" id="3lxP5h46Mbl" role="3clF45">
        <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
      </node>
      <node concept="3clFbS" id="3lxP5h46Mbm" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h46SVR" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h46SVS" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="3lxP5h47b8n" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="3lxP5h47a8H" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h46Tbs" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
              </node>
              <node concept="liA8E" id="3lxP5h47aqN" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                <node concept="37vLTw" id="3lxP5h47avQ" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h46SVX" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h46SVY" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h46SVZ" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h46Pyt" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="3lxP5h46SW0" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="37vLTw" id="3lxP5h46SW1" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h46SVS" resolve="node" />
              </node>
              <node concept="37vLTw" id="3lxP5h46TqH" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h46QRv" resolve="myTargetClass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46Mbn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46N8c" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46Mbo" role="jymVt">
      <property role="TrG5h" value="getIdentifier" />
      <node concept="3Tm1VV" id="3lxP5h46Mbp" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h46Mbr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h46Mbs" role="3clF45">
        <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
      </node>
      <node concept="3clFbS" id="3lxP5h46Mbt" role="3clF47">
        <node concept="3clFbF" id="3lxP5h46U4H" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h46U4B" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h46VoS" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQSz$o" resolve="PlatformIdentifier" />
              <node concept="2OqwBi" id="3lxP5h46V$U" role="37wK5m">
                <node concept="2OqwBi" id="3lxP5h478vT" role="2Oq$k0">
                  <node concept="37vLTw" id="3lxP5h46VqB" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
                  </node>
                  <node concept="liA8E" id="3lxP5h479sj" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                    <node concept="37vLTw" id="3lxP5h479wQ" role="37wK5m">
                      <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3lxP5h479Tw" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46Mbu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46N1O" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46Mbx" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="3lxP5h46Mby" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h46Mb$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h46Mb_" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3lxP5h46MbA" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h46X20" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h46X21" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h46X22" role="1tU5fm" />
            <node concept="2OqwBi" id="3lxP5h47E6G" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h46X24" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
              </node>
              <node concept="liA8E" id="3lxP5h47EAi" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                <node concept="37vLTw" id="3lxP5h47F7t" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3lxP5h46X26" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h46X27" role="3clFbx">
            <node concept="3cpWs6" id="3lxP5h46X28" role="3cqZAp">
              <node concept="2OqwBi" id="3lxP5h46X29" role="3cqZAk">
                <node concept="1PxgMI" id="3lxP5h46X2a" role="2Oq$k0">
                  <node concept="37vLTw" id="3lxP5h46X2c" role="1m5AlR">
                    <ref role="3cqZAo" node="3lxP5h46X21" resolve="node" />
                  </node>
                  <node concept="chp4Y" id="3lxP5h46X$5" role="3oSUPX">
                    <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3lxP5h46X2d" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3lxP5h46X2e" role="3clFbw">
            <node concept="10Nm6u" id="3lxP5h46X2f" role="3uHU7w" />
            <node concept="37vLTw" id="3lxP5h46X2g" role="3uHU7B">
              <ref role="3cqZAo" node="3lxP5h46X21" resolve="node" />
            </node>
          </node>
          <node concept="9aQIb" id="3lxP5h46X2h" role="9aQIa">
            <node concept="3clFbS" id="3lxP5h46X2i" role="9aQI4">
              <node concept="3cpWs8" id="3lxP5h47IzG" role="3cqZAp">
                <node concept="3cpWsn" id="3lxP5h47IzH" role="3cpWs9">
                  <property role="TrG5h" value="reference" />
                  <node concept="3uibUv" id="3lxP5h47IgV" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
                  </node>
                  <node concept="2OqwBi" id="3lxP5h47IzI" role="33vP2m">
                    <node concept="37vLTw" id="3lxP5h47IzJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
                    </node>
                    <node concept="liA8E" id="3lxP5h47IzK" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                      <node concept="37vLTw" id="3lxP5h47IzL" role="37wK5m">
                        <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3lxP5h47KIF" role="3cqZAp">
                <node concept="2OqwBi" id="3lxP5h47OOU" role="3cqZAk">
                  <node concept="1eOMI4" id="3lxP5h47L_q" role="2Oq$k0">
                    <node concept="10QFUN" id="3lxP5h47NBb" role="1eOMHV">
                      <node concept="37vLTw" id="3lxP5h47OuC" role="10QFUP">
                        <ref role="3cqZAo" node="3lxP5h47IzH" resolve="reference" />
                      </node>
                      <node concept="3uibUv" id="3lxP5h47Qej" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~SReference" resolve="SReference" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3lxP5h47Ppn" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SReference.getResolveInfo()" resolve="getResolveInfo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46MbB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46MVt" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46MbE" role="jymVt">
      <property role="TrG5h" value="setTarget" />
      <node concept="3Tm1VV" id="3lxP5h46MbF" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h46MbH" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h46MbI" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="16syzq" id="3lxP5h46MbL" role="1tU5fm">
          <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h46MbK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h46MbM" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h474qJ" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h474qK" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="3lxP5h474qg" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="3lxP5h474qL" role="33vP2m">
              <node concept="1eOMI4" id="3lxP5h474qM" role="2Oq$k0">
                <node concept="10QFUN" id="3lxP5h474qN" role="1eOMHV">
                  <node concept="3uibUv" id="3lxP5h474qO" role="10QFUM">
                    <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
                  </node>
                  <node concept="37vLTw" id="3lxP5h474qP" role="10QFUP">
                    <ref role="3cqZAo" node="3lxP5h46MbI" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3lxP5h474qQ" role="2OqNvi">
                <ref role="37wK5l" node="1JYTWWzyU9A" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h474AM" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h474Jt" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h474AJ" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
            </node>
            <node concept="liA8E" id="3lxP5h47bxx" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="37vLTw" id="3lxP5h47c0l" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
              </node>
              <node concept="37vLTw" id="3lxP5h47chQ" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h474qK" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46MbN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46Nyh" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46MbO" role="jymVt">
      <property role="TrG5h" value="setIdentifier" />
      <node concept="3Tm1VV" id="3lxP5h46MbP" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h46MbR" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h46MbS" role="3clF46">
        <property role="TrG5h" value="identifier" />
        <node concept="3uibUv" id="3lxP5h46MbT" role="1tU5fm">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h46MbU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h46MbV" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h47vUc" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h47vUd" role="3cpWs9">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="3lxP5h47vOq" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="3lxP5h47vUe" role="33vP2m">
              <node concept="1eOMI4" id="3lxP5h47w3F" role="2Oq$k0">
                <node concept="10QFUN" id="3lxP5h47w3C" role="1eOMHV">
                  <node concept="3uibUv" id="3lxP5h47w3D" role="10QFUM">
                    <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                  </node>
                  <node concept="37vLTw" id="3lxP5h47w3E" role="10QFUP">
                    <ref role="3cqZAo" node="3lxP5h46MbS" resolve="identifier" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3lxP5h47vUg" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h47cIE" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h47cIF" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h47cIG" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
            </node>
            <node concept="liA8E" id="3lxP5h47cIH" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SReference)" resolve="setReference" />
              <node concept="37vLTw" id="3lxP5h47cII" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
              </node>
              <node concept="2YIFZM" id="3lxP5h47i6z" role="37wK5m">
                <ref role="37wK5l" to="w1kc:~SReference.create(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNodeReference,java.lang.String)" resolve="create" />
                <ref role="1Pybhc" to="w1kc:~SReference" resolve="SReference" />
                <node concept="37vLTw" id="3lxP5h47eWu" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
                </node>
                <node concept="37vLTw" id="3lxP5h47fgi" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
                </node>
                <node concept="37vLTw" id="3lxP5h47vUh" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h47vUd" resolve="reference" />
                </node>
                <node concept="1rXfSq" id="3lxP5h47j9g" role="37wK5m">
                  <ref role="37wK5l" node="3lxP5h47j9c" resolve="resolveInfo" />
                  <node concept="37vLTw" id="3lxP5h47vUi" role="37wK5m">
                    <ref role="3cqZAo" node="3lxP5h47vUd" resolve="reference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46MbW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h47jCv" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h47j9c" role="jymVt">
      <property role="TrG5h" value="resolveInfo" />
      <node concept="3Tm6S6" id="3lxP5h47j9d" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h47jWd" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="3lxP5h47j95" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="3lxP5h47v17" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h47j92" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h47mgQ" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h47mgR" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="3uibUv" id="3lxP5h47m7x" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="3lxP5h47mgS" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h47mgT" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h47j95" resolve="ref" />
              </node>
              <node concept="liA8E" id="3lxP5h47mgU" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                <node concept="2OqwBi" id="3lxP5h47mgV" role="37wK5m">
                  <node concept="37vLTw" id="3lxP5h47mgW" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h46Pyt" resolve="myRepository" />
                  </node>
                  <node concept="liA8E" id="3lxP5h47mgX" role="2OqNvi">
                    <ref role="37wK5l" to="1u7h:6YcNwH3$wj1" resolve="getMPSRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3lxP5h47nkH" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h47nkJ" role="3clFbx">
            <node concept="3cpWs6" id="3lxP5h47o2d" role="3cqZAp">
              <node concept="2OqwBi" id="3lxP5h47oEc" role="3cqZAk">
                <node concept="37vLTw" id="3lxP5h47o3b" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h47mgR" resolve="target" />
                </node>
                <node concept="liA8E" id="3lxP5h47p53" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3lxP5h47nYR" role="3clFbw">
            <node concept="10Nm6u" id="3lxP5h47nZ_" role="3uHU7w" />
            <node concept="37vLTw" id="3lxP5h47nM3" role="3uHU7B">
              <ref role="3cqZAo" node="3lxP5h47mgR" resolve="target" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3lxP5h47_ZZ" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h47A00" role="3cpWs9">
            <property role="TrG5h" value="nodeId" />
            <node concept="3uibUv" id="3lxP5h47_Nx" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
            <node concept="2OqwBi" id="3lxP5h47A01" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h47A02" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h47j95" resolve="ref" />
              </node>
              <node concept="liA8E" id="3lxP5h47A03" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3lxP5h47z$2" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h47z$4" role="3clFbx">
            <node concept="3cpWs6" id="3lxP5h47$JB" role="3cqZAp">
              <node concept="2OqwBi" id="3lxP5h47BQ2" role="3cqZAk">
                <node concept="1eOMI4" id="3lxP5h47Bb8" role="2Oq$k0">
                  <node concept="10QFUN" id="3lxP5h47Alu" role="1eOMHV">
                    <node concept="37vLTw" id="3lxP5h47Alt" role="10QFUP">
                      <ref role="3cqZAo" node="3lxP5h47A00" resolve="nodeId" />
                    </node>
                    <node concept="3uibUv" id="3lxP5h47AMW" role="10QFUM">
                      <ref role="3uigEE" to="w1kc:~SNodeId$Foreign" resolve="SNodeId.Foreign" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3lxP5h47C_6" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SNodeId$Foreign.getId()" resolve="getId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3lxP5h47$r8" role="3clFbw">
            <node concept="3uibUv" id="3lxP5h47$Iq" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~SNodeId$Foreign" resolve="SNodeId.Foreign" />
            </node>
            <node concept="37vLTw" id="3lxP5h47A04" role="2ZW6bz">
              <ref role="3cqZAo" node="3lxP5h47A00" resolve="nodeId" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3lxP5h47j93" role="3cqZAp">
          <node concept="10Nm6u" id="3lxP5h47CTz" role="3cqZAk" />
        </node>
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
      <node concept="3uibUv" id="3lxP5h49bQ3" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h49bQX" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h49bFr" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h49bI5" role="EKbjA">
      <ref role="3uigEE" to="v4vf:~CompositeReference" resolve="CompositeReference" />
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
        <node concept="3uibUv" id="3lxP5h49bSk" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
        <node concept="3uibUv" id="3lxP5h49clo" role="11_B2D">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
          <node concept="3uibUv" id="3lxP5h49clQ" role="11_B2D">
            <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
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
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
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
        <node concept="3uibUv" id="3lxP5h4boR$" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
                <ref role="37wK5l" node="3MncU7wPe9l" resolve="getNode" />
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
                <ref role="37wK5l" node="3MncU7wPm1v" resolve="getNode" />
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
              <node concept="3uibUv" id="3lxP5h4bGkF" role="11_B2D">
                <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
              </node>
            </node>
            <node concept="2ShNRf" id="3lxP5h4bGsQ" role="33vP2m">
              <node concept="1pGfFk" id="3lxP5h4bGsR" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="3lxP5h4bGsS" role="1pMfVU">
                  <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
              <node concept="2ShNRf" id="3lxP5h4bKuS" role="37wK5m">
                <node concept="1pGfFk" id="3lxP5h4bKuT" role="2ShVmc">
                  <ref role="37wK5l" to="1u7h:1R0_JUQSz$o" resolve="PlatformIdentifier" />
                  <node concept="2OqwBi" id="3lxP5h4bKuU" role="37wK5m">
                    <node concept="2OqwBi" id="3lxP5h4bKuV" role="2Oq$k0">
                      <node concept="37vLTw" id="3lxP5h4bKuY" role="2Oq$k0">
                        <ref role="3cqZAo" node="3lxP5h4boTT" resolve="reference" />
                      </node>
                      <node concept="37Cfm0" id="3lxP5h4bKuZ" role="2OqNvi">
                        <node concept="1aIX9F" id="3lxP5h4bKv0" role="37CeNk">
                          <node concept="26LbJo" id="3lxP5h4bLaQ" role="1aIX9E">
                            <ref role="26LbJp" to="xiqq:uLhTRRq_wx" resolve="device" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4bKv2" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                    </node>
                  </node>
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
              <node concept="2ShNRf" id="3lxP5h4bLhL" role="37wK5m">
                <node concept="1pGfFk" id="3lxP5h4bLhM" role="2ShVmc">
                  <ref role="37wK5l" to="1u7h:1R0_JUQSz$o" resolve="PlatformIdentifier" />
                  <node concept="2OqwBi" id="3lxP5h4bLhN" role="37wK5m">
                    <node concept="2OqwBi" id="3lxP5h4bLhO" role="2Oq$k0">
                      <node concept="37vLTw" id="3lxP5h4bLhP" role="2Oq$k0">
                        <ref role="3cqZAo" node="3lxP5h4boTT" resolve="reference" />
                      </node>
                      <node concept="37Cfm0" id="3lxP5h4bLhQ" role="2OqNvi">
                        <node concept="1aIX9F" id="3lxP5h4bLhR" role="37CeNk">
                          <node concept="26LbJo" id="3lxP5h4bLIc" role="1aIX9E">
                            <ref role="26LbJp" to="xiqq:uLhTRRq_wz" resolve="resource" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4bLhT" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                    </node>
                  </node>
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
        <node concept="3uibUv" id="3lxP5h4boTS" role="11_B2D">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
        <node concept="3clFbF" id="3lxP5h4bN3r" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4bNvl" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4bN3_" role="2Oq$k0">
              <node concept="37vLTw" id="3lxP5h4bN3A" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bN3m" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4bN3B" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRq_wx" resolve="device" />
              </node>
            </node>
            <node concept="1AR3kn" id="3lxP5h4bNK3" role="2OqNvi">
              <node concept="25Kdxt" id="3lxP5h4bNO7" role="1AR3km">
                <node concept="10QFUN" id="3lxP5h4bNO8" role="25KhWn">
                  <node concept="2OqwBi" id="3lxP5h4bNO9" role="10QFUP">
                    <node concept="1eOMI4" id="3lxP5h4bNOa" role="2Oq$k0">
                      <node concept="10QFUN" id="3lxP5h4bNOb" role="1eOMHV">
                        <node concept="2OqwBi" id="3lxP5h4bNOc" role="10QFUP">
                          <node concept="37vLTw" id="3lxP5h4bNOd" role="2Oq$k0">
                            <ref role="3cqZAo" node="3lxP5h4boVa" resolve="path" />
                          </node>
                          <node concept="liA8E" id="3lxP5h4bNOe" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="3lxP5h4bNOf" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="3lxP5h4bNOg" role="10QFUM">
                          <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4bNOh" role="2OqNvi">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="2sp9CU" id="3lxP5h4bNOi" role="10QFUM">
                    <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4bN3C" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4bO_W" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4bN3M" role="2Oq$k0">
              <node concept="37vLTw" id="3lxP5h4bN3N" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bN3m" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4bN3O" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
              </node>
            </node>
            <node concept="1AR3kn" id="3lxP5h4bOQx" role="2OqNvi">
              <node concept="25Kdxt" id="3lxP5h4bOUQ" role="1AR3km">
                <node concept="10QFUN" id="3lxP5h4bOUR" role="25KhWn">
                  <node concept="2OqwBi" id="3lxP5h4bOUS" role="10QFUP">
                    <node concept="1eOMI4" id="3lxP5h4bOUT" role="2Oq$k0">
                      <node concept="10QFUN" id="3lxP5h4bOUU" role="1eOMHV">
                        <node concept="2OqwBi" id="3lxP5h4bOUV" role="10QFUP">
                          <node concept="37vLTw" id="3lxP5h4bOUW" role="2Oq$k0">
                            <ref role="3cqZAo" node="3lxP5h4boVa" resolve="path" />
                          </node>
                          <node concept="liA8E" id="3lxP5h4bOUX" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="3lxP5h4bQfi" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="3lxP5h4bOUZ" role="10QFUM">
                          <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4bOV0" role="2OqNvi">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="2sp9CU" id="3lxP5h4bOV1" role="10QFUM">
                    <ref role="2sp9C9" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                  </node>
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
          <node concept="3uibUv" id="3lxP5h4boVc" role="11_B2D">
            <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
      <node concept="3uibUv" id="3lxP5h4atDI" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
        <node concept="3uibUv" id="3lxP5h4atE5" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4at6k" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h4asSA" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h4asUk" role="EKbjA">
      <ref role="3uigEE" to="v4vf:~CompositeReference" resolve="CompositeReference" />
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
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
          <node concept="3uibUv" id="3lxP5h4asWF" role="11_B2D">
            <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
                      <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
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
                        <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
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
        <node concept="3uibUv" id="3lxP5h4aANi" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
                    <ref role="37wK5l" node="4gibKcMrdRP" resolve="getNode" />
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
                      <ref role="37wK5l" to="rwq3:4FRweWLhgAR" resolve="getNode" />
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
                  <node concept="3uibUv" id="3lxP5h4a$7g" role="11_B2D">
                    <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
                  </node>
                </node>
                <node concept="2ShNRf" id="3lxP5h4a$7h" role="33vP2m">
                  <node concept="1pGfFk" id="3lxP5h4a$7i" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="3lxP5h4a$7j" role="1pMfVU">
                      <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
                  <node concept="2ShNRf" id="3lxP5h4a$7o" role="37wK5m">
                    <node concept="1pGfFk" id="3lxP5h4a$7p" role="2ShVmc">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSz$o" resolve="PlatformIdentifier" />
                      <node concept="2OqwBi" id="3lxP5h4a$7q" role="37wK5m">
                        <node concept="2OqwBi" id="3lxP5h4a$7r" role="2Oq$k0">
                          <node concept="1PxgMI" id="3lxP5h4a$7s" role="2Oq$k0">
                            <node concept="chp4Y" id="3lxP5h4a$7t" role="3oSUPX">
                              <ref role="cht4Q" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
                            </node>
                            <node concept="37vLTw" id="3lxP5h4a$7u" role="1m5AlR">
                              <ref role="3cqZAo" node="3lxP5h4a$89" resolve="reference" />
                            </node>
                          </node>
                          <node concept="37Cfm0" id="3lxP5h4a$7v" role="2OqNvi">
                            <node concept="1aIX9F" id="3lxP5h4a$7w" role="37CeNk">
                              <node concept="26LbJo" id="3lxP5h4a$7x" role="1aIX9E">
                                <ref role="26LbJp" to="xiqq:uLhTRRmhk8" resolve="application" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3lxP5h4a$7y" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                        </node>
                      </node>
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
                      <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
                    <node concept="2ShNRf" id="3lxP5h4a$7T" role="37wK5m">
                      <node concept="1pGfFk" id="3lxP5h4a$7U" role="2ShVmc">
                        <ref role="37wK5l" to="1u7h:1R0_JUQSz$o" resolve="PlatformIdentifier" />
                        <node concept="2OqwBi" id="3lxP5h4a$7V" role="37wK5m">
                          <node concept="2OqwBi" id="3lxP5h4a$7W" role="2Oq$k0">
                            <node concept="1PxgMI" id="3lxP5h4a$7X" role="2Oq$k0">
                              <node concept="chp4Y" id="3lxP5h4a$7Y" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:uLhTRRmjJo" resolve="SubapplicationReference" />
                              </node>
                              <node concept="37vLTw" id="3lxP5h4a$7Z" role="1m5AlR">
                                <ref role="3cqZAo" node="3lxP5h4a$89" resolve="reference" />
                              </node>
                            </node>
                            <node concept="37Cfm0" id="3lxP5h4a$80" role="2OqNvi">
                              <node concept="1aIX9F" id="3lxP5h4a$81" role="37CeNk">
                                <node concept="26LbJo" id="3lxP5h4a$82" role="1aIX9E">
                                  <ref role="26LbJp" to="xiqq:uLhTRRmjJx" resolve="subapp" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3lxP5h4a$83" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                          </node>
                        </node>
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
        <node concept="3uibUv" id="3lxP5h4a$88" role="11_B2D">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
        <node concept="3clFbF" id="3lxP5h4axXV" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4axXW" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4axXX" role="2Oq$k0">
              <node concept="1PxgMI" id="3lxP5h4aCnE" role="2Oq$k0">
                <node concept="chp4Y" id="3lxP5h4aCuu" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:uLhTRRmhk7" resolve="SystemApplicationReference" />
                </node>
                <node concept="37vLTw" id="3lxP5h4axXY" role="1m5AlR">
                  <ref role="3cqZAo" node="3lxP5h4axXQ" resolve="res" />
                </node>
              </node>
              <node concept="3TrEf2" id="3lxP5h4aCEt" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRmhk8" resolve="application" />
              </node>
            </node>
            <node concept="1AR3kn" id="3lxP5h4axY0" role="2OqNvi">
              <node concept="25Kdxt" id="3lxP5h4axY1" role="1AR3km">
                <node concept="10QFUN" id="3lxP5h4axY2" role="25KhWn">
                  <node concept="2OqwBi" id="3lxP5h4axY3" role="10QFUP">
                    <node concept="1eOMI4" id="3lxP5h4axY4" role="2Oq$k0">
                      <node concept="10QFUN" id="3lxP5h4axY5" role="1eOMHV">
                        <node concept="2OqwBi" id="3lxP5h4axY6" role="10QFUP">
                          <node concept="37vLTw" id="3lxP5h4axY7" role="2Oq$k0">
                            <ref role="3cqZAo" node="3lxP5h4axYY" resolve="path" />
                          </node>
                          <node concept="liA8E" id="3lxP5h4axY8" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="3lxP5h4axY9" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="3lxP5h4axYa" role="10QFUM">
                          <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4axYb" role="2OqNvi">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="2sp9CU" id="3lxP5h4axYc" role="10QFUM">
                    <ref role="2sp9C9" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
                  </node>
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
            <node concept="3clFbF" id="3lxP5h4axYr" role="3cqZAp">
              <node concept="2OqwBi" id="3lxP5h4axYs" role="3clFbG">
                <node concept="2OqwBi" id="3lxP5h4axYt" role="2Oq$k0">
                  <node concept="37vLTw" id="3lxP5h4axYu" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4axYg" resolve="node" />
                  </node>
                  <node concept="3TrEf2" id="3lxP5h4axYv" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRmjJx" resolve="subapp" />
                  </node>
                </node>
                <node concept="1AR3kn" id="3lxP5h4axYw" role="2OqNvi">
                  <node concept="25Kdxt" id="3lxP5h4axYx" role="1AR3km">
                    <node concept="10QFUN" id="3lxP5h4axYy" role="25KhWn">
                      <node concept="2OqwBi" id="3lxP5h4axYz" role="10QFUP">
                        <node concept="1eOMI4" id="3lxP5h4axY$" role="2Oq$k0">
                          <node concept="10QFUN" id="3lxP5h4axY_" role="1eOMHV">
                            <node concept="2OqwBi" id="3lxP5h4axYA" role="10QFUP">
                              <node concept="37vLTw" id="3lxP5h4axYB" role="2Oq$k0">
                                <ref role="3cqZAo" node="3lxP5h4axYY" resolve="path" />
                              </node>
                              <node concept="liA8E" id="3lxP5h4axYC" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="3lxP5h4axYD" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="3lxP5h4axYE" role="10QFUM">
                              <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3lxP5h4axYF" role="2OqNvi">
                          <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
                        </node>
                      </node>
                      <node concept="2sp9CU" id="3lxP5h4axYG" role="10QFUM">
                        <ref role="2sp9C9" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
                      </node>
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
          <node concept="3uibUv" id="3lxP5h4axZ0" role="11_B2D">
            <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4aKpg" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4aKph" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
              <ref role="3cqZAo" node="3lxP5h4aKpB" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3lxP5h4aKpy" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4aKpf" resolve="myRepository" />
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
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3lxP5h4aKpC" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4aKpD" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h4aKpE" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h4aKpF" role="EKbjA">
      <ref role="3uigEE" to="v4vf:~CompositeReference" resolve="CompositeReference" />
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
              <ref role="3cqZAo" node="3lxP5h4aKpf" resolve="myRepository" />
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
        <node concept="3uibUv" id="3lxP5h4aKq4" role="11_B2D">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
          <node concept="3uibUv" id="3lxP5h4aKqY" role="11_B2D">
            <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
              <node concept="37vLTw" id="3lxP5h4aKr5" role="37wK5m">
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
                  <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
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
        <node concept="3uibUv" id="3lxP5h4aKrU" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
                <ref role="37wK5l" to="rwq3:4FRweWLhgAR" resolve="getNode" />
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
              <node concept="3uibUv" id="3lxP5h4b7kX" role="11_B2D">
                <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
              <node concept="2ShNRf" id="3lxP5h4b9Pa" role="37wK5m">
                <node concept="1pGfFk" id="3lxP5h4b9Pb" role="2ShVmc">
                  <ref role="37wK5l" to="1u7h:1R0_JUQSz$o" resolve="PlatformIdentifier" />
                  <node concept="2OqwBi" id="3lxP5h4b9Pc" role="37wK5m">
                    <node concept="2OqwBi" id="3lxP5h4b9Pd" role="2Oq$k0">
                      <node concept="37vLTw" id="3lxP5h4b9Pg" role="2Oq$k0">
                        <ref role="3cqZAo" node="3lxP5h4aKuf" resolve="reference" />
                      </node>
                      <node concept="37Cfm0" id="3lxP5h4b9Ph" role="2OqNvi">
                        <node concept="1aIX9F" id="3lxP5h4b9Pi" role="37CeNk">
                          <node concept="26LbJo" id="3lxP5h4bak7" role="1aIX9E">
                            <ref role="26LbJp" to="xiqq:uLhTRRmrd9" resolve="functionBlock" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4b9Pk" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                    </node>
                  </node>
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
        <node concept="3uibUv" id="3lxP5h4aKue" role="11_B2D">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
        <node concept="3clFbF" id="3lxP5h4bgvD" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4biwE" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4bhNA" role="2Oq$k0">
              <node concept="37vLTw" id="3lxP5h4bhfM" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bhfI" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4bieZ" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRmrd9" resolve="functionBlock" />
              </node>
            </node>
            <node concept="1AR3kn" id="3lxP5h4biSs" role="2OqNvi">
              <node concept="25Kdxt" id="3lxP5h4biWY" role="1AR3km">
                <node concept="10QFUN" id="3lxP5h4bfpm" role="25KhWn">
                  <node concept="2sp9CU" id="3lxP5h4bfJS" role="10QFUM">
                    <ref role="2sp9C9" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="3lxP5h4aKu_" role="10QFUP">
                    <node concept="1eOMI4" id="3lxP5h4aKuA" role="2Oq$k0">
                      <node concept="10QFUN" id="3lxP5h4aKuB" role="1eOMHV">
                        <node concept="2OqwBi" id="3lxP5h4aKuC" role="10QFUP">
                          <node concept="37vLTw" id="3lxP5h4aKuD" role="2Oq$k0">
                            <ref role="3cqZAo" node="3lxP5h4aKvw" resolve="path" />
                          </node>
                          <node concept="liA8E" id="3lxP5h4aKuE" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.remove(int)" resolve="remove" />
                            <node concept="3cpWsd" id="3lxP5h4bf24" role="37wK5m">
                              <node concept="3cmrfG" id="3lxP5h4bf2C" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="3lxP5h4bdi8" role="3uHU7B">
                                <node concept="37vLTw" id="3lxP5h4bcaG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3lxP5h4aKvw" resolve="path" />
                                </node>
                                <node concept="liA8E" id="3lxP5h4be6p" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="3lxP5h4aKuG" role="10QFUM">
                          <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4aKuH" role="2OqNvi">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
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
          <node concept="3uibUv" id="3lxP5h4aKvy" role="11_B2D">
            <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
      <node concept="3uibUv" id="3lxP5h4bZrD" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4bZrE" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h4bZrF" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h4bZrG" role="EKbjA">
      <ref role="3uigEE" to="v4vf:~CompositeReference" resolve="CompositeReference" />
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
        <node concept="3uibUv" id="3lxP5h4bZs3" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
        <node concept="3uibUv" id="3lxP5h4bZss" role="11_B2D">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
          <node concept="3uibUv" id="3lxP5h4bZtm" role="11_B2D">
            <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="2OqwBi" id="3lxP5h4bZtR" role="37wK5m">
                  <node concept="37vLTw" id="3lxP5h4bZtS" role="2Oq$k0">
                    <ref role="3cqZAo" node="3lxP5h4bZu1" resolve="reference" />
                  </node>
                  <node concept="3TrEf2" id="3lxP5h4bZtT" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRRq_wz" resolve="resource" />
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
        <node concept="3uibUv" id="3lxP5h4bZu4" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
                <ref role="37wK5l" to="rwq3:4FRweWLhgAR" resolve="getNode" />
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
              <node concept="3uibUv" id="3lxP5h4c7f1" role="11_B2D">
                <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
              <node concept="2ShNRf" id="3lxP5h4bZva" role="37wK5m">
                <node concept="1pGfFk" id="3lxP5h4bZvb" role="2ShVmc">
                  <ref role="37wK5l" to="1u7h:1R0_JUQSz$o" resolve="PlatformIdentifier" />
                  <node concept="2OqwBi" id="3lxP5h4bZvc" role="37wK5m">
                    <node concept="2OqwBi" id="3lxP5h4bZvd" role="2Oq$k0">
                      <node concept="37vLTw" id="3lxP5h4bZve" role="2Oq$k0">
                        <ref role="3cqZAo" node="3lxP5h4bZvn" resolve="reference" />
                      </node>
                      <node concept="37Cfm0" id="3lxP5h4bZvf" role="2OqNvi">
                        <node concept="1aIX9F" id="3lxP5h4bZvg" role="37CeNk">
                          <node concept="26LbJo" id="3lxP5h4c8n0" role="1aIX9E">
                            <ref role="26LbJp" to="xiqq:uLhTRRtpn2" resolve="functionBlock" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4bZvi" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                    </node>
                  </node>
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
        <node concept="3uibUv" id="3lxP5h4bZvm" role="11_B2D">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
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
        <node concept="3clFbF" id="3lxP5h4bZvz" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4bZv$" role="3clFbG">
            <node concept="2OqwBi" id="3lxP5h4bZv_" role="2Oq$k0">
              <node concept="37vLTw" id="3lxP5h4bZvA" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4bZvu" resolve="node" />
              </node>
              <node concept="3TrEf2" id="3lxP5h4cexd" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRRtpn2" resolve="functionBlock" />
              </node>
            </node>
            <node concept="1AR3kn" id="3lxP5h4bZvC" role="2OqNvi">
              <node concept="25Kdxt" id="3lxP5h4bZvD" role="1AR3km">
                <node concept="10QFUN" id="3lxP5h4bZvE" role="25KhWn">
                  <node concept="2OqwBi" id="3lxP5h4bZvF" role="10QFUP">
                    <node concept="1eOMI4" id="3lxP5h4bZvG" role="2Oq$k0">
                      <node concept="10QFUN" id="3lxP5h4bZvH" role="1eOMHV">
                        <node concept="2OqwBi" id="3lxP5h4bZvI" role="10QFUP">
                          <node concept="37vLTw" id="3lxP5h4bZvJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="3lxP5h4bZwa" resolve="path" />
                          </node>
                          <node concept="liA8E" id="3lxP5h4bZvK" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="3lxP5h4cefC" role="37wK5m">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="3lxP5h4bZvM" role="10QFUM">
                          <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3lxP5h4bZvN" role="2OqNvi">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="2sp9CU" id="3lxP5h4bZvO" role="10QFUM">
                    <ref role="2sp9C9" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
                  </node>
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
          <node concept="3uibUv" id="3lxP5h4bZwc" role="11_B2D">
            <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3lxP5h4bZwd" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="3lxP5h4cjod">
    <property role="TrG5h" value="SegmentDeclarationByNode" />
    <node concept="2tJIrI" id="3lxP5h4cjqu" role="jymVt" />
    <node concept="312cEg" id="3lxP5h4cjt9" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4cjqX" role="1B3o_S" />
      <node concept="3Tqbb2" id="3lxP5h4cjsx" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h4cjvt" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4cju5" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4cjv7" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4cjvX" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h4cjoe" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h4cjpz" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SegmentDeclaration" resolve="SegmentDeclaration" />
    </node>
    <node concept="3uibUv" id="3lxP5h4cjq6" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="3lxP5h4cjwD" role="jymVt">
      <node concept="3cqZAl" id="3lxP5h4cjwE" role="3clF45" />
      <node concept="3Tm1VV" id="3lxP5h4cjwF" role="1B3o_S" />
      <node concept="3clFbS" id="3lxP5h4cjwH" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4cjwL" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4cjwN" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4cjwU" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4cjwK" resolve="node" />
            </node>
            <node concept="37vLTw" id="3lxP5h4cjAD" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4cjt9" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4cjwX" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4cjwZ" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4cjx6" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4cjwW" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3lxP5h4cjD9" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4cjvt" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4cjwK" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3lxP5h4cjwJ" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4cjwW" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3lxP5h4cjwV" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4cjGX" role="jymVt" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="3lxP5h4cmBE" role="37wK5m">
                <node concept="37vLTw" id="3lxP5h4cmiY" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h4cjt9" resolve="myNode" />
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
              <node concept="37vLTw" id="3lxP5h4coZh" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4cjvt" resolve="myRepository" />
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
        <ref role="3uigEE" to="v4vf:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h4cjK$" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~SegmentTypeDeclaration" resolve="SegmentTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4cjK_" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4cphq" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4cphk" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h4cpC1" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="3lxP5h4cpGh" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4cjt9" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4cq0L" role="37wK5m">
                <ref role="359W_E" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
                <ref role="359W_F" to="xiqq:5s_pyghtuNY" resolve="type" />
              </node>
              <node concept="3VsKOn" id="3lxP5h4cqtw" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SegmentTypeDeclaration" resolve="SegmentTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="3lxP5h4cqSI" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4cjvt" resolve="myRepository" />
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
    <node concept="2tJIrI" id="3lxP5h4clhh" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4cjKD" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="3lxP5h4cjKF" role="1B3o_S" />
      <node concept="3Tqbb2" id="3lxP5h4crrO" role="3clF45">
        <ref role="ehGHo" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
      </node>
      <node concept="3clFbS" id="3lxP5h4cjKI" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4csk3" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4csk0" role="3clFbG">
            <ref role="3cqZAo" node="3lxP5h4cjt9" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4cjKJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h4cv3B" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4cl6L" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4cjKM" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="3lxP5h4cjKO" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4cjKP" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="3lxP5h4cjKR" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4csuf" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4csue" role="3clFbG">
            <ref role="3cqZAo" node="3lxP5h4cjvt" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4cjKS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h4cuiP" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4ckWi" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4cjKV" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3lxP5h4cjKW" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h4cjKY" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h4cjKZ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3lxP5h4cjL1" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4csQO" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4ct2Y" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4csQN" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4cjt9" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="3lxP5h4ctmJ" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4cjL2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4ckJU" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4cjL5" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="3lxP5h4cjL6" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h4cjL8" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h4cjL9" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="3lxP5h4cjLa" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h4cjLb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4cjLd" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4ctpQ" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4ctUG" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4cu7G" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4cjL9" resolve="name" />
            </node>
            <node concept="2OqwBi" id="3lxP5h4ctst" role="37vLTJ">
              <node concept="37vLTw" id="3lxP5h4ctpP" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h4cjt9" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="3lxP5h4ctCA" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4cjLe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3lxP5h4czaq">
    <property role="TrG5h" value="MappingDeclarationByNode" />
    <node concept="2tJIrI" id="3lxP5h4czdb" role="jymVt" />
    <node concept="312cEg" id="3lxP5h4czeY" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4czdE" role="1B3o_S" />
      <node concept="3Tqbb2" id="3lxP5h4czem" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:uLhTRRmhk4" resolve="MappingDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h4czhq" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h4czg1" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4czh4" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4czhV" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h4czar" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h4czcg" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~MappingDeclaration" resolve="MappingDeclaration" />
    </node>
    <node concept="3uibUv" id="3lxP5h4czcN" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="3lxP5h4cziX" role="jymVt">
      <node concept="3cqZAl" id="3lxP5h4cziY" role="3clF45" />
      <node concept="3Tm1VV" id="3lxP5h4cziZ" role="1B3o_S" />
      <node concept="3clFbS" id="3lxP5h4czj1" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4czj5" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4czj7" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4czje" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4czj4" resolve="node" />
            </node>
            <node concept="37vLTw" id="3lxP5h4czqc" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4czeY" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h4czjh" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4czjj" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4czjq" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h4czjg" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3lxP5h4czuh" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h4czhq" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4czj4" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3lxP5h4czj3" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRRmhk4" resolve="MappingDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h4czjg" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3lxP5h4czjf" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
        <node concept="3clFbF" id="3lxP5h4cCg8" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4cCtv" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4cCg6" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4czhq" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="3lxP5h4cCDX" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="3lxP5h4cBYW" role="37wK5m">
                <node concept="37vLTw" id="3lxP5h4cBOz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lxP5h4czeY" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="3lxP5h4cCcJ" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="3lxP5h4cDdX" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
              </node>
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
        <ref role="3uigEE" to="v4vf:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="3lxP5h4czEr" role="11_B2D">
          <ref role="3uigEE" to="xpc1:~ApplicationFunctionBlockHierarchy" resolve="ApplicationFunctionBlockHierarchy" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4czEs" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4cBow" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4cBox" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h4cBoy" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h4aKpj" resolve="ApplicationFunctionBlockReferenceByNode" />
              <node concept="37vLTw" id="3lxP5h4cBoz" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4czeY" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4cBo$" role="37wK5m">
                <ref role="359W_E" to="xiqq:uLhTRRmhk4" resolve="MappingDeclaration" />
                <ref role="359W_F" to="xiqq:uLhTRRmrej" resolve="instance" />
              </node>
              <node concept="37vLTw" id="3lxP5h4cBo_" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4czhq" resolve="myRepository" />
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
        <ref role="3uigEE" to="v4vf:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="3lxP5h4czE_" role="11_B2D">
          <ref role="3uigEE" to="xpc1:~ResourceFunctionBlockHierarchy" resolve="ResourceFunctionBlockHierarchy" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h4czEA" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4czED" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h4cAmK" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h4cAHq" role="2ShVmc">
              <ref role="37wK5l" node="3lxP5h4bZrI" resolve="ResourceFunctionBlockReferenceByNode" />
              <node concept="37vLTw" id="3lxP5h4cAL1" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4czeY" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h4cAXv" role="37wK5m">
                <ref role="359W_E" to="xiqq:uLhTRRmhk4" resolve="MappingDeclaration" />
                <ref role="359W_F" to="xiqq:uLhTRRmrel" resolve="resource" />
              </node>
              <node concept="37vLTw" id="3lxP5h4cBfB" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h4czhq" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4c$Jy" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4czEE" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="3lxP5h4czEF" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h4czEH" role="3clF45" />
      <node concept="3clFbS" id="3lxP5h4czEI" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4c_8W" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h4c_hA" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h4c_8V" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h4czeY" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="3lxP5h4c_u$" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4czEJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4c$Ri" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4czEK" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="3lxP5h4czEM" role="1B3o_S" />
      <node concept="3Tqbb2" id="3lxP5h4c_Xf" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRRmhk4" resolve="MappingDeclaration" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h4czEO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3lxP5h4czEQ" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4c_wN" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4c_wK" role="3clFbG">
            <ref role="3cqZAo" node="3lxP5h4czeY" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4czER" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4c$Z3" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h4czEU" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="3lxP5h4czEW" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4czEX" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="2AHcQZ" id="3lxP5h4czEY" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3lxP5h4czF0" role="3clF47">
        <node concept="3clFbF" id="3lxP5h4czF3" role="3cqZAp">
          <node concept="37vLTw" id="3lxP5h4cAdN" role="3clFbG">
            <ref role="3cqZAo" node="3lxP5h4czhq" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h4czF1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

