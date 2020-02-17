<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:15c6feaa-d38f-494f-a105-0b74d654dd08(richediting.adapters.fb)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
  </languages>
  <imports>
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(scenes.controllers)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.interfacepart)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="vjnt" ref="r:dcc8041c-4feb-4a59-913c-c4ff83a14df3(richediting.adapters.fbnetwork)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(mps.iec61499.model.interfacepart)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="kcid" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellLayout(MPS.Editor/)" />
    <import index="hhnx" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime(MPS.Editor/)" />
    <import index="ee2c" ref="r:c260e783-fa83-4eab-8183-e5c937092355(scenes.cells)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(richediting.plugin)" />
    <import index="rk1n" ref="r:296ba507-c250-4c4f-87ec-b3402bd9d933(common.iec61499.model.fbnetwork.tree)" />
    <import index="de0p" ref="r:d7cab6e9-7043-4e10-b77e-569e7736ba5e(mps.ide.editor)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(mps.iec61499.model.fbnetwork)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="9ywi" ref="r:b27d9d9b-1904-40b8-bdb1-cf26b125baf7(mps.ide.synteticLang.structure)" />
    <import index="se19" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jdom.output(MPS.IDEA/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="xxkc" ref="r:800eac96-bf9c-458b-84d9-4e8242e44fb3(richediting.editor)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
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
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
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
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
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
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
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
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1HEL0zVYRRA">
    <property role="TrG5h" value="FBTypeTemplateCellComponent" />
    <node concept="2tJIrI" id="7qPnRGGpuFe" role="jymVt" />
    <node concept="312cEg" id="1HEL0zVZ6TY" role="jymVt">
      <property role="TrG5h" value="myFBType" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zVZ6M6" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQLcIt" role="1tU5fm">
        <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
      </node>
    </node>
    <node concept="312cEg" id="7qPnRGG6zO0" role="jymVt">
      <property role="TrG5h" value="myFBCellComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGG6vHm" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGG6yuR" role="1tU5fm">
        <ref role="3uigEE" node="7qPnRGG6q3r" resolve="FBTypeCellComponent" />
      </node>
    </node>
    <node concept="312cEg" id="1JYTWWzJ_QF" role="jymVt">
      <property role="TrG5h" value="myCellCollection" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1JYTWWzJyYh" role="1B3o_S" />
      <node concept="3uibUv" id="1JYTWWzJ_7J" role="1tU5fm">
        <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
      </node>
    </node>
    <node concept="312cEg" id="7qPnRGGpthd" role="jymVt">
      <property role="TrG5h" value="myInputAssociations" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGGpnIi" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGpocc" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qPnRGGpupX" role="11_B2D">
          <ref role="3uigEE" node="7qPnRGGpoZs" resolve="FBTypeTemplateCellComponent.EventAssociation" />
        </node>
      </node>
      <node concept="2ShNRf" id="7qPnRGGpv56" role="33vP2m">
        <node concept="1pGfFk" id="7qPnRGGpvOt" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="7qPnRGGpwnJ" role="1pMfVU">
            <ref role="3uigEE" node="7qPnRGGpoZs" resolve="FBTypeTemplateCellComponent.EventAssociation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7qPnRGGptC9" role="jymVt">
      <property role="TrG5h" value="myOutputAssociations" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGGptCa" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGptCb" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qPnRGGpuz6" role="11_B2D">
          <ref role="3uigEE" node="7qPnRGGpoZs" resolve="FBTypeTemplateCellComponent.EventAssociation" />
        </node>
      </node>
      <node concept="2ShNRf" id="7qPnRGGpwBs" role="33vP2m">
        <node concept="1pGfFk" id="7qPnRGGpxmN" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="7qPnRGGpygY" role="1pMfVU">
            <ref role="3uigEE" node="7qPnRGGpoZs" resolve="FBTypeTemplateCellComponent.EventAssociation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVZke2" role="jymVt" />
    <node concept="3clFbW" id="~EditorCell_Basic.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode)" role="jymVt">
      <property role="TrG5h" value="EditorCell_Basic" />
      <node concept="3cqZAl" id="1HEL0zVYaCf" role="3clF45" />
      <node concept="3Tm1VV" id="1HEL0zVZlKQ" role="1B3o_S" />
      <node concept="37vLTG" id="1HEL0zVYat_" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="1cTKxMSaomq" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="1HEL0zVYatA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zVYatC" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1HEL0zVYatB" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zVZ6wk" role="3clF46">
        <property role="TrG5h" value="fbType" />
        <node concept="3uibUv" id="1R4IoyQLeIz" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1HEL0zVZllO" role="3clF47">
        <node concept="3clFbF" id="1HEL0zW0Ogh" role="3cqZAp">
          <node concept="37vLTI" id="1HEL0zW0P$O" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW0PO2" role="37vLTx">
              <ref role="3cqZAo" node="1HEL0zVZ6wk" resolve="fbType" />
            </node>
            <node concept="37vLTw" id="1HEL0zW0Ogf" role="37vLTJ">
              <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBType" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JYTWWzLyyr" role="3cqZAp">
          <node concept="37vLTI" id="1JYTWWzLzUt" role="3clFbG">
            <node concept="1rXfSq" id="1JYTWWzL$5L" role="37vLTx">
              <ref role="37wK5l" node="1JYTWWzJJu0" resolve="createRootCell" />
              <node concept="37vLTw" id="1JYTWWzL$kO" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zVYat_" resolve="editorContext" />
              </node>
              <node concept="37vLTw" id="1JYTWWzL$_B" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zVYatC" resolve="node" />
              </node>
            </node>
            <node concept="37vLTw" id="1JYTWWzLyyp" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JYTWWzI3AG" role="3cqZAp">
          <node concept="37vLTI" id="1JYTWWzI4xN" role="3clFbG">
            <node concept="37vLTw" id="1JYTWWzI3AE" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
            </node>
            <node concept="2ShNRf" id="7qPnRGG6KEm" role="37vLTx">
              <node concept="1pGfFk" id="7qPnRGGaWmL" role="2ShVmc">
                <ref role="37wK5l" node="7qPnRGG79lZ" resolve="FBTypeCellComponent" />
                <node concept="37vLTw" id="1JYTWWzI8Ck" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zVYat_" resolve="editorContext" />
                </node>
                <node concept="37vLTw" id="1JYTWWzI8Xl" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zVZ6wk" resolve="fbType" />
                </node>
                <node concept="37vLTw" id="1JYTWWzI8KU" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zVYatC" resolve="node" />
                </node>
                <node concept="3clFbT" id="2SU8oJe76fs" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JYTWWzM2sO" role="3cqZAp">
          <node concept="2OqwBi" id="1JYTWWzM2Os" role="3clFbG">
            <node concept="37vLTw" id="1JYTWWzM2sM" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="1JYTWWzM6_E" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="addEditorCell" />
              <node concept="2OqwBi" id="1JYTWWzM7bi" role="37wK5m">
                <node concept="37vLTw" id="1JYTWWzM6XJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                </node>
                <node concept="liA8E" id="1JYTWWzM7oP" role="2OqNvi">
                  <ref role="37wK5l" node="1JYTWWzKYFB" resolve="getRootCell" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$XwiFiz0" role="3cqZAp">
          <node concept="1rXfSq" id="5fP$XwiFiyY" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zVZcSu" resolve="init" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1cTKxMSatMJ" role="jymVt" />
    <node concept="2tJIrI" id="1cTKxMSatZc" role="jymVt" />
    <node concept="3clFb_" id="1cTKxMSa$2F" role="jymVt">
      <property role="TrG5h" value="getRootCell" />
      <node concept="3clFbS" id="1cTKxMSa$2I" role="3clF47">
        <node concept="3cpWs6" id="1cTKxMSaAQB" role="3cqZAp">
          <node concept="37vLTw" id="1cTKxMSaAU9" role="3cqZAk">
            <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1cTKxMSawY4" role="1B3o_S" />
      <node concept="3uibUv" id="1cTKxMSazrM" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
      </node>
    </node>
    <node concept="2tJIrI" id="1JYTWWzJC_1" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzJJu0" role="jymVt">
      <property role="TrG5h" value="createRootCell" />
      <node concept="37vLTG" id="1JYTWWzJMcZ" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="1JYTWWzJMd0" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="1JYTWWzJMd1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1JYTWWzJMd2" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1JYTWWzJMd3" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="1JYTWWzJJu3" role="3clF47">
        <node concept="3clFbF" id="1JYTWWzJRpK" role="3cqZAp">
          <node concept="2ShNRf" id="1JYTWWzJRpI" role="3clFbG">
            <node concept="YeOm9" id="1JYTWWzJU61" role="2ShVmc">
              <node concept="1Y3b0j" id="1JYTWWzJU64" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="g51k:~EditorCell_Collection.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.nodeEditor.cellLayout.CellLayout)" resolve="EditorCell_Collection" />
                <ref role="1Y3XeK" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                <node concept="3Tm1VV" id="1JYTWWzJU65" role="1B3o_S" />
                <node concept="37vLTw" id="1JYTWWzJSXj" role="37wK5m">
                  <ref role="3cqZAo" node="1JYTWWzJMcZ" resolve="editorContext" />
                </node>
                <node concept="37vLTw" id="1JYTWWzJToR" role="37wK5m">
                  <ref role="3cqZAo" node="1JYTWWzJMd2" resolve="node" />
                </node>
                <node concept="2ShNRf" id="1JYTWWzJV9H" role="37wK5m">
                  <node concept="YeOm9" id="1JYTWWzJWIS" role="2ShVmc">
                    <node concept="1Y3b0j" id="1JYTWWzJWIV" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="kcid:~AbstractCellLayout" resolve="AbstractCellLayout" />
                      <ref role="37wK5l" to="kcid:~AbstractCellLayout.&lt;init&gt;()" resolve="AbstractCellLayout" />
                      <node concept="3Tm1VV" id="1JYTWWzJWIW" role="1B3o_S" />
                      <node concept="3clFb_" id="1JYTWWzJWJ4" role="jymVt">
                        <property role="TrG5h" value="doLayout" />
                        <node concept="3Tm1VV" id="1JYTWWzJWJ5" role="1B3o_S" />
                        <node concept="3cqZAl" id="1JYTWWzJWJ7" role="3clF45" />
                        <node concept="37vLTG" id="1JYTWWzJWJ8" role="3clF46">
                          <property role="TrG5h" value="cells" />
                          <node concept="3uibUv" id="1JYTWWzJWJ9" role="1tU5fm">
                            <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1JYTWWzJWJa" role="3clF47">
                          <node concept="1gVbGN" id="1JYTWWzK0JF" role="3cqZAp">
                            <node concept="3clFbC" id="1JYTWWzK1x5" role="1gVkn0">
                              <node concept="37vLTw" id="1JYTWWzK297" role="3uHU7w">
                                <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
                              </node>
                              <node concept="37vLTw" id="1JYTWWzK113" role="3uHU7B">
                                <ref role="3cqZAo" node="1JYTWWzJWJ8" resolve="cells" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1JYTWWzK36$" role="3cqZAp">
                            <node concept="2OqwBi" id="1JYTWWzK6S3" role="3clFbG">
                              <node concept="Xjq3P" id="1JYTWWzK66W" role="2Oq$k0">
                                <ref role="1HBi2w" node="1HEL0zVYRRA" resolve="FBTypeTemplateCellComponent" />
                              </node>
                              <node concept="liA8E" id="1JYTWWzK8az" role="2OqNvi">
                                <ref role="37wK5l" node="1JYTWWzKxkC" resolve="relayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFb_" id="1JYTWWzJWJc" role="jymVt">
                        <property role="TrG5h" value="doLayoutText" />
                        <node concept="3Tm1VV" id="1JYTWWzJWJd" role="1B3o_S" />
                        <node concept="3uibUv" id="1JYTWWzJWJf" role="3clF45">
                          <ref role="3uigEE" to="cj4x:~TextBuilder" resolve="TextBuilder" />
                        </node>
                        <node concept="37vLTG" id="1JYTWWzJWJg" role="3clF46">
                          <property role="TrG5h" value="cells" />
                          <node concept="3uibUv" id="1JYTWWzJWJh" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                            <node concept="3uibUv" id="1JYTWWzJWJi" role="11_B2D">
                              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="1JYTWWzJWJj" role="3clF47">
                          <node concept="3clFbF" id="1JYTWWzJYMP" role="3cqZAp">
                            <node concept="2ShNRf" id="1JYTWWzJYMN" role="3clFbG">
                              <node concept="1pGfFk" id="1JYTWWzK0sQ" role="2ShVmc">
                                <ref role="37wK5l" to="hhnx:~TextBuilderImpl.&lt;init&gt;()" resolve="TextBuilderImpl" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFb_" id="1HEL0zVZ5Np" role="jymVt">
                  <property role="TrG5h" value="paintContent" />
                  <node concept="3Tmbuc" id="1HEL0zVZ5Nq" role="1B3o_S" />
                  <node concept="3cqZAl" id="1HEL0zVZ5Ns" role="3clF45" />
                  <node concept="37vLTG" id="1HEL0zVZ5Nt" role="3clF46">
                    <property role="TrG5h" value="graphics" />
                    <node concept="3uibUv" id="1HEL0zVZ5Nu" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="1HEL0zVZ5Nv" role="3clF46">
                    <property role="TrG5h" value="settings" />
                    <node concept="3uibUv" id="1HEL0zVZ5Nw" role="1tU5fm">
                      <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1HEL0zVZ5Nx" role="3clF47">
                    <node concept="3clFbF" id="3IX4BsJNZAX" role="3cqZAp">
                      <node concept="37vLTI" id="3IX4BsJO0uR" role="3clFbG">
                        <node concept="37vLTw" id="3IX4BsJNZAV" role="37vLTJ">
                          <ref role="3cqZAo" node="1HEL0zVZ5Nt" resolve="graphics" />
                        </node>
                        <node concept="2OqwBi" id="3IX4BsJO1wp" role="37vLTx">
                          <node concept="37vLTw" id="7qPnRGGFfev" role="2Oq$k0">
                            <ref role="3cqZAo" node="1HEL0zVZ5Nt" resolve="graphics" />
                          </node>
                          <node concept="liA8E" id="3IX4BsJO1R_" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3IX4BsJO2UI" role="3cqZAp">
                      <node concept="2OqwBi" id="3IX4BsJO3Jt" role="3clFbG">
                        <node concept="37vLTw" id="3IX4BsJO2UG" role="2Oq$k0">
                          <ref role="3cqZAo" node="1HEL0zVZ5Nt" resolve="graphics" />
                        </node>
                        <node concept="liA8E" id="3IX4BsJO4Hy" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                          <node concept="1rXfSq" id="3IX4BsJOKmg" role="37wK5m">
                            <ref role="37wK5l" node="3IX4BsJOCID" resolve="getForegroundColor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="3IX4BsJOKzP" role="3cqZAp" />
                    <node concept="3cpWs8" id="7qPnRGGEf2$" role="3cqZAp">
                      <node concept="3cpWsn" id="7qPnRGGEf2_" role="3cpWs9">
                        <property role="TrG5h" value="x" />
                        <node concept="10Oyi0" id="7qPnRGGEf2z" role="1tU5fm" />
                        <node concept="1rXfSq" id="7qPnRGGEf2A" role="33vP2m">
                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX()" resolve="getX" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7qPnRGGEg8B" role="3cqZAp">
                      <node concept="3cpWsn" id="7qPnRGGEg8C" role="3cpWs9">
                        <property role="TrG5h" value="y" />
                        <node concept="10Oyi0" id="7qPnRGGEg8A" role="1tU5fm" />
                        <node concept="1rXfSq" id="7qPnRGGEg8D" role="33vP2m">
                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.getY()" resolve="getY" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="7qPnRGGEifs" role="3cqZAp" />
                    <node concept="3cpWs8" id="7qPnRGGyTo8" role="3cqZAp">
                      <node concept="3cpWsn" id="7qPnRGGyTo9" role="3cpWs9">
                        <property role="TrG5h" value="inputAssociationPainter" />
                        <node concept="3uibUv" id="7qPnRGGyTo7" role="1tU5fm">
                          <ref role="3uigEE" node="7qPnRGGp$aj" resolve="FBTypeTemplateCellComponent.EventsAssociationsPainter" />
                        </node>
                        <node concept="2ShNRf" id="7qPnRGGyToa" role="33vP2m">
                          <node concept="1pGfFk" id="7qPnRGGyTob" role="2ShVmc">
                            <ref role="37wK5l" node="7qPnRGGpCac" resolve="FBTypeTemplateCellComponent.EventsAssociationsPainter" />
                            <node concept="37vLTw" id="7qPnRGGyToc" role="37wK5m">
                              <ref role="3cqZAo" node="7qPnRGGpthd" resolve="myInputAssociations" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7qPnRGGyUEw" role="3cqZAp">
                      <node concept="3cpWsn" id="7qPnRGGyUEx" role="3cpWs9">
                        <property role="TrG5h" value="outputAssociationPainter" />
                        <node concept="3uibUv" id="7qPnRGGyUEy" role="1tU5fm">
                          <ref role="3uigEE" node="7qPnRGGp$aj" resolve="FBTypeTemplateCellComponent.EventsAssociationsPainter" />
                        </node>
                        <node concept="2ShNRf" id="7qPnRGGyUEz" role="33vP2m">
                          <node concept="1pGfFk" id="7qPnRGGyUE$" role="2ShVmc">
                            <ref role="37wK5l" node="7qPnRGGpCac" resolve="FBTypeTemplateCellComponent.EventsAssociationsPainter" />
                            <node concept="37vLTw" id="7qPnRGGyVbv" role="37wK5m">
                              <ref role="3cqZAo" node="7qPnRGGptC9" resolve="myOutputAssociations" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="7qPnRGGyG8v" role="3cqZAp" />
                    <node concept="3clFbF" id="7qPnRGGE1sE" role="3cqZAp">
                      <node concept="2OqwBi" id="7qPnRGGE1V3" role="3clFbG">
                        <node concept="37vLTw" id="7qPnRGGE1sC" role="2Oq$k0">
                          <ref role="3cqZAo" node="7qPnRGGyTo9" resolve="inputAssociationPainter" />
                        </node>
                        <node concept="liA8E" id="7qPnRGGEeur" role="2OqNvi">
                          <ref role="37wK5l" node="7qPnRGGt0uR" resolve="paint" />
                          <node concept="37vLTw" id="7qPnRGGEeCr" role="37wK5m">
                            <ref role="3cqZAo" node="1HEL0zVZ5Nt" resolve="graphics" />
                          </node>
                          <node concept="3clFbT" id="7qPnRGGEjjZ" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="37vLTw" id="7qPnRGGEiKk" role="37wK5m">
                            <ref role="3cqZAo" node="7qPnRGGEf2_" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="7qPnRGGF7Fh" role="37wK5m">
                            <ref role="3cqZAo" node="7qPnRGGEg8C" resolve="y" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7qPnRGGF8od" role="3cqZAp">
                      <node concept="d57v9" id="7qPnRGGF9sT" role="3clFbG">
                        <node concept="37vLTw" id="7qPnRGGF8ob" role="37vLTJ">
                          <ref role="3cqZAo" node="7qPnRGGEf2_" resolve="x" />
                        </node>
                        <node concept="2OqwBi" id="7qPnRGGF9Jn" role="37vLTx">
                          <node concept="37vLTw" id="7qPnRGGF9Jo" role="2Oq$k0">
                            <ref role="3cqZAo" node="7qPnRGGyTo9" resolve="inputAssociationPainter" />
                          </node>
                          <node concept="liA8E" id="7qPnRGGF9Jp" role="2OqNvi">
                            <ref role="37wK5l" node="7qPnRGGpGRg" resolve="getWidth" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7qPnRGGFaL4" role="3cqZAp">
                      <node concept="d57v9" id="7qPnRGGFelb" role="3clFbG">
                        <node concept="2OqwBi" id="7qPnRGGFgp9" role="37vLTx">
                          <node concept="37vLTw" id="7qPnRGGFfUJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                          </node>
                          <node concept="liA8E" id="7qPnRGGFisA" role="2OqNvi">
                            <ref role="37wK5l" node="7qPnRGGb3$p" resolve="getWidth" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7qPnRGGFdjL" role="37vLTJ">
                          <ref role="3cqZAo" node="7qPnRGGEf2_" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7qPnRGGFjp0" role="3cqZAp">
                      <node concept="2OqwBi" id="7qPnRGGFjp1" role="3clFbG">
                        <node concept="37vLTw" id="7qPnRGGFkgm" role="2Oq$k0">
                          <ref role="3cqZAo" node="7qPnRGGyUEx" resolve="outputAssociationPainter" />
                        </node>
                        <node concept="liA8E" id="7qPnRGGFjp3" role="2OqNvi">
                          <ref role="37wK5l" node="7qPnRGGt0uR" resolve="paint" />
                          <node concept="37vLTw" id="7qPnRGGFjp4" role="37wK5m">
                            <ref role="3cqZAo" node="1HEL0zVZ5Nt" resolve="graphics" />
                          </node>
                          <node concept="3clFbT" id="7qPnRGGFjp5" role="37wK5m" />
                          <node concept="37vLTw" id="7qPnRGGFjp6" role="37wK5m">
                            <ref role="3cqZAo" node="7qPnRGGEf2_" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="7qPnRGGFjp7" role="37wK5m">
                            <ref role="3cqZAo" node="7qPnRGGEg8C" resolve="y" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1HEL0zVZ5Ny" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1JYTWWzJHr$" role="1B3o_S" />
      <node concept="3uibUv" id="1JYTWWzL_dJ" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
      </node>
    </node>
    <node concept="2tJIrI" id="1JYTWWzKsay" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzKxkC" role="jymVt">
      <property role="TrG5h" value="relayout" />
      <node concept="3clFbS" id="1JYTWWzKxkF" role="3clF47">
        <node concept="3cpWs8" id="1JYTWWzLE1R" role="3cqZAp">
          <node concept="3cpWsn" id="1JYTWWzLE1S" role="3cpWs9">
            <property role="TrG5h" value="rootCell" />
            <node concept="3uibUv" id="1JYTWWzLE1Q" role="1tU5fm">
              <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
            </node>
            <node concept="2OqwBi" id="1JYTWWzLE1T" role="33vP2m">
              <node concept="37vLTw" id="1JYTWWzLE1U" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
              </node>
              <node concept="liA8E" id="1JYTWWzLE1V" role="2OqNvi">
                <ref role="37wK5l" node="1JYTWWzKYFB" resolve="getRootCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8THMzn" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8THN6b" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8THRxh" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzLE1S" resolve="rootCell" />
            </node>
            <node concept="liA8E" id="3DiEZ8THRaK" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.relayout()" resolve="relayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TIrNd" role="3cqZAp" />
        <node concept="3cpWs8" id="3DiEZ8TIcwM" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TIcwN" role="3cpWs9">
            <property role="TrG5h" value="inputsWidth" />
            <node concept="10Oyi0" id="3DiEZ8TIcwK" role="1tU5fm" />
            <node concept="2OqwBi" id="3DiEZ8TIcwO" role="33vP2m">
              <node concept="2ShNRf" id="3DiEZ8TIcwP" role="2Oq$k0">
                <node concept="1pGfFk" id="3DiEZ8TIcwQ" role="2ShVmc">
                  <ref role="37wK5l" node="7qPnRGGpCac" resolve="FBTypeTemplateCellComponent.EventsAssociationsPainter" />
                  <node concept="37vLTw" id="3DiEZ8TIcwR" role="37wK5m">
                    <ref role="3cqZAo" node="7qPnRGGpthd" resolve="myInputAssociations" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3DiEZ8TIcwS" role="2OqNvi">
                <ref role="37wK5l" node="7qPnRGGpGRg" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3DiEZ8TIfgK" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TIfgL" role="3cpWs9">
            <property role="TrG5h" value="outputsWidth" />
            <node concept="10Oyi0" id="3DiEZ8TIfgM" role="1tU5fm" />
            <node concept="2OqwBi" id="3DiEZ8TIfgN" role="33vP2m">
              <node concept="2ShNRf" id="3DiEZ8TIfgO" role="2Oq$k0">
                <node concept="1pGfFk" id="3DiEZ8TIfgP" role="2ShVmc">
                  <ref role="37wK5l" node="7qPnRGGpCac" resolve="FBTypeTemplateCellComponent.EventsAssociationsPainter" />
                  <node concept="37vLTw" id="3DiEZ8TIfUB" role="37wK5m">
                    <ref role="3cqZAo" node="7qPnRGGptC9" resolve="myOutputAssociations" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3DiEZ8TIfgR" role="2OqNvi">
                <ref role="37wK5l" node="7qPnRGGpGRg" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TIsiv" role="3cqZAp" />
        <node concept="3clFbF" id="3DiEZ8TI5Po" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TI6uh" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TI5Pm" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzLE1S" resolve="rootCell" />
            </node>
            <node concept="liA8E" id="3DiEZ8TI8uB" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Collection.moveTo(int,int)" resolve="moveTo" />
              <node concept="3cpWs3" id="1JYTWWzLIId" role="37wK5m">
                <node concept="2OqwBi" id="3DiEZ8TIhNo" role="3uHU7B">
                  <node concept="37vLTw" id="3DiEZ8TIhNp" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="3DiEZ8TIhNq" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX()" resolve="getX" />
                  </node>
                </node>
                <node concept="37vLTw" id="3DiEZ8TIhNr" role="3uHU7w">
                  <ref role="3cqZAo" node="3DiEZ8TIcwN" resolve="inputsWidth" />
                </node>
              </node>
              <node concept="2OqwBi" id="1JYTWWzLFYd" role="37wK5m">
                <node concept="37vLTw" id="1JYTWWzLFYe" role="2Oq$k0">
                  <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
                </node>
                <node concept="liA8E" id="1JYTWWzLFYf" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getY()" resolve="getY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TIrjW" role="3cqZAp" />
        <node concept="3clFbF" id="3DiEZ8TIg7L" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TIgMt" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TIg7J" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="3DiEZ8TIhpI" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setWidth(int)" resolve="setWidth" />
              <node concept="3cpWs3" id="3DiEZ8TIlw1" role="37wK5m">
                <node concept="37vLTw" id="3DiEZ8TInmS" role="3uHU7w">
                  <ref role="3cqZAo" node="3DiEZ8TIfgL" resolve="outputsWidth" />
                </node>
                <node concept="3cpWs3" id="3DiEZ8TIivm" role="3uHU7B">
                  <node concept="37vLTw" id="3DiEZ8TImJa" role="3uHU7B">
                    <ref role="3cqZAo" node="3DiEZ8TIcwN" resolve="inputsWidth" />
                  </node>
                  <node concept="2OqwBi" id="3DiEZ8TImJb" role="3uHU7w">
                    <node concept="37vLTw" id="3Sv$YXY0_1T" role="2Oq$k0">
                      <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                    </node>
                    <node concept="liA8E" id="3DiEZ8TImJd" role="2OqNvi">
                      <ref role="37wK5l" node="7qPnRGGb3$p" resolve="getWidth" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TIomL" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TIomM" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TIomN" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="3DiEZ8TIomO" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setHeight(int)" resolve="setHeight" />
              <node concept="2OqwBi" id="3DiEZ8TIomT" role="37wK5m">
                <node concept="37vLTw" id="3Sv$YXY0_NA" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                </node>
                <node concept="liA8E" id="3DiEZ8TIomV" role="2OqNvi">
                  <ref role="37wK5l" node="7qPnRGGb3$v" resolve="getHeight" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1JYTWWzKuNC" role="1B3o_S" />
      <node concept="3cqZAl" id="1JYTWWzKv0d" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1HEL0zWcpBo" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVZcSu" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3Tm1VV" id="1HEL0zVZcSv" role="1B3o_S" />
      <node concept="3cqZAl" id="1HEL0zVZcSx" role="3clF45" />
      <node concept="3clFbS" id="1HEL0zVZcSA" role="3clF47">
        <node concept="1Dw8fO" id="7qPnRGGz4Vk" role="3cqZAp">
          <node concept="3clFbS" id="7qPnRGGz4Vm" role="2LFqv$">
            <node concept="3cpWs8" id="7qPnRGGzz6I" role="3cqZAp">
              <node concept="3cpWsn" id="7qPnRGGzz6J" role="3cpWs9">
                <property role="TrG5h" value="inputVariables" />
                <node concept="3uibUv" id="7qPnRGGzz6E" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="7qPnRGGzz6H" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7qPnRGGzz6K" role="33vP2m">
                  <node concept="37vLTw" id="7qPnRGGzz6L" role="2Oq$k0">
                    <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBType" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGzz6M" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:7qPnRGGphs$" resolve="getAssociatedVariablesForInputEvent" />
                    <node concept="37vLTw" id="7qPnRGGzz6N" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGz4Vn" resolve="inputEvent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7qPnRGGzz_U" role="3cqZAp">
              <node concept="3clFbS" id="7qPnRGGzz_W" role="3clFbx">
                <node concept="3cpWs8" id="7qPnRGG$f18" role="3cqZAp">
                  <node concept="3cpWsn" id="7qPnRGG$f19" role="3cpWs9">
                    <property role="TrG5h" value="sortedInputVariables" />
                    <node concept="3uibUv" id="7qPnRGG$f10" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                      <node concept="3uibUv" id="7qPnRGG$nmv" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7qPnRGG$f1a" role="33vP2m">
                      <node concept="1pGfFk" id="7qPnRGG$f1b" role="2ShVmc">
                        <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                        <node concept="37vLTw" id="7qPnRGG$f1c" role="37wK5m">
                          <ref role="3cqZAo" node="7qPnRGGzz6J" resolve="inputVariables" />
                        </node>
                        <node concept="3uibUv" id="7qPnRGG$f1d" role="1pMfVU">
                          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7qPnRGG$kIn" role="3cqZAp">
                  <node concept="2YIFZM" id="7qPnRGGzXyu" role="3clFbG">
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List)" resolve="sort" />
                    <node concept="37vLTw" id="7qPnRGG$f1e" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG$f19" resolve="sortedInputVariables" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7qPnRGGzFnB" role="3cqZAp">
                  <node concept="2OqwBi" id="7qPnRGGzG37" role="3clFbG">
                    <node concept="37vLTw" id="7qPnRGGzFn_" role="2Oq$k0">
                      <ref role="3cqZAo" node="7qPnRGGpthd" resolve="myInputAssociations" />
                    </node>
                    <node concept="liA8E" id="7qPnRGGzSSL" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="7qPnRGGzW5w" role="37wK5m">
                        <node concept="1pGfFk" id="7qPnRGGzX4r" role="2ShVmc">
                          <ref role="37wK5l" node="7qPnRGGpr9a" resolve="FBTypeTemplateCellComponent.EventAssociation" />
                          <node concept="37vLTw" id="7qPnRGGzXjA" role="37wK5m">
                            <ref role="3cqZAo" node="7qPnRGGz4Vn" resolve="inputEvent" />
                          </node>
                          <node concept="37vLTw" id="7qPnRGG$mdB" role="37wK5m">
                            <ref role="3cqZAo" node="7qPnRGG$f19" resolve="sortedInputVariables" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7qPnRGGzF7E" role="3clFbw">
                <node concept="2OqwBi" id="7qPnRGGzF7G" role="3fr31v">
                  <node concept="37vLTw" id="7qPnRGGzF7H" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGzz6J" resolve="inputVariables" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGzF7I" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7qPnRGGz4Vn" role="1Duv9x">
            <property role="TrG5h" value="inputEvent" />
            <node concept="10Oyi0" id="7qPnRGGz5n8" role="1tU5fm" />
            <node concept="3cmrfG" id="7qPnRGGzfvK" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7qPnRGGz6zr" role="1Dwp0S">
            <node concept="2OqwBi" id="7qPnRGGz8$J" role="3uHU7w">
              <node concept="2OqwBi" id="7qPnRGGz7m9" role="2Oq$k0">
                <node concept="37vLTw" id="7qPnRGGz6TJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBType" />
                </node>
                <node concept="liA8E" id="7qPnRGGz7FD" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYKgq" resolve="getEventInputPorts" />
                </node>
              </node>
              <node concept="liA8E" id="7qPnRGGzdC4" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="7qPnRGGz5wD" role="3uHU7B">
              <ref role="3cqZAo" node="7qPnRGGz4Vn" resolve="inputEvent" />
            </node>
          </node>
          <node concept="3uNrnE" id="7qPnRGGzeXu" role="1Dwrff">
            <node concept="37vLTw" id="7qPnRGGzeXw" role="2$L3a6">
              <ref role="3cqZAo" node="7qPnRGGz4Vn" resolve="inputEvent" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="7qPnRGG$nO5" role="3cqZAp">
          <node concept="3clFbS" id="7qPnRGG$nO6" role="2LFqv$">
            <node concept="3cpWs8" id="7qPnRGG$nO7" role="3cqZAp">
              <node concept="3cpWsn" id="7qPnRGG$nO8" role="3cpWs9">
                <property role="TrG5h" value="outputVariables" />
                <node concept="3uibUv" id="7qPnRGG$nO9" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="7qPnRGG$nOa" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7qPnRGG$nOb" role="33vP2m">
                  <node concept="37vLTw" id="7qPnRGG$nOc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBType" />
                  </node>
                  <node concept="liA8E" id="7qPnRGG$nOd" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:7qPnRGGpolU" resolve="getAssociatedVariablesForOutputEvent" />
                    <node concept="37vLTw" id="7qPnRGG$nOe" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG$nOC" resolve="outputEvent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7qPnRGG$nOf" role="3cqZAp">
              <node concept="3clFbS" id="7qPnRGG$nOg" role="3clFbx">
                <node concept="3cpWs8" id="7qPnRGG$nOh" role="3cqZAp">
                  <node concept="3cpWsn" id="7qPnRGG$nOi" role="3cpWs9">
                    <property role="TrG5h" value="sortedOutputVariables" />
                    <node concept="3uibUv" id="7qPnRGG$nOj" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                      <node concept="3uibUv" id="7qPnRGG$nOk" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7qPnRGG$nOl" role="33vP2m">
                      <node concept="1pGfFk" id="7qPnRGG$nOm" role="2ShVmc">
                        <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                        <node concept="37vLTw" id="7qPnRGG$nOn" role="37wK5m">
                          <ref role="3cqZAo" node="7qPnRGG$nO8" resolve="outputVariables" />
                        </node>
                        <node concept="3uibUv" id="7qPnRGG$nOo" role="1pMfVU">
                          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7qPnRGG$nOp" role="3cqZAp">
                  <node concept="2YIFZM" id="7qPnRGG$nOq" role="3clFbG">
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List)" resolve="sort" />
                    <node concept="37vLTw" id="7qPnRGG$nOr" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG$nOi" resolve="sortedOutputVariables" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7qPnRGG$nOs" role="3cqZAp">
                  <node concept="2OqwBi" id="7qPnRGG$nOt" role="3clFbG">
                    <node concept="37vLTw" id="7qPnRGG$sms" role="2Oq$k0">
                      <ref role="3cqZAo" node="7qPnRGGptC9" resolve="myOutputAssociations" />
                    </node>
                    <node concept="liA8E" id="7qPnRGG$nOv" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="7qPnRGG$nOw" role="37wK5m">
                        <node concept="1pGfFk" id="7qPnRGG$nOx" role="2ShVmc">
                          <ref role="37wK5l" node="7qPnRGGpr9a" resolve="FBTypeTemplateCellComponent.EventAssociation" />
                          <node concept="37vLTw" id="7qPnRGG$nOy" role="37wK5m">
                            <ref role="3cqZAo" node="7qPnRGG$nOC" resolve="outputEvent" />
                          </node>
                          <node concept="37vLTw" id="7qPnRGG$nOz" role="37wK5m">
                            <ref role="3cqZAo" node="7qPnRGG$nOi" resolve="sortedOutputVariables" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7qPnRGG$nO$" role="3clFbw">
                <node concept="2OqwBi" id="7qPnRGG$nO_" role="3fr31v">
                  <node concept="37vLTw" id="7qPnRGG$nOA" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGG$nO8" resolve="outputVariables" />
                  </node>
                  <node concept="liA8E" id="7qPnRGG$nOB" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7qPnRGG$nOC" role="1Duv9x">
            <property role="TrG5h" value="outputEvent" />
            <node concept="10Oyi0" id="7qPnRGG$nOD" role="1tU5fm" />
            <node concept="3cmrfG" id="7qPnRGG$nOE" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7qPnRGG$nOF" role="1Dwp0S">
            <node concept="2OqwBi" id="7qPnRGG$nOG" role="3uHU7w">
              <node concept="2OqwBi" id="7qPnRGG$nOH" role="2Oq$k0">
                <node concept="37vLTw" id="7qPnRGG$nOI" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBType" />
                </node>
                <node concept="liA8E" id="7qPnRGG$nOJ" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYKjD" resolve="getEventOutputPorts" />
                </node>
              </node>
              <node concept="liA8E" id="7qPnRGG$nOK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="7qPnRGG$nOL" role="3uHU7B">
              <ref role="3cqZAo" node="7qPnRGG$nOC" resolve="outputEvent" />
            </node>
          </node>
          <node concept="3uNrnE" id="7qPnRGG$nOM" role="1Dwrff">
            <node concept="37vLTw" id="7qPnRGG$nON" role="2$L3a6">
              <ref role="3cqZAo" node="7qPnRGG$nOC" resolve="outputEvent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGGyFIn" role="3cqZAp" />
        <node concept="3clFbF" id="7qPnRGG8$l_" role="3cqZAp">
          <node concept="2OqwBi" id="1JYTWWzLJJB" role="3clFbG">
            <node concept="37vLTw" id="1JYTWWzLKJx" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="1JYTWWzLJJE" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setHeight(int)" resolve="setHeight" />
              <node concept="2OqwBi" id="7qPnRGG8_pn" role="37wK5m">
                <node concept="37vLTw" id="7qPnRGG8_2m" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                </node>
                <node concept="liA8E" id="7qPnRGGboQO" role="2OqNvi">
                  <ref role="37wK5l" node="7qPnRGGb3$v" resolve="getHeight" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGGyEw2" role="3cqZAp" />
        <node concept="3cpWs8" id="7qPnRGGyyWL" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGGyyWM" role="3cpWs9">
            <property role="TrG5h" value="inputAssocationsWidth" />
            <node concept="10Oyi0" id="7qPnRGGyyWE" role="1tU5fm" />
            <node concept="2OqwBi" id="7qPnRGGyyWN" role="33vP2m">
              <node concept="2ShNRf" id="7qPnRGGyyWO" role="2Oq$k0">
                <node concept="1pGfFk" id="7qPnRGGyyWP" role="2ShVmc">
                  <ref role="37wK5l" node="7qPnRGGpCac" resolve="FBTypeTemplateCellComponent.EventsAssociationsPainter" />
                  <node concept="37vLTw" id="7qPnRGGyyWQ" role="37wK5m">
                    <ref role="3cqZAo" node="7qPnRGGpthd" resolve="myInputAssociations" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7qPnRGGyyWR" role="2OqNvi">
                <ref role="37wK5l" node="7qPnRGGpGRg" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7qPnRGGy$c7" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGGy$c8" role="3cpWs9">
            <property role="TrG5h" value="outputAssocationsWidth" />
            <node concept="10Oyi0" id="7qPnRGGy$c9" role="1tU5fm" />
            <node concept="2OqwBi" id="7qPnRGGy$ca" role="33vP2m">
              <node concept="2ShNRf" id="7qPnRGGy$cb" role="2Oq$k0">
                <node concept="1pGfFk" id="7qPnRGGy$cc" role="2ShVmc">
                  <ref role="37wK5l" node="7qPnRGGpCac" resolve="FBTypeTemplateCellComponent.EventsAssociationsPainter" />
                  <node concept="37vLTw" id="7qPnRGGy$Zs" role="37wK5m">
                    <ref role="3cqZAo" node="7qPnRGGptC9" resolve="myOutputAssociations" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7qPnRGGy$ce" role="2OqNvi">
                <ref role="37wK5l" node="7qPnRGGpGRg" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGboT0" role="3cqZAp">
          <node concept="2OqwBi" id="1JYTWWzLKY0" role="3clFbG">
            <node concept="37vLTw" id="1JYTWWzLM1J" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="1JYTWWzLKY3" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setWidth(int)" resolve="setWidth" />
              <node concept="3cpWs3" id="7qPnRGGyBCy" role="37wK5m">
                <node concept="37vLTw" id="7qPnRGGyCbW" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGGy$c8" resolve="outputAssocationsWidth" />
                </node>
                <node concept="3cpWs3" id="7qPnRGGy_u6" role="3uHU7B">
                  <node concept="37vLTw" id="7qPnRGGy_Ny" role="3uHU7B">
                    <ref role="3cqZAo" node="7qPnRGGyyWM" resolve="inputAssocationsWidth" />
                  </node>
                  <node concept="2OqwBi" id="7qPnRGGboT2" role="3uHU7w">
                    <node concept="37vLTw" id="7qPnRGGboT3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                    </node>
                    <node concept="liA8E" id="7qPnRGGboT4" role="2OqNvi">
                      <ref role="37wK5l" node="7qPnRGGb3$p" resolve="getWidth" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGpoGn" role="jymVt" />
    <node concept="312cEu" id="7qPnRGGpoZs" role="jymVt">
      <property role="TrG5h" value="EventAssociation" />
      <node concept="312cEg" id="7qPnRGGpq3u" role="jymVt">
        <property role="TrG5h" value="myEventNumber" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7qPnRGGppRU" role="1B3o_S" />
        <node concept="10Oyi0" id="7qPnRGGpq3n" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="7qPnRGGpqDf" role="jymVt">
        <property role="TrG5h" value="myVariableNumbers" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7qPnRGGpqkC" role="1B3o_S" />
        <node concept="3uibUv" id="7qPnRGGpq$w" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7qPnRGG$f13" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7qPnRGGpqLL" role="jymVt" />
      <node concept="3Tm1VV" id="7qPnRGGpoZt" role="1B3o_S" />
      <node concept="3clFbW" id="7qPnRGGpr9a" role="jymVt">
        <node concept="3cqZAl" id="7qPnRGGpr9b" role="3clF45" />
        <node concept="3Tm1VV" id="7qPnRGGpr9c" role="1B3o_S" />
        <node concept="3clFbS" id="7qPnRGGpr9e" role="3clF47">
          <node concept="3clFbF" id="7qPnRGGpr9i" role="3cqZAp">
            <node concept="37vLTI" id="7qPnRGGpr9k" role="3clFbG">
              <node concept="37vLTw" id="7qPnRGGpr9r" role="37vLTx">
                <ref role="3cqZAo" node="7qPnRGGpr9h" resolve="eventNumber" />
              </node>
              <node concept="37vLTw" id="7qPnRGGt0bk" role="37vLTJ">
                <ref role="3cqZAo" node="7qPnRGGpq3u" resolve="myEventNumber" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7qPnRGGpr9v" role="3cqZAp">
            <node concept="37vLTI" id="7qPnRGGpr9x" role="3clFbG">
              <node concept="37vLTw" id="7qPnRGGpr9C" role="37vLTx">
                <ref role="3cqZAo" node="7qPnRGGpr9u" resolve="variableNumbers" />
              </node>
              <node concept="37vLTw" id="7qPnRGGt0nf" role="37vLTJ">
                <ref role="3cqZAo" node="7qPnRGGpqDf" resolve="myVariableNumbers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7qPnRGGpr9h" role="3clF46">
          <property role="TrG5h" value="eventNumber" />
          <node concept="10Oyi0" id="7qPnRGGpr9g" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGpr9u" role="3clF46">
          <property role="TrG5h" value="variableNumbers" />
          <node concept="3uibUv" id="7qPnRGGpr9s" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="7qPnRGGpr9t" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGpyXu" role="jymVt" />
    <node concept="Wx3nA" id="7qPnRGGpIo1" role="jymVt">
      <property role="TrG5h" value="GAP_SPACES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGGpHYy" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGpInW" role="1tU5fm" />
      <node concept="3cmrfG" id="7qPnRGGpIK0" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGsVbJ" role="jymVt" />
    <node concept="312cEu" id="7qPnRGGp$aj" role="jymVt">
      <property role="TrG5h" value="EventsAssociationsPainter" />
      <property role="2bfB8j" value="true" />
      <node concept="312cEg" id="7qPnRGGp_Z5" role="jymVt">
        <property role="TrG5h" value="myAsociations" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7qPnRGGp_Hw" role="1B3o_S" />
        <node concept="3uibUv" id="7qPnRGGpA6H" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7qPnRGGpA6I" role="11_B2D">
            <ref role="3uigEE" node="7qPnRGGpoZs" resolve="FBTypeTemplateCellComponent.EventAssociation" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="7qPnRGGt8d9" role="jymVt">
        <property role="TrG5h" value="myLineSize" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7qPnRGGt7DT" role="1B3o_S" />
        <node concept="10Oyi0" id="7qPnRGGt8cz" role="1tU5fm" />
        <node concept="2YIFZM" id="7qPnRGGsXBr" role="33vP2m">
          <ref role="1Pybhc" to="rvgs:1Oxt8dqZWeT" resolve="LayoutUtil" />
          <ref role="37wK5l" to="rvgs:7qPnRGFzb_r" resolve="getLineSize" />
          <node concept="2OqwBi" id="1JYTWWzLSFP" role="37wK5m">
            <node concept="37vLTw" id="1JYTWWzLTpd" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="1JYTWWzLSFS" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="7qPnRGGuC$c" role="jymVt">
        <property role="TrG5h" value="myGapWidth" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7qPnRGGuBT$" role="1B3o_S" />
        <node concept="10Oyi0" id="7qPnRGGuCzj" role="1tU5fm" />
        <node concept="17qRlL" id="7qPnRGGuGtg" role="33vP2m">
          <node concept="37vLTw" id="7qPnRGGuDhK" role="3uHU7B">
            <ref role="3cqZAo" node="7qPnRGGpIo1" resolve="GAP_SPACES" />
          </node>
          <node concept="37vLTw" id="7qPnRGGuGIw" role="3uHU7w">
            <ref role="3cqZAo" node="7qPnRGGt8d9" resolve="myLineSize" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="7qPnRGGuGU9" role="jymVt">
        <property role="TrG5h" value="myAssociationsWidth" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7qPnRGGuGUa" role="1B3o_S" />
        <node concept="10Oyi0" id="7qPnRGGuGUb" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="7qPnRGGpC1Z" role="jymVt" />
      <node concept="3Tm6S6" id="7qPnRGGpG3h" role="1B3o_S" />
      <node concept="3clFbW" id="7qPnRGGpCac" role="jymVt">
        <node concept="3cqZAl" id="7qPnRGGpCad" role="3clF45" />
        <node concept="3Tm6S6" id="7qPnRGGpGmc" role="1B3o_S" />
        <node concept="3clFbS" id="7qPnRGGpCag" role="3clF47">
          <node concept="3clFbF" id="7qPnRGGpCal" role="3cqZAp">
            <node concept="37vLTI" id="7qPnRGGpCan" role="3clFbG">
              <node concept="37vLTw" id="7qPnRGGpEi1" role="37vLTJ">
                <ref role="3cqZAo" node="7qPnRGGp_Z5" resolve="myAsociations" />
              </node>
              <node concept="37vLTw" id="7qPnRGGpCau" role="37vLTx">
                <ref role="3cqZAo" node="7qPnRGGpCak" resolve="eventAsociations" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7qPnRGGuKcC" role="3cqZAp">
            <node concept="37vLTI" id="7qPnRGGuNDM" role="3clFbG">
              <node concept="17qRlL" id="7qPnRGGuSe1" role="37vLTx">
                <node concept="37vLTw" id="7qPnRGGuSCK" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGGt8d9" resolve="myLineSize" />
                </node>
                <node concept="2OqwBi" id="7qPnRGGuPqS" role="3uHU7B">
                  <node concept="37vLTw" id="7qPnRGGuO9M" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGpCak" resolve="eventAsociations" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGuQyo" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7qPnRGGuKcA" role="37vLTJ">
                <ref role="3cqZAo" node="7qPnRGGuGU9" resolve="myAssociationsWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7qPnRGGpCak" role="3clF46">
          <property role="TrG5h" value="eventAsociations" />
          <node concept="3uibUv" id="7qPnRGGpCai" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="7qPnRGGpCaj" role="11_B2D">
              <ref role="3uigEE" node="7qPnRGGpoZs" resolve="FBTypeTemplateCellComponent.EventAssociation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7qPnRGGpFGU" role="jymVt" />
      <node concept="3clFb_" id="7qPnRGGpGRg" role="jymVt">
        <property role="TrG5h" value="getWidth" />
        <node concept="3clFbS" id="7qPnRGGpGRj" role="3clF47">
          <node concept="3clFbF" id="7qPnRGGpJDT" role="3cqZAp">
            <node concept="3cpWs3" id="7qPnRGGuWCk" role="3clFbG">
              <node concept="37vLTw" id="7qPnRGGwmrK" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGGuGU9" resolve="myAssociationsWidth" />
              </node>
              <node concept="37vLTw" id="7qPnRGGuT8j" role="3uHU7B">
                <ref role="3cqZAo" node="7qPnRGGuC$c" resolve="myGapWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7qPnRGGpGxE" role="1B3o_S" />
        <node concept="10Oyi0" id="7qPnRGGpGRb" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="7qPnRGGqjMc" role="jymVt" />
      <node concept="3clFb_" id="7qPnRGGt0uR" role="jymVt">
        <property role="TrG5h" value="paint" />
        <node concept="3clFbS" id="7qPnRGGt0uU" role="3clF47">
          <node concept="3clFbF" id="7qPnRGGuXkB" role="3cqZAp">
            <node concept="1rXfSq" id="7qPnRGGuXk_" role="3clFbG">
              <ref role="37wK5l" node="7qPnRGGt4_W" resolve="paintLines" />
              <node concept="37vLTw" id="7qPnRGGuXwa" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGt1xA" resolve="graphics" />
              </node>
              <node concept="37vLTw" id="7qPnRGGviZ6" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGt2U$" resolve="inputPorts" />
              </node>
              <node concept="37vLTw" id="7qPnRGGwmc7" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGt22N" resolve="x" />
              </node>
              <node concept="37vLTw" id="7qPnRGGF6D0" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGF3zk" resolve="y" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7qPnRGGv5ff" role="3cqZAp">
            <node concept="1rXfSq" id="7qPnRGGv5fg" role="3clFbG">
              <ref role="37wK5l" node="7qPnRGGv2Ba" resolve="paintAssociations" />
              <node concept="37vLTw" id="7qPnRGGv5fh" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGt1xA" resolve="graphics" />
              </node>
              <node concept="37vLTw" id="7qPnRGGwv0O" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGt2U$" resolve="inputPorts" />
              </node>
              <node concept="37vLTw" id="3IX4BsJPLw0" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGt22N" resolve="x" />
              </node>
              <node concept="37vLTw" id="7qPnRGGF74I" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGF3zk" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7qPnRGGsY_n" role="1B3o_S" />
        <node concept="3cqZAl" id="7qPnRGGt0ZL" role="3clF45" />
        <node concept="37vLTG" id="7qPnRGGt1xA" role="3clF46">
          <property role="TrG5h" value="graphics" />
          <node concept="3uibUv" id="7qPnRGGt1x_" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="7qPnRGGt2U$" role="3clF46">
          <property role="TrG5h" value="inputPorts" />
          <node concept="10P_77" id="7qPnRGGt3r$" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGt22N" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7qPnRGGt2zd" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGF3zk" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7qPnRGGF4S$" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="7qPnRGGt3wB" role="jymVt" />
      <node concept="3clFb_" id="7qPnRGGt4_W" role="jymVt">
        <property role="TrG5h" value="paintLines" />
        <node concept="37vLTG" id="7qPnRGGt5AA" role="3clF46">
          <property role="TrG5h" value="graphics" />
          <node concept="3uibUv" id="7qPnRGGt5AB" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="7qPnRGGvjnt" role="3clF46">
          <property role="TrG5h" value="inputPorts" />
          <node concept="10P_77" id="7qPnRGGvk83" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGt66c" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7qPnRGGt6Bj" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGF15Y" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7qPnRGGF2ta" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7qPnRGGt4_Z" role="3clF47">
          <node concept="1Dw8fO" id="7qPnRGGvef3" role="3cqZAp">
            <node concept="3cpWsn" id="7qPnRGGvef4" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="7qPnRGGvehl" role="1tU5fm" />
              <node concept="3cmrfG" id="7qPnRGGvemz" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="7qPnRGGvef5" role="2LFqv$">
              <node concept="3cpWs8" id="7qPnRGGw4lD" role="3cqZAp">
                <node concept="3cpWsn" id="7qPnRGGw4lE" role="3cpWs9">
                  <property role="TrG5h" value="portY" />
                  <node concept="10Oyi0" id="7qPnRGGw5Wu" role="1tU5fm" />
                  <node concept="1rXfSq" id="7qPnRGGw4lF" role="33vP2m">
                    <ref role="37wK5l" node="7qPnRGGvC_T" resolve="getEventPortPosition" />
                    <node concept="37vLTw" id="7qPnRGGw4lG" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGvjnt" resolve="inputPorts" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGw4lH" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGvef4" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGF3hq" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGF15Y" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7qPnRGGw6yt" role="3cqZAp">
                <node concept="2OqwBi" id="7qPnRGGw6Kr" role="3clFbG">
                  <node concept="37vLTw" id="7qPnRGGw6yr" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGt5AA" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGw6SN" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
                    <node concept="37vLTw" id="7qPnRGGwf2I" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGt66c" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGw6XB" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGw4lE" resolve="portY" />
                    </node>
                    <node concept="3cpWs3" id="7qPnRGGw81R" role="37wK5m">
                      <node concept="1rXfSq" id="7qPnRGGwlG4" role="3uHU7w">
                        <ref role="37wK5l" node="7qPnRGGpGRg" resolve="getWidth" />
                      </node>
                      <node concept="37vLTw" id="7qPnRGGwfBP" role="3uHU7B">
                        <ref role="3cqZAo" node="7qPnRGGt66c" resolve="x" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7qPnRGGw7gy" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGw4lE" resolve="portY" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="7qPnRGGvfa_" role="1Dwp0S">
              <node concept="37vLTw" id="7qPnRGGver7" role="3uHU7B">
                <ref role="3cqZAo" node="7qPnRGGvef4" resolve="i" />
              </node>
              <node concept="1rXfSq" id="7qPnRGGvAu6" role="3uHU7w">
                <ref role="37wK5l" node="7qPnRGGvAu2" resolve="getEventPortsCount" />
                <node concept="37vLTw" id="7qPnRGGvAu5" role="37wK5m">
                  <ref role="3cqZAo" node="7qPnRGGvjnt" resolve="inputPorts" />
                </node>
              </node>
            </node>
            <node concept="3uNrnE" id="3IX4BsJNGWX" role="1Dwrff">
              <node concept="37vLTw" id="3IX4BsJNGWZ" role="2$L3a6">
                <ref role="3cqZAo" node="7qPnRGGvef4" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="7qPnRGGwnsB" role="3cqZAp">
            <node concept="3cpWsn" id="7qPnRGGwnsC" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="7qPnRGGwnsD" role="1tU5fm" />
              <node concept="3cmrfG" id="7qPnRGGwnsE" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="7qPnRGGwnsF" role="2LFqv$">
              <node concept="3cpWs8" id="7qPnRGGwnsG" role="3cqZAp">
                <node concept="3cpWsn" id="7qPnRGGwnsH" role="3cpWs9">
                  <property role="TrG5h" value="portY" />
                  <node concept="10Oyi0" id="7qPnRGGwnsI" role="1tU5fm" />
                  <node concept="1rXfSq" id="7qPnRGGwnsK" role="33vP2m">
                    <ref role="37wK5l" node="7qPnRGGvNjr" resolve="getDataPortPosition" />
                    <node concept="37vLTw" id="7qPnRGGwnsL" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGvjnt" resolve="inputPorts" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGwnsM" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGwnsC" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGF2Vd" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGF15Y" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7qPnRGGwnsO" role="3cqZAp">
                <node concept="2OqwBi" id="7qPnRGGwnsP" role="3clFbG">
                  <node concept="37vLTw" id="7qPnRGGwnsQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGt5AA" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGwnsR" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
                    <node concept="37vLTw" id="7qPnRGGwnsS" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGt66c" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGwnsT" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGwnsH" resolve="portY" />
                    </node>
                    <node concept="3cpWs3" id="7qPnRGGwnsU" role="37wK5m">
                      <node concept="1rXfSq" id="7qPnRGGwnsV" role="3uHU7w">
                        <ref role="37wK5l" node="7qPnRGGpGRg" resolve="getWidth" />
                      </node>
                      <node concept="37vLTw" id="7qPnRGGwnsW" role="3uHU7B">
                        <ref role="3cqZAo" node="7qPnRGGt66c" resolve="x" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7qPnRGGwnsX" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGwnsH" resolve="portY" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="7qPnRGGwnsY" role="1Dwp0S">
              <node concept="37vLTw" id="7qPnRGGwnsZ" role="3uHU7B">
                <ref role="3cqZAo" node="7qPnRGGwnsC" resolve="i" />
              </node>
              <node concept="1rXfSq" id="7qPnRGGwnt0" role="3uHU7w">
                <ref role="37wK5l" node="7qPnRGGvNja" resolve="getBottomPortsCount" />
                <node concept="37vLTw" id="7qPnRGGwnt1" role="37wK5m">
                  <ref role="3cqZAo" node="7qPnRGGvjnt" resolve="inputPorts" />
                </node>
              </node>
            </node>
            <node concept="3uNrnE" id="3IX4BsJNI5R" role="1Dwrff">
              <node concept="37vLTw" id="3IX4BsJNI5T" role="2$L3a6">
                <ref role="3cqZAo" node="7qPnRGGwnsC" resolve="i" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7qPnRGGt42I" role="1B3o_S" />
        <node concept="3cqZAl" id="7qPnRGGt57P" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="7qPnRGGvJIX" role="jymVt" />
      <node concept="3clFb_" id="7qPnRGGv2Ba" role="jymVt">
        <property role="TrG5h" value="paintAssociations" />
        <node concept="3clFbS" id="7qPnRGGv2Bd" role="3clF47">
          <node concept="3clFbF" id="7qPnRGGwxQJ" role="3cqZAp">
            <node concept="d57v9" id="7qPnRGGwyv8" role="3clFbG">
              <node concept="FJ1c_" id="3IX4BsJQ4BG" role="37vLTx">
                <node concept="3cmrfG" id="3IX4BsJQ4FT" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="7qPnRGGwyDo" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGGuC$c" resolve="myGapWidth" />
                </node>
              </node>
              <node concept="37vLTw" id="7qPnRGGwxQH" role="37vLTJ">
                <ref role="3cqZAo" node="7qPnRGGv3T8" resolve="x" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3IX4BsJPSqx" role="3cqZAp">
            <node concept="d57v9" id="3IX4BsJPSqy" role="3clFbG">
              <node concept="FJ1c_" id="3IX4BsJPSqz" role="37vLTx">
                <node concept="3cmrfG" id="3IX4BsJPSq$" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="3IX4BsJPSq_" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGGt8d9" resolve="myLineSize" />
                </node>
              </node>
              <node concept="37vLTw" id="3IX4BsJPTir" role="37vLTJ">
                <ref role="3cqZAo" node="7qPnRGGv3T8" resolve="x" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="7qPnRGGwpY2" role="3cqZAp">
            <node concept="2GrKxI" id="7qPnRGGwpY3" role="2Gsz3X">
              <property role="TrG5h" value="association" />
            </node>
            <node concept="37vLTw" id="7qPnRGGwEa7" role="2GsD0m">
              <ref role="3cqZAo" node="7qPnRGGp_Z5" resolve="myAsociations" />
            </node>
            <node concept="3clFbS" id="7qPnRGGwpY5" role="2LFqv$">
              <node concept="3cpWs8" id="7qPnRGGwKra" role="3cqZAp">
                <node concept="3cpWsn" id="7qPnRGGwKrd" role="3cpWs9">
                  <property role="TrG5h" value="eventNumber" />
                  <node concept="10Oyi0" id="7qPnRGGwKr8" role="1tU5fm" />
                  <node concept="2OqwBi" id="7qPnRGGwKLT" role="33vP2m">
                    <node concept="2GrUjf" id="7qPnRGGwKBF" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7qPnRGGwpY3" resolve="association" />
                    </node>
                    <node concept="2OwXpG" id="7qPnRGGwLrv" role="2OqNvi">
                      <ref role="2Oxat5" node="7qPnRGGpq3u" resolve="myEventNumber" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7qPnRGGwJ0r" role="3cqZAp">
                <node concept="3cpWsn" id="7qPnRGGwJ0s" role="3cpWs9">
                  <property role="TrG5h" value="dataNumbers" />
                  <node concept="3uibUv" id="7qPnRGGwJ07" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="7qPnRGGwJ0a" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7qPnRGGwJ0t" role="33vP2m">
                    <node concept="2GrUjf" id="7qPnRGGwJ0u" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7qPnRGGwpY3" resolve="association" />
                    </node>
                    <node concept="2OwXpG" id="7qPnRGGwJ0v" role="2OqNvi">
                      <ref role="2Oxat5" node="7qPnRGGpqDf" resolve="myVariableNumbers" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7qPnRGGwH5a" role="3cqZAp">
                <node concept="3cpWsn" id="7qPnRGGwH5d" role="3cpWs9">
                  <property role="TrG5h" value="lastVariableNumber" />
                  <node concept="10Oyi0" id="7qPnRGGwH58" role="1tU5fm" />
                  <node concept="2OqwBi" id="7qPnRGGwMem" role="33vP2m">
                    <node concept="37vLTw" id="7qPnRGGwJ0w" role="2Oq$k0">
                      <ref role="3cqZAo" node="7qPnRGGwJ0s" resolve="dataNumbers" />
                    </node>
                    <node concept="liA8E" id="7qPnRGGwMUP" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cpWsd" id="7qPnRGGxP4r" role="37wK5m">
                        <node concept="3cmrfG" id="7qPnRGGxP8K" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="7qPnRGGwOH6" role="3uHU7B">
                          <node concept="37vLTw" id="7qPnRGGwN8i" role="2Oq$k0">
                            <ref role="3cqZAo" node="7qPnRGGwJ0s" resolve="dataNumbers" />
                          </node>
                          <node concept="liA8E" id="7qPnRGGxBsS" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7qPnRGGxTPE" role="3cqZAp">
                <node concept="3cpWsn" id="7qPnRGGxTPF" role="3cpWs9">
                  <property role="TrG5h" value="eventY" />
                  <node concept="10Oyi0" id="7qPnRGGxTP7" role="1tU5fm" />
                  <node concept="1rXfSq" id="7qPnRGGxTPH" role="33vP2m">
                    <ref role="37wK5l" node="7qPnRGGvC_T" resolve="getEventPortPosition" />
                    <node concept="37vLTw" id="7qPnRGGxTPI" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGwpYU" resolve="inputPorts" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGxTPJ" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGwKrd" resolve="eventNumber" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGEBJe" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGE_5o" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7qPnRGGwGvw" role="3cqZAp">
                <node concept="2OqwBi" id="7qPnRGGwGBP" role="3clFbG">
                  <node concept="37vLTw" id="7qPnRGGwGvv" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGv3hS" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGwGZA" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
                    <node concept="37vLTw" id="7qPnRGGxPsF" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGv3T8" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGxTPL" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGxTPF" resolve="eventY" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGxSdA" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGGv3T8" resolve="x" />
                    </node>
                    <node concept="1rXfSq" id="7qPnRGGxSsz" role="37wK5m">
                      <ref role="37wK5l" node="7qPnRGGvNjr" resolve="getDataPortPosition" />
                      <node concept="37vLTw" id="7qPnRGGxSs$" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGGwpYU" resolve="inputPorts" />
                      </node>
                      <node concept="37vLTw" id="7qPnRGGxSW5" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGGwH5d" resolve="lastVariableNumber" />
                      </node>
                      <node concept="37vLTw" id="7qPnRGGF0HX" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGGE_5o" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3IX4BsJQkEe" role="3cqZAp" />
              <node concept="3clFbF" id="3IX4BsJQkhc" role="3cqZAp">
                <node concept="2OqwBi" id="3IX4BsJQkhd" role="3clFbG">
                  <node concept="37vLTw" id="3IX4BsJQkhe" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGv3hS" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="3IX4BsJQkhf" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                    <node concept="2YIFZM" id="7pEplJkssNN" role="37wK5m">
                      <ref role="37wK5l" node="7pEplJksrRt" resolve="getColorFor" />
                      <ref role="1Pybhc" node="2JGKyjit8pv" resolve="DiagramColors" />
                      <node concept="Rm8GO" id="3IX4BsJQru2" role="37wK5m">
                        <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                        <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7qPnRGGxWPM" role="3cqZAp">
                <node concept="2OqwBi" id="7qPnRGGxXgC" role="3clFbG">
                  <node concept="37vLTw" id="7qPnRGGxWPK" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGv3hS" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGxXD5" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int)" resolve="fillRect" />
                    <node concept="3cpWsd" id="7qPnRGGxYpY" role="37wK5m">
                      <node concept="37vLTw" id="7qPnRGGxXI5" role="3uHU7B">
                        <ref role="3cqZAo" node="7qPnRGGv3T8" resolve="x" />
                      </node>
                      <node concept="3cmrfG" id="3IX4BsJPKOL" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                    <node concept="3cpWsd" id="7qPnRGGyfBG" role="37wK5m">
                      <node concept="37vLTw" id="7qPnRGGxYTA" role="3uHU7B">
                        <ref role="3cqZAo" node="7qPnRGGxTPF" resolve="eventY" />
                      </node>
                      <node concept="3cmrfG" id="3IX4BsJPKZ3" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="3IX4BsJQrVB" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                    <node concept="3cmrfG" id="3IX4BsJQseb" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3IX4BsJQlm7" role="3cqZAp">
                <node concept="2OqwBi" id="3IX4BsJQlm8" role="3clFbG">
                  <node concept="37vLTw" id="3IX4BsJQlm9" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGv3hS" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="3IX4BsJQlma" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                    <node concept="1rXfSq" id="3IX4BsJQlmb" role="37wK5m">
                      <ref role="37wK5l" node="3IX4BsJOCID" resolve="getForegroundColor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3IX4BsJQjLP" role="3cqZAp">
                <node concept="2OqwBi" id="3IX4BsJQjLQ" role="3clFbG">
                  <node concept="37vLTw" id="3IX4BsJQjLR" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGv3hS" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="3IX4BsJQjLS" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.drawRect(int,int,int,int)" resolve="drawRect" />
                    <node concept="3cpWsd" id="3IX4BsJQjLT" role="37wK5m">
                      <node concept="37vLTw" id="3IX4BsJQjLU" role="3uHU7B">
                        <ref role="3cqZAo" node="7qPnRGGv3T8" resolve="x" />
                      </node>
                      <node concept="3cmrfG" id="3IX4BsJQjLV" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                    <node concept="3cpWsd" id="3IX4BsJQjLW" role="37wK5m">
                      <node concept="37vLTw" id="3IX4BsJQjLX" role="3uHU7B">
                        <ref role="3cqZAo" node="7qPnRGGxTPF" resolve="eventY" />
                      </node>
                      <node concept="3cmrfG" id="3IX4BsJQjLY" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="3IX4BsJQjLZ" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                    <node concept="3cmrfG" id="3IX4BsJQjM0" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7qPnRGGygfn" role="3cqZAp" />
              <node concept="2Gpval" id="7qPnRGGygV$" role="3cqZAp">
                <node concept="2GrKxI" id="7qPnRGGygVA" role="2Gsz3X">
                  <property role="TrG5h" value="dataNumber" />
                </node>
                <node concept="37vLTw" id="7qPnRGGyhpp" role="2GsD0m">
                  <ref role="3cqZAo" node="7qPnRGGwJ0s" resolve="dataNumbers" />
                </node>
                <node concept="3clFbS" id="7qPnRGGygVE" role="2LFqv$">
                  <node concept="3cpWs8" id="7qPnRGGyjhC" role="3cqZAp">
                    <node concept="3cpWsn" id="7qPnRGGyjhD" role="3cpWs9">
                      <property role="TrG5h" value="dataY" />
                      <node concept="10Oyi0" id="7qPnRGGyjhq" role="1tU5fm" />
                      <node concept="1rXfSq" id="7qPnRGGyjhF" role="33vP2m">
                        <ref role="37wK5l" node="7qPnRGGvNjr" resolve="getDataPortPosition" />
                        <node concept="37vLTw" id="7qPnRGGyjhG" role="37wK5m">
                          <ref role="3cqZAo" node="7qPnRGGwpYU" resolve="inputPorts" />
                        </node>
                        <node concept="2GrUjf" id="7qPnRGGyjhH" role="37wK5m">
                          <ref role="2Gs0qQ" node="7qPnRGGygVA" resolve="dataNumber" />
                        </node>
                        <node concept="37vLTw" id="7qPnRGGF0qo" role="37wK5m">
                          <ref role="3cqZAo" node="7qPnRGGE_5o" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3IX4BsJQhdd" role="3cqZAp">
                    <node concept="2OqwBi" id="3IX4BsJQhzk" role="3clFbG">
                      <node concept="37vLTw" id="3IX4BsJQhdb" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qPnRGGv3hS" resolve="graphics" />
                      </node>
                      <node concept="liA8E" id="3IX4BsJQhHi" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                        <node concept="2YIFZM" id="7pEplJkssTm" role="37wK5m">
                          <ref role="37wK5l" node="7pEplJksrRt" resolve="getColorFor" />
                          <ref role="1Pybhc" node="2JGKyjit8pv" resolve="DiagramColors" />
                          <node concept="Rm8GO" id="7pEplJkssWH" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7qPnRGGyhwz" role="3cqZAp">
                    <node concept="2OqwBi" id="7qPnRGGyhw_" role="3clFbG">
                      <node concept="37vLTw" id="7qPnRGGyhwA" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qPnRGGv3hS" resolve="graphics" />
                      </node>
                      <node concept="liA8E" id="7qPnRGGyhwB" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int)" resolve="fillRect" />
                        <node concept="3cpWsd" id="3IX4BsJPL3C" role="37wK5m">
                          <node concept="37vLTw" id="3IX4BsJPL3D" role="3uHU7B">
                            <ref role="3cqZAo" node="7qPnRGGv3T8" resolve="x" />
                          </node>
                          <node concept="3cmrfG" id="3IX4BsJPL3E" role="3uHU7w">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                        <node concept="3cpWsd" id="3IX4BsJPL3F" role="37wK5m">
                          <node concept="37vLTw" id="3IX4BsJPLlj" role="3uHU7B">
                            <ref role="3cqZAo" node="7qPnRGGyjhD" resolve="dataY" />
                          </node>
                          <node concept="3cmrfG" id="3IX4BsJPL3H" role="3uHU7w">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                        <node concept="3cmrfG" id="3IX4BsJPL3I" role="37wK5m">
                          <property role="3cmrfH" value="4" />
                        </node>
                        <node concept="3cmrfG" id="3IX4BsJPL3J" role="37wK5m">
                          <property role="3cmrfH" value="4" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3IX4BsJQiUT" role="3cqZAp">
                    <node concept="2OqwBi" id="3IX4BsJQiUU" role="3clFbG">
                      <node concept="37vLTw" id="3IX4BsJQiUV" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qPnRGGv3hS" resolve="graphics" />
                      </node>
                      <node concept="liA8E" id="3IX4BsJQiUW" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                        <node concept="1rXfSq" id="3IX4BsJQjlt" role="37wK5m">
                          <ref role="37wK5l" node="3IX4BsJOCID" resolve="getForegroundColor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3IX4BsJQi$H" role="3cqZAp">
                    <node concept="2OqwBi" id="3IX4BsJQi$I" role="3clFbG">
                      <node concept="37vLTw" id="3IX4BsJQi$J" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qPnRGGv3hS" resolve="graphics" />
                      </node>
                      <node concept="liA8E" id="3IX4BsJQi$K" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.drawRect(int,int,int,int)" resolve="drawRect" />
                        <node concept="3cpWsd" id="3IX4BsJQi$L" role="37wK5m">
                          <node concept="37vLTw" id="3IX4BsJQi$M" role="3uHU7B">
                            <ref role="3cqZAo" node="7qPnRGGv3T8" resolve="x" />
                          </node>
                          <node concept="3cmrfG" id="3IX4BsJQi$N" role="3uHU7w">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                        <node concept="3cpWsd" id="3IX4BsJQi$O" role="37wK5m">
                          <node concept="37vLTw" id="3IX4BsJQi$P" role="3uHU7B">
                            <ref role="3cqZAo" node="7qPnRGGyjhD" resolve="dataY" />
                          </node>
                          <node concept="3cmrfG" id="3IX4BsJQi$Q" role="3uHU7w">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                        <node concept="3cmrfG" id="3IX4BsJQi$R" role="37wK5m">
                          <property role="3cmrfH" value="4" />
                        </node>
                        <node concept="3cmrfG" id="3IX4BsJQi$S" role="37wK5m">
                          <property role="3cmrfH" value="4" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3IX4BsK4ZVO" role="3cqZAp">
                <node concept="d57v9" id="3IX4BsK50TH" role="3clFbG">
                  <node concept="37vLTw" id="3IX4BsK515R" role="37vLTx">
                    <ref role="3cqZAo" node="7qPnRGGt8d9" resolve="myLineSize" />
                  </node>
                  <node concept="37vLTw" id="3IX4BsK4ZVM" role="37vLTJ">
                    <ref role="3cqZAo" node="7qPnRGGv3T8" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7qPnRGGv1Y0" role="1B3o_S" />
        <node concept="3cqZAl" id="7qPnRGGv2Ah" role="3clF45" />
        <node concept="37vLTG" id="7qPnRGGv3hS" role="3clF46">
          <property role="TrG5h" value="graphics" />
          <node concept="3uibUv" id="7qPnRGGv3hR" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="7qPnRGGwpYU" role="3clF46">
          <property role="TrG5h" value="inputPorts" />
          <node concept="10P_77" id="7qPnRGGwqKw" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGv3T8" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7qPnRGGv4wF" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGE_5o" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7qPnRGGEAnm" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="7qPnRGGwiCp" role="jymVt" />
      <node concept="3clFb_" id="7qPnRGGvAu2" role="jymVt">
        <property role="TrG5h" value="getEventPortsCount" />
        <node concept="3Tm6S6" id="7qPnRGGvAu3" role="1B3o_S" />
        <node concept="10Oyi0" id="7qPnRGGvAu4" role="3clF45" />
        <node concept="37vLTG" id="7qPnRGGvAsq" role="3clF46">
          <property role="TrG5h" value="input" />
          <node concept="10P_77" id="7qPnRGGvAsr" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7qPnRGGvAqF" role="3clF47">
          <node concept="3cpWs6" id="7qPnRGGvAsg" role="3cqZAp">
            <node concept="1eOMI4" id="7qPnRGGvAsh" role="3cqZAk">
              <node concept="3K4zz7" id="7qPnRGGvAsi" role="1eOMHV">
                <node concept="2OqwBi" id="7qPnRGGvAsj" role="3K4E3e">
                  <node concept="37vLTw" id="7qPnRGGvAsk" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGvAsl" role="2OqNvi">
                    <ref role="37wK5l" node="7qPnRGGtKNp" resolve="getInputEventPortsCount" />
                  </node>
                </node>
                <node concept="37vLTw" id="7qPnRGGvAss" role="3K4Cdx">
                  <ref role="3cqZAo" node="7qPnRGGvAsq" resolve="input" />
                </node>
                <node concept="2OqwBi" id="7qPnRGGvAsn" role="3K4GZi">
                  <node concept="37vLTw" id="7qPnRGGvAso" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGvAsp" role="2OqNvi">
                    <ref role="37wK5l" node="7qPnRGGtYgj" resolve="getOutputEventPortsCount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7qPnRGGvKwC" role="jymVt" />
      <node concept="3clFb_" id="7qPnRGGvC_T" role="jymVt">
        <property role="TrG5h" value="getEventPortPosition" />
        <node concept="3clFbS" id="7qPnRGGvC_W" role="3clF47">
          <node concept="3cpWs6" id="7qPnRGGvECp" role="3cqZAp">
            <node concept="3cpWs3" id="7qPnRGGEqX1" role="3cqZAk">
              <node concept="37vLTw" id="7qPnRGGEsmH" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGGEmlE" resolve="offsetY" />
              </node>
              <node concept="2OqwBi" id="7qPnRGGEtRu" role="3uHU7B">
                <node concept="1eOMI4" id="7qPnRGGvECq" role="2Oq$k0">
                  <node concept="3K4zz7" id="7qPnRGGvECr" role="1eOMHV">
                    <node concept="2OqwBi" id="7qPnRGGvECs" role="3K4E3e">
                      <node concept="37vLTw" id="7qPnRGGvECt" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="7qPnRGGvECu" role="2OqNvi">
                        <ref role="37wK5l" node="7qPnRGGqsSb" resolve="getInputEventPortPosition" />
                        <node concept="37vLTw" id="7qPnRGGvG_l" role="37wK5m">
                          <ref role="3cqZAo" node="7qPnRGGvEQa" resolve="number" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7qPnRGGvECv" role="3K4Cdx">
                      <ref role="3cqZAo" node="7qPnRGGvDjh" resolve="input" />
                    </node>
                    <node concept="2OqwBi" id="7qPnRGGvECw" role="3K4GZi">
                      <node concept="37vLTw" id="7qPnRGGvECx" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="7qPnRGGvECy" role="2OqNvi">
                        <ref role="37wK5l" node="7qPnRGGri0u" resolve="getOutputEventPortPosition" />
                        <node concept="37vLTw" id="7qPnRGGvH$C" role="37wK5m">
                          <ref role="3cqZAo" node="7qPnRGGvEQa" resolve="number" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="7qPnRGGExUB" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7qPnRGGvBRW" role="1B3o_S" />
        <node concept="10Oyi0" id="7qPnRGGEzmT" role="3clF45" />
        <node concept="37vLTG" id="7qPnRGGvDjh" role="3clF46">
          <property role="TrG5h" value="input" />
          <node concept="10P_77" id="7qPnRGGvDjg" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGvEQa" role="3clF46">
          <property role="TrG5h" value="number" />
          <node concept="10Oyi0" id="7qPnRGGvFyE" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGEmlE" role="3clF46">
          <property role="TrG5h" value="offsetY" />
          <node concept="10Oyi0" id="7qPnRGGEnH$" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="7qPnRGGvLdf" role="jymVt" />
      <node concept="3clFb_" id="7qPnRGGvNja" role="jymVt">
        <property role="TrG5h" value="getBottomPortsCount" />
        <node concept="3Tm6S6" id="7qPnRGGvNjb" role="1B3o_S" />
        <node concept="10Oyi0" id="7qPnRGGvNjc" role="3clF45" />
        <node concept="37vLTG" id="7qPnRGGvNjd" role="3clF46">
          <property role="TrG5h" value="input" />
          <node concept="10P_77" id="7qPnRGGvNje" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7qPnRGGvNjf" role="3clF47">
          <node concept="3cpWs6" id="7qPnRGGvNjg" role="3cqZAp">
            <node concept="1eOMI4" id="7qPnRGGvNjh" role="3cqZAk">
              <node concept="3K4zz7" id="7qPnRGGvNji" role="1eOMHV">
                <node concept="2OqwBi" id="7qPnRGGvNjj" role="3K4E3e">
                  <node concept="37vLTw" id="7qPnRGGvNjk" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGvNjl" role="2OqNvi">
                    <ref role="37wK5l" node="7qPnRGGtkNX" resolve="getInputBottomPortsCount" />
                  </node>
                </node>
                <node concept="37vLTw" id="7qPnRGGvNjm" role="3K4Cdx">
                  <ref role="3cqZAo" node="7qPnRGGvNjd" resolve="input" />
                </node>
                <node concept="2OqwBi" id="7qPnRGGvNjn" role="3K4GZi">
                  <node concept="37vLTw" id="7qPnRGGvNjo" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                  </node>
                  <node concept="liA8E" id="7qPnRGGvNjp" role="2OqNvi">
                    <ref role="37wK5l" node="7qPnRGGtyl9" resolve="getOutputBootomPortsCount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7qPnRGGvNjq" role="jymVt" />
      <node concept="3clFb_" id="7qPnRGGvNjr" role="jymVt">
        <property role="TrG5h" value="getDataPortPosition" />
        <node concept="3clFbS" id="7qPnRGGvNjs" role="3clF47">
          <node concept="3cpWs6" id="7qPnRGGvNjt" role="3cqZAp">
            <node concept="3cpWs3" id="7qPnRGGEV_M" role="3cqZAk">
              <node concept="37vLTw" id="7qPnRGGEX3r" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGGECaJ" resolve="offsetY" />
              </node>
              <node concept="2OqwBi" id="7qPnRGGEHq1" role="3uHU7B">
                <node concept="1eOMI4" id="7qPnRGGvNju" role="2Oq$k0">
                  <node concept="3K4zz7" id="7qPnRGGvNjv" role="1eOMHV">
                    <node concept="2OqwBi" id="7qPnRGGvNjw" role="3K4E3e">
                      <node concept="37vLTw" id="7qPnRGGvNjx" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="7qPnRGGvNjy" role="2OqNvi">
                        <ref role="37wK5l" node="7qPnRGGrMvK" resolve="getInputDataPortPosition" />
                        <node concept="37vLTw" id="7qPnRGGvNjz" role="37wK5m">
                          <ref role="3cqZAo" node="7qPnRGGvNjH" resolve="number" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7qPnRGGvNj$" role="3K4Cdx">
                      <ref role="3cqZAo" node="7qPnRGGvNjF" resolve="input" />
                    </node>
                    <node concept="2OqwBi" id="7qPnRGGvNj_" role="3K4GZi">
                      <node concept="37vLTw" id="7qPnRGGvNjA" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
                      </node>
                      <node concept="liA8E" id="7qPnRGGvNjB" role="2OqNvi">
                        <ref role="37wK5l" node="6tmliaB2s3z" resolve="getOutputDataPortPosition" />
                        <node concept="37vLTw" id="7qPnRGGvNjC" role="37wK5m">
                          <ref role="3cqZAo" node="7qPnRGGvNjH" resolve="number" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="7qPnRGGELta" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7qPnRGGvNjD" role="1B3o_S" />
        <node concept="10Oyi0" id="7qPnRGGEYwZ" role="3clF45" />
        <node concept="37vLTG" id="7qPnRGGvNjF" role="3clF46">
          <property role="TrG5h" value="input" />
          <node concept="10P_77" id="7qPnRGGvNjG" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGvNjH" role="3clF46">
          <property role="TrG5h" value="number" />
          <node concept="10Oyi0" id="7qPnRGGvNjI" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7qPnRGGECaJ" role="3clF46">
          <property role="TrG5h" value="offsetY" />
          <node concept="10Oyi0" id="7qPnRGGEDw0" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsJOAES" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsJOCID" role="jymVt">
      <property role="TrG5h" value="getForegroundColor" />
      <node concept="3Tm6S6" id="3IX4BsJOCIE" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsJOCIF" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3clFbS" id="3IX4BsJOCIG" role="3clF47">
        <node concept="3cpWs8" id="3IX4BsJOCIH" role="3cqZAp">
          <node concept="3cpWsn" id="3IX4BsJOCII" role="3cpWs9">
            <property role="TrG5h" value="foreground" />
            <node concept="3uibUv" id="3IX4BsJOCIJ" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="2OqwBi" id="3IX4BsJOCIK" role="33vP2m">
              <node concept="2OqwBi" id="1JYTWWzLUAF" role="2Oq$k0">
                <node concept="37vLTw" id="1JYTWWzLX4D" role="2Oq$k0">
                  <ref role="3cqZAo" node="1JYTWWzJ_QF" resolve="myCellCollection" />
                </node>
                <node concept="liA8E" id="1JYTWWzLUAI" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
                </node>
              </node>
              <node concept="liA8E" id="3IX4BsJOCIM" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="3IX4BsJOCIN" role="37wK5m">
                  <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                  <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_COLOR" resolve="TEXT_COLOR" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3IX4BsJOCIO" role="3cqZAp">
          <node concept="3K4zz7" id="3IX4BsJOCIP" role="3cqZAk">
            <node concept="10M0yZ" id="3IX4BsJOCIQ" role="3K4E3e">
              <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
              <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
            </node>
            <node concept="37vLTw" id="3IX4BsJOCIR" role="3K4GZi">
              <ref role="3cqZAo" node="3IX4BsJOCII" resolve="foreground" />
            </node>
            <node concept="3clFbC" id="3IX4BsJOCIS" role="3K4Cdx">
              <node concept="10Nm6u" id="3IX4BsJOCIT" role="3uHU7w" />
              <node concept="37vLTw" id="3IX4BsJOCIU" role="3uHU7B">
                <ref role="3cqZAo" node="3IX4BsJOCII" resolve="foreground" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsJOAP7" role="jymVt" />
    <node concept="3Tm1VV" id="1HEL0zVYRRB" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7qPnRGG6q3r">
    <property role="TrG5h" value="FBTypeCellComponent" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="7qPnRGG6q4s" role="jymVt" />
    <node concept="Wx3nA" id="3DiEZ8TJvSm" role="jymVt">
      <property role="TrG5h" value="PORT_SIZE" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="3DiEZ8TJvSp" role="1tU5fm" />
      <node concept="3cmrfG" id="3DiEZ8TJvSq" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
      <node concept="3Tm6S6" id="3DiEZ8TJvSo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7qPnRGG6BLB" role="jymVt" />
    <node concept="Wx3nA" id="3DiEZ8TJ_KN" role="jymVt">
      <property role="TrG5h" value="CENTER_PADDING" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="3DiEZ8TJ_KQ" role="1tU5fm" />
      <node concept="3cmrfG" id="3DiEZ8TJ_KR" role="33vP2m">
        <property role="3cmrfH" value="20" />
      </node>
      <node concept="3Tm6S6" id="3DiEZ8TJ_KP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7qPnRGG6BLH" role="jymVt" />
    <node concept="Wx3nA" id="3DiEZ8TJFBm" role="jymVt">
      <property role="TrG5h" value="INNER_BORDER_PADDING" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="3DiEZ8TJFBp" role="1tU5fm" />
      <node concept="3cmrfG" id="3DiEZ8TJFBq" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
      <node concept="3Tm6S6" id="3DiEZ8TJFBo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7qPnRGG6BLM" role="jymVt" />
    <node concept="Wx3nA" id="3DiEZ8TJL_W" role="jymVt">
      <property role="TrG5h" value="COLUMNS_PADDING" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="3DiEZ8TJL_Z" role="1tU5fm" />
      <node concept="3cpWs3" id="3DiEZ8TJLA0" role="33vP2m">
        <node concept="37vLTw" id="3DiEZ8TJLA1" role="3uHU7w">
          <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
        </node>
        <node concept="37vLTw" id="3DiEZ8TJLA2" role="3uHU7B">
          <ref role="3cqZAo" node="3DiEZ8TJFBm" resolve="INNER_BORDER_PADDING" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3DiEZ8TJL_Y" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7qPnRGG6C5N" role="jymVt" />
    <node concept="312cEg" id="1HEL0zW0T3f" role="jymVt">
      <property role="TrG5h" value="myTypeNameLabel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zW0T3g" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TEsOv" role="1tU5fm">
        <ref role="3uigEE" to="ee2c:3DiEZ8TCKgO" resolve="EditorCell_SceneLabel" />
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zW11Df" role="jymVt" />
    <node concept="312cEg" id="1JYTWWzCC45" role="jymVt">
      <property role="TrG5h" value="myCellCollection" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1JYTWWzCzvX" role="1B3o_S" />
      <node concept="3uibUv" id="1JYTWWzCBPl" role="1tU5fm">
        <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
      </node>
    </node>
    <node concept="2tJIrI" id="1JYTWWzCuFd" role="jymVt" />
    <node concept="312cEg" id="2SU8oJe4kYV" role="jymVt">
      <property role="TrG5h" value="myIsEditable" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SU8oJe4fbd" role="1B3o_S" />
      <node concept="10P_77" id="2SU8oJe4kmP" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2SU8oJe49wp" role="jymVt" />
    <node concept="312cEg" id="1HEL0zW0T_X" role="jymVt">
      <property role="TrG5h" value="myEventInputPortTexts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zW0T_Y" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zW0U1T" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5fP$XwiXGQQ" role="11_B2D">
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1HEL0zW0WSn" role="33vP2m">
        <node concept="1pGfFk" id="1HEL0zW0XvA" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5fP$XwiXQhh" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1HEL0zW0VY_" role="jymVt">
      <property role="TrG5h" value="myEventOutputPortTexts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zW0VYA" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zW0VYB" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5fP$XwiXIPK" role="11_B2D">
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1HEL0zW0VYD" role="33vP2m">
        <node concept="1pGfFk" id="1HEL0zW0Yl1" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5fP$XwiXSqj" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1HEL0zW0Wo3" role="jymVt">
      <property role="TrG5h" value="myDataInputPortTexts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zW0Wo4" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zW0Wo5" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5fP$XwiXKSu" role="11_B2D">
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1HEL0zW0Wo7" role="33vP2m">
        <node concept="1pGfFk" id="1HEL0zW0Yz2" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5fP$XwiXVTx" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1HEL0zW0Wr1" role="jymVt">
      <property role="TrG5h" value="myDataOutputPortTexts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zW0Wr2" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zW0Wr3" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5fP$XwiXN1x" role="11_B2D">
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1HEL0zW0Wr5" role="33vP2m">
        <node concept="1pGfFk" id="1HEL0zW0YL5" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5fP$XwiXY1E" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6LU90BNTmEa" role="jymVt">
      <property role="TrG5h" value="mySocketPortTexts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6LU90BNTmEb" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNTmEc" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNTmEd" role="11_B2D">
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="6LU90BNTmEe" role="33vP2m">
        <node concept="1pGfFk" id="6LU90BNTmEf" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="6LU90BNTmEg" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6LU90BNTmE3" role="jymVt">
      <property role="TrG5h" value="myPlugPortTexts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6LU90BNTmE4" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNTmE5" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNTmE6" role="11_B2D">
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="6LU90BNTmE7" role="33vP2m">
        <node concept="1pGfFk" id="6LU90BNTmE8" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="6LU90BNTmE9" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vmY7CyRpeP" role="jymVt" />
    <node concept="3clFbW" id="7qPnRGG79lZ" role="jymVt">
      <node concept="3cqZAl" id="7qPnRGG79m0" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGG79m1" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGG79m3" role="3clF47">
        <node concept="3clFbF" id="1JYTWWzCRxB" role="3cqZAp">
          <node concept="37vLTI" id="1JYTWWzCTrz" role="3clFbG">
            <node concept="1rXfSq" id="1JYTWWzIti8" role="37vLTx">
              <ref role="37wK5l" node="1JYTWWzIti3" resolve="createRootCell" />
              <node concept="37vLTw" id="1JYTWWzIti6" role="37wK5m">
                <ref role="3cqZAo" node="4vmY7CyRha_" resolve="context" />
              </node>
              <node concept="37vLTw" id="1JYTWWzIti7" role="37wK5m">
                <ref role="3cqZAo" node="4vmY7CyRD7U" resolve="node" />
              </node>
            </node>
            <node concept="37vLTw" id="1JYTWWzCRx_" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TKq8R" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TKslN" role="3clFbG">
            <node concept="2OqwBi" id="3DiEZ8TKqUi" role="2Oq$k0">
              <node concept="37vLTw" id="3DiEZ8TKq8P" role="2Oq$k0">
                <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
              </node>
              <node concept="liA8E" id="3DiEZ8TKrHy" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
              </node>
            </node>
            <node concept="liA8E" id="3DiEZ8TKwTr" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
              <node concept="10M0yZ" id="2CiAywAa1hQ" role="37wK5m">
                <ref role="3cqZAo" to="xxkc:3DiEZ8TM9F8" resolve="TYPE" />
                <ref role="1PxDUh" to="xxkc:3DiEZ8TM99k" resolve="RichEditorStyleAttributes" />
              </node>
              <node concept="37vLTw" id="3DiEZ8TKxyy" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGjgLG" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGGjhhD" role="3clFbG">
            <node concept="1rXfSq" id="1JYTWWzxvg5" role="37vLTx">
              <ref role="37wK5l" node="1QSEqLi5GUY" resolve="createTypeNameLabel" />
              <node concept="37vLTw" id="1JYTWWzA564" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbType" />
              </node>
              <node concept="37vLTw" id="1JYTWWzA4Nh" role="37wK5m">
                <ref role="3cqZAo" node="4vmY7CyRha_" resolve="context" />
              </node>
              <node concept="37vLTw" id="1JYTWWzA5bC" role="37wK5m">
                <ref role="3cqZAo" node="4vmY7CyRD7U" resolve="node" />
              </node>
            </node>
            <node concept="37vLTw" id="7qPnRGGjgLE" role="37vLTJ">
              <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameLabel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TfeWF" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TffP8" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TfeWD" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="3DiEZ8TfjVc" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="addEditorCell" />
              <node concept="37vLTw" id="3DiEZ8TfkqR" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameLabel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SU8oJe4s1t" role="3cqZAp">
          <node concept="37vLTI" id="2SU8oJe4sQY" role="3clFbG">
            <node concept="37vLTw" id="2SU8oJe4tuY" role="37vLTx">
              <ref role="3cqZAo" node="2SU8oJe48Q0" resolve="isEditable" />
            </node>
            <node concept="37vLTw" id="2SU8oJe4s1r" role="37vLTJ">
              <ref role="3cqZAo" node="2SU8oJe4kYV" resolve="myIsEditable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SU8oJe5WdJ" role="3cqZAp">
          <node concept="2OqwBi" id="2SU8oJe61c5" role="3clFbG">
            <node concept="2OqwBi" id="2SU8oJe5Zpi" role="2Oq$k0">
              <node concept="37vLTw" id="2SU8oJe5WdH" role="2Oq$k0">
                <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
              </node>
              <node concept="liA8E" id="2SU8oJe612M" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
              </node>
            </node>
            <node concept="liA8E" id="2SU8oJe62mV" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
              <node concept="10M0yZ" id="2SU8oJe630O" role="37wK5m">
                <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_COLOR" resolve="TEXT_COLOR" />
                <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
              </node>
              <node concept="3K4zz7" id="2SU8oJe62Jk" role="37wK5m">
                <node concept="37vLTw" id="2SU8oJe62Jl" role="3K4Cdx">
                  <ref role="3cqZAo" node="2SU8oJe4kYV" resolve="myIsEditable" />
                </node>
                <node concept="10M0yZ" id="2SU8oJe62Jm" role="3K4E3e">
                  <ref role="3cqZAo" to="lzb2:~JBColor.BLACK" resolve="BLACK" />
                  <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                </node>
                <node concept="10M0yZ" id="2SU8oJe7vVZ" role="3K4GZi">
                  <ref role="3cqZAo" to="lzb2:~JBColor.DARK_GRAY" resolve="DARK_GRAY" />
                  <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1JYTWWzAWPk" role="3cqZAp" />
        <node concept="3clFbF" id="1JYTWWzAWPl" role="3cqZAp">
          <node concept="1rXfSq" id="1JYTWWzAWPm" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="initPorts" />
            <node concept="37vLTw" id="1JYTWWzBqWv" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRha_" resolve="context" />
            </node>
            <node concept="37vLTw" id="1JYTWWzBqWy" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRD7U" resolve="node" />
            </node>
            <node concept="37vLTw" id="1JYTWWzAWPn" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
            </node>
            <node concept="2OqwBi" id="1JYTWWzAWPo" role="37wK5m">
              <node concept="37vLTw" id="1JYTWWzAWQ3" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbType" />
              </node>
              <node concept="liA8E" id="1JYTWWzAWPq" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:1HEL0zVYKgq" resolve="getEventInputPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JYTWWzAWPr" role="3cqZAp">
          <node concept="1rXfSq" id="1JYTWWzAWPs" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="initPorts" />
            <node concept="37vLTw" id="1JYTWWzBrNL" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRha_" resolve="context" />
            </node>
            <node concept="37vLTw" id="1JYTWWzBrNO" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRD7U" resolve="node" />
            </node>
            <node concept="37vLTw" id="1JYTWWzAWPt" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
            </node>
            <node concept="2OqwBi" id="1JYTWWzAWPu" role="37wK5m">
              <node concept="37vLTw" id="1JYTWWzAWQ4" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbType" />
              </node>
              <node concept="liA8E" id="1JYTWWzAWPw" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:1HEL0zVYKjD" resolve="getEventOutputPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JYTWWzAWPx" role="3cqZAp">
          <node concept="1rXfSq" id="1JYTWWzAWPy" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="initPorts" />
            <node concept="37vLTw" id="1JYTWWzBrYr" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRha_" resolve="context" />
            </node>
            <node concept="37vLTw" id="1JYTWWzBrYu" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRD7U" resolve="node" />
            </node>
            <node concept="37vLTw" id="1JYTWWzAWPz" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
            </node>
            <node concept="2OqwBi" id="1JYTWWzAWP$" role="37wK5m">
              <node concept="37vLTw" id="1JYTWWzAWQ5" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbType" />
              </node>
              <node concept="liA8E" id="1JYTWWzAWPA" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:1HEL0zVYNd7" resolve="getDataInputPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JYTWWzAWPB" role="3cqZAp">
          <node concept="1rXfSq" id="1JYTWWzAWPC" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="initPorts" />
            <node concept="37vLTw" id="1JYTWWzBs95" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRha_" resolve="context" />
            </node>
            <node concept="37vLTw" id="1JYTWWzBs98" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRD7U" resolve="node" />
            </node>
            <node concept="37vLTw" id="1JYTWWzAWPD" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
            </node>
            <node concept="2OqwBi" id="1JYTWWzAWPE" role="37wK5m">
              <node concept="37vLTw" id="1JYTWWzAWQ6" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbType" />
              </node>
              <node concept="liA8E" id="1JYTWWzAWPG" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:1HEL0zVYNdd" resolve="getDataOutputPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JYTWWzAWPH" role="3cqZAp">
          <node concept="1rXfSq" id="1JYTWWzAWPI" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="initPorts" />
            <node concept="37vLTw" id="1JYTWWzBsjJ" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRha_" resolve="context" />
            </node>
            <node concept="37vLTw" id="1JYTWWzBsjM" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRD7U" resolve="node" />
            </node>
            <node concept="37vLTw" id="1JYTWWzAWPJ" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
            </node>
            <node concept="2OqwBi" id="1JYTWWzAWPK" role="37wK5m">
              <node concept="37vLTw" id="1JYTWWzAWQ7" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbType" />
              </node>
              <node concept="liA8E" id="1JYTWWzAWPM" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:6LU90BNRs9B" resolve="getSocketPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JYTWWzAWPN" role="3cqZAp">
          <node concept="1rXfSq" id="1JYTWWzAWPO" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="initPorts" />
            <node concept="37vLTw" id="1JYTWWzBsup" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRha_" resolve="context" />
            </node>
            <node concept="37vLTw" id="1JYTWWzBsus" role="37wK5m">
              <ref role="3cqZAo" node="4vmY7CyRD7U" resolve="node" />
            </node>
            <node concept="37vLTw" id="1JYTWWzAWPP" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
            </node>
            <node concept="2OqwBi" id="1JYTWWzAWPQ" role="37wK5m">
              <node concept="37vLTw" id="1JYTWWzAWQ8" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbType" />
              </node>
              <node concept="liA8E" id="1JYTWWzAWPS" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:6LU90BNRs9H" resolve="getPlugPorts" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4vmY7CyRha_" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1cTKxMS9pps" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGG7dxg" role="3clF46">
        <property role="TrG5h" value="fbType" />
        <node concept="3uibUv" id="1R4IoyQLwj_" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
        </node>
      </node>
      <node concept="37vLTG" id="4vmY7CyRD7U" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4vmY7CyRDiE" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJe48Q0" role="3clF46">
        <property role="TrG5h" value="isEditable" />
        <node concept="10P_77" id="2SU8oJe49u6" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1JYTWWzCHnK" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzBOct" role="jymVt">
      <property role="TrG5h" value="calculateSizes" />
      <node concept="3clFbS" id="1JYTWWzBOcw" role="3clF47">
        <node concept="3clFbF" id="1JYTWWzBXhB" role="3cqZAp">
          <node concept="2OqwBi" id="1cTKxMScuab" role="3clFbG">
            <node concept="37vLTw" id="1cTKxMScsxY" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="1cTKxMScu_o" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setWidth(int)" resolve="setWidth" />
              <node concept="1rXfSq" id="1JYTWWzC1KS" role="37wK5m">
                <ref role="37wK5l" node="1HEL0zW2rlD" resolve="calculateWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1cTKxMScxM4" role="3cqZAp">
          <node concept="2OqwBi" id="1cTKxMScxM6" role="3clFbG">
            <node concept="37vLTw" id="1cTKxMScxM7" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="1cTKxMScxM8" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.setHeight(int)" resolve="setHeight" />
              <node concept="1rXfSq" id="1cTKxMScxM9" role="37wK5m">
                <ref role="37wK5l" node="1HEL0zW6oqn" resolve="calculateHeight" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1JYTWWzBJQo" role="1B3o_S" />
      <node concept="3cqZAl" id="1JYTWWzBKh3" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1JYTWWzBFwn" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGb3$p" role="jymVt">
      <property role="TrG5h" value="getWidth" />
      <node concept="10Oyi0" id="7qPnRGGb3$q" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGGb3$r" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGGb3$s" role="3clF47">
        <node concept="3clFbF" id="7qPnRGGb3$t" role="3cqZAp">
          <node concept="2OqwBi" id="1cTKxMSc$3j" role="3clFbG">
            <node concept="37vLTw" id="1cTKxMSczGP" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="1cTKxMSc$uw" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7qPnRGGb3$v" role="jymVt">
      <property role="TrG5h" value="getHeight" />
      <node concept="10Oyi0" id="7qPnRGGb3$w" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGGb3$x" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGGb3$y" role="3clF47">
        <node concept="3clFbF" id="1cTKxMSc$Uz" role="3cqZAp">
          <node concept="2OqwBi" id="1cTKxMSc$U$" role="3clFbG">
            <node concept="37vLTw" id="1cTKxMSc$U_" role="2Oq$k0">
              <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
            </node>
            <node concept="liA8E" id="1cTKxMSc$UA" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight()" resolve="getHeight" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1CY1mmCAnzz" role="jymVt" />
    <node concept="3clFb_" id="1CY1mmCAv_l" role="jymVt">
      <property role="TrG5h" value="paintTrace" />
      <node concept="37vLTG" id="1CY1mmCAzrM" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1CY1mmCAzrN" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1CY1mmCAzrO" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1CY1mmCAzrP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1CY1mmCAzrQ" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1CY1mmCAzrR" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1CY1mmCAv_o" role="3clF47">
        <node concept="3cpWs8" id="1CY1mmCAB0_" role="3cqZAp">
          <node concept="3cpWsn" id="1CY1mmCAB0A" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="1CY1mmCAB0B" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="1rXfSq" id="1CY1mmCAB0C" role="33vP2m">
              <ref role="37wK5l" node="1HEL0zW9Ci2" resolve="getComponentShape" />
              <node concept="37vLTw" id="1CY1mmCAB0D" role="37wK5m">
                <ref role="3cqZAo" node="1CY1mmCAzrO" resolve="x" />
              </node>
              <node concept="37vLTw" id="1CY1mmCAB0E" role="37wK5m">
                <ref role="3cqZAo" node="1CY1mmCAzrQ" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1CY1mmCABfH" role="3cqZAp">
          <node concept="2OqwBi" id="1CY1mmCABfI" role="3clFbG">
            <node concept="37vLTw" id="1CY1mmCABfJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1CY1mmCAzrM" resolve="g" />
            </node>
            <node concept="liA8E" id="1CY1mmCABfK" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint)" resolve="setPaint" />
              <node concept="10M0yZ" id="4gibKcMnwN5" role="37wK5m">
                <ref role="3cqZAo" to="lzb2:~JBColor.GRAY" resolve="GRAY" />
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1CY1mmCBcPs" role="3cqZAp">
          <node concept="2YIFZM" id="7pEplJksfy_" role="3clFbG">
            <ref role="37wK5l" to="vjnt:6$FGuy68xM2" resolve="setupShadowPathPaint" />
            <ref role="1Pybhc" to="vjnt:309fsJ6oq8i" resolve="FBConnectionPathPainter" />
            <node concept="37vLTw" id="1CY1mmCBd3x" role="37wK5m">
              <ref role="3cqZAo" node="1CY1mmCAzrM" resolve="g" />
            </node>
            <node concept="1rXfSq" id="1pJxKgr$kbD" role="37wK5m">
              <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
              <node concept="3cmrfG" id="1pJxKgr$kp4" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1CY1mmCABfO" role="3cqZAp">
          <node concept="2OqwBi" id="1CY1mmCABfP" role="3clFbG">
            <node concept="37vLTw" id="1CY1mmCABfQ" role="2Oq$k0">
              <ref role="3cqZAo" node="1CY1mmCAzrM" resolve="g" />
            </node>
            <node concept="liA8E" id="1CY1mmCABfR" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape)" resolve="draw" />
              <node concept="37vLTw" id="1CY1mmCAB_u" role="37wK5m">
                <ref role="3cqZAo" node="1CY1mmCAB0A" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1CY1mmCArVP" role="1B3o_S" />
      <node concept="3cqZAl" id="1CY1mmCAsiK" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1JYTWWzCfY3" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzCpld" role="jymVt">
      <property role="TrG5h" value="relayout" />
      <node concept="3clFbS" id="1JYTWWzCplg" role="3clF47">
        <node concept="2Gpval" id="3DiEZ8ToxTq" role="3cqZAp">
          <node concept="2GrKxI" id="3DiEZ8ToxTs" role="2Gsz3X">
            <property role="TrG5h" value="cell" />
          </node>
          <node concept="37vLTw" id="3DiEZ8ToCK6" role="2GsD0m">
            <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
          </node>
          <node concept="3clFbS" id="3DiEZ8ToxTw" role="2LFqv$">
            <node concept="3clFbF" id="3DiEZ8ToEbd" role="3cqZAp">
              <node concept="2OqwBi" id="3DiEZ8ToEeq" role="3clFbG">
                <node concept="2GrUjf" id="3DiEZ8ToEbc" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="3DiEZ8ToxTs" resolve="cell" />
                </node>
                <node concept="liA8E" id="3DiEZ8ToOlU" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.relayout()" resolve="relayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8ToSXW" role="3cqZAp">
          <node concept="1rXfSq" id="3DiEZ8ToSXU" role="3clFbG">
            <ref role="37wK5l" node="1JYTWWzBOct" resolve="calculateSizes" />
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TojuE" role="3cqZAp" />
        <node concept="3cpWs8" id="3DiEZ8TwLOb" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TwLOc" role="3cpWs9">
            <property role="TrG5h" value="leftX" />
            <node concept="10Oyi0" id="3DiEZ8TwLO8" role="1tU5fm" />
            <node concept="3cpWs3" id="3DiEZ8TwLOd" role="33vP2m">
              <node concept="2OqwBi" id="3DiEZ8TwLOf" role="3uHU7B">
                <node concept="37vLTw" id="3DiEZ8TwLOg" role="2Oq$k0">
                  <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                </node>
                <node concept="liA8E" id="3DiEZ8TwLOh" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX()" resolve="getX" />
                </node>
              </node>
              <node concept="1rXfSq" id="1pJxKgrsdGR" role="3uHU7w">
                <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                <node concept="3cpWs3" id="3DiEZ8T$2nS" role="37wK5m">
                  <node concept="37vLTw" id="1pJxKgrsdVg" role="3uHU7B">
                    <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                  </node>
                  <node concept="37vLTw" id="1pJxKgrsdVk" role="3uHU7w">
                    <ref role="3cqZAo" node="3DiEZ8TJFBm" resolve="INNER_BORDER_PADDING" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3DiEZ8Twoti" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8Twotj" role="3cpWs9">
            <property role="TrG5h" value="topY" />
            <node concept="10Oyi0" id="3DiEZ8Twotf" role="1tU5fm" />
            <node concept="2OqwBi" id="3DiEZ8Twotk" role="33vP2m">
              <node concept="37vLTw" id="3DiEZ8Twotl" role="2Oq$k0">
                <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
              </node>
              <node concept="liA8E" id="3DiEZ8Twotm" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getY()" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1JYTWWzDflx" role="3cqZAp">
          <node concept="3cpWsn" id="1JYTWWzDfl$" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="1JYTWWzDflv" role="1tU5fm" />
            <node concept="1rXfSq" id="1JYTWWzDfC_" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3DiEZ8TvXZp" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TvXZq" role="3cpWs9">
            <property role="TrG5h" value="dataY" />
            <node concept="10Oyi0" id="3DiEZ8TvXZj" role="1tU5fm" />
            <node concept="3cpWs3" id="3DiEZ8TvXZr" role="33vP2m">
              <node concept="37vLTw" id="3DiEZ8Twotp" role="3uHU7B">
                <ref role="3cqZAo" node="3DiEZ8Twotj" resolve="topY" />
              </node>
              <node concept="17qRlL" id="3DiEZ8TvXZv" role="3uHU7w">
                <node concept="1eOMI4" id="3DiEZ8TvXZw" role="3uHU7B">
                  <node concept="3cpWs3" id="3DiEZ8TvXZx" role="1eOMHV">
                    <node concept="1rXfSq" id="3DiEZ8TvXZy" role="3uHU7B">
                      <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                    </node>
                    <node concept="3cmrfG" id="3DiEZ8TvXZz" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3DiEZ8TwuYa" role="3uHU7w">
                  <ref role="3cqZAo" node="1JYTWWzDfl$" resolve="lineSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3DiEZ8TwacH" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TwacI" role="3cpWs9">
            <property role="TrG5h" value="rightX" />
            <node concept="10Oyi0" id="3DiEZ8TwacF" role="1tU5fm" />
            <node concept="3cpWsd" id="3DiEZ8TwacJ" role="33vP2m">
              <node concept="3cpWs3" id="3DiEZ8TwacL" role="3uHU7B">
                <node concept="2OqwBi" id="3DiEZ8TwacM" role="3uHU7w">
                  <node concept="37vLTw" id="3DiEZ8TwacN" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="3DiEZ8TwacO" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3DiEZ8TwacP" role="3uHU7B">
                  <node concept="37vLTw" id="3DiEZ8TwacQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="3DiEZ8TwacR" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX()" resolve="getX" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="1pJxKgrsgSO" role="3uHU7w">
                <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                <node concept="3cpWs3" id="1pJxKgrCZgx" role="37wK5m">
                  <node concept="37vLTw" id="1pJxKgrsh3G" role="3uHU7B">
                    <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                  </node>
                  <node concept="37vLTw" id="1pJxKgrsh3K" role="3uHU7w">
                    <ref role="3cqZAo" node="3DiEZ8TJFBm" resolve="INNER_BORDER_PADDING" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TvKlq" role="3cqZAp" />
        <node concept="3cpWs8" id="1JYTWWzD9N8" role="3cqZAp">
          <node concept="3cpWsn" id="1JYTWWzD9Nb" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10Oyi0" id="1JYTWWzD9N6" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="1JYTWWzDes7" role="3cqZAp">
          <node concept="3cpWsn" id="1JYTWWzDes8" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="1JYTWWzDes9" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TwYT9" role="3cqZAp" />
        <node concept="3clFbF" id="3DiEZ8Tx1Qv" role="3cqZAp">
          <node concept="37vLTI" id="3DiEZ8Tx2vZ" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8Tx3Mf" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8TwLOc" resolve="leftX" />
            </node>
            <node concept="37vLTw" id="3DiEZ8Tx1Qt" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TwIoU" role="3cqZAp">
          <node concept="37vLTI" id="3DiEZ8TwIoW" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8Twoto" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8Twotj" resolve="topY" />
            </node>
            <node concept="37vLTw" id="3DiEZ8TwIp0" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1JYTWWzDYu1" role="3cqZAp">
          <node concept="3clFbS" id="1JYTWWzDYu3" role="2LFqv$">
            <node concept="3clFbF" id="3DiEZ8Tm0yG" role="3cqZAp">
              <node concept="2OqwBi" id="3DiEZ8TmTi4" role="3clFbG">
                <node concept="2OqwBi" id="3DiEZ8Tm1t0" role="2Oq$k0">
                  <node concept="2GrUjf" id="3DiEZ8Tm0yE" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1JYTWWzDYuq" resolve="portData" />
                  </node>
                  <node concept="2OwXpG" id="3DiEZ8TmtLi" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
                <node concept="liA8E" id="3DiEZ8Tnzd_" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.moveTo(int,int)" resolve="moveTo" />
                  <node concept="37vLTw" id="1JYTWWzDYua" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="1JYTWWzDYuh" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1JYTWWzDYui" role="3cqZAp" />
            <node concept="3clFbF" id="1JYTWWzDYuj" role="3cqZAp">
              <node concept="d57v9" id="1JYTWWzDYuk" role="3clFbG">
                <node concept="37vLTw" id="1JYTWWzDYul" role="37vLTx">
                  <ref role="3cqZAo" node="1JYTWWzDfl$" resolve="lineSize" />
                </node>
                <node concept="37vLTw" id="1JYTWWzDYum" role="37vLTJ">
                  <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1JYTWWzDYuo" role="2GsD0m">
            <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
          </node>
          <node concept="2GrKxI" id="1JYTWWzDYuq" role="2Gsz3X">
            <property role="TrG5h" value="portData" />
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8Txmr7" role="3cqZAp" />
        <node concept="3clFbF" id="3DiEZ8TxkZa" role="3cqZAp">
          <node concept="37vLTI" id="3DiEZ8TxkZb" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TxkZc" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8TwacI" resolve="rightX" />
            </node>
            <node concept="37vLTw" id="3DiEZ8TxkZd" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TvD63" role="3cqZAp">
          <node concept="37vLTI" id="3DiEZ8TvD65" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8Twotn" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8Twotj" resolve="topY" />
            </node>
            <node concept="37vLTw" id="3DiEZ8TvFcO" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TxkVn" role="3cqZAp" />
        <node concept="2Gpval" id="1JYTWWzE5Ho" role="3cqZAp">
          <node concept="3clFbS" id="1JYTWWzE5Hp" role="2LFqv$">
            <node concept="3cpWs8" id="1JYTWWzEgrz" role="3cqZAp">
              <node concept="3cpWsn" id="1JYTWWzEgr$" role="3cpWs9">
                <property role="TrG5h" value="label" />
                <node concept="3uibUv" id="3DiEZ8TEygw" role="1tU5fm">
                  <ref role="3uigEE" to="ee2c:3DiEZ8TCKgO" resolve="EditorCell_SceneLabel" />
                </node>
                <node concept="2OqwBi" id="1JYTWWzEgr_" role="33vP2m">
                  <node concept="2GrUjf" id="1JYTWWzEgrA" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1JYTWWzE5HI" resolve="portData" />
                  </node>
                  <node concept="2OwXpG" id="1JYTWWzEgrB" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1JYTWWzE5Hq" role="3cqZAp">
              <node concept="2OqwBi" id="1JYTWWzE5Hr" role="3clFbG">
                <node concept="37vLTw" id="1JYTWWzEgrC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1JYTWWzEgr$" resolve="label" />
                </node>
                <node concept="liA8E" id="1JYTWWzE5Hv" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.moveTo(int,int)" resolve="moveTo" />
                  <node concept="3cpWsd" id="1JYTWWzFleV" role="37wK5m">
                    <node concept="2OqwBi" id="1JYTWWzFnj_" role="3uHU7w">
                      <node concept="37vLTw" id="1JYTWWzFm5A" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JYTWWzEgr$" resolve="label" />
                      </node>
                      <node concept="liA8E" id="1JYTWWzG0El" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1JYTWWzE5Hw" role="3uHU7B">
                      <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1JYTWWzE5HB" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1JYTWWzE5HC" role="3cqZAp" />
            <node concept="3clFbF" id="1JYTWWzE5HD" role="3cqZAp">
              <node concept="d57v9" id="1JYTWWzE5HE" role="3clFbG">
                <node concept="37vLTw" id="1JYTWWzE5HF" role="37vLTx">
                  <ref role="3cqZAo" node="1JYTWWzDfl$" resolve="lineSize" />
                </node>
                <node concept="37vLTw" id="1JYTWWzE5HG" role="37vLTJ">
                  <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1JYTWWzEats" role="2GsD0m">
            <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
          </node>
          <node concept="2GrKxI" id="1JYTWWzE5HI" role="2Gsz3X">
            <property role="TrG5h" value="portData" />
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8Tvx$F" role="3cqZAp" />
        <node concept="3clFbF" id="1JYTWWzDU9N" role="3cqZAp">
          <node concept="37vLTI" id="3DiEZ8TvRtr" role="3clFbG">
            <node concept="37vLTw" id="1JYTWWzDVgq" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
            </node>
            <node concept="37vLTw" id="3DiEZ8TvXZ_" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8TvXZq" resolve="dataY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TxA7U" role="3cqZAp">
          <node concept="37vLTI" id="3DiEZ8TxA7V" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TxA7W" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8TwLOc" resolve="leftX" />
            </node>
            <node concept="37vLTw" id="3DiEZ8TxA7X" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8Tx$NA" role="3cqZAp" />
        <node concept="2Gpval" id="1JYTWWzE02C" role="3cqZAp">
          <node concept="3clFbS" id="1JYTWWzE02E" role="2LFqv$">
            <node concept="3clFbF" id="1JYTWWzE02F" role="3cqZAp">
              <node concept="2OqwBi" id="1JYTWWzE02G" role="3clFbG">
                <node concept="2OqwBi" id="1JYTWWzE02H" role="2Oq$k0">
                  <node concept="2GrUjf" id="1JYTWWzE032" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1JYTWWzE031" resolve="portData" />
                  </node>
                  <node concept="2OwXpG" id="1JYTWWzE02J" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
                <node concept="liA8E" id="1JYTWWzE02K" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.moveTo(int,int)" resolve="moveTo" />
                  <node concept="37vLTw" id="1JYTWWzE02L" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="1JYTWWzE02S" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1JYTWWzE02T" role="3cqZAp" />
            <node concept="3clFbF" id="1JYTWWzE02U" role="3cqZAp">
              <node concept="d57v9" id="1JYTWWzE02V" role="3clFbG">
                <node concept="37vLTw" id="1JYTWWzE02W" role="37vLTx">
                  <ref role="3cqZAo" node="1JYTWWzDfl$" resolve="lineSize" />
                </node>
                <node concept="37vLTw" id="1JYTWWzE02X" role="37vLTJ">
                  <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1JYTWWzE9fu" role="2GsD0m">
            <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
          </node>
          <node concept="2GrKxI" id="1JYTWWzE031" role="2Gsz3X">
            <property role="TrG5h" value="portData" />
          </node>
        </node>
        <node concept="2Gpval" id="1JYTWWzJ72O" role="3cqZAp">
          <node concept="3clFbS" id="1JYTWWzJ72P" role="2LFqv$">
            <node concept="3clFbF" id="3DiEZ8TnRUj" role="3cqZAp">
              <node concept="2OqwBi" id="3DiEZ8TnRUk" role="3clFbG">
                <node concept="2OqwBi" id="3DiEZ8TnRUl" role="2Oq$k0">
                  <node concept="2GrUjf" id="3DiEZ8TnRUm" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1JYTWWzJ73a" resolve="portData" />
                  </node>
                  <node concept="2OwXpG" id="3DiEZ8TnRUn" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
                <node concept="liA8E" id="3DiEZ8TnRUo" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.moveTo(int,int)" resolve="moveTo" />
                  <node concept="37vLTw" id="3DiEZ8TnRUp" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="3DiEZ8TnRUq" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1JYTWWzJ734" role="3cqZAp" />
            <node concept="3clFbF" id="1JYTWWzJ735" role="3cqZAp">
              <node concept="d57v9" id="1JYTWWzJ736" role="3clFbG">
                <node concept="37vLTw" id="1JYTWWzJ737" role="37vLTx">
                  <ref role="3cqZAo" node="1JYTWWzDfl$" resolve="lineSize" />
                </node>
                <node concept="37vLTw" id="1JYTWWzJ738" role="37vLTJ">
                  <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1JYTWWzJ9jk" role="2GsD0m">
            <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
          </node>
          <node concept="2GrKxI" id="1JYTWWzJ73a" role="2Gsz3X">
            <property role="TrG5h" value="portData" />
          </node>
        </node>
        <node concept="3clFbH" id="1JYTWWzE86F" role="3cqZAp" />
        <node concept="3clFbF" id="1JYTWWzF0ic" role="3cqZAp">
          <node concept="37vLTI" id="1JYTWWzF3b2" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TwacS" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8TwacI" resolve="rightX" />
            </node>
            <node concept="37vLTw" id="1JYTWWzF0ia" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JYTWWzE3Zp" role="3cqZAp">
          <node concept="37vLTI" id="1JYTWWzE3Zr" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8Tx5Ey" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8TvXZq" resolve="dataY" />
            </node>
            <node concept="37vLTw" id="1JYTWWzE4YY" role="37vLTJ">
              <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1JYTWWzE1PX" role="3cqZAp" />
        <node concept="2Gpval" id="1JYTWWzE5HP" role="3cqZAp">
          <node concept="3clFbS" id="1JYTWWzE5HQ" role="2LFqv$">
            <node concept="3cpWs8" id="1JYTWWzG1Am" role="3cqZAp">
              <node concept="3cpWsn" id="1JYTWWzG1An" role="3cpWs9">
                <property role="TrG5h" value="label" />
                <node concept="3uibUv" id="3DiEZ8TEzum" role="1tU5fm">
                  <ref role="3uigEE" to="ee2c:3DiEZ8TCKgO" resolve="EditorCell_SceneLabel" />
                </node>
                <node concept="2OqwBi" id="1JYTWWzG1Ap" role="33vP2m">
                  <node concept="2GrUjf" id="1JYTWWzG1Aq" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1JYTWWzE5Ib" resolve="portData" />
                  </node>
                  <node concept="2OwXpG" id="1JYTWWzG1Ar" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3DiEZ8TnZlr" role="3cqZAp">
              <node concept="2OqwBi" id="3DiEZ8TnZls" role="3clFbG">
                <node concept="37vLTw" id="3DiEZ8TnZlt" role="2Oq$k0">
                  <ref role="3cqZAo" node="1JYTWWzG1An" resolve="label" />
                </node>
                <node concept="liA8E" id="3DiEZ8TnZlu" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.moveTo(int,int)" resolve="moveTo" />
                  <node concept="3cpWsd" id="3DiEZ8TnZlv" role="37wK5m">
                    <node concept="2OqwBi" id="3DiEZ8TnZlw" role="3uHU7w">
                      <node concept="37vLTw" id="3DiEZ8TnZlx" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JYTWWzG1An" resolve="label" />
                      </node>
                      <node concept="liA8E" id="3DiEZ8TnZly" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3DiEZ8TnZlz" role="3uHU7B">
                      <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3DiEZ8TnZl$" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1JYTWWzE5I5" role="3cqZAp" />
            <node concept="3clFbF" id="1JYTWWzE5I6" role="3cqZAp">
              <node concept="d57v9" id="1JYTWWzE5I7" role="3clFbG">
                <node concept="37vLTw" id="1JYTWWzE5I8" role="37vLTx">
                  <ref role="3cqZAo" node="1JYTWWzDfl$" resolve="lineSize" />
                </node>
                <node concept="37vLTw" id="1JYTWWzE5I9" role="37vLTJ">
                  <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1JYTWWzE5Ia" role="2GsD0m">
            <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
          </node>
          <node concept="2GrKxI" id="1JYTWWzE5Ib" role="2Gsz3X">
            <property role="TrG5h" value="portData" />
          </node>
        </node>
        <node concept="2Gpval" id="1JYTWWzJoFq" role="3cqZAp">
          <node concept="3clFbS" id="1JYTWWzJoFr" role="2LFqv$">
            <node concept="3cpWs8" id="1cTKxMSgoT5" role="3cqZAp">
              <node concept="3cpWsn" id="1cTKxMSgoT6" role="3cpWs9">
                <property role="TrG5h" value="label" />
                <node concept="3uibUv" id="3DiEZ8TE$xu" role="1tU5fm">
                  <ref role="3uigEE" to="ee2c:3DiEZ8TCKgO" resolve="EditorCell_SceneLabel" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSgoT8" role="33vP2m">
                  <node concept="2GrUjf" id="1cTKxMSgoT9" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1JYTWWzJoFK" resolve="portData" />
                  </node>
                  <node concept="2OwXpG" id="1cTKxMSgoTa" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3DiEZ8To01U" role="3cqZAp">
              <node concept="2OqwBi" id="3DiEZ8To01V" role="3clFbG">
                <node concept="37vLTw" id="3DiEZ8To01W" role="2Oq$k0">
                  <ref role="3cqZAo" node="1cTKxMSgoT6" resolve="label" />
                </node>
                <node concept="liA8E" id="3DiEZ8To01X" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.moveTo(int,int)" resolve="moveTo" />
                  <node concept="3cpWsd" id="3DiEZ8To01Y" role="37wK5m">
                    <node concept="2OqwBi" id="3DiEZ8To01Z" role="3uHU7w">
                      <node concept="37vLTw" id="3DiEZ8To020" role="2Oq$k0">
                        <ref role="3cqZAo" node="1cTKxMSgoT6" resolve="label" />
                      </node>
                      <node concept="liA8E" id="3DiEZ8To021" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3DiEZ8To022" role="3uHU7B">
                      <ref role="3cqZAo" node="1JYTWWzD9Nb" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3DiEZ8To023" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1JYTWWzJoFE" role="3cqZAp" />
            <node concept="3clFbF" id="1JYTWWzJoFF" role="3cqZAp">
              <node concept="d57v9" id="1JYTWWzJoFG" role="3clFbG">
                <node concept="37vLTw" id="1JYTWWzJoFH" role="37vLTx">
                  <ref role="3cqZAo" node="1JYTWWzDfl$" resolve="lineSize" />
                </node>
                <node concept="37vLTw" id="1JYTWWzJoFI" role="37vLTJ">
                  <ref role="3cqZAo" node="1JYTWWzDes8" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1JYTWWzJr42" role="2GsD0m">
            <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
          </node>
          <node concept="2GrKxI" id="1JYTWWzJoFK" role="2Gsz3X">
            <property role="TrG5h" value="portData" />
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TunIE" role="3cqZAp" />
        <node concept="3clFbF" id="3DiEZ8TnDm8" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TnELN" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TnDm6" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameLabel" />
            </node>
            <node concept="liA8E" id="3DiEZ8TnJ6A" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.moveTo(int,int)" resolve="moveTo" />
              <node concept="3cpWsd" id="1JYTWWzGkSy" role="37wK5m">
                <node concept="FJ1c_" id="1JYTWWzGsTN" role="3uHU7w">
                  <node concept="3cmrfG" id="1JYTWWzGsV$" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="1JYTWWzGmxK" role="3uHU7B">
                    <node concept="37vLTw" id="1JYTWWzGlBE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameLabel" />
                    </node>
                    <node concept="liA8E" id="1JYTWWzGqza" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="1JYTWWzGc4k" role="3uHU7B">
                  <node concept="FJ1c_" id="1JYTWWzGj_Z" role="3uHU7w">
                    <node concept="2OqwBi" id="1JYTWWzGdgU" role="3uHU7B">
                      <node concept="37vLTw" id="1JYTWWzGcdS" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                      </node>
                      <node concept="liA8E" id="1JYTWWzGh8K" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="1JYTWWzGjBC" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3DiEZ8Turwa" role="3uHU7B">
                    <node concept="37vLTw" id="3DiEZ8Tuqt0" role="2Oq$k0">
                      <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                    </node>
                    <node concept="liA8E" id="3DiEZ8TuveA" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX()" resolve="getX" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="3DiEZ8TuCnI" role="37wK5m">
                <node concept="37vLTw" id="3DiEZ8Twotr" role="3uHU7B">
                  <ref role="3cqZAo" node="3DiEZ8Twotj" resolve="topY" />
                </node>
                <node concept="17qRlL" id="3DiEZ8TuEvk" role="3uHU7w">
                  <node concept="1eOMI4" id="3DiEZ8Tv80o" role="3uHU7B">
                    <node concept="3cpWs3" id="3DiEZ8TvohJ" role="1eOMHV">
                      <node concept="3cmrfG" id="3DiEZ8Tvojs" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="1rXfSq" id="3DiEZ8TuCU5" role="3uHU7B">
                        <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3DiEZ8TuTFO" role="3uHU7w">
                    <ref role="3cqZAo" node="1JYTWWzDfl$" resolve="lineSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1JYTWWzCkTE" role="1B3o_S" />
      <node concept="3cqZAl" id="1JYTWWzClkV" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7qPnRGGaZVi" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGG7$7p" role="jymVt">
      <property role="TrG5h" value="paint" />
      <node concept="3clFbS" id="7qPnRGG7$7s" role="3clF47">
        <node concept="3cpWs8" id="1HEL0zVZKKH" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zVZKKI" role="3cpWs9">
            <property role="TrG5h" value="background" />
            <node concept="3uibUv" id="1HEL0zVZKKy" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1rXfSq" id="1HEL0zW07jX" role="33vP2m">
              <ref role="37wK5l" node="1HEL0zW07jU" resolve="getBackgroundColor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW8V$t" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW8V$u" role="3cpWs9">
            <property role="TrG5h" value="foreground" />
            <node concept="3uibUv" id="1HEL0zW8V$v" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1rXfSq" id="1HEL0zW9gp9" role="33vP2m">
              <ref role="37wK5l" node="1HEL0zW8VN0" resolve="getForegroundColor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1JYTWWzHmVY" role="3cqZAp" />
        <node concept="3cpWs8" id="1JYTWWzHqlY" role="3cqZAp">
          <node concept="3cpWsn" id="1JYTWWzHqm1" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10Oyi0" id="1JYTWWzHqlW" role="1tU5fm" />
            <node concept="2OqwBi" id="1JYTWWzHrLU" role="33vP2m">
              <node concept="37vLTw" id="1JYTWWzHrj9" role="2Oq$k0">
                <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
              </node>
              <node concept="liA8E" id="1JYTWWzHvcP" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX()" resolve="getX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1JYTWWzHhyM" role="3cqZAp">
          <node concept="3cpWsn" id="1JYTWWzHhyP" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="1JYTWWzHhyK" role="1tU5fm" />
            <node concept="2OqwBi" id="1JYTWWzHj2z" role="33vP2m">
              <node concept="37vLTw" id="1JYTWWzHisr" role="2Oq$k0">
                <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
              </node>
              <node concept="liA8E" id="1JYTWWzHm$M" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getY()" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5fP$XwiWBfB" role="3cqZAp">
          <node concept="3cpWsn" id="5fP$XwiWBfC" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="5fP$XwiWBfA" role="1tU5fm" />
            <node concept="1rXfSq" id="7qPnRGGucN_" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zWdV0N" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zWdV0Q" role="3cpWs9">
            <property role="TrG5h" value="typeNameY" />
            <node concept="10Oyi0" id="1HEL0zWdV0L" role="1tU5fm" />
            <node concept="3cpWs3" id="5fP$XwiMTkr" role="33vP2m">
              <node concept="37vLTw" id="5fP$XwiMTX4" role="3uHU7B">
                <ref role="3cqZAo" node="1JYTWWzHhyP" resolve="y" />
              </node>
              <node concept="17qRlL" id="1HEL0zWdVzh" role="3uHU7w">
                <node concept="37vLTw" id="5fP$XwiWK$K" role="3uHU7w">
                  <ref role="3cqZAo" node="5fP$XwiWBfC" resolve="lineSize" />
                </node>
                <node concept="1eOMI4" id="1HEL0zWdVzj" role="3uHU7B">
                  <node concept="3cpWs3" id="1HEL0zWdVzk" role="1eOMHV">
                    <node concept="1rXfSq" id="1HEL0zWdVzl" role="3uHU7B">
                      <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                    </node>
                    <node concept="3cmrfG" id="7qPnRGGn8qc" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5fP$XwiOPkS" role="3cqZAp" />
        <node concept="3cpWs8" id="1HEL0zWblyG" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zWblyH" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="5fP$XwiVSlU" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="1rXfSq" id="1HEL0zWblYB" role="33vP2m">
              <ref role="37wK5l" node="1HEL0zW9Ci2" resolve="getComponentShape" />
              <node concept="37vLTw" id="1JYTWWzHz9D" role="37wK5m">
                <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
              </node>
              <node concept="37vLTw" id="1JYTWWzHzgj" role="37wK5m">
                <ref role="3cqZAo" node="1JYTWWzHhyP" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5fP$XwiVv9L" role="3cqZAp">
          <node concept="3cpWsn" id="5fP$XwiVv9M" role="3cpWs9">
            <property role="TrG5h" value="shadowShape" />
            <node concept="3uibUv" id="5fP$XwiW0ea" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Shape" resolve="Shape" />
            </node>
            <node concept="2OqwBi" id="5fP$XwiVVgM" role="33vP2m">
              <node concept="37vLTw" id="5fP$XwiVUUx" role="2Oq$k0">
                <ref role="3cqZAo" node="1HEL0zWblyH" resolve="shape" />
              </node>
              <node concept="liA8E" id="5fP$XwiVWtS" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~Path2D.createTransformedShape(java.awt.geom.AffineTransform)" resolve="createTransformedShape" />
                <node concept="2YIFZM" id="5fP$XwiVXh5" role="37wK5m">
                  <ref role="1Pybhc" to="fbzs:~AffineTransform" resolve="AffineTransform" />
                  <ref role="37wK5l" to="fbzs:~AffineTransform.getTranslateInstance(double,double)" resolve="getTranslateInstance" />
                  <node concept="3cmrfG" id="5fP$XwiVXuB" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="3cmrfG" id="5fP$XwiVYnq" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$XwiW1iq" role="3cqZAp">
          <node concept="2OqwBi" id="5fP$XwiW22C" role="3clFbG">
            <node concept="37vLTw" id="5fP$XwiW1io" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="5fP$XwiW40q" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint)" resolve="setPaint" />
              <node concept="2ShNRf" id="4JFQCPi3dWG" role="37wK5m">
                <node concept="1pGfFk" id="4JFQCPi3z$1" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                  <node concept="2nou5x" id="4JFQCPi3zJ$" role="37wK5m">
                    <property role="2noCCI" value="EEEEEE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$XwiW51Z" role="3cqZAp">
          <node concept="2OqwBi" id="5fP$XwiW5PJ" role="3clFbG">
            <node concept="37vLTw" id="5fP$XwiW51X" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="5fP$XwiW7Pa" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
              <node concept="37vLTw" id="5fP$XwiW7Wo" role="37wK5m">
                <ref role="3cqZAo" node="5fP$XwiVv9M" resolve="shadowShape" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zWbmJZ" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWbmOT" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWbmJX" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="1HEL0zWbnNM" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint)" resolve="setPaint" />
              <node concept="2YIFZM" id="61urdBx7060" role="37wK5m">
                <ref role="1Pybhc" node="2JGKyjit8pv" resolve="DiagramColors" />
                <ref role="37wK5l" node="3diMC1cjnxP" resolve="createGradientPaint" />
                <node concept="37vLTw" id="5fP$XwiOujJ" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zVZKKI" resolve="background" />
                </node>
                <node concept="2ShNRf" id="5fP$XwiOvzq" role="37wK5m">
                  <node concept="1pGfFk" id="5fP$XwiOI7y" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                    <node concept="37vLTw" id="1JYTWWzHzbl" role="37wK5m">
                      <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="1JYTWWzHzeE" role="37wK5m">
                      <ref role="3cqZAo" node="1JYTWWzHhyP" resolve="y" />
                    </node>
                    <node concept="2OqwBi" id="1cTKxMSd3cn" role="37wK5m">
                      <node concept="37vLTw" id="1cTKxMSd3co" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                      </node>
                      <node concept="liA8E" id="1cTKxMSd3cp" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1cTKxMSdFH5" role="37wK5m">
                      <node concept="37vLTw" id="1cTKxMSdFH6" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                      </node>
                      <node concept="liA8E" id="1cTKxMSdFH7" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight()" resolve="getHeight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zWbpCA" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWbpQH" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWbpC$" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="1HEL0zWbpYq" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
              <node concept="37vLTw" id="1HEL0zWbsm0" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zWblyH" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$XwiW83p" role="3cqZAp">
          <node concept="2OqwBi" id="5fP$XwiW83q" role="3clFbG">
            <node concept="37vLTw" id="5fP$XwiW83r" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="5fP$XwiW83s" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint)" resolve="setPaint" />
              <node concept="2YIFZM" id="2r29JVYdIsj" role="37wK5m">
                <ref role="37wK5l" node="3diMC1cjnxP" resolve="createGradientPaint" />
                <ref role="1Pybhc" node="2JGKyjit8pv" resolve="DiagramColors" />
                <node concept="1rXfSq" id="2r29JVYdIsk" role="37wK5m">
                  <ref role="37wK5l" node="5fP$XwiTzF$" resolve="getTypeBackgroundColor" />
                </node>
                <node concept="2ShNRf" id="2r29JVYdIsl" role="37wK5m">
                  <node concept="1pGfFk" id="2r29JVYdIsm" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                    <node concept="37vLTw" id="1JYTWWzHz36" role="37wK5m">
                      <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="1JYTWWzHzjB" role="37wK5m">
                      <ref role="3cqZAo" node="1JYTWWzHhyP" resolve="y" />
                    </node>
                    <node concept="2OqwBi" id="1cTKxMSd3Nz" role="37wK5m">
                      <node concept="37vLTw" id="1cTKxMSd3N$" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                      </node>
                      <node concept="liA8E" id="1cTKxMSd3N_" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1cTKxMSdEYB" role="37wK5m">
                      <node concept="37vLTw" id="1cTKxMSdEYC" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                      </node>
                      <node concept="liA8E" id="1cTKxMSdEYD" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight()" resolve="getHeight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$XwiWdO0" role="3cqZAp">
          <node concept="2OqwBi" id="5fP$XwiWdO2" role="3clFbG">
            <node concept="37vLTw" id="5fP$XwiWdO3" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="5fP$XwiWdO4" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
              <node concept="2ShNRf" id="5fP$XwiWgnI" role="37wK5m">
                <node concept="1pGfFk" id="5fP$XwiWgZY" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                  <node concept="3cpWs3" id="5fP$XwiWijg" role="37wK5m">
                    <node concept="37vLTw" id="1JYTWWzHz6n" role="3uHU7B">
                      <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
                    </node>
                    <node concept="1rXfSq" id="1pJxKgrrJFI" role="3uHU7w">
                      <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                      <node concept="37vLTw" id="1pJxKgrrKBM" role="37wK5m">
                        <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5fP$XwiWRHo" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zWdV0Q" resolve="typeNameY" />
                  </node>
                  <node concept="3cpWsd" id="5fP$XwiWz9c" role="37wK5m">
                    <node concept="17qRlL" id="5fP$XwiW$W4" role="3uHU7w">
                      <node concept="3cmrfG" id="5fP$XwiWzLj" role="3uHU7B">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="1rXfSq" id="1pJxKgrrMlQ" role="3uHU7w">
                        <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                        <node concept="37vLTw" id="1pJxKgrrMlT" role="37wK5m">
                          <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1cTKxMScYnm" role="3uHU7B">
                      <node concept="37vLTw" id="1cTKxMScXzN" role="2Oq$k0">
                        <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                      </node>
                      <node concept="liA8E" id="1cTKxMSd2ws" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5fP$XwiWHe2" role="37wK5m">
                    <ref role="3cqZAo" node="5fP$XwiWBfC" resolve="lineSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1pJxKgrsAFe" role="3cqZAp">
          <node concept="2OqwBi" id="1pJxKgrsBvV" role="3clFbG">
            <node concept="37vLTw" id="1pJxKgrsAFc" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="1pJxKgrsCj$" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
              <node concept="2ShNRf" id="1pJxKgrsClP" role="37wK5m">
                <node concept="1pGfFk" id="1pJxKgrsRzl" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                  <node concept="1rXfSq" id="1pJxKgrsUil" role="37wK5m">
                    <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                    <node concept="3cmrfG" id="1pJxKgrsUwb" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zWbsFc" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWbsFd" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWbsFe" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="1HEL0zWbsFf" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="37vLTw" id="1HEL0zWbsUM" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW8V$u" resolve="foreground" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zWbsFh" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWbsFi" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWbsFj" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="1HEL0zWbsFk" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape)" resolve="draw" />
              <node concept="37vLTw" id="1HEL0zWbsFl" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zWblyH" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zWcJS1" role="3cqZAp" />
        <node concept="3cpWs8" id="1HEL0zWcQVF" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zWcQVG" role="3cpWs9">
            <property role="TrG5h" value="topEventsY" />
            <node concept="10Oyi0" id="1HEL0zWcQVA" role="1tU5fm" />
            <node concept="37vLTw" id="1JYTWWzHzcY" role="33vP2m">
              <ref role="3cqZAo" node="1JYTWWzHhyP" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$Xwj2ynJ" role="3cqZAp">
          <node concept="1rXfSq" id="5fP$Xwj2ynH" role="3clFbG">
            <ref role="37wK5l" node="5fP$Xwj0Swo" resolve="drawPortIcons" />
            <node concept="37vLTw" id="5fP$Xwj2zBd" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
            </node>
            <node concept="37vLTw" id="5fP$Xwj2zZ8" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="37vLTw" id="1JYTWWzHz80" role="37wK5m">
              <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
            </node>
            <node concept="37vLTw" id="5fP$Xwj2$ZX" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zWcQVG" resolve="topEventsY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$Xwj2_95" role="3cqZAp">
          <node concept="1rXfSq" id="5fP$Xwj2_96" role="3clFbG">
            <ref role="37wK5l" node="5fP$Xwj0Swo" resolve="drawPortIcons" />
            <node concept="37vLTw" id="5fP$Xwj2Ebd" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
            </node>
            <node concept="37vLTw" id="5fP$Xwj2_98" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="3cpWsd" id="5fP$Xwj2CUY" role="37wK5m">
              <node concept="3cpWs3" id="5fP$Xwj2CdQ" role="3uHU7B">
                <node concept="37vLTw" id="1JYTWWzHzhV" role="3uHU7B">
                  <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSd4rl" role="3uHU7w">
                  <node concept="37vLTw" id="1cTKxMSd4rm" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="1cTKxMSd4rn" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="1pJxKgrrO8A" role="3uHU7w">
                <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                <node concept="37vLTw" id="1pJxKgrrO8D" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5fP$Xwj2_9a" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zWcQVG" resolve="topEventsY" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zWcPQZ" role="3cqZAp" />
        <node concept="3cpWs8" id="1HEL0zWcTGK" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zWcTGN" role="3cpWs9">
            <property role="TrG5h" value="topDatasY" />
            <node concept="10Oyi0" id="1HEL0zWcTGI" role="1tU5fm" />
            <node concept="3cpWs3" id="1HEL0zWe6QK" role="33vP2m">
              <node concept="37vLTw" id="5fP$XwiWKYG" role="3uHU7w">
                <ref role="3cqZAo" node="5fP$XwiWBfC" resolve="lineSize" />
              </node>
              <node concept="37vLTw" id="1HEL0zWdYrg" role="3uHU7B">
                <ref role="3cqZAo" node="1HEL0zWdV0Q" resolve="typeNameY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$Xwj2FtP" role="3cqZAp">
          <node concept="1rXfSq" id="5fP$Xwj2FtQ" role="3clFbG">
            <ref role="37wK5l" node="5fP$Xwj0Swo" resolve="drawPortIcons" />
            <node concept="37vLTw" id="5fP$Xwj2HVS" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
            </node>
            <node concept="37vLTw" id="5fP$Xwj2FtS" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="37vLTw" id="1JYTWWzHz4J" role="37wK5m">
              <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
            </node>
            <node concept="37vLTw" id="5fP$Xwj2HjG" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zWcTGN" resolve="topDatasY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$Xwj2FtV" role="3cqZAp">
          <node concept="1rXfSq" id="5fP$Xwj2FtW" role="3clFbG">
            <ref role="37wK5l" node="5fP$Xwj0Swo" resolve="drawPortIcons" />
            <node concept="37vLTw" id="5fP$Xwj2IN7" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
            </node>
            <node concept="37vLTw" id="5fP$Xwj2FtY" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="3cpWsd" id="5fP$Xwj2FtZ" role="37wK5m">
              <node concept="3cpWs3" id="5fP$Xwj2Fu1" role="3uHU7B">
                <node concept="37vLTw" id="1JYTWWzHz1q" role="3uHU7B">
                  <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSd5qs" role="3uHU7w">
                  <node concept="37vLTw" id="1cTKxMSd5qt" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="1cTKxMSd5qu" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="1pJxKgrrPZL" role="3uHU7w">
                <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                <node concept="37vLTw" id="1pJxKgrrPZO" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5fP$Xwj2HuH" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zWcTGN" resolve="topDatasY" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zWbu6o" role="3cqZAp" />
        <node concept="3cpWs8" id="6LU90BO3nYr" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BO3nYs" role="3cpWs9">
            <property role="TrG5h" value="topSocketY" />
            <node concept="10Oyi0" id="6LU90BO3nYi" role="1tU5fm" />
            <node concept="3cpWs3" id="6LU90BO3nYt" role="33vP2m">
              <node concept="17qRlL" id="6LU90BO3nYu" role="3uHU7w">
                <node concept="37vLTw" id="6LU90BO3nYv" role="3uHU7w">
                  <ref role="3cqZAo" node="5fP$XwiWBfC" resolve="lineSize" />
                </node>
                <node concept="1rXfSq" id="6LU90BO3nYw" role="3uHU7B">
                  <ref role="37wK5l" node="6LU90BNW4WJ" resolve="getInputDataPortsCount" />
                </node>
              </node>
              <node concept="37vLTw" id="6LU90BO3nYx" role="3uHU7B">
                <ref role="3cqZAo" node="1HEL0zWcTGN" resolve="topDatasY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6LU90BO3rmt" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BO3rmu" role="3cpWs9">
            <property role="TrG5h" value="topPlugY" />
            <node concept="10Oyi0" id="6LU90BO3rmv" role="1tU5fm" />
            <node concept="3cpWs3" id="6LU90BO3rmw" role="33vP2m">
              <node concept="17qRlL" id="6LU90BO3rmx" role="3uHU7w">
                <node concept="37vLTw" id="6LU90BO3rmy" role="3uHU7w">
                  <ref role="3cqZAo" node="5fP$XwiWBfC" resolve="lineSize" />
                </node>
                <node concept="1rXfSq" id="6LU90BO3rmz" role="3uHU7B">
                  <ref role="37wK5l" node="6LU90BNW4Wy" resolve="getOutputDataPortsCount" />
                </node>
              </node>
              <node concept="37vLTw" id="6LU90BO3rm$" role="3uHU7B">
                <ref role="3cqZAo" node="1HEL0zWcTGN" resolve="topDatasY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6LU90BO3sZv" role="3cqZAp" />
        <node concept="3clFbF" id="6LU90BO36Vt" role="3cqZAp">
          <node concept="1rXfSq" id="6LU90BO36Vu" role="3clFbG">
            <ref role="37wK5l" node="5fP$Xwj0Swo" resolve="drawPortIcons" />
            <node concept="37vLTw" id="6LU90BO3aMJ" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
            </node>
            <node concept="37vLTw" id="6LU90BO36Vw" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="37vLTw" id="1JYTWWzHzmS" role="37wK5m">
              <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
            </node>
            <node concept="37vLTw" id="6LU90BO3nYy" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BO3nYs" resolve="topSocketY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BO36Vz" role="3cqZAp">
          <node concept="1rXfSq" id="6LU90BO36V$" role="3clFbG">
            <ref role="37wK5l" node="5fP$Xwj0Swo" resolve="drawPortIcons" />
            <node concept="37vLTw" id="6LU90BO3bwN" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
            </node>
            <node concept="37vLTw" id="6LU90BO36VA" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="3cpWsd" id="6LU90BO36VB" role="37wK5m">
              <node concept="3cpWs3" id="6LU90BO36VD" role="3uHU7B">
                <node concept="37vLTw" id="1JYTWWzHzlf" role="3uHU7B">
                  <ref role="3cqZAo" node="1JYTWWzHqm1" resolve="x" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSd6q6" role="3uHU7w">
                  <node concept="37vLTw" id="1cTKxMSd6q7" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="1cTKxMSd6q8" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="1pJxKgrrRSn" role="3uHU7w">
                <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                <node concept="37vLTw" id="1pJxKgrrRSq" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6LU90BO3uO3" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BO3rmu" resolve="topPlugY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1pJxKgrsUE2" role="3cqZAp">
          <node concept="2OqwBi" id="1pJxKgrsUE3" role="3clFbG">
            <node concept="37vLTw" id="1pJxKgrsUE4" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="1pJxKgrsUE5" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
              <node concept="2ShNRf" id="1pJxKgrsUE6" role="37wK5m">
                <node concept="1pGfFk" id="1pJxKgrsUE7" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;()" resolve="BasicStroke" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1JYTWWzKD4w" role="1B3o_S" />
      <node concept="3cqZAl" id="7qPnRGG7zyk" role="3clF45" />
      <node concept="37vLTG" id="7qPnRGG7BMZ" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="7qPnRGG8Ign" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG8YuX" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zW9Ci2" role="jymVt">
      <property role="TrG5h" value="getComponentShape" />
      <node concept="3clFbS" id="1HEL0zW9Ci4" role="3clF47">
        <node concept="3cpWs8" id="1HEL0zW9Cia" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cib" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="1HEL0zW9Cic" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="1HEL0zW9Cid" role="33vP2m">
              <node concept="1pGfFk" id="1HEL0zW9Cie" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zW9Cif" role="3cqZAp" />
        <node concept="3cpWs8" id="1HEL0zW9Kqo" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Kqr" role="3cpWs9">
            <property role="TrG5h" value="eventPortsCount" />
            <node concept="10Oyi0" id="1HEL0zW9CkM" role="1tU5fm" />
            <node concept="1rXfSq" id="1HEL0zWaaOa" role="33vP2m">
              <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zWaxN8" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zWaxNb" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="1HEL0zWaxN6" role="1tU5fm" />
            <node concept="1rXfSq" id="7qPnRGGucNB" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7qPnRGFp13x" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGFp13y" role="3cpWs9">
            <property role="TrG5h" value="halfLineSize" />
            <node concept="10Oyi0" id="7qPnRGFp13w" role="1tU5fm" />
            <node concept="FJ1c_" id="7qPnRGFp13z" role="33vP2m">
              <node concept="3cmrfG" id="7qPnRGFp13$" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="37vLTw" id="7qPnRGFp13_" role="3uHU7B">
                <ref role="3cqZAo" node="1HEL0zWaxNb" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zWafut" role="3cqZAp" />
        <node concept="3cpWs8" id="1HEL0zW9Cig" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cih" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10Oyi0" id="1HEL0zWaqI0" role="1tU5fm" />
            <node concept="3cpWsd" id="5fP$XwiPEcU" role="33vP2m">
              <node concept="17qRlL" id="5fP$XwiPG4g" role="3uHU7w">
                <node concept="3cmrfG" id="5fP$XwiPEQv" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1rXfSq" id="1pJxKgrrTJE" role="3uHU7w">
                  <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                  <node concept="37vLTw" id="1pJxKgrrTJH" role="37wK5m">
                    <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1cTKxMSd7qj" role="3uHU7B">
                <node concept="37vLTw" id="1cTKxMSd7qk" role="2Oq$k0">
                  <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                </node>
                <node concept="liA8E" id="1cTKxMSd7ql" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9Cim" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cin" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10Oyi0" id="1HEL0zWarcX" role="1tU5fm" />
            <node concept="2OqwBi" id="1cTKxMSdD0y" role="33vP2m">
              <node concept="37vLTw" id="1cTKxMSdD0z" role="2Oq$k0">
                <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
              </node>
              <node concept="liA8E" id="1cTKxMSdD0$" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight()" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9Cis" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cit" role="3cpWs9">
            <property role="TrG5h" value="xLeft" />
            <node concept="10Oyi0" id="1HEL0zWarN$" role="1tU5fm" />
            <node concept="3cpWs3" id="5fP$XwiPAXY" role="33vP2m">
              <node concept="37vLTw" id="7qPnRGG9wD7" role="3uHU7B">
                <ref role="3cqZAo" node="7qPnRGG9n6P" resolve="x" />
              </node>
              <node concept="1rXfSq" id="1pJxKgrrVz4" role="3uHU7w">
                <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                <node concept="37vLTw" id="1pJxKgrrVz7" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9Ciy" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Ciz" role="3cpWs9">
            <property role="TrG5h" value="xRight" />
            <node concept="10Oyi0" id="1HEL0zWasv5" role="1tU5fm" />
            <node concept="3cpWs3" id="1HEL0zW9Ci_" role="33vP2m">
              <node concept="37vLTw" id="1HEL0zW9CiA" role="3uHU7w">
                <ref role="3cqZAo" node="1HEL0zW9Cih" resolve="width" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9CiB" role="3uHU7B">
                <ref role="3cqZAo" node="1HEL0zW9Cit" resolve="xLeft" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9CiC" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9CiD" role="3cpWs9">
            <property role="TrG5h" value="yBottom" />
            <node concept="10Oyi0" id="1HEL0zWat2m" role="1tU5fm" />
            <node concept="37vLTw" id="7qPnRGG9xjF" role="33vP2m">
              <ref role="3cqZAo" node="7qPnRGG9pXR" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9CiI" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9CiJ" role="3cpWs9">
            <property role="TrG5h" value="yTop" />
            <node concept="10Oyi0" id="1HEL0zWau1q" role="1tU5fm" />
            <node concept="3cpWsd" id="5fP$XwiUe58" role="33vP2m">
              <node concept="3cpWs3" id="1HEL0zW9CiL" role="3uHU7B">
                <node concept="37vLTw" id="1HEL0zW9CiM" role="3uHU7B">
                  <ref role="3cqZAo" node="1HEL0zW9CiD" resolve="yBottom" />
                </node>
                <node concept="37vLTw" id="1HEL0zW9CiN" role="3uHU7w">
                  <ref role="3cqZAo" node="1HEL0zW9Cin" resolve="height" />
                </node>
              </node>
              <node concept="37vLTw" id="7qPnRGFp13A" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGFp13y" resolve="halfLineSize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zW9Cj4" role="3cqZAp" />
        <node concept="3cpWs8" id="1HEL0zW9Cj5" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cj6" role="3cpWs9">
            <property role="TrG5h" value="yCenterB" />
            <node concept="10P55v" id="1HEL0zW9Cj7" role="1tU5fm" />
            <node concept="3cpWs3" id="7qPnRGFpg2Q" role="33vP2m">
              <node concept="37vLTw" id="7qPnRGFpgEw" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGFp13y" resolve="halfLineSize" />
              </node>
              <node concept="3cpWs3" id="1HEL0zW9Cj8" role="3uHU7B">
                <node concept="37vLTw" id="1HEL0zW9Cj9" role="3uHU7B">
                  <ref role="3cqZAo" node="1HEL0zW9CiD" resolve="yBottom" />
                </node>
                <node concept="17qRlL" id="1HEL0zW9Cja" role="3uHU7w">
                  <node concept="37vLTw" id="1HEL0zWaIR4" role="3uHU7B">
                    <ref role="3cqZAo" node="1HEL0zWaxNb" resolve="lineSize" />
                  </node>
                  <node concept="37vLTw" id="1HEL0zWaJiq" role="3uHU7w">
                    <ref role="3cqZAo" node="1HEL0zW9Kqr" resolve="eventPortsCount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9Cjd" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cje" role="3cpWs9">
            <property role="TrG5h" value="yCenterT" />
            <node concept="10P55v" id="1HEL0zW9Cjf" role="1tU5fm" />
            <node concept="3cpWs3" id="1HEL0zW9Cjg" role="33vP2m">
              <node concept="37vLTw" id="7qPnRGFphbz" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGFp13y" resolve="halfLineSize" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Cji" role="3uHU7B">
                <ref role="3cqZAo" node="1HEL0zW9Cj6" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9Cjj" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cjk" role="3cpWs9">
            <property role="TrG5h" value="xLeftS" />
            <node concept="10P55v" id="1HEL0zW9Cjl" role="1tU5fm" />
            <node concept="3cpWs3" id="1HEL0zW9Cjm" role="33vP2m">
              <node concept="37vLTw" id="1HEL0zWbeWz" role="3uHU7w">
                <ref role="3cqZAo" node="1HEL0zWaxNb" resolve="lineSize" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Cjo" role="3uHU7B">
                <ref role="3cqZAo" node="1HEL0zW9Cit" resolve="xLeft" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9Cjp" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cjq" role="3cpWs9">
            <property role="TrG5h" value="xRightS" />
            <node concept="10P55v" id="1HEL0zW9Cjr" role="1tU5fm" />
            <node concept="3cpWsd" id="1HEL0zW9Cjs" role="33vP2m">
              <node concept="37vLTw" id="1HEL0zWbfnV" role="3uHU7w">
                <ref role="3cqZAo" node="1HEL0zWaxNb" resolve="lineSize" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Cju" role="3uHU7B">
                <ref role="3cqZAo" node="1HEL0zW9Ciz" resolve="xRight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zW9Cjv" role="3cqZAp" />
        <node concept="3clFbF" id="1HEL0zW9Cjw" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9Cjx" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9Cjy" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9Cjz" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(float,float)" resolve="moveTo" />
              <node concept="37vLTw" id="1HEL0zW9Cj$" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cit" resolve="xLeft" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Cj_" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9CiD" resolve="yBottom" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9CjA" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9CjB" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9CjC" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9CjD" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9CjE" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cit" resolve="xLeft" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9CjF" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cj6" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9CjG" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9CjH" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9CjI" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9CjJ" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9CjK" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cjk" resolve="xLeftS" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9CjL" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cj6" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9CjM" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9CjN" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9CjO" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9CjP" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9CjQ" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cjk" resolve="xLeftS" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9CjR" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cje" resolve="yCenterT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9CjS" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9CjT" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9CjU" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9CjV" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9CjW" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cit" resolve="xLeft" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9CjX" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cje" resolve="yCenterT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9CjY" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9CjZ" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9Ck0" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9Ck1" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9Ck2" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cit" resolve="xLeft" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Ck3" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9CiJ" resolve="yTop" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9Ck4" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9Ck5" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9Ck6" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9Ck7" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9Ck8" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Ciz" resolve="xRight" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Ck9" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9CiJ" resolve="yTop" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9Cka" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9Ckb" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9Ckc" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9Ckd" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9Cke" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Ciz" resolve="xRight" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Ckf" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cje" resolve="yCenterT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9Ckg" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9Ckh" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9Cki" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9Ckj" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9Ckk" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cjq" resolve="xRightS" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Ckl" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cje" resolve="yCenterT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9Ckm" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9Ckn" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9Cko" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9Ckp" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9Ckq" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cjq" resolve="xRightS" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Ckr" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cj6" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9Cks" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9Ckt" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9Cku" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9Ckv" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9Ckw" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Ciz" resolve="xRight" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9Ckx" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Cj6" resolve="yCenterB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9Cky" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9Ckz" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9Ck$" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9Ck_" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float)" resolve="lineTo" />
              <node concept="37vLTw" id="1HEL0zW9CkA" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9Ciz" resolve="xRight" />
              </node>
              <node concept="37vLTw" id="1HEL0zW9CkB" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW9CiD" resolve="yBottom" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW9CkC" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW9CkD" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW9CkE" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
            </node>
            <node concept="liA8E" id="1HEL0zW9CkF" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath()" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zW9CkG" role="3cqZAp" />
        <node concept="3cpWs6" id="1HEL0zW9CkH" role="3cqZAp">
          <node concept="37vLTw" id="1HEL0zW9CkI" role="3cqZAk">
            <ref role="3cqZAo" node="1HEL0zW9Cib" resolve="shape" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5fP$XwiVxbR" role="3clF45">
        <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
      </node>
      <node concept="3Tm6S6" id="1JYTWWzKI43" role="1B3o_S" />
      <node concept="37vLTG" id="7qPnRGG9n6P" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7qPnRGG9n6O" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7qPnRGG9pXR" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7qPnRGG9pYr" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5fP$Xwj0HLo" role="jymVt" />
    <node concept="3clFb_" id="5fP$Xwj0Swo" role="jymVt">
      <property role="TrG5h" value="drawPortIcons" />
      <node concept="3clFbS" id="5fP$Xwj0Swr" role="3clF47">
        <node concept="3cpWs8" id="2SU8oJe6qCK" role="3cqZAp">
          <node concept="3cpWsn" id="2SU8oJe6qCL" role="3cpWs9">
            <property role="TrG5h" value="foregroundColor" />
            <node concept="3uibUv" id="2SU8oJe6o3V" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1rXfSq" id="2SU8oJe6qCM" role="33vP2m">
              <ref role="37wK5l" node="1HEL0zW8VN0" resolve="getForegroundColor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2SU8oJe6Jy5" role="3cqZAp" />
        <node concept="3cpWs8" id="5fP$Xwj1nsZ" role="3cqZAp">
          <node concept="3cpWsn" id="5fP$Xwj1nt0" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="5fP$Xwj1nsY" role="1tU5fm" />
            <node concept="1rXfSq" id="7qPnRGGudRM" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$Xwj1lPE" role="3cqZAp">
          <node concept="d57v9" id="5fP$Xwj1mrO" role="3clFbG">
            <node concept="3cpWsd" id="5fP$Xwj1pJI" role="37vLTx">
              <node concept="FJ1c_" id="5fP$Xwj1sPe" role="3uHU7w">
                <node concept="3cmrfG" id="5fP$Xwj1sSu" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1rXfSq" id="1pJxKgrrXll" role="3uHU7B">
                  <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                  <node concept="37vLTw" id="1pJxKgrrXlo" role="37wK5m">
                    <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                  </node>
                </node>
              </node>
              <node concept="FJ1c_" id="5fP$Xwj1oMG" role="3uHU7B">
                <node concept="37vLTw" id="5fP$Xwj1nt2" role="3uHU7B">
                  <ref role="3cqZAo" node="5fP$Xwj1nt0" resolve="lineSize" />
                </node>
                <node concept="3cmrfG" id="5fP$Xwj1oQ0" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5fP$Xwj1lPC" role="37vLTJ">
              <ref role="3cqZAo" node="5fP$Xwj19IW" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5fP$Xwj1dNf" role="3cqZAp">
          <node concept="2GrKxI" id="5fP$Xwj1dNg" role="2Gsz3X">
            <property role="TrG5h" value="port" />
          </node>
          <node concept="37vLTw" id="5fP$Xwj1dUj" role="2GsD0m">
            <ref role="3cqZAo" node="5fP$Xwj0Ww$" resolve="portsColumn" />
          </node>
          <node concept="3clFbS" id="5fP$Xwj1dNi" role="2LFqv$">
            <node concept="3clFbH" id="5fP$Xwj1lCO" role="3cqZAp" />
            <node concept="3cpWs8" id="5fP$Xwj1f7$" role="3cqZAp">
              <node concept="3cpWsn" id="5fP$Xwj1f7_" role="3cpWs9">
                <property role="TrG5h" value="rect" />
                <node concept="3uibUv" id="5fP$Xwj1f7A" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
                </node>
                <node concept="2ShNRf" id="5fP$Xwj1fcq" role="33vP2m">
                  <node concept="1pGfFk" id="5fP$Xwj1fMj" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                    <node concept="37vLTw" id="5fP$Xwj1tYJ" role="37wK5m">
                      <ref role="3cqZAo" node="5fP$Xwj1fMJ" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="5fP$Xwj1ukL" role="37wK5m">
                      <ref role="3cqZAo" node="5fP$Xwj19IW" resolve="y" />
                    </node>
                    <node concept="1rXfSq" id="1pJxKgrrZ3m" role="37wK5m">
                      <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                      <node concept="37vLTw" id="1pJxKgrrZ3p" role="37wK5m">
                        <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="1pJxKgrs0lP" role="37wK5m">
                      <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                      <node concept="37vLTw" id="1pJxKgrs0lS" role="37wK5m">
                        <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fP$Xwj1VKh" role="3cqZAp">
              <node concept="2OqwBi" id="5fP$Xwj1VKi" role="3clFbG">
                <node concept="37vLTw" id="5fP$Xwj1VKj" role="2Oq$k0">
                  <ref role="3cqZAo" node="5fP$Xwj12e_" resolve="g" />
                </node>
                <node concept="liA8E" id="5fP$Xwj1VKk" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="2YIFZM" id="7pEplJksXrD" role="37wK5m">
                    <ref role="1Pybhc" node="2JGKyjit8pv" resolve="DiagramColors" />
                    <ref role="37wK5l" node="2SU8oJdTf9W" resolve="getColorFor" />
                    <node concept="2OqwBi" id="7qPnRGFoTt1" role="37wK5m">
                      <node concept="2GrUjf" id="7qPnRGFoTt2" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5fP$Xwj1dNg" resolve="port" />
                      </node>
                      <node concept="2OwXpG" id="7qPnRGFoTt3" role="2OqNvi">
                        <ref role="2Oxat5" node="5fP$XwiXktG" resolve="myConnecitonKind" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2SU8oJe4tJx" role="37wK5m">
                      <ref role="3cqZAo" node="2SU8oJe4kYV" resolve="myIsEditable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fP$Xwj1VKq" role="3cqZAp">
              <node concept="2OqwBi" id="5fP$Xwj1VKr" role="3clFbG">
                <node concept="37vLTw" id="5fP$Xwj1VKs" role="2Oq$k0">
                  <ref role="3cqZAo" node="5fP$Xwj12e_" resolve="g" />
                </node>
                <node concept="liA8E" id="5fP$Xwj1VKt" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
                  <node concept="37vLTw" id="5fP$Xwj1VKu" role="37wK5m">
                    <ref role="3cqZAo" node="5fP$Xwj1f7_" resolve="rect" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fP$Xwj1vRh" role="3cqZAp">
              <node concept="2OqwBi" id="5fP$Xwj1w1H" role="3clFbG">
                <node concept="37vLTw" id="5fP$Xwj1vRf" role="2Oq$k0">
                  <ref role="3cqZAo" node="5fP$Xwj12e_" resolve="g" />
                </node>
                <node concept="liA8E" id="5fP$Xwj1wtO" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="37vLTw" id="2SU8oJe6qCN" role="37wK5m">
                    <ref role="3cqZAo" node="2SU8oJe6qCL" resolve="foregroundColor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fP$Xwj1ekd" role="3cqZAp">
              <node concept="2OqwBi" id="5fP$Xwj1eql" role="3clFbG">
                <node concept="37vLTw" id="5fP$Xwj1ekc" role="2Oq$k0">
                  <ref role="3cqZAo" node="5fP$Xwj12e_" resolve="g" />
                </node>
                <node concept="liA8E" id="5fP$Xwj1eYx" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape)" resolve="draw" />
                  <node concept="37vLTw" id="5fP$Xwj1VHJ" role="37wK5m">
                    <ref role="3cqZAo" node="5fP$Xwj1f7_" resolve="rect" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5fP$Xwj2sdy" role="3cqZAp" />
            <node concept="3clFbF" id="5fP$Xwj2sIj" role="3cqZAp">
              <node concept="d57v9" id="5fP$Xwj2u2t" role="3clFbG">
                <node concept="37vLTw" id="5fP$Xwj2uqZ" role="37vLTx">
                  <ref role="3cqZAo" node="5fP$Xwj1nt0" resolve="lineSize" />
                </node>
                <node concept="37vLTw" id="5fP$Xwj2sIh" role="37vLTJ">
                  <ref role="3cqZAo" node="5fP$Xwj19IW" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5fP$Xwj0Owa" role="1B3o_S" />
      <node concept="3cqZAl" id="5fP$Xwj0SbE" role="3clF45" />
      <node concept="37vLTG" id="5fP$Xwj0Ww$" role="3clF46">
        <property role="TrG5h" value="portsColumn" />
        <node concept="3uibUv" id="5fP$Xwj0Wwz" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5fP$Xwj0ZYJ" role="11_B2D">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5fP$Xwj12e_" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="5fP$Xwj12eA" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="37vLTG" id="5fP$Xwj1fMJ" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="5fP$Xwj1jaS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5fP$Xwj19IW" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="5fP$Xwj1da8" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG99Pd" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zW07jU" role="jymVt">
      <property role="TrG5h" value="getBackgroundColor" />
      <node concept="3Tm6S6" id="1HEL0zW07jV" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zW07jW" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3clFbS" id="1HEL0zW07i5" role="3clF47">
        <node concept="3cpWs8" id="5fP$XwiGiah" role="3cqZAp">
          <node concept="3cpWsn" id="5fP$XwiGiai" role="3cpWs9">
            <property role="TrG5h" value="background" />
            <node concept="3uibUv" id="5fP$XwiGia6" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="2OqwBi" id="5fP$XwiGiaj" role="33vP2m">
              <node concept="2OqwBi" id="3DiEZ8TthAw" role="2Oq$k0">
                <node concept="37vLTw" id="3DiEZ8TtdKU" role="2Oq$k0">
                  <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                </node>
                <node concept="liA8E" id="3DiEZ8Ttr22" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
                </node>
              </node>
              <node concept="liA8E" id="5fP$XwiGial" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5fP$XwiGiam" role="37wK5m">
                  <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                  <ref role="3cqZAo" to="5ueo:~StyleAttributes.BACKGROUND_COLOR" resolve="BACKGROUND_COLOR" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1HEL0zW07iX" role="3cqZAp">
          <node concept="3K4zz7" id="5fP$XwiGFjv" role="3cqZAk">
            <node concept="10M0yZ" id="31Fn7oZLBR$" role="3K4E3e">
              <ref role="3cqZAo" to="lzb2:~JBColor.LIGHT_GRAY" resolve="LIGHT_GRAY" />
              <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
            </node>
            <node concept="37vLTw" id="5fP$XwiGOux" role="3K4GZi">
              <ref role="3cqZAo" node="5fP$XwiGiai" resolve="background" />
            </node>
            <node concept="3clFbC" id="5fP$XwiGBrx" role="3K4Cdx">
              <node concept="10Nm6u" id="5fP$XwiGCXp" role="3uHU7w" />
              <node concept="37vLTw" id="5fP$XwiGian" role="3uHU7B">
                <ref role="3cqZAo" node="5fP$XwiGiai" resolve="background" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5fP$XwiTzeJ" role="jymVt" />
    <node concept="3clFb_" id="5fP$XwiTzF$" role="jymVt">
      <property role="TrG5h" value="getTypeBackgroundColor" />
      <node concept="3Tm6S6" id="5fP$XwiTzF_" role="1B3o_S" />
      <node concept="3uibUv" id="5fP$XwiTzFA" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3clFbS" id="5fP$XwiTzFB" role="3clF47">
        <node concept="3cpWs6" id="5fP$XwiTJYN" role="3cqZAp">
          <node concept="10M0yZ" id="5fP$XwiTFlL" role="3cqZAk">
            <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
            <ref role="3cqZAo" to="exr9:~MPSColors.LIGHT_BLUE" resolve="LIGHT_BLUE" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zW96Hg" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zW8VN0" role="jymVt">
      <property role="TrG5h" value="getForegroundColor" />
      <node concept="3Tm6S6" id="1HEL0zW8VN1" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zW8VN2" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3clFbS" id="1HEL0zW8VN3" role="3clF47">
        <node concept="3clFbF" id="2SU8oJe69nJ" role="3cqZAp">
          <node concept="2OqwBi" id="5fP$XwiFmCu" role="3clFbG">
            <node concept="liA8E" id="5fP$XwiFmCw" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
              <node concept="10M0yZ" id="5fP$XwiFmCx" role="37wK5m">
                <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_COLOR" resolve="TEXT_COLOR" />
              </node>
            </node>
            <node concept="2OqwBi" id="3DiEZ8Ttv7q" role="2Oq$k0">
              <node concept="37vLTw" id="3DiEZ8Ttv7r" role="2Oq$k0">
                <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
              </node>
              <node concept="liA8E" id="3DiEZ8Ttv7s" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG7yPA" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zW1dyJ" role="jymVt">
      <property role="TrG5h" value="initPorts" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="1HEL0zW1dyM" role="3clF47">
        <node concept="3clFbH" id="5fP$XwiZGSg" role="3cqZAp" />
        <node concept="2Gpval" id="1JYTWWzBhux" role="3cqZAp">
          <node concept="2GrKxI" id="1JYTWWzBhuz" role="2Gsz3X">
            <property role="TrG5h" value="port" />
          </node>
          <node concept="37vLTw" id="1JYTWWzBhUa" role="2GsD0m">
            <ref role="3cqZAo" node="1HEL0zW1fw7" resolve="ports" />
          </node>
          <node concept="3clFbS" id="1JYTWWzBhuB" role="2LFqv$">
            <node concept="3cpWs8" id="1JYTWWzBkri" role="3cqZAp">
              <node concept="3cpWsn" id="1JYTWWzBkrj" role="3cpWs9">
                <property role="TrG5h" value="portData" />
                <node concept="3uibUv" id="1JYTWWzBkrk" role="1tU5fm">
                  <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
                </node>
                <node concept="2ShNRf" id="1JYTWWzBlbE" role="33vP2m">
                  <node concept="1pGfFk" id="1JYTWWzBlSG" role="2ShVmc">
                    <ref role="37wK5l" node="5fP$XwiXwFK" resolve="FBTypeCellComponent.FBPortData" />
                    <node concept="37vLTw" id="1JYTWWzBsD3" role="37wK5m">
                      <ref role="3cqZAo" node="1JYTWWzBmYF" resolve="context" />
                    </node>
                    <node concept="2GrUjf" id="1JYTWWzBsMe" role="37wK5m">
                      <ref role="2Gs0qQ" node="1JYTWWzBhuz" resolve="port" />
                    </node>
                    <node concept="37vLTw" id="1JYTWWzBsD6" role="37wK5m">
                      <ref role="3cqZAo" node="1JYTWWzBmYL" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1JYTWWzByhK" role="3cqZAp">
              <node concept="2OqwBi" id="1JYTWWzBy$S" role="3clFbG">
                <node concept="37vLTw" id="1JYTWWzByhI" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zW1epr" resolve="portsColumn" />
                </node>
                <node concept="liA8E" id="1JYTWWzBzkH" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="1JYTWWzBzGK" role="37wK5m">
                    <ref role="3cqZAo" node="1JYTWWzBkrj" resolve="portData" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1JYTWWzJ0GM" role="3cqZAp">
              <node concept="2OqwBi" id="1JYTWWzJ196" role="3clFbG">
                <node concept="37vLTw" id="1JYTWWzJ0GK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                </node>
                <node concept="liA8E" id="1JYTWWzJ6aq" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="addEditorCell" />
                  <node concept="2OqwBi" id="1JYTWWzJ6Fk" role="37wK5m">
                    <node concept="37vLTw" id="1JYTWWzJ6uu" role="2Oq$k0">
                      <ref role="3cqZAo" node="1JYTWWzBkrj" resolve="portData" />
                    </node>
                    <node concept="2OwXpG" id="1JYTWWzJ6NH" role="2OqNvi">
                      <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1HEL0zW1cXz" role="1B3o_S" />
      <node concept="3cqZAl" id="1HEL0zW1dYQ" role="3clF45" />
      <node concept="37vLTG" id="1JYTWWzBmYF" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1cTKxMS9DAC" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="1JYTWWzBmYL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1JYTWWzBmYM" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zW1epr" role="3clF46">
        <property role="TrG5h" value="portsColumn" />
        <node concept="3uibUv" id="1HEL0zW1epq" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5fP$XwiY$zm" role="11_B2D">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zW1fw7" role="3clF46">
        <property role="TrG5h" value="ports" />
        <node concept="3uibUv" id="1HEL0zW1fVa" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1HEL0zWejwP" role="11_B2D">
            <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG85f8" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zW6oqn" role="jymVt">
      <property role="TrG5h" value="calculateHeight" />
      <node concept="3Tm6S6" id="1HEL0zW6oqo" role="1B3o_S" />
      <node concept="10Oyi0" id="1HEL0zW6oqp" role="3clF45" />
      <node concept="3clFbS" id="1HEL0zW6ofs" role="3clF47">
        <node concept="3cpWs8" id="1HEL0zW7B0K" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW7B0L" role="3cpWs9">
            <property role="TrG5h" value="eventPortsCount" />
            <node concept="10Oyi0" id="1HEL0zW7B0I" role="1tU5fm" />
            <node concept="1rXfSq" id="1HEL0zW8_QG" role="33vP2m">
              <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW7O9S" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW7O9T" role="3cpWs9">
            <property role="TrG5h" value="dataPortsCount" />
            <node concept="10Oyi0" id="1HEL0zW7O9M" role="1tU5fm" />
            <node concept="1rXfSq" id="1HEL0zW8Ck8" role="33vP2m">
              <ref role="37wK5l" node="1HEL0zW8Ck5" resolve="getBottomPortsCount" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zW7WHU" role="3cqZAp" />
        <node concept="3cpWs6" id="1HEL0zW6okR" role="3cqZAp">
          <node concept="17qRlL" id="1HEL0zW6okS" role="3cqZAk">
            <node concept="1eOMI4" id="1HEL0zW6Gac" role="3uHU7B">
              <node concept="3cpWs3" id="1HEL0zW7$j2" role="1eOMHV">
                <node concept="3cpWs3" id="1HEL0zW7nrE" role="3uHU7B">
                  <node concept="37vLTw" id="1HEL0zW7B0T" role="3uHU7B">
                    <ref role="3cqZAo" node="1HEL0zW7B0L" resolve="eventPortsCount" />
                  </node>
                  <node concept="37vLTw" id="1HEL0zW7Oa1" role="3uHU7w">
                    <ref role="3cqZAo" node="1HEL0zW7O9T" resolve="dataPortsCount" />
                  </node>
                </node>
                <node concept="3cmrfG" id="7qPnRGGjDZB" role="3uHU7w">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="7qPnRGGuf68" role="3uHU7w">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zW2nma" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zW2rlD" role="jymVt">
      <property role="TrG5h" value="calculateWidth" />
      <node concept="3clFbS" id="1HEL0zW2rlG" role="3clF47">
        <node concept="3cpWs8" id="1HEL0zW3W8K" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW3W8N" role="3cpWs9">
            <property role="TrG5h" value="typeNameRowWidth" />
            <node concept="10Oyi0" id="1HEL0zW3W8I" role="1tU5fm" />
            <node concept="2OqwBi" id="1HEL0zW4f1I" role="33vP2m">
              <node concept="37vLTw" id="1HEL0zW4euf" role="2Oq$k0">
                <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameLabel" />
              </node>
              <node concept="liA8E" id="1HEL0zW4ha0" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zW5Yzg" role="3cqZAp" />
        <node concept="3cpWs8" id="1HEL0zW2y4p" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW2y4s" role="3cpWs9">
            <property role="TrG5h" value="inputsWidth" />
            <node concept="10Oyi0" id="1HEL0zW2y4n" role="1tU5fm" />
            <node concept="2YIFZM" id="1HEL0zW3nvE" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
              <node concept="1rXfSq" id="7qPnRGGab$I" role="37wK5m">
                <ref role="37wK5l" node="1HEL0zW5EQE" resolve="portsColumnWidth" />
                <node concept="37vLTw" id="7qPnRGG87be" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
                </node>
              </node>
              <node concept="2YIFZM" id="6LU90BO2vpD" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                <node concept="1rXfSq" id="7qPnRGGakxh" role="37wK5m">
                  <ref role="37wK5l" node="1HEL0zW5EQE" resolve="portsColumnWidth" />
                  <node concept="37vLTw" id="7qPnRGG87b8" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
                  </node>
                </node>
                <node concept="1rXfSq" id="6LU90BO2APw" role="37wK5m">
                  <ref role="37wK5l" node="1HEL0zW5EQE" resolve="portsColumnWidth" />
                  <node concept="37vLTw" id="6LU90BO2Nls" role="37wK5m">
                    <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW3qoj" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW3qok" role="3cpWs9">
            <property role="TrG5h" value="outputsWidth" />
            <node concept="10Oyi0" id="1HEL0zW3qol" role="1tU5fm" />
            <node concept="2YIFZM" id="1HEL0zW5NAA" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="1rXfSq" id="7qPnRGGahyw" role="37wK5m">
                <ref role="37wK5l" node="1HEL0zW5EQE" resolve="portsColumnWidth" />
                <node concept="37vLTw" id="7qPnRGG87b2" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
                </node>
              </node>
              <node concept="2YIFZM" id="6LU90BO2R5p" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="1rXfSq" id="6LU90BO2R5q" role="37wK5m">
                  <ref role="37wK5l" node="1HEL0zW5EQE" resolve="portsColumnWidth" />
                  <node concept="37vLTw" id="6LU90BO2UXA" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
                  </node>
                </node>
                <node concept="1rXfSq" id="6LU90BO2R5s" role="37wK5m">
                  <ref role="37wK5l" node="1HEL0zW5EQE" resolve="portsColumnWidth" />
                  <node concept="37vLTw" id="6LU90BO2YJF" role="37wK5m">
                    <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW3yn8" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW3ynb" role="3cpWs9">
            <property role="TrG5h" value="regularRowsWidth" />
            <node concept="10Oyi0" id="1HEL0zW3yn6" role="1tU5fm" />
            <node concept="3cpWs3" id="1pJxKgrr0EZ" role="33vP2m">
              <node concept="3cpWs3" id="1HEL0zW3IjY" role="3uHU7B">
                <node concept="37vLTw" id="1HEL0zW3zar" role="3uHU7B">
                  <ref role="3cqZAo" node="1HEL0zW2y4s" resolve="inputsWidth" />
                </node>
                <node concept="37vLTw" id="1HEL0zW3IAk" role="3uHU7w">
                  <ref role="3cqZAo" node="1HEL0zW3qok" resolve="outputsWidth" />
                </node>
              </node>
              <node concept="1rXfSq" id="1pJxKgrr3KR" role="3uHU7w">
                <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                <node concept="3cpWs3" id="5fP$XwiNX_q" role="37wK5m">
                  <node concept="37vLTw" id="1pJxKgrrmcF" role="3uHU7B">
                    <ref role="3cqZAo" node="3DiEZ8TJ_KN" resolve="CENTER_PADDING" />
                  </node>
                  <node concept="17qRlL" id="5fP$XwiO2tm" role="3uHU7w">
                    <node concept="37vLTw" id="1pJxKgrrmcJ" role="3uHU7w">
                      <ref role="3cqZAo" node="3DiEZ8TJFBm" resolve="INNER_BORDER_PADDING" />
                    </node>
                    <node concept="3cmrfG" id="6tmliaAi1mb" role="3uHU7B">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zW4hu_" role="3cqZAp" />
        <node concept="3cpWs6" id="1HEL0zW5QKF" role="3cqZAp">
          <node concept="3cpWs3" id="5fP$XwiNz2P" role="3cqZAk">
            <node concept="2YIFZM" id="1HEL0zW5T8p" role="3uHU7B">
              <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="37vLTw" id="1HEL0zW6dC9" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW3ynb" resolve="regularRowsWidth" />
              </node>
              <node concept="37vLTw" id="1HEL0zW6hGu" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW3W8N" resolve="typeNameRowWidth" />
              </node>
            </node>
            <node concept="1rXfSq" id="1pJxKgrqI6z" role="3uHU7w">
              <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
              <node concept="3cpWs3" id="6tmliaAigOi" role="37wK5m">
                <node concept="17qRlL" id="5fP$XwiNCMF" role="3uHU7B">
                  <node concept="3cmrfG" id="5fP$XwiN$Iz" role="3uHU7B">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="1pJxKgrqL$J" role="3uHU7w">
                    <ref role="3cqZAo" node="3DiEZ8TJvSm" resolve="PORT_SIZE" />
                  </node>
                </node>
                <node concept="17qRlL" id="6tmliaAhPJf" role="3uHU7w">
                  <node concept="37vLTw" id="1pJxKgrqL$N" role="3uHU7w">
                    <ref role="3cqZAo" node="3DiEZ8TJFBm" resolve="INNER_BORDER_PADDING" />
                  </node>
                  <node concept="3cmrfG" id="6tmliaAhD_m" role="3uHU7B">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1HEL0zW2qy0" role="1B3o_S" />
      <node concept="10Oyi0" id="1HEL0zW2qC0" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7qPnRGG8g98" role="jymVt" />
    <node concept="Wx3nA" id="1HEL0zW396D" role="jymVt">
      <property role="TrG5h" value="PORTNAME_WIDTH_COMPARATOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1HEL0zW396G" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Comparator" resolve="Comparator" />
        <node concept="3uibUv" id="5fP$Xwj0ffy" role="11_B2D">
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2YIFZM" id="1HEL0zW396I" role="33vP2m">
        <ref role="37wK5l" to="33ny:~Comparator.comparing(java.util.function.Function)" resolve="comparing" />
        <ref role="1Pybhc" to="33ny:~Comparator" resolve="Comparator" />
        <node concept="2ShNRf" id="1HEL0zW3hfC" role="37wK5m">
          <node concept="YeOm9" id="1HEL0zW3hUi" role="2ShVmc">
            <node concept="1Y3b0j" id="1HEL0zW3hUl" role="YeSDq">
              <property role="2bfB8j" value="true" />
              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
              <ref role="1Y3XeK" to="82uw:~Function" resolve="Function" />
              <node concept="3Tm1VV" id="1HEL0zW3hUm" role="1B3o_S" />
              <node concept="3uibUv" id="5fP$Xwj0iqd" role="2Ghqu4">
                <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
              </node>
              <node concept="3uibUv" id="1HEL0zW3jAG" role="2Ghqu4">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
              <node concept="3clFb_" id="1HEL0zW3koA" role="jymVt">
                <property role="TrG5h" value="apply" />
                <node concept="3Tm1VV" id="1HEL0zW3koB" role="1B3o_S" />
                <node concept="3uibUv" id="1HEL0zW3koJ" role="3clF45">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="37vLTG" id="1HEL0zW3koE" role="3clF46">
                  <property role="TrG5h" value="port" />
                  <node concept="3uibUv" id="5fP$Xwj0jad" role="1tU5fm">
                    <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
                  </node>
                </node>
                <node concept="3clFbS" id="1HEL0zW3koL" role="3clF47">
                  <node concept="3clFbF" id="1HEL0zW3leP" role="3cqZAp">
                    <node concept="2OqwBi" id="1HEL0zW3lqK" role="3clFbG">
                      <node concept="2OqwBi" id="5fP$Xwj0kkJ" role="2Oq$k0">
                        <node concept="37vLTw" id="1HEL0zW3leO" role="2Oq$k0">
                          <ref role="3cqZAo" node="1HEL0zW3koE" resolve="port" />
                        </node>
                        <node concept="2OwXpG" id="1JYTWWzB$XO" role="2OqNvi">
                          <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1HEL0zW3lNl" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2AHcQZ" id="1HEL0zW3koM" role="2AJF6D">
                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1HEL0zW396F" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1HEL0zW5ufR" role="jymVt" />
    <node concept="2YIFZL" id="1HEL0zW5EQE" role="jymVt">
      <property role="TrG5h" value="portsColumnWidth" />
      <node concept="3clFbS" id="1HEL0zW5EQG" role="3clF47">
        <node concept="3clFbJ" id="5fP$XwiKmVe" role="3cqZAp">
          <node concept="3clFbS" id="5fP$XwiKmVg" role="3clFbx">
            <node concept="3cpWs6" id="5fP$XwiKr91" role="3cqZAp">
              <node concept="3cmrfG" id="5fP$XwiKrc$" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5fP$XwiKosr" role="3clFbw">
            <node concept="37vLTw" id="5fP$XwiKn7P" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW5EQP" resolve="textColumn" />
            </node>
            <node concept="liA8E" id="5fP$XwiKqfG" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW5EQH" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW5EQI" role="3clFbG">
            <node concept="2OqwBi" id="5fP$Xwj0kOn" role="2Oq$k0">
              <node concept="2YIFZM" id="1HEL0zW5EQJ" role="2Oq$k0">
                <ref role="37wK5l" to="33ny:~Collections.max(java.util.Collection,java.util.Comparator)" resolve="max" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="1HEL0zW5EQK" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW5EQP" resolve="textColumn" />
                </node>
                <node concept="37vLTw" id="7qPnRGG8gnP" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW396D" resolve="PORTNAME_WIDTH_COMPARATOR" />
                </node>
              </node>
              <node concept="2OwXpG" id="1JYTWWzB_zv" role="2OqNvi">
                <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
              </node>
            </node>
            <node concept="liA8E" id="1HEL0zW5EQM" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="1HEL0zW5EQO" role="3clF45" />
      <node concept="37vLTG" id="1HEL0zW5EQP" role="3clF46">
        <property role="TrG5h" value="textColumn" />
        <node concept="3uibUv" id="1HEL0zW5EQQ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5fP$Xwj0bKt" role="11_B2D">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBTypeCellComponent.FBPortData" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1HEL0zW5EQN" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1HEL0zW6vQp" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zW8Ck5" role="jymVt">
      <property role="TrG5h" value="getBottomPortsCount" />
      <node concept="3Tm1VV" id="7qPnRGGte3h" role="1B3o_S" />
      <node concept="10Oyi0" id="1HEL0zW8Ck7" role="3clF45" />
      <node concept="3clFbS" id="1HEL0zW8C5j" role="3clF47">
        <node concept="3cpWs6" id="1HEL0zW8CcC" role="3cqZAp">
          <node concept="2YIFZM" id="1HEL0zW8CcD" role="3cqZAk">
            <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <node concept="1rXfSq" id="7qPnRGGtkO0" role="37wK5m">
              <ref role="37wK5l" node="7qPnRGGtkNX" resolve="getInputBottomPortsCount" />
            </node>
            <node concept="1rXfSq" id="7qPnRGGtylc" role="37wK5m">
              <ref role="37wK5l" node="7qPnRGGtyl9" resolve="getOutputBootomPortsCount" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGtDRt" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGtkNX" role="jymVt">
      <property role="TrG5h" value="getInputBottomPortsCount" />
      <node concept="3Tm1VV" id="7qPnRGGtkNY" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGtkNZ" role="3clF45" />
      <node concept="3clFbS" id="7qPnRGGtkCp" role="3clF47">
        <node concept="3cpWs6" id="7qPnRGGtkI9" role="3cqZAp">
          <node concept="3cpWs3" id="6LU90BNUmvR" role="3cqZAk">
            <node concept="2OqwBi" id="6LU90BNUtRg" role="3uHU7w">
              <node concept="37vLTw" id="6LU90BNUpoc" role="2Oq$k0">
                <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
              </node>
              <node concept="liA8E" id="6LU90BNUHyi" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="2OqwBi" id="7qPnRGGtkIa" role="3uHU7B">
              <node concept="37vLTw" id="7qPnRGGtkIb" role="2Oq$k0">
                <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
              </node>
              <node concept="liA8E" id="7qPnRGGtkIc" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGtHeA" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGtyl9" role="jymVt">
      <property role="TrG5h" value="getOutputBootomPortsCount" />
      <node concept="3Tm1VV" id="7qPnRGGvR8i" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGtylb" role="3clF45" />
      <node concept="3clFbS" id="7qPnRGGty9_" role="3clF47">
        <node concept="3cpWs6" id="7qPnRGGtyfl" role="3cqZAp">
          <node concept="3cpWs3" id="6LU90BNUPGm" role="3cqZAk">
            <node concept="2OqwBi" id="6LU90BNUW9K" role="3uHU7w">
              <node concept="37vLTw" id="6LU90BNUT9C" role="2Oq$k0">
                <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
              </node>
              <node concept="liA8E" id="6LU90BNV8cI" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="2OqwBi" id="7qPnRGGtyfm" role="3uHU7B">
              <node concept="37vLTw" id="7qPnRGGtyfn" role="2Oq$k0">
                <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
              </node>
              <node concept="liA8E" id="7qPnRGGtyfo" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNW91U" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNW4WJ" role="jymVt">
      <property role="TrG5h" value="getInputDataPortsCount" />
      <node concept="3Tm1VV" id="6LU90BNW4WK" role="1B3o_S" />
      <node concept="10Oyi0" id="6LU90BNW4WL" role="3clF45" />
      <node concept="3clFbS" id="6LU90BNW4WM" role="3clF47">
        <node concept="3cpWs6" id="6LU90BNW4WN" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNW4WS" role="3cqZAk">
            <node concept="37vLTw" id="6LU90BNW4WT" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
            </node>
            <node concept="liA8E" id="6LU90BNW4WU" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNW4WI" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNW4Wy" role="jymVt">
      <property role="TrG5h" value="getOutputDataPortsCount" />
      <node concept="3Tm1VV" id="6LU90BNW4Wz" role="1B3o_S" />
      <node concept="10Oyi0" id="6LU90BNW4W$" role="3clF45" />
      <node concept="3clFbS" id="6LU90BNW4W_" role="3clF47">
        <node concept="3cpWs6" id="6LU90BNW4WA" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNW4WF" role="3cqZAk">
            <node concept="37vLTw" id="6LU90BNW4WG" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
            </node>
            <node concept="liA8E" id="6LU90BNW4WH" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNWlu8" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNWltW" role="jymVt">
      <property role="TrG5h" value="getSocketPortsCount" />
      <node concept="3Tm1VV" id="6LU90BNWltX" role="1B3o_S" />
      <node concept="10Oyi0" id="6LU90BNWltY" role="3clF45" />
      <node concept="3clFbS" id="6LU90BNWltZ" role="3clF47">
        <node concept="3cpWs6" id="6LU90BNWlu0" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNWlu2" role="3cqZAk">
            <node concept="37vLTw" id="6LU90BNWlu3" role="2Oq$k0">
              <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
            </node>
            <node concept="liA8E" id="6LU90BNWlu4" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNWltV" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNWltJ" role="jymVt">
      <property role="TrG5h" value="getPlugPortsCount" />
      <node concept="3Tm1VV" id="6LU90BNWltK" role="1B3o_S" />
      <node concept="10Oyi0" id="6LU90BNWltL" role="3clF45" />
      <node concept="3clFbS" id="6LU90BNWltM" role="3clF47">
        <node concept="3cpWs6" id="6LU90BNWltN" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNWltP" role="3cqZAk">
            <node concept="37vLTw" id="6LU90BNWltQ" role="2Oq$k0">
              <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
            </node>
            <node concept="liA8E" id="6LU90BNWltR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zW8IHo" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zW8_QD" role="jymVt">
      <property role="TrG5h" value="getEventPortsCount" />
      <node concept="3Tm1VV" id="7qPnRGGth5C" role="1B3o_S" />
      <node concept="10Oyi0" id="1HEL0zW8_QF" role="3clF45" />
      <node concept="3clFbS" id="1HEL0zW8_BR" role="3clF47">
        <node concept="3cpWs6" id="1HEL0zW8_Jc" role="3cqZAp">
          <node concept="2YIFZM" id="1HEL0zW8_Jd" role="3cqZAk">
            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
            <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
            <node concept="1rXfSq" id="7qPnRGGtKNs" role="37wK5m">
              <ref role="37wK5l" node="7qPnRGGtKNp" resolve="getInputEventPortsCount" />
            </node>
            <node concept="1rXfSq" id="7qPnRGGtYgm" role="37wK5m">
              <ref role="37wK5l" node="7qPnRGGtYgj" resolve="getOutputEventPortsCount" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGtRzu" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGtKNp" role="jymVt">
      <property role="TrG5h" value="getInputEventPortsCount" />
      <node concept="3Tm1VV" id="7qPnRGGvzel" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGtKNr" role="3clF45" />
      <node concept="3clFbS" id="7qPnRGGtKBP" role="3clF47">
        <node concept="3cpWs6" id="7qPnRGGtKH_" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGGtKHA" role="3cqZAk">
            <node concept="37vLTw" id="7qPnRGGtKHB" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
            </node>
            <node concept="liA8E" id="7qPnRGGtKHC" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG8ggt" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGtYgj" role="jymVt">
      <property role="TrG5h" value="getOutputEventPortsCount" />
      <node concept="3Tm1VV" id="7qPnRGGtYgk" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGtYgl" role="3clF45" />
      <node concept="3clFbS" id="7qPnRGGtY4J" role="3clF47">
        <node concept="3cpWs6" id="7qPnRGGtYav" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGGtYaw" role="3cqZAk">
            <node concept="37vLTw" id="7qPnRGGtYax" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
            </node>
            <node concept="liA8E" id="7qPnRGGtYay" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGu666" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGqsSb" role="jymVt">
      <property role="TrG5h" value="getInputEventPortPosition" />
      <node concept="3clFbS" id="7qPnRGGqsSe" role="3clF47">
        <node concept="3cpWs8" id="2i$17fOGJ7c" role="3cqZAp">
          <node concept="3cpWsn" id="2i$17fOGJ7d" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="2i$17fOGJ7b" role="1tU5fm" />
            <node concept="1rXfSq" id="2i$17fOGJ7e" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7qPnRGGqT1r" role="3cqZAp">
          <node concept="2ShNRf" id="7qPnRGGqWgq" role="3cqZAk">
            <node concept="1pGfFk" id="7qPnRGGqYMf" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
              <node concept="3cmrfG" id="4JFQCPi0o71" role="37wK5m">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="3cpWs3" id="2i$17fOGNxp" role="37wK5m">
                <node concept="FJ1c_" id="2i$17fOGRiR" role="3uHU7w">
                  <node concept="3cmrfG" id="2i$17fOGRk2" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="2i$17fOGQDd" role="3uHU7B">
                    <ref role="3cqZAo" node="2i$17fOGJ7d" resolve="lineSize" />
                  </node>
                </node>
                <node concept="17qRlL" id="7qPnRGGqP_v" role="3uHU7B">
                  <node concept="37vLTw" id="7qPnRGGqO0N" role="3uHU7B">
                    <ref role="3cqZAo" node="7qPnRGGqzxL" resolve="eventNumber" />
                  </node>
                  <node concept="37vLTw" id="2i$17fOGJ7f" role="3uHU7w">
                    <ref role="3cqZAo" node="2i$17fOGJ7d" resolve="lineSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qPnRGGqpsJ" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGqQ1H" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="7qPnRGGqzxL" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="7qPnRGGqzxK" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGsMqy" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGri0u" role="jymVt">
      <property role="TrG5h" value="getOutputEventPortPosition" />
      <node concept="3clFbS" id="7qPnRGGri0v" role="3clF47">
        <node concept="3cpWs8" id="2i$17fOGG1r" role="3cqZAp">
          <node concept="3cpWsn" id="2i$17fOGG1s" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="2i$17fOGG1q" role="1tU5fm" />
            <node concept="1rXfSq" id="2i$17fOGG1t" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7qPnRGGri0w" role="3cqZAp">
          <node concept="2ShNRf" id="7qPnRGGri0x" role="3cqZAk">
            <node concept="1pGfFk" id="7qPnRGGri0y" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
              <node concept="3cpWs3" id="7qPnRGGrIOX" role="37wK5m">
                <node concept="3cmrfG" id="7qPnRGGrIQc" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSd8BG" role="3uHU7B">
                  <node concept="37vLTw" id="1cTKxMSd8BH" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="1cTKxMSd8BI" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="2i$17fOGV5L" role="37wK5m">
                <node concept="17qRlL" id="7qPnRGGri0z" role="3uHU7B">
                  <node concept="37vLTw" id="7qPnRGGri0A" role="3uHU7B">
                    <ref role="3cqZAo" node="7qPnRGGri0E" resolve="eventNumber" />
                  </node>
                  <node concept="37vLTw" id="2i$17fOGG1u" role="3uHU7w">
                    <ref role="3cqZAo" node="2i$17fOGG1s" resolve="lineSize" />
                  </node>
                </node>
                <node concept="FJ1c_" id="2i$17fOGYej" role="3uHU7w">
                  <node concept="3cmrfG" id="2i$17fOGYek" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="2i$17fOGYel" role="3uHU7B">
                    <ref role="3cqZAo" node="2i$17fOGG1s" resolve="lineSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qPnRGGri0C" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGri0D" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="7qPnRGGri0E" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="7qPnRGGri0F" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGsJ8l" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGrMvK" role="jymVt">
      <property role="TrG5h" value="getInputDataPortPosition" />
      <node concept="3clFbS" id="7qPnRGGrMvL" role="3clF47">
        <node concept="3cpWs8" id="6tmliaB7CVq" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB7CVr" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="6tmliaB7CVs" role="1tU5fm" />
            <node concept="1rXfSq" id="6tmliaB7CVt" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmliaB7CVu" role="3cqZAp">
          <node concept="2ShNRf" id="6tmliaB7CVv" role="3cqZAk">
            <node concept="1pGfFk" id="6tmliaB7CVw" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
              <node concept="3cmrfG" id="6tmliaB7G4T" role="37wK5m">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="3cpWs3" id="6tmliaB7CV$" role="37wK5m">
                <node concept="17qRlL" id="6tmliaB7CV_" role="3uHU7B">
                  <node concept="1eOMI4" id="6tmliaB7CVA" role="3uHU7B">
                    <node concept="3cpWs3" id="6tmliaB7CVB" role="1eOMHV">
                      <node concept="3cpWs3" id="6tmliaB7CVC" role="3uHU7B">
                        <node concept="3cmrfG" id="6tmliaB7CVD" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="1rXfSq" id="6tmliaB7CVE" role="3uHU7B">
                          <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6tmliaB7CVF" role="3uHU7w">
                        <ref role="3cqZAo" node="7qPnRGGrMvW" resolve="dataNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6tmliaB7CVG" role="3uHU7w">
                    <ref role="3cqZAo" node="6tmliaB7CVr" resolve="lineSize" />
                  </node>
                </node>
                <node concept="FJ1c_" id="6tmliaB7CVH" role="3uHU7w">
                  <node concept="3cmrfG" id="6tmliaB7CVI" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="6tmliaB7CVJ" role="3uHU7B">
                    <ref role="3cqZAo" node="6tmliaB7CVr" resolve="lineSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qPnRGGrMvU" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGrMvV" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="7qPnRGGrMvW" role="3clF46">
        <property role="TrG5h" value="dataNumber" />
        <node concept="10Oyi0" id="7qPnRGGrMvX" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaB2s3y" role="jymVt" />
    <node concept="3clFb_" id="6tmliaB2s3z" role="jymVt">
      <property role="TrG5h" value="getOutputDataPortPosition" />
      <node concept="3clFbS" id="6tmliaB2s3$" role="3clF47">
        <node concept="3cpWs8" id="6tmliaB2s3_" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB2s3A" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="6tmliaB2s3B" role="1tU5fm" />
            <node concept="1rXfSq" id="6tmliaB2s3C" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmliaB2s3D" role="3cqZAp">
          <node concept="2ShNRf" id="6tmliaB2s3E" role="3cqZAk">
            <node concept="1pGfFk" id="6tmliaB2s3F" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
              <node concept="3cpWs3" id="6tmliaB2s3G" role="37wK5m">
                <node concept="3cmrfG" id="6tmliaB2s3H" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSddMt" role="3uHU7B">
                  <node concept="37vLTw" id="1cTKxMSddMu" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="1cTKxMSddMv" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="6tmliaB2s3J" role="37wK5m">
                <node concept="17qRlL" id="6tmliaB2s3K" role="3uHU7B">
                  <node concept="1eOMI4" id="6tmliaB2s3L" role="3uHU7B">
                    <node concept="3cpWs3" id="6tmliaB2s3M" role="1eOMHV">
                      <node concept="3cpWs3" id="6tmliaB2s3N" role="3uHU7B">
                        <node concept="3cmrfG" id="6tmliaB2s3O" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="1rXfSq" id="6tmliaB2s3P" role="3uHU7B">
                          <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6tmliaB2s3Q" role="3uHU7w">
                        <ref role="3cqZAo" node="6tmliaB2s3X" resolve="dataNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6tmliaB2s3R" role="3uHU7w">
                    <ref role="3cqZAo" node="6tmliaB2s3A" resolve="lineSize" />
                  </node>
                </node>
                <node concept="FJ1c_" id="6tmliaB2s3S" role="3uHU7w">
                  <node concept="3cmrfG" id="6tmliaB2s3T" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="6tmliaB2s3U" role="3uHU7B">
                    <ref role="3cqZAo" node="6tmliaB2s3A" resolve="lineSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6tmliaB2s3V" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaB2s3W" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="6tmliaB2s3X" role="3clF46">
        <property role="TrG5h" value="dataNumber" />
        <node concept="10Oyi0" id="6tmliaB2s3Y" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaB2pop" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNYSNH" role="jymVt">
      <property role="TrG5h" value="getSocketPortPosition" />
      <node concept="3clFbS" id="6LU90BNYSNI" role="3clF47">
        <node concept="3cpWs8" id="6LU90BNYSNJ" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BNYSNK" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="6LU90BNYSNL" role="1tU5fm" />
            <node concept="1rXfSq" id="6LU90BNYSNM" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6LU90BNYSNN" role="3cqZAp">
          <node concept="2ShNRf" id="6LU90BNYSNO" role="3cqZAk">
            <node concept="1pGfFk" id="6LU90BNYSNP" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
              <node concept="3cmrfG" id="6LU90BNYSNQ" role="37wK5m">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="3cpWs3" id="6LU90BNYSNR" role="37wK5m">
                <node concept="17qRlL" id="6LU90BNYSNS" role="3uHU7B">
                  <node concept="1eOMI4" id="6LU90BNYSNT" role="3uHU7B">
                    <node concept="3cpWs3" id="6LU90BNYSNU" role="1eOMHV">
                      <node concept="3cpWs3" id="6LU90BNZ2ez" role="3uHU7B">
                        <node concept="1rXfSq" id="6LU90BNZ5Rq" role="3uHU7w">
                          <ref role="37wK5l" node="6LU90BNW4WJ" resolve="getInputDataPortsCount" />
                        </node>
                        <node concept="3cpWs3" id="6LU90BNYSNV" role="3uHU7B">
                          <node concept="1rXfSq" id="6LU90BNYSNX" role="3uHU7B">
                            <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                          </node>
                          <node concept="3cmrfG" id="6LU90BNYSNW" role="3uHU7w">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6LU90BNYSNY" role="3uHU7w">
                        <ref role="3cqZAo" node="6LU90BNYSO5" resolve="dataNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6LU90BNYSNZ" role="3uHU7w">
                    <ref role="3cqZAo" node="6LU90BNYSNK" resolve="lineSize" />
                  </node>
                </node>
                <node concept="FJ1c_" id="6LU90BNYSO0" role="3uHU7w">
                  <node concept="3cmrfG" id="6LU90BNYSO1" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="6LU90BNYSO2" role="3uHU7B">
                    <ref role="3cqZAo" node="6LU90BNYSNK" resolve="lineSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6LU90BNYSO3" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNYSO4" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="6LU90BNYSO5" role="3clF46">
        <property role="TrG5h" value="dataNumber" />
        <node concept="10Oyi0" id="6LU90BNYSO6" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNYSNG" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNYSNg" role="jymVt">
      <property role="TrG5h" value="getPlugPortPosition" />
      <node concept="3clFbS" id="6LU90BNYSNh" role="3clF47">
        <node concept="3cpWs8" id="6LU90BNYSNi" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BNYSNj" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="6LU90BNYSNk" role="1tU5fm" />
            <node concept="1rXfSq" id="6LU90BNYSNl" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6LU90BNYSNm" role="3cqZAp">
          <node concept="2ShNRf" id="6LU90BNYSNn" role="3cqZAk">
            <node concept="1pGfFk" id="6LU90BNYSNo" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
              <node concept="3cpWs3" id="6LU90BNYSNp" role="37wK5m">
                <node concept="3cmrfG" id="6LU90BNYSNq" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSdj7D" role="3uHU7B">
                  <node concept="37vLTw" id="1cTKxMSdj7E" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="1cTKxMSdj7F" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="6LU90BNYSNs" role="37wK5m">
                <node concept="17qRlL" id="6LU90BNYSNt" role="3uHU7B">
                  <node concept="1eOMI4" id="6LU90BNYSNu" role="3uHU7B">
                    <node concept="3cpWs3" id="6LU90BNYSNv" role="1eOMHV">
                      <node concept="3cpWs3" id="6LU90BNZeIG" role="3uHU7B">
                        <node concept="1rXfSq" id="6LU90BNZhpC" role="3uHU7w">
                          <ref role="37wK5l" node="6LU90BNW4Wy" resolve="getOutputDataPortsCount" />
                        </node>
                        <node concept="3cpWs3" id="6LU90BNYSNw" role="3uHU7B">
                          <node concept="1rXfSq" id="6LU90BNYSNy" role="3uHU7B">
                            <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                          </node>
                          <node concept="3cmrfG" id="6LU90BNYSNx" role="3uHU7w">
                            <property role="3cmrfH" value="2" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6LU90BNYSNz" role="3uHU7w">
                        <ref role="3cqZAo" node="6LU90BNYSNE" resolve="dataNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6LU90BNYSN$" role="3uHU7w">
                    <ref role="3cqZAo" node="6LU90BNYSNj" resolve="lineSize" />
                  </node>
                </node>
                <node concept="FJ1c_" id="6LU90BNYSN_" role="3uHU7w">
                  <node concept="3cmrfG" id="6LU90BNYSNA" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="6LU90BNYSNB" role="3uHU7B">
                    <ref role="3cqZAo" node="6LU90BNYSNj" resolve="lineSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6LU90BNYSNC" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNYSND" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="6LU90BNYSNE" role="3clF46">
        <property role="TrG5h" value="dataNumber" />
        <node concept="10Oyi0" id="6LU90BNYSNF" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNYSNf" role="jymVt" />
    <node concept="3clFb_" id="6tmliaB2s2q" role="jymVt">
      <property role="TrG5h" value="getInputEventPortBounds" />
      <node concept="3clFbS" id="6tmliaB2s2r" role="3clF47">
        <node concept="3cpWs8" id="6tmliaB5a7H" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB5a7I" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="6tmliaB5a7J" role="1tU5fm" />
            <node concept="1rXfSq" id="6tmliaB5a7K" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaB5a7L" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB5a7M" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10Oyi0" id="6tmliaB5a7N" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmliaBaPNE" role="33vP2m">
              <node concept="2OqwBi" id="6tmliaB5a7O" role="3uHU7B">
                <node concept="2OqwBi" id="6tmliaB5a7P" role="2Oq$k0">
                  <node concept="2OqwBi" id="6tmliaB5a7Q" role="2Oq$k0">
                    <node concept="37vLTw" id="6tmliaB5gzg" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
                    </node>
                    <node concept="liA8E" id="6tmliaB5a7S" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="37vLTw" id="6tmliaB5dpL" role="37wK5m">
                        <ref role="3cqZAo" node="6tmliaB2s2H" resolve="eventNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="4vmY7CyT7k$" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
                <node concept="liA8E" id="6tmliaB5a7V" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                </node>
              </node>
              <node concept="1rXfSq" id="1pJxKgrsnWV" role="3uHU7w">
                <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                <node concept="37vLTw" id="6tmliaBaT50" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TJL_W" resolve="COLUMNS_PADDING" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaB5a7W" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB5a7X" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="6tmliaB5a7Y" role="1tU5fm" />
            <node concept="17qRlL" id="6tmliaB5a7Z" role="33vP2m">
              <node concept="37vLTw" id="6tmliaB5a86" role="3uHU7w">
                <ref role="3cqZAo" node="6tmliaB5a7I" resolve="lineSize" />
              </node>
              <node concept="37vLTw" id="6tmliaB5prr" role="3uHU7B">
                <ref role="3cqZAo" node="6tmliaB2s2H" resolve="eventNumber" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmliaB5a87" role="3cqZAp">
          <node concept="2ShNRf" id="6tmliaB5a88" role="3cqZAk">
            <node concept="1pGfFk" id="6tmliaB5a89" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
              <node concept="3cmrfG" id="6tmliaB5vQG" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6tmliaB5a8d" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB5a7X" resolve="y" />
              </node>
              <node concept="37vLTw" id="6tmliaB5a8e" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB5a7M" resolve="width" />
              </node>
              <node concept="37vLTw" id="6tmliaB5a8f" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB5a7I" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6tmliaB2s2F" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaB2M$9" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="37vLTG" id="6tmliaB2s2H" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="6tmliaB2s2I" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaB2s2J" role="jymVt" />
    <node concept="3clFb_" id="6tmliaB2s2K" role="jymVt">
      <property role="TrG5h" value="getOutputEventPortBounds" />
      <node concept="3clFbS" id="6tmliaB2s2L" role="3clF47">
        <node concept="3cpWs8" id="6tmliaB5yYF" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB5yYG" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="6tmliaB5yYH" role="1tU5fm" />
            <node concept="1rXfSq" id="6tmliaB5yYI" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaB5yYJ" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB5yYK" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10Oyi0" id="6tmliaB5yYL" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmliaBaAp1" role="33vP2m">
              <node concept="2OqwBi" id="6tmliaB5yYM" role="3uHU7B">
                <node concept="2OqwBi" id="6tmliaB5yYN" role="2Oq$k0">
                  <node concept="2OqwBi" id="6tmliaB5yYO" role="2Oq$k0">
                    <node concept="37vLTw" id="6tmliaB5Dnr" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
                    </node>
                    <node concept="liA8E" id="6tmliaB5yYQ" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="37vLTw" id="6tmliaB5yYR" role="37wK5m">
                        <ref role="3cqZAo" node="6tmliaB2s35" resolve="eventNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="4vmY7CyT4Ek" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
                <node concept="liA8E" id="6tmliaB5yYT" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                </node>
              </node>
              <node concept="1rXfSq" id="1pJxKgrswFU" role="3uHU7w">
                <ref role="37wK5l" node="1pJxKgrqdU7" resolve="scale" />
                <node concept="37vLTw" id="1pJxKgrswFX" role="37wK5m">
                  <ref role="3cqZAo" node="3DiEZ8TJL_W" resolve="COLUMNS_PADDING" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaB5yYU" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB5yYV" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="6tmliaB5yYW" role="1tU5fm" />
            <node concept="17qRlL" id="6tmliaB5yYX" role="33vP2m">
              <node concept="37vLTw" id="6tmliaB5yYY" role="3uHU7w">
                <ref role="3cqZAo" node="6tmliaB5yYG" resolve="lineSize" />
              </node>
              <node concept="37vLTw" id="6tmliaB5yYZ" role="3uHU7B">
                <ref role="3cqZAo" node="6tmliaB2s35" resolve="eventNumber" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmliaB5yZ0" role="3cqZAp">
          <node concept="2ShNRf" id="6tmliaB5yZ1" role="3cqZAk">
            <node concept="1pGfFk" id="6tmliaB5yZ2" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
              <node concept="3cpWsd" id="6tmliaB5AcW" role="37wK5m">
                <node concept="37vLTw" id="6tmliaB5AcX" role="3uHU7w">
                  <ref role="3cqZAo" node="6tmliaB5yYK" resolve="width" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSdok$" role="3uHU7B">
                  <node concept="37vLTw" id="1cTKxMSdok_" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="1cTKxMSdokA" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6tmliaB5yZ4" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB5yYV" resolve="y" />
              </node>
              <node concept="37vLTw" id="6tmliaB5yZ5" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB5yYK" resolve="width" />
              </node>
              <node concept="37vLTw" id="6tmliaB5yZ6" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB5yYG" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6tmliaB2s33" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaB2OMh" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="37vLTG" id="6tmliaB2s35" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="6tmliaB2s36" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaB2s37" role="jymVt" />
    <node concept="3clFb_" id="6tmliaB2s38" role="jymVt">
      <property role="TrG5h" value="getInputDataPortBounds" />
      <node concept="3clFbS" id="6tmliaB2s39" role="3clF47">
        <node concept="3cpWs8" id="6tmliaB87rk" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB87rl" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="6tmliaB87rm" role="1tU5fm" />
            <node concept="1rXfSq" id="6tmliaB87rn" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaB87ro" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB87rp" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10Oyi0" id="6tmliaB87rq" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmliaBalYQ" role="33vP2m">
              <node concept="37vLTw" id="6tmliaBapBv" role="3uHU7w">
                <ref role="3cqZAo" node="3DiEZ8TJL_W" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="2OqwBi" id="6tmliaB87rr" role="3uHU7B">
                <node concept="2OqwBi" id="6tmliaB87rs" role="2Oq$k0">
                  <node concept="2OqwBi" id="6tmliaB87rt" role="2Oq$k0">
                    <node concept="liA8E" id="6tmliaB87rv" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="37vLTw" id="6tmliaB87rw" role="37wK5m">
                        <ref role="3cqZAo" node="6tmliaB2s3w" resolve="dataNumber" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6tmliaB8egN" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="4vmY7CySWup" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
                <node concept="liA8E" id="6tmliaB87ry" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaB87rz" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB87r$" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="6tmliaB87r_" role="1tU5fm" />
            <node concept="17qRlL" id="6tmliaB87rA" role="33vP2m">
              <node concept="1eOMI4" id="6tmliaB87rB" role="3uHU7B">
                <node concept="3cpWs3" id="6tmliaB87rC" role="1eOMHV">
                  <node concept="3cpWs3" id="6tmliaB87rD" role="3uHU7B">
                    <node concept="3cmrfG" id="6tmliaB87rE" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="1rXfSq" id="6tmliaB87rF" role="3uHU7B">
                      <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6tmliaB87rG" role="3uHU7w">
                    <ref role="3cqZAo" node="6tmliaB2s3w" resolve="dataNumber" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6tmliaB87rH" role="3uHU7w">
                <ref role="3cqZAo" node="6tmliaB87rl" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6tmliaB87rI" role="3cqZAp">
          <node concept="2ShNRf" id="6tmliaB87rJ" role="3cqZAk">
            <node concept="1pGfFk" id="6tmliaB87rK" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
              <node concept="3cmrfG" id="6tmliaB8aGN" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6tmliaB87rO" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB87r$" resolve="y" />
              </node>
              <node concept="37vLTw" id="6tmliaB87rP" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB87rp" resolve="width" />
              </node>
              <node concept="37vLTw" id="6tmliaB87rQ" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB87rl" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6tmliaB2s3u" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaB2QUv" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="37vLTG" id="6tmliaB2s3w" role="3clF46">
        <property role="TrG5h" value="dataNumber" />
        <node concept="10Oyi0" id="6tmliaB2s3x" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGs_GL" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGrMvY" role="jymVt">
      <property role="TrG5h" value="getOutputDataPortBounds" />
      <node concept="3clFbS" id="7qPnRGGrMvZ" role="3clF47">
        <node concept="3cpWs8" id="2i$17fOHel9" role="3cqZAp">
          <node concept="3cpWsn" id="2i$17fOHela" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="2i$17fOHel8" role="1tU5fm" />
            <node concept="1rXfSq" id="2i$17fOHelb" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaB3bg2" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB3bg5" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10Oyi0" id="6tmliaB3bg0" role="1tU5fm" />
            <node concept="3cpWs3" id="6tmliaB9QVV" role="33vP2m">
              <node concept="2OqwBi" id="6tmliaB3YTv" role="3uHU7B">
                <node concept="2OqwBi" id="6tmliaB3w77" role="2Oq$k0">
                  <node concept="2OqwBi" id="6tmliaB3gy2" role="2Oq$k0">
                    <node concept="37vLTw" id="6tmliaB3eoD" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
                    </node>
                    <node concept="liA8E" id="6tmliaB3vm0" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="37vLTw" id="6tmliaB3vGM" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGGrMwc" resolve="dataNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="4vmY7CySJeY" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
                <node concept="liA8E" id="6tmliaB4g94" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                </node>
              </node>
              <node concept="37vLTw" id="6tmliaBa6qP" role="3uHU7w">
                <ref role="3cqZAo" node="3DiEZ8TJL_W" resolve="COLUMNS_PADDING" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaB4nbQ" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaB4nbR" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="6tmliaB4nbF" role="1tU5fm" />
            <node concept="17qRlL" id="6tmliaB4nbT" role="33vP2m">
              <node concept="1eOMI4" id="6tmliaB4nbU" role="3uHU7B">
                <node concept="3cpWs3" id="6tmliaB4nbV" role="1eOMHV">
                  <node concept="3cpWs3" id="6tmliaB4nbW" role="3uHU7B">
                    <node concept="3cmrfG" id="6tmliaB4nbX" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="1rXfSq" id="6tmliaB4nbY" role="3uHU7B">
                      <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6tmliaB4nbZ" role="3uHU7w">
                    <ref role="3cqZAo" node="7qPnRGGrMwc" resolve="dataNumber" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6tmliaB4nc0" role="3uHU7w">
                <ref role="3cqZAo" node="2i$17fOHela" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7qPnRGGrMw0" role="3cqZAp">
          <node concept="2ShNRf" id="7qPnRGGrMw1" role="3cqZAk">
            <node concept="1pGfFk" id="7qPnRGGrMw2" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
              <node concept="3cpWsd" id="6tmliaB4P5e" role="37wK5m">
                <node concept="37vLTw" id="6tmliaB4Sdz" role="3uHU7w">
                  <ref role="3cqZAo" node="6tmliaB3bg5" resolve="width" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSdt_3" role="3uHU7B">
                  <node concept="37vLTw" id="1cTKxMSdt_4" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="1cTKxMSdt_5" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6tmliaB4nc4" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB4nbR" resolve="y" />
              </node>
              <node concept="37vLTw" id="6tmliaB4XzK" role="37wK5m">
                <ref role="3cqZAo" node="6tmliaB3bg5" resolve="width" />
              </node>
              <node concept="37vLTw" id="6tmliaB50EL" role="37wK5m">
                <ref role="3cqZAo" node="2i$17fOHela" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qPnRGGrMwa" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaB2vrP" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="37vLTG" id="7qPnRGGrMwc" role="3clF46">
        <property role="TrG5h" value="dataNumber" />
        <node concept="10Oyi0" id="7qPnRGGrMwd" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNXgbL" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNV_W7" role="jymVt">
      <property role="TrG5h" value="getSocketPortBounds" />
      <node concept="3clFbS" id="6LU90BNV_W8" role="3clF47">
        <node concept="3cpWs8" id="6LU90BNV_W9" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BNV_Wa" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="6LU90BNV_Wb" role="1tU5fm" />
            <node concept="1rXfSq" id="6LU90BNV_Wc" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6LU90BNV_Wd" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BNV_We" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10Oyi0" id="6LU90BNV_Wf" role="1tU5fm" />
            <node concept="3cpWs3" id="6LU90BNV_Wg" role="33vP2m">
              <node concept="37vLTw" id="6LU90BNV_Wh" role="3uHU7w">
                <ref role="3cqZAo" node="3DiEZ8TJL_W" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="2OqwBi" id="6LU90BNV_Wi" role="3uHU7B">
                <node concept="2OqwBi" id="6LU90BNV_Wj" role="2Oq$k0">
                  <node concept="2OqwBi" id="6LU90BNV_Wk" role="2Oq$k0">
                    <node concept="37vLTw" id="6LU90BNYiSo" role="2Oq$k0">
                      <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
                    </node>
                    <node concept="liA8E" id="6LU90BNV_Wm" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="37vLTw" id="6LU90BNV_Wn" role="37wK5m">
                        <ref role="3cqZAo" node="6LU90BNV_WI" resolve="socketNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="4vmY7CySy6d" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
                <node concept="liA8E" id="6LU90BNV_Wp" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6LU90BNV_Wq" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BNV_Wr" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="6LU90BNV_Ws" role="1tU5fm" />
            <node concept="17qRlL" id="6LU90BNV_Wt" role="33vP2m">
              <node concept="1eOMI4" id="6LU90BNV_Wu" role="3uHU7B">
                <node concept="3cpWs3" id="6LU90BNV_Wv" role="1eOMHV">
                  <node concept="3cpWs3" id="6LU90BNYL06" role="3uHU7B">
                    <node concept="3cmrfG" id="6LU90BNV_Wx" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="3cpWs3" id="6LU90BNV_Ww" role="3uHU7B">
                      <node concept="1rXfSq" id="6LU90BNV_Wy" role="3uHU7B">
                        <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                      </node>
                      <node concept="1rXfSq" id="6LU90BNYL1k" role="3uHU7w">
                        <ref role="37wK5l" node="6LU90BNW4WJ" resolve="getInputDataPortsCount" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6LU90BNV_Wz" role="3uHU7w">
                    <ref role="3cqZAo" node="6LU90BNV_WI" resolve="socketNumber" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6LU90BNV_W$" role="3uHU7w">
                <ref role="3cqZAo" node="6LU90BNV_Wa" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6LU90BNV_W_" role="3cqZAp">
          <node concept="2ShNRf" id="6LU90BNV_WA" role="3cqZAk">
            <node concept="1pGfFk" id="6LU90BNV_WB" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
              <node concept="3cmrfG" id="6LU90BNV_WC" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="6LU90BNV_WD" role="37wK5m">
                <ref role="3cqZAo" node="6LU90BNV_Wr" resolve="y" />
              </node>
              <node concept="37vLTw" id="6LU90BNV_WE" role="37wK5m">
                <ref role="3cqZAo" node="6LU90BNV_We" resolve="width" />
              </node>
              <node concept="37vLTw" id="6LU90BNV_WF" role="37wK5m">
                <ref role="3cqZAo" node="6LU90BNV_Wa" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6LU90BNV_WG" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNV_WH" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="37vLTG" id="6LU90BNV_WI" role="3clF46">
        <property role="TrG5h" value="socketNumber" />
        <node concept="10Oyi0" id="6LU90BNV_WJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNV_W6" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNV_WL" role="jymVt">
      <property role="TrG5h" value="getPlugPortBounds" />
      <node concept="3clFbS" id="6LU90BNV_WM" role="3clF47">
        <node concept="3cpWs8" id="6LU90BNV_WN" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BNV_WO" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="6LU90BNV_WP" role="1tU5fm" />
            <node concept="1rXfSq" id="6LU90BNV_WQ" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6LU90BNV_WR" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BNV_WS" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10Oyi0" id="6LU90BNV_WT" role="1tU5fm" />
            <node concept="3cpWs3" id="6LU90BNV_WU" role="33vP2m">
              <node concept="37vLTw" id="6LU90BNV_WV" role="3uHU7w">
                <ref role="3cqZAo" node="3DiEZ8TJL_W" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="2OqwBi" id="6LU90BNV_WW" role="3uHU7B">
                <node concept="2OqwBi" id="6LU90BNV_WX" role="2Oq$k0">
                  <node concept="2OqwBi" id="6LU90BNV_WY" role="2Oq$k0">
                    <node concept="37vLTw" id="6LU90BNYeTk" role="2Oq$k0">
                      <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
                    </node>
                    <node concept="liA8E" id="6LU90BNV_X0" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="37vLTw" id="6LU90BNV_X1" role="37wK5m">
                        <ref role="3cqZAo" node="6LU90BNV_Xl" resolve="plugNubmer" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="4vmY7CySlzn" role="2OqNvi">
                    <ref role="2Oxat5" node="4vmY7CyQE5x" resolve="myLabel" />
                  </node>
                </node>
                <node concept="liA8E" id="6LU90BNV_X3" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6LU90BNYmw6" role="3cqZAp">
          <node concept="3cpWsn" id="6LU90BNYmw7" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="6LU90BNYmw8" role="1tU5fm" />
            <node concept="17qRlL" id="6LU90BNYmw9" role="33vP2m">
              <node concept="1eOMI4" id="6LU90BNYmwa" role="3uHU7B">
                <node concept="3cpWs3" id="6LU90BNYmwb" role="1eOMHV">
                  <node concept="3cpWs3" id="6LU90BNYxUN" role="3uHU7B">
                    <node concept="1rXfSq" id="6LU90BNY_F0" role="3uHU7w">
                      <ref role="37wK5l" node="6LU90BNW4Wy" resolve="getOutputDataPortsCount" />
                    </node>
                    <node concept="3cpWs3" id="6LU90BNYmwc" role="3uHU7B">
                      <node concept="3cmrfG" id="6LU90BNYmwd" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="1rXfSq" id="6LU90BNYmwe" role="3uHU7B">
                        <ref role="37wK5l" node="1HEL0zW8_QD" resolve="getEventPortsCount" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6LU90BNYtSF" role="3uHU7w">
                    <ref role="3cqZAo" node="6LU90BNV_Xl" resolve="plugNubmer" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6LU90BNYmwg" role="3uHU7w">
                <ref role="3cqZAo" node="6LU90BNV_WO" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6LU90BNV_Xa" role="3cqZAp">
          <node concept="2ShNRf" id="6LU90BNV_Xb" role="3cqZAk">
            <node concept="1pGfFk" id="6LU90BNV_Xc" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
              <node concept="3cpWsd" id="6LU90BNV_Xd" role="37wK5m">
                <node concept="37vLTw" id="6LU90BNV_Xe" role="3uHU7w">
                  <ref role="3cqZAo" node="6LU90BNV_WS" resolve="width" />
                </node>
                <node concept="2OqwBi" id="1cTKxMSdzFh" role="3uHU7B">
                  <node concept="37vLTw" id="1cTKxMSdzFi" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                  </node>
                  <node concept="liA8E" id="1cTKxMSdzFj" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6LU90BNYqbC" role="37wK5m">
                <ref role="3cqZAo" node="6LU90BNYmw7" resolve="y" />
              </node>
              <node concept="37vLTw" id="6LU90BNV_Xh" role="37wK5m">
                <ref role="3cqZAo" node="6LU90BNV_WS" resolve="width" />
              </node>
              <node concept="37vLTw" id="6LU90BNV_Xi" role="37wK5m">
                <ref role="3cqZAo" node="6LU90BNV_WO" resolve="lineSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6LU90BNV_Xj" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNV_Xk" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="37vLTG" id="6LU90BNV_Xl" role="3clF46">
        <property role="TrG5h" value="plugNubmer" />
        <node concept="10Oyi0" id="6LU90BNV_Xm" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1JYTWWzAPxa" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGu9sq" role="jymVt">
      <property role="TrG5h" value="getLineSize" />
      <node concept="3Tm6S6" id="7qPnRGGu9sr" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGu9ss" role="3clF45" />
      <node concept="3clFbS" id="7qPnRGGu9qB" role="3clF47">
        <node concept="3cpWs6" id="7qPnRGGu9rv" role="3cqZAp">
          <node concept="2YIFZM" id="7qPnRGGu9rw" role="3cqZAk">
            <ref role="1Pybhc" to="rvgs:1Oxt8dqZWeT" resolve="LayoutUtil" />
            <ref role="37wK5l" to="rvgs:7qPnRGFzb_r" resolve="getLineSize" />
            <node concept="2OqwBi" id="3DiEZ8Tt$z7" role="37wK5m">
              <node concept="37vLTw" id="3DiEZ8Tt$z8" role="2Oq$k0">
                <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
              </node>
              <node concept="liA8E" id="3DiEZ8Tt$z9" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1pJxKgrq2qE" role="jymVt" />
    <node concept="3clFb_" id="1pJxKgrqdU7" role="jymVt">
      <property role="TrG5h" value="scale" />
      <node concept="3clFbS" id="1pJxKgrqdUa" role="3clF47">
        <node concept="3clFbF" id="1pJxKgrqoJE" role="3cqZAp">
          <node concept="FJ1c_" id="1pJxKgrqr1i" role="3clFbG">
            <node concept="17qRlL" id="1pJxKgrqpAl" role="3uHU7B">
              <node concept="37vLTw" id="1pJxKgrqoJD" role="3uHU7B">
                <ref role="3cqZAo" node="1pJxKgrqjrr" resolve="size" />
              </node>
              <node concept="1rXfSq" id="1pJxKgrqx6u" role="3uHU7w">
                <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
              </node>
            </node>
            <node concept="2OqwBi" id="1pJxKgr_9Ea" role="3uHU7w">
              <node concept="2YIFZM" id="1pJxKgr_9gR" role="2Oq$k0">
                <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
              </node>
              <node concept="liA8E" id="1pJxKgr_a2j" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorSettings.getFontSize()" resolve="getFontSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1pJxKgrq8p3" role="1B3o_S" />
      <node concept="10Oyi0" id="1pJxKgrqs0a" role="3clF45" />
      <node concept="37vLTG" id="1pJxKgrqjrr" role="3clF46">
        <property role="TrG5h" value="size" />
        <node concept="10Oyi0" id="1pJxKgrqjrq" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1JYTWWzIMnv" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzIti3" role="jymVt">
      <property role="TrG5h" value="createRootCell" />
      <node concept="3Tm6S6" id="1JYTWWzIti4" role="1B3o_S" />
      <node concept="3uibUv" id="1JYTWWzIysX" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
      </node>
      <node concept="37vLTG" id="1JYTWWzIt8s" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1cTKxMS9pV7" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="1JYTWWzIt8u" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1JYTWWzIt8v" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="1JYTWWzIsY3" role="3clF47">
        <node concept="3cpWs6" id="1JYTWWzIt7$" role="3cqZAp">
          <node concept="2ShNRf" id="3DiEZ8Tsw69" role="3cqZAk">
            <node concept="YeOm9" id="3DiEZ8Tsw6a" role="2ShVmc">
              <node concept="1Y3b0j" id="3DiEZ8Tsw6b" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="g51k:~EditorCell_Collection.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.nodeEditor.cellLayout.CellLayout)" resolve="EditorCell_Collection" />
                <ref role="1Y3XeK" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                <node concept="2tJIrI" id="3DiEZ8Tsw6c" role="jymVt" />
                <node concept="3clFb_" id="3DiEZ8Tsw6d" role="jymVt">
                  <property role="TrG5h" value="paintContent" />
                  <node concept="3Tmbuc" id="3DiEZ8Tsw6e" role="1B3o_S" />
                  <node concept="3cqZAl" id="3DiEZ8Tsw6f" role="3clF45" />
                  <node concept="37vLTG" id="3DiEZ8Tsw6g" role="3clF46">
                    <property role="TrG5h" value="g" />
                    <node concept="3uibUv" id="3DiEZ8Tsw6h" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="3DiEZ8Tsw6i" role="3clF46">
                    <property role="TrG5h" value="parentSettings" />
                    <node concept="3uibUv" id="3DiEZ8Tsw6j" role="1tU5fm">
                      <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="3DiEZ8Tsw6k" role="3clF47">
                    <node concept="3clFbF" id="3DiEZ8Tsw6l" role="3cqZAp">
                      <node concept="2OqwBi" id="3DiEZ8Tsw6m" role="3clFbG">
                        <node concept="Xjq3P" id="3DiEZ8Tsw6n" role="2Oq$k0">
                          <ref role="1HBi2w" node="7qPnRGG6q3r" resolve="FBTypeCellComponent" />
                        </node>
                        <node concept="liA8E" id="3DiEZ8Tsw6o" role="2OqNvi">
                          <ref role="37wK5l" node="7qPnRGG7$7p" resolve="paint" />
                          <node concept="10QFUN" id="3DiEZ8Tsw6p" role="37wK5m">
                            <node concept="3uibUv" id="3DiEZ8Tsw6q" role="10QFUM">
                              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                            </node>
                            <node concept="2OqwBi" id="3DiEZ8Tsw6r" role="10QFUP">
                              <node concept="37vLTw" id="3DiEZ8Tsw6s" role="2Oq$k0">
                                <ref role="3cqZAo" node="3DiEZ8Tsw6g" resolve="g" />
                              </node>
                              <node concept="liA8E" id="3DiEZ8Tsw6t" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="3DiEZ8Tsw6u" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="5aSdx8Pc$0b" role="jymVt" />
                <node concept="3clFb_" id="4xpFLWeinCr" role="jymVt">
                  <property role="TrG5h" value="paintSelection" />
                  <node concept="3Tm1VV" id="4xpFLWeinCs" role="1B3o_S" />
                  <node concept="3cqZAl" id="4xpFLWeinCu" role="3clF45" />
                  <node concept="37vLTG" id="4xpFLWeinCv" role="3clF46">
                    <property role="TrG5h" value="g" />
                    <node concept="3uibUv" id="4xpFLWeinCw" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="4xpFLWeinCx" role="3clF46">
                    <property role="TrG5h" value="c" />
                    <node concept="3uibUv" id="4xpFLWeinCy" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="4xpFLWeinCz" role="3clF46">
                    <property role="TrG5h" value="drawBorder" />
                    <node concept="10P_77" id="4xpFLWeinC$" role="1tU5fm" />
                  </node>
                  <node concept="37vLTG" id="4xpFLWeinC_" role="3clF46">
                    <property role="TrG5h" value="parentSettings" />
                    <node concept="3uibUv" id="4xpFLWeinCA" role="1tU5fm">
                      <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4xpFLWeinCC" role="3clF47">
                    <node concept="3SKdUt" id="4xpFLWeiB5r" role="3cqZAp">
                      <node concept="1PaTwC" id="3D$ZgG8vrBq" role="3ndbpf">
                        <node concept="3oM_SD" id="3D$ZgG8vrBr" role="1PaTwD">
                          <property role="3oM_SC" value="do" />
                        </node>
                        <node concept="3oM_SD" id="3D$ZgG8vrBs" role="1PaTwD">
                          <property role="3oM_SC" value="noting" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="4xpFLWeinCD" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="5aSdx8Pc$0w" role="jymVt" />
                <node concept="3clFb_" id="5aSdx8PcLZL" role="jymVt">
                  <property role="TrG5h" value="findLeaf" />
                  <node concept="3Tm1VV" id="5aSdx8PcLZM" role="1B3o_S" />
                  <node concept="3uibUv" id="5aSdx8PcLZO" role="3clF45">
                    <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                  </node>
                  <node concept="37vLTG" id="5aSdx8PcLZP" role="3clF46">
                    <property role="TrG5h" value="x" />
                    <node concept="10Oyi0" id="5aSdx8PcLZQ" role="1tU5fm" />
                  </node>
                  <node concept="37vLTG" id="5aSdx8PcLZR" role="3clF46">
                    <property role="TrG5h" value="y" />
                    <node concept="10Oyi0" id="5aSdx8PcLZS" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="5aSdx8PcLZU" role="3clF47">
                    <node concept="3cpWs8" id="5aSdx8PcRSY" role="3cqZAp">
                      <node concept="3cpWsn" id="5aSdx8PcRSZ" role="3cpWs9">
                        <property role="TrG5h" value="leaf" />
                        <node concept="3uibUv" id="5aSdx8PcRST" role="1tU5fm">
                          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                        </node>
                        <node concept="3nyPlj" id="5aSdx8PcRT0" role="33vP2m">
                          <ref role="37wK5l" to="g51k:~EditorCell_Collection.findLeaf(int,int)" resolve="findLeaf" />
                          <node concept="37vLTw" id="5aSdx8PcRT1" role="37wK5m">
                            <ref role="3cqZAo" node="5aSdx8PcLZP" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="5aSdx8PcRT2" role="37wK5m">
                            <ref role="3cqZAo" node="5aSdx8PcLZR" resolve="y" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5aSdx8PcSNi" role="3cqZAp">
                      <node concept="3clFbS" id="5aSdx8PcSNk" role="3clFbx">
                        <node concept="3cpWs6" id="5aSdx8PcTED" role="3cqZAp">
                          <node concept="37vLTw" id="5aSdx8PcTEF" role="3cqZAk">
                            <ref role="3cqZAo" node="5aSdx8PcRSZ" resolve="leaf" />
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="5aSdx8PcTlO" role="3clFbw">
                        <node concept="10Nm6u" id="5aSdx8PcTvR" role="3uHU7w" />
                        <node concept="37vLTw" id="5aSdx8PcSYv" role="3uHU7B">
                          <ref role="3cqZAo" node="5aSdx8PcRSZ" resolve="leaf" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5aSdx8PcZNn" role="3cqZAp">
                      <node concept="3clFbS" id="5aSdx8PcZNp" role="3clFbx">
                        <node concept="3cpWs6" id="5aSdx8PdQlp" role="3cqZAp">
                          <node concept="Xjq3P" id="5aSdx8PdQvr" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5aSdx8PdLnT" role="3clFbw">
                        <node concept="2ShNRf" id="5aSdx8Pdagb" role="2Oq$k0">
                          <node concept="1pGfFk" id="5aSdx8PdGA5" role="2ShVmc">
                            <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                            <node concept="37vLTw" id="5aSdx8PdGUX" role="37wK5m">
                              <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myX" resolve="myX" />
                            </node>
                            <node concept="37vLTw" id="5aSdx8PdIjb" role="37wK5m">
                              <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myY" resolve="myY" />
                            </node>
                            <node concept="37vLTw" id="5aSdx8PdJrm" role="37wK5m">
                              <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myWidth" resolve="myWidth" />
                            </node>
                            <node concept="37vLTw" id="5aSdx8PdKAm" role="37wK5m">
                              <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myHeight" resolve="myHeight" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5aSdx8PdM8q" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int)" resolve="contains" />
                          <node concept="37vLTw" id="5aSdx8PdMDo" role="37wK5m">
                            <ref role="3cqZAo" node="5aSdx8PcLZP" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="5aSdx8PdPDJ" role="37wK5m">
                            <ref role="3cqZAo" node="5aSdx8PcLZR" resolve="y" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="5aSdx8PdUqy" role="3cqZAp">
                      <node concept="10Nm6u" id="5aSdx8PdU$Z" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="5aSdx8PcLZV" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="6YAH_gOwWay" role="jymVt" />
                <node concept="3Tm1VV" id="3DiEZ8Tsw6v" role="1B3o_S" />
                <node concept="37vLTw" id="3DiEZ8Tsw6w" role="37wK5m">
                  <ref role="3cqZAo" node="1JYTWWzIt8s" resolve="context" />
                </node>
                <node concept="37vLTw" id="3DiEZ8Tsw6x" role="37wK5m">
                  <ref role="3cqZAo" node="1JYTWWzIt8u" resolve="node" />
                </node>
                <node concept="2ShNRf" id="3DiEZ8Tsw6y" role="37wK5m">
                  <node concept="YeOm9" id="3DiEZ8Tsw6z" role="2ShVmc">
                    <node concept="1Y3b0j" id="3DiEZ8Tsw6$" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="kcid:~AbstractCellLayout.&lt;init&gt;()" resolve="AbstractCellLayout" />
                      <ref role="1Y3XeK" to="kcid:~AbstractCellLayout" resolve="AbstractCellLayout" />
                      <node concept="3Tm1VV" id="3DiEZ8Tsw6_" role="1B3o_S" />
                      <node concept="2tJIrI" id="3DiEZ8Tsw6A" role="jymVt" />
                      <node concept="3clFb_" id="3DiEZ8Tsw6B" role="jymVt">
                        <property role="TrG5h" value="doLayout" />
                        <node concept="3Tm1VV" id="3DiEZ8Tsw6C" role="1B3o_S" />
                        <node concept="3cqZAl" id="3DiEZ8Tsw6D" role="3clF45" />
                        <node concept="37vLTG" id="3DiEZ8Tsw6E" role="3clF46">
                          <property role="TrG5h" value="collection" />
                          <node concept="3uibUv" id="3DiEZ8Tsw6F" role="1tU5fm">
                            <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="3DiEZ8Tsw6G" role="3clF47">
                          <node concept="1gVbGN" id="3DiEZ8Tsw6H" role="3cqZAp">
                            <node concept="3clFbC" id="3DiEZ8Tsw6I" role="1gVkn0">
                              <node concept="37vLTw" id="3DiEZ8Tsw6J" role="3uHU7w">
                                <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                              </node>
                              <node concept="37vLTw" id="3DiEZ8Tsw6K" role="3uHU7B">
                                <ref role="3cqZAo" node="3DiEZ8Tsw6E" resolve="collection" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3DiEZ8Tsw6L" role="3cqZAp">
                            <node concept="1rXfSq" id="3DiEZ8Tsw6M" role="3clFbG">
                              <ref role="37wK5l" node="1JYTWWzCpld" resolve="relayout" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3DiEZ8Tsw6N" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="3DiEZ8Tsw6O" role="jymVt" />
                      <node concept="3clFb_" id="3DiEZ8Tsw6P" role="jymVt">
                        <property role="TrG5h" value="doLayoutText" />
                        <node concept="3Tm1VV" id="3DiEZ8Tsw6Q" role="1B3o_S" />
                        <node concept="3uibUv" id="3DiEZ8Tsw6R" role="3clF45">
                          <ref role="3uigEE" to="cj4x:~TextBuilder" resolve="TextBuilder" />
                        </node>
                        <node concept="37vLTG" id="3DiEZ8Tsw6S" role="3clF46">
                          <property role="TrG5h" value="iterable" />
                          <node concept="3uibUv" id="3DiEZ8Tsw6T" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                            <node concept="3uibUv" id="3DiEZ8Tsw6U" role="11_B2D">
                              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="3DiEZ8Tsw6V" role="3clF47">
                          <node concept="3clFbF" id="3DiEZ8Tsw6W" role="3cqZAp">
                            <node concept="2ShNRf" id="3DiEZ8Tsw6X" role="3clFbG">
                              <node concept="1pGfFk" id="3DiEZ8Tsw6Y" role="2ShVmc">
                                <ref role="37wK5l" to="hhnx:~TextBuilderImpl.&lt;init&gt;()" resolve="TextBuilderImpl" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3DiEZ8Tsw6Z" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFb_" id="6YAH_gOx2x1" role="jymVt">
                  <property role="TrG5h" value="onAdd" />
                  <node concept="3Tm1VV" id="6YAH_gOx2x2" role="1B3o_S" />
                  <node concept="3cqZAl" id="6YAH_gOx2x4" role="3clF45" />
                  <node concept="3clFbS" id="6YAH_gOx2x6" role="3clF47">
                    <node concept="3clFbF" id="6YAH_gOx2x9" role="3cqZAp">
                      <node concept="3nyPlj" id="6YAH_gOx2x8" role="3clFbG">
                        <ref role="37wK5l" to="g51k:~EditorCell_Collection.onAdd()" resolve="onAdd" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="6YAH_gOxaUW" role="3cqZAp">
                      <node concept="1rXfSq" id="6YAH_gOxaUR" role="3clFbG">
                        <ref role="37wK5l" node="6YAH_gObNab" resolve="installNavigateable" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6YAH_gOx2x7" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JYTWWzxKU9" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzKYFB" role="jymVt">
      <property role="TrG5h" value="getRootCell" />
      <node concept="3clFbS" id="1JYTWWzKYFE" role="3clF47">
        <node concept="3clFbF" id="1JYTWWzL4ar" role="3cqZAp">
          <node concept="37vLTw" id="1JYTWWzL4aq" role="3clFbG">
            <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1JYTWWzKTPS" role="1B3o_S" />
      <node concept="3uibUv" id="1JYTWWzKXCx" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YAH_gOb_GB" role="jymVt" />
    <node concept="3clFb_" id="6YAH_gObNab" role="jymVt">
      <property role="TrG5h" value="installNavigateable" />
      <node concept="3clFbS" id="6YAH_gObNae" role="3clF47">
        <node concept="3cpWs8" id="6YAH_gOcq0E" role="3cqZAp">
          <node concept="3cpWsn" id="6YAH_gOcq0F" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="6YAH_gOcnFh" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="6YAH_gOcq0G" role="33vP2m">
              <node concept="37vLTw" id="6YAH_gOxbd0" role="2Oq$k0">
                <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameLabel" />
              </node>
              <node concept="liA8E" id="6YAH_gOcq0I" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6YAH_gOcj4e" role="3cqZAp">
          <node concept="3cpWsn" id="6YAH_gOcj4f" role="3cpWs9">
            <property role="TrG5h" value="treeNode" />
            <node concept="3uibUv" id="6YAH_gOcj2X" role="1tU5fm">
              <ref role="3uigEE" to="rk1n:1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
            </node>
            <node concept="2OqwBi" id="6YAH_gOcj4g" role="33vP2m">
              <node concept="37vLTw" id="6YAH_gOcq0J" role="2Oq$k0">
                <ref role="3cqZAo" node="6YAH_gOcq0F" resolve="style" />
              </node>
              <node concept="liA8E" id="6YAH_gOcj4k" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="2CiAywAa1hB" role="37wK5m">
                  <ref role="3cqZAo" to="xxkc:6YAH_gOc44k" resolve="NETWORK_TREE_NODE" />
                  <ref role="1PxDUh" to="xxkc:3DiEZ8TM99k" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6YAH_gObZiC" role="3cqZAp">
          <node concept="3clFbS" id="6YAH_gObZiE" role="3clFbx">
            <node concept="3cpWs8" id="6YAH_gOcsex" role="3cqZAp">
              <node concept="3cpWsn" id="6YAH_gOcsey" role="3cpWs9">
                <property role="TrG5h" value="instance" />
                <node concept="3uibUv" id="6YAH_gOvUzt" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
                </node>
                <node concept="2OqwBi" id="6YAH_gOcse$" role="33vP2m">
                  <node concept="37vLTw" id="6YAH_gOcse_" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YAH_gOcq0F" resolve="style" />
                  </node>
                  <node concept="liA8E" id="6YAH_gOcseA" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                    <node concept="10M0yZ" id="2CiAywAa1i6" role="37wK5m">
                      <ref role="3cqZAo" to="xxkc:3DiEZ8TO1Tb" resolve="FB" />
                      <ref role="1PxDUh" to="xxkc:3DiEZ8TM99k" resolve="RichEditorStyleAttributes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6YAH_gOcrFI" role="3cqZAp">
              <node concept="3cpWsn" id="6YAH_gOcrFJ" role="3cpWs9">
                <property role="TrG5h" value="child" />
                <node concept="3uibUv" id="6YAH_gOcrFK" role="1tU5fm">
                  <ref role="3uigEE" to="rk1n:1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
                </node>
                <node concept="2OqwBi" id="6YAH_gOcrFL" role="33vP2m">
                  <node concept="37vLTw" id="6YAH_gOcrFM" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YAH_gOcj4f" resolve="treeNode" />
                  </node>
                  <node concept="liA8E" id="6YAH_gOcrFN" role="2OqNvi">
                    <ref role="37wK5l" to="rk1n:1QSEqLhV6lF" resolve="getChild" />
                    <node concept="37vLTw" id="6YAH_gOw08i" role="37wK5m">
                      <ref role="3cqZAo" node="6YAH_gOcsey" resolve="instance" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2CiAywAbru6" role="3cqZAp" />
            <node concept="3clFbJ" id="4gibKcMv_Wn" role="3cqZAp">
              <node concept="3clFbS" id="4gibKcMv_Wp" role="3clFbx">
                <node concept="3cpWs8" id="2CiAywAby9L" role="3cqZAp">
                  <node concept="3cpWsn" id="2CiAywAby9M" role="3cpWs9">
                    <property role="TrG5h" value="navigationStub" />
                    <node concept="3Tqbb2" id="2CiAywAby8E" role="1tU5fm">
                      <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
                    </node>
                    <node concept="2YIFZM" id="2CiAywAby9N" role="33vP2m">
                      <ref role="37wK5l" to="xxkc:2CiAywAbteV" resolve="getNavigationStub" />
                      <ref role="1Pybhc" to="xxkc:2CiAywA9Mz5" resolve="FBNetworkTreeNodeNavigationSupport" />
                      <node concept="2OqwBi" id="2CiAywAby9O" role="37wK5m">
                        <node concept="2OqwBi" id="2CiAywAby9P" role="2Oq$k0">
                          <node concept="2OqwBi" id="2CiAywAby9Q" role="2Oq$k0">
                            <node concept="37vLTw" id="2CiAywAby9R" role="2Oq$k0">
                              <ref role="3cqZAo" node="1JYTWWzCC45" resolve="myCellCollection" />
                            </node>
                            <node concept="liA8E" id="2CiAywAby9S" role="2OqNvi">
                              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext()" resolve="getContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2CiAywAby9T" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2CiAywAby9U" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2CiAywAby9V" role="37wK5m">
                        <ref role="3cqZAo" node="6YAH_gOcrFJ" resolve="child" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2CiAywAbCeS" role="3cqZAp">
                  <node concept="3clFbS" id="2CiAywAbCeU" role="3clFbx">
                    <node concept="3clFbF" id="2CiAywAbEqI" role="3cqZAp">
                      <node concept="2OqwBi" id="2CiAywAbEw_" role="3clFbG">
                        <node concept="37vLTw" id="2CiAywAbEqG" role="2Oq$k0">
                          <ref role="3cqZAo" node="6YAH_gOcq0F" resolve="style" />
                        </node>
                        <node concept="liA8E" id="2CiAywAbEBW" role="2OqNvi">
                          <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
                          <node concept="10M0yZ" id="2CiAywAbEMj" role="37wK5m">
                            <ref role="3cqZAo" to="5ueo:~StyleAttributes.NAVIGATABLE_NODE" resolve="NAVIGATABLE_NODE" />
                            <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                          </node>
                          <node concept="37vLTw" id="2CiAywAbES2" role="37wK5m">
                            <ref role="3cqZAo" node="2CiAywAby9M" resolve="navigationStub" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="2CiAywAbEXb" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="2CiAywAbEh1" role="3clFbw">
                    <node concept="10Nm6u" id="2CiAywAbEoH" role="3uHU7w" />
                    <node concept="37vLTw" id="2CiAywAbE7r" role="3uHU7B">
                      <ref role="3cqZAo" node="2CiAywAby9M" resolve="navigationStub" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4gibKcMvAcW" role="3clFbw">
                <node concept="10Nm6u" id="4gibKcMvAeB" role="3uHU7w" />
                <node concept="37vLTw" id="4gibKcMvA5y" role="3uHU7B">
                  <ref role="3cqZAo" node="6YAH_gOcrFJ" resolve="child" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2aITomwcDPl" role="3clFbw">
            <node concept="10Nm6u" id="2aITomwcDR0" role="3uHU7w" />
            <node concept="37vLTw" id="2aITomwcDo_" role="3uHU7B">
              <ref role="3cqZAo" node="6YAH_gOcj4f" resolve="treeNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1vJkp1TVBzO" role="3cqZAp" />
        <node concept="3cpWs8" id="1QSEqLi6gMQ" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLi6gMR" role="3cpWs9">
            <property role="TrG5h" value="typeDeclaration" />
            <node concept="3uibUv" id="1QSEqLi6gMS" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:31Fn7oZJ7qm" resolve="NamedDeclaration" />
            </node>
            <node concept="2OqwBi" id="1QSEqLi6gMT" role="33vP2m">
              <node concept="2OqwBi" id="6YAH_gOBBBZ" role="2Oq$k0">
                <node concept="37vLTw" id="6YAH_gOBBC0" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YAH_gOcq0F" resolve="style" />
                </node>
                <node concept="liA8E" id="6YAH_gOBBC1" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                  <node concept="10M0yZ" id="2CiAywAa1hR" role="37wK5m">
                    <ref role="3cqZAo" to="xxkc:3DiEZ8TM9F8" resolve="TYPE" />
                    <ref role="1PxDUh" to="xxkc:3DiEZ8TM99k" resolve="RichEditorStyleAttributes" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6YAH_gOwAMF" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:31Fn7oZHRj4" resolve="getDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QSEqLi5GUw" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLi5GUx" role="3clFbx">
            <node concept="3clFbF" id="1QSEqLi5GUy" role="3cqZAp">
              <node concept="2OqwBi" id="1QSEqLi5GUz" role="3clFbG">
                <node concept="37vLTw" id="1QSEqLi5GU$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YAH_gOcq0F" resolve="style" />
                </node>
                <node concept="liA8E" id="1QSEqLi5GU_" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
                  <node concept="10M0yZ" id="1QSEqLi5GUA" role="37wK5m">
                    <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                    <ref role="3cqZAo" to="5ueo:~StyleAttributes.NAVIGATABLE_NODE" resolve="NAVIGATABLE_NODE" />
                  </node>
                  <node concept="2OqwBi" id="1QSEqLi5GUB" role="37wK5m">
                    <node concept="1eOMI4" id="1QSEqLi5GUC" role="2Oq$k0">
                      <node concept="10QFUN" id="1QSEqLi5GUD" role="1eOMHV">
                        <node concept="3uibUv" id="1QSEqLi5GUE" role="10QFUM">
                          <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
                        </node>
                        <node concept="37vLTw" id="1QSEqLi6seD" role="10QFUP">
                          <ref role="3cqZAo" node="1QSEqLi6gMR" resolve="typeDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1QSEqLi5GUG" role="2OqNvi">
                      <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1QSEqLi5GUH" role="3clFbw">
            <node concept="3uibUv" id="1QSEqLi5GUI" role="2ZW6by">
              <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
            </node>
            <node concept="37vLTw" id="1QSEqLi6shh" role="2ZW6bz">
              <ref role="3cqZAo" node="1QSEqLi6gMR" resolve="typeDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6YAH_gObGEq" role="1B3o_S" />
      <node concept="3cqZAl" id="6YAH_gOck1P" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1JYTWWzKO07" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLi5GUY" role="jymVt">
      <property role="TrG5h" value="createTypeNameLabel" />
      <node concept="3Tm6S6" id="1QSEqLi5GUZ" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLi5GV0" role="3clF45">
        <ref role="3uigEE" to="ee2c:3DiEZ8TCKgO" resolve="EditorCell_SceneLabel" />
      </node>
      <node concept="37vLTG" id="1QSEqLi5GUM" role="3clF46">
        <property role="TrG5h" value="fbType" />
        <node concept="3uibUv" id="1QSEqLi5GUN" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLi5GUO" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1QSEqLi5GUP" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLi5GUQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1QSEqLi5GUR" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="1QSEqLi5GU4" role="3clF47">
        <node concept="3cpWs8" id="1QSEqLi5GU7" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLi5GU8" role="3cpWs9">
            <property role="TrG5h" value="typeDeclaration" />
            <node concept="3uibUv" id="1QSEqLi5GU9" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:31Fn7oZJ7qm" resolve="NamedDeclaration" />
            </node>
            <node concept="2OqwBi" id="1QSEqLi5GUa" role="33vP2m">
              <node concept="37vLTw" id="1QSEqLi5GUV" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLi5GUM" resolve="fbType" />
              </node>
              <node concept="liA8E" id="1QSEqLi5GUc" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:31Fn7oZHRj4" resolve="getDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1QSEqLi5GUK" role="3cqZAp">
          <node concept="2ShNRf" id="6YAH_gOxhSz" role="3cqZAk">
            <node concept="1pGfFk" id="6YAH_gOxhS$" role="2ShVmc">
              <ref role="37wK5l" to="ee2c:3DiEZ8TCNUJ" resolve="EditorCell_SceneLabel" />
              <node concept="37vLTw" id="6YAH_gOxhS_" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLi5GUO" resolve="context" />
              </node>
              <node concept="37vLTw" id="6YAH_gOxhSA" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLi5GUQ" resolve="node" />
              </node>
              <node concept="2OqwBi" id="6YAH_gOxhSB" role="37wK5m">
                <node concept="37vLTw" id="6YAH_gOxhSC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QSEqLi5GUM" resolve="fbType" />
                </node>
                <node concept="liA8E" id="6YAH_gOxhSD" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYRNg" resolve="getTypeName" />
                </node>
              </node>
              <node concept="3clFbC" id="6YAH_gOxhSE" role="37wK5m">
                <node concept="10Nm6u" id="6YAH_gOxhSF" role="3uHU7w" />
                <node concept="37vLTw" id="6YAH_gOxhSG" role="3uHU7B">
                  <ref role="3cqZAo" node="1QSEqLi5GU8" resolve="typeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG6q4u" role="jymVt" />
    <node concept="312cEu" id="5fP$XwiXaRQ" role="jymVt">
      <property role="TrG5h" value="FBPortData" />
      <node concept="312cEg" id="4vmY7CyQE5x" role="jymVt">
        <property role="TrG5h" value="myLabel" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4vmY7CyQqNR" role="1B3o_S" />
        <node concept="3uibUv" id="3DiEZ8TEroh" role="1tU5fm">
          <ref role="3uigEE" to="ee2c:3DiEZ8TCKgO" resolve="EditorCell_SceneLabel" />
        </node>
      </node>
      <node concept="312cEg" id="5fP$XwiXktG" role="jymVt">
        <property role="TrG5h" value="myConnecitonKind" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5fP$XwiXjIb" role="1B3o_S" />
        <node concept="3uibUv" id="5fP$XwiXkty" role="1tU5fm">
          <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
        </node>
      </node>
      <node concept="2tJIrI" id="3DiEZ8TKBcy" role="jymVt" />
      <node concept="3clFbW" id="5fP$XwiXwFK" role="jymVt">
        <node concept="3cqZAl" id="5fP$XwiXwFL" role="3clF45" />
        <node concept="3clFbS" id="5fP$XwiXwFN" role="3clF47">
          <node concept="3clFbF" id="4vmY7CyQJg1" role="3cqZAp">
            <node concept="37vLTI" id="4vmY7CyQLhY" role="3clFbG">
              <node concept="37vLTw" id="4vmY7CyQJfZ" role="37vLTJ">
                <ref role="3cqZAo" node="4vmY7CyQE5x" resolve="myLabel" />
              </node>
              <node concept="2ShNRf" id="3DiEZ8TEqro" role="37vLTx">
                <node concept="1pGfFk" id="3DiEZ8TEqrp" role="2ShVmc">
                  <ref role="37wK5l" to="ee2c:3DiEZ8TCNUJ" resolve="EditorCell_SceneLabel" />
                  <node concept="37vLTw" id="3DiEZ8TEqrq" role="37wK5m">
                    <ref role="3cqZAo" node="4vmY7CyRIpr" resolve="context" />
                  </node>
                  <node concept="37vLTw" id="3DiEZ8TEqrr" role="37wK5m">
                    <ref role="3cqZAo" node="4vmY7CyRIpx" resolve="node" />
                  </node>
                  <node concept="2OqwBi" id="3DiEZ8TEqrs" role="37wK5m">
                    <node concept="37vLTw" id="3DiEZ8TEqYK" role="2Oq$k0">
                      <ref role="3cqZAo" node="4vmY7CyRIpv" resolve="port" />
                    </node>
                    <node concept="liA8E" id="3DiEZ8TEqru" role="2OqNvi">
                      <ref role="37wK5l" to="2xsi:1HEL0zWeift" resolve="getName" />
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="31Fn7oZMGzL" role="37wK5m">
                    <node concept="2OqwBi" id="31Fn7oZMGzN" role="3fr31v">
                      <node concept="37vLTw" id="31Fn7oZMGzO" role="2Oq$k0">
                        <ref role="3cqZAo" node="4vmY7CyRIpv" resolve="port" />
                      </node>
                      <node concept="liA8E" id="31Fn7oZMGzP" role="2OqNvi">
                        <ref role="37wK5l" to="2xsi:31Fn7oZvfqf" resolve="isValid" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3DiEZ8TKjlt" role="3cqZAp">
            <node concept="2OqwBi" id="3DiEZ8TKm8M" role="3clFbG">
              <node concept="2OqwBi" id="3DiEZ8TKj_O" role="2Oq$k0">
                <node concept="37vLTw" id="3DiEZ8TKjlr" role="2Oq$k0">
                  <ref role="3cqZAo" node="4vmY7CyQE5x" resolve="myLabel" />
                </node>
                <node concept="liA8E" id="3DiEZ8TKlyx" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
                </node>
              </node>
              <node concept="liA8E" id="3DiEZ8TKmM_" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
                <node concept="10M0yZ" id="2CiAywAa1hM" role="37wK5m">
                  <ref role="3cqZAo" to="xxkc:3DiEZ8TM9th" resolve="PORT" />
                  <ref role="1PxDUh" to="xxkc:3DiEZ8TM99k" resolve="RichEditorStyleAttributes" />
                </node>
                <node concept="37vLTw" id="3DiEZ8TKpvp" role="37wK5m">
                  <ref role="3cqZAo" node="4vmY7CyRIpv" resolve="port" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4vmY7CySeGq" role="3cqZAp">
            <node concept="37vLTI" id="4vmY7CySfhz" role="3clFbG">
              <node concept="2OqwBi" id="4vmY7CySf$s" role="37vLTx">
                <node concept="37vLTw" id="4vmY7CySfxZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4vmY7CyRIpv" resolve="port" />
                </node>
                <node concept="liA8E" id="4vmY7CySfGZ" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:5fP$XwiOazh" resolve="getConnecitonKind" />
                </node>
              </node>
              <node concept="37vLTw" id="4vmY7CySeGo" role="37vLTJ">
                <ref role="3cqZAo" node="5fP$XwiXktG" resolve="myConnecitonKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5fP$XwiXvBY" role="1B3o_S" />
        <node concept="37vLTG" id="4vmY7CyRIpr" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="3uibUv" id="1cTKxMS9FDk" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
          </node>
        </node>
        <node concept="37vLTG" id="4vmY7CyRIpv" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="3uibUv" id="4vmY7CyRMKD" role="1tU5fm">
            <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
          </node>
        </node>
        <node concept="37vLTG" id="4vmY7CyRIpx" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="4vmY7CyRIpy" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5fP$XwiXgha" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7qPnRGG6q3s" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2JGKyjit8pv">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="DiagramColors" />
    <property role="1EXbeo" value="true" />
    <node concept="3clFbW" id="2JGKyjit8zB" role="jymVt">
      <node concept="3cqZAl" id="2JGKyjit8zC" role="3clF45" />
      <node concept="3clFbS" id="2JGKyjit8zE" role="3clF47" />
      <node concept="3Tm6S6" id="2JGKyjit8yX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2JGKyjit8zV" role="jymVt" />
    <node concept="Wx3nA" id="2JGKyjitmC8" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="EVENT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjit8EV" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmC1" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="6tmliaAOGah" role="33vP2m">
        <node concept="1pGfFk" id="6tmliaAOMGi" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
          <node concept="2nou5x" id="6tmliaAOMMh" role="37wK5m">
            <property role="2noCCI" value="66BBEE" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2JGKyjitmM6" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="DATA" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjitmM7" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmM8" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="4gibKcMorSC" role="33vP2m">
        <ref role="3cqZAo" to="lzb2:~JBColor.GRAY" resolve="GRAY" />
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
      </node>
    </node>
    <node concept="Wx3nA" id="2R0WzquXqPs" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ADAPTER" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2R0WzquXqPt" role="1B3o_S" />
      <node concept="3uibUv" id="2R0WzquXqPu" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2R0Wzqv0dK6" role="33vP2m">
        <node concept="1pGfFk" id="2R0Wzqv0eu0" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
          <node concept="2nou5x" id="2R0Wzqv0exB" role="37wK5m">
            <property role="2noCCI" value="EE8822" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdTfoT" role="jymVt" />
    <node concept="Wx3nA" id="2SU8oJdTfqi" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="EVENT_RO" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2SU8oJdTfqj" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdTfqk" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2SU8oJdTfql" role="33vP2m">
        <node concept="1pGfFk" id="2SU8oJdTfqm" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
          <node concept="2nou5x" id="2SU8oJdTfqn" role="37wK5m">
            <property role="2noCCI" value="88AACC" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2SU8oJdTfqo" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="DATA_RO" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2SU8oJdTfqp" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdTfqq" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="4gibKcMorWf" role="33vP2m">
        <ref role="3cqZAo" to="lzb2:~JBColor.LIGHT_GRAY" resolve="LIGHT_GRAY" />
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
      </node>
    </node>
    <node concept="Wx3nA" id="2SU8oJdTfq$" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ADAPTER_RO" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2SU8oJdTfq_" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdTfqA" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2SU8oJdTfqD" role="33vP2m">
        <node concept="1pGfFk" id="2SU8oJdTfqE" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
          <node concept="2nou5x" id="2SU8oJdTfqF" role="37wK5m">
            <property role="2noCCI" value="CCAA88" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdTfoU" role="jymVt" />
    <node concept="2tJIrI" id="7pEplJksnXR" role="jymVt" />
    <node concept="2YIFZL" id="7pEplJksrRt" role="jymVt">
      <property role="TrG5h" value="getColorFor" />
      <node concept="3clFbS" id="7pEplJksrRv" role="3clF47">
        <node concept="3cpWs6" id="2SU8oJdTNjG" role="3cqZAp">
          <node concept="1rXfSq" id="2SU8oJdTNnM" role="3cqZAk">
            <ref role="37wK5l" node="2SU8oJdTf9W" resolve="getColorFor" />
            <node concept="37vLTw" id="2SU8oJdTNqI" role="37wK5m">
              <ref role="3cqZAo" node="7pEplJksrRP" resolve="kind" />
            </node>
            <node concept="3clFbT" id="2SU8oJdTNvx" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7pEplJksrRO" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2AHcQZ" id="7pEplJksrRS" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="7pEplJksrRP" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="7pEplJksrRQ" role="1tU5fm">
          <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
        </node>
        <node concept="2AHcQZ" id="7pEplJksrRR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7pEplJksrRN" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2SU8oJdTNwY" role="jymVt" />
    <node concept="2YIFZL" id="2SU8oJdTf9W" role="jymVt">
      <property role="TrG5h" value="getColorFor" />
      <node concept="3clFbS" id="2SU8oJdTf9X" role="3clF47">
        <node concept="3KaCP$" id="2SU8oJdTf9Y" role="3cqZAp">
          <node concept="37vLTw" id="2SU8oJdTf9Z" role="3KbGdf">
            <ref role="3cqZAo" node="2SU8oJdTfaj" resolve="kind" />
          </node>
          <node concept="3KbdKl" id="2SU8oJdTfa0" role="3KbHQx">
            <node concept="Rm8GO" id="2SU8oJdTfa1" role="3Kbmr1">
              <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="3clFbS" id="2SU8oJdTfa2" role="3Kbo56">
              <node concept="3cpWs6" id="2SU8oJdTfa3" role="3cqZAp">
                <node concept="3K4zz7" id="2SU8oJdTMKu" role="3cqZAk">
                  <node concept="37vLTw" id="2SU8oJdTMNA" role="3K4E3e">
                    <ref role="3cqZAo" node="2R0WzquXqPs" resolve="ADAPTER" />
                  </node>
                  <node concept="37vLTw" id="2SU8oJdTMSy" role="3K4GZi">
                    <ref role="3cqZAo" node="2SU8oJdTfq$" resolve="ADAPTER_RO" />
                  </node>
                  <node concept="37vLTw" id="2SU8oJdTMrq" role="3K4Cdx">
                    <ref role="3cqZAo" node="2SU8oJdTfdW" resolve="editable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2SU8oJdTfa5" role="3KbHQx">
            <node concept="Rm8GO" id="2SU8oJdTfa6" role="3Kbmr1">
              <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="3clFbS" id="2SU8oJdTfa7" role="3Kbo56">
              <node concept="3cpWs6" id="2SU8oJdTfa8" role="3cqZAp">
                <node concept="3K4zz7" id="2SU8oJdTMUn" role="3cqZAk">
                  <node concept="37vLTw" id="2SU8oJdTMYQ" role="3K4E3e">
                    <ref role="3cqZAo" node="2JGKyjitmC8" resolve="EVENT" />
                  </node>
                  <node concept="37vLTw" id="2SU8oJdTN2H" role="3K4GZi">
                    <ref role="3cqZAo" node="2SU8oJdTfqi" resolve="EVENT_RO" />
                  </node>
                  <node concept="37vLTw" id="2SU8oJdTMUo" role="3K4Cdx">
                    <ref role="3cqZAo" node="2SU8oJdTfdW" resolve="editable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2SU8oJdTfaa" role="3KbHQx">
            <node concept="Rm8GO" id="2SU8oJdTfab" role="3Kbmr1">
              <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="3clFbS" id="2SU8oJdTfac" role="3Kbo56">
              <node concept="3cpWs6" id="2SU8oJdTfad" role="3cqZAp">
                <node concept="3K4zz7" id="2SU8oJdTN4Q" role="3cqZAk">
                  <node concept="37vLTw" id="2SU8oJdTN9C" role="3K4E3e">
                    <ref role="3cqZAo" node="2JGKyjitmM6" resolve="DATA" />
                  </node>
                  <node concept="37vLTw" id="2SU8oJdTNdL" role="3K4GZi">
                    <ref role="3cqZAo" node="2SU8oJdTfqo" resolve="DATA_RO" />
                  </node>
                  <node concept="37vLTw" id="2SU8oJdTN4R" role="3K4Cdx">
                    <ref role="3cqZAo" node="2SU8oJdTfdW" resolve="editable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2SU8oJdTfaf" role="3cqZAp">
          <node concept="10Nm6u" id="2SU8oJdTfag" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="2SU8oJdTfah" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdTfai" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="2SU8oJdTfaj" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="2SU8oJdTfak" role="1tU5fm">
          <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
        </node>
        <node concept="2AHcQZ" id="2SU8oJdTfal" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJdTfdW" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="2SU8oJdTfg9" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2SU8oJdTfam" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7pEplJksnYw" role="jymVt" />
    <node concept="Wx3nA" id="2r29JVYdpia" role="jymVt">
      <property role="TrG5h" value="VARIANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2r29JVYdpb3" role="1B3o_S" />
      <node concept="10OMs4" id="2r29JVYdphH" role="1tU5fm" />
      <node concept="2$xPTn" id="2r29JVYdpyP" role="33vP2m">
        <property role="2$xPTl" value="0.25f" />
      </node>
    </node>
    <node concept="2tJIrI" id="2r29JVYdp6p" role="jymVt" />
    <node concept="2YIFZL" id="3diMC1cjnxP" role="jymVt">
      <property role="TrG5h" value="createGradientPaint" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3diMC1cjnxQ" role="3clF47">
        <node concept="3cpWs8" id="3diMC1cjnxR" role="3cqZAp">
          <node concept="3cpWsn" id="3diMC1cjnxS" role="3cpWs9">
            <property role="TrG5h" value="centerBrightness" />
            <node concept="10OMs4" id="3diMC1cjnxT" role="1tU5fm" />
            <node concept="1rXfSq" id="2r29JVYdDdr" role="33vP2m">
              <ref role="37wK5l" node="4Rtv8bPboVF" resolve="getBrightness" />
              <node concept="37vLTw" id="2r29JVYdwPP" role="37wK5m">
                <ref role="3cqZAo" node="3diMC1cjnyJ" resolve="color" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3diMC1cjnxW" role="3cqZAp">
          <node concept="37vLTI" id="3diMC1cjnxX" role="3clFbG">
            <node concept="37vLTw" id="3diMC1cjnxY" role="37vLTJ">
              <ref role="3cqZAo" node="3diMC1cjnxS" resolve="centerBrightness" />
            </node>
            <node concept="2YIFZM" id="3diMC1cjnxZ" role="37vLTx">
              <ref role="37wK5l" to="wyt6:~Math.min(float,float)" resolve="min" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="2YIFZM" id="3diMC1cjny0" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Math.max(float,float)" resolve="max" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="37vLTw" id="3diMC1cjny1" role="37wK5m">
                  <ref role="3cqZAo" node="3diMC1cjnxS" resolve="centerBrightness" />
                </node>
                <node concept="37vLTw" id="2r29JVYdql5" role="37wK5m">
                  <ref role="3cqZAo" node="2r29JVYdpia" resolve="VARIANCE" />
                </node>
              </node>
              <node concept="3cpWsd" id="5NCN5PnmDzb" role="37wK5m">
                <node concept="37vLTw" id="2r29JVYdq4F" role="3uHU7w">
                  <ref role="3cqZAo" node="2r29JVYdpia" resolve="VARIANCE" />
                </node>
                <node concept="2$xPTn" id="5_3n5etGHW6" role="3uHU7B">
                  <property role="2$xPTl" value="1.0f" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3diMC1cjny4" role="3cqZAp" />
        <node concept="3cpWs8" id="3diMC1cjny5" role="3cqZAp">
          <node concept="3cpWsn" id="3diMC1cjny6" role="3cpWs9">
            <property role="TrG5h" value="color1" />
            <node concept="3uibUv" id="3diMC1cjny7" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1rXfSq" id="2r29JVYdaKA" role="33vP2m">
              <ref role="37wK5l" node="4Rtv8bPbpe0" resolve="setBrightness" />
              <node concept="37vLTw" id="2r29JVYd6iw" role="37wK5m">
                <ref role="3cqZAo" node="3diMC1cjnyJ" resolve="color" />
              </node>
              <node concept="3cpWs3" id="2r29JVYd6ix" role="37wK5m">
                <node concept="37vLTw" id="2r29JVYdqDK" role="3uHU7w">
                  <ref role="3cqZAo" node="2r29JVYdpia" resolve="VARIANCE" />
                </node>
                <node concept="37vLTw" id="2r29JVYd6iz" role="3uHU7B">
                  <ref role="3cqZAo" node="3diMC1cjnxS" resolve="centerBrightness" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3diMC1cjnyd" role="3cqZAp">
          <node concept="3cpWsn" id="3diMC1cjnye" role="3cpWs9">
            <property role="TrG5h" value="color2" />
            <node concept="3uibUv" id="3diMC1cjnyf" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="1rXfSq" id="2r29JVYdbh9" role="33vP2m">
              <ref role="37wK5l" node="4Rtv8bPbpe0" resolve="setBrightness" />
              <node concept="37vLTw" id="2r29JVYd6iI" role="37wK5m">
                <ref role="3cqZAo" node="3diMC1cjnyJ" resolve="color" />
              </node>
              <node concept="3cpWsd" id="2r29JVYd6iJ" role="37wK5m">
                <node concept="37vLTw" id="2r29JVYdr7s" role="3uHU7w">
                  <ref role="3cqZAo" node="2r29JVYdpia" resolve="VARIANCE" />
                </node>
                <node concept="37vLTw" id="2r29JVYd6iL" role="3uHU7B">
                  <ref role="3cqZAo" node="3diMC1cjnxS" resolve="centerBrightness" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3diMC1cjnyl" role="3cqZAp">
          <node concept="2ShNRf" id="3diMC1cjnym" role="3cqZAk">
            <node concept="1pGfFk" id="3diMC1cjnyn" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~GradientPaint.&lt;init&gt;(float,float,java.awt.Color,float,float,java.awt.Color,boolean)" resolve="GradientPaint" />
              <node concept="10QFUN" id="3diMC1cjnyo" role="37wK5m">
                <node concept="10OMs4" id="3diMC1cjnyp" role="10QFUM" />
                <node concept="2OqwBi" id="3diMC1cjnyq" role="10QFUP">
                  <node concept="37vLTw" id="3diMC1cjnyr" role="2Oq$k0">
                    <ref role="3cqZAo" node="3diMC1cjnyL" resolve="bounds" />
                  </node>
                  <node concept="liA8E" id="3diMC1cjnys" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getMinX()" resolve="getMinX" />
                  </node>
                </node>
              </node>
              <node concept="10QFUN" id="3diMC1cjnyt" role="37wK5m">
                <node concept="10OMs4" id="3diMC1cjnyu" role="10QFUM" />
                <node concept="2OqwBi" id="3diMC1cjnyv" role="10QFUP">
                  <node concept="37vLTw" id="3diMC1cjnyw" role="2Oq$k0">
                    <ref role="3cqZAo" node="3diMC1cjnyL" resolve="bounds" />
                  </node>
                  <node concept="liA8E" id="3diMC1cjnyx" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getMinY()" resolve="getMinY" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3diMC1cjnyy" role="37wK5m">
                <ref role="3cqZAo" node="3diMC1cjny6" resolve="color1" />
              </node>
              <node concept="10QFUN" id="3diMC1cjnyz" role="37wK5m">
                <node concept="2OqwBi" id="3diMC1cjny$" role="10QFUP">
                  <node concept="37vLTw" id="3diMC1cjny_" role="2Oq$k0">
                    <ref role="3cqZAo" node="3diMC1cjnyL" resolve="bounds" />
                  </node>
                  <node concept="liA8E" id="3diMC1cjnyA" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getMaxX()" resolve="getMaxX" />
                  </node>
                </node>
                <node concept="10OMs4" id="3diMC1cjnyB" role="10QFUM" />
              </node>
              <node concept="10QFUN" id="3diMC1cjnyC" role="37wK5m">
                <node concept="2OqwBi" id="3diMC1cjnyD" role="10QFUP">
                  <node concept="37vLTw" id="3diMC1cjnyE" role="2Oq$k0">
                    <ref role="3cqZAo" node="3diMC1cjnyL" resolve="bounds" />
                  </node>
                  <node concept="liA8E" id="3diMC1cjnyF" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getMaxY()" resolve="getMaxY" />
                  </node>
                </node>
                <node concept="10OMs4" id="3diMC1cjnyG" role="10QFUM" />
              </node>
              <node concept="37vLTw" id="3diMC1cjnyH" role="37wK5m">
                <ref role="3cqZAo" node="3diMC1cjnye" resolve="color2" />
              </node>
              <node concept="3clFbT" id="3diMC1cjnyI" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3diMC1cjnyJ" role="3clF46">
        <property role="TrG5h" value="color" />
        <node concept="3uibUv" id="3diMC1cjnyK" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="3diMC1cjnyL" role="3clF46">
        <property role="TrG5h" value="bounds" />
        <node concept="3uibUv" id="3diMC1cjnyM" role="1tU5fm">
          <ref role="3uigEE" to="fbzs:~Rectangle2D" resolve="Rectangle2D" />
        </node>
      </node>
      <node concept="3uibUv" id="3diMC1cjnyN" role="3clF45">
        <ref role="3uigEE" to="z60i:~Paint" resolve="Paint" />
      </node>
      <node concept="3Tm1VV" id="3diMC1cjnyO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2r29JVYd5IF" role="jymVt" />
    <node concept="2YIFZL" id="4Rtv8bPboVF" role="jymVt">
      <property role="TrG5h" value="getBrightness" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4Rtv8bPbkOK" role="3clF47">
        <node concept="3cpWs8" id="4Rtv8bPblb9" role="3cqZAp">
          <node concept="3cpWsn" id="4Rtv8bPblba" role="3cpWs9">
            <property role="TrG5h" value="hsb" />
            <node concept="10Q1$e" id="4Rtv8bPblbb" role="1tU5fm">
              <node concept="10OMs4" id="4Rtv8bPblbc" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="4Rtv8bPblbd" role="33vP2m">
              <node concept="3$_iS1" id="4Rtv8bPblbe" role="2ShVmc">
                <node concept="10OMs4" id="4Rtv8bPblbf" role="3$_nBY" />
                <node concept="3$GHV9" id="4Rtv8bPblbg" role="3$GQph">
                  <node concept="3cmrfG" id="4Rtv8bPblbh" role="3$I4v7">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Rtv8bPblbi" role="3cqZAp">
          <node concept="2YIFZM" id="4Rtv8bPblbj" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Color.RGBtoHSB(int,int,int,float[])" resolve="RGBtoHSB" />
            <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
            <node concept="2OqwBi" id="4Rtv8bPblbk" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPblbl" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbl4q" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPblbm" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getRed()" resolve="getRed" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Rtv8bPblbn" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPblbo" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbl4q" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPblbp" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getGreen()" resolve="getGreen" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Rtv8bPblbq" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPblbr" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbl4q" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPblbs" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getBlue()" resolve="getBlue" />
              </node>
            </node>
            <node concept="37vLTw" id="4Rtv8bPblbt" role="37wK5m">
              <ref role="3cqZAo" node="4Rtv8bPblba" resolve="hsb" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Rtv8bPblbu" role="3cqZAp">
          <node concept="3cpWsn" id="4Rtv8bPblbv" role="3cpWs9">
            <property role="TrG5h" value="brightness" />
            <node concept="10OMs4" id="4Rtv8bPblbw" role="1tU5fm" />
            <node concept="AH0OO" id="4Rtv8bPblbz" role="33vP2m">
              <node concept="3cmrfG" id="4Rtv8bPblb$" role="AHEQo">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="37vLTw" id="4Rtv8bPblb_" role="AHHXb">
                <ref role="3cqZAo" node="4Rtv8bPblba" resolve="hsb" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Rtv8bPblSx" role="3cqZAp">
          <node concept="37vLTw" id="4Rtv8bPbm0$" role="3cqZAk">
            <ref role="3cqZAo" node="4Rtv8bPblbv" resolve="brightness" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4Rtv8bPbl4q" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="4Rtv8bPbl4p" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="10OMs4" id="4Rtv8bPbl6J" role="3clF45" />
      <node concept="3Tm6S6" id="2r29JVYdxKh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2r29JVYdxsM" role="jymVt" />
    <node concept="2YIFZL" id="4Rtv8bPbpe0" role="jymVt">
      <property role="TrG5h" value="setBrightness" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4Rtv8bPbmr9" role="3clF47">
        <node concept="3cpWs8" id="4Rtv8bPbnod" role="3cqZAp">
          <node concept="3cpWsn" id="4Rtv8bPbnoe" role="3cpWs9">
            <property role="TrG5h" value="hsb" />
            <node concept="10Q1$e" id="4Rtv8bPbnof" role="1tU5fm">
              <node concept="10OMs4" id="4Rtv8bPbnog" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="4Rtv8bPbnoh" role="33vP2m">
              <node concept="3$_iS1" id="4Rtv8bPbnoi" role="2ShVmc">
                <node concept="10OMs4" id="4Rtv8bPbnoj" role="3$_nBY" />
                <node concept="3$GHV9" id="4Rtv8bPbnok" role="3$GQph">
                  <node concept="3cmrfG" id="4Rtv8bPbnol" role="3$I4v7">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Rtv8bPbnom" role="3cqZAp">
          <node concept="2YIFZM" id="4Rtv8bPbnon" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Color.RGBtoHSB(int,int,int,float[])" resolve="RGBtoHSB" />
            <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
            <node concept="2OqwBi" id="4Rtv8bPbnoo" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPbnop" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbn7W" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPbnoq" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getRed()" resolve="getRed" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Rtv8bPbnor" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPbnos" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbn7W" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPbnot" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getGreen()" resolve="getGreen" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Rtv8bPbnou" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPbnov" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbn7W" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPbnow" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getBlue()" resolve="getBlue" />
              </node>
            </node>
            <node concept="37vLTw" id="4Rtv8bPbnox" role="37wK5m">
              <ref role="3cqZAo" node="4Rtv8bPbnoe" resolve="hsb" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Rtv8bPbnoE" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="4Rtv8bPbnoF" role="3clFbx">
            <node concept="3clFbF" id="4Rtv8bPbnoG" role="3cqZAp">
              <node concept="37vLTI" id="4Rtv8bPbnoH" role="3clFbG">
                <node concept="2$xPTn" id="5_3n5etGHVV" role="37vLTx">
                  <property role="2$xPTl" value="0.0f" />
                </node>
                <node concept="37vLTw" id="4Rtv8bPbnoJ" role="37vLTJ">
                  <ref role="3cqZAo" node="4Rtv8bPbndB" resolve="brightness" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="4Rtv8bPbnoK" role="3clFbw">
            <node concept="2$xPTn" id="5_3n5etGHWh" role="3uHU7w">
              <property role="2$xPTl" value="0.0f" />
            </node>
            <node concept="37vLTw" id="4Rtv8bPbnoM" role="3uHU7B">
              <ref role="3cqZAo" node="4Rtv8bPbndB" resolve="brightness" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Rtv8bPbnoN" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="4Rtv8bPbnoO" role="3clFbx">
            <node concept="3clFbF" id="4Rtv8bPbnoP" role="3cqZAp">
              <node concept="37vLTI" id="4Rtv8bPbnoQ" role="3clFbG">
                <node concept="2$xPTn" id="5_3n5etGHVw" role="37vLTx">
                  <property role="2$xPTl" value="1.0f" />
                </node>
                <node concept="37vLTw" id="4Rtv8bPbnoS" role="37vLTJ">
                  <ref role="3cqZAo" node="4Rtv8bPbndB" resolve="brightness" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="4Rtv8bPbnoT" role="3clFbw">
            <node concept="2$xPTn" id="5_3n5etGHVF" role="3uHU7w">
              <property role="2$xPTl" value="1.0f" />
            </node>
            <node concept="37vLTw" id="4Rtv8bPbnoV" role="3uHU7B">
              <ref role="3cqZAo" node="4Rtv8bPbndB" resolve="brightness" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Rtv8bPbnoW" role="3cqZAp">
          <node concept="3cpWsn" id="4Rtv8bPbnoX" role="3cpWs9">
            <property role="TrG5h" value="c2" />
            <node concept="3uibUv" id="4Rtv8bPbnoY" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="2ShNRf" id="4Rtv8bPbnoZ" role="33vP2m">
              <node concept="1pGfFk" id="4Rtv8bPbnp0" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
                <node concept="2YIFZM" id="4Rtv8bPbnp1" role="37wK5m">
                  <ref role="37wK5l" to="z60i:~Color.HSBtoRGB(float,float,float)" resolve="HSBtoRGB" />
                  <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                  <node concept="AH0OO" id="4Rtv8bPbnp2" role="37wK5m">
                    <node concept="3cmrfG" id="4Rtv8bPbnp3" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="4Rtv8bPbnp4" role="AHHXb">
                      <ref role="3cqZAo" node="4Rtv8bPbnoe" resolve="hsb" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="4Rtv8bPbnp5" role="37wK5m">
                    <node concept="3cmrfG" id="4Rtv8bPbnp6" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="4Rtv8bPbnp7" role="AHHXb">
                      <ref role="3cqZAo" node="4Rtv8bPbnoe" resolve="hsb" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4Rtv8bPbnp8" role="37wK5m">
                    <ref role="3cqZAo" node="4Rtv8bPbndB" resolve="brightness" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Rtv8bPbnp9" role="3cqZAp">
          <node concept="37vLTw" id="4Rtv8bPbnpa" role="3cqZAk">
            <ref role="3cqZAo" node="4Rtv8bPbnoX" resolve="c2" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4Rtv8bPbn7W" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="4Rtv8bPbn7V" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="4Rtv8bPbndB" role="3clF46">
        <property role="TrG5h" value="brightness" />
        <node concept="10OMs4" id="4Rtv8bPbnj0" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4Rtv8bPbn3S" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3Tm6S6" id="2r29JVYdbLI" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2r29JVYd6VA" role="jymVt" />
    <node concept="3Tm1VV" id="2JGKyjit8pw" role="1B3o_S" />
  </node>
</model>

