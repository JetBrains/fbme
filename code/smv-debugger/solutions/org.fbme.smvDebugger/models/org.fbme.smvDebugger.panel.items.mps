<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00db3664-eaf5-4dfc-95d9-374394b19e04(org.fbme.smvDebugger.panel.items)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="embu" ref="r:dad30b8e-b9b3-4f8e-9c3f-f1962e49c61c(org.fbme.smvDebugger.visualization)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="nk3o" ref="r:85e05ab4-1ba9-4db5-96e9-56a84bd1472d(org.fbme.smvDebugger.commons)" />
    <import index="fhh" ref="r:f4a915f7-fe0a-4d70-93d8-9a6c9b61418e(org.fbme.smvDebugger.panel)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="o0x9" ref="r:b753fc44-bc7f-4810-b5a7-701b07c2b3e2(org.fbme.smvDebugger.panel.mvc)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="htnt" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.plaf.basic(JDK/)" />
    <import index="9z78" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.border(JDK/)" />
    <import index="orxl" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.plaf(JDK/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="c8ee" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.table(JDK/)" />
    <import index="mnlj" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.beans(JDK/)" />
    <import index="r35s" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.colorchooser(JDK/)" />
    <import index="8uw2" ref="r:e0a1abe3-ec88-452a-aca6-a40a81cc50a1(org.fbme.smvDebugger.model)" />
    <import index="frfe" ref="r:4262e970-fd6a-4d54-829a-34800cf4d53e(org.fbme.smvDebugger.panel.condition)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" implicit="true" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
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
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
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
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2iJMYskfEGs">
    <property role="TrG5h" value="DebugPanel" />
    <node concept="312cEg" id="4i$1wja5EkZ" role="jymVt">
      <property role="TrG5h" value="controlPanel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wja5BG1" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wja5Ehy" role="1tU5fm">
        <ref role="3uigEE" node="4i$1wj9Z6NN" resolve="ControlPanel" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wja5Hj7" role="jymVt">
      <property role="TrG5h" value="counterexampleTable" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wja5FtB" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wja5HfF" role="1tU5fm">
        <ref role="3uigEE" node="4i$1wj9I8Sw" resolve="CounterexampleTable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wja5AVH" role="jymVt" />
    <node concept="312cEg" id="4i$1wjawpbS" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="4i$1wjawneI" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjawoEU" role="1tU5fm">
        <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjawlSN" role="jymVt" />
    <node concept="3clFbW" id="4i$1wja5m6_" role="jymVt">
      <node concept="3cqZAl" id="4i$1wja5m6A" role="3clF45" />
      <node concept="3clFbS" id="4i$1wja5m6C" role="3clF47">
        <node concept="3clFbF" id="4i$1wja5KTP" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wja5Lw2" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wja5M1y" role="37vLTx">
              <node concept="1pGfFk" id="4i$1wjaDwZd" role="2ShVmc">
                <ref role="37wK5l" node="4i$1wjaCPNR" resolve="ControlPanel" />
                <node concept="37vLTw" id="4i$1wjaDwZc" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjapHUA" resolve="counterexample" />
                </node>
                <node concept="37vLTw" id="4i$1wjaDyaH" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wja5IV_" resolve="systemHighlighter" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wja5KTO" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wja5EkZ" resolve="controlPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja5Qwk" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wja5Rmj" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wja5SMw" role="37vLTx">
              <node concept="1pGfFk" id="4i$1wja5Smd" role="2ShVmc">
                <ref role="37wK5l" node="4i$1wj9J9pu" resolve="CounterexampleTable" />
                <node concept="37vLTw" id="4i$1wjapL58" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjapHUA" resolve="counterexample" />
                </node>
                <node concept="37vLTw" id="4i$1wjapO9c" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wja5IV_" resolve="systemHighlighter" />
                </node>
                <node concept="37vLTw" id="4i$1wjaDrbA" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wja5IiB" resolve="backtraceService" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wja5Qwi" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wja5Hj7" resolve="counterexampleTable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wja5l9z" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjapHUA" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexample" />
        <node concept="3uibUv" id="4i$1wjapISF" role="1tU5fm">
          <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wja5IV_" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="systemHighlighter" />
        <node concept="3uibUv" id="4i$1wja5JRY" role="1tU5fm">
          <ref role="3uigEE" to="embu:2UEABl_y236" resolve="SystemHighlighter" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wja5IiB" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="backtraceService" />
        <node concept="3uibUv" id="4i$1wja5IMF" role="1tU5fm">
          <ref role="3uigEE" to="embu:7AO$Lops$Bz" resolve="BacktraceService" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wja5ksG" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9I3hf" role="jymVt">
      <property role="TrG5h" value="setPanelModel" />
      <node concept="3clFbS" id="4i$1wj9I3hi" role="3clF47">
        <node concept="3clFbF" id="4i$1wjawqNx" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjawtsC" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjawuS$" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wj9I3mM" resolve="model" />
            </node>
            <node concept="2OqwBi" id="4i$1wjawrDf" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjawqNv" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjawske" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjawpbS" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja5V5M" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wja5V_K" role="3clFbG">
            <node concept="37vLTw" id="4i$1wja5V5L" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wja5EkZ" resolve="controlPanel" />
            </node>
            <node concept="liA8E" id="4i$1wja5WjU" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjascW2" resolve="setPanelModel" />
              <node concept="37vLTw" id="4i$1wja5XgY" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9I3mM" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja6aoA" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wja6bwj" role="3clFbG">
            <node concept="37vLTw" id="4i$1wja6ao$" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wja5Hj7" resolve="counterexampleTable" />
            </node>
            <node concept="liA8E" id="4i$1wja6cg2" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wj9IpmZ" resolve="setPanelModel" />
              <node concept="37vLTw" id="4i$1wja6dJO" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9I3mM" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9I3hj" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9I3gw" role="3clF45" />
      <node concept="37vLTG" id="4i$1wj9I3mM" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4i$1wj9I3mL" role="1tU5fm">
          <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4i$1wja5AnM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9I3nr" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9I3$W" role="jymVt">
      <property role="TrG5h" value="initView" />
      <node concept="3clFbS" id="4i$1wj9I3$Z" role="3clF47">
        <node concept="3clFbF" id="4i$1wja6eTz" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wja6frz" role="3clFbG">
            <node concept="37vLTw" id="4i$1wja6eTy" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wja5EkZ" resolve="controlPanel" />
            </node>
            <node concept="liA8E" id="4i$1wja6f$Z" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjascWg" resolve="initView" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja6gAc" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wja6hpl" role="3clFbG">
            <node concept="37vLTw" id="4i$1wja6gAa" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wja5Hj7" resolve="counterexampleTable" />
            </node>
            <node concept="liA8E" id="4i$1wja6hY1" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wj9Iq2m" resolve="initView" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaFngd" role="3cqZAp" />
        <node concept="3clFbF" id="73RPw3h75n9" role="3cqZAp">
          <node concept="1rXfSq" id="73RPw3h75n7" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="73RPw3h76jq" role="37wK5m">
              <node concept="1pGfFk" id="73RPw3h7ciU" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~FlowLayout.&lt;init&gt;()" resolve="FlowLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73RPw3h7dTj" role="3cqZAp">
          <node concept="1rXfSq" id="73RPw3h7dTh" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
            <node concept="37vLTw" id="73RPw3h7fdz" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wja5EkZ" resolve="controlPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73RPw3h7gBu" role="3cqZAp">
          <node concept="1rXfSq" id="73RPw3h7gBs" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
            <node concept="37vLTw" id="73RPw3h7jdd" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wja5Hj7" resolve="counterexampleTable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9I3_0" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9I3$B" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wja5_MS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9I3_u" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9I3CL" role="jymVt">
      <property role="TrG5h" value="initController" />
      <node concept="3clFbS" id="4i$1wj9I3CO" role="3clF47">
        <node concept="3clFbF" id="4i$1wja6i8k" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wja6i8l" role="3clFbG">
            <node concept="37vLTw" id="4i$1wja6i8m" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wja5EkZ" resolve="controlPanel" />
            </node>
            <node concept="liA8E" id="4i$1wja6ius" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjascWm" resolve="initController" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja6i8o" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wja6i8p" role="3clFbG">
            <node concept="37vLTw" id="4i$1wja6i8q" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wja5Hj7" resolve="counterexampleTable" />
            </node>
            <node concept="liA8E" id="4i$1wja6j23" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wj9IrN7" resolve="initController" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9I3CP" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9I3Cm" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wja5_bK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2iJMYskfEGt" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wja5f5u" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="3uibUv" id="4i$1wja5hSC" role="EKbjA">
      <ref role="3uigEE" to="o0x9:4i$1wj9HYbK" resolve="DebugPanelMVCItem" />
    </node>
  </node>
  <node concept="312cEu" id="4i$1wj9I8Sw">
    <property role="TrG5h" value="CounterexampleTable" />
    <node concept="Wx3nA" id="4i$1wj9Tpib" role="jymVt">
      <property role="TrG5h" value="DEFAULT_CELL_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9Tpic" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9Tpid" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="4i$1wj9Tpie" role="33vP2m">
        <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
        <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wj9Tpig" role="jymVt">
      <property role="TrG5h" value="HIGHLIGHT_CELL_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9Tpih" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9Tpii" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1mZ5x_OyFIl" role="33vP2m">
        <node concept="1pGfFk" id="1mZ5x_OyJ_3" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="1mZ5x_OyMOi" role="37wK5m">
            <property role="3cmrfH" value="128" />
          </node>
          <node concept="3cmrfG" id="1mZ5x_OyNWw" role="37wK5m">
            <property role="3cmrfH" value="189" />
          </node>
          <node concept="3cmrfG" id="1mZ5x_OzeBI" role="37wK5m">
            <property role="3cmrfH" value="128" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1mZ5x_OyuN2" role="jymVt">
      <property role="TrG5h" value="CURRENT_COLUMN_COLOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1mZ5x_OyoQE" role="1B3o_S" />
      <node concept="3uibUv" id="1mZ5x_Oyt23" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="1mZ5x_OyCky" role="33vP2m">
        <node concept="1pGfFk" id="1mZ5x_OyEVU" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="1mZ5x_OyPsR" role="37wK5m">
            <property role="3cmrfH" value="236" />
          </node>
          <node concept="3cmrfG" id="1mZ5x_OyQy1" role="37wK5m">
            <property role="3cmrfH" value="236" />
          </node>
          <node concept="3cmrfG" id="1mZ5x_OyRLQ" role="37wK5m">
            <property role="3cmrfH" value="236" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wj9Ucur" role="jymVt">
      <property role="TrG5h" value="COLUMN_WIDTH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9Ucus" role="1B3o_S" />
      <node concept="10Oyi0" id="4i$1wj9Ucut" role="1tU5fm" />
      <node concept="3cmrfG" id="4i$1wj9Ucuu" role="33vP2m">
        <property role="3cmrfH" value="80" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wj9Ucun" role="jymVt">
      <property role="TrG5h" value="FIRST_COLUMN_WIDTH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9Ucuo" role="1B3o_S" />
      <node concept="10Oyi0" id="4i$1wj9Ucup" role="1tU5fm" />
      <node concept="3cmrfG" id="4i$1wj9Ucuq" role="33vP2m">
        <property role="3cmrfH" value="360" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wj9Oxxj" role="jymVt">
      <property role="TrG5h" value="SCROLL_PANE_WIDTH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9Oxxk" role="1B3o_S" />
      <node concept="10Oyi0" id="4i$1wj9Oxxl" role="1tU5fm" />
      <node concept="3cmrfG" id="4i$1wj9Oxxm" role="33vP2m">
        <property role="3cmrfH" value="780" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wj9Oxxn" role="jymVt">
      <property role="TrG5h" value="SCROLL_PANE_HEIGHT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9Oxxo" role="1B3o_S" />
      <node concept="10Oyi0" id="4i$1wj9Oxxp" role="1tU5fm" />
      <node concept="3cmrfG" id="4i$1wj9Oxxq" role="33vP2m">
        <property role="3cmrfH" value="360" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wj9MNd_" role="jymVt">
      <property role="TrG5h" value="MODEL_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9MJff" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wj9MNac" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wj9MPqO" role="33vP2m">
        <property role="Xl_RC" value="model" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wj9MSPk" role="jymVt">
      <property role="TrG5h" value="SELECTION_MODEL_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9MQpd" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wj9MSLV" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wj9MV2_" role="33vP2m">
        <property role="Xl_RC" value="selectionModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9KQCl" role="jymVt" />
    <node concept="312cEg" id="4i$1wj9IN7p" role="jymVt">
      <property role="TrG5h" value="valueTable" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9ILaQ" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9T8s7" role="1tU5fm">
        <ref role="3uigEE" node="4i$1wj9Qf3f" resolve="HighlightedTable" />
      </node>
      <node concept="2ShNRf" id="4i$1wja3g5t" role="33vP2m">
        <node concept="HV5vD" id="4i$1wja3lsA" role="2ShVmc">
          <ref role="HV5vE" node="4i$1wj9Qf3f" resolve="HighlightedTable" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4i$1wj9IKF$" role="jymVt">
      <property role="TrG5h" value="itemTable" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9IGgK" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9IKCd" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTable" resolve="JTable" />
      </node>
      <node concept="2ShNRf" id="4i$1wja3uUQ" role="33vP2m">
        <node concept="1pGfFk" id="4i$1wja3AgZ" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JTable.&lt;init&gt;()" resolve="JTable" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4i$1wj9PjVI" role="jymVt">
      <property role="TrG5h" value="horizontalScrollBar" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9Pe35" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9PhoK" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JScrollBar" resolve="JScrollBar" />
      </node>
      <node concept="2ShNRf" id="4i$1wj9PvUo" role="33vP2m">
        <node concept="1pGfFk" id="4i$1wj9Pvu4" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JScrollBar.&lt;init&gt;(int)" resolve="JScrollBar" />
          <node concept="10M0yZ" id="4i$1wj9P$0U" role="37wK5m">
            <ref role="1PxDUh" to="dxuu:~JScrollBar" resolve="JScrollBar" />
            <ref role="3cqZAo" to="z60i:~Adjustable.HORIZONTAL" resolve="HORIZONTAL" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4i$1wj9LFCt" role="jymVt">
      <property role="TrG5h" value="scrollPane" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9L$Uu" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9LEDX" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
      </node>
      <node concept="2ShNRf" id="4i$1wj9JhhF" role="33vP2m">
        <node concept="1pGfFk" id="4i$1wj9Jjjd" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JScrollPane.&lt;init&gt;()" resolve="JScrollPane" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9IWGL" role="jymVt" />
    <node concept="312cEg" id="4i$1wjanktr" role="jymVt">
      <property role="TrG5h" value="counterexample" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjanc9j" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjanhXZ" role="1tU5fm">
        <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wja4AXM" role="jymVt">
      <property role="TrG5h" value="systemHighlighter" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wja4sNm" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wja4zVE" role="1tU5fm">
        <ref role="3uigEE" to="embu:2UEABl_y236" resolve="SystemHighlighter" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wja4hHy" role="jymVt">
      <property role="TrG5h" value="backtraceService" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wja474W" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wja4fm1" role="1tU5fm">
        <ref role="3uigEE" to="embu:7AO$Lops$Bz" resolve="BacktraceService" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaw$Be" role="jymVt" />
    <node concept="312cEg" id="4i$1wjawExV" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="4i$1wjaw_qr" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjawEek" role="1tU5fm">
        <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wja44TJ" role="jymVt" />
    <node concept="3clFbW" id="4i$1wj9J9pu" role="jymVt">
      <node concept="3cqZAl" id="4i$1wj9J9pv" role="3clF45" />
      <node concept="3clFbS" id="4i$1wj9J9px" role="3clF47">
        <node concept="3clFbF" id="4i$1wjanw0f" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjanA2O" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjanB6i" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjamCSr" resolve="counterexample" />
            </node>
            <node concept="2OqwBi" id="4i$1wjanwKn" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjanw0d" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjanyHB" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjanktr" resolve="counterexample" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja50kh" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wja56ta" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaDo2e" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wja2Cny" resolve="systemHighlighter" />
            </node>
            <node concept="2OqwBi" id="4i$1wja513k" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wja50kf" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wja53GH" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wja4AXM" resolve="systemHighlighter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja4IK$" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wja4RgL" role="3clFbG">
            <node concept="37vLTw" id="4i$1wja4UYw" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wja1YwI" resolve="backtraceService" />
            </node>
            <node concept="2OqwBi" id="4i$1wja4Juy" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wja4IKz" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wja4Mjy" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wja4hHy" resolve="backtraceService" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9J54$" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjamCSr" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexample" />
        <node concept="3uibUv" id="4i$1wjamIjb" role="1tU5fm">
          <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wja2Cny" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="systemHighlighter" />
        <node concept="3uibUv" id="4i$1wja2Y5d" role="1tU5fm">
          <ref role="3uigEE" to="embu:2UEABl_y236" resolve="SystemHighlighter" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wja1YwI" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="backtraceService" />
        <node concept="3uibUv" id="4i$1wja21LW" role="1tU5fm">
          <ref role="3uigEE" to="embu:7AO$Lops$Bz" resolve="BacktraceService" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9IFWC" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9IpmZ" role="jymVt">
      <property role="TrG5h" value="setPanelModel" />
      <node concept="3clFbS" id="4i$1wj9Ipn2" role="3clF47">
        <node concept="3clFbF" id="4i$1wjawKiQ" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjawMTi" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjawOf_" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wj9Ipxa" resolve="model" />
            </node>
            <node concept="2OqwBi" id="4i$1wjawLbR" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjawKiO" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjawLGz" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjawExV" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjawFXR" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wj9KZ0g" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9KZOV" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9KZ0f" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9L0I2" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setModel(javax.swing.table.TableModel)" resolve="setModel" />
              <node concept="2OqwBi" id="4i$1wj9L5w6" role="37wK5m">
                <node concept="37vLTw" id="4i$1wj9L4LD" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wj9Ipxa" resolve="model" />
                </node>
                <node concept="liA8E" id="4i$1wj9L5Rz" role="2OqNvi">
                  <ref role="37wK5l" to="o0x9:4i$1wj9Iss7" resolve="getValueModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9S1dL" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9S2lY" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9S1dJ" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9S4KM" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setSelectionModel(javax.swing.ListSelectionModel)" resolve="setSelectionModel" />
              <node concept="2OqwBi" id="4i$1wj9SdGK" role="37wK5m">
                <node concept="37vLTw" id="4i$1wj9Sd08" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wj9Ipxa" resolve="model" />
                </node>
                <node concept="liA8E" id="4i$1wjarRTc" role="2OqNvi">
                  <ref role="37wK5l" to="o0x9:4i$1wjarAoF" resolve="getDataSelectionModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wj9Sjj6" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wj9KuE8" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9KvTb" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9KuE6" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IKF$" resolve="itemTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9KwC_" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setModel(javax.swing.table.TableModel)" resolve="setModel" />
              <node concept="2OqwBi" id="4i$1wjarVWn" role="37wK5m">
                <node concept="37vLTw" id="75ILTOXZMBw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wj9Ipxa" resolve="model" />
                </node>
                <node concept="liA8E" id="75ILTOXZNGO" role="2OqNvi">
                  <ref role="37wK5l" to="o0x9:75ILTOXZwaf" resolve="getItemModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wj9OZCM" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wj9PPeR" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9PQdw" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9PPeP" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9PjVI" resolve="horizontalScrollBar" />
            </node>
            <node concept="liA8E" id="4i$1wj9PQYT" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollBar.setModel(javax.swing.BoundedRangeModel)" resolve="setModel" />
              <node concept="2OqwBi" id="4i$1wj9PT0L" role="37wK5m">
                <node concept="37vLTw" id="4i$1wj9PSp6" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wj9Ipxa" resolve="model" />
                </node>
                <node concept="liA8E" id="4i$1wj9Q2Sc" role="2OqNvi">
                  <ref role="37wK5l" to="o0x9:4i$1wj9Q20b" resolve="getDataScrollModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9IpcN" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9Ipmj" role="3clF45" />
      <node concept="37vLTG" id="4i$1wj9Ipxa" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4i$1wj9Ipx9" role="1tU5fm">
          <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4i$1wj9IFI_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9IpG2" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9Iq2m" role="jymVt">
      <property role="TrG5h" value="initView" />
      <node concept="3clFbS" id="4i$1wj9Iq2p" role="3clF47">
        <node concept="3clFbF" id="4i$1wj9J$9y" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9J_2g" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9J$9w" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9J_Ie" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setAutoCreateColumnsFromModel(boolean)" resolve="setAutoCreateColumnsFromModel" />
              <node concept="3clFbT" id="4i$1wj9JALp" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9U0LA" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9U0LB" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9U5R0" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9U0LD" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setAutoResizeMode(int)" resolve="setAutoResizeMode" />
              <node concept="10M0yZ" id="4i$1wj9U0LE" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~JTable.AUTO_RESIZE_OFF" resolve="AUTO_RESIZE_OFF" />
                <ref role="1PxDUh" to="dxuu:~JTable" resolve="JTable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i$1wj9Wnu6" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wj9Wnu4" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="mainTableColumnModel" />
            <node concept="3uibUv" id="4i$1wj9WqgF" role="1tU5fm">
              <ref role="3uigEE" to="c8ee:~TableColumnModel" resolve="TableColumnModel" />
            </node>
            <node concept="2OqwBi" id="4i$1wj9Wwyf" role="33vP2m">
              <node concept="37vLTw" id="4i$1wj9WvxE" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
              </node>
              <node concept="liA8E" id="4i$1wj9Wy7Q" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JTable.getColumnModel()" resolve="getColumnModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="4i$1wj9WHI8" role="3cqZAp">
          <node concept="3clFbS" id="4i$1wj9WHIa" role="2LFqv$">
            <node concept="3clFbF" id="4i$1wj9WUaK" role="3cqZAp">
              <node concept="2OqwBi" id="4i$1wj9WVld" role="3clFbG">
                <node concept="2OqwBi" id="4i$1wj9WUDZ" role="2Oq$k0">
                  <node concept="37vLTw" id="4i$1wj9WUaI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4i$1wj9Wnu4" resolve="mainTableColumnModel" />
                  </node>
                  <node concept="liA8E" id="4i$1wj9WULt" role="2OqNvi">
                    <ref role="37wK5l" to="c8ee:~TableColumnModel.getColumn(int)" resolve="getColumn" />
                    <node concept="37vLTw" id="4i$1wj9WVgp" role="37wK5m">
                      <ref role="3cqZAo" node="4i$1wj9WHIb" resolve="i" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4i$1wj9WVzt" role="2OqNvi">
                  <ref role="37wK5l" to="c8ee:~TableColumn.setPreferredWidth(int)" resolve="setPreferredWidth" />
                  <node concept="37vLTw" id="4i$1wj9XQu4" role="37wK5m">
                    <ref role="3cqZAo" node="4i$1wj9Ucur" resolve="COLUMN_WIDTH" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4i$1wj9WHIb" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4i$1wj9WJfI" role="1tU5fm" />
            <node concept="3cmrfG" id="4i$1wj9WJGD" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="4i$1wj9WMfP" role="1Dwp0S">
            <node concept="2OqwBi" id="4i$1wj9WPyM" role="3uHU7w">
              <node concept="37vLTw" id="4i$1wj9WOOi" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wj9Wnu4" resolve="mainTableColumnModel" />
              </node>
              <node concept="liA8E" id="4i$1wj9WPEV" role="2OqNvi">
                <ref role="37wK5l" to="c8ee:~TableColumnModel.getColumnCount()" resolve="getColumnCount" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wj9WK9d" role="3uHU7B">
              <ref role="3cqZAo" node="4i$1wj9WHIb" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="4i$1wj9WRxX" role="1Dwrff">
            <node concept="37vLTw" id="4i$1wj9WRxZ" role="2$L3a6">
              <ref role="3cqZAo" node="4i$1wj9WHIb" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9Q6Ug" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9Q84O" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9Q6Ue" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9Qa04" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setCellSelectionEnabled(boolean)" resolve="setCellSelectionEnabled" />
              <node concept="3clFbT" id="4i$1wj9Qbmx" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9TcSt" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9TfmS" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9TcSr" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9ThjL" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wj9RcYF" resolve="setDefaultCellColor" />
              <node concept="37vLTw" id="4i$1wj9TSCT" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9Tpib" resolve="DEFAULT_CELL_COLOR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9Tkxt" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9TlRS" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9Tkxr" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9To9i" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wj9Rnt1" resolve="setHighlightCellColor" />
              <node concept="37vLTw" id="4i$1wj9TRdf" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9Tpig" resolve="HIGHLIGHT_CELL_COLOR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mZ5x_OzhOF" role="3cqZAp">
          <node concept="2OqwBi" id="1mZ5x_OzjRs" role="3clFbG">
            <node concept="37vLTw" id="1mZ5x_OzhOD" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
            </node>
            <node concept="liA8E" id="1mZ5x_OzkXc" role="2OqNvi">
              <ref role="37wK5l" node="1mZ5x_OxX_Z" resolve="setCurrentColumnColor" />
              <node concept="37vLTw" id="1mZ5x_Oznkx" role="37wK5m">
                <ref role="3cqZAo" node="1mZ5x_OyuN2" resolve="CURRENT_COLUMN_COLOR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wj9K8Zv" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wj9KkKf" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9KlK7" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9KkKd" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IKF$" resolve="itemTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9Kn37" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setAutoCreateColumnsFromModel(boolean)" resolve="setAutoCreateColumnsFromModel" />
              <node concept="3clFbT" id="4i$1wj9KnUo" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9U6s2" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9U6s3" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9UaAh" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IKF$" resolve="itemTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9U6s5" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setAutoResizeMode(int)" resolve="setAutoResizeMode" />
              <node concept="10M0yZ" id="4i$1wj9U6s6" role="37wK5m">
                <ref role="1PxDUh" to="dxuu:~JTable" resolve="JTable" />
                <ref role="3cqZAo" to="dxuu:~JTable.AUTO_RESIZE_OFF" resolve="AUTO_RESIZE_OFF" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9XuAP" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9XB1o" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wj9XzxG" role="2Oq$k0">
              <node concept="2OqwBi" id="4i$1wj9XvZA" role="2Oq$k0">
                <node concept="37vLTw" id="4i$1wj9XuAN" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wj9IKF$" resolve="itemTable" />
                </node>
                <node concept="liA8E" id="4i$1wj9XyFI" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JTable.getColumnModel()" resolve="getColumnModel" />
                </node>
              </node>
              <node concept="liA8E" id="4i$1wj9X$IS" role="2OqNvi">
                <ref role="37wK5l" to="c8ee:~TableColumnModel.getColumn(int)" resolve="getColumn" />
                <node concept="3cmrfG" id="4i$1wj9X_wc" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4i$1wj9XEB4" role="2OqNvi">
              <ref role="37wK5l" to="c8ee:~TableColumn.setPreferredWidth(int)" resolve="setPreferredWidth" />
              <node concept="37vLTw" id="4i$1wj9XGGi" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9Ucun" resolve="FIRST_COLUMN_WIDTH" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mZ5x_Osr9c" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wj9MkfA" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9Mlbo" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9Mkf$" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IKF$" resolve="itemTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9Mmvo" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setPreferredScrollableViewportSize(java.awt.Dimension)" resolve="setPreferredScrollableViewportSize" />
              <node concept="2OqwBi" id="4i$1wj9Mp7l" role="37wK5m">
                <node concept="37vLTw" id="4i$1wj9Mo9I" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wj9IKF$" resolve="itemTable" />
                </node>
                <node concept="liA8E" id="4i$1wj9MpWO" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9UIUS" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9ULwK" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9UIUQ" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9IKF$" resolve="itemTable" />
            </node>
            <node concept="liA8E" id="4i$1wj9UNpd" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTable.setCellSelectionEnabled(boolean)" resolve="setCellSelectionEnabled" />
              <node concept="3clFbT" id="75ILTOY2AA6" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wj9OA$k" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wj9YcDq" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9YdSv" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9YcDo" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9LFCt" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="4i$1wj9Yfqm" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setViewportView(java.awt.Component)" resolve="setViewportView" />
              <node concept="37vLTw" id="4i$1wj9YhSm" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9PCr8" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9PDei" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9PCr6" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9LFCt" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="4i$1wj9PGw8" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setHorizontalScrollBar(javax.swing.JScrollBar)" resolve="setHorizontalScrollBar" />
              <node concept="37vLTw" id="4i$1wj9PJaV" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9PjVI" resolve="horizontalScrollBar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9MsmH" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9Mty9" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9MsmF" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9LFCt" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="4i$1wj9MuJi" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setRowHeaderView(java.awt.Component)" resolve="setRowHeaderView" />
              <node concept="37vLTw" id="4i$1wj9Mv$D" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9IKF$" resolve="itemTable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9MxeX" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9My8a" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9MxeV" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9LFCt" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="4i$1wj9MzeJ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setCorner(java.lang.String,java.awt.Component)" resolve="setCorner" />
              <node concept="10M0yZ" id="4i$1wj9M$pT" role="37wK5m">
                <ref role="1PxDUh" to="dxuu:~JScrollPane" resolve="JScrollPane" />
                <ref role="3cqZAo" to="dxuu:~ScrollPaneConstants.UPPER_LEFT_CORNER" resolve="UPPER_LEFT_CORNER" />
              </node>
              <node concept="2OqwBi" id="4i$1wj9MACY" role="37wK5m">
                <node concept="37vLTw" id="4i$1wj9M_wi" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wj9IKF$" resolve="itemTable" />
                </node>
                <node concept="liA8E" id="4i$1wj9MBJr" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JTable.getTableHeader()" resolve="getTableHeader" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaq4KW" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaq4KX" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaq4KY" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9LFCt" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="4i$1wjaq4KZ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setHorizontalScrollBarPolicy(int)" resolve="setHorizontalScrollBarPolicy" />
              <node concept="10M0yZ" id="4i$1wjaq9IX" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS" resolve="HORIZONTAL_SCROLLBAR_ALWAYS" />
                <ref role="1PxDUh" to="dxuu:~ScrollPaneConstants" resolve="ScrollPaneConstants" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9NT0q" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9O3Pu" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9NT0o" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9LFCt" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="4i$1wj9O6sZ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setVerticalScrollBarPolicy(int)" resolve="setVerticalScrollBarPolicy" />
              <node concept="10M0yZ" id="4i$1wjaqaru" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS" resolve="VERTICAL_SCROLLBAR_ALWAYS" />
                <ref role="1PxDUh" to="dxuu:~ScrollPaneConstants" resolve="ScrollPaneConstants" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wj9Oc1q" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wj9Od7f" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9Oc1o" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wj9LFCt" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="4i$1wj9OevA" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
              <node concept="2ShNRf" id="4i$1wj9OngG" role="37wK5m">
                <node concept="1pGfFk" id="4i$1wj9Oqaq" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="37vLTw" id="4i$1wj9O$Yf" role="37wK5m">
                    <ref role="3cqZAo" node="4i$1wj9Oxxj" resolve="SCROLL_PANE_WIDTH" />
                  </node>
                  <node concept="37vLTw" id="4i$1wj9OAid" role="37wK5m">
                    <ref role="3cqZAo" node="4i$1wj9Oxxn" resolve="SCROLL_PANE_HEIGHT" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wj9YOw3" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wj9NOep" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wj9NOen" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
            <node concept="37vLTw" id="4i$1wj9NQO5" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wj9LFCt" resolve="scrollPane" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9IpQE" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9Iq1c" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wj9Iq5t" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9Iq7N" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9IrN7" role="jymVt">
      <property role="TrG5h" value="initController" />
      <node concept="3clFbS" id="4i$1wj9IrNa" role="3clF47">
        <node concept="3clFbF" id="4i$1wja0tJB" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wja0yI5" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wja0vaX" role="2Oq$k0">
              <node concept="37vLTw" id="4i$1wja0tJ_" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
              </node>
              <node concept="liA8E" id="4i$1wja0x66" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JTable.getSelectionModel()" resolve="getSelectionModel" />
              </node>
            </node>
            <node concept="liA8E" id="4i$1wja0zJS" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~ListSelectionModel.addListSelectionListener(javax.swing.event.ListSelectionListener)" resolve="addListSelectionListener" />
              <node concept="1bVj0M" id="4i$1wja0Akk" role="37wK5m">
                <node concept="3clFbS" id="4i$1wja0Akl" role="1bW5cS">
                  <node concept="3cpWs8" id="5_LnuCjSYvv" role="3cqZAp">
                    <node concept="3cpWsn" id="5_LnuCjSYvy" role="3cpWs9">
                      <property role="TrG5h" value="itemIndex" />
                      <property role="3TUv4t" value="true" />
                      <node concept="10Oyi0" id="5_LnuCjSYvt" role="1tU5fm" />
                      <node concept="2OqwBi" id="5_LnuCjSZdP" role="33vP2m">
                        <node concept="37vLTw" id="4i$1wja1rcE" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
                        </node>
                        <node concept="liA8E" id="5_LnuCjSZMr" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JTable.getSelectedRow()" resolve="getSelectedRow" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5_LnuCjSXXG" role="3cqZAp">
                    <node concept="3cpWsn" id="5_LnuCjSXXH" role="3cpWs9">
                      <property role="TrG5h" value="stepIndex" />
                      <property role="3TUv4t" value="true" />
                      <node concept="10Oyi0" id="5_LnuCjSXEC" role="1tU5fm" />
                      <node concept="2OqwBi" id="5_LnuCjSXXI" role="33vP2m">
                        <node concept="37vLTw" id="4i$1wja1w6G" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
                        </node>
                        <node concept="liA8E" id="5_LnuCjSXXK" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JTable.getSelectedColumn()" resolve="getSelectedColumn" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7AO$LopExYF" role="3cqZAp" />
                  <node concept="3cpWs8" id="7AO$LopEWgz" role="3cqZAp">
                    <node concept="3cpWsn" id="7AO$LopEWgx" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="itemValue" />
                      <node concept="3uibUv" id="4i$1wjanCQp" role="1tU5fm">
                        <ref role="3uigEE" to="8uw2:4i$1wjaiVt2" resolve="SystemItemValue" />
                      </node>
                      <node concept="2OqwBi" id="7AO$LopEXmv" role="33vP2m">
                        <node concept="37vLTw" id="7AO$LopEX0Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wjanktr" resolve="counterexample" />
                        </node>
                        <node concept="liA8E" id="4i$1wjaokno" role="2OqNvi">
                          <ref role="37wK5l" to="8uw2:4i$1wjaoFOi" resolve="getItemValue" />
                          <node concept="37vLTw" id="4i$1wjaoTOQ" role="37wK5m">
                            <ref role="3cqZAo" node="5_LnuCjSYvy" resolve="itemIndex" />
                          </node>
                          <node concept="37vLTw" id="4i$1wjaoXTX" role="37wK5m">
                            <ref role="3cqZAo" node="5_LnuCjSXXH" resolve="stepIndex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7AO$LopETZZ" role="3cqZAp">
                    <node concept="3cpWsn" id="7AO$LopETZX" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="relatedItemSimpleNames" />
                      <node concept="3uibUv" id="7AO$LopEUbU" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="17QB3L" id="7AO$LopEUvb" role="11_B2D" />
                      </node>
                      <node concept="2OqwBi" id="7AO$LopEVMC" role="33vP2m">
                        <node concept="37vLTw" id="4i$1wjaogb4" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wja4hHy" resolve="backtraceService" />
                        </node>
                        <node concept="liA8E" id="7AO$LopEVZ_" role="2OqNvi">
                          <ref role="37wK5l" to="embu:7AO$LopsHwv" resolve="getRelatedItemSimpleNames" />
                          <node concept="37vLTw" id="7AO$LopEZsD" role="37wK5m">
                            <ref role="3cqZAo" node="7AO$LopEWgx" resolve="itemValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4i$1wjaoq4D" role="3cqZAp">
                    <node concept="3cpWsn" id="4i$1wjaoq4B" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="relatedItems" />
                      <node concept="3uibUv" id="4i$1wjao$51" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="4i$1wjao_Tm" role="11_B2D">
                          <ref role="3uigEE" to="8uw2:4i$1wjaiVt2" resolve="SystemItemValue" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4i$1wjapcTa" role="33vP2m">
                        <node concept="37vLTw" id="4i$1wjapcb_" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wjanktr" resolve="counterexample" />
                        </node>
                        <node concept="liA8E" id="4i$1wjapdx8" role="2OqNvi">
                          <ref role="37wK5l" to="8uw2:4i$1wjaiYN4" resolve="getItemValues" />
                          <node concept="37vLTw" id="4i$1wjapeGX" role="37wK5m">
                            <ref role="3cqZAo" node="7AO$LopETZX" resolve="relatedItemSimpleNames" />
                          </node>
                          <node concept="37vLTw" id="4i$1wjapjcQ" role="37wK5m">
                            <ref role="3cqZAo" node="5_LnuCjSXXH" resolve="stepIndex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7AO$LopGd4F" role="3cqZAp">
                    <node concept="2OqwBi" id="7AO$LopGd4G" role="3clFbG">
                      <node concept="37vLTw" id="4i$1wjap5Zg" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wja4AXM" resolve="systemHighlighter" />
                      </node>
                      <node concept="liA8E" id="7AO$LopGd4I" role="2OqNvi">
                        <ref role="37wK5l" to="embu:2UEABl_yHc0" resolve="highlight" />
                        <node concept="37vLTw" id="4i$1wjap5e3" role="37wK5m">
                          <ref role="3cqZAo" node="4i$1wjaoq4B" resolve="relatedItems" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="4i$1wja0AS0" role="1bW2Oz">
                  <property role="3TUv4t" value="true" />
                  <property role="TrG5h" value="event" />
                  <node concept="3uibUv" id="4i$1wja0Bod" role="1tU5fm">
                    <ref role="3uigEE" to="gsia:~ListSelectionEvent" resolve="ListSelectionEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mZ5x_OvkOF" role="3cqZAp">
          <node concept="2OqwBi" id="1mZ5x_OvkOG" role="3clFbG">
            <node concept="liA8E" id="1mZ5x_OvkOH" role="2OqNvi">
              <ref role="37wK5l" to="o0x9:4i$1wja$SRX" resolve="addPropertyChangeListener" />
              <node concept="10M0yZ" id="1mZ5x_OvkOI" role="37wK5m">
                <ref role="3cqZAo" to="o0x9:4i$1wja$SQZ" resolve="STEP_INDEX" />
                <ref role="1PxDUh" to="o0x9:4i$1wja$u_D" resolve="StepIndexModel" />
              </node>
              <node concept="1bVj0M" id="1mZ5x_OvkOJ" role="37wK5m">
                <node concept="3clFbS" id="1mZ5x_OvkOK" role="1bW5cS">
                  <node concept="3cpWs8" id="1mZ5x_OvkOL" role="3cqZAp">
                    <node concept="3cpWsn" id="1mZ5x_OvkOM" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="stepIndex" />
                      <node concept="10Oyi0" id="1mZ5x_OvkON" role="1tU5fm" />
                      <node concept="10QFUN" id="1mZ5x_OvkOO" role="33vP2m">
                        <node concept="10Oyi0" id="1mZ5x_OvkOP" role="10QFUM" />
                        <node concept="2OqwBi" id="1mZ5x_OvkOQ" role="10QFUP">
                          <node concept="37vLTw" id="1mZ5x_OvkOR" role="2Oq$k0">
                            <ref role="3cqZAo" node="1mZ5x_OvkQ0" resolve="event" />
                          </node>
                          <node concept="liA8E" id="1mZ5x_OvkOS" role="2OqNvi">
                            <ref role="37wK5l" to="mnlj:~PropertyChangeEvent.getNewValue()" resolve="getNewValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1mZ5x_Ovsea" role="3cqZAp">
                    <node concept="2OqwBi" id="1mZ5x_Ovtlg" role="3clFbG">
                      <node concept="37vLTw" id="1mZ5x_Ovse8" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
                      </node>
                      <node concept="liA8E" id="1mZ5x_OvxG9" role="2OqNvi">
                        <ref role="37wK5l" node="1mZ5x_OuYDk" resolve="setCurrentColumnIndex" />
                        <node concept="37vLTw" id="1mZ5x_OvzMr" role="37wK5m">
                          <ref role="3cqZAo" node="1mZ5x_OvkOM" resolve="stepIndex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1mZ5x_Ov_Ax" role="3cqZAp">
                    <node concept="2OqwBi" id="1mZ5x_OvAvo" role="3clFbG">
                      <node concept="37vLTw" id="1mZ5x_Ov_Av" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wj9IN7p" resolve="valueTable" />
                      </node>
                      <node concept="liA8E" id="1mZ5x_OvC0H" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="1mZ5x_OvkQ0" role="1bW2Oz">
                  <property role="3TUv4t" value="true" />
                  <property role="TrG5h" value="event" />
                  <node concept="3uibUv" id="1mZ5x_OvkQ1" role="1tU5fm">
                    <ref role="3uigEE" to="mnlj:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1mZ5x_Ovp$V" role="2Oq$k0">
              <node concept="37vLTw" id="1mZ5x_OvoFR" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjawExV" resolve="model" />
              </node>
              <node concept="liA8E" id="1mZ5x_OvqiJ" role="2OqNvi">
                <ref role="37wK5l" to="o0x9:4i$1wja_eu2" resolve="getStepIndexModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9Iqo3" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9IrL7" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wj9IrTl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wj9I8Sx" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wj9Ip34" role="EKbjA">
      <ref role="3uigEE" to="o0x9:4i$1wj9HYbK" resolve="DebugPanelMVCItem" />
    </node>
    <node concept="3uibUv" id="4i$1wj9NKdp" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
  </node>
  <node concept="312cEu" id="71Z3v64q$LC">
    <property role="TrG5h" value="HorizontalSpinner" />
    <node concept="3clFbW" id="71Z3v64r7hh" role="jymVt">
      <node concept="3cqZAl" id="71Z3v64r7hi" role="3clF45" />
      <node concept="3clFbS" id="71Z3v64r7hk" role="3clF47">
        <node concept="XkiVB" id="71Z3v64svcw" role="3cqZAp">
          <ref role="37wK5l" to="dxuu:~JSpinner.&lt;init&gt;()" resolve="JSpinner" />
        </node>
        <node concept="3clFbF" id="71Z3v64t78f" role="3cqZAp">
          <node concept="1rXfSq" id="71Z3v64t78d" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JSpinner.setUI(javax.swing.plaf.SpinnerUI)" resolve="setUI" />
            <node concept="2ShNRf" id="71Z3v64t7Ua" role="37wK5m">
              <node concept="HV5vD" id="4i$1wjauSk0" role="2ShVmc">
                <ref role="HV5vE" node="4i$1wjauDtK" resolve="HorizontalSpinnerUI" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="71Z3v64r69W" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="71Z3v64q$LD" role="1B3o_S" />
    <node concept="3uibUv" id="71Z3v64r5QS" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JSpinner" resolve="JSpinner" />
    </node>
  </node>
  <node concept="312cEu" id="4i$1wj9Qf3f">
    <property role="TrG5h" value="HighlightedTable" />
    <node concept="312cEg" id="4i$1wj9Qqmu" role="jymVt">
      <property role="TrG5h" value="defaultCellColor" />
      <node concept="3Tm6S6" id="4i$1wj9QmeZ" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9QogO" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="4i$1wj9RyuE" role="33vP2m">
        <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
        <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wj9QvrG" role="jymVt">
      <property role="TrG5h" value="highlightCellColor" />
      <node concept="3Tm6S6" id="4i$1wj9QsDj" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9Quqf" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="4i$1wj9RAYU" role="33vP2m">
        <ref role="3cqZAo" to="z60i:~Color.GREEN" resolve="GREEN" />
        <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="312cEg" id="1mZ5x_OxVvc" role="jymVt">
      <property role="TrG5h" value="currentColumnColor" />
      <node concept="3Tm6S6" id="1mZ5x_OxTG$" role="1B3o_S" />
      <node concept="3uibUv" id="1mZ5x_OxUUD" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="1mZ5x_OxXdF" role="33vP2m">
        <ref role="3cqZAo" to="z60i:~Color.LIGHT_GRAY" resolve="LIGHT_GRAY" />
        <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9QTXY" role="jymVt" />
    <node concept="312cEg" id="1mZ5x_OtVRy" role="jymVt">
      <property role="TrG5h" value="currentColumnIndex" />
      <node concept="3Tm6S6" id="1mZ5x_OtSqm" role="1B3o_S" />
      <node concept="10Oyi0" id="1mZ5x_OuPq0" role="1tU5fm" />
      <node concept="3cmrfG" id="1mZ5x_OuTk3" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mZ5x_OtQpI" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9QXVP" role="jymVt">
      <property role="TrG5h" value="getDefaultCellColor" />
      <node concept="3clFbS" id="4i$1wj9QXVS" role="3clF47">
        <node concept="3cpWs6" id="4i$1wj9QYPF" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wj9R0BP" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wj9Qqmu" resolve="defaultCellColor" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9QX4n" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9R48a" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9QWrf" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9RcYF" role="jymVt">
      <property role="TrG5h" value="setDefaultCellColor" />
      <node concept="3clFbS" id="4i$1wj9RcYI" role="3clF47">
        <node concept="3clFbF" id="4i$1wj9RfzS" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wj9RikP" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9RjWN" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wj9RdBC" resolve="defaultCellColor" />
            </node>
            <node concept="2OqwBi" id="4i$1wj9RgvR" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wj9RfzR" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wj9RhNR" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wj9Qqmu" resolve="defaultCellColor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9RbYj" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9RcX3" role="3clF45" />
      <node concept="37vLTG" id="4i$1wj9RdBC" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="defaultCellColor" />
        <node concept="3uibUv" id="4i$1wj9Rekp" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9RbnZ" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9QVFn" role="jymVt">
      <property role="TrG5h" value="getHighlightCellColor" />
      <node concept="3clFbS" id="4i$1wj9QVFq" role="3clF47">
        <node concept="3cpWs6" id="4i$1wj9R1kU" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wj9R38d" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wj9QvrG" resolve="highlightCellColor" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9QURH" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9R6Jn" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9Rk4S" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9Rnt1" role="jymVt">
      <property role="TrG5h" value="setHighlightCellColor" />
      <node concept="3clFbS" id="4i$1wj9Rnt4" role="3clF47">
        <node concept="3clFbF" id="4i$1wj9RriG" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wj9Rtvt" role="3clFbG">
            <node concept="37vLTw" id="4i$1wj9RvoF" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wj9Rpdu" resolve="hightlightCellColor" />
            </node>
            <node concept="2OqwBi" id="4i$1wj9RseF" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wj9RriF" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wj9Rt1t" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wj9QvrG" resolve="highlightCellColor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9RmxU" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9Rnd8" role="3clF45" />
      <node concept="37vLTG" id="4i$1wj9Rpdu" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="hightlightCellColor" />
        <node concept="3uibUv" id="4i$1wj9RpUN" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1mZ5x_OuU8f" role="jymVt" />
    <node concept="3clFb_" id="1mZ5x_OxX_S" role="jymVt">
      <property role="TrG5h" value="getCurrentColumnColor" />
      <node concept="3clFbS" id="1mZ5x_OxX_T" role="3clF47">
        <node concept="3cpWs6" id="1mZ5x_OxX_U" role="3cqZAp">
          <node concept="37vLTw" id="1mZ5x_Oy07D" role="3cqZAk">
            <ref role="3cqZAo" node="1mZ5x_OxVvc" resolve="currentColumnColor" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1mZ5x_OxX_W" role="1B3o_S" />
      <node concept="3uibUv" id="1mZ5x_OxX_X" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mZ5x_OxX_Y" role="jymVt" />
    <node concept="3clFb_" id="1mZ5x_OxX_Z" role="jymVt">
      <property role="TrG5h" value="setCurrentColumnColor" />
      <node concept="3clFbS" id="1mZ5x_OxXA0" role="3clF47">
        <node concept="3clFbF" id="1mZ5x_OxXA1" role="3cqZAp">
          <node concept="37vLTI" id="1mZ5x_OxXA2" role="3clFbG">
            <node concept="37vLTw" id="1mZ5x_OxXA3" role="37vLTx">
              <ref role="3cqZAo" node="1mZ5x_OxXA9" resolve="currentColumnColor" />
            </node>
            <node concept="2OqwBi" id="1mZ5x_OxXA4" role="37vLTJ">
              <node concept="Xjq3P" id="1mZ5x_OxXA5" role="2Oq$k0" />
              <node concept="2OwXpG" id="1mZ5x_Oy103" role="2OqNvi">
                <ref role="2Oxat5" node="1mZ5x_OxVvc" resolve="currentColumnColor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1mZ5x_OxXA7" role="1B3o_S" />
      <node concept="3cqZAl" id="1mZ5x_OxXA8" role="3clF45" />
      <node concept="37vLTG" id="1mZ5x_OxXA9" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="currentColumnColor" />
        <node concept="3uibUv" id="1mZ5x_OxXAa" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1mZ5x_OxX_Q" role="jymVt" />
    <node concept="2tJIrI" id="1mZ5x_OxX_R" role="jymVt" />
    <node concept="3clFb_" id="1mZ5x_OuYDk" role="jymVt">
      <property role="TrG5h" value="setCurrentColumnIndex" />
      <node concept="3clFbS" id="1mZ5x_OuYDn" role="3clF47">
        <node concept="3clFbF" id="1mZ5x_Ov3oD" role="3cqZAp">
          <node concept="37vLTI" id="1mZ5x_Ov9kA" role="3clFbG">
            <node concept="37vLTw" id="1mZ5x_Ov9Vy" role="37vLTx">
              <ref role="3cqZAo" node="1mZ5x_Ov0cS" resolve="currentColumnIndex" />
            </node>
            <node concept="2OqwBi" id="1mZ5x_Ov4kA" role="37vLTJ">
              <node concept="Xjq3P" id="1mZ5x_Ov3oC" role="2Oq$k0" />
              <node concept="2OwXpG" id="1mZ5x_Ov6d9" role="2OqNvi">
                <ref role="2Oxat5" node="1mZ5x_OtVRy" resolve="currentColumnIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1mZ5x_Ovvcm" role="1B3o_S" />
      <node concept="3cqZAl" id="1mZ5x_OuXyH" role="3clF45" />
      <node concept="37vLTG" id="1mZ5x_Ov0cS" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="currentColumnIndex" />
        <node concept="10Oyi0" id="1mZ5x_Ov1JC" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1mZ5x_OtOrH" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9QhYz" role="jymVt">
      <property role="TrG5h" value="prepareRenderer" />
      <node concept="3clFbS" id="4i$1wj9QhY$" role="3clF47">
        <node concept="3cpWs8" id="4i$1wj9QhY_" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wj9QhYA" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="4i$1wj9QhYB" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
            <node concept="3nyPlj" id="4i$1wj9QhYC" role="33vP2m">
              <ref role="37wK5l" to="dxuu:~JTable.prepareRenderer(javax.swing.table.TableCellRenderer,int,int)" resolve="prepareRenderer" />
              <node concept="37vLTw" id="4i$1wj9QhYD" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9QhZB" resolve="renderer" />
              </node>
              <node concept="37vLTw" id="4i$1wj9QhYE" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9QhZD" resolve="rowIndex" />
              </node>
              <node concept="37vLTw" id="4i$1wj9QhYF" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wj9QhZF" resolve="columnIndex" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4i$1wj9QhYG" role="3cqZAp">
          <node concept="3clFbS" id="4i$1wj9QhYH" role="3clFbx">
            <node concept="3cpWs8" id="4i$1wj9QhYI" role="3cqZAp">
              <node concept="3cpWsn" id="4i$1wj9QhYJ" role="3cpWs9">
                <property role="TrG5h" value="color" />
                <node concept="3uibUv" id="4i$1wj9QhYK" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
                </node>
                <node concept="37vLTw" id="4i$1wj9QLYu" role="33vP2m">
                  <ref role="3cqZAo" node="4i$1wj9Qqmu" resolve="defaultCellColor" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="73RPw3h5HiZ" role="3cqZAp" />
            <node concept="3clFbJ" id="1mZ5x_Ouf0Z" role="3cqZAp">
              <node concept="3clFbS" id="1mZ5x_Ouf11" role="3clFbx">
                <node concept="3clFbF" id="1mZ5x_OukjO" role="3cqZAp">
                  <node concept="37vLTI" id="1mZ5x_Oul4V" role="3clFbG">
                    <node concept="37vLTw" id="1mZ5x_OukjM" role="37vLTJ">
                      <ref role="3cqZAo" node="4i$1wj9QhYJ" resolve="color" />
                    </node>
                    <node concept="37vLTw" id="1mZ5x_Oy328" role="37vLTx">
                      <ref role="3cqZAo" node="1mZ5x_OxVvc" resolve="currentColumnColor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="1mZ5x_OuhAU" role="3clFbw">
                <node concept="37vLTw" id="1mZ5x_OvaEm" role="3uHU7w">
                  <ref role="3cqZAo" node="1mZ5x_OtVRy" resolve="currentColumnIndex" />
                </node>
                <node concept="37vLTw" id="1mZ5x_Ovc9U" role="3uHU7B">
                  <ref role="3cqZAo" node="4i$1wj9QhZF" resolve="columnIndex" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4i$1wj9QhYN" role="3cqZAp">
              <node concept="3clFbS" id="4i$1wj9QhYO" role="3clFbx">
                <node concept="3cpWs8" id="4i$1wj9QhYP" role="3cqZAp">
                  <node concept="3cpWsn" id="4i$1wj9QhYQ" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="curValue" />
                    <node concept="17QB3L" id="4i$1wj9QhYR" role="1tU5fm" />
                    <node concept="10QFUN" id="4i$1wj9QhYS" role="33vP2m">
                      <node concept="17QB3L" id="4i$1wj9QhYT" role="10QFUM" />
                      <node concept="1rXfSq" id="4i$1wj9QhYU" role="10QFUP">
                        <ref role="37wK5l" to="dxuu:~JTable.getValueAt(int,int)" resolve="getValueAt" />
                        <node concept="37vLTw" id="4i$1wj9QhYV" role="37wK5m">
                          <ref role="3cqZAo" node="4i$1wj9QhZD" resolve="rowIndex" />
                        </node>
                        <node concept="37vLTw" id="4i$1wj9QhYW" role="37wK5m">
                          <ref role="3cqZAo" node="4i$1wj9QhZF" resolve="columnIndex" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4i$1wj9QhYX" role="3cqZAp">
                  <node concept="3cpWsn" id="4i$1wj9QhYY" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="prevValue" />
                    <node concept="17QB3L" id="4i$1wj9QhYZ" role="1tU5fm" />
                    <node concept="10QFUN" id="4i$1wj9QhZ0" role="33vP2m">
                      <node concept="17QB3L" id="4i$1wj9QhZ1" role="10QFUM" />
                      <node concept="1rXfSq" id="4i$1wj9QhZ2" role="10QFUP">
                        <ref role="37wK5l" to="dxuu:~JTable.getValueAt(int,int)" resolve="getValueAt" />
                        <node concept="37vLTw" id="4i$1wj9QhZ3" role="37wK5m">
                          <ref role="3cqZAo" node="4i$1wj9QhZD" resolve="rowIndex" />
                        </node>
                        <node concept="3cpWsd" id="4i$1wj9QhZ4" role="37wK5m">
                          <node concept="3cmrfG" id="4i$1wj9QhZ5" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="4i$1wj9QhZ6" role="3uHU7B">
                            <ref role="3cqZAo" node="4i$1wj9QhZF" resolve="columnIndex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4i$1wj9QhZ7" role="3cqZAp" />
                <node concept="3clFbJ" id="4i$1wj9QhZ8" role="3cqZAp">
                  <node concept="3clFbS" id="4i$1wj9QhZ9" role="3clFbx">
                    <node concept="3clFbF" id="4i$1wj9QhZa" role="3cqZAp">
                      <node concept="37vLTI" id="4i$1wj9QhZb" role="3clFbG">
                        <node concept="37vLTw" id="4i$1wj9QhZd" role="37vLTJ">
                          <ref role="3cqZAo" node="4i$1wj9QhYJ" resolve="color" />
                        </node>
                        <node concept="37vLTw" id="1mZ5x_Oy4uM" role="37vLTx">
                          <ref role="3cqZAo" node="4i$1wj9QvrG" resolve="highlightCellColor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17QLQc" id="4i$1wj9QhZe" role="3clFbw">
                    <node concept="37vLTw" id="4i$1wj9QhZf" role="3uHU7w">
                      <ref role="3cqZAo" node="4i$1wj9QhYY" resolve="prevValue" />
                    </node>
                    <node concept="37vLTw" id="4i$1wj9QhZg" role="3uHU7B">
                      <ref role="3cqZAo" node="4i$1wj9QhYQ" resolve="curValue" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="4i$1wj9QhZh" role="3clFbw">
                <node concept="37vLTw" id="4i$1wj9QhZj" role="3uHU7B">
                  <ref role="3cqZAo" node="4i$1wj9QhZF" resolve="columnIndex" />
                </node>
                <node concept="3cmrfG" id="4i$1wj9QhZi" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4i$1wj9QhZk" role="3cqZAp" />
            <node concept="3clFbF" id="4i$1wj9QhZl" role="3cqZAp">
              <node concept="2OqwBi" id="4i$1wj9QhZm" role="3clFbG">
                <node concept="37vLTw" id="4i$1wj9QhZn" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wj9QhYA" resolve="component" />
                </node>
                <node concept="liA8E" id="4i$1wj9QhZo" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.setBackground(java.awt.Color)" resolve="setBackground" />
                  <node concept="37vLTw" id="4i$1wj9QhZp" role="37wK5m">
                    <ref role="3cqZAo" node="4i$1wj9QhYJ" resolve="color" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4i$1wj9QhZq" role="3cqZAp">
              <node concept="37vLTI" id="4i$1wj9QhZr" role="3clFbG">
                <node concept="10Nm6u" id="4i$1wj9QhZs" role="37vLTx" />
                <node concept="37vLTw" id="4i$1wj9QhZt" role="37vLTJ">
                  <ref role="3cqZAo" node="4i$1wj9QhYJ" resolve="color" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="4i$1wj9QhZu" role="3clFbw">
            <node concept="1rXfSq" id="4i$1wj9QhZv" role="3uHU7w">
              <ref role="37wK5l" to="dxuu:~JTable.getSelectionBackground()" resolve="getSelectionBackground" />
            </node>
            <node concept="2OqwBi" id="4i$1wj9QhZw" role="3uHU7B">
              <node concept="37vLTw" id="4i$1wj9QhZx" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wj9QhYA" resolve="component" />
              </node>
              <node concept="liA8E" id="4i$1wj9QhZy" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.getBackground()" resolve="getBackground" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4i$1wj9QhZz" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wj9QhZ$" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wj9QhYA" resolve="component" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9QhZ_" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9QhZA" role="3clF45">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
      <node concept="37vLTG" id="4i$1wj9QhZB" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="renderer" />
        <node concept="3uibUv" id="4i$1wj9QhZC" role="1tU5fm">
          <ref role="3uigEE" to="c8ee:~TableCellRenderer" resolve="TableCellRenderer" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wj9QhZD" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="rowIndex" />
        <node concept="10Oyi0" id="4i$1wj9QhZE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4i$1wj9QhZF" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="columnIndex" />
        <node concept="10Oyi0" id="4i$1wj9QhZG" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="4i$1wj9QhZH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wj9Qf3g" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wj9QfaJ" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JTable" resolve="JTable" />
    </node>
  </node>
  <node concept="312cEu" id="4i$1wj9Z6NN">
    <property role="TrG5h" value="ControlPanel" />
    <node concept="Wx3nA" id="4i$1wjaF7jt" role="jymVt">
      <property role="TrG5h" value="STEP_LABEL_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaF7ju" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjaF7jv" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wjaF7jw" role="33vP2m">
        <property role="Xl_RC" value="Current step:" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wjaF7jx" role="jymVt">
      <property role="TrG5h" value="TIME_LABEL_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaF7jy" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjaF7jz" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wjaF7j$" role="33vP2m">
        <property role="Xl_RC" value="Current time:" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wjaF7j_" role="jymVt">
      <property role="TrG5h" value="CONDITION_LABEL_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaF7jA" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjaF7jB" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wjaF7jC" role="33vP2m">
        <property role="Xl_RC" value="Condition:" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaF6R$" role="jymVt" />
    <node concept="312cEg" id="4i$1wjaCJMJ" role="jymVt">
      <property role="TrG5h" value="stepChanger" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaCHpp" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaCJJp" role="1tU5fm">
        <ref role="3uigEE" node="4i$1wjauSpP" resolve="StepChanger" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wjaCL$e" role="jymVt">
      <property role="TrG5h" value="globalTime" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaCKjg" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaCLwS" role="1tU5fm">
        <ref role="3uigEE" node="4i$1wjafjJ$" resolve="GlobalTime" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wjaCNXX" role="jymVt">
      <property role="TrG5h" value="conditionNavigator" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaCMms" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaCNUB" role="1tU5fm">
        <ref role="3uigEE" node="4i$1wjaA4vF" resolve="ConditionNavigator" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaCO5o" role="jymVt" />
    <node concept="312cEg" id="4i$1wjaDYaK" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="4i$1wjaDXnA" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaDY7o" role="1tU5fm">
        <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaDW7S" role="jymVt" />
    <node concept="3clFbW" id="4i$1wjaCPNR" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaCPNS" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaCPNU" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaDFeU" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaDG4v" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wjaDGK9" role="37vLTx">
              <node concept="1pGfFk" id="4i$1wjaDJbD" role="2ShVmc">
                <ref role="37wK5l" node="4i$1wjaxElw" resolve="StepChanger" />
                <node concept="37vLTw" id="4i$1wjaDKzC" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaCQkh" resolve="counterexample" />
                </node>
                <node concept="37vLTw" id="4i$1wjaDLt0" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaDyzh" resolve="systemHighlighter" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaDFeT" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wjaCJMJ" resolve="stepChanger" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaDLXj" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaDMOW" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wjaDNkZ" role="37vLTx">
              <node concept="HV5vD" id="4i$1wjaDPSS" role="2ShVmc">
                <ref role="HV5vE" node="4i$1wjafjJ$" resolve="GlobalTime" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaDLXh" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wjaCL$e" resolve="globalTime" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaDQMZ" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaDRKd" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wjaDSgi" role="37vLTx">
              <node concept="1pGfFk" id="4i$1wjaDUIs" role="2ShVmc">
                <ref role="37wK5l" node="4i$1wjaA5Np" resolve="ConditionNavigator" />
                <node concept="37vLTw" id="4i$1wjaDW6r" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaCQkh" resolve="counterexample" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaDQMX" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wjaCNXX" resolve="conditionNavigator" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaCOO8" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaCQkh" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexample" />
        <node concept="3uibUv" id="4i$1wjaCRg4" role="1tU5fm">
          <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaDyzh" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="systemHighlighter" />
        <node concept="3uibUv" id="4i$1wjaDzvy" role="1tU5fm">
          <ref role="3uigEE" to="embu:2UEABl_y236" resolve="SystemHighlighter" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaCGbi" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjascW2" role="jymVt">
      <property role="TrG5h" value="setPanelModel" />
      <node concept="3clFbS" id="4i$1wjascW3" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaDZ99" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaE0qO" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaE0VG" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjascWc" resolve="model" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaDZR7" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjaDZ98" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjaE0aI" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjaDYaK" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaE1sN" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaE2rL" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaE1sL" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaCJMJ" resolve="stepChanger" />
            </node>
            <node concept="liA8E" id="4i$1wjaE38f" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjauV9g" resolve="setPanelModel" />
              <node concept="37vLTw" id="4i$1wjaE4zA" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjascWc" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaE5lS" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaE6hk" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaE5lQ" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaCL$e" resolve="globalTime" />
            </node>
            <node concept="liA8E" id="4i$1wjaE6SH" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjafvy6" resolve="setPanelModel" />
              <node concept="37vLTw" id="4i$1wjaE7WR" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjascWc" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaE97M" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaEa2B" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaE97K" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaCNXX" resolve="conditionNavigator" />
            </node>
            <node concept="liA8E" id="4i$1wjaEayJ" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjaA5NK" resolve="setPanelModel" />
              <node concept="37vLTw" id="4i$1wjaEb_s" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjascWc" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjascWa" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjascWb" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjascWc" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4i$1wjascWd" role="1tU5fm">
          <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4i$1wjascWe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjascWf" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjascWg" role="jymVt">
      <property role="TrG5h" value="initView" />
      <node concept="3clFbS" id="4i$1wjascWh" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaFasB" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaFbeF" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaFasA" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaCJMJ" resolve="stepChanger" />
            </node>
            <node concept="liA8E" id="4i$1wjaFbE3" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjauV9u" resolve="initView" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaFcO4" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaFdEG" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaFcO2" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaCL$e" resolve="globalTime" />
            </node>
            <node concept="liA8E" id="4i$1wjaFecb" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjafvyd" resolve="initView" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaFfu3" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaFgnB" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaFfu1" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaCNXX" resolve="conditionNavigator" />
            </node>
            <node concept="liA8E" id="4i$1wjaFgUS" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjaA5O3" resolve="initView" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaFlZc" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wjaFDCZ" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaFDCW" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="4i$1wjaFECS" role="37wK5m">
              <node concept="1pGfFk" id="4i$1wjaFIi4" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i$1wjaFJz7" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaFJz5" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="constraints" />
            <node concept="3uibUv" id="4i$1wjaFKnh" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
            </node>
            <node concept="2ShNRf" id="4i$1wjaFLY8" role="33vP2m">
              <node concept="1pGfFk" id="4i$1wjaFOpp" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~GridBagConstraints.&lt;init&gt;()" resolve="GridBagConstraints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaFQ6R" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaFRWa" role="3clFbG">
            <node concept="10M0yZ" id="4i$1wjaFT6z" role="37vLTx">
              <ref role="3cqZAo" to="z60i:~GridBagConstraints.HORIZONTAL" resolve="HORIZONTAL" />
              <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaFQQB" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaFQ6P" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaFRiH" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.fill" resolve="fill" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaFUnQ" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaFVPL" role="3clFbG">
            <node concept="3cmrfG" id="4i$1wjaFYLa" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaFV7G" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaFUnO" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaFV$i" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.weightx" resolve="weightx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaFZYz" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wjaFYma" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaG44m" role="3clFbG">
            <node concept="3cmrfG" id="4i$1wjaG5Uc" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaG2XN" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaFYm8" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaG3qT" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaG8hj" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaG8hk" role="3clFbG">
            <node concept="3cmrfG" id="4i$1wjaG8hl" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaG8hm" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaG8hn" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaG8C0" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaG7gK" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaG7gI" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2ShNRf" id="4i$1wjaG9kY" role="37wK5m">
              <node concept="1pGfFk" id="4i$1wjaGbL2" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="37vLTw" id="4i$1wjaGdCj" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaF7jt" resolve="STEP_LABEL_NAME" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaGi13" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaGlMK" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wjaGlOv" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGlOw" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaGlOy" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGlOz" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGlO$" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
              </node>
            </node>
            <node concept="3cmrfG" id="4i$1wjaGqlH" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGlO_" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGlOA" role="3clFbG">
            <node concept="3cmrfG" id="4i$1wjaGlOB" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaGlOC" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGlOD" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGlOE" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGlOF" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaGlOG" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="4i$1wjaGu$8" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaCJMJ" resolve="stepChanger" />
            </node>
            <node concept="37vLTw" id="4i$1wjaGwJv" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaGmNu" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wjaGmPP" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGmPQ" role="3clFbG">
            <node concept="3cmrfG" id="4i$1wjaGmPR" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaGmPS" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGmPT" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGmPU" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGmPV" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGmPW" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaGmPY" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGmPZ" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGmQ0" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
            <node concept="3cmrfG" id="4i$1wjaGqRV" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGmQ1" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaGmQ2" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2ShNRf" id="4i$1wjaGmQ3" role="37wK5m">
              <node concept="1pGfFk" id="4i$1wjaGmQ4" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="37vLTw" id="4i$1wjaGyRh" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaF7jx" resolve="TIME_LABEL_NAME" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaGmQ5" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaGmYg" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wjaGn1f" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGn1g" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaGn1i" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGn1j" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGn1k" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
              </node>
            </node>
            <node concept="3cmrfG" id="4i$1wjaGrvl" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGn1l" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGn1m" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaGn1o" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGn1p" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGn1q" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
            <node concept="3cmrfG" id="4i$1wjaGrWn" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGn1r" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaGn1s" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="4i$1wjaG$R6" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaCL$e" resolve="globalTime" />
            </node>
            <node concept="37vLTw" id="4i$1wjaGn1v" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaGna9" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wjaGndK" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGndL" role="3clFbG">
            <node concept="3cmrfG" id="4i$1wjaGndM" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaGndN" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGndO" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGndP" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGndQ" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGndR" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaGndT" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGndU" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGndV" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
            <node concept="3cmrfG" id="4i$1wjaGspp" role="37vLTx">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGndW" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaGndX" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2ShNRf" id="4i$1wjaGndY" role="37wK5m">
              <node concept="1pGfFk" id="4i$1wjaGndZ" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="37vLTw" id="4i$1wjaGAf9" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaF7j_" resolve="CONDITION_LABEL_NAME" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaGne0" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaGnIL" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wjaGnN0" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGnN1" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaGnN3" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGnN4" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGnN5" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridx" resolve="gridx" />
              </node>
            </node>
            <node concept="3cmrfG" id="4i$1wjaGtA_" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGnN6" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaGnN7" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaGnN9" role="37vLTJ">
              <node concept="37vLTw" id="4i$1wjaGnNa" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
              </node>
              <node concept="2OwXpG" id="4i$1wjaGnNb" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~GridBagConstraints.gridy" resolve="gridy" />
              </node>
            </node>
            <node concept="3cmrfG" id="4i$1wjaGt4n" role="37vLTx">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaGnNc" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaGnNd" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="4i$1wjaGBSL" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaCNXX" resolve="conditionNavigator" />
            </node>
            <node concept="37vLTw" id="4i$1wjaGDtV" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaFJz5" resolve="constraints" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjascWi" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjascWj" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wjascWk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjascWl" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjascWm" role="jymVt">
      <property role="TrG5h" value="initController" />
      <node concept="3clFbS" id="4i$1wjascWn" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaFh8p" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaFh8q" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaFh8r" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaCJMJ" resolve="stepChanger" />
            </node>
            <node concept="liA8E" id="4i$1wjaFiiI" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjauV9$" resolve="initController" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaFh8t" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaFh8u" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaFh8v" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaCL$e" resolve="globalTime" />
            </node>
            <node concept="liA8E" id="4i$1wjaFiRe" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjafvyi" resolve="initController" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaFh8x" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaFh8y" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaFh8z" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaCNXX" resolve="conditionNavigator" />
            </node>
            <node concept="liA8E" id="4i$1wjaFjuP" role="2OqNvi">
              <ref role="37wK5l" node="4i$1wjaA5Of" resolve="initController" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjascWG" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjascWH" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wjascWI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wj9Z6NO" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wja5VKr" role="EKbjA">
      <ref role="3uigEE" to="o0x9:4i$1wj9HYbK" resolve="DebugPanelMVCItem" />
    </node>
    <node concept="3uibUv" id="4i$1wja6u2p" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
  </node>
  <node concept="312cEu" id="4i$1wjafjJ$">
    <property role="TrG5h" value="GlobalTime" />
    <node concept="Wx3nA" id="75ILTOY0ETV" role="jymVt">
      <property role="TrG5h" value="LEFT_PADDING" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="75ILTOY0BZX" role="1B3o_S" />
      <node concept="17QB3L" id="75ILTOY0EAl" role="1tU5fm" />
      <node concept="Xl_RD" id="75ILTOY0FDM" role="33vP2m">
        <property role="Xl_RC" value="     " />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wjawQWt" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="4i$1wjawPPQ" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjawQJj" role="1tU5fm">
        <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjafIZS" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjafvy6" role="jymVt">
      <property role="TrG5h" value="setPanelModel" />
      <node concept="3clFbS" id="4i$1wjafvy7" role="3clF47">
        <node concept="3clFbF" id="4i$1wjawSqc" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjawUJP" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjawVwL" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjafvya" resolve="model" />
            </node>
            <node concept="2OqwBi" id="4i$1wjawTfu" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjawSqa" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjawTJO" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjawQWt" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjafvy8" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjafvy9" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjafvya" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4i$1wjafvyb" role="1tU5fm">
          <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4i$1wjafw1W" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjafvyc" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjafvyd" role="jymVt">
      <property role="TrG5h" value="initView" />
      <node concept="3clFbS" id="4i$1wjafvye" role="3clF47" />
      <node concept="3Tm1VV" id="4i$1wjafvyf" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjafvyg" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wjafvX4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjafvyh" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjafvyi" role="jymVt">
      <property role="TrG5h" value="initController" />
      <node concept="3clFbS" id="4i$1wjafvyj" role="3clF47">
        <node concept="3clFbF" id="4i$1wjafUBS" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjafViP" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjawXRf" role="2Oq$k0">
              <node concept="37vLTw" id="4i$1wjawXhF" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjawQWt" resolve="model" />
              </node>
              <node concept="liA8E" id="4i$1wjawY9S" role="2OqNvi">
                <ref role="37wK5l" to="o0x9:4i$1wjafbTQ" resolve="getGlobalTimeModel" />
              </node>
            </node>
            <node concept="liA8E" id="4i$1wjafVtG" role="2OqNvi">
              <ref role="37wK5l" to="o0x9:4i$1wjafi7c" resolve="addPropertyChangeListener" />
              <node concept="10M0yZ" id="4i$1wjafWAu" role="37wK5m">
                <ref role="3cqZAo" to="o0x9:4i$1wjaff9a" resolve="GLOBAL_TIME" />
                <ref role="1PxDUh" to="o0x9:4i$1wjafcaV" resolve="GlobalTimeModel" />
              </node>
              <node concept="1bVj0M" id="4i$1wjafXls" role="37wK5m">
                <node concept="3clFbS" id="4i$1wjafXlu" role="1bW5cS">
                  <node concept="3cpWs8" id="4i$1wjag0ng" role="3cqZAp">
                    <node concept="3cpWsn" id="4i$1wjag0ne" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="time" />
                      <node concept="17QB3L" id="4i$1wjag0Dk" role="1tU5fm" />
                      <node concept="10QFUN" id="4i$1wjag1L4" role="33vP2m">
                        <node concept="17QB3L" id="4i$1wjag1L2" role="10QFUM" />
                        <node concept="2OqwBi" id="4i$1wjag3Bt" role="10QFUP">
                          <node concept="37vLTw" id="4i$1wjag2SP" role="2Oq$k0">
                            <ref role="3cqZAo" node="4i$1wjafYr8" resolve="event" />
                          </node>
                          <node concept="liA8E" id="4i$1wjag3J_" role="2OqNvi">
                            <ref role="37wK5l" to="mnlj:~PropertyChangeEvent.getNewValue()" resolve="getNewValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4i$1wjag4R_" role="3cqZAp">
                    <node concept="1rXfSq" id="4i$1wjag4Rz" role="3clFbG">
                      <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String)" resolve="setText" />
                      <node concept="3cpWs3" id="75ILTOY10Ws" role="37wK5m">
                        <node concept="37vLTw" id="75ILTOY1268" role="3uHU7B">
                          <ref role="3cqZAo" node="75ILTOY0ETV" resolve="LEFT_PADDING" />
                        </node>
                        <node concept="37vLTw" id="75ILTOY0Xpm" role="3uHU7w">
                          <ref role="3cqZAo" node="4i$1wjag0ne" resolve="time" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="4i$1wjafYr8" role="1bW2Oz">
                  <property role="3TUv4t" value="true" />
                  <property role="TrG5h" value="event" />
                  <node concept="3uibUv" id="4i$1wjafZ0y" role="1tU5fm">
                    <ref role="3uigEE" to="mnlj:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjafvyk" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjafvyl" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wjafvSq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wjafjJ_" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wjafjOS" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
    </node>
    <node concept="3uibUv" id="4i$1wjafk40" role="EKbjA">
      <ref role="3uigEE" to="o0x9:4i$1wj9HYbK" resolve="DebugPanelMVCItem" />
    </node>
  </node>
  <node concept="312cEu" id="4i$1wjauDtK">
    <property role="TrG5h" value="HorizontalSpinnerUI" />
    <node concept="Wx3nA" id="4i$1wjauMhP" role="jymVt">
      <property role="TrG5h" value="NEXT_BUTTON_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4i$1wjaAxCp" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjauMeU" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wjauDuA" role="33vP2m">
        <property role="Xl_RC" value="Spinner.nextButton" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wjauNo1" role="jymVt">
      <property role="TrG5h" value="PREVIOUS_BUTTON_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4i$1wjaAxFU" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjauNl5" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wjauDuV" role="33vP2m">
        <property role="Xl_RC" value="Spinner.previousButton" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wjauOBb" role="jymVt">
      <property role="TrG5h" value="ARROW_BUTTON_BORDER" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjauOjV" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjauO$e" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wjauDw2" role="33vP2m">
        <property role="Xl_RC" value="Spinner.arrowButtonBorder" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjauLGF" role="jymVt" />
    <node concept="2YIFZL" id="5dgM6a8avtX" role="jymVt">
      <property role="TrG5h" value="createUI" />
      <node concept="3clFbS" id="5dgM6a8avu0" role="3clF47">
        <node concept="3cpWs6" id="5dgM6a8avNh" role="3cqZAp">
          <node concept="2ShNRf" id="5dgM6a8avQG" role="3cqZAk">
            <node concept="HV5vD" id="5dgM6a8awuT" role="2ShVmc">
              <ref role="HV5vE" node="4i$1wjauDtK" resolve="HorizontalSpinnerUI" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5dgM6a8aviY" role="1B3o_S" />
      <node concept="3uibUv" id="5dgM6a8avF9" role="3clF45">
        <ref role="3uigEE" to="orxl:~ComponentUI" resolve="ComponentUI" />
      </node>
      <node concept="37vLTG" id="5dgM6a8awDb" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="5dgM6a8awJ2" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5dgM6a8av5X" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjauDur" role="jymVt">
      <property role="TrG5h" value="createNextButton" />
      <node concept="3clFbS" id="4i$1wjauDus" role="3clF47">
        <node concept="3cpWs8" id="4i$1wjauDut" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjauDuu" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="4i$1wjauDuv" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
            <node concept="1rXfSq" id="4i$1wjauDuw" role="33vP2m">
              <ref role="37wK5l" node="4i$1wjauDvQ" resolve="createArrowButton" />
              <node concept="10M0yZ" id="4i$1wjauDux" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~SwingConstants.EAST" resolve="EAST" />
                <ref role="1PxDUh" to="dxuu:~SwingConstants" resolve="SwingConstants" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauDuy" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjauDuz" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjauDu$" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjauDuu" resolve="component" />
            </node>
            <node concept="liA8E" id="4i$1wjauDu_" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
              <node concept="37vLTw" id="4i$1wjauMH$" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjauMhP" resolve="NEXT_BUTTON_NAME" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauDuB" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjauDuC" role="3clFbG">
            <ref role="37wK5l" to="htnt:~BasicSpinnerUI.installNextButtonListeners(java.awt.Component)" resolve="installNextButtonListeners" />
            <node concept="37vLTw" id="4i$1wjauDuD" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjauDuu" resolve="component" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4i$1wjauDuE" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wjauDuF" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wjauDuu" resolve="component" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4i$1wjauDuG" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjauDuH" role="3clF45">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
      <node concept="2AHcQZ" id="4i$1wjauDuI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjauDuJ" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjauDuK" role="jymVt">
      <property role="TrG5h" value="createPreviousButton" />
      <node concept="3clFbS" id="4i$1wjauDuL" role="3clF47">
        <node concept="3cpWs8" id="4i$1wjauDuM" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjauDuN" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="4i$1wjauDuO" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
            <node concept="1rXfSq" id="4i$1wjauDuP" role="33vP2m">
              <ref role="37wK5l" node="4i$1wjauDvQ" resolve="createArrowButton" />
              <node concept="10M0yZ" id="4i$1wjauDuQ" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~SwingConstants.WEST" resolve="WEST" />
                <ref role="1PxDUh" to="dxuu:~SwingConstants" resolve="SwingConstants" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauDuR" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjauDuS" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjauDuT" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjauDuN" resolve="component" />
            </node>
            <node concept="liA8E" id="4i$1wjauDuU" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
              <node concept="37vLTw" id="4i$1wjauNQU" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjauNo1" resolve="PREVIOUS_BUTTON_NAME" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauDuW" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjauDuX" role="3clFbG">
            <ref role="37wK5l" to="htnt:~BasicSpinnerUI.installPreviousButtonListeners(java.awt.Component)" resolve="installPreviousButtonListeners" />
            <node concept="37vLTw" id="4i$1wjauDuY" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjauDuN" resolve="component" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4i$1wjauDuZ" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wjauDv0" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wjauDuN" resolve="component" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4i$1wjauDv1" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjauDv2" role="3clF45">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
      <node concept="2AHcQZ" id="4i$1wjauDv3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjauDv4" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjauDvf" role="jymVt">
      <property role="TrG5h" value="installUI" />
      <node concept="3clFbS" id="4i$1wjauDvg" role="3clF47">
        <node concept="3clFbF" id="4i$1wjauDvh" role="3cqZAp">
          <node concept="3nyPlj" id="4i$1wjauDvi" role="3clFbG">
            <ref role="37wK5l" to="htnt:~BasicSpinnerUI.installUI(javax.swing.JComponent)" resolve="installUI" />
            <node concept="37vLTw" id="4i$1wjauDvj" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjauDvM" resolve="component" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauDvk" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjauDvl" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjauDvm" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjauDvM" resolve="component" />
            </node>
            <node concept="liA8E" id="4i$1wjauDvn" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.removeAll()" resolve="removeAll" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauDvo" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjauDvp" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjauDvq" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjauDvM" resolve="component" />
            </node>
            <node concept="liA8E" id="4i$1wjauDvr" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
              <node concept="2ShNRf" id="4i$1wjauDvs" role="37wK5m">
                <node concept="YeOm9" id="5dgM6a8aGMH" role="2ShVmc">
                  <node concept="1Y3b0j" id="5dgM6a8aGMK" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                    <ref role="1Y3XeK" to="z60i:~BorderLayout" resolve="BorderLayout" />
                    <node concept="3Tm1VV" id="5dgM6a8aGML" role="1B3o_S" />
                    <node concept="3clFb_" id="5dgM6a8aHDJ" role="jymVt">
                      <property role="TrG5h" value="addLayoutComponent" />
                      <node concept="3clFbS" id="5dgM6a8aHDM" role="3clF47">
                        <node concept="3clFbJ" id="5dgM6a8aJOT" role="3cqZAp">
                          <node concept="2OqwBi" id="5dgM6a8aKy9" role="3clFbw">
                            <node concept="37vLTw" id="5dgM6a8aKhg" role="2Oq$k0">
                              <ref role="3cqZAo" node="5dgM6a8aIBu" resolve="constraints" />
                            </node>
                            <node concept="liA8E" id="5dgM6a8aK_Z" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                              <node concept="Xl_RD" id="5dgM6a8aKVo" role="37wK5m">
                                <property role="Xl_RC" value="Editor" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="5dgM6a8aJOV" role="3clFbx">
                            <node concept="3clFbF" id="5dgM6a8aLra" role="3cqZAp">
                              <node concept="37vLTI" id="5dgM6a8aLHI" role="3clFbG">
                                <node concept="37vLTw" id="5dgM6a8aMbC" role="37vLTx">
                                  <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
                                </node>
                                <node concept="37vLTw" id="5dgM6a8aLr9" role="37vLTJ">
                                  <ref role="3cqZAo" node="5dgM6a8aIBu" resolve="constraints" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="5dgM6a8aNg4" role="3cqZAp">
                          <node concept="3nyPlj" id="5dgM6a8aNg2" role="3clFbG">
                            <ref role="37wK5l" to="z60i:~BorderLayout.addLayoutComponent(java.awt.Component,java.lang.Object)" resolve="addLayoutComponent" />
                            <node concept="37vLTw" id="5dgM6a8aNLz" role="37wK5m">
                              <ref role="3cqZAo" node="5dgM6a8aIb7" resolve="component" />
                            </node>
                            <node concept="37vLTw" id="5dgM6a8aOwa" role="37wK5m">
                              <ref role="3cqZAo" node="5dgM6a8aIBu" resolve="constraints" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="5dgM6a8aHgr" role="1B3o_S" />
                      <node concept="3cqZAl" id="5dgM6a8aHDl" role="3clF45" />
                      <node concept="37vLTG" id="5dgM6a8aIb7" role="3clF46">
                        <property role="3TUv4t" value="true" />
                        <property role="TrG5h" value="component" />
                        <node concept="3uibUv" id="5dgM6a8aItS" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5dgM6a8aIBu" role="3clF46">
                        <property role="TrG5h" value="constraints" />
                        <node concept="3uibUv" id="5dgM6a8aJhR" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5dgM6a8aJv4" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauDvu" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjauDvv" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjauDvw" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjauDvM" resolve="component" />
            </node>
            <node concept="liA8E" id="4i$1wjauDvx" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="1rXfSq" id="4i$1wjauDvy" role="37wK5m">
                <ref role="37wK5l" node="4i$1wjauDur" resolve="createNextButton" />
              </node>
              <node concept="10M0yZ" id="4i$1wjauDvz" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.EAST" resolve="EAST" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauDv$" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjauDv_" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjauDvA" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjauDvM" resolve="component" />
            </node>
            <node concept="liA8E" id="4i$1wjauDvB" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="1rXfSq" id="4i$1wjauDvC" role="37wK5m">
                <ref role="37wK5l" node="4i$1wjauDuK" resolve="createPreviousButton" />
              </node>
              <node concept="10M0yZ" id="4i$1wjauDvD" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~BorderLayout.WEST" resolve="WEST" />
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauDvE" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjauDvF" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjauDvG" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjauDvM" resolve="component" />
            </node>
            <node concept="liA8E" id="4i$1wjauDvH" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="1rXfSq" id="4i$1wjauJ2W" role="37wK5m">
                <ref role="37wK5l" to="htnt:~BasicSpinnerUI.createEditor()" resolve="createEditor" />
              </node>
              <node concept="10M0yZ" id="4i$1wjauDvJ" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjauDvK" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjauDvL" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjauDvM" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="4i$1wjauDvN" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4i$1wjauDvO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjauDvP" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjauDvQ" role="jymVt">
      <property role="TrG5h" value="createArrowButton" />
      <node concept="3clFbS" id="4i$1wjauDvR" role="3clF47">
        <node concept="3cpWs8" id="4i$1wjauDvS" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjauDvT" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="button" />
            <node concept="3uibUv" id="4i$1wjauDvU" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
            </node>
            <node concept="2ShNRf" id="4i$1wjauDvV" role="33vP2m">
              <node concept="1pGfFk" id="4i$1wjauDvW" role="2ShVmc">
                <ref role="37wK5l" to="htnt:~BasicArrowButton.&lt;init&gt;(int)" resolve="BasicArrowButton" />
                <node concept="37vLTw" id="4i$1wjauDvX" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjauDwr" resolve="direction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i$1wjauDvY" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjauDvZ" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="border" />
            <node concept="3uibUv" id="4i$1wjauDw0" role="1tU5fm">
              <ref role="3uigEE" to="9z78:~Border" resolve="Border" />
            </node>
            <node concept="2YIFZM" id="4i$1wjauDw1" role="33vP2m">
              <ref role="37wK5l" to="dxuu:~UIManager.getBorder(java.lang.Object)" resolve="getBorder" />
              <ref role="1Pybhc" to="dxuu:~UIManager" resolve="UIManager" />
              <node concept="37vLTw" id="4i$1wjauOYt" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjauOBb" resolve="ARROW_BUTTON_BORDER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4i$1wjauDw3" role="3cqZAp">
          <node concept="3clFbS" id="4i$1wjauDw4" role="3clFbx">
            <node concept="3clFbF" id="4i$1wjauDw5" role="3cqZAp">
              <node concept="2OqwBi" id="4i$1wjauDw6" role="3clFbG">
                <node concept="37vLTw" id="4i$1wjauDw7" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wjauDvT" resolve="button" />
                </node>
                <node concept="liA8E" id="4i$1wjauDw8" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                  <node concept="2ShNRf" id="4i$1wjauDw9" role="37wK5m">
                    <node concept="1pGfFk" id="4i$1wjauDwa" role="2ShVmc">
                      <ref role="37wK5l" to="9z78:~CompoundBorder.&lt;init&gt;(javax.swing.border.Border,javax.swing.border.Border)" resolve="CompoundBorder" />
                      <node concept="37vLTw" id="4i$1wjauDwb" role="37wK5m">
                        <ref role="3cqZAo" node="4i$1wjauDvZ" resolve="border" />
                      </node>
                      <node concept="10Nm6u" id="4i$1wjauDwc" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4i$1wjauDwd" role="3clFbw">
            <node concept="3uibUv" id="4i$1wjauDwe" role="2ZW6by">
              <ref role="3uigEE" to="orxl:~UIResource" resolve="UIResource" />
            </node>
            <node concept="37vLTw" id="4i$1wjauDwf" role="2ZW6bz">
              <ref role="3cqZAo" node="4i$1wjauDvZ" resolve="border" />
            </node>
          </node>
          <node concept="9aQIb" id="4i$1wjauDwg" role="9aQIa">
            <node concept="3clFbS" id="4i$1wjauDwh" role="9aQI4">
              <node concept="3clFbF" id="4i$1wjauDwi" role="3cqZAp">
                <node concept="2OqwBi" id="4i$1wjauDwj" role="3clFbG">
                  <node concept="37vLTw" id="4i$1wjauDwk" role="2Oq$k0">
                    <ref role="3cqZAo" node="4i$1wjauDvT" resolve="button" />
                  </node>
                  <node concept="liA8E" id="4i$1wjauDwl" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                    <node concept="37vLTw" id="4i$1wjauDwm" role="37wK5m">
                      <ref role="3cqZAo" node="4i$1wjauDvZ" resolve="border" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjauJMx" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjauKfB" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjauJMv" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjauDvT" resolve="button" />
            </node>
            <node concept="liA8E" id="4i$1wjauL3j" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setInheritsPopupMenu(boolean)" resolve="setInheritsPopupMenu" />
              <node concept="3clFbT" id="4i$1wjauLfI" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4i$1wjauDwn" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wjauDwo" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wjauDvT" resolve="button" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4i$1wjauDwp" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjauLoJ" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
      </node>
      <node concept="37vLTG" id="4i$1wjauDwr" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="direction" />
        <node concept="10Oyi0" id="4i$1wjauDws" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wjauDtL" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wjauHoT" role="1zkMxy">
      <ref role="3uigEE" to="htnt:~BasicSpinnerUI" resolve="BasicSpinnerUI" />
    </node>
  </node>
  <node concept="312cEu" id="4i$1wjauSpP">
    <property role="TrG5h" value="StepChanger" />
    <node concept="Wx3nA" id="4i$1wjavu8G" role="jymVt">
      <property role="TrG5h" value="SPINNER_WIDTH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjavjwJ" role="1B3o_S" />
      <node concept="10Oyi0" id="4i$1wjavtBr" role="1tU5fm" />
      <node concept="3cmrfG" id="4i$1wjavvf0" role="33vP2m">
        <property role="3cmrfH" value="100" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wjav$xi" role="jymVt">
      <property role="TrG5h" value="SPINNER_HEIGHT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjavxfR" role="1B3o_S" />
      <node concept="10Oyi0" id="4i$1wjav$01" role="1tU5fm" />
      <node concept="3cmrfG" id="4i$1wjav_yf" role="33vP2m">
        <property role="3cmrfH" value="25" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjavitB" role="jymVt" />
    <node concept="312cEg" id="4i$1wjaxAps" role="jymVt">
      <property role="TrG5h" value="counterexample" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjax$yj" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaxAb1" role="1tU5fm">
        <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wja$gW3" role="jymVt">
      <property role="TrG5h" value="systemHighlighter" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wja$eyL" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wja$gnU" role="1tU5fm">
        <ref role="3uigEE" to="embu:2UEABl_y236" resolve="SystemHighlighter" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaxANC" role="jymVt" />
    <node concept="312cEg" id="4i$1wj9OW2p" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="4i$1wj9OQ4H" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjax4hI" role="1tU5fm">
        <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjauXHM" role="jymVt" />
    <node concept="3clFbW" id="4i$1wjaxElw" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaxElx" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaxElz" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaxIo6" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaxJST" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaxKZN" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjaxFyK" resolve="counterexample" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaxJ7s" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjaxIo5" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjaxJI5" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjaxAps" resolve="counterexample" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja$jKc" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wja$mP3" role="3clFbG">
            <node concept="37vLTw" id="4i$1wja$oiz" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjaz28v" resolve="systemHighlighter" />
            </node>
            <node concept="2OqwBi" id="4i$1wja$kwB" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wja$jKa" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wja$lDG" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wja$gW3" resolve="systemHighlighter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaxCMf" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaxFyK" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexample" />
        <node concept="3uibUv" id="4i$1wjaxGbQ" role="1tU5fm">
          <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaz28v" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="systemHighlighter" />
        <node concept="3uibUv" id="4i$1wjaz3oj" role="1tU5fm">
          <ref role="3uigEE" to="embu:2UEABl_y236" resolve="SystemHighlighter" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaxBJE" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjauV9g" role="jymVt">
      <property role="TrG5h" value="setPanelModel" />
      <node concept="3clFbS" id="4i$1wjauV9h" role="3clF47">
        <node concept="3clFbF" id="4i$1wjav7Zy" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjavaYI" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjax7mY" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjax6pv" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjax7Tr" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wj9OW2p" resolve="model" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjax91i" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjauV9q" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaxvMH" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaxvMF" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JSpinner.setModel(javax.swing.SpinnerModel)" resolve="setModel" />
            <node concept="2OqwBi" id="4i$1wjaxxs4" role="37wK5m">
              <node concept="37vLTw" id="4i$1wjaxwXQ" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjauV9q" resolve="model" />
              </node>
              <node concept="liA8E" id="4i$1wjaxxFU" role="2OqNvi">
                <ref role="37wK5l" to="o0x9:4i$1wjarf_C" resolve="getStepSpinnerModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjauV9o" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjauV9p" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjauV9q" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4i$1wjauV9r" role="1tU5fm">
          <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4i$1wjauV9s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjauV9t" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjauV9u" role="jymVt">
      <property role="TrG5h" value="initView" />
      <node concept="3clFbS" id="4i$1wjauV9v" role="3clF47">
        <node concept="3clFbF" id="4i$1wjavgEV" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjavgEU" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
            <node concept="2ShNRf" id="4i$1wjavAZo" role="37wK5m">
              <node concept="1pGfFk" id="4i$1wjavDPL" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                <node concept="37vLTw" id="4i$1wjavFcv" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjavu8G" resolve="SPINNER_WIDTH" />
                </node>
                <node concept="37vLTw" id="4i$1wjavGCu" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjav$xi" resolve="SPINNER_HEIGHT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjauV9w" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjauV9x" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wjauV9y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjauV9z" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjauV9$" role="jymVt">
      <property role="TrG5h" value="initController" />
      <node concept="3clFbS" id="4i$1wjauV9_" role="3clF47">
        <node concept="3cpWs8" id="4i$1wja_Qf8" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wja_Qf6" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="stepIndexModel" />
            <node concept="3uibUv" id="4i$1wja_Rae" role="1tU5fm">
              <ref role="3uigEE" to="o0x9:4i$1wja$u_D" resolve="StepIndexModel" />
            </node>
            <node concept="2OqwBi" id="4i$1wja_S$u" role="33vP2m">
              <node concept="37vLTw" id="4i$1wja_S4s" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wj9OW2p" resolve="model" />
              </node>
              <node concept="liA8E" id="4i$1wja_SIs" role="2OqNvi">
                <ref role="37wK5l" to="o0x9:4i$1wja_eu2" resolve="getStepIndexModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjavU_o" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjavU_n" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JSpinner.addChangeListener(javax.swing.event.ChangeListener)" resolve="addChangeListener" />
            <node concept="1bVj0M" id="4i$1wjavVia" role="37wK5m">
              <node concept="3clFbS" id="4i$1wjavVib" role="1bW5cS">
                <node concept="3cpWs8" id="4i$1wjavYcy" role="3cqZAp">
                  <node concept="3cpWsn" id="4i$1wjavYcw" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="spinner" />
                    <node concept="3uibUv" id="4i$1wjax9Fi" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JSpinner" resolve="JSpinner" />
                    </node>
                    <node concept="10QFUN" id="4i$1wjaxb9W" role="33vP2m">
                      <node concept="3uibUv" id="4i$1wjaxb9U" role="10QFUM">
                        <ref role="3uigEE" to="dxuu:~JSpinner" resolve="JSpinner" />
                      </node>
                      <node concept="2OqwBi" id="4i$1wjaxdac" role="10QFUP">
                        <node concept="37vLTw" id="4i$1wjaxctW" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wjavVSL" resolve="event" />
                        </node>
                        <node concept="liA8E" id="4i$1wjaxdpB" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~EventObject.getSource()" resolve="getSource" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4i$1wjaxeub" role="3cqZAp">
                  <node concept="3cpWsn" id="4i$1wjaxeu9" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="step" />
                    <node concept="17QB3L" id="4i$1wjaxeRx" role="1tU5fm" />
                    <node concept="10QFUN" id="4i$1wjaxgfD" role="33vP2m">
                      <node concept="17QB3L" id="4i$1wjaxgfB" role="10QFUM" />
                      <node concept="2OqwBi" id="4i$1wjaxhKO" role="10QFUP">
                        <node concept="37vLTw" id="4i$1wjaxgQV" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wjavYcw" resolve="spinner" />
                        </node>
                        <node concept="liA8E" id="4i$1wjaxikR" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JSpinner.getValue()" resolve="getValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4i$1wjaxM2X" role="3cqZAp">
                  <node concept="3cpWsn" id="4i$1wjaxM2V" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="stepIndex" />
                    <node concept="10Oyi0" id="4i$1wjaxMzl" role="1tU5fm" />
                    <node concept="2OqwBi" id="4i$1wjaxONG" role="33vP2m">
                      <node concept="37vLTw" id="4i$1wjaxOgg" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wjaxAps" resolve="counterexample" />
                      </node>
                      <node concept="liA8E" id="4i$1wjaxPq7" role="2OqNvi">
                        <ref role="37wK5l" to="8uw2:2UEABl_AgVT" resolve="indexOf" />
                        <node concept="37vLTw" id="4i$1wjaxQ_h" role="37wK5m">
                          <ref role="3cqZAo" node="4i$1wjaxeu9" resolve="step" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4i$1wja_i85" role="3cqZAp">
                  <node concept="2OqwBi" id="4i$1wja_mcd" role="3clFbG">
                    <node concept="liA8E" id="4i$1wja_mB4" role="2OqNvi">
                      <ref role="37wK5l" to="o0x9:4i$1wja$SRl" resolve="setStepIndex" />
                      <node concept="37vLTw" id="4i$1wja_nOV" role="37wK5m">
                        <ref role="3cqZAo" node="4i$1wjaxM2V" resolve="stepIndex" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4i$1wja_U9D" role="2Oq$k0">
                      <ref role="3cqZAo" node="4i$1wja_Qf6" resolve="stepIndexModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="4i$1wjavVSL" role="1bW2Oz">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="4i$1wjavWxQ" role="1tU5fm">
                  <ref role="3uigEE" to="gsia:~ChangeEvent" resolve="ChangeEvent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja_rBj" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wja_svA" role="3clFbG">
            <node concept="liA8E" id="4i$1wja_sL4" role="2OqNvi">
              <ref role="37wK5l" to="o0x9:4i$1wja$SRX" resolve="addPropertyChangeListener" />
              <node concept="10M0yZ" id="4i$1wja_uv_" role="37wK5m">
                <ref role="3cqZAo" to="o0x9:4i$1wja$SQZ" resolve="STEP_INDEX" />
                <ref role="1PxDUh" to="o0x9:4i$1wja$u_D" resolve="StepIndexModel" />
              </node>
              <node concept="1bVj0M" id="4i$1wja_v9D" role="37wK5m">
                <node concept="3clFbS" id="4i$1wja_v9F" role="1bW5cS">
                  <node concept="3cpWs8" id="4i$1wja_HLF" role="3cqZAp">
                    <node concept="3cpWsn" id="4i$1wja_HLG" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="stepIndex" />
                      <node concept="10Oyi0" id="4i$1wja_N7Q" role="1tU5fm" />
                      <node concept="10QFUN" id="4i$1wja_HLI" role="33vP2m">
                        <node concept="10Oyi0" id="4i$1wja_NAb" role="10QFUM" />
                        <node concept="2OqwBi" id="4i$1wja_HLK" role="10QFUP">
                          <node concept="37vLTw" id="4i$1wja_HLL" role="2Oq$k0">
                            <ref role="3cqZAo" node="4i$1wja_yK3" resolve="event" />
                          </node>
                          <node concept="liA8E" id="4i$1wja_HLM" role="2OqNvi">
                            <ref role="37wK5l" to="mnlj:~PropertyChangeEvent.getNewValue()" resolve="getNewValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4i$1wja_NOF" role="3cqZAp" />
                  <node concept="3cpWs8" id="4i$1wjayg8P" role="3cqZAp">
                    <node concept="3cpWsn" id="4i$1wjayg8N" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="dataScrollModel" />
                      <node concept="3uibUv" id="4i$1wjayhWd" role="1tU5fm">
                        <ref role="3uigEE" to="dxuu:~BoundedRangeModel" resolve="BoundedRangeModel" />
                      </node>
                      <node concept="2OqwBi" id="4i$1wjaykJP" role="33vP2m">
                        <node concept="37vLTw" id="4i$1wjayk2U" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wj9OW2p" resolve="model" />
                        </node>
                        <node concept="liA8E" id="4i$1wjayl5y" role="2OqNvi">
                          <ref role="37wK5l" to="o0x9:4i$1wj9Q20b" resolve="getDataScrollModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4i$1wjay1Zh" role="3cqZAp">
                    <node concept="3cpWsn" id="4i$1wjay1Zf" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="percent" />
                      <node concept="10P55v" id="4i$1wjay2uz" role="1tU5fm" />
                      <node concept="FJ1c_" id="4i$1wjay5zI" role="33vP2m">
                        <node concept="2OqwBi" id="4i$1wjay7kt" role="3uHU7w">
                          <node concept="37vLTw" id="4i$1wjay6En" role="2Oq$k0">
                            <ref role="3cqZAo" node="4i$1wjaxAps" resolve="counterexample" />
                          </node>
                          <node concept="liA8E" id="4i$1wjay87z" role="2OqNvi">
                            <ref role="37wK5l" to="8uw2:7AO$LopqN24" resolve="length" />
                          </node>
                        </node>
                        <node concept="1eOMI4" id="4i$1wjay3UI" role="3uHU7B">
                          <node concept="10QFUN" id="4i$1wjay3UF" role="1eOMHV">
                            <node concept="10P55v" id="4i$1wjay3UK" role="10QFUM" />
                            <node concept="37vLTw" id="4i$1wjay51e" role="10QFUP">
                              <ref role="3cqZAo" node="4i$1wja_HLG" resolve="stepIndex" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4i$1wjaycCd" role="3cqZAp">
                    <node concept="3cpWsn" id="4i$1wjaycCb" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="value" />
                      <node concept="10Oyi0" id="4i$1wjayd5J" role="1tU5fm" />
                      <node concept="10QFUN" id="4i$1wjaypLH" role="33vP2m">
                        <node concept="10Oyi0" id="4i$1wjayqpf" role="10QFUM" />
                        <node concept="1eOMI4" id="4i$1wjaysWK" role="10QFUP">
                          <node concept="17qRlL" id="4i$1wjayo7A" role="1eOMHV">
                            <node concept="2OqwBi" id="4i$1wjayn0p" role="3uHU7B">
                              <node concept="37vLTw" id="4i$1wjaymjn" role="2Oq$k0">
                                <ref role="3cqZAo" node="4i$1wjayg8N" resolve="dataScrollModel" />
                              </node>
                              <node concept="liA8E" id="4i$1wjayntx" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~BoundedRangeModel.getMaximum()" resolve="getMaximum" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4i$1wjayoWn" role="3uHU7w">
                              <ref role="3cqZAo" node="4i$1wjay1Zf" resolve="percent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4i$1wjaxZff" role="3cqZAp">
                    <node concept="2OqwBi" id="4i$1wjay0hG" role="3clFbG">
                      <node concept="liA8E" id="4i$1wjay0DM" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~BoundedRangeModel.setValue(int)" resolve="setValue" />
                        <node concept="37vLTw" id="4i$1wjayu68" role="37wK5m">
                          <ref role="3cqZAo" node="4i$1wjaycCb" resolve="value" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4i$1wjayvEN" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wjayg8N" resolve="dataScrollModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4i$1wjaywdS" role="3cqZAp" />
                  <node concept="3clFbF" id="4i$1wjayyxh" role="3cqZAp">
                    <node concept="2OqwBi" id="4i$1wjay$cJ" role="3clFbG">
                      <node concept="2OqwBi" id="4i$1wjayziA" role="2Oq$k0">
                        <node concept="37vLTw" id="4i$1wjayyxf" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wj9OW2p" resolve="model" />
                        </node>
                        <node concept="liA8E" id="4i$1wjayzTo" role="2OqNvi">
                          <ref role="37wK5l" to="o0x9:4i$1wjafbTQ" resolve="getGlobalTimeModel" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4i$1wjay$Cb" role="2OqNvi">
                        <ref role="37wK5l" to="o0x9:4i$1wjafdnD" resolve="setTime" />
                        <node concept="2OqwBi" id="4i$1wjayAR3" role="37wK5m">
                          <node concept="37vLTw" id="4i$1wjayA2B" role="2Oq$k0">
                            <ref role="3cqZAo" node="4i$1wjaxAps" resolve="counterexample" />
                          </node>
                          <node concept="liA8E" id="4i$1wjaz09q" role="2OqNvi">
                            <ref role="37wK5l" to="8uw2:4i$1wjayE$v" resolve="timeOf" />
                            <node concept="37vLTw" id="4i$1wjaz1wS" role="37wK5m">
                              <ref role="3cqZAo" node="4i$1wja_HLG" resolve="stepIndex" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4i$1wjazR64" role="3cqZAp" />
                  <node concept="3cpWs8" id="4i$1wja$2q9" role="3cqZAp">
                    <node concept="3cpWsn" id="4i$1wja$2q7" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="itemValues" />
                      <node concept="3uibUv" id="4i$1wja$3z6" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="4i$1wja$5GB" role="11_B2D">
                          <ref role="3uigEE" to="8uw2:4i$1wjaiVt2" resolve="SystemItemValue" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4i$1wjazTvS" role="33vP2m">
                        <node concept="37vLTw" id="4i$1wjazSIU" role="2Oq$k0">
                          <ref role="3cqZAo" node="4i$1wjaxAps" resolve="counterexample" />
                        </node>
                        <node concept="liA8E" id="4i$1wjazUgp" role="2OqNvi">
                          <ref role="37wK5l" to="8uw2:4i$1wjazxJC" resolve="getItemValues" />
                          <node concept="37vLTw" id="4i$1wjazVYl" role="37wK5m">
                            <ref role="3cqZAo" node="4i$1wja_HLG" resolve="stepIndex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4i$1wja$pfm" role="3cqZAp">
                    <node concept="2OqwBi" id="4i$1wja$q4K" role="3clFbG">
                      <node concept="37vLTw" id="4i$1wja$pfk" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wja$gW3" resolve="systemHighlighter" />
                      </node>
                      <node concept="liA8E" id="4i$1wja$rMy" role="2OqNvi">
                        <ref role="37wK5l" to="embu:2UEABl_yHc0" resolve="highlight" />
                        <node concept="37vLTw" id="4i$1wja$sIn" role="37wK5m">
                          <ref role="3cqZAo" node="4i$1wja$2q7" resolve="itemValues" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1mZ5x_OoGFt" role="3cqZAp" />
                  <node concept="3cpWs8" id="1mZ5x_OoHX8" role="3cqZAp">
                    <node concept="3cpWsn" id="1mZ5x_OoHX6" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="step" />
                      <node concept="17QB3L" id="1mZ5x_OoID0" role="1tU5fm" />
                      <node concept="AH0OO" id="1mZ5x_OoM7D" role="33vP2m">
                        <node concept="37vLTw" id="1mZ5x_OoNzN" role="AHEQo">
                          <ref role="3cqZAo" node="4i$1wja_HLG" resolve="stepIndex" />
                        </node>
                        <node concept="2OqwBi" id="1mZ5x_OoKSb" role="AHHXb">
                          <node concept="37vLTw" id="1mZ5x_OoJY9" role="2Oq$k0">
                            <ref role="3cqZAo" node="4i$1wjaxAps" resolve="counterexample" />
                          </node>
                          <node concept="liA8E" id="1mZ5x_OoLHS" role="2OqNvi">
                            <ref role="37wK5l" to="8uw2:4i$1wjaaaHj" resolve="getSteps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1mZ5x_OoOMs" role="3cqZAp">
                    <node concept="1rXfSq" id="1mZ5x_OoOMq" role="3clFbG">
                      <ref role="37wK5l" to="dxuu:~JSpinner.setValue(java.lang.Object)" resolve="setValue" />
                      <node concept="37vLTw" id="1mZ5x_OoQmh" role="37wK5m">
                        <ref role="3cqZAo" node="1mZ5x_OoHX6" resolve="step" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="4i$1wja_yK3" role="1bW2Oz">
                  <property role="3TUv4t" value="true" />
                  <property role="TrG5h" value="event" />
                  <node concept="3uibUv" id="4i$1wja_$Mo" role="1tU5fm">
                    <ref role="3uigEE" to="mnlj:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wja_UCe" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wja_Qf6" resolve="stepIndexModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjauV9U" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjauV9V" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wjauV9W" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wjauSpQ" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wjauU8M" role="1zkMxy">
      <ref role="3uigEE" node="71Z3v64q$LC" resolve="HorizontalSpinner" />
    </node>
    <node concept="3uibUv" id="4i$1wjauUlQ" role="EKbjA">
      <ref role="3uigEE" to="o0x9:4i$1wj9HYbK" resolve="DebugPanelMVCItem" />
    </node>
  </node>
  <node concept="312cEu" id="4i$1wjaA4vF">
    <property role="TrG5h" value="ConditionNavigator" />
    <node concept="Wx3nA" id="4i$1wjaA5N5" role="jymVt">
      <property role="TrG5h" value="SPINNER_WIDTH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaA5N6" role="1B3o_S" />
      <node concept="10Oyi0" id="4i$1wjaA5N7" role="1tU5fm" />
      <node concept="3cmrfG" id="4i$1wjaA5N8" role="33vP2m">
        <property role="3cmrfH" value="300" />
      </node>
    </node>
    <node concept="Wx3nA" id="4i$1wjaA5N9" role="jymVt">
      <property role="TrG5h" value="SPINNER_HEIGHT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaA5Na" role="1B3o_S" />
      <node concept="10Oyi0" id="4i$1wjaA5Nb" role="1tU5fm" />
      <node concept="3cmrfG" id="4i$1wjaA5Nc" role="33vP2m">
        <property role="3cmrfH" value="25" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaA5Nd" role="jymVt" />
    <node concept="312cEg" id="4i$1wjaA5Ne" role="jymVt">
      <property role="TrG5h" value="counterexample" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaA5Nf" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaA5Ng" role="1tU5fm">
        <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wjaA5Nh" role="jymVt">
      <property role="TrG5h" value="conditionParser" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaA5Ni" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaA9q2" role="1tU5fm">
        <ref role="3uigEE" to="frfe:7AO$LopojXX" resolve="ConditionParser" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaA5Nk" role="jymVt" />
    <node concept="312cEg" id="4i$1wjaA5Nl" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="4i$1wjaA5Nm" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaA5Nn" role="1tU5fm">
        <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaA5No" role="jymVt" />
    <node concept="3clFbW" id="4i$1wjaA5Np" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaA5Nq" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaA5Nr" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaA5Ns" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaA5Nt" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaA5Nu" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjaA5ND" resolve="counterexample" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaA5Nv" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjaA5Nw" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjaA5Nx" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjaA5Ne" resolve="counterexample" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaA5Ny" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaA5Nz" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaA5N_" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjaA5NA" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjaA5NB" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjaA5Nh" resolve="conditionParser" />
              </node>
            </node>
            <node concept="2ShNRf" id="4i$1wjaAayq" role="37vLTx">
              <node concept="HV5vD" id="4i$1wjaAe9i" role="2ShVmc">
                <ref role="HV5vE" to="frfe:7AO$LopojXX" resolve="ConditionParser" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaA5NC" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaA5ND" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexample" />
        <node concept="3uibUv" id="4i$1wjaA5NE" role="1tU5fm">
          <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaA5NJ" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjaA5NK" role="jymVt">
      <property role="TrG5h" value="setPanelModel" />
      <node concept="3clFbS" id="4i$1wjaA5NL" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaA5NM" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaA5NN" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaA5NO" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjaA5NP" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjaA5NQ" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjaA5Nl" resolve="model" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaA5NR" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjaA5NZ" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaAvln" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaAvll" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JSpinner.setModel(javax.swing.SpinnerModel)" resolve="setModel" />
            <node concept="2OqwBi" id="4i$1wjaAxgi" role="37wK5m">
              <node concept="37vLTw" id="4i$1wjaAwKN" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaA5NZ" resolve="model" />
              </node>
              <node concept="liA8E" id="4i$1wjaAxnL" role="2OqNvi">
                <ref role="37wK5l" to="o0x9:4i$1wjaAq_p" resolve="getConditionModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaA5NX" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjaA5NY" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjaA5NZ" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4i$1wjaA5O0" role="1tU5fm">
          <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4i$1wjaA5O1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaA5O2" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjaA5O3" role="jymVt">
      <property role="TrG5h" value="initView" />
      <node concept="3clFbS" id="4i$1wjaA5O4" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaA5O5" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaA5O6" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
            <node concept="2ShNRf" id="4i$1wjaA5O7" role="37wK5m">
              <node concept="1pGfFk" id="4i$1wjaA5O8" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                <node concept="37vLTw" id="4i$1wjaA5O9" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaA5N5" resolve="SPINNER_WIDTH" />
                </node>
                <node concept="37vLTw" id="4i$1wjaA5Oa" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaA5N9" resolve="SPINNER_HEIGHT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mZ5x_OrjLQ" role="3cqZAp">
          <node concept="2OqwBi" id="1mZ5x_OrkbR" role="3clFbG">
            <node concept="1rXfSq" id="1mZ5x_OrjLO" role="2Oq$k0">
              <ref role="37wK5l" node="1mZ5x_OqDtv" resolve="getConditionField" />
            </node>
            <node concept="liA8E" id="1mZ5x_OrmkI" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setEditable(boolean)" resolve="setEditable" />
              <node concept="3clFbT" id="1mZ5x_Ornlw" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaA5Ob" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjaA5Oc" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wjaA5Od" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaA5Oe" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjaA5Of" role="jymVt">
      <property role="TrG5h" value="initController" />
      <node concept="3clFbS" id="4i$1wjaA5Og" role="3clF47">
        <node concept="1DcWWT" id="4i$1wjaA$6K" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaA$6L" role="1Duv9x">
            <property role="TrG5h" value="component" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4i$1wjaA_gs" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
          </node>
          <node concept="1rXfSq" id="4i$1wjaAAVR" role="1DdaDG">
            <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
          </node>
          <node concept="3clFbS" id="4i$1wjaA$6N" role="2LFqv$">
            <node concept="3cpWs8" id="4i$1wjaBOxY" role="3cqZAp">
              <node concept="3cpWsn" id="4i$1wjaBOxW" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="componentName" />
                <node concept="17QB3L" id="4i$1wjaBP0V" role="1tU5fm" />
                <node concept="2OqwBi" id="4i$1wjaBQyA" role="33vP2m">
                  <node concept="37vLTw" id="4i$1wjaBPUW" role="2Oq$k0">
                    <ref role="3cqZAo" node="4i$1wjaA$6L" resolve="component" />
                  </node>
                  <node concept="liA8E" id="4i$1wjaBQG3" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4i$1wjaABwR" role="3cqZAp">
              <node concept="17R0WA" id="4i$1wjaADAY" role="3clFbw">
                <node concept="10M0yZ" id="4i$1wjaAF9O" role="3uHU7w">
                  <ref role="3cqZAo" node="4i$1wjauMhP" resolve="NEXT_BUTTON_NAME" />
                  <ref role="1PxDUh" node="4i$1wjauDtK" resolve="HorizontalSpinnerUI" />
                </node>
                <node concept="37vLTw" id="4i$1wjaBSrH" role="3uHU7B">
                  <ref role="3cqZAo" node="4i$1wjaBOxW" resolve="componentName" />
                </node>
              </node>
              <node concept="3clFbS" id="4i$1wjaABwT" role="3clFbx">
                <node concept="3cpWs8" id="4i$1wjaAG5S" role="3cqZAp">
                  <node concept="3cpWsn" id="4i$1wjaAG5Q" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="nextButton" />
                    <node concept="3uibUv" id="4i$1wjaAGyh" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
                    </node>
                    <node concept="10QFUN" id="4i$1wjaAHsa" role="33vP2m">
                      <node concept="3uibUv" id="4i$1wjaAHs8" role="10QFUM">
                        <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
                      </node>
                      <node concept="37vLTw" id="4i$1wjaAIl4" role="10QFUP">
                        <ref role="3cqZAo" node="4i$1wjaA$6L" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4i$1wjaClGa" role="3cqZAp">
                  <node concept="2OqwBi" id="4i$1wjaClGb" role="3clFbG">
                    <node concept="37vLTw" id="4i$1wjaCn9Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="4i$1wjaAG5Q" resolve="nextButton" />
                    </node>
                    <node concept="liA8E" id="4i$1wjaClGd" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                      <node concept="1bVj0M" id="4i$1wjaClGe" role="37wK5m">
                        <node concept="3clFbS" id="4i$1wjaClGf" role="1bW5cS">
                          <node concept="3clFbF" id="4i$1wjaClGg" role="3cqZAp">
                            <node concept="1rXfSq" id="4i$1wjaClGh" role="3clFbG">
                              <ref role="37wK5l" node="4i$1wjaC3Lb" resolve="processAction" />
                              <node concept="1bVj0M" id="4i$1wjaClGi" role="37wK5m">
                                <node concept="3clFbS" id="4i$1wjaClGj" role="1bW5cS">
                                  <node concept="3clFbF" id="4i$1wjaClGk" role="3cqZAp">
                                    <node concept="3eOVzh" id="4i$1wjaCnsL" role="3clFbG">
                                      <node concept="37vLTw" id="4i$1wjaClGn" role="3uHU7B">
                                        <ref role="3cqZAo" node="4i$1wjaClGo" resolve="stepIndex" />
                                      </node>
                                      <node concept="2OqwBi" id="4i$1wjaCpGb" role="3uHU7w">
                                        <node concept="37vLTw" id="4i$1wjaCp3a" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4i$1wjaA5Ne" resolve="counterexample" />
                                        </node>
                                        <node concept="liA8E" id="4i$1wjaCq0E" role="2OqNvi">
                                          <ref role="37wK5l" to="8uw2:7AO$LopqN24" resolve="length" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="4i$1wjaClGo" role="1bW2Oz">
                                  <property role="3TUv4t" value="true" />
                                  <property role="TrG5h" value="stepIndex" />
                                  <node concept="3uibUv" id="4i$1wjaClGp" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1bVj0M" id="4i$1wjaClGq" role="37wK5m">
                                <node concept="3clFbS" id="4i$1wjaClGr" role="1bW5cS">
                                  <node concept="3clFbF" id="4i$1wjaClGs" role="3cqZAp">
                                    <node concept="3cpWs3" id="4i$1wjaCqdT" role="3clFbG">
                                      <node concept="37vLTw" id="4i$1wjaClGv" role="3uHU7B">
                                        <ref role="3cqZAo" node="4i$1wjaClGw" resolve="stepIndex" />
                                      </node>
                                      <node concept="3cmrfG" id="4i$1wjaClGu" role="3uHU7w">
                                        <property role="3cmrfH" value="1" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="4i$1wjaClGw" role="1bW2Oz">
                                  <property role="3TUv4t" value="true" />
                                  <property role="TrG5h" value="stepIndex" />
                                  <node concept="3uibUv" id="4i$1wjaClGx" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="4i$1wjaClGy" role="1bW2Oz">
                          <property role="3TUv4t" value="true" />
                          <property role="TrG5h" value="event" />
                          <node concept="3uibUv" id="4i$1wjaClGz" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4i$1wjaBM1_" role="3eNLev">
                <node concept="17R0WA" id="4i$1wjaBUBm" role="3eO9$A">
                  <node concept="10M0yZ" id="4i$1wjaBVZb" role="3uHU7w">
                    <ref role="3cqZAo" node="4i$1wjauNo1" resolve="PREVIOUS_BUTTON_NAME" />
                    <ref role="1PxDUh" node="4i$1wjauDtK" resolve="HorizontalSpinnerUI" />
                  </node>
                  <node concept="37vLTw" id="4i$1wjaBSU$" role="3uHU7B">
                    <ref role="3cqZAo" node="4i$1wjaBOxW" resolve="componentName" />
                  </node>
                </node>
                <node concept="3clFbS" id="4i$1wjaBM1B" role="3eOfB_">
                  <node concept="3cpWs8" id="4i$1wjaBVZD" role="3cqZAp">
                    <node concept="3cpWsn" id="4i$1wjaBVZE" role="3cpWs9">
                      <property role="3TUv4t" value="true" />
                      <property role="TrG5h" value="previousButton" />
                      <node concept="3uibUv" id="4i$1wjaBVZF" role="1tU5fm">
                        <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
                      </node>
                      <node concept="10QFUN" id="4i$1wjaBVZG" role="33vP2m">
                        <node concept="3uibUv" id="4i$1wjaBVZH" role="10QFUM">
                          <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
                        </node>
                        <node concept="37vLTw" id="4i$1wjaBVZI" role="10QFUP">
                          <ref role="3cqZAo" node="4i$1wjaA$6L" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4i$1wjaBVZJ" role="3cqZAp">
                    <node concept="2OqwBi" id="4i$1wjaBVZK" role="3clFbG">
                      <node concept="37vLTw" id="4i$1wjaBVZL" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wjaBVZE" resolve="previousButton" />
                      </node>
                      <node concept="liA8E" id="4i$1wjaBVZM" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
                        <node concept="1bVj0M" id="4i$1wjaBVZN" role="37wK5m">
                          <node concept="3clFbS" id="4i$1wjaBVZO" role="1bW5cS">
                            <node concept="3clFbF" id="4i$1wjaCcJR" role="3cqZAp">
                              <node concept="1rXfSq" id="4i$1wjaCcJQ" role="3clFbG">
                                <ref role="37wK5l" node="4i$1wjaC3Lb" resolve="processAction" />
                                <node concept="1bVj0M" id="4i$1wjaCdpR" role="37wK5m">
                                  <node concept="3clFbS" id="4i$1wjaCdpS" role="1bW5cS">
                                    <node concept="3clFbF" id="4i$1wjaCf4J" role="3cqZAp">
                                      <node concept="2d3UOw" id="4i$1wjaCgbz" role="3clFbG">
                                        <node concept="3cmrfG" id="4i$1wjaCheN" role="3uHU7w">
                                          <property role="3cmrfH" value="0" />
                                        </node>
                                        <node concept="37vLTw" id="4i$1wjaCf4I" role="3uHU7B">
                                          <ref role="3cqZAo" node="4i$1wjaCdIC" resolve="stepIndex" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTG" id="4i$1wjaCdIC" role="1bW2Oz">
                                    <property role="3TUv4t" value="true" />
                                    <property role="TrG5h" value="stepIndex" />
                                    <node concept="3uibUv" id="4i$1wjaCedM" role="1tU5fm">
                                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="1bVj0M" id="4i$1wjaCi6O" role="37wK5m">
                                  <node concept="3clFbS" id="4i$1wjaCi6Q" role="1bW5cS">
                                    <node concept="3clFbF" id="4i$1wjaCk3_" role="3cqZAp">
                                      <node concept="3cpWsd" id="4i$1wjaCl6B" role="3clFbG">
                                        <node concept="3cmrfG" id="4i$1wjaClyW" role="3uHU7w">
                                          <property role="3cmrfH" value="1" />
                                        </node>
                                        <node concept="37vLTw" id="4i$1wjaCk3$" role="3uHU7B">
                                          <ref role="3cqZAo" node="4i$1wjaCisU" resolve="stepIndex" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTG" id="4i$1wjaCisU" role="1bW2Oz">
                                    <property role="3TUv4t" value="true" />
                                    <property role="TrG5h" value="stepIndex" />
                                    <node concept="3uibUv" id="4i$1wjaCjbp" role="1tU5fm">
                                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="4i$1wjaBW0T" role="1bW2Oz">
                            <property role="3TUv4t" value="true" />
                            <property role="TrG5h" value="event" />
                            <node concept="3uibUv" id="4i$1wjaBW0U" role="1tU5fm">
                              <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
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
      <node concept="3Tm1VV" id="4i$1wjaA5Q5" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjaA5Q6" role="3clF45" />
      <node concept="2AHcQZ" id="4i$1wjaA5Q7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaC1c0" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjaC3Lb" role="jymVt">
      <property role="TrG5h" value="processAction" />
      <node concept="3clFbS" id="4i$1wjaC3Le" role="3clF47">
        <node concept="3cpWs8" id="4i$1wjaCb8V" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaCb8W" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="condition" />
            <node concept="17QB3L" id="4i$1wjaCb8X" role="1tU5fm" />
            <node concept="10QFUN" id="4i$1wjaCb8Y" role="33vP2m">
              <node concept="17QB3L" id="4i$1wjaCb8Z" role="10QFUM" />
              <node concept="2OqwBi" id="1mZ5x_Orhc_" role="10QFUP">
                <node concept="1rXfSq" id="4i$1wjaCb90" role="2Oq$k0">
                  <ref role="37wK5l" node="1mZ5x_OqDtv" resolve="getConditionField" />
                </node>
                <node concept="liA8E" id="1mZ5x_Ori83" role="2OqNvi">
                  <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i$1wjaCb91" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaCb92" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="expression" />
            <node concept="3uibUv" id="4i$1wjaCb93" role="1tU5fm">
              <ref role="3uigEE" to="frfe:7AO$Lopok3l" resolve="Expression" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="4i$1wjaCb94" role="3cqZAp">
          <node concept="3clFbS" id="4i$1wjaCb95" role="1zxBo7">
            <node concept="3clFbF" id="4i$1wjaCb96" role="3cqZAp">
              <node concept="37vLTI" id="4i$1wjaCb97" role="3clFbG">
                <node concept="2OqwBi" id="4i$1wjaCb98" role="37vLTx">
                  <node concept="37vLTw" id="4i$1wjaCb99" role="2Oq$k0">
                    <ref role="3cqZAo" node="4i$1wjaA5Nh" resolve="conditionParser" />
                  </node>
                  <node concept="liA8E" id="4i$1wjaCb9a" role="2OqNvi">
                    <ref role="37wK5l" to="frfe:7AO$Lopopuo" resolve="parse" />
                    <node concept="37vLTw" id="4i$1wjaCb9b" role="37wK5m">
                      <ref role="3cqZAo" node="4i$1wjaCb8W" resolve="condition" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4i$1wjaCb9c" role="37vLTJ">
                  <ref role="3cqZAo" node="4i$1wjaCb92" resolve="expression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4i$1wjaCb9d" role="1zxBo5">
            <node concept="XOnhg" id="4i$1wjaCb9e" role="1zc67B">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="4VGzMuWDybq" role="1tU5fm">
                <node concept="3uibUv" id="4i$1wjaCb9f" role="nSUat">
                  <ref role="3uigEE" to="frfe:4i$1wja8Pfq" resolve="ConditionParseException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4i$1wjaCb9g" role="1zc67A">
              <node concept="3clFbF" id="4i$1wjaCb9h" role="3cqZAp">
                <node concept="2YIFZM" id="4i$1wjaCb9i" role="3clFbG">
                  <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object)" resolve="showMessageDialog" />
                  <node concept="10Nm6u" id="4i$1wjaCb9j" role="37wK5m" />
                  <node concept="2OqwBi" id="4i$1wjaCb9k" role="37wK5m">
                    <node concept="37vLTw" id="4i$1wjaCb9l" role="2Oq$k0">
                      <ref role="3cqZAo" node="4i$1wjaCb9e" resolve="e" />
                    </node>
                    <node concept="liA8E" id="4i$1wjaCb9m" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4i$1wjaCb9n" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1mZ5x_Op7Vm" role="3cqZAp">
          <node concept="3cpWsn" id="1mZ5x_Op7Vk" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="currentStepIndex" />
            <node concept="10Oyi0" id="1mZ5x_Op8l8" role="1tU5fm" />
            <node concept="2OqwBi" id="1mZ5x_Op8Gr" role="33vP2m">
              <node concept="2OqwBi" id="1mZ5x_Op8Gs" role="2Oq$k0">
                <node concept="37vLTw" id="1mZ5x_Op8Gt" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wjaA5Nl" resolve="model" />
                </node>
                <node concept="liA8E" id="1mZ5x_Op8Gu" role="2OqNvi">
                  <ref role="37wK5l" to="o0x9:4i$1wja_eu2" resolve="getStepIndexModel" />
                </node>
              </node>
              <node concept="liA8E" id="1mZ5x_Op8Gv" role="2OqNvi">
                <ref role="37wK5l" to="o0x9:4i$1wja$SRe" resolve="getCurrentStepIndex" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="4i$1wjaCb9o" role="3cqZAp">
          <node concept="3clFbS" id="4i$1wjaCb9p" role="2LFqv$">
            <node concept="3cpWs8" id="4i$1wjaCb9q" role="3cqZAp">
              <node concept="3cpWsn" id="4i$1wjaCb9r" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="itemSimpleNameToValueMap" />
                <node concept="3uibUv" id="4i$1wjaCb9s" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                  <node concept="17QB3L" id="4i$1wjaCb9t" role="11_B2D" />
                  <node concept="17QB3L" id="4i$1wjaCb9u" role="11_B2D" />
                </node>
                <node concept="2OqwBi" id="4i$1wjaCb9v" role="33vP2m">
                  <node concept="37vLTw" id="4i$1wjaCb9w" role="2Oq$k0">
                    <ref role="3cqZAo" node="4i$1wjaA5Ne" resolve="counterexample" />
                  </node>
                  <node concept="liA8E" id="4i$1wjaCb9x" role="2OqNvi">
                    <ref role="37wK5l" to="8uw2:2NwTEkpYgVw" resolve="getItemSimpleNameToValueMap" />
                    <node concept="37vLTw" id="4i$1wjaCb9y" role="37wK5m">
                      <ref role="3cqZAo" node="4i$1wjaCb9L" resolve="stepIndex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4i$1wjaCb9z" role="3cqZAp">
              <node concept="3clFbS" id="4i$1wjaCb9$" role="3clFbx">
                <node concept="3clFbF" id="4i$1wjaCb9_" role="3cqZAp">
                  <node concept="2OqwBi" id="4i$1wjaCb9A" role="3clFbG">
                    <node concept="2OqwBi" id="4i$1wjaCb9B" role="2Oq$k0">
                      <node concept="37vLTw" id="4i$1wjaCb9C" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wjaA5Nl" resolve="model" />
                      </node>
                      <node concept="liA8E" id="4i$1wjaCb9D" role="2OqNvi">
                        <ref role="37wK5l" to="o0x9:4i$1wja_eu2" resolve="getStepIndexModel" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4i$1wjaCb9E" role="2OqNvi">
                      <ref role="37wK5l" to="o0x9:4i$1wja$SRl" resolve="setStepIndex" />
                      <node concept="37vLTw" id="4i$1wjaCb9F" role="37wK5m">
                        <ref role="3cqZAo" node="4i$1wjaCb9L" resolve="stepIndex" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4i$1wjaCb9G" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="4i$1wjaCb9H" role="3clFbw">
                <node concept="37vLTw" id="4i$1wjaCb9I" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wjaCb92" resolve="expression" />
                </node>
                <node concept="liA8E" id="4i$1wjaCb9J" role="2OqNvi">
                  <ref role="37wK5l" to="frfe:7AO$LoppJU2" resolve="evaluate" />
                  <node concept="37vLTw" id="4i$1wjaCb9K" role="37wK5m">
                    <ref role="3cqZAo" node="4i$1wjaCb9r" resolve="itemSimpleNameToValueMap" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4i$1wjaCb9L" role="1Duv9x">
            <property role="TrG5h" value="stepIndex" />
            <node concept="10Oyi0" id="4i$1wjaCb9M" role="1tU5fm" />
            <node concept="2OqwBi" id="1mZ5x_OpbJy" role="33vP2m">
              <node concept="37vLTw" id="1mZ5x_Opay9" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaC8w5" resolve="stepFunction" />
              </node>
              <node concept="liA8E" id="1mZ5x_Opc1w" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="1mZ5x_Opd4W" role="37wK5m">
                  <ref role="3cqZAo" node="1mZ5x_Op7Vk" resolve="currentStepIndex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4i$1wjaCsF2" role="1Dwp0S">
            <node concept="37vLTw" id="4i$1wjaCrWU" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaC4Zr" resolve="stopPredicate" />
            </node>
            <node concept="liA8E" id="4i$1wjaCsX7" role="2OqNvi">
              <ref role="37wK5l" to="82uw:~Predicate.test(java.lang.Object)" resolve="test" />
              <node concept="37vLTw" id="4i$1wjaCtRO" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjaCb9L" resolve="stepIndex" />
              </node>
            </node>
          </node>
          <node concept="37vLTI" id="4i$1wjaCwwT" role="1Dwrff">
            <node concept="2OqwBi" id="4i$1wjaCy6M" role="37vLTx">
              <node concept="37vLTw" id="4i$1wjaCxxd" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaC8w5" resolve="stepFunction" />
              </node>
              <node concept="liA8E" id="4i$1wjaCye0" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="4i$1wjaCzca" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaCb9L" resolve="stepIndex" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaCvsW" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wjaCb9L" resolve="stepIndex" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4i$1wjaC2vv" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjaC3BX" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjaC4Zr" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="stopPredicate" />
        <node concept="3uibUv" id="4i$1wjaC6hY" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Predicate" resolve="Predicate" />
          <node concept="3uibUv" id="4i$1wjaC744" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaC8w5" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="stepFunction" />
        <node concept="3uibUv" id="4i$1wjaC9T7" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="4i$1wjaCaA6" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
          <node concept="3uibUv" id="4i$1wjaCb3L" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1mZ5x_Oqx5$" role="jymVt" />
    <node concept="3clFb_" id="1mZ5x_OqDtv" role="jymVt">
      <property role="TrG5h" value="getConditionField" />
      <node concept="3clFbS" id="1mZ5x_OqDty" role="3clF47">
        <node concept="1DcWWT" id="1mZ5x_OqLSe" role="3cqZAp">
          <node concept="3clFbS" id="1mZ5x_OqLSf" role="2LFqv$">
            <node concept="3clFbJ" id="1mZ5x_OqLSg" role="3cqZAp">
              <node concept="3clFbS" id="1mZ5x_OqLSh" role="3clFbx">
                <node concept="3cpWs8" id="1mZ5x_OqLSi" role="3cqZAp">
                  <node concept="3cpWsn" id="1mZ5x_OqLSj" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="editor" />
                    <node concept="3uibUv" id="1mZ5x_OqLSk" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JSpinner$DefaultEditor" resolve="JSpinner.DefaultEditor" />
                    </node>
                    <node concept="10QFUN" id="1mZ5x_OqLSl" role="33vP2m">
                      <node concept="3uibUv" id="1mZ5x_OqLSm" role="10QFUM">
                        <ref role="3uigEE" to="dxuu:~JSpinner$DefaultEditor" resolve="JSpinner.DefaultEditor" />
                      </node>
                      <node concept="37vLTw" id="1mZ5x_OqLSn" role="10QFUP">
                        <ref role="3cqZAo" node="1mZ5x_OqLSz" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1mZ5x_OqNnQ" role="3cqZAp">
                  <node concept="2OqwBi" id="1mZ5x_OqNnT" role="3cqZAk">
                    <node concept="37vLTw" id="1mZ5x_OqNnU" role="2Oq$k0">
                      <ref role="3cqZAo" node="1mZ5x_OqLSj" resolve="editor" />
                    </node>
                    <node concept="liA8E" id="1mZ5x_OqNnV" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JSpinner$DefaultEditor.getTextField()" resolve="getTextField" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="1mZ5x_OqLSw" role="3clFbw">
                <node concept="3uibUv" id="1mZ5x_OqLSx" role="2ZW6by">
                  <ref role="3uigEE" to="dxuu:~JSpinner$DefaultEditor" resolve="JSpinner.DefaultEditor" />
                </node>
                <node concept="37vLTw" id="1mZ5x_OqLSy" role="2ZW6bz">
                  <ref role="3cqZAo" node="1mZ5x_OqLSz" resolve="component" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1mZ5x_OqLSz" role="1Duv9x">
            <property role="TrG5h" value="component" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1mZ5x_OqLS$" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
          </node>
          <node concept="1rXfSq" id="1mZ5x_OqLS_" role="1DdaDG">
            <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
          </node>
        </node>
        <node concept="3cpWs6" id="1mZ5x_OqRIX" role="3cqZAp">
          <node concept="10Nm6u" id="1mZ5x_OqUg9" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1mZ5x_Oqzks" role="1B3o_S" />
      <node concept="3uibUv" id="1mZ5x_Orbzz" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JFormattedTextField" resolve="JFormattedTextField" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wjaA4vG" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wjaA4A7" role="1zkMxy">
      <ref role="3uigEE" node="71Z3v64q$LC" resolve="HorizontalSpinner" />
    </node>
    <node concept="3uibUv" id="4i$1wjaA4YT" role="EKbjA">
      <ref role="3uigEE" to="o0x9:4i$1wj9HYbK" resolve="DebugPanelMVCItem" />
    </node>
  </node>
</model>

