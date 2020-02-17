<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:296ba507-c250-4c4f-87ec-b3402bd9d933(common.iec61499.model.fbnetwork.tree)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.interfacepart)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="1QSEqLhV6fd">
    <property role="TrG5h" value="FBNetworkTreeNode" />
    <node concept="2tJIrI" id="1QSEqLhV6g7" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhV6tR" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3clFbS" id="1QSEqLhV6tU" role="3clF47" />
      <node concept="3Tm1VV" id="1QSEqLhV6tV" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6t7" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6uQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhV6gZ" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhV6ih" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3clFbS" id="1QSEqLhV6ik" role="3clF47" />
      <node concept="3Tm1VV" id="1QSEqLhV6il" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6hW" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6pX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhXsfm" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhXshL" role="jymVt">
      <property role="TrG5h" value="getParentSource" />
      <node concept="3clFbS" id="1QSEqLhXshO" role="3clF47" />
      <node concept="3Tm1VV" id="1QSEqLhXshP" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhXsgV" role="3clF45">
        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhXsjW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhV6iN" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhV6jL" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="3clFbS" id="1QSEqLhV6jO" role="3clF47" />
      <node concept="3Tm1VV" id="1QSEqLhV6jP" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6jm" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6oX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhV6kp" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhV6lF" role="jymVt">
      <property role="TrG5h" value="getChild" />
      <node concept="3clFbS" id="1QSEqLhV6lI" role="3clF47" />
      <node concept="3Tm1VV" id="1QSEqLhV6lJ" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6nE" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
      <node concept="37vLTG" id="1QSEqLhV6ms" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="1QSEqLhV6mr" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhV6w1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6o6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1QSEqLhV6fe" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1QSEqLhV6xd">
    <property role="TrG5h" value="LazyFBNetworkTreeNode" />
    <node concept="2tJIrI" id="1QSEqLhV6yl" role="jymVt" />
    <node concept="312cEg" id="1QSEqLhV6zR" role="jymVt">
      <property role="TrG5h" value="myDelegateSupplier" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhV6y$" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6yX" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
        <node concept="3uibUv" id="1QSEqLhV6ze" role="11_B2D">
          <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1QSEqLhV6_P" role="jymVt">
      <property role="TrG5h" value="myDelegate" />
      <node concept="3Tm6S6" id="1QSEqLhV6$G" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6_j" role="1tU5fm">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhV6BN" role="jymVt" />
    <node concept="3Tm1VV" id="1QSEqLhV6xe" role="1B3o_S" />
    <node concept="3uibUv" id="1QSEqLhV6z$" role="EKbjA">
      <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
    </node>
    <node concept="3clFbW" id="1QSEqLhV6Ci" role="jymVt">
      <node concept="3cqZAl" id="1QSEqLhV6Cj" role="3clF45" />
      <node concept="3Tm1VV" id="1QSEqLhV6Ck" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLhV6Cm" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhV6Cr" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhV6Ct" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhV6C$" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhV6Cq" resolve="delegateSupplier" />
            </node>
            <node concept="37vLTw" id="1QSEqLhV6G5" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhV6zR" resolve="myDelegateSupplier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhV6Cq" role="3clF46">
        <property role="TrG5h" value="delegateSupplier" />
        <node concept="3uibUv" id="1QSEqLhV6Co" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
          <node concept="3uibUv" id="1QSEqLhV6Cp" role="11_B2D">
            <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhV71C" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhV7t5" role="jymVt">
      <property role="TrG5h" value="getDelegate" />
      <node concept="3clFbS" id="1QSEqLhV7t8" role="3clF47">
        <node concept="3clFbJ" id="1QSEqLhV87b" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhV87d" role="3clFbx">
            <node concept="3clFbF" id="1QSEqLhV9Eh" role="3cqZAp">
              <node concept="37vLTI" id="1QSEqLhV9N0" role="3clFbG">
                <node concept="2OqwBi" id="1QSEqLhVa3g" role="37vLTx">
                  <node concept="37vLTw" id="1QSEqLhV9SA" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhV6zR" resolve="myDelegateSupplier" />
                  </node>
                  <node concept="liA8E" id="1QSEqLhVakE" role="2OqNvi">
                    <ref role="37wK5l" to="82uw:~Supplier.get()" resolve="get" />
                  </node>
                </node>
                <node concept="37vLTw" id="1QSEqLhV9Eg" role="37vLTJ">
                  <ref role="3cqZAo" node="1QSEqLhV6_P" resolve="myDelegate" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1QSEqLhV9zj" role="3clFbw">
            <node concept="37vLTw" id="1QSEqLhV88e" role="3uHU7B">
              <ref role="3cqZAo" node="1QSEqLhV6_P" resolve="myDelegate" />
            </node>
            <node concept="10Nm6u" id="1QSEqLhV8sa" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs6" id="1QSEqLhVaGh" role="3cqZAp">
          <node concept="37vLTw" id="1QSEqLhVaNE" role="3cqZAk">
            <ref role="3cqZAo" node="1QSEqLhV6_P" resolve="myDelegate" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1QSEqLhV7gS" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV7oh" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhV72E" role="jymVt" />
    <node concept="2tJIrI" id="1QSEqLhV6IF" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhV6L9" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1QSEqLhV6Lb" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6Lc" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6Ld" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1QSEqLhV6Le" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVaWz" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhVb7o" role="3clFbG">
            <node concept="1rXfSq" id="1QSEqLhVaWy" role="2Oq$k0">
              <ref role="37wK5l" node="1QSEqLhV7t5" resolve="getDelegate" />
            </node>
            <node concept="liA8E" id="1QSEqLhVbiS" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLhV6tR" resolve="getContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6Lf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1QSEqLhV6Li" role="jymVt">
      <property role="TrG5h" value="getParentSource" />
      <node concept="3Tm1VV" id="1QSEqLhV6Lk" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhZiXR" role="3clF45">
        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6Lm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1QSEqLhV6Ln" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVbqr" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhVb_t" role="3clFbG">
            <node concept="1rXfSq" id="1QSEqLhVbqo" role="2Oq$k0">
              <ref role="37wK5l" node="1QSEqLhV7t5" resolve="getDelegate" />
            </node>
            <node concept="liA8E" id="1QSEqLhZiGK" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLhXshL" resolve="getParentSource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6Lo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1QSEqLhV6Lr" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="1QSEqLhV6Lt" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6Lu" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6Lv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1QSEqLhV6Lw" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVbQS" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhVbWJ" role="3clFbG">
            <node concept="1rXfSq" id="1QSEqLhVbQP" role="2Oq$k0">
              <ref role="37wK5l" node="1QSEqLhV7t5" resolve="getDelegate" />
            </node>
            <node concept="liA8E" id="1QSEqLhVc3P" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLhV6ih" resolve="getNetwork" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6Lx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1QSEqLhV6L$" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="1QSEqLhV6LA" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6LB" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6LC" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1QSEqLhV6LD" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVcah" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhVcl9" role="3clFbG">
            <node concept="1rXfSq" id="1QSEqLhVcwk" role="2Oq$k0">
              <ref role="37wK5l" node="1QSEqLhV7t5" resolve="getDelegate" />
            </node>
            <node concept="liA8E" id="1QSEqLhVcBu" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLhV6jL" resolve="getParent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6LE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1QSEqLhV6LH" role="jymVt">
      <property role="TrG5h" value="getChild" />
      <node concept="3Tm1VV" id="1QSEqLhV6LJ" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6LK" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
      <node concept="37vLTG" id="1QSEqLhV6LL" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="1QSEqLhV6LM" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhV6LN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6LO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1QSEqLhV6LP" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVcI4" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhVcOl" role="3clFbG">
            <node concept="1rXfSq" id="1QSEqLhVcI1" role="2Oq$k0">
              <ref role="37wK5l" node="1QSEqLhV7t5" resolve="getDelegate" />
            </node>
            <node concept="liA8E" id="1QSEqLhVcVP" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLhV6lF" resolve="getChild" />
              <node concept="37vLTw" id="1QSEqLhVd2f" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLhV6LL" resolve="instance" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6LQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1QSEqLhVkcc">
    <property role="TrG5h" value="RootFBNetworkTreeNode" />
    <node concept="2tJIrI" id="1QSEqLhVIgH" role="jymVt" />
    <node concept="312cEg" id="1QSEqLhXAka" role="jymVt">
      <property role="TrG5h" value="myContainer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhXAc7" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhXAoR" role="1tU5fm">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhXA7t" role="jymVt" />
    <node concept="3Tm1VV" id="1QSEqLhVkcd" role="1B3o_S" />
    <node concept="3uibUv" id="1QSEqLhVIgu" role="1zkMxy">
      <ref role="3uigEE" node="1QSEqLhVkdk" resolve="BaseFBNetowrkTreeNode" />
    </node>
    <node concept="3clFbW" id="1QSEqLhVISw" role="jymVt">
      <node concept="3cqZAl" id="1QSEqLhVISx" role="3clF45" />
      <node concept="3Tm1VV" id="1QSEqLhVISy" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLhVIS$" role="3clF47">
        <node concept="XkiVB" id="1QSEqLhVISA" role="3cqZAp">
          <ref role="37wK5l" node="1QSEqLhVkjG" resolve="BaseFBNetowrkTreeNode" />
          <node concept="37vLTw" id="1QSEqLhVISE" role="37wK5m">
            <ref role="3cqZAo" node="1QSEqLhVISB" resolve="network" />
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLhXAtE" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhXABR" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhXAGD" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhVISK" resolve="container" />
            </node>
            <node concept="37vLTw" id="1QSEqLhXAtC" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhXAka" resolve="myContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhVISB" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="1QSEqLhVISD" role="1tU5fm">
          <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhVISK" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="1QSEqLhVISJ" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVJhD" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhVIh7" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1QSEqLhVIh9" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhVIha" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVIhb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1QSEqLhVIhd" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhWtXU" role="3cqZAp">
          <node concept="37vLTw" id="1QSEqLhXAI$" role="3clFbG">
            <ref role="3cqZAo" node="1QSEqLhXAka" resolve="myContainer" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVIhe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhZkhs" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhZkol" role="jymVt">
      <property role="TrG5h" value="getParentSource" />
      <node concept="3Tm1VV" id="1QSEqLhZkon" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhZkoo" role="3clF45">
        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhZkop" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1QSEqLhZkor" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhZkou" role="3cqZAp">
          <node concept="10Nm6u" id="1QSEqLhZkot" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhZkos" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVJ_u" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhVIhh" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="1QSEqLhVIhj" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhVIhk" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVIhl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1QSEqLhVIhn" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVIhq" role="3cqZAp">
          <node concept="10Nm6u" id="1QSEqLhVIhp" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVIho" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1QSEqLhVkdk">
    <property role="1sVAO0" value="true" />
    <property role="TrG5h" value="BaseFBNetowrkTreeNode" />
    <node concept="2tJIrI" id="1QSEqLhVkfO" role="jymVt" />
    <node concept="312cEg" id="1QSEqLhVkiE" role="jymVt">
      <property role="TrG5h" value="myNetwork" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhVkhN" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhVkip" role="1tU5fm">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
    </node>
    <node concept="312cEg" id="1QSEqLhVv9f" role="jymVt">
      <property role="TrG5h" value="myChildren" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhVuQt" role="1B3o_S" />
      <node concept="3rvAFt" id="1QSEqLhVv2Z" role="1tU5fm">
        <node concept="3uibUv" id="1QSEqLhVv64" role="3rvQeY">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
        <node concept="3uibUv" id="1QSEqLhV_Lq" role="3rvSg0">
          <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
        </node>
      </node>
      <node concept="2ShNRf" id="1QSEqLhVvtk" role="33vP2m">
        <node concept="1pGfFk" id="1QSEqLhVvSH" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="1QSEqLhVwbs" role="1pMfVU">
            <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
          </node>
          <node concept="3uibUv" id="1QSEqLhVA4j" role="1pMfVU">
            <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVuCE" role="jymVt" />
    <node concept="3Tm1VV" id="1QSEqLhVkdl" role="1B3o_S" />
    <node concept="3uibUv" id="1QSEqLhVkfy" role="EKbjA">
      <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
    </node>
    <node concept="3clFbW" id="1QSEqLhVkjG" role="jymVt">
      <node concept="3cqZAl" id="1QSEqLhVkjH" role="3clF45" />
      <node concept="3Tm1VV" id="1QSEqLhVkjI" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLhVkjK" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVkjO" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhVkjQ" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhVkjX" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhVkjN" resolve="network" />
            </node>
            <node concept="37vLTw" id="1QSEqLhVnzS" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhVkiE" resolve="myNetwork" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1QSEqLhVw$K" role="3cqZAp">
          <node concept="2GrKxI" id="1QSEqLhVw$M" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="2OqwBi" id="1QSEqLhVwIV" role="2GsD0m">
            <node concept="37vLTw" id="1QSEqLhVwBz" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLhVkjN" resolve="network" />
            </node>
            <node concept="liA8E" id="1QSEqLhVwPd" role="2OqNvi">
              <ref role="37wK5l" to="tphl:1R4IoyQvZqY" resolve="getComponents" />
            </node>
          </node>
          <node concept="3clFbS" id="1QSEqLhVw$Q" role="2LFqv$">
            <node concept="3clFbJ" id="1QSEqLhVzze" role="3cqZAp">
              <node concept="3clFbS" id="1QSEqLhVzzg" role="3clFbx">
                <node concept="3cpWs8" id="1QSEqLhV$bB" role="3cqZAp">
                  <node concept="3cpWsn" id="1QSEqLhV$bC" role="3cpWs9">
                    <property role="TrG5h" value="instance" />
                    <node concept="3uibUv" id="1QSEqLhV$bD" role="1tU5fm">
                      <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
                    </node>
                    <node concept="10QFUN" id="1QSEqLhV$qK" role="33vP2m">
                      <node concept="3uibUv" id="1QSEqLhV$z7" role="10QFUM">
                        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
                      </node>
                      <node concept="2GrUjf" id="1QSEqLhV$nB" role="10QFUP">
                        <ref role="2Gs0qQ" node="1QSEqLhVw$M" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1QSEqLhXBYj" role="3cqZAp">
                  <node concept="3cpWsn" id="1QSEqLhXBYk" role="3cpWs9">
                    <property role="TrG5h" value="declaration" />
                    <node concept="3uibUv" id="1QSEqLhXBXB" role="1tU5fm">
                      <ref role="3uigEE" to="2xsi:31Fn7oZJ7qm" resolve="NamedDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1QSEqLhXBYl" role="33vP2m">
                      <node concept="2OqwBi" id="1QSEqLhXBYm" role="2Oq$k0">
                        <node concept="37vLTw" id="1QSEqLhXBYn" role="2Oq$k0">
                          <ref role="3cqZAo" node="1QSEqLhV$bC" resolve="instance" />
                        </node>
                        <node concept="liA8E" id="1QSEqLhXBYo" role="2OqNvi">
                          <ref role="37wK5l" to="tphl:1R4IoyQw8aL" resolve="getType" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1QSEqLhXBYp" role="2OqNvi">
                        <ref role="37wK5l" to="2xsi:31Fn7oZHRj4" resolve="getDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1QSEqLhXBnc" role="3cqZAp">
                  <node concept="3clFbS" id="1QSEqLhXBne" role="3clFbx">
                    <node concept="3clFbF" id="1QSEqLhVxa8" role="3cqZAp">
                      <node concept="37vLTI" id="1QSEqLhV_tX" role="3clFbG">
                        <node concept="3EllGN" id="1QSEqLhVyLL" role="37vLTJ">
                          <node concept="37vLTw" id="1QSEqLhV_fn" role="3ElVtu">
                            <ref role="3cqZAo" node="1QSEqLhV$bC" resolve="instance" />
                          </node>
                          <node concept="37vLTw" id="1QSEqLhVxa6" role="3ElQJh">
                            <ref role="3cqZAo" node="1QSEqLhVv9f" resolve="myChildren" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="1QSEqLhVnfD" role="37vLTx">
                          <node concept="1pGfFk" id="1QSEqLhVnpo" role="2ShVmc">
                            <ref role="37wK5l" node="1QSEqLhV6Ci" resolve="LazyFBNetworkTreeNode" />
                            <node concept="1bVj0M" id="1QSEqLhVnpY" role="37wK5m">
                              <node concept="3clFbS" id="1QSEqLhVnpZ" role="1bW5cS">
                                <node concept="3clFbF" id="1QSEqLhVq1N" role="3cqZAp">
                                  <node concept="10QFUN" id="1QSEqLhVOSM" role="3clFbG">
                                    <node concept="3uibUv" id="1QSEqLhVP1c" role="10QFUM">
                                      <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
                                    </node>
                                    <node concept="2ShNRf" id="1QSEqLhVq1L" role="10QFUP">
                                      <node concept="1pGfFk" id="1QSEqLhVqct" role="2ShVmc">
                                        <ref role="37wK5l" node="1QSEqLhVpmp" resolve="NestedFBNetworkTreeNode" />
                                        <node concept="37vLTw" id="1QSEqLhXta1" role="37wK5m">
                                          <ref role="3cqZAo" node="1QSEqLhV$bC" resolve="instance" />
                                        </node>
                                        <node concept="Xjq3P" id="1QSEqLhVG05" role="37wK5m" />
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
                  <node concept="22lmx$" id="1QSEqLhXCxY" role="3clFbw">
                    <node concept="2ZW3vV" id="1QSEqLhXCIj" role="3uHU7w">
                      <node concept="3uibUv" id="1QSEqLhXCJ9" role="2ZW6by">
                        <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="1QSEqLhXCz6" role="2ZW6bz">
                        <ref role="3cqZAo" node="1QSEqLhXBYk" resolve="declaration" />
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="1QSEqLhXCda" role="3uHU7B">
                      <node concept="3uibUv" id="1QSEqLhXCfL" role="2ZW6by">
                        <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="1QSEqLhXBYq" role="2ZW6bz">
                        <ref role="3cqZAo" node="1QSEqLhXBYk" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="1QSEqLhVzRE" role="3clFbw">
                <node concept="3uibUv" id="1QSEqLhVzYU" role="2ZW6by">
                  <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
                </node>
                <node concept="2GrUjf" id="1QSEqLhVz_n" role="2ZW6bz">
                  <ref role="2Gs0qQ" node="1QSEqLhVw$M" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhVkjN" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="1QSEqLhVkjM" role="1tU5fm">
          <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVkpT" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhVkrH" role="jymVt">
      <property role="TrG5h" value="getChild" />
      <node concept="3Tm1VV" id="1QSEqLhVkrJ" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhVkrK" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
      <node concept="37vLTG" id="1QSEqLhVkrL" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="1QSEqLhVkrM" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhVkrN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVkrO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1QSEqLhVkrP" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVH7t" role="3cqZAp">
          <node concept="3EllGN" id="1QSEqLhVHAG" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhVHG8" role="3ElVtu">
              <ref role="3cqZAo" node="1QSEqLhVkrL" resolve="instance" />
            </node>
            <node concept="37vLTw" id="1QSEqLhVH7s" role="3ElQJh">
              <ref role="3cqZAo" node="1QSEqLhVv9f" resolve="myChildren" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVkrQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVI0p" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhVks2" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="1QSEqLhVks4" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhVks5" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVks6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1QSEqLhVks7" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVnaB" role="3cqZAp">
          <node concept="37vLTw" id="1QSEqLhVna$" role="3clFbG">
            <ref role="3cqZAo" node="1QSEqLhVkiE" resolve="myNetwork" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVks8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1QSEqLhVnSP">
    <property role="TrG5h" value="NestedFBNetworkTreeNode" />
    <node concept="2tJIrI" id="1QSEqLhVnU$" role="jymVt" />
    <node concept="312cEg" id="1QSEqLhVoPa" role="jymVt">
      <property role="TrG5h" value="myInstance" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhVoH7" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhXtSn" role="1tU5fm">
        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVp8w" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhX_OD" role="jymVt" />
    <node concept="312cEg" id="1QSEqLhX$H6" role="jymVt">
      <property role="TrG5h" value="myParent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhX$H7" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhX$St" role="1tU5fm">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhX$H9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVphk" role="jymVt" />
    <node concept="3Tm1VV" id="1QSEqLhVnSQ" role="1B3o_S" />
    <node concept="3uibUv" id="1QSEqLhVnUl" role="1zkMxy">
      <ref role="3uigEE" node="1QSEqLhVkdk" resolve="BaseFBNetowrkTreeNode" />
    </node>
    <node concept="3clFbW" id="1QSEqLhVpmp" role="jymVt">
      <node concept="3cqZAl" id="1QSEqLhVpmq" role="3clF45" />
      <node concept="3Tm1VV" id="1QSEqLhVpmr" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLhVpmt" role="3clF47">
        <node concept="XkiVB" id="1QSEqLhVpmv" role="3cqZAp">
          <ref role="37wK5l" node="1QSEqLhVkjG" resolve="BaseFBNetowrkTreeNode" />
          <node concept="1rXfSq" id="1QSEqLhXyJz" role="37wK5m">
            <ref role="37wK5l" node="1QSEqLhWsL_" resolve="getNetworkFromDeclaration" />
            <node concept="2OqwBi" id="1QSEqLhXzdM" role="37wK5m">
              <node concept="2OqwBi" id="1QSEqLhXyYG" role="2Oq$k0">
                <node concept="37vLTw" id="1QSEqLhXyPF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QSEqLhXthI" resolve="instance" />
                </node>
                <node concept="liA8E" id="1QSEqLhXz7c" role="2OqNvi">
                  <ref role="37wK5l" to="tphl:1R4IoyQw8aL" resolve="getType" />
                </node>
              </node>
              <node concept="liA8E" id="1QSEqLhXzkM" role="2OqNvi">
                <ref role="37wK5l" to="2xsi:31Fn7oZHRj4" resolve="getDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLhVpmE" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhVpmG" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhXu8V" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhXthI" resolve="instance" />
            </node>
            <node concept="37vLTw" id="1QSEqLhVptG" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhVoPa" resolve="myInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLhX_7u" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhX_kr" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhX_sl" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhVpmD" resolve="parent" />
            </node>
            <node concept="37vLTw" id="1QSEqLhX_7s" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhX$H6" resolve="myParent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhXthI" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="1QSEqLhXtlQ" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhVpmD" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="1QSEqLhVpmC" role="1tU5fm">
          <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVpxE" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhVo5U" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1QSEqLhVo5W" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhVo5X" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVo5Y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1QSEqLhVo60" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVob$" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhVol9" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhX_tA" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLhX$H6" resolve="myParent" />
            </node>
            <node concept="liA8E" id="1QSEqLhVovp" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLhV6tR" resolve="getContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVo61" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVozY" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhVo64" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="1QSEqLhVo66" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhVo67" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FBNetworkTreeNode" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVo68" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1QSEqLhVo6a" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhVpMh" role="3cqZAp">
          <node concept="37vLTw" id="1QSEqLhX_Bo" role="3clFbG">
            <ref role="3cqZAo" node="1QSEqLhX$H6" resolve="myParent" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVo6b" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhXtDm" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhXtK2" role="jymVt">
      <property role="TrG5h" value="getParentSource" />
      <node concept="3Tm1VV" id="1QSEqLhXtK4" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhXtK5" role="3clF45">
        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FBInstance" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhXtK6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1QSEqLhXtK8" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhX_Hu" role="3cqZAp">
          <node concept="37vLTw" id="1QSEqLhX_Ht" role="3clFbG">
            <ref role="3cqZAo" node="1QSEqLhVoPa" resolve="myInstance" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhXtK9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhXy7z" role="jymVt" />
    <node concept="2YIFZL" id="1QSEqLhWsL_" role="jymVt">
      <property role="TrG5h" value="getNetworkFromDeclaration" />
      <node concept="3clFbS" id="1QSEqLhWsLC" role="3clF47">
        <node concept="3clFbJ" id="1QSEqLhWsSr" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhWsSs" role="3clFbx">
            <node concept="3cpWs8" id="1QSEqLhWsSt" role="3cqZAp">
              <node concept="3cpWsn" id="1QSEqLhWsSu" role="3cpWs9">
                <property role="TrG5h" value="composite" />
                <node concept="3uibUv" id="1QSEqLhWsSv" role="1tU5fm">
                  <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
                </node>
                <node concept="1eOMI4" id="1QSEqLhWsSw" role="33vP2m">
                  <node concept="10QFUN" id="1QSEqLhWsSx" role="1eOMHV">
                    <node concept="3uibUv" id="1QSEqLhWsSy" role="10QFUM">
                      <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="1QSEqLhWsSz" role="10QFUP">
                      <ref role="3cqZAo" node="1QSEqLhWsRE" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1QSEqLhWsX4" role="3cqZAp">
              <node concept="2OqwBi" id="2SU8oJdTW6h" role="3cqZAk">
                <node concept="37vLTw" id="2SU8oJdTVN$" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QSEqLhWsSu" resolve="composite" />
                </node>
                <node concept="liA8E" id="2SU8oJdTWtj" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:2SU8oJdTUUa" resolve="getReadonlyNetwork" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1QSEqLhWsSE" role="3clFbw">
            <node concept="3uibUv" id="1QSEqLhWsSF" role="2ZW6by">
              <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
            </node>
            <node concept="37vLTw" id="1QSEqLhWsSG" role="2ZW6bz">
              <ref role="3cqZAo" node="1QSEqLhWsRE" resolve="declaration" />
            </node>
          </node>
          <node concept="3eNFk2" id="1QSEqLhWsSH" role="3eNLev">
            <node concept="3clFbS" id="1QSEqLhWsSI" role="3eOfB_">
              <node concept="3cpWs8" id="1QSEqLhWsSJ" role="3cqZAp">
                <node concept="3cpWsn" id="1QSEqLhWsSK" role="3cpWs9">
                  <property role="TrG5h" value="subapp" />
                  <node concept="3uibUv" id="1QSEqLhWsSL" role="1tU5fm">
                    <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
                  </node>
                  <node concept="1eOMI4" id="1QSEqLhWsSM" role="33vP2m">
                    <node concept="10QFUN" id="1QSEqLhWsSN" role="1eOMHV">
                      <node concept="3uibUv" id="1QSEqLhWsSO" role="10QFUM">
                        <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="1QSEqLhWsSP" role="10QFUP">
                        <ref role="3cqZAo" node="1QSEqLhWsRE" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1QSEqLhWt4h" role="3cqZAp">
                <node concept="2OqwBi" id="1QSEqLhWsST" role="3cqZAk">
                  <node concept="37vLTw" id="1QSEqLhWsSU" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhWsSK" resolve="subapp" />
                  </node>
                  <node concept="liA8E" id="2SU8oJdTXdC" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:2SU8oJdTWUM" resolve="getReadonlyNetwork" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="1QSEqLhWsSW" role="3eO9$A">
              <node concept="3uibUv" id="1QSEqLhWsSX" role="2ZW6by">
                <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1QSEqLhWsSY" role="2ZW6bz">
                <ref role="3cqZAo" node="1QSEqLhWsRE" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1QSEqLhWtdp" role="3cqZAp">
          <node concept="10Nm6u" id="1QSEqLhWte7" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1QSEqLhWsGU" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhXyxY" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="37vLTG" id="1QSEqLhWsRE" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="1QSEqLhWsRD" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhXy8m" role="jymVt" />
  </node>
</model>

