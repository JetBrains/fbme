<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b09c5f9b-eaf5-42ce-8c06-05ad1ccd4ce3(scenes.controllers.components)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="hyqd" ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(scenes.viewmodel)" />
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(scenes.controllers)" />
    <import index="3bo0" ref="r:2b66dd0d-2c90-4da0-994d-d7579a6bca2a(scenes.controllers.scene)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="5lkm" ref="r:7effb02f-bde4-4d2f-b844-eefa6ab09c8c(scenes.controllers.diagram)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
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
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
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
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
    </language>
  </registry>
  <node concept="3HP615" id="1KCfUoKRRlk">
    <property role="TrG5h" value="ComponentController" />
    <node concept="2tJIrI" id="4y$DvIXpx67" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXp_gc" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3clFbS" id="4y$DvIXp_gf" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXp_gg" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24HBC9" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIXp_ia" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="1iOpS24JPep" role="3clF46">
        <property role="TrG5h" value="form" />
        <node concept="16syzq" id="1iOpS24JPeo" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24IWdm" resolve="FormT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24HBAC" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpAdhg" role="jymVt">
      <property role="TrG5h" value="canStartMoveAt" />
      <node concept="3clFbS" id="4O0ojQpAdhj" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpAdhk" role="1B3o_S" />
      <node concept="10P_77" id="4O0ojQpAdrg" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24JPrP" role="3clF46">
        <property role="TrG5h" value="form" />
        <node concept="16syzq" id="1iOpS24JPtZ" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24IWdm" resolve="FormT" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpAdog" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="4O0ojQpAdof" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4O0ojQpAfrK" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="4O0ojQpAfuN" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24IWeC" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24IWj_" role="jymVt">
      <property role="TrG5h" value="translateForm" />
      <node concept="3clFbS" id="1iOpS24IWjC" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS24IWjD" role="1B3o_S" />
      <node concept="16syzq" id="1iOpS24IWiX" role="3clF45">
        <ref role="16sUi3" node="1iOpS24IWdm" resolve="FormT" />
      </node>
      <node concept="37vLTG" id="1iOpS24JP6h" role="3clF46">
        <property role="TrG5h" value="originalForm" />
        <node concept="16syzq" id="1iOpS24JP9A" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24IWdm" resolve="FormT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24IWmo" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="1iOpS24IWmn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iOpS24IWo_" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="1iOpS24IWqX" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1iOpS24IWsE" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24JPDW" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24JPPd" role="jymVt">
      <property role="TrG5h" value="transformFormAt" />
      <node concept="3clFbS" id="1iOpS24JPPg" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS24JPPh" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24JPHj" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="1iOpS24JPLw" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="16syzq" id="1iOpS24JPNW" role="11_B2D">
          <ref role="16sUi3" node="1iOpS24IWdm" resolve="FormT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24JPYw" role="3clF46">
        <property role="TrG5h" value="originalForm" />
        <node concept="16syzq" id="1iOpS24JPYx" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24IWdm" resolve="FormT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24JPST" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1iOpS24JPSS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iOpS24JPVp" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1iOpS24JPVX" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIVNz1f" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIVNz4K" role="jymVt">
      <property role="TrG5h" value="synchronize" />
      <node concept="3clFbS" id="4y$DvIVNz4N" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIVNz4O" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIVNz42" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1iOpS24JPpL" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJz_fg" role="jymVt">
      <property role="TrG5h" value="getComponentCell" />
      <node concept="3clFbS" id="17nGqbJz_fj" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJz_fk" role="1B3o_S" />
      <node concept="2AHcQZ" id="17nGqbJz_gw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="17nGqbJzWUw" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24JPvQ" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24JP$C" role="jymVt">
      <property role="TrG5h" value="updateCellWithForm" />
      <node concept="3clFbS" id="1iOpS24JP$F" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS24JP$G" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24JPyN" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24JPBE" role="3clF46">
        <property role="TrG5h" value="form" />
        <node concept="16syzq" id="1iOpS24JPBD" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24IWdm" resolve="FormT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IQS4Q7" role="jymVt" />
    <node concept="3clFb_" id="38k27IQS4XN" role="jymVt">
      <property role="TrG5h" value="updateCellSelection" />
      <node concept="3clFbS" id="38k27IQS4XQ" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IQS4XR" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IQS4UK" role="3clF45" />
      <node concept="37vLTG" id="38k27IQS553" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="38k27IQS552" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24JRnH" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24JRum" role="jymVt">
      <property role="TrG5h" value="paintTrace" />
      <node concept="3clFbS" id="1iOpS24JRup" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS24JRuq" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24JRrJ" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24JRya" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1iOpS24JRy9" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24JR$U" role="3clF46">
        <property role="TrG5h" value="form" />
        <node concept="16syzq" id="1iOpS24JRBK" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24IWdm" resolve="FormT" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1KCfUoKRRll" role="1B3o_S" />
    <node concept="16euLQ" id="1iOpS24IWdm" role="16eVyc">
      <property role="TrG5h" value="FormT" />
    </node>
  </node>
  <node concept="3HP615" id="1gL472EF7fL">
    <property role="TrG5h" value="ComponentSynchronizer" />
    <node concept="2tJIrI" id="1gL472EF7gx" role="jymVt" />
    <node concept="3clFb_" id="1gL472EF7k_" role="jymVt">
      <property role="TrG5h" value="getForm" />
      <node concept="37vLTG" id="4O0ojQp_IM$" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="4O0ojQq46od" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQq3ywm" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQp_IMA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1gL472EF7kC" role="3clF47" />
      <node concept="3Tm1VV" id="1gL472EF7kD" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIXIDD7" role="3clF45">
        <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
        <node concept="16syzq" id="1iOpS24IzPB" role="11_B2D">
          <ref role="16sUi3" node="1iOpS24IzNS" resolve="FormT" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472EF7lK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1gL472EF7r5" role="jymVt" />
    <node concept="3clFb_" id="1gL472EF7u1" role="jymVt">
      <property role="TrG5h" value="setForm" />
      <node concept="3clFbS" id="1gL472EF7u4" role="3clF47" />
      <node concept="3Tm1VV" id="1gL472EF7u5" role="1B3o_S" />
      <node concept="3cqZAl" id="1gL472EF7ta" role="3clF45" />
      <node concept="37vLTG" id="4O0ojQp_IT_" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="4O0ojQq46oW" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQq3ywm" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQp_ITB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1gL472EF7vE" role="3clF46">
        <property role="TrG5h" value="form" />
        <node concept="16syzq" id="1iOpS24IzRS" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24IzNS" resolve="FormT" />
        </node>
        <node concept="2AHcQZ" id="1gL472EF7x$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1gL472EF7fM" role="1B3o_S" />
    <node concept="16euLQ" id="4O0ojQq3ywm" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
    <node concept="16euLQ" id="1iOpS24IzNS" role="16eVyc">
      <property role="TrG5h" value="FormT" />
    </node>
  </node>
  <node concept="3HP615" id="4O0ojQq3isP">
    <property role="TrG5h" value="ComponentControllerFactory" />
    <node concept="2tJIrI" id="4O0ojQq3itr" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq3jsJ" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="3clFbS" id="4O0ojQq3jsM" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQq3jsN" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq3jsx" role="3clF45">
        <ref role="3uigEE" node="1KCfUoKRRlk" resolve="ComponentController" />
        <node concept="16syzq" id="1iOpS24IWaX" role="11_B2D">
          <ref role="16sUi3" node="1iOpS24IW8D" resolve="FormT" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQq3jvs" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4O0ojQq3jxp" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIVPduo" role="3clF46">
        <property role="TrG5h" value="view" />
        <node concept="16syzq" id="4y$DvIVPlsH" role="1tU5fm">
          <ref role="16sUi3" node="4y$DvIVPd$M" resolve="ViewT" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4O0ojQq3isQ" role="1B3o_S" />
    <node concept="16euLQ" id="4y$DvIVPd$M" role="16eVyc">
      <property role="TrG5h" value="ViewT" />
    </node>
    <node concept="16euLQ" id="1iOpS24IW8D" role="16eVyc">
      <property role="TrG5h" value="FormT" />
    </node>
  </node>
  <node concept="312cEu" id="3vyG44ANA6n">
    <property role="TrG5h" value="ComponentsFacility" />
    <node concept="2tJIrI" id="7qPnRGFr9WV" role="jymVt" />
    <node concept="312cEg" id="2i$17fO9RmO" role="jymVt">
      <property role="TrG5h" value="myComponents" />
      <node concept="3Tm6S6" id="2i$17fO9Klv" role="1B3o_S" />
      <node concept="2ShNRf" id="4O0ojQpzZio" role="33vP2m">
        <node concept="1pGfFk" id="4O0ojQpzZip" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="4O0ojQq3V9k" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
          </node>
          <node concept="3uibUv" id="4O0ojQp_5gx" role="1pMfVU">
            <ref role="3uigEE" node="7_KjZP9d656" resolve="ComponentEntry" />
            <node concept="16syzq" id="1iOpS257B4V" role="11_B2D">
              <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
            </node>
            <node concept="16syzq" id="1iOpS257E2C" role="11_B2D">
              <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4O0ojQpzZOF" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="4O0ojQq3UnM" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
        <node concept="3uibUv" id="4O0ojQp_21j" role="11_B2D">
          <ref role="3uigEE" node="7_KjZP9d656" resolve="ComponentEntry" />
          <node concept="16syzq" id="1iOpS257He1" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
          </node>
          <node concept="16syzq" id="1iOpS257He2" role="11_B2D">
            <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44ANOYp" role="jymVt" />
    <node concept="312cEg" id="17nGqbJz8aL" role="jymVt">
      <property role="TrG5h" value="myView" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJz3Q$" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJz85x" role="1tU5fm">
        <ref role="3uigEE" to="hyqd:1KCfUoKQiq3" resolve="ComponentsView" />
        <node concept="16syzq" id="4O0ojQq4kA2" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4O0ojQpY7yt" role="jymVt">
      <property role="TrG5h" value="myEditor" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4O0ojQpY7wY" role="1tU5fm">
        <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44ANA89" role="jymVt" />
    <node concept="312cEg" id="7qPnRGFrNpo" role="jymVt">
      <property role="TrG5h" value="myControllerFactory" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4O0ojQq3kPZ" role="1tU5fm">
        <ref role="3uigEE" node="4O0ojQq3isP" resolve="ComponentControllerFactory" />
        <node concept="16syzq" id="4O0ojQq3xV$" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
        <node concept="16syzq" id="1iOpS24JEhm" role="11_B2D">
          <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJzgpg" role="jymVt" />
    <node concept="312cEg" id="3vyG44ANE3O" role="jymVt">
      <property role="TrG5h" value="myLayout" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3vyG44APnet" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:1KCfUoKQeCd" resolve="LayoutModel" />
        <node concept="16syzq" id="4O0ojQq3VU5" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3vyG44ANDzR" role="jymVt">
      <property role="TrG5h" value="mySelection" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3vyG44ANDuL" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:1KCfUoKRX_E" resolve="SelectionModel" />
        <node concept="16syzq" id="4O0ojQq3Wm1" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS25v$j6" role="jymVt" />
    <node concept="312cEg" id="4O0ojQp$DNq" role="jymVt">
      <property role="TrG5h" value="myComponentSyncronizer" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4O0ojQp$DCP" role="1tU5fm">
        <ref role="3uigEE" node="1gL472EF7fL" resolve="ComponentSynchronizer" />
        <node concept="16syzq" id="4O0ojQq3$uX" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
        <node concept="16syzq" id="1iOpS24IRxm" role="11_B2D">
          <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4y$DvIYkgSe" role="jymVt">
      <property role="TrG5h" value="mySceneFocus" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4y$DvIYkgQy" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:4y$DvIXWfQg" resolve="SceneFocusModel" />
      </node>
    </node>
    <node concept="312cEg" id="4y$DvIYksqK" role="jymVt">
      <property role="TrG5h" value="myFocusHandle" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4y$DvIYksoR" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:4y$DvIXWfTF" resolve="FocusHandle" />
      </node>
      <node concept="2ShNRf" id="4y$DvIYkuY5" role="33vP2m">
        <node concept="1pGfFk" id="4y$DvIYkuWq" role="2ShVmc">
          <ref role="37wK5l" to="rvgs:4y$DvIXWfYd" resolve="FocusHandle" />
          <node concept="1bVj0M" id="4y$DvIYkwgH" role="37wK5m">
            <node concept="3clFbS" id="4y$DvIYkwgI" role="1bW5cS">
              <node concept="3clFbF" id="4y$DvIYkwmB" role="3cqZAp">
                <node concept="2OqwBi" id="4y$DvIYkwzz" role="3clFbG">
                  <node concept="37vLTw" id="4y$DvIYkwmA" role="2Oq$k0">
                    <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
                  </node>
                  <node concept="liA8E" id="4y$DvIYkyKD" role="2OqNvi">
                    <ref role="37wK5l" to="rvgs:17nGqbJ$$hK" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="38k27IQS4yL" role="3cqZAp">
                <node concept="1rXfSq" id="38k27IQS4yJ" role="3clFbG">
                  <ref role="37wK5l" node="38k27IQRUHj" resolve="clearSelection" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5MmYuOgYCp$" role="jymVt">
      <property role="TrG5h" value="myClickShouldSelect" />
      <node concept="3Tm6S6" id="5MmYuOgY_Ug" role="1B3o_S" />
      <node concept="10P_77" id="5MmYuOgYC3G" role="1tU5fm" />
      <node concept="3clFbT" id="5MmYuOgYEWa" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44ANDf0" role="jymVt" />
    <node concept="3clFbW" id="3vyG44ANZeI" role="jymVt">
      <node concept="37vLTG" id="4O0ojQpY33t" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="4O0ojQpY3fy" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
        </node>
      </node>
      <node concept="3cqZAl" id="3vyG44ANZeJ" role="3clF45" />
      <node concept="3Tm1VV" id="3vyG44ANZeK" role="1B3o_S" />
      <node concept="3clFbS" id="3vyG44ANZeM" role="3clF47">
        <node concept="3clFbF" id="4O0ojQpY9Zb" role="3cqZAp">
          <node concept="37vLTI" id="4O0ojQpYbkE" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpYbqr" role="37vLTx">
              <ref role="3cqZAo" node="4O0ojQpY33t" resolve="editor" />
            </node>
            <node concept="37vLTw" id="4O0ojQpY9Z9" role="37vLTJ">
              <ref role="3cqZAo" node="4O0ojQpY7yt" resolve="myEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="17nGqbJz9E7" role="3cqZAp">
          <node concept="37vLTI" id="17nGqbJzaf_" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJzawm" role="37vLTx">
              <ref role="3cqZAo" node="17nGqbJz27Z" resolve="componentsView" />
            </node>
            <node concept="37vLTw" id="17nGqbJz9E5" role="37vLTJ">
              <ref role="3cqZAo" node="17nGqbJz8aL" resolve="myView" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44ANZeT" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44ANZeV" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJyZhZ" role="37vLTx">
              <ref role="3cqZAo" node="17nGqbJyYUd" resolve="controllerFactory" />
            </node>
            <node concept="37vLTw" id="3vyG44AO01z" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGFrNpo" resolve="myControllerFactory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQp$GA4" role="3cqZAp">
          <node concept="37vLTI" id="4O0ojQp$IbZ" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQp$Ike" role="37vLTx">
              <ref role="3cqZAo" node="4O0ojQp$$hW" resolve="componentSyncronizer" />
            </node>
            <node concept="37vLTw" id="4O0ojQp$GA2" role="37vLTJ">
              <ref role="3cqZAo" node="4O0ojQp$DNq" resolve="myComponentSyncronizer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44ANZfh" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44ANZfj" role="3clFbG">
            <node concept="37vLTw" id="3vyG44ANZfq" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44ANZfg" resolve="layout" />
            </node>
            <node concept="37vLTw" id="3vyG44AO0xm" role="37vLTJ">
              <ref role="3cqZAo" node="3vyG44ANE3O" resolve="myLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44ANZft" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44ANZfv" role="3clFbG">
            <node concept="37vLTw" id="3vyG44ANZfA" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44ANZfs" resolve="selection" />
            </node>
            <node concept="37vLTw" id="3vyG44AO0Fl" role="37vLTJ">
              <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIYklcL" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIYklYY" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIYkmbE" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIYkbIF" resolve="sceneFocus" />
            </node>
            <node concept="37vLTw" id="4y$DvIYklcJ" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIYkgSe" resolve="mySceneFocus" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4O0ojQpYbDr" role="3cqZAp" />
        <node concept="3clFbF" id="4O0ojQpYbXg" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpYbXh" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpYcEf" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQpY33t" resolve="editor" />
            </node>
            <node concept="liA8E" id="4O0ojQpYbXj" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd3Xf" resolve="addKeyboardListener" />
              <node concept="2ShNRf" id="4O0ojQpYbXk" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpYbXl" role="2ShVmc">
                  <ref role="HV5vE" node="17nGqbJ_g1L" resolve="ComponentsFacility.MyKeyboardListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpYbXm" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpYbXn" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpYcIE" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQpY33t" resolve="editor" />
            </node>
            <node concept="liA8E" id="4O0ojQpYbXp" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd4hx" resolve="addSyncronizer" />
              <node concept="2ShNRf" id="4O0ojQpYbXq" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpYbXr" role="2ShVmc">
                  <ref role="HV5vE" node="17nGqbJ_5Jm" resolve="ComponentsFacility.MySyncronizer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpYbXa" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpYbXb" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpYc_O" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQpY33t" resolve="editor" />
            </node>
            <node concept="liA8E" id="4O0ojQpYbXd" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd4_$" resolve="addCellProvider" />
              <node concept="37vLTw" id="4y$DvIYkjZR" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYkjid" resolve="componentsLayer" />
              </node>
              <node concept="2ShNRf" id="4O0ojQpYbXe" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpYbXf" role="2ShVmc">
                  <ref role="HV5vE" node="17nGqbJ_oxc" resolve="ComponentsFacility.MyCellProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpYbXs" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpYbXt" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpYcN5" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQpY33t" resolve="editor" />
            </node>
            <node concept="liA8E" id="4O0ojQpYbXv" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd3Bi" resolve="addClickListener" />
              <node concept="37vLTw" id="4y$DvIYkkmV" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYkjid" resolve="componentsLayer" />
              </node>
              <node concept="2ShNRf" id="4O0ojQpYbXw" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpYbXx" role="2ShVmc">
                  <ref role="HV5vE" node="17nGqbJ$usH" resolve="ComponentsFacility.MyClickEventListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpYbXy" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpYbXz" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpYcSP" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQpY33t" resolve="editor" />
            </node>
            <node concept="liA8E" id="4O0ojQpYbX_" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd3JS" resolve="addDragListener" />
              <node concept="37vLTw" id="4y$DvIYkkoo" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYkjid" resolve="componentsLayer" />
              </node>
              <node concept="2ShNRf" id="4O0ojQpYbXA" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpYbXB" role="2ShVmc">
                  <ref role="HV5vE" node="17nGqbJ$kZ3" resolve="ComponentsFacility.MyDragEventListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24T7C0" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24T7ZR" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24T7BY" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQpY33t" resolve="editor" />
            </node>
            <node concept="liA8E" id="1iOpS24T8aQ" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJdjBx" resolve="addPainter" />
              <node concept="37vLTw" id="1iOpS24T8f_" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS24RoGz" resolve="tracesLayer" />
              </node>
              <node concept="2ShNRf" id="1iOpS24T8rq" role="37wK5m">
                <node concept="HV5vD" id="1iOpS24T8R2" role="2ShVmc">
                  <ref role="HV5vE" node="1iOpS24Rsgr" resolve="ComponentsFacility.MyTracesPainter" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJz27Z" role="3clF46">
        <property role="TrG5h" value="componentsView" />
        <node concept="3uibUv" id="17nGqbJz2o_" role="1tU5fm">
          <ref role="3uigEE" to="hyqd:1KCfUoKQiq3" resolve="ComponentsView" />
          <node concept="16syzq" id="4y$DvIXluHP" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJyYUd" role="3clF46">
        <property role="TrG5h" value="controllerFactory" />
        <node concept="3uibUv" id="4O0ojQq3y7j" role="1tU5fm">
          <ref role="3uigEE" node="4O0ojQq3isP" resolve="ComponentControllerFactory" />
          <node concept="16syzq" id="4O0ojQq3y7l" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
          </node>
          <node concept="16syzq" id="1iOpS24JE$N" role="11_B2D">
            <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQp$$hW" role="3clF46">
        <property role="TrG5h" value="componentSyncronizer" />
        <node concept="3uibUv" id="4O0ojQp$$sC" role="1tU5fm">
          <ref role="3uigEE" node="1gL472EF7fL" resolve="ComponentSynchronizer" />
          <node concept="16syzq" id="4O0ojQq3A7j" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
          </node>
          <node concept="16syzq" id="1iOpS24IRS1" role="11_B2D">
            <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44ANZfg" role="3clF46">
        <property role="TrG5h" value="layout" />
        <node concept="3uibUv" id="17nGqbJyIB8" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:1KCfUoKQeCd" resolve="LayoutModel" />
          <node concept="16syzq" id="4O0ojQq3WPp" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44ANZfs" role="3clF46">
        <property role="TrG5h" value="selection" />
        <node concept="3uibUv" id="3vyG44ANZfr" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:1KCfUoKRX_E" resolve="SelectionModel" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIYkbIF" role="3clF46">
        <property role="TrG5h" value="sceneFocus" />
        <node concept="3uibUv" id="4y$DvIYkbYG" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:4y$DvIXWfQg" resolve="SceneFocusModel" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIYkjid" role="3clF46">
        <property role="TrG5h" value="componentsLayer" />
        <node concept="3uibUv" id="4y$DvIYkjxM" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24RoGz" role="3clF46">
        <property role="TrG5h" value="tracesLayer" />
        <node concept="3uibUv" id="1iOpS24Rp1s" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IQRNLA" role="jymVt" />
    <node concept="3clFb_" id="38k27IQRUHj" role="jymVt">
      <property role="TrG5h" value="clearSelection" />
      <node concept="3clFbS" id="38k27IQRUHm" role="3clF47">
        <node concept="2Gpval" id="38k27IQSPlG" role="3cqZAp">
          <node concept="2GrKxI" id="38k27IQSPlH" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="37vLTw" id="38k27IQSPq$" role="2GsD0m">
            <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
          </node>
          <node concept="3clFbS" id="38k27IQSPlJ" role="2LFqv$">
            <node concept="3cpWs8" id="38k27IQTlvk" role="3cqZAp">
              <node concept="3cpWsn" id="38k27IQTlvl" role="3cpWs9">
                <property role="TrG5h" value="entry" />
                <node concept="3uibUv" id="38k27IQTlv6" role="1tU5fm">
                  <ref role="3uigEE" node="7_KjZP9d656" resolve="ComponentEntry" />
                  <node concept="16syzq" id="38k27IQTlvb" role="11_B2D">
                    <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                  </node>
                  <node concept="16syzq" id="38k27IQTlvc" role="11_B2D">
                    <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
                  </node>
                </node>
                <node concept="2OqwBi" id="38k27IQTlvm" role="33vP2m">
                  <node concept="2GrUjf" id="38k27IQTlvn" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="38k27IQSPlH" resolve="component" />
                  </node>
                  <node concept="3AV6Ez" id="38k27IQTlvo" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27IQSPDL" role="3cqZAp">
              <node concept="2OqwBi" id="38k27IQTBm8" role="3clFbG">
                <node concept="2OqwBi" id="38k27IQT44B" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27IQTlvp" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27IQTlvl" resolve="entry" />
                  </node>
                  <node concept="2OwXpG" id="38k27IQT4tw" role="2OqNvi">
                    <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                  </node>
                </node>
                <node concept="liA8E" id="38k27IQTBEq" role="2OqNvi">
                  <ref role="37wK5l" node="38k27IQS4XN" resolve="updateCellSelection" />
                  <node concept="3clFbT" id="38k27IRwWR2" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="38k27IQRRh4" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IQRUDc" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="17nGqbJznS4" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIVUIFH" role="jymVt">
      <property role="TrG5h" value="getController" />
      <node concept="3clFbS" id="4y$DvIVUIFK" role="3clF47">
        <node concept="3clFbF" id="4y$DvIVUOUA" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIVUWJ6" role="3clFbG">
            <node concept="2OqwBi" id="4y$DvIVUTbH" role="2Oq$k0">
              <node concept="37vLTw" id="4y$DvIVUOU_" role="2Oq$k0">
                <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
              </node>
              <node concept="liA8E" id="4y$DvIVUWle" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="4y$DvIVUWww" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIVUKOk" resolve="component" />
                </node>
              </node>
            </node>
            <node concept="2OwXpG" id="4y$DvIVV175" role="2OqNvi">
              <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIVUGvY" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIVUIEs" role="3clF45">
        <ref role="3uigEE" node="1KCfUoKRRlk" resolve="ComponentController" />
      </node>
      <node concept="37vLTG" id="4y$DvIVUKOk" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="4y$DvIVUKOj" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIVUMNg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24XxuW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24Xe4N" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24Xk6r" role="jymVt">
      <property role="TrG5h" value="getModelForm" />
      <node concept="3clFbS" id="1iOpS24Xk6u" role="3clF47">
        <node concept="3clFbF" id="1iOpS24XADJ" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24XF7j" role="3clFbG">
            <node concept="2OqwBi" id="1iOpS24XB54" role="2Oq$k0">
              <node concept="37vLTw" id="1iOpS24XADI" role="2Oq$k0">
                <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
              </node>
              <node concept="liA8E" id="1iOpS24XEAA" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="1iOpS24XEJZ" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24XpGz" resolve="component" />
                </node>
              </node>
            </node>
            <node concept="2OwXpG" id="1iOpS24XFt5" role="2OqNvi">
              <ref role="2Oxat5" node="1iOpS24NdRP" resolve="myModelForm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1iOpS24Xhaq" role="1B3o_S" />
      <node concept="16syzq" id="1iOpS24Xk3s" role="3clF45">
        <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
      </node>
      <node concept="37vLTG" id="1iOpS24XpGz" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="1iOpS24XpG$" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="1iOpS24XpG_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24Xspn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24XO4X" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24XIhe" role="jymVt">
      <property role="TrG5h" value="getTransformedForm" />
      <node concept="3clFbS" id="1iOpS24XIhf" role="3clF47">
        <node concept="3clFbF" id="1iOpS2593YK" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS2593YL" role="3clFbG">
            <node concept="2OqwBi" id="1iOpS2593YM" role="2Oq$k0">
              <node concept="37vLTw" id="1iOpS2593YN" role="2Oq$k0">
                <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
              </node>
              <node concept="liA8E" id="1iOpS2593YO" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="1iOpS2593YP" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24XIhp" resolve="component" />
                </node>
              </node>
            </node>
            <node concept="2OwXpG" id="1iOpS2594Kp" role="2OqNvi">
              <ref role="2Oxat5" node="1iOpS24NlB_" resolve="myTransformedForm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1iOpS24XIhn" role="1B3o_S" />
      <node concept="16syzq" id="1iOpS24XIho" role="3clF45">
        <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
      </node>
      <node concept="37vLTG" id="1iOpS24XIhp" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="1iOpS24XIhq" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="1iOpS24XIhr" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24XIhs" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS251bqK" role="jymVt" />
    <node concept="312cEu" id="1iOpS24Rsgr" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyTracesPainter" />
      <node concept="2tJIrI" id="1iOpS24Rvuy" role="jymVt" />
      <node concept="2tJIrI" id="1iOpS24Rvu$" role="jymVt" />
      <node concept="3clFb_" id="1iOpS24RvxK" role="jymVt">
        <property role="TrG5h" value="paint" />
        <node concept="37vLTG" id="1iOpS24RvxL" role="3clF46">
          <property role="TrG5h" value="graphics" />
          <node concept="3uibUv" id="1iOpS24RvxM" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1iOpS24RvxO" role="1B3o_S" />
        <node concept="3cqZAl" id="1iOpS24RvxP" role="3clF45" />
        <node concept="3clFbS" id="1iOpS24RvxQ" role="3clF47">
          <node concept="2Gpval" id="1iOpS24RvMs" role="3cqZAp">
            <node concept="2GrKxI" id="1iOpS24RvMt" role="2Gsz3X">
              <property role="TrG5h" value="component" />
            </node>
            <node concept="37vLTw" id="1iOpS24RvW4" role="2GsD0m">
              <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
            </node>
            <node concept="3clFbS" id="1iOpS24RvMv" role="2LFqv$">
              <node concept="3clFbJ" id="1iOpS24S3AU" role="3cqZAp">
                <node concept="3clFbS" id="1iOpS24S3AW" role="3clFbx">
                  <node concept="3cpWs8" id="1iOpS24SN24" role="3cqZAp">
                    <node concept="3cpWsn" id="1iOpS24SN25" role="3cpWs9">
                      <property role="TrG5h" value="entry" />
                      <node concept="3uibUv" id="1iOpS24SN23" role="1tU5fm">
                        <ref role="3uigEE" node="7_KjZP9d656" resolve="ComponentEntry" />
                      </node>
                      <node concept="2OqwBi" id="1iOpS24SN26" role="33vP2m">
                        <node concept="2GrUjf" id="1iOpS24SN27" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1iOpS24RvMt" resolve="component" />
                        </node>
                        <node concept="3AV6Ez" id="1iOpS24SN28" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1iOpS24RwpA" role="3cqZAp">
                    <node concept="2OqwBi" id="1iOpS24S0zP" role="3clFbG">
                      <node concept="2OqwBi" id="1iOpS24RO3i" role="2Oq$k0">
                        <node concept="37vLTw" id="1iOpS24SN2a" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS24SN25" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="1iOpS24ROk0" role="2OqNvi">
                          <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1iOpS24S0YC" role="2OqNvi">
                        <ref role="37wK5l" node="1iOpS24JRum" resolve="paintTrace" />
                        <node concept="2OqwBi" id="1iOpS25Eh8P" role="37wK5m">
                          <node concept="37vLTw" id="1iOpS24S1ef" role="2Oq$k0">
                            <ref role="3cqZAo" node="1iOpS24RvxL" resolve="graphics" />
                          </node>
                          <node concept="liA8E" id="1iOpS25Ehp7" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Graphics.create():java.awt.Graphics" resolve="create" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1iOpS24SMcr" role="37wK5m">
                          <node concept="37vLTw" id="1iOpS24SN29" role="2Oq$k0">
                            <ref role="3cqZAo" node="1iOpS24SN25" resolve="entry" />
                          </node>
                          <node concept="2OwXpG" id="1iOpS24SMBe" role="2OqNvi">
                            <ref role="2Oxat5" node="1iOpS24NdRP" resolve="myModelForm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="1iOpS24S7XI" role="3clFbw">
                  <node concept="10Nm6u" id="1iOpS24S8aR" role="3uHU7w" />
                  <node concept="2OqwBi" id="1iOpS24S42f" role="3uHU7B">
                    <node concept="37vLTw" id="1iOpS24S3M5" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vyG44ANE3O" resolve="myLayout" />
                    </node>
                    <node concept="liA8E" id="1iOpS24S6zh" role="2OqNvi">
                      <ref role="37wK5l" to="rvgs:1KCfUoKRXiN" resolve="getTracePosition" />
                      <node concept="2OqwBi" id="1iOpS24SNMr" role="37wK5m">
                        <node concept="2GrUjf" id="1iOpS24SNsW" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1iOpS24RvMt" resolve="component" />
                        </node>
                        <node concept="3AY5_j" id="1iOpS24T6NY" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1iOpS24RvxR" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1iOpS24Rs2g" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24RvpK" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIVUEoT" role="jymVt" />
    <node concept="312cEu" id="17nGqbJ_oxc" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyCellProvider" />
      <node concept="2tJIrI" id="17nGqbJ_qf8" role="jymVt" />
      <node concept="3clFb_" id="17nGqbJ_qgt" role="jymVt">
        <property role="TrG5h" value="getCells" />
        <node concept="3Tm1VV" id="17nGqbJ_qgv" role="1B3o_S" />
        <node concept="3uibUv" id="17nGqbJ_qgw" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="17nGqbJ_qgx" role="11_B2D">
            <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
          </node>
        </node>
        <node concept="3clFbS" id="17nGqbJ_qgy" role="3clF47">
          <node concept="3cpWs8" id="17nGqbJ_r0p" role="3cqZAp">
            <node concept="3cpWsn" id="17nGqbJ_r0l" role="3cpWs9">
              <property role="TrG5h" value="cells" />
              <node concept="3uibUv" id="17nGqbJ_r0X" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="17nGqbJ_r0Y" role="11_B2D">
                  <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                </node>
              </node>
              <node concept="2ShNRf" id="17nGqbJ_r9N" role="33vP2m">
                <node concept="1pGfFk" id="17nGqbJ_rG8" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="17nGqbJ_VAp" role="1pMfVU">
                    <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="17nGqbJ_qUo" role="3cqZAp">
            <node concept="2GrKxI" id="17nGqbJ_qUp" role="2Gsz3X">
              <property role="TrG5h" value="component" />
            </node>
            <node concept="37vLTw" id="17nGqbJ_sKk" role="2GsD0m">
              <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
            </node>
            <node concept="3clFbS" id="17nGqbJ_qUr" role="2LFqv$">
              <node concept="3cpWs8" id="17nGqbJ_M5E" role="3cqZAp">
                <node concept="3cpWsn" id="17nGqbJ_M5F" role="3cpWs9">
                  <property role="TrG5h" value="cell" />
                  <node concept="3uibUv" id="17nGqbJ_M5y" role="1tU5fm">
                    <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                  </node>
                  <node concept="2OqwBi" id="4O0ojQpBwLx" role="33vP2m">
                    <node concept="2OqwBi" id="4O0ojQpBdhh" role="2Oq$k0">
                      <node concept="2OqwBi" id="17nGqbJ_M5G" role="2Oq$k0">
                        <node concept="2GrUjf" id="17nGqbJ_M5H" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="17nGqbJ_qUp" resolve="component" />
                        </node>
                        <node concept="3AV6Ez" id="4O0ojQp$IMJ" role="2OqNvi" />
                      </node>
                      <node concept="2OwXpG" id="4O0ojQpBxkX" role="2OqNvi">
                        <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4O0ojQpBxGE" role="2OqNvi">
                      <ref role="37wK5l" node="17nGqbJz_fg" resolve="getComponentCell" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="17nGqbJ_T9t" role="3cqZAp">
                <node concept="2OqwBi" id="17nGqbJ_TII" role="3clFbG">
                  <node concept="37vLTw" id="17nGqbJ_T9o" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJ_r0l" resolve="cells" />
                  </node>
                  <node concept="liA8E" id="17nGqbJ_Ujf" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                    <node concept="37vLTw" id="17nGqbJ_UzM" role="37wK5m">
                      <ref role="3cqZAo" node="17nGqbJ_M5F" resolve="cell" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="17nGqbJ_V0e" role="3cqZAp">
            <node concept="37vLTw" id="17nGqbJ_Viv" role="3cqZAk">
              <ref role="3cqZAo" node="17nGqbJ_r0l" resolve="cells" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="17nGqbJ_qgz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="17nGqbJ_nnI" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJ_qd0" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJd3sJ" resolve="EditorCellProvider" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJ_dcj" role="jymVt" />
    <node concept="312cEu" id="17nGqbJ_g1L" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyKeyboardListener" />
      <node concept="2tJIrI" id="17nGqbJ_hOy" role="jymVt" />
      <node concept="3clFb_" id="17nGqbJ_hPK" role="jymVt">
        <property role="TrG5h" value="onBackspacePressed" />
        <node concept="3Tm1VV" id="17nGqbJ_hPM" role="1B3o_S" />
        <node concept="3cqZAl" id="17nGqbJ_hPN" role="3clF45" />
        <node concept="3clFbS" id="17nGqbJ_hPO" role="3clF47">
          <node concept="2Gpval" id="3vyG44AJJ3e" role="3cqZAp">
            <node concept="2GrKxI" id="3vyG44AJJ3g" role="2Gsz3X">
              <property role="TrG5h" value="component" />
            </node>
            <node concept="2OqwBi" id="17nGqbJ_jf$" role="2GsD0m">
              <node concept="37vLTw" id="17nGqbJ_j2Q" role="2Oq$k0">
                <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
              </node>
              <node concept="liA8E" id="17nGqbJ_joq" role="2OqNvi">
                <ref role="37wK5l" to="rvgs:1KCfUoKS0LD" resolve="getSelectedComponents" />
              </node>
            </node>
            <node concept="3clFbS" id="3vyG44AJJ3k" role="2LFqv$">
              <node concept="3clFbF" id="4O0ojQq3RY4" role="3cqZAp">
                <node concept="2OqwBi" id="4O0ojQq3S5K" role="3clFbG">
                  <node concept="37vLTw" id="4O0ojQq3RY2" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJz8aL" resolve="myView" />
                  </node>
                  <node concept="liA8E" id="4O0ojQq3TZm" role="2OqNvi">
                    <ref role="37wK5l" to="hyqd:4O0ojQq3Ixk" resolve="remove" />
                    <node concept="2GrUjf" id="4O0ojQq3Uak" role="37wK5m">
                      <ref role="2Gs0qQ" node="3vyG44AJJ3g" resolve="component" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="17nGqbJ_hPP" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="17nGqbJ_eSe" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJ_hMs" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJeGPf" resolve="KeyboardListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJ$roa" role="jymVt" />
    <node concept="312cEu" id="17nGqbJ_5Jm" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MySyncronizer" />
      <node concept="2tJIrI" id="17nGqbJ_7wb" role="jymVt" />
      <node concept="3clFb_" id="17nGqbJ_7xl" role="jymVt">
        <property role="TrG5h" value="synchronize" />
        <node concept="3Tm1VV" id="17nGqbJ_7xn" role="1B3o_S" />
        <node concept="3cqZAl" id="17nGqbJ_7xo" role="3clF45" />
        <node concept="3clFbS" id="17nGqbJ_7xp" role="3clF47">
          <node concept="3cpWs8" id="1gL472DNHqD" role="3cqZAp">
            <node concept="3cpWsn" id="1gL472DNHqE" role="3cpWs9">
              <property role="TrG5h" value="viewComponents" />
              <node concept="3uibUv" id="1gL472DNHqj" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="16syzq" id="4O0ojQq3WVj" role="11_B2D">
                  <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                </node>
              </node>
              <node concept="2OqwBi" id="1gL472DNHqF" role="33vP2m">
                <node concept="37vLTw" id="4O0ojQpzUtb" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJz8aL" resolve="myView" />
                </node>
                <node concept="liA8E" id="1gL472DNHqH" role="2OqNvi">
                  <ref role="37wK5l" to="hyqd:1KCfUoKQiMt" resolve="getComponents" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="1gL472DPgTs" role="3cqZAp">
            <node concept="3clFbS" id="1gL472DPgTu" role="2LFqv$">
              <node concept="3cpWs8" id="4y$DvIXo35G" role="3cqZAp">
                <node concept="3cpWsn" id="4y$DvIXo35H" role="3cpWs9">
                  <property role="TrG5h" value="component" />
                  <node concept="16syzq" id="4y$DvIXo34$" role="1tU5fm">
                    <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                  </node>
                  <node concept="2OqwBi" id="4y$DvIXo35I" role="33vP2m">
                    <node concept="2OqwBi" id="4y$DvIXo3y$" role="2Oq$k0">
                      <node concept="37vLTw" id="4y$DvIXo3y_" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472DPgTv" resolve="it" />
                      </node>
                      <node concept="liA8E" id="4y$DvIXo3yA" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4y$DvIXo35K" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1gL472DNRcu" role="3cqZAp">
                <node concept="3clFbS" id="1gL472DNRcw" role="3clFbx">
                  <node concept="3clFbF" id="4y$DvIXnHBs" role="3cqZAp">
                    <node concept="2OqwBi" id="4y$DvIXnHSE" role="3clFbG">
                      <node concept="37vLTw" id="4y$DvIXnHBq" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vyG44ANE3O" resolve="myLayout" />
                      </node>
                      <node concept="liA8E" id="4y$DvIXnI63" role="2OqNvi">
                        <ref role="37wK5l" to="rvgs:17nGqbJrgKq" resolve="removeComponent" />
                        <node concept="37vLTw" id="4y$DvIXo35M" role="37wK5m">
                          <ref role="3cqZAo" node="4y$DvIXo35H" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1gL472DQBLT" role="3cqZAp">
                    <node concept="2OqwBi" id="1gL472DQCp4" role="3clFbG">
                      <node concept="37vLTw" id="1gL472DQBLS" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472DPgTv" resolve="it" />
                      </node>
                      <node concept="liA8E" id="1gL472DQWn2" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.remove():void" resolve="remove" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="1gL472DO6We" role="3clFbw">
                  <node concept="2OqwBi" id="1gL472DO6Wg" role="3fr31v">
                    <node concept="37vLTw" id="1gL472DO6Wh" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472DNHqE" resolve="viewComponents" />
                    </node>
                    <node concept="liA8E" id="1gL472DO6Wi" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
                      <node concept="37vLTw" id="4y$DvIXo35L" role="37wK5m">
                        <ref role="3cqZAo" node="4y$DvIXo35H" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="1gL472DPgTv" role="1Duv9x">
              <property role="TrG5h" value="it" />
              <node concept="3uibUv" id="1gL472DPi3$" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                <node concept="3uibUv" id="1gL472DPpgl" role="11_B2D">
                  <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
                  <node concept="16syzq" id="4O0ojQq3XzB" role="11_B2D">
                    <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                  </node>
                  <node concept="3uibUv" id="4O0ojQp_5Tb" role="11_B2D">
                    <ref role="3uigEE" node="7_KjZP9d656" resolve="ComponentEntry" />
                    <node concept="16syzq" id="1iOpS258jns" role="11_B2D">
                      <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                    </node>
                    <node concept="16syzq" id="1iOpS258jnt" role="11_B2D">
                      <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1gL472DPnaW" role="33vP2m">
                <node concept="2OqwBi" id="1gL472DPjdK" role="2Oq$k0">
                  <node concept="37vLTw" id="4O0ojQpzXBI" role="2Oq$k0">
                    <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
                  </node>
                  <node concept="liA8E" id="1gL472DPk1Y" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.entrySet():java.util.Set" resolve="entrySet" />
                  </node>
                </node>
                <node concept="liA8E" id="1gL472DPoim" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.iterator():java.util.Iterator" resolve="iterator" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1gL472DPrXw" role="1Dwp0S">
              <node concept="37vLTw" id="1gL472DPqFZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1gL472DPgTv" resolve="it" />
              </node>
              <node concept="liA8E" id="1gL472DPLlE" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="1gL472DRlv7" role="3cqZAp">
            <node concept="3clFbS" id="1gL472DRlv8" role="2LFqv$">
              <node concept="3cpWs8" id="1gL472DRlv9" role="3cqZAp">
                <node concept="3cpWsn" id="1gL472DRlva" role="3cpWs9">
                  <property role="TrG5h" value="selected" />
                  <node concept="2OqwBi" id="1gL472DRlvf" role="33vP2m">
                    <node concept="37vLTw" id="1gL472DRlvg" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472DRlvv" resolve="it" />
                    </node>
                    <node concept="liA8E" id="1gL472DRlvh" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                    </node>
                  </node>
                  <node concept="16syzq" id="4O0ojQq3Y9r" role="1tU5fm">
                    <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1gL472DRlvi" role="3cqZAp">
                <node concept="3clFbS" id="1gL472DRlvj" role="3clFbx">
                  <node concept="3clFbF" id="4O0ojQp_tn$" role="3cqZAp">
                    <node concept="2OqwBi" id="4O0ojQp_t_i" role="3clFbG">
                      <node concept="37vLTw" id="4O0ojQp_tnv" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
                      </node>
                      <node concept="liA8E" id="4O0ojQp_tM2" role="2OqNvi">
                        <ref role="37wK5l" to="rvgs:2XwVnrt19DS" resolve="setSelected" />
                        <node concept="37vLTw" id="4O0ojQp_u0g" role="37wK5m">
                          <ref role="3cqZAo" node="1gL472DRlva" resolve="selected" />
                        </node>
                        <node concept="3clFbT" id="4O0ojQp_uaS" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="1gL472DRlvo" role="3clFbw">
                  <node concept="2OqwBi" id="1gL472DRlvp" role="3fr31v">
                    <node concept="37vLTw" id="1gL472DRlvq" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472DNHqE" resolve="viewComponents" />
                    </node>
                    <node concept="liA8E" id="1gL472DRlvr" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
                      <node concept="37vLTw" id="1gL472DRlvt" role="37wK5m">
                        <ref role="3cqZAo" node="1gL472DRlva" resolve="selected" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="1gL472DRlvv" role="1Duv9x">
              <property role="TrG5h" value="it" />
              <node concept="3uibUv" id="1gL472DRlvw" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                <node concept="16syzq" id="4O0ojQq3XYe" role="11_B2D">
                  <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                </node>
              </node>
              <node concept="2OqwBi" id="1gL472DRlv_" role="33vP2m">
                <node concept="2OqwBi" id="4O0ojQp_kXW" role="2Oq$k0">
                  <node concept="37vLTw" id="4O0ojQp_k_o" role="2Oq$k0">
                    <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
                  </node>
                  <node concept="liA8E" id="4O0ojQp_nm2" role="2OqNvi">
                    <ref role="37wK5l" to="rvgs:1KCfUoKS0LD" resolve="getSelectedComponents" />
                  </node>
                </node>
                <node concept="liA8E" id="1gL472DRlvD" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.iterator():java.util.Iterator" resolve="iterator" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1gL472DRlvE" role="1Dwp0S">
              <node concept="37vLTw" id="1gL472DRlvF" role="2Oq$k0">
                <ref role="3cqZAo" node="1gL472DRlvv" resolve="it" />
              </node>
              <node concept="liA8E" id="1gL472DRlvG" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1gL472DNMKo" role="3cqZAp" />
          <node concept="2Gpval" id="7PF$iX$aP_M" role="3cqZAp">
            <node concept="2GrKxI" id="7PF$iX$aP_O" role="2Gsz3X">
              <property role="TrG5h" value="component" />
            </node>
            <node concept="3clFbS" id="7PF$iX$aP_S" role="2LFqv$">
              <node concept="3cpWs8" id="7PF$iX$b2m4" role="3cqZAp">
                <node concept="3cpWsn" id="7PF$iX$b2m5" role="3cpWs9">
                  <property role="TrG5h" value="entry" />
                  <node concept="3uibUv" id="4O0ojQp_vGA" role="1tU5fm">
                    <ref role="3uigEE" node="7_KjZP9d656" resolve="ComponentEntry" />
                  </node>
                  <node concept="2OqwBi" id="7PF$iX$b5Sk" role="33vP2m">
                    <node concept="37vLTw" id="4O0ojQp_wwy" role="2Oq$k0">
                      <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
                    </node>
                    <node concept="liA8E" id="7PF$iX$bcXT" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function):java.lang.Object" resolve="computeIfAbsent" />
                      <node concept="2GrUjf" id="7PF$iX$bei$" role="37wK5m">
                        <ref role="2Gs0qQ" node="7PF$iX$aP_O" resolve="component" />
                      </node>
                      <node concept="1bVj0M" id="7PF$iX$bgeh" role="37wK5m">
                        <node concept="3clFbS" id="7PF$iX$bgei" role="1bW5cS">
                          <node concept="3cpWs8" id="4y$DvIXoaoE" role="3cqZAp">
                            <node concept="3cpWsn" id="4y$DvIXoaoF" role="3cpWs9">
                              <property role="TrG5h" value="entry" />
                              <node concept="3uibUv" id="4y$DvIXoaoC" role="1tU5fm">
                                <ref role="3uigEE" node="7_KjZP9d656" resolve="ComponentEntry" />
                                <node concept="16syzq" id="1iOpS257LsC" role="11_B2D">
                                  <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                                </node>
                                <node concept="16syzq" id="1iOpS257LsD" role="11_B2D">
                                  <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
                                </node>
                              </node>
                              <node concept="2ShNRf" id="4y$DvIXoaoG" role="33vP2m">
                                <node concept="1pGfFk" id="4y$DvIXoaoH" role="2ShVmc">
                                  <ref role="37wK5l" node="7_KjZP9fg0l" resolve="ComponentEntry" />
                                  <node concept="Xjq3P" id="1iOpS257U68" role="37wK5m">
                                    <ref role="1HBi2w" node="3vyG44ANA6n" resolve="ComponentsFacility" />
                                  </node>
                                  <node concept="37vLTw" id="4y$DvIXoaoI" role="37wK5m">
                                    <ref role="3cqZAo" node="7PF$iX$bgep" resolve="c" />
                                  </node>
                                  <node concept="16syzq" id="1iOpS257Nul" role="1pMfVU">
                                    <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                                  </node>
                                  <node concept="16syzq" id="1iOpS257Num" role="1pMfVU">
                                    <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4y$DvIXo4On" role="3cqZAp">
                            <node concept="2OqwBi" id="4y$DvIXo5si" role="3clFbG">
                              <node concept="37vLTw" id="4y$DvIXo4Ol" role="2Oq$k0">
                                <ref role="3cqZAo" node="3vyG44ANE3O" resolve="myLayout" />
                              </node>
                              <node concept="liA8E" id="4y$DvIXo8ns" role="2OqNvi">
                                <ref role="37wK5l" to="rvgs:17nGqbJrgod" resolve="addComponent" />
                                <node concept="2GrUjf" id="4y$DvIXo98l" role="37wK5m">
                                  <ref role="2Gs0qQ" node="7PF$iX$aP_O" resolve="component" />
                                </node>
                                <node concept="2OqwBi" id="4y$DvIXocoi" role="37wK5m">
                                  <node concept="37vLTw" id="4y$DvIXobMw" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4y$DvIXoaoF" resolve="entry" />
                                  </node>
                                  <node concept="2OwXpG" id="4y$DvIXod4i" role="2OqNvi">
                                    <ref role="2Oxat5" node="4O0ojQpAPEF" resolve="myLayoutSetting" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1gL472DR596" role="3cqZAp">
                            <node concept="37vLTw" id="4y$DvIXoaoJ" role="3clFbG">
                              <ref role="3cqZAo" node="4y$DvIXoaoF" resolve="entry" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="7PF$iX$bgep" role="1bW2Oz">
                          <property role="TrG5h" value="c" />
                          <node concept="16syzq" id="4O0ojQq3Yf8" role="1tU5fm">
                            <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7PF$iX$snVn" role="3cqZAp" />
              <node concept="3clFbF" id="7PF$iX$spCy" role="3cqZAp">
                <node concept="2OqwBi" id="7PF$iX$sqUj" role="3clFbG">
                  <node concept="37vLTw" id="7PF$iX$spCw" role="2Oq$k0">
                    <ref role="3cqZAo" node="7PF$iX$b2m5" resolve="entry" />
                  </node>
                  <node concept="liA8E" id="7PF$iX$thxL" role="2OqNvi">
                    <ref role="37wK5l" node="1gL472DTbKH" resolve="syncronize" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1gL472DNHqJ" role="2GsD0m">
              <ref role="3cqZAo" node="1gL472DNHqE" resolve="viewComponents" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="17nGqbJ_7xq" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIXIxwZ" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIXIyWd" role="jymVt">
        <property role="TrG5h" value="relayout" />
        <node concept="3Tm1VV" id="4y$DvIXIyWf" role="1B3o_S" />
        <node concept="3cqZAl" id="4y$DvIXIyWg" role="3clF45" />
        <node concept="3clFbS" id="4y$DvIXIyWh" role="3clF47">
          <node concept="2Gpval" id="4y$DvIXI$sv" role="3cqZAp">
            <node concept="2GrKxI" id="4y$DvIXI$sw" role="2Gsz3X">
              <property role="TrG5h" value="component" />
            </node>
            <node concept="37vLTw" id="4y$DvIXI$A9" role="2GsD0m">
              <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
            </node>
            <node concept="3clFbS" id="4y$DvIXI$sy" role="2LFqv$">
              <node concept="3clFbF" id="4y$DvIXI$Py" role="3cqZAp">
                <node concept="2OqwBi" id="4y$DvIXJ6Wi" role="3clFbG">
                  <node concept="2OqwBi" id="4y$DvIXIXdk" role="2Oq$k0">
                    <node concept="2GrUjf" id="4y$DvIXI$Px" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4y$DvIXI$sw" resolve="component" />
                    </node>
                    <node concept="3AV6Ez" id="4y$DvIXIXuY" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="4y$DvIXJ7cK" role="2OqNvi">
                    <ref role="37wK5l" node="4y$DvIXIBDy" resolve="relayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIXIyWi" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="17nGqbJ_4at" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJ_7tD" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJd3r4" resolve="SceneSynchroinzer" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJ_2_B" role="jymVt" />
    <node concept="312cEu" id="17nGqbJ$usH" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyClickEventListener" />
      <node concept="2tJIrI" id="17nGqbJ$was" role="jymVt" />
      <node concept="3clFb_" id="17nGqbJ$wbt" role="jymVt">
        <property role="TrG5h" value="onMouseClicked" />
        <node concept="3Tm1VV" id="17nGqbJ$wbv" role="1B3o_S" />
        <node concept="3cqZAl" id="17nGqbJ$wbw" role="3clF45" />
        <node concept="37vLTG" id="17nGqbJ$wbx" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="17nGqbJ$wby" role="1tU5fm">
            <ref role="3uigEE" to="3bo0:3vyG44AuRcU" resolve="ClickEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="17nGqbJ$wbz" role="3clF47">
          <node concept="3cpWs8" id="17nGqbJ$wha" role="3cqZAp">
            <node concept="3cpWsn" id="17nGqbJ$whb" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="16syzq" id="4O0ojQq4mtR" role="1tU5fm">
                <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
              </node>
              <node concept="2OqwBi" id="17nGqbJ$whd" role="33vP2m">
                <node concept="37vLTw" id="17nGqbJ$whe" role="2Oq$k0">
                  <ref role="3cqZAo" node="3vyG44ANE3O" resolve="myLayout" />
                </node>
                <node concept="liA8E" id="17nGqbJ$whf" role="2OqNvi">
                  <ref role="37wK5l" to="rvgs:1KCfUoKUBuE" resolve="findAt" />
                  <node concept="2OqwBi" id="17nGqbJ$whg" role="37wK5m">
                    <node concept="2OqwBi" id="17nGqbJ$whh" role="2Oq$k0">
                      <node concept="37vLTw" id="17nGqbJ$whi" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJ$wbx" resolve="event" />
                      </node>
                      <node concept="2OwXpG" id="17nGqbJ$xoz" role="2OqNvi">
                        <ref role="2Oxat5" to="3bo0:3vyG44AuReH" resolve="data" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="17nGqbJ$whk" role="2OqNvi">
                      <ref role="2Oxat5" to="3bo0:3vyG44AulJ$" resolve="x" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="17nGqbJ$whl" role="37wK5m">
                    <node concept="2OqwBi" id="17nGqbJ$whm" role="2Oq$k0">
                      <node concept="37vLTw" id="17nGqbJ$whn" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJ$wbx" resolve="event" />
                      </node>
                      <node concept="2OwXpG" id="17nGqbJ$x8z" role="2OqNvi">
                        <ref role="2Oxat5" to="3bo0:3vyG44AuReH" resolve="data" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="17nGqbJ$whp" role="2OqNvi">
                      <ref role="2Oxat5" to="3bo0:3vyG44AulJB" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="17nGqbJ$whq" role="3cqZAp">
            <node concept="3clFbS" id="17nGqbJ$whr" role="3clFbx">
              <node concept="3clFbF" id="5MmYuOgYFtq" role="3cqZAp">
                <node concept="2OqwBi" id="5MmYuOgYFI0" role="3clFbG">
                  <node concept="37vLTw" id="5MmYuOgYFto" role="2Oq$k0">
                    <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
                  </node>
                  <node concept="liA8E" id="5MmYuOgYFWk" role="2OqNvi">
                    <ref role="37wK5l" to="rvgs:2XwVnrt19DS" resolve="setSelected" />
                    <node concept="37vLTw" id="5MmYuOgYGaD" role="37wK5m">
                      <ref role="3cqZAo" node="17nGqbJ$whb" resolve="component" />
                    </node>
                    <node concept="37vLTw" id="5MmYuOgYHWR" role="37wK5m">
                      <ref role="3cqZAo" node="5MmYuOgYCp$" resolve="myClickShouldSelect" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1iOpS25vvA0" role="3cqZAp">
                <node concept="2OqwBi" id="1iOpS25vxmk" role="3clFbG">
                  <node concept="2OqwBi" id="1iOpS25vw10" role="2Oq$k0">
                    <node concept="37vLTw" id="1iOpS25vv_Y" role="2Oq$k0">
                      <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
                    </node>
                    <node concept="liA8E" id="1iOpS25vwxV" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="1iOpS25vx0G" role="37wK5m">
                        <ref role="3cqZAo" node="17nGqbJ$whb" resolve="component" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iOpS25vxXj" role="2OqNvi">
                    <ref role="37wK5l" node="4y$DvIXIBDy" resolve="relayout" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="17nGqbJ_0fp" role="3cqZAp">
                <node concept="2OqwBi" id="17nGqbJ_0rt" role="3clFbG">
                  <node concept="37vLTw" id="17nGqbJ_0fn" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJ$wbx" resolve="event" />
                  </node>
                  <node concept="liA8E" id="17nGqbJ_0Lc" role="2OqNvi">
                    <ref role="37wK5l" to="3bo0:3vyG44AuRfq" resolve="consume" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="17nGqbJ$wig" role="3clFbw">
              <node concept="10Nm6u" id="17nGqbJ$wih" role="3uHU7w" />
              <node concept="37vLTw" id="17nGqbJ$wii" role="3uHU7B">
                <ref role="3cqZAo" node="17nGqbJ$whb" resolve="component" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="17nGqbJ$wb$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="17nGqbJ$sWZ" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJ$w8I" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJcVRI" resolve="ClickEventListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24P9bi" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24Ow5k" role="jymVt">
      <property role="TrG5h" value="syncOnMovement" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="1iOpS24OyY_" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="1iOpS24O_EP" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24OCAs" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="1iOpS24OHZm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iOpS24OI5T" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="1iOpS24OKs2" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1iOpS24Ow5n" role="3clF47">
        <node concept="3cpWs8" id="1iOpS24PeR_" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS24PeRA" role="3cpWs9">
            <property role="TrG5h" value="entry" />
            <node concept="3uibUv" id="1iOpS24PeR$" role="1tU5fm">
              <ref role="3uigEE" node="7_KjZP9d656" resolve="ComponentEntry" />
              <node concept="16syzq" id="1iOpS258nYP" role="11_B2D">
                <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
              </node>
              <node concept="16syzq" id="1iOpS258nYQ" role="11_B2D">
                <ref role="16sUi3" node="1iOpS24HZvZ" resolve="FormT" />
              </node>
            </node>
            <node concept="2OqwBi" id="1iOpS24PeRB" role="33vP2m">
              <node concept="37vLTw" id="1iOpS24PeRC" role="2Oq$k0">
                <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
              </node>
              <node concept="liA8E" id="1iOpS24PeRD" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="1iOpS24PeRE" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24OyY_" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24Yd6p" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS24YjlN" role="3clFbG">
            <node concept="2OqwBi" id="1iOpS24Ydhm" role="37vLTJ">
              <node concept="37vLTw" id="1iOpS24Yd6n" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS24PeRA" resolve="entry" />
              </node>
              <node concept="2OwXpG" id="1iOpS24YdoM" role="2OqNvi">
                <ref role="2Oxat5" node="1iOpS24NlB_" resolve="myTransformedForm" />
              </node>
            </node>
            <node concept="2OqwBi" id="1iOpS24O8kh" role="37vLTx">
              <node concept="2OqwBi" id="38k27IRsOhb" role="2Oq$k0">
                <node concept="2OwXpG" id="38k27IRsOhc" role="2OqNvi">
                  <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                </node>
                <node concept="37vLTw" id="38k27IRsOhd" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24PeRA" resolve="entry" />
                </node>
              </node>
              <node concept="liA8E" id="1iOpS24O8kj" role="2OqNvi">
                <ref role="37wK5l" node="1iOpS24IWj_" resolve="translateForm" />
                <node concept="2OqwBi" id="1iOpS24O8kk" role="37wK5m">
                  <node concept="2OwXpG" id="1iOpS24O8km" role="2OqNvi">
                    <ref role="2Oxat5" node="1iOpS24NdRP" resolve="myModelForm" />
                  </node>
                  <node concept="37vLTw" id="1iOpS24PeRG" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24PeRA" resolve="entry" />
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS24O8kn" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24OCAs" resolve="dx" />
                </node>
                <node concept="37vLTw" id="1iOpS24O8ko" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24OI5T" resolve="dy" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1iOpS24Ot57" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24Ow33" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1iOpS24Yw0e" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24Ysp4" role="jymVt">
      <property role="TrG5h" value="syncOnMovementCompletion" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="1iOpS24Ysp5" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="1iOpS24Ysp6" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24Yspb" role="3clF47">
        <node concept="3clFbF" id="1iOpS24Yspq" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS24Yspr" role="3clFbG">
            <node concept="2OqwBi" id="1iOpS24Ysps" role="37vLTJ">
              <node concept="2OqwBi" id="1iOpS24ZtKT" role="2Oq$k0">
                <node concept="37vLTw" id="1iOpS24ZtKU" role="2Oq$k0">
                  <ref role="3cqZAo" node="2i$17fO9RmO" resolve="myComponents" />
                </node>
                <node concept="liA8E" id="1iOpS24ZtKV" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="37vLTw" id="1iOpS24ZziV" role="37wK5m">
                    <ref role="3cqZAo" node="1iOpS24Ysp5" resolve="component" />
                  </node>
                </node>
              </node>
              <node concept="2OwXpG" id="1iOpS24Yspu" role="2OqNvi">
                <ref role="2Oxat5" node="1iOpS24NlB_" resolve="myTransformedForm" />
              </node>
            </node>
            <node concept="10Nm6u" id="1iOpS24ZiEB" role="37vLTx" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1iOpS24YspI" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24YspJ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="17nGqbJ$hWz" role="jymVt" />
    <node concept="312cEu" id="17nGqbJ$kZ3" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyDragEventListener" />
      <node concept="2tJIrI" id="17nGqbJ$mAg" role="jymVt" />
      <node concept="3clFb_" id="17nGqbJ$mB8" role="jymVt">
        <property role="TrG5h" value="onDragStarted" />
        <node concept="3Tm1VV" id="17nGqbJ$mBa" role="1B3o_S" />
        <node concept="3cqZAl" id="17nGqbJ$mBb" role="3clF45" />
        <node concept="37vLTG" id="17nGqbJ$mBc" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="17nGqbJ$mBd" role="1tU5fm">
            <ref role="3uigEE" to="3bo0:1KCfUoKRUJj" resolve="DragEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="17nGqbJ$mBe" role="3clF47">
          <node concept="3cpWs8" id="17nGqbJc6VD" role="3cqZAp">
            <node concept="3cpWsn" id="17nGqbJc6VE" role="3cpWs9">
              <property role="TrG5h" value="component" />
              <node concept="16syzq" id="4O0ojQq4lwj" role="1tU5fm">
                <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
              </node>
              <node concept="2OqwBi" id="17nGqbJc6VF" role="33vP2m">
                <node concept="37vLTw" id="17nGqbJc6VG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3vyG44ANE3O" resolve="myLayout" />
                </node>
                <node concept="liA8E" id="17nGqbJc6VH" role="2OqNvi">
                  <ref role="37wK5l" to="rvgs:1KCfUoKUBuE" resolve="findAt" />
                  <node concept="2OqwBi" id="17nGqbJc6VI" role="37wK5m">
                    <node concept="2OqwBi" id="17nGqbJc6VJ" role="2Oq$k0">
                      <node concept="37vLTw" id="17nGqbJc6VK" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJ$mBc" resolve="event" />
                      </node>
                      <node concept="2OwXpG" id="17nGqbJc6VL" role="2OqNvi">
                        <ref role="2Oxat5" to="3bo0:3vyG44AuBRH" resolve="data" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="17nGqbJc6VM" role="2OqNvi">
                      <ref role="2Oxat5" to="3bo0:3vyG44AulJ$" resolve="x" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="17nGqbJc6VN" role="37wK5m">
                    <node concept="2OqwBi" id="17nGqbJc6VO" role="2Oq$k0">
                      <node concept="37vLTw" id="17nGqbJc6VP" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJ$mBc" resolve="event" />
                      </node>
                      <node concept="2OwXpG" id="17nGqbJc6VQ" role="2OqNvi">
                        <ref role="2Oxat5" to="3bo0:3vyG44AuBRH" resolve="data" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="17nGqbJc6VR" role="2OqNvi">
                      <ref role="2Oxat5" to="3bo0:3vyG44AulJB" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="17nGqbJcafa" role="3cqZAp">
            <node concept="3clFbS" id="17nGqbJcafc" role="3clFbx">
              <node concept="3cpWs8" id="17nGqbJcgxd" role="3cqZAp">
                <node concept="3cpWsn" id="17nGqbJcgxj" role="3cpWs9">
                  <property role="TrG5h" value="movingComponents" />
                  <node concept="3uibUv" id="17nGqbJcgxl" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                    <node concept="16syzq" id="4O0ojQq4lHP" role="11_B2D">
                      <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="17nGqbJckDQ" role="33vP2m">
                    <node concept="2i4dXS" id="17nGqbJcmN2" role="2ShVmc">
                      <node concept="16syzq" id="4O0ojQq4m6N" role="HW$YZ">
                        <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="17nGqbJcooN" role="3cqZAp">
                <node concept="2OqwBi" id="17nGqbJcoT3" role="3clFbG">
                  <node concept="37vLTw" id="17nGqbJcooL" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJcgxj" resolve="movingComponents" />
                  </node>
                  <node concept="liA8E" id="17nGqbJcrF8" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
                    <node concept="37vLTw" id="17nGqbJcrOR" role="37wK5m">
                      <ref role="3cqZAo" node="17nGqbJc6VE" resolve="component" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="17nGqbJcs0X" role="3cqZAp">
                <node concept="3clFbS" id="17nGqbJcs0Z" role="3clFbx">
                  <node concept="3clFbF" id="17nGqbJcvIW" role="3cqZAp">
                    <node concept="2OqwBi" id="17nGqbJcwf5" role="3clFbG">
                      <node concept="37vLTw" id="17nGqbJcvIU" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJcgxj" resolve="movingComponents" />
                      </node>
                      <node concept="liA8E" id="17nGqbJcz18" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Set.addAll(java.util.Collection):boolean" resolve="addAll" />
                        <node concept="2OqwBi" id="17nGqbJczoU" role="37wK5m">
                          <node concept="37vLTw" id="17nGqbJczcr" role="2Oq$k0">
                            <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
                          </node>
                          <node concept="liA8E" id="17nGqbJczGN" role="2OqNvi">
                            <ref role="37wK5l" to="rvgs:1KCfUoKS0LD" resolve="getSelectedComponents" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="17nGqbJct7m" role="3clFbw">
                  <node concept="2OqwBi" id="17nGqbJcsm5" role="2Oq$k0">
                    <node concept="37vLTw" id="17nGqbJcs6O" role="2Oq$k0">
                      <ref role="3cqZAo" node="17nGqbJ$mBc" resolve="event" />
                    </node>
                    <node concept="2OwXpG" id="17nGqbJcsKc" role="2OqNvi">
                      <ref role="2Oxat5" to="3bo0:3vyG44AuBRH" resolve="data" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="17nGqbJcviv" role="2OqNvi">
                    <ref role="2Oxat5" to="3bo0:3vyG44AulJH" resolve="metaDown" />
                  </node>
                </node>
                <node concept="9aQIb" id="5MmYuOgVbQK" role="9aQIa">
                  <node concept="3clFbS" id="5MmYuOgVbQL" role="9aQI4">
                    <node concept="3clFbF" id="5MmYuOgVc9r" role="3cqZAp">
                      <node concept="2OqwBi" id="5MmYuOgVckE" role="3clFbG">
                        <node concept="37vLTw" id="5MmYuOgVc9q" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIYkgSe" resolve="mySceneFocus" />
                        </node>
                        <node concept="liA8E" id="5MmYuOgVecj" role="2OqNvi">
                          <ref role="37wK5l" to="rvgs:4y$DvIXWgRe" resolve="clearFocus" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5MmYuOgVig9" role="3cqZAp">
                      <node concept="2OqwBi" id="5MmYuOgVixF" role="3clFbG">
                        <node concept="37vLTw" id="5MmYuOgVig7" role="2Oq$k0">
                          <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
                        </node>
                        <node concept="liA8E" id="5MmYuOgVkNJ" role="2OqNvi">
                          <ref role="37wK5l" to="rvgs:17nGqbJ$$hK" resolve="clear" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5MmYuOgYKD6" role="3cqZAp">
                <node concept="37vLTI" id="5MmYuOgYLTg" role="3clFbG">
                  <node concept="3fqX7Q" id="5MmYuOgYWxL" role="37vLTx">
                    <node concept="2OqwBi" id="5MmYuOgYWxN" role="3fr31v">
                      <node concept="37vLTw" id="5MmYuOgYWxO" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
                      </node>
                      <node concept="liA8E" id="5MmYuOgYWxP" role="2OqNvi">
                        <ref role="37wK5l" to="rvgs:2XwVnrt19Ro" resolve="isSelected" />
                        <node concept="37vLTw" id="5MmYuOgYWxQ" role="37wK5m">
                          <ref role="3cqZAo" node="17nGqbJc6VE" resolve="component" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5MmYuOgYKD4" role="37vLTJ">
                    <ref role="3cqZAo" node="5MmYuOgYCp$" resolve="myClickShouldSelect" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5MmYuOgVlra" role="3cqZAp">
                <node concept="2OqwBi" id="5MmYuOgVlW3" role="3clFbG">
                  <node concept="37vLTw" id="5MmYuOgVlr8" role="2Oq$k0">
                    <ref role="3cqZAo" node="3vyG44ANDzR" resolve="mySelection" />
                  </node>
                  <node concept="liA8E" id="5MmYuOgVoq_" role="2OqNvi">
                    <ref role="37wK5l" to="rvgs:2XwVnrt19DS" resolve="setSelected" />
                    <node concept="37vLTw" id="5MmYuOgVoDq" role="37wK5m">
                      <ref role="3cqZAo" node="17nGqbJc6VE" resolve="component" />
                    </node>
                    <node concept="3clFbT" id="5MmYuOgVoPB" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5MmYuOgVeHy" role="3cqZAp">
                <node concept="2OqwBi" id="5MmYuOgVfan" role="3clFbG">
                  <node concept="37vLTw" id="5MmYuOgVeHw" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIYkgSe" resolve="mySceneFocus" />
                  </node>
                  <node concept="liA8E" id="5MmYuOgVh63" role="2OqNvi">
                    <ref role="37wK5l" to="rvgs:4y$DvIXWfTe" resolve="addFocus" />
                    <node concept="37vLTw" id="5MmYuOgVhhA" role="37wK5m">
                      <ref role="3cqZAo" node="4y$DvIYksqK" resolve="myFocusHandle" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="17nGqbJcIMc" role="3cqZAp">
                <node concept="3cpWsn" id="17nGqbJcIMd" role="3cpWs9">
                  <property role="TrG5h" value="handler" />
                  <node concept="3uibUv" id="17nGqbJcILL" role="1tU5fm">
                    <ref role="3uigEE" node="1KCfUoKSQ0G" resolve="ComponentsFacility.MyDragEventHandler" />
                  </node>
                  <node concept="2ShNRf" id="17nGqbJcIMe" role="33vP2m">
                    <node concept="1pGfFk" id="17nGqbJcIMf" role="2ShVmc">
                      <ref role="37wK5l" node="1KCfUoKSQ0X" resolve="ComponentsFacility.MyDragEventHandler" />
                      <node concept="37vLTw" id="1iOpS24Ph77" role="37wK5m">
                        <ref role="3cqZAo" node="17nGqbJcgxj" resolve="movingComponents" />
                      </node>
                      <node concept="2OqwBi" id="17nGqbJcIMg" role="37wK5m">
                        <node concept="37vLTw" id="17nGqbJcIMh" role="2Oq$k0">
                          <ref role="3cqZAo" node="3vyG44ANE3O" resolve="myLayout" />
                        </node>
                        <node concept="liA8E" id="17nGqbJcIMi" role="2OqNvi">
                          <ref role="37wK5l" to="rvgs:3vyG44APD0o" resolve="moveComponents" />
                          <node concept="37vLTw" id="17nGqbJcIMj" role="37wK5m">
                            <ref role="3cqZAo" node="17nGqbJcgxj" resolve="movingComponents" />
                          </node>
                        </node>
                      </node>
                      <node concept="2ShNRf" id="17nGqbJcIMk" role="37wK5m">
                        <node concept="1pGfFk" id="17nGqbJcIMl" role="2ShVmc">
                          <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                          <node concept="2OqwBi" id="17nGqbJcIMm" role="37wK5m">
                            <node concept="2OqwBi" id="17nGqbJcIMn" role="2Oq$k0">
                              <node concept="37vLTw" id="17nGqbJcIMo" role="2Oq$k0">
                                <ref role="3cqZAo" node="17nGqbJ$mBc" resolve="event" />
                              </node>
                              <node concept="2OwXpG" id="17nGqbJcIMp" role="2OqNvi">
                                <ref role="2Oxat5" to="3bo0:3vyG44AuBRH" resolve="data" />
                              </node>
                            </node>
                            <node concept="2OwXpG" id="17nGqbJcIMq" role="2OqNvi">
                              <ref role="2Oxat5" to="3bo0:3vyG44AulJ$" resolve="x" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="17nGqbJcIMr" role="37wK5m">
                            <node concept="2OqwBi" id="17nGqbJcIMs" role="2Oq$k0">
                              <node concept="37vLTw" id="17nGqbJcIMt" role="2Oq$k0">
                                <ref role="3cqZAo" node="17nGqbJ$mBc" resolve="event" />
                              </node>
                              <node concept="2OwXpG" id="17nGqbJcIMu" role="2OqNvi">
                                <ref role="2Oxat5" to="3bo0:3vyG44AuBRH" resolve="data" />
                              </node>
                            </node>
                            <node concept="2OwXpG" id="17nGqbJcIMv" role="2OqNvi">
                              <ref role="2Oxat5" to="3bo0:3vyG44AulJB" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="17nGqbJcJI4" role="3cqZAp">
                <node concept="2OqwBi" id="17nGqbJcKje" role="3clFbG">
                  <node concept="37vLTw" id="17nGqbJcJHZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJ$mBc" resolve="event" />
                  </node>
                  <node concept="liA8E" id="17nGqbJcKMt" role="2OqNvi">
                    <ref role="37wK5l" to="3bo0:2XwVnrt0l_8" resolve="consume" />
                    <node concept="37vLTw" id="17nGqbJcKT$" role="37wK5m">
                      <ref role="3cqZAo" node="17nGqbJcIMd" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4O0ojQpYiVj" role="3cqZAp">
                <node concept="2OqwBi" id="4O0ojQpYiVk" role="3clFbG">
                  <node concept="37vLTw" id="4O0ojQpYiVl" role="2Oq$k0">
                    <ref role="3cqZAo" node="4O0ojQpY7yt" resolve="myEditor" />
                  </node>
                  <node concept="liA8E" id="4O0ojQpYiVm" role="2OqNvi">
                    <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="17nGqbJcfHB" role="3clFbw">
              <node concept="10Nm6u" id="17nGqbJcfNx" role="3uHU7w" />
              <node concept="37vLTw" id="17nGqbJca_F" role="3uHU7B">
                <ref role="3cqZAo" node="17nGqbJc6VE" resolve="component" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="17nGqbJ$mBf" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="17nGqbJ$nxW" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJ$m$K" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJcVM0" resolve="DragEventListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJb59p" role="jymVt" />
    <node concept="312cEu" id="1KCfUoKSQ0G" role="jymVt">
      <property role="TrG5h" value="MyDragEventHandler" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="17nGqbJ$nTW" role="1B3o_S" />
      <node concept="3uibUv" id="1KCfUoKSQ0I" role="EKbjA">
        <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
      <node concept="2tJIrI" id="1KCfUoKSQ0J" role="jymVt" />
      <node concept="312cEg" id="17nGqbJbgRs" role="jymVt">
        <property role="TrG5h" value="myHandle" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="17nGqbJbg77" role="1B3o_S" />
        <node concept="3uibUv" id="17nGqbJbgM2" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:3vyG44APBBK" resolve="LayoutMovememntHandle" />
        </node>
      </node>
      <node concept="312cEg" id="1KCfUoKSQ0Q" role="jymVt">
        <property role="TrG5h" value="myOrigin" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1KCfUoKSQ0R" role="1B3o_S" />
        <node concept="3uibUv" id="17nGqbJbu5G" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="312cEg" id="1iOpS24Nu2U" role="jymVt">
        <property role="TrG5h" value="myMovedComponents" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1iOpS24NtpU" role="1B3o_S" />
        <node concept="3uibUv" id="1iOpS24NtTz" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="1iOpS24Nu0U" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1KCfUoKSQ0W" role="jymVt" />
      <node concept="3clFbW" id="1KCfUoKSQ0X" role="jymVt">
        <node concept="3cqZAl" id="1KCfUoKSQ12" role="3clF45" />
        <node concept="3Tm1VV" id="1KCfUoKSQ13" role="1B3o_S" />
        <node concept="3clFbS" id="1KCfUoKSQ14" role="3clF47">
          <node concept="3clFbF" id="17nGqbJbt2S" role="3cqZAp">
            <node concept="37vLTI" id="17nGqbJbtDd" role="3clFbG">
              <node concept="37vLTw" id="17nGqbJbu2D" role="37vLTx">
                <ref role="3cqZAo" node="1KCfUoKT0FF" resolve="handle" />
              </node>
              <node concept="37vLTw" id="17nGqbJbt2Q" role="37vLTJ">
                <ref role="3cqZAo" node="17nGqbJbgRs" resolve="myHandle" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1KCfUoKSQ1d" role="3cqZAp">
            <node concept="37vLTI" id="1KCfUoKSQ1e" role="3clFbG">
              <node concept="37vLTw" id="1KCfUoKSQ1g" role="37vLTJ">
                <ref role="3cqZAo" node="1KCfUoKSQ0Q" resolve="myOrigin" />
              </node>
              <node concept="37vLTw" id="17nGqbJbssJ" role="37vLTx">
                <ref role="3cqZAo" node="17nGqbJbkNV" resolve="origin" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iOpS24NuHo" role="3cqZAp">
            <node concept="37vLTI" id="1iOpS24NJ1O" role="3clFbG">
              <node concept="37vLTw" id="1iOpS24NJmm" role="37vLTx">
                <ref role="3cqZAo" node="1iOpS24NrE_" resolve="components" />
              </node>
              <node concept="37vLTw" id="1iOpS24NuHm" role="37vLTJ">
                <ref role="3cqZAo" node="1iOpS24Nu2U" resolve="myMovedComponents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1iOpS24NrE_" role="3clF46">
          <property role="TrG5h" value="components" />
          <node concept="3uibUv" id="1iOpS24NrW6" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="16syzq" id="1iOpS24Nsmr" role="11_B2D">
              <ref role="16sUi3" node="4O0ojQq3mJH" resolve="CompT" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1KCfUoKT0FF" role="3clF46">
          <property role="TrG5h" value="handle" />
          <node concept="3uibUv" id="17nGqbJbq$h" role="1tU5fm">
            <ref role="3uigEE" to="rvgs:3vyG44APBBK" resolve="LayoutMovememntHandle" />
          </node>
        </node>
        <node concept="37vLTG" id="17nGqbJbkNV" role="3clF46">
          <property role="TrG5h" value="origin" />
          <node concept="3uibUv" id="17nGqbJblf6" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1KCfUoKSQ1p" role="jymVt" />
      <node concept="3clFb_" id="1KCfUoKSQ1q" role="jymVt">
        <property role="TrG5h" value="dragTo" />
        <node concept="3Tm1VV" id="1KCfUoKSQ1r" role="1B3o_S" />
        <node concept="3cqZAl" id="1KCfUoKSQ1s" role="3clF45" />
        <node concept="37vLTG" id="1KCfUoKSQ1t" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="1KCfUoKSQ1u" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1KCfUoKSQ1v" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="1KCfUoKSQ1w" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1KCfUoKSQ1x" role="3clF47">
          <node concept="3cpWs8" id="1iOpS24O4FH" role="3cqZAp">
            <node concept="3cpWsn" id="1iOpS24O4FI" role="3cpWs9">
              <property role="TrG5h" value="dx" />
              <node concept="10Oyi0" id="1iOpS24O4FC" role="1tU5fm" />
              <node concept="3cpWsd" id="1iOpS24O4FJ" role="33vP2m">
                <node concept="2OqwBi" id="1iOpS24O4FK" role="3uHU7w">
                  <node concept="37vLTw" id="1iOpS24O4FL" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KCfUoKSQ0Q" resolve="myOrigin" />
                  </node>
                  <node concept="2OwXpG" id="1iOpS24O4FM" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS24O4FN" role="3uHU7B">
                  <ref role="3cqZAo" node="1KCfUoKSQ1t" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1iOpS24O5B_" role="3cqZAp">
            <node concept="3cpWsn" id="1iOpS24O5BA" role="3cpWs9">
              <property role="TrG5h" value="dy" />
              <node concept="10Oyi0" id="1iOpS24O5Bv" role="1tU5fm" />
              <node concept="3cpWsd" id="1iOpS24O5BB" role="33vP2m">
                <node concept="2OqwBi" id="1iOpS24O5BC" role="3uHU7w">
                  <node concept="37vLTw" id="1iOpS24O5BD" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KCfUoKSQ0Q" resolve="myOrigin" />
                  </node>
                  <node concept="2OwXpG" id="1iOpS24O5BE" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS24O5BF" role="3uHU7B">
                  <ref role="3cqZAo" node="1KCfUoKSQ1v" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="17nGqbJbxL8" role="3cqZAp">
            <node concept="2OqwBi" id="17nGqbJbxXb" role="3clFbG">
              <node concept="37vLTw" id="17nGqbJbxL7" role="2Oq$k0">
                <ref role="3cqZAo" node="17nGqbJbgRs" resolve="myHandle" />
              </node>
              <node concept="liA8E" id="17nGqbJby6A" role="2OqNvi">
                <ref role="37wK5l" to="rvgs:3vyG44APCdg" resolve="moveTo" />
                <node concept="37vLTw" id="1iOpS24O4FO" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24O4FI" resolve="dx" />
                </node>
                <node concept="37vLTw" id="1iOpS24O5BG" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24O5BA" resolve="dy" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1iOpS24NJtx" role="3cqZAp" />
          <node concept="3clFbF" id="4O0ojQpYjBK" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpYjBL" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpYjBM" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpY7yt" resolve="myEditor" />
              </node>
              <node concept="liA8E" id="4O0ojQpYjBN" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:1iOpS24Am6k" resolve="fireRelayout" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="38k27IRqMWy" role="3cqZAp" />
          <node concept="2Gpval" id="1iOpS24NK3c" role="3cqZAp">
            <node concept="2GrKxI" id="1iOpS24NK3e" role="2Gsz3X">
              <property role="TrG5h" value="component" />
            </node>
            <node concept="37vLTw" id="1iOpS24NKQ9" role="2GsD0m">
              <ref role="3cqZAo" node="1iOpS24Nu2U" resolve="myMovedComponents" />
            </node>
            <node concept="3clFbS" id="1iOpS24NK3i" role="2LFqv$">
              <node concept="3clFbF" id="1iOpS24OVup" role="3cqZAp">
                <node concept="1rXfSq" id="1iOpS24OVun" role="3clFbG">
                  <ref role="37wK5l" node="1iOpS24Ow5k" resolve="syncOnMovement" />
                  <node concept="2GrUjf" id="1iOpS24OW3v" role="37wK5m">
                    <ref role="2Gs0qQ" node="1iOpS24NK3e" resolve="component" />
                  </node>
                  <node concept="37vLTw" id="1iOpS24OW9_" role="37wK5m">
                    <ref role="3cqZAo" node="1iOpS24O4FI" resolve="dx" />
                  </node>
                  <node concept="37vLTw" id="1iOpS24OWBs" role="37wK5m">
                    <ref role="3cqZAo" node="1iOpS24O5BA" resolve="dy" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1KCfUoKSQ2b" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1KCfUoKSTlx" role="jymVt" />
      <node concept="3clFb_" id="1KCfUoKSTJv" role="jymVt">
        <property role="TrG5h" value="completeAt" />
        <node concept="3Tm1VV" id="1KCfUoKSTJ_" role="1B3o_S" />
        <node concept="3cqZAl" id="1KCfUoKSTJA" role="3clF45" />
        <node concept="37vLTG" id="1KCfUoKSTJB" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="1KCfUoKSTJC" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1KCfUoKSTJD" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="1KCfUoKSTJE" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1KCfUoKSTJG" role="3clF47">
          <node concept="3clFbF" id="17nGqbJbN5G" role="3cqZAp">
            <node concept="2OqwBi" id="17nGqbJbN5H" role="3clFbG">
              <node concept="37vLTw" id="17nGqbJbN5I" role="2Oq$k0">
                <ref role="3cqZAo" node="17nGqbJbgRs" resolve="myHandle" />
              </node>
              <node concept="liA8E" id="17nGqbJbN5J" role="2OqNvi">
                <ref role="37wK5l" to="rvgs:3vyG44APCdg" resolve="moveTo" />
                <node concept="3cpWsd" id="17nGqbJbN5K" role="37wK5m">
                  <node concept="2OqwBi" id="17nGqbJbN5L" role="3uHU7w">
                    <node concept="37vLTw" id="17nGqbJbN5M" role="2Oq$k0">
                      <ref role="3cqZAo" node="1KCfUoKSQ0Q" resolve="myOrigin" />
                    </node>
                    <node concept="2OwXpG" id="17nGqbJbN5N" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="17nGqbJbN5O" role="3uHU7B">
                    <ref role="3cqZAo" node="1KCfUoKSTJB" resolve="x" />
                  </node>
                </node>
                <node concept="3cpWsd" id="17nGqbJbN5P" role="37wK5m">
                  <node concept="2OqwBi" id="17nGqbJbN5Q" role="3uHU7w">
                    <node concept="37vLTw" id="17nGqbJbN5R" role="2Oq$k0">
                      <ref role="3cqZAo" node="1KCfUoKSQ0Q" resolve="myOrigin" />
                    </node>
                    <node concept="2OwXpG" id="17nGqbJbN5S" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="17nGqbJbN5T" role="3uHU7B">
                    <ref role="3cqZAo" node="1KCfUoKSTJD" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="17nGqbJbOV3" role="3cqZAp">
            <node concept="2OqwBi" id="17nGqbJbPmT" role="3clFbG">
              <node concept="37vLTw" id="17nGqbJbOV1" role="2Oq$k0">
                <ref role="3cqZAo" node="17nGqbJbgRs" resolve="myHandle" />
              </node>
              <node concept="liA8E" id="17nGqbJbRow" role="2OqNvi">
                <ref role="37wK5l" to="rvgs:3vyG44APC0s" resolve="complete" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1iOpS24Zl5e" role="3cqZAp" />
          <node concept="3clFbF" id="4O0ojQpYk8p" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpYk8q" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpYk8r" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpY7yt" resolve="myEditor" />
              </node>
              <node concept="liA8E" id="4O0ojQpYk8s" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:1iOpS24Am6k" resolve="fireRelayout" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="38k27IRqOA2" role="3cqZAp" />
          <node concept="2Gpval" id="1iOpS24Zlyu" role="3cqZAp">
            <node concept="2GrKxI" id="1iOpS24Zlyv" role="2Gsz3X">
              <property role="TrG5h" value="component" />
            </node>
            <node concept="37vLTw" id="1iOpS24Zlyw" role="2GsD0m">
              <ref role="3cqZAo" node="1iOpS24Nu2U" resolve="myMovedComponents" />
            </node>
            <node concept="3clFbS" id="1iOpS24Zlyx" role="2LFqv$">
              <node concept="3clFbF" id="1iOpS24Zlyy" role="3cqZAp">
                <node concept="1rXfSq" id="1iOpS24Zlyz" role="3clFbG">
                  <ref role="37wK5l" node="1iOpS24Ysp4" resolve="syncOnMovementCompletion" />
                  <node concept="2GrUjf" id="1iOpS24Zly$" role="37wK5m">
                    <ref role="2Gs0qQ" node="1iOpS24Zlyv" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1KCfUoKSTJH" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQp$4p6" role="jymVt" />
    <node concept="2tJIrI" id="4O0ojQp$4x1" role="jymVt" />
    <node concept="3Tm1VV" id="3vyG44ANA6o" role="1B3o_S" />
    <node concept="16euLQ" id="4O0ojQq3mJH" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
    <node concept="16euLQ" id="1iOpS24HZvZ" role="16eVyc">
      <property role="TrG5h" value="FormT" />
    </node>
  </node>
  <node concept="312cEu" id="7_KjZP9d656">
    <property role="TrG5h" value="ComponentEntry" />
    <property role="2bfB8j" value="true" />
    <node concept="312cEg" id="7_KjZP9ek_0" role="jymVt">
      <property role="TrG5h" value="myComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="16syzq" id="4O0ojQq3YNQ" role="1tU5fm">
        <ref role="16sUi3" node="1iOpS257ih_" resolve="CompT" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS25vhwf" role="jymVt" />
    <node concept="312cEg" id="4O0ojQpAPEF" role="jymVt">
      <property role="TrG5h" value="myLayoutSetting" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4O0ojQpAUfS" role="1tU5fm">
        <ref role="3uigEE" node="4O0ojQpAale" resolve="ComponentEntry.LayoutSetting" />
      </node>
    </node>
    <node concept="312cEg" id="4y$DvIXIR3r" role="jymVt">
      <property role="TrG5h" value="myFormProvider" />
      <node concept="3uibUv" id="4y$DvIXIQVt" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
        <node concept="16syzq" id="1iOpS24IKbc" role="11_B2D">
          <ref role="16sUi3" node="1iOpS257jVU" resolve="FormT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1iOpS24NdRP" role="jymVt">
      <property role="TrG5h" value="myModelForm" />
      <node concept="16syzq" id="1iOpS24NfAN" role="1tU5fm">
        <ref role="16sUi3" node="1iOpS257jVU" resolve="FormT" />
      </node>
    </node>
    <node concept="312cEg" id="1iOpS24NlB_" role="jymVt">
      <property role="TrG5h" value="myTransformedForm" />
      <node concept="16syzq" id="1iOpS24Nl_s" role="1tU5fm">
        <ref role="16sUi3" node="1iOpS257jVU" resolve="FormT" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpAQVy" role="jymVt" />
    <node concept="312cEg" id="7_KjZP9f9dA" role="jymVt">
      <property role="TrG5h" value="myController" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7_KjZP9f9cY" role="1tU5fm">
        <ref role="3uigEE" node="1KCfUoKRRlk" resolve="ComponentController" />
        <node concept="16syzq" id="1iOpS24JOhT" role="11_B2D">
          <ref role="16sUi3" node="1iOpS257jVU" resolve="FormT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9ffvc" role="jymVt" />
    <node concept="312cEg" id="1iOpS257v_X" role="jymVt">
      <property role="TrG5h" value="myFacility" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1iOpS257uiB" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS257wzJ" role="1tU5fm">
        <ref role="3uigEE" node="3vyG44ANA6n" resolve="ComponentsFacility" />
        <node concept="16syzq" id="1iOpS257wzK" role="11_B2D">
          <ref role="16sUi3" node="1iOpS257ih_" resolve="CompT" />
        </node>
        <node concept="16syzq" id="1iOpS257wzL" role="11_B2D">
          <ref role="16sUi3" node="1iOpS257jVU" resolve="FormT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS257tkq" role="jymVt" />
    <node concept="3clFbW" id="7_KjZP9fg0l" role="jymVt">
      <node concept="37vLTG" id="1iOpS257nIr" role="3clF46">
        <property role="TrG5h" value="facility" />
        <node concept="3uibUv" id="1iOpS257of$" role="1tU5fm">
          <ref role="3uigEE" node="3vyG44ANA6n" resolve="ComponentsFacility" />
          <node concept="16syzq" id="1iOpS257oTS" role="11_B2D">
            <ref role="16sUi3" node="1iOpS257ih_" resolve="CompT" />
          </node>
          <node concept="16syzq" id="1iOpS257pfj" role="11_B2D">
            <ref role="16sUi3" node="1iOpS257jVU" resolve="FormT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP9fgwh" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="4O0ojQq3Zad" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS257ih_" resolve="CompT" />
        </node>
      </node>
      <node concept="3cqZAl" id="7_KjZP9fg0n" role="3clF45" />
      <node concept="3clFbS" id="7_KjZP9fg0p" role="3clF47">
        <node concept="3clFbF" id="7_KjZP9fgBH" role="3cqZAp">
          <node concept="37vLTI" id="7_KjZP9fhvt" role="3clFbG">
            <node concept="37vLTw" id="7_KjZP9fh$e" role="37vLTx">
              <ref role="3cqZAo" node="7_KjZP9fgwh" resolve="component" />
            </node>
            <node concept="37vLTw" id="7_KjZP9fgBG" role="37vLTJ">
              <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpASmu" role="3cqZAp">
          <node concept="37vLTI" id="4O0ojQpATlC" role="3clFbG">
            <node concept="2ShNRf" id="4O0ojQpAT$$" role="37vLTx">
              <node concept="HV5vD" id="4O0ojQpAU6L" role="2ShVmc">
                <ref role="HV5vE" node="4O0ojQpAale" resolve="ComponentEntry.LayoutSetting" />
              </node>
            </node>
            <node concept="37vLTw" id="4O0ojQpASms" role="37vLTJ">
              <ref role="3cqZAo" node="4O0ojQpAPEF" resolve="myLayoutSetting" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS257xrH" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS257yK2" role="3clFbG">
            <node concept="37vLTw" id="1iOpS257zkC" role="37vLTx">
              <ref role="3cqZAo" node="1iOpS257nIr" resolve="facility" />
            </node>
            <node concept="37vLTw" id="1iOpS257xrF" role="37vLTJ">
              <ref role="3cqZAo" node="1iOpS257v_X" resolve="myFacility" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_KjZP9flbE" role="3cqZAp">
          <node concept="37vLTI" id="7_KjZP9flUm" role="3clFbG">
            <node concept="2OqwBi" id="7_KjZP9fmqJ" role="37vLTx">
              <node concept="2OqwBi" id="1iOpS25853X" role="2Oq$k0">
                <node concept="37vLTw" id="1iOpS2587Wp" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS257v_X" resolve="myFacility" />
                </node>
                <node concept="2OwXpG" id="1iOpS258540" role="2OqNvi">
                  <ref role="2Oxat5" node="7qPnRGFrNpo" resolve="myControllerFactory" />
                </node>
              </node>
              <node concept="liA8E" id="7_KjZP9fmOd" role="2OqNvi">
                <ref role="37wK5l" node="4O0ojQq3jsJ" resolve="create" />
                <node concept="2OqwBi" id="4O0ojQq42wn" role="37wK5m">
                  <node concept="2OqwBi" id="1iOpS25fb3$" role="2Oq$k0">
                    <node concept="37vLTw" id="1iOpS25fbhZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS257v_X" resolve="myFacility" />
                    </node>
                    <node concept="2OwXpG" id="1iOpS25fb3B" role="2OqNvi">
                      <ref role="2Oxat5" node="4O0ojQpY7yt" resolve="myEditor" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4O0ojQq44Fk" role="2OqNvi">
                    <ref role="37wK5l" to="3bo0:7sG$k3BQmmw" resolve="getContext" />
                  </node>
                </node>
                <node concept="37vLTw" id="4y$DvIVPFFw" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myComponent" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7_KjZP9flbC" role="37vLTJ">
              <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1gL472DT4pS" role="jymVt" />
    <node concept="3clFb_" id="1gL472DTbKH" role="jymVt">
      <property role="TrG5h" value="syncronize" />
      <node concept="3clFbS" id="1gL472DTbKK" role="3clF47">
        <node concept="3clFbF" id="4y$DvIXISSx" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIXIUlQ" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIXITl9" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIXIR3r" resolve="myFormProvider" />
            </node>
            <node concept="2OqwBi" id="1gL472DTvgd" role="37vLTx">
              <node concept="2OqwBi" id="1iOpS2581FU" role="2Oq$k0">
                <node concept="37vLTw" id="1iOpS25824z" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS257v_X" resolve="myFacility" />
                </node>
                <node concept="2OwXpG" id="1iOpS2581FX" role="2OqNvi">
                  <ref role="2Oxat5" node="4O0ojQp$DNq" resolve="myComponentSyncronizer" />
                </node>
              </node>
              <node concept="liA8E" id="1gL472DTvgf" role="2OqNvi">
                <ref role="37wK5l" node="1gL472EF7k_" resolve="getForm" />
                <node concept="37vLTw" id="1gL472DTvgg" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIVPh5D" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIVPhnA" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIVPh5B" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
            </node>
            <node concept="liA8E" id="4y$DvIVPjlk" role="2OqNvi">
              <ref role="37wK5l" node="4y$DvIVNz4K" resolve="synchronize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1gL472DTbCW" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4y$DvIXI$Zy" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXIBDy" role="jymVt">
      <property role="TrG5h" value="relayout" />
      <node concept="3clFbS" id="4y$DvIXIBD_" role="3clF47">
        <node concept="3clFbF" id="1iOpS24Ng0Y" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS24Ngw2" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24Ng0W" role="37vLTJ">
              <ref role="3cqZAo" node="1iOpS24NdRP" resolve="myModelForm" />
            </node>
            <node concept="2OqwBi" id="4y$DvIXIVOb" role="37vLTx">
              <node concept="37vLTw" id="4y$DvIXIVtb" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXIR3r" resolve="myFormProvider" />
              </node>
              <node concept="liA8E" id="4y$DvIXIWQY" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Supplier.get():java.lang.Object" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1gL472DTvg8" role="3cqZAp">
          <node concept="37vLTI" id="1gL472DTvg9" role="3clFbG">
            <node concept="2OqwBi" id="1gL472DTvga" role="37vLTJ">
              <node concept="37vLTw" id="4O0ojQpAV5R" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpAPEF" resolve="myLayoutSetting" />
              </node>
              <node concept="2OwXpG" id="4O0ojQpAVif" role="2OqNvi">
                <ref role="2Oxat5" node="4O0ojQpAc$l" resolve="myBounds" />
              </node>
            </node>
            <node concept="2OqwBi" id="1iOpS24Nhus" role="37vLTx">
              <node concept="37vLTw" id="1iOpS24Nh5C" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
              </node>
              <node concept="liA8E" id="1iOpS24NhOe" role="2OqNvi">
                <ref role="37wK5l" node="4y$DvIXp_gc" resolve="getBounds" />
                <node concept="37vLTw" id="1iOpS24Ni3C" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24NdRP" resolve="myModelForm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24NqLH" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24Nr65" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24NqLF" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
            </node>
            <node concept="liA8E" id="1iOpS24Nriq" role="2OqNvi">
              <ref role="37wK5l" node="1iOpS24JP$C" resolve="updateCellWithForm" />
              <node concept="3K4zz7" id="38k27IRsLSX" role="37wK5m">
                <node concept="37vLTw" id="38k27IRsLZ_" role="3K4E3e">
                  <ref role="3cqZAo" node="1iOpS24NlB_" resolve="myTransformedForm" />
                </node>
                <node concept="37vLTw" id="38k27IRsM6c" role="3K4GZi">
                  <ref role="3cqZAo" node="1iOpS24NdRP" resolve="myModelForm" />
                </node>
                <node concept="3y3z36" id="38k27IRsLCH" role="3K4Cdx">
                  <node concept="10Nm6u" id="38k27IRsLKW" role="3uHU7w" />
                  <node concept="37vLTw" id="38k27IRsLnh" role="3uHU7B">
                    <ref role="3cqZAo" node="1iOpS24NlB_" resolve="myTransformedForm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IQSIP6" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IQSJfd" role="3clFbG">
            <node concept="37vLTw" id="38k27IQSJ2l" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
            </node>
            <node concept="liA8E" id="38k27IQSLFh" role="2OqNvi">
              <ref role="37wK5l" node="38k27IQS4XN" resolve="updateCellSelection" />
              <node concept="1rXfSq" id="38k27IQSNjM" role="37wK5m">
                <ref role="37wK5l" node="7_KjZP9dhcj" resolve="isSelected" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4y$DvIXIBCs" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7_KjZP9ff1o" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9dhcj" role="jymVt">
      <property role="TrG5h" value="isSelected" />
      <node concept="3Tm1VV" id="7_KjZP9dhcl" role="1B3o_S" />
      <node concept="10P_77" id="7_KjZP9dhcm" role="3clF45" />
      <node concept="3clFbS" id="7_KjZP9dhcn" role="3clF47">
        <node concept="3clFbF" id="7_KjZP9el$1" role="3cqZAp">
          <node concept="2OqwBi" id="7_KjZP9el$4" role="3clFbG">
            <node concept="2OqwBi" id="1iOpS25fcHp" role="2Oq$k0">
              <node concept="37vLTw" id="1iOpS25fcXe" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS257v_X" resolve="myFacility" />
              </node>
              <node concept="2OwXpG" id="1iOpS25fcHs" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44ANDzR" resolve="mySelection" />
              </node>
            </node>
            <node concept="liA8E" id="7_KjZP9el$6" role="2OqNvi">
              <ref role="37wK5l" to="rvgs:2XwVnrt19Ro" resolve="isSelected" />
              <node concept="37vLTw" id="7_KjZP9eoB_" role="37wK5m">
                <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpA85a" role="jymVt" />
    <node concept="312cEu" id="4O0ojQpAale" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="LayoutSetting" />
      <node concept="312cEg" id="4O0ojQpAc$l" role="jymVt">
        <property role="TrG5h" value="myBounds" />
        <node concept="3Tm6S6" id="4O0ojQpAcsB" role="1B3o_S" />
        <node concept="3uibUv" id="4O0ojQpAcuQ" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpAcOl" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpAcOX" role="jymVt">
        <property role="TrG5h" value="getBounds" />
        <node concept="3Tm1VV" id="4O0ojQpAcOZ" role="1B3o_S" />
        <node concept="3uibUv" id="4O0ojQpAcP0" role="3clF45">
          <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
        </node>
        <node concept="3clFbS" id="4O0ojQpAcP1" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpAVF0" role="3cqZAp">
            <node concept="37vLTw" id="4y$DvIXnGcW" role="3clFbG">
              <ref role="3cqZAo" node="4O0ojQpAc$l" resolve="myBounds" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpAcP2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpAEoF" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpAcP5" role="jymVt">
        <property role="TrG5h" value="canStartMoveAt" />
        <node concept="3Tm1VV" id="4O0ojQpAcP7" role="1B3o_S" />
        <node concept="10P_77" id="4O0ojQpAcP8" role="3clF45" />
        <node concept="37vLTG" id="4O0ojQpAcP9" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="4O0ojQpAcPa" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4O0ojQpAcPb" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="4O0ojQpAcPc" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4O0ojQpAcPd" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpAHeO" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpAHsS" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpAHeN" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
              </node>
              <node concept="liA8E" id="4O0ojQpAHzX" role="2OqNvi">
                <ref role="37wK5l" node="4O0ojQpAdhg" resolve="canStartMoveAt" />
                <node concept="37vLTw" id="1iOpS24NrAU" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS24NdRP" resolve="myModelForm" />
                </node>
                <node concept="37vLTw" id="4O0ojQpAHJa" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpAcP9" resolve="x" />
                </node>
                <node concept="37vLTw" id="4O0ojQpAHXv" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpAcPb" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpAcPe" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpAEkj" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpAcPp" role="jymVt">
        <property role="TrG5h" value="moveTo" />
        <node concept="3Tm1VV" id="4O0ojQpAcPr" role="1B3o_S" />
        <node concept="3cqZAl" id="4O0ojQpAcPs" role="3clF45" />
        <node concept="37vLTG" id="4O0ojQpAcPt" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="4O0ojQpAcPu" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4O0ojQpAcPv" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="4O0ojQpAcPw" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4O0ojQpAcPx" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpAEDd" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpAESv" role="3clFbG">
              <node concept="2OqwBi" id="1iOpS25fdn4" role="2Oq$k0">
                <node concept="37vLTw" id="1iOpS25fdJI" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS257v_X" resolve="myFacility" />
                </node>
                <node concept="2OwXpG" id="1iOpS25fdn7" role="2OqNvi">
                  <ref role="2Oxat5" node="4O0ojQp$DNq" resolve="myComponentSyncronizer" />
                </node>
              </node>
              <node concept="liA8E" id="4O0ojQpAF59" role="2OqNvi">
                <ref role="37wK5l" node="1gL472EF7u1" resolve="setForm" />
                <node concept="37vLTw" id="4O0ojQpAFk7" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myComponent" />
                </node>
                <node concept="2OqwBi" id="1iOpS24PiqC" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS24Pi5Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
                  </node>
                  <node concept="liA8E" id="1iOpS24PiQz" role="2OqNvi">
                    <ref role="37wK5l" node="1iOpS24IWj_" resolve="translateForm" />
                    <node concept="37vLTw" id="1iOpS24Pjae" role="37wK5m">
                      <ref role="3cqZAo" node="1iOpS24NdRP" resolve="myModelForm" />
                    </node>
                    <node concept="3cpWsd" id="1iOpS24PmpZ" role="37wK5m">
                      <node concept="2OqwBi" id="1iOpS24PnO7" role="3uHU7w">
                        <node concept="37vLTw" id="1iOpS24PmKi" role="2Oq$k0">
                          <ref role="3cqZAo" node="4O0ojQpAc$l" resolve="myBounds" />
                        </node>
                        <node concept="2OwXpG" id="1iOpS24PvrA" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1iOpS24PlsL" role="3uHU7B">
                        <ref role="3cqZAo" node="4O0ojQpAcPt" resolve="x" />
                      </node>
                    </node>
                    <node concept="3cpWsd" id="1iOpS24Px2y" role="37wK5m">
                      <node concept="2OqwBi" id="1iOpS24Pyj0" role="3uHU7w">
                        <node concept="37vLTw" id="1iOpS24PxvV" role="2Oq$k0">
                          <ref role="3cqZAo" node="4O0ojQpAc$l" resolve="myBounds" />
                        </node>
                        <node concept="2OwXpG" id="1iOpS24PDUv" role="2OqNvi">
                          <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1iOpS24PvRV" role="3uHU7B">
                        <ref role="3cqZAo" node="4O0ojQpAcPv" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpAcPy" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4O0ojQpAait" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpAbyw" role="EKbjA">
        <ref role="3uigEE" to="rvgs:2JpbWDsJCQ0" resolve="LayoutSetting" />
      </node>
    </node>
    <node concept="16euLQ" id="1iOpS257ih_" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
    <node concept="16euLQ" id="1iOpS257jVU" role="16eVyc">
      <property role="TrG5h" value="FormT" />
    </node>
  </node>
</model>

