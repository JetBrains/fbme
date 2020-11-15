<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:70067d3a-bbe4-4c69-a49e-eb3628586837(org.fbme.ide.richediting.viewmodel)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="5lkm" ref="r:7effb02f-bde4-4d2f-b844-eefa6ab09c8c(org.fbme.scenes.controllers.diagram)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="hyqd" ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(org.fbme.scenes.viewmodel)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="h353" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.expressions(org.fbme.lib/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="6iyo" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork.subapp(org.fbme.lib/)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(org.fbme.ide.iec61499.adapter.fbnetwork)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="sm75" ref="r:4a1e3170-2b3f-429d-845f-93bf3a5a9633(org.fbme.ide.iec61499.adapter.st)" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
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
  <node concept="312cEu" id="5er1YemzlqL">
    <property role="TrG5h" value="NetworkView" />
    <node concept="2tJIrI" id="5er1Yemzlrh" role="jymVt" />
    <node concept="312cEg" id="5hluBvQ4Y03" role="jymVt">
      <property role="TrG5h" value="myFactory" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5hluBvQ4WoY" role="1B3o_S" />
      <node concept="3uibUv" id="5hluBvQ4XYZ" role="1tU5fm">
        <ref role="3uigEE" to="v4vf:~IEC61499Factory" resolve="IEC61499Factory" />
      </node>
    </node>
    <node concept="312cEg" id="5hluBvQ5xCQ" role="jymVt">
      <property role="TrG5h" value="myNetwork" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5hluBvQ5vTb" role="1B3o_S" />
      <node concept="3uibUv" id="5hluBvQ5xBz" role="1tU5fm">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
    </node>
    <node concept="312cEg" id="5er1YemzlrV" role="jymVt">
      <property role="TrG5h" value="myEditable" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yemzlrw" role="1B3o_S" />
      <node concept="10P_77" id="5er1YemzlrK" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5hluBvQ7as_" role="jymVt" />
    <node concept="312cEg" id="5hluBvQ6L3C" role="jymVt">
      <property role="TrG5h" value="myMainComponents" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1YemzIB5" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yem$jnU" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5hluBvQ6JOB" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
      </node>
      <node concept="2ShNRf" id="5hluBvQ6Tvs" role="33vP2m">
        <node concept="1pGfFk" id="5hluBvQ6TJs" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="5hluBvQ6U1K" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5hluBvQ7ia3" role="jymVt">
      <property role="TrG5h" value="myAuxComponents" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5hluBvQ7dZ3" role="1B3o_S" />
      <node concept="3uibUv" id="5hluBvQ7geK" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="5hluBvQ7JDA" role="11_B2D">
          <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
        </node>
        <node concept="3uibUv" id="5hluBvQ7geM" role="11_B2D">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="5hluBvQ7hdc" role="11_B2D">
            <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="5hluBvQ7m3b" role="33vP2m">
        <node concept="1pGfFk" id="5hluBvQ7m3c" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="5hluBvQ7IuY" role="1pMfVU">
            <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
          </node>
          <node concept="3uibUv" id="5hluBvQ7m3e" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="5hluBvQ7n6y" role="11_B2D">
              <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5hluBvQ78y9" role="jymVt" />
    <node concept="312cEg" id="5er1YemzoQN" role="jymVt">
      <property role="TrG5h" value="myComponentToPorts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yemzlub" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemzobL" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="5er1Yemzoqw" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
        <node concept="3uibUv" id="5er1YemzpOq" role="11_B2D">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="5er1Yemzqh_" role="11_B2D">
            <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="5hluBvQ6Y5c" role="33vP2m">
        <node concept="1pGfFk" id="5hluBvQ6Y5d" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="5hluBvQ6Z7I" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
          </node>
          <node concept="3uibUv" id="5hluBvQ6Z7J" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="3uibUv" id="5hluBvQ6Z7K" role="11_B2D">
              <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5er1Yemzp6D" role="jymVt">
      <property role="TrG5h" value="myPorts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yemzp6E" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yemzp6F" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="5er1Yemzp6H" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
        </node>
        <node concept="3uibUv" id="5er1Yemzp6G" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
      </node>
      <node concept="2ShNRf" id="5hluBvQ70Ao" role="33vP2m">
        <node concept="1pGfFk" id="5hluBvQ70Ap" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="5hluBvQ74zs" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
          </node>
          <node concept="3uibUv" id="5hluBvQ74zt" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5er1Yemzrn7" role="jymVt">
      <property role="TrG5h" value="myConnectionSources" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yemzrn8" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yemzrn9" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="5er1YemztqU" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
        </node>
        <node concept="3uibUv" id="5er1Yemzrna" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
        </node>
      </node>
      <node concept="2ShNRf" id="5hluBvQ72kW" role="33vP2m">
        <node concept="1pGfFk" id="5hluBvQ72kX" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="5hluBvQ76kD" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
          </node>
          <node concept="3uibUv" id="5hluBvQ76kE" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5er1Yemztay" role="jymVt">
      <property role="TrG5h" value="myConnectionDestinations" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yemztaz" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yemzta$" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="5er1YemztE0" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
        </node>
        <node concept="3uibUv" id="5er1YemztaA" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
        </node>
      </node>
      <node concept="2ShNRf" id="5hluBvQ73tt" role="33vP2m">
        <node concept="1pGfFk" id="5hluBvQ73tu" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="5hluBvQ77sE" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
          </node>
          <node concept="3uibUv" id="5hluBvQ77sF" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yemzlsj" role="jymVt" />
    <node concept="312cEg" id="4Hbpy_fxY4g" role="jymVt">
      <property role="TrG5h" value="myElementModelMap" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Hbpy_fxPpo" role="1B3o_S" />
      <node concept="3uibUv" id="4Hbpy_fxVDJ" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="4Hbpy_fyHmy" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Element" resolve="Element" />
        </node>
        <node concept="3uibUv" id="4Hbpy_fxX1o" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
      </node>
      <node concept="2ShNRf" id="4Hbpy_fy4me" role="33vP2m">
        <node concept="1pGfFk" id="4Hbpy_fy4EZ" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="4Hbpy_fyNEm" role="1pMfVU">
            <ref role="3uigEE" to="7adg:~Element" resolve="Element" />
          </node>
          <node concept="3uibUv" id="4Hbpy_fy50q" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4Hbpy_f$uRX" role="jymVt">
      <property role="TrG5h" value="myPortModelMap" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Hbpy_f$uRY" role="1B3o_S" />
      <node concept="3uibUv" id="4Hbpy_f$uRZ" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="4Hbpy_f$_Ci" role="11_B2D">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="4Hbpy_f$_Hn" role="11_B2D" />
        </node>
        <node concept="3uibUv" id="4Hbpy_f$_SU" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
        </node>
      </node>
      <node concept="2ShNRf" id="4Hbpy_f$uS2" role="33vP2m">
        <node concept="1pGfFk" id="4Hbpy_f$uS3" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="4Hbpy_f$B3p" role="1pMfVU">
            <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
            <node concept="3qTvmN" id="4Hbpy_f$B3q" role="11_B2D" />
          </node>
          <node concept="3uibUv" id="4Hbpy_f$B3r" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2wHo_lFR0qR" role="jymVt">
      <property role="TrG5h" value="myConnectionModelMap" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2wHo_lFR0qS" role="1B3o_S" />
      <node concept="3uibUv" id="2wHo_lFR0qT" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="2wHo_lFRMTJ" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
        </node>
        <node concept="3uibUv" id="2wHo_lFRKvM" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
        </node>
      </node>
      <node concept="2ShNRf" id="2wHo_lFR0qW" role="33vP2m">
        <node concept="1pGfFk" id="2wHo_lFR0qX" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="2wHo_lFRNrX" role="1pMfVU">
            <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
          </node>
          <node concept="3uibUv" id="2wHo_lFRLGM" role="1pMfVU">
            <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Hbpy_fxJ94" role="jymVt" />
    <node concept="3clFbW" id="5hluBvQ7vdw" role="jymVt">
      <node concept="3cqZAl" id="5hluBvQ7vdx" role="3clF45" />
      <node concept="3Tm1VV" id="5hluBvQ7vdy" role="1B3o_S" />
      <node concept="3clFbS" id="5hluBvQ7vd$" role="3clF47">
        <node concept="3clFbF" id="5hluBvQ7vdC" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ7vdE" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ7vdL" role="37vLTx">
              <ref role="3cqZAo" node="5hluBvQ7vdB" resolve="factory" />
            </node>
            <node concept="37vLTw" id="5hluBvQ7xgL" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ4Y03" resolve="myFactory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ7vdO" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ7vdQ" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ7vdX" role="37vLTx">
              <ref role="3cqZAo" node="5hluBvQ7vdN" resolve="network" />
            </node>
            <node concept="37vLTw" id="5hluBvQ7xls" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ5xCQ" resolve="myNetwork" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ7ve0" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ7ve2" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ7ve9" role="37vLTx">
              <ref role="3cqZAo" node="5hluBvQ7vdZ" resolve="editable" />
            </node>
            <node concept="37vLTw" id="5hluBvQ7xqV" role="37vLTJ">
              <ref role="3cqZAo" node="5er1YemzlrV" resolve="myEditable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4lqSZy0viiv" role="3cqZAp">
          <node concept="1rXfSq" id="4lqSZy0viit" role="3clFbG">
            <ref role="37wK5l" node="1hwo9XLH8rU" resolve="init" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5hluBvQ7vdB" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="5hluBvQ7vdA" role="1tU5fm">
          <ref role="3uigEE" to="v4vf:~IEC61499Factory" resolve="IEC61499Factory" />
        </node>
      </node>
      <node concept="37vLTG" id="5hluBvQ7vdN" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="5hluBvQ7vdM" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
        </node>
      </node>
      <node concept="37vLTG" id="5hluBvQ7vdZ" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="5hluBvQ7vdY" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KgvZpg45BK" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLH8rU" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3clFbS" id="1hwo9XLH8rX" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLHQOy" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLHQOx" role="3clFbG">
            <ref role="37wK5l" node="1hwo9XLHnRw" resolve="initSubapps" />
          </node>
        </node>
        <node concept="3clFbF" id="1hwo9XLHQSp" role="3cqZAp">
          <node concept="1rXfSq" id="1hwo9XLHQSn" role="3clFbG">
            <ref role="37wK5l" node="1hwo9XLHG$O" resolve="initFBs" />
            <node concept="37vLTw" id="1KgvZpg2UTl" role="37wK5m">
              <ref role="3cqZAo" node="5hluBvQ5xCQ" resolve="myNetwork" />
            </node>
            <node concept="37vLTw" id="1KgvZpg30bB" role="37wK5m">
              <ref role="3cqZAo" node="5er1YemzlrV" resolve="myEditable" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1KgvZpg3aSk" role="3cqZAp">
          <node concept="3cpWsn" id="1KgvZpg3aSl" role="3cpWs9">
            <property role="TrG5h" value="prototype" />
            <node concept="3uibUv" id="1KgvZpg38n0" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="1KgvZpg3aSm" role="33vP2m">
              <node concept="37vLTw" id="1KgvZpg3aSn" role="2Oq$k0">
                <ref role="3cqZAo" node="5hluBvQ5xCQ" resolve="myNetwork" />
              </node>
              <node concept="liA8E" id="1KgvZpg3aSo" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBNetwork.getPrototype()" resolve="getPrototype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1KgvZpg35l1" role="3cqZAp">
          <node concept="3clFbS" id="1KgvZpg35l3" role="3clFbx">
            <node concept="3clFbF" id="1KgvZpg3bg_" role="3cqZAp">
              <node concept="1rXfSq" id="1KgvZpg3bgA" role="3clFbG">
                <ref role="37wK5l" node="1hwo9XLHG$O" resolve="initFBs" />
                <node concept="37vLTw" id="47wAAQ5hLZj" role="37wK5m">
                  <ref role="3cqZAo" node="1KgvZpg3aSl" resolve="prototype" />
                </node>
                <node concept="3clFbT" id="1KgvZpg3bnG" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1KgvZpg3baX" role="3clFbw">
            <node concept="10Nm6u" id="1KgvZpg3bgd" role="3uHU7w" />
            <node concept="37vLTw" id="1KgvZpg3aSp" role="3uHU7B">
              <ref role="3cqZAo" node="1KgvZpg3aSl" resolve="prototype" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="47wAAQ5jC9f" role="3cqZAp">
          <node concept="1rXfSq" id="47wAAQ5jC9d" role="3clFbG">
            <ref role="37wK5l" node="47wAAQ5je1j" resolve="initConnections" />
            <node concept="37vLTw" id="47wAAQ5jCij" role="37wK5m">
              <ref role="3cqZAo" node="5hluBvQ5xCQ" resolve="myNetwork" />
            </node>
            <node concept="37vLTw" id="47wAAQ5jCik" role="37wK5m">
              <ref role="3cqZAo" node="5er1YemzlrV" resolve="myEditable" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="47wAAQ5jCn6" role="3cqZAp">
          <node concept="3clFbS" id="47wAAQ5jCn7" role="3clFbx">
            <node concept="3clFbF" id="47wAAQ5jCn8" role="3cqZAp">
              <node concept="1rXfSq" id="47wAAQ5jCn9" role="3clFbG">
                <ref role="37wK5l" node="47wAAQ5je1j" resolve="initConnections" />
                <node concept="37vLTw" id="47wAAQ5jCna" role="37wK5m">
                  <ref role="3cqZAo" node="1KgvZpg3aSl" resolve="prototype" />
                </node>
                <node concept="3clFbT" id="47wAAQ5jCnb" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="47wAAQ5jCnc" role="3clFbw">
            <node concept="10Nm6u" id="47wAAQ5jCnd" role="3uHU7w" />
            <node concept="37vLTw" id="47wAAQ5jCne" role="3uHU7B">
              <ref role="3cqZAo" node="1KgvZpg3aSl" resolve="prototype" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1hwo9XLH3vk" role="1B3o_S" />
      <node concept="3cqZAl" id="1hwo9XLH8pd" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1hwo9XLHdJO" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLHnRw" role="jymVt">
      <property role="TrG5h" value="initSubapps" />
      <node concept="3clFbS" id="1hwo9XLHnRz" role="3clF47">
        <node concept="3clFbJ" id="1hwo9XLHdp4" role="3cqZAp">
          <node concept="2ZW3vV" id="1hwo9XLHdCD" role="3clFbw">
            <node concept="3uibUv" id="1hwo9XLHdI3" role="2ZW6by">
              <ref role="3uigEE" to="6iyo:~SubappNetwork" resolve="SubappNetwork" />
            </node>
            <node concept="37vLTw" id="1hwo9XLHdpC" role="2ZW6bz">
              <ref role="3cqZAo" node="5hluBvQ5xCQ" resolve="myNetwork" />
            </node>
          </node>
          <node concept="3clFbS" id="1hwo9XLHdp6" role="3clFbx">
            <node concept="2Gpval" id="4lqSZy0vj8U" role="3cqZAp">
              <node concept="2GrKxI" id="4lqSZy0vj8W" role="2Gsz3X">
                <property role="TrG5h" value="subapp" />
              </node>
              <node concept="3clFbS" id="4lqSZy0vj90" role="2LFqv$">
                <node concept="3clFbF" id="4lqSZy0vjvc" role="3cqZAp">
                  <node concept="1rXfSq" id="4lqSZy0vjvR" role="3clFbG">
                    <ref role="37wK5l" node="5er1YemzCRH" resolve="addFunctionBlock" />
                    <node concept="2GrUjf" id="4lqSZy0vkEa" role="37wK5m">
                      <ref role="2Gs0qQ" node="4lqSZy0vj8W" resolve="subapp" />
                    </node>
                    <node concept="37vLTw" id="4lqSZy0vkYG" role="37wK5m">
                      <ref role="3cqZAo" node="5er1YemzlrV" resolve="myEditable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4lqSZy0vi_w" role="2GsD0m">
                <node concept="1eOMI4" id="4lqSZy0vns8" role="2Oq$k0">
                  <node concept="10QFUN" id="4lqSZy0vnNo" role="1eOMHV">
                    <node concept="37vLTw" id="4lqSZy0vnNp" role="10QFUP">
                      <ref role="3cqZAo" node="5hluBvQ5xCQ" resolve="myNetwork" />
                    </node>
                    <node concept="3uibUv" id="4lqSZy0vnNq" role="10QFUM">
                      <ref role="3uigEE" to="6iyo:~SubappNetwork" resolve="SubappNetwork" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4lqSZy0viKj" role="2OqNvi">
                  <ref role="37wK5l" to="6iyo:~SubappNetwork.getSubapplications()" resolve="getSubapplications" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1hwo9XLHiX5" role="1B3o_S" />
      <node concept="3cqZAl" id="1hwo9XLHl_d" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1KgvZpg4by1" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLHG$O" role="jymVt">
      <property role="TrG5h" value="initFBs" />
      <node concept="3clFbS" id="1hwo9XLHG$P" role="3clF47">
        <node concept="2Gpval" id="4lqSZy0vlV_" role="3cqZAp">
          <node concept="2GrKxI" id="4lqSZy0vlVA" role="2Gsz3X">
            <property role="TrG5h" value="functionBlock" />
          </node>
          <node concept="3clFbS" id="4lqSZy0vlVB" role="2LFqv$">
            <node concept="3clFbF" id="4lqSZy0vlVC" role="3cqZAp">
              <node concept="1rXfSq" id="4lqSZy0vlVD" role="3clFbG">
                <ref role="37wK5l" node="5er1YemzCRH" resolve="addFunctionBlock" />
                <node concept="2GrUjf" id="4lqSZy0vlVE" role="37wK5m">
                  <ref role="2Gs0qQ" node="4lqSZy0vlVA" resolve="functionBlock" />
                </node>
                <node concept="37vLTw" id="1KgvZpg3bAb" role="37wK5m">
                  <ref role="3cqZAo" node="1KgvZpg30gG" resolve="editable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4lqSZy0vlVG" role="2GsD0m">
            <node concept="37vLTw" id="1KgvZpg3bu6" role="2Oq$k0">
              <ref role="3cqZAo" node="1KgvZpg2V22" resolve="network" />
            </node>
            <node concept="liA8E" id="4lqSZy0vozo" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FBNetwork.getFunctionBlocks()" resolve="getFunctionBlocks" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1KgvZpg2OTL" role="3cqZAp">
          <node concept="2GrKxI" id="1KgvZpg2OTM" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="3clFbS" id="1KgvZpg2OTN" role="2LFqv$">
            <node concept="3SKdUt" id="1KgvZpg2Rd8" role="3cqZAp">
              <node concept="1PaTwC" id="1KgvZpg2Rd9" role="1aUNEU">
                <node concept="3oM_SD" id="1KgvZpg2Rdb" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2Rmh" role="1PaTwD">
                  <property role="3oM_SC" value="review" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2Rms" role="1PaTwD">
                  <property role="3oM_SC" value="&quot;false&quot;," />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2Rmw" role="1PaTwD">
                  <property role="3oM_SC" value="perhaps" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2RmX" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2Rnb" role="1PaTwD">
                  <property role="3oM_SC" value="want" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2Rnq" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2RnE" role="1PaTwD">
                  <property role="3oM_SC" value="delete" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2RnV" role="1PaTwD">
                  <property role="3oM_SC" value="plugs" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2Rot" role="1PaTwD">
                  <property role="3oM_SC" value="&amp;" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2RoC" role="1PaTwD">
                  <property role="3oM_SC" value="sockets" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2RoW" role="1PaTwD">
                  <property role="3oM_SC" value="right" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2Rq6" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="1KgvZpg2Rqk" role="1PaTwD">
                  <property role="3oM_SC" value="diagram" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1KgvZpg2OTO" role="3cqZAp">
              <node concept="1rXfSq" id="1KgvZpg2OTP" role="3clFbG">
                <ref role="37wK5l" node="5er1YemzCRH" resolve="addFunctionBlock" />
                <node concept="2GrUjf" id="1KgvZpg2OTQ" role="37wK5m">
                  <ref role="2Gs0qQ" node="1KgvZpg2OTM" resolve="component" />
                </node>
                <node concept="3clFbT" id="1KgvZpg2QEn" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1KgvZpg2OTS" role="2GsD0m">
            <node concept="37vLTw" id="1KgvZpg3bRk" role="2Oq$k0">
              <ref role="3cqZAo" node="1KgvZpg2V22" resolve="network" />
            </node>
            <node concept="liA8E" id="1KgvZpg2RRZ" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FBNetwork.getContextComponents()" resolve="getContextComponents" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1KgvZpg3wT2" role="3cqZAp">
          <node concept="3cpWsn" id="1KgvZpg3wT3" role="3cpWs9">
            <property role="TrG5h" value="contextEventSources" />
            <node concept="3uibUv" id="1KgvZpg3ujL" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1KgvZpg3ujO" role="11_B2D">
                <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="1KgvZpg3wT4" role="33vP2m">
              <node concept="37vLTw" id="1KgvZpg3wT5" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpg2V22" resolve="network" />
              </node>
              <node concept="liA8E" id="1KgvZpg3wT6" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBNetwork.getContextEventSources()" resolve="getContextEventSources" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="1KgvZpg3y4W" role="3cqZAp">
          <node concept="3clFbS" id="1KgvZpg3y4X" role="2LFqv$">
            <node concept="3clFbF" id="1KgvZpg3y4Y" role="3cqZAp">
              <node concept="1rXfSq" id="1KgvZpg3y4Z" role="3clFbG">
                <ref role="37wK5l" node="5er1YemzvhN" resolve="addInterfaceEndpoint" />
                <node concept="37vLTw" id="1KgvZpg3y50" role="37wK5m">
                  <ref role="3cqZAo" node="1KgvZpg3y57" resolve="i" />
                </node>
                <node concept="Rm8GO" id="1KgvZpg3$em" role="37wK5m">
                  <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                  <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                </node>
                <node concept="3clFbT" id="1KgvZpg3y52" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="1KgvZpg3y53" role="37wK5m">
                  <node concept="37vLTw" id="1KgvZpg3_ml" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KgvZpg3wT3" resolve="contextEventSources" />
                  </node>
                  <node concept="liA8E" id="1KgvZpg3y55" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="1KgvZpg3y56" role="37wK5m">
                      <ref role="3cqZAo" node="1KgvZpg3y57" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1KgvZpg3y57" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1KgvZpg3y58" role="1tU5fm" />
            <node concept="3cmrfG" id="1KgvZpg3y59" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uNrnE" id="1KgvZpg3y5a" role="1Dwrff">
            <node concept="37vLTw" id="1KgvZpg3y5b" role="2$L3a6">
              <ref role="3cqZAo" node="1KgvZpg3y57" resolve="i" />
            </node>
          </node>
          <node concept="3eOVzh" id="1KgvZpg3y5c" role="1Dwp0S">
            <node concept="2OqwBi" id="1KgvZpg3y5d" role="3uHU7w">
              <node concept="37vLTw" id="1KgvZpg3_a6" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpg3wT3" resolve="contextEventSources" />
              </node>
              <node concept="liA8E" id="1KgvZpg3y5f" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="1KgvZpg3y5g" role="3uHU7B">
              <ref role="3cqZAo" node="1KgvZpg3y57" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1KgvZpg3EPw" role="3cqZAp">
          <node concept="3cpWsn" id="1KgvZpg3EPx" role="3cpWs9">
            <property role="TrG5h" value="contextEventDestinations" />
            <node concept="3uibUv" id="1KgvZpg3Dbf" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1KgvZpg3Dbi" role="11_B2D">
                <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="1KgvZpg3EPy" role="33vP2m">
              <node concept="37vLTw" id="1KgvZpg3EPz" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpg2V22" resolve="network" />
              </node>
              <node concept="liA8E" id="1KgvZpg3EP$" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBNetwork.getContextEventDestinations()" resolve="getContextEventDestinations" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="1KgvZpg3AP_" role="3cqZAp">
          <node concept="3clFbS" id="1KgvZpg3APA" role="2LFqv$">
            <node concept="3clFbF" id="1KgvZpg3APB" role="3cqZAp">
              <node concept="1rXfSq" id="1KgvZpg3APC" role="3clFbG">
                <ref role="37wK5l" node="5er1YemzvhN" resolve="addInterfaceEndpoint" />
                <node concept="37vLTw" id="1KgvZpg3APD" role="37wK5m">
                  <ref role="3cqZAo" node="1KgvZpg3APK" resolve="i" />
                </node>
                <node concept="Rm8GO" id="1KgvZpg3APE" role="37wK5m">
                  <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                  <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                </node>
                <node concept="3clFbT" id="1KgvZpg3APF" role="37wK5m" />
                <node concept="2OqwBi" id="1KgvZpg3APG" role="37wK5m">
                  <node concept="37vLTw" id="1KgvZpg3HT2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KgvZpg3EPx" resolve="contextEventDestinations" />
                  </node>
                  <node concept="liA8E" id="1KgvZpg3API" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="1KgvZpg3APJ" role="37wK5m">
                      <ref role="3cqZAo" node="1KgvZpg3APK" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1KgvZpg3APK" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1KgvZpg3APL" role="1tU5fm" />
            <node concept="3cmrfG" id="1KgvZpg3APM" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uNrnE" id="1KgvZpg3APN" role="1Dwrff">
            <node concept="37vLTw" id="1KgvZpg3APO" role="2$L3a6">
              <ref role="3cqZAo" node="1KgvZpg3APK" resolve="i" />
            </node>
          </node>
          <node concept="3eOVzh" id="1KgvZpg3APP" role="1Dwp0S">
            <node concept="2OqwBi" id="1KgvZpg3APQ" role="3uHU7w">
              <node concept="37vLTw" id="1KgvZpg3HGN" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpg3EPx" resolve="contextEventDestinations" />
              </node>
              <node concept="liA8E" id="1KgvZpg3APS" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="1KgvZpg3APT" role="3uHU7B">
              <ref role="3cqZAo" node="1KgvZpg3APK" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6xq_LPBzkls" role="3cqZAp">
          <node concept="3cpWsn" id="6xq_LPBzklv" role="3cpWs9">
            <property role="TrG5h" value="events" />
            <node concept="10Oyi0" id="6xq_LPBzklq" role="1tU5fm" />
            <node concept="2YIFZM" id="6xq_LPBzD0A" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="2OqwBi" id="6xq_LPBzD0F" role="37wK5m">
                <node concept="37vLTw" id="6xq_LPBzD0G" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KgvZpg3wT3" resolve="contextEventSources" />
                </node>
                <node concept="liA8E" id="6xq_LPBzD0H" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
              <node concept="2OqwBi" id="6xq_LPBzD0C" role="37wK5m">
                <node concept="37vLTw" id="6xq_LPBzD0D" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KgvZpg3EPx" resolve="contextEventDestinations" />
                </node>
                <node concept="liA8E" id="6xq_LPBzD0E" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1KgvZpg3clg" role="3cqZAp">
          <node concept="3cpWsn" id="1KgvZpg3clh" role="3cpWs9">
            <property role="TrG5h" value="contextDataSources" />
            <node concept="3uibUv" id="1KgvZpg3bZQ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1KgvZpg3bZT" role="11_B2D">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="1KgvZpg3cli" role="33vP2m">
              <node concept="37vLTw" id="1KgvZpg3clj" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpg2V22" resolve="network" />
              </node>
              <node concept="liA8E" id="1KgvZpg3clk" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBNetwork.getContextDataSources()" resolve="getContextDataSources" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="1KgvZpg3cPB" role="3cqZAp">
          <node concept="3clFbS" id="1KgvZpg3cPD" role="2LFqv$">
            <node concept="3clFbF" id="1KgvZpg3o0y" role="3cqZAp">
              <node concept="1rXfSq" id="1KgvZpg3o0w" role="3clFbG">
                <ref role="37wK5l" node="5er1YemzvhN" resolve="addInterfaceEndpoint" />
                <node concept="3cpWs3" id="6xq_LPBzDya" role="37wK5m">
                  <node concept="37vLTw" id="6xq_LPBzMwV" role="3uHU7w">
                    <ref role="3cqZAo" node="1KgvZpg3cPE" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="6xq_LPBzJsx" role="3uHU7B">
                    <ref role="3cqZAo" node="6xq_LPBzklv" resolve="events" />
                  </node>
                </node>
                <node concept="Rm8GO" id="1KgvZpg3ong" role="37wK5m">
                  <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                  <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                </node>
                <node concept="3clFbT" id="1KgvZpg3pbF" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="1KgvZpg3mU5" role="37wK5m">
                  <node concept="37vLTw" id="1KgvZpg3ml2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KgvZpg3clh" resolve="contextDataSources" />
                  </node>
                  <node concept="liA8E" id="1KgvZpg3nBl" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="1KgvZpg3nQq" role="37wK5m">
                      <ref role="3cqZAo" node="1KgvZpg3cPE" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1KgvZpg3cPE" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1KgvZpg3d1K" role="1tU5fm" />
            <node concept="3cmrfG" id="1KgvZpg3d2D" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uNrnE" id="1KgvZpg3e2b" role="1Dwrff">
            <node concept="37vLTw" id="1KgvZpg3e2d" role="2$L3a6">
              <ref role="3cqZAo" node="1KgvZpg3cPE" resolve="i" />
            </node>
          </node>
          <node concept="3eOVzh" id="1KgvZpg3kb_" role="1Dwp0S">
            <node concept="2OqwBi" id="1KgvZpg3lwD" role="3uHU7w">
              <node concept="37vLTw" id="1KgvZpg3kn2" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpg3clh" resolve="contextDataSources" />
              </node>
              <node concept="liA8E" id="1KgvZpg3m7r" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="1KgvZpg3jbO" role="3uHU7B">
              <ref role="3cqZAo" node="1KgvZpg3cPE" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1KgvZpg3sPc" role="3cqZAp">
          <node concept="3cpWsn" id="1KgvZpg3sPd" role="3cpWs9">
            <property role="TrG5h" value="contextDataDestinations" />
            <node concept="3uibUv" id="1KgvZpg3sqJ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1KgvZpg3sqM" role="11_B2D">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="1KgvZpg3sPe" role="33vP2m">
              <node concept="37vLTw" id="1KgvZpg3sPf" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpg2V22" resolve="network" />
              </node>
              <node concept="liA8E" id="1KgvZpg3sPg" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FBNetwork.getContextDataDestinations()" resolve="getContextDataDestinations" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="1KgvZpg3tYh" role="3cqZAp">
          <node concept="3clFbS" id="1KgvZpg3tYi" role="2LFqv$">
            <node concept="3clFbF" id="1KgvZpg3tYj" role="3cqZAp">
              <node concept="1rXfSq" id="1KgvZpg3tYk" role="3clFbG">
                <ref role="37wK5l" node="5er1YemzvhN" resolve="addInterfaceEndpoint" />
                <node concept="3cpWs3" id="6xq_LPBzPpp" role="37wK5m">
                  <node concept="37vLTw" id="6xq_LPBzSC8" role="3uHU7B">
                    <ref role="3cqZAo" node="6xq_LPBzklv" resolve="events" />
                  </node>
                  <node concept="37vLTw" id="1KgvZpg3tYl" role="3uHU7w">
                    <ref role="3cqZAo" node="1KgvZpg3tYs" resolve="i" />
                  </node>
                </node>
                <node concept="Rm8GO" id="1KgvZpg3tYm" role="37wK5m">
                  <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                  <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                </node>
                <node concept="3clFbT" id="1KgvZpg3tYn" role="37wK5m" />
                <node concept="2OqwBi" id="1KgvZpg3tYo" role="37wK5m">
                  <node concept="37vLTw" id="1KgvZpg3vYM" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KgvZpg3sPd" resolve="contextDataDestinations" />
                  </node>
                  <node concept="liA8E" id="1KgvZpg3tYq" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="1KgvZpg3tYr" role="37wK5m">
                      <ref role="3cqZAo" node="1KgvZpg3tYs" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1KgvZpg3tYs" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1KgvZpg3tYt" role="1tU5fm" />
            <node concept="3cmrfG" id="1KgvZpg3tYu" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uNrnE" id="1KgvZpg3tYv" role="1Dwrff">
            <node concept="37vLTw" id="1KgvZpg3tYw" role="2$L3a6">
              <ref role="3cqZAo" node="1KgvZpg3tYs" resolve="i" />
            </node>
          </node>
          <node concept="3eOVzh" id="1KgvZpg3tYx" role="1Dwp0S">
            <node concept="2OqwBi" id="1KgvZpg3tYy" role="3uHU7w">
              <node concept="37vLTw" id="1KgvZpg3wNO" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpg3sPd" resolve="contextDataDestinations" />
              </node>
              <node concept="liA8E" id="1KgvZpg3tY$" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="1KgvZpg3tY_" role="3uHU7B">
              <ref role="3cqZAo" node="1KgvZpg3tYs" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1hwo9XLHG$Q" role="1B3o_S" />
      <node concept="3cqZAl" id="1hwo9XLHG$R" role="3clF45" />
      <node concept="37vLTG" id="1KgvZpg2V22" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="1KgvZpg2V21" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
        </node>
      </node>
      <node concept="37vLTG" id="1KgvZpg30gG" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="1KgvZpg34y2" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="47wAAQ5jq4l" role="jymVt" />
    <node concept="3clFb_" id="47wAAQ5je1j" role="jymVt">
      <property role="TrG5h" value="initConnections" />
      <node concept="3Tm6S6" id="47wAAQ5je1k" role="1B3o_S" />
      <node concept="3cqZAl" id="47wAAQ5je1l" role="3clF45" />
      <node concept="37vLTG" id="47wAAQ5je17" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="47wAAQ5je18" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
        </node>
      </node>
      <node concept="37vLTG" id="47wAAQ5je19" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="47wAAQ5je1a" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="47wAAQ5je0C" role="3clF47">
        <node concept="2Gpval" id="47wAAQ5je0D" role="3cqZAp">
          <node concept="2GrKxI" id="47wAAQ5je0E" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="3clFbS" id="47wAAQ5je0F" role="2LFqv$">
            <node concept="3clFbF" id="47wAAQ5je0G" role="3cqZAp">
              <node concept="1rXfSq" id="47wAAQ5je0H" role="3clFbG">
                <ref role="37wK5l" node="5er1YemzHdf" resolve="addConnection" />
                <node concept="2GrUjf" id="47wAAQ5je0I" role="37wK5m">
                  <ref role="2Gs0qQ" node="47wAAQ5je0E" resolve="connection" />
                </node>
                <node concept="37vLTw" id="47wAAQ5je1b" role="37wK5m">
                  <ref role="3cqZAo" node="47wAAQ5je19" resolve="editable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="47wAAQ5je0K" role="2GsD0m">
            <node concept="37vLTw" id="47wAAQ5je1d" role="2Oq$k0">
              <ref role="3cqZAo" node="47wAAQ5je17" resolve="network" />
            </node>
            <node concept="liA8E" id="47wAAQ5je0M" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FBNetwork.getEventConnections()" resolve="getEventConnections" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="47wAAQ5je0N" role="3cqZAp">
          <node concept="2GrKxI" id="47wAAQ5je0O" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="3clFbS" id="47wAAQ5je0P" role="2LFqv$">
            <node concept="3clFbF" id="47wAAQ5je0Q" role="3cqZAp">
              <node concept="1rXfSq" id="47wAAQ5je0R" role="3clFbG">
                <ref role="37wK5l" node="5er1YemzHdf" resolve="addConnection" />
                <node concept="2GrUjf" id="47wAAQ5je0S" role="37wK5m">
                  <ref role="2Gs0qQ" node="47wAAQ5je0O" resolve="connection" />
                </node>
                <node concept="37vLTw" id="47wAAQ5je1f" role="37wK5m">
                  <ref role="3cqZAo" node="47wAAQ5je19" resolve="editable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="47wAAQ5je0U" role="2GsD0m">
            <node concept="37vLTw" id="47wAAQ5je1e" role="2Oq$k0">
              <ref role="3cqZAo" node="47wAAQ5je17" resolve="network" />
            </node>
            <node concept="liA8E" id="47wAAQ5je0W" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FBNetwork.getDataConnections()" resolve="getDataConnections" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="47wAAQ5je0X" role="3cqZAp">
          <node concept="2GrKxI" id="47wAAQ5je0Y" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="3clFbS" id="47wAAQ5je0Z" role="2LFqv$">
            <node concept="3clFbF" id="47wAAQ5je10" role="3cqZAp">
              <node concept="1rXfSq" id="47wAAQ5je11" role="3clFbG">
                <ref role="37wK5l" node="5er1YemzHdf" resolve="addConnection" />
                <node concept="2GrUjf" id="47wAAQ5je12" role="37wK5m">
                  <ref role="2Gs0qQ" node="47wAAQ5je0Y" resolve="connection" />
                </node>
                <node concept="37vLTw" id="47wAAQ5je1g" role="37wK5m">
                  <ref role="3cqZAo" node="47wAAQ5je19" resolve="editable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="47wAAQ5je14" role="2GsD0m">
            <node concept="37vLTw" id="47wAAQ5je1c" role="2Oq$k0">
              <ref role="3cqZAo" node="47wAAQ5je17" resolve="network" />
            </node>
            <node concept="liA8E" id="47wAAQ5je16" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FBNetwork.getAdapterConnections()" resolve="getAdapterConnections" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5hluBvQ7xwV" role="jymVt" />
    <node concept="3clFb_" id="5er1YemzvhN" role="jymVt">
      <property role="TrG5h" value="addInterfaceEndpoint" />
      <node concept="3clFbS" id="5er1YemzvhQ" role="3clF47">
        <node concept="3cpWs8" id="5hluBvQ9van" role="3cqZAp">
          <node concept="3cpWsn" id="5hluBvQ9vao" role="3cpWs9">
            <property role="TrG5h" value="view" />
            <node concept="3uibUv" id="5hluBvQ9pMx" role="1tU5fm">
              <ref role="3uigEE" node="5er1Yemzkuz" resolve="InterfaceEndpointView" />
            </node>
            <node concept="2ShNRf" id="5hluBvQ9vap" role="33vP2m">
              <node concept="1pGfFk" id="5hluBvQ9vaq" role="2ShVmc">
                <ref role="37wK5l" node="5hluBvQ4u1D" resolve="InterfaceEndpointView" />
                <node concept="37vLTw" id="5hluBvQ9vas" role="37wK5m">
                  <ref role="3cqZAo" node="5er1Yemz$Tx" resolve="position" />
                </node>
                <node concept="37vLTw" id="5hluBvQ9vat" role="37wK5m">
                  <ref role="3cqZAo" node="5er1Yemz_9L" resolve="kind" />
                </node>
                <node concept="37vLTw" id="5hluBvQ9vau" role="37wK5m">
                  <ref role="3cqZAo" node="5er1Yemz_Y9" resolve="source" />
                </node>
                <node concept="37vLTw" id="5hluBvQ9vav" role="37wK5m">
                  <ref role="3cqZAo" node="5er1YemzASt" resolve="declaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Hbpy_fyU48" role="3cqZAp">
          <node concept="2OqwBi" id="4Hbpy_fyUvN" role="3clFbG">
            <node concept="37vLTw" id="4Hbpy_fyU46" role="2Oq$k0">
              <ref role="3cqZAo" node="4Hbpy_fxY4g" resolve="myElementModelMap" />
            </node>
            <node concept="liA8E" id="4Hbpy_fyV3k" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="4Hbpy_fyWu_" role="37wK5m">
                <ref role="3cqZAo" node="5er1YemzASt" resolve="declaration" />
              </node>
              <node concept="37vLTw" id="4Hbpy_fyWMY" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ9vao" resolve="view" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ9veL" role="3cqZAp">
          <node concept="2OqwBi" id="5hluBvQ9vO_" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ9veI" role="2Oq$k0">
              <ref role="3cqZAo" node="5hluBvQ6L3C" resolve="myMainComponents" />
            </node>
            <node concept="liA8E" id="5hluBvQ9wyW" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="5hluBvQ9wRw" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ9vao" resolve="view" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V49AcvPpBl" role="3cqZAp">
          <node concept="2OqwBi" id="3V49AcvPq4s" role="3clFbG">
            <node concept="37vLTw" id="3V49AcvPpBj" role="2Oq$k0">
              <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
            </node>
            <node concept="liA8E" id="3V49AcvPqJH" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="3V49AcvPrIb" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ9vao" resolve="view" />
              </node>
              <node concept="37vLTw" id="3V49AcvPs3v" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ9vao" resolve="view" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xq_LPB_IJF" role="3cqZAp">
          <node concept="2OqwBi" id="6xq_LPB_JmS" role="3clFbG">
            <node concept="37vLTw" id="6xq_LPB_IJD" role="2Oq$k0">
              <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
            </node>
            <node concept="liA8E" id="6xq_LPB_Khe" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="2YIFZM" id="6xq_LPB_MQR" role="37wK5m">
                <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
                <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                <node concept="10Nm6u" id="6xq_LPB_N79" role="37wK5m" />
                <node concept="37vLTw" id="6xq_LPB_Nm0" role="37wK5m">
                  <ref role="3cqZAo" node="5er1Yemz_9L" resolve="kind" />
                </node>
                <node concept="37vLTw" id="6xq_LPB_NyO" role="37wK5m">
                  <ref role="3cqZAo" node="5er1YemzASt" resolve="declaration" />
                </node>
              </node>
              <node concept="37vLTw" id="6xq_LPB_NXI" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ9vao" resolve="view" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xq_LPBwRT2" role="3cqZAp">
          <node concept="2OqwBi" id="6xq_LPBwSCE" role="3clFbG">
            <node concept="37vLTw" id="6xq_LPBwRT0" role="2Oq$k0">
              <ref role="3cqZAo" node="5er1YemzoQN" resolve="myComponentToPorts" />
            </node>
            <node concept="liA8E" id="6xq_LPBwTOx" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="6xq_LPBwVHC" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ9vao" resolve="view" />
              </node>
              <node concept="2YIFZM" id="6xq_LPBwW$q" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="37vLTw" id="6xq_LPBwWKp" role="37wK5m">
                  <ref role="3cqZAo" node="5hluBvQ9vao" resolve="view" />
                </node>
                <node concept="3uibUv" id="6xq_LPBwX7R" role="3PaCim">
                  <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1KgvZpg4hh$" role="1B3o_S" />
      <node concept="37vLTG" id="5er1Yemz$Tx" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="10Oyi0" id="5er1Yemz$Tw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5er1Yemz_9L" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="5er1Yemz_U$" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
        </node>
      </node>
      <node concept="37vLTG" id="5er1Yemz_Y9" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="10P_77" id="5er1YemzAf2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5er1YemzASt" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="5er1YemzBe_" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
      </node>
      <node concept="3cqZAl" id="5er1YemzBid" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5er1YemzBxm" role="jymVt" />
    <node concept="3clFb_" id="5er1YemzCRH" role="jymVt">
      <property role="TrG5h" value="addFunctionBlock" />
      <node concept="3clFbS" id="5er1YemzCRK" role="3clF47">
        <node concept="3cpWs8" id="5hluBvQ88Yk" role="3cqZAp">
          <node concept="3cpWsn" id="5hluBvQ88Yl" role="3cpWs9">
            <property role="TrG5h" value="view" />
            <node concept="3uibUv" id="5hluBvQ88Wv" role="1tU5fm">
              <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
            </node>
            <node concept="2ShNRf" id="5hluBvQ88Ym" role="33vP2m">
              <node concept="1pGfFk" id="5hluBvQ88Yn" role="2ShVmc">
                <ref role="37wK5l" node="5er1Yem_uh3" resolve="FunctionBlockView" />
                <node concept="37vLTw" id="5hluBvQ88Yp" role="37wK5m">
                  <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
                </node>
                <node concept="37vLTw" id="5hluBvQ88Yq" role="37wK5m">
                  <ref role="3cqZAo" node="5er1YemzGnK" resolve="editable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Hbpy_fyci_" role="3cqZAp">
          <node concept="2OqwBi" id="4Hbpy_fyiBM" role="3clFbG">
            <node concept="37vLTw" id="4Hbpy_fyciz" role="2Oq$k0">
              <ref role="3cqZAo" node="4Hbpy_fxY4g" resolve="myElementModelMap" />
            </node>
            <node concept="liA8E" id="4Hbpy_fylSn" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="4Hbpy_fyndE" role="37wK5m">
                <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
              </node>
              <node concept="37vLTw" id="4Hbpy_fynzA" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ9r5a" role="3cqZAp">
          <node concept="2OqwBi" id="5hluBvQ9sE$" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ9r58" role="2Oq$k0">
              <ref role="3cqZAo" node="5hluBvQ6L3C" resolve="myMainComponents" />
            </node>
            <node concept="liA8E" id="5hluBvQ9uDY" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="5hluBvQ9uM4" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5hluBvQ85LN" role="3cqZAp">
          <node concept="3cpWsn" id="5hluBvQ85LO" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3uibUv" id="5hluBvQ85Li" role="1tU5fm">
              <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
            </node>
            <node concept="2OqwBi" id="5hluBvQ85LP" role="33vP2m">
              <node concept="37vLTw" id="5hluBvQ85LQ" role="2Oq$k0">
                <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
              </node>
              <node concept="liA8E" id="5hluBvQ85LR" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getType()" resolve="getType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5hluBvQ9FIN" role="3cqZAp">
          <node concept="3cpWsn" id="5hluBvQ9FIO" role="3cpWs9">
            <property role="TrG5h" value="exts" />
            <node concept="3uibUv" id="5hluBvQ9FIL" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~HashSet" resolve="HashSet" />
              <node concept="3uibUv" id="5hluBvQ9K6F" role="11_B2D">
                <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2ShNRf" id="5hluBvQ9Rl3" role="33vP2m">
              <node concept="1pGfFk" id="5hluBvQ9RzS" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="5hluBvQ9RNL" role="1pMfVU">
                  <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V49AcvQERr" role="3cqZAp">
          <node concept="2OqwBi" id="3V49AcvQHiF" role="3clFbG">
            <node concept="37vLTw" id="3V49AcvQERp" role="2Oq$k0">
              <ref role="3cqZAo" node="5hluBvQ7ia3" resolve="myAuxComponents" />
            </node>
            <node concept="liA8E" id="3V49AcvQK2J" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="3V49AcvQLcT" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
              </node>
              <node concept="37vLTw" id="3V49AcvQLAo" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ9FIO" resolve="exts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5hluBvQ9UuD" role="3cqZAp">
          <node concept="2GrKxI" id="5hluBvQ9UuF" role="2Gsz3X">
            <property role="TrG5h" value="parameter" />
          </node>
          <node concept="2OqwBi" id="5hluBvQ9Xg9" role="2GsD0m">
            <node concept="37vLTw" id="5hluBvQ9VUw" role="2Oq$k0">
              <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
            </node>
            <node concept="liA8E" id="2jkJwnb4c97" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getParameters()" resolve="getParameters" />
            </node>
          </node>
          <node concept="3clFbS" id="5hluBvQ9UuJ" role="2LFqv$">
            <node concept="3cpWs8" id="3V49AcvOUdR" role="3cqZAp">
              <node concept="3cpWsn" id="3V49AcvOUdS" role="3cpWs9">
                <property role="TrG5h" value="parameterDeclaration" />
                <node concept="3uibUv" id="3V49AcvOP9U" role="1tU5fm">
                  <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
                </node>
                <node concept="2OqwBi" id="3V49AcvOUdT" role="33vP2m">
                  <node concept="2OqwBi" id="3V49AcvOUdU" role="2Oq$k0">
                    <node concept="2GrUjf" id="3V49AcvOUdV" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="5hluBvQ9UuF" resolve="parameter" />
                    </node>
                    <node concept="liA8E" id="3V49AcvOUdW" role="2OqNvi">
                      <ref role="37wK5l" to="cwd8:~ParameterAssignment.getParameterReference()" resolve="getParameterReference" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3V49AcvOUdX" role="2OqNvi">
                    <ref role="37wK5l" to="7adg:~Reference.getTarget()" resolve="getTarget" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3V49AcvOW3C" role="3cqZAp">
              <node concept="3clFbS" id="3V49AcvOW3E" role="3clFbx">
                <node concept="3SKdUt" id="2jkJwnb4NoO" role="3cqZAp">
                  <node concept="1PaTwC" id="2jkJwnb4NoP" role="1aUNEU">
                    <node concept="3oM_SD" id="2jkJwnb4NoR" role="1PaTwD">
                      <property role="3oM_SC" value="TODO" />
                    </node>
                    <node concept="3oM_SD" id="2jkJwnb4Np8" role="1PaTwD">
                      <property role="3oM_SC" value="handle" />
                    </node>
                    <node concept="3oM_SD" id="2jkJwnb4Npb" role="1PaTwD">
                      <property role="3oM_SC" value="broken" />
                    </node>
                    <node concept="3oM_SD" id="2jkJwnb4NpJ" role="1PaTwD">
                      <property role="3oM_SC" value="parameters" />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="3V49AcvOWyd" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="3V49AcvOWqb" role="3clFbw">
                <node concept="10Nm6u" id="3V49AcvOWxH" role="3uHU7w" />
                <node concept="37vLTw" id="3V49AcvOW8o" role="3uHU7B">
                  <ref role="3cqZAo" node="3V49AcvOUdS" resolve="parameterDeclaration" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3V49AcvOOld" role="3cqZAp">
              <node concept="3cpWsn" id="3V49AcvOOle" role="3cpWs9">
                <property role="TrG5h" value="declaration" />
                <node concept="3uibUv" id="3V49AcvOOkS" role="1tU5fm">
                  <ref role="3uigEE" to="cwd8:~FBInterfaceDeclaration" resolve="FBInterfaceDeclaration" />
                </node>
                <node concept="0kSF2" id="3V49AcvOOlf" role="33vP2m">
                  <node concept="3uibUv" id="3V49AcvOOlg" role="0kSFW">
                    <ref role="3uigEE" to="cwd8:~FBInterfaceDeclaration" resolve="FBInterfaceDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="3V49AcvOOlh" role="0kSFX">
                    <node concept="37vLTw" id="3V49AcvOUdY" role="2Oq$k0">
                      <ref role="3cqZAo" node="3V49AcvOUdS" resolve="parameterDeclaration" />
                    </node>
                    <node concept="liA8E" id="3V49AcvOOln" role="2OqNvi">
                      <ref role="37wK5l" to="cwd8:~ParameterDeclaration.getContainer()" resolve="getContainer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3V49AcvOWZ6" role="3cqZAp">
              <node concept="3cpWsn" id="3V49AcvOWZ7" role="3cpWs9">
                <property role="TrG5h" value="index" />
                <node concept="10Oyi0" id="3V49AcvOWSf" role="1tU5fm" />
                <node concept="2OqwBi" id="3V49AcvOWZ8" role="33vP2m">
                  <node concept="2OqwBi" id="3V49AcvOWZ9" role="2Oq$k0">
                    <node concept="37vLTw" id="3V49AcvOWZa" role="2Oq$k0">
                      <ref role="3cqZAo" node="3V49AcvOOle" resolve="declaration" />
                    </node>
                    <node concept="liA8E" id="3V49AcvOWZb" role="2OqNvi">
                      <ref role="37wK5l" to="cwd8:~FBInterfaceDeclaration.getInputParameters()" resolve="getInputParameters" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3V49AcvOWZc" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.indexOf(java.lang.Object)" resolve="indexOf" />
                    <node concept="37vLTw" id="3V49AcvOWZd" role="37wK5m">
                      <ref role="3cqZAo" node="3V49AcvOUdS" resolve="parameterDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2jkJwnb59aC" role="3cqZAp" />
            <node concept="3cpWs8" id="3V49AcvQiI3" role="3cqZAp">
              <node concept="3cpWsn" id="3V49AcvQiI4" role="3cpWs9">
                <property role="TrG5h" value="oppositePortView" />
                <node concept="3uibUv" id="3V49AcvQi0T" role="1tU5fm">
                  <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                </node>
                <node concept="2ShNRf" id="3V49AcvQiI5" role="33vP2m">
                  <node concept="1pGfFk" id="3V49AcvQiI6" role="2ShVmc">
                    <ref role="37wK5l" node="~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean,org.fbme.lib.common.Declaration)" resolve="FunctionBlockPortView" />
                    <node concept="37vLTw" id="3V49AcvQiI7" role="37wK5m">
                      <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                    </node>
                    <node concept="37vLTw" id="3V49AcvQiI8" role="37wK5m">
                      <ref role="3cqZAo" node="3V49AcvOWZ7" resolve="index" />
                    </node>
                    <node concept="Rm8GO" id="3V49AcvQiI9" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="3clFbT" id="3V49AcvQiIa" role="37wK5m" />
                    <node concept="37vLTw" id="3V49AcvQiIb" role="37wK5m">
                      <ref role="3cqZAo" node="3V49AcvOUdS" resolve="parameterDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3V49AcvP5MH" role="3cqZAp">
              <node concept="3cpWsn" id="3V49AcvP5MI" role="3cpWs9">
                <property role="TrG5h" value="inlineValueView" />
                <node concept="3uibUv" id="3V49AcvP5Br" role="1tU5fm">
                  <ref role="3uigEE" node="5er1Yemzkpx" resolve="InlineValueView" />
                </node>
                <node concept="2ShNRf" id="3V49AcvP5MJ" role="33vP2m">
                  <node concept="1pGfFk" id="3V49AcvP5MK" role="2ShVmc">
                    <ref role="37wK5l" node="2jkJwnb4wH$" resolve="InlineValueView" />
                    <node concept="37vLTw" id="3V49AcvQiIc" role="37wK5m">
                      <ref role="3cqZAo" node="3V49AcvQiI4" resolve="oppositePortView" />
                    </node>
                    <node concept="2OqwBi" id="3V49AcvPgqW" role="37wK5m">
                      <node concept="2GrUjf" id="3V49AcvPg0h" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ9UuF" resolve="parameter" />
                      </node>
                      <node concept="liA8E" id="3V49AcvPilq" role="2OqNvi">
                        <ref role="37wK5l" to="cwd8:~ParameterAssignment.getValue()" resolve="getValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Hbpy_fyqZs" role="3cqZAp">
              <node concept="2OqwBi" id="4Hbpy_fyqZt" role="3clFbG">
                <node concept="37vLTw" id="4Hbpy_fyqZu" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Hbpy_fxY4g" resolve="myElementModelMap" />
                </node>
                <node concept="liA8E" id="4Hbpy_fyqZv" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2GrUjf" id="4Hbpy_fywV7" role="37wK5m">
                    <ref role="2Gs0qQ" node="5hluBvQ9UuF" resolve="parameter" />
                  </node>
                  <node concept="37vLTw" id="4Hbpy_fywGQ" role="37wK5m">
                    <ref role="3cqZAo" node="3V49AcvP5MI" resolve="inlineValueView" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1KgvZpg4sfG" role="3cqZAp">
              <node concept="2OqwBi" id="1KgvZpg4sfI" role="3clFbG">
                <node concept="37vLTw" id="1KgvZpg4sfJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1YemzoQN" resolve="myComponentToPorts" />
                </node>
                <node concept="liA8E" id="1KgvZpg4sfK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="1KgvZpg4$Rg" role="37wK5m">
                    <ref role="3cqZAo" node="3V49AcvP5MI" resolve="inlineValueView" />
                  </node>
                  <node concept="2YIFZM" id="1KgvZpg548d" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Set.of(java.lang.Object)" resolve="of" />
                    <ref role="1Pybhc" to="33ny:~Set" resolve="Set" />
                    <node concept="37vLTw" id="1KgvZpg548e" role="37wK5m">
                      <ref role="3cqZAo" node="3V49AcvP5MI" resolve="inlineValueView" />
                    </node>
                    <node concept="3uibUv" id="1KgvZpg562s" role="3PaCim">
                      <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3V49AcvPlof" role="3cqZAp">
              <node concept="2OqwBi" id="3V49AcvPmG0" role="3clFbG">
                <node concept="37vLTw" id="3V49AcvPlod" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
                </node>
                <node concept="liA8E" id="3V49AcvPo3E" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="3V49AcvPoZ3" role="37wK5m">
                    <ref role="3cqZAo" node="3V49AcvP5MI" resolve="inlineValueView" />
                  </node>
                  <node concept="37vLTw" id="3V49AcvPpiW" role="37wK5m">
                    <ref role="3cqZAo" node="3V49AcvP5MI" resolve="inlineValueView" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3V49AcvPJIW" role="3cqZAp">
              <node concept="2OqwBi" id="3V49AcvPOOn" role="3clFbG">
                <node concept="37vLTw" id="3V49AcvPNVm" role="2Oq$k0">
                  <ref role="3cqZAo" node="5hluBvQ9FIO" resolve="exts" />
                </node>
                <node concept="liA8E" id="3V49AcvPQWB" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3V49AcvPRet" role="37wK5m">
                    <ref role="3cqZAo" node="3V49AcvP5MI" resolve="inlineValueView" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3V49AcvQ6Nr" role="3cqZAp">
              <node concept="3cpWsn" id="3V49AcvQ6Ns" role="3cpWs9">
                <property role="TrG5h" value="parameterConnectionView" />
                <node concept="3uibUv" id="3V49AcvQ66B" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
                </node>
                <node concept="2ShNRf" id="3V49AcvQ6Nt" role="33vP2m">
                  <node concept="1pGfFk" id="3V49AcvQ6Nu" role="2ShVmc">
                    <ref role="37wK5l" node="5er1Yem$wkt" resolve="NetworkConnectionView" />
                    <node concept="2GrUjf" id="3V49AcvQ6Nw" role="37wK5m">
                      <ref role="2Gs0qQ" node="5hluBvQ9UuF" resolve="parameter" />
                    </node>
                    <node concept="3clFbT" id="3V49AcvQ6Nx" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3V49AcvPSv1" role="3cqZAp">
              <node concept="2OqwBi" id="3V49AcvPUDd" role="3clFbG">
                <node concept="37vLTw" id="3V49AcvPSuZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yemzrn7" resolve="myConnectionSources" />
                </node>
                <node concept="liA8E" id="3V49AcvQw_d" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="3V49AcvQxBH" role="37wK5m">
                    <ref role="3cqZAo" node="3V49AcvQ6Ns" resolve="parameterConnectionView" />
                  </node>
                  <node concept="37vLTw" id="3V49AcvQyfU" role="37wK5m">
                    <ref role="3cqZAo" node="3V49AcvP5MI" resolve="inlineValueView" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3V49AcvQ$ir" role="3cqZAp">
              <node concept="2OqwBi" id="3V49AcvQ$is" role="3clFbG">
                <node concept="37vLTw" id="3V49AcvQCqr" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yemztay" resolve="myConnectionDestinations" />
                </node>
                <node concept="liA8E" id="3V49AcvQ$iu" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="3V49AcvQ$iv" role="37wK5m">
                    <ref role="3cqZAo" node="3V49AcvQ6Ns" resolve="parameterConnectionView" />
                  </node>
                  <node concept="37vLTw" id="3V49AcvQCC4" role="37wK5m">
                    <ref role="3cqZAo" node="3V49AcvQiI4" resolve="oppositePortView" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5hluBvQ8aP7" role="3cqZAp">
          <node concept="3cpWsn" id="5hluBvQ8aP8" role="3cpWs9">
            <property role="TrG5h" value="ports" />
            <node concept="3uibUv" id="5hluBvQ89Yp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~HashSet" resolve="HashSet" />
              <node concept="3uibUv" id="5hluBvQ89Ys" role="11_B2D">
                <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
              </node>
            </node>
            <node concept="2ShNRf" id="5hluBvQ8aP9" role="33vP2m">
              <node concept="1pGfFk" id="5hluBvQ8aPa" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="5hluBvQ8aPb" role="1pMfVU">
                  <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5hluBvQ8gCO" role="3cqZAp">
          <node concept="3cpWsn" id="5hluBvQ8gCR" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5hluBvQ8gCM" role="1tU5fm" />
            <node concept="3cmrfG" id="5hluBvQ8gOJ" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ8wWG" role="3cqZAp">
          <node concept="2OqwBi" id="5hluBvQ8xJ0" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ8wWE" role="2Oq$k0">
              <ref role="3cqZAo" node="5er1YemzoQN" resolve="myComponentToPorts" />
            </node>
            <node concept="liA8E" id="5hluBvQ8yHE" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="5hluBvQ8zlO" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
              </node>
              <node concept="37vLTw" id="5hluBvQ8zOm" role="37wK5m">
                <ref role="3cqZAo" node="5hluBvQ8aP8" resolve="ports" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5hluBvQ867j" role="3cqZAp">
          <node concept="2GrKxI" id="5hluBvQ867l" role="2Gsz3X">
            <property role="TrG5h" value="dataInput" />
          </node>
          <node concept="3clFbS" id="5hluBvQ867p" role="2LFqv$">
            <node concept="3cpWs8" id="5hluBvQ8sYl" role="3cqZAp">
              <node concept="3cpWsn" id="5hluBvQ8sYm" role="3cpWs9">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5hluBvQ8sIH" role="1tU5fm">
                  <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                </node>
                <node concept="2ShNRf" id="5hluBvQ8sYn" role="33vP2m">
                  <node concept="1pGfFk" id="5hluBvQ8sYo" role="2ShVmc">
                    <ref role="37wK5l" node="~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean,org.fbme.lib.common.Declaration)" resolve="FunctionBlockPortView" />
                    <node concept="37vLTw" id="5hluBvQ8sYp" role="37wK5m">
                      <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                    </node>
                    <node concept="3uNrnE" id="5hluBvQ8sYq" role="37wK5m">
                      <node concept="37vLTw" id="5hluBvQ8sYr" role="2$L3a6">
                        <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="5hluBvQ8sYs" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="3clFbT" id="5hluBvQ8sYt" role="37wK5m" />
                    <node concept="2OqwBi" id="5hluBvQ8sYu" role="37wK5m">
                      <node concept="2GrUjf" id="5hluBvQ8sYv" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ867l" resolve="dataInput" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ8sYw" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8c8N" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8d21" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8c8M" role="2Oq$k0">
                  <ref role="3cqZAo" node="5hluBvQ8aP8" resolve="ports" />
                </node>
                <node concept="liA8E" id="5hluBvQ8e7K" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5hluBvQ8sYx" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8sYm" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Hbpy_f$VHu" role="3cqZAp">
              <node concept="2OqwBi" id="4Hbpy_f$ZmF" role="3clFbG">
                <node concept="37vLTw" id="4Hbpy_f$VHs" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
                </node>
                <node concept="liA8E" id="4Hbpy_f_2Kv" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2YIFZM" id="4Hbpy_f_i6i" role="37wK5m">
                    <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                    <node concept="37vLTw" id="4Hbpy_f_i6j" role="37wK5m">
                      <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
                    </node>
                    <node concept="Rm8GO" id="4Hbpy_f_i6k" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="2OqwBi" id="4Hbpy_f_i6l" role="37wK5m">
                      <node concept="2GrUjf" id="4Hbpy_f_i6m" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ867l" resolve="dataInput" />
                      </node>
                      <node concept="liA8E" id="4Hbpy_f_i6n" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4Hbpy_f_beT" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8sYm" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8$_B" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8_k8" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8$__" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
                </node>
                <node concept="liA8E" id="5hluBvQ8_RU" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="5hluBvQ8AxE" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8sYm" resolve="port" />
                  </node>
                  <node concept="37vLTw" id="5hluBvQ8B2A" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5hluBvQ85Zb" role="2GsD0m">
            <node concept="37vLTw" id="5hluBvQ85R$" role="2Oq$k0">
              <ref role="3cqZAo" node="5hluBvQ85LO" resolve="type" />
            </node>
            <node concept="liA8E" id="5hluBvQ864Y" role="2OqNvi">
              <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDataInputPorts()" resolve="getDataInputPorts" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ8FEK" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ8Hws" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ8FEI" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
            </node>
            <node concept="3cmrfG" id="5hluBvQ8Ia_" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5hluBvQ8Bc0" role="3cqZAp">
          <node concept="2GrKxI" id="5hluBvQ8Bc1" role="2Gsz3X">
            <property role="TrG5h" value="dataOutput" />
          </node>
          <node concept="3clFbS" id="5hluBvQ8Bc2" role="2LFqv$">
            <node concept="3cpWs8" id="5hluBvQ8Bc3" role="3cqZAp">
              <node concept="3cpWsn" id="5hluBvQ8Bc4" role="3cpWs9">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5hluBvQ8Bc5" role="1tU5fm">
                  <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                </node>
                <node concept="2ShNRf" id="5hluBvQ8Bc6" role="33vP2m">
                  <node concept="1pGfFk" id="5hluBvQ8Bc7" role="2ShVmc">
                    <ref role="37wK5l" node="~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean,org.fbme.lib.common.Declaration)" resolve="FunctionBlockPortView" />
                    <node concept="37vLTw" id="5hluBvQ8Bc8" role="37wK5m">
                      <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                    </node>
                    <node concept="3uNrnE" id="5hluBvQ8Bc9" role="37wK5m">
                      <node concept="37vLTw" id="5hluBvQ8Bca" role="2$L3a6">
                        <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="5hluBvQ8Bcb" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="3clFbT" id="5hluBvQ8Bcc" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="5hluBvQ8Bcd" role="37wK5m">
                      <node concept="2GrUjf" id="5hluBvQ8Bce" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8Bc1" resolve="dataOutput" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ8Bcf" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8Bcg" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8Bch" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8Bci" role="2Oq$k0">
                  <ref role="3cqZAo" node="5hluBvQ8aP8" resolve="ports" />
                </node>
                <node concept="liA8E" id="5hluBvQ8Bcj" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5hluBvQ8Bck" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8Bc4" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Hbpy_f_oHZ" role="3cqZAp">
              <node concept="2OqwBi" id="4Hbpy_f_oI0" role="3clFbG">
                <node concept="37vLTw" id="4Hbpy_f_oI1" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
                </node>
                <node concept="liA8E" id="4Hbpy_f_oI2" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2YIFZM" id="4Hbpy_f_oI3" role="37wK5m">
                    <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                    <node concept="37vLTw" id="4Hbpy_f_oI4" role="37wK5m">
                      <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
                    </node>
                    <node concept="Rm8GO" id="4Hbpy_f_oI5" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="2OqwBi" id="4Hbpy_f_oI6" role="37wK5m">
                      <node concept="2GrUjf" id="4Hbpy_f__YY" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8Bc1" resolve="dataOutput" />
                      </node>
                      <node concept="liA8E" id="4Hbpy_f_oI8" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4Hbpy_f_oI9" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8Bc4" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8Bcl" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8Bcm" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8Bcn" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
                </node>
                <node concept="liA8E" id="5hluBvQ8Bco" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="5hluBvQ8Bcp" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8Bc4" resolve="port" />
                  </node>
                  <node concept="37vLTw" id="5hluBvQ8Bcq" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5hluBvQ8Bcr" role="2GsD0m">
            <node concept="37vLTw" id="5hluBvQ8Bcs" role="2Oq$k0">
              <ref role="3cqZAo" node="5hluBvQ85LO" resolve="type" />
            </node>
            <node concept="liA8E" id="5hluBvQ8DnC" role="2OqNvi">
              <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDataOutputPorts()" resolve="getDataOutputPorts" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ8Ie2" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ8Ie3" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ8Ie4" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
            </node>
            <node concept="3cmrfG" id="5hluBvQ8Ie5" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5hluBvQ8JUe" role="3cqZAp">
          <node concept="2GrKxI" id="5hluBvQ8JUf" role="2Gsz3X">
            <property role="TrG5h" value="dataInput" />
          </node>
          <node concept="3clFbS" id="5hluBvQ8JUg" role="2LFqv$">
            <node concept="3cpWs8" id="5hluBvQ8JUh" role="3cqZAp">
              <node concept="3cpWsn" id="5hluBvQ8JUi" role="3cpWs9">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5hluBvQ8JUj" role="1tU5fm">
                  <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                </node>
                <node concept="2ShNRf" id="5hluBvQ8JUk" role="33vP2m">
                  <node concept="1pGfFk" id="5hluBvQ8JUl" role="2ShVmc">
                    <ref role="37wK5l" node="~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean,org.fbme.lib.common.Declaration)" resolve="FunctionBlockPortView" />
                    <node concept="37vLTw" id="5hluBvQ8JUm" role="37wK5m">
                      <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                    </node>
                    <node concept="3uNrnE" id="5hluBvQ8JUn" role="37wK5m">
                      <node concept="37vLTw" id="5hluBvQ8JUo" role="2$L3a6">
                        <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="5hluBvQ8M6o" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="3clFbT" id="5hluBvQ8JUq" role="37wK5m" />
                    <node concept="2OqwBi" id="5hluBvQ8JUr" role="37wK5m">
                      <node concept="2GrUjf" id="5hluBvQ8JUs" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8JUf" resolve="dataInput" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ8JUt" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8JUu" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8JUv" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8JUw" role="2Oq$k0">
                  <ref role="3cqZAo" node="5hluBvQ8aP8" resolve="ports" />
                </node>
                <node concept="liA8E" id="5hluBvQ8JUx" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5hluBvQ8JUy" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8JUi" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Hbpy_f_Vy4" role="3cqZAp">
              <node concept="2OqwBi" id="4Hbpy_f_Vy5" role="3clFbG">
                <node concept="37vLTw" id="4Hbpy_f_Vy6" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
                </node>
                <node concept="liA8E" id="4Hbpy_f_Vy7" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2YIFZM" id="4Hbpy_f_Vy8" role="37wK5m">
                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                    <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
                    <node concept="37vLTw" id="4Hbpy_f_Vy9" role="37wK5m">
                      <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
                    </node>
                    <node concept="Rm8GO" id="4Hbpy_f_Vya" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="2OqwBi" id="4Hbpy_f_Vyb" role="37wK5m">
                      <node concept="2GrUjf" id="4Hbpy_fA92r" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8JUf" resolve="dataInput" />
                      </node>
                      <node concept="liA8E" id="4Hbpy_f_Vyd" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4Hbpy_f_Vye" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8JUi" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8JUz" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8JU$" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8JU_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
                </node>
                <node concept="liA8E" id="5hluBvQ8JUA" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="5hluBvQ8JUB" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8JUi" resolve="port" />
                  </node>
                  <node concept="37vLTw" id="5hluBvQ8JUC" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5hluBvQ8JUD" role="2GsD0m">
            <node concept="37vLTw" id="5hluBvQ8JUE" role="2Oq$k0">
              <ref role="3cqZAo" node="5hluBvQ85LO" resolve="type" />
            </node>
            <node concept="liA8E" id="5hluBvQ8OFc" role="2OqNvi">
              <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getEventInputPorts()" resolve="getEventInputPorts" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ8JUG" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ8JUH" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ8JUI" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
            </node>
            <node concept="3cmrfG" id="5hluBvQ8JUJ" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5hluBvQ8JUK" role="3cqZAp">
          <node concept="2GrKxI" id="5hluBvQ8JUL" role="2Gsz3X">
            <property role="TrG5h" value="dataOutput" />
          </node>
          <node concept="3clFbS" id="5hluBvQ8JUM" role="2LFqv$">
            <node concept="3cpWs8" id="5hluBvQ8JUN" role="3cqZAp">
              <node concept="3cpWsn" id="5hluBvQ8JUO" role="3cpWs9">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5hluBvQ8JUP" role="1tU5fm">
                  <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                </node>
                <node concept="2ShNRf" id="5hluBvQ8JUQ" role="33vP2m">
                  <node concept="1pGfFk" id="5hluBvQ8JUR" role="2ShVmc">
                    <ref role="37wK5l" node="~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean,org.fbme.lib.common.Declaration)" resolve="FunctionBlockPortView" />
                    <node concept="37vLTw" id="5hluBvQ8JUS" role="37wK5m">
                      <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                    </node>
                    <node concept="3uNrnE" id="5hluBvQ8JUT" role="37wK5m">
                      <node concept="37vLTw" id="5hluBvQ8JUU" role="2$L3a6">
                        <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="5hluBvQ8Nhm" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="3clFbT" id="5hluBvQ8JUW" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="5hluBvQ8JUX" role="37wK5m">
                      <node concept="2GrUjf" id="5hluBvQ8JUY" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8JUL" resolve="dataOutput" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ8JUZ" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8JV0" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8JV1" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8JV2" role="2Oq$k0">
                  <ref role="3cqZAo" node="5hluBvQ8aP8" resolve="ports" />
                </node>
                <node concept="liA8E" id="5hluBvQ8JV3" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5hluBvQ8JV4" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8JUO" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Hbpy_f_Gsm" role="3cqZAp">
              <node concept="2OqwBi" id="4Hbpy_f_Gsn" role="3clFbG">
                <node concept="37vLTw" id="4Hbpy_f_Gso" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
                </node>
                <node concept="liA8E" id="4Hbpy_f_Gsp" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2YIFZM" id="4Hbpy_f_Gsq" role="37wK5m">
                    <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                    <node concept="37vLTw" id="4Hbpy_f_Gsr" role="37wK5m">
                      <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
                    </node>
                    <node concept="Rm8GO" id="4Hbpy_f_IDw" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="2OqwBi" id="4Hbpy_f_Gst" role="37wK5m">
                      <node concept="2GrUjf" id="4Hbpy_f_Gsu" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8JUL" resolve="dataOutput" />
                      </node>
                      <node concept="liA8E" id="4Hbpy_f_Gsv" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4Hbpy_f_Gsw" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8JUO" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8JV5" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8JV6" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8JV7" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
                </node>
                <node concept="liA8E" id="5hluBvQ8JV8" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="5hluBvQ8JV9" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8JUO" resolve="port" />
                  </node>
                  <node concept="37vLTw" id="5hluBvQ8JVa" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5hluBvQ8JVb" role="2GsD0m">
            <node concept="37vLTw" id="5hluBvQ8JVc" role="2Oq$k0">
              <ref role="3cqZAo" node="5hluBvQ85LO" resolve="type" />
            </node>
            <node concept="liA8E" id="5hluBvQ8O$e" role="2OqNvi">
              <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getEventOutputPorts()" resolve="getEventOutputPorts" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ8Q5x" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ8Q5y" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ8Q5z" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
            </node>
            <node concept="3cmrfG" id="5hluBvQ8Q5$" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5hluBvQ8Q5F" role="3cqZAp">
          <node concept="2GrKxI" id="5hluBvQ8Q5G" role="2Gsz3X">
            <property role="TrG5h" value="socket" />
          </node>
          <node concept="3clFbS" id="5hluBvQ8Q5H" role="2LFqv$">
            <node concept="3cpWs8" id="5hluBvQ8Q5I" role="3cqZAp">
              <node concept="3cpWsn" id="5hluBvQ8Q5J" role="3cpWs9">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5hluBvQ8Q5K" role="1tU5fm">
                  <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                </node>
                <node concept="2ShNRf" id="5hluBvQ8Q5L" role="33vP2m">
                  <node concept="1pGfFk" id="5hluBvQ8Q5M" role="2ShVmc">
                    <ref role="37wK5l" node="~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean,org.fbme.lib.common.Declaration)" resolve="FunctionBlockPortView" />
                    <node concept="37vLTw" id="5hluBvQ8Q5N" role="37wK5m">
                      <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                    </node>
                    <node concept="3uNrnE" id="5hluBvQ8Q5O" role="37wK5m">
                      <node concept="37vLTw" id="5hluBvQ8Q5P" role="2$L3a6">
                        <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="5hluBvQ8SYZ" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="3clFbT" id="5hluBvQ8Q5R" role="37wK5m" />
                    <node concept="2OqwBi" id="5hluBvQ8Q5S" role="37wK5m">
                      <node concept="2GrUjf" id="5hluBvQ8Q5T" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8Q5G" resolve="socket" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ8Q5U" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8Q5V" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8Q5W" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8Q5X" role="2Oq$k0">
                  <ref role="3cqZAo" node="5hluBvQ8aP8" resolve="ports" />
                </node>
                <node concept="liA8E" id="5hluBvQ8Q5Y" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5hluBvQ8Q5Z" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8Q5J" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Hbpy_fAtap" role="3cqZAp">
              <node concept="2OqwBi" id="4Hbpy_fAtaq" role="3clFbG">
                <node concept="37vLTw" id="4Hbpy_fAtar" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
                </node>
                <node concept="liA8E" id="4Hbpy_fAtas" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2YIFZM" id="4Hbpy_fAtat" role="37wK5m">
                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                    <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
                    <node concept="37vLTw" id="4Hbpy_fAtau" role="37wK5m">
                      <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
                    </node>
                    <node concept="Rm8GO" id="4Hbpy_fAvpP" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="2OqwBi" id="4Hbpy_fAtaw" role="37wK5m">
                      <node concept="2GrUjf" id="4Hbpy_fAAdt" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8Q5G" resolve="socket" />
                      </node>
                      <node concept="liA8E" id="4Hbpy_fAtay" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4Hbpy_fAtaz" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8Q5J" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8Q60" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8Q61" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8Q62" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
                </node>
                <node concept="liA8E" id="5hluBvQ8Q63" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="5hluBvQ8Q64" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8Q5J" resolve="port" />
                  </node>
                  <node concept="37vLTw" id="5hluBvQ8Q65" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5hluBvQ8Q66" role="2GsD0m">
            <node concept="37vLTw" id="5hluBvQ8Q67" role="2Oq$k0">
              <ref role="3cqZAo" node="5hluBvQ85LO" resolve="type" />
            </node>
            <node concept="liA8E" id="5hluBvQ8SS1" role="2OqNvi">
              <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getSocketPorts()" resolve="getSocketPorts" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ8Q69" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ8Q6a" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ8Q6b" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
            </node>
            <node concept="3cmrfG" id="5hluBvQ8Q6c" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5hluBvQ8Q6d" role="3cqZAp">
          <node concept="2GrKxI" id="5hluBvQ8Q6e" role="2Gsz3X">
            <property role="TrG5h" value="plug" />
          </node>
          <node concept="3clFbS" id="5hluBvQ8Q6f" role="2LFqv$">
            <node concept="3cpWs8" id="5hluBvQ8Q6g" role="3cqZAp">
              <node concept="3cpWsn" id="5hluBvQ8Q6h" role="3cpWs9">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5hluBvQ8Q6i" role="1tU5fm">
                  <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                </node>
                <node concept="2ShNRf" id="5hluBvQ8Q6j" role="33vP2m">
                  <node concept="1pGfFk" id="5hluBvQ8Q6k" role="2ShVmc">
                    <ref role="37wK5l" node="~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean,org.fbme.lib.common.Declaration)" resolve="FunctionBlockPortView" />
                    <node concept="37vLTw" id="5hluBvQ8Q6l" role="37wK5m">
                      <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                    </node>
                    <node concept="3uNrnE" id="5hluBvQ8Q6m" role="37wK5m">
                      <node concept="37vLTw" id="5hluBvQ8Q6n" role="2$L3a6">
                        <ref role="3cqZAo" node="5hluBvQ8gCR" resolve="i" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="5hluBvQ8Wcj" role="37wK5m">
                      <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="3clFbT" id="5hluBvQ8Q6p" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="5hluBvQ8Q6q" role="37wK5m">
                      <node concept="2GrUjf" id="5hluBvQ8Q6r" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8Q6e" resolve="plug" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ8Q6s" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8Q6t" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8Q6u" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8Q6v" role="2Oq$k0">
                  <ref role="3cqZAo" node="5hluBvQ8aP8" resolve="ports" />
                </node>
                <node concept="liA8E" id="5hluBvQ8Q6w" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="5hluBvQ8Q6x" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8Q6h" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Hbpy_fAHbQ" role="3cqZAp">
              <node concept="2OqwBi" id="4Hbpy_fAHbR" role="3clFbG">
                <node concept="37vLTw" id="4Hbpy_fAHbS" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
                </node>
                <node concept="liA8E" id="4Hbpy_fAHbT" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2YIFZM" id="4Hbpy_fAHbU" role="37wK5m">
                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                    <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
                    <node concept="37vLTw" id="4Hbpy_fAHbV" role="37wK5m">
                      <ref role="3cqZAo" node="5er1YemzD9A" resolve="functionBlock" />
                    </node>
                    <node concept="Rm8GO" id="4Hbpy_fAHbW" role="37wK5m">
                      <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                      <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                    </node>
                    <node concept="2OqwBi" id="4Hbpy_fAHbX" role="37wK5m">
                      <node concept="2GrUjf" id="4Hbpy_fAV1O" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5hluBvQ8Q6e" resolve="plug" />
                      </node>
                      <node concept="liA8E" id="4Hbpy_fAHbZ" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4Hbpy_fAHc0" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8Q6h" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5hluBvQ8Q6y" role="3cqZAp">
              <node concept="2OqwBi" id="5hluBvQ8Q6z" role="3clFbG">
                <node concept="37vLTw" id="5hluBvQ8Q6$" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
                </node>
                <node concept="liA8E" id="5hluBvQ8Q6_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="5hluBvQ8Q6A" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ8Q6h" resolve="port" />
                  </node>
                  <node concept="37vLTw" id="5hluBvQ8Q6B" role="37wK5m">
                    <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5hluBvQ8Q6C" role="2GsD0m">
            <node concept="37vLTw" id="5hluBvQ8Q6D" role="2Oq$k0">
              <ref role="3cqZAo" node="5hluBvQ85LO" resolve="type" />
            </node>
            <node concept="liA8E" id="5hluBvQ912h" role="2OqNvi">
              <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getPlugPorts()" resolve="getPlugPorts" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3V49AcvR09I" role="3cqZAp">
          <node concept="37vLTw" id="3V49AcvR0fk" role="3cqZAk">
            <ref role="3cqZAo" node="5hluBvQ88Yl" resolve="view" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1KgvZpg4mHI" role="1B3o_S" />
      <node concept="3uibUv" id="3V49AcvQVQ5" role="3clF45">
        <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
      </node>
      <node concept="37vLTG" id="5er1YemzD9A" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3uibUv" id="5er1YemzDqv" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
      </node>
      <node concept="37vLTG" id="5er1YemzGnK" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="5er1YemzGCF" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemzBMH" role="jymVt" />
    <node concept="3clFb_" id="5er1YemzHdf" role="jymVt">
      <property role="TrG5h" value="addConnection" />
      <node concept="3clFbS" id="5er1YemzHdi" role="3clF47">
        <node concept="3cpWs8" id="3V49AcvQMKa" role="3cqZAp">
          <node concept="3cpWsn" id="3V49AcvQMKb" role="3cpWs9">
            <property role="TrG5h" value="view" />
            <node concept="3uibUv" id="3V49AcvQMKc" role="1tU5fm">
              <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
            </node>
            <node concept="2ShNRf" id="3V49AcvQNB9" role="33vP2m">
              <node concept="1pGfFk" id="3V49AcvQNQT" role="2ShVmc">
                <ref role="37wK5l" node="5er1Yem$wkt" resolve="NetworkConnectionView" />
                <node concept="37vLTw" id="3V49AcvQNUC" role="37wK5m">
                  <ref role="3cqZAo" node="5er1YemzHwF" resolve="connection" />
                </node>
                <node concept="37vLTw" id="3V49AcvQNZT" role="37wK5m">
                  <ref role="3cqZAo" node="5er1YemzHLj" resolve="editable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2wHo_lFR$XC" role="3cqZAp">
          <node concept="2OqwBi" id="2wHo_lFRGG1" role="3clFbG">
            <node concept="37vLTw" id="2wHo_lFR$XA" role="2Oq$k0">
              <ref role="3cqZAo" node="2wHo_lFR0qR" resolve="myConnectionModelMap" />
            </node>
            <node concept="liA8E" id="2wHo_lFRHHT" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="2wHo_lFRK9o" role="37wK5m">
                <ref role="3cqZAo" node="5er1YemzHwF" resolve="connection" />
              </node>
              <node concept="37vLTw" id="2wHo_lFRKnA" role="37wK5m">
                <ref role="3cqZAo" node="3V49AcvQMKb" resolve="view" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3V49AcvQSg$" role="3cqZAp" />
        <node concept="3cpWs8" id="3V49AcvRj0k" role="3cqZAp">
          <node concept="3cpWsn" id="3V49AcvRj0l" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="3V49AcvRiWZ" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
              <node concept="3qTvmN" id="3V49AcvRiX2" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3V49AcvRj0m" role="33vP2m">
              <node concept="2OqwBi" id="3V49AcvRj0n" role="2Oq$k0">
                <node concept="37vLTw" id="3V49AcvRj0o" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1YemzHwF" resolve="connection" />
                </node>
                <node concept="liA8E" id="3V49AcvRj0p" role="2OqNvi">
                  <ref role="37wK5l" to="g27j:~FBNetworkConnection.getSourceReference()" resolve="getSourceReference" />
                </node>
              </node>
              <node concept="liA8E" id="3V49AcvRj0q" role="2OqNvi">
                <ref role="37wK5l" to="7adg:~CompositeReference.getTarget()" resolve="getTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3V49AcvRv2H" role="3cqZAp">
          <node concept="3cpWsn" id="3V49AcvRv2I" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="3uibUv" id="3V49AcvRv2J" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
              <node concept="3qTvmN" id="3V49AcvRv2K" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3V49AcvRv2L" role="33vP2m">
              <node concept="2OqwBi" id="3V49AcvRv2M" role="2Oq$k0">
                <node concept="37vLTw" id="3V49AcvRv2N" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1YemzHwF" resolve="connection" />
                </node>
                <node concept="liA8E" id="3V49AcvRzzn" role="2OqNvi">
                  <ref role="37wK5l" to="g27j:~FBNetworkConnection.getTargetReference()" resolve="getTargetReference" />
                </node>
              </node>
              <node concept="liA8E" id="3V49AcvRv2P" role="2OqNvi">
                <ref role="37wK5l" to="7adg:~CompositeReference.getTarget()" resolve="getTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3V49AcvS8s5" role="3cqZAp">
          <node concept="3cpWsn" id="3V49AcvS8s6" role="3cpWs9">
            <property role="TrG5h" value="sourceView" />
            <node concept="3uibUv" id="3V49AcvS8s7" role="1tU5fm">
              <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3V49AcvScxn" role="3cqZAp">
          <node concept="3cpWsn" id="3V49AcvScxo" role="3cpWs9">
            <property role="TrG5h" value="targetView" />
            <node concept="3uibUv" id="3V49AcvScxp" role="1tU5fm">
              <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3V49AcvRACe" role="3cqZAp">
          <node concept="3clFbS" id="3V49AcvRACg" role="3clFbx">
            <node concept="3clFbF" id="6xq_LPB$Saj" role="3cqZAp">
              <node concept="37vLTI" id="6xq_LPB$SmZ" role="3clFbG">
                <node concept="2OqwBi" id="6xq_LPB$SJL" role="37vLTx">
                  <node concept="37vLTw" id="6xq_LPB$SoO" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
                  </node>
                  <node concept="liA8E" id="6xq_LPB$TCq" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="6xq_LPB$V_4" role="37wK5m">
                      <ref role="3cqZAo" node="3V49AcvRj0l" resolve="source" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6xq_LPB$Sah" role="37vLTJ">
                  <ref role="3cqZAo" node="3V49AcvS8s6" resolve="sourceView" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3V49AcvRRSl" role="3clFbw">
            <node concept="10Nm6u" id="3V49AcvRS2A" role="3uHU7w" />
            <node concept="37vLTw" id="3V49AcvRFnt" role="3uHU7B">
              <ref role="3cqZAo" node="3V49AcvRj0l" resolve="source" />
            </node>
          </node>
          <node concept="9aQIb" id="3V49AcvRWkJ" role="9aQIa">
            <node concept="3clFbS" id="3V49AcvRWkK" role="9aQI4">
              <node concept="3clFbF" id="1hwo9XL$TyZ" role="3cqZAp">
                <node concept="2OqwBi" id="1hwo9XL$TDu" role="3clFbG">
                  <node concept="37vLTw" id="1hwo9XL$TyX" role="2Oq$k0">
                    <ref role="3cqZAo" node="3V49AcvQMKb" resolve="view" />
                  </node>
                  <node concept="liA8E" id="1hwo9XL$TKd" role="2OqNvi">
                    <ref role="37wK5l" node="1hwo9XL$L3U" resolve="shrink" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1hwo9XLzLIF" role="3cqZAp">
                <node concept="37vLTI" id="1hwo9XLzLQ2" role="3clFbG">
                  <node concept="2ShNRf" id="1hwo9XLzLQM" role="37vLTx">
                    <node concept="HV5vD" id="1hwo9XLzM6C" role="2ShVmc">
                      <ref role="HV5vE" node="5er1YemzkBL" resolve="BrokenPortView" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1hwo9XLzLIE" role="37vLTJ">
                    <ref role="3cqZAo" node="3V49AcvS8s6" resolve="sourceView" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3V49AcvRYwN" role="3cqZAp">
          <node concept="3clFbS" id="3V49AcvRYwO" role="3clFbx">
            <node concept="3clFbF" id="6xq_LPB_1nu" role="3cqZAp">
              <node concept="37vLTI" id="6xq_LPB_1nv" role="3clFbG">
                <node concept="2OqwBi" id="6xq_LPB_1nw" role="37vLTx">
                  <node concept="37vLTw" id="6xq_LPB_1nx" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
                  </node>
                  <node concept="liA8E" id="6xq_LPB_1ny" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="6xq_LPB_3XO" role="37wK5m">
                      <ref role="3cqZAo" node="3V49AcvRv2I" resolve="target" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6xq_LPB_3PK" role="37vLTJ">
                  <ref role="3cqZAo" node="3V49AcvScxo" resolve="targetView" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1hwo9XL$gNF" role="3cqZAp">
              <node concept="3clFbS" id="1hwo9XL$gNG" role="3clFbx">
                <node concept="3clFbF" id="1hwo9XL$h3P" role="3cqZAp">
                  <node concept="2OqwBi" id="1hwo9XL$hpS" role="3clFbG">
                    <node concept="1eOMI4" id="1hwo9XL$he4" role="2Oq$k0">
                      <node concept="10QFUN" id="1hwo9XL$h7c" role="1eOMHV">
                        <node concept="37vLTw" id="1hwo9XL$h7b" role="10QFUP">
                          <ref role="3cqZAo" node="3V49AcvS8s6" resolve="sourceView" />
                        </node>
                        <node concept="3uibUv" id="1hwo9XL$h7P" role="10QFUM">
                          <ref role="3uigEE" node="5er1YemzkBL" resolve="BrokenPortView" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1hwo9XL$hAn" role="2OqNvi">
                      <ref role="37wK5l" node="1hwo9XL$5mY" resolve="setOpposite" />
                      <node concept="37vLTw" id="1hwo9XL$hBj" role="37wK5m">
                        <ref role="3cqZAo" node="3V49AcvScxo" resolve="targetView" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="1hwo9XL$gNI" role="3clFbw">
                <node concept="3uibUv" id="1hwo9XL$gNJ" role="2ZW6by">
                  <ref role="3uigEE" node="5er1YemzkBL" resolve="BrokenPortView" />
                </node>
                <node concept="37vLTw" id="1hwo9XL$gNK" role="2ZW6bz">
                  <ref role="3cqZAo" node="3V49AcvS8s6" resolve="sourceView" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3V49AcvRYwQ" role="3clFbw">
            <node concept="10Nm6u" id="3V49AcvRYwR" role="3uHU7w" />
            <node concept="37vLTw" id="3V49AcvS2cl" role="3uHU7B">
              <ref role="3cqZAo" node="3V49AcvRv2I" resolve="target" />
            </node>
          </node>
          <node concept="9aQIb" id="3V49AcvRYwT" role="9aQIa">
            <node concept="3clFbS" id="3V49AcvRYwU" role="9aQI4">
              <node concept="3clFbJ" id="1hwo9XL$gbu" role="3cqZAp">
                <node concept="3clFbS" id="1hwo9XL$gbw" role="3clFbx">
                  <node concept="3cpWs6" id="1hwo9XL$h30" role="3cqZAp">
                    <node concept="10Nm6u" id="1hwo9XL$jNf" role="3cqZAk" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="1hwo9XL$gu_" role="3clFbw">
                  <node concept="3uibUv" id="1hwo9XL$gwG" role="2ZW6by">
                    <ref role="3uigEE" node="5er1YemzkBL" resolve="BrokenPortView" />
                  </node>
                  <node concept="37vLTw" id="1hwo9XL$gbZ" role="2ZW6bz">
                    <ref role="3cqZAo" node="3V49AcvS8s6" resolve="sourceView" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1hwo9XL$TNN" role="3cqZAp">
                <node concept="2OqwBi" id="1hwo9XL$TNO" role="3clFbG">
                  <node concept="37vLTw" id="1hwo9XL$TNP" role="2Oq$k0">
                    <ref role="3cqZAo" node="3V49AcvQMKb" resolve="view" />
                  </node>
                  <node concept="liA8E" id="1hwo9XL$TNQ" role="2OqNvi">
                    <ref role="37wK5l" node="1hwo9XL$L3U" resolve="shrink" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1hwo9XL$sIN" role="3cqZAp">
                <node concept="3cpWsn" id="1hwo9XL$sIO" role="3cpWs9">
                  <property role="TrG5h" value="portView" />
                  <node concept="3uibUv" id="1hwo9XL$qgY" role="1tU5fm">
                    <ref role="3uigEE" node="5er1YemzkBL" resolve="BrokenPortView" />
                  </node>
                  <node concept="2ShNRf" id="1hwo9XL$sIP" role="33vP2m">
                    <node concept="HV5vD" id="1hwo9XL$sIQ" role="2ShVmc">
                      <ref role="HV5vE" node="5er1YemzkBL" resolve="BrokenPortView" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1hwo9XL$_aX" role="3cqZAp">
                <node concept="2OqwBi" id="1hwo9XL$BB1" role="3clFbG">
                  <node concept="37vLTw" id="1hwo9XL$_aV" role="2Oq$k0">
                    <ref role="3cqZAo" node="1hwo9XL$sIO" resolve="portView" />
                  </node>
                  <node concept="liA8E" id="1hwo9XL$E0V" role="2OqNvi">
                    <ref role="37wK5l" node="1hwo9XL$5mY" resolve="setOpposite" />
                    <node concept="37vLTw" id="1hwo9XL$E1M" role="37wK5m">
                      <ref role="3cqZAo" node="3V49AcvS8s6" resolve="sourceView" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1hwo9XL$ogK" role="3cqZAp">
                <node concept="37vLTI" id="1hwo9XL$ogL" role="3clFbG">
                  <node concept="37vLTw" id="1hwo9XL$sIR" role="37vLTx">
                    <ref role="3cqZAo" node="1hwo9XL$sIO" resolve="portView" />
                  </node>
                  <node concept="37vLTw" id="1hwo9XL_2A3" role="37vLTJ">
                    <ref role="3cqZAo" node="3V49AcvScxo" resolve="targetView" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V49AcvSgPd" role="3cqZAp">
          <node concept="2OqwBi" id="3V49AcvSjep" role="3clFbG">
            <node concept="37vLTw" id="3V49AcvSgPb" role="2Oq$k0">
              <ref role="3cqZAo" node="5er1Yemzrn7" resolve="myConnectionSources" />
            </node>
            <node concept="liA8E" id="3V49AcvSlQl" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="3V49AcvSn1h" role="37wK5m">
                <ref role="3cqZAo" node="3V49AcvQMKb" resolve="view" />
              </node>
              <node concept="37vLTw" id="3V49AcvSnoD" role="37wK5m">
                <ref role="3cqZAo" node="3V49AcvS8s6" resolve="sourceView" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V49AcvSnxC" role="3cqZAp">
          <node concept="2OqwBi" id="3V49AcvSnxD" role="3clFbG">
            <node concept="37vLTw" id="3V49AcvSs0o" role="2Oq$k0">
              <ref role="3cqZAo" node="5er1Yemztay" resolve="myConnectionDestinations" />
            </node>
            <node concept="liA8E" id="3V49AcvSnxF" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="3V49AcvSnxG" role="37wK5m">
                <ref role="3cqZAo" node="3V49AcvQMKb" resolve="view" />
              </node>
              <node concept="37vLTw" id="3V49AcvSsgP" role="37wK5m">
                <ref role="3cqZAo" node="3V49AcvScxo" resolve="targetView" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3V49AcvR2qA" role="3cqZAp" />
        <node concept="3cpWs6" id="3V49AcvQO3q" role="3cqZAp">
          <node concept="37vLTw" id="3V49AcvQO6q" role="3cqZAk">
            <ref role="3cqZAo" node="3V49AcvQMKb" resolve="view" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5er1YemzGWY" role="1B3o_S" />
      <node concept="3uibUv" id="5hluBvQ6$S6" role="3clF45">
        <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
      </node>
      <node concept="37vLTG" id="5er1YemzHwF" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="3uibUv" id="5er1YemzHwE" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
        </node>
      </node>
      <node concept="37vLTG" id="5er1YemzHLj" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="5er1YemzI2h" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemznHn" role="jymVt" />
    <node concept="312cEg" id="5er1Yem$b2d" role="jymVt">
      <property role="TrG5h" value="myDiagramView" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yem$aZ3" role="1B3o_S" />
      <node concept="2ShNRf" id="5er1Yem$b66" role="33vP2m">
        <node concept="YeOm9" id="5er1Yem$b_b" role="2ShVmc">
          <node concept="1Y3b0j" id="5er1Yem$b_e" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="5lkm:4O0ojQpH$TE" resolve="DiagramView" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="5er1Yem$b_f" role="1B3o_S" />
            <node concept="3clFb_" id="5er1Yem$b_v" role="jymVt">
              <property role="TrG5h" value="isEditable" />
              <node concept="3Tm1VV" id="5er1Yem$b_x" role="1B3o_S" />
              <node concept="10P_77" id="5er1Yem$b_y" role="3clF45" />
              <node concept="3clFbS" id="5er1Yem$b_z" role="3clF47">
                <node concept="3clFbF" id="5er1Yem$o7$" role="3cqZAp">
                  <node concept="37vLTw" id="5er1Yem$o7z" role="3clFbG">
                    <ref role="3cqZAo" node="5er1YemzlrV" resolve="myEditable" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$b__" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$b_A" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$b_B" role="jymVt">
              <property role="TrG5h" value="components" />
              <node concept="3Tm1VV" id="5er1Yem$b_D" role="1B3o_S" />
              <node concept="3uibUv" id="5er1Yem$b_E" role="3clF45">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="3uibUv" id="5er1Yem$bBA" role="11_B2D">
                  <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$b_G" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3clFbS" id="5er1Yem$b_H" role="3clF47">
                <node concept="3clFbF" id="5er1Yem$o9S" role="3cqZAp">
                  <node concept="2OqwBi" id="4v$bVjGtB6H" role="3clFbG">
                    <node concept="37vLTw" id="4v$bVjGtAJv" role="2Oq$k0">
                      <ref role="3cqZAo" node="5er1YemzoQN" resolve="myComponentToPorts" />
                    </node>
                    <node concept="liA8E" id="4v$bVjGtBOa" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$b_J" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$b_K" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$b_L" role="jymVt">
              <property role="TrG5h" value="edges" />
              <node concept="3Tm1VV" id="5er1Yem$b_N" role="1B3o_S" />
              <node concept="3uibUv" id="5er1Yem$b_O" role="3clF45">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="3uibUv" id="5er1Yem$bBN" role="11_B2D">
                  <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$b_Q" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3clFbS" id="5er1Yem$b_R" role="3clF47">
                <node concept="3clFbF" id="5er1Yem$p9j" role="3cqZAp">
                  <node concept="2OqwBi" id="5er1Yem$prl" role="3clFbG">
                    <node concept="37vLTw" id="5er1Yem$p9i" role="2Oq$k0">
                      <ref role="3cqZAo" node="5er1Yemzrn7" resolve="myConnectionSources" />
                    </node>
                    <node concept="liA8E" id="5er1Yem$q1c" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$b_T" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$b_U" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$b_V" role="jymVt">
              <property role="TrG5h" value="ports" />
              <node concept="3Tm1VV" id="5er1Yem$b_X" role="1B3o_S" />
              <node concept="3uibUv" id="5er1Yem$b_Y" role="3clF45">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="3uibUv" id="5er1Yem$bBE" role="11_B2D">
                  <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                </node>
              </node>
              <node concept="37vLTG" id="5er1Yem$bA0" role="3clF46">
                <property role="TrG5h" value="component" />
                <node concept="3uibUv" id="5er1Yem$bBB" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bA2" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bA3" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3clFbS" id="5er1Yem$bA4" role="3clF47">
                <node concept="3clFbF" id="5er1Yem$qi9" role="3cqZAp">
                  <node concept="2OqwBi" id="5er1Yem$qCc" role="3clFbG">
                    <node concept="37vLTw" id="5er1Yem$qi8" role="2Oq$k0">
                      <ref role="3cqZAo" node="5er1YemzoQN" resolve="myComponentToPorts" />
                    </node>
                    <node concept="liA8E" id="5er1Yem$rus" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                      <node concept="37vLTw" id="5er1Yem$rNJ" role="37wK5m">
                        <ref role="3cqZAo" node="5er1Yem$bA0" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bA6" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$bA7" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$bA8" role="jymVt">
              <property role="TrG5h" value="component" />
              <node concept="37vLTG" id="5er1Yem$bA9" role="3clF46">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5er1Yem$bBF" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bAb" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="5er1Yem$bAd" role="1B3o_S" />
              <node concept="3uibUv" id="5er1Yem$bBC" role="3clF45">
                <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bAf" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3clFbS" id="5er1Yem$bAg" role="3clF47">
                <node concept="3clFbF" id="5er1Yem$sit" role="3cqZAp">
                  <node concept="2OqwBi" id="5er1Yem$s$s" role="3clFbG">
                    <node concept="37vLTw" id="5er1Yem$sis" role="2Oq$k0">
                      <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
                    </node>
                    <node concept="liA8E" id="5er1Yem$sZk" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                      <node concept="37vLTw" id="5er1Yem$tlZ" role="37wK5m">
                        <ref role="3cqZAo" node="5er1Yem$bA9" resolve="port" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bAi" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$bAj" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$bAk" role="jymVt">
              <property role="TrG5h" value="sourcePort" />
              <node concept="3Tm1VV" id="5er1Yem$bAm" role="1B3o_S" />
              <node concept="3uibUv" id="5er1Yem$bBG" role="3clF45">
                <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
              </node>
              <node concept="37vLTG" id="5er1Yem$bAo" role="3clF46">
                <property role="TrG5h" value="edge" />
                <node concept="3uibUv" id="5er1Yem$bBO" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bAq" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bAr" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3clFbS" id="5er1Yem$bAs" role="3clF47">
                <node concept="3clFbF" id="5er1Yem$tRM" role="3cqZAp">
                  <node concept="2OqwBi" id="5er1Yem$tRO" role="3clFbG">
                    <node concept="37vLTw" id="5er1Yem$tRP" role="2Oq$k0">
                      <ref role="3cqZAo" node="5er1Yemzrn7" resolve="myConnectionSources" />
                    </node>
                    <node concept="liA8E" id="5er1Yem$uG8" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                      <node concept="37vLTw" id="5er1Yem$v6i" role="37wK5m">
                        <ref role="3cqZAo" node="5er1Yem$bAo" resolve="edge" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bAu" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$bAv" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$bAw" role="jymVt">
              <property role="TrG5h" value="setSourcePort" />
              <node concept="3Tm1VV" id="5er1Yem$bAy" role="1B3o_S" />
              <node concept="3cqZAl" id="5er1Yem$bAz" role="3clF45" />
              <node concept="37vLTG" id="5er1Yem$bA$" role="3clF46">
                <property role="TrG5h" value="edge" />
                <node concept="3uibUv" id="5er1Yem$bBP" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bAA" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="5er1Yem$bAB" role="3clF46">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5er1Yem$bBH" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bAD" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="5er1Yem$bAE" role="3clF47">
                <node concept="3cpWs8" id="5er1Yem$Nsb" role="3cqZAp">
                  <node concept="3cpWsn" id="5er1Yem$Nsc" role="3cpWs9">
                    <property role="TrG5h" value="connection" />
                    <node concept="3uibUv" id="5er1Yem$Nr4" role="1tU5fm">
                      <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                    </node>
                    <node concept="2OqwBi" id="5er1Yem$Nsd" role="33vP2m">
                      <node concept="37vLTw" id="5er1Yem$Nse" role="2Oq$k0">
                        <ref role="3cqZAo" node="5er1Yem$bA$" resolve="edge" />
                      </node>
                      <node concept="liA8E" id="5er1Yem$Nsf" role="2OqNvi">
                        <ref role="37wK5l" node="5er1Yem$x30" resolve="getConnection" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5er1Yem$JUo" role="3cqZAp">
                  <node concept="1Wc70l" id="5er1Yem$KWE" role="3clFbw">
                    <node concept="2OqwBi" id="5er1Yem$LkI" role="3uHU7w">
                      <node concept="37vLTw" id="5er1Yem$Ldn" role="2Oq$k0">
                        <ref role="3cqZAo" node="5er1Yem$bA$" resolve="edge" />
                      </node>
                      <node concept="liA8E" id="5er1Yem$LG_" role="2OqNvi">
                        <ref role="37wK5l" node="5er1Yem$x38" resolve="isEditable" />
                      </node>
                    </node>
                    <node concept="3y3z36" id="5er1Yem$K_u" role="3uHU7B">
                      <node concept="37vLTw" id="5er1Yem$Nsh" role="3uHU7B">
                        <ref role="3cqZAo" node="5er1Yem$Nsc" resolve="connection" />
                      </node>
                      <node concept="10Nm6u" id="5er1Yem$KVl" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5er1Yem$JUq" role="3clFbx">
                    <node concept="3cpWs8" id="5hluBvQ3QcH" role="3cqZAp">
                      <node concept="3cpWsn" id="5hluBvQ3QcI" role="3cpWs9">
                        <property role="TrG5h" value="sourceReference" />
                        <node concept="3uibUv" id="5hluBvQ3Ptl" role="1tU5fm">
                          <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
                          <node concept="3uibUv" id="5hluBvQ3Pts" role="11_B2D">
                            <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                            <node concept="3qTvmN" id="5hluBvQ3Ptt" role="11_B2D" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5hluBvQ3QcJ" role="33vP2m">
                          <node concept="37vLTw" id="5hluBvQ3QcK" role="2Oq$k0">
                            <ref role="3cqZAo" node="5er1Yem$Nsc" resolve="connection" />
                          </node>
                          <node concept="liA8E" id="5hluBvQ3QcL" role="2OqNvi">
                            <ref role="37wK5l" to="g27j:~FBNetworkConnection.getSourceReference()" resolve="getSourceReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5hluBvQ5h5l" role="3cqZAp">
                      <node concept="2OqwBi" id="5hluBvQ5h5m" role="3clFbG">
                        <node concept="37vLTw" id="5hluBvQ5hxt" role="2Oq$k0">
                          <ref role="3cqZAo" node="5hluBvQ3QcI" resolve="sourceReference" />
                        </node>
                        <node concept="liA8E" id="5hluBvQ5h5o" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~CompositeReference.setTarget(org.fbme.lib.common.DeclarationPath)" resolve="setTarget" />
                          <node concept="1rXfSq" id="5hluBvQ5h5p" role="37wK5m">
                            <ref role="37wK5l" node="5hluBvQ4QpU" resolve="getPortPath" />
                            <node concept="37vLTw" id="5hluBvQ5h5q" role="37wK5m">
                              <ref role="3cqZAo" node="5er1Yem$bAB" resolve="port" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bAG" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$bAH" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$bAI" role="jymVt">
              <property role="TrG5h" value="targetPort" />
              <node concept="3Tm1VV" id="5er1Yem$bAK" role="1B3o_S" />
              <node concept="3uibUv" id="5er1Yem$bBI" role="3clF45">
                <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
              </node>
              <node concept="37vLTG" id="5er1Yem$bAM" role="3clF46">
                <property role="TrG5h" value="edge" />
                <node concept="3uibUv" id="5er1Yem$bBQ" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bAO" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bAP" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3clFbS" id="5er1Yem$bAQ" role="3clF47">
                <node concept="3clFbF" id="5er1Yem$vzw" role="3cqZAp">
                  <node concept="2OqwBi" id="5er1Yem$vzx" role="3clFbG">
                    <node concept="37vLTw" id="5hluBvQ4Ozx" role="2Oq$k0">
                      <ref role="3cqZAo" node="5er1Yemztay" resolve="myConnectionDestinations" />
                    </node>
                    <node concept="liA8E" id="5er1Yem$vzz" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                      <node concept="37vLTw" id="5er1Yem$vz$" role="37wK5m">
                        <ref role="3cqZAo" node="5er1Yem$bAM" resolve="edge" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bAS" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$bAT" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$bAU" role="jymVt">
              <property role="TrG5h" value="setTargetPort" />
              <node concept="3Tm1VV" id="5er1Yem$bAW" role="1B3o_S" />
              <node concept="3cqZAl" id="5er1Yem$bAX" role="3clF45" />
              <node concept="37vLTG" id="5er1Yem$bAY" role="3clF46">
                <property role="TrG5h" value="edge" />
                <node concept="3uibUv" id="5er1Yem$bBR" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bB0" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="5er1Yem$bB1" role="3clF46">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5er1Yem$bBJ" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bB3" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="5er1Yem$bB4" role="3clF47">
                <node concept="3cpWs8" id="5hluBvQ4OIH" role="3cqZAp">
                  <node concept="3cpWsn" id="5hluBvQ4OII" role="3cpWs9">
                    <property role="TrG5h" value="connection" />
                    <node concept="3uibUv" id="5hluBvQ4OIJ" role="1tU5fm">
                      <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                    </node>
                    <node concept="2OqwBi" id="5hluBvQ4OIK" role="33vP2m">
                      <node concept="37vLTw" id="5hluBvQ4OIL" role="2Oq$k0">
                        <ref role="3cqZAo" node="5er1Yem$bAY" resolve="edge" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ4OIM" role="2OqNvi">
                        <ref role="37wK5l" node="5er1Yem$x30" resolve="getConnection" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5hluBvQ4OIN" role="3cqZAp">
                  <node concept="1Wc70l" id="5hluBvQ4OIO" role="3clFbw">
                    <node concept="2OqwBi" id="5hluBvQ4OIP" role="3uHU7w">
                      <node concept="37vLTw" id="5hluBvQ4OIQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5er1Yem$bAY" resolve="edge" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ4OIR" role="2OqNvi">
                        <ref role="37wK5l" node="5er1Yem$x38" resolve="isEditable" />
                      </node>
                    </node>
                    <node concept="3y3z36" id="5hluBvQ4OIS" role="3uHU7B">
                      <node concept="37vLTw" id="5hluBvQ4OIT" role="3uHU7B">
                        <ref role="3cqZAo" node="5hluBvQ4OII" resolve="connection" />
                      </node>
                      <node concept="10Nm6u" id="5hluBvQ4OIU" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5hluBvQ4OIV" role="3clFbx">
                    <node concept="3cpWs8" id="5hluBvQ4OIW" role="3cqZAp">
                      <node concept="3cpWsn" id="5hluBvQ4OIX" role="3cpWs9">
                        <property role="TrG5h" value="targetReference" />
                        <node concept="3uibUv" id="5hluBvQ4OIY" role="1tU5fm">
                          <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
                          <node concept="3uibUv" id="5hluBvQ4OIZ" role="11_B2D">
                            <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                            <node concept="3qTvmN" id="5hluBvQ4OJ0" role="11_B2D" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5hluBvQ4OJ1" role="33vP2m">
                          <node concept="37vLTw" id="5hluBvQ4OJ2" role="2Oq$k0">
                            <ref role="3cqZAo" node="5hluBvQ4OII" resolve="connection" />
                          </node>
                          <node concept="liA8E" id="5hluBvQ4QeN" role="2OqNvi">
                            <ref role="37wK5l" to="g27j:~FBNetworkConnection.getTargetReference()" resolve="getTargetReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5hluBvQ5fr0" role="3cqZAp">
                      <node concept="2OqwBi" id="5hluBvQ5fAk" role="3clFbG">
                        <node concept="37vLTw" id="5hluBvQ5fqY" role="2Oq$k0">
                          <ref role="3cqZAo" node="5hluBvQ4OIX" resolve="targetReference" />
                        </node>
                        <node concept="liA8E" id="5hluBvQ5fLO" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~CompositeReference.setTarget(org.fbme.lib.common.DeclarationPath)" resolve="setTarget" />
                          <node concept="1rXfSq" id="5hluBvQ4Qq0" role="37wK5m">
                            <ref role="37wK5l" node="5hluBvQ4QpU" resolve="getPortPath" />
                            <node concept="37vLTw" id="5hluBvQ4QpX" role="37wK5m">
                              <ref role="3cqZAo" node="5er1Yem$bB1" resolve="port" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bB6" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5hluBvQ4S3L" role="jymVt" />
            <node concept="3clFb_" id="5hluBvQ4QpU" role="jymVt">
              <property role="TrG5h" value="getPortPath" />
              <node concept="3Tm6S6" id="5hluBvQ4QpV" role="1B3o_S" />
              <node concept="3uibUv" id="5hluBvQ5bcF" role="3clF45">
                <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                <node concept="3qTvmN" id="5hluBvQ5cj6" role="11_B2D" />
              </node>
              <node concept="37vLTG" id="5hluBvQ4QpB" role="3clF46">
                <property role="TrG5h" value="port" />
                <node concept="3uibUv" id="5hluBvQ4QpC" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                </node>
              </node>
              <node concept="3clFbS" id="5hluBvQ4QoH" role="3clF47">
                <node concept="3clFbJ" id="5hluBvQ4QoI" role="3cqZAp">
                  <node concept="3clFbS" id="5hluBvQ4QoJ" role="3clFbx">
                    <node concept="3cpWs8" id="5hluBvQ4QoK" role="3cqZAp">
                      <node concept="3cpWsn" id="5hluBvQ4QoL" role="3cpWs9">
                        <property role="TrG5h" value="functionBlockPort" />
                        <node concept="3uibUv" id="5hluBvQ4QoM" role="1tU5fm">
                          <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                        </node>
                        <node concept="10QFUN" id="5hluBvQ4QoN" role="33vP2m">
                          <node concept="37vLTw" id="5hluBvQ4QpJ" role="10QFUP">
                            <ref role="3cqZAo" node="5hluBvQ4QpB" resolve="port" />
                          </node>
                          <node concept="3uibUv" id="5hluBvQ4QoP" role="10QFUM">
                            <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5hluBvQ4QoQ" role="3cqZAp">
                      <node concept="3cpWsn" id="5hluBvQ4QoR" role="3cpWs9">
                        <property role="TrG5h" value="functionBlock" />
                        <node concept="3uibUv" id="5hluBvQ4QoS" role="1tU5fm">
                          <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
                        </node>
                        <node concept="10QFUN" id="5hluBvQ4QoT" role="33vP2m">
                          <node concept="3uibUv" id="5hluBvQ4QoU" role="10QFUM">
                            <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
                          </node>
                          <node concept="2OqwBi" id="5hluBvQ4QoV" role="10QFUP">
                            <node concept="37vLTw" id="5hluBvQ4QoW" role="2Oq$k0">
                              <ref role="3cqZAo" node="5er1Yemzp6D" resolve="myPorts" />
                            </node>
                            <node concept="liA8E" id="5hluBvQ4QoX" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                              <node concept="37vLTw" id="5hluBvQ4QpL" role="37wK5m">
                                <ref role="3cqZAo" node="5hluBvQ4QpB" resolve="port" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="5hluBvQ5b02" role="3cqZAp">
                      <node concept="2YIFZM" id="5hluBvQ4Qp3" role="3cqZAk">
                        <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
                        <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                        <node concept="2OqwBi" id="5hluBvQ4Qp4" role="37wK5m">
                          <node concept="37vLTw" id="5hluBvQ4Qp5" role="2Oq$k0">
                            <ref role="3cqZAo" node="5hluBvQ4QoR" resolve="functionBlock" />
                          </node>
                          <node concept="liA8E" id="5hluBvQ4Qp6" role="2OqNvi">
                            <ref role="37wK5l" node="5er1Yem_uhE" resolve="getComponent" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5hluBvQ4Qp7" role="37wK5m">
                          <node concept="37vLTw" id="5hluBvQ59ak" role="2Oq$k0">
                            <ref role="3cqZAo" node="5hluBvQ4QpB" resolve="port" />
                          </node>
                          <node concept="liA8E" id="5hluBvQ4Qp9" role="2OqNvi">
                            <ref role="37wK5l" node="5hluBvQ50xi" resolve="getKind" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5hluBvQ4Qpa" role="37wK5m">
                          <node concept="37vLTw" id="5hluBvQ4Qpb" role="2Oq$k0">
                            <ref role="3cqZAo" node="5hluBvQ4QoL" resolve="functionBlockPort" />
                          </node>
                          <node concept="liA8E" id="5hluBvQ4Qpc" role="2OqNvi">
                            <ref role="37wK5l" node="5er1Yem$X5a" resolve="getTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="5hluBvQ4Qpd" role="3clFbw">
                    <node concept="3uibUv" id="5hluBvQ4Qpe" role="2ZW6by">
                      <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
                    </node>
                    <node concept="37vLTw" id="5hluBvQ4QpP" role="2ZW6bz">
                      <ref role="3cqZAo" node="5hluBvQ4QpB" resolve="port" />
                    </node>
                  </node>
                  <node concept="3eNFk2" id="5hluBvQ4Qpg" role="3eNLev">
                    <node concept="2ZW3vV" id="5hluBvQ4Qph" role="3eO9$A">
                      <node concept="3uibUv" id="5hluBvQ4Qpi" role="2ZW6by">
                        <ref role="3uigEE" node="5er1Yemzkuz" resolve="InterfaceEndpointView" />
                      </node>
                      <node concept="37vLTw" id="5hluBvQ4QpQ" role="2ZW6bz">
                        <ref role="3cqZAo" node="5hluBvQ4QpB" resolve="port" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5hluBvQ4Qpk" role="3eOfB_">
                      <node concept="3cpWs8" id="5hluBvQ4Qpl" role="3cqZAp">
                        <node concept="3cpWsn" id="5hluBvQ4Qpm" role="3cpWs9">
                          <property role="TrG5h" value="interfaceEndpoint" />
                          <node concept="3uibUv" id="5hluBvQ4Qpn" role="1tU5fm">
                            <ref role="3uigEE" node="5er1Yemzkuz" resolve="InterfaceEndpointView" />
                          </node>
                          <node concept="10QFUN" id="5hluBvQ4Qpo" role="33vP2m">
                            <node concept="37vLTw" id="5hluBvQ4QpM" role="10QFUP">
                              <ref role="3cqZAo" node="5hluBvQ4QpB" resolve="port" />
                            </node>
                            <node concept="3uibUv" id="5hluBvQ4Qpq" role="10QFUM">
                              <ref role="3uigEE" node="5er1Yemzkuz" resolve="InterfaceEndpointView" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="5hluBvQ5aN$" role="3cqZAp">
                        <node concept="2YIFZM" id="5hluBvQ4Qpv" role="3cqZAk">
                          <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                          <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
                          <node concept="10Nm6u" id="5hluBvQ4Qpw" role="37wK5m" />
                          <node concept="2OqwBi" id="5hluBvQ4Qpx" role="37wK5m">
                            <node concept="37vLTw" id="5hluBvQ59kq" role="2Oq$k0">
                              <ref role="3cqZAo" node="5hluBvQ4QpB" resolve="port" />
                            </node>
                            <node concept="liA8E" id="5hluBvQ59xH" role="2OqNvi">
                              <ref role="37wK5l" node="5hluBvQ50xi" resolve="getKind" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5hluBvQ4Qp$" role="37wK5m">
                            <node concept="37vLTw" id="5hluBvQ4Qp_" role="2Oq$k0">
                              <ref role="3cqZAo" node="5hluBvQ4Qpm" resolve="interfaceEndpoint" />
                            </node>
                            <node concept="liA8E" id="5hluBvQ4QpA" role="2OqNvi">
                              <ref role="37wK5l" node="5hluBvQ4u2D" resolve="getTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5hluBvQ5djO" role="3cqZAp">
                  <node concept="10Nm6u" id="5hluBvQ5eiU" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$bB7" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$bB8" role="jymVt">
              <property role="TrG5h" value="removeEdge" />
              <node concept="37vLTG" id="5er1Yem$bB9" role="3clF46">
                <property role="TrG5h" value="edge" />
                <node concept="3uibUv" id="5er1Yem$bBS" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bBb" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="5er1Yem$bBd" role="1B3o_S" />
              <node concept="3cqZAl" id="5er1Yem$bBe" role="3clF45" />
              <node concept="3clFbS" id="5er1Yem$bBf" role="3clF47">
                <node concept="3cpWs8" id="5hluBvQ7T8l" role="3cqZAp">
                  <node concept="3cpWsn" id="5hluBvQ7T8m" role="3cpWs9">
                    <property role="TrG5h" value="connection" />
                    <node concept="3uibUv" id="5hluBvQ7T7F" role="1tU5fm">
                      <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                    </node>
                    <node concept="2OqwBi" id="5hluBvQ7T8n" role="33vP2m">
                      <node concept="37vLTw" id="5hluBvQ7T8o" role="2Oq$k0">
                        <ref role="3cqZAo" node="5er1Yem$bB9" resolve="edge" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ7T8p" role="2OqNvi">
                        <ref role="37wK5l" node="5er1Yem$x30" resolve="getConnection" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5hluBvQ7QYN" role="3cqZAp">
                  <node concept="1Wc70l" id="5hluBvQ7RMg" role="3clFbw">
                    <node concept="3y3z36" id="5hluBvQ7T_N" role="3uHU7B">
                      <node concept="10Nm6u" id="5hluBvQ7T_O" role="3uHU7w" />
                      <node concept="37vLTw" id="5hluBvQ7T_P" role="3uHU7B">
                        <ref role="3cqZAo" node="5hluBvQ7T8m" resolve="connection" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5hluBvQ7T_Q" role="3uHU7w">
                      <node concept="37vLTw" id="5hluBvQ7T_R" role="2Oq$k0">
                        <ref role="3cqZAo" node="5er1Yem$bB9" resolve="edge" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ7T_S" role="2OqNvi">
                        <ref role="37wK5l" node="5er1Yem$x38" resolve="isEditable" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5hluBvQ7QYP" role="3clFbx">
                    <node concept="3clFbF" id="5hluBvQ7U3f" role="3cqZAp">
                      <node concept="2OqwBi" id="5hluBvQ7U73" role="3clFbG">
                        <node concept="37vLTw" id="5hluBvQ7U3e" role="2Oq$k0">
                          <ref role="3cqZAo" node="5hluBvQ7T8m" resolve="connection" />
                        </node>
                        <node concept="liA8E" id="5hluBvQ7U85" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~ContainedElement.remove()" resolve="remove" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bBh" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$bBi" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$bBj" role="jymVt">
              <property role="TrG5h" value="addEdge" />
              <node concept="37vLTG" id="5er1Yem$bBk" role="3clF46">
                <property role="TrG5h" value="sourcePort" />
                <node concept="3uibUv" id="5er1Yem$bBK" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bBm" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="5er1Yem$bBn" role="3clF46">
                <property role="TrG5h" value="targetPort" />
                <node concept="3uibUv" id="5er1Yem$bBL" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$bBp" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="5er1Yem$bBr" role="1B3o_S" />
              <node concept="3uibUv" id="5er1Yem$bBT" role="3clF45">
                <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bBt" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3clFbS" id="5er1Yem$bBu" role="3clF47">
                <node concept="3cpWs8" id="5hluBvQ5pQN" role="3cqZAp">
                  <node concept="3cpWsn" id="5hluBvQ5pQO" role="3cpWs9">
                    <property role="TrG5h" value="kind" />
                    <node concept="3uibUv" id="5hluBvQ5j7x" role="1tU5fm">
                      <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
                    </node>
                    <node concept="2OqwBi" id="5hluBvQ5pQP" role="33vP2m">
                      <node concept="37vLTw" id="5hluBvQ5pQQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5er1Yem$bBk" resolve="sourcePort" />
                      </node>
                      <node concept="liA8E" id="5hluBvQ5pQR" role="2OqNvi">
                        <ref role="37wK5l" node="5hluBvQ50xi" resolve="getKind" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5hluBvQ4UYI" role="3cqZAp">
                  <node concept="1Wc70l" id="5hluBvQ4ZVW" role="3clFbw">
                    <node concept="3clFbC" id="5hluBvQ5i9m" role="3uHU7w">
                      <node concept="2OqwBi" id="5hluBvQ5iJp" role="3uHU7w">
                        <node concept="37vLTw" id="5hluBvQ5iBY" role="2Oq$k0">
                          <ref role="3cqZAo" node="5er1Yem$bBn" resolve="targetPort" />
                        </node>
                        <node concept="liA8E" id="5hluBvQ5j6K" role="2OqNvi">
                          <ref role="37wK5l" node="5hluBvQ50xi" resolve="getKind" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5hluBvQ5pQS" role="3uHU7B">
                        <ref role="3cqZAo" node="5hluBvQ5pQO" resolve="kind" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5hluBvQ4UZY" role="3uHU7B">
                      <ref role="3cqZAo" node="5er1YemzlrV" resolve="myEditable" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5hluBvQ4UYK" role="3clFbx">
                    <node concept="3cpWs8" id="5hluBvQ5lr6" role="3cqZAp">
                      <node concept="3cpWsn" id="5hluBvQ5lr7" role="3cpWs9">
                        <property role="TrG5h" value="connection" />
                        <node concept="3uibUv" id="5hluBvQ5l8l" role="1tU5fm">
                          <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                        </node>
                        <node concept="2OqwBi" id="5hluBvQ5lr8" role="33vP2m">
                          <node concept="37vLTw" id="5hluBvQ5lr9" role="2Oq$k0">
                            <ref role="3cqZAo" node="5hluBvQ4Y03" resolve="myFactory" />
                          </node>
                          <node concept="liA8E" id="5hluBvQ5lra" role="2OqNvi">
                            <ref role="37wK5l" to="v4vf:~IEC61499Factory.createFBNetworkConnection(org.fbme.lib.iec61499.fbnetwork.EntryKind)" resolve="createFBNetworkConnection" />
                            <node concept="37vLTw" id="5hluBvQ5pQT" role="37wK5m">
                              <ref role="3cqZAo" node="5hluBvQ5pQO" resolve="kind" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5hluBvQ4Zox" role="3cqZAp">
                      <node concept="2OqwBi" id="5hluBvQ5m18" role="3clFbG">
                        <node concept="2OqwBi" id="5hluBvQ5lOI" role="2Oq$k0">
                          <node concept="37vLTw" id="5hluBvQ5lre" role="2Oq$k0">
                            <ref role="3cqZAo" node="5hluBvQ5lr7" resolve="connection" />
                          </node>
                          <node concept="liA8E" id="5hluBvQ5lQs" role="2OqNvi">
                            <ref role="37wK5l" to="g27j:~FBNetworkConnection.getSourceReference()" resolve="getSourceReference" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5hluBvQ5mfd" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~CompositeReference.setTarget(org.fbme.lib.common.DeclarationPath)" resolve="setTarget" />
                          <node concept="1rXfSq" id="5hluBvQ5nYU" role="37wK5m">
                            <ref role="37wK5l" node="5hluBvQ4QpU" resolve="getPortPath" />
                            <node concept="37vLTw" id="5hluBvQ5oqx" role="37wK5m">
                              <ref role="3cqZAo" node="5er1Yem$bBk" resolve="sourcePort" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5hluBvQ5oGw" role="3cqZAp">
                      <node concept="2OqwBi" id="5hluBvQ5oGx" role="3clFbG">
                        <node concept="2OqwBi" id="5hluBvQ5oGy" role="2Oq$k0">
                          <node concept="37vLTw" id="5hluBvQ5oGz" role="2Oq$k0">
                            <ref role="3cqZAo" node="5hluBvQ5lr7" resolve="connection" />
                          </node>
                          <node concept="liA8E" id="5hluBvQ5pei" role="2OqNvi">
                            <ref role="37wK5l" to="g27j:~FBNetworkConnection.getTargetReference()" resolve="getTargetReference" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5hluBvQ5oG_" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~CompositeReference.setTarget(org.fbme.lib.common.DeclarationPath)" resolve="setTarget" />
                          <node concept="1rXfSq" id="5hluBvQ5oGA" role="37wK5m">
                            <ref role="37wK5l" node="5hluBvQ4QpU" resolve="getPortPath" />
                            <node concept="37vLTw" id="6xq_LPBz3_w" role="37wK5m">
                              <ref role="3cqZAo" node="5er1Yem$bBn" resolve="targetPort" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3KaCP$" id="5hluBvQ5qKk" role="3cqZAp">
                      <node concept="37vLTw" id="5hluBvQ5qSw" role="3KbGdf">
                        <ref role="3cqZAo" node="5hluBvQ5pQO" resolve="kind" />
                      </node>
                      <node concept="3KbdKl" id="5hluBvQ5qTa" role="3KbHQx">
                        <node concept="Rm8GO" id="5hluBvQ5qXx" role="3Kbmr1">
                          <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                          <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                        </node>
                        <node concept="3clFbS" id="5hluBvQ5qTc" role="3Kbo56">
                          <node concept="3clFbF" id="5hluBvQ5u19" role="3cqZAp">
                            <node concept="2OqwBi" id="5hluBvQ5$hR" role="3clFbG">
                              <node concept="2OqwBi" id="5hluBvQ5zyv" role="2Oq$k0">
                                <node concept="37vLTw" id="5hluBvQ5zm7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5hluBvQ5xCQ" resolve="myNetwork" />
                                </node>
                                <node concept="liA8E" id="5hluBvQ5_uT" role="2OqNvi">
                                  <ref role="37wK5l" to="g27j:~FBNetwork.getDataConnections()" resolve="getDataConnections" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5hluBvQ5_3j" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="37vLTw" id="5hluBvQ5_c7" role="37wK5m">
                                  <ref role="3cqZAo" node="5hluBvQ5lr7" resolve="connection" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zACq4" id="5hluBvQ5BDE" role="3cqZAp" />
                        </node>
                      </node>
                      <node concept="3KbdKl" id="5hluBvQ5qZU" role="3KbHQx">
                        <node concept="Rm8GO" id="5hluBvQ5r46" role="3Kbmr1">
                          <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                          <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                        </node>
                        <node concept="3clFbS" id="5hluBvQ5qZW" role="3Kbo56">
                          <node concept="3clFbF" id="5hluBvQ5_yY" role="3cqZAp">
                            <node concept="2OqwBi" id="5hluBvQ5_yZ" role="3clFbG">
                              <node concept="2OqwBi" id="5hluBvQ5_z0" role="2Oq$k0">
                                <node concept="37vLTw" id="5hluBvQ5_z1" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5hluBvQ5xCQ" resolve="myNetwork" />
                                </node>
                                <node concept="liA8E" id="5hluBvQ5_Ql" role="2OqNvi">
                                  <ref role="37wK5l" to="g27j:~FBNetwork.getEventConnections()" resolve="getEventConnections" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5hluBvQ5_z3" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="37vLTw" id="5hluBvQ5_z4" role="37wK5m">
                                  <ref role="3cqZAo" node="5hluBvQ5lr7" resolve="connection" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zACq4" id="5hluBvQ5CZB" role="3cqZAp" />
                        </node>
                      </node>
                      <node concept="3KbdKl" id="5hluBvQ5r0r" role="3KbHQx">
                        <node concept="Rm8GO" id="5hluBvQ5r8d" role="3Kbmr1">
                          <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                          <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                        </node>
                        <node concept="3clFbS" id="5hluBvQ5r0t" role="3Kbo56">
                          <node concept="3clFbF" id="5hluBvQ5_Wi" role="3cqZAp">
                            <node concept="2OqwBi" id="5hluBvQ5_Wj" role="3clFbG">
                              <node concept="2OqwBi" id="5hluBvQ5_Wk" role="2Oq$k0">
                                <node concept="37vLTw" id="5hluBvQ5_Wl" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5hluBvQ5xCQ" resolve="myNetwork" />
                                </node>
                                <node concept="liA8E" id="5hluBvQ5AhR" role="2OqNvi">
                                  <ref role="37wK5l" to="g27j:~FBNetwork.getAdapterConnections()" resolve="getAdapterConnections" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5hluBvQ5_Wn" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="37vLTw" id="5hluBvQ5_Wo" role="37wK5m">
                                  <ref role="3cqZAo" node="5hluBvQ5lr7" resolve="connection" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zACq4" id="5hluBvQ5Cdt" role="3cqZAp" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="5hluBvQ5Drc" role="3cqZAp">
                      <node concept="1rXfSq" id="5hluBvQ6ziB" role="3cqZAk">
                        <ref role="37wK5l" node="5er1YemzHdf" resolve="addConnection" />
                        <node concept="37vLTw" id="5hluBvQ6pq5" role="37wK5m">
                          <ref role="3cqZAo" node="5hluBvQ5lr7" resolve="connection" />
                        </node>
                        <node concept="3clFbT" id="5hluBvQ6s0D" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5hluBvQ6B8i" role="3cqZAp">
                  <node concept="10Nm6u" id="5hluBvQ6CAT" role="3cqZAk" />
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$bBw" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="5er1Yem$bB_" role="2Ghqu4">
              <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
            </node>
            <node concept="3uibUv" id="5er1Yem$bBD" role="2Ghqu4">
              <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
            </node>
            <node concept="3uibUv" id="5er1Yem$bBM" role="2Ghqu4">
              <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5er1Yem$b5p" role="1tU5fm">
        <ref role="3uigEE" to="5lkm:4O0ojQpH$TE" resolve="DiagramView" />
        <node concept="3uibUv" id="5er1YemzmFg" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
        <node concept="3uibUv" id="5er1YemzmGq" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
        </node>
        <node concept="3uibUv" id="5er1YemzmJm" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem$d9P" role="jymVt" />
    <node concept="312cEg" id="5er1Yem$ee_" role="jymVt">
      <property role="TrG5h" value="myComponentsView" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yem$dRC" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yem$e_y" role="1tU5fm">
        <ref role="3uigEE" to="hyqd:1KCfUoKQiq3" resolve="ComponentsView" />
        <node concept="3uibUv" id="5er1Yem$eVm" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
      </node>
      <node concept="2ShNRf" id="5er1Yem$fd5" role="33vP2m">
        <node concept="YeOm9" id="5er1Yem$fkv" role="2ShVmc">
          <node concept="1Y3b0j" id="5er1Yem$fky" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="hyqd:1KCfUoKQiq3" resolve="ComponentsView" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="5er1Yem$fkz" role="1B3o_S" />
            <node concept="3clFb_" id="5er1Yem$fkD" role="jymVt">
              <property role="TrG5h" value="getComponents" />
              <node concept="3Tm1VV" id="5er1Yem$fkF" role="1B3o_S" />
              <node concept="3uibUv" id="5er1Yem$fkG" role="3clF45">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="3uibUv" id="5er1Yem$fl0" role="11_B2D">
                  <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$fkI" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3clFbS" id="5er1Yem$fkJ" role="3clF47">
                <node concept="3clFbF" id="5er1Yem$l1H" role="3cqZAp">
                  <node concept="37vLTw" id="4v$bVjGtE7c" role="3clFbG">
                    <ref role="3cqZAo" node="5hluBvQ6L3C" resolve="myMainComponents" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$fkL" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="5er1Yem$fkM" role="jymVt" />
            <node concept="3clFb_" id="5er1Yem$fkN" role="jymVt">
              <property role="TrG5h" value="remove" />
              <node concept="3Tm1VV" id="5er1Yem$fkP" role="1B3o_S" />
              <node concept="3cqZAl" id="5er1Yem$fkQ" role="3clF45" />
              <node concept="37vLTG" id="5er1Yem$fkR" role="3clF46">
                <property role="TrG5h" value="entry" />
                <node concept="3uibUv" id="5er1Yem$fl1" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$fkT" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="5er1Yem$fkU" role="3clF47">
                <node concept="3clFbJ" id="5hluBvQ7KOB" role="3cqZAp">
                  <node concept="2OqwBi" id="5hluBvQ7Llg" role="3clFbw">
                    <node concept="37vLTw" id="5hluBvQ7LdN" role="2Oq$k0">
                      <ref role="3cqZAo" node="5er1Yem$fkR" resolve="entry" />
                    </node>
                    <node concept="liA8E" id="5hluBvQ7Lwu" role="2OqNvi">
                      <ref role="37wK5l" node="5er1Yemzm5Z" resolve="isEditable" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5hluBvQ7KOD" role="3clFbx">
                    <node concept="3clFbF" id="5hluBvQ7LAk" role="3cqZAp">
                      <node concept="2OqwBi" id="5hluBvQ7Mzj" role="3clFbG">
                        <node concept="2OqwBi" id="5hluBvQ7M3Z" role="2Oq$k0">
                          <node concept="1eOMI4" id="5hluBvQ7LKL" role="2Oq$k0">
                            <node concept="10QFUN" id="5hluBvQ7LLk" role="1eOMHV">
                              <node concept="3uibUv" id="5hluBvQ7LPK" role="10QFUM">
                                <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
                              </node>
                              <node concept="37vLTw" id="5hluBvQ7LAj" role="10QFUP">
                                <ref role="3cqZAo" node="5er1Yem$fkR" resolve="entry" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="5hluBvQ7Mlb" role="2OqNvi">
                            <ref role="37wK5l" node="5er1Yem_uhE" resolve="getComponent" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5hluBvQ7N5r" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~ContainedElement.remove()" resolve="remove" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$fkW" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="5er1Yem$fkZ" role="2Ghqu4">
              <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem$fP7" role="jymVt" />
    <node concept="312cEg" id="5er1Yem$gLk" role="jymVt">
      <property role="TrG5h" value="myExtensionsView" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yem$gkB" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yem$gKQ" role="1tU5fm">
        <ref role="3uigEE" to="hyqd:4bHpKVAnix_" resolve="ComponentExtsView" />
        <node concept="3uibUv" id="4Hbpy_fxjYK" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
        <node concept="3uibUv" id="5hluBvQ7BkY" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
      </node>
      <node concept="2ShNRf" id="5er1Yem$hdU" role="33vP2m">
        <node concept="YeOm9" id="5er1Yem$hsm" role="2ShVmc">
          <node concept="1Y3b0j" id="5er1Yem$hsp" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="hyqd:4bHpKVAnix_" resolve="ComponentExtsView" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="5er1Yem$hsq" role="1B3o_S" />
            <node concept="3clFb_" id="5er1Yem$hsw" role="jymVt">
              <property role="TrG5h" value="getExtensions" />
              <node concept="3Tm1VV" id="5er1Yem$hsy" role="1B3o_S" />
              <node concept="3uibUv" id="5er1Yem$hsz" role="3clF45">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="3uibUv" id="5hluBvQ7D_X" role="11_B2D">
                  <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
                </node>
              </node>
              <node concept="37vLTG" id="5er1Yem$hs_" role="3clF46">
                <property role="TrG5h" value="component" />
                <node concept="3uibUv" id="4Hbpy_fxlcf" role="1tU5fm">
                  <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
                </node>
                <node concept="2AHcQZ" id="5er1Yem$hsB" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$hsC" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3clFbS" id="5er1Yem$hsD" role="3clF47">
                <node concept="3clFbF" id="5hluBvQ7_79" role="3cqZAp">
                  <node concept="2OqwBi" id="5hluBvQ7_Iv" role="3clFbG">
                    <node concept="37vLTw" id="5hluBvQ7_78" role="2Oq$k0">
                      <ref role="3cqZAo" node="5hluBvQ7ia3" resolve="myAuxComponents" />
                    </node>
                    <node concept="liA8E" id="5hluBvQ7ApQ" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.getOrDefault(java.lang.Object,java.lang.Object)" resolve="getOrDefault" />
                      <node concept="37vLTw" id="5hluBvQ7B0W" role="37wK5m">
                        <ref role="3cqZAo" node="5er1Yem$hs_" resolve="component" />
                      </node>
                      <node concept="2YIFZM" id="6xq_LPBxqN3" role="37wK5m">
                        <ref role="37wK5l" to="33ny:~Collections.emptySet()" resolve="emptySet" />
                        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                        <node concept="3uibUv" id="6xq_LPBxr6E" role="3PaCim">
                          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5er1Yem$hsF" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="4Hbpy_fxmmg" role="2Ghqu4">
              <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
            </node>
            <node concept="3uibUv" id="5hluBvQ7Cti" role="2Ghqu4">
              <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XL_2Cp" role="jymVt" />
    <node concept="2tJIrI" id="1hwo9XL_2UK" role="jymVt" />
    <node concept="3Tm1VV" id="5er1YemzlqM" role="1B3o_S" />
    <node concept="3clFb_" id="1hwo9XL_7Eg" role="jymVt">
      <property role="TrG5h" value="getDiagramView" />
      <node concept="3uibUv" id="1hwo9XL_7Eh" role="3clF45">
        <ref role="3uigEE" to="5lkm:4O0ojQpH$TE" resolve="DiagramView" />
        <node concept="3uibUv" id="1hwo9XL_7Ei" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
        <node concept="3uibUv" id="1hwo9XL_7Ej" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
        </node>
        <node concept="3uibUv" id="1hwo9XL_7Ek" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1hwo9XL_7El" role="1B3o_S" />
      <node concept="3clFbS" id="1hwo9XL_7Em" role="3clF47">
        <node concept="3clFbF" id="1hwo9XL_7En" role="3cqZAp">
          <node concept="37vLTw" id="1hwo9XL_c$o" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem$b2d" resolve="myDiagramView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1hwo9XL_7Er" role="jymVt">
      <property role="TrG5h" value="getComponentsView" />
      <node concept="3uibUv" id="1hwo9XL_7Es" role="3clF45">
        <ref role="3uigEE" to="hyqd:1KCfUoKQiq3" resolve="ComponentsView" />
        <node concept="3uibUv" id="1hwo9XL_7Et" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1hwo9XL_7Eu" role="1B3o_S" />
      <node concept="3clFbS" id="1hwo9XL_7Ev" role="3clF47">
        <node concept="3clFbF" id="1hwo9XL_7Ew" role="3cqZAp">
          <node concept="37vLTw" id="1hwo9XL_dc4" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem$ee_" resolve="myComponentsView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1hwo9XL_7E$" role="jymVt">
      <property role="TrG5h" value="getExtensionsView" />
      <node concept="3uibUv" id="1hwo9XL_7E_" role="3clF45">
        <ref role="3uigEE" to="hyqd:4bHpKVAnix_" resolve="ComponentExtsView" />
        <node concept="3uibUv" id="4Hbpy_fxiTQ" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
        <node concept="3uibUv" id="1hwo9XL_7EB" role="11_B2D">
          <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1hwo9XL_7EC" role="1B3o_S" />
      <node concept="3clFbS" id="1hwo9XL_7ED" role="3clF47">
        <node concept="3clFbF" id="1hwo9XL_7EE" role="3cqZAp">
          <node concept="37vLTw" id="1hwo9XL_djS" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem$gLk" resolve="myExtensionsView" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Hbpy_fzbsw" role="jymVt">
      <property role="TrG5h" value="getComponentView" />
      <node concept="3clFbS" id="4Hbpy_fzbsz" role="3clF47">
        <node concept="3clFbF" id="4Hbpy_fzi0w" role="3cqZAp">
          <node concept="2OqwBi" id="4Hbpy_f$8GU" role="3clFbG">
            <node concept="37vLTw" id="4Hbpy_fzi0v" role="2Oq$k0">
              <ref role="3cqZAo" node="4Hbpy_fxY4g" resolve="myElementModelMap" />
            </node>
            <node concept="liA8E" id="4Hbpy_f$9qV" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="4Hbpy_f$aTM" role="37wK5m">
                <ref role="3cqZAo" node="4Hbpy_f$2hO" resolve="element" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Hbpy_fz3uB" role="1B3o_S" />
      <node concept="3uibUv" id="4Hbpy_fzW1K" role="3clF45">
        <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
      </node>
      <node concept="37vLTG" id="4Hbpy_f$2hO" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3uibUv" id="4Hbpy_f$2hN" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Element" resolve="Element" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2wHo_lFQAnI" role="jymVt">
      <property role="TrG5h" value="getConnectionView" />
      <node concept="3clFbS" id="2wHo_lFQAnJ" role="3clF47">
        <node concept="3clFbF" id="2wHo_lFQAnK" role="3cqZAp">
          <node concept="2OqwBi" id="2wHo_lFQAnL" role="3clFbG">
            <node concept="37vLTw" id="2wHo_lFRVKX" role="2Oq$k0">
              <ref role="3cqZAo" node="2wHo_lFR0qR" resolve="myConnectionModelMap" />
            </node>
            <node concept="liA8E" id="2wHo_lFQAnN" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="2wHo_lFQAnO" role="37wK5m">
                <ref role="3cqZAo" node="2wHo_lFQAnR" resolve="connection" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2wHo_lFQAnP" role="1B3o_S" />
      <node concept="3uibUv" id="2wHo_lFRNZZ" role="3clF45">
        <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
      </node>
      <node concept="37vLTG" id="2wHo_lFQAnR" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="3uibUv" id="2wHo_lFQZDT" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Hbpy_f$ba4" role="jymVt">
      <property role="TrG5h" value="getPortView" />
      <node concept="3clFbS" id="4Hbpy_f$ba5" role="3clF47">
        <node concept="3clFbF" id="4Hbpy_f$ba6" role="3cqZAp">
          <node concept="2OqwBi" id="4Hbpy_f$ba7" role="3clFbG">
            <node concept="37vLTw" id="4Hbpy_fB1Xf" role="2Oq$k0">
              <ref role="3cqZAo" node="4Hbpy_f$uRX" resolve="myPortModelMap" />
            </node>
            <node concept="liA8E" id="4Hbpy_f$ba9" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="4Hbpy_f$baa" role="37wK5m">
                <ref role="3cqZAo" node="4Hbpy_f$bad" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Hbpy_f$bab" role="1B3o_S" />
      <node concept="3uibUv" id="4Hbpy_f$oCV" role="3clF45">
        <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
      </node>
      <node concept="37vLTG" id="4Hbpy_f$bad" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="4Hbpy_f$o8I" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="4Hbpy_f$oeA" role="11_B2D" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5er1Yemzkmb">
    <property role="TrG5h" value="FunctionBlockView" />
    <node concept="2tJIrI" id="5er1Yem_ugN" role="jymVt" />
    <node concept="312cEg" id="5er1Yem_ugS" role="jymVt">
      <property role="TrG5h" value="myFunctionBlock" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yem_ugT" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yem_v0I" role="1tU5fm">
        <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
      </node>
      <node concept="2AHcQZ" id="5er1Yem_w6y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="312cEg" id="4Hbpy_flVtR" role="jymVt">
      <property role="TrG5h" value="myAssociatedNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Hbpy_flUOP" role="1B3o_S" />
      <node concept="3Tqbb2" id="4Hbpy_flVoG" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5er1Yem_ugW" role="jymVt">
      <property role="TrG5h" value="myTypeDescriptor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yem_ugX" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemBX8Y" role="1tU5fm">
        <ref role="3uigEE" node="31Fn7oZuTwK" resolve="TypeDescriptorAdapter" />
      </node>
    </node>
    <node concept="312cEg" id="5er1Yem_ugZ" role="jymVt">
      <property role="TrG5h" value="myIsEditable" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yem_uh0" role="1B3o_S" />
      <node concept="10P_77" id="5er1Yem_uh1" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5er1Yem_uh2" role="jymVt" />
    <node concept="3clFbW" id="5er1Yem_uh3" role="jymVt">
      <node concept="3cqZAl" id="5er1Yem_uh4" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem_uh5" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_uh6" role="3clF47">
        <node concept="3clFbF" id="5er1Yem_uhb" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem_uhc" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem_uhd" role="37vLTx">
              <ref role="3cqZAo" node="5er1Yem_uh$" resolve="functionBlock" />
            </node>
            <node concept="37vLTw" id="5er1Yem_uhe" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem_ugS" resolve="myFunctionBlock" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Hbpy_flW2K" role="3cqZAp">
          <node concept="37vLTI" id="4Hbpy_flWmB" role="3clFbG">
            <node concept="37vLTw" id="4Hbpy_flW2I" role="37vLTJ">
              <ref role="3cqZAo" node="4Hbpy_flVtR" resolve="myAssociatedNode" />
            </node>
            <node concept="2OqwBi" id="4Hbpy_fn4Ei" role="37vLTx">
              <node concept="1eOMI4" id="4Hbpy_fmYeA" role="2Oq$k0">
                <node concept="10QFUN" id="4Hbpy_fmGdG" role="1eOMHV">
                  <node concept="37vLTw" id="4Hbpy_fmGdF" role="10QFUP">
                    <ref role="3cqZAo" node="5er1Yem_uh$" resolve="functionBlock" />
                  </node>
                  <node concept="3uibUv" id="4Hbpy_fmLXR" role="10QFUM">
                    <ref role="3uigEE" to="rwq3:3VhUp_YMiEx" resolve="FunctionBlockDeclarationBaseByNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4Hbpy_fnbcZ" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1YemBXfl" role="3cqZAp">
          <node concept="37vLTI" id="5er1YemBX$c" role="3clFbG">
            <node concept="2ShNRf" id="5er1YemBXF$" role="37vLTx">
              <node concept="1pGfFk" id="5er1YemBXFq" role="2ShVmc">
                <ref role="37wK5l" node="31Fn7oZuTGz" resolve="TypeDescriptorAdapter" />
                <node concept="2OqwBi" id="5er1YemBXYO" role="37wK5m">
                  <node concept="37vLTw" id="5er1YemBXHE" role="2Oq$k0">
                    <ref role="3cqZAo" node="5er1Yem_uh$" resolve="functionBlock" />
                  </node>
                  <node concept="liA8E" id="5er1YemBYeD" role="2OqNvi">
                    <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getType()" resolve="getType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5er1YemBXfj" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem_ugW" resolve="myTypeDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem_uhu" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem_uhv" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem_uhw" role="37vLTx">
              <ref role="3cqZAo" node="5er1Yem_uhB" resolve="isEditable" />
            </node>
            <node concept="37vLTw" id="5er1Yem_uhx" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem_ugZ" resolve="myIsEditable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5er1Yem_uh$" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3uibUv" id="5er1Yem_vSF" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="5er1Yem_uhA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5er1Yem_uhB" role="3clF46">
        <property role="TrG5h" value="isEditable" />
        <node concept="10P_77" id="5er1Yem_uhC" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Hbpy_fnUwZ" role="jymVt" />
    <node concept="3clFb_" id="4Hbpy_fnYG6" role="jymVt">
      <property role="TrG5h" value="getAssociatedNode" />
      <node concept="3Tqbb2" id="4Hbpy_fnYG7" role="3clF45" />
      <node concept="3Tm1VV" id="4Hbpy_fnYG8" role="1B3o_S" />
      <node concept="3clFbS" id="4Hbpy_fnYG9" role="3clF47">
        <node concept="3clFbF" id="4Hbpy_fnYGa" role="3cqZAp">
          <node concept="37vLTw" id="4Hbpy_fnZZG" role="3clFbG">
            <ref role="3cqZAo" node="4Hbpy_flVtR" resolve="myAssociatedNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem_uhD" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem_uhE" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3uibUv" id="5er1YemB_$5" role="3clF45">
        <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
      </node>
      <node concept="3Tm1VV" id="5er1Yem_uhG" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_uhH" role="3clF47">
        <node concept="3clFbF" id="5er1YemB_u1" role="3cqZAp">
          <node concept="37vLTw" id="5er1YemB_u3" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem_ugS" resolve="myFunctionBlock" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem_uhR" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem_uhS" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem_uhT" role="jymVt">
      <property role="TrG5h" value="isEditable" />
      <node concept="10P_77" id="5er1Yem_uhU" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem_uhV" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_uhW" role="3clF47">
        <node concept="3clFbF" id="5er1Yem_uhX" role="3cqZAp">
          <node concept="37vLTw" id="5er1Yem_uhY" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem_ugZ" resolve="myIsEditable" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1YemC2AH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem_uhZ" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem_ui0" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3uibUv" id="5er1YemBYn$" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
      </node>
      <node concept="3Tm1VV" id="5er1Yem_ui2" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_ui3" role="3clF47">
        <node concept="3clFbF" id="5er1Yem_ui4" role="3cqZAp">
          <node concept="37vLTw" id="5er1Yem_ui5" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem_ugW" resolve="myTypeDescriptor" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem_ui6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemC04N" role="jymVt" />
    <node concept="3clFb_" id="5er1YemC0EI" role="jymVt">
      <property role="TrG5h" value="getBrokenPorts" />
      <node concept="3clFbS" id="5er1YemC0EL" role="3clF47">
        <node concept="3clFbF" id="5er1YemC1nY" role="3cqZAp">
          <node concept="2OqwBi" id="5er1YemC1Bl" role="3clFbG">
            <node concept="37vLTw" id="5er1YemC1nX" role="2Oq$k0">
              <ref role="3cqZAo" node="5er1Yem_ugW" resolve="myTypeDescriptor" />
            </node>
            <node concept="liA8E" id="5er1YemC1QW" role="2OqNvi">
              <ref role="37wK5l" node="5er1YemBNfd" resolve="getBrokenPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5er1YemC0mw" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemC0_y" role="3clF45">
        <ref role="3uigEE" node="31Fn7oZuPMK" resolve="TypeDescriptorAdapter.BrokenPorts" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Hbpy_fnSJg" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem_uif" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5er1Yem_uig" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem_uih" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_uii" role="3clF47">
        <node concept="3clFbJ" id="5er1Yem_uij" role="3cqZAp">
          <node concept="3clFbS" id="5er1Yem_uik" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_uil" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_uim" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5er1Yem_uin" role="3clFbw">
            <node concept="Xjq3P" id="5er1Yem_uio" role="3uHU7B" />
            <node concept="37vLTw" id="5er1Yem_uip" role="3uHU7w">
              <ref role="3cqZAo" node="5er1Yem_uj5" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5er1Yem_uiq" role="3cqZAp">
          <node concept="3clFbS" id="5er1Yem_uir" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_uis" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_uit" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5er1Yem_uiu" role="3clFbw">
            <node concept="3clFbC" id="5er1Yem_uiv" role="3uHU7B">
              <node concept="37vLTw" id="5er1Yem_uiw" role="3uHU7B">
                <ref role="3cqZAo" node="5er1Yem_uj5" resolve="o" />
              </node>
              <node concept="10Nm6u" id="5er1Yem_uix" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5er1Yem_uiy" role="3uHU7w">
              <node concept="2OqwBi" id="5er1Yem_uiz" role="3uHU7B">
                <node concept="Xjq3P" id="5er1Yem_ui$" role="2Oq$k0" />
                <node concept="liA8E" id="5er1Yem_ui_" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="5er1Yem_uiA" role="3uHU7w">
                <node concept="37vLTw" id="5er1Yem_uiB" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yem_uj5" resolve="o" />
                </node>
                <node concept="liA8E" id="5er1Yem_uiC" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5er1Yem_uiD" role="3cqZAp" />
        <node concept="3cpWs8" id="5er1Yem_uiE" role="3cqZAp">
          <node concept="3cpWsn" id="5er1Yem_uiF" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5er1YemC1Sq" role="1tU5fm">
              <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
            </node>
            <node concept="10QFUN" id="5er1Yem_uiH" role="33vP2m">
              <node concept="3uibUv" id="5er1YemC22V" role="10QFUM">
                <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
              </node>
              <node concept="37vLTw" id="5er1Yem_uiJ" role="10QFUP">
                <ref role="3cqZAo" node="5er1Yem_uj5" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$tHdG2fbHM" role="3cqZAp">
          <node concept="17R0WA" id="6$tHdG2fbYt" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem_uiY" role="3uHU7B">
              <ref role="3cqZAo" node="5er1Yem_ugS" resolve="myFunctionBlock" />
            </node>
            <node concept="2OqwBi" id="5er1Yem_uiZ" role="3uHU7w">
              <node concept="37vLTw" id="5er1Yem_uj0" role="2Oq$k0">
                <ref role="3cqZAo" node="5er1Yem_uiF" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5er1YemC2iu" role="2OqNvi">
                <ref role="2Oxat5" node="5er1Yem_ugS" resolve="myFunctionBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5er1Yem_uj5" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5er1Yem_uj6" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem_uj7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5er1Yem_uj8" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5er1Yem_uj9" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem_uja" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_ujb" role="3clF47">
        <node concept="3clFbF" id="6$tHdG2faHn" role="3cqZAp">
          <node concept="2OqwBi" id="5er1Yem_ujt" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem_uju" role="2Oq$k0">
              <ref role="3cqZAo" node="5er1Yem_ugS" resolve="myFunctionBlock" />
            </node>
            <node concept="liA8E" id="5er1Yem_ujv" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem_ujA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem_ugy" role="jymVt" />
    <node concept="3Tm1VV" id="5er1Yemzkmc" role="1B3o_S" />
    <node concept="3uibUv" id="5er1Yem$TTX" role="EKbjA">
      <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
    </node>
  </node>
  <node concept="312cEu" id="5er1Yemzkpx">
    <property role="TrG5h" value="InlineValueView" />
    <node concept="2tJIrI" id="2jkJwnb4wHe" role="jymVt" />
    <node concept="312cEg" id="2jkJwnb4zL3" role="jymVt">
      <property role="TrG5h" value="myOpposite" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2jkJwnb4zjN" role="1B3o_S" />
      <node concept="3uibUv" id="2jkJwnb4zDr" role="1tU5fm">
        <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
      </node>
    </node>
    <node concept="312cEg" id="3V49AcvP7Cj" role="jymVt">
      <property role="TrG5h" value="myExpression" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3V49AcvP7eu" role="1B3o_S" />
      <node concept="3uibUv" id="3V49AcvP7vT" role="1tU5fm">
        <ref role="3uigEE" to="h353:~Expression" resolve="Expression" />
      </node>
    </node>
    <node concept="312cEg" id="4Hbpy_fsugd" role="jymVt">
      <property role="TrG5h" value="myAssociatedNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Hbpy_fstyP" role="1B3o_S" />
      <node concept="3Tqbb2" id="4Hbpy_fsu6U" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2jkJwnb4wHz" role="jymVt" />
    <node concept="3clFbW" id="2jkJwnb4wH$" role="jymVt">
      <property role="TrG5h" value="FunctionBlockPortIdentity" />
      <node concept="3cqZAl" id="2jkJwnb4wH_" role="3clF45" />
      <node concept="3Tm1VV" id="2jkJwnb4wHA" role="1B3o_S" />
      <node concept="37vLTG" id="2jkJwnb4wHB" role="3clF46">
        <property role="TrG5h" value="opposite" />
        <node concept="3uibUv" id="2jkJwnb4_QO" role="1tU5fm">
          <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
        </node>
      </node>
      <node concept="37vLTG" id="3V49AcvP87m" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3uibUv" id="3V49AcvP8gE" role="1tU5fm">
          <ref role="3uigEE" to="h353:~Expression" resolve="Expression" />
        </node>
      </node>
      <node concept="3clFbS" id="2jkJwnb4wHM" role="3clF47">
        <node concept="3clFbF" id="2jkJwnb4wHN" role="3cqZAp">
          <node concept="37vLTI" id="2jkJwnb4wHO" role="3clFbG">
            <node concept="37vLTw" id="2jkJwnb4wHP" role="37vLTx">
              <ref role="3cqZAo" node="2jkJwnb4wHB" resolve="opposite" />
            </node>
            <node concept="37vLTw" id="2jkJwnb4BF_" role="37vLTJ">
              <ref role="3cqZAo" node="2jkJwnb4zL3" resolve="myOpposite" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V49AcvP8jQ" role="3cqZAp">
          <node concept="37vLTI" id="3V49AcvP8Eh" role="3clFbG">
            <node concept="37vLTw" id="3V49AcvP8Pw" role="37vLTx">
              <ref role="3cqZAo" node="3V49AcvP87m" resolve="expression" />
            </node>
            <node concept="37vLTw" id="3V49AcvP8jO" role="37vLTJ">
              <ref role="3cqZAo" node="3V49AcvP7Cj" resolve="myExpression" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Hbpy_fsuOC" role="3cqZAp">
          <node concept="37vLTI" id="4Hbpy_fsv6e" role="3clFbG">
            <node concept="2OqwBi" id="4Hbpy_fswag" role="37vLTx">
              <node concept="1eOMI4" id="4Hbpy_fsvA2" role="2Oq$k0">
                <node concept="10QFUN" id="4Hbpy_fsvE9" role="1eOMHV">
                  <node concept="37vLTw" id="4Hbpy_fsvE8" role="10QFUP">
                    <ref role="3cqZAo" node="3V49AcvP87m" resolve="expression" />
                  </node>
                  <node concept="3uibUv" id="4Hbpy_fsvG8" role="10QFUM">
                    <ref role="3uigEE" to="sm75:1KgvZpgp5L3" resolve="ExpressionByNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4Hbpy_fsw$C" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
              </node>
            </node>
            <node concept="37vLTw" id="4Hbpy_fsuOA" role="37vLTJ">
              <ref role="3cqZAo" node="4Hbpy_fsugd" resolve="myAssociatedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5F$aghy5DlB" role="jymVt" />
    <node concept="3clFb_" id="5F$aghy5EJ5" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3Tm1VV" id="5F$aghy5EJ7" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghy5EJ8" role="3clF45">
        <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
      </node>
      <node concept="2AHcQZ" id="5F$aghy5EJ9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5F$aghy5EJa" role="3clF47">
        <node concept="3clFbF" id="5F$aghy5F1j" role="3cqZAp">
          <node concept="Xjq3P" id="5F$aghy5F1g" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5F$aghy5EJb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5F$aghy5GsL" role="jymVt" />
    <node concept="3clFb_" id="5F$aghy5FAJ" role="jymVt">
      <property role="TrG5h" value="getOpposite" />
      <node concept="3uibUv" id="5F$aghy5FAK" role="3clF45">
        <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
      </node>
      <node concept="3Tm1VV" id="5F$aghy5FAL" role="1B3o_S" />
      <node concept="3clFbS" id="5F$aghy5FAM" role="3clF47">
        <node concept="3clFbF" id="5F$aghy5FAN" role="3cqZAp">
          <node concept="37vLTw" id="5F$aghy5HfP" role="3clFbG">
            <ref role="3cqZAo" node="2jkJwnb4zL3" resolve="myOpposite" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5F$aghy5HYy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3V49AcvP9mL" role="jymVt" />
    <node concept="3clFb_" id="2jkJwnb4wIi" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="2jkJwnb4wIj" role="1B3o_S" />
      <node concept="3uibUv" id="2jkJwnb4wIk" role="3clF45">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="2jkJwnb4wIl" role="3clF47">
        <node concept="3clFbF" id="2jkJwnb4_Ub" role="3cqZAp">
          <node concept="Rm8GO" id="2jkJwnb4A9U" role="3clFbG">
            <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
            <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3V49AcvP8SC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3V49AcvP9_I" role="jymVt" />
    <node concept="3clFb_" id="3V49AcvPaaa" role="jymVt">
      <property role="TrG5h" value="getExpression" />
      <node concept="3uibUv" id="3V49AcvPaab" role="3clF45">
        <ref role="3uigEE" to="h353:~Expression" resolve="Expression" />
      </node>
      <node concept="3Tm1VV" id="3V49AcvPaac" role="1B3o_S" />
      <node concept="3clFbS" id="3V49AcvPaad" role="3clF47">
        <node concept="3clFbF" id="3V49AcvPaae" role="3cqZAp">
          <node concept="37vLTw" id="3V49AcvPbld" role="3clFbG">
            <ref role="3cqZAo" node="3V49AcvP7Cj" resolve="myExpression" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3V49AcvPbwA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jkJwnb4FvS" role="jymVt" />
    <node concept="3clFb_" id="2jkJwnb4FZg" role="jymVt">
      <property role="TrG5h" value="isEditable" />
      <node concept="3Tm1VV" id="2jkJwnb4FZi" role="1B3o_S" />
      <node concept="10P_77" id="2jkJwnb4FZj" role="3clF45" />
      <node concept="3clFbS" id="2jkJwnb4FZk" role="3clF47">
        <node concept="3clFbF" id="2jkJwnb4FZn" role="3cqZAp">
          <node concept="3clFbT" id="2jkJwnb4FZm" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2jkJwnb4FZl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jkJwnb4wHg" role="jymVt" />
    <node concept="3clFb_" id="4Hbpy_fsxfE" role="jymVt">
      <property role="TrG5h" value="getAssociatedNode" />
      <node concept="3Tqbb2" id="4Hbpy_fsxfF" role="3clF45" />
      <node concept="3Tm1VV" id="4Hbpy_fsxfG" role="1B3o_S" />
      <node concept="3clFbS" id="4Hbpy_fsxfH" role="3clF47">
        <node concept="3clFbF" id="4Hbpy_fsxfI" role="3cqZAp">
          <node concept="2OqwBi" id="4Hbpy_fsxfB" role="3clFbG">
            <node concept="Xjq3P" id="4Hbpy_fsxfC" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Hbpy_fsxfD" role="2OqNvi">
              <ref role="2Oxat5" node="4Hbpy_fsugd" resolve="myAssociatedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jkJwnb4wIK" role="jymVt" />
    <node concept="3clFb_" id="2jkJwnb4wIL" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="2jkJwnb4wIM" role="3clF45" />
      <node concept="3Tm1VV" id="2jkJwnb4wIN" role="1B3o_S" />
      <node concept="3clFbS" id="2jkJwnb4wIO" role="3clF47">
        <node concept="3clFbJ" id="2jkJwnb4wIP" role="3cqZAp">
          <node concept="3clFbS" id="2jkJwnb4wIQ" role="3clFbx">
            <node concept="3cpWs6" id="2jkJwnb4wIR" role="3cqZAp">
              <node concept="3clFbT" id="2jkJwnb4wIS" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2jkJwnb4wIT" role="3clFbw">
            <node concept="Xjq3P" id="2jkJwnb4wIU" role="3uHU7B" />
            <node concept="37vLTw" id="2jkJwnb4wIV" role="3uHU7w">
              <ref role="3cqZAo" node="2jkJwnb4wJT" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2jkJwnb4wIW" role="3cqZAp">
          <node concept="3clFbS" id="2jkJwnb4wIX" role="3clFbx">
            <node concept="3cpWs6" id="2jkJwnb4wIY" role="3cqZAp">
              <node concept="3clFbT" id="2jkJwnb4wIZ" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2jkJwnb4wJ0" role="3clFbw">
            <node concept="3clFbC" id="2jkJwnb4wJ1" role="3uHU7B">
              <node concept="37vLTw" id="2jkJwnb4wJ2" role="3uHU7B">
                <ref role="3cqZAo" node="2jkJwnb4wJT" resolve="o" />
              </node>
              <node concept="10Nm6u" id="2jkJwnb4wJ3" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="2jkJwnb4wJ4" role="3uHU7w">
              <node concept="2OqwBi" id="2jkJwnb4wJ5" role="3uHU7B">
                <node concept="Xjq3P" id="2jkJwnb4wJ6" role="2Oq$k0" />
                <node concept="liA8E" id="2jkJwnb4wJ7" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="2jkJwnb4wJ8" role="3uHU7w">
                <node concept="37vLTw" id="2jkJwnb4wJ9" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jkJwnb4wJT" resolve="o" />
                </node>
                <node concept="liA8E" id="2jkJwnb4wJa" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jkJwnb4wJb" role="3cqZAp" />
        <node concept="3cpWs8" id="2jkJwnb4wJc" role="3cqZAp">
          <node concept="3cpWsn" id="2jkJwnb4wJd" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="2jkJwnb4CmS" role="1tU5fm">
              <ref role="3uigEE" node="5er1Yemzkpx" resolve="InlineValueView" />
            </node>
            <node concept="10QFUN" id="2jkJwnb4wJf" role="33vP2m">
              <node concept="3uibUv" id="2jkJwnb4Cy4" role="10QFUM">
                <ref role="3uigEE" node="5er1Yemzkpx" resolve="InlineValueView" />
              </node>
              <node concept="37vLTw" id="2jkJwnb4wJh" role="10QFUP">
                <ref role="3cqZAo" node="2jkJwnb4wJT" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jkJwnb4E7f" role="3cqZAp">
          <node concept="17R0WA" id="2jkJwnb4DEk" role="3clFbG">
            <node concept="37vLTw" id="2jkJwnb4C3$" role="3uHU7B">
              <ref role="3cqZAo" node="2jkJwnb4zL3" resolve="myOpposite" />
            </node>
            <node concept="2OqwBi" id="2jkJwnb4wJo" role="3uHU7w">
              <node concept="37vLTw" id="2jkJwnb4wJp" role="2Oq$k0">
                <ref role="3cqZAo" node="2jkJwnb4wJd" resolve="that" />
              </node>
              <node concept="2OwXpG" id="2jkJwnb4CQY" role="2OqNvi">
                <ref role="2Oxat5" node="2jkJwnb4zL3" resolve="myOpposite" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jkJwnb4wJT" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="2jkJwnb4wJU" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2jkJwnb4wJV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jkJwnb4wJW" role="jymVt" />
    <node concept="3clFb_" id="2jkJwnb4wJX" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="2jkJwnb4wJY" role="3clF45" />
      <node concept="3Tm1VV" id="2jkJwnb4wJZ" role="1B3o_S" />
      <node concept="3clFbS" id="2jkJwnb4wK0" role="3clF47">
        <node concept="3clFbF" id="2jkJwnb4Fl0" role="3cqZAp">
          <node concept="2OqwBi" id="2jkJwnb4wK9" role="3clFbG">
            <node concept="37vLTw" id="2jkJwnb4EJI" role="2Oq$k0">
              <ref role="3cqZAo" node="2jkJwnb4zL3" resolve="myOpposite" />
            </node>
            <node concept="liA8E" id="2jkJwnb4wKb" role="2OqNvi">
              <ref role="37wK5l" node="5er1Yem_0Zb" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2jkJwnb4wKL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5er1Yemzkp2" role="1B3o_S" />
    <node concept="3uibUv" id="5er1Yemzmpb" role="EKbjA">
      <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
    </node>
    <node concept="3uibUv" id="2jkJwnb4o86" role="EKbjA">
      <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
    </node>
  </node>
  <node concept="312cEu" id="5er1Yemzkuz">
    <property role="TrG5h" value="InterfaceEndpointView" />
    <node concept="312cEg" id="5hluBvQ4u1r" role="jymVt">
      <property role="TrG5h" value="myPosition" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5hluBvQ4u1s" role="1B3o_S" />
      <node concept="10Oyi0" id="5hluBvQ4u1t" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5hluBvQ4u1u" role="jymVt">
      <property role="TrG5h" value="myKind" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5hluBvQ4u1v" role="1B3o_S" />
      <node concept="3uibUv" id="5hluBvQ4u1w" role="1tU5fm">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
    </node>
    <node concept="312cEg" id="5hluBvQ4u1x" role="jymVt">
      <property role="TrG5h" value="myIsSource" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5hluBvQ4u1y" role="1B3o_S" />
      <node concept="10P_77" id="5hluBvQ4u1z" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Hbpy_fnll0" role="jymVt">
      <property role="TrG5h" value="myAssociatedNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Hbpy_fnkEY" role="1B3o_S" />
      <node concept="3Tqbb2" id="4Hbpy_fnlbE" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5hluBvQ4u1$" role="jymVt">
      <property role="TrG5h" value="myTarget" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5hluBvQ4u1_" role="1B3o_S" />
      <node concept="3uibUv" id="5hluBvQ4u1A" role="1tU5fm">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="5hluBvQ4u1B" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5hluBvQ4u1C" role="jymVt" />
    <node concept="3clFbW" id="5hluBvQ4u1D" role="jymVt">
      <property role="TrG5h" value="FunctionBlockPortIdentity" />
      <node concept="3cqZAl" id="5hluBvQ4u1E" role="3clF45" />
      <node concept="3Tm1VV" id="5hluBvQ4u1F" role="1B3o_S" />
      <node concept="37vLTG" id="5hluBvQ4u1I" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="10Oyi0" id="5hluBvQ4u1J" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5hluBvQ4u1K" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="5hluBvQ4u1L" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
        </node>
      </node>
      <node concept="37vLTG" id="5hluBvQ4u1M" role="3clF46">
        <property role="TrG5h" value="isSource" />
        <node concept="10P_77" id="5hluBvQ4u1N" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5hluBvQ4u1O" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="5hluBvQ4u1P" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
        <node concept="2AHcQZ" id="5hluBvQ4u1Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5hluBvQ4u1R" role="3clF47">
        <node concept="3clFbF" id="5hluBvQ4u1W" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ4u1X" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ4u1Y" role="37vLTx">
              <ref role="3cqZAo" node="5hluBvQ4u1I" resolve="position" />
            </node>
            <node concept="37vLTw" id="5hluBvQ4u1Z" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ4u1r" resolve="myPosition" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ4u20" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ4u21" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ4u22" role="37vLTx">
              <ref role="3cqZAo" node="5hluBvQ4u1K" resolve="kind" />
            </node>
            <node concept="37vLTw" id="5hluBvQ4u23" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ4u1u" resolve="myKind" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ4u24" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ4u25" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ4u26" role="37vLTx">
              <ref role="3cqZAo" node="5hluBvQ4u1M" resolve="isSource" />
            </node>
            <node concept="37vLTw" id="5hluBvQ4u27" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ4u1x" resolve="myIsSource" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ4u28" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ4u29" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ4u2a" role="37vLTx">
              <ref role="3cqZAo" node="5hluBvQ4u1O" resolve="target" />
            </node>
            <node concept="37vLTw" id="5hluBvQ4u2b" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ4u1$" resolve="myTarget" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Hbpy_fnmZm" role="3cqZAp">
          <node concept="37vLTI" id="4Hbpy_fnnhQ" role="3clFbG">
            <node concept="37vLTw" id="4Hbpy_fnmZk" role="37vLTJ">
              <ref role="3cqZAo" node="4Hbpy_fnll0" resolve="myAssociatedNode" />
            </node>
            <node concept="2OqwBi" id="4Hbpy_fn$Sp" role="37vLTx">
              <node concept="1eOMI4" id="4Hbpy_fn$$C" role="2Oq$k0">
                <node concept="10QFUN" id="4Hbpy_fntNq" role="1eOMHV">
                  <node concept="37vLTw" id="4Hbpy_fnB28" role="10QFUP">
                    <ref role="3cqZAo" node="5hluBvQ4u1O" resolve="target" />
                  </node>
                  <node concept="3uibUv" id="4Hbpy_fnu7V" role="10QFUM">
                    <ref role="3uigEE" to="fcfa:1IuIrLUpCCg" resolve="PlatformDeclarationBase" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4Hbpy_fn_uo" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5F$aghy5Sfg" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3Tm1VV" id="5F$aghy5Sfi" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghy5Sfj" role="3clF45">
        <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
      </node>
      <node concept="2AHcQZ" id="5F$aghy5Sfk" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5F$aghy5Sfl" role="3clF47">
        <node concept="3clFbF" id="5F$aghy5TwC" role="3cqZAp">
          <node concept="Xjq3P" id="5F$aghy5Tw_" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5F$aghy5Sfm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5hluBvQ4GuO" role="jymVt">
      <property role="TrG5h" value="isEditable" />
      <node concept="3Tm1VV" id="5hluBvQ4GuQ" role="1B3o_S" />
      <node concept="10P_77" id="5hluBvQ4GuR" role="3clF45" />
      <node concept="3clFbS" id="5hluBvQ4GuS" role="3clF47">
        <node concept="3clFbF" id="5hluBvQ4GuV" role="3cqZAp">
          <node concept="3clFbT" id="5hluBvQ4GuU" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5hluBvQ4GuT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5hluBvQ4u2n" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="5hluBvQ4u2o" role="1B3o_S" />
      <node concept="3uibUv" id="5hluBvQ4u2p" role="3clF45">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="5hluBvQ4u2q" role="3clF47">
        <node concept="3clFbF" id="5hluBvQ4u2r" role="3cqZAp">
          <node concept="37vLTw" id="5hluBvQ4u2s" role="3clFbG">
            <ref role="3cqZAo" node="5hluBvQ4u1u" resolve="myKind" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5hluBvQ4u2t" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tm1VV" id="5hluBvQ4u2u" role="1B3o_S" />
      <node concept="10Oyi0" id="5hluBvQ4u2v" role="3clF45" />
      <node concept="3clFbS" id="5hluBvQ4u2w" role="3clF47">
        <node concept="3clFbF" id="5hluBvQ4u2x" role="3cqZAp">
          <node concept="37vLTw" id="5hluBvQ4u2y" role="3clFbG">
            <ref role="3cqZAo" node="5hluBvQ4u1r" resolve="myPosition" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5hluBvQ4u2z" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="3Tm1VV" id="5hluBvQ4u2$" role="1B3o_S" />
      <node concept="10P_77" id="5hluBvQ4u2_" role="3clF45" />
      <node concept="3clFbS" id="5hluBvQ4u2A" role="3clF47">
        <node concept="3clFbF" id="5hluBvQ4u2B" role="3cqZAp">
          <node concept="37vLTw" id="5hluBvQ4u2C" role="3clFbG">
            <ref role="3cqZAo" node="5hluBvQ4u1x" resolve="myIsSource" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5hluBvQ4u2D" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="3uibUv" id="5hluBvQ4u2E" role="3clF45">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3Tm1VV" id="5hluBvQ4u2F" role="1B3o_S" />
      <node concept="3clFbS" id="5hluBvQ4u2G" role="3clF47">
        <node concept="3clFbF" id="5hluBvQ4u2H" role="3cqZAp">
          <node concept="37vLTw" id="5hluBvQ4u2I" role="3clFbG">
            <ref role="3cqZAo" node="5hluBvQ4u1$" resolve="myTarget" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Hbpy_fnCy4" role="jymVt">
      <property role="TrG5h" value="getAssociatedNode" />
      <node concept="3Tqbb2" id="4Hbpy_fnCy5" role="3clF45" />
      <node concept="3Tm1VV" id="4Hbpy_fnCy6" role="1B3o_S" />
      <node concept="3clFbS" id="4Hbpy_fnCy7" role="3clF47">
        <node concept="3clFbF" id="4Hbpy_fnCy8" role="3cqZAp">
          <node concept="37vLTw" id="4Hbpy_fnFSg" role="3clFbG">
            <ref role="3cqZAo" node="4Hbpy_fnll0" resolve="myAssociatedNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5hluBvQ4u2P" role="jymVt" />
    <node concept="3clFb_" id="5hluBvQ4u2Q" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5hluBvQ4u2R" role="3clF45" />
      <node concept="3Tm1VV" id="5hluBvQ4u2S" role="1B3o_S" />
      <node concept="3clFbS" id="5hluBvQ4u2T" role="3clF47">
        <node concept="3clFbJ" id="5hluBvQ4u2U" role="3cqZAp">
          <node concept="3clFbS" id="5hluBvQ4u2V" role="3clFbx">
            <node concept="3cpWs6" id="5hluBvQ4u2W" role="3cqZAp">
              <node concept="3clFbT" id="5hluBvQ4u2X" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5hluBvQ4u2Y" role="3clFbw">
            <node concept="Xjq3P" id="5hluBvQ4u2Z" role="3uHU7B" />
            <node concept="37vLTw" id="5hluBvQ4u30" role="3uHU7w">
              <ref role="3cqZAo" node="5hluBvQ4u3Y" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5hluBvQ4u31" role="3cqZAp">
          <node concept="3clFbS" id="5hluBvQ4u32" role="3clFbx">
            <node concept="3cpWs6" id="5hluBvQ4u33" role="3cqZAp">
              <node concept="3clFbT" id="5hluBvQ4u34" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5hluBvQ4u35" role="3clFbw">
            <node concept="3clFbC" id="5hluBvQ4u36" role="3uHU7B">
              <node concept="37vLTw" id="5hluBvQ4u37" role="3uHU7B">
                <ref role="3cqZAo" node="5hluBvQ4u3Y" resolve="o" />
              </node>
              <node concept="10Nm6u" id="5hluBvQ4u38" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5hluBvQ4u39" role="3uHU7w">
              <node concept="2OqwBi" id="5hluBvQ4u3a" role="3uHU7B">
                <node concept="Xjq3P" id="5hluBvQ4u3b" role="2Oq$k0" />
                <node concept="liA8E" id="5hluBvQ4u3c" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="5hluBvQ4u3d" role="3uHU7w">
                <node concept="37vLTw" id="5hluBvQ4u3e" role="2Oq$k0">
                  <ref role="3cqZAo" node="5hluBvQ4u3Y" resolve="o" />
                </node>
                <node concept="liA8E" id="5hluBvQ4u3f" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5hluBvQ4u3g" role="3cqZAp" />
        <node concept="3cpWs8" id="5hluBvQ4u3h" role="3cqZAp">
          <node concept="3cpWsn" id="5hluBvQ4u3i" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5hluBvQ4BQT" role="1tU5fm">
              <ref role="3uigEE" node="5er1Yemzkuz" resolve="InterfaceEndpointView" />
            </node>
            <node concept="10QFUN" id="5hluBvQ4u3k" role="33vP2m">
              <node concept="3uibUv" id="5hluBvQ4B15" role="10QFUM">
                <ref role="3uigEE" node="5er1Yemzkuz" resolve="InterfaceEndpointView" />
              </node>
              <node concept="37vLTw" id="5hluBvQ4u3m" role="10QFUP">
                <ref role="3cqZAo" node="5hluBvQ4u3Y" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5hluBvQ4u3w" role="3cqZAp">
          <node concept="3y3z36" id="5hluBvQ4u3x" role="3clFbw">
            <node concept="2OqwBi" id="5hluBvQ4u3y" role="3uHU7w">
              <node concept="37vLTw" id="5hluBvQ4u3z" role="2Oq$k0">
                <ref role="3cqZAo" node="5hluBvQ4u3i" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5hluBvQ4CkG" role="2OqNvi">
                <ref role="2Oxat5" node="5hluBvQ4u1r" resolve="myPosition" />
              </node>
            </node>
            <node concept="37vLTw" id="5hluBvQ4u3_" role="3uHU7B">
              <ref role="3cqZAo" node="5hluBvQ4u1r" resolve="myPosition" />
            </node>
          </node>
          <node concept="3clFbS" id="5hluBvQ4u3A" role="3clFbx">
            <node concept="3cpWs6" id="5hluBvQ4u3B" role="3cqZAp">
              <node concept="3clFbT" id="5hluBvQ4u3C" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5hluBvQ4u3D" role="3cqZAp">
          <node concept="3clFbS" id="5hluBvQ4u3E" role="3clFbx">
            <node concept="3cpWs6" id="5hluBvQ4u3F" role="3cqZAp">
              <node concept="3clFbT" id="5hluBvQ4u3G" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="5hluBvQ4u3H" role="3clFbw">
            <node concept="37vLTw" id="5hluBvQ4u3I" role="3uHU7B">
              <ref role="3cqZAo" node="5hluBvQ4u1u" resolve="myKind" />
            </node>
            <node concept="2OqwBi" id="5hluBvQ4u3J" role="3uHU7w">
              <node concept="37vLTw" id="5hluBvQ4u3K" role="2Oq$k0">
                <ref role="3cqZAo" node="5hluBvQ4u3i" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5hluBvQ4CVm" role="2OqNvi">
                <ref role="2Oxat5" node="5hluBvQ4u1u" resolve="myKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5hluBvQ4u3M" role="3cqZAp">
          <node concept="3y3z36" id="5hluBvQ4u3N" role="3clFbw">
            <node concept="2OqwBi" id="5hluBvQ4u3O" role="3uHU7w">
              <node concept="37vLTw" id="5hluBvQ4u3P" role="2Oq$k0">
                <ref role="3cqZAo" node="5hluBvQ4u3i" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5hluBvQ4D6u" role="2OqNvi">
                <ref role="2Oxat5" node="5hluBvQ4u1x" resolve="myIsSource" />
              </node>
            </node>
            <node concept="37vLTw" id="5hluBvQ4u3R" role="3uHU7B">
              <ref role="3cqZAo" node="5hluBvQ4u1x" resolve="myIsSource" />
            </node>
          </node>
          <node concept="3clFbS" id="5hluBvQ4u3S" role="3clFbx">
            <node concept="3cpWs6" id="5hluBvQ4u3T" role="3cqZAp">
              <node concept="3clFbT" id="5hluBvQ4u3U" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5hluBvQ4u3V" role="3cqZAp" />
        <node concept="3clFbF" id="5hluBvQ4u3W" role="3cqZAp">
          <node concept="3clFbT" id="5hluBvQ4u3X" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5hluBvQ4u3Y" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5hluBvQ4u3Z" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5hluBvQ4u40" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5hluBvQ4u41" role="jymVt" />
    <node concept="3clFb_" id="5hluBvQ4u42" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5hluBvQ4u43" role="3clF45" />
      <node concept="3Tm1VV" id="5hluBvQ4u44" role="1B3o_S" />
      <node concept="3clFbS" id="5hluBvQ4u45" role="3clF47">
        <node concept="3cpWs8" id="5hluBvQ4u46" role="3cqZAp">
          <node concept="3cpWsn" id="5hluBvQ4u47" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="5hluBvQ4u48" role="1tU5fm" />
            <node concept="3cmrfG" id="5hluBvQ4u49" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ4u4l" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ4u4m" role="3clFbG">
            <node concept="37vLTw" id="5hluBvQ4u4n" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ4u47" resolve="result" />
            </node>
            <node concept="3cpWs3" id="5hluBvQ4u4o" role="37vLTx">
              <node concept="37vLTw" id="5hluBvQ4u4p" role="3uHU7w">
                <ref role="3cqZAo" node="5hluBvQ4u1r" resolve="myPosition" />
              </node>
              <node concept="17qRlL" id="5hluBvQ4u4q" role="3uHU7B">
                <node concept="3cmrfG" id="5hluBvQ4u4r" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5hluBvQ4u4s" role="3uHU7w">
                  <ref role="3cqZAo" node="5hluBvQ4u47" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ4u4t" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ4u4u" role="3clFbG">
            <node concept="3cpWs3" id="5hluBvQ4u4v" role="37vLTx">
              <node concept="1eOMI4" id="5hluBvQ4u4w" role="3uHU7w">
                <node concept="2OqwBi" id="5hluBvQ4u4x" role="1eOMHV">
                  <node concept="37vLTw" id="5hluBvQ4u4y" role="2Oq$k0">
                    <ref role="3cqZAo" node="5hluBvQ4u1u" resolve="myKind" />
                  </node>
                  <node concept="liA8E" id="5hluBvQ4u4z" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Enum.hashCode()" resolve="hashCode" />
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5hluBvQ4u4$" role="3uHU7B">
                <node concept="3cmrfG" id="5hluBvQ4u4_" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5hluBvQ4u4A" role="3uHU7w">
                  <ref role="3cqZAo" node="5hluBvQ4u47" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5hluBvQ4u4B" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ4u47" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ4u4C" role="3cqZAp">
          <node concept="37vLTI" id="5hluBvQ4u4D" role="3clFbG">
            <node concept="3cpWs3" id="5hluBvQ4u4E" role="37vLTx">
              <node concept="1eOMI4" id="5hluBvQ4u4F" role="3uHU7w">
                <node concept="3K4zz7" id="5hluBvQ4u4G" role="1eOMHV">
                  <node concept="3cmrfG" id="5hluBvQ4u4H" role="3K4E3e">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="5hluBvQ4u4I" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5hluBvQ4u4J" role="3K4Cdx">
                    <ref role="3cqZAo" node="5hluBvQ4u1x" resolve="myIsSource" />
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5hluBvQ4u4K" role="3uHU7B">
                <node concept="3cmrfG" id="5hluBvQ4u4L" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5hluBvQ4u4M" role="3uHU7w">
                  <ref role="3cqZAo" node="5hluBvQ4u47" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5hluBvQ4u4N" role="37vLTJ">
              <ref role="3cqZAo" node="5hluBvQ4u47" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5hluBvQ4u4O" role="3cqZAp">
          <node concept="37vLTw" id="5hluBvQ4u4P" role="3clFbG">
            <ref role="3cqZAo" node="5hluBvQ4u47" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5hluBvQ4u4Q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5er1Yemzkua" role="1B3o_S" />
    <node concept="3uibUv" id="5hluBvQ3SSQ" role="EKbjA">
      <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
    </node>
    <node concept="3uibUv" id="5hluBvQ3STq" role="EKbjA">
      <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
    </node>
  </node>
  <node concept="312cEu" id="5er1YemzkBL">
    <property role="TrG5h" value="BrokenPortView" />
    <node concept="2tJIrI" id="1hwo9XLzP81" role="jymVt" />
    <node concept="312cEg" id="1hwo9XLzZDY" role="jymVt">
      <property role="TrG5h" value="myOpposite" />
      <node concept="3Tm6S6" id="1hwo9XLzZDZ" role="1B3o_S" />
      <node concept="3uibUv" id="1hwo9XL$0tr" role="1tU5fm">
        <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
      </node>
      <node concept="10Nm6u" id="1hwo9XL$1Hs" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="1hwo9XLzZEy" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLzZEz" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="1hwo9XLzZE$" role="1B3o_S" />
      <node concept="3uibUv" id="1hwo9XLzZE_" role="3clF45">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="1hwo9XLzZEA" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLzZEB" role="3cqZAp">
          <node concept="2OqwBi" id="1hwo9XL$2OQ" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XL$2_m" role="2Oq$k0">
              <ref role="3cqZAo" node="1hwo9XLzZDY" resolve="myOpposite" />
            </node>
            <node concept="liA8E" id="1hwo9XL$34g" role="2OqNvi">
              <ref role="37wK5l" node="5hluBvQ50xi" resolve="getKind" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLzZED" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLzZEM" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLzZEN" role="jymVt">
      <property role="TrG5h" value="isEditable" />
      <node concept="3Tm1VV" id="1hwo9XLzZEO" role="1B3o_S" />
      <node concept="10P_77" id="1hwo9XLzZEP" role="3clF45" />
      <node concept="3clFbS" id="1hwo9XLzZEQ" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLzZER" role="3cqZAp">
          <node concept="3clFbT" id="1hwo9XLzZES" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLzZET" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Hbpy_fDtFs" role="jymVt" />
    <node concept="3clFb_" id="4Hbpy_fDub4" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3Tm1VV" id="4Hbpy_fDub6" role="1B3o_S" />
      <node concept="3uibUv" id="4Hbpy_fDub7" role="3clF45">
        <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
      </node>
      <node concept="2AHcQZ" id="4Hbpy_fDub8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4Hbpy_fDub9" role="3clF47">
        <node concept="3clFbF" id="4Hbpy_fDviW" role="3cqZAp">
          <node concept="Xjq3P" id="4Hbpy_fDviR" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4Hbpy_fDuba" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLzZEU" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLzZEV" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="1hwo9XLzZEW" role="3clF45" />
      <node concept="3Tm1VV" id="1hwo9XLzZEX" role="1B3o_S" />
      <node concept="3clFbS" id="1hwo9XLzZEY" role="3clF47">
        <node concept="3clFbJ" id="1hwo9XLzZEZ" role="3cqZAp">
          <node concept="3clFbS" id="1hwo9XLzZF0" role="3clFbx">
            <node concept="3cpWs6" id="1hwo9XLzZF1" role="3cqZAp">
              <node concept="3clFbT" id="1hwo9XLzZF2" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1hwo9XLzZF3" role="3clFbw">
            <node concept="Xjq3P" id="1hwo9XLzZF4" role="3uHU7B" />
            <node concept="37vLTw" id="1hwo9XLzZF5" role="3uHU7w">
              <ref role="3cqZAo" node="1hwo9XLzZFy" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1hwo9XLzZF6" role="3cqZAp">
          <node concept="3clFbS" id="1hwo9XLzZF7" role="3clFbx">
            <node concept="3cpWs6" id="1hwo9XLzZF8" role="3cqZAp">
              <node concept="3clFbT" id="1hwo9XLzZF9" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1hwo9XLzZFa" role="3clFbw">
            <node concept="3clFbC" id="1hwo9XLzZFb" role="3uHU7B">
              <node concept="37vLTw" id="1hwo9XLzZFc" role="3uHU7B">
                <ref role="3cqZAo" node="1hwo9XLzZFy" resolve="o" />
              </node>
              <node concept="10Nm6u" id="1hwo9XLzZFd" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="1hwo9XLzZFe" role="3uHU7w">
              <node concept="2OqwBi" id="1hwo9XLzZFf" role="3uHU7B">
                <node concept="Xjq3P" id="1hwo9XLzZFg" role="2Oq$k0" />
                <node concept="liA8E" id="1hwo9XLzZFh" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="1hwo9XLzZFi" role="3uHU7w">
                <node concept="37vLTw" id="1hwo9XLzZFj" role="2Oq$k0">
                  <ref role="3cqZAo" node="1hwo9XLzZFy" resolve="o" />
                </node>
                <node concept="liA8E" id="1hwo9XLzZFk" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1hwo9XLzZFl" role="3cqZAp" />
        <node concept="3cpWs8" id="1hwo9XLzZFm" role="3cqZAp">
          <node concept="3cpWsn" id="1hwo9XLzZFn" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="1hwo9XL$6vo" role="1tU5fm">
              <ref role="3uigEE" node="5er1YemzkBL" resolve="BrokenPortView" />
            </node>
            <node concept="10QFUN" id="1hwo9XLzZFp" role="33vP2m">
              <node concept="3uibUv" id="1hwo9XL$6jx" role="10QFUM">
                <ref role="3uigEE" node="5er1YemzkBL" resolve="BrokenPortView" />
              </node>
              <node concept="37vLTw" id="1hwo9XLzZFr" role="10QFUP">
                <ref role="3cqZAo" node="1hwo9XLzZFy" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1hwo9XLzZFs" role="3cqZAp">
          <node concept="17R0WA" id="1hwo9XLzZFt" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XLzZFu" role="3uHU7B">
              <ref role="3cqZAo" node="1hwo9XLzZDY" resolve="myOpposite" />
            </node>
            <node concept="2OqwBi" id="1hwo9XLzZFv" role="3uHU7w">
              <node concept="37vLTw" id="1hwo9XLzZFw" role="2Oq$k0">
                <ref role="3cqZAo" node="1hwo9XLzZFn" resolve="that" />
              </node>
              <node concept="2OwXpG" id="1hwo9XL$6LO" role="2OqNvi">
                <ref role="2Oxat5" node="1hwo9XLzZDY" resolve="myOpposite" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1hwo9XLzZFy" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1hwo9XLzZFz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLzZF$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLzZF_" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLzZFA" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="1hwo9XLzZFB" role="3clF45" />
      <node concept="3Tm1VV" id="1hwo9XLzZFC" role="1B3o_S" />
      <node concept="3clFbS" id="1hwo9XLzZFD" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLzZFE" role="3cqZAp">
          <node concept="2OqwBi" id="1hwo9XLzZFF" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XLzZFG" role="2Oq$k0">
              <ref role="3cqZAo" node="1hwo9XLzZDY" resolve="myOpposite" />
            </node>
            <node concept="liA8E" id="1hwo9XLzZFH" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLzZFI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLzP83" role="jymVt" />
    <node concept="3Tm1VV" id="5er1Yemzk_3" role="1B3o_S" />
    <node concept="3uibUv" id="1hwo9XLzP75" role="EKbjA">
      <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
    </node>
    <node concept="3uibUv" id="1hwo9XLzP7D" role="EKbjA">
      <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
    </node>
    <node concept="3clFb_" id="1hwo9XL$5mY" role="jymVt">
      <property role="TrG5h" value="setOpposite" />
      <node concept="3cqZAl" id="1hwo9XL$5mZ" role="3clF45" />
      <node concept="3Tm1VV" id="1hwo9XL$5n0" role="1B3o_S" />
      <node concept="3clFbS" id="1hwo9XL$5n1" role="3clF47">
        <node concept="3clFbF" id="1hwo9XL$5n2" role="3cqZAp">
          <node concept="37vLTI" id="1hwo9XL$5n3" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XL$5n4" role="37vLTx">
              <ref role="3cqZAo" node="1hwo9XL$5n5" resolve="opposite" />
            </node>
            <node concept="37vLTw" id="1hwo9XL$5AP" role="37vLTJ">
              <ref role="3cqZAo" node="1hwo9XLzZDY" resolve="myOpposite" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1hwo9XL$5n5" role="3clF46">
        <property role="TrG5h" value="opposite" />
        <node concept="3uibUv" id="1hwo9XL$5n6" role="1tU5fm">
          <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5er1YemzlNF">
    <property role="TrG5h" value="NetworkComponentView" />
    <node concept="2tJIrI" id="5er1YemzlP5" role="jymVt" />
    <node concept="3clFb_" id="5er1Yemzm5Z" role="jymVt">
      <property role="TrG5h" value="isEditable" />
      <node concept="3clFbS" id="5er1Yemzm62" role="3clF47" />
      <node concept="3Tm1VV" id="5er1Yemzm63" role="1B3o_S" />
      <node concept="10P_77" id="5er1Yemzm5D" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="5er1YemzlNG" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="5er1YemzmpJ">
    <property role="TrG5h" value="NetworkPortView" />
    <node concept="2tJIrI" id="5er1Yemzmuj" role="jymVt" />
    <node concept="3clFb_" id="5hluBvQ50xi" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3clFbS" id="5hluBvQ50xl" role="3clF47" />
      <node concept="3Tm1VV" id="5hluBvQ50xm" role="1B3o_S" />
      <node concept="3uibUv" id="5hluBvQ50wU" role="3clF45">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
      <node concept="2AHcQZ" id="5hluBvQ50yb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5F$aghy53SG" role="jymVt" />
    <node concept="3clFb_" id="5F$aghy53TK" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3clFbS" id="5F$aghy53TN" role="3clF47" />
      <node concept="3Tm1VV" id="5F$aghy53TO" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghy53Tj" role="3clF45">
        <ref role="3uigEE" node="5er1YemzlNF" resolve="NetworkComponentView" />
      </node>
      <node concept="2AHcQZ" id="5F$aghy53VG" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5er1YemzmpK" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5er1YemzmHk">
    <property role="TrG5h" value="NetworkConnectionView" />
    <node concept="2tJIrI" id="5er1YemzmIi" role="jymVt" />
    <node concept="312cEg" id="5er1Yem$wjt" role="jymVt">
      <property role="TrG5h" value="myConnection" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1YemzmIJ" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yem_myS" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2AHcQZ" id="5er1Yem$wul" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="312cEg" id="5er1Yem$xsQ" role="jymVt">
      <property role="TrG5h" value="myConnectionPath" />
      <node concept="3Tm6S6" id="5er1Yem$xqN" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yem$xsH" role="1tU5fm">
        <ref role="3uigEE" to="g27j:~ConnectionPath" resolve="ConnectionPath" />
      </node>
    </node>
    <node concept="312cEg" id="5er1Yem$wtl" role="jymVt">
      <property role="TrG5h" value="myEditable" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yem$wq9" role="1B3o_S" />
      <node concept="10P_77" id="5er1Yem$wtc" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Hbpy_fobGm" role="jymVt">
      <property role="TrG5h" value="myAssociatedNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Hbpy_fobrc" role="1B3o_S" />
      <node concept="3Tqbb2" id="4Hbpy_fobEe" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Hbpy_ftj$q" role="jymVt">
      <property role="TrG5h" value="myKind" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Hbpy_ftji3" role="1B3o_S" />
      <node concept="3uibUv" id="4Hbpy_ftjyc" role="1tU5fm">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Hbpy_foaXJ" role="jymVt" />
    <node concept="3Tm1VV" id="5er1YemzmHl" role="1B3o_S" />
    <node concept="3clFbW" id="5er1Yem$wkt" role="jymVt">
      <node concept="3cqZAl" id="5er1Yem$wku" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem$wkv" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem$wkx" role="3clF47">
        <node concept="3clFbF" id="5er1Yem$wk_" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem$wkB" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem$wkI" role="37vLTx">
              <ref role="3cqZAo" node="5er1Yem$wk$" resolve="connection" />
            </node>
            <node concept="37vLTw" id="5er1Yem$wWD" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem$wjt" resolve="myConnection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem$xS5" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem$xYL" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem$xS3" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem$xsQ" resolve="myConnectionPath" />
            </node>
            <node concept="3K4zz7" id="5er1Yem$yN5" role="37vLTx">
              <node concept="2ZW3vV" id="5er1Yem_n0B" role="3K4Cdx">
                <node concept="3uibUv" id="5er1Yem_n0C" role="2ZW6by">
                  <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                </node>
                <node concept="37vLTw" id="5er1Yem_n0D" role="2ZW6bz">
                  <ref role="3cqZAo" node="5er1Yem$wk$" resolve="connection" />
                </node>
              </node>
              <node concept="2OqwBi" id="5er1Yem_n0G" role="3K4E3e">
                <node concept="1eOMI4" id="5er1Yem_n0H" role="2Oq$k0">
                  <node concept="10QFUN" id="5er1Yem_n0I" role="1eOMHV">
                    <node concept="37vLTw" id="5er1Yem_n0J" role="10QFUP">
                      <ref role="3cqZAo" node="5er1Yem$wk$" resolve="connection" />
                    </node>
                    <node concept="3uibUv" id="5er1Yem_n0K" role="10QFUM">
                      <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5er1Yem_n0L" role="2OqNvi">
                  <ref role="37wK5l" to="g27j:~FBNetworkConnection.getPath()" resolve="getPath" />
                </node>
              </node>
              <node concept="2ShNRf" id="5er1Yem_n0E" role="3K4GZi">
                <node concept="1pGfFk" id="5er1Yem_n0F" role="2ShVmc">
                  <ref role="37wK5l" to="g27j:~ConnectionPath.&lt;init&gt;()" resolve="ConnectionPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Hbpy_ftkcA" role="3cqZAp">
          <node concept="37vLTI" id="4Hbpy_ftkFP" role="3clFbG">
            <node concept="37vLTw" id="4Hbpy_ftkc$" role="37vLTJ">
              <ref role="3cqZAo" node="4Hbpy_ftj$q" resolve="myKind" />
            </node>
            <node concept="3K4zz7" id="4Hbpy_ftkJd" role="37vLTx">
              <node concept="2ZW3vV" id="4Hbpy_ftkJe" role="3K4Cdx">
                <node concept="3uibUv" id="4Hbpy_ftkJf" role="2ZW6by">
                  <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                </node>
                <node concept="37vLTw" id="4Hbpy_ftkJg" role="2ZW6bz">
                  <ref role="3cqZAo" node="5er1Yem$wk$" resolve="connection" />
                </node>
              </node>
              <node concept="2OqwBi" id="4Hbpy_ftkJh" role="3K4E3e">
                <node concept="1eOMI4" id="4Hbpy_ftkJi" role="2Oq$k0">
                  <node concept="10QFUN" id="4Hbpy_ftkJj" role="1eOMHV">
                    <node concept="37vLTw" id="4Hbpy_ftkJk" role="10QFUP">
                      <ref role="3cqZAo" node="5er1Yem$wk$" resolve="connection" />
                    </node>
                    <node concept="3uibUv" id="4Hbpy_ftkJl" role="10QFUM">
                      <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4Hbpy_ftkYu" role="2OqNvi">
                  <ref role="37wK5l" to="g27j:~FBNetworkConnection.getKind()" resolve="getKind" />
                </node>
              </node>
              <node concept="Rm8GO" id="4Hbpy_ftllX" role="3K4GZi">
                <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem$wA5" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem$wTE" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem$wVi" role="37vLTx">
              <ref role="3cqZAo" node="5er1Yem$wxR" resolve="editable" />
            </node>
            <node concept="37vLTw" id="5er1Yem$wA3" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem$wtl" resolve="myEditable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Hbpy_focck" role="3cqZAp">
          <node concept="37vLTI" id="4Hbpy_focqd" role="3clFbG">
            <node concept="37vLTw" id="4Hbpy_focci" role="37vLTJ">
              <ref role="3cqZAo" node="4Hbpy_fobGm" resolve="myAssociatedNode" />
            </node>
            <node concept="2OqwBi" id="4Hbpy_focS5" role="37vLTx">
              <node concept="1eOMI4" id="4Hbpy_focEC" role="2Oq$k0">
                <node concept="10QFUN" id="4Hbpy_focEB" role="1eOMHV">
                  <node concept="37vLTw" id="4Hbpy_focEA" role="10QFUP">
                    <ref role="3cqZAo" node="5er1Yem$wk$" resolve="connection" />
                  </node>
                  <node concept="3uibUv" id="4Hbpy_focHW" role="10QFUM">
                    <ref role="3uigEE" to="fcfa:1JYTWWzyU94" resolve="PlatformElement" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4Hbpy_fod2v" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1JYTWWzyU9A" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5er1Yem$wk$" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="3uibUv" id="5er1Yem_muB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="2AHcQZ" id="5er1Yem$wZV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="5er1Yem$wxR" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="5er1Yem$wyO" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Hbpy_fod5D" role="jymVt" />
    <node concept="3clFb_" id="4Hbpy_fodBV" role="jymVt">
      <property role="TrG5h" value="getAssociatedNode" />
      <node concept="3Tqbb2" id="4Hbpy_fodBW" role="3clF45" />
      <node concept="3Tm1VV" id="4Hbpy_fodBX" role="1B3o_S" />
      <node concept="3clFbS" id="4Hbpy_fodBY" role="3clF47">
        <node concept="3clFbF" id="4Hbpy_fodBZ" role="3cqZAp">
          <node concept="37vLTw" id="4Hbpy_foeUz" role="3clFbG">
            <ref role="3cqZAo" node="4Hbpy_fobGm" resolve="myAssociatedNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Hbpy_ftnzo" role="jymVt" />
    <node concept="3clFb_" id="4Hbpy_ftmqj" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3uibUv" id="4Hbpy_ftmqk" role="3clF45">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
      <node concept="3Tm1VV" id="4Hbpy_ftmql" role="1B3o_S" />
      <node concept="3clFbS" id="4Hbpy_ftmqm" role="3clF47">
        <node concept="3clFbF" id="4Hbpy_ftmqn" role="3cqZAp">
          <node concept="37vLTw" id="4Hbpy_ftoaH" role="3clFbG">
            <ref role="3cqZAo" node="4Hbpy_ftj$q" resolve="myKind" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XL$IX1" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XL$L3U" role="jymVt">
      <property role="TrG5h" value="shrink" />
      <node concept="3clFbS" id="1hwo9XL$L3X" role="3clF47">
        <node concept="3clFbF" id="1hwo9XL$Lhv" role="3cqZAp">
          <node concept="37vLTI" id="1hwo9XL$Lqi" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XL$Lhu" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem$xsQ" resolve="myConnectionPath" />
            </node>
            <node concept="2ShNRf" id="1hwo9XL$Lv9" role="37vLTx">
              <node concept="1pGfFk" id="1hwo9XL$Lva" role="2ShVmc">
                <ref role="37wK5l" to="g27j:~ConnectionPath.&lt;init&gt;()" resolve="ConnectionPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1hwo9XL$LvM" role="1B3o_S" />
      <node concept="3cqZAl" id="1hwo9XL$KO7" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5F$aghy4rXr" role="jymVt" />
    <node concept="3clFb_" id="5F$aghy4sDW" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3clFbS" id="5F$aghy4sDZ" role="3clF47">
        <node concept="3cpWs8" id="5F$aghy4u0Q" role="3cqZAp">
          <node concept="3cpWsn" id="5F$aghy4u0R" role="3cpWs9">
            <property role="TrG5h" value="connection" />
            <node concept="3uibUv" id="5F$aghy4tYq" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
            </node>
            <node concept="1rXfSq" id="5F$aghy4u0S" role="33vP2m">
              <ref role="37wK5l" node="5er1Yem$x30" resolve="getConnection" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5F$aghy4t6q" role="3cqZAp">
          <node concept="1Wc70l" id="5F$aghy4tRu" role="3clFbw">
            <node concept="3y3z36" id="5F$aghy4uf7" role="3uHU7w">
              <node concept="10Nm6u" id="5F$aghy4umb" role="3uHU7w" />
              <node concept="37vLTw" id="5F$aghy4u0T" role="3uHU7B">
                <ref role="3cqZAo" node="5F$aghy4u0R" resolve="connection" />
              </node>
            </node>
            <node concept="37vLTw" id="5F$aghy4tuy" role="3uHU7B">
              <ref role="3cqZAo" node="5er1Yem$wtl" resolve="myEditable" />
            </node>
          </node>
          <node concept="3clFbS" id="5F$aghy4t6s" role="3clFbx">
            <node concept="3clFbF" id="5F$aghy4uKZ" role="3cqZAp">
              <node concept="2OqwBi" id="5F$aghy4uWc" role="3clFbG">
                <node concept="37vLTw" id="5F$aghy4uKY" role="2Oq$k0">
                  <ref role="3cqZAo" node="5F$aghy4u0R" resolve="connection" />
                </node>
                <node concept="liA8E" id="5F$aghy4v7m" role="2OqNvi">
                  <ref role="37wK5l" to="g27j:~FBNetworkConnection.setPath(org.fbme.lib.iec61499.fbnetwork.ConnectionPath)" resolve="setPath" />
                  <node concept="37vLTw" id="5F$aghy4v87" role="37wK5m">
                    <ref role="3cqZAo" node="5F$aghy4t6J" resolve="path" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5F$aghy4sso" role="1B3o_S" />
      <node concept="3cqZAl" id="5F$aghy4svs" role="3clF45" />
      <node concept="37vLTG" id="5F$aghy4t6J" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="5F$aghy4t6I" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~ConnectionPath" resolve="ConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem$x0Z" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem$x30" role="jymVt">
      <property role="TrG5h" value="getConnection" />
      <node concept="3uibUv" id="5er1Yem$x31" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
      </node>
      <node concept="3Tm1VV" id="5er1Yem$x32" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem$x33" role="3clF47">
        <node concept="3clFbF" id="5er1Yem$x34" role="3cqZAp">
          <node concept="3K4zz7" id="5er1Yem_n9p" role="3clFbG">
            <node concept="2ZW3vV" id="5er1Yem_n9q" role="3K4Cdx">
              <node concept="3uibUv" id="5er1Yem_n9r" role="2ZW6by">
                <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
              <node concept="37vLTw" id="5er1Yem_nkx" role="2ZW6bz">
                <ref role="3cqZAo" node="5er1Yem$wjt" resolve="myConnection" />
              </node>
            </node>
            <node concept="10QFUN" id="5er1Yem_n9v" role="3K4E3e">
              <node concept="37vLTw" id="5er1Yem_nlF" role="10QFUP">
                <ref role="3cqZAo" node="5er1Yem$wjt" resolve="myConnection" />
              </node>
              <node concept="3uibUv" id="5er1Yem_n9x" role="10QFUM">
                <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
            </node>
            <node concept="10Nm6u" id="5er1Yem_njH" role="3K4GZi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem$xhq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem$x8r" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem$x38" role="jymVt">
      <property role="TrG5h" value="isEditable" />
      <node concept="10P_77" id="5er1Yem$x39" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem$x3a" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem$x3b" role="3clF47">
        <node concept="3clFbF" id="5er1Yem$x3c" role="3cqZAp">
          <node concept="37vLTw" id="5er1Yem$xg2" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem$wtl" resolve="myEditable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem$xyk" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem$xHo" role="jymVt">
      <property role="TrG5h" value="getConnectionPath" />
      <node concept="3uibUv" id="5er1Yem$xHp" role="3clF45">
        <ref role="3uigEE" to="g27j:~ConnectionPath" resolve="ConnectionPath" />
      </node>
      <node concept="3Tm1VV" id="5er1Yem$xHq" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem$xHr" role="3clF47">
        <node concept="3clFbF" id="5er1Yem$xHs" role="3cqZAp">
          <node concept="37vLTw" id="5er1Yem$xN9" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem$xsQ" resolve="myConnectionPath" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem$zvR" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem_nmV" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem_nU_" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5er1Yem_nUA" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem_nUB" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_nUC" role="3clF47">
        <node concept="3clFbJ" id="5er1Yem_nUD" role="3cqZAp">
          <node concept="3clFbS" id="5er1Yem_nUE" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_nUF" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_nUG" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5er1Yem_nUH" role="3clFbw">
            <node concept="Xjq3P" id="5er1Yem_nU$" role="3uHU7B" />
            <node concept="37vLTw" id="5er1Yem_nUI" role="3uHU7w">
              <ref role="3cqZAo" node="5er1Yem_nV5" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5er1Yem_nUJ" role="3cqZAp">
          <node concept="3clFbS" id="5er1Yem_nUK" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_nUL" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_nUM" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5er1Yem_nUN" role="3clFbw">
            <node concept="3clFbC" id="5er1Yem_nUO" role="3uHU7B">
              <node concept="37vLTw" id="5er1Yem_nUP" role="3uHU7B">
                <ref role="3cqZAo" node="5er1Yem_nV5" resolve="o" />
              </node>
              <node concept="10Nm6u" id="5er1Yem_nUQ" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5er1Yem_nUR" role="3uHU7w">
              <node concept="2OqwBi" id="5er1Yem_nUS" role="3uHU7B">
                <node concept="Xjq3P" id="5er1Yem_nUT" role="2Oq$k0" />
                <node concept="liA8E" id="5er1Yem_nUU" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="5er1Yem_nUV" role="3uHU7w">
                <node concept="37vLTw" id="5er1Yem_nUW" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yem_nV5" resolve="o" />
                </node>
                <node concept="liA8E" id="5er1Yem_nUX" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5er1Yem_nUY" role="3cqZAp" />
        <node concept="3cpWs8" id="5er1Yem_nUZ" role="3cqZAp">
          <node concept="3cpWsn" id="5er1Yem_nV0" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5er1Yem_nV1" role="1tU5fm">
              <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
            </node>
            <node concept="10QFUN" id="5er1Yem_nV2" role="33vP2m">
              <node concept="3uibUv" id="5er1Yem_nV3" role="10QFUM">
                <ref role="3uigEE" node="5er1YemzmHk" resolve="NetworkConnectionView" />
              </node>
              <node concept="37vLTw" id="5er1Yem_nV4" role="10QFUP">
                <ref role="3cqZAo" node="5er1Yem_nV5" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$tHdG2gn$d" role="3cqZAp">
          <node concept="17R0WA" id="6$tHdG2gmUu" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem_nVv" role="3uHU7B">
              <ref role="3cqZAo" node="5er1Yem$wjt" resolve="myConnection" />
            </node>
            <node concept="2OqwBi" id="5er1Yem_nVE" role="3uHU7w">
              <node concept="37vLTw" id="5er1Yem_nVF" role="2Oq$k0">
                <ref role="3cqZAo" node="5er1Yem_nV0" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5er1Yem_nVu" role="2OqNvi">
                <ref role="2Oxat5" node="5er1Yem$wjt" resolve="myConnection" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5er1Yem_nV5" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5er1Yem_nV6" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem_nV7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5er1Yem_nVP" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5er1Yem_nVQ" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem_nVR" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_nVS" role="3clF47">
        <node concept="3clFbF" id="6$tHdG2gmQK" role="3cqZAp">
          <node concept="2OqwBi" id="5er1Yem_sDd" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem_smz" role="2Oq$k0">
              <ref role="3cqZAo" node="5er1Yem$wjt" resolve="myConnection" />
            </node>
            <node concept="liA8E" id="5er1Yem_sS0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem_nVT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5er1Yem$Gv1">
    <property role="TrG5h" value="FunctionBlockPortView" />
    <node concept="312cEg" id="5er1Yem$ZDg" role="jymVt">
      <property role="TrG5h" value="myOwner" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1Yem$ZtF" role="1B3o_S" />
      <node concept="3uibUv" id="5er1Yem$ZD0" role="1tU5fm">
        <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
      </node>
    </node>
    <node concept="312cEg" id="~FunctionBlockPortIdentity.myPosition" role="jymVt">
      <property role="TrG5h" value="myPosition" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1YemvpXZ" role="1B3o_S" />
      <node concept="10Oyi0" id="5er1YemvpY0" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="~FunctionBlockPortIdentity.myKind" role="jymVt">
      <property role="TrG5h" value="myKind" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1YemvpY1" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemvpY2" role="1tU5fm">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
    </node>
    <node concept="312cEg" id="~FunctionBlockPortIdentity.myIsSource" role="jymVt">
      <property role="TrG5h" value="myIsSource" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1YemvpY3" role="1B3o_S" />
      <node concept="10P_77" id="5er1YemvpY4" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="~FunctionBlockPortIdentity.myTarget" role="jymVt">
      <property role="TrG5h" value="myTarget" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5er1YemvpYb" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemvpYc" role="1tU5fm">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="5er1Yem$WsE" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem$Wne" role="jymVt" />
    <node concept="3clFbW" id="~FunctionBlockPortIdentity.&lt;init&gt;(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,int,org.fbme.lib.iec61499.fbnetwork.EntryKind,boolean,java.lang.String,boolean,org.fbme.lib.common.Declaration)" role="jymVt">
      <property role="TrG5h" value="FunctionBlockPortIdentity" />
      <node concept="3cqZAl" id="5er1YemvpZ2" role="3clF45" />
      <node concept="3Tm1VV" id="5er1YemvpYd" role="1B3o_S" />
      <node concept="37vLTG" id="5er1Yem$ZgC" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="5er1Yem$ZhR" role="1tU5fm">
          <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
        </node>
      </node>
      <node concept="37vLTG" id="5er1YemvpYj" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="10Oyi0" id="5er1YemvpYi" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5er1YemvpYl" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="5er1YemvpYk" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
        </node>
      </node>
      <node concept="37vLTG" id="5er1YemvpYn" role="3clF46">
        <property role="TrG5h" value="isSource" />
        <node concept="10P_77" id="5er1YemvpYm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5er1YemvpYt" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="5er1YemvpYs" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
        <node concept="2AHcQZ" id="5er1YemvpYu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5er1Yem$VYn" role="3clF47">
        <node concept="3clFbF" id="5er1Yem_lGe" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem_m0F" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem_m7t" role="37vLTx">
              <ref role="3cqZAo" node="5er1Yem$ZgC" resolve="owner" />
            </node>
            <node concept="37vLTw" id="5er1Yem_lGc" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem$ZDg" resolve="myOwner" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem$WUa" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem$Y6w" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem$Ybh" role="37vLTx">
              <ref role="3cqZAo" node="5er1YemvpYj" resolve="position" />
            </node>
            <node concept="37vLTw" id="5er1Yem$Xmb" role="37vLTJ">
              <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myPosition" resolve="myPosition" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem$Yc8" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem$YCZ" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem$YFQ" role="37vLTx">
              <ref role="3cqZAo" node="5er1YemvpYl" resolve="kind" />
            </node>
            <node concept="37vLTw" id="5er1Yem$Yc6" role="37vLTJ">
              <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myKind" resolve="myKind" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem$YHH" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem$Z7h" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem$Z8m" role="37vLTx">
              <ref role="3cqZAo" node="5er1YemvpYn" resolve="isSource" />
            </node>
            <node concept="37vLTw" id="5er1Yem$YHF" role="37vLTJ">
              <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myIsSource" resolve="myIsSource" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem_0fw" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem_0py" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem_0rS" role="37vLTx">
              <ref role="3cqZAo" node="5er1YemvpYt" resolve="target" />
            </node>
            <node concept="37vLTw" id="5er1Yem_0fu" role="37vLTJ">
              <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myTarget" resolve="myTarget" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem_0BT" role="jymVt" />
    <node concept="3clFb_" id="~FunctionBlockPortIdentity.getKind()" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="5er1YemvpY$" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemvpYA" role="3clF45">
        <ref role="3uigEE" to="g27j:~EntryKind" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="5er1Yem$VQZ" role="3clF47">
        <node concept="3clFbF" id="5er1Yem$WtP" role="3cqZAp">
          <node concept="37vLTw" id="5er1Yem$WtO" role="3clFbG">
            <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myKind" resolve="myKind" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="~FunctionBlockPortIdentity.getPosition()" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tm1VV" id="5er1YemvpYC" role="1B3o_S" />
      <node concept="10Oyi0" id="5er1YemvpYE" role="3clF45" />
      <node concept="3clFbS" id="5er1Yem$W1R" role="3clF47">
        <node concept="3clFbF" id="5er1Yem$Wx3" role="3cqZAp">
          <node concept="37vLTw" id="5er1Yem$Wx2" role="3clFbG">
            <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myPosition" resolve="myPosition" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="~FunctionBlockPortIdentity.isSource()" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="3Tm1VV" id="5er1YemvpYG" role="1B3o_S" />
      <node concept="10P_77" id="5er1YemvpYI" role="3clF45" />
      <node concept="3clFbS" id="5er1Yem$W5z" role="3clF47">
        <node concept="3clFbF" id="5er1Yem$WIk" role="3cqZAp">
          <node concept="37vLTw" id="5er1Yem$WIj" role="3clFbG">
            <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myIsSource" resolve="myIsSource" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5er1Yem$Gv2" role="1B3o_S" />
    <node concept="3uibUv" id="5er1Yem$Gwi" role="EKbjA">
      <ref role="3uigEE" node="5er1YemzmpJ" resolve="NetworkPortView" />
    </node>
    <node concept="3clFb_" id="5er1Yem$X5a" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="3uibUv" id="5er1Yem$X5b" role="3clF45">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3Tm1VV" id="5er1Yem$X5c" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem$X5d" role="3clF47">
        <node concept="3clFbF" id="5er1Yem$X5e" role="3cqZAp">
          <node concept="37vLTw" id="5er1Yem$Xl7" role="3clFbG">
            <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myTarget" resolve="myTarget" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Hbpy_fDxJ9" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3Tm1VV" id="4Hbpy_fDxJb" role="1B3o_S" />
      <node concept="3uibUv" id="4Hbpy_fDztW" role="3clF45">
        <ref role="3uigEE" node="5er1Yemzkmb" resolve="FunctionBlockView" />
      </node>
      <node concept="2AHcQZ" id="4Hbpy_fDxJd" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4Hbpy_fDxJe" role="3clF47">
        <node concept="3clFbF" id="4Hbpy_fDygm" role="3cqZAp">
          <node concept="37vLTw" id="4Hbpy_fDygn" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem$ZDg" resolve="myOwner" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Hbpy_fDxJf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem_0Kh" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem_0XD" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5er1Yem_0XE" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem_0XF" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_0XG" role="3clF47">
        <node concept="3clFbJ" id="5er1Yem_0XH" role="3cqZAp">
          <node concept="3clFbS" id="5er1Yem_0XI" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_0XJ" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_0XK" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5er1Yem_0XL" role="3clFbw">
            <node concept="Xjq3P" id="5er1Yem_0XC" role="3uHU7B" />
            <node concept="37vLTw" id="5er1Yem_0XM" role="3uHU7w">
              <ref role="3cqZAo" node="5er1Yem_0Y9" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5er1Yem_0XN" role="3cqZAp">
          <node concept="3clFbS" id="5er1Yem_0XO" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_0XP" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_0XQ" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5er1Yem_0XR" role="3clFbw">
            <node concept="3clFbC" id="5er1Yem_0XS" role="3uHU7B">
              <node concept="37vLTw" id="5er1Yem_0XT" role="3uHU7B">
                <ref role="3cqZAo" node="5er1Yem_0Y9" resolve="o" />
              </node>
              <node concept="10Nm6u" id="5er1Yem_0XU" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5er1Yem_0XV" role="3uHU7w">
              <node concept="2OqwBi" id="5er1Yem_0XW" role="3uHU7B">
                <node concept="Xjq3P" id="5er1Yem_0XX" role="2Oq$k0" />
                <node concept="liA8E" id="5er1Yem_0XY" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="5er1Yem_0XZ" role="3uHU7w">
                <node concept="37vLTw" id="5er1Yem_0Y0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5er1Yem_0Y9" resolve="o" />
                </node>
                <node concept="liA8E" id="5er1Yem_0Y1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5er1Yem_0Y2" role="3cqZAp" />
        <node concept="3cpWs8" id="5er1Yem_0Y3" role="3cqZAp">
          <node concept="3cpWsn" id="5er1Yem_0Y4" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5er1Yem_0Y5" role="1tU5fm">
              <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
            </node>
            <node concept="10QFUN" id="5er1Yem_0Y6" role="33vP2m">
              <node concept="3uibUv" id="5er1Yem_0Y7" role="10QFUM">
                <ref role="3uigEE" node="5er1Yem$Gv1" resolve="FunctionBlockPortView" />
              </node>
              <node concept="37vLTw" id="5er1Yem_0Y8" role="10QFUP">
                <ref role="3cqZAo" node="5er1Yem_0Y9" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5er1Yem_0Yj" role="3cqZAp">
          <node concept="3clFbS" id="5er1Yem_0Yk" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_0Yl" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_0Ym" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="5er1Yem_31g" role="3clFbw">
            <node concept="37vLTw" id="5er1Yem_0Yh" role="3uHU7B">
              <ref role="3cqZAo" node="5er1Yem$ZDg" resolve="myOwner" />
            </node>
            <node concept="2OqwBi" id="5er1Yem_2KA" role="3uHU7w">
              <node concept="37vLTw" id="5er1Yem_2As" role="2Oq$k0">
                <ref role="3cqZAo" node="5er1Yem_0Y4" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5er1Yem_2Vf" role="2OqNvi">
                <ref role="2Oxat5" node="5er1Yem$ZDg" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5er1Yem_0Y$" role="3cqZAp">
          <node concept="3y3z36" id="5er1Yem_0Y_" role="3clFbw">
            <node concept="2OqwBi" id="5er1Yem_0YA" role="3uHU7w">
              <node concept="37vLTw" id="5er1Yem_0YB" role="2Oq$k0">
                <ref role="3cqZAo" node="5er1Yem_0Y4" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5er1Yem_0Yy" role="2OqNvi">
                <ref role="2Oxat5" node="~FunctionBlockPortIdentity.myPosition" resolve="myPosition" />
              </node>
            </node>
            <node concept="37vLTw" id="5er1Yem_0Yz" role="3uHU7B">
              <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myPosition" resolve="myPosition" />
            </node>
          </node>
          <node concept="3clFbS" id="5er1Yem_0YC" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_0YD" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_0YE" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5er1Yem_0YJ" role="3cqZAp">
          <node concept="3clFbS" id="5er1Yem_0YK" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_0YL" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_0YM" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="5er1Yem_37R" role="3clFbw">
            <node concept="37vLTw" id="5er1Yem_0YH" role="3uHU7B">
              <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myKind" resolve="myKind" />
            </node>
            <node concept="2OqwBi" id="5er1Yem_3eA" role="3uHU7w">
              <node concept="37vLTw" id="5er1Yem_3eB" role="2Oq$k0">
                <ref role="3cqZAo" node="5er1Yem_0Y4" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5er1Yem_3eC" role="2OqNvi">
                <ref role="2Oxat5" node="~FunctionBlockPortIdentity.myKind" resolve="myKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5er1Yem_0Z1" role="3cqZAp">
          <node concept="3y3z36" id="5er1Yem_0Z2" role="3clFbw">
            <node concept="2OqwBi" id="5er1Yem_0Z3" role="3uHU7w">
              <node concept="37vLTw" id="5er1Yem_0Z4" role="2Oq$k0">
                <ref role="3cqZAo" node="5er1Yem_0Y4" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5er1Yem_0YZ" role="2OqNvi">
                <ref role="2Oxat5" node="~FunctionBlockPortIdentity.myIsSource" resolve="myIsSource" />
              </node>
            </node>
            <node concept="37vLTw" id="5er1Yem_0Z0" role="3uHU7B">
              <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myIsSource" resolve="myIsSource" />
            </node>
          </node>
          <node concept="3clFbS" id="5er1Yem_0Z5" role="3clFbx">
            <node concept="3cpWs6" id="5er1Yem_0Z6" role="3cqZAp">
              <node concept="3clFbT" id="5er1Yem_0Z7" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5er1Yem_0Z8" role="3cqZAp" />
        <node concept="3clFbF" id="5er1Yem_0Z9" role="3cqZAp">
          <node concept="3clFbT" id="5er1Yem_0Za" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5er1Yem_0Y9" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5er1Yem_0Ya" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem_0Yb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem_bfF" role="jymVt" />
    <node concept="3clFb_" id="5er1Yem_0Zb" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5er1Yem_0Zc" role="3clF45" />
      <node concept="3Tm1VV" id="5er1Yem_0Zd" role="1B3o_S" />
      <node concept="3clFbS" id="5er1Yem_0Ze" role="3clF47">
        <node concept="3cpWs8" id="5er1Yem_0Zg" role="3cqZAp">
          <node concept="3cpWsn" id="5er1Yem_0Zh" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="5er1Yem_0Zi" role="1tU5fm" />
            <node concept="3cmrfG" id="5er1Yem_0Zj" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem_0Zt" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem_0Zu" role="3clFbG">
            <node concept="3cpWs3" id="5er1Yem_0Zv" role="37vLTx">
              <node concept="1eOMI4" id="5er1Yem_0Zw" role="3uHU7w">
                <node concept="2OqwBi" id="5er1Yem_6hp" role="1eOMHV">
                  <node concept="37vLTw" id="5er1Yem_0Zs" role="2Oq$k0">
                    <ref role="3cqZAo" node="5er1Yem$ZDg" resolve="myOwner" />
                  </node>
                  <node concept="liA8E" id="5er1Yem_6NL" role="2OqNvi">
                    <ref role="37wK5l" node="5er1Yem_uj8" resolve="hashCode" />
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5er1Yem_0Zp" role="3uHU7B">
                <node concept="3cmrfG" id="5er1Yem_0Zq" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5er1Yem_0Zk" role="3uHU7w">
                  <ref role="3cqZAo" node="5er1Yem_0Zh" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5er1Yem_0ZE" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem_0Zh" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem_0ZJ" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem_0ZK" role="3clFbG">
            <node concept="37vLTw" id="5er1Yem_0ZL" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem_0Zh" resolve="result" />
            </node>
            <node concept="3cpWs3" id="5er1Yem_0ZM" role="37vLTx">
              <node concept="37vLTw" id="5er1Yem_0ZI" role="3uHU7w">
                <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myPosition" resolve="myPosition" />
              </node>
              <node concept="17qRlL" id="5er1Yem_0ZF" role="3uHU7B">
                <node concept="3cmrfG" id="5er1Yem_0ZG" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5er1Yem_0ZH" role="3uHU7w">
                  <ref role="3cqZAo" node="5er1Yem_0Zh" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem_0ZS" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem_0ZT" role="3clFbG">
            <node concept="3cpWs3" id="5er1Yem_0ZU" role="37vLTx">
              <node concept="1eOMI4" id="5er1Yem_0ZV" role="3uHU7w">
                <node concept="2OqwBi" id="5er1Yem_7Oo" role="1eOMHV">
                  <node concept="37vLTw" id="5er1Yem_0ZR" role="2Oq$k0">
                    <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myKind" resolve="myKind" />
                  </node>
                  <node concept="liA8E" id="5er1Yem_8qZ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Enum.hashCode()" resolve="hashCode" />
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5er1Yem_0ZN" role="3uHU7B">
                <node concept="3cmrfG" id="5er1Yem_0ZO" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5er1Yem_0ZP" role="3uHU7w">
                  <ref role="3cqZAo" node="5er1Yem_0Zh" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5er1Yem_105" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem_0Zh" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem_10b" role="3cqZAp">
          <node concept="37vLTI" id="5er1Yem_10c" role="3clFbG">
            <node concept="3cpWs3" id="5er1Yem_10d" role="37vLTx">
              <node concept="1eOMI4" id="5er1Yem_8sN" role="3uHU7w">
                <node concept="3K4zz7" id="5er1Yem_9A2" role="1eOMHV">
                  <node concept="3cmrfG" id="5er1Yem_aZb" role="3K4E3e">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="5er1Yem_b3Q" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5er1Yem_10a" role="3K4Cdx">
                    <ref role="3cqZAo" node="~FunctionBlockPortIdentity.myIsSource" resolve="myIsSource" />
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5er1Yem_106" role="3uHU7B">
                <node concept="3cmrfG" id="5er1Yem_107" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5er1Yem_108" role="3uHU7w">
                  <ref role="3cqZAo" node="5er1Yem_0Zh" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5er1Yem_10o" role="37vLTJ">
              <ref role="3cqZAo" node="5er1Yem_0Zh" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5er1Yem_10p" role="3cqZAp">
          <node concept="37vLTw" id="5er1Yem_10q" role="3clFbG">
            <ref role="3cqZAo" node="5er1Yem_0Zh" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5er1Yem_0Zf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="31Fn7oZuTwK">
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
    <node concept="312cEg" id="31Fn7oZuTCt" role="jymVt">
      <property role="TrG5h" value="myBrokenPorts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="31Fn7oZuTB0" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemAmKm" role="1tU5fm">
        <ref role="3uigEE" node="31Fn7oZuPMK" resolve="TypeDescriptorAdapter.BrokenPorts" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZuTFV" role="jymVt" />
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
        <node concept="3clFbF" id="31Fn7oZwk82" role="3cqZAp">
          <node concept="37vLTI" id="31Fn7oZwkqV" role="3clFbG">
            <node concept="2ShNRf" id="5er1YemBVK5" role="37vLTx">
              <node concept="HV5vD" id="5er1YemBVZM" role="2ShVmc">
                <ref role="HV5vE" node="31Fn7oZuPMK" resolve="TypeDescriptorAdapter.BrokenPorts" />
              </node>
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
    </node>
    <node concept="2tJIrI" id="31Fn7oZuUnT" role="jymVt" />
    <node concept="3clFb_" id="5er1YemBNfd" role="jymVt">
      <property role="TrG5h" value="getBrokenPorts" />
      <node concept="3uibUv" id="5er1YemBNfe" role="3clF45">
        <ref role="3uigEE" node="31Fn7oZuPMK" resolve="TypeDescriptorAdapter.BrokenPorts" />
      </node>
      <node concept="3Tm1VV" id="5er1YemBNff" role="1B3o_S" />
      <node concept="3clFbS" id="5er1YemBNfg" role="3clF47">
        <node concept="3clFbF" id="5er1YemBNfh" role="3cqZAp">
          <node concept="37vLTw" id="5er1YemBTk1" role="3clFbG">
            <ref role="3cqZAo" node="31Fn7oZuTCt" resolve="myBrokenPorts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemBDyV" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZI_Ik" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="31Fn7oZI_Io" role="1B3o_S" />
      <node concept="3uibUv" id="5er1YemA3AX" role="3clF45">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="31Fn7oZI_Iq" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJRok" role="3cqZAp">
          <node concept="2OqwBi" id="31Fn7oZJIwI" role="3clFbG">
            <node concept="37vLTw" id="31Fn7oZIIvM" role="2Oq$k0">
              <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
            </node>
            <node concept="liA8E" id="31Fn7oZJQq4" role="2OqNvi">
              <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDeclaration()" resolve="getDeclaration" />
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
        <node concept="3clFbF" id="5er1YemA6e4" role="3cqZAp">
          <node concept="2OqwBi" id="31Fn7oZuVKi" role="3clFbG">
            <node concept="37vLTw" id="31Fn7oZuVAT" role="2Oq$k0">
              <ref role="3cqZAo" node="31Fn7oZuT_x" resolve="myOriginal" />
            </node>
            <node concept="liA8E" id="31Fn7oZuVZJ" role="2OqNvi">
              <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getTypeName()" resolve="getTypeName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31Fn7oZuUq6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1YemA6qV" role="jymVt" />
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
        <node concept="3cpWs8" id="31Fn7oZvrmL" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZvrmO" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="31Fn7oZvrmJ" role="1tU5fm" />
            <node concept="2OqwBi" id="31Fn7oZvtQn" role="33vP2m">
              <node concept="37vLTw" id="31Fn7oZvBgz" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZvBgu" resolve="ports" />
              </node>
              <node concept="liA8E" id="31Fn7oZvuuA" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
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
                      <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean,org.fbme.lib.common.Declaration)" resolve="FBPortDescriptor" />
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
                      <node concept="10Nm6u" id="5er1YemAjVr" role="37wK5m" />
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
            <node concept="2OwXpG" id="5er1YemAooN" role="2OqNvi">
              <ref role="2Oxat5" node="31Fn7oZuPQ8" resolve="inputEvents" />
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
        <node concept="3cpWs8" id="5er1YemATNC" role="3cqZAp">
          <node concept="3cpWsn" id="5er1YemATND" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5er1YemATNE" role="1tU5fm" />
            <node concept="2OqwBi" id="5er1YemATNF" role="33vP2m">
              <node concept="37vLTw" id="5er1YemB4eA" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZvAnq" resolve="ports" />
              </node>
              <node concept="liA8E" id="5er1YemATNH" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
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
                      <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean,org.fbme.lib.common.Declaration)" resolve="FBPortDescriptor" />
                      <node concept="2GrUjf" id="31Fn7oZv$Xd" role="37wK5m">
                        <ref role="2Gs0qQ" node="31Fn7oZv$X5" resolve="eventName" />
                      </node>
                      <node concept="Rm8GO" id="31Fn7oZv$Xe" role="37wK5m">
                        <ref role="Rm8GQ" to="g27j:~EntryKind.EVENT" resolve="EVENT" />
                        <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                      </node>
                      <node concept="3uNrnE" id="31Fn7oZv$Xf" role="37wK5m">
                        <node concept="37vLTw" id="5er1YemB4mb" role="2$L3a6">
                          <ref role="3cqZAo" node="5er1YemATND" resolve="i" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="31Fn7oZv$Xh" role="37wK5m" />
                      <node concept="3clFbT" id="31Fn7oZv$Xi" role="37wK5m" />
                      <node concept="10Nm6u" id="5er1YemAT9X" role="37wK5m" />
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
            <node concept="2OwXpG" id="5er1YemAp4g" role="2OqNvi">
              <ref role="2Oxat5" node="31Fn7oZuS_9" resolve="outputEvents" />
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
        <node concept="3cpWs8" id="31Fn7oZvE9s" role="3cqZAp">
          <node concept="3cpWsn" id="31Fn7oZvE9t" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="31Fn7oZvE9u" role="1tU5fm" />
            <node concept="2OqwBi" id="31Fn7oZvE9L" role="33vP2m">
              <node concept="37vLTw" id="31Fn7oZvE9M" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZvE9z" resolve="ports" />
              </node>
              <node concept="liA8E" id="31Fn7oZvE9N" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
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
                      <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean,org.fbme.lib.common.Declaration)" resolve="FBPortDescriptor" />
                      <node concept="2GrUjf" id="31Fn7oZvEa0" role="37wK5m">
                        <ref role="2Gs0qQ" node="31Fn7oZvE9S" resolve="eventName" />
                      </node>
                      <node concept="Rm8GO" id="31Fn7oZvFPD" role="37wK5m">
                        <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                        <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
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
                      <node concept="10Nm6u" id="5er1YemAS64" role="37wK5m" />
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
            <node concept="2OwXpG" id="5er1YemAttL" role="2OqNvi">
              <ref role="2Oxat5" node="31Fn7oZuS_u" resolve="inputDatas" />
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
        <node concept="3cpWs8" id="5er1YemAJCD" role="3cqZAp">
          <node concept="3cpWsn" id="5er1YemAJCE" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5er1YemAJCF" role="1tU5fm" />
            <node concept="2OqwBi" id="5er1YemAJCG" role="33vP2m">
              <node concept="37vLTw" id="5er1YemAQbI" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZvHv1" resolve="ports" />
              </node>
              <node concept="liA8E" id="5er1YemAJCI" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
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
                      <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean,org.fbme.lib.common.Declaration)" resolve="FBPortDescriptor" />
                      <node concept="2GrUjf" id="31Fn7oZvHvu" role="37wK5m">
                        <ref role="2Gs0qQ" node="31Fn7oZvHvm" resolve="eventName" />
                      </node>
                      <node concept="Rm8GO" id="31Fn7oZvHvv" role="37wK5m">
                        <ref role="Rm8GQ" to="g27j:~EntryKind.DATA" resolve="DATA" />
                        <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                      </node>
                      <node concept="3uNrnE" id="31Fn7oZvHvw" role="37wK5m">
                        <node concept="37vLTw" id="5er1YemALDv" role="2$L3a6">
                          <ref role="3cqZAo" node="5er1YemAJCE" resolve="i" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="31Fn7oZvHvy" role="37wK5m" />
                      <node concept="3clFbT" id="31Fn7oZvHvz" role="37wK5m" />
                      <node concept="10Nm6u" id="5er1YemARgC" role="37wK5m" />
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
            <node concept="2OwXpG" id="5er1YemAu5$" role="2OqNvi">
              <ref role="2Oxat5" node="31Fn7oZuSFa" resolve="outputDatas" />
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
        <node concept="3cpWs8" id="5er1YemB9D9" role="3cqZAp">
          <node concept="3cpWsn" id="5er1YemB9Da" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5er1YemB9Db" role="1tU5fm" />
            <node concept="2OqwBi" id="5er1YemB9Dc" role="33vP2m">
              <node concept="37vLTw" id="5er1YemB9Dd" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZvLjI" resolve="ports" />
              </node>
              <node concept="liA8E" id="5er1YemB9De" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
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
                      <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean,org.fbme.lib.common.Declaration)" resolve="FBPortDescriptor" />
                      <node concept="2GrUjf" id="31Fn7oZvLkb" role="37wK5m">
                        <ref role="2Gs0qQ" node="31Fn7oZvLk3" resolve="eventName" />
                      </node>
                      <node concept="Rm8GO" id="31Fn7oZvOw0" role="37wK5m">
                        <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                        <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                      </node>
                      <node concept="3uNrnE" id="31Fn7oZvLkd" role="37wK5m">
                        <node concept="37vLTw" id="5er1YemBd8e" role="2$L3a6">
                          <ref role="3cqZAo" node="5er1YemB9Da" resolve="i" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="31Fn7oZvLkf" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="31Fn7oZvLkg" role="37wK5m" />
                      <node concept="10Nm6u" id="5er1YemBedD" role="37wK5m" />
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
            <node concept="2OwXpG" id="5er1YemAuy$" role="2OqNvi">
              <ref role="2Oxat5" node="31Fn7oZuTfW" resolve="sockets" />
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
        <node concept="3cpWs8" id="5er1YemBi8P" role="3cqZAp">
          <node concept="3cpWsn" id="5er1YemBi8Q" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5er1YemBi8R" role="1tU5fm" />
            <node concept="2OqwBi" id="5er1YemBi8S" role="33vP2m">
              <node concept="37vLTw" id="5er1YemBrC3" role="2Oq$k0">
                <ref role="3cqZAo" node="31Fn7oZvTRr" resolve="ports" />
              </node>
              <node concept="liA8E" id="5er1YemBi8U" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
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
                      <ref role="37wK5l" to="ntnl:~FBPortDescriptor.&lt;init&gt;(java.lang.String,org.fbme.lib.iec61499.fbnetwork.EntryKind,int,boolean,boolean,org.fbme.lib.common.Declaration)" resolve="FBPortDescriptor" />
                      <node concept="2GrUjf" id="31Fn7oZvTRS" role="37wK5m">
                        <ref role="2Gs0qQ" node="31Fn7oZvTRK" resolve="eventName" />
                      </node>
                      <node concept="Rm8GO" id="31Fn7oZvTRT" role="37wK5m">
                        <ref role="1Px2BO" to="g27j:~EntryKind" resolve="EntryKind" />
                        <ref role="Rm8GQ" to="g27j:~EntryKind.ADAPTER" resolve="ADAPTER" />
                      </node>
                      <node concept="3uNrnE" id="31Fn7oZvTRU" role="37wK5m">
                        <node concept="37vLTw" id="5er1YemBrJK" role="2$L3a6">
                          <ref role="3cqZAo" node="5er1YemBi8Q" resolve="i" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="31Fn7oZvTRW" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFbT" id="31Fn7oZvTRX" role="37wK5m" />
                      <node concept="10Nm6u" id="5er1YemBsLM" role="37wK5m" />
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
            <node concept="2OwXpG" id="5er1YemAv4K" role="2OqNvi">
              <ref role="2Oxat5" node="31Fn7oZuT5q" resolve="plugs" />
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
          <node concept="2OqwBi" id="31Fn7oZvXwq" role="3clFbG">
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
          <node concept="2OqwBi" id="31Fn7oZw5u$" role="3clFbG">
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
      <node concept="2AHcQZ" id="31Fn7oZuUri" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5er1Yem_Tar" role="jymVt" />
    <node concept="312cEu" id="31Fn7oZuPMK" role="jymVt">
      <property role="TrG5h" value="BrokenPorts" />
      <node concept="312cEg" id="31Fn7oZuPQ8" role="jymVt">
        <property role="TrG5h" value="inputEvents" />
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
        <node concept="3Tm1VV" id="5er1YemBu58" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="31Fn7oZuS_9" role="jymVt">
        <property role="TrG5h" value="outputEvents" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuS_c" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuS_d" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuS_e" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5er1YemBuPe" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZywIm" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZywIo" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuS_u" role="jymVt">
        <property role="TrG5h" value="inputDatas" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuS_x" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuS_y" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuS_z" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5er1YemBves" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZyyu5" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZyyu7" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuSFa" role="jymVt">
        <property role="TrG5h" value="outputDatas" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuSFd" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuSFe" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuSFf" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5er1YemBvBE" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZy$dM" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZy$dO" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuT5q" role="jymVt">
        <property role="TrG5h" value="plugs" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuT5t" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuT5u" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuT5v" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5er1YemBw0S" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZy_Bg" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZy_Bi" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="31Fn7oZuTfW" role="jymVt">
        <property role="TrG5h" value="sockets" />
        <property role="3TUv4t" value="true" />
        <node concept="2ShNRf" id="31Fn7oZuTfZ" role="33vP2m">
          <node concept="1pGfFk" id="31Fn7oZuTg0" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="31Fn7oZuTg1" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5er1YemBwKY" role="1B3o_S" />
        <node concept="_YKpA" id="31Fn7oZyBmV" role="1tU5fm">
          <node concept="3uibUv" id="31Fn7oZyBmX" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5er1YemBxac" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5er1Yem_JK3" role="1B3o_S" />
  </node>
</model>

