<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:93f1c42b-26e1-4216-a7ed-fdcb3331bcbd(iec61499.scenes.viewmodel.ecc)">
  <persistence version="9" />
  <languages>
    <use id="96ee7a94-411d-4cf8-9b94-96cad7e52411" name="jetbrains.mps.baseLanguage.jdk7" version="0" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="hyqd" ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(iec61499.scenes.viewmodel)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
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
  <node concept="3HP615" id="5ye4HINyZCA">
    <property role="TrG5h" value="ECStateView" />
    <node concept="2tJIrI" id="5ye4HINyZFi" role="jymVt" />
    <node concept="3clFb_" id="5ye4HINyZFz" role="jymVt">
      <property role="TrG5h" value="getStateName" />
      <node concept="3clFbS" id="5ye4HINyZFA" role="3clF47" />
      <node concept="3Tm1VV" id="5ye4HINyZFB" role="1B3o_S" />
      <node concept="3uibUv" id="5ye4HINyZFq" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ye4HINyZFZ" role="jymVt" />
    <node concept="3clFb_" id="5ye4HINyZGR" role="jymVt">
      <property role="TrG5h" value="setStateName" />
      <node concept="3clFbS" id="5ye4HINyZGU" role="3clF47" />
      <node concept="3Tm1VV" id="5ye4HINyZGV" role="1B3o_S" />
      <node concept="3cqZAl" id="5ye4HINyZGy" role="3clF45" />
      <node concept="37vLTG" id="5ye4HINyZHw" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="5ye4HINyZHv" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="309fsJ6buFF" role="jymVt" />
    <node concept="3Tm1VV" id="5ye4HINyZCB" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="5ye4HINz47s">
    <property role="TrG5h" value="ECTransitionView" />
    <node concept="2tJIrI" id="5ye4HINz48m" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIWfnBx" role="jymVt">
      <property role="TrG5h" value="getCondition" />
      <node concept="3clFbS" id="4y$DvIWfnB$" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIWfnB_" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIWfnBm" role="3clF45">
        <ref role="3uigEE" node="4y$DvIWfn_s" resolve="ECTransitionConditionView" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIWfnDc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIWfnDS" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIWfnEU" role="jymVt">
      <property role="TrG5h" value="getSourceState" />
      <node concept="3clFbS" id="4y$DvIWfnEX" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIWfnEY" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIWfnEx" role="3clF45">
        <ref role="3uigEE" node="5ye4HINyZCA" resolve="ECStateView" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIWfnKy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIWfnGb" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIWfnHM" role="jymVt">
      <property role="TrG5h" value="getTargetState" />
      <node concept="3clFbS" id="4y$DvIWfnHP" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIWfnHQ" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIWfnHc" role="3clF45">
        <ref role="3uigEE" node="5ye4HINyZCA" resolve="ECStateView" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIWfnJg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5ye4HINz47t" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4y$DvIWfn_s">
    <property role="TrG5h" value="ECTransitionConditionView" />
    <node concept="3Tm1VV" id="4y$DvIWfn_t" role="1B3o_S" />
  </node>
</model>

