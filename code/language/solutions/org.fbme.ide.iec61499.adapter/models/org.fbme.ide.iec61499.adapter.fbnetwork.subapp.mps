<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:832201cc-eba2-477d-a9e1-8c050863a010(org.fbme.ide.iec61499.adapter.fbnetwork.subapp)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(org.fbme.ide.iec61499.adapter.fbnetwork)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="m1e1" ref="r:ce018f97-56b9-4ee7-9b5f-2d462b6628bf(org.fbme.ide.iec61499.repository)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="6iyo" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork.subapp(org.fbme.lib/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
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
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
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
  </registry>
  <node concept="312cEu" id="3VhUp_YN5oU">
    <property role="TrG5h" value="SubapplicationDeclarationByNode" />
    <node concept="15s5l7" id="3VhUp_YN5oV" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @FBInstanceByNode.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @FBInstanceByNode.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T" />
    </node>
    <node concept="2tJIrI" id="3VhUp_YN5oW" role="jymVt" />
    <node concept="3clFbW" id="3VhUp_YQv8m" role="jymVt">
      <node concept="3cqZAl" id="3VhUp_YQv8n" role="3clF45" />
      <node concept="3Tm1VV" id="3VhUp_YQv8o" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YQv8q" role="3clF47">
        <node concept="XkiVB" id="3VhUp_YQv8s" role="3cqZAp">
          <ref role="37wK5l" to="rwq3:3VhUp_YMkxn" resolve="FunctionBlockDeclarationBaseByNode" />
          <node concept="37vLTw" id="3VhUp_YQv8w" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YQv8t" resolve="node" />
          </node>
          <node concept="37vLTw" id="3VhUp_YQv8$" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YQv8x" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YQv8t" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3VhUp_YQwoC" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YQv8x" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5Kxyjkjh" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YQvQ3" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YQtub" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tqbb2" id="3VhUp_YQtuc" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3Tmbuc" id="3VhUp_YQtud" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YQtue" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YQtuf" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YQtug" role="3clFbG">
            <node concept="37vLTw" id="7OvpRfuTtxo" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="3TrEf2" id="3VhUp_YSpYW" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:7oJsd9x2gq9" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YQtuj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h4ep1a" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h48PxI" role="jymVt">
      <property role="TrG5h" value="getTypeReference" />
      <node concept="3Tm1VV" id="3lxP5h48PxJ" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h48PxM" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="3lxP5h4ersN" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h48PxT" role="3clF47">
        <node concept="3clFbF" id="3lxP5h48QmM" role="3cqZAp">
          <node concept="2ShNRf" id="3lxP5h48QmG" role="3clFbG">
            <node concept="1pGfFk" id="3lxP5h48QH9" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="7OvpRfuTu7A" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="3lxP5h48R79" role="37wK5m">
                <ref role="359W_E" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
                <ref role="359W_F" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
              <node concept="3VsKOn" id="3lxP5h48SVQ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
              </node>
              <node concept="3uibUv" id="3lxP5h4erSy" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="7OvpRfuTuvy" role="37wK5m">
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
              <node concept="3uibUv" id="3lxP5h4esKt" role="11_B2D">
                <ref role="3uigEE" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
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
            <node concept="3uibUv" id="3lxP5h4et5K" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
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
                  <ref role="37wK5l" to="cwd8:~SubapplicationTypeDeclaration.getTypeDescriptor()" resolve="getTypeDescriptor" />
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
    </node>
    <node concept="2tJIrI" id="7OvpRfuTvyN" role="jymVt" />
    <node concept="3Tm1VV" id="3VhUp_YN5sB" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZlmQg" role="EKbjA">
      <ref role="3uigEE" to="6iyo:~SubapplicationDeclaration" resolve="SubapplicationDeclaration" />
    </node>
    <node concept="3uibUv" id="3WC2DnYvYGJ" role="EKbjA">
      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
    </node>
    <node concept="3uibUv" id="3VhUp_YN5sG" role="1zkMxy">
      <ref role="3uigEE" to="rwq3:3VhUp_YMiEx" resolve="FunctionBlockDeclarationBaseByNode" />
      <node concept="3Tqbb2" id="3VhUp_YNdfL" role="11_B2D">
        <ref role="ehGHo" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
      </node>
    </node>
    <node concept="3clFb_" id="1IuIrLUuGVS" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1IuIrLUuGVT" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUuGVV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7OvpRfuTzdn" role="3clF45">
        <ref role="3uigEE" to="6iyo:~SubappNetwork" resolve="SubappNetwork" />
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
          <node concept="10QFUN" id="7OvpRfuTzLg" role="3clFbG">
            <node concept="3uibUv" id="7OvpRfuTzO4" role="10QFUM">
              <ref role="3uigEE" to="6iyo:~SubappNetwork" resolve="SubappNetwork" />
            </node>
            <node concept="2YIFZM" id="1IuIrLUuNdI" role="10QFUP">
              <ref role="37wK5l" to="g27j:~FBNetwork.extractNetwork(org.fbme.lib.common.Declaration)" resolve="extractNetwork" />
              <ref role="1Pybhc" to="g27j:~FBNetwork" resolve="FBNetwork" />
              <node concept="37vLTw" id="1IuIrLUuNdJ" role="37wK5m">
                <ref role="3cqZAo" node="1IuIrLUuNdy" resolve="container" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUuGWo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OvpRfuT_1w" role="jymVt" />
    <node concept="3clFb_" id="7OvpRfuT_va" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="7OvpRfuT_vb" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OvpRfuT_vd" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7OvpRfuT_ve" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7OvpRfuT_vf" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="7OvpRfuT_vq" role="3clF47">
        <node concept="3clFbF" id="7OvpRfuTA0A" role="3cqZAp">
          <node concept="2YIFZM" id="7OvpRfuTA2p" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OvpRfuT_vr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6YcNwH3zrlu">
    <property role="TrG5h" value="SubappNetworkByNode" />
    <node concept="2tJIrI" id="6YcNwH3zrlE" role="jymVt" />
    <node concept="3Tm1VV" id="6YcNwH3zrlv" role="1B3o_S" />
    <node concept="3uibUv" id="6YcNwH3zrmQ" role="1zkMxy">
      <ref role="3uigEE" to="rwq3:1R4IoyQA3Yn" resolve="FBNetworkByNode" />
    </node>
    <node concept="3uibUv" id="6YcNwH3zrBx" role="EKbjA">
      <ref role="3uigEE" to="6iyo:~SubappNetwork" resolve="SubappNetwork" />
    </node>
    <node concept="3clFbW" id="6YcNwH3zv22" role="jymVt">
      <node concept="3cqZAl" id="6YcNwH3zv23" role="3clF45" />
      <node concept="3Tm1VV" id="6YcNwH3zv24" role="1B3o_S" />
      <node concept="3clFbS" id="6YcNwH3zv26" role="3clF47">
        <node concept="XkiVB" id="6YcNwH3zv28" role="3cqZAp">
          <ref role="37wK5l" to="rwq3:1IuIrLUvuAR" resolve="FBNetworkByNode" />
          <node concept="37vLTw" id="6YcNwH3zv2c" role="37wK5m">
            <ref role="3cqZAo" node="6YcNwH3zv29" resolve="node" />
          </node>
          <node concept="37vLTw" id="6YcNwH3zv2g" role="37wK5m">
            <ref role="3cqZAo" node="6YcNwH3zv2d" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6YcNwH3zv29" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6YcNwH3zv2b" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
        </node>
      </node>
      <node concept="37vLTG" id="6YcNwH3zv2d" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5KxyjkEO" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3zv3Q" role="jymVt" />
    <node concept="3clFb_" id="6YcNwH3zv5U" role="jymVt">
      <property role="TrG5h" value="getSubapplications" />
      <node concept="3Tm1VV" id="6YcNwH3zv5V" role="1B3o_S" />
      <node concept="3uibUv" id="6YcNwH3zv5X" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6YcNwH3zv5Y" role="11_B2D">
          <ref role="3uigEE" to="6iyo:~SubapplicationDeclaration" resolve="SubapplicationDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="6YcNwH3zv61" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3zv92" role="3cqZAp">
          <node concept="2ShNRf" id="6YcNwH3zv90" role="3clFbG">
            <node concept="1pGfFk" id="6YcNwH3zvjf" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3zvXi" role="37wK5m">
                <node concept="1PxgMI" id="6YcNwH3zvEh" role="2Oq$k0">
                  <node concept="chp4Y" id="6YcNwH3zvKY" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
                  </node>
                  <node concept="37vLTw" id="7OvpRfuTqIy" role="1m5AlR">
                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6YcNwH3zwnU" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3zyRw" role="37wK5m">
                <ref role="3VsUkX" to="6iyo:~SubapplicationDeclaration" resolve="SubapplicationDeclaration" />
              </node>
              <node concept="37vLTw" id="7OvpRfuTqV1" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="6YcNwH3zAHe" role="1pMfVU">
                <ref role="3uigEE" to="6iyo:~SubapplicationDeclaration" resolve="SubapplicationDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6YcNwH3zv62" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

