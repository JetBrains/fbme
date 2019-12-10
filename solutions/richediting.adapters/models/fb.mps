<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:15c6feaa-d38f-494f-a105-0b74d654dd08(richediting.adapters.fb)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
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
    <property role="TrG5h" value="EditorCell_FBTypeTemplate" />
    <node concept="2tJIrI" id="7qPnRGGpuFe" role="jymVt" />
    <node concept="312cEg" id="1HEL0zVZ6TY" role="jymVt">
      <property role="TrG5h" value="myFBTypeTemplate" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zVZ6M6" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGpm$a" role="1tU5fm">
        <ref role="3uigEE" to="2xsi:7qPnRGGphpu" resolve="FunctionBlockTypeTemplateView" />
      </node>
    </node>
    <node concept="312cEg" id="7qPnRGG6zO0" role="jymVt">
      <property role="TrG5h" value="myFBCellComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGG6vHm" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGG6yuR" role="1tU5fm">
        <ref role="3uigEE" node="7qPnRGG6q3r" resolve="FBCellComponent" />
      </node>
      <node concept="2ShNRf" id="7qPnRGG6KEm" role="33vP2m">
        <node concept="1pGfFk" id="7qPnRGGaWmL" role="2ShVmc">
          <ref role="37wK5l" node="7qPnRGG79lZ" resolve="FBCellComponent" />
          <node concept="1rXfSq" id="7qPnRGGaX3z" role="37wK5m">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7qPnRGGpthd" role="jymVt">
      <property role="TrG5h" value="myInputAssociations" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGGpnIi" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGpocc" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qPnRGGpupX" role="11_B2D">
          <ref role="3uigEE" node="7qPnRGGpoZs" resolve="EditorCell_FBTypeTemplate.EventAssociation" />
        </node>
      </node>
      <node concept="2ShNRf" id="7qPnRGGpv56" role="33vP2m">
        <node concept="1pGfFk" id="7qPnRGGpvOt" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="7qPnRGGpwnJ" role="1pMfVU">
            <ref role="3uigEE" node="7qPnRGGpoZs" resolve="EditorCell_FBTypeTemplate.EventAssociation" />
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
          <ref role="3uigEE" node="7qPnRGGpoZs" resolve="EditorCell_FBTypeTemplate.EventAssociation" />
        </node>
      </node>
      <node concept="2ShNRf" id="7qPnRGGpwBs" role="33vP2m">
        <node concept="1pGfFk" id="7qPnRGGpxmN" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="7qPnRGGpygY" role="1pMfVU">
            <ref role="3uigEE" node="7qPnRGGpoZs" resolve="EditorCell_FBTypeTemplate.EventAssociation" />
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
        <node concept="3uibUv" id="1HEL0zVYat$" role="1tU5fm">
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
        <property role="TrG5h" value="fbTypePreview" />
        <node concept="3uibUv" id="7qPnRGGpmsF" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:7qPnRGGphpu" resolve="FunctionBlockTypeTemplateView" />
        </node>
      </node>
      <node concept="3clFbS" id="1HEL0zVZllO" role="3clF47">
        <node concept="XkiVB" id="1HEL0zVZmt5" role="3cqZAp">
          <ref role="37wK5l" to="g51k:~EditorCell_Basic.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode)" resolve="EditorCell_Basic" />
          <node concept="37vLTw" id="1HEL0zVZmO3" role="37wK5m">
            <ref role="3cqZAo" node="1HEL0zVYat_" resolve="editorContext" />
          </node>
          <node concept="37vLTw" id="1HEL0zVZmUd" role="37wK5m">
            <ref role="3cqZAo" node="1HEL0zVYatC" resolve="node" />
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW0Ogh" role="3cqZAp">
          <node concept="37vLTI" id="1HEL0zW0P$O" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zW0PO2" role="37vLTx">
              <ref role="3cqZAo" node="1HEL0zVZ6wk" resolve="fbTypePreview" />
            </node>
            <node concept="37vLTw" id="1HEL0zW0Ogf" role="37vLTJ">
              <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBTypeTemplate" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$XwiFiz0" role="3cqZAp">
          <node concept="1rXfSq" id="5fP$XwiFiyY" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zVZcSu" resolve="synchronize" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVZ6mp" role="jymVt" />
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
                <ref role="37wK5l" to="z60i:~Graphics.create():java.awt.Graphics" resolve="create" />
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
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
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
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX():int" resolve="getX" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7qPnRGGEg8B" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGGEg8C" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="7qPnRGGEg8A" role="1tU5fm" />
            <node concept="1rXfSq" id="7qPnRGGEg8D" role="33vP2m">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getY():int" resolve="getY" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGGEifs" role="3cqZAp" />
        <node concept="3cpWs8" id="7qPnRGGyTo8" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGGyTo9" role="3cpWs9">
            <property role="TrG5h" value="inputAssociationPainter" />
            <node concept="3uibUv" id="7qPnRGGyTo7" role="1tU5fm">
              <ref role="3uigEE" node="7qPnRGGp$aj" resolve="EditorCell_FBTypeTemplate.EventsAssociationsPainter" />
            </node>
            <node concept="2ShNRf" id="7qPnRGGyToa" role="33vP2m">
              <node concept="1pGfFk" id="7qPnRGGyTob" role="2ShVmc">
                <ref role="37wK5l" node="7qPnRGGpCac" resolve="EditorCell_FBTypeTemplate.EventsAssociationsPainter" />
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
              <ref role="3uigEE" node="7qPnRGGp$aj" resolve="EditorCell_FBTypeTemplate.EventsAssociationsPainter" />
            </node>
            <node concept="2ShNRf" id="7qPnRGGyUEz" role="33vP2m">
              <node concept="1pGfFk" id="7qPnRGGyUE$" role="2ShVmc">
                <ref role="37wK5l" node="7qPnRGGpCac" resolve="EditorCell_FBTypeTemplate.EventsAssociationsPainter" />
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
        <node concept="3clFbF" id="7qPnRGG8BXo" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGG8Dbf" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGG8BXm" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
            </node>
            <node concept="liA8E" id="7qPnRGG8G8i" role="2OqNvi">
              <ref role="37wK5l" node="7qPnRGG7$7p" resolve="paint" />
              <node concept="10QFUN" id="3IX4BsJOM7O" role="37wK5m">
                <node concept="3uibUv" id="3IX4BsJOMp0" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="3IX4BsJOLPD" role="10QFUP">
                  <ref role="3cqZAo" node="1HEL0zVZ5Nt" resolve="graphics" />
                </node>
              </node>
              <node concept="37vLTw" id="7qPnRGGEf2B" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGEf2_" resolve="x" />
              </node>
              <node concept="37vLTw" id="7qPnRGGEg8E" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGGEg8C" resolve="y" />
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
    <node concept="2tJIrI" id="1HEL0zWcpBo" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVZcSu" role="jymVt">
      <property role="TrG5h" value="synchronize" />
      <node concept="3Tm1VV" id="1HEL0zVZcSv" role="1B3o_S" />
      <node concept="3cqZAl" id="1HEL0zVZcSx" role="3clF45" />
      <node concept="3clFbS" id="1HEL0zVZcSA" role="3clF47">
        <node concept="3clFbF" id="7qPnRGGzgm4" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGGzhd4" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGGzgm2" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGGpthd" resolve="myInputAssociations" />
            </node>
            <node concept="liA8E" id="7qPnRGGztLj" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.clear():void" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGztZj" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGGztZk" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGGzuMk" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGGptC9" resolve="myOutputAssociations" />
            </node>
            <node concept="liA8E" id="7qPnRGGztZm" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.clear():void" resolve="clear" />
            </node>
          </node>
        </node>
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
                    <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBTypeTemplate" />
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
                    <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List):void" resolve="sort" />
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
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2ShNRf" id="7qPnRGGzW5w" role="37wK5m">
                        <node concept="1pGfFk" id="7qPnRGGzX4r" role="2ShVmc">
                          <ref role="37wK5l" node="7qPnRGGpr9a" resolve="EditorCell_FBTypeTemplate.EventAssociation" />
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
                    <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
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
                  <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBTypeTemplate" />
                </node>
                <node concept="liA8E" id="7qPnRGGz7FD" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYKgq" resolve="getEventInputPorts" />
                </node>
              </node>
              <node concept="liA8E" id="7qPnRGGzdC4" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
                    <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBTypeTemplate" />
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
                    <ref role="37wK5l" to="33ny:~Collections.sort(java.util.List):void" resolve="sort" />
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
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2ShNRf" id="7qPnRGG$nOw" role="37wK5m">
                        <node concept="1pGfFk" id="7qPnRGG$nOx" role="2ShVmc">
                          <ref role="37wK5l" node="7qPnRGGpr9a" resolve="EditorCell_FBTypeTemplate.EventAssociation" />
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
                    <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
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
                  <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBTypeTemplate" />
                </node>
                <node concept="liA8E" id="7qPnRGG$nOJ" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYKjD" resolve="getEventOutputPorts" />
                </node>
              </node>
              <node concept="liA8E" id="7qPnRGG$nOK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
        <node concept="3clFbH" id="7qPnRGGz4qK" role="3cqZAp" />
        <node concept="3clFbF" id="7qPnRGG8vTF" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGG8x4H" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGG8ws9" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG6zO0" resolve="myFBCellComponent" />
            </node>
            <node concept="liA8E" id="7qPnRGG8ztk" role="2OqNvi">
              <ref role="37wK5l" node="7qPnRGG7cIr" resolve="syncronize" />
              <node concept="37vLTw" id="7qPnRGG8z_d" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zVZ6TY" resolve="myFBTypeTemplate" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGGyFIn" role="3cqZAp" />
        <node concept="3clFbF" id="7qPnRGG8$l_" role="3cqZAp">
          <node concept="1rXfSq" id="7qPnRGG8$lz" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setHeight(int):void" resolve="setHeight" />
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
        <node concept="3clFbH" id="7qPnRGGyEw2" role="3cqZAp" />
        <node concept="3cpWs8" id="7qPnRGGyyWL" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGGyyWM" role="3cpWs9">
            <property role="TrG5h" value="inputAssocationsWidth" />
            <node concept="10Oyi0" id="7qPnRGGyyWE" role="1tU5fm" />
            <node concept="2OqwBi" id="7qPnRGGyyWN" role="33vP2m">
              <node concept="2ShNRf" id="7qPnRGGyyWO" role="2Oq$k0">
                <node concept="1pGfFk" id="7qPnRGGyyWP" role="2ShVmc">
                  <ref role="37wK5l" node="7qPnRGGpCac" resolve="EditorCell_FBTypeTemplate.EventsAssociationsPainter" />
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
                  <ref role="37wK5l" node="7qPnRGGpCac" resolve="EditorCell_FBTypeTemplate.EventsAssociationsPainter" />
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
          <node concept="1rXfSq" id="7qPnRGGboT1" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setWidth(int):void" resolve="setWidth" />
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
      <node concept="2AHcQZ" id="1HEL0zVZcSB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVZd8G" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVZcSC" role="jymVt">
      <property role="TrG5h" value="canBeSynchronized" />
      <node concept="3Tm1VV" id="1HEL0zVZcSD" role="1B3o_S" />
      <node concept="10P_77" id="1HEL0zVZcSF" role="3clF45" />
      <node concept="3clFbS" id="1HEL0zVZcSK" role="3clF47">
        <node concept="3clFbF" id="1HEL0zVZcSN" role="3cqZAp">
          <node concept="3clFbT" id="1HEL0zVZcSM" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1HEL0zVZcSL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
            <ref role="3uigEE" node="7qPnRGGpoZs" resolve="EditorCell_FBTypeTemplate.EventAssociation" />
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
          <node concept="1rXfSq" id="7qPnRGGsY54" role="37wK5m">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
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
                    <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
              <ref role="3uigEE" node="7qPnRGGpoZs" resolve="EditorCell_FBTypeTemplate.EventAssociation" />
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
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
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
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
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
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cpWsd" id="7qPnRGGxP4r" role="37wK5m">
                        <node concept="3cmrfG" id="7qPnRGGxP8K" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="7qPnRGGwOH6" role="3uHU7B">
                          <node concept="37vLTw" id="7qPnRGGwN8i" role="2Oq$k0">
                            <ref role="3cqZAo" node="7qPnRGGwJ0s" resolve="dataNumbers" />
                          </node>
                          <node concept="liA8E" id="7qPnRGGxBsS" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
                    <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int):void" resolve="drawLine" />
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
                    <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
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
                    <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int):void" resolve="fillRect" />
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
                    <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
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
                    <ref role="37wK5l" to="z60i:~Graphics.drawRect(int,int,int,int):void" resolve="drawRect" />
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
                        <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
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
                        <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int):void" resolve="fillRect" />
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
                        <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
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
                        <ref role="37wK5l" to="z60i:~Graphics.drawRect(int,int,int,int):void" resolve="drawRect" />
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
              <node concept="1rXfSq" id="3IX4BsJOI5K" role="2Oq$k0">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
              </node>
              <node concept="liA8E" id="3IX4BsJOCIM" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
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
    <node concept="3uibUv" id="1HEL0zW0JZD" role="1zkMxy">
      <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
    </node>
    <node concept="3uibUv" id="1HEL0zVZczp" role="EKbjA">
      <ref role="3uigEE" to="g51k:~SynchronizeableEditorCell" resolve="SynchronizeableEditorCell" />
    </node>
  </node>
  <node concept="312cEu" id="7qPnRGG6q3r">
    <property role="TrG5h" value="FBCellComponent" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="7qPnRGG6q4s" role="jymVt" />
    <node concept="312cEg" id="7qPnRGG6BLz" role="jymVt">
      <property role="TrG5h" value="PORT_SIZE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGG6BL$" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGG6BL_" role="1tU5fm" />
      <node concept="3cmrfG" id="7qPnRGG6BLA" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG6BLB" role="jymVt" />
    <node concept="312cEg" id="7qPnRGG6BLC" role="jymVt">
      <property role="TrG5h" value="CENTER_PADDING" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGG6BLD" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGG6BLE" role="1tU5fm" />
      <node concept="3cmrfG" id="7qPnRGG6BLF" role="33vP2m">
        <property role="3cmrfH" value="20" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG6BLH" role="jymVt" />
    <node concept="312cEg" id="7qPnRGG6BLI" role="jymVt">
      <property role="TrG5h" value="INNER_BORDER_PADDING" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGG6BLJ" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGG6BLK" role="1tU5fm" />
      <node concept="3cmrfG" id="7qPnRGG6BLL" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG6BLM" role="jymVt" />
    <node concept="312cEg" id="7qPnRGG6BLN" role="jymVt">
      <property role="TrG5h" value="COLUMNS_PADDING" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGG6BLO" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGG6BLP" role="1tU5fm" />
      <node concept="3cpWs3" id="7qPnRGG6BLQ" role="33vP2m">
        <node concept="37vLTw" id="7qPnRGG6BLR" role="3uHU7w">
          <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
        </node>
        <node concept="37vLTw" id="7qPnRGG6BLS" role="3uHU7B">
          <ref role="3cqZAo" node="7qPnRGG6BLI" resolve="INNER_BORDER_PADDING" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG6C5N" role="jymVt" />
    <node concept="312cEg" id="7qPnRGG74XY" role="jymVt">
      <property role="TrG5h" value="myStyle" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGG74yf" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGG74Xn" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG748B" role="jymVt" />
    <node concept="312cEg" id="1HEL0zW0T3f" role="jymVt">
      <property role="TrG5h" value="myTypeNameText" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zW0T3g" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zW0T3h" role="1tU5fm">
        <ref role="3uigEE" to="g51k:~TextLine" resolve="TextLine" />
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zW11Df" role="jymVt" />
    <node concept="312cEg" id="1HEL0zW0T_X" role="jymVt">
      <property role="TrG5h" value="myEventInputPortTexts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zW0T_Y" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zW0U1T" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5fP$XwiXGQQ" role="11_B2D">
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1HEL0zW0WSn" role="33vP2m">
        <node concept="1pGfFk" id="1HEL0zW0XvA" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5fP$XwiXQhh" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
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
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1HEL0zW0VYD" role="33vP2m">
        <node concept="1pGfFk" id="1HEL0zW0Yl1" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5fP$XwiXSqj" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
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
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1HEL0zW0Wo7" role="33vP2m">
        <node concept="1pGfFk" id="1HEL0zW0Yz2" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5fP$XwiXVTx" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
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
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1HEL0zW0Wr5" role="33vP2m">
        <node concept="1pGfFk" id="1HEL0zW0YL5" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="5fP$XwiXY1E" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
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
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="6LU90BNTmEe" role="33vP2m">
        <node concept="1pGfFk" id="6LU90BNTmEf" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="6LU90BNTmEg" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
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
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2ShNRf" id="6LU90BNTmE7" role="33vP2m">
        <node concept="1pGfFk" id="6LU90BNTmE8" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="6LU90BNTmE9" role="1pMfVU">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG6C6d" role="jymVt" />
    <node concept="312cEg" id="7qPnRGG7jPM" role="jymVt">
      <property role="TrG5h" value="myWidth" />
      <node concept="3Tm6S6" id="7qPnRGG7jr3" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGG7kg3" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7qPnRGG7kgi" role="jymVt">
      <property role="TrG5h" value="myHeight" />
      <node concept="3Tm6S6" id="7qPnRGG7kgj" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGG7kgk" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7qPnRGG7j0P" role="jymVt" />
    <node concept="3clFbW" id="7qPnRGG79lZ" role="jymVt">
      <node concept="3cqZAl" id="7qPnRGG79m0" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGG79m1" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGG79m3" role="3clF47">
        <node concept="3clFbF" id="7qPnRGG79m7" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGG79m9" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGG7aEI" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGG74XY" resolve="myStyle" />
            </node>
            <node concept="37vLTw" id="7qPnRGG79mg" role="37vLTx">
              <ref role="3cqZAo" node="7qPnRGG79m6" resolve="style" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGjgLG" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGGjhhD" role="3clFbG">
            <node concept="1rXfSq" id="7qPnRGGjhpY" role="37vLTx">
              <ref role="37wK5l" node="5fP$XwiXzDT" resolve="createTextLine" />
            </node>
            <node concept="37vLTw" id="7qPnRGGjgLE" role="37vLTJ">
              <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameText" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGG79m6" role="3clF46">
        <property role="TrG5h" value="style" />
        <node concept="3uibUv" id="7qPnRGG79m5" role="1tU5fm">
          <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG7a9L" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGb3$p" role="jymVt">
      <property role="TrG5h" value="getWidth" />
      <node concept="10Oyi0" id="7qPnRGGb3$q" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGGb3$r" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGGb3$s" role="3clF47">
        <node concept="3clFbF" id="7qPnRGGb3$t" role="3cqZAp">
          <node concept="37vLTw" id="7qPnRGGb3$o" role="3clFbG">
            <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7qPnRGGb3$v" role="jymVt">
      <property role="TrG5h" value="getHeight" />
      <node concept="10Oyi0" id="7qPnRGGb3$w" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGGb3$x" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGGb3$y" role="3clF47">
        <node concept="3clFbF" id="7qPnRGGb3$z" role="3cqZAp">
          <node concept="37vLTw" id="7qPnRGGb3$u" role="3clFbG">
            <ref role="3cqZAo" node="7qPnRGG7kgi" resolve="myHeight" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGaZDg" role="jymVt" />
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
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint):void" resolve="setPaint" />
              <node concept="10M0yZ" id="1CY1mmCEq2A" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~Color.DARK_GRAY" resolve="DARK_GRAY" />
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
          </node>
        </node>
        <node concept="3clFbF" id="1CY1mmCABfO" role="3cqZAp">
          <node concept="2OqwBi" id="1CY1mmCABfP" role="3clFbG">
            <node concept="37vLTw" id="1CY1mmCABfQ" role="2Oq$k0">
              <ref role="3cqZAo" node="1CY1mmCAzrM" resolve="g" />
            </node>
            <node concept="liA8E" id="1CY1mmCABfR" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
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
        <node concept="3clFbH" id="1HEL0zW9Xox" role="3cqZAp" />
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
                <ref role="3cqZAo" node="7qPnRGG7D2k" resolve="y" />
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
              <node concept="37vLTw" id="7qPnRGGaIlC" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
              </node>
              <node concept="37vLTw" id="7qPnRGGaIHE" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGG7D2k" resolve="y" />
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
                <ref role="37wK5l" to="fbzs:~Path2D.createTransformedShape(java.awt.geom.AffineTransform):java.awt.Shape" resolve="createTransformedShape" />
                <node concept="2YIFZM" id="5fP$XwiVXh5" role="37wK5m">
                  <ref role="1Pybhc" to="fbzs:~AffineTransform" resolve="AffineTransform" />
                  <ref role="37wK5l" to="fbzs:~AffineTransform.getTranslateInstance(double,double):java.awt.geom.AffineTransform" resolve="getTranslateInstance" />
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
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint):void" resolve="setPaint" />
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
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
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
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint):void" resolve="setPaint" />
              <node concept="2YIFZM" id="61urdBx7060" role="37wK5m">
                <ref role="1Pybhc" node="2JGKyjit8pv" resolve="DiagramColors" />
                <ref role="37wK5l" node="3diMC1cjnxP" resolve="createGradientPaint" />
                <node concept="37vLTw" id="5fP$XwiOujJ" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zVZKKI" resolve="background" />
                </node>
                <node concept="2ShNRf" id="5fP$XwiOvzq" role="37wK5m">
                  <node concept="1pGfFk" id="5fP$XwiOI7y" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                    <node concept="37vLTw" id="5fP$XwiOR3E" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="5fP$XwiOR_e" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG7D2k" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGaIUS" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
                    </node>
                    <node concept="37vLTw" id="7qPnRGGaJPU" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG7kgi" resolve="myHeight" />
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
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
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
              <ref role="37wK5l" to="z60i:~Graphics2D.setPaint(java.awt.Paint):void" resolve="setPaint" />
              <node concept="2YIFZM" id="2r29JVYdIsj" role="37wK5m">
                <ref role="37wK5l" node="3diMC1cjnxP" resolve="createGradientPaint" />
                <ref role="1Pybhc" node="2JGKyjit8pv" resolve="DiagramColors" />
                <node concept="1rXfSq" id="2r29JVYdIsk" role="37wK5m">
                  <ref role="37wK5l" node="5fP$XwiTzF$" resolve="getTypeBackgroundColor" />
                </node>
                <node concept="2ShNRf" id="2r29JVYdIsl" role="37wK5m">
                  <node concept="1pGfFk" id="2r29JVYdIsm" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                    <node concept="37vLTw" id="2r29JVYdIsn" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="2r29JVYdIso" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG7D2k" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="2r29JVYdIsp" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
                    </node>
                    <node concept="37vLTw" id="2r29JVYdIsq" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG7kgi" resolve="myHeight" />
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
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
              <node concept="2ShNRf" id="5fP$XwiWgnI" role="37wK5m">
                <node concept="1pGfFk" id="5fP$XwiWgZY" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                  <node concept="3cpWs3" id="5fP$XwiWijg" role="37wK5m">
                    <node concept="37vLTw" id="5fP$XwiWiux" role="3uHU7w">
                      <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
                    </node>
                    <node concept="37vLTw" id="5fP$XwiWh9F" role="3uHU7B">
                      <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5fP$XwiWRHo" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zWdV0Q" resolve="typeNameY" />
                  </node>
                  <node concept="3cpWsd" id="5fP$XwiWz9c" role="37wK5m">
                    <node concept="17qRlL" id="5fP$XwiW$W4" role="3uHU7w">
                      <node concept="37vLTw" id="5fP$XwiW_By" role="3uHU7w">
                        <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
                      </node>
                      <node concept="3cmrfG" id="5fP$XwiWzLj" role="3uHU7B">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7qPnRGGaIUT" role="3uHU7B">
                      <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
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
        <node concept="3clFbF" id="1HEL0zWbsFc" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWbsFd" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWbsFe" role="2Oq$k0">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="liA8E" id="1HEL0zWbsFf" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
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
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
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
            <node concept="37vLTw" id="7qPnRGGjAcS" role="33vP2m">
              <ref role="3cqZAo" node="7qPnRGG7D2k" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zWciFS" role="3cqZAp">
          <node concept="1rXfSq" id="1HEL0zWciFR" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zWciFJ" resolve="drawPortColumLeftAligned" />
            <node concept="37vLTw" id="1HEL0zWcKPz" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
            </node>
            <node concept="37vLTw" id="1HEL0zWciFN" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="3cpWs3" id="5fP$XwiOSNB" role="37wK5m">
              <node concept="37vLTw" id="1HEL0zWciFO" role="3uHU7B">
                <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
              </node>
              <node concept="37vLTw" id="5fP$XwiPz4T" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
            </node>
            <node concept="37vLTw" id="1HEL0zWcQVK" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zWcQVG" resolve="topEventsY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zWcE$N" role="3cqZAp">
          <node concept="1rXfSq" id="1HEL0zWcE$O" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zWcvPQ" resolve="drawPortColumRightAligned" />
            <node concept="37vLTw" id="1HEL0zWcM1P" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
            </node>
            <node concept="37vLTw" id="1HEL0zWcE$Q" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="3cpWsd" id="5fP$XwiP8dV" role="37wK5m">
              <node concept="3cpWs3" id="1HEL0zWcGAJ" role="3uHU7B">
                <node concept="37vLTw" id="1HEL0zWcE$R" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
                </node>
                <node concept="37vLTw" id="7qPnRGGaIUO" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
                </node>
              </node>
              <node concept="37vLTw" id="5fP$XwiP_0Q" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
            </node>
            <node concept="37vLTw" id="1HEL0zWcQVL" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zWcQVG" resolve="topEventsY" />
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
            <node concept="37vLTw" id="5fP$Xwj2$Da" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
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
              <node concept="37vLTw" id="5fP$Xwj2DoJ" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
              </node>
              <node concept="3cpWs3" id="5fP$Xwj2CdQ" role="3uHU7B">
                <node concept="37vLTw" id="5fP$Xwj2_99" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
                </node>
                <node concept="37vLTw" id="7qPnRGGaIUR" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
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
        <node concept="3clFbF" id="1HEL0zWddvk" role="3cqZAp">
          <node concept="1rXfSq" id="1HEL0zWddvl" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zWciFJ" resolve="drawPortColumLeftAligned" />
            <node concept="37vLTw" id="1HEL0zWdfoM" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
            </node>
            <node concept="37vLTw" id="1HEL0zWddvn" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="3cpWs3" id="5fP$XwiWZVS" role="37wK5m">
              <node concept="37vLTw" id="5fP$XwiX09A" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="37vLTw" id="1HEL0zWddvo" role="3uHU7B">
                <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
              </node>
            </node>
            <node concept="37vLTw" id="1HEL0zWdeP3" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zWcTGN" resolve="topDatasY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zWddvq" role="3cqZAp">
          <node concept="1rXfSq" id="1HEL0zWddvr" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zWcvPQ" resolve="drawPortColumRightAligned" />
            <node concept="37vLTw" id="1HEL0zWdgKg" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
            </node>
            <node concept="37vLTw" id="1HEL0zWddvt" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="3cpWsd" id="5fP$XwiX1zu" role="37wK5m">
              <node concept="37vLTw" id="5fP$XwiX21b" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="3cpWs3" id="1HEL0zWddvu" role="3uHU7B">
                <node concept="37vLTw" id="1HEL0zWddvw" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
                </node>
                <node concept="37vLTw" id="7qPnRGGaIUU" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1HEL0zWdeZJ" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zWcTGN" resolve="topDatasY" />
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
            <node concept="37vLTw" id="5fP$Xwj2FtT" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
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
              <node concept="37vLTw" id="5fP$Xwj2Fu0" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
              </node>
              <node concept="3cpWs3" id="5fP$Xwj2Fu1" role="3uHU7B">
                <node concept="37vLTw" id="5fP$Xwj2Fu2" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
                </node>
                <node concept="37vLTw" id="7qPnRGGaIUP" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
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
        <node concept="3clFbF" id="6LU90BO36Vb" role="3cqZAp">
          <node concept="1rXfSq" id="6LU90BO36Vc" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zWciFJ" resolve="drawPortColumLeftAligned" />
            <node concept="37vLTw" id="6LU90BO38Cu" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
            </node>
            <node concept="37vLTw" id="6LU90BO36Ve" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="3cpWs3" id="6LU90BO36Vf" role="37wK5m">
              <node concept="37vLTw" id="6LU90BO36Vg" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="37vLTw" id="6LU90BO36Vh" role="3uHU7B">
                <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
              </node>
            </node>
            <node concept="37vLTw" id="6LU90BO3tYe" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BO3nYs" resolve="topSocketY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BO36Vj" role="3cqZAp">
          <node concept="1rXfSq" id="6LU90BO36Vk" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zWcvPQ" resolve="drawPortColumRightAligned" />
            <node concept="37vLTw" id="6LU90BO39EB" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
            </node>
            <node concept="37vLTw" id="6LU90BO36Vm" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="3cpWsd" id="6LU90BO36Vn" role="37wK5m">
              <node concept="37vLTw" id="6LU90BO36Vo" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="3cpWs3" id="6LU90BO36Vp" role="3uHU7B">
                <node concept="37vLTw" id="6LU90BO36Vq" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
                </node>
                <node concept="37vLTw" id="6LU90BO36Vr" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6LU90BO3upG" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BO3rmu" resolve="topPlugY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BO36Vt" role="3cqZAp">
          <node concept="1rXfSq" id="6LU90BO36Vu" role="3clFbG">
            <ref role="37wK5l" node="5fP$Xwj0Swo" resolve="drawPortIcons" />
            <node concept="37vLTw" id="6LU90BO3aMJ" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
            </node>
            <node concept="37vLTw" id="6LU90BO36Vw" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="37vLTw" id="6LU90BO36Vx" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
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
              <node concept="37vLTw" id="6LU90BO36VC" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
              </node>
              <node concept="3cpWs3" id="6LU90BO36VD" role="3uHU7B">
                <node concept="37vLTw" id="6LU90BO36VE" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
                </node>
                <node concept="37vLTw" id="6LU90BO36VF" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6LU90BO3uO3" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BO3rmu" resolve="topPlugY" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6LU90BO364H" role="3cqZAp" />
        <node concept="3clFbF" id="1HEL0zWdRaL" role="3cqZAp">
          <node concept="1rXfSq" id="1HEL0zWdRaM" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zWdnCq" resolve="drawAtCenter" />
            <node concept="37vLTw" id="1HEL0zWdS1h" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameText" />
            </node>
            <node concept="37vLTw" id="1HEL0zWdRaO" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7BMZ" resolve="g" />
            </node>
            <node concept="37vLTw" id="7qPnRGGar8D" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG7CoY" resolve="x" />
            </node>
            <node concept="37vLTw" id="1HEL0zWe8_V" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zWdV0Q" resolve="typeNameY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qPnRGG7zut" role="1B3o_S" />
      <node concept="3cqZAl" id="7qPnRGG7zyk" role="3clF45" />
      <node concept="37vLTG" id="7qPnRGG7BMZ" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="7qPnRGG8Ign" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGG7CoY" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7qPnRGG7CYK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7qPnRGG7D2k" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7qPnRGG7DC8" role="1tU5fm" />
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
                <node concept="37vLTw" id="5fP$XwiPGKY" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
                </node>
                <node concept="3cmrfG" id="5fP$XwiPEQv" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="37vLTw" id="7qPnRGG9uJ4" role="3uHU7B">
                <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9Cim" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cin" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10Oyi0" id="1HEL0zWarcX" role="1tU5fm" />
            <node concept="37vLTw" id="7qPnRGG9vAD" role="33vP2m">
              <ref role="3cqZAo" node="7qPnRGG7kgi" resolve="myHeight" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW9Cis" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW9Cit" role="3cpWs9">
            <property role="TrG5h" value="xLeft" />
            <node concept="10Oyi0" id="1HEL0zWarN$" role="1tU5fm" />
            <node concept="3cpWs3" id="5fP$XwiPAXY" role="33vP2m">
              <node concept="37vLTw" id="5fP$XwiPC3W" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
              </node>
              <node concept="37vLTw" id="7qPnRGG9wD7" role="3uHU7B">
                <ref role="3cqZAo" node="7qPnRGG9n6P" resolve="x" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(float,float):void" resolve="moveTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float):void" resolve="lineTo" />
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
              <ref role="37wK5l" to="fbzs:~Path2D.closePath():void" resolve="closePath" />
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
      <node concept="3Tm1VV" id="1HEL0zW9CkJ" role="1B3o_S" />
      <node concept="37vLTG" id="7qPnRGG9n6P" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7qPnRGG9n6O" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7qPnRGG9pXR" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7qPnRGG9pYr" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG9cLY" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWdnCq" role="jymVt">
      <property role="TrG5h" value="drawAtCenter" />
      <node concept="37vLTG" id="1HEL0zWdqRC" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="1HEL0zWdqRH" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~TextLine" resolve="TextLine" />
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zWdzy8" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1HEL0zWdzy9" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGG9GSP" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7qPnRGG9K1d" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1HEL0zWdtGK" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1HEL0zWdyyD" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1HEL0zWdnCt" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWdz5U" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zWdza3" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWdz5T" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zWdqRC" resolve="text" />
            </node>
            <node concept="liA8E" id="1HEL0zWdzvT" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~TextLine.paint(java.awt.Graphics,int,int):void" resolve="paint" />
              <node concept="37vLTw" id="1HEL0zWdDis" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zWdzy8" resolve="g" />
              </node>
              <node concept="3cpWsd" id="1HEL0zWdJvM" role="37wK5m">
                <node concept="FJ1c_" id="1HEL0zWdN9P" role="3uHU7w">
                  <node concept="3cmrfG" id="1HEL0zWdNdd" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="1HEL0zWdKsO" role="3uHU7B">
                    <node concept="37vLTw" id="1HEL0zWdK96" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zWdqRC" resolve="text" />
                    </node>
                    <node concept="liA8E" id="1HEL0zWdLi5" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="1HEL0zWdFqD" role="3uHU7B">
                  <node concept="37vLTw" id="7qPnRGG9Kel" role="3uHU7B">
                    <ref role="3cqZAo" node="7qPnRGG9GSP" resolve="x" />
                  </node>
                  <node concept="FJ1c_" id="1HEL0zWdIdX" role="3uHU7w">
                    <node concept="37vLTw" id="7qPnRGG9KHo" role="3uHU7B">
                      <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
                    </node>
                    <node concept="3cmrfG" id="1HEL0zWdICw" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1HEL0zWdOEc" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zWdtGK" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1HEL0zWdkSC" role="1B3o_S" />
      <node concept="3cqZAl" id="1HEL0zWdnqF" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5fP$Xwj0HLo" role="jymVt" />
    <node concept="3clFb_" id="5fP$Xwj0Swo" role="jymVt">
      <property role="TrG5h" value="drawPortIcons" />
      <node concept="3clFbS" id="5fP$Xwj0Swr" role="3clF47">
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
                <node concept="37vLTw" id="5fP$Xwj1pWK" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
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
                    <node concept="37vLTw" id="5fP$Xwj1uOF" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
                    </node>
                    <node concept="37vLTw" id="5fP$Xwj1vl9" role="37wK5m">
                      <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
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
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                  <node concept="2YIFZM" id="7pEplJksXrD" role="37wK5m">
                    <ref role="37wK5l" node="7pEplJksrRt" resolve="getColorFor" />
                    <ref role="1Pybhc" node="2JGKyjit8pv" resolve="DiagramColors" />
                    <node concept="2OqwBi" id="7qPnRGFoTt1" role="37wK5m">
                      <node concept="2GrUjf" id="7qPnRGFoTt2" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5fP$Xwj1dNg" resolve="port" />
                      </node>
                      <node concept="2OwXpG" id="7qPnRGFoTt3" role="2OqNvi">
                        <ref role="2Oxat5" node="5fP$XwiXktG" resolve="connecitonKind" />
                      </node>
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
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
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
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                  <node concept="10M0yZ" id="7qPnRGFoUJG" role="37wK5m">
                    <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                    <ref role="3cqZAo" to="z60i:~Color.black" resolve="black" />
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
                  <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
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
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
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
    <node concept="2tJIrI" id="1HEL0zWdi6N" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWciFJ" role="jymVt">
      <property role="TrG5h" value="drawPortColumLeftAligned" />
      <node concept="3Tm6S6" id="1HEL0zWciFK" role="1B3o_S" />
      <node concept="3cqZAl" id="1HEL0zWciFL" role="3clF45" />
      <node concept="37vLTG" id="1HEL0zWciFs" role="3clF46">
        <property role="TrG5h" value="portsColumn" />
        <node concept="3uibUv" id="1HEL0zWciFt" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5fP$XwiY3FW" role="11_B2D">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zWciFv" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1HEL0zWciFw" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zWciFx" role="3clF46">
        <property role="TrG5h" value="leftX" />
        <node concept="10Oyi0" id="1HEL0zWciFy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1HEL0zWciFz" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1HEL0zWciF$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1HEL0zWciFb" role="3clF47">
        <node concept="3cpWs8" id="1HEL0zWcuVS" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zWcuVV" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="1HEL0zWcuVQ" role="1tU5fm" />
            <node concept="1rXfSq" id="7qPnRGGueip" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zWcDZ1" role="3cqZAp" />
        <node concept="1DcWWT" id="1HEL0zWciFc" role="3cqZAp">
          <node concept="3clFbS" id="1HEL0zWciFd" role="2LFqv$">
            <node concept="3clFbF" id="1HEL0zWciFe" role="3cqZAp">
              <node concept="2OqwBi" id="1HEL0zWciFf" role="3clFbG">
                <node concept="2OqwBi" id="5fP$XwiYfY_" role="2Oq$k0">
                  <node concept="37vLTw" id="1HEL0zWciFg" role="2Oq$k0">
                    <ref role="3cqZAo" node="1HEL0zWciFp" resolve="port" />
                  </node>
                  <node concept="2OwXpG" id="5fP$XwiYg92" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
                <node concept="liA8E" id="1HEL0zWciFh" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.paint(java.awt.Graphics,int,int):void" resolve="paint" />
                  <node concept="37vLTw" id="1HEL0zWciFF" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zWciFv" resolve="g" />
                  </node>
                  <node concept="37vLTw" id="1HEL0zWciFB" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zWciFx" resolve="leftX" />
                  </node>
                  <node concept="37vLTw" id="1HEL0zWciFE" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zWciFz" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1HEL0zWciFl" role="3cqZAp">
              <node concept="d57v9" id="1HEL0zWciFm" role="3clFbG">
                <node concept="37vLTw" id="1HEL0zWciFC" role="37vLTJ">
                  <ref role="3cqZAo" node="1HEL0zWciFz" resolve="y" />
                </node>
                <node concept="37vLTw" id="1HEL0zWcvqC" role="37vLTx">
                  <ref role="3cqZAo" node="1HEL0zWcuVV" resolve="lineSize" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1HEL0zWciFp" role="1Duv9x">
            <property role="TrG5h" value="port" />
            <node concept="3uibUv" id="5fP$XwiYenz" role="1tU5fm">
              <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
            </node>
          </node>
          <node concept="37vLTw" id="1HEL0zWciFG" role="1DdaDG">
            <ref role="3cqZAo" node="1HEL0zWciFs" resolve="portsColumn" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1HEL0zWcvPQ" role="jymVt">
      <property role="TrG5h" value="drawPortColumRightAligned" />
      <node concept="3Tm6S6" id="1HEL0zWcvPR" role="1B3o_S" />
      <node concept="3cqZAl" id="1HEL0zWcvPS" role="3clF45" />
      <node concept="37vLTG" id="1HEL0zWcvPT" role="3clF46">
        <property role="TrG5h" value="portsColumn" />
        <node concept="3uibUv" id="5fP$XwiYgk1" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5fP$XwiYgk2" role="11_B2D">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zWcvPW" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1HEL0zWcvPX" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zWcvPY" role="3clF46">
        <property role="TrG5h" value="rightX" />
        <node concept="10Oyi0" id="1HEL0zWcvPZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1HEL0zWcvQ0" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1HEL0zWcvQ1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1HEL0zWcvQ2" role="3clF47">
        <node concept="3cpWs8" id="1HEL0zWcvQ3" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zWcvQ4" role="3cpWs9">
            <property role="TrG5h" value="fontSize" />
            <node concept="10Oyi0" id="1HEL0zWcvQ5" role="1tU5fm" />
            <node concept="1rXfSq" id="7qPnRGGueGj" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGGu9sq" resolve="getLineSize" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zWczt_" role="3cqZAp" />
        <node concept="1DcWWT" id="1HEL0zWcvQ7" role="3cqZAp">
          <node concept="3clFbS" id="1HEL0zWcvQ8" role="2LFqv$">
            <node concept="3clFbF" id="1HEL0zWcvQ9" role="3cqZAp">
              <node concept="2OqwBi" id="1HEL0zWcvQa" role="3clFbG">
                <node concept="liA8E" id="1HEL0zWcvQc" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.paint(java.awt.Graphics,int,int):void" resolve="paint" />
                  <node concept="37vLTw" id="1HEL0zWcvQd" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zWcvPW" resolve="g" />
                  </node>
                  <node concept="3cpWsd" id="1HEL0zWc$p$" role="37wK5m">
                    <node concept="37vLTw" id="1HEL0zWcvQe" role="3uHU7B">
                      <ref role="3cqZAo" node="1HEL0zWcvPY" resolve="rightX" />
                    </node>
                    <node concept="2OqwBi" id="1HEL0zWc_2$" role="3uHU7w">
                      <node concept="2OqwBi" id="5fP$XwiYuo3" role="2Oq$k0">
                        <node concept="37vLTw" id="1HEL0zWc$KR" role="2Oq$k0">
                          <ref role="3cqZAo" node="1HEL0zWcvQk" resolve="port" />
                        </node>
                        <node concept="2OwXpG" id="5fP$XwiYuP9" role="2OqNvi">
                          <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1HEL0zWc_fl" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1HEL0zWcvQf" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zWcvQ0" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5fP$XwiYs1O" role="2Oq$k0">
                  <node concept="37vLTw" id="5fP$XwiYv9N" role="2Oq$k0">
                    <ref role="3cqZAo" node="1HEL0zWcvQk" resolve="port" />
                  </node>
                  <node concept="2OwXpG" id="5fP$XwiYs1Q" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1HEL0zWcvQg" role="3cqZAp">
              <node concept="d57v9" id="1HEL0zWcvQh" role="3clFbG">
                <node concept="37vLTw" id="1HEL0zWcvQi" role="37vLTJ">
                  <ref role="3cqZAo" node="1HEL0zWcvQ0" resolve="y" />
                </node>
                <node concept="37vLTw" id="1HEL0zWcvQj" role="37vLTx">
                  <ref role="3cqZAo" node="1HEL0zWcvQ4" resolve="fontSize" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1HEL0zWcvQk" role="1Duv9x">
            <property role="TrG5h" value="port" />
            <node concept="3uibUv" id="5fP$XwiYsk5" role="1tU5fm">
              <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
            </node>
          </node>
          <node concept="37vLTw" id="1HEL0zWcvQm" role="1DdaDG">
            <ref role="3cqZAo" node="1HEL0zWcvPT" resolve="portsColumn" />
          </node>
        </node>
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
              <node concept="37vLTw" id="7qPnRGG9iOI" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG74XY" resolve="myStyle" />
              </node>
              <node concept="liA8E" id="5fP$XwiGial" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
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
            <node concept="10M0yZ" id="5fP$XwiGLi$" role="3K4E3e">
              <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
              <ref role="3cqZAo" to="z60i:~Color.LIGHT_GRAY" resolve="LIGHT_GRAY" />
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
        <node concept="3cpWs8" id="5fP$XwiFmCs" role="3cqZAp">
          <node concept="3cpWsn" id="5fP$XwiFmCt" role="3cpWs9">
            <property role="TrG5h" value="foreground" />
            <node concept="3uibUv" id="5fP$XwiFmCp" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="2OqwBi" id="5fP$XwiFmCu" role="33vP2m">
              <node concept="37vLTw" id="7qPnRGG9PX_" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG74XY" resolve="myStyle" />
              </node>
              <node concept="liA8E" id="5fP$XwiFmCw" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                <node concept="10M0yZ" id="5fP$XwiFmCx" role="37wK5m">
                  <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_COLOR" resolve="TEXT_COLOR" />
                  <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1HEL0zW8VN4" role="3cqZAp">
          <node concept="3K4zz7" id="5fP$XwiFFge" role="3cqZAk">
            <node concept="10M0yZ" id="5fP$XwiFVvO" role="3K4E3e">
              <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
              <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
            </node>
            <node concept="37vLTw" id="5fP$XwiGbhY" role="3K4GZi">
              <ref role="3cqZAo" node="5fP$XwiFmCt" resolve="foreground" />
            </node>
            <node concept="3clFbC" id="5fP$XwiFAMb" role="3K4Cdx">
              <node concept="10Nm6u" id="5fP$XwiFDHg" role="3uHU7w" />
              <node concept="37vLTw" id="5fP$XwiFmCy" role="3uHU7B">
                <ref role="3cqZAo" node="5fP$XwiFmCt" resolve="foreground" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG7yPA" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGG7cIr" role="jymVt">
      <property role="TrG5h" value="syncronize" />
      <node concept="3clFbS" id="7qPnRGG7cIu" role="3clF47">
        <node concept="3clFbF" id="7qPnRGG7mG7" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGG7mG8" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGG7mG9" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameText" />
            </node>
            <node concept="liA8E" id="7qPnRGG7mGa" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~TextLine.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="7qPnRGG7mGb" role="37wK5m">
                <node concept="37vLTw" id="7qPnRGG7GHJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbModel" />
                </node>
                <node concept="liA8E" id="7qPnRGG7mGd" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYRNg" resolve="getTypeName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGG7mGe" role="3cqZAp" />
        <node concept="3clFbF" id="7qPnRGG7mGj" role="3cqZAp">
          <node concept="2OqwBi" id="7qPnRGG7mGk" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGG7mGl" role="2Oq$k0">
              <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameText" />
            </node>
            <node concept="liA8E" id="7qPnRGG7mGm" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~TextLine.relayout():void" resolve="relayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGG7mGn" role="3cqZAp" />
        <node concept="3clFbF" id="7qPnRGG7mGo" role="3cqZAp">
          <node concept="1rXfSq" id="7qPnRGG7mGp" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="updatePorts" />
            <node concept="37vLTw" id="7qPnRGG7mGq" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
            </node>
            <node concept="2OqwBi" id="7qPnRGG7mGr" role="37wK5m">
              <node concept="37vLTw" id="7qPnRGG7GL1" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbModel" />
              </node>
              <node concept="liA8E" id="7qPnRGG7mGt" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:1HEL0zVYKgq" resolve="getEventInputPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGG7mGu" role="3cqZAp">
          <node concept="1rXfSq" id="7qPnRGG7mGv" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="updatePorts" />
            <node concept="37vLTw" id="7qPnRGG7mGw" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
            </node>
            <node concept="2OqwBi" id="7qPnRGG7mGx" role="37wK5m">
              <node concept="37vLTw" id="7qPnRGG7H0P" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbModel" />
              </node>
              <node concept="liA8E" id="7qPnRGG7mGz" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:1HEL0zVYKjD" resolve="getEventOutputPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGG7mG$" role="3cqZAp">
          <node concept="1rXfSq" id="7qPnRGG7mG_" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="updatePorts" />
            <node concept="37vLTw" id="7qPnRGG7mGA" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
            </node>
            <node concept="2OqwBi" id="7qPnRGG7mGB" role="37wK5m">
              <node concept="37vLTw" id="7qPnRGG7GSV" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbModel" />
              </node>
              <node concept="liA8E" id="7qPnRGG7mGD" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:1HEL0zVYNd7" resolve="getDataInputPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGG7mGE" role="3cqZAp">
          <node concept="1rXfSq" id="7qPnRGG7mGF" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="updatePorts" />
            <node concept="37vLTw" id="7qPnRGG7mGG" role="37wK5m">
              <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
            </node>
            <node concept="2OqwBi" id="7qPnRGG7mGH" role="37wK5m">
              <node concept="37vLTw" id="7qPnRGG7H8J" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbModel" />
              </node>
              <node concept="liA8E" id="7qPnRGG7mGJ" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:1HEL0zVYNdd" resolve="getDataOutputPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BNTMCl" role="3cqZAp">
          <node concept="1rXfSq" id="6LU90BNTMCm" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="updatePorts" />
            <node concept="37vLTw" id="6LU90BNTNF2" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
            </node>
            <node concept="2OqwBi" id="6LU90BNTMCo" role="37wK5m">
              <node concept="37vLTw" id="6LU90BNTMCp" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbModel" />
              </node>
              <node concept="liA8E" id="6LU90BNTMCq" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:6LU90BNRs9B" resolve="getSocketPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BNTMCf" role="3cqZAp">
          <node concept="1rXfSq" id="6LU90BNTMCg" role="3clFbG">
            <ref role="37wK5l" node="1HEL0zW1dyJ" resolve="updatePorts" />
            <node concept="37vLTw" id="6LU90BNTNYK" role="37wK5m">
              <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
            </node>
            <node concept="2OqwBi" id="6LU90BNTMCi" role="37wK5m">
              <node concept="37vLTw" id="6LU90BNTMCj" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGG7dxg" resolve="fbModel" />
              </node>
              <node concept="liA8E" id="6LU90BNTMCk" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:6LU90BNRs9H" resolve="getPlugPorts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGG7mGK" role="3cqZAp" />
        <node concept="3clFbF" id="7qPnRGG7nih" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGG7qP1" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGG7nif" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGG7kgi" resolve="myHeight" />
            </node>
            <node concept="1rXfSq" id="7qPnRGG7rjQ" role="37vLTx">
              <ref role="37wK5l" node="1HEL0zW6oqn" resolve="calculateHeight" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGG7rUg" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGG7vtl" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGG7rUe" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
            </node>
            <node concept="1rXfSq" id="7qPnRGG7mGQ" role="37vLTx">
              <ref role="37wK5l" node="1HEL0zW2rlD" resolve="calculateWidth" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qPnRGG7cki" role="1B3o_S" />
      <node concept="3cqZAl" id="7qPnRGG7d8J" role="3clF45" />
      <node concept="37vLTG" id="7qPnRGG7dxg" role="3clF46">
        <property role="TrG5h" value="fbModel" />
        <node concept="3uibUv" id="7qPnRGG7dxf" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1HEL0zVYBFE" resolve="FunctionBlockView" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG7JnI" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zW1dyJ" role="jymVt">
      <property role="TrG5h" value="updatePorts" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="1HEL0zW1dyM" role="3clF47">
        <node concept="3cpWs8" id="1HEL0zW1E1J" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW1E1K" role="3cpWs9">
            <property role="TrG5h" value="linesCount" />
            <node concept="10Oyi0" id="1HEL0zW1E1_" role="1tU5fm" />
            <node concept="2OqwBi" id="1HEL0zW1E1L" role="33vP2m">
              <node concept="37vLTw" id="1HEL0zW1E1M" role="2Oq$k0">
                <ref role="3cqZAo" node="1HEL0zW1epr" resolve="portsColumn" />
              </node>
              <node concept="liA8E" id="1HEL0zW1E1N" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW1G8k" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW1G8l" role="3cpWs9">
            <property role="TrG5h" value="portsCount" />
            <node concept="10Oyi0" id="1HEL0zW1G8j" role="1tU5fm" />
            <node concept="2OqwBi" id="1HEL0zW1G8m" role="33vP2m">
              <node concept="37vLTw" id="1HEL0zW1G8n" role="2Oq$k0">
                <ref role="3cqZAo" node="1HEL0zW1fw7" resolve="ports" />
              </node>
              <node concept="liA8E" id="1HEL0zW1G8o" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1HEL0zW1Aj0" role="3cqZAp">
          <node concept="3cpWsn" id="1HEL0zW1Aj1" role="3cpWs9">
            <property role="TrG5h" value="minCount" />
            <node concept="10Oyi0" id="1HEL0zW1AiG" role="1tU5fm" />
            <node concept="2YIFZM" id="1HEL0zW1Aj2" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
              <node concept="37vLTw" id="1HEL0zW1E1O" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW1E1K" resolve="linesCount" />
              </node>
              <node concept="37vLTw" id="1HEL0zW1G8p" role="37wK5m">
                <ref role="3cqZAo" node="1HEL0zW1G8l" resolve="portsCount" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5fP$XwiZM7c" role="3cqZAp" />
        <node concept="1Dw8fO" id="5fP$XwiZHcJ" role="3cqZAp">
          <node concept="3uNrnE" id="5fP$XwiZHcK" role="1Dwrff">
            <node concept="37vLTw" id="5fP$XwiZHcL" role="2$L3a6">
              <ref role="3cqZAo" node="5fP$XwiZHcM" resolve="i" />
            </node>
          </node>
          <node concept="3cpWsn" id="5fP$XwiZHcM" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5fP$XwiZHcN" role="1tU5fm" />
            <node concept="37vLTw" id="5fP$XwiZHcO" role="33vP2m">
              <ref role="3cqZAo" node="1HEL0zW1Aj1" resolve="minCount" />
            </node>
          </node>
          <node concept="3clFbS" id="5fP$XwiZHcP" role="2LFqv$">
            <node concept="3clFbF" id="5fP$XwiZHcQ" role="3cqZAp">
              <node concept="2OqwBi" id="5fP$XwiZHcR" role="3clFbG">
                <node concept="37vLTw" id="5fP$XwiZHcS" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zW1epr" resolve="portsColumn" />
                </node>
                <node concept="liA8E" id="5fP$XwiZHcT" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="2ShNRf" id="5fP$XwiZQ0d" role="37wK5m">
                    <node concept="1pGfFk" id="5fP$XwiZQIW" role="2ShVmc">
                      <ref role="37wK5l" node="5fP$XwiXwFK" resolve="FBCellComponent.FBPortData" />
                      <node concept="37vLTw" id="7qPnRGG7XQY" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGG74XY" resolve="myStyle" />
                      </node>
                      <node concept="2ShNRf" id="5fP$XwiZR$e" role="37wK5m">
                        <node concept="1pGfFk" id="5fP$XwiZSg1" role="2ShVmc">
                          <ref role="37wK5l" to="5ueo:~StyleImpl.&lt;init&gt;()" resolve="StyleImpl" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="5fP$XwiZHd4" role="1Dwp0S">
            <node concept="37vLTw" id="5fP$XwiZHd5" role="3uHU7w">
              <ref role="3cqZAo" node="1HEL0zW1G8l" resolve="portsCount" />
            </node>
            <node concept="37vLTw" id="5fP$XwiZHd6" role="3uHU7B">
              <ref role="3cqZAo" node="5fP$XwiZHcM" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="1HEL0zW1Jt_" role="3cqZAp">
          <node concept="3uNrnE" id="1HEL0zW1JtA" role="1Dwrff">
            <node concept="37vLTw" id="1HEL0zW1JtB" role="2$L3a6">
              <ref role="3cqZAo" node="1HEL0zW1JtC" resolve="i" />
            </node>
          </node>
          <node concept="3cpWsn" id="1HEL0zW1JtC" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1HEL0zW1JtD" role="1tU5fm" />
            <node concept="37vLTw" id="1HEL0zW1Kmi" role="33vP2m">
              <ref role="3cqZAo" node="1HEL0zW1Aj1" resolve="minCount" />
            </node>
          </node>
          <node concept="3clFbS" id="1HEL0zW1JtF" role="2LFqv$">
            <node concept="3clFbF" id="1HEL0zW1LJ$" role="3cqZAp">
              <node concept="2OqwBi" id="1HEL0zW1Mg_" role="3clFbG">
                <node concept="37vLTw" id="1HEL0zW1LJz" role="2Oq$k0">
                  <ref role="3cqZAo" node="1HEL0zW1epr" resolve="portsColumn" />
                </node>
                <node concept="liA8E" id="1HEL0zW1OfM" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.remove(int):java.lang.Object" resolve="remove" />
                  <node concept="37vLTw" id="1HEL0zW1Qrb" role="37wK5m">
                    <ref role="3cqZAo" node="1HEL0zW1Aj1" resolve="minCount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="1HEL0zW1JtT" role="1Dwp0S">
            <node concept="37vLTw" id="1HEL0zW1KKI" role="3uHU7w">
              <ref role="3cqZAo" node="1HEL0zW1E1K" resolve="linesCount" />
            </node>
            <node concept="37vLTw" id="1HEL0zW1JtV" role="3uHU7B">
              <ref role="3cqZAo" node="1HEL0zW1JtC" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5fP$XwiZGSg" role="3cqZAp" />
        <node concept="1Dw8fO" id="1HEL0zW1gx_" role="3cqZAp">
          <node concept="3uNrnE" id="1HEL0zW1rJT" role="1Dwrff">
            <node concept="37vLTw" id="1HEL0zW1rJV" role="2$L3a6">
              <ref role="3cqZAo" node="1HEL0zW1gxA" resolve="i" />
            </node>
          </node>
          <node concept="3cpWsn" id="1HEL0zW1gxA" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1HEL0zW1gzn" role="1tU5fm" />
            <node concept="3cmrfG" id="1HEL0zW1oiL" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="1HEL0zW1gxB" role="2LFqv$">
            <node concept="3cpWs8" id="5fP$XwiYDu0" role="3cqZAp">
              <node concept="3cpWsn" id="5fP$XwiYDu1" role="3cpWs9">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5fP$XwiYDtT" role="1tU5fm">
                  <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
                </node>
                <node concept="2OqwBi" id="5fP$XwiYDu2" role="33vP2m">
                  <node concept="37vLTw" id="5fP$XwiYDu3" role="2Oq$k0">
                    <ref role="3cqZAo" node="1HEL0zW1fw7" resolve="ports" />
                  </node>
                  <node concept="liA8E" id="5fP$XwiYDu4" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                    <node concept="37vLTw" id="5fP$XwiYDu5" role="37wK5m">
                      <ref role="3cqZAo" node="1HEL0zW1gxA" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5fP$XwiYE6W" role="3cqZAp">
              <node concept="3cpWsn" id="5fP$XwiYE6X" role="3cpWs9">
                <property role="TrG5h" value="portData" />
                <node concept="3uibUv" id="5fP$XwiYE6Q" role="1tU5fm">
                  <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
                </node>
                <node concept="2OqwBi" id="5fP$XwiYE6Y" role="33vP2m">
                  <node concept="37vLTw" id="5fP$XwiYE6Z" role="2Oq$k0">
                    <ref role="3cqZAo" node="1HEL0zW1epr" resolve="portsColumn" />
                  </node>
                  <node concept="liA8E" id="5fP$XwiYE70" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                    <node concept="37vLTw" id="5fP$XwiYE71" role="37wK5m">
                      <ref role="3cqZAo" node="1HEL0zW1gxA" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5fP$XwiYFpT" role="3cqZAp" />
            <node concept="3clFbF" id="1HEL0zW1sO0" role="3cqZAp">
              <node concept="2OqwBi" id="1HEL0zW1vI$" role="3clFbG">
                <node concept="2OqwBi" id="5fP$XwiYAoK" role="2Oq$k0">
                  <node concept="37vLTw" id="5fP$XwiYE72" role="2Oq$k0">
                    <ref role="3cqZAo" node="5fP$XwiYE6X" resolve="portData" />
                  </node>
                  <node concept="2OwXpG" id="5fP$XwiYDn1" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
                <node concept="liA8E" id="1HEL0zW1yq4" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.setText(java.lang.String):void" resolve="setText" />
                  <node concept="2OqwBi" id="1HEL0zW1_vN" role="37wK5m">
                    <node concept="37vLTw" id="5fP$XwiYDu6" role="2Oq$k0">
                      <ref role="3cqZAo" node="5fP$XwiYDu1" resolve="port" />
                    </node>
                    <node concept="liA8E" id="1HEL0zW1Ac7" role="2OqNvi">
                      <ref role="37wK5l" to="2xsi:1HEL0zWeift" resolve="getPortName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fP$XwiYFTa" role="3cqZAp">
              <node concept="37vLTI" id="5fP$XwiYIQD" role="3clFbG">
                <node concept="2OqwBi" id="5fP$XwiYJjq" role="37vLTJ">
                  <node concept="37vLTw" id="5fP$XwiYJ80" role="2Oq$k0">
                    <ref role="3cqZAo" node="5fP$XwiYE6X" resolve="portData" />
                  </node>
                  <node concept="2OwXpG" id="5fP$XwiYJrR" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXktG" resolve="connecitonKind" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5fP$XwiYGaq" role="37vLTx">
                  <node concept="37vLTw" id="5fP$XwiYFT8" role="2Oq$k0">
                    <ref role="3cqZAo" node="5fP$XwiYDu1" resolve="port" />
                  </node>
                  <node concept="liA8E" id="5fP$XwiYILm" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:5fP$XwiOazh" resolve="getConnecitonKind" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5fP$XwiYZiR" role="3cqZAp">
              <node concept="3cpWsn" id="5fP$XwiYZiS" role="3cpWs9">
                <property role="TrG5h" value="hint" />
                <node concept="3uibUv" id="5fP$XwiYZiL" role="1tU5fm">
                  <ref role="3uigEE" to="2xsi:1HEL0zVYI8O" resolve="PortHint" />
                </node>
                <node concept="2OqwBi" id="5fP$XwiYZiT" role="33vP2m">
                  <node concept="37vLTw" id="5fP$XwiYZiU" role="2Oq$k0">
                    <ref role="3cqZAo" node="5fP$XwiYDu1" resolve="port" />
                  </node>
                  <node concept="liA8E" id="5fP$XwiYZiV" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:1HEL0zWeifz" resolve="getHint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fP$XwiYZLe" role="3cqZAp">
              <node concept="37vLTI" id="5fP$XwiZ6uJ" role="3clFbG">
                <node concept="3y3z36" id="5fP$XwiZ7x5" role="37vLTx">
                  <node concept="10Nm6u" id="5fP$XwiZ7Dn" role="3uHU7w" />
                  <node concept="37vLTw" id="5fP$XwiZ6Cf" role="3uHU7B">
                    <ref role="3cqZAo" node="5fP$XwiYZiS" resolve="hint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5fP$XwiYZXA" role="37vLTJ">
                  <node concept="37vLTw" id="5fP$XwiYZLc" role="2Oq$k0">
                    <ref role="3cqZAo" node="5fP$XwiYE6X" resolve="portData" />
                  </node>
                  <node concept="2OwXpG" id="5fP$XwiZ2Er" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiYTfE" resolve="hasHint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5fP$XwiZ7R2" role="3cqZAp">
              <node concept="3clFbS" id="5fP$XwiZ7R4" role="3clFbx">
                <node concept="3clFbF" id="5fP$XwiZ98s" role="3cqZAp">
                  <node concept="2OqwBi" id="5fP$XwiZc13" role="3clFbG">
                    <node concept="2OqwBi" id="5fP$XwiZ9g3" role="2Oq$k0">
                      <node concept="37vLTw" id="5fP$XwiZ98q" role="2Oq$k0">
                        <ref role="3cqZAo" node="5fP$XwiYE6X" resolve="portData" />
                      </node>
                      <node concept="2OwXpG" id="5fP$XwiZ9ok" role="2OqNvi">
                        <ref role="2Oxat5" node="5fP$XwiXtkZ" resolve="hintText" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5fP$XwiZgw_" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~TextLine.setText(java.lang.String):void" resolve="setText" />
                      <node concept="2OqwBi" id="5fP$XwiZgK1" role="37wK5m">
                        <node concept="37vLTw" id="5fP$XwiZgAe" role="2Oq$k0">
                          <ref role="3cqZAo" node="5fP$XwiYZiS" resolve="hint" />
                        </node>
                        <node concept="liA8E" id="5fP$XwiZgTf" role="2OqNvi">
                          <ref role="37wK5l" to="2xsi:1HEL0zVYJUO" resolve="getHintText" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1X3_iC" id="42vv4xsGTDr" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="3clFbF" id="5fP$XwiZhPj" role="8Wnug">
                    <node concept="2OqwBi" id="5fP$XwiZkyT" role="3clFbG">
                      <node concept="2OqwBi" id="5fP$XwiZhPl" role="2Oq$k0">
                        <node concept="37vLTw" id="5fP$XwiZhPm" role="2Oq$k0">
                          <ref role="3cqZAo" node="5fP$XwiYE6X" resolve="portData" />
                        </node>
                        <node concept="2OwXpG" id="5fP$XwiZFPt" role="2OqNvi">
                          <ref role="2Oxat5" node="5fP$XwiZyCq" resolve="hintStyle" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5fP$XwiZp2r" role="2OqNvi">
                        <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object):void" resolve="set" />
                        <node concept="10M0yZ" id="5fP$XwiZG9m" role="37wK5m">
                          <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_COLOR" resolve="TEXT_COLOR" />
                          <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                        </node>
                        <node concept="2OqwBi" id="5fP$XwiZGEE" role="37wK5m">
                          <node concept="37vLTw" id="5fP$XwiZGnO" role="2Oq$k0">
                            <ref role="3cqZAo" node="5fP$XwiYZiS" resolve="hint" />
                          </node>
                          <node concept="liA8E" id="5fP$XwiZGPk" role="2OqNvi">
                            <ref role="37wK5l" to="2xsi:1HEL0zVYJUU" resolve="getHintColor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5fP$XwiZ8XA" role="3clFbw">
                <node concept="10Nm6u" id="5fP$XwiZ91C" role="3uHU7w" />
                <node concept="37vLTw" id="5fP$XwiZ83z" role="3uHU7B">
                  <ref role="3cqZAo" node="5fP$XwiYZiS" resolve="hint" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="1HEL0zW1hvp" role="1Dwp0S">
            <node concept="37vLTw" id="5fP$XwiZIBt" role="3uHU7w">
              <ref role="3cqZAo" node="1HEL0zW1G8l" resolve="portsCount" />
            </node>
            <node concept="37vLTw" id="1HEL0zW1gCB" role="3uHU7B">
              <ref role="3cqZAo" node="1HEL0zW1gxA" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5fP$XwiZTR1" role="3cqZAp" />
        <node concept="1DcWWT" id="5fP$XwiKK7n" role="3cqZAp">
          <node concept="3clFbS" id="5fP$XwiKK7p" role="2LFqv$">
            <node concept="3clFbF" id="5fP$XwiKN5y" role="3cqZAp">
              <node concept="2OqwBi" id="5fP$XwiKN9F" role="3clFbG">
                <node concept="2OqwBi" id="5fP$Xwj02Mm" role="2Oq$k0">
                  <node concept="37vLTw" id="5fP$XwiKN5w" role="2Oq$k0">
                    <ref role="3cqZAo" node="5fP$XwiKK7q" resolve="port" />
                  </node>
                  <node concept="2OwXpG" id="5fP$Xwj037D" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXtkZ" resolve="hintText" />
                  </node>
                </node>
                <node concept="liA8E" id="5fP$XwiKNzc" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.relayout():void" resolve="relayout" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fP$Xwj039y" role="3cqZAp">
              <node concept="2OqwBi" id="5fP$Xwj039z" role="3clFbG">
                <node concept="2OqwBi" id="5fP$Xwj039$" role="2Oq$k0">
                  <node concept="37vLTw" id="5fP$Xwj039_" role="2Oq$k0">
                    <ref role="3cqZAo" node="5fP$XwiKK7q" resolve="port" />
                  </node>
                  <node concept="2OwXpG" id="5fP$Xwj041U" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
                <node concept="liA8E" id="5fP$Xwj039B" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.relayout():void" resolve="relayout" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5fP$XwiKK7q" role="1Duv9x">
            <property role="TrG5h" value="port" />
            <node concept="3uibUv" id="5fP$XwiZVQS" role="1tU5fm">
              <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
            </node>
          </node>
          <node concept="37vLTw" id="5fP$XwiKMfh" role="1DdaDG">
            <ref role="3cqZAo" node="1HEL0zW1epr" resolve="portsColumn" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1HEL0zW1cXz" role="1B3o_S" />
      <node concept="3cqZAl" id="1HEL0zW1dYQ" role="3clF45" />
      <node concept="37vLTG" id="1HEL0zW1epr" role="3clF46">
        <property role="TrG5h" value="portsColumn" />
        <node concept="3uibUv" id="1HEL0zW1epq" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5fP$XwiY$zm" role="11_B2D">
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zW1fw7" role="3clF46">
        <property role="TrG5h" value="ports" />
        <node concept="3uibUv" id="1HEL0zW1fVa" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1HEL0zWejwP" role="11_B2D">
            <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortView" />
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
                <ref role="3cqZAo" node="1HEL0zW0T3f" resolve="myTypeNameText" />
              </node>
              <node concept="liA8E" id="1HEL0zW4ha0" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
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
              <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
              <node concept="1rXfSq" id="7qPnRGGab$I" role="37wK5m">
                <ref role="37wK5l" node="1HEL0zW5EQE" resolve="portsColumnWidth" />
                <node concept="37vLTw" id="7qPnRGG87be" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
                </node>
              </node>
              <node concept="2YIFZM" id="6LU90BO2vpD" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
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
              <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="1rXfSq" id="7qPnRGGahyw" role="37wK5m">
                <ref role="37wK5l" node="1HEL0zW5EQE" resolve="portsColumnWidth" />
                <node concept="37vLTw" id="7qPnRGG87b2" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
                </node>
              </node>
              <node concept="2YIFZM" id="6LU90BO2R5p" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
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
            <node concept="3cpWs3" id="5fP$XwiNX_q" role="33vP2m">
              <node concept="17qRlL" id="5fP$XwiO2tm" role="3uHU7w">
                <node concept="37vLTw" id="5fP$XwiO5DR" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG6BLI" resolve="INNER_BORDER_PADDING" />
                </node>
                <node concept="3cmrfG" id="6tmliaAi1mb" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="3cpWs3" id="1HEL0zW3U7p" role="3uHU7B">
                <node concept="3cpWs3" id="1HEL0zW3IjY" role="3uHU7B">
                  <node concept="37vLTw" id="1HEL0zW3zar" role="3uHU7B">
                    <ref role="3cqZAo" node="1HEL0zW2y4s" resolve="inputsWidth" />
                  </node>
                  <node concept="37vLTw" id="1HEL0zW3IAk" role="3uHU7w">
                    <ref role="3cqZAo" node="1HEL0zW3qok" resolve="outputsWidth" />
                  </node>
                </node>
                <node concept="37vLTw" id="1HEL0zW3UGf" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG6BLC" resolve="CENTER_PADDING" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HEL0zW4hu_" role="3cqZAp" />
        <node concept="3cpWs6" id="1HEL0zW5QKF" role="3cqZAp">
          <node concept="3cpWs3" id="6tmliaAigOi" role="3cqZAk">
            <node concept="3cpWs3" id="5fP$XwiNz2P" role="3uHU7B">
              <node concept="2YIFZM" id="1HEL0zW5T8p" role="3uHU7B">
                <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="37vLTw" id="1HEL0zW6dC9" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW3ynb" resolve="regularRowsWidth" />
                </node>
                <node concept="37vLTw" id="1HEL0zW6hGu" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW3W8N" resolve="typeNameRowWidth" />
                </node>
              </node>
              <node concept="17qRlL" id="5fP$XwiNCMF" role="3uHU7w">
                <node concept="3cmrfG" id="5fP$XwiN$Iz" role="3uHU7B">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="5fP$XwiNFhV" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGG6BLz" resolve="PORT_SIZE" />
                </node>
              </node>
            </node>
            <node concept="17qRlL" id="6tmliaAhPJf" role="3uHU7w">
              <node concept="37vLTw" id="6tmliaAhSoJ" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLI" resolve="INNER_BORDER_PADDING" />
              </node>
              <node concept="3cmrfG" id="6tmliaAhD_m" role="3uHU7B">
                <property role="3cmrfH" value="2" />
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
          <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
        </node>
      </node>
      <node concept="2YIFZM" id="1HEL0zW396I" role="33vP2m">
        <ref role="37wK5l" to="33ny:~Comparator.comparing(java.util.function.Function):java.util.Comparator" resolve="comparing" />
        <ref role="1Pybhc" to="33ny:~Comparator" resolve="Comparator" />
        <node concept="2ShNRf" id="1HEL0zW3hfC" role="37wK5m">
          <node concept="YeOm9" id="1HEL0zW3hUi" role="2ShVmc">
            <node concept="1Y3b0j" id="1HEL0zW3hUl" role="YeSDq">
              <property role="2bfB8j" value="true" />
              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
              <ref role="1Y3XeK" to="82uw:~Function" resolve="Function" />
              <node concept="3Tm1VV" id="1HEL0zW3hUm" role="1B3o_S" />
              <node concept="3uibUv" id="5fP$Xwj0iqd" role="2Ghqu4">
                <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
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
                    <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
                  </node>
                </node>
                <node concept="3clFbS" id="1HEL0zW3koL" role="3clF47">
                  <node concept="3clFbF" id="1HEL0zW3leP" role="3cqZAp">
                    <node concept="2OqwBi" id="1HEL0zW3lqK" role="3clFbG">
                      <node concept="2OqwBi" id="5fP$Xwj0kkJ" role="2Oq$k0">
                        <node concept="37vLTw" id="1HEL0zW3leO" role="2Oq$k0">
                          <ref role="3cqZAo" node="1HEL0zW3koE" resolve="port" />
                        </node>
                        <node concept="2OwXpG" id="5fP$Xwj0kHE" role="2OqNvi">
                          <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1HEL0zW3lNl" role="2OqNvi">
                        <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
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
    <node concept="2tJIrI" id="1HEL0zW35Cg" role="jymVt" />
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
              <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zW5EQH" role="3cqZAp">
          <node concept="2OqwBi" id="1HEL0zW5EQI" role="3clFbG">
            <node concept="2OqwBi" id="5fP$Xwj0kOn" role="2Oq$k0">
              <node concept="2YIFZM" id="1HEL0zW5EQJ" role="2Oq$k0">
                <ref role="37wK5l" to="33ny:~Collections.max(java.util.Collection,java.util.Comparator):java.lang.Object" resolve="max" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="1HEL0zW5EQK" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW5EQP" resolve="textColumn" />
                </node>
                <node concept="37vLTw" id="7qPnRGG8gnP" role="37wK5m">
                  <ref role="3cqZAo" node="1HEL0zW396D" resolve="PORTNAME_WIDTH_COMPARATOR" />
                </node>
              </node>
              <node concept="2OwXpG" id="5fP$Xwj0Hxu" role="2OqNvi">
                <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
              </node>
            </node>
            <node concept="liA8E" id="1HEL0zW5EQM" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
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
            <ref role="3uigEE" node="5fP$XwiXaRQ" resolve="FBCellComponent.FBPortData" />
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
            <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
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
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
            <node concept="2OqwBi" id="7qPnRGGtkIa" role="3uHU7B">
              <node concept="37vLTw" id="7qPnRGGtkIb" role="2Oq$k0">
                <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
              </node>
              <node concept="liA8E" id="7qPnRGGtkIc" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
            <node concept="2OqwBi" id="7qPnRGGtyfm" role="3uHU7B">
              <node concept="37vLTw" id="7qPnRGGtyfn" role="2Oq$k0">
                <ref role="3cqZAo" node="1HEL0zW0Wr1" resolve="myDataOutputPortTexts" />
              </node>
              <node concept="liA8E" id="7qPnRGGtyfo" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
              <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
              <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
              <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
              <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
            <ref role="37wK5l" to="wyt6:~Math.max(int,int):int" resolve="max" />
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
              <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
              <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
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
                <node concept="37vLTw" id="7qPnRGGrC6r" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
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
                <node concept="37vLTw" id="6tmliaB2s3I" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
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
                <node concept="37vLTw" id="6LU90BNYSNr" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
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
              <node concept="37vLTw" id="6tmliaBaT50" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="2OqwBi" id="6tmliaB5a7O" role="3uHU7B">
                <node concept="2OqwBi" id="6tmliaB5a7P" role="2Oq$k0">
                  <node concept="2OqwBi" id="6tmliaB5a7Q" role="2Oq$k0">
                    <node concept="37vLTw" id="6tmliaB5gzg" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zW0T_X" resolve="myEventInputPortTexts" />
                    </node>
                    <node concept="liA8E" id="6tmliaB5a7S" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="6tmliaB5dpL" role="37wK5m">
                        <ref role="3cqZAo" node="6tmliaB2s2H" resolve="eventNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="6tmliaB5a7U" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
                <node concept="liA8E" id="6tmliaB5a7V" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
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
              <node concept="37vLTw" id="6tmliaBaDJ8" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="2OqwBi" id="6tmliaB5yYM" role="3uHU7B">
                <node concept="2OqwBi" id="6tmliaB5yYN" role="2Oq$k0">
                  <node concept="2OqwBi" id="6tmliaB5yYO" role="2Oq$k0">
                    <node concept="37vLTw" id="6tmliaB5Dnr" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zW0VY_" resolve="myEventOutputPortTexts" />
                    </node>
                    <node concept="liA8E" id="6tmliaB5yYQ" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="6tmliaB5yYR" role="37wK5m">
                        <ref role="3cqZAo" node="6tmliaB2s35" resolve="eventNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="6tmliaB5yYS" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
                <node concept="liA8E" id="6tmliaB5yYT" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
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
                <node concept="37vLTw" id="6tmliaB5AcY" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
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
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="2OqwBi" id="6tmliaB87rr" role="3uHU7B">
                <node concept="2OqwBi" id="6tmliaB87rs" role="2Oq$k0">
                  <node concept="2OqwBi" id="6tmliaB87rt" role="2Oq$k0">
                    <node concept="liA8E" id="6tmliaB87rv" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="6tmliaB87rw" role="37wK5m">
                        <ref role="3cqZAo" node="6tmliaB2s3w" resolve="dataNumber" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6tmliaB8egN" role="2Oq$k0">
                      <ref role="3cqZAo" node="1HEL0zW0Wo3" resolve="myDataInputPortTexts" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="6tmliaB87rx" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
                <node concept="liA8E" id="6tmliaB87ry" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
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
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="6tmliaB3vGM" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGGrMwc" resolve="dataNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="6tmliaB3JJJ" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
                <node concept="liA8E" id="6tmliaB4g94" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
                </node>
              </node>
              <node concept="37vLTw" id="6tmliaBa6qP" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
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
                <node concept="37vLTw" id="7qPnRGGrMw9" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
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
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="2OqwBi" id="6LU90BNV_Wi" role="3uHU7B">
                <node concept="2OqwBi" id="6LU90BNV_Wj" role="2Oq$k0">
                  <node concept="2OqwBi" id="6LU90BNV_Wk" role="2Oq$k0">
                    <node concept="37vLTw" id="6LU90BNYiSo" role="2Oq$k0">
                      <ref role="3cqZAo" node="6LU90BNTmEa" resolve="mySocketPortTexts" />
                    </node>
                    <node concept="liA8E" id="6LU90BNV_Wm" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="6LU90BNV_Wn" role="37wK5m">
                        <ref role="3cqZAo" node="6LU90BNV_WI" resolve="socketNumber" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="6LU90BNV_Wo" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
                <node concept="liA8E" id="6LU90BNV_Wp" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
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
                <ref role="3cqZAo" node="7qPnRGG6BLN" resolve="COLUMNS_PADDING" />
              </node>
              <node concept="2OqwBi" id="6LU90BNV_WW" role="3uHU7B">
                <node concept="2OqwBi" id="6LU90BNV_WX" role="2Oq$k0">
                  <node concept="2OqwBi" id="6LU90BNV_WY" role="2Oq$k0">
                    <node concept="37vLTw" id="6LU90BNYeTk" role="2Oq$k0">
                      <ref role="3cqZAo" node="6LU90BNTmE3" resolve="myPlugPortTexts" />
                    </node>
                    <node concept="liA8E" id="6LU90BNV_X0" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="6LU90BNV_X1" role="37wK5m">
                        <ref role="3cqZAo" node="6LU90BNV_Xl" resolve="plugNubmer" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="6LU90BNV_X2" role="2OqNvi">
                    <ref role="2Oxat5" node="5fP$XwiXhue" resolve="nameText" />
                  </node>
                </node>
                <node concept="liA8E" id="6LU90BNV_X3" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.getWidth():int" resolve="getWidth" />
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
                <node concept="37vLTw" id="6LU90BNV_Xf" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGG7jPM" resolve="myWidth" />
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
    <node concept="2tJIrI" id="7qPnRGG6OHc" role="jymVt" />
    <node concept="3clFb_" id="5fP$XwiXzDT" role="jymVt">
      <property role="TrG5h" value="createTextLine" />
      <node concept="3clFbS" id="5fP$XwiXzDV" role="3clF47">
        <node concept="3clFbF" id="5fP$XwiXzDW" role="3cqZAp">
          <node concept="2ShNRf" id="5fP$XwiXzDX" role="3clFbG">
            <node concept="1pGfFk" id="5fP$XwiXzDY" role="2ShVmc">
              <ref role="37wK5l" to="g51k:~TextLine.&lt;init&gt;(java.lang.String,jetbrains.mps.openapi.editor.style.Style,boolean)" resolve="TextLine" />
              <node concept="Xl_RD" id="5fP$XwiXzDZ" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="7qPnRGG76aq" role="37wK5m">
                <ref role="3cqZAo" node="7qPnRGG74XY" resolve="myStyle" />
              </node>
              <node concept="3clFbT" id="5fP$XwiXzE1" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5fP$XwiXzE2" role="3clF45">
        <ref role="3uigEE" to="g51k:~TextLine" resolve="TextLine" />
      </node>
      <node concept="3Tm6S6" id="5fP$XwiXzE3" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7qPnRGGuu1o" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGu9sq" role="jymVt">
      <property role="TrG5h" value="getLineSize" />
      <node concept="3Tm6S6" id="7qPnRGGu9sr" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGu9ss" role="3clF45" />
      <node concept="3clFbS" id="7qPnRGGu9qB" role="3clF47">
        <node concept="3cpWs6" id="7qPnRGGu9rv" role="3cqZAp">
          <node concept="2YIFZM" id="7qPnRGGu9rw" role="3cqZAk">
            <ref role="1Pybhc" to="rvgs:1Oxt8dqZWeT" resolve="LayoutUtil" />
            <ref role="37wK5l" to="rvgs:7qPnRGFzb_r" resolve="getLineSize" />
            <node concept="37vLTw" id="7qPnRGGu9rx" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGG74XY" resolve="myStyle" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGG6q4u" role="jymVt" />
    <node concept="312cEu" id="5fP$XwiXaRQ" role="jymVt">
      <property role="TrG5h" value="FBPortData" />
      <node concept="312cEg" id="5fP$XwiXhue" role="jymVt">
        <property role="TrG5h" value="nameText" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5fP$XwiXfUJ" role="1B3o_S" />
        <node concept="3uibUv" id="5fP$XwiXgFn" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~TextLine" resolve="TextLine" />
        </node>
      </node>
      <node concept="312cEg" id="5fP$XwiXtkZ" role="jymVt">
        <property role="TrG5h" value="hintText" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5fP$XwiXsT8" role="1B3o_S" />
        <node concept="3uibUv" id="5fP$XwiXtFx" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~TextLine" resolve="TextLine" />
        </node>
      </node>
      <node concept="312cEg" id="5fP$XwiZyCq" role="jymVt">
        <property role="TrG5h" value="hintStyle" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5fP$XwiZu5_" role="1B3o_S" />
        <node concept="3uibUv" id="5fP$XwiZyAZ" role="1tU5fm">
          <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
        </node>
      </node>
      <node concept="312cEg" id="5fP$XwiYTfE" role="jymVt">
        <property role="TrG5h" value="hasHint" />
        <node concept="3Tm6S6" id="5fP$XwiYOh6" role="1B3o_S" />
        <node concept="10P_77" id="5fP$XwiYTf_" role="1tU5fm" />
        <node concept="3clFbT" id="5fP$XwiYXNB" role="33vP2m" />
      </node>
      <node concept="312cEg" id="5fP$XwiXktG" role="jymVt">
        <property role="TrG5h" value="connecitonKind" />
        <node concept="3Tm6S6" id="5fP$XwiXjIb" role="1B3o_S" />
        <node concept="3uibUv" id="5fP$XwiXkty" role="1tU5fm">
          <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
        </node>
        <node concept="Rm8GO" id="5fP$XwiXxjI" role="33vP2m">
          <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
          <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
        </node>
      </node>
      <node concept="2tJIrI" id="5fP$XwiXsdU" role="jymVt" />
      <node concept="3clFbW" id="5fP$XwiXwFK" role="jymVt">
        <node concept="3cqZAl" id="5fP$XwiXwFL" role="3clF45" />
        <node concept="3clFbS" id="5fP$XwiXwFN" role="3clF47">
          <node concept="3clFbF" id="5fP$XwiXxTM" role="3cqZAp">
            <node concept="37vLTI" id="5fP$XwiXysi" role="3clFbG">
              <node concept="2ShNRf" id="5fP$XwiXyB9" role="37vLTx">
                <node concept="1pGfFk" id="5fP$XwiXyyY" role="2ShVmc">
                  <ref role="37wK5l" to="g51k:~TextLine.&lt;init&gt;(java.lang.String,jetbrains.mps.openapi.editor.style.Style,boolean)" resolve="TextLine" />
                  <node concept="Xl_RD" id="5fP$XwiXyHZ" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="37vLTw" id="5fP$XwiXz5g" role="37wK5m">
                    <ref role="3cqZAo" node="5fP$XwiXx2v" resolve="nameStyle" />
                  </node>
                  <node concept="3clFbT" id="5fP$XwiXyPU" role="37wK5m" />
                </node>
              </node>
              <node concept="37vLTw" id="5fP$XwiXxTL" role="37vLTJ">
                <ref role="3cqZAo" node="5fP$XwiXhue" resolve="nameText" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5fP$XwiXzfb" role="3cqZAp">
            <node concept="37vLTI" id="5fP$XwiXzfc" role="3clFbG">
              <node concept="2ShNRf" id="5fP$XwiXzfd" role="37vLTx">
                <node concept="1pGfFk" id="5fP$XwiXzfe" role="2ShVmc">
                  <ref role="37wK5l" to="g51k:~TextLine.&lt;init&gt;(java.lang.String,jetbrains.mps.openapi.editor.style.Style,boolean)" resolve="TextLine" />
                  <node concept="Xl_RD" id="5fP$XwiXzff" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="37vLTw" id="5fP$XwiXzCv" role="37wK5m">
                    <ref role="3cqZAo" node="5fP$XwiXx4P" resolve="hintStyle" />
                  </node>
                  <node concept="3clFbT" id="5fP$XwiXzfh" role="37wK5m" />
                </node>
              </node>
              <node concept="37vLTw" id="5fP$XwiXzrY" role="37vLTJ">
                <ref role="3cqZAo" node="5fP$XwiXtkZ" resolve="hintText" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5fP$XwiZD1D" role="3cqZAp" />
          <node concept="3clFbF" id="5fP$XwiZBp_" role="3cqZAp">
            <node concept="37vLTI" id="5fP$XwiZCO5" role="3clFbG">
              <node concept="37vLTw" id="5fP$XwiZCZb" role="37vLTx">
                <ref role="3cqZAo" node="5fP$XwiXx4P" resolve="hintStyle" />
              </node>
              <node concept="2OqwBi" id="5fP$XwiZBSj" role="37vLTJ">
                <node concept="Xjq3P" id="5fP$XwiZBJW" role="2Oq$k0" />
                <node concept="2OwXpG" id="5fP$XwiZCcz" role="2OqNvi">
                  <ref role="2Oxat5" node="5fP$XwiZyCq" resolve="hintStyle" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5fP$XwiXvBY" role="1B3o_S" />
        <node concept="37vLTG" id="5fP$XwiXx2v" role="3clF46">
          <property role="TrG5h" value="nameStyle" />
          <node concept="3uibUv" id="5fP$XwiXx2u" role="1tU5fm">
            <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
          </node>
        </node>
        <node concept="37vLTG" id="5fP$XwiXx4P" role="3clF46">
          <property role="TrG5h" value="hintStyle" />
          <node concept="3uibUv" id="5fP$XwiXx7O" role="1tU5fm">
            <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5fP$XwiXgha" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7qPnRGG6ZTn" role="jymVt" />
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
            <property role="2noCCI" value="50BBFF" />
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
      <node concept="10M0yZ" id="7qPnRGFpNEl" role="33vP2m">
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
        <ref role="3cqZAo" to="z60i:~Color.LIGHT_GRAY" resolve="LIGHT_GRAY" />
      </node>
    </node>
    <node concept="Wx3nA" id="2JGKyjitmWd" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="FB" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjitmWe" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmWf" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="2JGKyjitmYm" role="33vP2m">
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
        <ref role="3cqZAo" to="z60i:~Color.GRAY" resolve="GRAY" />
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
      <node concept="2ShNRf" id="2R0WzquZvhy" role="33vP2m">
        <node concept="1pGfFk" id="2R0Wzqv07xk" role="2ShVmc">
          <ref role="37wK5l" to="lzb2:~JBColor.&lt;init&gt;(java.awt.Color,java.awt.Color)" resolve="JBColor" />
          <node concept="2ShNRf" id="2R0Wzqv0dK6" role="37wK5m">
            <node concept="1pGfFk" id="2R0Wzqv0eu0" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
              <node concept="2nou5x" id="2R0Wzqv0exB" role="37wK5m">
                <property role="2noCCI" value="FF8000" />
              </node>
            </node>
          </node>
          <node concept="2ShNRf" id="2R0Wzqv0ePq" role="37wK5m">
            <node concept="1pGfFk" id="2R0Wzqv0ePr" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
              <node concept="2nou5x" id="2R0Wzqv0ePs" role="37wK5m">
                <property role="2noCCI" value="0080FF" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pEplJksnXR" role="jymVt" />
    <node concept="2YIFZL" id="7pEplJksrRt" role="jymVt">
      <property role="TrG5h" value="getColorFor" />
      <node concept="3clFbS" id="7pEplJksrRv" role="3clF47">
        <node concept="3KaCP$" id="7pEplJksrRw" role="3cqZAp">
          <node concept="37vLTw" id="7pEplJksrRx" role="3KbGdf">
            <ref role="3cqZAo" node="7pEplJksrRP" resolve="kind" />
          </node>
          <node concept="3KbdKl" id="7pEplJksrRy" role="3KbHQx">
            <node concept="Rm8GO" id="7pEplJksrRz" role="3Kbmr1">
              <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="3clFbS" id="7pEplJksrR$" role="3Kbo56">
              <node concept="3cpWs6" id="7pEplJksrR_" role="3cqZAp">
                <node concept="37vLTw" id="7pEplJksrRA" role="3cqZAk">
                  <ref role="3cqZAo" node="2R0WzquXqPs" resolve="ADAPTER" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7pEplJksrRB" role="3KbHQx">
            <node concept="Rm8GO" id="7pEplJksrRC" role="3Kbmr1">
              <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="3clFbS" id="7pEplJksrRD" role="3Kbo56">
              <node concept="3cpWs6" id="7pEplJksrRE" role="3cqZAp">
                <node concept="37vLTw" id="7pEplJksrRF" role="3cqZAk">
                  <ref role="3cqZAo" node="2JGKyjitmC8" resolve="EVENT" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7pEplJksrRG" role="3KbHQx">
            <node concept="Rm8GO" id="7pEplJksrRH" role="3Kbmr1">
              <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
              <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="3clFbS" id="7pEplJksrRI" role="3Kbo56">
              <node concept="3cpWs6" id="7pEplJksrRJ" role="3cqZAp">
                <node concept="37vLTw" id="7pEplJksrRK" role="3cqZAk">
                  <ref role="3cqZAo" node="2JGKyjitmM6" resolve="DATA" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7pEplJksrRL" role="3cqZAp">
          <node concept="10Nm6u" id="7pEplJksrRM" role="3cqZAk" />
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
              <ref role="37wK5l" to="wyt6:~Math.min(float,float):float" resolve="min" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="2YIFZM" id="3diMC1cjny0" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Math.max(float,float):float" resolve="max" />
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
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getMinX():double" resolve="getMinX" />
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
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getMinY():double" resolve="getMinY" />
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
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getMaxX():double" resolve="getMaxX" />
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
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getMaxY():double" resolve="getMaxY" />
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
            <ref role="37wK5l" to="z60i:~Color.RGBtoHSB(int,int,int,float[]):float[]" resolve="RGBtoHSB" />
            <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
            <node concept="2OqwBi" id="4Rtv8bPblbk" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPblbl" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbl4q" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPblbm" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getRed():int" resolve="getRed" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Rtv8bPblbn" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPblbo" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbl4q" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPblbp" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getGreen():int" resolve="getGreen" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Rtv8bPblbq" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPblbr" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbl4q" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPblbs" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getBlue():int" resolve="getBlue" />
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
            <ref role="37wK5l" to="z60i:~Color.RGBtoHSB(int,int,int,float[]):float[]" resolve="RGBtoHSB" />
            <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
            <node concept="2OqwBi" id="4Rtv8bPbnoo" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPbnop" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbn7W" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPbnoq" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getRed():int" resolve="getRed" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Rtv8bPbnor" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPbnos" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbn7W" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPbnot" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getGreen():int" resolve="getGreen" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Rtv8bPbnou" role="37wK5m">
              <node concept="37vLTw" id="4Rtv8bPbnov" role="2Oq$k0">
                <ref role="3cqZAo" node="4Rtv8bPbn7W" resolve="c" />
              </node>
              <node concept="liA8E" id="4Rtv8bPbnow" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Color.getBlue():int" resolve="getBlue" />
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
                  <ref role="37wK5l" to="z60i:~Color.HSBtoRGB(float,float,float):int" resolve="HSBtoRGB" />
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

