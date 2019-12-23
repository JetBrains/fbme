<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f0179f23-61bb-4719-8c52-ffe510b63d71(mps.ide.debugger)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(mps.lang.iec61499.behavior)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="v900" ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(mps.ide)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="qvjh" ref="r:d7ebf872-1ce9-4246-93f2-9bff5c1173e6(mps.ide.plugin)" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="6626851894249711936" name="jetbrains.mps.lang.extension.structure.ExtensionPointExpression" flags="nn" index="2O5UvJ">
        <reference id="6626851894249712469" name="extensionPoint" index="2O5UnU" />
      </concept>
      <concept id="3175313036448560967" name="jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation" flags="nn" index="SfwO_" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
        <child id="5721587534047265375" name="throwable" index="9lYJj" />
      </concept>
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
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU">
        <reference id="7400021826771268269" name="concept" index="2sp9C9" />
      </concept>
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
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="3wAsKTkjRj3">
    <property role="TrG5h" value="Watchable" />
    <node concept="312cEg" id="6K_0vqj4_z5" role="jymVt">
      <property role="TrG5h" value="resource" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6K_0vqj4_31" role="1B3o_S" />
      <node concept="2sp9CU" id="6K_0vqj4_v3" role="1tU5fm">
        <ref role="2sp9C9" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
      </node>
    </node>
    <node concept="312cEg" id="3wAsKTkjRHF" role="jymVt">
      <property role="TrG5h" value="fb" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3wAsKTkjRv2" role="1B3o_S" />
      <node concept="2sp9CU" id="3wAsKTkjRHv" role="1tU5fm">
        <ref role="2sp9C9" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
    </node>
    <node concept="312cEg" id="3wAsKTkjRWL" role="jymVt">
      <property role="TrG5h" value="port" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3wAsKTkjRMW" role="1B3o_S" />
      <node concept="17QB3L" id="3wAsKTkjRWE" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3wAsKTkjRX7" role="jymVt" />
    <node concept="3Tm1VV" id="3wAsKTkjRj4" role="1B3o_S" />
    <node concept="3clFbW" id="3wAsKTkjS1E" role="jymVt">
      <node concept="3cqZAl" id="3wAsKTkjS1F" role="3clF45" />
      <node concept="3Tm1VV" id="3wAsKTkjS1G" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjS1I" role="3clF47">
        <node concept="3clFbF" id="6K_0vqj4A9l" role="3cqZAp">
          <node concept="37vLTI" id="6K_0vqj4Cdp" role="3clFbG">
            <node concept="37vLTw" id="6K_0vqj4CoT" role="37vLTx">
              <ref role="3cqZAo" node="6K_0vqj4_JC" resolve="resource" />
            </node>
            <node concept="2OqwBi" id="6K_0vqj4AjR" role="37vLTJ">
              <node concept="Xjq3P" id="6K_0vqj4A9j" role="2Oq$k0" />
              <node concept="2OwXpG" id="6K_0vqj4AKZ" role="2OqNvi">
                <ref role="2Oxat5" node="6K_0vqj4_z5" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjS1M" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkjS1O" role="3clFbG">
            <node concept="2OqwBi" id="3wAsKTkjS1S" role="37vLTJ">
              <node concept="Xjq3P" id="3wAsKTkjS1T" role="2Oq$k0" />
              <node concept="2OwXpG" id="3wAsKTkjS1U" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTkjRHF" resolve="fb" />
              </node>
            </node>
            <node concept="37vLTw" id="3wAsKTkjS1V" role="37vLTx">
              <ref role="3cqZAo" node="3wAsKTkjS1L" resolve="fb" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjS1Y" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkjS20" role="3clFbG">
            <node concept="2OqwBi" id="3wAsKTkjS24" role="37vLTJ">
              <node concept="Xjq3P" id="3wAsKTkjS25" role="2Oq$k0" />
              <node concept="2OwXpG" id="3wAsKTkjS26" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTkjRWL" resolve="port" />
              </node>
            </node>
            <node concept="37vLTw" id="3wAsKTkjS27" role="37vLTx">
              <ref role="3cqZAo" node="3wAsKTkjS1X" resolve="port" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6K_0vqj4_JC" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="2sp9CU" id="6K_0vqj4_YQ" role="1tU5fm">
          <ref role="2sp9C9" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkjS1L" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="2sp9CU" id="3wAsKTkjS1K" role="1tU5fm">
          <ref role="2sp9C9" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkjS1X" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="3wAsKTkjS1W" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkjS9I" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkjSdz" role="jymVt">
      <property role="TrG5h" value="getResource" />
      <node concept="2sp9CU" id="3wAsKTkjSd$" role="3clF45">
        <ref role="2sp9C9" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
      </node>
      <node concept="3Tm1VV" id="3wAsKTkjSd_" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjSdA" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkjSdB" role="3cqZAp">
          <node concept="37vLTw" id="6K_0vqj4Et_" role="3clFbG">
            <ref role="3cqZAo" node="6K_0vqj4_z5" resolve="resource" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkjSlL" role="jymVt" />
    <node concept="3clFb_" id="6K_0vqj4Cqx" role="jymVt">
      <property role="TrG5h" value="getFb" />
      <node concept="2sp9CU" id="6K_0vqj4Cqy" role="3clF45">
        <ref role="2sp9C9" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
      <node concept="3Tm1VV" id="6K_0vqj4Cqz" role="1B3o_S" />
      <node concept="3clFbS" id="6K_0vqj4Cq$" role="3clF47">
        <node concept="3clFbF" id="6K_0vqj4Cq_" role="3cqZAp">
          <node concept="37vLTw" id="6K_0vqj4CqA" role="3clFbG">
            <ref role="3cqZAo" node="3wAsKTkjRHF" resolve="fb" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3wAsKTkjSdD" role="jymVt">
      <property role="TrG5h" value="getPort" />
      <node concept="17QB3L" id="3wAsKTkjSdE" role="3clF45" />
      <node concept="3Tm1VV" id="3wAsKTkjSdF" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjSdG" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkjSdH" role="3cqZAp">
          <node concept="37vLTw" id="3wAsKTkjSdC" role="3clFbG">
            <ref role="3cqZAo" node="3wAsKTkjRWL" resolve="port" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkjStA" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkjSxI" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="3wAsKTkjSxJ" role="3clF45" />
      <node concept="3Tm1VV" id="3wAsKTkjSxK" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjSxL" role="3clF47">
        <node concept="3clFbJ" id="3wAsKTkjSxM" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkjSxN" role="3clFbx">
            <node concept="3cpWs6" id="3wAsKTkjSxO" role="3cqZAp">
              <node concept="3clFbT" id="3wAsKTkjSxP" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3wAsKTkjSxQ" role="3clFbw">
            <node concept="Xjq3P" id="3wAsKTkjSxH" role="3uHU7B" />
            <node concept="37vLTw" id="3wAsKTkjSxR" role="3uHU7w">
              <ref role="3cqZAo" node="3wAsKTkjSye" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wAsKTkjSxS" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkjSxT" role="3clFbx">
            <node concept="3cpWs6" id="3wAsKTkjSxU" role="3cqZAp">
              <node concept="3clFbT" id="3wAsKTkjSxV" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="3wAsKTkk0HA" role="3clFbw">
            <node concept="1eOMI4" id="3wAsKTkk0HC" role="3fr31v">
              <node concept="2ZW3vV" id="3wAsKTkk1cn" role="1eOMHV">
                <node concept="3uibUv" id="3wAsKTkk1pY" role="2ZW6by">
                  <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
                </node>
                <node concept="37vLTw" id="3wAsKTkk10D" role="2ZW6bz">
                  <ref role="3cqZAo" node="3wAsKTkjSye" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wAsKTkjSy7" role="3cqZAp" />
        <node concept="3cpWs8" id="3wAsKTkjSy8" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTkjSy9" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="3wAsKTkjSya" role="1tU5fm">
              <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
            </node>
            <node concept="10QFUN" id="3wAsKTkjSyb" role="33vP2m">
              <node concept="3uibUv" id="3wAsKTkjSyc" role="10QFUM">
                <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
              </node>
              <node concept="37vLTw" id="3wAsKTkjSyd" role="10QFUP">
                <ref role="3cqZAo" node="3wAsKTkjSye" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6K_0vqj4Ex$" role="3cqZAp">
          <node concept="3clFbS" id="6K_0vqj4Ex_" role="3clFbx">
            <node concept="3cpWs6" id="6K_0vqj4ExA" role="3cqZAp">
              <node concept="3clFbT" id="6K_0vqj4ExB" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="6K_0vqj4ExC" role="3clFbw">
            <node concept="37vLTw" id="6K_0vqj4Ful" role="3uHU7B">
              <ref role="3cqZAo" node="6K_0vqj4_z5" resolve="resource" />
            </node>
            <node concept="2OqwBi" id="6K_0vqj4ExE" role="3uHU7w">
              <node concept="37vLTw" id="6K_0vqj4ExF" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTkjSy9" resolve="that" />
              </node>
              <node concept="2OwXpG" id="6K_0vqj4FMB" role="2OqNvi">
                <ref role="2Oxat5" node="6K_0vqj4_z5" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wAsKTkjSyo" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkjSyp" role="3clFbx">
            <node concept="3cpWs6" id="3wAsKTkjSyq" role="3cqZAp">
              <node concept="3clFbT" id="3wAsKTkjSyr" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="3wAsKTkjZAl" role="3clFbw">
            <node concept="37vLTw" id="3wAsKTkjSyl" role="3uHU7B">
              <ref role="3cqZAo" node="3wAsKTkjRHF" resolve="fb" />
            </node>
            <node concept="2OqwBi" id="3wAsKTkjSyw" role="3uHU7w">
              <node concept="37vLTw" id="3wAsKTkjSyh" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTkjSy9" resolve="that" />
              </node>
              <node concept="2OwXpG" id="3wAsKTkjSyk" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTkjRHF" resolve="fb" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wAsKTkjSyI" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkjSyJ" role="3clFbx">
            <node concept="3cpWs6" id="3wAsKTkjSyK" role="3cqZAp">
              <node concept="3clFbT" id="3wAsKTkjSyL" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="3wAsKTkjWnl" role="3clFbw">
            <node concept="37vLTw" id="3wAsKTkjSyF" role="3uHU7B">
              <ref role="3cqZAo" node="3wAsKTkjRWL" resolve="port" />
            </node>
            <node concept="2OqwBi" id="3wAsKTkjSyQ" role="3uHU7w">
              <node concept="37vLTw" id="3wAsKTkjSyR" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTkjSy9" resolve="that" />
              </node>
              <node concept="2OwXpG" id="3wAsKTkjSyE" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTkjRWL" resolve="port" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wAsKTkjSz1" role="3cqZAp" />
        <node concept="3clFbF" id="3wAsKTkjSz2" role="3cqZAp">
          <node concept="3clFbT" id="3wAsKTkjSz3" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkjSye" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="3wAsKTkjSyf" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3wAsKTkjSyg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkjTDZ" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkjSz4" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="3wAsKTkjSz5" role="3clF45" />
      <node concept="3Tm1VV" id="3wAsKTkjSz6" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjSz7" role="3clF47">
        <node concept="3cpWs8" id="3wAsKTkjSz9" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTkjSza" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="3wAsKTkjSzb" role="1tU5fm" />
            <node concept="3cmrfG" id="3wAsKTkjSzc" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6K_0vqj4FR9" role="3cqZAp">
          <node concept="37vLTI" id="6K_0vqj4FRa" role="3clFbG">
            <node concept="3cpWs3" id="6K_0vqj4FRb" role="37vLTx">
              <node concept="1eOMI4" id="6K_0vqj4FRc" role="3uHU7w">
                <node concept="3K4zz7" id="6K_0vqj4FRd" role="1eOMHV">
                  <node concept="3cmrfG" id="6K_0vqj4FRe" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="6K_0vqj4FRf" role="3K4Cdx">
                    <node concept="10Nm6u" id="6K_0vqj4FRg" role="3uHU7w" />
                    <node concept="37vLTw" id="6K_0vqj4GBp" role="3uHU7B">
                      <ref role="3cqZAo" node="6K_0vqj4_z5" resolve="resource" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6K_0vqj4FRi" role="3K4E3e">
                    <node concept="2JrnkZ" id="6K_0vqj4FRj" role="2Oq$k0">
                      <node concept="37vLTw" id="6K_0vqj4GLw" role="2JrQYb">
                        <ref role="3cqZAo" node="6K_0vqj4_z5" resolve="resource" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6K_0vqj4FRl" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="6K_0vqj4FRm" role="3uHU7B">
                <node concept="3cmrfG" id="6K_0vqj4FRn" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="6K_0vqj4FRo" role="3uHU7w">
                  <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6K_0vqj4FRp" role="37vLTJ">
              <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjSzm" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkjSzn" role="3clFbG">
            <node concept="3cpWs3" id="3wAsKTkjSzo" role="37vLTx">
              <node concept="1eOMI4" id="3wAsKTkk1wf" role="3uHU7w">
                <node concept="3K4zz7" id="3wAsKTkjSzq" role="1eOMHV">
                  <node concept="3cmrfG" id="3wAsKTkjSzr" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="3wAsKTkjSzs" role="3K4Cdx">
                    <node concept="10Nm6u" id="3wAsKTkjSzt" role="3uHU7w" />
                    <node concept="37vLTw" id="3wAsKTkjSzk" role="3uHU7B">
                      <ref role="3cqZAo" node="3wAsKTkjRHF" resolve="fb" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3wAsKTkjSzu" role="3K4E3e">
                    <node concept="2JrnkZ" id="3wAsKTkk3ls" role="2Oq$k0">
                      <node concept="37vLTw" id="3wAsKTkjSzl" role="2JrQYb">
                        <ref role="3cqZAo" node="3wAsKTkjRHF" resolve="fb" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3wAsKTkjSzy" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="3wAsKTkjSzi" role="3uHU7B">
                <node concept="3cmrfG" id="3wAsKTkjSzj" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3wAsKTkjSzd" role="3uHU7w">
                  <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3wAsKTkjSzz" role="37vLTJ">
              <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjSzD" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkjSzE" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTkjSzF" role="37vLTJ">
              <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
            </node>
            <node concept="3cpWs3" id="3wAsKTkjSzG" role="37vLTx">
              <node concept="17qRlL" id="3wAsKTkjSz$" role="3uHU7B">
                <node concept="3cmrfG" id="3wAsKTkjSz_" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3wAsKTkjSzA" role="3uHU7w">
                  <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="3wAsKTkjSzH" role="3uHU7w">
                <node concept="3K4zz7" id="3wAsKTkjSzI" role="1eOMHV">
                  <node concept="3cmrfG" id="3wAsKTkjSzJ" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="3wAsKTkjSzK" role="3K4Cdx">
                    <node concept="10Nm6u" id="3wAsKTkjSzL" role="3uHU7w" />
                    <node concept="37vLTw" id="3wAsKTkjSzB" role="3uHU7B">
                      <ref role="3cqZAo" node="3wAsKTkjRWL" resolve="port" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3wAsKTkjSzM" role="3K4E3e">
                    <node concept="liA8E" id="3wAsKTkjSzO" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                    </node>
                    <node concept="37vLTw" id="3wAsKTkjSzC" role="2Oq$k0">
                      <ref role="3cqZAo" node="3wAsKTkjRWL" resolve="port" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjSzP" role="3cqZAp">
          <node concept="37vLTw" id="3wAsKTkjSzQ" role="3clFbG">
            <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3wAsKTkjSz8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5jACUPF_hkq">
    <property role="TrG5h" value="WatchedValueListener" />
    <node concept="2tJIrI" id="5jACUPF_hlc" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_hyO" role="jymVt">
      <property role="TrG5h" value="onValueChanged" />
      <node concept="3clFbS" id="5jACUPF_hyR" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_hyS" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_hyD" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_hAA" role="3clF46">
        <property role="TrG5h" value="newValue" />
        <node concept="17QB3L" id="5jACUPF_hA_" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5jACUPF_hkr" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="5jACUPF_XF2">
    <property role="TrG5h" value="Watcher" />
    <node concept="2tJIrI" id="5jACUPF_XFk" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_Y1s" role="jymVt">
      <property role="TrG5h" value="watch" />
      <node concept="3clFbS" id="5jACUPF_Y1v" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_Y1w" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_Y12" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_Y9K" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="3uibUv" id="5jACUPF_Y9J" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_YaC" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_YfM" role="jymVt">
      <property role="TrG5h" value="unwatch" />
      <node concept="3clFbS" id="5jACUPF_YfP" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_YfQ" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_Yf8" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_Yk3" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="3uibUv" id="5jACUPF_Yk2" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_XXo" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_XWH" role="jymVt">
      <property role="TrG5h" value="readWatches" />
      <node concept="3clFbS" id="5jACUPF_XWK" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_XWL" role="1B3o_S" />
      <node concept="3rvAFt" id="5jACUPF_XPM" role="3clF45">
        <node concept="3uibUv" id="5jACUPF_XTj" role="3rvQeY">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
        <node concept="17QB3L" id="5jACUPF_XWE" role="3rvSg0" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5jACUPF_XF3" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3wAsKTk9819">
    <property role="TrG5h" value="WatcherFacade" />
    <node concept="2tJIrI" id="3wAsKTk981P" role="jymVt" />
    <node concept="Wx3nA" id="5jACUPF_MvU" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="5jACUPF_LQi" role="1B3o_S" />
      <node concept="10Nm6u" id="5jACUPF_NhJ" role="33vP2m" />
      <node concept="3uibUv" id="5jACUPF_N9z" role="1tU5fm">
        <ref role="3uigEE" node="3wAsKTk9819" resolve="WatcherFacade" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_Lg0" role="jymVt" />
    <node concept="3Tm1VV" id="3wAsKTk981a" role="1B3o_S" />
    <node concept="312cEg" id="5jACUPF_HQN" role="jymVt">
      <property role="TrG5h" value="myDevices" />
      <property role="3TUv4t" value="true" />
      <node concept="3rvAFt" id="5jACUPFArlv" role="1tU5fm">
        <node concept="2sp9CU" id="5jACUPFArXE" role="3rvQeY">
          <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
        <node concept="2hMVRd" id="5jACUPFAuuP" role="3rvSg0">
          <node concept="3uibUv" id="5jACUPFAuuR" role="2hN53Y">
            <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="5jACUPF_HQT" role="33vP2m">
        <node concept="3rGOSV" id="5jACUPFAw0K" role="2ShVmc">
          <node concept="2sp9CU" id="5jACUPFAx1o" role="3rHrn6">
            <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
          </node>
          <node concept="2hMVRd" id="5jACUPFAxyh" role="3rHtpV">
            <node concept="3uibUv" id="5jACUPFAxyi" role="2hN53Y">
              <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5jACUPF_HQQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="42vv4xszZbd" role="jymVt" />
    <node concept="2tJIrI" id="42vv4xszZlQ" role="jymVt" />
    <node concept="2tJIrI" id="5jACUPFA2XR" role="jymVt" />
    <node concept="312cEg" id="5jACUPFA7aZ" role="jymVt">
      <property role="TrG5h" value="myWatchedValueListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5jACUPFA4T3" role="1B3o_S" />
      <node concept="3rvAFt" id="5jACUPFA5LV" role="1tU5fm">
        <node concept="3uibUv" id="5jACUPFA5QQ" role="3rvQeY">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
        <node concept="2hMVRd" id="5jACUPFDZSP" role="3rvSg0">
          <node concept="3uibUv" id="5jACUPFDZSR" role="2hN53Y">
            <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="5jACUPFA7KI" role="33vP2m">
        <node concept="3rGOSV" id="5jACUPFA8hc" role="2ShVmc">
          <node concept="3uibUv" id="5jACUPFA8M6" role="3rHrn6">
            <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
          </node>
          <node concept="2hMVRd" id="5jACUPFE0jC" role="3rHtpV">
            <node concept="3uibUv" id="5jACUPFE0jE" role="2hN53Y">
              <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkkAYv" role="jymVt" />
    <node concept="2YIFZL" id="5jACUPF_QUm" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="5jACUPF_QUp" role="3clF47">
        <node concept="3cpWs6" id="5jACUPF_Rye" role="3cqZAp">
          <node concept="37vLTw" id="5jACUPFLO7K" role="3cqZAk">
            <ref role="3cqZAo" node="5jACUPF_MvU" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPF_Q3d" role="1B3o_S" />
      <node concept="3uibUv" id="5jACUPF_QMo" role="3clF45">
        <ref role="3uigEE" node="3wAsKTk9819" resolve="WatcherFacade" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_PrY" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_VLV" role="jymVt">
      <property role="TrG5h" value="watch" />
      <node concept="3clFbS" id="5jACUPF_VLZ" role="3clF47">
        <node concept="3cpWs8" id="4uvvnUOtvXg" role="3cqZAp">
          <node concept="3cpWsn" id="4uvvnUOtvXh" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3Tqbb2" id="4uvvnUOtvXa" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="1PxgMI" id="4uvvnUOtvXi" role="33vP2m">
              <node concept="chp4Y" id="4uvvnUOtvXj" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
              </node>
              <node concept="2OqwBi" id="4uvvnUOtvXk" role="1m5AlR">
                <node concept="37vLTw" id="4uvvnUOtvXl" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uvvnUOsQom" resolve="resource" />
                </node>
                <node concept="1mfA1w" id="4uvvnUOtvXm" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jACUPFAzA4" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFAzA5" role="3cpWs9">
            <property role="TrG5h" value="devicePtr" />
            <node concept="2sp9CU" id="5jACUPFAB4o" role="1tU5fm">
              <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="2OqwBi" id="4uvvnUOt1To" role="33vP2m">
              <node concept="37vLTw" id="4uvvnUOtvXn" role="2Oq$k0">
                <ref role="3cqZAo" node="4uvvnUOtvXh" resolve="device" />
              </node>
              <node concept="iZEcu" id="4uvvnUOt2$4" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="4uvvnUOtx$l" role="3cqZAp">
          <node concept="3clFbS" id="4uvvnUOtx$n" role="SfCbr">
            <node concept="3cpWs8" id="7pEplJkHd$i" role="3cqZAp">
              <node concept="3cpWsn" id="7pEplJkHd$j" role="3cpWs9">
                <property role="TrG5h" value="connection" />
                <node concept="3uibUv" id="7pEplJkHd$k" role="1tU5fm">
                  <ref role="3uigEE" node="7pEplJkHbDy" resolve="DeviceConnection" />
                </node>
                <node concept="2OqwBi" id="42vv4xsA7rq" role="33vP2m">
                  <node concept="2YIFZM" id="42vv4xsA7lB" role="2Oq$k0">
                    <ref role="37wK5l" node="42vv4xsA5S3" resolve="getInstance" />
                    <ref role="1Pybhc" node="3wAsKTkhPuA" resolve="DevicesFacade" />
                  </node>
                  <node concept="liA8E" id="42vv4xsA7zT" role="2OqNvi">
                    <ref role="37wK5l" node="42vv4xs$B7p" resolve="attach" />
                    <node concept="37vLTw" id="42vv4xsA7AW" role="37wK5m">
                      <ref role="3cqZAo" node="4uvvnUOtvXh" resolve="device" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7F_O7WvjTWv" role="3cqZAp">
              <node concept="3clFbS" id="7F_O7WvjTWx" role="3clFbx">
                <node concept="3clFbF" id="4uvvnUOtzk$" role="3cqZAp">
                  <node concept="2OqwBi" id="4uvvnUOtzyI" role="3clFbG">
                    <node concept="37vLTw" id="42vv4xsA7JM" role="2Oq$k0">
                      <ref role="3cqZAo" node="7pEplJkHd$j" resolve="connection" />
                    </node>
                    <node concept="liA8E" id="4uvvnUOtzIY" role="2OqNvi">
                      <ref role="37wK5l" node="3wAsKTkgxxr" resolve="addWatch" />
                      <node concept="37vLTw" id="4uvvnUOtzYW" role="37wK5m">
                        <ref role="3cqZAo" node="4uvvnUOsQom" resolve="resource" />
                      </node>
                      <node concept="37vLTw" id="4uvvnUOt$v4" role="37wK5m">
                        <ref role="3cqZAo" node="4uvvnUOsWlf" resolve="functionBlock" />
                      </node>
                      <node concept="37vLTw" id="4uvvnUOtBWn" role="37wK5m">
                        <ref role="3cqZAo" node="4uvvnUOt$Ci" resolve="port" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7F_O7WvjV4X" role="3clFbw">
                <node concept="10Nm6u" id="7F_O7WvjVly" role="3uHU7w" />
                <node concept="37vLTw" id="7F_O7WvjU05" role="3uHU7B">
                  <ref role="3cqZAo" node="7pEplJkHd$j" resolve="connection" />
                </node>
              </node>
              <node concept="9aQIb" id="7F_O7WvjVpz" role="9aQIa">
                <node concept="3clFbS" id="7F_O7WvjVp$" role="9aQI4">
                  <node concept="RRSsy" id="7F_O7WvjV$i" role="3cqZAp">
                    <property role="RRSoG" value="error" />
                    <node concept="3cpWs3" id="7F_O7WvjW9O" role="RRSoy">
                      <node concept="2OqwBi" id="7F_O7WvjX9v" role="3uHU7w">
                        <node concept="37vLTw" id="7F_O7WvjWJ_" role="2Oq$k0">
                          <ref role="3cqZAo" node="4uvvnUOsQom" resolve="resource" />
                        </node>
                        <node concept="3TrcHB" id="7F_O7WvjXL7" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7F_O7WvjV$k" role="3uHU7B">
                        <property role="Xl_RC" value="no connection available for " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4uvvnUOtx$o" role="TEbGg">
            <node concept="3cpWsn" id="4uvvnUOtx$q" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4uvvnUOtyQo" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4uvvnUOtx$u" role="TDEfX">
              <node concept="RRSsy" id="4uvvnUOtCo6" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="4uvvnUOtCo8" role="RRSoy">
                  <property role="Xl_RC" value="on start watching" />
                </node>
                <node concept="37vLTw" id="4uvvnUOtCoa" role="RRSow">
                  <ref role="3cqZAo" node="4uvvnUOtx$q" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jACUPFAChg" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFAChh" role="3cpWs9">
            <property role="TrG5h" value="watchables" />
            <node concept="2hMVRd" id="5jACUPFACgX" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFACh0" role="2hN53Y">
                <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFAChi" role="33vP2m">
              <node concept="37vLTw" id="5jACUPFAChj" role="3ElVtu">
                <ref role="3cqZAo" node="5jACUPFAzA5" resolve="devicePtr" />
              </node>
              <node concept="37vLTw" id="5jACUPFAChk" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFAFs8" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFAFsa" role="3clFbx">
            <node concept="3clFbF" id="6K_0vqjmHWd" role="3cqZAp">
              <node concept="37vLTI" id="6K_0vqjmHWf" role="3clFbG">
                <node concept="3EllGN" id="6K_0vqjmHWj" role="37vLTJ">
                  <node concept="37vLTw" id="6K_0vqjmHWk" role="3ElVtu">
                    <ref role="3cqZAo" node="5jACUPFAzA5" resolve="devicePtr" />
                  </node>
                  <node concept="37vLTw" id="6K_0vqjmHWl" role="3ElQJh">
                    <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
                  </node>
                </node>
                <node concept="37vLTI" id="6K_0vqjmM6I" role="37vLTx">
                  <node concept="37vLTw" id="5jACUPFAK5p" role="37vLTJ">
                    <ref role="3cqZAo" node="5jACUPFAChh" resolve="watchables" />
                  </node>
                  <node concept="2ShNRf" id="6K_0vqjmMfS" role="37vLTx">
                    <node concept="2i4dXS" id="6K_0vqjmMfT" role="2ShVmc">
                      <node concept="3uibUv" id="6K_0vqjmMfU" role="HW$YZ">
                        <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6K_0vqjmMwU" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5jACUPFAJWg" role="3clFbw">
            <node concept="10Nm6u" id="5jACUPFAJWX" role="3uHU7w" />
            <node concept="37vLTw" id="5jACUPFAFxz" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPFAChh" resolve="watchables" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jACUPFB36z" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPFB3KX" role="3clFbG">
            <node concept="37vLTw" id="5jACUPFB36x" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFAChh" resolve="watchables" />
            </node>
            <node concept="TSZUe" id="5jACUPFBkDY" role="2OqNvi">
              <node concept="1rXfSq" id="4uvvnUOtCE8" role="25WWJ7">
                <ref role="37wK5l" node="6K_0vqjdycD" resolve="watchable" />
                <node concept="37vLTw" id="6K_0vqj6caE" role="37wK5m">
                  <ref role="3cqZAo" node="4uvvnUOsQom" resolve="resource" />
                </node>
                <node concept="37vLTw" id="4uvvnUOtDga" role="37wK5m">
                  <ref role="3cqZAo" node="4uvvnUOsWlf" resolve="functionBlock" />
                </node>
                <node concept="37vLTw" id="4uvvnUOtDMM" role="37wK5m">
                  <ref role="3cqZAo" node="4uvvnUOt$Ci" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5jACUPF_VM6" role="3clF45" />
      <node concept="3Tm1VV" id="5jACUPF_VM5" role="1B3o_S" />
      <node concept="37vLTG" id="4uvvnUOsQom" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="4uvvnUOsTM6" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="4uvvnUOsWlf" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3Tqbb2" id="4uvvnUOt4fL" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="4uvvnUOt$Ci" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="4uvvnUOtBz1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPFAmY2" role="jymVt" />
    <node concept="3clFb_" id="5jACUPFAos4" role="jymVt">
      <property role="TrG5h" value="unwatch" />
      <node concept="37vLTG" id="4uvvnUOtEaV" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="4uvvnUOtEaW" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFAp52" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3Tqbb2" id="5jACUPFAp53" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFAp54" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="5jACUPFAp55" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5jACUPFAos7" role="3clF47">
        <node concept="3cpWs8" id="4uvvnUOtIv$" role="3cqZAp">
          <node concept="3cpWsn" id="4uvvnUOtIv_" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3Tqbb2" id="4uvvnUOtIvA" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="1PxgMI" id="4uvvnUOtIvB" role="33vP2m">
              <node concept="chp4Y" id="4uvvnUOtIvC" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
              </node>
              <node concept="2OqwBi" id="4uvvnUOtIvD" role="1m5AlR">
                <node concept="37vLTw" id="4uvvnUOtIvE" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uvvnUOtEaV" resolve="resource" />
                </node>
                <node concept="1mfA1w" id="4uvvnUOtIvF" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4uvvnUOtIvG" role="3cqZAp">
          <node concept="3cpWsn" id="4uvvnUOtIvH" role="3cpWs9">
            <property role="TrG5h" value="devicePtr" />
            <node concept="2sp9CU" id="4uvvnUOtIvI" role="1tU5fm">
              <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="2OqwBi" id="4uvvnUOtIvJ" role="33vP2m">
              <node concept="37vLTw" id="4uvvnUOtIvK" role="2Oq$k0">
                <ref role="3cqZAo" node="4uvvnUOtIv_" resolve="device" />
              </node>
              <node concept="iZEcu" id="4uvvnUOtIvL" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="4uvvnUOtIvM" role="3cqZAp">
          <node concept="3clFbS" id="4uvvnUOtIvN" role="SfCbr">
            <node concept="3cpWs8" id="4uvvnUOtIvO" role="3cqZAp">
              <node concept="3cpWsn" id="4uvvnUOtIvP" role="3cpWs9">
                <property role="TrG5h" value="connection" />
                <node concept="3uibUv" id="42vv4xsD2_r" role="1tU5fm">
                  <ref role="3uigEE" node="7pEplJkHbDy" resolve="DeviceConnection" />
                </node>
                <node concept="2OqwBi" id="42vv4xsD2IY" role="33vP2m">
                  <node concept="2YIFZM" id="42vv4xsD2N3" role="2Oq$k0">
                    <ref role="37wK5l" node="42vv4xsA5S3" resolve="getInstance" />
                    <ref role="1Pybhc" node="3wAsKTkhPuA" resolve="DevicesFacade" />
                  </node>
                  <node concept="liA8E" id="42vv4xsD61j" role="2OqNvi">
                    <ref role="37wK5l" node="42vv4xs$B7p" resolve="attach" />
                    <node concept="37vLTw" id="42vv4xsD2N4" role="37wK5m">
                      <ref role="3cqZAo" node="4uvvnUOtIv_" resolve="device" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="42vv4xsD6du" role="3cqZAp">
              <node concept="3clFbS" id="42vv4xsD6dw" role="3clFbx">
                <node concept="3clFbF" id="4uvvnUOtIvT" role="3cqZAp">
                  <node concept="2OqwBi" id="4uvvnUOtIvU" role="3clFbG">
                    <node concept="37vLTw" id="4uvvnUOtIvV" role="2Oq$k0">
                      <ref role="3cqZAo" node="4uvvnUOtIvP" resolve="connection" />
                    </node>
                    <node concept="liA8E" id="4uvvnUOtIvW" role="2OqNvi">
                      <ref role="37wK5l" node="3wAsKTkh1jo" resolve="removeWatch" />
                      <node concept="37vLTw" id="4uvvnUOtIvX" role="37wK5m">
                        <ref role="3cqZAo" node="4uvvnUOtEaV" resolve="resource" />
                      </node>
                      <node concept="37vLTw" id="4uvvnUOtIvY" role="37wK5m">
                        <ref role="3cqZAo" node="5jACUPFAp52" resolve="functionBlock" />
                      </node>
                      <node concept="37vLTw" id="4uvvnUOtIvZ" role="37wK5m">
                        <ref role="3cqZAo" node="5jACUPFAp54" resolve="port" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="42vv4xsD7lY" role="3clFbw">
                <node concept="10Nm6u" id="42vv4xsD7ou" role="3uHU7w" />
                <node concept="37vLTw" id="42vv4xsD6h6" role="3uHU7B">
                  <ref role="3cqZAo" node="4uvvnUOtIvP" resolve="connection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4uvvnUOtIw0" role="TEbGg">
            <node concept="3cpWsn" id="4uvvnUOtIw1" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4uvvnUOtIw2" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4uvvnUOtIw3" role="TDEfX">
              <node concept="RRSsy" id="4uvvnUOtIw4" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="4uvvnUOtIw5" role="RRSoy">
                  <property role="Xl_RC" value="on remove watching" />
                </node>
                <node concept="37vLTw" id="4uvvnUOtIw6" role="RRSow">
                  <ref role="3cqZAo" node="4uvvnUOtIw1" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jACUPFBnUe" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFBnUf" role="3cpWs9">
            <property role="TrG5h" value="watchables" />
            <node concept="2hMVRd" id="5jACUPFBnUg" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFBnUh" role="2hN53Y">
                <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFBnUi" role="33vP2m">
              <node concept="37vLTw" id="4uvvnUOtJxZ" role="3ElVtu">
                <ref role="3cqZAo" node="4uvvnUOtIvH" resolve="devicePtr" />
              </node>
              <node concept="37vLTw" id="5jACUPFBnUk" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFBnUl" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFBnUm" role="3clFbx">
            <node concept="3cpWs6" id="5jACUPFBou0" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5jACUPFBnUx" role="3clFbw">
            <node concept="10Nm6u" id="5jACUPFBnUy" role="3uHU7w" />
            <node concept="37vLTw" id="5jACUPFBnUz" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPFBnUf" resolve="watchables" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jACUPFBptF" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPFBqaI" role="3clFbG">
            <node concept="37vLTw" id="5jACUPFBptD" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFBnUf" resolve="watchables" />
            </node>
            <node concept="3dhRuq" id="5jACUPFBF7B" role="2OqNvi">
              <node concept="1rXfSq" id="5jACUPFDd7D" role="25WWJ7">
                <ref role="37wK5l" node="6K_0vqjdycD" resolve="watchable" />
                <node concept="37vLTw" id="6K_0vqj6aAY" role="37wK5m">
                  <ref role="3cqZAo" node="4uvvnUOtEaV" resolve="resource" />
                </node>
                <node concept="37vLTw" id="5jACUPFDd7B" role="37wK5m">
                  <ref role="3cqZAo" node="5jACUPFAp52" resolve="functionBlock" />
                </node>
                <node concept="37vLTw" id="5jACUPFDd7C" role="37wK5m">
                  <ref role="3cqZAo" node="5jACUPFAp54" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFBO6a" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFBO6c" role="3clFbx">
            <node concept="3clFbF" id="5jACUPFC6t8" role="3cqZAp">
              <node concept="2OqwBi" id="5jACUPFC6OV" role="3clFbG">
                <node concept="37vLTw" id="5jACUPFC6t6" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
                </node>
                <node concept="kI3uX" id="5jACUPFCh2d" role="2OqNvi">
                  <node concept="37vLTw" id="4uvvnUOtKEz" role="kIiFs">
                    <ref role="3cqZAo" node="4uvvnUOtIvH" resolve="devicePtr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5jACUPFBPxU" role="3clFbw">
            <node concept="37vLTw" id="5jACUPFBOJ_" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFBnUf" resolve="watchables" />
            </node>
            <node concept="1v1jN8" id="5jACUPFC6l1" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPFAnIm" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPFAoqr" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3wAsKTkkD8j" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_X3O" role="jymVt">
      <property role="TrG5h" value="isWatched" />
      <node concept="3clFbS" id="5jACUPF_X3Q" role="3clF47">
        <node concept="3cpWs8" id="5jACUPFCtc6" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFCtc7" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="2sp9CU" id="5jACUPFCtc5" role="1tU5fm">
              <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="2OqwBi" id="6K_0vqj64c3" role="33vP2m">
              <node concept="1PxgMI" id="6K_0vqj5Y4y" role="2Oq$k0">
                <node concept="chp4Y" id="6K_0vqj610a" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                </node>
                <node concept="2OqwBi" id="6K_0vqj5Ewg" role="1m5AlR">
                  <node concept="37vLTw" id="6K_0vqj5B6g" role="2Oq$k0">
                    <ref role="3cqZAo" node="6K_0vqj5piU" resolve="resource" />
                  </node>
                  <node concept="1mfA1w" id="6K_0vqj5IcB" role="2OqNvi" />
                </node>
              </node>
              <node concept="iZEcu" id="6K_0vqj67pi" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jACUPFCuGj" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFCuGk" role="3cpWs9">
            <property role="TrG5h" value="watchables" />
            <node concept="2hMVRd" id="5jACUPFCuGe" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFCuGh" role="2hN53Y">
                <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFCuGl" role="33vP2m">
              <node concept="37vLTw" id="5jACUPFCuGm" role="3ElVtu">
                <ref role="3cqZAo" node="5jACUPFCtc7" resolve="device" />
              </node>
              <node concept="37vLTw" id="5jACUPFCuGn" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5jACUPFCyNe" role="3cqZAp">
          <node concept="1Wc70l" id="5jACUPFCGTw" role="3cqZAk">
            <node concept="2OqwBi" id="5jACUPFCL6o" role="3uHU7w">
              <node concept="37vLTw" id="5jACUPFCItp" role="2Oq$k0">
                <ref role="3cqZAo" node="5jACUPFCuGk" resolve="watchables" />
              </node>
              <node concept="3JPx81" id="5jACUPFCZdC" role="2OqNvi">
                <node concept="1rXfSq" id="5jACUPFDbYb" role="25WWJ7">
                  <ref role="37wK5l" node="6K_0vqjdycD" resolve="watchable" />
                  <node concept="37vLTw" id="6K_0vqj5sXz" role="37wK5m">
                    <ref role="3cqZAo" node="6K_0vqj5piU" resolve="resource" />
                  </node>
                  <node concept="37vLTw" id="5jACUPFDbY9" role="37wK5m">
                    <ref role="3cqZAo" node="5jACUPFApEf" resolve="functionBlock" />
                  </node>
                  <node concept="37vLTw" id="5jACUPFDbYa" role="37wK5m">
                    <ref role="3cqZAo" node="5jACUPFApEh" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5jACUPFCDMn" role="3uHU7B">
              <node concept="37vLTw" id="5jACUPFCCg2" role="3uHU7B">
                <ref role="3cqZAo" node="5jACUPFCuGk" resolve="watchables" />
              </node>
              <node concept="10Nm6u" id="5jACUPFCFKU" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5jACUPF_X3X" role="3clF45" />
      <node concept="37vLTG" id="6K_0vqj5piU" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="6K_0vqj5piV" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFApEf" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3Tqbb2" id="5jACUPFApEg" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFApEh" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="5jACUPFApEi" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5jACUPF_X3W" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5jACUPFCqEC" role="jymVt" />
    <node concept="2YIFZL" id="6K_0vqjdycD" role="jymVt">
      <property role="TrG5h" value="watchable" />
      <node concept="3clFbS" id="6K_0vqjdycN" role="3clF47">
        <node concept="3cpWs6" id="6K_0vqjdycO" role="3cqZAp">
          <node concept="2ShNRf" id="6K_0vqjdycP" role="3cqZAk">
            <node concept="1pGfFk" id="6K_0vqjdycQ" role="2ShVmc">
              <ref role="37wK5l" node="3wAsKTkjS1E" resolve="Watchable" />
              <node concept="2OqwBi" id="6K_0vqjdycR" role="37wK5m">
                <node concept="37vLTw" id="6K_0vqjdycS" role="2Oq$k0">
                  <ref role="3cqZAo" node="6K_0vqjdycH" resolve="resource" />
                </node>
                <node concept="iZEcu" id="6K_0vqjdycT" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="6K_0vqjdycU" role="37wK5m">
                <node concept="37vLTw" id="6K_0vqjdycV" role="2Oq$k0">
                  <ref role="3cqZAo" node="6K_0vqjdycJ" resolve="functionBlock" />
                </node>
                <node concept="iZEcu" id="6K_0vqjdycW" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="6K_0vqjdycX" role="37wK5m">
                <ref role="3cqZAo" node="6K_0vqjdycL" resolve="port" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6K_0vqjdycG" role="3clF45">
        <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
      </node>
      <node concept="37vLTG" id="6K_0vqjdycH" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="6K_0vqjdycI" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="6K_0vqjdycJ" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3Tqbb2" id="6K_0vqjdycK" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="6K_0vqjdycL" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="6K_0vqjdycM" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="1R4IoyRy0on" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5jACUPFDzji" role="jymVt" />
    <node concept="3clFb_" id="5jACUPFDAmD" role="jymVt">
      <property role="TrG5h" value="addWatchedValueListener" />
      <node concept="3clFbS" id="5jACUPFDAmG" role="3clF47">
        <node concept="3cpWs8" id="5jACUPFDOkC" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFDOkD" role="3cpWs9">
            <property role="TrG5h" value="listeners" />
            <node concept="2hMVRd" id="5jACUPFE0B3" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFE0B5" role="2hN53Y">
                <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFDOkE" role="33vP2m">
              <node concept="37vLTw" id="5jACUPFDOkF" role="3ElVtu">
                <ref role="3cqZAo" node="5jACUPFDCvF" resolve="watchable" />
              </node>
              <node concept="37vLTw" id="5jACUPFDOkG" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFDOdV" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFDOdX" role="3clFbx">
            <node concept="3clFbF" id="5jACUPFDSfn" role="3cqZAp">
              <node concept="37vLTI" id="5jACUPFDX5L" role="3clFbG">
                <node concept="37vLTI" id="6K_0vqjmNFo" role="37vLTx">
                  <node concept="37vLTw" id="6K_0vqjmOhJ" role="37vLTJ">
                    <ref role="3cqZAo" node="5jACUPFDOkD" resolve="listeners" />
                  </node>
                  <node concept="2ShNRf" id="5jACUPFDXhB" role="37vLTx">
                    <node concept="2i4dXS" id="5jACUPFDYOU" role="2ShVmc">
                      <node concept="3uibUv" id="5jACUPFDZ$U" role="HW$YZ">
                        <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="5jACUPFDW8K" role="37vLTJ">
                  <node concept="37vLTw" id="5jACUPFDWkX" role="3ElVtu">
                    <ref role="3cqZAo" node="5jACUPFDCvF" resolve="watchable" />
                  </node>
                  <node concept="37vLTw" id="5jACUPFDVyN" role="3ElQJh">
                    <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5jACUPFDRTJ" role="3clFbw">
            <node concept="10Nm6u" id="5jACUPFDSaS" role="3uHU7w" />
            <node concept="37vLTw" id="5jACUPFDOPt" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPFDOkD" resolve="listeners" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jACUPFE0WH" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPFE1B0" role="3clFbG">
            <node concept="37vLTw" id="5jACUPFE0WF" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFDOkD" resolve="listeners" />
            </node>
            <node concept="TSZUe" id="5jACUPFEeg3" role="2OqNvi">
              <node concept="37vLTw" id="5jACUPFEez_" role="25WWJ7">
                <ref role="3cqZAo" node="5jACUPFDHNn" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPFET7r" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPFDAhu" role="3clF45" />
      <node concept="37vLTG" id="5jACUPFDCvF" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="5jACUPFDDY1" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFDHNn" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="5jACUPFDIYk" role="1tU5fm">
          <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPFEXBj" role="jymVt" />
    <node concept="3clFb_" id="5jACUPFDJsw" role="jymVt">
      <property role="TrG5h" value="removeWatchedValueListener" />
      <node concept="3clFbS" id="5jACUPFDJsx" role="3clF47">
        <node concept="3cpWs8" id="5jACUPFEeF5" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFEeF6" role="3cpWs9">
            <property role="TrG5h" value="listeners" />
            <node concept="2hMVRd" id="5jACUPFEeF7" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFEeF8" role="2hN53Y">
                <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFEeF9" role="33vP2m">
              <node concept="37vLTw" id="5jACUPFEeFa" role="3ElVtu">
                <ref role="3cqZAo" node="5jACUPFDJs$" resolve="watchable" />
              </node>
              <node concept="37vLTw" id="5jACUPFEeFb" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFEeFc" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFEeFd" role="3clFbx">
            <node concept="3cpWs6" id="5jACUPFEf0a" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5jACUPFEeFo" role="3clFbw">
            <node concept="10Nm6u" id="5jACUPFEeFp" role="3uHU7w" />
            <node concept="37vLTw" id="5jACUPFEeFq" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPFEeF6" resolve="listeners" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jACUPFEfvI" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPFEgp5" role="3clFbG">
            <node concept="37vLTw" id="5jACUPFEfvG" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFEeF6" resolve="listeners" />
            </node>
            <node concept="3dhRuq" id="5jACUPFEt2M" role="2OqNvi">
              <node concept="37vLTw" id="5jACUPFEtmN" role="25WWJ7">
                <ref role="3cqZAo" node="5jACUPFDJsA" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFEvh6" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFEvh8" role="3clFbx">
            <node concept="3clFbF" id="5jACUPFEHX0" role="3cqZAp">
              <node concept="2OqwBi" id="5jACUPFEIr9" role="3clFbG">
                <node concept="37vLTw" id="5jACUPFEHWY" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
                </node>
                <node concept="kI3uX" id="5jACUPFESEj" role="2OqNvi">
                  <node concept="37vLTw" id="5jACUPFESKd" role="kIiFs">
                    <ref role="3cqZAo" node="5jACUPFDJs$" resolve="watchable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5jACUPFExeK" role="3clFbw">
            <node concept="37vLTw" id="5jACUPFEwzE" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFEeF6" resolve="listeners" />
            </node>
            <node concept="1v1jN8" id="5jACUPFEHOB" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPFEV2e" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPFDJsz" role="3clF45" />
      <node concept="37vLTG" id="5jACUPFDJs$" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="5jACUPFDJs_" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFDJsA" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="5jACUPFDJsB" role="1tU5fm">
          <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6K_0vqj8ybz" role="jymVt" />
    <node concept="2YIFZL" id="6VfPrztaQyR" role="jymVt">
      <property role="TrG5h" value="resolveWatches" />
      <node concept="3clFbS" id="6VfPrztaQyU" role="3clF47">
        <node concept="SfApY" id="5jACUPF$7Zm" role="3cqZAp">
          <node concept="TDmWw" id="5jACUPF$j_L" role="TEbGg">
            <node concept="3cpWsn" id="5jACUPF$j_M" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5jACUPF$jV2" role="1tU5fm">
                <ref role="3uigEE" to="mmaq:~JDOMException" resolve="JDOMException" />
              </node>
            </node>
            <node concept="3clFbS" id="5jACUPF$j_O" role="TDEfX">
              <node concept="RRSsy" id="5jACUPF$kek" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="37vLTw" id="5jACUPF$kel" role="RRSow">
                  <ref role="3cqZAo" node="5jACUPF$j_M" resolve="e" />
                </node>
                <node concept="Xl_RD" id="5jACUPF$kem" role="RRSoy">
                  <property role="Xl_RC" value="can't resolve watches" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5jACUPF$7Zo" role="SfCbr">
            <node concept="3cpWs8" id="5jACUPF$6j4" role="3cqZAp">
              <node concept="3cpWsn" id="5jACUPF$6j5" role="3cpWs9">
                <property role="TrG5h" value="doc" />
                <node concept="3uibUv" id="5jACUPF$6iS" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
                </node>
                <node concept="2YIFZM" id="5jACUPF$6j6" role="33vP2m">
                  <ref role="37wK5l" to="18ew:~JDOMUtil.loadDocument(java.io.InputStream):org.jdom.Document" resolve="loadDocument" />
                  <ref role="1Pybhc" to="18ew:~JDOMUtil" resolve="JDOMUtil" />
                  <node concept="2ShNRf" id="5jACUPF$6j7" role="37wK5m">
                    <node concept="1pGfFk" id="5jACUPF$6j8" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~ByteArrayInputStream.&lt;init&gt;(byte[])" resolve="ByteArrayInputStream" />
                      <node concept="2OqwBi" id="5jACUPF$6j9" role="37wK5m">
                        <node concept="37vLTw" id="5jACUPF$6ja" role="2Oq$k0">
                          <ref role="3cqZAo" node="6VfPrztaRiv" resolve="watch" />
                        </node>
                        <node concept="liA8E" id="5jACUPF$6jb" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.getBytes():byte[]" resolve="getBytes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5jACUPF$7Zn" role="3cqZAp" />
            <node concept="3cpWs8" id="5jACUPF$oIl" role="3cqZAp">
              <node concept="3cpWsn" id="5jACUPF$oIo" role="3cpWs9">
                <property role="TrG5h" value="watches" />
                <node concept="3rvAFt" id="5jACUPF_33G" role="1tU5fm">
                  <node concept="3uibUv" id="5jACUPF_3lA" role="3rvQeY">
                    <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
                  </node>
                  <node concept="17QB3L" id="5jACUPF_3Dx" role="3rvSg0" />
                </node>
                <node concept="2ShNRf" id="5jACUPF$wM5" role="33vP2m">
                  <node concept="3rGOSV" id="5jACUPF_54x" role="2ShVmc">
                    <node concept="3uibUv" id="5jACUPF_5nc" role="3rHrn6">
                      <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
                    </node>
                    <node concept="17QB3L" id="5jACUPF_5Bi" role="3rHtpV" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5jACUPF$oxh" role="3cqZAp" />
            <node concept="3cpWs8" id="6K_0vqj6o27" role="3cqZAp">
              <node concept="3cpWsn" id="6K_0vqj6o28" role="3cpWs9">
                <property role="TrG5h" value="watchesElement" />
                <node concept="3uibUv" id="6K_0vqj6o1P" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2OqwBi" id="6K_0vqj6o29" role="33vP2m">
                  <node concept="2OqwBi" id="6K_0vqj6o2a" role="2Oq$k0">
                    <node concept="37vLTw" id="6K_0vqj6o2b" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jACUPF$6j5" resolve="doc" />
                    </node>
                    <node concept="liA8E" id="6K_0vqj6o2c" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Document.getRootElement():org.jdom.Element" resolve="getRootElement" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6K_0vqj6o2d" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getChild(java.lang.String):org.jdom.Element" resolve="getChild" />
                    <node concept="Xl_RD" id="6K_0vqj6o2e" role="37wK5m">
                      <property role="Xl_RC" value="Watches" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6K_0vqj6pcG" role="3cqZAp">
              <node concept="2GrKxI" id="6K_0vqj6pcI" role="2Gsz3X">
                <property role="TrG5h" value="resourceElement" />
              </node>
              <node concept="2OqwBi" id="6K_0vqj6qs2" role="2GsD0m">
                <node concept="37vLTw" id="6K_0vqj6pOp" role="2Oq$k0">
                  <ref role="3cqZAo" node="6K_0vqj6o28" resolve="watchesElement" />
                </node>
                <node concept="liA8E" id="6K_0vqj6xuV" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                  <node concept="Xl_RD" id="6K_0vqj6xPL" role="37wK5m">
                    <property role="Xl_RC" value="Resource" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6K_0vqj6pcM" role="2LFqv$">
                <node concept="3cpWs8" id="6K_0vqj6Utg" role="3cqZAp">
                  <node concept="3cpWsn" id="6K_0vqj6Utj" role="3cpWs9">
                    <property role="TrG5h" value="resourceName" />
                    <node concept="17QB3L" id="6K_0vqj6Ute" role="1tU5fm" />
                    <node concept="2OqwBi" id="6K_0vqj6VCU" role="33vP2m">
                      <node concept="2GrUjf" id="6K_0vqj6UXY" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6K_0vqj6pcI" resolve="resourceElement" />
                      </node>
                      <node concept="liA8E" id="6K_0vqj7vH0" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                        <node concept="Xl_RD" id="6K_0vqj7w1d" role="37wK5m">
                          <property role="Xl_RC" value="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6K_0vqjbfz4" role="3cqZAp">
                  <node concept="3cpWsn" id="6K_0vqjbfz5" role="3cpWs9">
                    <property role="TrG5h" value="resource" />
                    <node concept="3Tqbb2" id="6K_0vqjbhK5" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                    </node>
                    <node concept="2OqwBi" id="6K_0vqjbfz7" role="33vP2m">
                      <node concept="2OqwBi" id="6K_0vqjbfz8" role="2Oq$k0">
                        <node concept="37vLTw" id="6K_0vqjbfz9" role="2Oq$k0">
                          <ref role="3cqZAo" node="6K_0vqj9HS6" resolve="device" />
                        </node>
                        <node concept="3Tsc0h" id="6K_0vqjbfza" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="6K_0vqjbfzb" role="2OqNvi">
                        <node concept="1bVj0M" id="6K_0vqjbfzc" role="23t8la">
                          <node concept="3clFbS" id="6K_0vqjbfzd" role="1bW5cS">
                            <node concept="3clFbF" id="6K_0vqjbfze" role="3cqZAp">
                              <node concept="17R0WA" id="6K_0vqjbfzf" role="3clFbG">
                                <node concept="37vLTw" id="6K_0vqjbfzg" role="3uHU7w">
                                  <ref role="3cqZAo" node="6K_0vqj6Utj" resolve="resourceName" />
                                </node>
                                <node concept="2OqwBi" id="6K_0vqjbfzh" role="3uHU7B">
                                  <node concept="37vLTw" id="6K_0vqjbfzi" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6K_0vqjbfzk" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="6K_0vqjbfzj" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6K_0vqjbfzk" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6K_0vqjbfzl" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="6K_0vqj6yC9" role="3cqZAp">
                  <node concept="2GrKxI" id="6K_0vqj6yCa" role="2Gsz3X">
                    <property role="TrG5h" value="fbElement" />
                  </node>
                  <node concept="2OqwBi" id="6K_0vqj6zeP" role="2GsD0m">
                    <node concept="2GrUjf" id="6K_0vqj6z7J" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6K_0vqj6pcI" resolve="resourceElement" />
                    </node>
                    <node concept="liA8E" id="6K_0vqj6Tb3" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                      <node concept="Xl_RD" id="6K_0vqj6TCm" role="37wK5m">
                        <property role="Xl_RC" value="FB" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6K_0vqj6yCc" role="2LFqv$">
                    <node concept="3cpWs8" id="6K_0vqj7wsN" role="3cqZAp">
                      <node concept="3cpWsn" id="6K_0vqj7wsO" role="3cpWs9">
                        <property role="TrG5h" value="fbName" />
                        <node concept="17QB3L" id="6K_0vqj7wsP" role="1tU5fm" />
                        <node concept="2OqwBi" id="6K_0vqj7wsQ" role="33vP2m">
                          <node concept="2GrUjf" id="6K_0vqj7xcQ" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6K_0vqj6yCa" resolve="fbElement" />
                          </node>
                          <node concept="liA8E" id="6K_0vqj7wsS" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                            <node concept="Xl_RD" id="6K_0vqj7wsT" role="37wK5m">
                              <property role="Xl_RC" value="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6K_0vqjbi1H" role="3cqZAp">
                      <node concept="3cpWsn" id="6K_0vqjbi1I" role="3cpWs9">
                        <property role="TrG5h" value="fb" />
                        <node concept="3Tqbb2" id="6K_0vqjbi1J" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                        </node>
                        <node concept="2OqwBi" id="6K_0vqjbi1K" role="33vP2m">
                          <node concept="2OqwBi" id="6K_0vqjbi1L" role="2Oq$k0">
                            <node concept="37vLTw" id="6K_0vqjbjSc" role="2Oq$k0">
                              <ref role="3cqZAo" node="6K_0vqjbfz5" resolve="resource" />
                            </node>
                            <node concept="2qgKlT" id="6K_0vqjbMyP" role="2OqNvi">
                              <ref role="37wK5l" to="t4dg:6K_0vqjbmeG" resolve="allFunctionBlocks" />
                            </node>
                          </node>
                          <node concept="1z4cxt" id="6K_0vqjbi1O" role="2OqNvi">
                            <node concept="1bVj0M" id="6K_0vqjbi1P" role="23t8la">
                              <node concept="3clFbS" id="6K_0vqjbi1Q" role="1bW5cS">
                                <node concept="3clFbF" id="6K_0vqjbi1R" role="3cqZAp">
                                  <node concept="17R0WA" id="6K_0vqjbi1S" role="3clFbG">
                                    <node concept="37vLTw" id="6K_0vqjbNGg" role="3uHU7w">
                                      <ref role="3cqZAo" node="6K_0vqj7wsO" resolve="fbName" />
                                    </node>
                                    <node concept="2OqwBi" id="6K_0vqjbi1U" role="3uHU7B">
                                      <node concept="37vLTw" id="6K_0vqjbi1V" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6K_0vqjbi1X" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="6K_0vqjbNh_" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6K_0vqjbi1X" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6K_0vqjbi1Y" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2Gpval" id="6K_0vqj7xYm" role="3cqZAp">
                      <node concept="2GrKxI" id="6K_0vqj7xYo" role="2Gsz3X">
                        <property role="TrG5h" value="portElement" />
                      </node>
                      <node concept="2OqwBi" id="6K_0vqj7I95" role="2GsD0m">
                        <node concept="2GrUjf" id="6K_0vqj7HXA" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6K_0vqj6yCa" resolve="fbElement" />
                        </node>
                        <node concept="liA8E" id="6K_0vqj8vvx" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                          <node concept="Xl_RD" id="6K_0vqj8vUU" role="37wK5m">
                            <property role="Xl_RC" value="Port" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="6K_0vqj7xYs" role="2LFqv$">
                        <node concept="3cpWs8" id="6K_0vqj8x9j" role="3cqZAp">
                          <node concept="3cpWsn" id="6K_0vqj8x9m" role="3cpWs9">
                            <property role="TrG5h" value="portName" />
                            <node concept="17QB3L" id="6K_0vqj8x9h" role="1tU5fm" />
                            <node concept="2OqwBi" id="6K_0vqj8BUZ" role="33vP2m">
                              <node concept="2GrUjf" id="6K_0vqj8ARL" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6K_0vqj7xYo" resolve="portElement" />
                              </node>
                              <node concept="liA8E" id="6K_0vqj9BJ_" role="2OqNvi">
                                <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                                <node concept="Xl_RD" id="6K_0vqj9CfW" role="37wK5m">
                                  <property role="Xl_RC" value="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6K_0vqjd3PX" role="3cqZAp">
                          <node concept="3cpWsn" id="6K_0vqjd3PY" role="3cpWs9">
                            <property role="TrG5h" value="dataElement" />
                            <node concept="3uibUv" id="6K_0vqjd3Py" role="1tU5fm">
                              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                            </node>
                            <node concept="2OqwBi" id="6K_0vqjd3PZ" role="33vP2m">
                              <node concept="2GrUjf" id="6K_0vqjd3Q0" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6K_0vqj7xYo" resolve="portElement" />
                              </node>
                              <node concept="liA8E" id="6K_0vqjd3Q1" role="2OqNvi">
                                <ref role="37wK5l" to="mmaq:~Element.getChild(java.lang.String):org.jdom.Element" resolve="getChild" />
                                <node concept="Xl_RD" id="6K_0vqjd3Q2" role="37wK5m">
                                  <property role="Xl_RC" value="Data" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6K_0vqjd5KO" role="3cqZAp">
                          <node concept="3clFbS" id="6K_0vqjd5KQ" role="3clFbx">
                            <node concept="3clFbF" id="6K_0vqjdt42" role="3cqZAp">
                              <node concept="37vLTI" id="6K_0vqjdThk" role="3clFbG">
                                <node concept="2OqwBi" id="6K_0vqjdV3D" role="37vLTx">
                                  <node concept="37vLTw" id="6K_0vqjdTR9" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6K_0vqjd3PY" resolve="dataElement" />
                                  </node>
                                  <node concept="liA8E" id="6K_0vqjfaBS" role="2OqNvi">
                                    <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                                    <node concept="Xl_RD" id="6K_0vqjfaW1" role="37wK5m">
                                      <property role="Xl_RC" value="value" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3EllGN" id="6K_0vqjdxAk" role="37vLTJ">
                                  <node concept="1rXfSq" id="6K_0vqjdzM1" role="3ElVtu">
                                    <ref role="37wK5l" node="6K_0vqjdycD" resolve="watchable" />
                                    <node concept="37vLTw" id="6K_0vqjd$ii" role="37wK5m">
                                      <ref role="3cqZAo" node="6K_0vqjbfz5" resolve="resource" />
                                    </node>
                                    <node concept="37vLTw" id="6K_0vqjd$HN" role="37wK5m">
                                      <ref role="3cqZAo" node="6K_0vqjbi1I" resolve="fb" />
                                    </node>
                                    <node concept="37vLTw" id="6K_0vqjd_Fv" role="37wK5m">
                                      <ref role="3cqZAo" node="6K_0vqj8x9m" resolve="portName" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="6K_0vqjdt40" role="3ElQJh">
                                    <ref role="3cqZAo" node="5jACUPF$oIo" resolve="watches" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="6K_0vqjdsp5" role="3clFbw">
                            <node concept="10Nm6u" id="6K_0vqjdsB7" role="3uHU7w" />
                            <node concept="37vLTw" id="6K_0vqjd69O" role="3uHU7B">
                              <ref role="3cqZAo" node="6K_0vqjd3PY" resolve="dataElement" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5jACUPF$kB_" role="3cqZAp" />
            <node concept="3cpWs6" id="5jACUPF$kKS" role="3cqZAp">
              <node concept="37vLTw" id="5jACUPF_5Gg" role="3cqZAk">
                <ref role="3cqZAo" node="5jACUPF$oIo" resolve="watches" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5jACUPF$7Zp" role="TEbGg">
            <node concept="3cpWsn" id="5jACUPF$7Zr" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5jACUPF$8eT" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="5jACUPF$7Zv" role="TDEfX">
              <node concept="RRSsy" id="5jACUPF$hRs" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="37vLTw" id="5jACUPF$hRw" role="RRSow">
                  <ref role="3cqZAo" node="5jACUPF$7Zr" resolve="e" />
                </node>
                <node concept="Xl_RD" id="5jACUPF$i5U" role="RRSoy">
                  <property role="Xl_RC" value="can't resolve watches" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5jACUPFDs$H" role="3cqZAp">
          <node concept="10Nm6u" id="5jACUPFDsED" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6VfPrztaPv8" role="1B3o_S" />
      <node concept="3rvAFt" id="5jACUPF_2kb" role="3clF45">
        <node concept="3uibUv" id="5jACUPF_2zp" role="3rvQeY">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
        <node concept="17QB3L" id="5jACUPF_2IO" role="3rvSg0" />
      </node>
      <node concept="37vLTG" id="6K_0vqj9HS6" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3Tqbb2" id="6K_0vqj9ID2" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
      </node>
      <node concept="37vLTG" id="6VfPrztaRiv" role="3clF46">
        <property role="TrG5h" value="watch" />
        <node concept="17QB3L" id="6VfPrztaRiu" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_67V" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_oRt" role="jymVt">
      <property role="TrG5h" value="start" />
      <node concept="3clFbS" id="5jACUPF_oRv" role="3clF47">
        <node concept="3clFbJ" id="5jACUPF_oRw" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPF_oRx" role="3clFbx">
            <node concept="3clFbF" id="5jACUPF_oRB" role="3cqZAp">
              <node concept="37vLTI" id="5jACUPF_oRC" role="3clFbG">
                <node concept="37vLTw" id="5jACUPF_oSI" role="37vLTJ">
                  <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                </node>
                <node concept="1rXfSq" id="5jACUPF_swJ" role="37vLTx">
                  <ref role="37wK5l" node="5jACUPF_V2G" resolve="watcherThread" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5jACUPF_oSJ" role="3cqZAp">
              <node concept="2OqwBi" id="5jACUPF_oSK" role="3clFbG">
                <node concept="37vLTw" id="5jACUPF_oSL" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                </node>
                <node concept="liA8E" id="5jACUPF_oSM" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.start():void" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5jACUPFHUGu" role="3cqZAp">
              <node concept="37vLTI" id="5jACUPFHV6T" role="3clFbG">
                <node concept="Xjq3P" id="5jACUPFHV7T" role="37vLTx" />
                <node concept="37vLTw" id="5jACUPFHUGs" role="37vLTJ">
                  <ref role="3cqZAo" node="5jACUPF_MvU" resolve="INSTANCE" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5jACUPF_sN7" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5jACUPF_oSQ" role="3clFbw">
            <node concept="37vLTw" id="5jACUPF_oSR" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
            </node>
            <node concept="10Nm6u" id="5jACUPF_oSS" role="3uHU7w" />
          </node>
        </node>
        <node concept="YS8fn" id="5jACUPF_sV0" role="3cqZAp">
          <node concept="2ShNRf" id="5jACUPF_sY8" role="YScLw">
            <node concept="1pGfFk" id="5jACUPF_tRx" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="Xl_RD" id="5jACUPF_tXI" role="37wK5m">
                <property role="Xl_RC" value="Double initialization" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5jACUPF_oST" role="3clF45" />
      <node concept="3Tm1VV" id="5jACUPF_oSU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5jACUPF_uVF" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_vta" role="jymVt">
      <property role="TrG5h" value="stop" />
      <node concept="3clFbS" id="5jACUPF_vtd" role="3clF47">
        <node concept="SfApY" id="5jACUPF_yUQ" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPF_yUS" role="SfCbr">
            <node concept="3clFbJ" id="5jACUPF_vGU" role="3cqZAp">
              <node concept="3y3z36" id="5jACUPF_wmp" role="3clFbw">
                <node concept="10Nm6u" id="5jACUPF_wpE" role="3uHU7w" />
                <node concept="37vLTw" id="5jACUPF_vI8" role="3uHU7B">
                  <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                </node>
              </node>
              <node concept="3clFbS" id="5jACUPF_vGW" role="3clFbx">
                <node concept="3clFbF" id="6bryThmfFlf" role="3cqZAp">
                  <node concept="2OqwBi" id="6bryThmfG71" role="3clFbG">
                    <node concept="37vLTw" id="6bryThmfFld" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                    </node>
                    <node concept="liA8E" id="6bryThmfH4M" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Thread.interrupt():void" resolve="interrupt" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5jACUPF_wyb" role="3cqZAp">
                  <node concept="2OqwBi" id="5jACUPF_wJs" role="3clFbG">
                    <node concept="37vLTw" id="5jACUPF_wya" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                    </node>
                    <node concept="liA8E" id="5jACUPF_yGT" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Thread.join():void" resolve="join" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5jACUPF_Dsc" role="3cqZAp">
                  <node concept="37vLTI" id="5jACUPF_EmI" role="3clFbG">
                    <node concept="10Nm6u" id="5jACUPF_Eoa" role="37vLTx" />
                    <node concept="37vLTw" id="5jACUPF_Dsa" role="37vLTJ">
                      <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5jACUPF_NW0" role="3cqZAp">
                  <node concept="37vLTI" id="5jACUPF_OgX" role="3clFbG">
                    <node concept="10Nm6u" id="5jACUPF_Ok4" role="37vLTx" />
                    <node concept="37vLTw" id="5jACUPF_NVY" role="37vLTJ">
                      <ref role="3cqZAo" node="5jACUPF_MvU" resolve="INSTANCE" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5jACUPF_Exh" role="3cqZAp" />
              </node>
            </node>
            <node concept="YS8fn" id="5jACUPF_Ft_" role="3cqZAp">
              <node concept="2ShNRf" id="5jACUPF_Fum" role="YScLw">
                <node concept="1pGfFk" id="5jACUPF_G0$" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="5jACUPF_G_4" role="37wK5m">
                    <property role="Xl_RC" value="Stop of non-initialized" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5jACUPF_yUT" role="TEbGg">
            <node concept="3cpWsn" id="5jACUPF_yUV" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5jACUPF_B7p" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
              </node>
            </node>
            <node concept="3clFbS" id="5jACUPF_yUZ" role="TDEfX">
              <node concept="RRSsy" id="5jACUPF_BmC" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="5jACUPF_BmE" role="RRSoy">
                  <property role="Xl_RC" value="interurupted during stop" />
                </node>
                <node concept="37vLTw" id="5jACUPF_BmG" role="RRSow">
                  <ref role="3cqZAo" node="5jACUPF_yUV" resolve="e" />
                </node>
              </node>
              <node concept="3clFbF" id="5jACUPF_EFt" role="3cqZAp">
                <node concept="37vLTI" id="5jACUPF_Fkx" role="3clFbG">
                  <node concept="10Nm6u" id="5jACUPF_Fom" role="37vLTx" />
                  <node concept="37vLTw" id="5jACUPF_EFr" role="37vLTJ">
                    <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPF_vdY" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_vkx" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5jACUPF_qtw" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_V2G" role="jymVt">
      <property role="TrG5h" value="watcherThread" />
      <node concept="3clFbS" id="5jACUPF_V2I" role="3clF47">
        <node concept="3clFbF" id="5jACUPF_V2J" role="3cqZAp">
          <node concept="2ShNRf" id="5jACUPF_V2K" role="3clFbG">
            <node concept="1pGfFk" id="5jACUPF_V2L" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
              <node concept="1bVj0M" id="5jACUPF_V2M" role="37wK5m">
                <node concept="3clFbS" id="5jACUPF_V2N" role="1bW5cS">
                  <node concept="SfApY" id="5jACUPF_V2O" role="3cqZAp">
                    <node concept="3clFbS" id="5jACUPF_V2P" role="SfCbr">
                      <node concept="2$JKZl" id="5jACUPF_V2Q" role="3cqZAp">
                        <node concept="3clFbS" id="5jACUPF_V2R" role="2LFqv$">
                          <node concept="3clFbH" id="5jACUPF_V2S" role="3cqZAp" />
                          <node concept="3cpWs8" id="5jACUPF_V2T" role="3cqZAp">
                            <node concept="3cpWsn" id="5jACUPF_V2U" role="3cpWs9">
                              <property role="TrG5h" value="REPO" />
                              <node concept="3uibUv" id="5jACUPF_V2V" role="1tU5fm">
                                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                              </node>
                              <node concept="2YIFZM" id="5jACUPF_V2W" role="33vP2m">
                                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5jACUPF_V2X" role="3cqZAp">
                            <node concept="2OqwBi" id="5jACUPF_V2Y" role="3clFbG">
                              <node concept="2OqwBi" id="5jACUPF_V2Z" role="2Oq$k0">
                                <node concept="37vLTw" id="5jACUPF_V30" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5jACUPF_V2U" resolve="REPO" />
                                </node>
                                <node concept="liA8E" id="5jACUPF_V31" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5jACUPF_V32" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable):void" resolve="runReadInEDT" />
                                <node concept="1bVj0M" id="5jACUPF_V33" role="37wK5m">
                                  <node concept="3clFbS" id="5jACUPF_V34" role="1bW5cS">
                                    <node concept="3clFbH" id="5jACUPF_V35" role="3cqZAp" />
                                    <node concept="2Gpval" id="5jACUPF_V36" role="3cqZAp">
                                      <node concept="2GrKxI" id="5jACUPF_V37" role="2Gsz3X">
                                        <property role="TrG5h" value="devicePtr" />
                                      </node>
                                      <node concept="2OqwBi" id="5jACUPFDhN8" role="2GsD0m">
                                        <node concept="37vLTw" id="5jACUPF_V38" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
                                        </node>
                                        <node concept="3lbrtF" id="5jACUPFDsbY" role="2OqNvi" />
                                      </node>
                                      <node concept="3clFbS" id="5jACUPF_V39" role="2LFqv$">
                                        <node concept="3clFbH" id="5jACUPF_V3a" role="3cqZAp" />
                                        <node concept="SfApY" id="5jACUPF_V3b" role="3cqZAp">
                                          <node concept="3clFbS" id="5jACUPF_V3c" role="SfCbr">
                                            <node concept="3cpWs8" id="6K_0vqj9GiB" role="3cqZAp">
                                              <node concept="3cpWsn" id="6K_0vqj9GiC" role="3cpWs9">
                                                <property role="TrG5h" value="device" />
                                                <node concept="3Tqbb2" id="6K_0vqj9Gin" role="1tU5fm">
                                                  <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                                                </node>
                                                <node concept="2OqwBi" id="6K_0vqj9GiD" role="33vP2m">
                                                  <node concept="2GrUjf" id="6K_0vqjfhl0" role="2Oq$k0">
                                                    <ref role="2Gs0qQ" node="5jACUPF_V37" resolve="devicePtr" />
                                                  </node>
                                                  <node concept="Vyspw" id="6K_0vqj9GiF" role="2OqNvi">
                                                    <node concept="37vLTw" id="6K_0vqj9GiG" role="Vysub">
                                                      <ref role="3cqZAo" node="5jACUPF_V2U" resolve="REPO" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="5jACUPF_V3d" role="3cqZAp">
                                              <node concept="3cpWsn" id="5jACUPF_V3e" role="3cpWs9">
                                                <property role="TrG5h" value="connection" />
                                                <node concept="3uibUv" id="42vv4xsBbTf" role="1tU5fm">
                                                  <ref role="3uigEE" node="7pEplJkHbDy" resolve="DeviceConnection" />
                                                </node>
                                                <node concept="2OqwBi" id="42vv4xsAted" role="33vP2m">
                                                  <node concept="2YIFZM" id="42vv4xsArK2" role="2Oq$k0">
                                                    <ref role="37wK5l" node="42vv4xsA5S3" resolve="getInstance" />
                                                    <ref role="1Pybhc" node="3wAsKTkhPuA" resolve="DevicesFacade" />
                                                  </node>
                                                  <node concept="liA8E" id="42vv4xsBb08" role="2OqNvi">
                                                    <ref role="37wK5l" node="42vv4xs$B7p" resolve="attach" />
                                                    <node concept="37vLTw" id="42vv4xsArK3" role="37wK5m">
                                                      <ref role="3cqZAo" node="6K_0vqj9GiC" resolve="device" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbJ" id="5jACUPF_V3l" role="3cqZAp">
                                              <node concept="3clFbS" id="5jACUPF_V3m" role="3clFbx">
                                                <node concept="2Gpval" id="6K_0vqjfeSI" role="3cqZAp">
                                                  <node concept="2GrKxI" id="6K_0vqjfeSK" role="2Gsz3X">
                                                    <property role="TrG5h" value="watchValue" />
                                                  </node>
                                                  <node concept="1rXfSq" id="6K_0vqjffus" role="2GsD0m">
                                                    <ref role="37wK5l" node="6VfPrztaQyR" resolve="resolveWatches" />
                                                    <node concept="37vLTw" id="6K_0vqjfhGx" role="37wK5m">
                                                      <ref role="3cqZAo" node="6K_0vqj9GiC" resolve="device" />
                                                    </node>
                                                    <node concept="2OqwBi" id="6K_0vqjfjqE" role="37wK5m">
                                                      <node concept="37vLTw" id="6K_0vqjfjqF" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="5jACUPF_V3e" resolve="connection" />
                                                      </node>
                                                      <node concept="liA8E" id="6K_0vqjfjqG" role="2OqNvi">
                                                        <ref role="37wK5l" node="42vv4xsBflu" resolve="readWatches" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbS" id="6K_0vqjfeSO" role="2LFqv$">
                                                    <node concept="3cpWs8" id="6K_0vqjfvbU" role="3cqZAp">
                                                      <node concept="3cpWsn" id="6K_0vqjfvbV" role="3cpWs9">
                                                        <property role="TrG5h" value="listeners" />
                                                        <node concept="2hMVRd" id="6K_0vqjfvaT" role="1tU5fm">
                                                          <node concept="3uibUv" id="6K_0vqjfvaW" role="2hN53Y">
                                                            <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
                                                          </node>
                                                        </node>
                                                        <node concept="3EllGN" id="6K_0vqjfvbW" role="33vP2m">
                                                          <node concept="37vLTw" id="6K_0vqjfvbX" role="3ElQJh">
                                                            <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
                                                          </node>
                                                          <node concept="2OqwBi" id="6K_0vqjfvbY" role="3ElVtu">
                                                            <node concept="2GrUjf" id="6K_0vqjfvbZ" role="2Oq$k0">
                                                              <ref role="2Gs0qQ" node="6K_0vqjfeSK" resolve="watchValue" />
                                                            </node>
                                                            <node concept="3AY5_j" id="6K_0vqjfvc0" role="2OqNvi" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2Gpval" id="6K_0vqjfz3e" role="3cqZAp">
                                                      <node concept="2GrKxI" id="6K_0vqjfz3g" role="2Gsz3X">
                                                        <property role="TrG5h" value="listener" />
                                                      </node>
                                                      <node concept="37vLTw" id="6K_0vqjf_7C" role="2GsD0m">
                                                        <ref role="3cqZAo" node="6K_0vqjfvbV" resolve="listeners" />
                                                      </node>
                                                      <node concept="3clFbS" id="6K_0vqjfz3k" role="2LFqv$">
                                                        <node concept="3clFbF" id="6K_0vqjf_Pc" role="3cqZAp">
                                                          <node concept="2OqwBi" id="6K_0vqjfAsN" role="3clFbG">
                                                            <node concept="2GrUjf" id="6K_0vqjf_Pb" role="2Oq$k0">
                                                              <ref role="2Gs0qQ" node="6K_0vqjfz3g" resolve="listener" />
                                                            </node>
                                                            <node concept="liA8E" id="6K_0vqjfB3i" role="2OqNvi">
                                                              <ref role="37wK5l" node="5jACUPF_hyO" resolve="onValueChanged" />
                                                              <node concept="2OqwBi" id="6K_0vqjfD8D" role="37wK5m">
                                                                <node concept="2GrUjf" id="6K_0vqjfBFo" role="2Oq$k0">
                                                                  <ref role="2Gs0qQ" node="6K_0vqjfeSK" resolve="watchValue" />
                                                                </node>
                                                                <node concept="3AV6Ez" id="6K_0vqjgr17" role="2OqNvi" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3y3z36" id="5jACUPF_V3r" role="3clFbw">
                                                <node concept="10Nm6u" id="5jACUPF_V3s" role="3uHU7w" />
                                                <node concept="37vLTw" id="5jACUPF_V3t" role="3uHU7B">
                                                  <ref role="3cqZAo" node="5jACUPF_V3e" resolve="connection" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="TDmWw" id="5jACUPF_V3u" role="TEbGg">
                                            <node concept="3cpWsn" id="5jACUPF_V3v" role="TDEfY">
                                              <property role="TrG5h" value="e" />
                                              <node concept="3uibUv" id="5jACUPF_V3w" role="1tU5fm">
                                                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="5jACUPF_V3x" role="TDEfX">
                                              <node concept="2xdQw9" id="5jACUPF_V3y" role="3cqZAp">
                                                <property role="2xdLsb" value="error" />
                                                <node concept="37vLTw" id="5jACUPF_V3z" role="9lYJj">
                                                  <ref role="3cqZAo" node="5jACUPF_V3v" resolve="e" />
                                                </node>
                                                <node concept="Xl_RD" id="5jACUPF_V3$" role="9lYJi">
                                                  <property role="Xl_RC" value="During readWatches" />
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
                          <node concept="3clFbH" id="5jACUPF_V3_" role="3cqZAp" />
                          <node concept="3clFbF" id="5jACUPF_V3A" role="3cqZAp">
                            <node concept="2YIFZM" id="5jACUPF_V3B" role="3clFbG">
                              <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                              <ref role="37wK5l" to="wyt6:~Thread.sleep(long):void" resolve="sleep" />
                              <node concept="3cmrfG" id="5jACUPF_V3C" role="37wK5m">
                                <property role="3cmrfH" value="100" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="5jACUPF_V3D" role="2$JKZa">
                          <node concept="2OqwBi" id="5jACUPF_V3E" role="3fr31v">
                            <node concept="2YIFZM" id="5jACUPF_V3F" role="2Oq$k0">
                              <ref role="37wK5l" to="wyt6:~Thread.currentThread():java.lang.Thread" resolve="currentThread" />
                              <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                            </node>
                            <node concept="liA8E" id="5jACUPF_V3G" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Thread.isInterrupted():boolean" resolve="isInterrupted" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="TDmWw" id="5jACUPF_V3H" role="TEbGg">
                      <node concept="3cpWsn" id="5jACUPF_V3I" role="TDEfY">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="5jACUPF_V3J" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5jACUPF_V3K" role="TDEfX">
                        <node concept="3clFbF" id="5jACUPF_V3L" role="3cqZAp">
                          <node concept="2OqwBi" id="5jACUPF_V3M" role="3clFbG">
                            <node concept="2YIFZM" id="5jACUPF_V3N" role="2Oq$k0">
                              <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                              <ref role="37wK5l" to="wyt6:~Thread.currentThread():java.lang.Thread" resolve="currentThread" />
                            </node>
                            <node concept="liA8E" id="5jACUPF_V3O" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Thread.interrupt():void" resolve="interrupt" />
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
      <node concept="3uibUv" id="5jACUPF_V3Q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
      <node concept="3Tm6S6" id="5jACUPF_V3P" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3wAsKTkklCB" role="jymVt" />
    <node concept="312cEg" id="5jACUPF_pOQ" role="jymVt">
      <property role="TrG5h" value="myThread" />
      <node concept="3uibUv" id="5jACUPF_pOT" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
      <node concept="3Tm1VV" id="5jACUPF_pOU" role="1B3o_S" />
    </node>
  </node>
  <node concept="3HP615" id="5jACUPF_gT6">
    <property role="TrG5h" value="WatcherListener" />
    <node concept="2tJIrI" id="5jACUPF_gTC" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_h1b" role="jymVt">
      <property role="TrG5h" value="onWatchAdded" />
      <node concept="3clFbS" id="5jACUPF_h1e" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_h1f" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_h0x" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_h92" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="5jACUPF_h91" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_hao" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_he_" role="jymVt">
      <property role="TrG5h" value="onWatchRemoved" />
      <node concept="3clFbS" id="5jACUPF_heC" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_heD" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_heb" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_hiA" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="5jACUPF_hi_" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5jACUPF_gT7" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="7pEplJkHbCZ">
    <property role="TrG5h" value="DeviceConnector" />
    <node concept="2tJIrI" id="7pEplJkHbDp" role="jymVt" />
    <node concept="3clFb_" id="7pEplJkHbEw" role="jymVt">
      <property role="TrG5h" value="tryConnect" />
      <node concept="37vLTG" id="7pEplJkHbEY" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3Tqbb2" id="7pEplJkHbFr" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
      </node>
      <node concept="3clFbS" id="7pEplJkHbEz" role="3clF47" />
      <node concept="3Tm1VV" id="7pEplJkHbE$" role="1B3o_S" />
      <node concept="3uibUv" id="7pEplJkHbEl" role="3clF45">
        <ref role="3uigEE" node="7pEplJkHbDy" resolve="DeviceConnection" />
      </node>
      <node concept="2AHcQZ" id="7pEplJkHbHI" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="42vv4xs_Jc3" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7pEplJkHbD0" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="7pEplJkHbDy">
    <property role="TrG5h" value="DeviceConnection" />
    <node concept="2tJIrI" id="7pEplJkHbE8" role="jymVt" />
    <node concept="3clFb_" id="42vv4xsAc9v" role="jymVt">
      <property role="TrG5h" value="deployResource" />
      <node concept="3clFbS" id="42vv4xsAc9y" role="3clF47" />
      <node concept="3Tm1VV" id="42vv4xsAc9z" role="1B3o_S" />
      <node concept="3cqZAl" id="42vv4xsAc9l" role="3clF45" />
      <node concept="37vLTG" id="42vv4xsAca6" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="42vv4xsAca5" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="3uibUv" id="42vv4xsAcdA" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="42vv4xsAavU" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkgxxr" role="jymVt">
      <property role="TrG5h" value="addWatch" />
      <node concept="3clFbS" id="3wAsKTkgxxs" role="3clF47" />
      <node concept="3Tm1VV" id="42vv4xsAnLe" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkgxxV" role="3clF45" />
      <node concept="37vLTG" id="4uvvnUOtaeB" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="4uvvnUOtbRD" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkgxxW" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3Tqbb2" id="3wAsKTkgxxX" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkgO2Y" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="3wAsKTkgPbG" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3wAsKTkgxxY" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkh2xU" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkh1jo" role="jymVt">
      <property role="TrG5h" value="removeWatch" />
      <node concept="3clFbS" id="3wAsKTkh1jp" role="3clF47" />
      <node concept="3Tm1VV" id="3wAsKTkh1jN" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkh1jO" role="3clF45" />
      <node concept="37vLTG" id="4uvvnUOtgyd" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="4uvvnUOtgye" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkh1jP" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3Tqbb2" id="3wAsKTkh1jQ" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkh1jR" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="3wAsKTkh1jS" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3wAsKTkh1jT" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="42vv4xsBhx1" role="jymVt" />
    <node concept="3clFb_" id="42vv4xsBflu" role="jymVt">
      <property role="TrG5h" value="readWatches" />
      <node concept="3clFbS" id="42vv4xsBflx" role="3clF47" />
      <node concept="3Tm1VV" id="42vv4xsBfly" role="1B3o_S" />
      <node concept="17QB3L" id="42vv4xsBfjt" role="3clF45" />
      <node concept="3uibUv" id="42vv4xsBhuz" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7pEplJkHbDz" role="1B3o_S" />
    <node concept="3uibUv" id="42vv4xszBQq" role="3HQHJm">
      <ref role="3uigEE" to="guwi:~Closeable" resolve="Closeable" />
    </node>
  </node>
  <node concept="312cEu" id="3wAsKTkhPuA">
    <property role="TrG5h" value="DevicesFacade" />
    <node concept="2tJIrI" id="3wAsKTkhPwO" role="jymVt" />
    <node concept="Wx3nA" id="42vv4xs$usV" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="42vv4xs$u1B" role="1B3o_S" />
      <node concept="3uibUv" id="42vv4xs$upd" role="1tU5fm">
        <ref role="3uigEE" node="3wAsKTkhPuA" resolve="DevicesFacade" />
      </node>
    </node>
    <node concept="2tJIrI" id="42vv4xs$uPn" role="jymVt" />
    <node concept="312cEg" id="42vv4xs$2oV" role="jymVt">
      <property role="TrG5h" value="myConnections" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="42vv4xs$2oZ" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="2sp9CU" id="42vv4xs$2p0" role="11_B2D">
          <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
        <node concept="3uibUv" id="42vv4xs$_Tl" role="11_B2D">
          <ref role="3uigEE" node="7pEplJkHbDy" resolve="DeviceConnection" />
        </node>
      </node>
      <node concept="2ShNRf" id="42vv4xs$2p2" role="33vP2m">
        <node concept="1pGfFk" id="42vv4xs$2p3" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="2sp9CU" id="42vv4xs$2p4" role="1pMfVU">
            <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
          </node>
          <node concept="3uibUv" id="42vv4xs$Awv" role="1pMfVU">
            <ref role="3uigEE" node="7pEplJkHbDy" resolve="DeviceConnection" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="42vv4xs$2oY" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3wAsKTkx6Fn" role="jymVt" />
    <node concept="2tJIrI" id="42vv4xsA4Nb" role="jymVt" />
    <node concept="2YIFZL" id="42vv4xsA5S3" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="42vv4xsA5S6" role="3clF47">
        <node concept="3clFbF" id="42vv4xsA6lD" role="3cqZAp">
          <node concept="37vLTw" id="42vv4xsA6lC" role="3clFbG">
            <ref role="3cqZAo" node="42vv4xs$usV" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="42vv4xsA5xJ" role="1B3o_S" />
      <node concept="3uibUv" id="42vv4xsA6et" role="3clF45">
        <ref role="3uigEE" node="3wAsKTkhPuA" resolve="DevicesFacade" />
      </node>
    </node>
    <node concept="2tJIrI" id="42vv4xsA4Pc" role="jymVt" />
    <node concept="3clFb_" id="42vv4xs$B7p" role="jymVt">
      <property role="TrG5h" value="attach" />
      <node concept="3clFbS" id="42vv4xs$B7r" role="3clF47">
        <node concept="3clFbH" id="42vv4xs$W3G" role="3cqZAp" />
        <node concept="3cpWs8" id="42vv4xs$B7B" role="3cqZAp">
          <node concept="3cpWsn" id="42vv4xs$B7C" role="3cpWs9">
            <property role="TrG5h" value="connection" />
            <node concept="3uibUv" id="42vv4xs$Vhl" role="1tU5fm">
              <ref role="3uigEE" node="7pEplJkHbDy" resolve="DeviceConnection" />
            </node>
            <node concept="2OqwBi" id="42vv4xs$B7E" role="33vP2m">
              <node concept="37vLTw" id="42vv4xs$B7F" role="2Oq$k0">
                <ref role="3cqZAo" node="42vv4xs$2oV" resolve="myConnections" />
              </node>
              <node concept="liA8E" id="42vv4xs$B7G" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function):java.lang.Object" resolve="computeIfAbsent" />
                <node concept="2OqwBi" id="42vv4xs$B7H" role="37wK5m">
                  <node concept="37vLTw" id="42vv4xs$B7I" role="2Oq$k0">
                    <ref role="3cqZAo" node="42vv4xs$B8f" resolve="device" />
                  </node>
                  <node concept="iZEcu" id="42vv4xs$B7J" role="2OqNvi" />
                </node>
                <node concept="1bVj0M" id="42vv4xs$B7K" role="37wK5m">
                  <node concept="3clFbS" id="42vv4xs$B7L" role="1bW5cS">
                    <node concept="2Gpval" id="42vv4xs$BYK" role="3cqZAp">
                      <node concept="2GrKxI" id="42vv4xs$BYM" role="2Gsz3X">
                        <property role="TrG5h" value="connector" />
                      </node>
                      <node concept="2OqwBi" id="42vv4xs$SCo" role="2GsD0m">
                        <node concept="2O5UvJ" id="42vv4xs$RDP" role="2Oq$k0">
                          <ref role="2O5UnU" to="qvjh:42vv4xszEpV" resolve="DeviceConnectorEP" />
                        </node>
                        <node concept="SfwO_" id="42vv4xs$T6W" role="2OqNvi" />
                      </node>
                      <node concept="3clFbS" id="42vv4xs$BYQ" role="2LFqv$">
                        <node concept="SfApY" id="42vv4xs$B7M" role="3cqZAp">
                          <node concept="3clFbS" id="42vv4xs$B7N" role="SfCbr">
                            <node concept="3cpWs8" id="42vv4xs_bHa" role="3cqZAp">
                              <node concept="3cpWsn" id="42vv4xs_bHb" role="3cpWs9">
                                <property role="TrG5h" value="c" />
                                <node concept="3uibUv" id="42vv4xs_bHc" role="1tU5fm">
                                  <ref role="3uigEE" node="7pEplJkHbDy" resolve="DeviceConnection" />
                                </node>
                                <node concept="2OqwBi" id="42vv4xs_d_w" role="33vP2m">
                                  <node concept="2GrUjf" id="42vv4xs_B$I" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="42vv4xs$BYM" resolve="connector" />
                                  </node>
                                  <node concept="liA8E" id="42vv4xs_C1D" role="2OqNvi">
                                    <ref role="37wK5l" node="7pEplJkHbEw" resolve="tryConnect" />
                                    <node concept="37vLTw" id="42vv4xs_Cvp" role="37wK5m">
                                      <ref role="3cqZAo" node="42vv4xs$B8f" resolve="device" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="42vv4xs_Kmd" role="3cqZAp">
                              <node concept="3clFbS" id="42vv4xs_Kmf" role="3clFbx">
                                <node concept="3cpWs6" id="42vv4xs$B7O" role="3cqZAp">
                                  <node concept="37vLTw" id="42vv4xs_MEv" role="3cqZAk">
                                    <ref role="3cqZAo" node="42vv4xs_bHb" resolve="c" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3y3z36" id="42vv4xs_Lk7" role="3clFbw">
                                <node concept="10Nm6u" id="42vv4xs_Lkx" role="3uHU7w" />
                                <node concept="37vLTw" id="42vv4xs_KO1" role="3uHU7B">
                                  <ref role="3cqZAo" node="42vv4xs_bHb" resolve="c" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="TDmWw" id="42vv4xs$B7S" role="TEbGg">
                            <node concept="3cpWsn" id="42vv4xs$B7T" role="TDEfY">
                              <property role="TrG5h" value="e" />
                              <node concept="3uibUv" id="42vv4xs$B7U" role="1tU5fm">
                                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="42vv4xs$B7V" role="TDEfX">
                              <node concept="RRSsy" id="42vv4xs$Eih" role="3cqZAp">
                                <property role="RRSoG" value="error" />
                                <node concept="3cpWs3" id="42vv4xs$IJb" role="RRSoy">
                                  <node concept="2GrUjf" id="42vv4xs$J7I" role="3uHU7B">
                                    <ref role="2Gs0qQ" node="42vv4xs$BYM" resolve="connector" />
                                  </node>
                                  <node concept="Xl_RD" id="42vv4xs$Eij" role="3uHU7w">
                                    <property role="Xl_RC" value=" thrown on device connecting via DevicesFacade#attach" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="42vv4xs$Eil" role="RRSow">
                                  <ref role="3cqZAo" node="42vv4xs$B7T" resolve="e" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="42vv4xs_aTC" role="3cqZAp">
                      <node concept="10Nm6u" id="42vv4xs_aUm" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="42vv4xs$B82" role="1bW2Oz">
                    <property role="TrG5h" value="p" />
                    <node concept="2sp9CU" id="42vv4xs$B83" role="1tU5fm">
                      <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="42vv4xs$XfM" role="3cqZAp">
          <node concept="3clFbS" id="42vv4xs$XfO" role="3clFbx">
            <node concept="3clFbF" id="42vv4xs_3AU" role="3cqZAp">
              <node concept="2OqwBi" id="42vv4xs_3Qs" role="3clFbG">
                <node concept="37vLTw" id="42vv4xs_3AS" role="2Oq$k0">
                  <ref role="3cqZAo" node="42vv4xs$2oV" resolve="myConnections" />
                </node>
                <node concept="liA8E" id="42vv4xs_6Q1" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object):java.lang.Object" resolve="remove" />
                  <node concept="2OqwBi" id="42vv4xs_7gs" role="37wK5m">
                    <node concept="37vLTw" id="42vv4xs_70u" role="2Oq$k0">
                      <ref role="3cqZAo" node="42vv4xs$B8f" resolve="device" />
                    </node>
                    <node concept="iZEcu" id="42vv4xs_88e" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="42vv4xs_3um" role="3clFbw">
            <node concept="10Nm6u" id="42vv4xs_3$z" role="3uHU7w" />
            <node concept="37vLTw" id="42vv4xs$XDM" role="3uHU7B">
              <ref role="3cqZAo" node="42vv4xs$B7C" resolve="connection" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="42vv4xs$B8b" role="3cqZAp">
          <node concept="37vLTw" id="42vv4xs$B8c" role="3cqZAk">
            <ref role="3cqZAo" node="42vv4xs$B7C" resolve="connection" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="42vv4xs_Opx" role="3clF45">
        <ref role="3uigEE" node="7pEplJkHbDy" resolve="DeviceConnection" />
      </node>
      <node concept="37vLTG" id="42vv4xs$B8f" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3Tqbb2" id="42vv4xs$B8g" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
        <node concept="2AHcQZ" id="42vv4xs_9bk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="42vv4xs$B8d" role="1B3o_S" />
      <node concept="2AHcQZ" id="42vv4xs_8j5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="42vv4xs$1X0" role="jymVt" />
    <node concept="3clFb_" id="42vv4xs$24w" role="jymVt">
      <property role="TrG5h" value="start" />
      <node concept="3clFbS" id="42vv4xs$24z" role="3clF47">
        <node concept="3clFbF" id="42vv4xs$xH5" role="3cqZAp">
          <node concept="37vLTI" id="42vv4xs$xO5" role="3clFbG">
            <node concept="Xjq3P" id="42vv4xs$xP8" role="37vLTx" />
            <node concept="37vLTw" id="42vv4xs$xH4" role="37vLTJ">
              <ref role="3cqZAo" node="42vv4xs$usV" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="42vv4xs$21g" role="1B3o_S" />
      <node concept="3cqZAl" id="42vv4xs$22t" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="42vv4xs$27Q" role="jymVt" />
    <node concept="3clFb_" id="42vv4xs$2hD" role="jymVt">
      <property role="TrG5h" value="stop" />
      <node concept="3clFbS" id="42vv4xs$2hG" role="3clF47">
        <node concept="3clFbF" id="42vv4xs$xPQ" role="3cqZAp">
          <node concept="37vLTI" id="42vv4xs$yb4" role="3clFbG">
            <node concept="10Nm6u" id="42vv4xs$yrh" role="37vLTx" />
            <node concept="37vLTw" id="42vv4xs$xPO" role="37vLTJ">
              <ref role="3cqZAo" node="42vv4xs$usV" resolve="INSTANCE" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="42vv4xs$2oh" role="3cqZAp">
          <node concept="2GrKxI" id="42vv4xs$2oi" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="2OqwBi" id="42vv4xs$4O1" role="2GsD0m">
            <node concept="37vLTw" id="42vv4xs$4zm" role="2Oq$k0">
              <ref role="3cqZAo" node="42vv4xs$2oV" resolve="myConnections" />
            </node>
            <node concept="liA8E" id="42vv4xs$7Di" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.values():java.util.Collection" resolve="values" />
            </node>
          </node>
          <node concept="3clFbS" id="42vv4xs$2ok" role="2LFqv$">
            <node concept="SfApY" id="42vv4xs$lCk" role="3cqZAp">
              <node concept="3clFbS" id="42vv4xs$lCm" role="SfCbr">
                <node concept="3clFbF" id="42vv4xs$7Oy" role="3cqZAp">
                  <node concept="2OqwBi" id="42vv4xs$7Xi" role="3clFbG">
                    <node concept="2GrUjf" id="42vv4xs$7Ox" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="42vv4xs$2oi" resolve="connection" />
                    </node>
                    <node concept="liA8E" id="42vv4xs$kZw" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~Closeable.close():void" resolve="close" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="42vv4xs$lCn" role="TEbGg">
                <node concept="3cpWsn" id="42vv4xs$lCp" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="42vv4xs$mbW" role="1tU5fm">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
                <node concept="3clFbS" id="42vv4xs$lCt" role="TDEfX">
                  <node concept="RRSsy" id="42vv4xs$mkd" role="3cqZAp">
                    <property role="RRSoG" value="error" />
                    <node concept="3cpWs3" id="42vv4xs$mq0" role="RRSoy">
                      <node concept="2GrUjf" id="42vv4xs$mqY" role="3uHU7B">
                        <ref role="2Gs0qQ" node="42vv4xs$2oi" resolve="connection" />
                      </node>
                      <node concept="Xl_RD" id="42vv4xs$mnu" role="3uHU7w">
                        <property role="Xl_RC" value=" thrown on closing via DevicesFacade#stop" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="42vv4xs$mkh" role="RRSow">
                      <ref role="3cqZAo" node="42vv4xs$lCp" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42vv4xs$yG2" role="3cqZAp">
          <node concept="2OqwBi" id="42vv4xs$z50" role="3clFbG">
            <node concept="37vLTw" id="42vv4xs$yG0" role="2Oq$k0">
              <ref role="3cqZAo" node="42vv4xs$2oV" resolve="myConnections" />
            </node>
            <node concept="liA8E" id="42vv4xs$__x" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.clear():void" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="42vv4xs$2ej" role="1B3o_S" />
      <node concept="3cqZAl" id="42vv4xs$2f_" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="3wAsKTkhPuB" role="1B3o_S" />
  </node>
</model>

