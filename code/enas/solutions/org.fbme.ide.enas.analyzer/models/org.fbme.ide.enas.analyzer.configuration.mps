<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0f5e1743-c8a3-4563-9c16-aa34c9de7080(org.fbme.ide.enas.analyzer.configuration)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="sqhf" ref="r:89e73cce-0f43-4b7b-8b73-c16261d7ddc4(org.fbme.ide.enas.lang.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="6z_cCa8nhcN">
    <property role="TrG5h" value="ReceiptCorrectnessChecker" />
    <node concept="2tJIrI" id="6z_cCa8nhef" role="jymVt" />
    <node concept="312cEg" id="6z_cCa8nztc" role="jymVt">
      <property role="TrG5h" value="mySystem" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6z_cCa8nzss" role="1B3o_S" />
      <node concept="3Tqbb2" id="6z_cCa8nzsS" role="1tU5fm">
        <ref role="ehGHo" to="sqhf:6z_cCa8jnyk" resolve="EnasSystem" />
      </node>
    </node>
    <node concept="2tJIrI" id="6z_cCa8nztE" role="jymVt" />
    <node concept="312cEg" id="6z_cCa8nz9J" role="jymVt">
      <property role="TrG5h" value="myConfigurationGraphs" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6z_cCa8nz8Y" role="1B3o_S" />
      <node concept="3rvAFt" id="6z_cCa8nz9p" role="1tU5fm">
        <node concept="3Tqbb2" id="6z_cCa8nz9C" role="3rvQeY">
          <ref role="ehGHo" to="sqhf:6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
        </node>
        <node concept="3uibUv" id="6z_cCa8nz9F" role="3rvSg0">
          <ref role="3uigEE" node="6z_cCa8nibE" resolve="ConfigurationGraph" />
        </node>
      </node>
      <node concept="2ShNRf" id="6z_cCa8nzaR" role="33vP2m">
        <node concept="3rGOSV" id="6z_cCa8nzim" role="2ShVmc">
          <node concept="3uibUv" id="6z_cCa8nzqL" role="3rHtpV">
            <ref role="3uigEE" node="6z_cCa8nibE" resolve="ConfigurationGraph" />
          </node>
          <node concept="3Tqbb2" id="6z_cCa8nzlY" role="3rHrn6">
            <ref role="ehGHo" to="sqhf:6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6z_cCa8nhfq" role="jymVt" />
    <node concept="3Tm1VV" id="6z_cCa8nhcO" role="1B3o_S" />
    <node concept="3clFbW" id="6z_cCa8nzuo" role="jymVt">
      <node concept="3cqZAl" id="6z_cCa8nzup" role="3clF45" />
      <node concept="3Tm1VV" id="6z_cCa8nzuq" role="1B3o_S" />
      <node concept="3clFbS" id="6z_cCa8nzus" role="3clF47">
        <node concept="3clFbF" id="6z_cCa8nzuw" role="3cqZAp">
          <node concept="37vLTI" id="6z_cCa8nzuy" role="3clFbG">
            <node concept="37vLTw" id="6z_cCa8nzuD" role="37vLTx">
              <ref role="3cqZAo" node="6z_cCa8nzuv" resolve="system" />
            </node>
            <node concept="37vLTw" id="6z_cCa8nzLH" role="37vLTJ">
              <ref role="3cqZAo" node="6z_cCa8nztc" resolve="mySystem" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6z_cCa8nzMX" role="3cqZAp">
          <node concept="2GrKxI" id="6z_cCa8nzMZ" role="2Gsz3X">
            <property role="TrG5h" value="configuration" />
          </node>
          <node concept="2OqwBi" id="6z_cCa8nzY6" role="2GsD0m">
            <node concept="37vLTw" id="6z_cCa8nzO7" role="2Oq$k0">
              <ref role="3cqZAo" node="6z_cCa8nzuv" resolve="system" />
            </node>
            <node concept="3Tsc0h" id="6z_cCa8n$6q" role="2OqNvi">
              <ref role="3TtcxE" to="sqhf:6z_cCa8muZr" resolve="configurations" />
            </node>
          </node>
          <node concept="3clFbS" id="6z_cCa8nzN3" role="2LFqv$">
            <node concept="3clFbF" id="6z_cCa8n$ah" role="3cqZAp">
              <node concept="37vLTI" id="6z_cCa8n_pM" role="3clFbG">
                <node concept="2ShNRf" id="6z_cCa8n_v$" role="37vLTx">
                  <node concept="1pGfFk" id="6z_cCa8n_vr" role="2ShVmc">
                    <ref role="37wK5l" node="6z_cCa8nswY" resolve="ConfigurationGraph" />
                    <node concept="2GrUjf" id="6z_cCa8n_xk" role="37wK5m">
                      <ref role="2Gs0qQ" node="6z_cCa8nzMZ" resolve="configuration" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="6z_cCa8n_gF" role="37vLTJ">
                  <node concept="2GrUjf" id="6z_cCa8n_jp" role="3ElVtu">
                    <ref role="2Gs0qQ" node="6z_cCa8nzMZ" resolve="configuration" />
                  </node>
                  <node concept="37vLTw" id="6z_cCa8n$ag" role="3ElQJh">
                    <ref role="3cqZAo" node="6z_cCa8nz9J" resolve="myConfigurationGraphs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6z_cCa8nzuv" role="3clF46">
        <property role="TrG5h" value="system" />
        <node concept="3Tqbb2" id="6z_cCa8nzuu" role="1tU5fm">
          <ref role="ehGHo" to="sqhf:6z_cCa8jnyk" resolve="EnasSystem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6z_cCa8n_AB" role="jymVt" />
    <node concept="3clFb_" id="6z_cCa8nCqa" role="jymVt">
      <property role="TrG5h" value="prepare" />
      <node concept="3clFbS" id="6z_cCa8nCqd" role="3clF47">
        <node concept="2Gpval" id="6z_cCa8nCx6" role="3cqZAp">
          <node concept="2GrKxI" id="6z_cCa8nCx7" role="2Gsz3X">
            <property role="TrG5h" value="configurationGraph" />
          </node>
          <node concept="2OqwBi" id="6z_cCa8nCTG" role="2GsD0m">
            <node concept="37vLTw" id="6z_cCa8nCyM" role="2Oq$k0">
              <ref role="3cqZAo" node="6z_cCa8nz9J" resolve="myConfigurationGraphs" />
            </node>
            <node concept="T8wYR" id="6z_cCa8nDe_" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="6z_cCa8nCx9" role="2LFqv$">
            <node concept="3clFbF" id="6z_cCa8nDgg" role="3cqZAp">
              <node concept="2OqwBi" id="6z_cCa8nDre" role="3clFbG">
                <node concept="2GrUjf" id="6z_cCa8nDgf" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="6z_cCa8nCx7" resolve="configurationGraph" />
                </node>
                <node concept="liA8E" id="6z_cCa8nD_K" role="2OqNvi">
                  <ref role="37wK5l" node="6z_cCa8nBXB" resolve="build" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6z_cCa8nCiE" role="1B3o_S" />
      <node concept="3cqZAl" id="6z_cCa8nCnX" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6z_cCa8n_Bg" role="jymVt" />
  </node>
  <node concept="312cEu" id="6z_cCa8nhfF">
    <property role="TrG5h" value="ReceiptState" />
    <node concept="2tJIrI" id="6z_cCa8nhgb" role="jymVt" />
    <node concept="312cEg" id="6z_cCa8nhgW" role="jymVt">
      <property role="TrG5h" value="point" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="6z_cCa8nhgq" role="1tU5fm">
        <ref role="ehGHo" to="sqhf:6z_cCa8jqec" resolve="PointDeclaration" />
      </node>
      <node concept="3Tm1VV" id="6z_cCa8nhhd" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6z_cCa8nhhs" role="jymVt">
      <property role="TrG5h" value="configuration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="6z_cCa8nhht" role="1tU5fm">
        <ref role="ehGHo" to="sqhf:6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
      </node>
      <node concept="3Tm1VV" id="6z_cCa8nhhu" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6z_cCa8nhi8" role="jymVt" />
    <node concept="3Tm1VV" id="6z_cCa8nhfG" role="1B3o_S" />
    <node concept="3clFbW" id="6z_cCa8nhiR" role="jymVt">
      <node concept="3cqZAl" id="6z_cCa8nhiS" role="3clF45" />
      <node concept="3Tm1VV" id="6z_cCa8nhiT" role="1B3o_S" />
      <node concept="3clFbS" id="6z_cCa8nhiV" role="3clF47">
        <node concept="3clFbF" id="6z_cCa8nhiZ" role="3cqZAp">
          <node concept="37vLTI" id="6z_cCa8nhj1" role="3clFbG">
            <node concept="2OqwBi" id="6z_cCa8nhj5" role="37vLTJ">
              <node concept="Xjq3P" id="6z_cCa8nhj6" role="2Oq$k0" />
              <node concept="2OwXpG" id="6z_cCa8nhj7" role="2OqNvi">
                <ref role="2Oxat5" node="6z_cCa8nhgW" resolve="point" />
              </node>
            </node>
            <node concept="37vLTw" id="6z_cCa8nhj8" role="37vLTx">
              <ref role="3cqZAo" node="6z_cCa8nhiY" resolve="point" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6z_cCa8nhjb" role="3cqZAp">
          <node concept="37vLTI" id="6z_cCa8nhjd" role="3clFbG">
            <node concept="2OqwBi" id="6z_cCa8nhjh" role="37vLTJ">
              <node concept="Xjq3P" id="6z_cCa8nhji" role="2Oq$k0" />
              <node concept="2OwXpG" id="6z_cCa8nhjj" role="2OqNvi">
                <ref role="2Oxat5" node="6z_cCa8nhhs" resolve="configuration" />
              </node>
            </node>
            <node concept="37vLTw" id="6z_cCa8nhjk" role="37vLTx">
              <ref role="3cqZAo" node="6z_cCa8nhja" resolve="configuration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6z_cCa8nhiY" role="3clF46">
        <property role="TrG5h" value="point" />
        <node concept="3Tqbb2" id="6z_cCa8nhiX" role="1tU5fm">
          <ref role="ehGHo" to="sqhf:6z_cCa8jqec" resolve="PointDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="6z_cCa8nhja" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <node concept="3Tqbb2" id="6z_cCa8nhj9" role="1tU5fm">
          <ref role="ehGHo" to="sqhf:6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6z_cCa8nhty">
    <property role="TrG5h" value="ReceiptItemTranslation" />
    <node concept="2tJIrI" id="6z_cCa8nhvy" role="jymVt" />
    <node concept="312cEg" id="6z_cCa8nhvB" role="jymVt">
      <property role="TrG5h" value="sourcePoint" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="6z_cCa8nhvC" role="1tU5fm">
        <ref role="ehGHo" to="sqhf:6z_cCa8jqec" resolve="PointDeclaration" />
      </node>
      <node concept="3Tm1VV" id="6z_cCa8nhvD" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6z_cCa8nh_t" role="jymVt">
      <property role="TrG5h" value="targetPoint" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="6z_cCa8nh_u" role="1tU5fm">
        <ref role="ehGHo" to="sqhf:6z_cCa8jqec" resolve="PointDeclaration" />
      </node>
      <node concept="3Tm1VV" id="6z_cCa8nh_v" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6z_cCa8nhvE" role="jymVt">
      <property role="TrG5h" value="configuration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="6z_cCa8nhvF" role="1tU5fm">
        <ref role="ehGHo" to="sqhf:6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
      </node>
      <node concept="3Tm1VV" id="6z_cCa8nhvG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6z_cCa8nhvH" role="jymVt" />
    <node concept="3clFbW" id="6z_cCa8nhvI" role="jymVt">
      <node concept="3cqZAl" id="6z_cCa8nhvJ" role="3clF45" />
      <node concept="3Tm1VV" id="6z_cCa8nhvK" role="1B3o_S" />
      <node concept="3clFbS" id="6z_cCa8nhvL" role="3clF47">
        <node concept="3clFbF" id="6z_cCa8nhvM" role="3cqZAp">
          <node concept="37vLTI" id="6z_cCa8nhvN" role="3clFbG">
            <node concept="2OqwBi" id="6z_cCa8nhvO" role="37vLTJ">
              <node concept="Xjq3P" id="6z_cCa8nhvP" role="2Oq$k0" />
              <node concept="2OwXpG" id="6z_cCa8nhvQ" role="2OqNvi">
                <ref role="2Oxat5" node="6z_cCa8nhvB" resolve="sourcePoint" />
              </node>
            </node>
            <node concept="37vLTw" id="6z_cCa8nhvR" role="37vLTx">
              <ref role="3cqZAo" node="6z_cCa8nhvY" resolve="sourcePoint" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6z_cCa8nhH6" role="3cqZAp">
          <node concept="37vLTI" id="6z_cCa8ni7n" role="3clFbG">
            <node concept="37vLTw" id="6z_cCa8ni8x" role="37vLTx">
              <ref role="3cqZAo" node="6z_cCa8nhEb" resolve="targetPoint" />
            </node>
            <node concept="2OqwBi" id="6z_cCa8nhPw" role="37vLTJ">
              <node concept="Xjq3P" id="6z_cCa8nhH4" role="2Oq$k0" />
              <node concept="2OwXpG" id="6z_cCa8nhVv" role="2OqNvi">
                <ref role="2Oxat5" node="6z_cCa8nh_t" resolve="targetPoint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6z_cCa8nhvS" role="3cqZAp">
          <node concept="37vLTI" id="6z_cCa8nhvT" role="3clFbG">
            <node concept="2OqwBi" id="6z_cCa8nhvU" role="37vLTJ">
              <node concept="Xjq3P" id="6z_cCa8nhvV" role="2Oq$k0" />
              <node concept="2OwXpG" id="6z_cCa8nhvW" role="2OqNvi">
                <ref role="2Oxat5" node="6z_cCa8nhvE" resolve="configuration" />
              </node>
            </node>
            <node concept="37vLTw" id="6z_cCa8nhvX" role="37vLTx">
              <ref role="3cqZAo" node="6z_cCa8nhw0" resolve="configuration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6z_cCa8nhvY" role="3clF46">
        <property role="TrG5h" value="sourcePoint" />
        <node concept="3Tqbb2" id="6z_cCa8nhvZ" role="1tU5fm">
          <ref role="ehGHo" to="sqhf:6z_cCa8jqec" resolve="PointDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="6z_cCa8nhEb" role="3clF46">
        <property role="TrG5h" value="targetPoint" />
        <node concept="3Tqbb2" id="6z_cCa8nhFa" role="1tU5fm">
          <ref role="ehGHo" to="sqhf:6z_cCa8jqec" resolve="PointDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="6z_cCa8nhw0" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <node concept="3Tqbb2" id="6z_cCa8nhw1" role="1tU5fm">
          <ref role="ehGHo" to="sqhf:6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6z_cCa8nhv$" role="jymVt" />
    <node concept="3Tm1VV" id="6z_cCa8nhtz" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6z_cCa8nibE">
    <property role="TrG5h" value="ConfigurationGraph" />
    <node concept="2tJIrI" id="6z_cCa8nicM" role="jymVt" />
    <node concept="312cEg" id="6z_cCa8ns5L" role="jymVt">
      <property role="TrG5h" value="mySystem" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6z_cCa8nrp8" role="1B3o_S" />
      <node concept="3Tqbb2" id="6z_cCa8ns5d" role="1tU5fm">
        <ref role="ehGHo" to="sqhf:6z_cCa8jnyk" resolve="EnasSystem" />
      </node>
    </node>
    <node concept="312cEg" id="6z_cCa8nqi1" role="jymVt">
      <property role="TrG5h" value="myConfiguration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6z_cCa8nq9y" role="1B3o_S" />
      <node concept="3Tqbb2" id="6z_cCa8nqht" role="1tU5fm">
        <ref role="ehGHo" to="sqhf:6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="6z_cCa8niel" role="jymVt">
      <property role="TrG5h" value="myGraph" />
      <property role="3TUv4t" value="true" />
      <node concept="3rvAFt" id="6z_cCa8nidP" role="1tU5fm">
        <node concept="3uibUv" id="6z_cCa8niVR" role="3rvQeY">
          <ref role="3uigEE" node="6z_cCa8nigy" resolve="ConfigurationGraph.ItemPoint" />
        </node>
        <node concept="2hMVRd" id="6z_cCa8niee" role="3rvSg0">
          <node concept="3uibUv" id="6z_cCa8niWN" role="2hN53Y">
            <ref role="3uigEE" node="6z_cCa8nigy" resolve="ConfigurationGraph.ItemPoint" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6z_cCa8nieO" role="1B3o_S" />
      <node concept="2ShNRf" id="6z_cCa8no$S" role="33vP2m">
        <node concept="3rGOSV" id="6z_cCa8noGG" role="2ShVmc">
          <node concept="3uibUv" id="6z_cCa8noPG" role="3rHrn6">
            <ref role="3uigEE" node="6z_cCa8nigy" resolve="ConfigurationGraph.ItemPoint" />
          </node>
          <node concept="2hMVRd" id="6z_cCa8noXn" role="3rHtpV">
            <node concept="3uibUv" id="6z_cCa8noXo" role="2hN53Y">
              <ref role="3uigEE" node="6z_cCa8nigy" resolve="ConfigurationGraph.ItemPoint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6z_cCa8nif$" role="jymVt" />
    <node concept="3clFbW" id="6z_cCa8nswY" role="jymVt">
      <node concept="3cqZAl" id="6z_cCa8nswZ" role="3clF45" />
      <node concept="3Tm1VV" id="6z_cCa8nsx0" role="1B3o_S" />
      <node concept="3clFbS" id="6z_cCa8nsx2" role="3clF47">
        <node concept="3clFbF" id="6z_cCa8ntQ4" role="3cqZAp">
          <node concept="37vLTI" id="6z_cCa8nu1h" role="3clFbG">
            <node concept="1PxgMI" id="6z_cCa8nuxn" role="37vLTx">
              <node concept="chp4Y" id="6z_cCa8nuyh" role="3oSUPX">
                <ref role="cht4Q" to="sqhf:6z_cCa8jnyk" resolve="EnasSystem" />
              </node>
              <node concept="2OqwBi" id="6z_cCa8nudq" role="1m5AlR">
                <node concept="37vLTw" id="6z_cCa8nu3r" role="2Oq$k0">
                  <ref role="3cqZAo" node="6z_cCa8nsx5" resolve="configuration" />
                </node>
                <node concept="1mfA1w" id="6z_cCa8nunE" role="2OqNvi" />
              </node>
            </node>
            <node concept="37vLTw" id="6z_cCa8ntQ2" role="37vLTJ">
              <ref role="3cqZAo" node="6z_cCa8ns5L" resolve="mySystem" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6z_cCa8nsx6" role="3cqZAp">
          <node concept="37vLTI" id="6z_cCa8nsx8" role="3clFbG">
            <node concept="37vLTw" id="6z_cCa8nsxf" role="37vLTx">
              <ref role="3cqZAo" node="6z_cCa8nsx5" resolve="configuration" />
            </node>
            <node concept="37vLTw" id="6z_cCa8ntOE" role="37vLTJ">
              <ref role="3cqZAo" node="6z_cCa8nqi1" resolve="myConfiguration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6z_cCa8nsx5" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <node concept="3Tqbb2" id="6z_cCa8nsx4" role="1tU5fm">
          <ref role="ehGHo" to="sqhf:6z_cCa8lYeT" resolve="ConfigurationDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6z_cCa8nv$O" role="jymVt" />
    <node concept="3clFb_" id="6z_cCa8nBXB" role="jymVt">
      <property role="TrG5h" value="build" />
      <node concept="3clFbS" id="6z_cCa8nBXE" role="3clF47">
        <node concept="1X3_iC" id="35wFMGxkZSr" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="35wFMGxkKf2" role="8Wnug">
            <node concept="3cpWsn" id="35wFMGxkKf5" role="3cpWs9">
              <property role="TrG5h" value="sections" />
              <node concept="3rvAFt" id="35wFMGxkW9J" role="1tU5fm">
                <node concept="3uibUv" id="35wFMGxkWXV" role="3rvSg0">
                  <ref role="3uigEE" node="35wFMGxkSH_" resolve="ConfigurationGraph.SectionSpec" />
                </node>
                <node concept="3Tqbb2" id="35wFMGxkKgb" role="3rvQeY">
                  <ref role="ehGHo" to="sqhf:6z_cCa8jnym" resolve="StandartSection" />
                </node>
              </node>
              <node concept="2ShNRf" id="35wFMGxkKhG" role="33vP2m">
                <node concept="Tc6Ow" id="35wFMGxkLtj" role="2ShVmc">
                  <node concept="3Tqbb2" id="35wFMGxkLJJ" role="HW$YZ">
                    <ref role="ehGHo" to="sqhf:6z_cCa8jnym" resolve="StandartSection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="35wFMGxkZSs" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="35wFMGxkQ40" role="8Wnug">
            <node concept="3cpWsn" id="35wFMGxkQ43" role="3cpWs9">
              <property role="TrG5h" value="srSections" />
              <node concept="2ShNRf" id="35wFMGxkQ8f" role="33vP2m">
                <node concept="Tc6Ow" id="35wFMGxkQfG" role="2ShVmc">
                  <node concept="3Tqbb2" id="35wFMGxkQy8" role="HW$YZ">
                    <ref role="ehGHo" to="sqhf:6z_cCa8jC2T" resolve="SRSection" />
                  </node>
                </node>
              </node>
              <node concept="3rvAFt" id="35wFMGxkXo_" role="1tU5fm">
                <node concept="3uibUv" id="35wFMGxkXoA" role="3rvSg0">
                  <ref role="3uigEE" node="35wFMGxkSH_" resolve="ConfigurationGraph.SectionSpec" />
                </node>
                <node concept="3Tqbb2" id="35wFMGxkXoB" role="3rvQeY">
                  <ref role="ehGHo" to="sqhf:6z_cCa8jC2T" resolve="SRSection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="35wFMGxkZSt" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="35wFMGxkQOM" role="8Wnug">
            <node concept="3cpWsn" id="35wFMGxkQOP" role="3cpWs9">
              <property role="TrG5h" value="closedGates" />
              <node concept="_YKpA" id="35wFMGxkQOI" role="1tU5fm">
                <node concept="3Tqbb2" id="35wFMGxkQQh" role="_ZDj9">
                  <ref role="ehGHo" to="sqhf:6z_cCa8jn$d" resolve="SectionGate" />
                </node>
              </node>
              <node concept="2ShNRf" id="35wFMGxkQSU" role="33vP2m">
                <node concept="Tc6Ow" id="35wFMGxkR0n" role="2ShVmc">
                  <node concept="3Tqbb2" id="35wFMGxkRiN" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="35wFMGxkZSu" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="35wFMGxkLKm" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="35wFMGxkZSv" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2Gpval" id="35wFMGxkJCN" role="8Wnug">
            <node concept="2GrKxI" id="35wFMGxkJCO" role="2Gsz3X">
              <property role="TrG5h" value="component" />
            </node>
            <node concept="2OqwBi" id="35wFMGxkJP4" role="2GsD0m">
              <node concept="37vLTw" id="35wFMGxkJDN" role="2Oq$k0">
                <ref role="3cqZAo" node="6z_cCa8ns5L" resolve="mySystem" />
              </node>
              <node concept="3Tsc0h" id="35wFMGxkJZb" role="2OqNvi">
                <ref role="3TtcxE" to="sqhf:6z_cCa8jn$G" resolve="components" />
              </node>
            </node>
            <node concept="3clFbS" id="35wFMGxkJCQ" role="2LFqv$">
              <node concept="3clFbJ" id="35wFMGxkK2b" role="3cqZAp">
                <node concept="2GrUjf" id="35wFMGxkK2V" role="3clFbw">
                  <ref role="2Gs0qQ" node="35wFMGxkJCO" resolve="component" />
                </node>
                <node concept="3clFbS" id="35wFMGxkK2d" role="3clFbx" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6z_cCa8nATO" role="1B3o_S" />
      <node concept="3cqZAl" id="6z_cCa8nBoi" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6z_cCa8nAck" role="jymVt" />
    <node concept="3clFb_" id="6z_cCa8nwNs" role="jymVt">
      <property role="TrG5h" value="isReachable" />
      <node concept="3clFbS" id="6z_cCa8nwNv" role="3clF47">
        <node concept="3clFbF" id="35wFMGxkZUt" role="3cqZAp">
          <node concept="3clFbT" id="35wFMGxkZUs" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6z_cCa8nwEl" role="1B3o_S" />
      <node concept="10P_77" id="6z_cCa8ny7V" role="3clF45" />
      <node concept="37vLTG" id="6z_cCa8nwWD" role="3clF46">
        <property role="TrG5h" value="from" />
        <node concept="3Tqbb2" id="6z_cCa8nwWC" role="1tU5fm">
          <ref role="ehGHo" to="sqhf:6z_cCa8jqec" resolve="PointDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="6z_cCa8nxYX" role="3clF46">
        <property role="TrG5h" value="to" />
        <node concept="3Tqbb2" id="6z_cCa8ny5N" role="1tU5fm">
          <ref role="ehGHo" to="sqhf:6z_cCa8jqec" resolve="PointDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6z_cCa8nig1" role="jymVt" />
    <node concept="312cEu" id="35wFMGxkSH_" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="SectionSpec" />
      <node concept="312cEg" id="35wFMGxkSYN" role="jymVt">
        <property role="TrG5h" value="itemStartsX" />
        <node concept="10Oyi0" id="35wFMGxkSXX" role="1tU5fm" />
        <node concept="3Tm1VV" id="35wFMGxkT2r" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="35wFMGxkT1y" role="jymVt">
        <property role="TrG5h" value="itemStartsY" />
        <node concept="10Oyi0" id="35wFMGxkT0v" role="1tU5fm" />
        <node concept="3Tm1VV" id="35wFMGxkT2C" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="35wFMGxkT3I" role="jymVt">
        <property role="TrG5h" value="itemEndsX" />
        <node concept="10Oyi0" id="35wFMGxkT3J" role="1tU5fm" />
        <node concept="3Tm1VV" id="35wFMGxkT3K" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="35wFMGxkT3L" role="jymVt">
        <property role="TrG5h" value="itemEndsY" />
        <node concept="10Oyi0" id="35wFMGxkT3M" role="1tU5fm" />
        <node concept="3Tm1VV" id="35wFMGxkT3N" role="1B3o_S" />
      </node>
      <node concept="3Tm1VV" id="35wFMGxkSHA" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="35wFMGxkR$x" role="jymVt" />
    <node concept="312cEu" id="6z_cCa8nigy" role="jymVt">
      <property role="TrG5h" value="ItemPoint" />
      <node concept="312cEg" id="6z_cCa8niMA" role="jymVt">
        <property role="TrG5h" value="sectionIndex" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="6z_cCa8niNI" role="1B3o_S" />
        <node concept="10Oyi0" id="6z_cCa8niMr" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="6z_cCa8niT3" role="jymVt">
        <property role="TrG5h" value="sectionPointKind" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="6z_cCa8niNW" role="1B3o_S" />
        <node concept="3uibUv" id="6z_cCa8niQJ" role="1tU5fm">
          <ref role="3uigEE" node="6z_cCa8niiZ" resolve="ConfigurationGraph.Kind" />
        </node>
      </node>
      <node concept="2tJIrI" id="6z_cCa8niXw" role="jymVt" />
      <node concept="3Tm1VV" id="6z_cCa8nigz" role="1B3o_S" />
      <node concept="3clFbW" id="6z_cCa8niYg" role="jymVt">
        <node concept="3cqZAl" id="6z_cCa8niYh" role="3clF45" />
        <node concept="3Tm1VV" id="6z_cCa8niYi" role="1B3o_S" />
        <node concept="3clFbS" id="6z_cCa8niYk" role="3clF47">
          <node concept="3clFbF" id="6z_cCa8niYo" role="3cqZAp">
            <node concept="37vLTI" id="6z_cCa8niYq" role="3clFbG">
              <node concept="2OqwBi" id="6z_cCa8niYu" role="37vLTJ">
                <node concept="Xjq3P" id="6z_cCa8niYv" role="2Oq$k0" />
                <node concept="2OwXpG" id="6z_cCa8niYw" role="2OqNvi">
                  <ref role="2Oxat5" node="6z_cCa8niMA" resolve="sectionIndex" />
                </node>
              </node>
              <node concept="37vLTw" id="6z_cCa8niYx" role="37vLTx">
                <ref role="3cqZAo" node="6z_cCa8niYn" resolve="sectionIndex" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6z_cCa8niY$" role="3cqZAp">
            <node concept="37vLTI" id="6z_cCa8niYA" role="3clFbG">
              <node concept="2OqwBi" id="6z_cCa8niYE" role="37vLTJ">
                <node concept="Xjq3P" id="6z_cCa8niYF" role="2Oq$k0" />
                <node concept="2OwXpG" id="6z_cCa8niYG" role="2OqNvi">
                  <ref role="2Oxat5" node="6z_cCa8niT3" resolve="sectionPointKind" />
                </node>
              </node>
              <node concept="37vLTw" id="6z_cCa8niYH" role="37vLTx">
                <ref role="3cqZAo" node="6z_cCa8niYz" resolve="sectionPointKind" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6z_cCa8niYn" role="3clF46">
          <property role="TrG5h" value="sectionIndex" />
          <node concept="10Oyi0" id="6z_cCa8niYm" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="6z_cCa8niYz" role="3clF46">
          <property role="TrG5h" value="sectionPointKind" />
          <node concept="3uibUv" id="6z_cCa8niYy" role="1tU5fm">
            <ref role="3uigEE" node="6z_cCa8niiZ" resolve="ConfigurationGraph.Kind" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6z_cCa8njgX" role="jymVt" />
      <node concept="2tJIrI" id="6z_cCa8njhq" role="jymVt" />
      <node concept="3clFb_" id="6z_cCa8njjr" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="6z_cCa8njjs" role="3clF45" />
        <node concept="3Tm1VV" id="6z_cCa8njjt" role="1B3o_S" />
        <node concept="3clFbS" id="6z_cCa8njju" role="3clF47">
          <node concept="3clFbJ" id="6z_cCa8njjv" role="3cqZAp">
            <node concept="3clFbS" id="6z_cCa8njjw" role="3clFbx">
              <node concept="3cpWs6" id="6z_cCa8njjx" role="3cqZAp">
                <node concept="3clFbT" id="6z_cCa8njjy" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="6z_cCa8njjz" role="3clFbw">
              <node concept="Xjq3P" id="6z_cCa8njjq" role="3uHU7B" />
              <node concept="37vLTw" id="6z_cCa8njj$" role="3uHU7w">
                <ref role="3cqZAo" node="6z_cCa8njjV" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6z_cCa8njj_" role="3cqZAp">
            <node concept="3clFbS" id="6z_cCa8njjA" role="3clFbx">
              <node concept="3cpWs6" id="6z_cCa8njjB" role="3cqZAp">
                <node concept="3clFbT" id="6z_cCa8njjC" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="6z_cCa8nnVk" role="3clFbw">
              <node concept="1eOMI4" id="6z_cCa8nnVm" role="3fr31v">
                <node concept="2ZW3vV" id="6z_cCa8note" role="1eOMHV">
                  <node concept="3uibUv" id="6z_cCa8nowE" role="2ZW6by">
                    <ref role="3uigEE" node="6z_cCa8nigy" resolve="ConfigurationGraph.ItemPoint" />
                  </node>
                  <node concept="37vLTw" id="6z_cCa8nomh" role="2ZW6bz">
                    <ref role="3cqZAo" node="6z_cCa8njjV" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6z_cCa8njjO" role="3cqZAp" />
          <node concept="3cpWs8" id="6z_cCa8njjP" role="3cqZAp">
            <node concept="3cpWsn" id="6z_cCa8njjQ" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="6z_cCa8njjR" role="1tU5fm">
                <ref role="3uigEE" node="6z_cCa8nigy" resolve="ConfigurationGraph.ItemPoint" />
              </node>
              <node concept="10QFUN" id="6z_cCa8njjS" role="33vP2m">
                <node concept="3uibUv" id="6z_cCa8njjT" role="10QFUM">
                  <ref role="3uigEE" node="6z_cCa8nigy" resolve="ConfigurationGraph.ItemPoint" />
                </node>
                <node concept="37vLTw" id="6z_cCa8njjU" role="10QFUP">
                  <ref role="3cqZAo" node="6z_cCa8njjV" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6z_cCa8njk3" role="3cqZAp">
            <node concept="3y3z36" id="6z_cCa8njk4" role="3clFbw">
              <node concept="2OqwBi" id="6z_cCa8njk5" role="3uHU7w">
                <node concept="37vLTw" id="6z_cCa8njjY" role="2Oq$k0">
                  <ref role="3cqZAo" node="6z_cCa8njjQ" resolve="that" />
                </node>
                <node concept="2OwXpG" id="6z_cCa8njk1" role="2OqNvi">
                  <ref role="2Oxat5" node="6z_cCa8niMA" resolve="sectionIndex" />
                </node>
              </node>
              <node concept="37vLTw" id="6z_cCa8njk2" role="3uHU7B">
                <ref role="3cqZAo" node="6z_cCa8niMA" resolve="sectionIndex" />
              </node>
            </node>
            <node concept="3clFbS" id="6z_cCa8njk6" role="3clFbx">
              <node concept="3cpWs6" id="6z_cCa8njk7" role="3cqZAp">
                <node concept="3clFbT" id="6z_cCa8njk8" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6z_cCa8njkd" role="3cqZAp">
            <node concept="3clFbS" id="6z_cCa8njke" role="3clFbx">
              <node concept="3cpWs6" id="6z_cCa8njkf" role="3cqZAp">
                <node concept="3clFbT" id="6z_cCa8njkg" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6z_cCa8nmEo" role="3clFbw">
              <node concept="2OqwBi" id="6z_cCa8nn2Y" role="3uHU7w">
                <node concept="37vLTw" id="6z_cCa8nmW6" role="2Oq$k0">
                  <ref role="3cqZAo" node="6z_cCa8njjQ" resolve="that" />
                </node>
                <node concept="2OwXpG" id="6z_cCa8nn9G" role="2OqNvi">
                  <ref role="2Oxat5" node="6z_cCa8niT3" resolve="sectionPointKind" />
                </node>
              </node>
              <node concept="37vLTw" id="6z_cCa8nm7b" role="3uHU7B">
                <ref role="3cqZAo" node="6z_cCa8niT3" resolve="sectionPointKind" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6z_cCa8njkt" role="3cqZAp" />
          <node concept="3clFbF" id="6z_cCa8njku" role="3cqZAp">
            <node concept="3clFbT" id="6z_cCa8njkv" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6z_cCa8njjV" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="6z_cCa8njjW" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6z_cCa8njjX" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6z_cCa8njkw" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="6z_cCa8njkx" role="3clF45" />
        <node concept="3Tm1VV" id="6z_cCa8njky" role="1B3o_S" />
        <node concept="3clFbS" id="6z_cCa8njkz" role="3clF47">
          <node concept="3cpWs8" id="6z_cCa8njk_" role="3cqZAp">
            <node concept="3cpWsn" id="6z_cCa8njkA" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="10Oyi0" id="6z_cCa8njkB" role="1tU5fm" />
              <node concept="3cmrfG" id="6z_cCa8njkC" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6z_cCa8njkL" role="3cqZAp">
            <node concept="37vLTI" id="6z_cCa8njkM" role="3clFbG">
              <node concept="37vLTw" id="6z_cCa8njkN" role="37vLTJ">
                <ref role="3cqZAo" node="6z_cCa8njkA" resolve="result" />
              </node>
              <node concept="3cpWs3" id="6z_cCa8njkO" role="37vLTx">
                <node concept="37vLTw" id="6z_cCa8njkK" role="3uHU7w">
                  <ref role="3cqZAo" node="6z_cCa8niMA" resolve="sectionIndex" />
                </node>
                <node concept="17qRlL" id="6z_cCa8njkI" role="3uHU7B">
                  <node concept="3cmrfG" id="6z_cCa8njkJ" role="3uHU7B">
                    <property role="3cmrfH" value="31" />
                  </node>
                  <node concept="37vLTw" id="6z_cCa8njkD" role="3uHU7w">
                    <ref role="3cqZAo" node="6z_cCa8njkA" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6z_cCa8njkU" role="3cqZAp">
            <node concept="37vLTI" id="6z_cCa8njkV" role="3clFbG">
              <node concept="3cpWs3" id="6z_cCa8njkW" role="37vLTx">
                <node concept="17qRlL" id="6z_cCa8njkP" role="3uHU7B">
                  <node concept="3cmrfG" id="6z_cCa8njkQ" role="3uHU7B">
                    <property role="3cmrfH" value="31" />
                  </node>
                  <node concept="37vLTw" id="6z_cCa8njkR" role="3uHU7w">
                    <ref role="3cqZAo" node="6z_cCa8njkA" resolve="result" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6z_cCa8njl2" role="3uHU7w">
                  <node concept="37vLTw" id="6z_cCa8njkT" role="2Oq$k0">
                    <ref role="3cqZAo" node="6z_cCa8niT3" resolve="sectionPointKind" />
                  </node>
                  <node concept="liA8E" id="6z_cCa8njl6" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Enum.hashCode()" resolve="hashCode" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6z_cCa8njl7" role="37vLTJ">
                <ref role="3cqZAo" node="6z_cCa8njkA" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6z_cCa8njl8" role="3cqZAp">
            <node concept="37vLTw" id="6z_cCa8njl9" role="3clFbG">
              <ref role="3cqZAo" node="6z_cCa8njkA" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6z_cCa8njk$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6z_cCa8nii0" role="jymVt" />
    <node concept="Qs71p" id="6z_cCa8niiZ" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Kind" />
      <node concept="QsSxf" id="6z_cCa8niql" role="Qtgdg">
        <property role="TrG5h" value="STANDART_START" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="6z_cCa8nivi" role="Qtgdg">
        <property role="TrG5h" value="STANDART_DELIVERY" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="35wFMGxkYdg" role="Qtgdg">
        <property role="TrG5h" value="STANDART_END" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="6z_cCa8niDn" role="Qtgdg">
        <property role="TrG5h" value="SR_START" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="35wFMGxkYXb" role="Qtgdg">
        <property role="TrG5h" value="SR_END" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="6z_cCa8nij0" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6z_cCa8nibF" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6z_cCa8nCim">
    <property role="TrG5h" value="ReceiptCheckResult" />
    <node concept="3Tm1VV" id="6z_cCa8nCin" role="1B3o_S" />
  </node>
</model>

