<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:832201cc-eba2-477d-a9e1-8c050863a010(org.fbme.ide.iec61499.adapter.fbnetwork.subapp)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(org.fbme.ide.iec61499.adapter.fbnetwork)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="6iyo" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork.subapp(org.fbme.lib/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
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
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU">
        <reference id="7400021826771268269" name="concept" index="2sp9C9" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="3609773094169249792" name="jetbrains.mps.lang.smodel.structure.Node_GetReferenceOperation" flags="nn" index="37Cfm0">
        <child id="3609773094169252180" name="linkQualifier" index="37CeNk" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="942336824646299470" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetPointerOperation" flags="ng" index="1AR3kn">
        <child id="942336824646299471" name="linkTarget" index="1AR3km" />
      </concept>
      <concept id="5708036808576088033" name="jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo" flags="nn" index="1FfNbt" />
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
          <ref role="37wK5l" to="rwq3:3VhUp_YMkxn" resolve="FBNetworkComponentDeclarationByNode" />
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
        <node concept="3uibUv" id="3VhUp_YQv8z" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
            <node concept="37vLTw" id="3VhUp_YQtuh" role="2Oq$k0">
              <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
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
    <node concept="2tJIrI" id="3VhUp_YQtuk" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YQtul" role="jymVt">
      <property role="TrG5h" value="setType" />
      <node concept="3Tm1VV" id="3VhUp_YQtum" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YQtun" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YQtuo" role="3clF46">
        <property role="TrG5h" value="identifier" />
        <node concept="3uibUv" id="3VhUp_YQtup" role="1tU5fm">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
        </node>
        <node concept="2AHcQZ" id="3VhUp_YQtuq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YQtur" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YQtus" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YQtut" role="3clFbG">
            <node concept="2OqwBi" id="3VhUp_YQtuu" role="2Oq$k0">
              <node concept="37vLTw" id="3VhUp_YQtuv" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="3VhUp_YQyxV" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
            <node concept="1AR3kn" id="3VhUp_YQtux" role="2OqNvi">
              <node concept="25Kdxt" id="3VhUp_YQtuy" role="1AR3km">
                <node concept="10QFUN" id="3VhUp_YQtuz" role="25KhWn">
                  <node concept="2OqwBi" id="3VhUp_YQtu$" role="10QFUP">
                    <node concept="1eOMI4" id="3VhUp_YQtu_" role="2Oq$k0">
                      <node concept="10QFUN" id="3VhUp_YQtuA" role="1eOMHV">
                        <node concept="3uibUv" id="3VhUp_YQtuB" role="10QFUM">
                          <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                        </node>
                        <node concept="37vLTw" id="3VhUp_YQtuC" role="10QFUP">
                          <ref role="3cqZAo" node="3VhUp_YQtuo" resolve="identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3VhUp_YQtuD" role="2OqNvi">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="2sp9CU" id="3VhUp_YQtuE" role="10QFUM">
                    <ref role="2sp9C9" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YQtuF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YUaLd" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YQtuG" role="jymVt">
      <property role="TrG5h" value="setType" />
      <node concept="3Tm1VV" id="3VhUp_YQtuH" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YQtuI" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YQtuJ" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="_2FpOZloIZ" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
        </node>
        <node concept="2AHcQZ" id="3VhUp_YQtuL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YQtuM" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YQtuN" role="3cqZAp">
          <node concept="37vLTI" id="3VhUp_YQtuO" role="3clFbG">
            <node concept="1eOMI4" id="3VhUp_YQtuP" role="37vLTx">
              <node concept="10QFUN" id="3VhUp_YQtuQ" role="1eOMHV">
                <node concept="3Tqbb2" id="3VhUp_YQtuR" role="10QFUM">
                  <ref role="ehGHo" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
                </node>
                <node concept="2OqwBi" id="3VhUp_YQtuS" role="10QFUP">
                  <node concept="1eOMI4" id="3VhUp_YQtuT" role="2Oq$k0">
                    <node concept="10QFUN" id="3VhUp_YQtuU" role="1eOMHV">
                      <node concept="3uibUv" id="3VhUp_YQtuV" role="10QFUM">
                        <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
                      </node>
                      <node concept="37vLTw" id="3VhUp_YQtuW" role="10QFUP">
                        <ref role="3cqZAo" node="3VhUp_YQtuJ" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3VhUp_YQtuX" role="2OqNvi">
                    <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3VhUp_YQtuY" role="37vLTJ">
              <node concept="37vLTw" id="3VhUp_YQtuZ" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="3VhUp_YQyB1" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YQtv1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YQtv2" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YQtv3" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="3VhUp_YQtv4" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YQtv5" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
      </node>
      <node concept="3clFbS" id="3VhUp_YQtv6" role="3clF47">
        <node concept="3cpWs8" id="3VhUp_YQtv7" role="3cqZAp">
          <node concept="3cpWsn" id="3VhUp_YQtv8" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="3VhUp_YQtv9" role="1tU5fm">
              <ref role="3uigEE" to="rwq3:1R4IoyQA3Yn" resolve="FBNetworkByNode" />
            </node>
            <node concept="1rXfSq" id="3VhUp_YQtva" role="33vP2m">
              <ref role="37wK5l" to="rwq3:3VhUp_YNILC" resolve="getNetwork" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3VhUp_YQtvb" role="3cqZAp">
          <node concept="3cpWsn" id="3VhUp_YQtvc" role="3cpWs9">
            <property role="TrG5h" value="declaration" />
            <node concept="3uibUv" id="3VhUp_YQyNh" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="3VhUp_YQtve" role="33vP2m">
              <node concept="37vLTw" id="3VhUp_YQtvf" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:3VhUp_YNzQc" resolve="myRepository" />
              </node>
              <node concept="liA8E" id="3VhUp_YQtvg" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="2OqwBi" id="3VhUp_YQtvh" role="37wK5m">
                  <node concept="37vLTw" id="3VhUp_YQtvi" role="2Oq$k0">
                    <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
                  </node>
                  <node concept="3TrEf2" id="3VhUp_YSq3T" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
                  </node>
                </node>
                <node concept="3VsKOn" id="3VhUp_YQtvk" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3VhUp_YQtvl" role="3cqZAp">
          <node concept="3clFbS" id="3VhUp_YQtvm" role="3clFbx">
            <node concept="3cpWs6" id="3VhUp_YQtvn" role="3cqZAp">
              <node concept="3K4zz7" id="3VhUp_YQtvo" role="3cqZAk">
                <node concept="2ShNRf" id="3VhUp_YQtvp" role="3K4E3e">
                  <node concept="1pGfFk" id="3VhUp_YQtvq" role="2ShVmc">
                    <ref role="37wK5l" to="rwq3:3VhUp_YORJb" resolve="EmptyTypeDescriptor" />
                    <node concept="1rXfSq" id="3VhUp_YQtvr" role="37wK5m">
                      <ref role="37wK5l" node="3VhUp_YQtw0" resolve="getBrokenTypeName" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3VhUp_YQtvs" role="3K4GZi">
                  <node concept="37vLTw" id="3VhUp_YQtvt" role="2Oq$k0">
                    <ref role="3cqZAo" node="3VhUp_YQtvc" resolve="declaration" />
                  </node>
                  <node concept="liA8E" id="3VhUp_YQtvu" role="2OqNvi">
                    <ref role="37wK5l" to="cwd8:~SubapplicationTypeDeclaration.getTypeDescriptor()" resolve="getTypeDescriptor" />
                  </node>
                </node>
                <node concept="3clFbC" id="3VhUp_YQtvv" role="3K4Cdx">
                  <node concept="10Nm6u" id="3VhUp_YQtvw" role="3uHU7w" />
                  <node concept="37vLTw" id="3VhUp_YQtvx" role="3uHU7B">
                    <ref role="3cqZAo" node="3VhUp_YQtvc" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3VhUp_YQtvy" role="3clFbw">
            <node concept="10Nm6u" id="3VhUp_YQtvz" role="3uHU7w" />
            <node concept="37vLTw" id="3VhUp_YQtv$" role="3uHU7B">
              <ref role="3cqZAo" node="3VhUp_YQtv8" resolve="network" />
            </node>
          </node>
          <node concept="9aQIb" id="3VhUp_YQtv_" role="9aQIa">
            <node concept="3clFbS" id="3VhUp_YQtvA" role="9aQI4">
              <node concept="3cpWs8" id="3VhUp_YQtvB" role="3cqZAp">
                <node concept="3cpWsn" id="3VhUp_YQtvC" role="3cpWs9">
                  <property role="TrG5h" value="brokenTargets" />
                  <node concept="3uibUv" id="3VhUp_YQtvD" role="1tU5fm">
                    <ref role="3uigEE" to="rwq3:31Fn7oZuPIn" resolve="NetworkBrokenTargets" />
                  </node>
                  <node concept="2OqwBi" id="3VhUp_YQtvE" role="33vP2m">
                    <node concept="37vLTw" id="3VhUp_YQtvF" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VhUp_YQtv8" resolve="network" />
                    </node>
                    <node concept="liA8E" id="3VhUp_YQtvG" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:31Fn7oZAYo3" resolve="getBrokenTargets" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3VhUp_YQtvH" role="3cqZAp">
                <node concept="3K4zz7" id="3VhUp_YQtvI" role="3cqZAk">
                  <node concept="2OqwBi" id="3VhUp_YQtvJ" role="3K4E3e">
                    <node concept="37vLTw" id="3VhUp_YQtvK" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VhUp_YQtvC" resolve="brokenTargets" />
                    </node>
                    <node concept="liA8E" id="3VhUp_YQtvL" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:31Fn7oZyaoy" resolve="adaptFBBrokenType" />
                      <node concept="Xjq3P" id="3VhUp_YQtvM" role="37wK5m" />
                      <node concept="1rXfSq" id="3VhUp_YQtvN" role="37wK5m">
                        <ref role="37wK5l" node="3VhUp_YQtw0" resolve="getBrokenTypeName" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3VhUp_YQtvO" role="3K4GZi">
                    <node concept="37vLTw" id="3VhUp_YQtvP" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VhUp_YQtvC" resolve="brokenTargets" />
                    </node>
                    <node concept="liA8E" id="3VhUp_YQtvQ" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:31Fn7oZwpUZ" resolve="adaptFBType" />
                      <node concept="Xjq3P" id="3VhUp_YQtvR" role="37wK5m" />
                      <node concept="2OqwBi" id="3VhUp_YQtvS" role="37wK5m">
                        <node concept="37vLTw" id="3VhUp_YQtvT" role="2Oq$k0">
                          <ref role="3cqZAo" node="3VhUp_YQtvc" resolve="declaration" />
                        </node>
                        <node concept="liA8E" id="3VhUp_YQtvU" role="2OqNvi">
                          <ref role="37wK5l" to="cwd8:~SubapplicationTypeDeclaration.getTypeDescriptor()" resolve="getTypeDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="3VhUp_YQtvV" role="3K4Cdx">
                    <node concept="10Nm6u" id="3VhUp_YQtvW" role="3uHU7w" />
                    <node concept="37vLTw" id="3VhUp_YQtvX" role="3uHU7B">
                      <ref role="3cqZAo" node="3VhUp_YQtvc" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YQtvY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YQtvZ" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YQtw0" role="jymVt">
      <property role="TrG5h" value="getBrokenTypeName" />
      <node concept="3Tm6S6" id="3VhUp_YQtw1" role="1B3o_S" />
      <node concept="17QB3L" id="3VhUp_YQtw2" role="3clF45" />
      <node concept="3clFbS" id="3VhUp_YQtw3" role="3clF47">
        <node concept="3cpWs6" id="3VhUp_YQtw4" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YQtw5" role="3cqZAk">
            <node concept="2OqwBi" id="3VhUp_YQtw6" role="2Oq$k0">
              <node concept="37vLTw" id="3VhUp_YQtw7" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="37Cfm0" id="3VhUp_YQtw8" role="2OqNvi">
                <node concept="1aIX9F" id="3VhUp_YQtw9" role="37CeNk">
                  <node concept="26LbJo" id="3VhUp_YQzg9" role="1aIX9E">
                    <ref role="26LbJp" to="xiqq:uLhTRQWVWR" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1FfNbt" id="3VhUp_YQtwb" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3VhUp_YN5sB" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZlmQg" role="EKbjA">
      <ref role="3uigEE" to="6iyo:~SubapplicationDeclaration" resolve="SubapplicationDeclaration" />
    </node>
    <node concept="3uibUv" id="3VhUp_YN5sD" role="EKbjA">
      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3uibUv" id="3VhUp_YN5sG" role="1zkMxy">
      <ref role="3uigEE" to="rwq3:3VhUp_YMiEx" resolve="FBNetworkComponentDeclarationByNode" />
      <node concept="3Tqbb2" id="3VhUp_YNdfL" role="11_B2D">
        <ref role="ehGHo" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
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
          <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
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
        <node concept="3uibUv" id="6YcNwH3zv2f" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="6YcNwH3zvXi" role="37wK5m">
                <node concept="1PxgMI" id="6YcNwH3zvEh" role="2Oq$k0">
                  <node concept="chp4Y" id="6YcNwH3zvKY" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
                  </node>
                  <node concept="37vLTw" id="6YcNwH3zvs2" role="1m5AlR">
                    <ref role="3cqZAo" to="rwq3:1R4IoyQANA3" resolve="myNode" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6YcNwH3zwnU" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRQWVWZ" resolve="subapplications" />
                </node>
              </node>
              <node concept="3VsKOn" id="6YcNwH3zyRw" role="37wK5m">
                <ref role="3VsUkX" to="6iyo:~SubapplicationDeclaration" resolve="SubapplicationDeclaration" />
              </node>
              <node concept="37vLTw" id="6YcNwH3z_Zd" role="37wK5m">
                <ref role="3cqZAo" to="rwq3:1R0_JUQXkK4" resolve="myRepository" />
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
    <node concept="2tJIrI" id="6YcNwH3zB1H" role="jymVt" />
    <node concept="3clFb_" id="6YcNwH3zBjO" role="jymVt">
      <property role="TrG5h" value="getComponents" />
      <node concept="3Tm1VV" id="6YcNwH3zBjP" role="1B3o_S" />
      <node concept="3uibUv" id="6YcNwH3zBjQ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6YcNwH3zBjR" role="11_B2D">
          <ref role="3uigEE" to="g27j:~FBNetworkComponent" resolve="FBNetworkComponent" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6YcNwH3zBmg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="6YcNwH3zBmh" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6YcNwH3zBmi" role="3clF47">
        <node concept="3cpWs8" id="6YcNwH3zBJO" role="3cqZAp">
          <node concept="3cpWsn" id="6YcNwH3zBJP" role="3cpWs9">
            <property role="TrG5h" value="components" />
            <node concept="3uibUv" id="6YcNwH3zBvQ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6YcNwH3zBvT" role="11_B2D">
                <ref role="3uigEE" to="g27j:~FBNetworkComponent" resolve="FBNetworkComponent" />
              </node>
            </node>
            <node concept="3nyPlj" id="6YcNwH3zBJQ" role="33vP2m">
              <ref role="37wK5l" to="rwq3:1R4IoyQANAk" resolve="getComponents" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YcNwH3zBmk" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3zCs8" role="3clFbG">
            <node concept="37vLTw" id="6YcNwH3zBJR" role="2Oq$k0">
              <ref role="3cqZAo" node="6YcNwH3zBJP" resolve="components" />
            </node>
            <node concept="liA8E" id="6YcNwH3zDyx" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="1rXfSq" id="6YcNwH3zDFF" role="37wK5m">
                <ref role="37wK5l" node="6YcNwH3zv5U" resolve="getSubapplications" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6YcNwH3zE4U" role="3cqZAp">
          <node concept="37vLTw" id="6YcNwH3zEfA" role="3cqZAk">
            <ref role="3cqZAo" node="6YcNwH3zBJP" resolve="components" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

