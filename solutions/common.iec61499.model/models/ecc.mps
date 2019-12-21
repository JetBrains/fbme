<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cb9dc0d6-4720-4b3b-b2e2-f2ed5e59d4e7(common.iec61499.model.ecc)">
  <persistence version="9" />
  <languages>
    <use id="96ee7a94-411d-4cf8-9b94-96cad7e52411" name="jetbrains.mps.baseLanguage.jdk7" version="0" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
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
  <node concept="3HP615" id="5ye4HINyZCA">
    <property role="TrG5h" value="ECState" />
    <node concept="2tJIrI" id="5jb5jNCeZ_7" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXoEou" role="jymVt">
      <property role="TrG5h" value="getX" />
      <node concept="3clFbS" id="4y$DvIXoEox" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXoEoy" role="1B3o_S" />
      <node concept="10Oyi0" id="4y$DvIXoGdY" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4y$DvIXoDLR" role="jymVt" />
    <node concept="3clFb_" id="309fsJ6buVo" role="jymVt">
      <property role="TrG5h" value="setX" />
      <node concept="3Tm1VV" id="309fsJ6buVq" role="1B3o_S" />
      <node concept="3cqZAl" id="309fsJ6buVr" role="3clF45" />
      <node concept="37vLTG" id="309fsJ6buVs" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="309fsJ6buVt" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="309fsJ6buVv" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4y$DvIXoEGi" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXoFl9" role="jymVt">
      <property role="TrG5h" value="getY" />
      <node concept="3clFbS" id="4y$DvIXoFlc" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXoFld" role="1B3o_S" />
      <node concept="10Oyi0" id="4y$DvIXoGi0" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="309fsJ6bw0T" role="jymVt" />
    <node concept="3clFb_" id="309fsJ6buV_" role="jymVt">
      <property role="TrG5h" value="setY" />
      <node concept="3Tm1VV" id="309fsJ6buVB" role="1B3o_S" />
      <node concept="3cqZAl" id="309fsJ6buVC" role="3clF45" />
      <node concept="37vLTG" id="309fsJ6buVD" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="309fsJ6buVE" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="309fsJ6buVG" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="38k27IRF9W6" role="jymVt" />
    <node concept="3clFb_" id="38k27IRF9Y$" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3clFbS" id="38k27IRF9YB" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IRF9YC" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRF9Xx" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5jb5jNCeZ_a" role="jymVt" />
    <node concept="3Tm1VV" id="5ye4HINyZCB" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="5ye4HINz47s">
    <property role="TrG5h" value="ECTransition" />
    <node concept="2tJIrI" id="4y$DvIWfnDS" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIWfnEU" role="jymVt">
      <property role="TrG5h" value="getSourceState" />
      <node concept="3clFbS" id="4y$DvIWfnEX" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIWfnEY" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIWfnEx" role="3clF45">
        <ref role="3uigEE" node="5ye4HINyZCA" resolve="ECState" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIWfnKy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRF1mV" role="jymVt" />
    <node concept="3clFb_" id="38k27IRF1g4" role="jymVt">
      <property role="TrG5h" value="setSourceState" />
      <node concept="3clFbS" id="38k27IRF1g5" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IRF1g6" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRF1jz" role="3clF45" />
      <node concept="37vLTG" id="38k27IRF1ki" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="38k27IRF1kh" role="1tU5fm">
          <ref role="3uigEE" node="5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRF1lq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIWfnGb" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIWfnHM" role="jymVt">
      <property role="TrG5h" value="getTargetState" />
      <node concept="3clFbS" id="4y$DvIWfnHP" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIWfnHQ" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIWfnHc" role="3clF45">
        <ref role="3uigEE" node="5ye4HINyZCA" resolve="ECState" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIWfnJg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRF1nW" role="jymVt" />
    <node concept="3clFb_" id="38k27IRF1pr" role="jymVt">
      <property role="TrG5h" value="setTargetState" />
      <node concept="3clFbS" id="38k27IRF1ps" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IRF1pt" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRF1pu" role="3clF45" />
      <node concept="37vLTG" id="38k27IRF1pv" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="38k27IRF1pw" role="1tU5fm">
          <ref role="3uigEE" node="5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRF1px" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGlHL" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGmfT" role="jymVt">
      <property role="TrG5h" value="getCenterX" />
      <node concept="3clFbS" id="38k27IRGmfU" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IRGmfV" role="1B3o_S" />
      <node concept="10Oyi0" id="38k27IRGmfW" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="38k27IRGmfX" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGmfY" role="jymVt">
      <property role="TrG5h" value="setCenterX" />
      <node concept="3Tm1VV" id="38k27IRGmfZ" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGmg0" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGmg1" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRGmg2" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRGmg3" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="38k27IRGmg4" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGmg5" role="jymVt">
      <property role="TrG5h" value="getCenterY" />
      <node concept="3clFbS" id="38k27IRGmg6" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IRGmg7" role="1B3o_S" />
      <node concept="10Oyi0" id="38k27IRGmg8" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="38k27IRGmg9" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGmga" role="jymVt">
      <property role="TrG5h" value="setCenterY" />
      <node concept="3Tm1VV" id="38k27IRGmgb" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGmgc" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGmgd" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRGmge" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRGmgf" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="38k27IRF76x" role="jymVt" />
    <node concept="3clFb_" id="38k27IRF79M" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3clFbS" id="38k27IRF79P" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IRF79Q" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRF78q" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="5ye4HINz47t" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4y$DvIWfn_s">
    <property role="TrG5h" value="ECTransitionCondition" />
    <node concept="3Tm1VV" id="4y$DvIWfn_t" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="5jb5jNC3nKm">
    <property role="TrG5h" value="ECAction" />
    <node concept="2tJIrI" id="5jb5jNC3nK$" role="jymVt" />
    <node concept="3Tm1VV" id="5jb5jNC3nKn" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1R4IoyQwdM8">
    <property role="TrG5h" value="ECC" />
    <node concept="2tJIrI" id="1R4IoyQwdMi" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQwk7A" role="jymVt">
      <property role="TrG5h" value="getStates" />
      <node concept="3clFbS" id="1R4IoyQwk7D" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQwk7E" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQwk7f" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="1R4IoyQwk7t" role="11_B2D">
          <ref role="3uigEE" node="5ye4HINyZCA" resolve="ECState" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQHCJM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQwk8b" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQwk9i" role="jymVt">
      <property role="TrG5h" value="getTransitions" />
      <node concept="3clFbS" id="1R4IoyQwk9l" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQwk9m" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQwk8C" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="1R4IoyQwk99" role="11_B2D">
          <ref role="3uigEE" node="5ye4HINz47s" resolve="ECTransition" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQHCL6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHCak" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQHCc1" role="jymVt">
      <property role="TrG5h" value="addTransition" />
      <node concept="3clFbS" id="1R4IoyQHCc4" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQHCc5" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQHCbp" role="3clF45">
        <ref role="3uigEE" node="5ye4HINz47s" resolve="ECTransition" />
      </node>
      <node concept="37vLTG" id="1R4IoyQHCED" role="3clF46">
        <property role="TrG5h" value="sourceState" />
        <node concept="3uibUv" id="1R4IoyQHCEC" role="1tU5fm">
          <ref role="3uigEE" node="5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQHCOc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQHCHw" role="3clF46">
        <property role="TrG5h" value="targetState" />
        <node concept="3uibUv" id="1R4IoyQHCId" role="1tU5fm">
          <ref role="3uigEE" node="5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQHCP$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQHCM$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQwdM9" role="1B3o_S" />
  </node>
</model>

