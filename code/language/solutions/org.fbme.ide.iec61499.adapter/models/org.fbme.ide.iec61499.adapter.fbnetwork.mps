<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(org.fbme.ide.iec61499.adapter.fbnetwork)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
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
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="3IX4BsKu5jS">
    <property role="TrG5h" value="FBNetworkConnectionByNode" />
    <node concept="2tJIrI" id="3IX4BsKuu8v" role="jymVt" />
    <node concept="3clFbW" id="1IuIrLUr$_G" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUr$_H" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUr$_I" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUr$_K" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUr$_M" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="1IuIrLUr$_Q" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUr$_N" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUr$_U" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUr$_R" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUr$_N" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUrBtU" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:4KieeRVlhii" resolve="Connection" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUr$_R" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjxH7" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUrHl2" role="jymVt" />
    <node concept="3clFb_" id="1KgvZpg77XU" role="jymVt">
      <property role="TrG5h" value="getSourceReference" />
      <node concept="3Tm1VV" id="1KgvZpg77XV" role="1B3o_S" />
      <node concept="2AHcQZ" id="1KgvZpg77XX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1KgvZpg77XY" role="3clF45">
        <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="1KgvZpg77XZ" role="11_B2D">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="1KgvZpg77Y0" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="1KgvZpg77Y5" role="3clF47">
        <node concept="3clFbF" id="1KgvZpg7aI8" role="3cqZAp">
          <node concept="2ShNRf" id="1KgvZpg7aI2" role="3clFbG">
            <node concept="YeOm9" id="1KgvZpg7b1J" role="2ShVmc">
              <node concept="1Y3b0j" id="1KgvZpg7b1M" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="7adg:~CompositeReference" resolve="CompositeReference" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="1KgvZpg7b1N" role="1B3o_S" />
                <node concept="3clFb_" id="1KgvZpg7b1T" role="jymVt">
                  <property role="TrG5h" value="getTarget" />
                  <node concept="3Tm1VV" id="1KgvZpg7b1U" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpg7b1W" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                  </node>
                  <node concept="3clFbS" id="1KgvZpg7b1Y" role="3clF47">
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
                                <node concept="37vLTw" id="1IuIrLUrKfg" role="1m5AlR">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
                                  <node concept="37vLTw" id="1IuIrLUrMP2" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="6YcNwH3A2Co" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
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
                                <node concept="3cpWs6" id="1KgvZpg7nJm" role="3cqZAp">
                                  <node concept="2YIFZM" id="1KgvZpg7sx9" role="3cqZAk">
                                    <ref role="37wK5l" to="g27j:~PortPath.createEventPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.EventDeclaration)" resolve="createEventPortPath" />
                                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                    <node concept="37vLTw" id="1KgvZpg7uyy" role="37wK5m">
                                      <ref role="3cqZAo" node="31Fn7oZCjtN" resolve="fb" />
                                    </node>
                                    <node concept="2OqwBi" id="1IuIrLUs0$f" role="37wK5m">
                                      <node concept="37vLTw" id="1IuIrLUrXKe" role="2Oq$k0">
                                        <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                      </node>
                                      <node concept="liA8E" id="1IuIrLUs2Db" role="2OqNvi">
                                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                        <node concept="37vLTw" id="1IuIrLUs4XD" role="37wK5m">
                                          <ref role="3cqZAo" node="31Fn7oZEZUm" resolve="declaration" />
                                        </node>
                                        <node concept="3VsKOn" id="1IuIrLUsdaL" role="37wK5m">
                                          <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="31Fn7oZEZUF" role="3clFbw">
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
                            <node concept="3clFbH" id="1KgvZpg8kPR" role="3cqZAp" />
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
                            <node concept="3cpWs6" id="1KgvZpg7J6s" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpg7PQq" role="3cqZAk">
                                <ref role="37wK5l" to="g27j:~PortPath.createEventPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.EventDeclaration)" resolve="createEventPortPath" />
                                <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                <node concept="10Nm6u" id="1KgvZpg7S8N" role="37wK5m" />
                                <node concept="2OqwBi" id="1KgvZpg7Vwu" role="37wK5m">
                                  <node concept="37vLTw" id="1KgvZpg7Vwv" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="1KgvZpg7Vww" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                    <node concept="2OqwBi" id="31DWWgF7MDq" role="37wK5m">
                                      <node concept="37vLTw" id="31DWWgF7MDr" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6tmliaA6b8A" resolve="contextSource" />
                                      </node>
                                      <node concept="3TrEf2" id="31DWWgF7MDs" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                      </node>
                                    </node>
                                    <node concept="3VsKOn" id="1KgvZpg7Vwy" role="37wK5m">
                                      <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6tmliaA63GT" role="3clFbw">
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
                      <node concept="2OqwBi" id="6oXN8hZQLdJ" role="3clFbw">
                        <node concept="37vLTw" id="1IuIrLUrJJZ" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
                                <node concept="37vLTw" id="1IuIrLUrSxj" role="1m5AlR">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
                                  <node concept="37vLTw" id="1IuIrLUrUZY" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="31DWWgF8hSi" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
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
                                <node concept="3cpWs6" id="1KgvZpg8e6R" role="3cqZAp">
                                  <node concept="2YIFZM" id="1KgvZpg8go8" role="3cqZAk">
                                    <ref role="37wK5l" to="g27j:~PortPath.createDataPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.ParameterDeclaration)" resolve="createDataPortPath" />
                                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                    <node concept="37vLTw" id="1KgvZpg8go9" role="37wK5m">
                                      <ref role="3cqZAo" node="31Fn7oZCoLb" resolve="fb" />
                                    </node>
                                    <node concept="2OqwBi" id="1KgvZpg8goa" role="37wK5m">
                                      <node concept="37vLTw" id="1KgvZpg8gob" role="2Oq$k0">
                                        <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                      </node>
                                      <node concept="liA8E" id="1KgvZpg8goc" role="2OqNvi">
                                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                        <node concept="37vLTw" id="1KgvZpg8god" role="37wK5m">
                                          <ref role="3cqZAo" node="31Fn7oZCLB2" resolve="declaration" />
                                        </node>
                                        <node concept="3VsKOn" id="1KgvZpg8goe" role="37wK5m">
                                          <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="31Fn7oZD05k" role="3clFbw">
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
                          <node concept="3eNFk2" id="1KgvZpg8xEZ" role="3eNLev">
                            <node concept="3clFbS" id="1KgvZpg8xF1" role="3eOfB_">
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
                                <node concept="2YIFZM" id="1KgvZpg8LMe" role="3cqZAk">
                                  <ref role="37wK5l" to="g27j:~PortPath.createDataPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.ParameterDeclaration)" resolve="createDataPortPath" />
                                  <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                  <node concept="10Nm6u" id="1KgvZpg8LMf" role="37wK5m" />
                                  <node concept="2OqwBi" id="1KgvZpg8LMg" role="37wK5m">
                                    <node concept="37vLTw" id="1KgvZpg8LMh" role="2Oq$k0">
                                      <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                    </node>
                                    <node concept="liA8E" id="1KgvZpg8LMi" role="2OqNvi">
                                      <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                      <node concept="2OqwBi" id="1KgvZpg8LMj" role="37wK5m">
                                        <node concept="37vLTw" id="1KgvZpg8LMk" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6tmliaA7ltt" resolve="contextSource" />
                                        </node>
                                        <node concept="3TrEf2" id="1KgvZpg8LMl" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                                        </node>
                                      </node>
                                      <node concept="3VsKOn" id="1KgvZpg8LMm" role="37wK5m">
                                        <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6tmliaA7bmV" role="3eO9$A">
                              <node concept="37vLTw" id="6tmliaA7bbe" role="2Oq$k0">
                                <ref role="3cqZAo" node="6oXN8hZRmWc" resolve="source" />
                              </node>
                              <node concept="1mIQ4w" id="6tmliaA7iH6" role="2OqNvi">
                                <node concept="chp4Y" id="6tmliaA7iL1" role="cj9EA">
                                  <ref role="cht4Q" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6oXN8hZRmW$" role="3clFbw">
                        <node concept="37vLTw" id="1IuIrLUrS22" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
                                <node concept="37vLTw" id="1IuIrLUslCp" role="2Oq$k0">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
                              <node concept="37vLTw" id="1IuIrLUsodr" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                              </node>
                              <node concept="liA8E" id="31DWWgF97Oy" role="2OqNvi">
                                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
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
                            <node concept="3cpWs6" id="1KgvZpg8Svj" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpg90mR" role="3cqZAk">
                                <ref role="37wK5l" to="g27j:~PortPath.createPlugPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.PlugDeclaration)" resolve="createPlugPortPath" />
                                <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                <node concept="37vLTw" id="1KgvZpg90mS" role="37wK5m">
                                  <ref role="3cqZAo" node="31DWWgF97Ou" resolve="fb" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpg90mT" role="37wK5m">
                                  <node concept="37vLTw" id="1KgvZpg90mU" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="1KgvZpg90mV" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                    <node concept="37vLTw" id="1KgvZpg90mW" role="37wK5m">
                                      <ref role="3cqZAo" node="31Fn7oZG2ld" resolve="declaration" />
                                    </node>
                                    <node concept="3VsKOn" id="1KgvZpg90mX" role="37wK5m">
                                      <ref role="3VsUkX" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="31Fn7oZG2ly" role="3clFbw">
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
                      </node>
                      <node concept="2OqwBi" id="6oXN8hZRrft" role="3clFbw">
                        <node concept="37vLTw" id="1IuIrLUsl98" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
                  <node concept="2AHcQZ" id="1KgvZpg7b20" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpg7cue" role="3clF45">
                    <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                    <node concept="3qTvmN" id="1KgvZpg7cuf" role="11_B2D" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpg7b21" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpg7b22" role="jymVt">
                  <property role="TrG5h" value="getPath" />
                  <node concept="3Tm1VV" id="1KgvZpg7b23" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpg7b25" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpg7b26" role="3clF45">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="1KgvZpg7b27" role="11_B2D">
                      <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1KgvZpg7b28" role="3clF47">
                    <node concept="3clFbJ" id="1KgvZpg95$w" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpg95$x" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpg95$y" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpg95$z" role="3cpWs9">
                            <property role="TrG5h" value="source" />
                            <node concept="3Tqbb2" id="1KgvZpg95$$" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpg95$_" role="33vP2m">
                              <node concept="1PxgMI" id="1KgvZpg95$A" role="2Oq$k0">
                                <node concept="chp4Y" id="1KgvZpg95$B" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                                </node>
                                <node concept="37vLTw" id="1KgvZpg95$C" role="1m5AlR">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="1KgvZpg95$D" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpg95$E" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpg95$F" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpg95$G" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpg95$H" role="3cpWs9">
                                <property role="TrG5h" value="componentSource" />
                                <node concept="3Tqbb2" id="1KgvZpg95$I" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpg95$J" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpg95$K" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpg95$L" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpg95$z" resolve="source" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1KgvZpg9fdd" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgagNz" role="3cqZAk">
                                <ref role="37wK5l" to="33ny:~List.of(java.lang.Object,java.lang.Object)" resolve="of" />
                                <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                                <node concept="2YIFZM" id="1VyPeINNRK9" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINO13W" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpg95$H" resolve="componentSource" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINNRKb" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                    <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                                <node concept="2YIFZM" id="1VyPeINO3Ni" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINO3Nj" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpg95$H" resolve="componentSource" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINO3Nk" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                    <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="1KgvZpgandW" role="3PaCim">
                                  <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpg95_l" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpg95_m" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpg95$z" resolve="source" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpg95_n" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpg95_o" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpg95_p" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpg95_q" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpg95_r" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpg95_s" role="3cpWs9">
                                <property role="TrG5h" value="contextSource" />
                                <node concept="3Tqbb2" id="1KgvZpg95_t" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpg95_u" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpg95_v" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpg95_w" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpg95$z" resolve="source" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1KgvZpgav7N" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgaELs" role="3cqZAk">
                                <ref role="37wK5l" to="33ny:~List.of(java.lang.Object)" resolve="of" />
                                <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                                <node concept="2YIFZM" id="1VyPeINOhk8" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINOnzs" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpg95_s" resolve="contextSource" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINOhka" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                    <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="1KgvZpgaKPY" role="3PaCim">
                                  <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpg95_F" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpg95_G" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpg95$z" resolve="source" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpg95_H" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpg95_I" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpg95_J" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpg95_K" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpg95_L" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpg95_M" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgaMYf" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgaMYg" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgaMYh" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgaMYi" role="3cpWs9">
                            <property role="TrG5h" value="source" />
                            <node concept="3Tqbb2" id="1KgvZpgaMYj" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgaMYk" role="33vP2m">
                              <node concept="1PxgMI" id="1KgvZpgaMYl" role="2Oq$k0">
                                <node concept="chp4Y" id="1KgvZpgaMYm" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                                </node>
                                <node concept="37vLTw" id="1KgvZpgaMYn" role="1m5AlR">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="1KgvZpgaMYo" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus2F" resolve="source" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgaMYp" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgaMYq" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgaMYr" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgaMYs" role="3cpWs9">
                                <property role="TrG5h" value="componentSource" />
                                <node concept="3Tqbb2" id="1KgvZpgaMYt" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpgaMYu" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpgaZHe" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpgaMYw" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpgaMYi" resolve="source" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1KgvZpgaMYx" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgaMYy" role="3cqZAk">
                                <ref role="37wK5l" to="33ny:~List.of(java.lang.Object,java.lang.Object)" resolve="of" />
                                <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                                <node concept="2YIFZM" id="1VyPeINOqj9" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINOqja" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgaMYs" resolve="componentSource" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINOqjb" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                    <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                                <node concept="2YIFZM" id="1VyPeINOqjc" role="37wK5m">
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <node concept="37vLTw" id="1VyPeINOqjd" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgaMYs" resolve="componentSource" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINOqje" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                    <ref role="359W_F" to="xiqq:PI_pXYus3O" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="1KgvZpgaMYL" role="3PaCim">
                                  <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgaMYM" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpgaMYN" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgaMYi" resolve="source" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpgaMYO" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpgaRAN" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgaMYQ" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgaMYR" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgaMYS" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgaMYT" role="3cpWs9">
                                <property role="TrG5h" value="contextSource" />
                                <node concept="3Tqbb2" id="1KgvZpgaMYU" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpgaMYV" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpgaUPM" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpgaMYX" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpgaMYi" resolve="source" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1KgvZpgaMYY" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgaMYZ" role="3cqZAk">
                                <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                                <ref role="37wK5l" to="33ny:~List.of(java.lang.Object)" resolve="of" />
                                <node concept="2YIFZM" id="1VyPeINOMg1" role="37wK5m">
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <node concept="37vLTw" id="1VyPeINOMg2" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgaMYT" resolve="contextSource" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINOMg3" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                                    <ref role="359W_F" to="xiqq:37fub3vlDyy" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="1KgvZpgaMZ7" role="3PaCim">
                                  <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgaMZ8" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpgaMZ9" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgaMYi" resolve="source" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpgaMZa" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpgaREk" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgaMZc" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgaMZd" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgaMZe" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgaRw$" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpg95B5" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpg95B6" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpg95B7" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpg95B8" role="3cpWs9">
                            <property role="TrG5h" value="source" />
                            <node concept="3Tqbb2" id="1KgvZpg95B9" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                            </node>
                            <node concept="1PxgMI" id="1KgvZpg95Ba" role="33vP2m">
                              <node concept="chp4Y" id="1KgvZpg95Bb" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                              </node>
                              <node concept="2OqwBi" id="1KgvZpg95Bc" role="1m5AlR">
                                <node concept="37vLTw" id="1KgvZpg95Bd" role="2Oq$k0">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                                <node concept="3TrEf2" id="1KgvZpg95Be" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1KgvZpgb8kk" role="3cqZAp">
                          <node concept="2YIFZM" id="1KgvZpgb8kl" role="3cqZAk">
                            <ref role="37wK5l" to="33ny:~List.of(java.lang.Object,java.lang.Object)" resolve="of" />
                            <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                            <node concept="2YIFZM" id="1VyPeINO$Vp" role="37wK5m">
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <node concept="37vLTw" id="1VyPeINOGgs" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpg95B8" resolve="source" />
                              </node>
                              <node concept="359W_D" id="1VyPeINO$Vr" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                                <ref role="359W_F" to="xiqq:75nMhMfIWAY" resolve="component" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="1VyPeINO$Vs" role="37wK5m">
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <node concept="37vLTw" id="1VyPeINODyx" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpg95B8" resolve="source" />
                              </node>
                              <node concept="359W_D" id="1VyPeINO$Vu" role="37wK5m">
                                <ref role="359W_E" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                <ref role="359W_F" to="xiqq:PI_pXYus3O" resolve="declaration" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="1KgvZpgb8k$" role="3PaCim">
                              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpg95BP" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpg95BQ" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpg95BR" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpg95BS" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1KgvZpgbt6R" role="3cqZAp">
                      <node concept="2YIFZM" id="1KgvZpgb_gl" role="3cqZAk">
                        <ref role="37wK5l" to="33ny:~List.of()" resolve="of" />
                        <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpg7b2a" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpg7b2b" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpg7b2c" role="jymVt">
                  <property role="TrG5h" value="getPresentation" />
                  <node concept="3Tm1VV" id="1KgvZpg7b2d" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpg7b2f" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpg7b2g" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3clFbS" id="1KgvZpg7b2h" role="3clF47">
                    <node concept="3clFbF" id="1KgvZpgbBds" role="3cqZAp">
                      <node concept="2OqwBi" id="1KgvZpgbC8Y" role="3clFbG">
                        <node concept="2OqwBi" id="1KgvZpgbBq0" role="2Oq$k0">
                          <node concept="37vLTw" id="1KgvZpgbBdr" role="2Oq$k0">
                            <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                          </node>
                          <node concept="3TrEf2" id="1KgvZpgbBY$" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="1KgvZpgbCN4" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpg7b2j" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpg7b2k" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpg7b2l" role="jymVt">
                  <property role="TrG5h" value="setPath" />
                  <node concept="3Tm1VV" id="1KgvZpg7b2m" role="1B3o_S" />
                  <node concept="3cqZAl" id="1KgvZpg7b2o" role="3clF45" />
                  <node concept="37vLTG" id="1KgvZpg7b2p" role="3clF46">
                    <property role="TrG5h" value="path" />
                    <node concept="3uibUv" id="1KgvZpg7b2q" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3qUE_q" id="3dz4YurgCn8" role="11_B2D">
                        <node concept="3uibUv" id="3dz4YurgDQt" role="3qUE_r">
                          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1KgvZpg7b2s" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1KgvZpg7b2t" role="3clF47">
                    <node concept="3clFbJ" id="1KgvZpgbKxa" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgbKxb" role="3clFbx">
                        <node concept="3clFbJ" id="1KgvZpgbU_h" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgbU_j" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgbKxm" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgbKxn" role="3cpWs9">
                                <property role="TrG5h" value="componentSource" />
                                <node concept="3Tqbb2" id="1KgvZpgbKxo" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                </node>
                                <node concept="2ShNRf" id="1KgvZpgchVZ" role="33vP2m">
                                  <node concept="3zrR0B" id="1KgvZpgcmgl" role="2ShVmc">
                                    <node concept="3Tqbb2" id="1KgvZpgcmgn" role="3zrR0E">
                                      <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1VyPeINMuaW" role="3cqZAp">
                              <node concept="2YIFZM" id="1VyPeINMulE" role="3clFbG">
                                <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                <node concept="37vLTw" id="1VyPeINMuoI" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgbKxn" resolve="componentSource" />
                                </node>
                                <node concept="359W_D" id="1VyPeINMutj" role="37wK5m">
                                  <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                  <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                                </node>
                                <node concept="37vLTw" id="1VyPeINMwLs" role="37wK5m">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                </node>
                                <node concept="2OqwBi" id="1VyPeINMw3s" role="37wK5m">
                                  <node concept="37vLTw" id="1VyPeINMw3t" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                                  </node>
                                  <node concept="liA8E" id="1VyPeINMw3u" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                    <node concept="3cmrfG" id="1VyPeINMw3v" role="37wK5m">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1VyPeINMxHk" role="3cqZAp">
                              <node concept="2YIFZM" id="1VyPeINMxHl" role="3clFbG">
                                <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                <node concept="37vLTw" id="1VyPeINMxHm" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgbKxn" resolve="componentSource" />
                                </node>
                                <node concept="359W_D" id="1VyPeINMxHn" role="37wK5m">
                                  <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                  <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
                                </node>
                                <node concept="37vLTw" id="1VyPeINMxHo" role="37wK5m">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                </node>
                                <node concept="2OqwBi" id="1VyPeINMxHp" role="37wK5m">
                                  <node concept="37vLTw" id="1VyPeINMxHq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                                  </node>
                                  <node concept="liA8E" id="1VyPeINMxHr" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                    <node concept="3cmrfG" id="1VyPeINMyT$" role="37wK5m">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1KgvZpgcXR$" role="3cqZAp">
                              <node concept="37vLTI" id="1KgvZpgd2I5" role="3clFbG">
                                <node concept="37vLTw" id="1KgvZpgd3g0" role="37vLTx">
                                  <ref role="3cqZAo" node="1KgvZpgbKxn" resolve="componentSource" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpgcZyt" role="37vLTJ">
                                  <node concept="37vLTw" id="1KgvZpgcXRy" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                  </node>
                                  <node concept="3TrEf2" id="1KgvZpgd2qB" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1KgvZpgc10U" role="3clFbw">
                            <node concept="3cmrfG" id="1KgvZpgc11T" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgbYPw" role="3uHU7B">
                              <node concept="37vLTw" id="1KgvZpgbYb9" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1KgvZpgbZs9" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="1KgvZpgc2d1" role="3eNLev">
                            <node concept="3clFbC" id="1KgvZpgc5TH" role="3eO9$A">
                              <node concept="3cmrfG" id="1KgvZpgc5UG" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgc3zi" role="3uHU7B">
                                <node concept="37vLTw" id="1KgvZpgc2Gh" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                                </node>
                                <node concept="liA8E" id="1KgvZpgc4m_" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="1KgvZpgc2d3" role="3eOfB_">
                              <node concept="3cpWs8" id="1KgvZpgcSh8" role="3cqZAp">
                                <node concept="3cpWsn" id="1KgvZpgcSh9" role="3cpWs9">
                                  <property role="TrG5h" value="contextSource" />
                                  <node concept="3Tqbb2" id="1KgvZpgcSha" role="1tU5fm">
                                    <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                  </node>
                                  <node concept="2ShNRf" id="1KgvZpgcShb" role="33vP2m">
                                    <node concept="3zrR0B" id="1KgvZpgcShc" role="2ShVmc">
                                      <node concept="3Tqbb2" id="1KgvZpgcShd" role="3zrR0E">
                                        <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1VyPeINQaWi" role="3cqZAp">
                                <node concept="2YIFZM" id="1VyPeINQaWk" role="3clFbG">
                                  <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <node concept="37vLTw" id="1VyPeINQdem" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgcSh9" resolve="contextSource" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINQaWm" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                    <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                  </node>
                                  <node concept="37vLTw" id="1VyPeINQaWn" role="37wK5m">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="2OqwBi" id="1VyPeINQaWo" role="37wK5m">
                                    <node concept="37vLTw" id="1VyPeINQaWp" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                                    </node>
                                    <node concept="liA8E" id="1VyPeINQaWq" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                      <node concept="3cmrfG" id="1VyPeINQdQy" role="37wK5m">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1KgvZpgd3nI" role="3cqZAp">
                                <node concept="37vLTI" id="1KgvZpgd3nJ" role="3clFbG">
                                  <node concept="37vLTw" id="1KgvZpgd3nK" role="37vLTx">
                                    <ref role="3cqZAo" node="1KgvZpgcSh9" resolve="contextSource" />
                                  </node>
                                  <node concept="2OqwBi" id="1KgvZpgd3nL" role="37vLTJ">
                                    <node concept="37vLTw" id="1KgvZpgd3nM" role="2Oq$k0">
                                      <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                    </node>
                                    <node concept="3TrEf2" id="1KgvZpgd3nN" role="2OqNvi">
                                      <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgbKy7" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgbKy8" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgbKy9" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgbKya" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgbKyb" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgbKyc" role="3clFbx">
                        <node concept="3clFbJ" id="1KgvZpgdasH" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgdasI" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgdasJ" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgdasK" role="3cpWs9">
                                <property role="TrG5h" value="componentSource" />
                                <node concept="3Tqbb2" id="1KgvZpgdasL" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                </node>
                                <node concept="2ShNRf" id="1KgvZpgdasM" role="33vP2m">
                                  <node concept="3zrR0B" id="1KgvZpgdasN" role="2ShVmc">
                                    <node concept="3Tqbb2" id="1KgvZpgdasO" role="3zrR0E">
                                      <ref role="ehGHo" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1VyPeINMTBn" role="3cqZAp">
                              <node concept="2YIFZM" id="1VyPeINMTBo" role="3clFbG">
                                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                <node concept="37vLTw" id="1VyPeINMTBp" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgdasK" resolve="componentSource" />
                                </node>
                                <node concept="359W_D" id="1VyPeINMTBq" role="37wK5m">
                                  <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                                  <ref role="359W_E" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                </node>
                                <node concept="37vLTw" id="1VyPeINMTBr" role="37wK5m">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                </node>
                                <node concept="2OqwBi" id="1VyPeINMTBs" role="37wK5m">
                                  <node concept="37vLTw" id="1VyPeINMTBt" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                                  </node>
                                  <node concept="liA8E" id="1VyPeINMTBu" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                    <node concept="3cmrfG" id="1VyPeINMTBv" role="37wK5m">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1VyPeINMTBw" role="3cqZAp">
                              <node concept="2YIFZM" id="1VyPeINMTBx" role="3clFbG">
                                <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                <node concept="37vLTw" id="1VyPeINMTBy" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgdasK" resolve="componentSource" />
                                </node>
                                <node concept="359W_D" id="1VyPeINMTBz" role="37wK5m">
                                  <ref role="359W_E" to="xiqq:37fub3vlAqp" resolve="ComponentDataSource" />
                                  <ref role="359W_F" to="xiqq:PI_pXYus3O" resolve="declaration" />
                                </node>
                                <node concept="37vLTw" id="1VyPeINMTB$" role="37wK5m">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                </node>
                                <node concept="2OqwBi" id="1VyPeINMTB_" role="37wK5m">
                                  <node concept="37vLTw" id="1VyPeINMTBA" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                                  </node>
                                  <node concept="liA8E" id="1VyPeINMTBB" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                    <node concept="3cmrfG" id="1VyPeINMTBC" role="37wK5m">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1KgvZpgdatp" role="3cqZAp">
                              <node concept="37vLTI" id="1KgvZpgdatq" role="3clFbG">
                                <node concept="37vLTw" id="1KgvZpgdatr" role="37vLTx">
                                  <ref role="3cqZAo" node="1KgvZpgdasK" resolve="componentSource" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpgdats" role="37vLTJ">
                                  <node concept="37vLTw" id="1KgvZpgdatt" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                  </node>
                                  <node concept="3TrEf2" id="1KgvZpgdatu" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1KgvZpgdatv" role="3clFbw">
                            <node concept="3cmrfG" id="1KgvZpgdatw" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgdatx" role="3uHU7B">
                              <node concept="37vLTw" id="1KgvZpgdaty" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1KgvZpgdatz" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="1KgvZpgdat$" role="3eNLev">
                            <node concept="3clFbC" id="1KgvZpgdat_" role="3eO9$A">
                              <node concept="3cmrfG" id="1KgvZpgdatA" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgdatB" role="3uHU7B">
                                <node concept="37vLTw" id="1KgvZpgdatC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                                </node>
                                <node concept="liA8E" id="1KgvZpgdatD" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="1KgvZpgdatE" role="3eOfB_">
                              <node concept="3cpWs8" id="1KgvZpgdatF" role="3cqZAp">
                                <node concept="3cpWsn" id="1KgvZpgdatG" role="3cpWs9">
                                  <property role="TrG5h" value="contextSource" />
                                  <node concept="3Tqbb2" id="1KgvZpgdatH" role="1tU5fm">
                                    <ref role="ehGHo" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                                  </node>
                                  <node concept="2ShNRf" id="1KgvZpgdatI" role="33vP2m">
                                    <node concept="3zrR0B" id="1KgvZpgdatJ" role="2ShVmc">
                                      <node concept="3Tqbb2" id="1KgvZpgdatK" role="3zrR0E">
                                        <ref role="ehGHo" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1VyPeINMzEG" role="3cqZAp">
                                <node concept="2YIFZM" id="1VyPeINMzEH" role="3clFbG">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                  <node concept="37vLTw" id="1VyPeINM$x7" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgdatG" resolve="contextSource" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINMzEJ" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:37fub3vndep" resolve="ContextDataSource" />
                                    <ref role="359W_F" to="xiqq:37fub3vlDyy" resolve="declaration" />
                                  </node>
                                  <node concept="37vLTw" id="1VyPeINMzEK" role="37wK5m">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="2OqwBi" id="1VyPeINMzEL" role="37wK5m">
                                    <node concept="37vLTw" id="1VyPeINMzEM" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                                    </node>
                                    <node concept="liA8E" id="1VyPeINMzEN" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                      <node concept="3cmrfG" id="1VyPeINMzEO" role="37wK5m">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1KgvZpgdau3" role="3cqZAp">
                                <node concept="37vLTI" id="1KgvZpgdau4" role="3clFbG">
                                  <node concept="37vLTw" id="1KgvZpgdau5" role="37vLTx">
                                    <ref role="3cqZAo" node="1KgvZpgdatG" resolve="contextSource" />
                                  </node>
                                  <node concept="2OqwBi" id="1KgvZpgdau6" role="37vLTJ">
                                    <node concept="37vLTw" id="1KgvZpgdau7" role="2Oq$k0">
                                      <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                    </node>
                                    <node concept="3TrEf2" id="1KgvZpgdau8" role="2OqNvi">
                                      <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgbKz8" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgbKz9" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgbKza" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgbKzb" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgbKzc" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgbKzd" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgdlCK" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgdlCN" role="3cpWs9">
                            <property role="TrG5h" value="source" />
                            <node concept="3Tqbb2" id="1KgvZpgdlCI" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                            </node>
                            <node concept="2ShNRf" id="1KgvZpgdpzc" role="33vP2m">
                              <node concept="3zrR0B" id="1KgvZpgdpzd" role="2ShVmc">
                                <node concept="3Tqbb2" id="1KgvZpgdpze" role="3zrR0E">
                                  <ref role="ehGHo" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1VyPeINN0CF" role="3cqZAp">
                          <node concept="2YIFZM" id="1VyPeINN0CG" role="3clFbG">
                            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                            <node concept="37vLTw" id="1VyPeINN2S8" role="37wK5m">
                              <ref role="3cqZAo" node="1KgvZpgdlCN" resolve="source" />
                            </node>
                            <node concept="359W_D" id="1VyPeINN0CI" role="37wK5m">
                              <ref role="359W_E" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                              <ref role="359W_F" to="xiqq:75nMhMfIWAY" resolve="component" />
                            </node>
                            <node concept="37vLTw" id="1VyPeINN0CJ" role="37wK5m">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                            </node>
                            <node concept="2OqwBi" id="1VyPeINN0CK" role="37wK5m">
                              <node concept="37vLTw" id="1VyPeINN0CL" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1VyPeINN0CM" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="1VyPeINN0CN" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1VyPeINN0CO" role="3cqZAp">
                          <node concept="2YIFZM" id="1VyPeINN0CP" role="3clFbG">
                            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                            <node concept="37vLTw" id="1VyPeINN30c" role="37wK5m">
                              <ref role="3cqZAo" node="1KgvZpgdlCN" resolve="source" />
                            </node>
                            <node concept="359W_D" id="1VyPeINN0CR" role="37wK5m">
                              <ref role="359W_E" to="xiqq:75nMhMfIWAT" resolve="FBPlugReference" />
                              <ref role="359W_F" to="xiqq:75nMhMfIWB0" resolve="declaration" />
                            </node>
                            <node concept="37vLTw" id="1VyPeINN0CS" role="37wK5m">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                            </node>
                            <node concept="2OqwBi" id="1VyPeINN0CT" role="37wK5m">
                              <node concept="37vLTw" id="1VyPeINN0CU" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1VyPeINN0CV" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="1VyPeINN0CW" role="37wK5m">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1KgvZpgdL9R" role="3cqZAp">
                          <node concept="37vLTI" id="1KgvZpgdL9S" role="3clFbG">
                            <node concept="37vLTw" id="1KgvZpgdRoc" role="37vLTx">
                              <ref role="3cqZAo" node="1KgvZpgdlCN" resolve="source" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgdL9U" role="37vLTJ">
                              <node concept="37vLTw" id="1KgvZpgdL9V" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                              </node>
                              <node concept="3TrEf2" id="1KgvZpgdL9W" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgbKzB" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgbKzC" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgbKzD" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgbKzE" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpg7b2v" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3uibUv" id="1KgvZpg7bEt" role="2Ghqu4">
                  <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                  <node concept="3qTvmN" id="1KgvZpg7bEu" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1KgvZpg77Y6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1KgvZpg77Y9" role="jymVt">
      <property role="TrG5h" value="getTargetReference" />
      <node concept="3Tm1VV" id="1KgvZpg77Ya" role="1B3o_S" />
      <node concept="2AHcQZ" id="1KgvZpg77Yc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1KgvZpg77Yd" role="3clF45">
        <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="1KgvZpg77Ye" role="11_B2D">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="1KgvZpg77Yf" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="1KgvZpg77Yk" role="3clF47">
        <node concept="3clFbF" id="1KgvZpgeSoW" role="3cqZAp">
          <node concept="2ShNRf" id="1KgvZpgeSoX" role="3clFbG">
            <node concept="YeOm9" id="1KgvZpgeSoY" role="2ShVmc">
              <node concept="1Y3b0j" id="1KgvZpgeSoZ" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <ref role="1Y3XeK" to="7adg:~CompositeReference" resolve="CompositeReference" />
                <node concept="3Tm1VV" id="1KgvZpgeSp0" role="1B3o_S" />
                <node concept="3clFb_" id="1KgvZpgeSp1" role="jymVt">
                  <property role="TrG5h" value="getTarget" />
                  <node concept="3Tm1VV" id="1KgvZpgeSp2" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpgeSp3" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                  </node>
                  <node concept="3clFbS" id="1KgvZpgeSp4" role="3clF47">
                    <node concept="3clFbJ" id="1KgvZpgeSp5" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSp6" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSp7" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSp8" role="3cpWs9">
                            <property role="TrG5h" value="destination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSp9" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSpa" role="33vP2m">
                              <node concept="1PxgMI" id="1KgvZpgeSpb" role="2Oq$k0">
                                <node concept="chp4Y" id="1KgvZpgeSpc" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                                </node>
                                <node concept="37vLTw" id="1KgvZpgeSpd" role="1m5AlR">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="1KgvZpgf2vz" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgeSpf" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSpg" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgeSph" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSpi" role="3cpWs9">
                                <property role="TrG5h" value="componentDestination" />
                                <node concept="3Tqbb2" id="1KgvZpgeSpj" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpgeSpk" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpgf9m8" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpgeSpm" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpgeSp8" resolve="destination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="1KgvZpgeSpn" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSpo" role="3cpWs9">
                                <property role="TrG5h" value="fb" />
                                <node concept="3uibUv" id="1KgvZpgeSpp" role="1tU5fm">
                                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpgeSpq" role="33vP2m">
                                  <node concept="37vLTw" id="1KgvZpgeSpr" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="1KgvZpgeSps" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                    <node concept="2OqwBi" id="1KgvZpgeSpt" role="37wK5m">
                                      <node concept="37vLTw" id="1KgvZpgeSpu" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1KgvZpgeSpi" resolve="componentDestination" />
                                      </node>
                                      <node concept="3TrEf2" id="1KgvZpgeSpv" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                      </node>
                                    </node>
                                    <node concept="3VsKOn" id="1KgvZpgeSpw" role="37wK5m">
                                      <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="1KgvZpgeSpx" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSpy" role="3cpWs9">
                                <property role="TrG5h" value="declaration" />
                                <node concept="3Tqbb2" id="1KgvZpgeSpz" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpgeSp$" role="33vP2m">
                                  <node concept="37vLTw" id="1KgvZpgeSp_" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpgeSpi" resolve="componentDestination" />
                                  </node>
                                  <node concept="3TrEf2" id="1KgvZpgeSpA" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1KgvZpgeSpB" role="3cqZAp">
                              <node concept="3clFbS" id="1KgvZpgeSpC" role="3clFbx">
                                <node concept="3cpWs6" id="1KgvZpgeSpD" role="3cqZAp">
                                  <node concept="2YIFZM" id="1KgvZpgeSpE" role="3cqZAk">
                                    <ref role="37wK5l" to="g27j:~PortPath.createEventPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.EventDeclaration)" resolve="createEventPortPath" />
                                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                    <node concept="37vLTw" id="1KgvZpgeSpF" role="37wK5m">
                                      <ref role="3cqZAo" node="1KgvZpgeSpo" resolve="fb" />
                                    </node>
                                    <node concept="2OqwBi" id="1KgvZpgeSpG" role="37wK5m">
                                      <node concept="37vLTw" id="1KgvZpgeSpH" role="2Oq$k0">
                                        <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                      </node>
                                      <node concept="liA8E" id="1KgvZpgeSpI" role="2OqNvi">
                                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                        <node concept="37vLTw" id="1KgvZpgeSpJ" role="37wK5m">
                                          <ref role="3cqZAo" node="1KgvZpgeSpy" resolve="declaration" />
                                        </node>
                                        <node concept="3VsKOn" id="1KgvZpgeSpK" role="37wK5m">
                                          <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgeSpL" role="3clFbw">
                                <node concept="2OqwBi" id="1KgvZpgeSpM" role="2Oq$k0">
                                  <node concept="2OqwBi" id="1KgvZpgeSpN" role="2Oq$k0">
                                    <node concept="37vLTw" id="1KgvZpgeSpO" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1KgvZpgeSpi" resolve="componentDestination" />
                                    </node>
                                    <node concept="3TrEf2" id="1KgvZpgeSpP" role="2OqNvi">
                                      <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                    </node>
                                  </node>
                                  <node concept="2qgKlT" id="1KgvZpgg2Xp" role="2OqNvi">
                                    <ref role="37wK5l" to="t4dg:5L1OxDukYdN" resolve="eventDestinations" />
                                  </node>
                                </node>
                                <node concept="3JPx81" id="1KgvZpgeSpR" role="2OqNvi">
                                  <node concept="37vLTw" id="1KgvZpgeSpS" role="25WWJ7">
                                    <ref role="3cqZAo" node="1KgvZpgeSpy" resolve="declaration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="1KgvZpgeSpT" role="3cqZAp" />
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeSpU" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpgeSpV" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgeSp8" resolve="destination" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpgeSpW" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpgf9kq" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgeSpY" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSpZ" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgeSq0" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSq1" role="3cpWs9">
                                <property role="TrG5h" value="contextDestination" />
                                <node concept="3Tqbb2" id="1KgvZpgeSq2" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpgeSq3" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpgfmc2" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpgeSq5" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpgeSp8" resolve="destination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1KgvZpgeSq6" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgeSq7" role="3cqZAk">
                                <ref role="37wK5l" to="g27j:~PortPath.createEventPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.EventDeclaration)" resolve="createEventPortPath" />
                                <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                <node concept="10Nm6u" id="1KgvZpgeSq8" role="37wK5m" />
                                <node concept="2OqwBi" id="1KgvZpgeSq9" role="37wK5m">
                                  <node concept="37vLTw" id="1KgvZpgeSqa" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="1KgvZpgeSqb" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                    <node concept="2OqwBi" id="1KgvZpgeSqc" role="37wK5m">
                                      <node concept="37vLTw" id="1KgvZpgeSqd" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1KgvZpgeSq1" resolve="contextDestination" />
                                      </node>
                                      <node concept="3TrEf2" id="1KgvZpgeSqe" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                      </node>
                                    </node>
                                    <node concept="3VsKOn" id="1KgvZpgeSqf" role="37wK5m">
                                      <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeSqg" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpgeSqh" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgeSp8" resolve="destination" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpgeSqi" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpgfibL" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSqk" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSql" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSqm" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgeSqn" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeSqo" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSqp" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSqq" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSqr" role="3cpWs9">
                            <property role="TrG5h" value="destination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSqs" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:37fub3vlApU" resolve="DataDestination" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSqt" role="33vP2m">
                              <node concept="1PxgMI" id="1KgvZpgeSqu" role="2Oq$k0">
                                <node concept="chp4Y" id="1KgvZpgeSqv" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                                </node>
                                <node concept="37vLTw" id="1KgvZpgeSqw" role="1m5AlR">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="1KgvZpgfowz" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus48" resolve="destination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgeSqy" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSqz" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgeSq$" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSq_" role="3cpWs9">
                                <property role="TrG5h" value="componentDestination" />
                                <node concept="3Tqbb2" id="1KgvZpgeSqA" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpgeSqB" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpgfwnf" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpgeSqD" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpgeSqr" resolve="destination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="1KgvZpgeSqE" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSqF" role="3cpWs9">
                                <property role="TrG5h" value="fb" />
                                <node concept="3uibUv" id="1KgvZpgeSqG" role="1tU5fm">
                                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpgeSqH" role="33vP2m">
                                  <node concept="37vLTw" id="1KgvZpgeSqI" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="1KgvZpgeSqJ" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                    <node concept="2OqwBi" id="1KgvZpgeSqK" role="37wK5m">
                                      <node concept="37vLTw" id="1KgvZpgeSqL" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1KgvZpgeSq_" resolve="componentDestination" />
                                      </node>
                                      <node concept="3TrEf2" id="1KgvZpgeSqM" role="2OqNvi">
                                        <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                      </node>
                                    </node>
                                    <node concept="3VsKOn" id="1KgvZpgeSqN" role="37wK5m">
                                      <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="1KgvZpgeSqO" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSqP" role="3cpWs9">
                                <property role="TrG5h" value="declaration" />
                                <node concept="3Tqbb2" id="1KgvZpgeSqQ" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpgeSqR" role="33vP2m">
                                  <node concept="37vLTw" id="1KgvZpgeSqS" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpgeSq_" resolve="componentDestination" />
                                  </node>
                                  <node concept="3TrEf2" id="1KgvZpgeSqT" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:PI_pXYus3O" resolve="declaration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1KgvZpgeSqU" role="3cqZAp">
                              <node concept="3clFbS" id="1KgvZpgeSqV" role="3clFbx">
                                <node concept="3cpWs6" id="1KgvZpgeSqW" role="3cqZAp">
                                  <node concept="2YIFZM" id="1KgvZpgeSqX" role="3cqZAk">
                                    <ref role="37wK5l" to="g27j:~PortPath.createDataPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.ParameterDeclaration)" resolve="createDataPortPath" />
                                    <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                    <node concept="37vLTw" id="1KgvZpgeSqY" role="37wK5m">
                                      <ref role="3cqZAo" node="1KgvZpgeSqF" resolve="fb" />
                                    </node>
                                    <node concept="2OqwBi" id="1KgvZpgeSqZ" role="37wK5m">
                                      <node concept="37vLTw" id="1KgvZpgeSr0" role="2Oq$k0">
                                        <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                      </node>
                                      <node concept="liA8E" id="1KgvZpgeSr1" role="2OqNvi">
                                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                        <node concept="37vLTw" id="1KgvZpgeSr2" role="37wK5m">
                                          <ref role="3cqZAo" node="1KgvZpgeSqP" resolve="declaration" />
                                        </node>
                                        <node concept="3VsKOn" id="1KgvZpgeSr3" role="37wK5m">
                                          <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgeSr4" role="3clFbw">
                                <node concept="2OqwBi" id="1KgvZpgeSr5" role="2Oq$k0">
                                  <node concept="2OqwBi" id="1KgvZpgeSr6" role="2Oq$k0">
                                    <node concept="37vLTw" id="1KgvZpgeSr7" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1KgvZpgeSq_" resolve="componentDestination" />
                                    </node>
                                    <node concept="3TrEf2" id="1KgvZpgeSr8" role="2OqNvi">
                                      <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                    </node>
                                  </node>
                                  <node concept="2qgKlT" id="1KgvZpgg2R1" role="2OqNvi">
                                    <ref role="37wK5l" to="t4dg:5L1OxDukYen" resolve="dataDestinations" />
                                  </node>
                                </node>
                                <node concept="3JPx81" id="1KgvZpgeSra" role="2OqNvi">
                                  <node concept="37vLTw" id="1KgvZpgeSrb" role="25WWJ7">
                                    <ref role="3cqZAo" node="1KgvZpgeSqP" resolve="declaration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeSrc" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpgeSrd" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgeSqr" resolve="destination" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpgeSre" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpgfwjq" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="1KgvZpgeSrg" role="3eNLev">
                            <node concept="3clFbS" id="1KgvZpgeSrh" role="3eOfB_">
                              <node concept="3cpWs8" id="1KgvZpgeSri" role="3cqZAp">
                                <node concept="3cpWsn" id="1KgvZpgeSrj" role="3cpWs9">
                                  <property role="TrG5h" value="contextDestination" />
                                  <node concept="3Tqbb2" id="1KgvZpgeSrk" role="1tU5fm">
                                    <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                                  </node>
                                  <node concept="1PxgMI" id="1KgvZpgeSrl" role="33vP2m">
                                    <node concept="chp4Y" id="6xq_LPByjdA" role="3oSUPX">
                                      <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                                    </node>
                                    <node concept="37vLTw" id="1KgvZpgeSrn" role="1m5AlR">
                                      <ref role="3cqZAo" node="1KgvZpgeSqr" resolve="destination" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs6" id="1KgvZpgeSro" role="3cqZAp">
                                <node concept="2YIFZM" id="1KgvZpgeSrp" role="3cqZAk">
                                  <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                  <ref role="37wK5l" to="g27j:~PortPath.createDataPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.ParameterDeclaration)" resolve="createDataPortPath" />
                                  <node concept="10Nm6u" id="1KgvZpgeSrq" role="37wK5m" />
                                  <node concept="2OqwBi" id="1KgvZpgeSrr" role="37wK5m">
                                    <node concept="37vLTw" id="1KgvZpgeSrs" role="2Oq$k0">
                                      <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                    </node>
                                    <node concept="liA8E" id="1KgvZpgeSrt" role="2OqNvi">
                                      <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                      <node concept="2OqwBi" id="1KgvZpgeSru" role="37wK5m">
                                        <node concept="37vLTw" id="1KgvZpgeSrv" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1KgvZpgeSrj" resolve="contextDestination" />
                                        </node>
                                        <node concept="3TrEf2" id="1KgvZpgeSrw" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:37fub3vlDyy" resolve="declaration" />
                                        </node>
                                      </node>
                                      <node concept="3VsKOn" id="1KgvZpgeSrx" role="37wK5m">
                                        <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSry" role="3eO9$A">
                              <node concept="37vLTw" id="1KgvZpgeSrz" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpgeSqr" resolve="destination" />
                              </node>
                              <node concept="1mIQ4w" id="1KgvZpgeSr$" role="2OqNvi">
                                <node concept="chp4Y" id="6xq_LPByj2p" role="cj9EA">
                                  <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSrA" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSrB" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSrC" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgeSrD" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeSrE" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSrF" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSrG" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSrH" role="3cpWs9">
                            <property role="TrG5h" value="destination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSrI" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                            </node>
                            <node concept="1PxgMI" id="1KgvZpgeSrJ" role="33vP2m">
                              <node concept="chp4Y" id="1KgvZpgfAqY" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgeSrL" role="1m5AlR">
                                <node concept="37vLTw" id="1KgvZpgeSrM" role="2Oq$k0">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                                <node concept="3TrEf2" id="1KgvZpgfD6X" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1KgvZpgeSrO" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSrP" role="3cpWs9">
                            <property role="TrG5h" value="fb" />
                            <node concept="3uibUv" id="1KgvZpgeSrQ" role="1tU5fm">
                              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSrR" role="33vP2m">
                              <node concept="37vLTw" id="1KgvZpgeSrS" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                              </node>
                              <node concept="liA8E" id="1KgvZpgeSrT" role="2OqNvi">
                                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                <node concept="2OqwBi" id="1KgvZpgeSrU" role="37wK5m">
                                  <node concept="37vLTw" id="1KgvZpgeSrV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpgeSrH" resolve="destination" />
                                  </node>
                                  <node concept="3TrEf2" id="1KgvZpgeSrW" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                                  </node>
                                </node>
                                <node concept="3VsKOn" id="1KgvZpgeSrX" role="37wK5m">
                                  <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1KgvZpgeSrY" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSrZ" role="3cpWs9">
                            <property role="TrG5h" value="declaration" />
                            <node concept="3Tqbb2" id="1KgvZpgeSs0" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSs1" role="33vP2m">
                              <node concept="37vLTw" id="1KgvZpgeSs2" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpgeSrH" resolve="destination" />
                              </node>
                              <node concept="3TrEf2" id="1KgvZpgeSs3" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgeSs4" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSs5" role="3clFbx">
                            <node concept="3cpWs6" id="1KgvZpgeSs6" role="3cqZAp">
                              <node concept="2YIFZM" id="5NqDTbzjyzt" role="3cqZAk">
                                <ref role="37wK5l" to="g27j:~PortPath.createSocketPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.SocketDeclaration)" resolve="createSocketPortPath" />
                                <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                <node concept="37vLTw" id="5NqDTbzjyzu" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgeSrP" resolve="fb" />
                                </node>
                                <node concept="2OqwBi" id="5NqDTbzjyzv" role="37wK5m">
                                  <node concept="37vLTw" id="5NqDTbzjyzw" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="5NqDTbzjyzx" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                    <node concept="37vLTw" id="5NqDTbzjyzy" role="37wK5m">
                                      <ref role="3cqZAo" node="1KgvZpgeSrZ" resolve="declaration" />
                                    </node>
                                    <node concept="3VsKOn" id="5NqDTbzjyzz" role="37wK5m">
                                      <ref role="3VsUkX" to="cwd8:~SocketDeclaration" resolve="SocketDeclaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeSsi" role="3clFbw">
                            <node concept="2OqwBi" id="1KgvZpgeSsj" role="2Oq$k0">
                              <node concept="2OqwBi" id="1KgvZpgeSsk" role="2Oq$k0">
                                <node concept="37vLTw" id="1KgvZpgeSsl" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KgvZpgeSrH" resolve="destination" />
                                </node>
                                <node concept="3TrEf2" id="1KgvZpgeSsm" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:75nMhMfIPvb" resolve="component" />
                                </node>
                              </node>
                              <node concept="2qgKlT" id="1KgvZpgg2JG" role="2OqNvi">
                                <ref role="37wK5l" to="t4dg:uLhTRQXezk" resolve="getSockets" />
                              </node>
                            </node>
                            <node concept="3JPx81" id="1KgvZpgeSso" role="2OqNvi">
                              <node concept="37vLTw" id="1KgvZpgeSsp" role="25WWJ7">
                                <ref role="3cqZAo" node="1KgvZpgeSrZ" resolve="declaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSsq" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSsr" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSss" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgeSst" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1KgvZpgeSsu" role="3cqZAp">
                      <node concept="10Nm6u" id="1KgvZpgeSsv" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpgeSsw" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpgeSsx" role="3clF45">
                    <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                    <node concept="3qTvmN" id="1KgvZpgeSsy" role="11_B2D" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpgeSsz" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpgeSs$" role="jymVt">
                  <property role="TrG5h" value="getPath" />
                  <node concept="3Tm1VV" id="1KgvZpgeSs_" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpgeSsA" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpgeSsB" role="3clF45">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="1KgvZpgeSsC" role="11_B2D">
                      <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1KgvZpgeSsD" role="3clF47">
                    <node concept="3clFbJ" id="1KgvZpgeSsE" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSsF" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSsG" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSsH" role="3cpWs9">
                            <property role="TrG5h" value="destination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSsI" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSsJ" role="33vP2m">
                              <node concept="1PxgMI" id="1KgvZpgeSsK" role="2Oq$k0">
                                <node concept="chp4Y" id="1KgvZpgeSsL" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                                </node>
                                <node concept="37vLTw" id="1KgvZpgeSsM" role="1m5AlR">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="1KgvZpggbjw" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgeSsO" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSsP" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgeSsQ" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSsR" role="3cpWs9">
                                <property role="TrG5h" value="componentDestination" />
                                <node concept="3Tqbb2" id="1KgvZpgeSsS" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpgeSsT" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpggqSQ" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpgeSsV" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpgeSsH" resolve="destination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1KgvZpgeSsW" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgeSsX" role="3cqZAk">
                                <ref role="37wK5l" to="33ny:~List.of(java.lang.Object,java.lang.Object)" resolve="of" />
                                <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                                <node concept="2YIFZM" id="1VyPeINP7ul" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINP9xK" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgeSsR" resolve="componentDestination" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINP7un" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                    <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                                <node concept="2YIFZM" id="1VyPeINP7uo" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINPcpA" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgeSsR" resolve="componentDestination" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINP7uq" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                    <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="1KgvZpgeStc" role="3PaCim">
                                  <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeStd" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpgeSte" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgeSsH" resolve="destination" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpgeStf" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpggk90" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgeSth" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSti" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgeStj" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeStk" role="3cpWs9">
                                <property role="TrG5h" value="contextDestination" />
                                <node concept="3Tqbb2" id="1KgvZpgeStl" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpgeStm" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpggt4L" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpgeSto" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpgeSsH" resolve="destination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1KgvZpgeStp" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgeStq" role="3cqZAk">
                                <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                                <ref role="37wK5l" to="33ny:~List.of(java.lang.Object)" resolve="of" />
                                <node concept="2YIFZM" id="1VyPeINPTEm" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINQ9iz" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgeStk" resolve="contextDestination" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINPTEo" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                    <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="1KgvZpgeSty" role="3PaCim">
                                  <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeStz" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpgeSt$" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgeSsH" resolve="destination" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpgeSt_" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpggkav" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeStB" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeStC" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeStD" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgeStE" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeStF" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeStG" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeStH" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeStI" role="3cpWs9">
                            <property role="TrG5h" value="destination" />
                            <node concept="3Tqbb2" id="1KgvZpgeStJ" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeStK" role="33vP2m">
                              <node concept="1PxgMI" id="1KgvZpgeStL" role="2Oq$k0">
                                <node concept="chp4Y" id="1KgvZpgeStM" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                                </node>
                                <node concept="37vLTw" id="1KgvZpgeStN" role="1m5AlR">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="1KgvZpggkfx" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus2M" resolve="destination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgeStP" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeStQ" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgeStR" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeStS" role="3cpWs9">
                                <property role="TrG5h" value="componentDestination" />
                                <node concept="3Tqbb2" id="1KgvZpgeStT" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpgeStU" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpggCk9" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpgeStW" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpgeStI" resolve="destination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1KgvZpgeStX" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgeStY" role="3cqZAk">
                                <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                                <ref role="37wK5l" to="33ny:~List.of(java.lang.Object,java.lang.Object)" resolve="of" />
                                <node concept="2YIFZM" id="1VyPeINPoJ7" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINPoJ8" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgeStS" resolve="componentDestination" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINPoJ9" role="37wK5m">
                                    <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                                    <ref role="359W_E" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                  </node>
                                </node>
                                <node concept="2YIFZM" id="1VyPeINPoJa" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINPoJb" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgeStS" resolve="componentDestination" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINPoJc" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                    <ref role="359W_F" to="xiqq:PI_pXYus3O" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="1KgvZpgeSud" role="3PaCim">
                                  <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeSue" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpgeSuf" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgeStI" resolve="destination" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpgeSug" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpggzT8" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgeSui" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSuj" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgeSuk" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSul" role="3cpWs9">
                                <property role="TrG5h" value="contextDestination" />
                                <node concept="3Tqbb2" id="1KgvZpgeSum" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                                </node>
                                <node concept="1PxgMI" id="1KgvZpgeSun" role="33vP2m">
                                  <node concept="chp4Y" id="1KgvZpggG9Q" role="3oSUPX">
                                    <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                                  </node>
                                  <node concept="37vLTw" id="1KgvZpgeSup" role="1m5AlR">
                                    <ref role="3cqZAo" node="1KgvZpgeStI" resolve="destination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="1KgvZpgeSuq" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgeSur" role="3cqZAk">
                                <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                                <ref role="37wK5l" to="33ny:~List.of(java.lang.Object)" resolve="of" />
                                <node concept="2YIFZM" id="1VyPeINPKHl" role="37wK5m">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                                  <node concept="37vLTw" id="1VyPeINPNaz" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgeSul" resolve="contextDestination" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINPKHn" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                                    <ref role="359W_F" to="xiqq:37fub3vlDyy" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="1KgvZpgeSuz" role="3PaCim">
                                  <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeSu$" role="3clFbw">
                            <node concept="37vLTw" id="1KgvZpgeSu_" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgeStI" resolve="destination" />
                            </node>
                            <node concept="1mIQ4w" id="1KgvZpgeSuA" role="2OqNvi">
                              <node concept="chp4Y" id="1KgvZpggG8d" role="cj9EA">
                                <ref role="cht4Q" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSuC" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSuD" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSuE" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgeSuF" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeSuG" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSuH" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSuI" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSuJ" role="3cpWs9">
                            <property role="TrG5h" value="destination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSuK" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                            </node>
                            <node concept="1PxgMI" id="1KgvZpgeSuL" role="33vP2m">
                              <node concept="chp4Y" id="1KgvZpggLOM" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgeSuN" role="1m5AlR">
                                <node concept="37vLTw" id="1KgvZpgeSuO" role="2Oq$k0">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                                <node concept="3TrEf2" id="1KgvZpggOrI" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1KgvZpgeSuQ" role="3cqZAp">
                          <node concept="2YIFZM" id="1KgvZpgeSuR" role="3cqZAk">
                            <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                            <ref role="37wK5l" to="33ny:~List.of(java.lang.Object,java.lang.Object)" resolve="of" />
                            <node concept="2YIFZM" id="1VyPeINPxIp" role="37wK5m">
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <node concept="37vLTw" id="1VyPeINPGkZ" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpgeSuJ" resolve="destination" />
                              </node>
                              <node concept="359W_D" id="1VyPeINPxIr" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                                <ref role="359W_F" to="xiqq:75nMhMfIPvb" resolve="component" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="1VyPeINPxIs" role="37wK5m">
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <node concept="37vLTw" id="1VyPeINPJ4M" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpgeSuJ" resolve="destination" />
                              </node>
                              <node concept="359W_D" id="1VyPeINPxIu" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                                <ref role="359W_F" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="1KgvZpgeSv6" role="3PaCim">
                              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSv7" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSv8" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSv9" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgeSva" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1KgvZpgeSvb" role="3cqZAp">
                      <node concept="2YIFZM" id="1KgvZpgeSvc" role="3cqZAk">
                        <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                        <ref role="37wK5l" to="33ny:~List.of()" resolve="of" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpgeSvd" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpgeSve" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpgeSvf" role="jymVt">
                  <property role="TrG5h" value="getPresentation" />
                  <node concept="3Tm1VV" id="1KgvZpgeSvg" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpgeSvh" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpgeSvi" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3clFbS" id="1KgvZpgeSvj" role="3clF47">
                    <node concept="3clFbF" id="1KgvZpgeSvk" role="3cqZAp">
                      <node concept="2OqwBi" id="1KgvZpgeSvl" role="3clFbG">
                        <node concept="2OqwBi" id="1KgvZpgeSvm" role="2Oq$k0">
                          <node concept="37vLTw" id="1KgvZpgeSvn" role="2Oq$k0">
                            <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                          </node>
                          <node concept="3TrEf2" id="1KgvZpggWu6" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="1KgvZpgeSvp" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpgeSvq" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpgeSvr" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpgeSvs" role="jymVt">
                  <property role="TrG5h" value="setPath" />
                  <node concept="3Tm1VV" id="1KgvZpgeSvt" role="1B3o_S" />
                  <node concept="3cqZAl" id="1KgvZpgeSvu" role="3clF45" />
                  <node concept="37vLTG" id="1KgvZpgeSvv" role="3clF46">
                    <property role="TrG5h" value="path" />
                    <node concept="3uibUv" id="1KgvZpgeSvw" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3qUE_q" id="3dz4YurgxK_" role="11_B2D">
                        <node concept="3uibUv" id="3dz4Yurg$0K" role="3qUE_r">
                          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1KgvZpgeSvy" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1KgvZpgeSvz" role="3clF47">
                    <node concept="3clFbJ" id="1KgvZpgeSv$" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSv_" role="3clFbx">
                        <node concept="3clFbJ" id="1KgvZpgeSvA" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSvB" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgeSvC" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSvD" role="3cpWs9">
                                <property role="TrG5h" value="componentDestination" />
                                <node concept="3Tqbb2" id="1KgvZpgeSvE" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                </node>
                                <node concept="2ShNRf" id="1KgvZpgeSvF" role="33vP2m">
                                  <node concept="3zrR0B" id="1KgvZpgeSvG" role="2ShVmc">
                                    <node concept="3Tqbb2" id="1KgvZpgeSvH" role="3zrR0E">
                                      <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1VyPeINN3nq" role="3cqZAp">
                              <node concept="2YIFZM" id="1VyPeINN3nr" role="3clFbG">
                                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                <node concept="37vLTw" id="1VyPeINN5C6" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgeSvD" resolve="componentDestination" />
                                </node>
                                <node concept="359W_D" id="1VyPeINN3nt" role="37wK5m">
                                  <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                  <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                                </node>
                                <node concept="37vLTw" id="1VyPeINN3nu" role="37wK5m">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                </node>
                                <node concept="2OqwBi" id="1VyPeINN3nv" role="37wK5m">
                                  <node concept="37vLTw" id="1VyPeINN3nw" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
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
                            <node concept="3clFbF" id="1VyPeINN3nz" role="3cqZAp">
                              <node concept="2YIFZM" id="1VyPeINN3n$" role="3clFbG">
                                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                <node concept="37vLTw" id="1VyPeINN5Kq" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgeSvD" resolve="componentDestination" />
                                </node>
                                <node concept="359W_D" id="1VyPeINN3nA" role="37wK5m">
                                  <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                  <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
                                </node>
                                <node concept="37vLTw" id="1VyPeINN3nB" role="37wK5m">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                </node>
                                <node concept="2OqwBi" id="1VyPeINN3nC" role="37wK5m">
                                  <node concept="37vLTw" id="1VyPeINN3nD" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                                  </node>
                                  <node concept="liA8E" id="1VyPeINN3nE" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                    <node concept="3cmrfG" id="1VyPeINN3nF" role="37wK5m">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1KgvZpgeSwi" role="3cqZAp">
                              <node concept="37vLTI" id="1KgvZpgeSwj" role="3clFbG">
                                <node concept="37vLTw" id="1KgvZpgeSwk" role="37vLTx">
                                  <ref role="3cqZAo" node="1KgvZpgeSvD" resolve="componentDestination" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpgeSwl" role="37vLTJ">
                                  <node concept="37vLTw" id="1KgvZpgeSwm" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                  </node>
                                  <node concept="3TrEf2" id="1KgvZpggXn9" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1KgvZpgeSwo" role="3clFbw">
                            <node concept="3cmrfG" id="1KgvZpgeSwp" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSwq" role="3uHU7B">
                              <node concept="37vLTw" id="1KgvZpgeSwr" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1KgvZpgeSws" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="1KgvZpgeSwt" role="3eNLev">
                            <node concept="3clFbC" id="1KgvZpgeSwu" role="3eO9$A">
                              <node concept="3cmrfG" id="1KgvZpgeSwv" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgeSww" role="3uHU7B">
                                <node concept="37vLTw" id="1KgvZpgeSwx" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                                </node>
                                <node concept="liA8E" id="1KgvZpgeSwy" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="1KgvZpgeSwz" role="3eOfB_">
                              <node concept="3cpWs8" id="1KgvZpgeSw$" role="3cqZAp">
                                <node concept="3cpWsn" id="1KgvZpgeSw_" role="3cpWs9">
                                  <property role="TrG5h" value="contextDestination" />
                                  <node concept="3Tqbb2" id="1KgvZpgeSwA" role="1tU5fm">
                                    <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                  </node>
                                  <node concept="2ShNRf" id="1KgvZpgeSwB" role="33vP2m">
                                    <node concept="3zrR0B" id="1KgvZpgeSwC" role="2ShVmc">
                                      <node concept="3Tqbb2" id="1KgvZpgeSwD" role="3zrR0E">
                                        <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1VyPeINQfMx" role="3cqZAp">
                                <node concept="2YIFZM" id="1VyPeINQfMy" role="3clFbG">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                  <node concept="37vLTw" id="1VyPeINQiuW" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgeSw_" resolve="contextDestination" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINQfM$" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                    <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                  </node>
                                  <node concept="37vLTw" id="1VyPeINQfM_" role="37wK5m">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="2OqwBi" id="1VyPeINQfMA" role="37wK5m">
                                    <node concept="37vLTw" id="1VyPeINQfMB" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                                    </node>
                                    <node concept="liA8E" id="1VyPeINQfMC" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                      <node concept="3cmrfG" id="1VyPeINQfMD" role="37wK5m">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1KgvZpgeSwW" role="3cqZAp">
                                <node concept="37vLTI" id="1KgvZpgeSwX" role="3clFbG">
                                  <node concept="37vLTw" id="1KgvZpgeSwY" role="37vLTx">
                                    <ref role="3cqZAo" node="1KgvZpgeSw_" resolve="contextDestination" />
                                  </node>
                                  <node concept="2OqwBi" id="1KgvZpgeSwZ" role="37vLTJ">
                                    <node concept="37vLTw" id="1KgvZpgeSx0" role="2Oq$k0">
                                      <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                    </node>
                                    <node concept="3TrEf2" id="1KgvZpggXvl" role="2OqNvi">
                                      <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSx2" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSx3" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSx4" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgeSx5" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcd" resolve="EventConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeSx6" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSx7" role="3clFbx">
                        <node concept="3clFbJ" id="1KgvZpgeSx8" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSx9" role="3clFbx">
                            <node concept="3cpWs8" id="1KgvZpgeSxa" role="3cqZAp">
                              <node concept="3cpWsn" id="1KgvZpgeSxb" role="3cpWs9">
                                <property role="TrG5h" value="componentDestination" />
                                <node concept="3Tqbb2" id="1KgvZpgeSxc" role="1tU5fm">
                                  <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                </node>
                                <node concept="2ShNRf" id="1KgvZpgeSxd" role="33vP2m">
                                  <node concept="3zrR0B" id="1KgvZpgeSxe" role="2ShVmc">
                                    <node concept="3Tqbb2" id="1KgvZpgeSxf" role="3zrR0E">
                                      <ref role="ehGHo" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1VyPeINN665" role="3cqZAp">
                              <node concept="2YIFZM" id="1VyPeINN666" role="3clFbG">
                                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                <node concept="37vLTw" id="1VyPeINN667" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgeSxb" resolve="componentDestination" />
                                </node>
                                <node concept="359W_D" id="1VyPeINN668" role="37wK5m">
                                  <ref role="359W_E" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                  <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                                </node>
                                <node concept="37vLTw" id="1VyPeINN669" role="37wK5m">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                </node>
                                <node concept="2OqwBi" id="1VyPeINN66a" role="37wK5m">
                                  <node concept="37vLTw" id="1VyPeINN66b" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                                  </node>
                                  <node concept="liA8E" id="1VyPeINN66c" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                    <node concept="3cmrfG" id="1VyPeINN66d" role="37wK5m">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1VyPeINN66e" role="3cqZAp">
                              <node concept="2YIFZM" id="1VyPeINN66f" role="3clFbG">
                                <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                <node concept="37vLTw" id="1VyPeINN66g" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgeSxb" resolve="componentDestination" />
                                </node>
                                <node concept="359W_D" id="1VyPeINN66h" role="37wK5m">
                                  <ref role="359W_E" to="xiqq:37fub3vlCZn" resolve="ComponentDataDestination" />
                                  <ref role="359W_F" to="xiqq:PI_pXYus3O" resolve="declaration" />
                                </node>
                                <node concept="37vLTw" id="1VyPeINN66i" role="37wK5m">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                </node>
                                <node concept="2OqwBi" id="1VyPeINN66j" role="37wK5m">
                                  <node concept="37vLTw" id="1VyPeINN66k" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                                  </node>
                                  <node concept="liA8E" id="1VyPeINN66l" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                    <node concept="3cmrfG" id="1VyPeINN66m" role="37wK5m">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1KgvZpgeSxO" role="3cqZAp">
                              <node concept="37vLTI" id="1KgvZpgeSxP" role="3clFbG">
                                <node concept="37vLTw" id="1KgvZpgeSxQ" role="37vLTx">
                                  <ref role="3cqZAo" node="1KgvZpgeSxb" resolve="componentDestination" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpgeSxR" role="37vLTJ">
                                  <node concept="37vLTw" id="1KgvZpgeSxS" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                  </node>
                                  <node concept="3TrEf2" id="1KgvZpggYEc" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1KgvZpgeSxU" role="3clFbw">
                            <node concept="3cmrfG" id="1KgvZpgeSxV" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSxW" role="3uHU7B">
                              <node concept="37vLTw" id="1KgvZpgeSxX" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1KgvZpgeSxY" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="1KgvZpgeSxZ" role="3eNLev">
                            <node concept="3clFbC" id="1KgvZpgeSy0" role="3eO9$A">
                              <node concept="3cmrfG" id="1KgvZpgeSy1" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgeSy2" role="3uHU7B">
                                <node concept="37vLTw" id="1KgvZpgeSy3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                                </node>
                                <node concept="liA8E" id="1KgvZpgeSy4" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="1KgvZpgeSy5" role="3eOfB_">
                              <node concept="3cpWs8" id="1KgvZpgeSy6" role="3cqZAp">
                                <node concept="3cpWsn" id="1KgvZpgeSy7" role="3cpWs9">
                                  <property role="TrG5h" value="contextDestination" />
                                  <node concept="3Tqbb2" id="1KgvZpgeSy8" role="1tU5fm">
                                    <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                                  </node>
                                  <node concept="2ShNRf" id="1KgvZpgeSy9" role="33vP2m">
                                    <node concept="3zrR0B" id="1KgvZpgeSya" role="2ShVmc">
                                      <node concept="3Tqbb2" id="1KgvZpgeSyb" role="3zrR0E">
                                        <ref role="ehGHo" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1VyPeINQkd0" role="3cqZAp">
                                <node concept="2YIFZM" id="1VyPeINQkd1" role="3clFbG">
                                  <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                                  <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                                  <node concept="37vLTw" id="1VyPeINQkd2" role="37wK5m">
                                    <ref role="3cqZAo" node="1KgvZpgeSy7" resolve="contextDestination" />
                                  </node>
                                  <node concept="359W_D" id="1VyPeINQkd3" role="37wK5m">
                                    <ref role="359W_E" to="xiqq:37fub3vnkIr" resolve="ContextDataDestination" />
                                    <ref role="359W_F" to="xiqq:37fub3vlDyy" resolve="declaration" />
                                  </node>
                                  <node concept="37vLTw" id="1VyPeINQkd4" role="37wK5m">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="2OqwBi" id="1VyPeINQkd5" role="37wK5m">
                                    <node concept="37vLTw" id="1VyPeINQkd6" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                                    </node>
                                    <node concept="liA8E" id="1VyPeINQkd7" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                      <node concept="3cmrfG" id="1VyPeINQkd8" role="37wK5m">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1KgvZpgeSyu" role="3cqZAp">
                                <node concept="37vLTI" id="1KgvZpgeSyv" role="3clFbG">
                                  <node concept="37vLTw" id="1KgvZpgeSyw" role="37vLTx">
                                    <ref role="3cqZAo" node="1KgvZpgeSy7" resolve="contextDestination" />
                                  </node>
                                  <node concept="2OqwBi" id="1KgvZpgeSyx" role="37vLTJ">
                                    <node concept="37vLTw" id="1KgvZpgeSyy" role="2Oq$k0">
                                      <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                    </node>
                                    <node concept="3TrEf2" id="1KgvZpggYJ_" role="2OqNvi">
                                      <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSy$" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSy_" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSyA" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgeSyB" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:PI_pXYugcm" resolve="DataConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeSyC" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSyD" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSyE" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSyF" role="3cpWs9">
                            <property role="TrG5h" value="destination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSyG" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                            </node>
                            <node concept="2ShNRf" id="1KgvZpgeSyH" role="33vP2m">
                              <node concept="3zrR0B" id="1KgvZpgeSyI" role="2ShVmc">
                                <node concept="3Tqbb2" id="1KgvZpgeSyJ" role="3zrR0E">
                                  <ref role="ehGHo" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1VyPeINNaJw" role="3cqZAp">
                          <node concept="2YIFZM" id="1VyPeINNaJx" role="3clFbG">
                            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                            <node concept="37vLTw" id="1VyPeINNdez" role="37wK5m">
                              <ref role="3cqZAo" node="1KgvZpgeSyF" resolve="destination" />
                            </node>
                            <node concept="359W_D" id="1VyPeINNaJz" role="37wK5m">
                              <ref role="359W_E" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                              <ref role="359W_F" to="xiqq:75nMhMfIPvb" resolve="component" />
                            </node>
                            <node concept="37vLTw" id="1VyPeINNaJ$" role="37wK5m">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                            </node>
                            <node concept="2OqwBi" id="1VyPeINNaJ_" role="37wK5m">
                              <node concept="37vLTw" id="1VyPeINNaJA" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1VyPeINNaJB" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="1VyPeINNaJC" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1VyPeINNaJD" role="3cqZAp">
                          <node concept="2YIFZM" id="1VyPeINNaJE" role="3clFbG">
                            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                            <node concept="37vLTw" id="1VyPeINNdkh" role="37wK5m">
                              <ref role="3cqZAo" node="1KgvZpgeSyF" resolve="destination" />
                            </node>
                            <node concept="359W_D" id="1VyPeINNaJG" role="37wK5m">
                              <ref role="359W_E" to="xiqq:75nMhMfIPeN" resolve="FBSocketReference" />
                              <ref role="359W_F" to="xiqq:75nMhMfIPvd" resolve="declaration" />
                            </node>
                            <node concept="37vLTw" id="1VyPeINNaJH" role="37wK5m">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                            </node>
                            <node concept="2OqwBi" id="1VyPeINNaJI" role="37wK5m">
                              <node concept="37vLTw" id="1VyPeINNaJJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1VyPeINNaJK" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="1VyPeINNaJL" role="37wK5m">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1KgvZpgeSzk" role="3cqZAp">
                          <node concept="37vLTI" id="1KgvZpgeSzl" role="3clFbG">
                            <node concept="37vLTw" id="1KgvZpgeSzm" role="37vLTx">
                              <ref role="3cqZAo" node="1KgvZpgeSyF" resolve="destination" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSzn" role="37vLTJ">
                              <node concept="37vLTw" id="1KgvZpgeSzo" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                              </node>
                              <node concept="3TrEf2" id="1KgvZpggZFg" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSzq" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSzr" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSzs" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgeSzt" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:37fub3vlA5$" resolve="AdapterConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpgeSzu" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3uibUv" id="1KgvZpgeSzv" role="2Ghqu4">
                  <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                  <node concept="3qTvmN" id="1KgvZpgeSzw" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1KgvZpg77Yl" role="2AJF6D">
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
        <node concept="3cpWs8" id="1XSQy8A779B" role="3cqZAp">
          <node concept="3cpWsn" id="1XSQy8A779C" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3Tqbb2" id="1XSQy8A779D" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3IX4BsKohXi" resolve="ConnectionPath" />
            </node>
            <node concept="2OqwBi" id="1XSQy8A779E" role="33vP2m">
              <node concept="37vLTw" id="1IuIrLUsVE9" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
          <node concept="3eNFk2" id="1z_G68ftDh" role="3eNLev">
            <node concept="2OqwBi" id="1z_G68f_$i" role="3eO9$A">
              <node concept="37vLTw" id="1z_G68f_nF" role="2Oq$k0">
                <ref role="3cqZAo" node="1XSQy8A779C" resolve="path" />
              </node>
              <node concept="1mIQ4w" id="1z_G68f_G_" role="2OqNvi">
                <node concept="chp4Y" id="1z_G68f_JE" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:1z_G68ePL7" resolve="MoreThanFourAngleConnectionPath" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1z_G68ftDj" role="3eOfB_">
              <node concept="3cpWs8" id="1z_G68f_U2" role="3cqZAp">
                <node concept="3cpWsn" id="1z_G68f_U5" role="3cpWs9">
                  <property role="TrG5h" value="moreThanFourAngle" />
                  <node concept="3Tqbb2" id="1z_G68f_U1" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:1z_G68ePL7" resolve="MoreThanFourAngleConnectionPath" />
                  </node>
                  <node concept="1PxgMI" id="1z_G68fAeY" role="33vP2m">
                    <node concept="chp4Y" id="1z_G68fAg8" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:1z_G68ePL7" resolve="MoreThanFourAngleConnectionPath" />
                    </node>
                    <node concept="37vLTw" id="1z_G68fA28" role="1m5AlR">
                      <ref role="3cqZAo" node="1XSQy8A779C" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="26C$6FZDh$z" role="3cqZAp">
                <node concept="3cpWsn" id="26C$6FZDh$$" role="3cpWs9">
                  <property role="TrG5h" value="bendPoints" />
                  <node concept="3uibUv" id="26C$6FZDbBT" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                    <node concept="3uibUv" id="26C$6FZDbBW" role="11_B2D">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="26C$6FZDh$_" role="33vP2m">
                    <node concept="1pGfFk" id="26C$6FZDh$A" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                      <node concept="3uibUv" id="26C$6FZDh$B" role="1pMfVU">
                        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1DcWWT" id="26C$6FZDsz$" role="3cqZAp">
                <node concept="3clFbS" id="26C$6FZDszA" role="2LFqv$">
                  <node concept="3clFbF" id="26C$6FZD_g6" role="3cqZAp">
                    <node concept="2OqwBi" id="26C$6FZDAk2" role="3clFbG">
                      <node concept="37vLTw" id="26C$6FZD_g4" role="2Oq$k0">
                        <ref role="3cqZAo" node="26C$6FZDh$$" resolve="bendPoints" />
                      </node>
                      <node concept="liA8E" id="26C$6FZDBGb" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                        <node concept="2ShNRf" id="26C$6FZDBQV" role="37wK5m">
                          <node concept="1pGfFk" id="26C$6FZDCBe" role="2ShVmc">
                            <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                            <node concept="2OqwBi" id="26C$6FZDDlp" role="37wK5m">
                              <node concept="37vLTw" id="26C$6FZDCTy" role="2Oq$k0">
                                <ref role="3cqZAo" node="26C$6FZDszB" resolve="position" />
                              </node>
                              <node concept="2qgKlT" id="26C$6FZDDJf" role="2OqNvi">
                                <ref role="37wK5l" to="t4dg:5fP$Xwj3isp" resolve="getX" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="26C$6FZDEBi" role="37wK5m">
                              <node concept="37vLTw" id="26C$6FZDEba" role="2Oq$k0">
                                <ref role="3cqZAo" node="26C$6FZDszB" resolve="position" />
                              </node>
                              <node concept="2qgKlT" id="26C$6FZDEV7" role="2OqNvi">
                                <ref role="37wK5l" to="t4dg:5fP$Xwj3iXb" resolve="getY" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="26C$6FZDszB" role="1Duv9x">
                  <property role="TrG5h" value="position" />
                  <node concept="3Tqbb2" id="26C$6FZDyx_" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                  </node>
                </node>
                <node concept="2OqwBi" id="26C$6FZDzEf" role="1DdaDG">
                  <node concept="37vLTw" id="26C$6FZDziZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1z_G68f_U5" resolve="moreThanFourAngle" />
                  </node>
                  <node concept="3Tsc0h" id="26C$6FZDzVK" role="2OqNvi">
                    <ref role="3TtcxE" to="xiqq:1z_G68ePLe" resolve="bendPoints" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1z_G68fAlA" role="3cqZAp">
                <node concept="2ShNRf" id="1z_G68fApu" role="3cqZAk">
                  <node concept="1pGfFk" id="1z_G68fIj4" role="2ShVmc">
                    <ref role="37wK5l" to="g27j:~LongConnectionPath.&lt;init&gt;(int,int,int,java.util.List)" resolve="LongConnectionPath" />
                    <node concept="2OqwBi" id="1z_G68gD3r" role="37wK5m">
                      <node concept="37vLTw" id="1z_G68gzZR" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z_G68f_U5" resolve="moreThanFourAngle" />
                      </node>
                      <node concept="2qgKlT" id="1z_G68h54q" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:1z_G68h2_D" resolve="getDX1" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1z_G68hhMt" role="37wK5m">
                      <node concept="37vLTw" id="1z_G68hfz1" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z_G68f_U5" resolve="moreThanFourAngle" />
                      </node>
                      <node concept="2qgKlT" id="1z_G68hneG" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:1z_G68h2_N" resolve="getDY" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1z_G68h_v$" role="37wK5m">
                      <node concept="37vLTw" id="1z_G68hvX8" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z_G68f_U5" resolve="moreThanFourAngle" />
                      </node>
                      <node concept="2qgKlT" id="1z_G68hEFe" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:1z_G68h2_X" resolve="getDX2" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="26C$6FZE03g" role="37wK5m">
                      <ref role="3cqZAo" node="26C$6FZDh$$" resolve="bendPoints" />
                    </node>
                  </node>
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
      <node concept="2AHcQZ" id="3IX4BsKutx9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
              <node concept="37vLTw" id="1IuIrLUs$af" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="6$FGuy5AV4x" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3IX4BsKqy6J" resolve="path" />
              </node>
            </node>
            <node concept="1rXfSq" id="1KgvZpgeK1N" role="37vLTx">
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
    <node concept="2tJIrI" id="1KgvZpgeBMA" role="jymVt" />
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
                  <node concept="37vLTw" id="z1YnY2HQFF" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQANPA" resolve="fourAngles" />
                  </node>
                  <node concept="2qgKlT" id="1R4IoyQANPI" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:3IX4BsKouNu" resolve="set" />
                    <node concept="2OqwBi" id="1R4IoyQANPJ" role="37wK5m">
                      <node concept="liA8E" id="1R4IoyQANPL" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~ConnectionPath.getDX1()" resolve="getDX1" />
                      </node>
                      <node concept="37vLTw" id="z1YnY2HU80" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANPZ" resolve="path" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1R4IoyQANPM" role="37wK5m">
                      <node concept="37vLTw" id="z1YnY2HUBc" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQANPZ" resolve="path" />
                      </node>
                      <node concept="liA8E" id="1R4IoyQANPO" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~ConnectionPath.getDY()" resolve="getDY" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1R4IoyQANPP" role="37wK5m">
                      <node concept="37vLTw" id="z1YnY2HUXO" role="2Oq$k0">
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
                <node concept="37vLTw" id="z1YnY2HVoU" role="3cqZAk">
                  <ref role="3cqZAo" node="1R4IoyQANPA" resolve="fourAngles" />
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="1R4IoyQANPU" role="3Kbmr1">
              <ref role="1Px2BO" to="g27j:~ConnectionPath$Kind" resolve="ConnectionPath.Kind" />
              <ref role="Rm8GQ" to="g27j:~ConnectionPath$Kind.FourAngles" resolve="FourAngles" />
            </node>
          </node>
          <node concept="3KbdKl" id="z1YnY2HW7W" role="3KbHQx">
            <node concept="Rm8GO" id="z1YnY2I1WZ" role="3Kbmr1">
              <ref role="Rm8GQ" to="g27j:~ConnectionPath$Kind.MoreThanFour" resolve="MoreThanFour" />
              <ref role="1Px2BO" to="g27j:~ConnectionPath$Kind" resolve="ConnectionPath.Kind" />
            </node>
            <node concept="3clFbS" id="z1YnY2HW7Y" role="3Kbo56">
              <node concept="3cpWs8" id="1z_G68kKdV" role="3cqZAp">
                <node concept="3cpWsn" id="1z_G68kKdW" role="3cpWs9">
                  <property role="TrG5h" value="longPath" />
                  <node concept="3uibUv" id="1z_G68kJJG" role="1tU5fm">
                    <ref role="3uigEE" to="g27j:~LongConnectionPath" resolve="LongConnectionPath" />
                  </node>
                  <node concept="10QFUN" id="1z_G68kKdX" role="33vP2m">
                    <node concept="3uibUv" id="1z_G68kKdY" role="10QFUM">
                      <ref role="3uigEE" to="g27j:~LongConnectionPath" resolve="LongConnectionPath" />
                    </node>
                    <node concept="37vLTw" id="1z_G68kKdZ" role="10QFUP">
                      <ref role="3cqZAo" node="1R4IoyQANPZ" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="z1YnY2I1Yy" role="3cqZAp">
                <node concept="3cpWsn" id="z1YnY2I1Yz" role="3cpWs9">
                  <property role="TrG5h" value="moreThanFourAngles" />
                  <node concept="3Tqbb2" id="z1YnY2I1Y$" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:1z_G68ePL7" resolve="MoreThanFourAngleConnectionPath" />
                  </node>
                  <node concept="2ShNRf" id="z1YnY2I1Y_" role="33vP2m">
                    <node concept="3zrR0B" id="z1YnY2I1YA" role="2ShVmc">
                      <node concept="3Tqbb2" id="z1YnY2I1YB" role="3zrR0E">
                        <ref role="ehGHo" to="xiqq:1z_G68ePL7" resolve="MoreThanFourAngleConnectionPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="z1YnY2I1YC" role="3cqZAp">
                <node concept="2OqwBi" id="z1YnY2I1YD" role="3clFbG">
                  <node concept="37vLTw" id="z1YnY2I1YE" role="2Oq$k0">
                    <ref role="3cqZAo" node="z1YnY2I1Yz" resolve="moreThanFourAngles" />
                  </node>
                  <node concept="2qgKlT" id="z1YnY2I1YF" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:1z_G68h2AL" resolve="set" />
                    <node concept="2OqwBi" id="z1YnY2I1YG" role="37wK5m">
                      <node concept="liA8E" id="z1YnY2I1YH" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~ConnectionPath.getDX1()" resolve="getDX1" />
                      </node>
                      <node concept="37vLTw" id="1z_G68kLKj" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z_G68kKdW" resolve="longPath" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="z1YnY2I1YJ" role="37wK5m">
                      <node concept="37vLTw" id="1z_G68kM72" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z_G68kKdW" resolve="longPath" />
                      </node>
                      <node concept="liA8E" id="z1YnY2I1YL" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~ConnectionPath.getDY()" resolve="getDY" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="z1YnY2I1YM" role="37wK5m">
                      <node concept="37vLTw" id="1z_G68kMyx" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z_G68kKdW" resolve="longPath" />
                      </node>
                      <node concept="liA8E" id="z1YnY2I1YO" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~ConnectionPath.getDX2()" resolve="getDX2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1z_G68l_qb" role="3cqZAp">
                <node concept="2OqwBi" id="1z_G68lCft" role="3clFbG">
                  <node concept="2OqwBi" id="1z_G68lAGQ" role="2Oq$k0">
                    <node concept="37vLTw" id="1z_G68l_q9" role="2Oq$k0">
                      <ref role="3cqZAo" node="z1YnY2I1Yz" resolve="moreThanFourAngles" />
                    </node>
                    <node concept="3Tsc0h" id="1z_G68lAQH" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:1z_G68ePLe" resolve="bendPoints" />
                    </node>
                  </node>
                  <node concept="2Kehj3" id="1z_G68lDP$" role="2OqNvi" />
                </node>
              </node>
              <node concept="1DcWWT" id="1z_G68lrhd" role="3cqZAp">
                <node concept="3clFbS" id="1z_G68lrhf" role="2LFqv$">
                  <node concept="3cpWs8" id="1z_G68lwaj" role="3cqZAp">
                    <node concept="3cpWsn" id="1z_G68lwam" role="3cpWs9">
                      <property role="TrG5h" value="position" />
                      <node concept="3Tqbb2" id="1z_G68lwah" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                      </node>
                      <node concept="2ShNRf" id="1z_G68lwhK" role="33vP2m">
                        <node concept="3zrR0B" id="1z_G68lxl1" role="2ShVmc">
                          <node concept="3Tqbb2" id="1z_G68lxl3" role="3zrR0E">
                            <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1z_G68lxtT" role="3cqZAp">
                    <node concept="2OqwBi" id="1z_G68lxDI" role="3clFbG">
                      <node concept="37vLTw" id="1z_G68lxtR" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z_G68lwam" resolve="position" />
                      </node>
                      <node concept="2qgKlT" id="1z_G68lxM5" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:5fP$Xwj3m8c" resolve="set" />
                        <node concept="2OqwBi" id="1z_G68lypm" role="37wK5m">
                          <node concept="37vLTw" id="1z_G68lxWL" role="2Oq$k0">
                            <ref role="3cqZAo" node="1z_G68lrhg" resolve="point" />
                          </node>
                          <node concept="2OwXpG" id="1z_G68lyEz" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1z_G68lzbC" role="37wK5m">
                          <node concept="37vLTw" id="1z_G68lyQy" role="2Oq$k0">
                            <ref role="3cqZAo" node="1z_G68lrhg" resolve="point" />
                          </node>
                          <node concept="2OwXpG" id="1z_G68lzCN" role="2OqNvi">
                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1z_G68lvT$" role="3cqZAp">
                    <node concept="2OqwBi" id="1z_G68ll8p" role="3clFbG">
                      <node concept="2OqwBi" id="1z_G68ljyw" role="2Oq$k0">
                        <node concept="37vLTw" id="1z_G68liw2" role="2Oq$k0">
                          <ref role="3cqZAo" node="z1YnY2I1Yz" resolve="moreThanFourAngles" />
                        </node>
                        <node concept="3Tsc0h" id="1z_G68ljFm" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:1z_G68ePLe" resolve="bendPoints" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="1z_G68lnIU" role="2OqNvi">
                        <node concept="37vLTw" id="1z_G68lzLE" role="25WWJ7">
                          <ref role="3cqZAo" node="1z_G68lwam" resolve="position" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="1z_G68lrhg" role="1Duv9x">
                  <property role="TrG5h" value="point" />
                  <node concept="3uibUv" id="1z_G68lsQQ" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1z_G68ltUb" role="1DdaDG">
                  <node concept="37vLTw" id="1z_G68ltDL" role="2Oq$k0">
                    <ref role="3cqZAo" node="1z_G68kKdW" resolve="longPath" />
                  </node>
                  <node concept="liA8E" id="1z_G68lubM" role="2OqNvi">
                    <ref role="37wK5l" to="g27j:~LongConnectionPath.getBendPoints()" resolve="getBendPoints" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="z1YnY2I1YP" role="3cqZAp">
                <node concept="37vLTw" id="z1YnY2I1YQ" role="3cqZAk">
                  <ref role="3cqZAo" node="z1YnY2I1Yz" resolve="moreThanFourAngles" />
                </node>
              </node>
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
            <node concept="37vLTw" id="1IuIrLUs_iY" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
            <node concept="37vLTw" id="1IuIrLUs_AP" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
            <node concept="37vLTw" id="1IuIrLUs_Xd" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
    <node concept="2tJIrI" id="31DWWgF7tld" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZCeSM" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="31Fn7oZCeSO" role="1B3o_S" />
      <node concept="3uibUv" id="31DWWgF7P5W" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
      </node>
      <node concept="3clFbS" id="31Fn7oZCeSQ" role="3clF47">
        <node concept="3cpWs8" id="6YcNwH3_LDV" role="3cqZAp">
          <node concept="3cpWsn" id="6YcNwH3_LDW" role="3cpWs9">
            <property role="TrG5h" value="container" />
            <node concept="3uibUv" id="1IuIrLUt4v9" role="1tU5fm">
              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
            </node>
            <node concept="1rXfSq" id="1KgvZpg6KR5" role="33vP2m">
              <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
              <node concept="3VsKOn" id="1KgvZpg6LLe" role="37wK5m">
                <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
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
              <ref role="37wK5l" to="g27j:~FBNetwork.extractNetwork(org.fbme.lib.common.Declaration)" resolve="extractNetwork" />
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
    <node concept="3Tm1VV" id="3IX4BsKu5jT" role="1B3o_S" />
    <node concept="3uibUv" id="7PF$iX$jL6W" role="EKbjA">
      <ref role="3uigEE" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
    </node>
    <node concept="3uibUv" id="1IuIrLUroil" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="1IuIrLUrrA3" role="11_B2D">
        <ref role="ehGHo" to="xiqq:4KieeRVlhii" resolve="Connection" />
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
        <node concept="3uibUv" id="QE5Kxyj_yc" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
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
            <node concept="37vLTw" id="1IuIrLUuCdu" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h4ewkr" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h48PxT" role="3clF47">
        <node concept="3clFbF" id="3lxP5h48QmM" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h48QmG" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h48QH9" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1IuIrLUuCX0" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
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
              <node concept="37vLTw" id="1IuIrLUuDmQ" role="37wK5m">
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
      <node concept="2AHcQZ" id="1IuIrLUuEAI" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4evqk" role="jymVt" />
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
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="6YcNwH3u3ME" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="2OqwBi" id="3VhUp_YWyAA" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUuF9z" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="3VhUp_YWzi3" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="3VhUp_YWzVQ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="1IuIrLUuFzs" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YWvo7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUuGfw" role="jymVt" />
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
    <node concept="3clFb_" id="1IuIrLUuGVS" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1IuIrLUuGVT" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUuGVV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1IuIrLUuH__" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="1IuIrLUuGWn" role="3clF47">
        <node concept="3cpWs8" id="1IuIrLUuNdx" role="3cqZAp">
          <node concept="3cpWsn" id="1IuIrLUuNdy" role="3cpWs9">
            <property role="TrG5h" value="container" />
            <node concept="3uibUv" id="1IuIrLUuNdz" role="1tU5fm">
              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
            </node>
            <node concept="2OqwBi" id="1IuIrLUuNd$" role="33vP2m">
              <node concept="37vLTw" id="1IuIrLUuNd_" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="liA8E" id="1IuIrLUuNdA" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="2OqwBi" id="1IuIrLUuNdB" role="37wK5m">
                  <node concept="37vLTw" id="1IuIrLUuNdC" role="2Oq$k0">
                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                  </node>
                  <node concept="1mfA1w" id="1IuIrLUuNdD" role="2OqNvi" />
                </node>
                <node concept="3VsKOn" id="1IuIrLUuNdE" role="37wK5m">
                  <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1IuIrLUuNdF" role="3cqZAp">
          <node concept="2YIFZM" id="1IuIrLUuNdI" role="3clFbG">
            <ref role="37wK5l" to="g27j:~FBNetwork.extractNetwork(org.fbme.lib.common.Declaration)" resolve="extractNetwork" />
            <ref role="1Pybhc" to="g27j:~FBNetwork" resolve="FBNetwork" />
            <node concept="37vLTw" id="1IuIrLUuNdJ" role="37wK5m">
              <ref role="3cqZAo" node="1IuIrLUuNdy" resolve="container" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUuGWo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQA3Yn">
    <property role="TrG5h" value="FBNetworkByNode" />
    <node concept="2tJIrI" id="1R4IoyQA407" role="jymVt" />
    <node concept="3clFbW" id="1IuIrLUvuAR" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUvuAS" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUvuAT" role="1B3o_S" />
      <node concept="37vLTG" id="1IuIrLUvuB3" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1IuIrLUvuB7" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUvuB5" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjmZ$" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUvuB8" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUvuBb" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1IuIrLUoZzq" resolve="PlatformElementBase" />
          <node concept="37vLTw" id="1IuIrLUvuB9" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUvuB3" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUvuBa" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUvuB5" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUvr$3" role="jymVt" />
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
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3wWvt" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUvgSt" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1IuIrLUv$fB" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3wWvw" role="37wK5m">
                <ref role="3VsUkX" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
              <node concept="37vLTw" id="1IuIrLUvhsC" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
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
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3wBVp" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUv$ut" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="6YcNwH3wCBR" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3wDKo" role="37wK5m">
                <ref role="3VsUkX" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
              <node concept="37vLTw" id="1IuIrLUv_O8" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
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
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3wG7v" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUv$V7" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="6YcNwH3wGZ9" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3wG7y" role="37wK5m">
                <ref role="3VsUkX" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
              <node concept="37vLTw" id="1IuIrLUvAdV" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
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
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3wHn$" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUv_k8" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="6YcNwH3wIaP" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:37fub3vlA5v" resolve="adapterConnections" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3wHnB" role="37wK5m">
                <ref role="3VsUkX" to="g27j:~FBNetworkConnection" resolve="FBNetworkConnection" />
              </node>
              <node concept="37vLTw" id="1IuIrLUvAIC" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
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
            <ref role="1Pybhc" to="g27j:~FBNetwork" resolve="FBNetwork" />
            <ref role="37wK5l" to="g27j:~FBNetwork.extractNetwork(org.fbme.lib.common.Declaration)" resolve="extractNetwork" />
            <node concept="2OqwBi" id="6YcNwH3x4$z" role="37wK5m">
              <node concept="37vLTw" id="1IuIrLUvB7W" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="liA8E" id="6YcNwH3x53w" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="2OqwBi" id="6YcNwH3x5i$" role="37wK5m">
                  <node concept="37vLTw" id="1IuIrLUvBqL" role="2Oq$k0">
                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                  </node>
                  <node concept="2qgKlT" id="6YcNwH3x5Vk" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:2lwHqHk$skt" resolve="networkPrototype" />
                  </node>
                </node>
                <node concept="3VsKOn" id="6YcNwH3x6wZ" role="37wK5m">
                  <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
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
    <node concept="2tJIrI" id="6YcNwH3wiOP" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQANAk" role="jymVt">
      <property role="TrG5h" value="getContextComponents" />
      <node concept="3Tm1VV" id="1R4IoyQCluY" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQANAm" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1KgvZpg2Dwz" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQANAo" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3vaVj" role="3cqZAp">
          <node concept="2OqwBi" id="1KgvZpg1NEx" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaVk" role="2Oq$k0">
              <node concept="2OqwBi" id="6YcNwH3vaV$" role="2Oq$k0">
                <node concept="37vLTw" id="1IuIrLUvFuG" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="2qgKlT" id="6YcNwH3vaVA" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRVNr" resolve="contextComponents" />
                </node>
              </node>
              <node concept="3$u5V9" id="1KgvZpg1MPz" role="2OqNvi">
                <node concept="1bVj0M" id="1KgvZpg1MP_" role="23t8la">
                  <node concept="3clFbS" id="1KgvZpg1MPA" role="1bW5cS">
                    <node concept="3clFbF" id="1KgvZpg1MXK" role="3cqZAp">
                      <node concept="2OqwBi" id="6YcNwH3vaVt" role="3clFbG">
                        <node concept="37vLTw" id="1IuIrLUvKhe" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                        </node>
                        <node concept="liA8E" id="6YcNwH3vaVv" role="2OqNvi">
                          <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                          <node concept="37vLTw" id="1KgvZpg1Nl1" role="37wK5m">
                            <ref role="3cqZAo" node="1KgvZpg1MPB" resolve="it" />
                          </node>
                          <node concept="3VsKOn" id="6YcNwH3vaVx" role="37wK5m">
                            <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1KgvZpg1MPB" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1KgvZpg1MPC" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1KgvZpg1P5l" role="2OqNvi" />
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
    <node concept="2tJIrI" id="1KgvZpg1Psp" role="jymVt" />
    <node concept="3clFb_" id="1KgvZpg1SoJ" role="jymVt">
      <property role="TrG5h" value="getContextDataSources" />
      <node concept="3Tm1VV" id="1KgvZpg1SoK" role="1B3o_S" />
      <node concept="2AHcQZ" id="1KgvZpg1SoM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1KgvZpg1SoN" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1KgvZpg1SoO" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1KgvZpg1SoQ" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3vaVC" role="3cqZAp">
          <node concept="2OqwBi" id="1KgvZpg2fNq" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaVD" role="2Oq$k0">
              <node concept="2OqwBi" id="6YcNwH3vaVE" role="2Oq$k0">
                <node concept="37vLTw" id="1IuIrLUvFUm" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="2qgKlT" id="6YcNwH3vaVG" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRZ6V" resolve="contextDataSources" />
                </node>
              </node>
              <node concept="3$u5V9" id="1KgvZpg2f4N" role="2OqNvi">
                <node concept="1bVj0M" id="1KgvZpg2f4P" role="23t8la">
                  <node concept="3clFbS" id="1KgvZpg2f4Q" role="1bW5cS">
                    <node concept="3clFbF" id="1KgvZpg2f4R" role="3cqZAp">
                      <node concept="2OqwBi" id="1KgvZpg2f4S" role="3clFbG">
                        <node concept="37vLTw" id="1KgvZpg2f4T" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                        </node>
                        <node concept="liA8E" id="1KgvZpg2f4U" role="2OqNvi">
                          <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                          <node concept="37vLTw" id="1KgvZpg2f4V" role="37wK5m">
                            <ref role="3cqZAo" node="1KgvZpg2f4X" resolve="it" />
                          </node>
                          <node concept="3VsKOn" id="1KgvZpg2f4W" role="37wK5m">
                            <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1KgvZpg2f4X" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1KgvZpg2f4Y" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1KgvZpg2hvi" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1KgvZpg1SoR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1KgvZpg1SoU" role="jymVt">
      <property role="TrG5h" value="getContextDataDestinations" />
      <node concept="3Tm1VV" id="1KgvZpg1SoV" role="1B3o_S" />
      <node concept="2AHcQZ" id="1KgvZpg1SoX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1KgvZpg1SoY" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1KgvZpg1SoZ" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1KgvZpg1Sp1" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3vaVV" role="3cqZAp">
          <node concept="2OqwBi" id="1KgvZpg2lMc" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaVW" role="2Oq$k0">
              <node concept="2OqwBi" id="6YcNwH3vaVX" role="2Oq$k0">
                <node concept="37vLTw" id="1IuIrLUvGn2" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="2qgKlT" id="6YcNwH3vaVZ" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRX1R" resolve="contextDataDestinations" />
                </node>
              </node>
              <node concept="3$u5V9" id="1KgvZpg2jy2" role="2OqNvi">
                <node concept="1bVj0M" id="1KgvZpg2jy4" role="23t8la">
                  <node concept="3clFbS" id="1KgvZpg2jy5" role="1bW5cS">
                    <node concept="3clFbF" id="1KgvZpg2jy6" role="3cqZAp">
                      <node concept="2OqwBi" id="1KgvZpg2jya" role="3clFbG">
                        <node concept="37vLTw" id="1KgvZpg2jyb" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                        </node>
                        <node concept="liA8E" id="1KgvZpg2jyc" role="2OqNvi">
                          <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                          <node concept="37vLTw" id="1KgvZpg2jyd" role="37wK5m">
                            <ref role="3cqZAo" node="1KgvZpg2jyf" resolve="it" />
                          </node>
                          <node concept="3VsKOn" id="1KgvZpg2jye" role="37wK5m">
                            <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1KgvZpg2jyf" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1KgvZpg2jyg" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1KgvZpg2nk2" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1KgvZpg1Sp2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1KgvZpg1Sp5" role="jymVt">
      <property role="TrG5h" value="getContextEventSources" />
      <node concept="3Tm1VV" id="1KgvZpg1Sp6" role="1B3o_S" />
      <node concept="2AHcQZ" id="1KgvZpg1Sp8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1KgvZpg1Sp9" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1KgvZpg1Spa" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1KgvZpg1Spc" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3vaWe" role="3cqZAp">
          <node concept="2OqwBi" id="1KgvZpg2uTk" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaWf" role="2Oq$k0">
              <node concept="2OqwBi" id="6YcNwH3vaWg" role="2Oq$k0">
                <node concept="37vLTw" id="1IuIrLUvGxa" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="2qgKlT" id="6YcNwH3vaWi" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRZ9n" resolve="contextEventSources" />
                </node>
              </node>
              <node concept="3$u5V9" id="1KgvZpg2pie" role="2OqNvi">
                <node concept="1bVj0M" id="1KgvZpg2pig" role="23t8la">
                  <node concept="3clFbS" id="1KgvZpg2pih" role="1bW5cS">
                    <node concept="3clFbF" id="1KgvZpg2pii" role="3cqZAp">
                      <node concept="2OqwBi" id="1KgvZpg2pim" role="3clFbG">
                        <node concept="37vLTw" id="1KgvZpg2pin" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                        </node>
                        <node concept="liA8E" id="1KgvZpg2pio" role="2OqNvi">
                          <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                          <node concept="37vLTw" id="1KgvZpg2pip" role="37wK5m">
                            <ref role="3cqZAo" node="1KgvZpg2pir" resolve="it" />
                          </node>
                          <node concept="3VsKOn" id="1KgvZpg2piq" role="37wK5m">
                            <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1KgvZpg2pir" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1KgvZpg2pis" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1KgvZpg2w58" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1KgvZpg1Spd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1KgvZpg1Spg" role="jymVt">
      <property role="TrG5h" value="getContextEventDestinations" />
      <node concept="3Tm1VV" id="1KgvZpg1Sph" role="1B3o_S" />
      <node concept="2AHcQZ" id="1KgvZpg1Spj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1KgvZpg1Spk" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1KgvZpg1Spl" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1KgvZpg1Spn" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3vaWx" role="3cqZAp">
          <node concept="2OqwBi" id="1KgvZpg2w$3" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3vaWy" role="2Oq$k0">
              <node concept="2OqwBi" id="6YcNwH3vaWz" role="2Oq$k0">
                <node concept="37vLTw" id="1IuIrLUvH2_" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="2qgKlT" id="6YcNwH3vaW_" role="2OqNvi">
                  <ref role="37wK5l" to="t4dg:2lwHqHjRZn8" resolve="contextEventDestinations" />
                </node>
              </node>
              <node concept="3$u5V9" id="1KgvZpg2rBd" role="2OqNvi">
                <node concept="1bVj0M" id="1KgvZpg2rBf" role="23t8la">
                  <node concept="3clFbS" id="1KgvZpg2rBg" role="1bW5cS">
                    <node concept="3clFbF" id="1KgvZpg2rBh" role="3cqZAp">
                      <node concept="2OqwBi" id="1KgvZpg2rBl" role="3clFbG">
                        <node concept="37vLTw" id="1KgvZpg2rBm" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                        </node>
                        <node concept="liA8E" id="1KgvZpg2rBn" role="2OqNvi">
                          <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                          <node concept="37vLTw" id="1KgvZpg2rBo" role="37wK5m">
                            <ref role="3cqZAo" node="1KgvZpg2rBq" resolve="it" />
                          </node>
                          <node concept="3VsKOn" id="1KgvZpg2rBp" role="37wK5m">
                            <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1KgvZpg2rBq" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1KgvZpg2rBr" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1KgvZpg2xXZ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1KgvZpg1Spo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KgvZpge$U6" role="jymVt" />
    <node concept="3Tm1VV" id="1R4IoyQA3Yo" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQA3ZV" role="EKbjA">
      <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
    </node>
    <node concept="3uibUv" id="1IuIrLUv2IN" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1IuIrLUoYWZ" resolve="PlatformElementBase" />
      <node concept="3Tqbb2" id="1IuIrLUvlTt" role="11_B2D">
        <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
      </node>
    </node>
    <node concept="3clFb_" id="7OvpRfuThu7" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="7OvpRfuThu8" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OvpRfuThua" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7OvpRfuTmcF" role="3clF45">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="7OvpRfuThuf" role="3clF47">
        <node concept="3clFbF" id="7OvpRfuToo_" role="3cqZAp">
          <node concept="2OqwBi" id="7OvpRfuToKZ" role="3clFbG">
            <node concept="37vLTw" id="7OvpRfuToo$" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="7OvpRfuTp96" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
              <node concept="37vLTw" id="7OvpRfuTpcO" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3VsKOn" id="7OvpRfuTpQ8" role="37wK5m">
                <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OvpRfuThug" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7VgNZDXJmag" role="jymVt" />
    <node concept="3clFb_" id="7VgNZDXJknJ" role="jymVt">
      <property role="TrG5h" value="getEndpointCoordinates" />
      <node concept="3Tm1VV" id="7VgNZDXJknK" role="1B3o_S" />
      <node concept="3uibUv" id="7VgNZDXJknM" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7VgNZDXJknN" role="11_B2D">
          <ref role="3uigEE" to="g27j:~EndpointCoordinate" resolve="EndpointCoordinate" />
        </node>
      </node>
      <node concept="3clFbS" id="7VgNZDXJknP" role="3clF47">
        <node concept="3clFbF" id="7VgNZDXJzBU" role="3cqZAp">
          <node concept="2ShNRf" id="7VgNZDXJzBQ" role="3clFbG">
            <node concept="1pGfFk" id="7VgNZDXJ_3B" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="7VgNZDXJ_x$" role="37wK5m">
                <node concept="37vLTw" id="7VgNZDXJ_5H" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="7VgNZDXJ_WO" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:7VgNZDXJvWy" resolve="endpointCoordinates" />
                </node>
              </node>
              <node concept="3VsKOn" id="7VgNZDXJUb5" role="37wK5m">
                <ref role="3VsUkX" to="g27j:~EndpointCoordinate" resolve="EndpointCoordinate" />
              </node>
              <node concept="37vLTw" id="7VgNZDXJU_E" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="7VgNZDXJXEV" role="1pMfVU">
                <ref role="3uigEE" to="g27j:~EndpointCoordinate" resolve="EndpointCoordinate" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7VgNZDXJknQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3VhUp_YMiEx">
    <property role="TrG5h" value="FunctionBlockDeclarationBaseByNode" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3VhUp_YMjx4" role="jymVt" />
    <node concept="3clFbW" id="3VhUp_YMkxn" role="jymVt">
      <node concept="3cqZAl" id="3VhUp_YMkxo" role="3clF45" />
      <node concept="3Tm1VV" id="3VhUp_YMkxp" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YMkxr" role="3clF47">
        <node concept="XkiVB" id="3VhUp_YMkxt" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_LX" resolve="PlatformContainedDeclarationBase" />
          <node concept="37vLTw" id="3VhUp_YMkxx" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YMkxu" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUr8Os" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YNytC" resolve="owner" />
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
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyj$kF" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
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
      <ref role="3uigEE" to="fcfa:1hwo9XLD_LP" resolve="PlatformContainedDeclarationBase" />
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
      <node concept="3uibUv" id="1IuIrLUt9EK" role="3clF45">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
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
  <node concept="312cEu" id="7VgNZDXK4uB">
    <property role="TrG5h" value="EndpointCoordinateByNode" />
    <node concept="3Tm1VV" id="7VgNZDXK4uC" role="1B3o_S" />
    <node concept="3uibUv" id="7VgNZDXKlGF" role="EKbjA">
      <ref role="3uigEE" to="g27j:~EndpointCoordinate" resolve="EndpointCoordinate" />
    </node>
    <node concept="3clFbW" id="7VgNZDXOWBa" role="jymVt">
      <node concept="3cqZAl" id="7VgNZDXOWBb" role="3clF45" />
      <node concept="3Tm1VV" id="7VgNZDXOWBc" role="1B3o_S" />
      <node concept="3clFbS" id="7VgNZDXOWBd" role="3clF47">
        <node concept="XkiVB" id="7VgNZDXOWBq" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1IuIrLUoZzq" resolve="PlatformElementBase" />
          <node concept="37vLTw" id="7VgNZDXOWBr" role="37wK5m">
            <ref role="3cqZAo" node="7VgNZDXOWBm" resolve="node" />
          </node>
          <node concept="37vLTw" id="7VgNZDXOWBs" role="37wK5m">
            <ref role="3cqZAo" node="7VgNZDXOWBo" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7VgNZDXOWBm" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7VgNZDXP2mt" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1fUwyp9CzsN" resolve="EndpointCoordinate" />
        </node>
      </node>
      <node concept="37vLTG" id="7VgNZDXOWBo" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="7VgNZDXOWBp" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7VgNZDXKmu3" role="jymVt">
      <property role="TrG5h" value="getX" />
      <node concept="3Tm1VV" id="7VgNZDXKmu4" role="1B3o_S" />
      <node concept="10Oyi0" id="7VgNZDXKmu6" role="3clF45" />
      <node concept="3clFbS" id="7VgNZDXKmu7" role="3clF47">
        <node concept="3cpWs6" id="7VgNZDXKTK1" role="3cqZAp">
          <node concept="2OqwBi" id="7VgNZDXKUEo" role="3cqZAk">
            <node concept="2OqwBi" id="7VgNZDXKU6W" role="2Oq$k0">
              <node concept="37vLTw" id="7VgNZDXKTRg" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="7VgNZDXKUqA" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:1fUwyp9CBZM" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="7VgNZDXKUTB" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3isp" resolve="getX" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7VgNZDXKmu8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7VgNZDXKmu9" role="jymVt">
      <property role="TrG5h" value="setX" />
      <node concept="3Tm1VV" id="7VgNZDXKmua" role="1B3o_S" />
      <node concept="3cqZAl" id="7VgNZDXKmuc" role="3clF45" />
      <node concept="37vLTG" id="7VgNZDXKmud" role="3clF46">
        <property role="TrG5h" value="i" />
        <node concept="10Oyi0" id="7VgNZDXKmue" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7VgNZDXKmuf" role="3clF47">
        <node concept="3clFbF" id="7VgNZDXKVtc" role="3cqZAp">
          <node concept="2OqwBi" id="7VgNZDXKW0W" role="3clFbG">
            <node concept="2OqwBi" id="7VgNZDXKVGl" role="2Oq$k0">
              <node concept="37vLTw" id="7VgNZDXKVtb" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="7VgNZDXKVT1" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:1fUwyp9CBZM" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="7VgNZDXKWfE" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3jp5" resolve="setX" />
              <node concept="37vLTw" id="7VgNZDXKWmW" role="37wK5m">
                <ref role="3cqZAo" node="7VgNZDXKmud" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7VgNZDXKmug" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7VgNZDXKmuh" role="jymVt">
      <property role="TrG5h" value="getY" />
      <node concept="3Tm1VV" id="7VgNZDXKmui" role="1B3o_S" />
      <node concept="10Oyi0" id="7VgNZDXKmuk" role="3clF45" />
      <node concept="3clFbS" id="7VgNZDXKmul" role="3clF47">
        <node concept="3cpWs6" id="7VgNZDXKRiz" role="3cqZAp">
          <node concept="2OqwBi" id="7VgNZDXKSL$" role="3cqZAk">
            <node concept="2OqwBi" id="7VgNZDXKSkq" role="2Oq$k0">
              <node concept="37vLTw" id="7VgNZDXKRYF" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="7VgNZDXKSxR" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:1fUwyp9CBZM" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="7VgNZDXKT0I" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3iXb" resolve="getY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7VgNZDXKmum" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7VgNZDXKmun" role="jymVt">
      <property role="TrG5h" value="setY" />
      <node concept="3Tm1VV" id="7VgNZDXKmuo" role="1B3o_S" />
      <node concept="3cqZAl" id="7VgNZDXKmuq" role="3clF45" />
      <node concept="37vLTG" id="7VgNZDXKmur" role="3clF46">
        <property role="TrG5h" value="i" />
        <node concept="10Oyi0" id="7VgNZDXKmus" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7VgNZDXKmut" role="3clF47">
        <node concept="3clFbF" id="7VgNZDXKWuc" role="3cqZAp">
          <node concept="2OqwBi" id="7VgNZDXKXbW" role="3clFbG">
            <node concept="2OqwBi" id="7VgNZDXKWHt" role="2Oq$k0">
              <node concept="37vLTw" id="7VgNZDXKWub" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="7VgNZDXKWUA" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:1fUwyp9CBZM" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="7VgNZDXKXqM" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3lay" resolve="setY" />
              <node concept="37vLTw" id="7VgNZDXKXv0" role="37wK5m">
                <ref role="3cqZAo" node="7VgNZDXKmur" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7VgNZDXKmuu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7VgNZDXKmuv" role="jymVt">
      <property role="TrG5h" value="getPortReference" />
      <node concept="3Tm1VV" id="7VgNZDXKmuw" role="1B3o_S" />
      <node concept="3uibUv" id="7VgNZDXKmuy" role="3clF45">
        <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="7VgNZDXKmuz" role="11_B2D">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="7VgNZDXKmu$" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="7VgNZDXKmu_" role="3clF47">
        <node concept="3cpWs6" id="7VgNZDXKYVi" role="3cqZAp">
          <node concept="2ShNRf" id="7VgNZDXLcUP" role="3cqZAk">
            <node concept="YeOm9" id="7VgNZDXLgUM" role="2ShVmc">
              <node concept="1Y3b0j" id="7VgNZDXLgUP" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="7adg:~CompositeReference" resolve="CompositeReference" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="7VgNZDXLgUQ" role="1B3o_S" />
                <node concept="3clFb_" id="7VgNZDXLgUW" role="jymVt">
                  <property role="TrG5h" value="getTarget" />
                  <node concept="3Tm1VV" id="7VgNZDXLgUX" role="1B3o_S" />
                  <node concept="2AHcQZ" id="7VgNZDXLgUZ" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                  </node>
                  <node concept="3uibUv" id="7VgNZDXLgVC" role="3clF45">
                    <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                    <node concept="3qTvmN" id="7VgNZDXLgVD" role="11_B2D" />
                  </node>
                  <node concept="3clFbS" id="7VgNZDXLgV1" role="3clF47">
                    <node concept="3cpWs6" id="7VgNZDXLhOO" role="3cqZAp">
                      <node concept="10Nm6u" id="7VgNZDXLhQ4" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="7VgNZDXLgV3" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="5PNKLYKoME" role="jymVt" />
                <node concept="3clFb_" id="7VgNZDXLgV5" role="jymVt">
                  <property role="TrG5h" value="getPath" />
                  <node concept="3Tm1VV" id="7VgNZDXLgV6" role="1B3o_S" />
                  <node concept="2AHcQZ" id="7VgNZDXLgV8" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="7VgNZDXLgV9" role="3clF45">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="7VgNZDXLgVa" role="11_B2D">
                      <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7VgNZDXLgVb" role="3clF47">
                    <node concept="3cpWs8" id="5PNKLYLcUN" role="3cqZAp">
                      <node concept="3cpWsn" id="5PNKLYLcUO" role="3cpWs9">
                        <property role="TrG5h" value="identifier" />
                        <node concept="3uibUv" id="5PNKLYLcUP" role="1tU5fm">
                          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                        </node>
                        <node concept="2YIFZM" id="_yMviEJZCt" role="33vP2m">
                          <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                          <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                          <node concept="37vLTw" id="_yMviEK0s1" role="37wK5m">
                            <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                          </node>
                          <node concept="359W_D" id="_yMviEK2uQ" role="37wK5m">
                            <ref role="359W_E" to="xiqq:1fUwyp9CzsN" resolve="EndpointCoordinate" />
                            <ref role="359W_F" to="xiqq:_yMviEJHiZ" resolve="endpoint" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="5PNKLYLw3k" role="3cqZAp">
                      <node concept="2YIFZM" id="6oV02hYqEyD" role="3cqZAk">
                        <ref role="37wK5l" to="33ny:~List.of(java.lang.Object)" resolve="of" />
                        <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                        <node concept="37vLTw" id="6oV02hYqEyE" role="37wK5m">
                          <ref role="3cqZAo" node="5PNKLYLcUO" resolve="identifier" />
                        </node>
                        <node concept="3uibUv" id="6oV02hYqEyF" role="3PaCim">
                          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="7VgNZDXLgVd" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="7VgNZDXLgVe" role="jymVt" />
                <node concept="3clFb_" id="7VgNZDXLgVf" role="jymVt">
                  <property role="TrG5h" value="getPresentation" />
                  <node concept="3Tm1VV" id="7VgNZDXLgVg" role="1B3o_S" />
                  <node concept="2AHcQZ" id="7VgNZDXLgVi" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="7VgNZDXLgVj" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3clFbS" id="7VgNZDXLgVk" role="3clF47">
                    <node concept="3cpWs8" id="5PNKLYLJKc" role="3cqZAp">
                      <node concept="3cpWsn" id="5PNKLYLJKd" role="3cpWs9">
                        <property role="TrG5h" value="identifier" />
                        <node concept="3uibUv" id="5PNKLYLJKe" role="1tU5fm">
                          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                        </node>
                        <node concept="2YIFZM" id="_yMviEKkwP" role="33vP2m">
                          <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                          <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                          <node concept="37vLTw" id="_yMviEKkwQ" role="37wK5m">
                            <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                          </node>
                          <node concept="359W_D" id="_yMviEKkwR" role="37wK5m">
                            <ref role="359W_E" to="xiqq:1fUwyp9CzsN" resolve="EndpointCoordinate" />
                            <ref role="359W_F" to="xiqq:_yMviEJHiZ" resolve="endpoint" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6CY6owxdLoC" role="3cqZAp">
                      <node concept="2OqwBi" id="6CY6owxdF_p" role="3cqZAk">
                        <node concept="37vLTw" id="6CY6owxdEy9" role="2Oq$k0">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="2qgKlT" id="6CY6owxdFRB" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="7VgNZDXLgVm" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="7VgNZDXLgVn" role="jymVt" />
                <node concept="3clFb_" id="7VgNZDXLgVo" role="jymVt">
                  <property role="TrG5h" value="setPath" />
                  <node concept="3Tm1VV" id="7VgNZDXLgVp" role="1B3o_S" />
                  <node concept="3cqZAl" id="7VgNZDXLgVr" role="3clF45" />
                  <node concept="37vLTG" id="7VgNZDXLgVs" role="3clF46">
                    <property role="TrG5h" value="path" />
                    <node concept="3uibUv" id="7VgNZDXLgVt" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3qUE_q" id="3dz4YurgflV" role="11_B2D">
                        <node concept="3uibUv" id="3dz4YurgfBQ" role="3qUE_r">
                          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7VgNZDXLgVv" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7VgNZDXLgVw" role="3clF47">
                    <node concept="3clFbF" id="_yMviEKryB" role="3cqZAp">
                      <node concept="2YIFZM" id="_yMviEKsoi" role="3clFbG">
                        <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                        <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                        <node concept="37vLTw" id="_yMviEKsoj" role="37wK5m">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                        </node>
                        <node concept="359W_D" id="_yMviEKsok" role="37wK5m">
                          <ref role="359W_E" to="xiqq:1fUwyp9CzsN" resolve="EndpointCoordinate" />
                          <ref role="359W_F" to="xiqq:_yMviEJHiZ" resolve="endpoint" />
                        </node>
                        <node concept="37vLTw" id="_yMviEKvYH" role="37wK5m">
                          <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                        </node>
                        <node concept="2OqwBi" id="_yMviEKtwn" role="37wK5m">
                          <node concept="37vLTw" id="_yMviEKsPw" role="2Oq$k0">
                            <ref role="3cqZAo" node="7VgNZDXLgVs" resolve="path" />
                          </node>
                          <node concept="liA8E" id="_yMviEKun9" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="_yMviEKuEI" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="7VgNZDXLgVy" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3uibUv" id="7VgNZDXLgVA" role="2Ghqu4">
                  <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                  <node concept="3qTvmN" id="7VgNZDXLgVB" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7VgNZDXKmuA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7VgNZDXON1C" role="jymVt" />
    <node concept="3uibUv" id="7VgNZDXKOAX" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1IuIrLUoYWZ" resolve="PlatformElementBase" />
      <node concept="3Tqbb2" id="7VgNZDXKOM5" role="11_B2D">
        <ref role="ehGHo" to="xiqq:1fUwyp9CzsN" resolve="EndpointCoordinate" />
      </node>
    </node>
    <node concept="3clFb_" id="7VgNZDXOH95" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="7VgNZDXOH96" role="1B3o_S" />
      <node concept="2AHcQZ" id="7VgNZDXOH98" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7VgNZDXOH99" role="3clF45">
        <ref role="3uigEE" to="7adg:~Element" resolve="Element" />
      </node>
      <node concept="3clFbS" id="7VgNZDXOH9d" role="3clF47">
        <node concept="3cpWs8" id="7VgNZDXOMDZ" role="3cqZAp">
          <node concept="3cpWsn" id="7VgNZDXOME0" role="3cpWs9">
            <property role="TrG5h" value="container" />
            <node concept="3uibUv" id="7VgNZDXOME1" role="1tU5fm">
              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
            </node>
            <node concept="1rXfSq" id="7VgNZDXOME2" role="33vP2m">
              <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
              <node concept="3VsKOn" id="7VgNZDXOME3" role="37wK5m">
                <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7VgNZDXOME4" role="3cqZAp">
          <node concept="10QFUN" id="7VgNZDXOME5" role="3clFbG">
            <node concept="3uibUv" id="7VgNZDXOME6" role="10QFUM">
              <ref role="3uigEE" node="1R4IoyQA3Yn" resolve="FBNetworkByNode" />
            </node>
            <node concept="2YIFZM" id="7VgNZDXOME7" role="10QFUP">
              <ref role="37wK5l" to="g27j:~FBNetwork.extractNetwork(org.fbme.lib.common.Declaration)" resolve="extractNetwork" />
              <ref role="1Pybhc" to="g27j:~FBNetwork" resolve="FBNetwork" />
              <node concept="37vLTw" id="7VgNZDXOME8" role="37wK5m">
                <ref role="3cqZAo" node="7VgNZDXOME0" resolve="container" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7VgNZDXOH9e" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

