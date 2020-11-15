<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(org.fbme.scenes.viewmodel)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="1KCfUoKQiq3">
    <property role="TrG5h" value="ComponentsView" />
    <node concept="2tJIrI" id="1KCfUoKQiqx" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKQiMt" role="jymVt">
      <property role="TrG5h" value="getComponents" />
      <node concept="3clFbS" id="1KCfUoKQiMw" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKQiMx" role="1B3o_S" />
      <node concept="3uibUv" id="1KCfUoKQiJW" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4O0ojQq3I$E" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQq3Iyc" resolve="CompT" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7pEplJkrOP8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQq3FLE" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq3Ixk" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3clFbS" id="4O0ojQq3Ixn" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQq3Ixo" role="1B3o_S" />
      <node concept="3cqZAl" id="4O0ojQq3IwW" role="3clF45" />
      <node concept="37vLTG" id="4O0ojQq3I_O" role="3clF46">
        <property role="TrG5h" value="entry" />
        <node concept="16syzq" id="4O0ojQq3I_N" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQq3Iyc" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="7pEplJkrOQk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1KCfUoKQiq4" role="1B3o_S" />
    <node concept="16euLQ" id="4O0ojQq3Iyc" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
  </node>
  <node concept="3HP615" id="5jb5jNBOk89">
    <property role="TrG5h" value="PositionalCompletionItem" />
    <node concept="2tJIrI" id="5jb5jNBOkbP" role="jymVt" />
    <node concept="3clFb_" id="13N5a7yAs_h" role="jymVt">
      <property role="TrG5h" value="getMatchingText" />
      <node concept="3clFbS" id="13N5a7yAs_k" role="3clF47" />
      <node concept="3Tm1VV" id="13N5a7yAs_l" role="1B3o_S" />
      <node concept="3uibUv" id="13N5a7yAs_6" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="5jb5jNC5_GK" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="3uibUv" id="5jb5jNC5_GJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="13N5a7yAs_I" role="jymVt" />
    <node concept="3clFb_" id="13N5a7yAsBc" role="jymVt">
      <property role="TrG5h" value="getDescriptionText" />
      <node concept="3clFbS" id="13N5a7yAsBf" role="3clF47" />
      <node concept="3Tm1VV" id="13N5a7yAsBg" role="1B3o_S" />
      <node concept="3uibUv" id="13N5a7yAsAQ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="13N5a7yAsBP" role="jymVt" />
    <node concept="3clFb_" id="13N5a7yAsDK" role="jymVt">
      <property role="TrG5h" value="invoke" />
      <node concept="37vLTG" id="5jb5jNC64DS" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="3uibUv" id="5jb5jNC64FJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="13N5a7yAsF4" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="13N5a7yAsGp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="13N5a7yAsIO" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="13N5a7yAsKd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="13N5a7yAsDN" role="3clF47" />
      <node concept="3Tm1VV" id="13N5a7yAsDO" role="1B3o_S" />
      <node concept="3cqZAl" id="13N5a7yAsDe" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="5jb5jNBOk8a" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4bHpKVAnix_">
    <property role="TrG5h" value="ComponentExtsView" />
    <node concept="2tJIrI" id="4bHpKVAni$E" role="jymVt" />
    <node concept="3clFb_" id="4bHpKVAni_w" role="jymVt">
      <property role="TrG5h" value="getExtensions" />
      <node concept="3clFbS" id="4bHpKVAni_z" role="3clF47" />
      <node concept="3Tm1VV" id="4bHpKVAni_$" role="1B3o_S" />
      <node concept="3uibUv" id="4bHpKVAni$Q" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4bHpKVAni_k" role="11_B2D">
          <ref role="16sUi3" node="4bHpKVAniyg" resolve="CompExtT" />
        </node>
      </node>
      <node concept="37vLTG" id="4bHpKVAniA8" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="4bHpKVAniA7" role="1tU5fm">
          <ref role="16sUi3" node="4bHpKVAni$c" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="4bHpKVAniDr" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4bHpKVAniEt" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4bHpKVAnixA" role="1B3o_S" />
    <node concept="16euLQ" id="4bHpKVAni$c" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
    <node concept="16euLQ" id="4bHpKVAniyg" role="16eVyc">
      <property role="TrG5h" value="CompExtT" />
    </node>
  </node>
</model>

