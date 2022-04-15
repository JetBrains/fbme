<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b054d510-f3eb-4f3b-8611-d75feed6cb53(org.fbme.ide.iec61499.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="9ywi" ref="r:b27d9d9b-1904-40b8-bdb1-cf26b125baf7(org.fbme.ide.util.lang.structure)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="4it6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.loading(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="q8ad" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.editor(org.fbme.platform.lib/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2hWn4IdUWjD">
    <property role="TrG5h" value="ProjectEditorSpecsImpl" />
    <node concept="2tJIrI" id="1vJkp1TOt_l" role="jymVt" />
    <node concept="312cEg" id="1vJkp1TO_h5" role="jymVt">
      <property role="TrG5h" value="myOptions" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1vJkp1TO$nG" role="1B3o_S" />
      <node concept="3uibUv" id="1vJkp1TO_gf" role="1tU5fm">
        <ref role="3uigEE" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
      </node>
      <node concept="2YIFZM" id="1vJkp1TOCua" role="33vP2m">
        <ref role="37wK5l" to="tqvn:~TempModuleOptions.nonReloadableModule()" resolve="nonReloadableModule" />
        <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
      </node>
    </node>
    <node concept="312cEg" id="2hWn4IdV1EG" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2hWn4IdUZJX" role="1B3o_S" />
      <node concept="3uibUv" id="2hWn4IdV1JX" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="2hWn4IdV2aU" role="jymVt">
      <property role="TrG5h" value="myModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2hWn4IdV1Z9" role="1B3o_S" />
      <node concept="3uibUv" id="5sOEwwEEcq5" role="1tU5fm">
        <ref role="3uigEE" to="g3l6:~SModelBase" resolve="SModelBase" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1TOMZ7" role="jymVt" />
    <node concept="312cEg" id="2hWn4IdWf_S" role="jymVt">
      <property role="TrG5h" value="mySpecMap" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2hWn4IdW9Pt" role="1B3o_S" />
      <node concept="3uibUv" id="2nUT8eQUfk4" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="1LlUBW" id="2nUT8eQUgk0" role="11_B2D">
          <node concept="3Tqbb2" id="2nUT8eQUgk1" role="1Lm7xW" />
          <node concept="17QB3L" id="2nUT8eQUgk2" role="1Lm7xW" />
        </node>
        <node concept="3Tqbb2" id="2nUT8eQUhU6" role="11_B2D">
          <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
        </node>
      </node>
      <node concept="2ShNRf" id="2hWn4IdWg9h" role="33vP2m">
        <node concept="1pGfFk" id="2nUT8eQUa6f" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~WeakHashMap.&lt;init&gt;()" resolve="WeakHashMap" />
          <node concept="1LlUBW" id="2hWn4IdWaIN" role="1pMfVU">
            <node concept="3Tqbb2" id="2hWn4IdWaY1" role="1Lm7xW" />
            <node concept="17QB3L" id="2hWn4IdWdDm" role="1Lm7xW" />
          </node>
          <node concept="3Tqbb2" id="2hWn4IdWg1D" role="1pMfVU">
            <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2hWn4IdWBGp" role="jymVt" />
    <node concept="2YIFZL" id="2hWn4IdWCPe" role="jymVt">
      <property role="TrG5h" value="install" />
      <node concept="37vLTG" id="2hWn4IdWDim" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2hWn4IdWDin" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="2hWn4IdWCPh" role="3clF47">
        <node concept="3clFbF" id="2hWn4IdWEmM" role="3cqZAp">
          <node concept="2OqwBi" id="1EsE0fsv$bt" role="3clFbG">
            <node concept="37vLTw" id="1EsE0fsvxjJ" role="2Oq$k0">
              <ref role="3cqZAo" to="q8ad:~ProjectEditorSpecs.ourInstances" resolve="ourInstances" />
            </node>
            <node concept="liA8E" id="1EsE0fsv$My" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="1EsE0fsv_qQ" role="37wK5m">
                <ref role="3cqZAo" node="2hWn4IdWDim" resolve="project" />
              </node>
              <node concept="2ShNRf" id="2hWn4IdWFpQ" role="37wK5m">
                <node concept="1pGfFk" id="2hWn4IdWFjQ" role="2ShVmc">
                  <ref role="37wK5l" node="2hWn4IdV1KA" resolve="ProjectEditorSpecsImpl" />
                  <node concept="37vLTw" id="2hWn4IdWF_w" role="37wK5m">
                    <ref role="3cqZAo" node="2hWn4IdWDim" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2hWn4IdWCh9" role="1B3o_S" />
      <node concept="3cqZAl" id="2hWn4IdWCOL" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2hWn4IdWFAH" role="jymVt">
      <property role="TrG5h" value="uninstall" />
      <node concept="37vLTG" id="2hWn4IdWFAI" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2hWn4IdWFAJ" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="2hWn4IdWFAK" role="3clF47">
        <node concept="3clFbF" id="2hWn4IdWFAL" role="3cqZAp">
          <node concept="2OqwBi" id="1EsE0fsvBc_" role="3clFbG">
            <node concept="1eOMI4" id="1EsE0fsvBYE" role="2Oq$k0">
              <node concept="10QFUN" id="1EsE0fsvClz" role="1eOMHV">
                <node concept="3uibUv" id="1EsE0fsvCBN" role="10QFUM">
                  <ref role="3uigEE" node="2hWn4IdUWjD" resolve="ProjectEditorSpecsImpl" />
                </node>
                <node concept="2OqwBi" id="2hWn4IdWGLT" role="10QFUP">
                  <node concept="37vLTw" id="1EsE0fsvxqC" role="2Oq$k0">
                    <ref role="3cqZAo" to="q8ad:~ProjectEditorSpecs.ourInstances" resolve="ourInstances" />
                  </node>
                  <node concept="liA8E" id="1EsE0fsvz6y" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                    <node concept="37vLTw" id="1EsE0fsvzex" role="37wK5m">
                      <ref role="3cqZAo" node="2hWn4IdWFAI" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1EsE0fsvCZ8" role="2OqNvi">
              <ref role="37wK5l" node="4BO4i0ZlYd2" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2hWn4IdWFAT" role="1B3o_S" />
      <node concept="3cqZAl" id="2hWn4IdWFAU" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2hWn4IdV1Kg" role="jymVt" />
    <node concept="3Tm1VV" id="2hWn4IdUWjE" role="1B3o_S" />
    <node concept="3clFbW" id="2hWn4IdV1KA" role="jymVt">
      <node concept="3cqZAl" id="2hWn4IdV1KB" role="3clF45" />
      <node concept="3Tm1VV" id="2hWn4IdV1KC" role="1B3o_S" />
      <node concept="3clFbS" id="2hWn4IdV1KE" role="3clF47">
        <node concept="3clFbF" id="2hWn4IdV1KI" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdV1KK" role="3clFbG">
            <node concept="2OqwBi" id="2hWn4IdV1KO" role="37vLTJ">
              <node concept="Xjq3P" id="2hWn4IdV1KP" role="2Oq$k0" />
              <node concept="2OwXpG" id="2hWn4IdV1KQ" role="2OqNvi">
                <ref role="2Oxat5" node="2hWn4IdV1EG" resolve="myProject" />
              </node>
            </node>
            <node concept="37vLTw" id="2hWn4IdV1KR" role="37vLTx">
              <ref role="3cqZAo" node="2hWn4IdV1KH" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5sOEwwEDB_w" role="3cqZAp">
          <node concept="3cpWsn" id="5sOEwwEDB_x" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5sOEwwEE6UV" role="1tU5fm">
              <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
            </node>
            <node concept="10QFUN" id="5sOEwwEE7pS" role="33vP2m">
              <node concept="3uibUv" id="5sOEwwEE8dY" role="10QFUM">
                <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
              </node>
              <node concept="2OqwBi" id="5sOEwwEDB_y" role="10QFUP">
                <node concept="37vLTw" id="5sOEwwEDB_z" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vJkp1TO_h5" resolve="myOptions" />
                </node>
                <node concept="liA8E" id="5sOEwwEDB_$" role="2OqNvi">
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.createModule()" resolve="createModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5sOEwwEDIIN" role="3cqZAp">
          <node concept="3cpWsn" id="5sOEwwEDIIO" role="3cpWs9">
            <property role="TrG5h" value="mr" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5sOEwwEDIFI" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2ShNRf" id="5sOEwwEDIIP" role="33vP2m">
              <node concept="1pGfFk" id="5sOEwwEDIIQ" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~SModelReference.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,org.jetbrains.mps.openapi.model.SModelName)" resolve="SModelReference" />
                <node concept="2OqwBi" id="5sOEwwEDIIR" role="37wK5m">
                  <node concept="37vLTw" id="5sOEwwEDIIS" role="2Oq$k0">
                    <ref role="3cqZAo" node="5sOEwwEDB_x" resolve="module" />
                  </node>
                  <node concept="liA8E" id="5sOEwwEDIIT" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                  </node>
                </node>
                <node concept="2YIFZM" id="5sOEwwEDIIU" role="37wK5m">
                  <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                  <ref role="37wK5l" to="w1kc:~SModelId.generate()" resolve="generate" />
                </node>
                <node concept="2ShNRf" id="5sOEwwEDIIV" role="37wK5m">
                  <node concept="1pGfFk" id="5sOEwwEDIIW" role="2ShVmc">
                    <ref role="37wK5l" to="mhbf:~SModelName.&lt;init&gt;(java.lang.String)" resolve="SModelName" />
                    <node concept="Xl_RD" id="5sOEwwEDIIX" role="37wK5m">
                      <property role="Xl_RC" value="ProjectHeaderedEditorSpecs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hWn4IdV2m4" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdV2J4" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdVVEq" role="37vLTJ">
              <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
            </node>
            <node concept="2ShNRf" id="5sOEwwEDmj8" role="37vLTx">
              <node concept="YeOm9" id="5sOEwwEDzkj" role="2ShVmc">
                <node concept="1Y3b0j" id="5sOEwwEDzkm" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="w1kc:~RegularModelDescriptor" resolve="RegularModelDescriptor" />
                  <ref role="37wK5l" to="w1kc:~RegularModelDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="RegularModelDescriptor" />
                  <node concept="3Tm1VV" id="5sOEwwEDzkn" role="1B3o_S" />
                  <node concept="3clFb_" id="5sOEwwEDzkw" role="jymVt">
                    <property role="TrG5h" value="createModel" />
                    <node concept="3Tmbuc" id="5sOEwwEDzkx" role="1B3o_S" />
                    <node concept="2AHcQZ" id="5sOEwwEDzkz" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                    <node concept="3uibUv" id="5sOEwwEDzk$" role="3clF45">
                      <ref role="3uigEE" to="w1kc:~ModelLoadResult" resolve="ModelLoadResult" />
                      <node concept="3uibUv" id="5sOEwwEDzk_" role="11_B2D">
                        <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5sOEwwEDzkA" role="3clF47">
                      <node concept="3clFbF" id="5sOEwwED$bU" role="3cqZAp">
                        <node concept="2ShNRf" id="5sOEwwEDO3g" role="3clFbG">
                          <node concept="1pGfFk" id="5sOEwwEDQzA" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~ModelLoadResult.&lt;init&gt;(jetbrains.mps.extapi.model.SModelData,jetbrains.mps.smodel.loading.ModelLoadingState)" resolve="ModelLoadResult" />
                            <node concept="2ShNRf" id="5sOEwwED$bQ" role="37wK5m">
                              <node concept="YeOm9" id="5sOEwwEDLdc" role="2ShVmc">
                                <node concept="1Y3b0j" id="5sOEwwEDLdf" role="YeSDq">
                                  <property role="2bfB8j" value="true" />
                                  <ref role="1Y3XeK" to="w1kc:~DefaultSModel" resolve="DefaultSModel" />
                                  <ref role="37wK5l" to="w1kc:~DefaultSModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="DefaultSModel" />
                                  <node concept="3Tm1VV" id="5sOEwwEDLdg" role="1B3o_S" />
                                  <node concept="37vLTw" id="5sOEwwEDKlQ" role="37wK5m">
                                    <ref role="3cqZAo" node="5sOEwwEDIIO" resolve="mr" />
                                  </node>
                                  <node concept="3clFb_" id="5sOEwwEDLgE" role="jymVt">
                                    <property role="TrG5h" value="canFireEvent" />
                                    <node concept="3Tm1VV" id="5sOEwwEDLgF" role="1B3o_S" />
                                    <node concept="10P_77" id="5sOEwwEDLgH" role="3clF45" />
                                    <node concept="3clFbS" id="5sOEwwEDLgK" role="3clF47">
                                      <node concept="3clFbF" id="5sOEwwEDMbi" role="3cqZAp">
                                        <node concept="3clFbT" id="5sOEwwEDMbh" role="3clFbG" />
                                      </node>
                                    </node>
                                    <node concept="2AHcQZ" id="5sOEwwEDLgL" role="2AJF6D">
                                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                    </node>
                                  </node>
                                  <node concept="3clFb_" id="5sOEwwEDLgO" role="jymVt">
                                    <property role="TrG5h" value="canFireReadEvent" />
                                    <node concept="3Tm1VV" id="5sOEwwEDLgP" role="1B3o_S" />
                                    <node concept="10P_77" id="5sOEwwEDLgR" role="3clF45" />
                                    <node concept="3clFbS" id="5sOEwwEDLgU" role="3clF47">
                                      <node concept="3clFbF" id="5sOEwwEDN6e" role="3cqZAp">
                                        <node concept="3clFbT" id="5sOEwwEDN6d" role="3clFbG" />
                                      </node>
                                    </node>
                                    <node concept="2AHcQZ" id="5sOEwwEDLgV" role="2AJF6D">
                                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="5sOEwwEDS8u" role="1pMfVU">
                              <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                            </node>
                            <node concept="Rm8GO" id="5sOEwwEDUU1" role="37wK5m">
                              <ref role="Rm8GQ" to="4it6:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
                              <ref role="1Px2BO" to="4it6:~ModelLoadingState" resolve="ModelLoadingState" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5sOEwwEDzkC" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5sOEwwEDJnH" role="37wK5m">
                    <ref role="3cqZAo" node="5sOEwwEDIIO" resolve="mr" />
                  </node>
                  <node concept="2ShNRf" id="5sOEwwEDXRf" role="37wK5m">
                    <node concept="1pGfFk" id="5sOEwwEE3bZ" role="2ShVmc">
                      <ref role="37wK5l" to="dush:~NullDataSource.&lt;init&gt;()" resolve="NullDataSource" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5sOEwwEE5Qn" role="3cqZAp">
          <node concept="2OqwBi" id="5sOEwwEE6g6" role="3clFbG">
            <node concept="37vLTw" id="5sOEwwEE5Ql" role="2Oq$k0">
              <ref role="3cqZAo" node="5sOEwwEDB_x" resolve="module" />
            </node>
            <node concept="liA8E" id="5sOEwwEE8N8" role="2OqNvi">
              <ref role="37wK5l" to="31cb:~SModuleBase.registerModel(jetbrains.mps.extapi.model.SModelBase)" resolve="registerModel" />
              <node concept="37vLTw" id="5sOEwwEE9bR" role="37wK5m">
                <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2hWn4IdV1KH" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2hWn4IdV1KG" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ztU_Gn$El7" role="jymVt" />
    <node concept="3clFb_" id="ztU_Gn$FW6" role="jymVt">
      <property role="TrG5h" value="getSpecTarget" />
      <node concept="3clFbS" id="ztU_Gn$FW9" role="3clF47">
        <node concept="3clFbJ" id="ztU_Gn$H8Y" role="3cqZAp">
          <node concept="2OqwBi" id="ztU_Gn$Hi7" role="3clFbw">
            <node concept="37vLTw" id="ztU_Gn$H9D" role="2Oq$k0">
              <ref role="3cqZAo" node="ztU_Gn$GpI" resolve="spec" />
            </node>
            <node concept="1mIQ4w" id="ztU_Gn$HtU" role="2OqNvi">
              <node concept="chp4Y" id="ztU_Gn$HvT" role="cj9EA">
                <ref role="cht4Q" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="ztU_Gn$H90" role="3clFbx">
            <node concept="3cpWs6" id="ztU_Gn$HzY" role="3cqZAp">
              <node concept="2OqwBi" id="ztU_Gn$Kwg" role="3cqZAk">
                <node concept="1PxgMI" id="ztU_Gn$Jy0" role="2Oq$k0">
                  <node concept="chp4Y" id="ztU_Gn$JVI" role="3oSUPX">
                    <ref role="cht4Q" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
                  </node>
                  <node concept="37vLTw" id="ztU_Gn$H$E" role="1m5AlR">
                    <ref role="3cqZAo" node="ztU_Gn$GpI" resolve="spec" />
                  </node>
                </node>
                <node concept="3TrEf2" id="ztU_Gn$L1z" role="2OqNvi">
                  <ref role="3Tt5mk" to="9ywi:6YAH_gOxzgw" resolve="nodeToShow" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ztU_Gn$LMH" role="3cqZAp">
          <node concept="37vLTw" id="ztU_Gn$NCo" role="3cqZAk">
            <ref role="3cqZAo" node="ztU_Gn$GpI" resolve="spec" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ztU_Gn$Faa" role="1B3o_S" />
      <node concept="3Tqbb2" id="ztU_Gn$FVh" role="3clF45" />
      <node concept="37vLTG" id="ztU_Gn$GpI" role="3clF46">
        <property role="TrG5h" value="spec" />
        <node concept="3Tqbb2" id="ztU_Gn$GpH" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1EsE0fsv_E2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="ztU_GnAk3k" role="jymVt" />
    <node concept="3clFb_" id="ztU_GnAloK" role="jymVt">
      <property role="TrG5h" value="getSpecProjectionState" />
      <node concept="3clFbS" id="ztU_GnAloN" role="3clF47">
        <node concept="3clFbJ" id="ztU_GnAnqv" role="3cqZAp">
          <node concept="2OqwBi" id="ztU_GnAnqw" role="3clFbw">
            <node concept="37vLTw" id="ztU_GnAnqx" role="2Oq$k0">
              <ref role="3cqZAo" node="ztU_GnAmZ9" resolve="spec" />
            </node>
            <node concept="1mIQ4w" id="ztU_GnAnqy" role="2OqNvi">
              <node concept="chp4Y" id="ztU_GnAnqz" role="cj9EA">
                <ref role="cht4Q" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="ztU_GnAnq$" role="3clFbx">
            <node concept="3cpWs6" id="ztU_GnAnq_" role="3cqZAp">
              <node concept="2OqwBi" id="ztU_GnAnqA" role="3cqZAk">
                <node concept="1PxgMI" id="ztU_GnAnqB" role="2Oq$k0">
                  <node concept="chp4Y" id="ztU_GnAnqC" role="3oSUPX">
                    <ref role="cht4Q" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
                  </node>
                  <node concept="37vLTw" id="ztU_GnAnqD" role="1m5AlR">
                    <ref role="3cqZAo" node="ztU_GnAmZ9" resolve="spec" />
                  </node>
                </node>
                <node concept="3TrcHB" id="ztU_GnApOQ" role="2OqNvi">
                  <ref role="3TsBF5" to="9ywi:6YAH_gOxzgu" resolve="projectionState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ztU_GnAnqF" role="3cqZAp">
          <node concept="10Nm6u" id="ztU_GnAqfa" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="ztU_GnAkJh" role="1B3o_S" />
      <node concept="17QB3L" id="ztU_GnAp00" role="3clF45" />
      <node concept="37vLTG" id="ztU_GnAmZ9" role="3clF46">
        <property role="TrG5h" value="spec" />
        <node concept="3Tqbb2" id="ztU_GnAmZ8" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1EsE0fsvAA2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hWn4IdW7IB" role="jymVt" />
    <node concept="3clFb_" id="2hWn4IdW8g3" role="jymVt">
      <property role="TrG5h" value="getSpec" />
      <property role="od$2w" value="true" />
      <node concept="3clFbS" id="2hWn4IdW8g6" role="3clF47">
        <node concept="3clFbF" id="2hWn4IdWc6B" role="3cqZAp">
          <node concept="2OqwBi" id="2hWn4IdWcWM" role="3clFbG">
            <node concept="2OqwBi" id="2hWn4IdWcuF" role="2Oq$k0">
              <node concept="37vLTw" id="2hWn4IdWc6A" role="2Oq$k0">
                <ref role="3cqZAo" node="2hWn4IdV1EG" resolve="myProject" />
              </node>
              <node concept="liA8E" id="2hWn4IdWcOr" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="2hWn4IdWd6z" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess()" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2hWn4IdWdVE" role="3cqZAp">
          <node concept="3cpWsn" id="2hWn4IdWdVH" role="3cpWs9">
            <property role="TrG5h" value="key" />
            <node concept="1LlUBW" id="2hWn4IdWdXm" role="1tU5fm">
              <node concept="3Tqbb2" id="2hWn4IdWdXn" role="1Lm7xW" />
              <node concept="17QB3L" id="2hWn4IdWdXo" role="1Lm7xW" />
            </node>
            <node concept="1Ls8ON" id="2hWn4IdWeay" role="33vP2m">
              <node concept="37vLTw" id="2hWn4IdWehw" role="1Lso8e">
                <ref role="3cqZAo" node="2hWn4IdW93s" resolve="target" />
              </node>
              <node concept="37vLTw" id="2hWn4IdWev0" role="1Lso8e">
                <ref role="3cqZAo" node="2hWn4IdW99B" resolve="projectionState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2hWn4IdWeEU" role="3cqZAp">
          <node concept="3clFbS" id="2hWn4IdWeEW" role="3clFbx">
            <node concept="3cpWs6" id="2hWn4IdWkBR" role="3cqZAp">
              <node concept="3EllGN" id="2hWn4IdWlLO" role="3cqZAk">
                <node concept="37vLTw" id="2hWn4IdWmm1" role="3ElVtu">
                  <ref role="3cqZAo" node="2hWn4IdWdVH" resolve="key" />
                </node>
                <node concept="37vLTw" id="2hWn4IdWl8p" role="3ElQJh">
                  <ref role="3cqZAo" node="2hWn4IdWf_S" resolve="mySpecMap" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2nUT8eQUk6j" role="3clFbw">
            <node concept="37vLTw" id="2hWn4IdWiE_" role="2Oq$k0">
              <ref role="3cqZAo" node="2hWn4IdWf_S" resolve="mySpecMap" />
            </node>
            <node concept="liA8E" id="2nUT8eQUo8U" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
              <node concept="37vLTw" id="2nUT8eQUpl1" role="37wK5m">
                <ref role="3cqZAo" node="2hWn4IdWdVH" resolve="key" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2hWn4IdWpMZ" role="3cqZAp">
          <node concept="3cpWsn" id="2hWn4IdWpN0" role="3cpWs9">
            <property role="TrG5h" value="spec" />
            <node concept="3Tqbb2" id="2hWn4IdWpML" role="1tU5fm">
              <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
            </node>
            <node concept="2ShNRf" id="2hWn4IdWpN1" role="33vP2m">
              <node concept="3zrR0B" id="2hWn4IdWpN2" role="2ShVmc">
                <node concept="3Tqbb2" id="2hWn4IdWpN3" role="3zrR0E">
                  <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hWn4IdWo2X" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdWqUq" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdWr9r" role="37vLTx">
              <ref role="3cqZAo" node="2hWn4IdW99B" resolve="projectionState" />
            </node>
            <node concept="2OqwBi" id="2hWn4IdWqmN" role="37vLTJ">
              <node concept="37vLTw" id="2hWn4IdWpN4" role="2Oq$k0">
                <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
              </node>
              <node concept="3TrcHB" id="2hWn4IdWq$8" role="2OqNvi">
                <ref role="3TsBF5" to="9ywi:6YAH_gOxzgu" resolve="projectionState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hWn4IdWs1e" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdWsXy" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdWt6k" role="37vLTx">
              <ref role="3cqZAo" node="2hWn4IdW93s" resolve="target" />
            </node>
            <node concept="2OqwBi" id="2hWn4IdWsx4" role="37vLTJ">
              <node concept="37vLTw" id="2hWn4IdWs1c" role="2Oq$k0">
                <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
              </node>
              <node concept="3TrEf2" id="2hWn4IdWsOV" role="2OqNvi">
                <ref role="3Tt5mk" to="9ywi:6YAH_gOxzgw" resolve="nodeToShow" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hWn4IdWtNC" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdWv2t" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdWvbC" role="37vLTx">
              <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
            </node>
            <node concept="3EllGN" id="2hWn4IdWuHE" role="37vLTJ">
              <node concept="37vLTw" id="2hWn4IdWuTm" role="3ElVtu">
                <ref role="3cqZAo" node="2hWn4IdWdVH" resolve="key" />
              </node>
              <node concept="37vLTw" id="2hWn4IdWtNA" role="3ElQJh">
                <ref role="3cqZAo" node="2hWn4IdWf_S" resolve="mySpecMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1vJkp1U0R$M" role="3cqZAp">
          <node concept="3clFbS" id="1vJkp1U0R$O" role="1zxBo7">
            <node concept="3clFbF" id="1vJkp1TPH4i" role="3cqZAp">
              <node concept="2OqwBi" id="1vJkp1TPJmM" role="3clFbG">
                <node concept="2OqwBi" id="1vJkp1TPIi2" role="2Oq$k0">
                  <node concept="1eOMI4" id="1vJkp1TPH4g" role="2Oq$k0">
                    <node concept="10QFUN" id="1vJkp1TPH4d" role="1eOMHV">
                      <node concept="3uibUv" id="1vJkp1TPHwV" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~RegularModelDescriptor" resolve="RegularModelDescriptor" />
                      </node>
                      <node concept="37vLTw" id="1vJkp1TPHMP" role="10QFUP">
                        <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1vJkp1TPJ0z" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~RegularModelDescriptor.getSModelInternal()" resolve="getSModelInternal" />
                  </node>
                </node>
                <node concept="liA8E" id="1vJkp1TPJMz" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                  <node concept="37vLTw" id="1vJkp1TPJUd" role="37wK5m">
                    <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1vJkp1U0R$P" role="1zxBo5">
            <node concept="XOnhg" id="1vJkp1U0R$R" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="exU80VtSrgD" role="1tU5fm">
                <node concept="3uibUv" id="1vJkp1U0Syj" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1vJkp1U0R$V" role="1zc67A">
              <node concept="3SKdUt" id="1vJkp1U0SJk" role="3cqZAp">
                <node concept="1PaTwC" id="1vJkp1U0SJl" role="1aUNEU">
                  <node concept="3oM_SD" id="1vJkp1U0SJn" role="1PaTwD">
                    <property role="3oM_SC" value="hack" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2hWn4IdWxhD" role="3cqZAp">
          <node concept="37vLTw" id="2hWn4IdWzmK" role="3cqZAk">
            <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2hWn4IdW7X6" role="1B3o_S" />
      <node concept="3Tqbb2" id="2hWn4IdW8Eg" role="3clF45">
        <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
      </node>
      <node concept="37vLTG" id="2hWn4IdW93s" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="2hWn4IdW93r" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2hWn4IdW99B" role="3clF46">
        <property role="TrG5h" value="projectionState" />
        <node concept="17QB3L" id="2hWn4IdW9tU" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1EsE0fsvDmJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1EsE0fsvFPV" role="jymVt" />
    <node concept="3clFb_" id="4BO4i0ZlYd2" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3clFbS" id="4BO4i0ZlYd5" role="3clF47">
        <node concept="3clFbF" id="4BO4i0Zm196" role="3cqZAp">
          <node concept="2OqwBi" id="2nUT8eQUsFs" role="3clFbG">
            <node concept="37vLTw" id="4BO4i0Zm194" role="2Oq$k0">
              <ref role="3cqZAo" node="2hWn4IdWf_S" resolve="mySpecMap" />
            </node>
            <node concept="liA8E" id="2nUT8eQUyA1" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.clear()" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5sOEwwEEdkD" role="3cqZAp">
          <node concept="3cpWsn" id="5sOEwwEEdkE" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5sOEwwEEd_I" role="1tU5fm">
              <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
            </node>
            <node concept="10QFUN" id="5sOEwwEEdJO" role="33vP2m">
              <node concept="3uibUv" id="5sOEwwEEdWD" role="10QFUM">
                <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
              </node>
              <node concept="2OqwBi" id="5sOEwwEEdkF" role="10QFUP">
                <node concept="37vLTw" id="5sOEwwEEdkG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
                </node>
                <node concept="liA8E" id="5sOEwwEEdkH" role="2OqNvi">
                  <ref role="37wK5l" to="g3l6:~SModelBase.getModule()" resolve="getModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5sOEwwEEewb" role="3cqZAp">
          <node concept="2OqwBi" id="5sOEwwEEeRa" role="3clFbG">
            <node concept="37vLTw" id="5sOEwwEEew9" role="2Oq$k0">
              <ref role="3cqZAo" node="5sOEwwEEdkE" resolve="module" />
            </node>
            <node concept="liA8E" id="5sOEwwEEeUr" role="2OqNvi">
              <ref role="37wK5l" to="31cb:~SModuleBase.unregisterModel(jetbrains.mps.extapi.model.SModelBase)" resolve="unregisterModel" />
              <node concept="37vLTw" id="5sOEwwEEfwd" role="37wK5m">
                <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5sOEwwEEaq_" role="3cqZAp">
          <node concept="2OqwBi" id="5sOEwwEEaFz" role="3clFbG">
            <node concept="37vLTw" id="5sOEwwEEaqz" role="2Oq$k0">
              <ref role="3cqZAo" node="1vJkp1TO_h5" resolve="myOptions" />
            </node>
            <node concept="liA8E" id="5sOEwwEEaQC" role="2OqNvi">
              <ref role="37wK5l" to="tqvn:~TempModuleOptions.disposeModule()" resolve="disposeModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4BO4i0ZlXKI" role="3clF45" />
      <node concept="3Tm1VV" id="4BO4i0ZlYRF" role="1B3o_S" />
    </node>
    <node concept="3uibUv" id="5onjsxWf0AE" role="1zkMxy">
      <ref role="3uigEE" to="q8ad:~ProjectEditorSpecs" resolve="ProjectEditorSpecs" />
    </node>
  </node>
</model>

