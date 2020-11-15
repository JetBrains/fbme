<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:373665e5-4a07-4fed-8807-490b2a5624d1(org.fbme.ide.richediting.adapters.ecc)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="5lkm" ref="r:7effb02f-bde4-4d2f-b844-eefa6ab09c8c(org.fbme.scenes.controllers.diagram)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="hyqd" ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(org.fbme.scenes.viewmodel)" />
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(org.fbme.scenes.controllers)" />
    <import index="xxy3" ref="r:b09c5f9b-eaf5-42ce-8c06-05ad1ccd4ce3(org.fbme.scenes.controllers.components)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="g136" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.ecc(org.fbme.lib/)" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" />
    <import index="vjnt" ref="r:dcc8041c-4feb-4a59-913c-c4ff83a14df3(org.fbme.ide.richediting.adapters.fbnetwork)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" implicit="true" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" implicit="true" />
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1215695201514" name="jetbrains.mps.baseLanguage.structure.MinusAssignmentExpression" flags="nn" index="d5anL" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1221737317277" name="jetbrains.mps.baseLanguage.structure.StaticInitializer" flags="lg" index="1Pe0a1">
        <child id="1221737317278" name="statementList" index="1Pe0a2" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
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
  <node concept="312cEu" id="38k27IREOjP">
    <property role="TrG5h" value="ECCViewAdapter" />
    <node concept="2tJIrI" id="38k27IREOjQ" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQDEgb" role="jymVt">
      <property role="TrG5h" value="myEcc" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQDCV6" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQHyW6" role="1tU5fm">
        <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
      </node>
    </node>
    <node concept="312cEg" id="6mkmem0xY3r" role="jymVt">
      <property role="TrG5h" value="myFactory" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6mkmem0xWWL" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghy1yH4" role="1tU5fm">
        <ref role="3uigEE" to="v4vf:~IEC61499Factory" resolve="IEC61499Factory" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQDNgU" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQDKDs" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQDKDt" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQDKDu" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQDKDw" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQDKD$" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyQDKDA" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQDKDH" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQDKDz" resolve="ecc" />
            </node>
            <node concept="37vLTw" id="1R4IoyQDQ$z" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQDEgb" resolve="myEcc" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6mkmem0y4PY" role="3cqZAp">
          <node concept="37vLTI" id="6mkmem0y4XB" role="3clFbG">
            <node concept="37vLTw" id="6mkmem0y5nz" role="37vLTx">
              <ref role="3cqZAo" node="6mkmem0xVv7" resolve="factory" />
            </node>
            <node concept="37vLTw" id="6mkmem0y4PW" role="37vLTJ">
              <ref role="3cqZAo" node="6mkmem0xY3r" resolve="myFactory" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQDKDz" role="3clF46">
        <property role="TrG5h" value="ecc" />
        <node concept="3uibUv" id="1R4IoyQHzu_" role="1tU5fm">
          <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
        </node>
      </node>
      <node concept="37vLTG" id="6mkmem0xVv7" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="5F$aghy1yYj" role="1tU5fm">
          <ref role="3uigEE" to="v4vf:~IEC61499Factory" resolve="IEC61499Factory" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMp69n" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMp6zs" role="jymVt">
      <property role="TrG5h" value="isEditable" />
      <node concept="3Tm1VV" id="4gibKcMp6zu" role="1B3o_S" />
      <node concept="10P_77" id="4gibKcMp6zv" role="3clF45" />
      <node concept="3clFbS" id="4gibKcMp6zw" role="3clF47">
        <node concept="3clFbF" id="4gibKcMp72z" role="3cqZAp">
          <node concept="3clFbT" id="4gibKcMp72y" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMp6zx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHz_E" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQH$lU" role="jymVt">
      <property role="TrG5h" value="components" />
      <node concept="3Tm1VV" id="1R4IoyQH$lW" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQH$lX" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5F$aghy1z3w" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQH$lZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1R4IoyQH$m1" role="3clF47">
        <node concept="3clFbF" id="6mkmem0xGf1" role="3cqZAp">
          <node concept="2ShNRf" id="6mkmem0xGeX" role="3clFbG">
            <node concept="1pGfFk" id="6mkmem0xRAt" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
              <node concept="2OqwBi" id="1R4IoyQH_FH" role="37wK5m">
                <node concept="37vLTw" id="1R4IoyQH_fN" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQDEgb" resolve="myEcc" />
                </node>
                <node concept="liA8E" id="5oxN2jlI9nQ" role="2OqNvi">
                  <ref role="37wK5l" to="g136:~ECC.getStates()" resolve="getStates" />
                </node>
              </node>
              <node concept="3uibUv" id="5F$aghy1zMZ" role="1pMfVU">
                <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQH$m2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHBBR" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQH$m5" role="jymVt">
      <property role="TrG5h" value="edges" />
      <node concept="3Tm1VV" id="1R4IoyQH$m7" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQH$m8" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5F$aghy1$sf" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQH$ma" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1R4IoyQH$mc" role="3clF47">
        <node concept="3clFbF" id="6mkmem0xTwF" role="3cqZAp">
          <node concept="2ShNRf" id="6mkmem0xTwG" role="3clFbG">
            <node concept="1pGfFk" id="6mkmem0xTwH" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
              <node concept="2OqwBi" id="6mkmem0xTwI" role="37wK5m">
                <node concept="37vLTw" id="6mkmem0xTwJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQDEgb" resolve="myEcc" />
                </node>
                <node concept="liA8E" id="6mkmem0xU5L" role="2OqNvi">
                  <ref role="37wK5l" to="g136:~ECC.getTransitions()" resolve="getTransitions" />
                </node>
              </node>
              <node concept="3uibUv" id="5F$aghy1$JB" role="1pMfVU">
                <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQH$md" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHB9$" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQH$mg" role="jymVt">
      <property role="TrG5h" value="addEdge" />
      <node concept="37vLTG" id="1R4IoyQH$mh" role="3clF46">
        <property role="TrG5h" value="sourcePort" />
        <node concept="3uibUv" id="5F$aghy1Aa6" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQH$mj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQH$mk" role="3clF46">
        <property role="TrG5h" value="targetPort" />
        <node concept="3uibUv" id="5F$aghy1AyR" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQH$mm" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQH$mo" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghy1_4a" role="3clF45">
        <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQH$mq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1R4IoyQH$mu" role="3clF47">
        <node concept="3cpWs8" id="6mkmem0xZFy" role="3cqZAp">
          <node concept="3cpWsn" id="6mkmem0xZFz" role="3cpWs9">
            <property role="TrG5h" value="transition" />
            <node concept="3uibUv" id="5F$aghy1_Ld" role="1tU5fm">
              <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
            </node>
            <node concept="2OqwBi" id="6mkmem0xZF$" role="33vP2m">
              <node concept="37vLTw" id="6mkmem0xZF_" role="2Oq$k0">
                <ref role="3cqZAo" node="6mkmem0xY3r" resolve="myFactory" />
              </node>
              <node concept="liA8E" id="5F$aghy1A1N" role="2OqNvi">
                <ref role="37wK5l" to="v4vf:~IEC61499Factory.createStateTransition()" resolve="createStateTransition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6mkmem0y0kt" role="3cqZAp">
          <node concept="2OqwBi" id="5F$aghy1Bh$" role="3clFbG">
            <node concept="2OqwBi" id="6mkmem0y0ss" role="2Oq$k0">
              <node concept="37vLTw" id="6mkmem0y0kr" role="2Oq$k0">
                <ref role="3cqZAo" node="6mkmem0xZFz" resolve="transition" />
              </node>
              <node concept="liA8E" id="5F$aghy1Bcm" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateTransition.getSourceReference()" resolve="getSourceReference" />
              </node>
            </node>
            <node concept="liA8E" id="5F$aghy1Bt2" role="2OqNvi">
              <ref role="37wK5l" to="7adg:~Reference.setTarget(org.fbme.lib.common.Declaration)" resolve="setTarget" />
              <node concept="37vLTw" id="5F$aghy1B_b" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQH$mh" resolve="sourcePort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6mkmem0y0UD" role="3cqZAp">
          <node concept="2OqwBi" id="5F$aghy1BQx" role="3clFbG">
            <node concept="2OqwBi" id="6mkmem0y0UE" role="2Oq$k0">
              <node concept="37vLTw" id="6mkmem0y0UF" role="2Oq$k0">
                <ref role="3cqZAo" node="6mkmem0xZFz" resolve="transition" />
              </node>
              <node concept="liA8E" id="6mkmem0y0UG" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateTransition.getTargetReference()" resolve="getTargetReference" />
              </node>
            </node>
            <node concept="liA8E" id="5F$aghy1Cfq" role="2OqNvi">
              <ref role="37wK5l" to="7adg:~Reference.setTarget(org.fbme.lib.common.Declaration)" resolve="setTarget" />
              <node concept="37vLTw" id="6mkmem0y1n_" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQH$mk" resolve="targetPort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6mkmem0y1Pp" role="3cqZAp">
          <node concept="2OqwBi" id="6mkmem0y2MO" role="3clFbG">
            <node concept="2OqwBi" id="6mkmem0y1Yg" role="2Oq$k0">
              <node concept="37vLTw" id="6mkmem0y1Pn" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQDEgb" resolve="myEcc" />
              </node>
              <node concept="liA8E" id="6mkmem0y2w9" role="2OqNvi">
                <ref role="37wK5l" to="g136:~ECC.getTransitions()" resolve="getTransitions" />
              </node>
            </node>
            <node concept="liA8E" id="6mkmem0y3uz" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="6mkmem0y3Ft" role="37wK5m">
                <ref role="3cqZAo" node="6mkmem0xZFz" resolve="transition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6mkmem0y4D$" role="3cqZAp">
          <node concept="37vLTw" id="6mkmem0y4Dy" role="3clFbG">
            <ref role="3cqZAo" node="6mkmem0xZFz" resolve="transition" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQH$mv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHzWO" role="jymVt" />
    <node concept="3clFb_" id="38k27IREOjR" role="jymVt">
      <property role="TrG5h" value="getComponents" />
      <node concept="3Tm1VV" id="38k27IREOjS" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IREOjT" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5F$aghy1Da7" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IREOjV" role="3clF47">
        <node concept="3clFbF" id="38k27IREOjW" role="3cqZAp">
          <node concept="1rXfSq" id="38k27IREOjX" role="3clFbG">
            <ref role="37wK5l" node="1R4IoyQH$lU" resolve="components" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IREOjY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREOjZ" role="jymVt" />
    <node concept="3clFb_" id="38k27IREOk0" role="jymVt">
      <property role="TrG5h" value="ports" />
      <node concept="3Tm1VV" id="38k27IREOk1" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IREOk2" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5F$aghy1DxC" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IREOk4" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5F$aghy1DTm" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IREOk6" role="3clF47">
        <node concept="3clFbF" id="38k27IREU8M" role="3cqZAp">
          <node concept="2YIFZM" id="38k27IREUaH" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="38k27IREUiz" role="37wK5m">
              <ref role="3cqZAo" node="38k27IREOk4" resolve="state" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IREOkb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREOkc" role="jymVt" />
    <node concept="3clFb_" id="38k27IREOkd" role="jymVt">
      <property role="TrG5h" value="component" />
      <node concept="37vLTG" id="38k27IREOke" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5F$aghy1EhS" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IREOkg" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghy1E$Y" role="3clF45">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
      <node concept="3clFbS" id="38k27IREOki" role="3clF47">
        <node concept="3clFbF" id="38k27IREWgp" role="3cqZAp">
          <node concept="37vLTw" id="38k27IREWgo" role="3clFbG">
            <ref role="3cqZAo" node="38k27IREOke" resolve="state" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IREOkn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREOko" role="jymVt" />
    <node concept="3clFb_" id="38k27IREOkp" role="jymVt">
      <property role="TrG5h" value="sourcePort" />
      <node concept="3Tm1VV" id="38k27IREOkq" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghy1Fkh" role="3clF45">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
      <node concept="37vLTG" id="38k27IREOks" role="3clF46">
        <property role="TrG5h" value="transition" />
        <node concept="3uibUv" id="5F$aghy1G7G" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IREOku" role="3clF47">
        <node concept="3clFbF" id="38k27IREOkv" role="3cqZAp">
          <node concept="2OqwBi" id="5F$aghy1GzZ" role="3clFbG">
            <node concept="2OqwBi" id="38k27IREOkw" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IREOkx" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IREOks" resolve="transition" />
              </node>
              <node concept="liA8E" id="5F$aghy1Guv" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateTransition.getSourceReference()" resolve="getSourceReference" />
              </node>
            </node>
            <node concept="liA8E" id="5F$aghy1GTq" role="2OqNvi">
              <ref role="37wK5l" to="7adg:~Reference.getTarget()" resolve="getTarget" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IREOkz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREOk$" role="jymVt" />
    <node concept="3clFb_" id="38k27IREOk_" role="jymVt">
      <property role="TrG5h" value="setSourcePort" />
      <node concept="3Tm1VV" id="38k27IREOkA" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IREOkB" role="3clF45" />
      <node concept="37vLTG" id="38k27IREOkC" role="3clF46">
        <property role="TrG5h" value="transition" />
        <node concept="3uibUv" id="5F$aghy1HkZ" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IREOkE" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5F$aghy1JP5" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IREOkG" role="3clF47">
        <node concept="3clFbF" id="38k27IREOkH" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IREOkI" role="3clFbG">
            <node concept="2OqwBi" id="5F$aghy1H51" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IREOkJ" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IREOkC" resolve="transition" />
              </node>
              <node concept="liA8E" id="5F$aghy1KkM" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateTransition.getSourceReference()" resolve="getSourceReference" />
              </node>
            </node>
            <node concept="liA8E" id="38k27IREOkK" role="2OqNvi">
              <ref role="37wK5l" to="7adg:~Reference.setTarget(org.fbme.lib.common.Declaration)" resolve="setTarget" />
              <node concept="37vLTw" id="38k27IREOkL" role="37wK5m">
                <ref role="3cqZAo" node="38k27IREOkE" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IREOkM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREOkN" role="jymVt" />
    <node concept="3clFb_" id="38k27IREOkO" role="jymVt">
      <property role="TrG5h" value="targetPort" />
      <node concept="3Tm1VV" id="38k27IREOkP" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghy1L15" role="3clF45">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
      <node concept="37vLTG" id="38k27IREOkR" role="3clF46">
        <property role="TrG5h" value="transition" />
        <node concept="3uibUv" id="5F$aghy1HL2" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IREOkT" role="3clF47">
        <node concept="3clFbF" id="38k27IREOkU" role="3cqZAp">
          <node concept="2OqwBi" id="5F$aghy1Kw$" role="3clFbG">
            <node concept="2OqwBi" id="38k27IREOkV" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IREOkW" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IREOkR" resolve="transition" />
              </node>
              <node concept="liA8E" id="5F$aghy1KqC" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateTransition.getTargetReference()" resolve="getTargetReference" />
              </node>
            </node>
            <node concept="liA8E" id="5F$aghy1KWU" role="2OqNvi">
              <ref role="37wK5l" to="7adg:~Reference.getTarget()" resolve="getTarget" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IREOkY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREOkZ" role="jymVt" />
    <node concept="3clFb_" id="38k27IREOl0" role="jymVt">
      <property role="TrG5h" value="setTargetPort" />
      <node concept="3Tm1VV" id="38k27IREOl1" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IREOl2" role="3clF45" />
      <node concept="37vLTG" id="38k27IREOl3" role="3clF46">
        <property role="TrG5h" value="transition" />
        <node concept="3uibUv" id="5F$aghy1Ie3" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IREOl5" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5F$aghy1Jlq" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IREOl7" role="3clF47">
        <node concept="3clFbF" id="38k27IREOl8" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IREOl9" role="3clFbG">
            <node concept="2OqwBi" id="5F$aghy1M1n" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IREOla" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IREOl3" resolve="transition" />
              </node>
              <node concept="liA8E" id="5F$aghy1MlW" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateTransition.getTargetReference()" resolve="getTargetReference" />
              </node>
            </node>
            <node concept="liA8E" id="38k27IREOlb" role="2OqNvi">
              <ref role="37wK5l" to="7adg:~Reference.setTarget(org.fbme.lib.common.Declaration)" resolve="setTarget" />
              <node concept="37vLTw" id="38k27IREOlc" role="37wK5m">
                <ref role="3cqZAo" node="38k27IREOl5" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IREOld" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREOle" role="jymVt" />
    <node concept="3clFb_" id="38k27IREOlf" role="jymVt">
      <property role="TrG5h" value="removeEdge" />
      <node concept="37vLTG" id="38k27IREOlg" role="3clF46">
        <property role="TrG5h" value="transition" />
        <node concept="3uibUv" id="5F$aghy1IyU" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
        <node concept="2AHcQZ" id="38k27IREOli" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IREOlj" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IREOlk" role="3clF45" />
      <node concept="3clFbS" id="38k27IREOll" role="3clF47">
        <node concept="3clFbF" id="38k27IREOlm" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IREOln" role="3clFbG">
            <node concept="37vLTw" id="38k27IREOlo" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IREOlg" resolve="transition" />
            </node>
            <node concept="liA8E" id="5oxN2jlI9lD" role="2OqNvi">
              <ref role="37wK5l" to="7adg:~ContainedElement.remove()" resolve="remove" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IREOlq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREOlr" role="jymVt" />
    <node concept="3clFb_" id="38k27IREOls" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="38k27IREOlt" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IREOlu" role="3clF45" />
      <node concept="37vLTG" id="38k27IREOlv" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5F$aghy1IYZ" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IREOlx" role="3clF47">
        <node concept="3clFbF" id="38k27IREOly" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IREOlz" role="3clFbG">
            <node concept="37vLTw" id="38k27IREOl$" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IREOlv" resolve="state" />
            </node>
            <node concept="liA8E" id="38k27IREOl_" role="2OqNvi">
              <ref role="37wK5l" to="7adg:~ContainedElement.remove()" resolve="remove" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IREOlA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="38k27IREOlB" role="1B3o_S" />
    <node concept="3uibUv" id="38k27IREOlC" role="EKbjA">
      <ref role="3uigEE" to="5lkm:4O0ojQpH$TE" resolve="DiagramView" />
      <node concept="3uibUv" id="5F$aghy1vqU" role="11_B2D">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
      <node concept="3uibUv" id="5F$aghy1wre" role="11_B2D">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
      <node concept="3uibUv" id="5F$aghy1xnY" role="11_B2D">
        <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
      </node>
    </node>
    <node concept="3uibUv" id="38k27IREOlG" role="EKbjA">
      <ref role="3uigEE" to="hyqd:1KCfUoKQiq3" resolve="ComponentsView" />
      <node concept="3uibUv" id="5F$aghy1xQz" role="11_B2D">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5jb5jNCfCVD">
    <property role="TrG5h" value="ECCSynchronizer" />
    <node concept="2tJIrI" id="5jb5jNCfCVE" role="jymVt" />
    <node concept="312cEg" id="5jb5jNCfCVF" role="jymVt">
      <property role="TrG5h" value="myViewpoint" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5jb5jNCfCVG" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNCfCVH" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNCfCVI" role="jymVt" />
    <node concept="3Tm1VV" id="5jb5jNCfCVJ" role="1B3o_S" />
    <node concept="3uibUv" id="5jb5jNCfCVK" role="EKbjA">
      <ref role="3uigEE" to="xxy3:1gL472EF7fL" resolve="ComponentSynchronizer" />
      <node concept="3uibUv" id="5F$aghy1tCw" role="11_B2D">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
      <node concept="3uibUv" id="5jb5jNCfCVM" role="11_B2D">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="3clFbW" id="5jb5jNCfCVN" role="jymVt">
      <node concept="3cqZAl" id="5jb5jNCfCVO" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNCfCVP" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNCfCVQ" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCfCVR" role="3cqZAp">
          <node concept="37vLTI" id="5jb5jNCfCVS" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNCfCVT" role="37vLTJ">
              <ref role="3cqZAo" node="5jb5jNCfCVF" resolve="myViewpoint" />
            </node>
            <node concept="37vLTw" id="5jb5jNCfCVU" role="37vLTx">
              <ref role="3cqZAo" node="5jb5jNCfCVV" resolve="viewpoint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNCfCVV" role="3clF46">
        <property role="TrG5h" value="viewpoint" />
        <node concept="3uibUv" id="5jb5jNCfCVW" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNCfCVX" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNCfCVY" role="jymVt">
      <property role="TrG5h" value="getForm" />
      <node concept="37vLTG" id="5jb5jNCfCVZ" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5F$aghy1tMO" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNCfCW1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5jb5jNCfCW2" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNCfCW3" role="3clF45">
        <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
        <node concept="3uibUv" id="5jb5jNCfCW4" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCfCW5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5jb5jNCfCW6" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNCfH1K" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNCfH1N" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10Oyi0" id="5jb5jNCfH1I" role="1tU5fm" />
            <node concept="2OqwBi" id="5jb5jNCfI4P" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNCfHvu" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNCfCVZ" resolve="state" />
              </node>
              <node concept="liA8E" id="5oxN2jlI88w" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateDeclaration.getX()" resolve="getX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jb5jNCfIxs" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNCfIxt" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="5jb5jNCfIxu" role="1tU5fm" />
            <node concept="2OqwBi" id="5jb5jNCfIxv" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNCfIxw" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNCfCVZ" resolve="state" />
              </node>
              <node concept="liA8E" id="5jb5jNCfIxx" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateDeclaration.getY()" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5jb5jNCfCWu" role="3cqZAp">
          <node concept="1bVj0M" id="5jb5jNCfCWv" role="3cqZAk">
            <node concept="3clFbS" id="5jb5jNCfCWw" role="1bW5cS">
              <node concept="3clFbF" id="5jb5jNCfCWx" role="3cqZAp">
                <node concept="2ShNRf" id="5jb5jNCfCWy" role="3clFbG">
                  <node concept="1pGfFk" id="5jb5jNCfCWz" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                    <node concept="2OqwBi" id="5jb5jNCfCW$" role="37wK5m">
                      <node concept="37vLTw" id="5jb5jNCfCW_" role="2Oq$k0">
                        <ref role="3cqZAo" node="5jb5jNCfCVF" resolve="myViewpoint" />
                      </node>
                      <node concept="liA8E" id="5jb5jNCfCWA" role="2OqNvi">
                        <ref role="37wK5l" to="rvgs:7sG$k3BM$l1" resolve="translateToEditorX" />
                        <node concept="37vLTw" id="5jb5jNCfJYB" role="37wK5m">
                          <ref role="3cqZAo" node="5jb5jNCfH1N" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5jb5jNCfCWC" role="37wK5m">
                      <node concept="37vLTw" id="5jb5jNCfCWD" role="2Oq$k0">
                        <ref role="3cqZAo" node="5jb5jNCfCVF" resolve="myViewpoint" />
                      </node>
                      <node concept="liA8E" id="5jb5jNCfCWE" role="2OqNvi">
                        <ref role="37wK5l" to="rvgs:309fsJ6evNL" resolve="translateToEditorY" />
                        <node concept="37vLTw" id="5jb5jNCfKh_" role="37wK5m">
                          <ref role="3cqZAo" node="5jb5jNCfIxt" resolve="y" />
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
      <node concept="2AHcQZ" id="5jb5jNCfCXq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNCfCXr" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNCfCXs" role="jymVt">
      <property role="TrG5h" value="setForm" />
      <node concept="3Tm1VV" id="5jb5jNCfCXt" role="1B3o_S" />
      <node concept="3cqZAl" id="5jb5jNCfCXu" role="3clF45" />
      <node concept="37vLTG" id="5jb5jNCfCXv" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5F$aghy1u2f" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNCfCXx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNCfCXy" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="5jb5jNCfCXz" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="5jb5jNCfCX$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNCfCX_" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCfCXL" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCfCXM" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNCfLgS" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNCfCXv" resolve="state" />
            </node>
            <node concept="liA8E" id="5jb5jNCfCXO" role="2OqNvi">
              <ref role="37wK5l" to="g136:~StateDeclaration.setX(int)" resolve="setX" />
              <node concept="2OqwBi" id="5jb5jNCfCXP" role="37wK5m">
                <node concept="37vLTw" id="5jb5jNCfCXQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNCfCVF" resolve="myViewpoint" />
                </node>
                <node concept="liA8E" id="5jb5jNCfCXR" role="2OqNvi">
                  <ref role="37wK5l" to="rvgs:309fsJ6iBhP" resolve="translateFromEditorX" />
                  <node concept="2OqwBi" id="5jb5jNCfCXS" role="37wK5m">
                    <node concept="37vLTw" id="5jb5jNCfCXT" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jb5jNCfCXy" resolve="position" />
                    </node>
                    <node concept="2OwXpG" id="5jb5jNCfCXU" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNCfCXV" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCfCXW" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNCfLtl" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNCfCXv" resolve="state" />
            </node>
            <node concept="liA8E" id="5jb5jNCfCXY" role="2OqNvi">
              <ref role="37wK5l" to="g136:~StateDeclaration.setY(int)" resolve="setY" />
              <node concept="2OqwBi" id="5jb5jNCfCXZ" role="37wK5m">
                <node concept="37vLTw" id="5jb5jNCfCY0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNCfCVF" resolve="myViewpoint" />
                </node>
                <node concept="liA8E" id="5jb5jNCfCY1" role="2OqNvi">
                  <ref role="37wK5l" to="rvgs:309fsJ6iBhV" resolve="translateFromEditorY" />
                  <node concept="2OqwBi" id="5jb5jNCfCY2" role="37wK5m">
                    <node concept="37vLTw" id="5jb5jNCfCY3" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jb5jNCfCXy" resolve="position" />
                    </node>
                    <node concept="2OwXpG" id="5jb5jNCfCY4" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCfCYk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="38k27IRCmW1">
    <property role="TrG5h" value="ECPortSettingProvider" />
    <node concept="2tJIrI" id="38k27IRCmW2" role="jymVt" />
    <node concept="312cEg" id="38k27IRCmW3" role="jymVt">
      <property role="TrG5h" value="myMapper" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="38k27IRCmW4" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRCmW5" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="5F$aghy1O6a" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
        <node concept="3uibUv" id="38k27IRCqea" role="11_B2D">
          <ref role="3uigEE" node="5ye4HINzDYV" resolve="ECStateController" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRCmW8" role="jymVt" />
    <node concept="2tJIrI" id="38k27IRCmW9" role="jymVt" />
    <node concept="3clFbW" id="38k27IRCmWa" role="jymVt">
      <node concept="3cqZAl" id="38k27IRCmWb" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRCmWc" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRCmWd" role="3clF47">
        <node concept="3clFbF" id="38k27IRCmWe" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRCmWf" role="3clFbG">
            <node concept="37vLTw" id="38k27IRCmWg" role="37vLTJ">
              <ref role="3cqZAo" node="38k27IRCmW3" resolve="myMapper" />
            </node>
            <node concept="37vLTw" id="38k27IRCmWh" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRCmWi" resolve="fbivMapper" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRCmWi" role="3clF46">
        <property role="TrG5h" value="fbivMapper" />
        <node concept="3uibUv" id="38k27IRCmWj" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="5F$aghy1ODX" role="11_B2D">
            <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
          </node>
          <node concept="3uibUv" id="38k27IRCqs7" role="11_B2D">
            <ref role="3uigEE" node="5ye4HINzDYV" resolve="ECStateController" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRCmWm" role="jymVt" />
    <node concept="2YIFZL" id="38k27IRCmWn" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="38k27IRCmWo" role="3clF46">
        <property role="TrG5h" value="componentsFacitlity" />
        <node concept="3uibUv" id="38k27IRCmWp" role="1tU5fm">
          <ref role="3uigEE" to="xxy3:3vyG44ANA6n" resolve="ComponentsFacility" />
          <node concept="3uibUv" id="5F$aghy1OTE" role="11_B2D">
            <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
          </node>
          <node concept="3uibUv" id="38k27IRCmWr" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRCmWs" role="3clF47">
        <node concept="3clFbF" id="38k27IRCmWt" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRCmWu" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRCmWv" role="2ShVmc">
              <ref role="37wK5l" node="38k27IRCmWa" resolve="ECPortSettingProvider" />
              <node concept="1bVj0M" id="38k27IRCmWw" role="37wK5m">
                <node concept="3clFbS" id="38k27IRCmWx" role="1bW5cS">
                  <node concept="3clFbF" id="38k27IRCmWy" role="3cqZAp">
                    <node concept="10QFUN" id="38k27IRCmWz" role="3clFbG">
                      <node concept="3uibUv" id="38k27IRFsxM" role="10QFUM">
                        <ref role="3uigEE" node="5ye4HINzDYV" resolve="ECStateController" />
                      </node>
                      <node concept="2OqwBi" id="38k27IRCmW_" role="10QFUP">
                        <node concept="37vLTw" id="38k27IRCmWA" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27IRCmWo" resolve="componentsFacitlity" />
                        </node>
                        <node concept="liA8E" id="38k27IRCmWB" role="2OqNvi">
                          <ref role="37wK5l" to="xxy3:4y$DvIVUIFH" resolve="getController" />
                          <node concept="37vLTw" id="38k27IRCmWC" role="37wK5m">
                            <ref role="3cqZAo" node="38k27IRCmWD" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="38k27IRCmWD" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="3uibUv" id="5F$aghy1OMv" role="1tU5fm">
                    <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRCmWF" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRCmWG" role="3clF45">
        <ref role="3uigEE" node="38k27IRCmW1" resolve="ECPortSettingProvider" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRCmWH" role="jymVt" />
    <node concept="3clFb_" id="38k27IRCmWI" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3Tm1VV" id="38k27IRCmWJ" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRCmWK" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="38k27IRCmWL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="38k27IRCmWM" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="38k27IRCmWN" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="38k27IRCmWO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRCmWP" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="2AHcQZ" id="38k27IRCmWR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5F$aghy1P1g" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRCmWS" role="3clF47">
        <node concept="3cpWs8" id="38k27IRDvMb" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRDvMc" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="38k27IRDvMd" role="1tU5fm">
              <ref role="3uigEE" node="5ye4HINzDYV" resolve="ECStateController" />
            </node>
            <node concept="2OqwBi" id="38k27IRDvMe" role="33vP2m">
              <node concept="37vLTw" id="38k27IRDvMf" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRCmW3" resolve="myMapper" />
              </node>
              <node concept="liA8E" id="38k27IRDvMg" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="38k27IRDvMh" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRCmWP" resolve="state" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27IRDvMi" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRDvMj" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="38k27IRDvMk" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2ShNRf" id="38k27IRDL3h" role="33vP2m">
              <node concept="1pGfFk" id="38k27IRDM3d" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(java.awt.Rectangle)" resolve="Rectangle" />
                <node concept="2OqwBi" id="38k27IRDvMl" role="37wK5m">
                  <node concept="37vLTw" id="38k27IRDvMm" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27IRDvMc" resolve="controller" />
                  </node>
                  <node concept="liA8E" id="38k27IRDvMn" role="2OqNvi">
                    <ref role="37wK5l" node="1iOpS24POU5" resolve="getBounds" />
                    <node concept="37vLTw" id="38k27IRDvMo" role="37wK5m">
                      <ref role="3cqZAo" node="38k27IRCmWM" resolve="position" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IREfHh" role="3cqZAp">
          <node concept="d5anL" id="38k27IREfHi" role="3clFbG">
            <node concept="2OqwBi" id="38k27IREfHj" role="37vLTJ">
              <node concept="37vLTw" id="38k27IREfHk" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRDvMj" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="38k27IREfHl" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
              </node>
            </node>
            <node concept="FJ1c_" id="38k27IREfHm" role="37vLTx">
              <node concept="2OqwBi" id="38k27IREfHo" role="3uHU7B">
                <node concept="37vLTw" id="38k27IREfHp" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRDvMj" resolve="bounds" />
                </node>
                <node concept="2OwXpG" id="38k27IREfHq" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
                </node>
              </node>
              <node concept="3cmrfG" id="38k27IREv5W" role="3uHU7w">
                <property role="3cmrfH" value="4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IREfH5" role="3cqZAp">
          <node concept="d57v9" id="38k27IS3GCj" role="3clFbG">
            <node concept="2OqwBi" id="38k27IS3GCl" role="37vLTJ">
              <node concept="37vLTw" id="38k27IS3GCm" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRDvMj" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="38k27IS3GCn" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
              </node>
            </node>
            <node concept="FJ1c_" id="38k27IS3GCo" role="37vLTx">
              <node concept="2OqwBi" id="38k27IS3GCp" role="3uHU7B">
                <node concept="37vLTw" id="38k27IS3GCq" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRDvMj" resolve="bounds" />
                </node>
                <node concept="2OwXpG" id="38k27IS3GCr" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
                </node>
              </node>
              <node concept="3cmrfG" id="38k27IS3GCs" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRD$8g" role="3cqZAp">
          <node concept="d5anL" id="38k27IRDNFy" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRD$IR" role="37vLTJ">
              <node concept="37vLTw" id="38k27IRD$8e" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRDvMj" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="38k27IREn1S" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
              </node>
            </node>
            <node concept="FJ1c_" id="38k27IRE6aH" role="37vLTx">
              <node concept="2OqwBi" id="38k27IRDOO1" role="3uHU7B">
                <node concept="37vLTw" id="38k27IRDO3u" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRDvMj" resolve="bounds" />
                </node>
                <node concept="2OwXpG" id="38k27IREu6g" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
                </node>
              </node>
              <node concept="3cmrfG" id="38k27IREvEg" role="3uHU7w">
                <property role="3cmrfH" value="4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRE6wM" role="3cqZAp">
          <node concept="d57v9" id="38k27IS3HJw" role="3clFbG">
            <node concept="2OqwBi" id="38k27IS3HJy" role="37vLTJ">
              <node concept="37vLTw" id="38k27IS3HJz" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRDvMj" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="38k27IS3HJ$" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
              </node>
            </node>
            <node concept="FJ1c_" id="38k27IS3HJ_" role="37vLTx">
              <node concept="2OqwBi" id="38k27IS3HJA" role="3uHU7B">
                <node concept="37vLTw" id="38k27IS3HJB" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRDvMj" resolve="bounds" />
                </node>
                <node concept="2OwXpG" id="38k27IS3HJC" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
                </node>
              </node>
              <node concept="3cmrfG" id="38k27IS3HJD" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="38k27IREgHX" role="3cqZAp">
          <node concept="37vLTw" id="38k27IREgLy" role="3cqZAk">
            <ref role="3cqZAo" node="38k27IRDvMj" resolve="bounds" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRCmXc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRCmXd" role="jymVt" />
    <node concept="3clFb_" id="38k27IRCmXe" role="jymVt">
      <property role="TrG5h" value="getEndpointPosition" />
      <node concept="37vLTG" id="38k27IRCmXf" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="38k27IRCmXg" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="38k27IRCmXh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRCmXi" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="2AHcQZ" id="38k27IRCmXk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5F$aghy1PBW" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRCmXl" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRCmXm" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="38k27IRCmXn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRCmXo" role="3clF47">
        <node concept="3cpWs8" id="38k27IRCmXv" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRCmXw" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="38k27IRCwVj" role="1tU5fm">
              <ref role="3uigEE" node="5ye4HINzDYV" resolve="ECStateController" />
            </node>
            <node concept="2OqwBi" id="38k27IRCmXy" role="33vP2m">
              <node concept="37vLTw" id="38k27IRCmXz" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRCmW3" resolve="myMapper" />
              </node>
              <node concept="liA8E" id="38k27IRCmX$" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="38k27IRCwBT" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRCmXi" resolve="state" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27IRCEZ8" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRCEZ9" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="38k27IRCEZ4" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2OqwBi" id="38k27IRCEZa" role="33vP2m">
              <node concept="37vLTw" id="38k27IRCEZb" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRCmXw" resolve="controller" />
              </node>
              <node concept="liA8E" id="38k27IRCEZc" role="2OqNvi">
                <ref role="37wK5l" node="1iOpS24POU5" resolve="getBounds" />
                <node concept="37vLTw" id="38k27IRCEZd" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRCmXf" resolve="position" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRCFhG" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRCFhC" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRCG1l" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
              <node concept="3cpWs3" id="38k27IRCYBx" role="37wK5m">
                <node concept="FJ1c_" id="38k27IRDcJJ" role="3uHU7w">
                  <node concept="3cmrfG" id="38k27IRDcLZ" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="38k27IRCZU$" role="3uHU7B">
                    <node concept="37vLTw" id="38k27IRCYRQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRCEZ9" resolve="bounds" />
                    </node>
                    <node concept="2OwXpG" id="38k27IRD66_" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="38k27IRCGoK" role="3uHU7B">
                  <node concept="37vLTw" id="38k27IRCG7Q" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27IRCEZ9" resolve="bounds" />
                  </node>
                  <node concept="2OwXpG" id="38k27IRCNSI" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="38k27IRDd9V" role="37wK5m">
                <node concept="FJ1c_" id="38k27IRDd9W" role="3uHU7w">
                  <node concept="3cmrfG" id="38k27IRDd9X" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="38k27IRDd9Y" role="3uHU7B">
                    <node concept="37vLTw" id="38k27IRDd9Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRCEZ9" resolve="bounds" />
                    </node>
                    <node concept="2OwXpG" id="38k27IRDvuq" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="38k27IRDda1" role="3uHU7B">
                  <node concept="37vLTw" id="38k27IRDda2" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27IRCEZ9" resolve="bounds" />
                  </node>
                  <node concept="2OwXpG" id="38k27IRDj8E" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRCmXG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREwMp" role="jymVt" />
    <node concept="3clFb_" id="38k27IRExug" role="jymVt">
      <property role="TrG5h" value="canBeSourcedAt" />
      <node concept="37vLTG" id="38k27IRExuh" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="38k27IRExuy" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="38k27IRExuj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRExuk" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5F$aghy1PRz" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
        <node concept="2AHcQZ" id="38k27IRExum" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRExun" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRExuo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRExup" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRExuq" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="38k27IRExuu" role="1B3o_S" />
      <node concept="10P_77" id="38k27IRExuv" role="3clF45" />
      <node concept="3clFbS" id="38k27IRExuz" role="3clF47">
        <node concept="3cpWs8" id="38k27IREyzJ" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IREyzK" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="38k27IREyzL" role="1tU5fm">
              <ref role="3uigEE" node="5ye4HINzDYV" resolve="ECStateController" />
            </node>
            <node concept="2OqwBi" id="38k27IREyzM" role="33vP2m">
              <node concept="37vLTw" id="38k27IREyzN" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRCmW3" resolve="myMapper" />
              </node>
              <node concept="liA8E" id="38k27IREyzO" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="38k27IREyzP" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRExuk" resolve="state" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRE_k3" role="3cqZAp">
          <node concept="3fqX7Q" id="38k27IRE_jZ" role="3clFbG">
            <node concept="2OqwBi" id="38k27IREA4n" role="3fr31v">
              <node concept="2OqwBi" id="38k27IREyzV" role="2Oq$k0">
                <node concept="37vLTw" id="38k27IREyzW" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IREyzK" resolve="controller" />
                </node>
                <node concept="liA8E" id="38k27IREyzX" role="2OqNvi">
                  <ref role="37wK5l" node="1iOpS24POU5" resolve="getBounds" />
                  <node concept="37vLTw" id="38k27IREyzY" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRExuh" resolve="position" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="38k27IREG4J" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int)" resolve="contains" />
                <node concept="37vLTw" id="38k27IREGh3" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRExun" resolve="x" />
                </node>
                <node concept="37vLTw" id="38k27IREHOH" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRExup" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRExu$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IREJ0x" role="jymVt" />
    <node concept="3clFb_" id="38k27IRExuF" role="jymVt">
      <property role="TrG5h" value="canBeTargetedAt" />
      <node concept="3Tm1VV" id="38k27IRExuJ" role="1B3o_S" />
      <node concept="10P_77" id="38k27IRExuK" role="3clF45" />
      <node concept="37vLTG" id="38k27IRExuL" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="38k27IRExuX" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="38k27IRExuN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRExuO" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5F$aghy1Qcb" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
        <node concept="2AHcQZ" id="38k27IRExuQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRExuR" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRExuS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRExuT" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRExuU" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRExuY" role="3clF47">
        <node concept="3cpWs8" id="38k27IS44qz" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IS44q$" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="38k27IS44q_" role="1tU5fm">
              <ref role="3uigEE" node="5ye4HINzDYV" resolve="ECStateController" />
            </node>
            <node concept="2OqwBi" id="38k27IS44qA" role="33vP2m">
              <node concept="37vLTw" id="38k27IS44qB" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRCmW3" resolve="myMapper" />
              </node>
              <node concept="liA8E" id="38k27IS44qC" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="38k27IS44qD" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRExuO" resolve="state" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IS44qE" role="3cqZAp">
          <node concept="3fqX7Q" id="38k27IS44qF" role="3clFbG">
            <node concept="2OqwBi" id="38k27IS44qG" role="3fr31v">
              <node concept="2OqwBi" id="38k27IS44qH" role="2Oq$k0">
                <node concept="37vLTw" id="38k27IS44qI" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IS44q$" resolve="controller" />
                </node>
                <node concept="liA8E" id="38k27IS44qJ" role="2OqNvi">
                  <ref role="37wK5l" node="1iOpS24POU5" resolve="getBounds" />
                  <node concept="37vLTw" id="38k27IS44qK" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRExuL" resolve="position" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="38k27IS44qL" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int)" resolve="contains" />
                <node concept="37vLTw" id="38k27IS44qM" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRExuR" resolve="x" />
                </node>
                <node concept="37vLTw" id="38k27IS44qN" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRExuT" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRExuZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="38k27IRCmYM" role="1B3o_S" />
    <node concept="3uibUv" id="38k27IRCmYN" role="EKbjA">
      <ref role="3uigEE" to="5lkm:4O0ojQpHEzY" resolve="PortSettingProvider" />
      <node concept="3uibUv" id="5F$aghy1NLX" role="11_B2D">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
      <node concept="3uibUv" id="38k27IRCmYP" role="11_B2D">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5jb5jNC3ozP">
    <property role="TrG5h" value="ECStateCellHandle" />
    <node concept="2tJIrI" id="5jb5jNC3o$J" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC3o_Z" role="jymVt">
      <property role="TrG5h" value="getCell" />
      <node concept="3clFbS" id="5jb5jNC3oA2" role="3clF47" />
      <node concept="3Tm1VV" id="5jb5jNC3oA3" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNCjsLw" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC3oAt" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC3oBF" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3clFbS" id="5jb5jNC3oBI" role="3clF47" />
      <node concept="3Tm1VV" id="5jb5jNC3oBJ" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNC3oBl" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="37vLTG" id="5jb5jNC3U9F" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="5jb5jNC3U9E" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC3poZ" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC3psB" role="jymVt">
      <property role="TrG5h" value="getStateTextStyle" />
      <node concept="3clFbS" id="5jb5jNC3psE" role="3clF47" />
      <node concept="3Tm1VV" id="5jb5jNC3psF" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNC3ps4" role="3clF45">
        <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5jb5jNC3ozQ" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5ye4HINzDYV">
    <property role="TrG5h" value="ECStateController" />
    <node concept="3Tm1VV" id="5ye4HINzDYW" role="1B3o_S" />
    <node concept="3uibUv" id="5ye4HINzFv3" role="EKbjA">
      <ref role="3uigEE" to="xxy3:1KCfUoKRRlk" resolve="ComponentController" />
      <node concept="3uibUv" id="1iOpS24PLKh" role="11_B2D">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ye4HIN$IcM" role="jymVt" />
    <node concept="Wx3nA" id="5ye4HINBykd" role="jymVt">
      <property role="TrG5h" value="STATE_CELL_PADDINGS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5ye4HINBwX$" role="1B3o_S" />
      <node concept="3cmrfG" id="5ye4HINBzDJ" role="33vP2m">
        <property role="3cmrfH" value="40" />
      </node>
      <node concept="10Oyi0" id="5ye4HINBzvX" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5ye4HINBvLS" role="jymVt" />
    <node concept="312cEg" id="5jb5jNC3z6H" role="jymVt">
      <property role="TrG5h" value="myCellHandle" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5jb5jNC3xCX" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNC3yUt" role="1tU5fm">
        <ref role="3uigEE" node="5jb5jNC3ozP" resolve="ECStateCellHandle" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNCcvsG" role="jymVt" />
    <node concept="3clFbW" id="2RGdDg_HVx4" role="jymVt">
      <node concept="3cqZAl" id="2RGdDg_HVx5" role="3clF45" />
      <node concept="3Tm1VV" id="2RGdDg_HVx6" role="1B3o_S" />
      <node concept="3clFbS" id="2RGdDg_HVx8" role="3clF47">
        <node concept="3clFbF" id="2RGdDg_HVxc" role="3cqZAp">
          <node concept="37vLTI" id="2RGdDg_HVxe" role="3clFbG">
            <node concept="37vLTw" id="2RGdDg_HZgd" role="37vLTJ">
              <ref role="3cqZAo" node="5jb5jNC3z6H" resolve="myCellHandle" />
            </node>
            <node concept="37vLTw" id="2RGdDg_HVxl" role="37vLTx">
              <ref role="3cqZAo" node="2RGdDg_HVxb" resolve="cellHandle" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2RGdDg_HVxb" role="3clF46">
        <property role="TrG5h" value="cellHandle" />
        <node concept="3uibUv" id="2RGdDg_HVxa" role="1tU5fm">
          <ref role="3uigEE" node="5jb5jNC3ozP" resolve="ECStateCellHandle" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IQSc4u" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIWdBsF" role="jymVt">
      <property role="TrG5h" value="canStartMoveAt" />
      <node concept="3Tm1VV" id="4y$DvIWdBsH" role="1B3o_S" />
      <node concept="10P_77" id="4y$DvIWdBsI" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24PMC6" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24PNAh" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIWdBsJ" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="4y$DvIWdBsK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4y$DvIWdBsL" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="4y$DvIWdBsM" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4y$DvIWdBsN" role="3clF47">
        <node concept="3clFbF" id="1iOpS24Rhtq" role="3cqZAp">
          <node concept="3clFbT" id="1iOpS24Rhtp" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIWdBsO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIWdF_w" role="jymVt" />
    <node concept="3clFb_" id="5ye4HINCOdh" role="jymVt">
      <property role="TrG5h" value="getComponentCell" />
      <node concept="3Tm1VV" id="5ye4HINCOdj" role="1B3o_S" />
      <node concept="3uibUv" id="5ye4HINCOdk" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="2AHcQZ" id="5ye4HINCOdl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="5ye4HINCOdm" role="3clF47">
        <node concept="3clFbF" id="5ye4HIND4Dd" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNC4088" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNC4014" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNC3z6H" resolve="myCellHandle" />
            </node>
            <node concept="liA8E" id="5jb5jNC40sO" role="2OqNvi">
              <ref role="37wK5l" node="5jb5jNC3o_Z" resolve="getCell" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5ye4HINCOdn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24PNRZ" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24POU5" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3Tm1VV" id="1iOpS24POU7" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24POU8" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="1iOpS24POU9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="1iOpS24POUa" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24POUc" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24POUd" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC3ULL" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNC3UXz" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNC3ULJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNC3z6H" resolve="myCellHandle" />
            </node>
            <node concept="liA8E" id="5jb5jNC3Vmw" role="2OqNvi">
              <ref role="37wK5l" node="5jb5jNC3oBF" resolve="getBounds" />
              <node concept="37vLTw" id="5jb5jNC3Vqp" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24POUa" resolve="position" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24POUe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24PUBM" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24POUh" role="jymVt">
      <property role="TrG5h" value="translateForm" />
      <node concept="3Tm1VV" id="1iOpS24POUj" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24POUt" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="1iOpS24POUl" role="3clF46">
        <property role="TrG5h" value="originalPosition" />
        <node concept="3uibUv" id="1iOpS24POUs" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24POUn" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="1iOpS24POUo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iOpS24POUp" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="1iOpS24POUq" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1iOpS24POUr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1iOpS24POUu" role="3clF47">
        <node concept="3cpWs8" id="1iOpS24PSpG" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24PSpH" role="3cpWs9">
            <property role="TrG5h" value="point" />
            <node concept="3uibUv" id="1iOpS24PSpC" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2ShNRf" id="1iOpS24PSpI" role="33vP2m">
              <node concept="1pGfFk" id="1iOpS24PSpJ" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(java.awt.Point)" resolve="Point" />
                <node concept="37vLTw" id="1iOpS24PSpK" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24POUl" resolve="originalPosition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24PQYt" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24PSVT" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24PSpL" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS24PSpH" resolve="point" />
            </node>
            <node concept="liA8E" id="1iOpS24PU2F" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Point.translate(int,int)" resolve="translate" />
              <node concept="37vLTw" id="1iOpS24PU6J" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24POUn" resolve="dx" />
              </node>
              <node concept="37vLTw" id="1iOpS24PUps" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24POUp" resolve="dy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24QtuS" role="3cqZAp">
          <node concept="37vLTw" id="1iOpS24QtuQ" role="3clFbG">
            <ref role="3cqZAo" node="1iOpS24PSpH" resolve="point" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24POUv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RGdDg_Ismy" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24POUw" role="jymVt">
      <property role="TrG5h" value="transformFormAt" />
      <node concept="3Tm1VV" id="1iOpS24POUy" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24POUz" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="1iOpS24POU$" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1iOpS24POUG" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24POUA" role="3clF46">
        <property role="TrG5h" value="originalForm" />
        <node concept="3uibUv" id="1iOpS24POUH" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24POUC" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1iOpS24POUD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iOpS24POUE" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1iOpS24POUF" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1iOpS24POUI" role="3clF47">
        <node concept="3clFbF" id="1iOpS24POUL" role="3cqZAp">
          <node concept="10Nm6u" id="1iOpS24POUK" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24POUJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24Ql1m" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24POUM" role="jymVt">
      <property role="TrG5h" value="updateCellWithForm" />
      <node concept="3Tm1VV" id="1iOpS24POUO" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24POUP" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24POUQ" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24POUS" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24POUT" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNC3KWi" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNC3KWj" role="3cpWs9">
            <property role="TrG5h" value="cell" />
            <node concept="3uibUv" id="5jb5jNC3KWg" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="5jb5jNC3KWk" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNC3KWl" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC3z6H" resolve="myCellHandle" />
              </node>
              <node concept="liA8E" id="5jb5jNC3KWm" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC3o_Z" resolve="getCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jb5jNCfnKa" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNCfnKb" role="3cpWs9">
            <property role="TrG5h" value="rect" />
            <node concept="3uibUv" id="5jb5jNCfnK9" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2OqwBi" id="5jb5jNCfnKc" role="33vP2m">
              <node concept="37vLTw" id="5jb5jNCfnKd" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC3z6H" resolve="myCellHandle" />
              </node>
              <node concept="liA8E" id="5jb5jNCfnKe" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC3oBF" resolve="getBounds" />
                <node concept="37vLTw" id="5jb5jNCfnKf" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24POUQ" resolve="position" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6O98XsLlI4O" role="3cqZAp">
          <node concept="2OqwBi" id="6O98XsLlId7" role="3clFbG">
            <node concept="37vLTw" id="6O98XsLlI4M" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNC3KWj" resolve="cell" />
            </node>
            <node concept="liA8E" id="6O98XsLlImC" role="2OqNvi">
              <ref role="37wK5l" to="f4zo:~EditorCell.moveTo(int,int)" resolve="moveTo" />
              <node concept="2OqwBi" id="6O98XsLlNez" role="37wK5m">
                <node concept="37vLTw" id="6O98XsLlMT8" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNCfnKb" resolve="rect" />
                </node>
                <node concept="2OwXpG" id="6O98XsLlNl3" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="6O98XsLlNFs" role="37wK5m">
                <node concept="37vLTw" id="6O98XsLlNzn" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNCfnKb" resolve="rect" />
                </node>
                <node concept="2OwXpG" id="6O98XsLlNHd" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24POUU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IQS641" role="jymVt" />
    <node concept="3clFb_" id="38k27IQS6Dx" role="jymVt">
      <property role="TrG5h" value="updateCellSelection" />
      <node concept="3Tm1VV" id="38k27IQS6Dz" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IQS6D$" role="3clF45" />
      <node concept="37vLTG" id="38k27IQS6D_" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="38k27IQS6DA" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IQS6DB" role="3clF47">
        <node concept="3clFbF" id="1iOpS24QNgI" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24QNgJ" role="3clFbG">
            <node concept="liA8E" id="1iOpS24QNgK" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
              <node concept="10M0yZ" id="1iOpS24QNgL" role="37wK5m">
                <ref role="3cqZAo" to="5ueo:~StyleAttributes.FONT_STYLE" resolve="FONT_STYLE" />
                <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
              </node>
              <node concept="3K4zz7" id="1iOpS24QNgM" role="37wK5m">
                <node concept="10M0yZ" id="1iOpS24QNgN" role="3K4E3e">
                  <ref role="1PxDUh" to="z60i:~Font" resolve="Font" />
                  <ref role="3cqZAo" to="z60i:~Font.BOLD" resolve="BOLD" />
                </node>
                <node concept="10M0yZ" id="1iOpS24QNgO" role="3K4GZi">
                  <ref role="1PxDUh" to="z60i:~Font" resolve="Font" />
                  <ref role="3cqZAo" to="z60i:~Font.PLAIN" resolve="PLAIN" />
                </node>
                <node concept="37vLTw" id="1iOpS25xhNe" role="3K4Cdx">
                  <ref role="3cqZAo" node="38k27IQS6D_" resolve="selected" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5jb5jNC3T6H" role="2Oq$k0">
              <node concept="37vLTw" id="5jb5jNC3SKd" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC3z6H" resolve="myCellHandle" />
              </node>
              <node concept="liA8E" id="5jb5jNC3TrB" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC3psB" resolve="getStateTextStyle" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IQS6DC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24Qmc5" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24POUV" role="jymVt">
      <property role="TrG5h" value="paintTrace" />
      <node concept="3Tm1VV" id="1iOpS24POUX" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24POUY" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24POUZ" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1iOpS24POV0" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24POV1" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="1iOpS24POV3" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24POV4" role="3clF47">
        <node concept="3clFbF" id="1iOpS24QsHv" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24QsHw" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24QsHx" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS24POUZ" resolve="g" />
            </node>
            <node concept="liA8E" id="1iOpS24QsHy" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="10M0yZ" id="6O98XsLlQyA" role="37wK5m">
                <ref role="3cqZAo" to="lzb2:~JBColor.LIGHT_GRAY" resolve="LIGHT_GRAY" />
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ye4HINBYh4" role="3cqZAp">
          <node concept="2OqwBi" id="5ye4HINBYh6" role="3clFbG">
            <node concept="liA8E" id="5ye4HINBYh7" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
              <node concept="2ShNRf" id="5ye4HINBYh8" role="37wK5m">
                <node concept="1pGfFk" id="5ye4HINBYh9" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float,int,int,float,float[],float)" resolve="BasicStroke" />
                  <node concept="2$xPTn" id="5ye4HINBYha" role="37wK5m">
                    <property role="2$xPTl" value="1.f" />
                  </node>
                  <node concept="10M0yZ" id="5ye4HINBYhb" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~BasicStroke" resolve="BasicStroke" />
                    <ref role="3cqZAo" to="z60i:~BasicStroke.CAP_BUTT" resolve="CAP_BUTT" />
                  </node>
                  <node concept="10M0yZ" id="5ye4HINBYhc" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~BasicStroke.JOIN_MITER" resolve="JOIN_MITER" />
                    <ref role="1PxDUh" to="z60i:~BasicStroke" resolve="BasicStroke" />
                  </node>
                  <node concept="3cmrfG" id="5ye4HINBYhd" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                  </node>
                  <node concept="2ShNRf" id="5ye4HINBYhe" role="37wK5m">
                    <node concept="3g6Rrh" id="5ye4HINBYhf" role="2ShVmc">
                      <node concept="10OMs4" id="5ye4HINBYhg" role="3g7fb8" />
                      <node concept="3cmrfG" id="5ye4HINBYhh" role="3g7hyw">
                        <property role="3cmrfH" value="3" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5ye4HINBYhi" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="1iOpS24Q2yT" role="2Oq$k0">
              <node concept="10QFUN" id="1iOpS24Q2RC" role="1eOMHV">
                <node concept="3uibUv" id="1iOpS24Q3dr" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="5ye4HINBZe$" role="10QFUP">
                  <ref role="3cqZAo" node="1iOpS24POUZ" resolve="g" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ye4HINC0AD" role="3cqZAp">
          <node concept="2OqwBi" id="5ye4HINC1cs" role="3clFbG">
            <node concept="liA8E" id="5ye4HINC2vf" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape)" resolve="draw" />
              <node concept="2OqwBi" id="5jb5jNC3Yr9" role="37wK5m">
                <node concept="37vLTw" id="5jb5jNC3Yh9" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNC3z6H" resolve="myCellHandle" />
                </node>
                <node concept="liA8E" id="5jb5jNC3YK3" role="2OqNvi">
                  <ref role="37wK5l" node="5jb5jNC3oBF" resolve="getBounds" />
                  <node concept="37vLTw" id="5jb5jNC3YT6" role="37wK5m">
                    <ref role="3cqZAo" node="1iOpS24POV1" resolve="position" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="5jb5jNC3ZAw" role="2Oq$k0">
              <node concept="10QFUN" id="5jb5jNC3ZAx" role="1eOMHV">
                <node concept="3uibUv" id="5jb5jNC3ZAy" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="5jb5jNC3ZAz" role="10QFUP">
                  <ref role="3cqZAo" node="1iOpS24POUZ" resolve="g" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24POV5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="38k27IRB1QW">
    <property role="TrG5h" value="ECTransitionConditionCellHandle" />
    <node concept="2tJIrI" id="38k27IRB1Tz" role="jymVt" />
    <node concept="3clFb_" id="38k27IRB1Ut" role="jymVt">
      <property role="TrG5h" value="getCell" />
      <node concept="3clFbS" id="38k27IRB1Uu" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IRB1Uv" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRB1Uw" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRB1Ux" role="jymVt" />
    <node concept="3clFb_" id="38k27IRB1Uy" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3clFbS" id="38k27IRB1Uz" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IRB1U$" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRB1U_" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="37vLTG" id="38k27IRB1UA" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3uibUv" id="38k27IRB1UB" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRB1T_" role="jymVt" />
    <node concept="3Tm1VV" id="38k27IRB1QX" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="38k27IRy0o9">
    <property role="TrG5h" value="ECTransitionController" />
    <node concept="Wx3nA" id="38k27IRyuVg" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="HOVER_SIZE" />
      <node concept="3Tm1VV" id="38k27IRyuVh" role="1B3o_S" />
      <node concept="10OMs4" id="38k27IRzuP_" role="1tU5fm" />
      <node concept="2$xPTn" id="38k27IRzv1C" role="33vP2m">
        <property role="2$xPTl" value="0.2f" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRyqU9" role="jymVt" />
    <node concept="312cEg" id="38k27IRB4$D" role="jymVt">
      <property role="TrG5h" value="myHandle" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="38k27IRB3n_" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRB43H" role="1tU5fm">
        <ref role="3uigEE" node="38k27IRB1QW" resolve="ECTransitionConditionCellHandle" />
      </node>
    </node>
    <node concept="2tJIrI" id="38F6aFujilb" role="jymVt" />
    <node concept="312cEg" id="38F6aFujgua" role="jymVt">
      <property role="TrG5h" value="myHighlightColor" />
      <node concept="3Tm6S6" id="38F6aFujfm8" role="1B3o_S" />
      <node concept="3uibUv" id="38F6aFujg9M" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRB8hB" role="jymVt" />
    <node concept="3clFbW" id="38k27IRB5VM" role="jymVt">
      <node concept="3cqZAl" id="38k27IRB5VN" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRB5VO" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRB5VQ" role="3clF47">
        <node concept="3clFbF" id="38k27IRB5VU" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRB5VW" role="3clFbG">
            <node concept="37vLTw" id="38k27IRB804" role="37vLTJ">
              <ref role="3cqZAo" node="38k27IRB4$D" resolve="myHandle" />
            </node>
            <node concept="37vLTw" id="38k27IRB5W3" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRB5VT" resolve="handle" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRB5VT" role="3clF46">
        <property role="TrG5h" value="handle" />
        <node concept="3uibUv" id="38k27IRB5VS" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRB1QW" resolve="ECTransitionConditionCellHandle" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRB2H4" role="jymVt" />
    <node concept="3clFb_" id="38k27IRAx4w" role="jymVt">
      <property role="TrG5h" value="getEdgeTransformation" />
      <node concept="3Tm1VV" id="38k27IRAx4y" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRAx4z" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="38k27IRAx4$" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="38k27IRAx4H" role="11_B2D">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx4A" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx4G" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx4C" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRAx4D" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRAx4E" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRAx4F" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRAx4I" role="3clF47">
        <node concept="3clFbJ" id="38k27IRBpY8" role="3cqZAp">
          <node concept="3clFbS" id="38k27IRBpYu" role="3clFbx">
            <node concept="3cpWs6" id="38k27IRBqzw" role="3cqZAp">
              <node concept="1bVj0M" id="38k27IRBr7y" role="3cqZAk">
                <node concept="3clFbS" id="38k27IRBr7_" role="1bW5cS">
                  <node concept="3cpWs8" id="38k27IRB$16" role="3cqZAp">
                    <node concept="3cpWsn" id="38k27IRB$17" role="3cpWs9">
                      <property role="TrG5h" value="centre" />
                      <node concept="3uibUv" id="38k27IRB$14" role="1tU5fm">
                        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                      </node>
                      <node concept="2ShNRf" id="38k27IRB_mE" role="33vP2m">
                        <node concept="1pGfFk" id="38k27IRBAwW" role="2ShVmc">
                          <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(java.awt.Point)" resolve="Point" />
                          <node concept="2OqwBi" id="38k27IRB$18" role="37wK5m">
                            <node concept="37vLTw" id="38k27IRB$19" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRAx4A" resolve="path" />
                            </node>
                            <node concept="2OwXpG" id="38k27IRB$1a" role="2OqNvi">
                              <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="38k27IRBCgp" role="3cqZAp">
                    <node concept="2OqwBi" id="38k27IRBD90" role="3clFbG">
                      <node concept="37vLTw" id="38k27IRBCgn" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRB$17" resolve="centre" />
                      </node>
                      <node concept="liA8E" id="38k27IRBJod" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Point.translate(int,int)" resolve="translate" />
                        <node concept="3cpWsd" id="38k27IRBQzl" role="37wK5m">
                          <node concept="37vLTw" id="38k27IRBQ_F" role="3uHU7w">
                            <ref role="3cqZAo" node="38k27IRAx4C" resolve="x" />
                          </node>
                          <node concept="2OqwBi" id="38k27IRBLHz" role="3uHU7B">
                            <node concept="37vLTw" id="38k27IRBLpP" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRBrx_" resolve="p" />
                            </node>
                            <node concept="2OwXpG" id="38k27IRBM7k" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsd" id="38k27IRBYPi" role="37wK5m">
                          <node concept="37vLTw" id="38k27IRBYRP" role="3uHU7w">
                            <ref role="3cqZAo" node="38k27IRAx4E" resolve="y" />
                          </node>
                          <node concept="2OqwBi" id="38k27IRBSYa" role="3uHU7B">
                            <node concept="37vLTw" id="38k27IRBRTY" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRBrx_" resolve="p" />
                            </node>
                            <node concept="2OwXpG" id="38k27IRBU0t" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="38k27IRBsTX" role="3cqZAp">
                    <node concept="2ShNRf" id="38k27IRBsTT" role="3clFbG">
                      <node concept="1pGfFk" id="38k27IRBu2X" role="2ShVmc">
                        <ref role="37wK5l" node="38k27IRy0Fh" resolve="ECTransitionPath" />
                        <node concept="2OqwBi" id="38k27IRBvxR" role="37wK5m">
                          <node concept="37vLTw" id="38k27IRBuX4" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRAx4A" resolve="path" />
                          </node>
                          <node concept="2OwXpG" id="38k27IRBwmy" role="2OqNvi">
                            <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="38k27IRB$1b" role="37wK5m">
                          <ref role="3cqZAo" node="38k27IRB$17" resolve="centre" />
                        </node>
                        <node concept="2OqwBi" id="38k27IRC1rZ" role="37wK5m">
                          <node concept="37vLTw" id="38k27IRC0H5" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRAx4A" resolve="path" />
                          </node>
                          <node concept="2OwXpG" id="38k27IRC2hJ" role="2OqNvi">
                            <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="38k27IRBrx_" role="1bW2Oz">
                  <property role="TrG5h" value="p" />
                  <node concept="3uibUv" id="38k27IRBrx$" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="38k27IRBbNv" role="3clFbw">
            <node concept="2OqwBi" id="38k27IRBacG" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IRB9OA" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRB4$D" resolve="myHandle" />
              </node>
              <node concept="liA8E" id="38k27IRBa_m" role="2OqNvi">
                <ref role="37wK5l" node="38k27IRB1Uy" resolve="getBounds" />
                <node concept="2OqwBi" id="38k27IRBaMz" role="37wK5m">
                  <node concept="37vLTw" id="38k27IRBaE5" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27IRAx4A" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27IRBbw_" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="38k27IRBjZ9" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int)" resolve="contains" />
              <node concept="37vLTw" id="38k27IRBkjO" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx4C" resolve="x" />
              </node>
              <node concept="37vLTw" id="38k27IRBm8c" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx4E" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="38k27IRBqpv" role="3cqZAp">
          <node concept="10Nm6u" id="38k27IRBqs7" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx4J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRAx4M" role="jymVt">
      <property role="TrG5h" value="getSourceTransformation" />
      <node concept="3Tm1VV" id="38k27IRAx4O" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRAx4P" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="38k27IRAx4Q" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="38k27IRAx4V" role="11_B2D">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx4S" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx4U" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRAx4W" role="3clF47">
        <node concept="3cpWs6" id="38k27IRWRlP" role="3cqZAp">
          <node concept="1bVj0M" id="38k27IRWRNL" role="3cqZAk">
            <node concept="3clFbS" id="38k27IRWRNN" role="1bW5cS">
              <node concept="3clFbF" id="38k27ITc_l_" role="3cqZAp">
                <node concept="1rXfSq" id="38k27ITc_l$" role="3clFbG">
                  <ref role="37wK5l" node="38k27ITbLy1" resolve="transform" />
                  <node concept="37vLTw" id="38k27ITcAv1" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRAx4S" resolve="path" />
                  </node>
                  <node concept="37vLTw" id="38k27ITcCOg" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRWSew" resolve="ns" />
                  </node>
                  <node concept="2OqwBi" id="38k27ITcFMH" role="37wK5m">
                    <node concept="37vLTw" id="38k27ITcF4e" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRAx4S" resolve="path" />
                    </node>
                    <node concept="2OwXpG" id="38k27ITcH12" role="2OqNvi">
                      <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="38k27IRWSew" role="1bW2Oz">
              <property role="TrG5h" value="ns" />
              <node concept="3uibUv" id="38k27IRWSev" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx4X" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRAx50" role="jymVt">
      <property role="TrG5h" value="getTargetTransformation" />
      <node concept="3Tm1VV" id="38k27IRAx52" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRAx53" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="38k27IRAx54" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="38k27IRAx58" role="11_B2D">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx56" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx59" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRAx5a" role="3clF47">
        <node concept="3cpWs6" id="38k27IRZdjw" role="3cqZAp">
          <node concept="1bVj0M" id="38k27IRZdjx" role="3cqZAk">
            <node concept="3clFbS" id="38k27IRZdjy" role="1bW5cS">
              <node concept="3clFbF" id="38k27ITcb7I" role="3cqZAp">
                <node concept="1rXfSq" id="38k27ITcb7H" role="3clFbG">
                  <ref role="37wK5l" node="38k27ITbLy1" resolve="transform" />
                  <node concept="37vLTw" id="38k27ITccej" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRAx56" resolve="path" />
                  </node>
                  <node concept="2OqwBi" id="38k27ITcf7Y" role="37wK5m">
                    <node concept="37vLTw" id="38k27ITces_" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRAx56" resolve="path" />
                    </node>
                    <node concept="2OwXpG" id="38k27ITcgwJ" role="2OqNvi">
                      <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="38k27ITciIe" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRZdkX" resolve="nt" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="38k27IRZdkX" role="1bW2Oz">
              <property role="TrG5h" value="nt" />
              <node concept="3uibUv" id="38k27IRZdkY" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx5b" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRAx5e" role="jymVt">
      <property role="TrG5h" value="getEndpointsTransformation" />
      <node concept="3Tm1VV" id="38k27IRAx5g" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRAx5h" role="3clF45">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="38k27IRAx5i" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="38k27IRAx5j" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="38k27IRAx5o" role="11_B2D">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx5l" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx5n" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRAx5p" role="3clF47">
        <node concept="3clFbF" id="38k27IRZs8z" role="3cqZAp">
          <node concept="1bVj0M" id="38k27IRZs8_" role="3clFbG">
            <node concept="3clFbS" id="38k27IRZs8A" role="1bW5cS">
              <node concept="3clFbF" id="38k27ITcI6n" role="3cqZAp">
                <node concept="1rXfSq" id="38k27ITcI6p" role="3clFbG">
                  <ref role="37wK5l" node="38k27ITbLy1" resolve="transform" />
                  <node concept="37vLTw" id="38k27ITcI6q" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRAx5l" resolve="path" />
                  </node>
                  <node concept="37vLTw" id="38k27ITcIAI" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRZsZO" resolve="ns" />
                  </node>
                  <node concept="37vLTw" id="38k27ITcI6u" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRZsa1" resolve="nt" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="38k27IRZsZO" role="1bW2Oz">
              <property role="TrG5h" value="ns" />
              <node concept="3uibUv" id="38k27IRZtmx" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
            <node concept="37vLTG" id="38k27IRZsa1" role="1bW2Oz">
              <property role="TrG5h" value="nt" />
              <node concept="3uibUv" id="38k27IRZsa2" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx5q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38F6aFujcUm" role="jymVt" />
    <node concept="3clFb_" id="2wHo_lG0Q56" role="jymVt">
      <property role="TrG5h" value="getHighlightColor" />
      <node concept="3uibUv" id="2wHo_lG16uB" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3Tm1VV" id="2wHo_lG0Q58" role="1B3o_S" />
      <node concept="3clFbS" id="2wHo_lG0Q59" role="3clF47">
        <node concept="3clFbF" id="2wHo_lG0Q5a" role="3cqZAp">
          <node concept="37vLTw" id="38F6aFujhks" role="3clFbG">
            <ref role="3cqZAo" node="38F6aFujgua" resolve="myHighlightColor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2wHo_lFOHuV" role="jymVt">
      <property role="TrG5h" value="setHighlightColor" />
      <node concept="3cqZAl" id="2wHo_lFOHuW" role="3clF45" />
      <node concept="3Tm1VV" id="2wHo_lFOHuX" role="1B3o_S" />
      <node concept="3clFbS" id="2wHo_lFOHuY" role="3clF47">
        <node concept="3clFbF" id="2wHo_lFOHuZ" role="3cqZAp">
          <node concept="37vLTI" id="2wHo_lFOHv0" role="3clFbG">
            <node concept="37vLTw" id="2wHo_lFOHv1" role="37vLTx">
              <ref role="3cqZAo" node="2wHo_lFOHv2" resolve="highlightColor" />
            </node>
            <node concept="37vLTw" id="38F6aFujhE8" role="37vLTJ">
              <ref role="3cqZAo" node="38F6aFujgua" resolve="myHighlightColor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2wHo_lFOHv2" role="3clF46">
        <property role="TrG5h" value="highlightColor" />
        <node concept="3uibUv" id="2wHo_lFOHv3" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27ITbIKf" role="jymVt" />
    <node concept="3clFb_" id="38k27ITbLy1" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="3clFbS" id="38k27ITbLy4" role="3clF47">
        <node concept="3cpWs8" id="38k27ISOjsH" role="3cqZAp">
          <node concept="3cpWsn" id="38k27ISOjsI" role="3cpWs9">
            <property role="TrG5h" value="at" />
            <node concept="3uibUv" id="38k27ISOjsJ" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~AffineTransform" resolve="AffineTransform" />
            </node>
            <node concept="2ShNRf" id="38k27ISOqbV" role="33vP2m">
              <node concept="1pGfFk" id="38k27ISOs_D" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~AffineTransform.&lt;init&gt;()" resolve="AffineTransform" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27ISUpf7" role="3cqZAp" />
        <node concept="3cpWs8" id="38k27ISRTZy" role="3cqZAp">
          <node concept="3cpWsn" id="38k27ISRTZ_" role="3cpWs9">
            <property role="TrG5h" value="oldX" />
            <node concept="10Oyi0" id="38k27ISRTZw" role="1tU5fm" />
            <node concept="3cpWsd" id="38k27ISShuM" role="33vP2m">
              <node concept="2OqwBi" id="38k27ISSowf" role="3uHU7w">
                <node concept="2OqwBi" id="38k27ITbZWO" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27ITbZdN" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27ITbNZw" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27ITc0MU" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                  </node>
                </node>
                <node concept="2OwXpG" id="38k27ISStC5" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27ISS1Rz" role="3uHU7B">
                <node concept="2OqwBi" id="38k27ISS4Ei" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27ISS3Nk" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27ITbNZw" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27ISS6v5" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
                  </node>
                </node>
                <node concept="2OwXpG" id="38k27ISS2hk" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27ISSvbq" role="3cqZAp">
          <node concept="3cpWsn" id="38k27ISSvbr" role="3cpWs9">
            <property role="TrG5h" value="oldY" />
            <node concept="10Oyi0" id="38k27ISSvbs" role="1tU5fm" />
            <node concept="3cpWsd" id="38k27ISSvbt" role="33vP2m">
              <node concept="2OqwBi" id="38k27ISSvbu" role="3uHU7w">
                <node concept="2OqwBi" id="38k27ITc255" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27ITc1qy" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27ITbNZw" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27ITc2Vb" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                  </node>
                </node>
                <node concept="2OwXpG" id="38k27ISSI4s" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27ISSvbz" role="3uHU7B">
                <node concept="2OqwBi" id="38k27ISSvb$" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27ISSvb_" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27ITbNZw" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27ISSvbA" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
                  </node>
                </node>
                <node concept="2OwXpG" id="38k27ISSBph" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27ISSJ8d" role="3cqZAp">
          <node concept="3cpWsn" id="38k27ISSJ8e" role="3cpWs9">
            <property role="TrG5h" value="newX" />
            <node concept="10Oyi0" id="38k27ISSJ8f" role="1tU5fm" />
            <node concept="3cpWsd" id="38k27ISSJ8g" role="33vP2m">
              <node concept="2OqwBi" id="38k27ISSJ8h" role="3uHU7w">
                <node concept="37vLTw" id="38k27ITbXGg" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ITbPda" resolve="ns" />
                </node>
                <node concept="2OwXpG" id="38k27ISSJ8l" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27ISSJ8m" role="3uHU7B">
                <node concept="37vLTw" id="38k27ISSNQY" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ITbQQl" resolve="nt" />
                </node>
                <node concept="2OwXpG" id="38k27ISSJ8q" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27ISSJ7Z" role="3cqZAp">
          <node concept="3cpWsn" id="38k27ISSJ80" role="3cpWs9">
            <property role="TrG5h" value="newY" />
            <node concept="10Oyi0" id="38k27ISSJ81" role="1tU5fm" />
            <node concept="3cpWsd" id="38k27ISSJ82" role="33vP2m">
              <node concept="2OqwBi" id="38k27ISSJ83" role="3uHU7w">
                <node concept="37vLTw" id="38k27ITbXGj" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ITbPda" resolve="ns" />
                </node>
                <node concept="2OwXpG" id="38k27ISSJ87" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27ISSJ88" role="3uHU7B">
                <node concept="37vLTw" id="38k27ISSPtT" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ITbQQl" resolve="nt" />
                </node>
                <node concept="2OwXpG" id="38k27ISSJ8c" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27IT4I7q" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IT4I7r" role="3cpWs9">
            <property role="TrG5h" value="scale" />
            <node concept="10P55v" id="38k27IT4I6C" role="1tU5fm" />
            <node concept="2YIFZM" id="38k27IT4I7s" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <ref role="37wK5l" to="wyt6:~Math.sqrt(double)" resolve="sqrt" />
              <node concept="FJ1c_" id="38k27IT4I7t" role="37wK5m">
                <node concept="1eOMI4" id="38k27IT4I7u" role="3uHU7w">
                  <node concept="3cpWs3" id="38k27IT4I7v" role="1eOMHV">
                    <node concept="17qRlL" id="38k27IT4I7w" role="3uHU7w">
                      <node concept="37vLTw" id="38k27IT4I7x" role="3uHU7w">
                        <ref role="3cqZAo" node="38k27ISSvbr" resolve="oldY" />
                      </node>
                      <node concept="37vLTw" id="38k27IT4I7y" role="3uHU7B">
                        <ref role="3cqZAo" node="38k27ISSvbr" resolve="oldY" />
                      </node>
                    </node>
                    <node concept="17qRlL" id="38k27IT4I7z" role="3uHU7B">
                      <node concept="10QFUN" id="38k27IT4I7$" role="3uHU7B">
                        <node concept="10P55v" id="38k27IT4I7_" role="10QFUM" />
                        <node concept="37vLTw" id="38k27IT4I7A" role="10QFUP">
                          <ref role="3cqZAo" node="38k27ISRTZ_" resolve="oldX" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="38k27IT4I7B" role="3uHU7w">
                        <ref role="3cqZAo" node="38k27ISRTZ_" resolve="oldX" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="38k27IT4I7C" role="3uHU7B">
                  <node concept="3cpWs3" id="38k27IT4I7D" role="1eOMHV">
                    <node concept="17qRlL" id="38k27IT4I7E" role="3uHU7B">
                      <node concept="37vLTw" id="38k27IT4I7F" role="3uHU7B">
                        <ref role="3cqZAo" node="38k27ISSJ8e" resolve="newX" />
                      </node>
                      <node concept="37vLTw" id="38k27IT4I7G" role="3uHU7w">
                        <ref role="3cqZAo" node="38k27ISSJ8e" resolve="newX" />
                      </node>
                    </node>
                    <node concept="17qRlL" id="38k27IT4I7H" role="3uHU7w">
                      <node concept="37vLTw" id="38k27IT4I7I" role="3uHU7w">
                        <ref role="3cqZAo" node="38k27ISSJ80" resolve="newY" />
                      </node>
                      <node concept="37vLTw" id="38k27IT4I7J" role="3uHU7B">
                        <ref role="3cqZAo" node="38k27ISSJ80" resolve="newY" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27ITc8wj" role="3cqZAp" />
        <node concept="3clFbF" id="38k27ISURS2" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISUSZI" role="3clFbG">
            <node concept="37vLTw" id="38k27ISURS0" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISOjsI" resolve="at" />
            </node>
            <node concept="liA8E" id="38k27ISUVuR" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~AffineTransform.translate(double,double)" resolve="translate" />
              <node concept="2OqwBi" id="38k27IT2ZU8" role="37wK5m">
                <node concept="37vLTw" id="38k27ITbXGd" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ITbPda" resolve="ns" />
                </node>
                <node concept="2OwXpG" id="38k27IT2ZUc" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27IT2ZUe" role="37wK5m">
                <node concept="37vLTw" id="38k27ITbXGh" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ITbPda" resolve="ns" />
                </node>
                <node concept="2OwXpG" id="38k27IT2ZUi" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IT9UDl" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IT9VLY" role="3clFbG">
            <node concept="37vLTw" id="38k27IT9UDj" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISOjsI" resolve="at" />
            </node>
            <node concept="liA8E" id="38k27IT9XNV" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~AffineTransform.rotate(double)" resolve="rotate" />
              <node concept="1ZRNhn" id="38k27ITbpRG" role="37wK5m">
                <node concept="2YIFZM" id="38k27ITa0Gy" role="2$L3a6">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.atan2(double,double)" resolve="atan2" />
                  <node concept="3cpWsd" id="38k27ITakES" role="37wK5m">
                    <node concept="17qRlL" id="38k27ITavsW" role="3uHU7w">
                      <node concept="37vLTw" id="38k27ITawXe" role="3uHU7w">
                        <ref role="3cqZAo" node="38k27ISRTZ_" resolve="oldX" />
                      </node>
                      <node concept="37vLTw" id="38k27ITamc0" role="3uHU7B">
                        <ref role="3cqZAo" node="38k27ISSJ80" resolve="newY" />
                      </node>
                    </node>
                    <node concept="17qRlL" id="38k27ITaaPZ" role="3uHU7B">
                      <node concept="37vLTw" id="38k27ITa2bW" role="3uHU7B">
                        <ref role="3cqZAo" node="38k27ISSJ8e" resolve="newX" />
                      </node>
                      <node concept="37vLTw" id="38k27ITacmU" role="3uHU7w">
                        <ref role="3cqZAo" node="38k27ISSvbr" resolve="oldY" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs3" id="38k27ITaQPr" role="37wK5m">
                    <node concept="17qRlL" id="38k27ITb0zU" role="3uHU7w">
                      <node concept="37vLTw" id="38k27ITb21a" role="3uHU7w">
                        <ref role="3cqZAo" node="38k27ISSvbr" resolve="oldY" />
                      </node>
                      <node concept="37vLTw" id="38k27ITaSn6" role="3uHU7B">
                        <ref role="3cqZAo" node="38k27ISSJ80" resolve="newY" />
                      </node>
                    </node>
                    <node concept="17qRlL" id="38k27ITaGtd" role="3uHU7B">
                      <node concept="37vLTw" id="38k27ITazQL" role="3uHU7B">
                        <ref role="3cqZAo" node="38k27ISSJ8e" resolve="newX" />
                      </node>
                      <node concept="37vLTw" id="38k27ITaHYJ" role="3uHU7w">
                        <ref role="3cqZAo" node="38k27ISRTZ_" resolve="oldX" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISUur7" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISUwnd" role="3clFbG">
            <node concept="37vLTw" id="38k27ISUur5" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISOjsI" resolve="at" />
            </node>
            <node concept="liA8E" id="38k27ISUyl1" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~AffineTransform.scale(double,double)" resolve="scale" />
              <node concept="37vLTw" id="38k27IT4I7K" role="37wK5m">
                <ref role="3cqZAo" node="38k27IT4I7r" resolve="scale" />
              </node>
              <node concept="37vLTw" id="38k27IT4Owt" role="37wK5m">
                <ref role="3cqZAo" node="38k27IT4I7r" resolve="scale" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISO$43" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISO$Vx" role="3clFbG">
            <node concept="37vLTw" id="38k27ISO$41" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISOjsI" resolve="at" />
            </node>
            <node concept="liA8E" id="38k27ISOB7F" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~AffineTransform.translate(double,double)" resolve="translate" />
              <node concept="1ZRNhn" id="38k27ITd_S$" role="37wK5m">
                <node concept="2OqwBi" id="38k27ISOJ8U" role="2$L3a6">
                  <node concept="2OqwBi" id="38k27ITc3PE" role="2Oq$k0">
                    <node concept="37vLTw" id="38k27ITc3$4" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27ITbNZw" resolve="path" />
                    </node>
                    <node concept="2OwXpG" id="38k27ITc4pK" role="2OqNvi">
                      <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="38k27ISOOg$" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                  </node>
                </node>
              </node>
              <node concept="1ZRNhn" id="38k27ITdAgU" role="37wK5m">
                <node concept="2OqwBi" id="38k27ISOXlC" role="2$L3a6">
                  <node concept="2OqwBi" id="38k27ITc4YT" role="2Oq$k0">
                    <node concept="37vLTw" id="38k27ITc4Fc" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27ITbNZw" resolve="path" />
                    </node>
                    <node concept="2OwXpG" id="38k27ITc5u7" role="2OqNvi">
                      <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="38k27ISP2tz" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27ISOgub" role="3cqZAp" />
        <node concept="3cpWs8" id="38k27ISVbpY" role="3cqZAp">
          <node concept="3cpWsn" id="38k27ISVbpZ" role="3cpWs9">
            <property role="TrG5h" value="nc" />
            <node concept="3uibUv" id="38k27ISVbq0" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2ShNRf" id="38k27ISVcjn" role="33vP2m">
              <node concept="1pGfFk" id="38k27ISVeyf" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;()" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27IT2tu4" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IT2tu5" role="3cpWs9">
            <property role="TrG5h" value="centre" />
            <node concept="3uibUv" id="38k27IT2tu3" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2ShNRf" id="38k27IT2xqL" role="33vP2m">
              <node concept="1pGfFk" id="38k27IT2zH1" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(java.awt.Point)" resolve="Point" />
                <node concept="2OqwBi" id="38k27IT2tu6" role="37wK5m">
                  <node concept="37vLTw" id="38k27IT2tu7" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27ITbNZw" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27IT2tu8" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISVhiE" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISVikj" role="3clFbG">
            <node concept="37vLTw" id="38k27ISVhiC" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISOjsI" resolve="at" />
            </node>
            <node concept="liA8E" id="38k27ISVktB" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~AffineTransform.transform(java.awt.geom.Point2D,java.awt.geom.Point2D)" resolve="transform" />
              <node concept="37vLTw" id="38k27IT2tu9" role="37wK5m">
                <ref role="3cqZAo" node="38k27IT2tu5" resolve="centre" />
              </node>
              <node concept="37vLTw" id="38k27ISVra0" role="37wK5m">
                <ref role="3cqZAo" node="38k27ISVbpZ" resolve="nc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27ISV8Nf" role="3cqZAp" />
        <node concept="3cpWs6" id="38k27IRZdkM" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRZdkN" role="3cqZAk">
            <node concept="1pGfFk" id="38k27IRZdkO" role="2ShVmc">
              <ref role="37wK5l" node="38k27IRy0Fh" resolve="ECTransitionPath" />
              <node concept="37vLTw" id="38k27ITbXGe" role="37wK5m">
                <ref role="3cqZAo" node="38k27ITbPda" resolve="ns" />
              </node>
              <node concept="37vLTw" id="38k27ISVsw8" role="37wK5m">
                <ref role="3cqZAo" node="38k27ISVbpZ" resolve="nc" />
              </node>
              <node concept="37vLTw" id="38k27IRZruI" role="37wK5m">
                <ref role="3cqZAo" node="38k27ITbQQl" resolve="nt" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27ITbKgE" role="1B3o_S" />
      <node concept="3uibUv" id="38k27ITbMVe" role="3clF45">
        <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
      </node>
      <node concept="37vLTG" id="38k27ITbNZw" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27ITbNZv" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27ITbPda" role="3clF46">
        <property role="TrG5h" value="ns" />
        <node concept="3uibUv" id="38k27ITbQlO" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27ITbQQl" role="3clF46">
        <property role="TrG5h" value="nt" />
        <node concept="3uibUv" id="38k27ITbRWf" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27ITcIXV" role="jymVt" />
    <node concept="3clFb_" id="38k27IRAx5t" role="jymVt">
      <property role="TrG5h" value="isSourceTransformableAt" />
      <node concept="3Tm1VV" id="38k27IRAx5v" role="1B3o_S" />
      <node concept="10P_77" id="38k27IRAx5w" role="3clF45" />
      <node concept="37vLTG" id="38k27IRAx5x" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx5B" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx5z" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRAx5$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRAx5_" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRAx5A" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRAx5C" role="3clF47">
        <node concept="3clFbF" id="38k27ISLkr0" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISLlrG" role="3clFbG">
            <node concept="1rXfSq" id="38k27ISLkqZ" role="2Oq$k0">
              <ref role="37wK5l" node="38k27ISL2UQ" resolve="sourceEndpointLine" />
              <node concept="37vLTw" id="38k27ISLkQL" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx5x" resolve="path" />
              </node>
            </node>
            <node concept="liA8E" id="38k27ISLmUX" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Line2D.intersects(java.awt.geom.Rectangle2D)" resolve="intersects" />
              <node concept="1rXfSq" id="38k27ISLn2N" role="37wK5m">
                <ref role="37wK5l" node="38k27ISLcZ7" resolve="boundary" />
                <node concept="37vLTw" id="38k27ISLnsw" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRAx5z" resolve="x" />
                </node>
                <node concept="37vLTw" id="38k27ISLnSk" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRAx5_" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx5D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27ISL7L8" role="jymVt" />
    <node concept="3clFb_" id="38k27IRAx5G" role="jymVt">
      <property role="TrG5h" value="isTargetTransformableAt" />
      <node concept="3Tm1VV" id="38k27IRAx5I" role="1B3o_S" />
      <node concept="10P_77" id="38k27IRAx5J" role="3clF45" />
      <node concept="37vLTG" id="38k27IRAx5K" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx5Q" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx5M" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRAx5N" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRAx5O" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRAx5P" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRAx5R" role="3clF47">
        <node concept="3clFbF" id="38k27ISL_MU" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISL_MV" role="3clFbG">
            <node concept="1rXfSq" id="38k27ISL_MW" role="2Oq$k0">
              <ref role="37wK5l" node="38k27ISLthn" resolve="targetEndpointLine" />
              <node concept="37vLTw" id="38k27ISL_MX" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx5K" resolve="path" />
              </node>
            </node>
            <node concept="liA8E" id="38k27ISL_MY" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Line2D.intersects(java.awt.geom.Rectangle2D)" resolve="intersects" />
              <node concept="1rXfSq" id="38k27ISL_MZ" role="37wK5m">
                <ref role="37wK5l" node="38k27ISLcZ7" resolve="boundary" />
                <node concept="37vLTw" id="38k27ISL_N0" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRAx5M" resolve="x" />
                </node>
                <node concept="37vLTw" id="38k27ISL_N1" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRAx5O" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx5S" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27ISLqTX" role="jymVt" />
    <node concept="3clFb_" id="38k27ISLcZ7" role="jymVt">
      <property role="TrG5h" value="boundary" />
      <node concept="37vLTG" id="38k27ISLejn" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27ISLejo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27ISLejp" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27ISLejq" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27ISLcZa" role="3clF47">
        <node concept="3clFbF" id="38k27ISLfp4" role="3cqZAp">
          <node concept="2ShNRf" id="38k27ISLfp2" role="3clFbG">
            <node concept="1pGfFk" id="38k27ISLgmR" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
              <node concept="3cpWsd" id="38k27ISLhxx" role="37wK5m">
                <node concept="37vLTw" id="38k27ISLgvz" role="3uHU7B">
                  <ref role="3cqZAo" node="38k27ISLejn" resolve="x" />
                </node>
                <node concept="3cmrfG" id="38k27ISLjvh" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
              <node concept="3cpWsd" id="38k27ISLj7W" role="37wK5m">
                <node concept="3cmrfG" id="38k27ISLjn0" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="37vLTw" id="38k27ISLhXI" role="3uHU7B">
                  <ref role="3cqZAo" node="38k27ISLejp" resolve="y" />
                </node>
              </node>
              <node concept="3cmrfG" id="38k27ISLjLs" role="37wK5m">
                <property role="3cmrfH" value="8" />
              </node>
              <node concept="3cmrfG" id="38k27ISLjP8" role="37wK5m">
                <property role="3cmrfH" value="8" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="38k27ISL93c" role="1B3o_S" />
      <node concept="3uibUv" id="38k27ISLc_N" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27ISL2UQ" role="jymVt">
      <property role="TrG5h" value="sourceEndpointLine" />
      <node concept="3Tm6S6" id="38k27ISL2UR" role="1B3o_S" />
      <node concept="3uibUv" id="38k27ISL2US" role="3clF45">
        <ref role="3uigEE" to="fbzs:~Line2D$Float" resolve="Line2D.Float" />
      </node>
      <node concept="37vLTG" id="38k27ISL2Fg" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27ISL2Fh" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27ISL2r9" role="3clF47">
        <node concept="3cpWs6" id="38k27ISL2EB" role="3cqZAp">
          <node concept="2ShNRf" id="38k27ISL2EC" role="3cqZAk">
            <node concept="1pGfFk" id="38k27ISL2ED" role="2ShVmc">
              <ref role="37wK5l" to="fbzs:~Line2D$Float.&lt;init&gt;(float,float,float,float)" resolve="Line2D.Float" />
              <node concept="2OqwBi" id="38k27ISL2EE" role="37wK5m">
                <node concept="2OqwBi" id="38k27ISL2EF" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27ISL2Fl" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27ISL2Fg" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27ISL2EH" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                  </node>
                </node>
                <node concept="2OwXpG" id="38k27ISL2EI" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27ISL2EJ" role="37wK5m">
                <node concept="2OqwBi" id="38k27ISL2EK" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27ISL2Fi" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27ISL2Fg" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27ISL2EM" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                  </node>
                </node>
                <node concept="2OwXpG" id="38k27ISL2EN" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
              <node concept="FJ1c_" id="38k27ISL2EO" role="37wK5m">
                <node concept="3cmrfG" id="38k27ISL2EP" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1eOMI4" id="38k27ISL2EQ" role="3uHU7B">
                  <node concept="3cpWs3" id="38k27ISNyoI" role="1eOMHV">
                    <node concept="2OqwBi" id="38k27ISL2EX" role="3uHU7B">
                      <node concept="2OqwBi" id="38k27ISL2EY" role="2Oq$k0">
                        <node concept="37vLTw" id="38k27ISL2Fj" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27ISL2Fg" resolve="path" />
                        </node>
                        <node concept="2OwXpG" id="38k27ISL2F0" role="2OqNvi">
                          <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="38k27ISL2F1" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27ISL2ES" role="3uHU7w">
                      <node concept="2OqwBi" id="38k27ISL2ET" role="2Oq$k0">
                        <node concept="37vLTw" id="38k27ISL2Fk" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27ISL2Fg" resolve="path" />
                        </node>
                        <node concept="2OwXpG" id="38k27ISL2EV" role="2OqNvi">
                          <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="38k27ISL2EW" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="FJ1c_" id="38k27ISL2F2" role="37wK5m">
                <node concept="3cmrfG" id="38k27ISL2F3" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1eOMI4" id="38k27ISL2F4" role="3uHU7B">
                  <node concept="3cpWs3" id="38k27ISNzuo" role="1eOMHV">
                    <node concept="2OqwBi" id="38k27ISL2Fb" role="3uHU7B">
                      <node concept="2OqwBi" id="38k27ISL2Fc" role="2Oq$k0">
                        <node concept="37vLTw" id="38k27ISL2Fn" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27ISL2Fg" resolve="path" />
                        </node>
                        <node concept="2OwXpG" id="38k27ISL2Fe" role="2OqNvi">
                          <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="38k27ISL2Ff" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27ISL2F6" role="3uHU7w">
                      <node concept="2OqwBi" id="38k27ISL2F7" role="2Oq$k0">
                        <node concept="37vLTw" id="38k27ISL2Fm" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27ISL2Fg" resolve="path" />
                        </node>
                        <node concept="2OwXpG" id="38k27ISL2F9" role="2OqNvi">
                          <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="38k27ISL2Fa" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
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
    <node concept="3clFb_" id="38k27ISLthn" role="jymVt">
      <property role="TrG5h" value="targetEndpointLine" />
      <node concept="3Tm6S6" id="38k27ISLtho" role="1B3o_S" />
      <node concept="3uibUv" id="38k27ISLthp" role="3clF45">
        <ref role="3uigEE" to="fbzs:~Line2D$Float" resolve="Line2D.Float" />
      </node>
      <node concept="37vLTG" id="38k27ISLthq" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27ISLthr" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27ISLths" role="3clF47">
        <node concept="3cpWs6" id="38k27ISLtht" role="3cqZAp">
          <node concept="2ShNRf" id="38k27ISLthu" role="3cqZAk">
            <node concept="1pGfFk" id="38k27ISLthv" role="2ShVmc">
              <ref role="37wK5l" to="fbzs:~Line2D$Float.&lt;init&gt;(float,float,float,float)" resolve="Line2D.Float" />
              <node concept="2OqwBi" id="38k27ISLthw" role="37wK5m">
                <node concept="2OqwBi" id="38k27ISLthx" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27ISLthy" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27ISLthq" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27ISLwM$" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
                  </node>
                </node>
                <node concept="2OwXpG" id="38k27ISLth$" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27ISLth_" role="37wK5m">
                <node concept="2OqwBi" id="38k27ISLthA" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27ISLthB" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27ISLthq" resolve="path" />
                  </node>
                  <node concept="2OwXpG" id="38k27ISLxUS" role="2OqNvi">
                    <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
                  </node>
                </node>
                <node concept="2OwXpG" id="38k27ISLthD" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
              <node concept="FJ1c_" id="38k27ISLthE" role="37wK5m">
                <node concept="3cmrfG" id="38k27ISLthF" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1eOMI4" id="38k27ISLthG" role="3uHU7B">
                  <node concept="3cpWs3" id="38k27ISN$$2" role="1eOMHV">
                    <node concept="2OqwBi" id="38k27ISLthN" role="3uHU7B">
                      <node concept="2OqwBi" id="38k27ISLthO" role="2Oq$k0">
                        <node concept="37vLTw" id="38k27ISLthP" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27ISLthq" resolve="path" />
                        </node>
                        <node concept="2OwXpG" id="38k27ISLthQ" role="2OqNvi">
                          <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="38k27ISLthR" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27ISLthI" role="3uHU7w">
                      <node concept="2OqwBi" id="38k27ISLthJ" role="2Oq$k0">
                        <node concept="37vLTw" id="38k27ISLthK" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27ISLthq" resolve="path" />
                        </node>
                        <node concept="2OwXpG" id="38k27ISLz7j" role="2OqNvi">
                          <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="38k27ISLthM" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="FJ1c_" id="38k27ISLthS" role="37wK5m">
                <node concept="3cmrfG" id="38k27ISLthT" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1eOMI4" id="38k27ISLthU" role="3uHU7B">
                  <node concept="3cpWs3" id="38k27ISN_HN" role="1eOMHV">
                    <node concept="2OqwBi" id="38k27ISLti1" role="3uHU7B">
                      <node concept="2OqwBi" id="38k27ISLti2" role="2Oq$k0">
                        <node concept="37vLTw" id="38k27ISLti3" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27ISLthq" resolve="path" />
                        </node>
                        <node concept="2OwXpG" id="38k27ISMZhV" role="2OqNvi">
                          <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="38k27ISLti5" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27ISLthW" role="3uHU7w">
                      <node concept="2OqwBi" id="38k27ISLthX" role="2Oq$k0">
                        <node concept="37vLTw" id="38k27ISLthY" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27ISLthq" resolve="path" />
                        </node>
                        <node concept="2OwXpG" id="38k27ISN0xE" role="2OqNvi">
                          <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="38k27ISLti0" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
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
    <node concept="2tJIrI" id="38k27ISLs3A" role="jymVt" />
    <node concept="3clFb_" id="38k27IRAx5V" role="jymVt">
      <property role="TrG5h" value="isSelectableAt" />
      <node concept="3Tm1VV" id="38k27IRAx5X" role="1B3o_S" />
      <node concept="10P_77" id="38k27IRAx5Y" role="3clF45" />
      <node concept="37vLTG" id="38k27IRAx5Z" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx65" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx61" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRAx62" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRAx63" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRAx64" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRAx66" role="3clF47">
        <node concept="3clFbF" id="38k27ISLAIt" role="3cqZAp">
          <node concept="22lmx$" id="38k27ISLDlu" role="3clFbG">
            <node concept="1rXfSq" id="38k27ISLAIs" role="3uHU7B">
              <ref role="37wK5l" node="38k27IRAx5t" resolve="isSourceTransformableAt" />
              <node concept="37vLTw" id="38k27ISLB6K" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx5Z" resolve="path" />
              </node>
              <node concept="37vLTw" id="38k27ISLBGP" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx61" resolve="x" />
              </node>
              <node concept="37vLTw" id="38k27ISLC5u" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx63" resolve="y" />
              </node>
            </node>
            <node concept="1rXfSq" id="38k27ISLDEV" role="3uHU7w">
              <ref role="37wK5l" node="38k27IRAx5G" resolve="isTargetTransformableAt" />
              <node concept="37vLTw" id="38k27ISLDEW" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx5Z" resolve="path" />
              </node>
              <node concept="37vLTw" id="38k27ISLDEX" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx61" resolve="x" />
              </node>
              <node concept="37vLTw" id="38k27ISLDEY" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx63" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx67" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IS4pjO" role="jymVt" />
    <node concept="3clFb_" id="38k27IS4qmC" role="jymVt">
      <property role="TrG5h" value="getConnectionCell" />
      <node concept="3Tm1VV" id="38k27IS4qmG" role="1B3o_S" />
      <node concept="2AHcQZ" id="38k27IS4qmH" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="38k27IS4qmI" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="3clFbS" id="38k27IS4qmK" role="3clF47">
        <node concept="3clFbF" id="38k27IS4rVg" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IS4sma" role="3clFbG">
            <node concept="37vLTw" id="38k27IS4rVf" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRB4$D" resolve="myHandle" />
            </node>
            <node concept="liA8E" id="38k27IS4uBB" role="2OqNvi">
              <ref role="37wK5l" node="38k27IRB1Ut" resolve="getCell" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IS4qmL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IS4uFv" role="jymVt" />
    <node concept="3clFb_" id="38k27IS4qmO" role="jymVt">
      <property role="TrG5h" value="updateCellWithPath" />
      <node concept="3Tm1VV" id="38k27IS4qmQ" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IS4qmR" role="3clF45" />
      <node concept="37vLTG" id="38k27IS4qmS" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IS4qmV" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IS4qmW" role="3clF47">
        <node concept="3cpWs8" id="38k27IS4C9C" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IS4C9D" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10Oyi0" id="38k27IS4C9y" role="1tU5fm" />
            <node concept="2OqwBi" id="38k27IS4C9E" role="33vP2m">
              <node concept="2OqwBi" id="38k27IS4C9F" role="2Oq$k0">
                <node concept="37vLTw" id="38k27IS4C9G" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IS4qmS" resolve="path" />
                </node>
                <node concept="2OwXpG" id="38k27IS4C9H" role="2OqNvi">
                  <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                </node>
              </node>
              <node concept="2OwXpG" id="38k27IS4C9I" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27IS4JIQ" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IS4JIR" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10Oyi0" id="38k27IS4JIP" role="1tU5fm" />
            <node concept="2OqwBi" id="38k27IS4JIS" role="33vP2m">
              <node concept="2OqwBi" id="38k27IS4JIT" role="2Oq$k0">
                <node concept="37vLTw" id="38k27IS4JIU" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IS4qmS" resolve="path" />
                </node>
                <node concept="2OwXpG" id="38k27IS4JIV" role="2OqNvi">
                  <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                </node>
              </node>
              <node concept="2OwXpG" id="38k27IS4JIW" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27IS4XZi" role="3cqZAp" />
        <node concept="3cpWs8" id="38k27IS4LDa" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IS4LDb" role="3cpWs9">
            <property role="TrG5h" value="cell" />
            <node concept="3uibUv" id="38k27IS4LD9" role="1tU5fm">
              <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
            </node>
            <node concept="2OqwBi" id="38k27IS4LDc" role="33vP2m">
              <node concept="37vLTw" id="38k27IS4LDd" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRB4$D" resolve="myHandle" />
              </node>
              <node concept="liA8E" id="38k27IS4LDe" role="2OqNvi">
                <ref role="37wK5l" node="38k27IRB1Ut" resolve="getCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27IS4XBq" role="3cqZAp" />
        <node concept="3clFbF" id="6O98XsLlEf$" role="3cqZAp">
          <node concept="2OqwBi" id="6O98XsLlEvP" role="3clFbG">
            <node concept="37vLTw" id="6O98XsLlEfy" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IS4LDb" resolve="cell" />
            </node>
            <node concept="liA8E" id="6O98XsLlEGv" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.relayout()" resolve="relayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6O98XsLlD4Y" role="3cqZAp">
          <node concept="2OqwBi" id="6O98XsLlDm4" role="3clFbG">
            <node concept="37vLTw" id="6O98XsLlD4W" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IS4LDb" resolve="cell" />
            </node>
            <node concept="liA8E" id="6O98XsLlDBv" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.moveTo(int,int)" resolve="moveTo" />
              <node concept="3cpWsd" id="38k27IS4Rxs" role="37wK5m">
                <node concept="FJ1c_" id="38k27IS4WDU" role="3uHU7w">
                  <node concept="3cmrfG" id="38k27IS4WGg" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="38k27IS4S33" role="3uHU7B">
                    <node concept="37vLTw" id="38k27IS4RCo" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IS4LDb" resolve="cell" />
                    </node>
                    <node concept="liA8E" id="38k27IS4W1m" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="38k27IS4My6" role="3uHU7B">
                  <ref role="3cqZAo" node="38k27IS4C9D" resolve="x" />
                </node>
              </node>
              <node concept="3cpWsd" id="38k27IS4WQR" role="37wK5m">
                <node concept="FJ1c_" id="38k27IS4WQS" role="3uHU7w">
                  <node concept="3cmrfG" id="38k27IS4WQT" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="38k27IS4WQU" role="3uHU7B">
                    <node concept="37vLTw" id="38k27IS4WQV" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IS4LDb" resolve="cell" />
                    </node>
                    <node concept="liA8E" id="38k27IS4WQW" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight()" resolve="getHeight" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="38k27IS4XQi" role="3uHU7B">
                  <ref role="3cqZAo" node="38k27IS4JIR" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IS4qmX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRAyBm" role="jymVt" />
    <node concept="3clFb_" id="38k27IRAx6a" role="jymVt">
      <property role="TrG5h" value="getCursorAt" />
      <node concept="3Tm1VV" id="38k27IRAx6c" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRAx6k" role="3clF45">
        <ref role="3uigEE" node="38k27IRy1n0" resolve="ECTransitionCursor" />
      </node>
      <node concept="37vLTG" id="38k27IRAx6e" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx6l" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx6g" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRAx6h" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRAx6i" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRAx6j" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRAx6m" role="3clF47">
        <node concept="3clFbJ" id="38k27ISLEJW" role="3cqZAp">
          <node concept="1rXfSq" id="38k27ISLEQY" role="3clFbw">
            <ref role="37wK5l" node="38k27IRAx5t" resolve="isSourceTransformableAt" />
            <node concept="37vLTw" id="38k27ISLFfL" role="37wK5m">
              <ref role="3cqZAo" node="38k27IRAx6e" resolve="path" />
            </node>
            <node concept="37vLTw" id="38k27ISLFCT" role="37wK5m">
              <ref role="3cqZAo" node="38k27IRAx6g" resolve="x" />
            </node>
            <node concept="37vLTw" id="38k27ISLFGw" role="37wK5m">
              <ref role="3cqZAo" node="38k27IRAx6i" resolve="y" />
            </node>
          </node>
          <node concept="3clFbS" id="38k27ISLEJY" role="3clFbx">
            <node concept="3cpWs6" id="38k27ISLG5g" role="3cqZAp">
              <node concept="Rm8GO" id="38k27ISLHcN" role="3cqZAk">
                <ref role="Rm8GQ" node="38k27IRy1qi" resolve="SOURCE" />
                <ref role="1Px2BO" node="38k27IRy1n0" resolve="ECTransitionCursor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38k27ISLIhc" role="3cqZAp">
          <node concept="1rXfSq" id="38k27ISLIhd" role="3clFbw">
            <ref role="37wK5l" node="38k27IRAx5G" resolve="isTargetTransformableAt" />
            <node concept="37vLTw" id="38k27ISLIhe" role="37wK5m">
              <ref role="3cqZAo" node="38k27IRAx6e" resolve="path" />
            </node>
            <node concept="37vLTw" id="38k27ISLIhf" role="37wK5m">
              <ref role="3cqZAo" node="38k27IRAx6g" resolve="x" />
            </node>
            <node concept="37vLTw" id="38k27ISLIhg" role="37wK5m">
              <ref role="3cqZAo" node="38k27IRAx6i" resolve="y" />
            </node>
          </node>
          <node concept="3clFbS" id="38k27ISLIhh" role="3clFbx">
            <node concept="3cpWs6" id="38k27ISLIhi" role="3cqZAp">
              <node concept="Rm8GO" id="38k27ISLKj_" role="3cqZAk">
                <ref role="Rm8GQ" node="38k27IRy1qR" resolve="TARGET" />
                <ref role="1Px2BO" node="38k27IRy1n0" resolve="ECTransitionCursor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="38k27ISLMoB" role="3cqZAp">
          <node concept="10Nm6u" id="38k27ISLMsk" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx6n" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRAyi4" role="jymVt" />
    <node concept="3clFb_" id="38k27IRAx6o" role="jymVt">
      <property role="TrG5h" value="paintConneciton" />
      <node concept="3Tm1VV" id="38k27IRAx6q" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRAx6r" role="3clF45" />
      <node concept="37vLTG" id="38k27IRAx6s" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx6_" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx6u" role="3clF46">
        <property role="TrG5h" value="cursor" />
        <node concept="3uibUv" id="38k27IRAx6$" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy1n0" resolve="ECTransitionCursor" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx6w" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="38k27IRAx6x" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRAx6y" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="38k27IRAx6z" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRAx6A" role="3clF47">
        <node concept="3cpWs8" id="38k27ISyXiR" role="3cqZAp">
          <node concept="3cpWsn" id="38k27ISyXiS" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="38k27ISyXiQ" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
            </node>
            <node concept="2OqwBi" id="38k27ISyXiT" role="33vP2m">
              <node concept="37vLTw" id="38k27ISyXiU" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRAx6y" resolve="graphics" />
              </node>
              <node concept="liA8E" id="38k27ISyXiV" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27ISvtuG" role="3cqZAp" />
        <node concept="3cpWs8" id="38F6aFuj$eP" role="3cqZAp">
          <node concept="3cpWsn" id="38F6aFuj$eQ" role="3cpWs9">
            <property role="TrG5h" value="painter" />
            <node concept="3uibUv" id="38F6aFujzTY" role="1tU5fm">
              <ref role="3uigEE" node="38k27IRy79X" resolve="ECTransitionPathPainter" />
            </node>
            <node concept="2ShNRf" id="38F6aFuj$eR" role="33vP2m">
              <node concept="1pGfFk" id="38F6aFuj$eS" role="2ShVmc">
                <ref role="37wK5l" node="38k27IRy7ad" resolve="ECTransitionPathPainter" />
                <node concept="37vLTw" id="38F6aFuj$eT" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRAx6s" resolve="path" />
                </node>
                <node concept="37vLTw" id="38F6aFuj$eU" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRAx6u" resolve="cursor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2wHo_lFOZTv" role="3cqZAp">
          <node concept="3clFbS" id="2wHo_lFOZTx" role="3clFbx">
            <node concept="3clFbF" id="2wHo_lFP1Dg" role="3cqZAp">
              <node concept="2YIFZM" id="2wHo_lFPcjq" role="3clFbG">
                <ref role="1Pybhc" node="38k27IRy79X" resolve="ECTransitionPathPainter" />
                <ref role="37wK5l" node="2wHo_lFP7Kj" resolve="setupHighlightPathPaint" />
                <node concept="37vLTw" id="38F6aFurz5M" role="37wK5m">
                  <ref role="3cqZAo" node="38k27ISyXiS" resolve="g" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2wHo_lFPfod" role="3cqZAp">
              <node concept="2OqwBi" id="2wHo_lFPfoe" role="3clFbG">
                <node concept="37vLTw" id="38F6aFuryK0" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ISyXiS" resolve="g" />
                </node>
                <node concept="liA8E" id="2wHo_lFPfog" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="37vLTw" id="2wHo_lFPgnb" role="37wK5m">
                    <ref role="3cqZAo" node="38F6aFujgua" resolve="myHighlightColor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2wHo_lFPgX4" role="3cqZAp">
              <node concept="2OqwBi" id="2wHo_lFPh8V" role="3clFbG">
                <node concept="37vLTw" id="38F6aFuj_Yw" role="2Oq$k0">
                  <ref role="3cqZAo" node="38F6aFuj$eQ" resolve="painter" />
                </node>
                <node concept="liA8E" id="2wHo_lFPhfg" role="2OqNvi">
                  <ref role="37wK5l" node="38k27IRy7bp" resolve="paint" />
                  <node concept="37vLTw" id="38F6aFujA42" role="37wK5m">
                    <ref role="3cqZAo" node="38k27ISyXiS" resolve="g" />
                  </node>
                  <node concept="3clFbT" id="2wHo_lFPkWu" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2wHo_lFP0ZF" role="3clFbw">
            <node concept="10Nm6u" id="2wHo_lFP12V" role="3uHU7w" />
            <node concept="37vLTw" id="2wHo_lFP04u" role="3uHU7B">
              <ref role="3cqZAo" node="38F6aFujgua" resolve="myHighlightColor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38F6aFujlcB" role="3cqZAp" />
        <node concept="3clFbF" id="38F6aFujB2m" role="3cqZAp">
          <node concept="2OqwBi" id="38F6aFujB2n" role="3clFbG">
            <node concept="37vLTw" id="38F6aFuryp0" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISyXiS" resolve="g" />
            </node>
            <node concept="liA8E" id="38F6aFujB2p" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="10M0yZ" id="38F6aFur_zF" role="37wK5m">
                <ref role="3cqZAo" to="lzb2:~JBColor.GRAY" resolve="GRAY" />
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38k27IRAOMq" role="3cqZAp">
          <node concept="3clFbS" id="38k27IRAOMr" role="3clFbx">
            <node concept="3clFbF" id="38k27IRAOMs" role="3cqZAp">
              <node concept="2YIFZM" id="38k27IRAOMt" role="3clFbG">
                <ref role="1Pybhc" node="38k27IRy79X" resolve="ECTransitionPathPainter" />
                <ref role="37wK5l" node="38k27IRy7aw" resolve="setupSelectedPathPaint" />
                <node concept="37vLTw" id="38k27ISyYkJ" role="37wK5m">
                  <ref role="3cqZAo" node="38k27ISyXiS" resolve="g" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="38k27IRAOMv" role="9aQIa">
            <node concept="3clFbS" id="38k27IRAOMw" role="9aQI4">
              <node concept="3clFbF" id="38k27IRAOMx" role="3cqZAp">
                <node concept="2YIFZM" id="38k27IRAOMy" role="3clFbG">
                  <ref role="1Pybhc" node="38k27IRy79X" resolve="ECTransitionPathPainter" />
                  <ref role="37wK5l" node="38k27IRy7aK" resolve="setupRegularPathPaint" />
                  <node concept="37vLTw" id="38k27ISyYHu" role="37wK5m">
                    <ref role="3cqZAo" node="38k27ISyXiS" resolve="g" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="38k27IRAOM$" role="3clFbw">
            <ref role="3cqZAo" node="38k27IRAx6w" resolve="selected" />
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRAyYY" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRAPZX" role="3clFbG">
            <node concept="37vLTw" id="38F6aFuj$eV" role="2Oq$k0">
              <ref role="3cqZAo" node="38F6aFuj$eQ" resolve="painter" />
            </node>
            <node concept="liA8E" id="38k27IRAR60" role="2OqNvi">
              <ref role="37wK5l" node="38k27IRy7bp" resolve="paint" />
              <node concept="37vLTw" id="38k27ISyZ5g" role="37wK5m">
                <ref role="3cqZAo" node="38k27ISyXiS" resolve="g" />
              </node>
              <node concept="3clFbT" id="38k27IS2Z5t" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27ISy0Bu" role="3cqZAp" />
        <node concept="3cpWs8" id="38k27ISvvDG" role="3cqZAp">
          <node concept="3cpWsn" id="38k27ISvvDH" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="38k27ISvvDF" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2ShNRf" id="38k27ISzZJW" role="33vP2m">
              <node concept="1pGfFk" id="38k27IS$12A" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(java.awt.Rectangle)" resolve="Rectangle" />
                <node concept="2OqwBi" id="38k27ISvvDI" role="37wK5m">
                  <node concept="37vLTw" id="38k27ISvvDJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27IRB4$D" resolve="myHandle" />
                  </node>
                  <node concept="liA8E" id="38k27ISvvDK" role="2OqNvi">
                    <ref role="37wK5l" node="38k27IRB1Uy" resolve="getBounds" />
                    <node concept="2OqwBi" id="38k27ISvvDL" role="37wK5m">
                      <node concept="37vLTw" id="38k27ISvvDM" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRAx6s" resolve="path" />
                      </node>
                      <node concept="2OwXpG" id="38k27ISvvDN" role="2OqNvi">
                        <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISzij0" role="3cqZAp">
          <node concept="d5anL" id="38k27ISzBaT" role="3clFbG">
            <node concept="3cmrfG" id="38k27ISzBsO" role="37vLTx">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="2OqwBi" id="38k27ISziH2" role="37vLTJ">
              <node concept="37vLTw" id="38k27ISziiY" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27ISvvDH" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="38k27ISzqsd" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISzC5l" role="3cqZAp">
          <node concept="d57v9" id="38k27ISzYe6" role="3clFbG">
            <node concept="3cmrfG" id="38k27ISzYrU" role="37vLTx">
              <property role="3cmrfH" value="6" />
            </node>
            <node concept="2OqwBi" id="38k27ISzCDa" role="37vLTJ">
              <node concept="37vLTw" id="38k27ISzC5j" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27ISvvDH" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="38k27ISzKOI" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISv$fV" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISv$fW" role="3clFbG">
            <node concept="37vLTw" id="38k27ISv$fX" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRAx6y" resolve="graphics" />
            </node>
            <node concept="liA8E" id="38k27ISv$fY" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="10M0yZ" id="38k27IS$lKR" role="37wK5m">
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                <ref role="3cqZAo" to="lzb2:~JBColor.WHITE" resolve="WHITE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISvzCl" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISvzCm" role="3clFbG">
            <node concept="1eOMI4" id="38k27ISvzCn" role="2Oq$k0">
              <node concept="10QFUN" id="38k27ISvzCo" role="1eOMHV">
                <node concept="37vLTw" id="38k27ISvzCp" role="10QFUP">
                  <ref role="3cqZAo" node="38k27IRAx6y" resolve="graphics" />
                </node>
                <node concept="3uibUv" id="38k27ISvzCq" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="38k27ISvzCr" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
              <node concept="37vLTw" id="38k27ISvzCs" role="37wK5m">
                <ref role="3cqZAo" node="38k27ISvvDH" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISvwtz" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISvwWV" role="3clFbG">
            <node concept="37vLTw" id="38k27ISvwtx" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRAx6y" resolve="graphics" />
            </node>
            <node concept="liA8E" id="38k27ISvxoq" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="10M0yZ" id="38k27ISyl1m" role="37wK5m">
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                <ref role="3cqZAo" to="lzb2:~JBColor.LIGHT_GRAY" resolve="LIGHT_GRAY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISvy3v" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISvyze" role="3clFbG">
            <node concept="1eOMI4" id="38k27ISvz3C" role="2Oq$k0">
              <node concept="10QFUN" id="38k27ISvz3B" role="1eOMHV">
                <node concept="37vLTw" id="38k27ISvz3A" role="10QFUP">
                  <ref role="3cqZAo" node="38k27IRAx6y" resolve="graphics" />
                </node>
                <node concept="3uibUv" id="38k27ISvzpp" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="38k27ISvzzl" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape)" resolve="draw" />
              <node concept="37vLTw" id="38k27ISvzAd" role="37wK5m">
                <ref role="3cqZAo" node="38k27ISvvDH" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx6B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="bRdTVI3460" role="jymVt" />
    <node concept="3clFb_" id="bRdTVI35xf" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3Tm1VV" id="bRdTVI35xh" role="1B3o_S" />
      <node concept="3uibUv" id="bRdTVI35xi" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="37vLTG" id="bRdTVI35xj" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="bRdTVI35xl" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="3clFbS" id="bRdTVI35xm" role="3clF47">
        <node concept="3clFbF" id="bRdTVI3a67" role="3cqZAp">
          <node concept="2OqwBi" id="bRdTVI3aw$" role="3clFbG">
            <node concept="37vLTw" id="bRdTVI3a66" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRB4$D" resolve="myHandle" />
            </node>
            <node concept="liA8E" id="bRdTVI3aQT" role="2OqNvi">
              <ref role="37wK5l" node="38k27IRB1Uy" resolve="getBounds" />
              <node concept="2OqwBi" id="bRdTVI3czN" role="37wK5m">
                <node concept="37vLTw" id="bRdTVI3aVr" role="2Oq$k0">
                  <ref role="3cqZAo" node="bRdTVI35xj" resolve="path" />
                </node>
                <node concept="2OwXpG" id="bRdTVI3cUI" role="2OqNvi">
                  <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="bRdTVI35xn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRAPAb" role="jymVt" />
    <node concept="3clFb_" id="38k27IRAx6C" role="jymVt">
      <property role="TrG5h" value="paintTrace" />
      <node concept="3Tm1VV" id="38k27IRAx6E" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRAx6F" role="3clF45" />
      <node concept="37vLTG" id="38k27IRAx6G" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRAx6K" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRAx6I" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="38k27IRAx6J" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRAx6L" role="3clF47">
        <node concept="3clFbF" id="38k27IRAROb" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRAROc" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRAROd" role="37vLTx">
              <node concept="37vLTw" id="38k27IRAROe" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRAx6I" resolve="graphics" />
              </node>
              <node concept="liA8E" id="38k27IRAROf" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
              </node>
            </node>
            <node concept="37vLTw" id="38k27IRAROg" role="37vLTJ">
              <ref role="3cqZAo" node="38k27IRAx6I" resolve="graphics" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRAROj" role="3cqZAp">
          <node concept="2YIFZM" id="38k27IRASHq" role="3clFbG">
            <ref role="37wK5l" node="38k27IRy7b0" resolve="setupShadowPathPaint" />
            <ref role="1Pybhc" node="38k27IRy79X" resolve="ECTransitionPathPainter" />
            <node concept="37vLTw" id="38k27IRASHr" role="37wK5m">
              <ref role="3cqZAo" node="38k27IRAx6I" resolve="graphics" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRAROs" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRAROt" role="3clFbG">
            <node concept="2ShNRf" id="38k27IRAROu" role="2Oq$k0">
              <node concept="1pGfFk" id="38k27IRAROv" role="2ShVmc">
                <ref role="37wK5l" node="38k27IRy7ad" resolve="ECTransitionPathPainter" />
                <node concept="37vLTw" id="38k27IRAROw" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRAx6G" resolve="path" />
                </node>
                <node concept="10Nm6u" id="38k27IRATkM" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="38k27IRAROy" role="2OqNvi">
              <ref role="37wK5l" node="38k27IRy7bp" resolve="paint" />
              <node concept="37vLTw" id="38k27IRAROz" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRAx6I" resolve="graphics" />
              </node>
              <node concept="3clFbT" id="38k27IS2Z23" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRAx6M" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="38k27IRy0oa" role="1B3o_S" />
    <node concept="3uibUv" id="38k27IRy0sj" role="EKbjA">
      <ref role="3uigEE" to="5lkm:7sG$k3BBij3" resolve="ConnectionController" />
      <node concept="3uibUv" id="38k27IRAx1Y" role="11_B2D">
        <ref role="3uigEE" node="38k27IRy1n0" resolve="ECTransitionCursor" />
      </node>
      <node concept="3uibUv" id="38k27IRAx3B" role="11_B2D">
        <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="38k27IRy1n0">
    <property role="TrG5h" value="ECTransitionCursor" />
    <node concept="3Tm1VV" id="38k27IRy1n1" role="1B3o_S" />
    <node concept="QsSxf" id="38k27IRy1qi" role="Qtgdg">
      <property role="TrG5h" value="SOURCE" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="38k27IRy1qR" role="Qtgdg">
      <property role="TrG5h" value="TARGET" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
  </node>
  <node concept="312cEu" id="38k27IRy0tz">
    <property role="TrG5h" value="ECTransitionPath" />
    <node concept="2tJIrI" id="38k27IRy0ve" role="jymVt" />
    <node concept="312cEg" id="38k27IRy0$4" role="jymVt">
      <property role="TrG5h" value="source" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="38k27IRy0yw" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRy0zX" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="312cEg" id="38k27IRy0AE" role="jymVt">
      <property role="TrG5h" value="centre" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="38k27IRy0$Y" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRy0Az" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="312cEg" id="38k27IRy0E5" role="jymVt">
      <property role="TrG5h" value="target" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="38k27IRy0BE" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRy0DY" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRy0Eq" role="jymVt" />
    <node concept="3Tm1VV" id="38k27IRy0t$" role="1B3o_S" />
    <node concept="3clFbW" id="38k27IRy0Fh" role="jymVt">
      <node concept="3cqZAl" id="38k27IRy0Fi" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRy0Fj" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRy0Fl" role="3clF47">
        <node concept="3clFbF" id="38k27IRy0Fp" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRy0Fr" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRy0Fv" role="37vLTJ">
              <node concept="Xjq3P" id="38k27IRy0Fw" role="2Oq$k0" />
              <node concept="2OwXpG" id="38k27IRy0Fx" role="2OqNvi">
                <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
              </node>
            </node>
            <node concept="37vLTw" id="38k27IRy0Fy" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRy0Fo" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRy0F_" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRy0FB" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRy0FF" role="37vLTJ">
              <node concept="Xjq3P" id="38k27IRy0FG" role="2Oq$k0" />
              <node concept="2OwXpG" id="38k27IRy0FH" role="2OqNvi">
                <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
              </node>
            </node>
            <node concept="37vLTw" id="38k27IRy0FI" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRy0F$" resolve="centre" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRy0FL" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRy0FN" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRy0FR" role="37vLTJ">
              <node concept="Xjq3P" id="38k27IRy0FS" role="2Oq$k0" />
              <node concept="2OwXpG" id="38k27IRy0FT" role="2OqNvi">
                <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
              </node>
            </node>
            <node concept="37vLTw" id="38k27IRy0FU" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRy0FK" resolve="target" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRy0Fo" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="38k27IRy0Fn" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRy0F$" role="3clF46">
        <property role="TrG5h" value="centre" />
        <node concept="3uibUv" id="38k27IRy0Fz" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRy0FK" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="38k27IRy0FJ" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="38k27IRy79X">
    <property role="TrG5h" value="ECTransitionPathPainter" />
    <node concept="Wx3nA" id="38k27IRy79Y" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="HOVER_SIZE" />
      <node concept="3Tm6S6" id="38k27IRy79Z" role="1B3o_S" />
      <node concept="10OMs4" id="38k27IRzsoH" role="1tU5fm" />
      <node concept="10M0yZ" id="38k27IRywiU" role="33vP2m">
        <ref role="3cqZAo" node="38k27IRyuVg" resolve="HOVER_SIZE" />
        <ref role="1PxDUh" node="38k27IRy0o9" resolve="ECTransitionController" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRy7a2" role="jymVt" />
    <node concept="312cEg" id="38k27IRy7a3" role="jymVt">
      <property role="TrG5h" value="myPath" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="38k27IRy7a4" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRyxMQ" role="1tU5fm">
        <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
      </node>
      <node concept="2AHcQZ" id="38k27IRy7a6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRy7a7" role="jymVt" />
    <node concept="312cEg" id="38k27IRy7a8" role="jymVt">
      <property role="TrG5h" value="myCursor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="38k27IRy7a9" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRyzoD" role="1tU5fm">
        <ref role="3uigEE" node="38k27IRy1n0" resolve="ECTransitionCursor" />
      </node>
      <node concept="2AHcQZ" id="38k27IRy7ab" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IS2S05" role="jymVt" />
    <node concept="3clFbW" id="38k27IRy7ad" role="jymVt">
      <node concept="3cqZAl" id="38k27IRy7ae" role="3clF45" />
      <node concept="3clFbS" id="38k27IRy7af" role="3clF47">
        <node concept="3clFbF" id="38k27IRy7ag" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRy7ah" role="3clFbG">
            <node concept="37vLTw" id="38k27IRy7ai" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRy7ao" resolve="path" />
            </node>
            <node concept="37vLTw" id="38k27IRy7aj" role="37vLTJ">
              <ref role="3cqZAo" node="38k27IRy7a3" resolve="myPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRy7ak" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRy7al" role="3clFbG">
            <node concept="37vLTw" id="38k27IRy7am" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRy7ar" resolve="cursor" />
            </node>
            <node concept="37vLTw" id="38k27IRy7an" role="37vLTJ">
              <ref role="3cqZAo" node="38k27IRy7a8" resolve="myCursor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRy7ao" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRyzxc" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
        <node concept="2AHcQZ" id="38k27IRy7aq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRy7ar" role="3clF46">
        <property role="TrG5h" value="cursor" />
        <node concept="3uibUv" id="38k27IRyzzU" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy1n0" resolve="ECTransitionCursor" />
        </node>
        <node concept="2AHcQZ" id="38k27IRy7at" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRy7au" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="38k27IRy7av" role="jymVt" />
    <node concept="2YIFZL" id="2wHo_lFP7Kj" role="jymVt">
      <property role="TrG5h" value="setupHighlightPathPaint" />
      <node concept="37vLTG" id="2wHo_lFP7Kk" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="2wHo_lFP7Kl" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="2wHo_lFP7Ko" role="3clF47">
        <node concept="3clFbF" id="2wHo_lFP7Ky" role="3cqZAp">
          <node concept="2OqwBi" id="2wHo_lFP7Kz" role="3clFbG">
            <node concept="liA8E" id="2wHo_lFP7K$" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
              <node concept="2ShNRf" id="2wHo_lFP7K_" role="37wK5m">
                <node concept="1pGfFk" id="2wHo_lFP7KA" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                  <node concept="2$xPTn" id="2wHo_lFP7KD" role="37wK5m">
                    <property role="2$xPTl" value="4.f" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="2wHo_lFP7KE" role="2Oq$k0">
              <node concept="10QFUN" id="2wHo_lFP7KF" role="1eOMHV">
                <node concept="3uibUv" id="2wHo_lFP7KG" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="2wHo_lFP7KH" role="10QFUP">
                  <ref role="3cqZAo" node="2wHo_lFP7Kk" resolve="graphics" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2wHo_lFP7KI" role="1B3o_S" />
      <node concept="3cqZAl" id="2wHo_lFP7KJ" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="38k27IRy7aw" role="jymVt">
      <property role="TrG5h" value="setupSelectedPathPaint" />
      <node concept="37vLTG" id="38k27IRy7ax" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="38k27IRy7ay" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRy7az" role="3clF47">
        <node concept="3clFbF" id="38k27IRy7a$" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRy7a_" role="3clFbG">
            <node concept="liA8E" id="38k27IRy7aA" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
              <node concept="2ShNRf" id="38k27IRy7aB" role="37wK5m">
                <node concept="1pGfFk" id="38k27IRy7aC" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                  <node concept="2$xPTn" id="38k27IRy7aD" role="37wK5m">
                    <property role="2$xPTl" value="2.5f" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="38k27IRy7aE" role="2Oq$k0">
              <node concept="10QFUN" id="38k27IRy7aF" role="1eOMHV">
                <node concept="3uibUv" id="38k27IRy7aG" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="38k27IRy7aH" role="10QFUP">
                  <ref role="3cqZAo" node="38k27IRy7ax" resolve="graphics" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRy7aI" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRy7aJ" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="38k27IRy7aK" role="jymVt">
      <property role="TrG5h" value="setupRegularPathPaint" />
      <node concept="37vLTG" id="38k27IRy7aL" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="38k27IRy7aM" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRy7aN" role="3clF47">
        <node concept="3clFbF" id="38k27IRy7aO" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRy7aP" role="3clFbG">
            <node concept="liA8E" id="38k27IRy7aQ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
              <node concept="2ShNRf" id="38k27IRy7aR" role="37wK5m">
                <node concept="1pGfFk" id="38k27IRy7aS" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                  <node concept="2$xPTn" id="38k27IRy7aT" role="37wK5m">
                    <property role="2$xPTl" value="1.5f" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="38k27IRy7aU" role="2Oq$k0">
              <node concept="10QFUN" id="38k27IRy7aV" role="1eOMHV">
                <node concept="3uibUv" id="38k27IRy7aW" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="38k27IRy7aX" role="10QFUP">
                  <ref role="3cqZAo" node="38k27IRy7aL" resolve="graphics" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRy7aY" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRy7aZ" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="38k27IRy7b0" role="jymVt">
      <property role="TrG5h" value="setupShadowPathPaint" />
      <node concept="37vLTG" id="38k27IRy7b1" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="38k27IRy7b2" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRy7b3" role="3clF47">
        <node concept="3clFbF" id="38k27IRy7b4" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRy7b5" role="3clFbG">
            <node concept="liA8E" id="38k27IRy7b6" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
              <node concept="2ShNRf" id="38k27IRy7b7" role="37wK5m">
                <node concept="1pGfFk" id="38k27IRy7b8" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float,int,int,float,float[],float)" resolve="BasicStroke" />
                  <node concept="2$xPTn" id="38k27IRy7b9" role="37wK5m">
                    <property role="2$xPTl" value="1.f" />
                  </node>
                  <node concept="10M0yZ" id="38k27IRy7ba" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~BasicStroke" resolve="BasicStroke" />
                    <ref role="3cqZAo" to="z60i:~BasicStroke.CAP_BUTT" resolve="CAP_BUTT" />
                  </node>
                  <node concept="10M0yZ" id="38k27IRy7bb" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~BasicStroke.JOIN_MITER" resolve="JOIN_MITER" />
                    <ref role="1PxDUh" to="z60i:~BasicStroke" resolve="BasicStroke" />
                  </node>
                  <node concept="3cmrfG" id="38k27IRy7bc" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                  </node>
                  <node concept="2ShNRf" id="38k27IRy7bd" role="37wK5m">
                    <node concept="3g6Rrh" id="38k27IRy7be" role="2ShVmc">
                      <node concept="10OMs4" id="38k27IRy7bf" role="3g7fb8" />
                      <node concept="3cmrfG" id="38k27IRy7bg" role="3g7hyw">
                        <property role="3cmrfH" value="3" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="38k27IRy7bh" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="38k27IRy7bi" role="2Oq$k0">
              <node concept="10QFUN" id="38k27IRy7bj" role="1eOMHV">
                <node concept="3uibUv" id="38k27IRy7bk" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="38k27IRy7bl" role="10QFUP">
                  <ref role="3cqZAo" node="38k27IRy7b1" resolve="graphics" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRy7bm" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRy7bn" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="38k27IRy7bo" role="jymVt" />
    <node concept="3clFb_" id="38k27IRy7bp" role="jymVt">
      <property role="TrG5h" value="paint" />
      <node concept="3clFbS" id="38k27IRy7bq" role="3clF47">
        <node concept="3cpWs8" id="38k27IRy7br" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRy7bs" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3uibUv" id="38k27IRy7bt" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="38k27IRy7bu" role="33vP2m">
              <node concept="37vLTw" id="38k27IRyzCh" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRy7a3" resolve="myPath" />
              </node>
              <node concept="2OwXpG" id="38k27IRyAaw" role="2OqNvi">
                <ref role="2Oxat5" node="38k27IRy0$4" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27IRy7bx" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRy7by" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="38k27IRy7bz" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="38k27IRy7b$" role="33vP2m">
              <node concept="37vLTw" id="38k27IRy7b_" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRy7a3" resolve="myPath" />
              </node>
              <node concept="2OwXpG" id="38k27IRyDan" role="2OqNvi">
                <ref role="2Oxat5" node="38k27IRy0E5" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27IRyJig" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRyJih" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="38k27IRyJii" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="38k27IRyL5L" role="33vP2m">
              <node concept="37vLTw" id="38k27IRyKZ$" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRy7a3" resolve="myPath" />
              </node>
              <node concept="2OwXpG" id="38k27IRyMZg" role="2OqNvi">
                <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27IRzleo" role="3cqZAp" />
        <node concept="3clFbF" id="38k27IRy7cp" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRy7cq" role="3clFbG">
            <node concept="37vLTw" id="38k27IRy7cr" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRy7fc" resolve="graphics" />
            </node>
            <node concept="liA8E" id="38k27IRy7cs" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
              <node concept="2OqwBi" id="38k27IRy7ct" role="37wK5m">
                <node concept="37vLTw" id="38k27IRy7cu" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                </node>
                <node concept="2OwXpG" id="38k27IRy7cv" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27IRy7cw" role="37wK5m">
                <node concept="37vLTw" id="38k27IRy7cx" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                </node>
                <node concept="2OwXpG" id="38k27IRy7cy" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27IRz0OD" role="37wK5m">
                <node concept="37vLTw" id="38k27IRz0xb" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                </node>
                <node concept="2OwXpG" id="38k27IRz7JY" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27IRy7c$" role="37wK5m">
                <node concept="2OwXpG" id="38k27IRy7cA" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
                <node concept="37vLTw" id="38k27IRz8Zv" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRy7cB" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRy7cC" role="3clFbG">
            <node concept="37vLTw" id="38k27IRy7cD" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRy7fc" resolve="graphics" />
            </node>
            <node concept="liA8E" id="38k27IRy7cE" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
              <node concept="2OqwBi" id="38k27IRz9UB" role="37wK5m">
                <node concept="37vLTw" id="38k27IRz9UC" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                </node>
                <node concept="2OwXpG" id="38k27IRz9UD" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27IRz9UE" role="37wK5m">
                <node concept="2OwXpG" id="38k27IRz9UF" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
                <node concept="37vLTw" id="38k27IRz9UG" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27IRzbza" role="37wK5m">
                <node concept="37vLTw" id="38k27IRzbfI" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                </node>
                <node concept="2OwXpG" id="38k27IRzioa" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="38k27IRy7cK" role="37wK5m">
                <node concept="37vLTw" id="38k27IRy7cL" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                </node>
                <node concept="2OwXpG" id="38k27IRy7cM" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27IR_LGE" role="3cqZAp" />
        <node concept="3cpWs8" id="38k27IRy7dY" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRy7dZ" role="3cpWs9">
            <property role="TrG5h" value="hoverGraphics" />
            <node concept="3uibUv" id="38k27IRy7e0" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
            </node>
            <node concept="2OqwBi" id="38k27IRy7e1" role="33vP2m">
              <node concept="37vLTw" id="38k27IRy7e2" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRy7fc" resolve="graphics" />
              </node>
              <node concept="liA8E" id="38k27IRy7e3" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRy7e4" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRy7e5" role="3clFbG">
            <node concept="37vLTw" id="38k27IRy7e6" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRy7dZ" resolve="hoverGraphics" />
            </node>
            <node concept="liA8E" id="38k27IRy7e7" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="2OqwBi" id="38k27IRy7e8" role="37wK5m">
                <node concept="10M0yZ" id="6mkmem0$ovb" role="2Oq$k0">
                  <ref role="3cqZAo" to="lzb2:~JBColor.YELLOW" resolve="YELLOW" />
                  <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                </node>
                <node concept="liA8E" id="38k27IRy7ea" role="2OqNvi">
                  <ref role="37wK5l" to="lzb2:~JBColor.darker()" resolve="darker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38k27IRy7eb" role="3cqZAp">
          <node concept="3clFbS" id="38k27IRy7ec" role="3clFbx">
            <node concept="3clFbF" id="38k27IRy7ed" role="3cqZAp">
              <node concept="2OqwBi" id="38k27IRy7ee" role="3clFbG">
                <node concept="37vLTw" id="38k27IRy7ef" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRy7dZ" resolve="hoverGraphics" />
                </node>
                <node concept="liA8E" id="38k27IRy7eg" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
                  <node concept="2OqwBi" id="38k27IRy7eh" role="37wK5m">
                    <node concept="37vLTw" id="38k27IRy7ei" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                    </node>
                    <node concept="2OwXpG" id="38k27IRy7ej" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="38k27IRy7ek" role="37wK5m">
                    <node concept="37vLTw" id="38k27IRy7el" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                    </node>
                    <node concept="2OwXpG" id="38k27IRy7em" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="38k27IR$cm5" role="37wK5m">
                    <node concept="FJ1c_" id="38k27ISMvej" role="3uHU7w">
                      <node concept="3cmrfG" id="38k27ISMvg8" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="1eOMI4" id="38k27IR$did" role="3uHU7B">
                        <node concept="3cpWsd" id="38k27IR$xxO" role="1eOMHV">
                          <node concept="2OqwBi" id="38k27IR$dXK" role="3uHU7B">
                            <node concept="37vLTw" id="38k27IR$dpS" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                            </node>
                            <node concept="2OwXpG" id="38k27IR$kMB" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="38k27IR$_hh" role="3uHU7w">
                            <node concept="37vLTw" id="38k27IR$yxP" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                            </node>
                            <node concept="2OwXpG" id="38k27IR$G68" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27IRzTcf" role="3uHU7B">
                      <node concept="37vLTw" id="38k27IRzSSL" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="38k27IR$01f" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs3" id="38k27IR$WOX" role="37wK5m">
                    <node concept="FJ1c_" id="38k27ISLPip" role="3uHU7w">
                      <node concept="3cmrfG" id="38k27ISLPOd" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="1eOMI4" id="38k27IR$WOZ" role="3uHU7B">
                        <node concept="3cpWsd" id="38k27IR$WP0" role="1eOMHV">
                          <node concept="2OqwBi" id="38k27IR$WP1" role="3uHU7B">
                            <node concept="37vLTw" id="38k27IR$WP2" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                            </node>
                            <node concept="2OwXpG" id="38k27IR_oST" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="38k27IR$WP4" role="3uHU7w">
                            <node concept="37vLTw" id="38k27IR$WP5" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                            </node>
                            <node concept="2OwXpG" id="38k27IR_x2f" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27IR$WP7" role="3uHU7B">
                      <node concept="37vLTw" id="38k27IR$WP8" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="38k27IR_hvh" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="38k27IRy7e_" role="3clFbw">
            <node concept="Rm8GO" id="38k27IRzs24" role="3uHU7w">
              <ref role="Rm8GQ" node="38k27IRy1qi" resolve="SOURCE" />
              <ref role="1Px2BO" node="38k27IRy1n0" resolve="ECTransitionCursor" />
            </node>
            <node concept="37vLTw" id="38k27IRy7eB" role="3uHU7B">
              <ref role="3cqZAo" node="38k27IRy7a8" resolve="myCursor" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38k27IR_Bk_" role="3cqZAp">
          <node concept="3clFbS" id="38k27IR_BkA" role="3clFbx">
            <node concept="3clFbF" id="38k27IR_BkB" role="3cqZAp">
              <node concept="2OqwBi" id="38k27IR_BkC" role="3clFbG">
                <node concept="37vLTw" id="38k27IR_BkD" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRy7dZ" resolve="hoverGraphics" />
                </node>
                <node concept="liA8E" id="38k27IR_BkE" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
                  <node concept="2OqwBi" id="38k27IR_BkF" role="37wK5m">
                    <node concept="2OwXpG" id="38k27IR_BkH" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="38k27IR_Gox" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="38k27IR_BkI" role="37wK5m">
                    <node concept="2OwXpG" id="38k27IR_BkK" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="38k27IR_GXJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="38k27IR_BkL" role="37wK5m">
                    <node concept="FJ1c_" id="38k27ISMCg5" role="3uHU7w">
                      <node concept="3cmrfG" id="38k27ISMCic" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="1eOMI4" id="38k27IR_BkR" role="3uHU7B">
                        <node concept="3cpWsd" id="38k27IR_BkS" role="1eOMHV">
                          <node concept="2OqwBi" id="38k27IR_BkT" role="3uHU7B">
                            <node concept="37vLTw" id="38k27IR_BkU" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                            </node>
                            <node concept="2OwXpG" id="38k27IR_BkV" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="38k27IR_BkW" role="3uHU7w">
                            <node concept="2OwXpG" id="38k27IR_BkY" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="38k27IR_J9d" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27IR_BkZ" role="3uHU7B">
                      <node concept="2OwXpG" id="38k27IR_Bl1" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="38k27IR_I8k" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs3" id="38k27IR_Bl2" role="37wK5m">
                    <node concept="FJ1c_" id="38k27ISM2zC" role="3uHU7w">
                      <node concept="3cmrfG" id="38k27ISM2_J" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="1eOMI4" id="38k27IR_Bl7" role="3uHU7B">
                        <node concept="3cpWsd" id="38k27IR_Bl8" role="1eOMHV">
                          <node concept="2OqwBi" id="38k27IR_Bl9" role="3uHU7B">
                            <node concept="2OwXpG" id="38k27IR_Blb" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                            <node concept="37vLTw" id="38k27IS2P0G" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="38k27IR_Blc" role="3uHU7w">
                            <node concept="2OwXpG" id="38k27IR_Ble" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                            <node concept="37vLTw" id="38k27IS2Q1F" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27IR_Blg" role="3uHU7B">
                      <node concept="2OwXpG" id="38k27IR_Bli" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                      <node concept="37vLTw" id="38k27IR_KaB" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="38k27IR_Blj" role="3clFbw">
            <node concept="Rm8GO" id="38k27IR_HtC" role="3uHU7w">
              <ref role="Rm8GQ" node="38k27IRy1qR" resolve="TARGET" />
              <ref role="1Px2BO" node="38k27IRy1n0" resolve="ECTransitionCursor" />
            </node>
            <node concept="37vLTw" id="38k27IR_Bll" role="3uHU7B">
              <ref role="3cqZAo" node="38k27IRy7a8" resolve="myCursor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27ISNW_4" role="3cqZAp" />
        <node concept="3clFbJ" id="38k27ISIcmn" role="3cqZAp">
          <node concept="3clFbS" id="38k27ISIcmp" role="3clFbx">
            <node concept="3cpWs8" id="38k27ISGCdK" role="3cqZAp">
              <node concept="3cpWsn" id="38k27ISGCdL" role="3cpWs9">
                <property role="TrG5h" value="sat" />
                <node concept="3uibUv" id="38k27ISGCdM" role="1tU5fm">
                  <ref role="3uigEE" to="fbzs:~AffineTransform" resolve="AffineTransform" />
                </node>
                <node concept="2ShNRf" id="38k27ISGDdE" role="33vP2m">
                  <node concept="1pGfFk" id="38k27ISGDFX" role="2ShVmc">
                    <ref role="37wK5l" to="fbzs:~AffineTransform.&lt;init&gt;()" resolve="AffineTransform" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27ISHzlr" role="3cqZAp">
              <node concept="2OqwBi" id="38k27ISH$mW" role="3clFbG">
                <node concept="37vLTw" id="38k27ISHzlp" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ISGCdL" resolve="sat" />
                </node>
                <node concept="liA8E" id="38k27ISH_Xg" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~AffineTransform.translate(double,double)" resolve="translate" />
                  <node concept="FJ1c_" id="38k27ISHNui" role="37wK5m">
                    <node concept="3cmrfG" id="38k27ISHNwp" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="1eOMI4" id="38k27ISHA1p" role="3uHU7B">
                      <node concept="3cpWs3" id="38k27ISHAi2" role="1eOMHV">
                        <node concept="2OqwBi" id="38k27ISHA2h" role="3uHU7B">
                          <node concept="37vLTw" id="38k27ISHA2i" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                          </node>
                          <node concept="2OwXpG" id="38k27ISHA2j" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="38k27ISHA2e" role="3uHU7w">
                          <node concept="37vLTw" id="38k27ISHA2f" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                          </node>
                          <node concept="2OwXpG" id="38k27ISHA2g" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="FJ1c_" id="38k27ISHOh$" role="37wK5m">
                    <node concept="3cmrfG" id="38k27ISHOh_" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="1eOMI4" id="38k27ISHOhA" role="3uHU7B">
                      <node concept="3cpWs3" id="38k27ISHOhB" role="1eOMHV">
                        <node concept="2OqwBi" id="38k27ISHOhC" role="3uHU7B">
                          <node concept="37vLTw" id="38k27ISHOhD" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                          </node>
                          <node concept="2OwXpG" id="38k27ISHVvC" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="38k27ISHOhF" role="3uHU7w">
                          <node concept="37vLTw" id="38k27ISHOhG" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                          </node>
                          <node concept="2OwXpG" id="38k27ISI2Gk" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27ISGDMb" role="3cqZAp">
              <node concept="2OqwBi" id="38k27ISGEI1" role="3clFbG">
                <node concept="37vLTw" id="38k27ISGDM9" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ISGCdL" resolve="sat" />
                </node>
                <node concept="liA8E" id="38k27ISGFCN" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~AffineTransform.rotate(double,double)" resolve="rotate" />
                  <node concept="3cpWsd" id="38k27ISGZ45" role="37wK5m">
                    <node concept="2OqwBi" id="38k27ISJ_9e" role="3uHU7B">
                      <node concept="37vLTw" id="38k27ISJ_9f" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                      </node>
                      <node concept="2OwXpG" id="38k27ISJ_9g" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27ISJ_9h" role="3uHU7w">
                      <node concept="37vLTw" id="38k27ISJ_9i" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="38k27ISJ_9j" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsd" id="38k27ISHq$d" role="37wK5m">
                    <node concept="2OqwBi" id="38k27ISJ_qv" role="3uHU7B">
                      <node concept="37vLTw" id="38k27ISJ_qw" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                      </node>
                      <node concept="2OwXpG" id="38k27ISJ_qx" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27ISJ_qy" role="3uHU7w">
                      <node concept="37vLTw" id="38k27ISJ_qz" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRy7bs" resolve="s" />
                      </node>
                      <node concept="2OwXpG" id="38k27ISJ_q$" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27ISGgQu" role="3cqZAp">
              <node concept="2OqwBi" id="38k27ISGhHg" role="3clFbG">
                <node concept="1eOMI4" id="38k27ISI3NA" role="2Oq$k0">
                  <node concept="10QFUN" id="38k27ISI3N_" role="1eOMHV">
                    <node concept="37vLTw" id="38k27ISI3N$" role="10QFUP">
                      <ref role="3cqZAo" node="38k27IRy7fc" resolve="graphics" />
                    </node>
                    <node concept="3uibUv" id="38k27ISI3PZ" role="10QFUM">
                      <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="38k27ISI3ZW" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
                  <node concept="2OqwBi" id="38k27ISI448" role="37wK5m">
                    <node concept="37vLTw" id="38k27ISI449" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27ISFUyJ" resolve="ARROW_SHAPE" />
                    </node>
                    <node concept="liA8E" id="38k27ISI44a" role="2OqNvi">
                      <ref role="37wK5l" to="fbzs:~Path2D.createTransformedShape(java.awt.geom.AffineTransform)" resolve="createTransformedShape" />
                      <node concept="37vLTw" id="38k27ISI6ip" role="37wK5m">
                        <ref role="3cqZAo" node="38k27ISGCdL" resolve="sat" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="38k27ISI$SA" role="3cqZAp" />
            <node concept="3cpWs8" id="38k27ISI6lP" role="3cqZAp">
              <node concept="3cpWsn" id="38k27ISI6lQ" role="3cpWs9">
                <property role="TrG5h" value="tat" />
                <node concept="3uibUv" id="38k27ISI6lR" role="1tU5fm">
                  <ref role="3uigEE" to="fbzs:~AffineTransform" resolve="AffineTransform" />
                </node>
                <node concept="2ShNRf" id="38k27ISI6lS" role="33vP2m">
                  <node concept="1pGfFk" id="38k27ISI6lT" role="2ShVmc">
                    <ref role="37wK5l" to="fbzs:~AffineTransform.&lt;init&gt;()" resolve="AffineTransform" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27ISI6lb" role="3cqZAp">
              <node concept="2OqwBi" id="38k27ISI6lc" role="3clFbG">
                <node concept="37vLTw" id="38k27ISI$wz" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ISI6lQ" resolve="tat" />
                </node>
                <node concept="liA8E" id="38k27ISI6le" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~AffineTransform.translate(double,double)" resolve="translate" />
                  <node concept="FJ1c_" id="38k27ISI6lf" role="37wK5m">
                    <node concept="3cmrfG" id="38k27ISI6lg" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="1eOMI4" id="38k27ISI6lh" role="3uHU7B">
                      <node concept="3cpWs3" id="38k27ISI6li" role="1eOMHV">
                        <node concept="2OqwBi" id="38k27ISI6lj" role="3uHU7B">
                          <node concept="2OwXpG" id="38k27ISI6ll" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                          <node concept="37vLTw" id="38k27ISIa0U" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="38k27ISI6lm" role="3uHU7w">
                          <node concept="37vLTw" id="38k27ISI6ln" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                          </node>
                          <node concept="2OwXpG" id="38k27ISI6lo" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="FJ1c_" id="38k27ISI6lp" role="37wK5m">
                    <node concept="3cmrfG" id="38k27ISI6lq" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="1eOMI4" id="38k27ISI6lr" role="3uHU7B">
                      <node concept="3cpWs3" id="38k27ISI6ls" role="1eOMHV">
                        <node concept="2OqwBi" id="38k27ISI6lt" role="3uHU7B">
                          <node concept="2OwXpG" id="38k27ISI6lv" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                          <node concept="37vLTw" id="38k27ISIaN1" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="38k27ISI6lw" role="3uHU7w">
                          <node concept="37vLTw" id="38k27ISI6lx" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                          </node>
                          <node concept="2OwXpG" id="38k27ISI6ly" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27ISI6lz" role="3cqZAp">
              <node concept="2OqwBi" id="38k27ISI6l$" role="3clFbG">
                <node concept="37vLTw" id="38k27ISI$fl" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27ISI6lQ" resolve="tat" />
                </node>
                <node concept="liA8E" id="38k27ISI6lA" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~AffineTransform.rotate(double,double)" resolve="rotate" />
                  <node concept="3cpWsd" id="38k27ISI6lB" role="37wK5m">
                    <node concept="2OqwBi" id="38k27ISJ$_M" role="3uHU7B">
                      <node concept="2OwXpG" id="38k27ISJ$_N" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="38k27ISJ$_O" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27ISJ$_P" role="3uHU7w">
                      <node concept="2OwXpG" id="38k27ISJ$_Q" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="38k27ISJ$_R" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsd" id="38k27ISI6lI" role="37wK5m">
                    <node concept="2OqwBi" id="38k27ISJ$R1" role="3uHU7B">
                      <node concept="2OwXpG" id="38k27ISJ$R2" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                      <node concept="37vLTw" id="38k27ISJ$R3" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRy7by" resolve="t" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="38k27ISJ$R4" role="3uHU7w">
                      <node concept="2OwXpG" id="38k27ISJ$R5" role="2OqNvi">
                        <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                      </node>
                      <node concept="37vLTw" id="38k27ISJ$R6" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRyJih" resolve="c" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27ISI6l0" role="3cqZAp">
              <node concept="2OqwBi" id="38k27ISI6l1" role="3clFbG">
                <node concept="1eOMI4" id="38k27ISI6l2" role="2Oq$k0">
                  <node concept="10QFUN" id="38k27ISI6l3" role="1eOMHV">
                    <node concept="37vLTw" id="38k27ISI6l4" role="10QFUP">
                      <ref role="3cqZAo" node="38k27IRy7fc" resolve="graphics" />
                    </node>
                    <node concept="3uibUv" id="38k27ISI6l5" role="10QFUM">
                      <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="38k27ISI6l6" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
                  <node concept="2OqwBi" id="38k27ISI6l7" role="37wK5m">
                    <node concept="37vLTw" id="38k27ISI6l8" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27ISFUyJ" resolve="ARROW_SHAPE" />
                    </node>
                    <node concept="liA8E" id="38k27ISI6l9" role="2OqNvi">
                      <ref role="37wK5l" to="fbzs:~Path2D.createTransformedShape(java.awt.geom.AffineTransform)" resolve="createTransformedShape" />
                      <node concept="37vLTw" id="38k27ISIbeB" role="37wK5m">
                        <ref role="3cqZAo" node="38k27ISI6lQ" resolve="tat" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="38F6aFujxWR" role="3clFbw">
            <ref role="3cqZAo" node="38F6aFujxpw" resolve="drawArrow" />
          </node>
        </node>
        <node concept="3clFbH" id="38k27ISIgYx" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="38k27IRy7fa" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRy7fb" role="3clF45" />
      <node concept="37vLTG" id="38k27IRy7fc" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="38k27IRy7fd" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="38F6aFujxpw" role="3clF46">
        <property role="TrG5h" value="drawArrow" />
        <node concept="10P_77" id="38F6aFujxTe" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27ISGcZp" role="jymVt" />
    <node concept="Wx3nA" id="38k27ISFUyJ" role="jymVt">
      <property role="TrG5h" value="ARROW_SHAPE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="38k27ISFSlL" role="1B3o_S" />
      <node concept="3uibUv" id="38k27ISG4us" role="1tU5fm">
        <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
      </node>
      <node concept="2ShNRf" id="38k27ISFXPw" role="33vP2m">
        <node concept="1pGfFk" id="38k27ISFZ6Z" role="2ShVmc">
          <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27ISG1MA" role="jymVt" />
    <node concept="1Pe0a1" id="38k27ISG0BM" role="jymVt">
      <node concept="3clFbS" id="38k27ISG0BO" role="1Pe0a2">
        <node concept="3clFbF" id="38k27ISG36P" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISG3en" role="3clFbG">
            <node concept="37vLTw" id="38k27ISGd9E" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISFUyJ" resolve="ARROW_SHAPE" />
            </node>
            <node concept="liA8E" id="38k27ISG5aQ" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(float,float)" resolve="moveTo" />
              <node concept="3cmrfG" id="38k27ISG5Z_" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="38k27ISG6fn" role="37wK5m">
                <property role="3cmrfH" value="-5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISG6sV" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISG6sW" role="3clFbG">
            <node concept="37vLTw" id="38k27ISGd9I" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISFUyJ" resolve="ARROW_SHAPE" />
            </node>
            <node concept="liA8E" id="38k27ISG6sY" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float)" resolve="lineTo" />
              <node concept="3cmrfG" id="38k27ISG6t0" role="37wK5m">
                <property role="3cmrfH" value="10" />
              </node>
              <node concept="3cmrfG" id="38k27ISG7$0" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISG7Ge" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISG7Gf" role="3clFbG">
            <node concept="37vLTw" id="38k27ISGd9M" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISFUyJ" resolve="ARROW_SHAPE" />
            </node>
            <node concept="liA8E" id="38k27ISG7Gh" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float)" resolve="lineTo" />
              <node concept="3cmrfG" id="38k27ISG7Gj" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="38k27ISG7Gi" role="37wK5m">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27ISG8CR" role="3cqZAp">
          <node concept="2OqwBi" id="38k27ISG8Xz" role="3clFbG">
            <node concept="37vLTw" id="38k27ISGd9Q" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27ISFUyJ" resolve="ARROW_SHAPE" />
            </node>
            <node concept="liA8E" id="38k27ISGawC" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath()" resolve="closePath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27ISGd4w" role="jymVt" />
    <node concept="3Tm1VV" id="38k27IRy7fe" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="38k27IRQ3J7">
    <property role="TrG5h" value="ECTransitionPathSyncronizer" />
    <node concept="2tJIrI" id="38k27IRQ3J8" role="jymVt" />
    <node concept="312cEg" id="38k27IRQ3J9" role="jymVt">
      <property role="TrG5h" value="myViewpoint" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="38k27IRQ3Ja" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
      </node>
      <node concept="3Tm6S6" id="38k27IRQ3Jb" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="38k27IRQ3Jc" role="jymVt" />
    <node concept="3clFbW" id="38k27IRQ3Jd" role="jymVt">
      <node concept="3cqZAl" id="38k27IRQ3Je" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRQ3Jf" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRQ3Jg" role="3clF47">
        <node concept="3clFbF" id="38k27IRQ3Jh" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRQ3Ji" role="3clFbG">
            <node concept="37vLTw" id="38k27IRQ3Jj" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRQ3Jl" resolve="viewpoint" />
            </node>
            <node concept="37vLTw" id="38k27IRQ3Jk" role="37vLTJ">
              <ref role="3cqZAo" node="38k27IRQ3J9" resolve="myViewpoint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRQ3Jl" role="3clF46">
        <property role="TrG5h" value="viewpoint" />
        <node concept="3uibUv" id="38k27IRQ3Jm" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRQ3Jn" role="jymVt" />
    <node concept="3clFb_" id="38k27IRQ3Jo" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="37vLTG" id="38k27IRQ3Jp" role="3clF46">
        <property role="TrG5h" value="transition" />
        <node concept="3uibUv" id="5F$aghy1Rdb" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
        <node concept="2AHcQZ" id="38k27IRQ3Jr" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRQ3Js" role="1B3o_S" />
      <node concept="2AHcQZ" id="38k27IRQ3Jt" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRQ3Ju" role="3clF47">
        <node concept="3cpWs8" id="38k27IRQjVQ" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRQjVT" role="3cpWs9">
            <property role="TrG5h" value="cx" />
            <node concept="10Oyi0" id="38k27IRQjVO" role="1tU5fm" />
            <node concept="2OqwBi" id="38k27IRQkNf" role="33vP2m">
              <node concept="37vLTw" id="38k27IRQkAj" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRQ3Jp" resolve="transition" />
              </node>
              <node concept="liA8E" id="5oxN2jlIehG" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateTransition.getCenterX()" resolve="getCenterX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38k27IRQlog" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRQloh" role="3cpWs9">
            <property role="TrG5h" value="cy" />
            <node concept="10Oyi0" id="38k27IRQloi" role="1tU5fm" />
            <node concept="2OqwBi" id="38k27IRQloj" role="33vP2m">
              <node concept="37vLTw" id="38k27IRQlok" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRQ3Jp" resolve="transition" />
              </node>
              <node concept="liA8E" id="38k27IRQlol" role="2OqNvi">
                <ref role="37wK5l" to="g136:~StateTransition.getCenterY()" resolve="getCenterY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="38k27IRQ3JR" role="3cqZAp">
          <node concept="1bVj0M" id="38k27IRQ3JS" role="3cqZAk">
            <node concept="3clFbS" id="38k27IRQ3JT" role="1bW5cS">
              <node concept="3clFbF" id="38k27IRQ3JU" role="3cqZAp">
                <node concept="2ShNRf" id="38k27IRQ3JV" role="3clFbG">
                  <node concept="1pGfFk" id="38k27IRQ3JW" role="2ShVmc">
                    <ref role="37wK5l" node="38k27IRy0Fh" resolve="ECTransitionPath" />
                    <node concept="37vLTw" id="38k27IRQ3JX" role="37wK5m">
                      <ref role="3cqZAo" node="38k27IRQ3Kq" resolve="sp" />
                    </node>
                    <node concept="2ShNRf" id="38k27IRQprP" role="37wK5m">
                      <node concept="1pGfFk" id="38k27IRQqvb" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                        <node concept="2OqwBi" id="38k27IRQrfo" role="37wK5m">
                          <node concept="37vLTw" id="38k27IRQqTg" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRQ3J9" resolve="myViewpoint" />
                          </node>
                          <node concept="liA8E" id="38k27IRQrHI" role="2OqNvi">
                            <ref role="37wK5l" to="rvgs:7sG$k3BM$l1" resolve="translateToEditorX" />
                            <node concept="37vLTw" id="38k27IRQsif" role="37wK5m">
                              <ref role="3cqZAo" node="38k27IRQjVT" resolve="cx" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="38k27IRQsLy" role="37wK5m">
                          <node concept="37vLTw" id="38k27IRQsLz" role="2Oq$k0">
                            <ref role="3cqZAo" node="38k27IRQ3J9" resolve="myViewpoint" />
                          </node>
                          <node concept="liA8E" id="38k27IRQsL$" role="2OqNvi">
                            <ref role="37wK5l" to="rvgs:309fsJ6evNL" resolve="translateToEditorY" />
                            <node concept="37vLTw" id="38k27IRQu3M" role="37wK5m">
                              <ref role="3cqZAo" node="38k27IRQloh" resolve="cy" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="38k27IRQ3JY" role="37wK5m">
                      <ref role="3cqZAo" node="38k27IRQ3Ks" resolve="tp" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="38k27IRQ3Kq" role="1bW2Oz">
              <property role="TrG5h" value="sp" />
              <node concept="3uibUv" id="38k27IRQ3Kr" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
            <node concept="37vLTG" id="38k27IRQ3Ks" role="1bW2Oz">
              <property role="TrG5h" value="tp" />
              <node concept="3uibUv" id="38k27IRQ3Kt" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRQ3Ku" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="38k27IRQ3Kv" role="3clF45">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="38k27IRQ3Kw" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="38k27IRQ3Kx" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="38k27IRQiH4" role="11_B2D">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRQ3Kz" role="jymVt" />
    <node concept="3clFb_" id="38k27IRQ3K$" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3Tm1VV" id="38k27IRQ3K_" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRQ3KA" role="3clF45" />
      <node concept="37vLTG" id="38k27IRQ3KB" role="3clF46">
        <property role="TrG5h" value="transition" />
        <node concept="3uibUv" id="5F$aghy1REC" role="1tU5fm">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
        <node concept="2AHcQZ" id="38k27IRQ3KD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRQ3KE" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="38k27IRQurZ" role="1tU5fm">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
        <node concept="2AHcQZ" id="38k27IRQ3KG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRQ3KH" role="3clF47">
        <node concept="3clFbF" id="38k27IRQwwj" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRQwBx" role="3clFbG">
            <node concept="37vLTw" id="38k27IRQwwh" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRQ3KB" resolve="transition" />
            </node>
            <node concept="liA8E" id="38k27IRQxbc" role="2OqNvi">
              <ref role="37wK5l" to="g136:~StateTransition.setCenterX(int)" resolve="setCenterX" />
              <node concept="2OqwBi" id="38k27IRQxpQ" role="37wK5m">
                <node concept="37vLTw" id="38k27IRQxgU" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRQ3J9" resolve="myViewpoint" />
                </node>
                <node concept="liA8E" id="38k27IRQxD1" role="2OqNvi">
                  <ref role="37wK5l" to="rvgs:309fsJ6iBhP" resolve="translateFromEditorX" />
                  <node concept="2OqwBi" id="38k27IRQz5r" role="37wK5m">
                    <node concept="2OqwBi" id="38k27IRQxRT" role="2Oq$k0">
                      <node concept="37vLTw" id="38k27IRQxI9" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRQ3KE" resolve="path" />
                      </node>
                      <node concept="2OwXpG" id="38k27IRQytO" role="2OqNvi">
                        <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="38k27IRQCjM" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRQCyO" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRQCyP" role="3clFbG">
            <node concept="37vLTw" id="38k27IRQCyQ" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRQ3KB" resolve="transition" />
            </node>
            <node concept="liA8E" id="38k27IRQCyR" role="2OqNvi">
              <ref role="37wK5l" to="g136:~StateTransition.setCenterY(int)" resolve="setCenterY" />
              <node concept="2OqwBi" id="38k27IRQCyS" role="37wK5m">
                <node concept="37vLTw" id="38k27IRQCyT" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRQ3J9" resolve="myViewpoint" />
                </node>
                <node concept="liA8E" id="38k27IRQCyU" role="2OqNvi">
                  <ref role="37wK5l" to="rvgs:309fsJ6iBhV" resolve="translateFromEditorY" />
                  <node concept="2OqwBi" id="38k27IRQCyV" role="37wK5m">
                    <node concept="2OqwBi" id="38k27IRQCyW" role="2Oq$k0">
                      <node concept="37vLTw" id="38k27IRQCyX" role="2Oq$k0">
                        <ref role="3cqZAo" node="38k27IRQ3KE" resolve="path" />
                      </node>
                      <node concept="2OwXpG" id="38k27IRQCyY" role="2OqNvi">
                        <ref role="2Oxat5" node="38k27IRy0AE" resolve="centre" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="38k27IRQIVa" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRQ3LI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="38k27IRQ3LJ" role="1B3o_S" />
    <node concept="3uibUv" id="38k27IRQ3LK" role="EKbjA">
      <ref role="3uigEE" to="5lkm:7_KjZP9eHRu" resolve="ConnectionPathSyncronizer" />
      <node concept="3uibUv" id="5F$aghy1R3P" role="11_B2D">
        <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
      </node>
      <node concept="3uibUv" id="5F$aghy1QQm" role="11_B2D">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
      <node concept="3uibUv" id="38k27IRQhwK" role="11_B2D">
        <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="38k27IRRUQX">
    <property role="TrG5h" value="ECTransitionUtils" />
    <node concept="2tJIrI" id="38k27IRRUR3" role="jymVt" />
    <node concept="Wx3nA" id="38k27IRRUR4" role="jymVt">
      <property role="TrG5h" value="PATH_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="38k27IRRUR5" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="38k27IRRUR6" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="38k27IRRUR7" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="38k27IRRVyK" role="11_B2D">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="1bVj0M" id="38k27IRRUR9" role="33vP2m">
        <node concept="3clFbS" id="38k27IRRURa" role="1bW5cS">
          <node concept="3cpWs6" id="38k27IRRUSv" role="3cqZAp">
            <node concept="2ShNRf" id="38k27IRRUSw" role="3cqZAk">
              <node concept="1pGfFk" id="38k27IRRUSx" role="2ShVmc">
                <ref role="37wK5l" node="38k27IRy0Fh" resolve="ECTransitionPath" />
                <node concept="37vLTw" id="38k27IRRUSy" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRRUSL" resolve="source" />
                </node>
                <node concept="2ShNRf" id="38k27IRRXA5" role="37wK5m">
                  <node concept="1pGfFk" id="38k27IRRYgx" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                    <node concept="FJ1c_" id="38k27IRSfXG" role="37wK5m">
                      <node concept="3cmrfG" id="38k27IRSfZh" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="1eOMI4" id="38k27IRRYn5" role="3uHU7B">
                        <node concept="3cpWs3" id="38k27IRS3g0" role="1eOMHV">
                          <node concept="2OqwBi" id="38k27IRS3Zg" role="3uHU7w">
                            <node concept="37vLTw" id="38k27IRS3p7" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRRUSN" resolve="target" />
                            </node>
                            <node concept="2OwXpG" id="38k27IRS4oZ" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="38k27IRRYBX" role="3uHU7B">
                            <node concept="37vLTw" id="38k27IRRYq_" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRRUSL" resolve="source" />
                            </node>
                            <node concept="2OwXpG" id="38k27IRRZ3V" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="FJ1c_" id="38k27IRSgsX" role="37wK5m">
                      <node concept="3cmrfG" id="38k27IRSgsY" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="1eOMI4" id="38k27IRSgsZ" role="3uHU7B">
                        <node concept="3cpWs3" id="38k27IRSgt0" role="1eOMHV">
                          <node concept="2OqwBi" id="38k27IRSgt1" role="3uHU7w">
                            <node concept="37vLTw" id="38k27IRSgt2" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRRUSN" resolve="target" />
                            </node>
                            <node concept="2OwXpG" id="38k27IRSipp" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="38k27IRSgt4" role="3uHU7B">
                            <node concept="37vLTw" id="38k27IRSgt5" role="2Oq$k0">
                              <ref role="3cqZAo" node="38k27IRRUSL" resolve="source" />
                            </node>
                            <node concept="2OwXpG" id="38k27IRShEj" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="38k27IRRUSz" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRRUSN" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="38k27IRRUSL" role="1bW2Oz">
          <property role="TrG5h" value="source" />
          <node concept="3uibUv" id="38k27IRRUSM" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
        <node concept="37vLTG" id="38k27IRRUSN" role="1bW2Oz">
          <property role="TrG5h" value="target" />
          <node concept="3uibUv" id="38k27IRRUSO" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRRUSP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="38k27IRRUSQ" role="jymVt" />
    <node concept="Wx3nA" id="38k27IRRUSR" role="jymVt">
      <property role="TrG5h" value="PATH_PAINTER" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="38k27IRRUSS" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiConsumer" resolve="BiConsumer" />
        <node concept="3uibUv" id="38k27IRRUST" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
        <node concept="3uibUv" id="38k27IRSiJQ" role="11_B2D">
          <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="1bVj0M" id="38k27IRRUSV" role="33vP2m">
        <node concept="3clFbS" id="38k27IRRUSW" role="1bW5cS">
          <node concept="3clFbF" id="38k27IRRUSX" role="3cqZAp">
            <node concept="2YIFZM" id="38k27IRRUSY" role="3clFbG">
              <ref role="1Pybhc" node="38k27IRy79X" resolve="ECTransitionPathPainter" />
              <ref role="37wK5l" node="38k27IRy7aK" resolve="setupRegularPathPaint" />
              <node concept="37vLTw" id="38k27IRRUSZ" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRRUT8" resolve="g" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="38k27IRRUT0" role="3cqZAp">
            <node concept="2OqwBi" id="38k27IRRUT1" role="3clFbG">
              <node concept="2ShNRf" id="38k27IRRUT2" role="2Oq$k0">
                <node concept="1pGfFk" id="38k27IRRUT3" role="2ShVmc">
                  <ref role="37wK5l" node="38k27IRy7ad" resolve="ECTransitionPathPainter" />
                  <node concept="37vLTw" id="38k27IRRUT4" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRRUTa" resolve="path" />
                  </node>
                  <node concept="10Nm6u" id="38k27IRRUT5" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="38k27IRRUT6" role="2OqNvi">
                <ref role="37wK5l" node="38k27IRy7bp" resolve="paint" />
                <node concept="37vLTw" id="38k27IRRUT7" role="37wK5m">
                  <ref role="3cqZAo" node="38k27IRRUT8" resolve="g" />
                </node>
                <node concept="3clFbT" id="38k27IS2Y8S" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="38k27IRRUT8" role="1bW2Oz">
          <property role="TrG5h" value="g" />
          <node concept="3uibUv" id="38k27IRRUT9" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
        <node concept="37vLTG" id="38k27IRRUTa" role="1bW2Oz">
          <property role="TrG5h" value="path" />
          <node concept="3uibUv" id="38k27IRSiLM" role="1tU5fm">
            <ref role="3uigEE" node="38k27IRy0tz" resolve="ECTransitionPath" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRRUTc" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="38k27IRRUTd" role="1B3o_S" />
  </node>
</model>

