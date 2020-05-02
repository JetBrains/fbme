<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:296ba507-c250-4c4f-87ec-b3402bd9d933(org.fbme.lib.iec61499.instances)">
  <persistence version="9" />
  <languages>
    <use id="96ee7a94-411d-4cf8-9b94-96cad7e52411" name="jetbrains.mps.baseLanguage.jdk7" version="0" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(org.fbme.lib.iec61499.declarations)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="jweg" ref="r:7b1e9d17-e026-472f-bc13-715bbedb05ab(common.iec61499.model.descriptors)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ng" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
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
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8">
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.jdk8.structure.DefaultModifier" flags="ng" index="2JFqV2" />
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
    <property role="TrG5h" value="FunctionBlockInstance" />
    <node concept="2tJIrI" id="1QSEqLhV6g7" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS_Kkh" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <property role="1EzhhJ" value="true" />
      <node concept="3Tm1VV" id="4kSwwtS_Kkj" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_Kqf" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_Kkl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4kSwwtS_Kkm" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4kSwwtS_KiK" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS$wX6" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <property role="1EzhhJ" value="true" />
      <node concept="3Tm1VV" id="4kSwwtS$wX8" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS$x2B" role="3clF45">
        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS$wXa" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4kSwwtS$wXb" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1QSEqLhXsfm" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhV6ih" role="jymVt">
      <property role="TrG5h" value="getContainedNetwork" />
      <node concept="3clFbS" id="1QSEqLhV6ik" role="3clF47" />
      <node concept="3Tm1VV" id="1QSEqLhV6il" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_733" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6pX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1QSEqLhV6fe" role="1B3o_S" />
    <node concept="3uibUv" id="4kSwwtS$v8t" role="3HQHJm">
      <ref role="3uigEE" node="4kSwwtS$sUJ" resolve="Instance" />
    </node>
  </node>
  <node concept="312cEu" id="1QSEqLhVkdk">
    <property role="TrG5h" value="RegularFunctionBlockInstance" />
    <node concept="2tJIrI" id="1QSEqLhVkfO" role="jymVt" />
    <node concept="312cEg" id="4kSwwtS$M5z" role="jymVt">
      <property role="TrG5h" value="myDeclaration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4kSwwtS$Kz3" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS$M0I" role="1tU5fm">
        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="4kSwwtS$MZr" role="jymVt">
      <property role="TrG5h" value="myParent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4kSwwtS$MB1" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_KXc" role="1tU5fm">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
    </node>
    <node concept="312cEg" id="1QSEqLhVkiE" role="jymVt">
      <property role="TrG5h" value="myNetwork" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhVkhN" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_tIY" role="1tU5fm">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVuCE" role="jymVt" />
    <node concept="3uibUv" id="1QSEqLhVkfy" role="EKbjA">
      <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FunctionBlockInstance" />
    </node>
    <node concept="3clFbW" id="1QSEqLhVkjG" role="jymVt">
      <node concept="3cqZAl" id="1QSEqLhVkjH" role="3clF45" />
      <node concept="3Tm1VV" id="1QSEqLhVkjI" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLhVkjK" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS$NxE" role="3cqZAp">
          <node concept="37vLTI" id="4kSwwtS$NPe" role="3clFbG">
            <node concept="37vLTw" id="4kSwwtS$O1d" role="37vLTx">
              <ref role="3cqZAo" node="4kSwwtS$Jnq" resolve="parent" />
            </node>
            <node concept="37vLTw" id="4kSwwtS$NxC" role="37vLTJ">
              <ref role="3cqZAo" node="4kSwwtS$MZr" resolve="myParent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4kSwwtS$Ofq" role="3cqZAp">
          <node concept="37vLTI" id="4kSwwtS$OGT" role="3clFbG">
            <node concept="37vLTw" id="4kSwwtS$OTJ" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhVkjN" resolve="declaration" />
            </node>
            <node concept="37vLTw" id="4kSwwtS$Ofo" role="37vLTJ">
              <ref role="3cqZAo" node="4kSwwtS$M5z" resolve="myDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4kSwwtS_8uT" role="3cqZAp" />
        <node concept="3cpWs8" id="4kSwwtS_8$x" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS_8$y" role="3cpWs9">
            <property role="TrG5h" value="typeDeclaration" />
            <node concept="3uibUv" id="4kSwwtS_8$z" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:31Fn7oZJ7qm" resolve="NamedDeclaration" />
            </node>
            <node concept="2OqwBi" id="4kSwwtS_8$$" role="33vP2m">
              <node concept="2OqwBi" id="4kSwwtS_8$_" role="2Oq$k0">
                <node concept="37vLTw" id="4kSwwtS_8$A" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS$M5z" resolve="myDeclaration" />
                </node>
                <node concept="liA8E" id="4kSwwtS_8$B" role="2OqNvi">
                  <ref role="37wK5l" to="tphl:1R4IoyQw8aL" resolve="getType" />
                </node>
              </node>
              <node concept="liA8E" id="4kSwwtS_8$C" role="2OqNvi">
                <ref role="37wK5l" to="jweg:31Fn7oZHRj4" resolve="getDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4kSwwtS_8$D" role="3cqZAp">
          <node concept="3clFbS" id="4kSwwtS_8$E" role="3clFbx">
            <node concept="3clFbF" id="4kSwwtS_8$F" role="3cqZAp">
              <node concept="37vLTI" id="4kSwwtS_8$G" role="3clFbG">
                <node concept="37vLTw" id="4kSwwtS_8$N" role="37vLTJ">
                  <ref role="3cqZAo" node="1QSEqLhVkiE" resolve="myNetwork" />
                </node>
                <node concept="2ShNRf" id="4kSwwtS_8VL" role="37vLTx">
                  <node concept="1pGfFk" id="4kSwwtS_r9z" role="2ShVmc">
                    <ref role="37wK5l" node="4kSwwtS_d4L" resolve="RegularNetworkInstance" />
                    <node concept="Xjq3P" id="4kSwwtS_r9y" role="37wK5m" />
                    <node concept="2OqwBi" id="4kSwwtS_sw2" role="37wK5m">
                      <node concept="1eOMI4" id="4kSwwtS_s8H" role="2Oq$k0">
                        <node concept="10QFUN" id="4kSwwtS_sbL" role="1eOMHV">
                          <node concept="3uibUv" id="4kSwwtS_seK" role="10QFUM">
                            <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
                          </node>
                          <node concept="37vLTw" id="4kSwwtS_ryj" role="10QFUP">
                            <ref role="3cqZAo" node="4kSwwtS_8$y" resolve="typeDeclaration" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4kSwwtS_uKx" role="2OqNvi">
                        <ref role="37wK5l" to="2xsi:2SU8oJdTUUa" resolve="getReadonlyNetwork" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4kSwwtS_tbX" role="37wK5m">
                      <ref role="3cqZAo" node="4kSwwtS_8$y" resolve="typeDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4kSwwtS_8_e" role="3clFbw">
            <node concept="3uibUv" id="4kSwwtS_8_f" role="2ZW6by">
              <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
            </node>
            <node concept="37vLTw" id="4kSwwtS_8_g" role="2ZW6bz">
              <ref role="3cqZAo" node="4kSwwtS_8$y" resolve="typeDeclaration" />
            </node>
          </node>
          <node concept="3eNFk2" id="2bCJJGgAqt6" role="3eNLev">
            <node concept="3clFbS" id="2bCJJGgAqt8" role="3eOfB_">
              <node concept="3clFbF" id="2bCJJGgAq_l" role="3cqZAp">
                <node concept="37vLTI" id="2bCJJGgAq_m" role="3clFbG">
                  <node concept="37vLTw" id="2bCJJGgAq_n" role="37vLTJ">
                    <ref role="3cqZAo" node="1QSEqLhVkiE" resolve="myNetwork" />
                  </node>
                  <node concept="2ShNRf" id="2bCJJGgAq_o" role="37vLTx">
                    <node concept="1pGfFk" id="2bCJJGgAq_p" role="2ShVmc">
                      <ref role="37wK5l" node="4kSwwtS_d4L" resolve="RegularNetworkInstance" />
                      <node concept="Xjq3P" id="2bCJJGgAq_q" role="37wK5m" />
                      <node concept="2OqwBi" id="2bCJJGgAq_r" role="37wK5m">
                        <node concept="1eOMI4" id="2bCJJGgAq_s" role="2Oq$k0">
                          <node concept="10QFUN" id="2bCJJGgAq_t" role="1eOMHV">
                            <node concept="3uibUv" id="2bCJJGgAqKf" role="10QFUM">
                              <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
                            </node>
                            <node concept="37vLTw" id="2bCJJGgAq_v" role="10QFUP">
                              <ref role="3cqZAo" node="4kSwwtS_8$y" resolve="typeDeclaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="2bCJJGgAq_w" role="2OqNvi">
                          <ref role="37wK5l" to="2xsi:2SU8oJdTWUM" resolve="getReadonlyNetwork" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2bCJJGgAq_x" role="37wK5m">
                        <ref role="3cqZAo" node="4kSwwtS_8$y" resolve="typeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="2bCJJGgAq$s" role="3eO9$A">
              <node concept="3uibUv" id="2bCJJGgAq_0" role="2ZW6by">
                <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="2bCJJGgAq$u" role="2ZW6bz">
                <ref role="3cqZAo" node="4kSwwtS_8$y" resolve="typeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4kSwwtSDfzQ" role="9aQIa">
            <node concept="3clFbS" id="4kSwwtSDfzR" role="9aQI4">
              <node concept="3clFbF" id="4kSwwtSDfG5" role="3cqZAp">
                <node concept="37vLTI" id="4kSwwtSDfT0" role="3clFbG">
                  <node concept="10Nm6u" id="4kSwwtSDfXT" role="37vLTx" />
                  <node concept="37vLTw" id="4kSwwtSDfG4" role="37vLTJ">
                    <ref role="3cqZAo" node="1QSEqLhVkiE" resolve="myNetwork" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4kSwwtS$Jnq" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="4kSwwtS_KTB" role="1tU5fm">
          <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhVkjN" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="4kSwwtS$BHZ" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS$KO_" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS$L1T" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="4kSwwtS$L1V" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_KOw" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS$L1X" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4kSwwtS$L1Z" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS$PdO" role="3cqZAp">
          <node concept="37vLTw" id="4kSwwtS$PdL" role="3clFbG">
            <ref role="3cqZAo" node="4kSwwtS$MZr" resolve="myParent" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4kSwwtS$L20" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS$Lix" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS$L23" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="4kSwwtS$L25" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS$Lxh" role="3clF45">
        <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS$L27" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4kSwwtS$L29" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS$PkJ" role="3cqZAp">
          <node concept="37vLTw" id="4kSwwtS$PkG" role="3clFbG">
            <ref role="3cqZAo" node="4kSwwtS$M5z" resolve="myDeclaration" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4kSwwtS$L2a" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhVI0p" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhVks2" role="jymVt">
      <property role="TrG5h" value="getContainedNetwork" />
      <node concept="3Tm1VV" id="1QSEqLhVks4" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_tzD" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="2AHcQZ" id="1QSEqLhVks6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
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
    <node concept="2tJIrI" id="1DfKejr9c9_" role="jymVt" />
    <node concept="3clFb_" id="1DfKejr9cpG" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="1DfKejr9cpH" role="3clF45" />
      <node concept="3Tm1VV" id="1DfKejr9cpI" role="1B3o_S" />
      <node concept="3clFbS" id="1DfKejr9cpJ" role="3clF47">
        <node concept="3clFbJ" id="1DfKejr9cpK" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejr9cpL" role="3clFbx">
            <node concept="3cpWs6" id="1DfKejr9cpM" role="3cqZAp">
              <node concept="3clFbT" id="1DfKejr9cpN" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1DfKejr9cpO" role="3clFbw">
            <node concept="Xjq3P" id="1DfKejr9cpF" role="3uHU7B" />
            <node concept="37vLTw" id="1DfKejr9cpP" role="3uHU7w">
              <ref role="3cqZAo" node="1DfKejr9cqc" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1DfKejr9cpQ" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejr9cpR" role="3clFbx">
            <node concept="3cpWs6" id="1DfKejr9cpS" role="3cqZAp">
              <node concept="3clFbT" id="1DfKejr9cpT" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1DfKejr9gXP" role="3clFbw">
            <node concept="1eOMI4" id="1DfKejr9gXR" role="3fr31v">
              <node concept="2ZW3vV" id="1DfKejr9hqh" role="1eOMHV">
                <node concept="3uibUv" id="1DfKejr9hz5" role="2ZW6by">
                  <ref role="3uigEE" node="1QSEqLhVkdk" resolve="RegularFunctionBlockInstance" />
                </node>
                <node concept="37vLTw" id="1DfKejr9he2" role="2ZW6bz">
                  <ref role="3cqZAo" node="1DfKejr9cqc" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DfKejr9cq5" role="3cqZAp" />
        <node concept="3cpWs8" id="1DfKejr9cq6" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejr9cq7" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="1DfKejr9cq8" role="1tU5fm">
              <ref role="3uigEE" node="1QSEqLhVkdk" resolve="RegularFunctionBlockInstance" />
            </node>
            <node concept="10QFUN" id="1DfKejr9cq9" role="33vP2m">
              <node concept="3uibUv" id="1DfKejr9cqa" role="10QFUM">
                <ref role="3uigEE" node="1QSEqLhVkdk" resolve="RegularFunctionBlockInstance" />
              </node>
              <node concept="37vLTw" id="1DfKejr9cqb" role="10QFUP">
                <ref role="3cqZAo" node="1DfKejr9cqc" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1DfKejr9cqm" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejr9cqn" role="3clFbx">
            <node concept="3cpWs6" id="1DfKejr9cqo" role="3cqZAp">
              <node concept="3clFbT" id="1DfKejr9cqp" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="1DfKejr9eHe" role="3clFbw">
            <node concept="2OqwBi" id="1DfKejr9fbe" role="3uHU7w">
              <node concept="37vLTw" id="1DfKejr9fjV" role="2Oq$k0">
                <ref role="3cqZAo" node="1DfKejr9cq7" resolve="that" />
              </node>
              <node concept="2OwXpG" id="1DfKejr9fbh" role="2OqNvi">
                <ref role="2Oxat5" node="4kSwwtS$M5z" resolve="myDeclaration" />
              </node>
            </node>
            <node concept="37vLTw" id="1DfKejr9dRV" role="3uHU7B">
              <ref role="3cqZAo" node="4kSwwtS$M5z" resolve="myDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1DfKejr9cqD" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejr9cqE" role="3clFbx">
            <node concept="3cpWs6" id="1DfKejr9cqF" role="3cqZAp">
              <node concept="3clFbT" id="1DfKejr9cqG" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="1DfKejr9fkO" role="3clFbw">
            <node concept="2OqwBi" id="1DfKejr9fkP" role="3uHU7w">
              <node concept="37vLTw" id="1DfKejr9fkQ" role="2Oq$k0">
                <ref role="3cqZAo" node="1DfKejr9cq7" resolve="that" />
              </node>
              <node concept="2OwXpG" id="1DfKejr9gbQ" role="2OqNvi">
                <ref role="2Oxat5" node="4kSwwtS$MZr" resolve="myParent" />
              </node>
            </node>
            <node concept="37vLTw" id="1DfKejr9fSz" role="3uHU7B">
              <ref role="3cqZAo" node="4kSwwtS$MZr" resolve="myParent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DfKejr9cqT" role="3cqZAp" />
        <node concept="3clFbF" id="1DfKejr9cqU" role="3cqZAp">
          <node concept="3clFbT" id="1DfKejr9cqV" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DfKejr9cqc" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1DfKejr9cqd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1DfKejr9cqe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1DfKejr9m5n" role="jymVt" />
    <node concept="3clFb_" id="1DfKejr9cqW" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="1DfKejr9cqX" role="3clF45" />
      <node concept="3Tm1VV" id="1DfKejr9cqY" role="1B3o_S" />
      <node concept="3clFbS" id="1DfKejr9cqZ" role="3clF47">
        <node concept="3clFbF" id="1DfKejr9lHe" role="3cqZAp">
          <node concept="3cpWs3" id="1DfKejr9crz" role="3clFbG">
            <node concept="2OqwBi" id="1DfKejr9k2A" role="3uHU7w">
              <node concept="37vLTw" id="1DfKejr9j$W" role="2Oq$k0">
                <ref role="3cqZAo" node="4kSwwtS$MZr" resolve="myParent" />
              </node>
              <node concept="liA8E" id="1DfKejr9kjr" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
              </node>
            </node>
            <node concept="17qRlL" id="1DfKejr9crs" role="3uHU7B">
              <node concept="3cmrfG" id="1DfKejr9crt" role="3uHU7B">
                <property role="3cmrfH" value="31" />
              </node>
              <node concept="2OqwBi" id="1DfKejr9iIc" role="3uHU7w">
                <node concept="37vLTw" id="1DfKejr9imp" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS$M5z" resolve="myDeclaration" />
                </node>
                <node concept="liA8E" id="1DfKejr9j4A" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1DfKejr9cr0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="4kSwwtS$sUJ">
    <property role="TrG5h" value="Instance" />
    <node concept="2tJIrI" id="4kSwwtS$sV1" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS$sXF" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="3clFbS" id="4kSwwtS$sXI" role="3clF47" />
      <node concept="3Tm1VV" id="4kSwwtS$sXJ" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS$sXl" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS$sUJ" resolve="Instance" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS$sYg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS$sX3" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS$sVt" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3clFbS" id="4kSwwtS$sVw" role="3clF47" />
      <node concept="3Tm1VV" id="4kSwwtS$sVx" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS$sVe" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS$sVV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS$sZ8" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS$t0Y" role="jymVt">
      <property role="TrG5h" value="getRootInstance" />
      <node concept="3clFbS" id="4kSwwtS$t11" role="3clF47">
        <node concept="3cpWs8" id="4kSwwtS$t4R" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS$t4S" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="4kSwwtS$t4T" role="1tU5fm">
              <ref role="3uigEE" node="4kSwwtS$sUJ" resolve="Instance" />
            </node>
            <node concept="Xjq3P" id="4kSwwtS$t5M" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="4kSwwtS$t7g" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS$t7h" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="4kSwwtS$t7i" role="1tU5fm">
              <ref role="3uigEE" node="4kSwwtS$sUJ" resolve="Instance" />
            </node>
            <node concept="2OqwBi" id="4kSwwtS$thz" role="33vP2m">
              <node concept="Xjq3P" id="4kSwwtS$tbL" role="2Oq$k0" />
              <node concept="liA8E" id="4kSwwtS$tnk" role="2OqNvi">
                <ref role="37wK5l" node="4kSwwtS$sXF" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="4kSwwtS$t9g" role="3cqZAp">
          <node concept="3clFbS" id="4kSwwtS$t9i" role="2LFqv$">
            <node concept="3clFbF" id="4kSwwtS$tz_" role="3cqZAp">
              <node concept="37vLTI" id="4kSwwtS$t$4" role="3clFbG">
                <node concept="37vLTw" id="4kSwwtS$t$s" role="37vLTx">
                  <ref role="3cqZAo" node="4kSwwtS$t7h" resolve="parent" />
                </node>
                <node concept="37vLTw" id="4kSwwtS$tz$" role="37vLTJ">
                  <ref role="3cqZAo" node="4kSwwtS$t4S" resolve="root" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4kSwwtS$t_g" role="3cqZAp">
              <node concept="37vLTI" id="4kSwwtS$tFc" role="3clFbG">
                <node concept="2OqwBi" id="4kSwwtS$tHK" role="37vLTx">
                  <node concept="37vLTw" id="4kSwwtS$tH7" role="2Oq$k0">
                    <ref role="3cqZAo" node="4kSwwtS$t4S" resolve="root" />
                  </node>
                  <node concept="liA8E" id="4kSwwtS$tOW" role="2OqNvi">
                    <ref role="37wK5l" node="4kSwwtS$sXF" resolve="getParent" />
                  </node>
                </node>
                <node concept="37vLTw" id="4kSwwtS$t_e" role="37vLTJ">
                  <ref role="3cqZAo" node="4kSwwtS$t7h" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4kSwwtS$tvK" role="2$JKZa">
            <node concept="10Nm6u" id="4kSwwtS$tz4" role="3uHU7w" />
            <node concept="37vLTw" id="4kSwwtS$tow" role="3uHU7B">
              <ref role="3cqZAo" node="4kSwwtS$t7h" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4kSwwtS$tS2" role="3cqZAp">
          <node concept="37vLTw" id="4kSwwtS$tU8" role="3cqZAk">
            <ref role="3cqZAo" node="4kSwwtS$t4S" resolve="root" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4kSwwtS$t12" role="1B3o_S" />
      <node concept="2JFqV2" id="4kSwwtS$t0z" role="2frcjj" />
      <node concept="3uibUv" id="4kSwwtS$t2Q" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS$sUJ" resolve="Instance" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS$t3f" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS$tVW" role="jymVt" />
    <node concept="3Tm1VV" id="4kSwwtS$sUK" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4kSwwtS_6XE">
    <property role="TrG5h" value="NetworkInstance" />
    <node concept="2tJIrI" id="4kSwwtS_6Yk" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS_7k8" role="jymVt">
      <property role="TrG5h" value="getNetworkDeclaration" />
      <node concept="3clFbS" id="4kSwwtS_7kb" role="3clF47" />
      <node concept="3Tm1VV" id="4kSwwtS_7kc" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_7hk" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_7kM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_7gY" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhV6lF" role="jymVt">
      <property role="TrG5h" value="getChild" />
      <node concept="3clFbS" id="1QSEqLhV6lI" role="3clF47" />
      <node concept="3Tm1VV" id="1QSEqLhV6lJ" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhV6nE" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FunctionBlockInstance" />
      </node>
      <node concept="37vLTG" id="1QSEqLhV6ms" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3uibUv" id="1QSEqLhV6mr" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhV6w1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhV6o6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_6Ym" role="jymVt" />
    <node concept="2tJIrI" id="4kSwwtS_lSt" role="jymVt" />
    <node concept="2YIFZL" id="4kSwwtS_lTB" role="jymVt">
      <property role="TrG5h" value="createForCompositeFBType" />
      <node concept="3clFbS" id="4kSwwtS_lTE" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_lXT" role="3cqZAp">
          <node concept="2ShNRf" id="4kSwwtS_lXR" role="3clFbG">
            <node concept="1pGfFk" id="4kSwwtS_mcw" role="2ShVmc">
              <ref role="37wK5l" node="4kSwwtS_d4L" resolve="RegularNetworkInstance" />
              <node concept="10Nm6u" id="4kSwwtS_md_" role="37wK5m" />
              <node concept="2OqwBi" id="4kSwwtS_mYS" role="37wK5m">
                <node concept="37vLTw" id="4kSwwtS_mH9" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS_lWV" resolve="compositeFBType" />
                </node>
                <node concept="liA8E" id="4kSwwtS_nim" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1R4IoyQwdKR" resolve="getNetwork" />
                </node>
              </node>
              <node concept="37vLTw" id="4kSwwtS_nrp" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtS_lWV" resolve="compositeFBType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4kSwwtS_lTF" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_lUh" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="4kSwwtS_lWV" role="3clF46">
        <property role="TrG5h" value="compositeFBType" />
        <node concept="3uibUv" id="4kSwwtS_lWU" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_nMe" role="jymVt" />
    <node concept="2YIFZL" id="4kSwwtS_nwe" role="jymVt">
      <property role="TrG5h" value="createForSubapplicationType" />
      <node concept="3clFbS" id="4kSwwtS_nwf" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_nwg" role="3cqZAp">
          <node concept="2ShNRf" id="4kSwwtS_nwh" role="3clFbG">
            <node concept="1pGfFk" id="4kSwwtS_nwi" role="2ShVmc">
              <ref role="37wK5l" node="4kSwwtS_d4L" resolve="RegularNetworkInstance" />
              <node concept="10Nm6u" id="4kSwwtS_nwj" role="37wK5m" />
              <node concept="2OqwBi" id="4kSwwtS_nwk" role="37wK5m">
                <node concept="37vLTw" id="4kSwwtS_nwl" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS_nwq" resolve="subapplicationType" />
                </node>
                <node concept="liA8E" id="4kSwwtS_nwm" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1R4IoyQ$Zts" resolve="getNetwork" />
                </node>
              </node>
              <node concept="37vLTw" id="4kSwwtS_nwn" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtS_nwq" resolve="subapplicationType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4kSwwtS_nwo" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_nwp" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="4kSwwtS_nwq" role="3clF46">
        <property role="TrG5h" value="subapplicationType" />
        <node concept="3uibUv" id="4kSwwtS_nHT" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_oXU" role="jymVt" />
    <node concept="2YIFZL" id="4kSwwtS_oRF" role="jymVt">
      <property role="TrG5h" value="createForResourceType" />
      <node concept="3clFbS" id="4kSwwtS_oRG" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_oRH" role="3cqZAp">
          <node concept="2ShNRf" id="4kSwwtS_oRI" role="3clFbG">
            <node concept="1pGfFk" id="4kSwwtS_oRJ" role="2ShVmc">
              <ref role="37wK5l" node="4kSwwtS_d4L" resolve="RegularNetworkInstance" />
              <node concept="10Nm6u" id="4kSwwtS_oRK" role="37wK5m" />
              <node concept="2OqwBi" id="4kSwwtS_oRL" role="37wK5m">
                <node concept="37vLTw" id="4kSwwtS_oRM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS_oRR" resolve="resourceType" />
                </node>
                <node concept="liA8E" id="4kSwwtS_oRN" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:2SU8oJdIhY4" resolve="getNetwork" />
                </node>
              </node>
              <node concept="37vLTw" id="4kSwwtS_oRO" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtS_oRR" resolve="resourceType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4kSwwtS_oRP" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_oRQ" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="4kSwwtS_oRR" role="3clF46">
        <property role="TrG5h" value="resourceType" />
        <node concept="3uibUv" id="4kSwwtS_pl3" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:2SU8oJdIdfg" resolve="ResourceTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_pDQ" role="jymVt" />
    <node concept="2YIFZL" id="4kSwwtS_poG" role="jymVt">
      <property role="TrG5h" value="createForImplicitResourceOfDeviceType" />
      <node concept="3clFbS" id="4kSwwtS_poH" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_poI" role="3cqZAp">
          <node concept="2ShNRf" id="4kSwwtS_poJ" role="3clFbG">
            <node concept="1pGfFk" id="4kSwwtS_poK" role="2ShVmc">
              <ref role="37wK5l" node="4kSwwtS_d4L" resolve="RegularNetworkInstance" />
              <node concept="10Nm6u" id="4kSwwtS_poL" role="37wK5m" />
              <node concept="2OqwBi" id="4kSwwtS_poM" role="37wK5m">
                <node concept="37vLTw" id="4kSwwtS_poN" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS_poS" resolve="deviceType" />
                </node>
                <node concept="liA8E" id="4kSwwtS_poO" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:2SU8oJdIi1d" resolve="getNetwork" />
                </node>
              </node>
              <node concept="37vLTw" id="4kSwwtS_poP" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtS_poS" resolve="deviceType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4kSwwtS_poQ" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_poR" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="4kSwwtS_poS" role="3clF46">
        <property role="TrG5h" value="deviceType" />
        <node concept="3uibUv" id="4kSwwtS_pVH" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:2SU8oJdHTRH" resolve="DeviceTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_nWl" role="jymVt" />
    <node concept="2YIFZL" id="4kSwwtS_nOs" role="jymVt">
      <property role="TrG5h" value="createForApplication" />
      <node concept="3clFbS" id="4kSwwtS_nOt" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_nOu" role="3cqZAp">
          <node concept="2ShNRf" id="4kSwwtS_nOv" role="3clFbG">
            <node concept="1pGfFk" id="4kSwwtS_nOw" role="2ShVmc">
              <ref role="37wK5l" node="4kSwwtS_d4L" resolve="RegularNetworkInstance" />
              <node concept="10Nm6u" id="4kSwwtS_nOx" role="37wK5m" />
              <node concept="2OqwBi" id="4kSwwtS_nOy" role="37wK5m">
                <node concept="37vLTw" id="4kSwwtS_nOz" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS_nOC" resolve="application" />
                </node>
                <node concept="liA8E" id="4kSwwtS_nO$" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:2SU8oJdHAT_" resolve="getNetwork" />
                </node>
              </node>
              <node concept="37vLTw" id="4kSwwtS_nO_" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtS_nOC" resolve="application" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4kSwwtS_nOA" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_nOB" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="4kSwwtS_nOC" role="3clF46">
        <property role="TrG5h" value="application" />
        <node concept="3uibUv" id="4kSwwtS_o2M" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_oaX" role="jymVt" />
    <node concept="2YIFZL" id="4kSwwtS_o6x" role="jymVt">
      <property role="TrG5h" value="createForResource" />
      <node concept="3clFbS" id="4kSwwtS_o6y" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_o6z" role="3cqZAp">
          <node concept="2ShNRf" id="4kSwwtS_o6$" role="3clFbG">
            <node concept="1pGfFk" id="4kSwwtS_o6_" role="2ShVmc">
              <ref role="37wK5l" node="4kSwwtS_d4L" resolve="RegularNetworkInstance" />
              <node concept="10Nm6u" id="4kSwwtS_o6A" role="37wK5m" />
              <node concept="2OqwBi" id="4kSwwtS_o6B" role="37wK5m">
                <node concept="37vLTw" id="4kSwwtS_o6C" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS_o6H" resolve="resource" />
                </node>
                <node concept="liA8E" id="4kSwwtS_o6D" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:3MncU7wPlZA" resolve="getNetwork" />
                </node>
              </node>
              <node concept="37vLTw" id="4kSwwtS_o6E" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtS_o6H" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4kSwwtS_o6F" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_o6G" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="4kSwwtS_o6H" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3uibUv" id="4kSwwtS_ooY" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_oyM" role="jymVt" />
    <node concept="2YIFZL" id="4kSwwtS_ott" role="jymVt">
      <property role="TrG5h" value="createForImplicitResourceOfDevice" />
      <node concept="3clFbS" id="4kSwwtS_otu" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_otv" role="3cqZAp">
          <node concept="2ShNRf" id="4kSwwtS_otw" role="3clFbG">
            <node concept="1pGfFk" id="4kSwwtS_otx" role="2ShVmc">
              <ref role="37wK5l" node="4kSwwtS_d4L" resolve="RegularNetworkInstance" />
              <node concept="10Nm6u" id="4kSwwtS_oty" role="37wK5m" />
              <node concept="2OqwBi" id="4kSwwtS_otz" role="37wK5m">
                <node concept="37vLTw" id="4kSwwtS_ot$" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS_otD" resolve="device" />
                </node>
                <node concept="liA8E" id="4kSwwtS_ot_" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:2SU8oJdIhQa" resolve="getNetwork" />
                </node>
              </node>
              <node concept="37vLTw" id="4kSwwtS_otA" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtS_otD" resolve="device" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4kSwwtS_otB" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_otC" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="4kSwwtS_otD" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3uibUv" id="4kSwwtS_oM2" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_wlZ" role="jymVt" />
    <node concept="2YIFZL" id="4kSwwtS_x0T" role="jymVt">
      <property role="TrG5h" value="createForDeclaraiton" />
      <node concept="3clFbS" id="4kSwwtS_x0W" role="3clF47">
        <node concept="3clFbJ" id="1QSEqLhWsSr" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhWsSs" role="3clFbx">
            <node concept="3cpWs8" id="1QSEqLhWsSt" role="3cqZAp">
              <node concept="3cpWsn" id="1QSEqLhWsSu" role="3cpWs9">
                <property role="TrG5h" value="compositeFBType" />
                <node concept="3uibUv" id="1QSEqLhWsSv" role="1tU5fm">
                  <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
                </node>
                <node concept="1eOMI4" id="1QSEqLhWsSw" role="33vP2m">
                  <node concept="10QFUN" id="1QSEqLhWsSx" role="1eOMHV">
                    <node concept="3uibUv" id="1QSEqLhWsSy" role="10QFUM">
                      <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="1QSEqLhWsSz" role="10QFUP">
                      <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1QSEqLhWsX4" role="3cqZAp">
              <node concept="1rXfSq" id="4kSwwtS_xns" role="3cqZAk">
                <ref role="37wK5l" node="4kSwwtS_lTB" resolve="createForCompositeFBType" />
                <node concept="37vLTw" id="4kSwwtS_xqa" role="37wK5m">
                  <ref role="3cqZAo" node="1QSEqLhWsSu" resolve="compositeFBType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1QSEqLhWsSE" role="3clFbw">
            <node concept="3uibUv" id="1QSEqLhWsSF" role="2ZW6by">
              <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
            </node>
            <node concept="37vLTw" id="1QSEqLhWsSG" role="2ZW6bz">
              <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
            </node>
          </node>
          <node concept="3eNFk2" id="1QSEqLhWsSH" role="3eNLev">
            <node concept="3clFbS" id="1QSEqLhWsSI" role="3eOfB_">
              <node concept="3cpWs8" id="1QSEqLhWsSJ" role="3cqZAp">
                <node concept="3cpWsn" id="1QSEqLhWsSK" role="3cpWs9">
                  <property role="TrG5h" value="subappType" />
                  <node concept="3uibUv" id="1QSEqLhWsSL" role="1tU5fm">
                    <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
                  </node>
                  <node concept="1eOMI4" id="1QSEqLhWsSM" role="33vP2m">
                    <node concept="10QFUN" id="1QSEqLhWsSN" role="1eOMHV">
                      <node concept="3uibUv" id="1QSEqLhWsSO" role="10QFUM">
                        <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="1QSEqLhWsSP" role="10QFUP">
                        <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1QSEqLhWt4h" role="3cqZAp">
                <node concept="1rXfSq" id="4kSwwtS_xxy" role="3cqZAk">
                  <ref role="37wK5l" node="4kSwwtS_nwe" resolve="createForSubapplicationType" />
                  <node concept="37vLTw" id="4kSwwtS_x$9" role="37wK5m">
                    <ref role="3cqZAo" node="1QSEqLhWsSK" resolve="subappType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="1QSEqLhWsSW" role="3eO9$A">
              <node concept="3uibUv" id="1QSEqLhWsSX" role="2ZW6by">
                <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="1QSEqLhWsSY" role="2ZW6bz">
                <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4kSwwtS_yak" role="3eNLev">
            <node concept="3clFbS" id="4kSwwtS_yal" role="3eOfB_">
              <node concept="3cpWs8" id="4kSwwtS_yam" role="3cqZAp">
                <node concept="3cpWsn" id="4kSwwtS_yan" role="3cpWs9">
                  <property role="TrG5h" value="resourceType" />
                  <node concept="3uibUv" id="4kSwwtS_yf$" role="1tU5fm">
                    <ref role="3uigEE" to="2xsi:2SU8oJdIdfg" resolve="ResourceTypeDeclaration" />
                  </node>
                  <node concept="1eOMI4" id="4kSwwtS_yap" role="33vP2m">
                    <node concept="10QFUN" id="4kSwwtS_yaq" role="1eOMHV">
                      <node concept="3uibUv" id="4kSwwtS_yi7" role="10QFUM">
                        <ref role="3uigEE" to="2xsi:2SU8oJdIdfg" resolve="ResourceTypeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="4kSwwtS_yas" role="10QFUP">
                        <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4kSwwtS_yat" role="3cqZAp">
                <node concept="1rXfSq" id="4kSwwtS_yau" role="3cqZAk">
                  <ref role="37wK5l" node="4kSwwtS_oRF" resolve="createForResourceType" />
                  <node concept="37vLTw" id="4kSwwtS_yav" role="37wK5m">
                    <ref role="3cqZAo" node="4kSwwtS_yan" resolve="resourceType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="4kSwwtS_yaw" role="3eO9$A">
              <node concept="3uibUv" id="4kSwwtS_yez" role="2ZW6by">
                <ref role="3uigEE" to="2xsi:2SU8oJdIdfg" resolve="ResourceTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="4kSwwtS_yay" role="2ZW6bz">
                <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4kSwwtS_ytd" role="3eNLev">
            <node concept="3clFbS" id="4kSwwtS_yte" role="3eOfB_">
              <node concept="3cpWs8" id="4kSwwtS_ytf" role="3cqZAp">
                <node concept="3cpWsn" id="4kSwwtS_ytg" role="3cpWs9">
                  <property role="TrG5h" value="deviceType" />
                  <node concept="3uibUv" id="4kSwwtS_yFd" role="1tU5fm">
                    <ref role="3uigEE" to="2xsi:2SU8oJdHTRH" resolve="DeviceTypeDeclaration" />
                  </node>
                  <node concept="1eOMI4" id="4kSwwtS_yti" role="33vP2m">
                    <node concept="10QFUN" id="4kSwwtS_ytj" role="1eOMHV">
                      <node concept="3uibUv" id="4kSwwtS_yI5" role="10QFUM">
                        <ref role="3uigEE" to="2xsi:2SU8oJdHTRH" resolve="DeviceTypeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="4kSwwtS_ytl" role="10QFUP">
                        <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4kSwwtS_ytm" role="3cqZAp">
                <node concept="1rXfSq" id="4kSwwtS_ytn" role="3cqZAk">
                  <ref role="37wK5l" node="4kSwwtS_poG" resolve="createForImplicitResourceOfDeviceType" />
                  <node concept="37vLTw" id="4kSwwtS_yto" role="37wK5m">
                    <ref role="3cqZAo" node="4kSwwtS_ytg" resolve="deviceType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="4kSwwtS_ytp" role="3eO9$A">
              <node concept="3uibUv" id="4kSwwtS_yy0" role="2ZW6by">
                <ref role="3uigEE" to="2xsi:2SU8oJdHTRH" resolve="DeviceTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="4kSwwtS_ytr" role="2ZW6bz">
                <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4gibKcMrJSy" role="3eNLev">
            <node concept="2ZW3vV" id="4gibKcMrL68" role="3eO9$A">
              <node concept="3uibUv" id="4gibKcMrL8A" role="2ZW6by">
                <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
              </node>
              <node concept="37vLTw" id="4gibKcMrKY7" role="2ZW6bz">
                <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
              </node>
            </node>
            <node concept="3clFbS" id="4gibKcMrJS$" role="3eOfB_">
              <node concept="3cpWs8" id="4gibKcMrL98" role="3cqZAp">
                <node concept="3cpWsn" id="4gibKcMrL99" role="3cpWs9">
                  <property role="TrG5h" value="app" />
                  <node concept="3uibUv" id="4gibKcMrLb_" role="1tU5fm">
                    <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
                  </node>
                  <node concept="1eOMI4" id="4gibKcMrL9b" role="33vP2m">
                    <node concept="10QFUN" id="4gibKcMrL9c" role="1eOMHV">
                      <node concept="3uibUv" id="4gibKcMrNMM" role="10QFUM">
                        <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
                      </node>
                      <node concept="37vLTw" id="4gibKcMrL9e" role="10QFUP">
                        <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4gibKcMrL9f" role="3cqZAp">
                <node concept="1rXfSq" id="4kSwwtS_xER" role="3cqZAk">
                  <ref role="37wK5l" node="4kSwwtS_nOs" resolve="createForApplication" />
                  <node concept="37vLTw" id="4kSwwtS_xHf" role="37wK5m">
                    <ref role="3cqZAo" node="4gibKcMrL99" resolve="app" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3BnC78AurvM" role="3eNLev">
            <node concept="2ZW3vV" id="3BnC78AurvN" role="3eO9$A">
              <node concept="3uibUv" id="3BnC78AusKK" role="2ZW6by">
                <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
              </node>
              <node concept="37vLTw" id="3BnC78AurvP" role="2ZW6bz">
                <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
              </node>
            </node>
            <node concept="3clFbS" id="3BnC78AurvQ" role="3eOfB_">
              <node concept="3cpWs8" id="3BnC78AurvR" role="3cqZAp">
                <node concept="3cpWsn" id="3BnC78AurvS" role="3cpWs9">
                  <property role="TrG5h" value="resource" />
                  <node concept="3uibUv" id="3BnC78AutXI" role="1tU5fm">
                    <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
                  </node>
                  <node concept="1eOMI4" id="3BnC78AurvU" role="33vP2m">
                    <node concept="10QFUN" id="3BnC78AurvV" role="1eOMHV">
                      <node concept="3uibUv" id="3BnC78AusLe" role="10QFUM">
                        <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
                      </node>
                      <node concept="37vLTw" id="3BnC78AurvX" role="10QFUP">
                        <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3BnC78AurvY" role="3cqZAp">
                <node concept="1rXfSq" id="4kSwwtS_xLD" role="3cqZAk">
                  <ref role="37wK5l" node="4kSwwtS_o6x" resolve="createForResource" />
                  <node concept="37vLTw" id="4kSwwtS_xNU" role="37wK5m">
                    <ref role="3cqZAo" node="3BnC78AurvS" resolve="resource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4kSwwtS_yNT" role="3eNLev">
            <node concept="3clFbS" id="4kSwwtS_yNU" role="3eOfB_">
              <node concept="3cpWs8" id="4kSwwtS_yNV" role="3cqZAp">
                <node concept="3cpWsn" id="4kSwwtS_yNW" role="3cpWs9">
                  <property role="TrG5h" value="device" />
                  <node concept="3uibUv" id="4kSwwtS_yUx" role="1tU5fm">
                    <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
                  </node>
                  <node concept="1eOMI4" id="4kSwwtS_yNY" role="33vP2m">
                    <node concept="10QFUN" id="4kSwwtS_yNZ" role="1eOMHV">
                      <node concept="3uibUv" id="4kSwwtS_z3G" role="10QFUM">
                        <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
                      </node>
                      <node concept="37vLTw" id="4kSwwtS_yO1" role="10QFUP">
                        <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4kSwwtS_yO2" role="3cqZAp">
                <node concept="1rXfSq" id="4kSwwtS_yO3" role="3cqZAk">
                  <ref role="37wK5l" node="4kSwwtS_ott" resolve="createForImplicitResourceOfDevice" />
                  <node concept="37vLTw" id="4kSwwtS_yO4" role="37wK5m">
                    <ref role="3cqZAo" node="4kSwwtS_yNW" resolve="device" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="4kSwwtS_yO5" role="3eO9$A">
              <node concept="3uibUv" id="4kSwwtS_yTg" role="2ZW6by">
                <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
              </node>
              <node concept="37vLTw" id="4kSwwtS_yO7" role="2ZW6bz">
                <ref role="3cqZAo" node="4kSwwtS_x7Q" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4kSwwtS_xSS" role="3cqZAp">
          <node concept="10Nm6u" id="4kSwwtS_xXO" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4kSwwtS_x0X" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_x0i" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="4kSwwtS_x7Q" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="4kSwwtS_x7P" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4kSwwtS_6XF" role="1B3o_S" />
    <node concept="3uibUv" id="4kSwwtS_7hV" role="3HQHJm">
      <ref role="3uigEE" node="4kSwwtS$sUJ" resolve="Instance" />
    </node>
  </node>
  <node concept="312cEu" id="4kSwwtS_7pe">
    <property role="TrG5h" value="RegularNetworkInstance" />
    <node concept="2tJIrI" id="4kSwwtS_9Em" role="jymVt" />
    <node concept="312cEg" id="4kSwwtS_9Fa" role="jymVt">
      <property role="TrG5h" value="myParent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4kSwwtS_9E_" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_9EY" role="1tU5fm">
        <ref role="3uigEE" node="4kSwwtS$sUJ" resolve="Instance" />
      </node>
    </node>
    <node concept="312cEg" id="4kSwwtS_9H4" role="jymVt">
      <property role="TrG5h" value="myNetwork" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4kSwwtS_9Gj" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_9GN" role="1tU5fm">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
    </node>
    <node concept="312cEg" id="4kSwwtS_cF_" role="jymVt">
      <property role="TrG5h" value="myDeclaration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4kSwwtS_cvY" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_cF6" role="1tU5fm">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
    </node>
    <node concept="312cEg" id="4kSwwtS_9Ti" role="jymVt">
      <property role="TrG5h" value="myChildren" />
      <node concept="3Tm6S6" id="4kSwwtS_9Tj" role="1B3o_S" />
      <node concept="3rvAFt" id="4kSwwtS_9Tk" role="1tU5fm">
        <node concept="3uibUv" id="4kSwwtS_9Tl" role="3rvQeY">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
        </node>
        <node concept="3uibUv" id="4kSwwtS_9Tm" role="3rvSg0">
          <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FunctionBlockInstance" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_e5T" role="jymVt" />
    <node concept="3clFbW" id="4kSwwtS_d4L" role="jymVt">
      <node concept="3cqZAl" id="4kSwwtS_d4M" role="3clF45" />
      <node concept="3Tm1VV" id="4kSwwtS_d4N" role="1B3o_S" />
      <node concept="3clFbS" id="4kSwwtS_d4P" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_d4T" role="3cqZAp">
          <node concept="37vLTI" id="4kSwwtS_d4V" role="3clFbG">
            <node concept="37vLTw" id="4kSwwtS_d52" role="37vLTx">
              <ref role="3cqZAo" node="4kSwwtS_d4S" resolve="parent" />
            </node>
            <node concept="37vLTw" id="4kSwwtS_dlE" role="37vLTJ">
              <ref role="3cqZAo" node="4kSwwtS_9Fa" resolve="myParent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4kSwwtS_d55" role="3cqZAp">
          <node concept="37vLTI" id="4kSwwtS_d57" role="3clFbG">
            <node concept="37vLTw" id="4kSwwtS_d5e" role="37vLTx">
              <ref role="3cqZAo" node="4kSwwtS_d54" resolve="network" />
            </node>
            <node concept="37vLTw" id="4kSwwtS_dnK" role="37vLTJ">
              <ref role="3cqZAo" node="4kSwwtS_9H4" resolve="myNetwork" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4kSwwtS_d5h" role="3cqZAp">
          <node concept="37vLTI" id="4kSwwtS_d5j" role="3clFbG">
            <node concept="37vLTw" id="4kSwwtS_d5q" role="37vLTx">
              <ref role="3cqZAo" node="4kSwwtS_d5g" resolve="declaration" />
            </node>
            <node concept="37vLTw" id="4kSwwtS_dpo" role="37vLTJ">
              <ref role="3cqZAo" node="4kSwwtS_cF_" resolve="myDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4kSwwtS_d4S" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="4kSwwtS_d4R" role="1tU5fm">
          <ref role="3uigEE" node="4kSwwtS$sUJ" resolve="Instance" />
        </node>
      </node>
      <node concept="37vLTG" id="4kSwwtS_d54" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="4kSwwtS_d53" role="1tU5fm">
          <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
        </node>
      </node>
      <node concept="37vLTG" id="4kSwwtS_d5g" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="4kSwwtS_d5f" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_ei6" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS_eJT" role="jymVt">
      <property role="TrG5h" value="getNetworkDeclaration" />
      <node concept="3Tm1VV" id="4kSwwtS_eJV" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_eJW" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_eJX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4kSwwtS_eJY" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_f54" role="3cqZAp">
          <node concept="37vLTw" id="4kSwwtS_f51" role="3clFbG">
            <ref role="3cqZAo" node="4kSwwtS_9H4" resolve="myNetwork" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_eJZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_faS" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS_eK2" role="jymVt">
      <property role="TrG5h" value="getChild" />
      <node concept="3Tm1VV" id="4kSwwtS_eK4" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_eK5" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FunctionBlockInstance" />
      </node>
      <node concept="37vLTG" id="4kSwwtS_eK6" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3uibUv" id="4kSwwtS_eK7" role="1tU5fm">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
        </node>
        <node concept="2AHcQZ" id="4kSwwtS_eK8" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_eK9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4kSwwtS_eKa" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_fYz" role="3cqZAp">
          <node concept="1rXfSq" id="4kSwwtS_fYw" role="3clFbG">
            <ref role="37wK5l" node="4kSwwtS$Q8R" resolve="init" />
          </node>
        </node>
        <node concept="3clFbF" id="4kSwwtS_g86" role="3cqZAp">
          <node concept="3EllGN" id="4kSwwtS_gC5" role="3clFbG">
            <node concept="37vLTw" id="4kSwwtS_gKS" role="3ElVtu">
              <ref role="3cqZAo" node="4kSwwtS_eK6" resolve="functionBlock" />
            </node>
            <node concept="37vLTw" id="4kSwwtS_g84" role="3ElQJh">
              <ref role="3cqZAo" node="4kSwwtS_9Ti" resolve="myChildren" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_eKb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_gRd" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS_eKe" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="4kSwwtS_eKg" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_eKh" role="3clF45">
        <ref role="3uigEE" node="4kSwwtS$sUJ" resolve="Instance" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_eKi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4kSwwtS_eKk" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_hFp" role="3cqZAp">
          <node concept="37vLTw" id="4kSwwtS_hFm" role="3clFbG">
            <ref role="3cqZAo" node="4kSwwtS_9Fa" resolve="myParent" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_eKl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_hnJ" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS_eKo" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="4kSwwtS_eKq" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtS_eKr" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_eKs" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4kSwwtS_eKu" role="3clF47">
        <node concept="3clFbF" id="4kSwwtS_hMj" role="3cqZAp">
          <node concept="37vLTw" id="4kSwwtS_hMg" role="3clFbG">
            <ref role="3cqZAo" node="4kSwwtS_cF_" resolve="myDeclaration" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_eKv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kSwwtS_ds$" role="jymVt" />
    <node concept="3clFb_" id="4kSwwtS$Q8R" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3clFbS" id="4kSwwtS$Q8U" role="3clF47">
        <node concept="3clFbJ" id="4kSwwtS$QpG" role="3cqZAp">
          <node concept="3clFbC" id="4kSwwtS$QTB" role="3clFbw">
            <node concept="10Nm6u" id="4kSwwtS$Rbh" role="3uHU7w" />
            <node concept="37vLTw" id="4kSwwtS$Qqi" role="3uHU7B">
              <ref role="3cqZAo" node="4kSwwtS_9Ti" resolve="myChildren" />
            </node>
          </node>
          <node concept="3clFbS" id="4kSwwtS$QpI" role="3clFbx">
            <node concept="1HWtB8" id="4kSwwtS$Sej" role="3cqZAp">
              <node concept="Xjq3P" id="4kSwwtS$Sgj" role="1HWFw0" />
              <node concept="3clFbS" id="4kSwwtS$Sen" role="1HWHxc">
                <node concept="3clFbJ" id="4kSwwtS$SgK" role="3cqZAp">
                  <node concept="3clFbC" id="4kSwwtS$SKC" role="3clFbw">
                    <node concept="10Nm6u" id="4kSwwtS$T2f" role="3uHU7w" />
                    <node concept="37vLTw" id="4kSwwtS$Shm" role="3uHU7B">
                      <ref role="3cqZAo" node="4kSwwtS_9Ti" resolve="myChildren" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4kSwwtS$SgM" role="3clFbx">
                    <node concept="3clFbF" id="4kSwwtS$Ry2" role="3cqZAp">
                      <node concept="37vLTI" id="4kSwwtS$RJt" role="3clFbG">
                        <node concept="37vLTw" id="4kSwwtS$RPF" role="37vLTJ">
                          <ref role="3cqZAo" node="4kSwwtS_9Ti" resolve="myChildren" />
                        </node>
                        <node concept="2ShNRf" id="1QSEqLhVvtk" role="37vLTx">
                          <node concept="1pGfFk" id="1QSEqLhVvSH" role="2ShVmc">
                            <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                            <node concept="3uibUv" id="1QSEqLhVwbs" role="1pMfVU">
                              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
                            </node>
                            <node concept="3uibUv" id="1QSEqLhVA4j" role="1pMfVU">
                              <ref role="3uigEE" node="1QSEqLhV6fd" resolve="FunctionBlockInstance" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4kSwwtS$TGO" role="3cqZAp" />
                    <node concept="2Gpval" id="1QSEqLhVw$K" role="3cqZAp">
                      <node concept="2GrKxI" id="1QSEqLhVw$M" role="2Gsz3X">
                        <property role="TrG5h" value="component" />
                      </node>
                      <node concept="2OqwBi" id="1QSEqLhVwIV" role="2GsD0m">
                        <node concept="37vLTw" id="4kSwwtS$Hat" role="2Oq$k0">
                          <ref role="3cqZAo" node="4kSwwtS_9H4" resolve="myNetwork" />
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
                                <property role="TrG5h" value="innerFunctionBlock" />
                                <node concept="3uibUv" id="1QSEqLhV$bD" role="1tU5fm">
                                  <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
                                </node>
                                <node concept="10QFUN" id="1QSEqLhV$qK" role="33vP2m">
                                  <node concept="3uibUv" id="1QSEqLhV$z7" role="10QFUM">
                                    <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
                                  </node>
                                  <node concept="2GrUjf" id="1QSEqLhV$nB" role="10QFUP">
                                    <ref role="2Gs0qQ" node="1QSEqLhVw$M" resolve="component" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1QSEqLhVxa8" role="3cqZAp">
                              <node concept="37vLTI" id="1QSEqLhV_tX" role="3clFbG">
                                <node concept="3EllGN" id="1QSEqLhVyLL" role="37vLTJ">
                                  <node concept="37vLTw" id="1QSEqLhV_fn" role="3ElVtu">
                                    <ref role="3cqZAo" node="1QSEqLhV$bC" resolve="innerFunctionBlock" />
                                  </node>
                                  <node concept="37vLTw" id="1QSEqLhVxa6" role="3ElQJh">
                                    <ref role="3cqZAo" node="4kSwwtS_9Ti" resolve="myChildren" />
                                  </node>
                                </node>
                                <node concept="2ShNRf" id="1QSEqLhVnfD" role="37vLTx">
                                  <node concept="1pGfFk" id="1QSEqLhVnpo" role="2ShVmc">
                                    <ref role="37wK5l" node="1QSEqLhVkjG" resolve="RegularFunctionBlockInstance" />
                                    <node concept="Xjq3P" id="1QSEqLhVG05" role="37wK5m" />
                                    <node concept="37vLTw" id="1QSEqLhXta1" role="37wK5m">
                                      <ref role="3cqZAo" node="1QSEqLhV$bC" resolve="innerFunctionBlock" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ZW3vV" id="1QSEqLhVzRE" role="3clFbw">
                            <node concept="3uibUv" id="1QSEqLhVzYU" role="2ZW6by">
                              <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
                            </node>
                            <node concept="2GrUjf" id="1QSEqLhVz_n" role="2ZW6bz">
                              <ref role="2Gs0qQ" node="1QSEqLhVw$M" resolve="component" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4kSwwtS$TRL" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4kSwwtS$PMm" role="3clF45" />
      <node concept="3Tm6S6" id="4kSwwtS$Uln" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4kSwwtS_ata" role="jymVt" />
    <node concept="3clFb_" id="1DfKejr9nAp" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="1DfKejr9nAq" role="3clF45" />
      <node concept="3Tm1VV" id="1DfKejr9nAr" role="1B3o_S" />
      <node concept="3clFbS" id="1DfKejr9nAs" role="3clF47">
        <node concept="3clFbJ" id="1DfKejr9nAt" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejr9nAu" role="3clFbx">
            <node concept="3cpWs6" id="1DfKejr9nAv" role="3cqZAp">
              <node concept="3clFbT" id="1DfKejr9nAw" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1DfKejr9nAx" role="3clFbw">
            <node concept="Xjq3P" id="1DfKejr9nAy" role="3uHU7B" />
            <node concept="37vLTw" id="1DfKejr9nAz" role="3uHU7w">
              <ref role="3cqZAo" node="1DfKejr9nB9" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1DfKejr9nA$" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejr9nA_" role="3clFbx">
            <node concept="3cpWs6" id="1DfKejr9nAA" role="3cqZAp">
              <node concept="3clFbT" id="1DfKejr9nAB" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1DfKejr9nAC" role="3clFbw">
            <node concept="1eOMI4" id="1DfKejr9nAD" role="3fr31v">
              <node concept="2ZW3vV" id="1DfKejr9nAE" role="1eOMHV">
                <node concept="3uibUv" id="1DfKejr9pTS" role="2ZW6by">
                  <ref role="3uigEE" node="4kSwwtS_7pe" resolve="RegularNetworkInstance" />
                </node>
                <node concept="37vLTw" id="1DfKejr9nAG" role="2ZW6bz">
                  <ref role="3cqZAo" node="1DfKejr9nB9" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DfKejr9nAH" role="3cqZAp" />
        <node concept="3cpWs8" id="1DfKejr9nAI" role="3cqZAp">
          <node concept="3cpWsn" id="1DfKejr9nAJ" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="1DfKejr9qiB" role="1tU5fm">
              <ref role="3uigEE" node="4kSwwtS_7pe" resolve="RegularNetworkInstance" />
            </node>
            <node concept="10QFUN" id="1DfKejr9nAL" role="33vP2m">
              <node concept="3uibUv" id="1DfKejr9q4U" role="10QFUM">
                <ref role="3uigEE" node="4kSwwtS_7pe" resolve="RegularNetworkInstance" />
              </node>
              <node concept="37vLTw" id="1DfKejr9nAN" role="10QFUP">
                <ref role="3cqZAo" node="1DfKejr9nB9" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1DfKejr9nAO" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejr9nAP" role="3clFbx">
            <node concept="3cpWs6" id="1DfKejr9nAQ" role="3cqZAp">
              <node concept="3clFbT" id="1DfKejr9nAR" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="1DfKejr9nAS" role="3clFbw">
            <node concept="2OqwBi" id="1DfKejr9nAT" role="3uHU7w">
              <node concept="37vLTw" id="1DfKejr9pSZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1DfKejr9nAJ" resolve="that" />
              </node>
              <node concept="2OwXpG" id="1DfKejr9qCW" role="2OqNvi">
                <ref role="2Oxat5" node="4kSwwtS_cF_" resolve="myDeclaration" />
              </node>
            </node>
            <node concept="37vLTw" id="1DfKejr9nAW" role="3uHU7B">
              <ref role="3cqZAo" node="4kSwwtS_cF_" resolve="myDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1DfKejr9nAX" role="3cqZAp">
          <node concept="3clFbS" id="1DfKejr9nAY" role="3clFbx">
            <node concept="3cpWs6" id="1DfKejr9nAZ" role="3cqZAp">
              <node concept="3clFbT" id="1DfKejr9nB0" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="1DfKejr9nB1" role="3clFbw">
            <node concept="2OqwBi" id="1DfKejr9nB2" role="3uHU7w">
              <node concept="37vLTw" id="1DfKejr9nB3" role="2Oq$k0">
                <ref role="3cqZAo" node="1DfKejr9nAJ" resolve="that" />
              </node>
              <node concept="2OwXpG" id="1DfKejr9qOy" role="2OqNvi">
                <ref role="2Oxat5" node="4kSwwtS_9Fa" resolve="myParent" />
              </node>
            </node>
            <node concept="37vLTw" id="1DfKejr9nB5" role="3uHU7B">
              <ref role="3cqZAo" node="4kSwwtS_9Fa" resolve="myParent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DfKejr9nB6" role="3cqZAp" />
        <node concept="3clFbF" id="1DfKejr9nB7" role="3cqZAp">
          <node concept="3clFbT" id="1DfKejr9nB8" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DfKejr9nB9" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1DfKejr9nBa" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1DfKejr9nBb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1DfKejr9nBc" role="jymVt" />
    <node concept="3clFb_" id="1DfKejr9nBd" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="1DfKejr9nBe" role="3clF45" />
      <node concept="3Tm1VV" id="1DfKejr9nBf" role="1B3o_S" />
      <node concept="3clFbS" id="1DfKejr9nBg" role="3clF47">
        <node concept="3clFbF" id="1DfKejr9nBh" role="3cqZAp">
          <node concept="3cpWs3" id="1DfKejr9nBi" role="3clFbG">
            <node concept="2EnYce" id="3jDnUsLUIId" role="3uHU7w">
              <node concept="37vLTw" id="1DfKejr9nBk" role="2Oq$k0">
                <ref role="3cqZAo" node="4kSwwtS_9Fa" resolve="myParent" />
              </node>
              <node concept="liA8E" id="1DfKejr9nBl" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
              </node>
            </node>
            <node concept="17qRlL" id="1DfKejr9nBm" role="3uHU7B">
              <node concept="3cmrfG" id="1DfKejr9nBn" role="3uHU7B">
                <property role="3cmrfH" value="31" />
              </node>
              <node concept="2OqwBi" id="1DfKejr9nBo" role="3uHU7w">
                <node concept="37vLTw" id="1DfKejr9nBp" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kSwwtS_cF_" resolve="myDeclaration" />
                </node>
                <node concept="liA8E" id="1DfKejr9nBq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1DfKejr9nBr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="4kSwwtS_9FH" role="EKbjA">
      <ref role="3uigEE" node="4kSwwtS_6XE" resolve="NetworkInstance" />
    </node>
  </node>
</model>

