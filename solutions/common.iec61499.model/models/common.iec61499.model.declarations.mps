<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.declarations)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="6ehz" ref="r:cb9dc0d6-4720-4b3b-b2e2-f2ed5e59d4e7(common.iec61499.model.ecc)" />
    <import index="jweg" ref="r:7b1e9d17-e026-472f-bc13-715bbedb05ab(common.iec61499.model.descriptors)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ng" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8">
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.jdk8.structure.DefaultModifier" flags="ng" index="2JFqV2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="1HEL0zVYBFE">
    <property role="TrG5h" value="FBTypeDeclaration" />
    <node concept="2tJIrI" id="31Fn7oZJ8AF" role="jymVt" />
    <node concept="3Tm1VV" id="1HEL0zVYBFF" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQ$ZCa" role="3HQHJm">
      <ref role="3uigEE" to="jweg:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
    </node>
    <node concept="3uibUv" id="31Fn7oZJ8_l" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
    </node>
    <node concept="3clFb_" id="31Fn7oZJ8B3" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="31Fn7oZJ8B7" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJYWQ" role="3clF45">
        <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJ8Ba" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJ8FY" role="3cqZAp">
          <node concept="Xjq3P" id="31Fn7oZJ8MM" role="3clFbG" />
        </node>
      </node>
      <node concept="2JFqV2" id="31Fn7oZJ8En" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="31Fn7oZJ9Md" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZJ9CU" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="31Fn7oZJ9CV" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJ9CW" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJ9CX" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJ9CY" role="3cqZAp">
          <node concept="1rXfSq" id="31Fn7oZJ9CZ" role="3clFbG">
            <ref role="37wK5l" node="31Fn7oZJ7rr" resolve="getName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31Fn7oZJ9D0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2JFqV2" id="31Fn7oZJ9D1" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="31Fn7oZJ9CJ" role="jymVt" />
  </node>
  <node concept="3HP615" id="1R4IoyQwdvz">
    <property role="TrG5h" value="CompositeFBTypeDeclaration" />
    <node concept="2tJIrI" id="1R4IoyQwdK_" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQwdKR" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3clFbS" id="1R4IoyQwdKU" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQwdKV" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQwdKH" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdHAVk" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdTUTB" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdTUUa" role="jymVt">
      <property role="TrG5h" value="getReadonlyNetwork" />
      <node concept="3clFbS" id="2SU8oJdTUUd" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdTUUe" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdTUTR" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdTUUT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQwdv$" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQwdwd" role="3HQHJm">
      <ref role="3uigEE" node="1HEL0zVYBFE" resolve="FBTypeDeclaration" />
    </node>
  </node>
  <node concept="3HP615" id="1R4IoyQwdLk">
    <property role="TrG5h" value="BasicFBTypeDeclaration" />
    <node concept="2tJIrI" id="1R4IoyQwdM0" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ$ZT$" role="jymVt">
      <property role="TrG5h" value="getEcc" />
      <node concept="3clFbS" id="1R4IoyQ$ZTB" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQ$ZTC" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ$ZTq" role="3clF45">
        <ref role="3uigEE" to="6ehz:1R4IoyQwdM8" resolve="ECC" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ$ZU2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQwdLl" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQwdLU" role="3HQHJm">
      <ref role="3uigEE" node="1HEL0zVYBFE" resolve="FBTypeDeclaration" />
    </node>
  </node>
  <node concept="3HP615" id="1R4IoyQwky1">
    <property role="TrG5h" value="FBRepo" />
    <node concept="2tJIrI" id="1R4IoyQwkyf" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQwkyF" role="jymVt">
      <property role="TrG5h" value="findCompositeFBTypeByName" />
      <node concept="3clFbS" id="1R4IoyQwkyI" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQwkyJ" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQwkyw" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
      </node>
      <node concept="37vLTG" id="1R4IoyQwkza" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1R4IoyQwkz9" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQwkzR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQwk$D" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQwkAP" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQwk_r" role="jymVt">
      <property role="TrG5h" value="findBasicFBTypeByName" />
      <node concept="3clFbS" id="1R4IoyQwk_s" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQwk_t" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQwkIb" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQwdLk" resolve="BasicFBTypeDeclaration" />
      </node>
      <node concept="37vLTG" id="1R4IoyQwk_v" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1R4IoyQwk_w" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQwk_x" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQwk_y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_119" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_18G" role="jymVt">
      <property role="TrG5h" value="findServiceFBTypeByName" />
      <node concept="3clFbS" id="1R4IoyQ_18H" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQ_18I" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_1ge" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQ_1dm" resolve="ServiceInterfaceFBTypeDeclaration" />
      </node>
      <node concept="37vLTG" id="1R4IoyQ_18K" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1R4IoyQ_18L" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQ_18M" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_18N" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_1rd" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_1az" role="jymVt">
      <property role="TrG5h" value="findAdapterTypeByName" />
      <node concept="3clFbS" id="1R4IoyQ_1a$" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQ_1a_" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_1hB" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQ$ZBc" resolve="AdapterTypeDeclaration" />
      </node>
      <node concept="37vLTG" id="1R4IoyQ_1aB" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1R4IoyQ_1aC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQ_1aD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_1aE" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_1eh" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_0Zk" role="jymVt">
      <property role="TrG5h" value="findSubapplicationTypeByName" />
      <node concept="3clFbS" id="1R4IoyQ_0Zl" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQ_0Zm" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_12o" role="3clF45">
        <ref role="3uigEE" node="1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
      </node>
      <node concept="37vLTG" id="1R4IoyQ_0Zo" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1R4IoyQ_0Zp" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQ_0Zq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_0Zr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQwky2" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1R4IoyQ$Zos">
    <property role="TrG5h" value="SubapplicationTypeDeclaration" />
    <node concept="2tJIrI" id="1R4IoyQ$ZAD" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ$Zts" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3clFbS" id="1R4IoyQ$Ztv" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQ$Ztw" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ$Zpj" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdTXsF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdTWQx" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdTWUM" role="jymVt">
      <property role="TrG5h" value="getReadonlyNetwork" />
      <node concept="3clFbS" id="2SU8oJdTWUN" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdTWUO" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdTWUP" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdTWUQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZJ9bj" role="jymVt" />
    <node concept="3Tm1VV" id="1R4IoyQ$Zot" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQ$ZAs" role="3HQHJm">
      <ref role="3uigEE" to="jweg:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
    </node>
    <node concept="3uibUv" id="31Fn7oZJ9aB" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
    </node>
    <node concept="3clFb_" id="31Fn7oZJ9bM" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="31Fn7oZJ9bQ" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJZwJ" role="3clF45">
        <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJ9bT" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJ9ja" role="3cqZAp">
          <node concept="Xjq3P" id="31Fn7oZJ9j9" role="3clFbG" />
        </node>
      </node>
      <node concept="2JFqV2" id="31Fn7oZJ9fz" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="31Fn7oZJ9TX" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZJ9Ys" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="31Fn7oZJ9Yt" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJ9Yu" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJ9Yv" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJ9Yw" role="3cqZAp">
          <node concept="1rXfSq" id="31Fn7oZJ9Yx" role="3clFbG">
            <ref role="37wK5l" node="31Fn7oZJ7rr" resolve="getName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31Fn7oZJ9Yy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2JFqV2" id="31Fn7oZJ9Yz" role="2frcjj" />
    </node>
  </node>
  <node concept="3HP615" id="1R4IoyQ$ZBc">
    <property role="TrG5h" value="AdapterTypeDeclaration" />
    <node concept="2tJIrI" id="31Fn7oZI55R" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZI59O" role="jymVt">
      <property role="TrG5h" value="getPlugType" />
      <node concept="3clFbS" id="31Fn7oZI59R" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZI8qq" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZI8qo" role="3clFbG">
            <node concept="1pGfFk" id="31Fn7oZI8Bj" role="2ShVmc">
              <ref role="37wK5l" to="jweg:1R4IoyQJMM3" resolve="PlugType" />
              <node concept="Xjq3P" id="31Fn7oZI8Bu" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZI59S" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZIeHG" role="3clF45">
        <ref role="3uigEE" to="jweg:31Fn7oZI77y" resolve="PlugType" />
      </node>
      <node concept="2JFqV2" id="31Fn7oZI84x" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="31Fn7oZI5au" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZI5c3" role="jymVt">
      <property role="TrG5h" value="getSocketType" />
      <node concept="3clFbS" id="31Fn7oZI5c6" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZI9Gk" role="3cqZAp">
          <node concept="2ShNRf" id="31Fn7oZI9Gi" role="3clFbG">
            <node concept="1pGfFk" id="31Fn7oZIgcj" role="2ShVmc">
              <ref role="37wK5l" to="jweg:1R4IoyQJBx2" resolve="SocketType" />
              <node concept="Xjq3P" id="31Fn7oZIgru" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZI5c7" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZIfqq" role="3clF45">
        <ref role="3uigEE" to="jweg:31Fn7oZIaMe" resolve="SocketType" />
      </node>
      <node concept="2JFqV2" id="31Fn7oZI9kH" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="31Fn7oZJaDc" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZJaDd" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="31Fn7oZJaDe" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJYJF" role="3clF45">
        <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJaDg" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJaDh" role="3cqZAp">
          <node concept="Xjq3P" id="31Fn7oZJaDi" role="3clFbG" />
        </node>
      </node>
      <node concept="2JFqV2" id="31Fn7oZJaDj" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="31Fn7oZJapI" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZJ83i" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="31Fn7oZJ83k" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJ83l" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJ83m" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJ8ef" role="3cqZAp">
          <node concept="1rXfSq" id="31Fn7oZJ8ee" role="3clFbG">
            <ref role="37wK5l" node="31Fn7oZJ7rr" resolve="getName" />
          </node>
        </node>
      </node>
      <node concept="2JFqV2" id="31Fn7oZJ87c" role="2frcjj" />
      <node concept="2AHcQZ" id="31Fn7oZJ8oh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQ$ZBd" role="1B3o_S" />
    <node concept="3uibUv" id="31Fn7oZI6vz" role="3HQHJm">
      <ref role="3uigEE" to="jweg:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
    </node>
    <node concept="3uibUv" id="31Fn7oZJ7ZK" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
    </node>
  </node>
  <node concept="3HP615" id="1R4IoyQ_1dm">
    <property role="TrG5h" value="ServiceInterfaceFBTypeDeclaration" />
    <node concept="3Tm1VV" id="1R4IoyQ_1dn" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQ_1ec" role="3HQHJm">
      <ref role="3uigEE" node="1HEL0zVYBFE" resolve="FBTypeDeclaration" />
    </node>
  </node>
  <node concept="3HP615" id="31Fn7oZJ7qm">
    <property role="TrG5h" value="NamedDeclaration" />
    <node concept="2tJIrI" id="31Fn7oZJ7qK" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZJ7rr" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3clFbS" id="31Fn7oZJ7ru" role="3clF47" />
      <node concept="3Tm1VV" id="31Fn7oZJ7rv" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJ7r5" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3Tm1VV" id="31Fn7oZJ7qn" role="1B3o_S" />
    <node concept="3uibUv" id="31Fn7oZJ8Nw" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7rQ" resolve="Declaration" />
    </node>
  </node>
  <node concept="3HP615" id="31Fn7oZJ7rQ">
    <property role="TrG5h" value="Declaration" />
    <node concept="3Tm1VV" id="31Fn7oZJ7rR" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2SU8oJdH$Ob">
    <property role="TrG5h" value="SystemDeclaration" />
    <node concept="2tJIrI" id="2SU8oJdH$P7" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdHAX0" role="jymVt">
      <property role="TrG5h" value="getApplcations" />
      <node concept="3clFbS" id="2SU8oJdHAX3" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdHAX4" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdHAWE" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdHAWR" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdHAXq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdHVuU" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdHVtm" role="jymVt">
      <property role="TrG5h" value="getDevices" />
      <node concept="3clFbS" id="2SU8oJdHVtn" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdHVto" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdHVtp" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdHVua" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdHTR3" resolve="DeviceDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdHVtr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdH$Oc" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdH$OZ" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
    </node>
  </node>
  <node concept="3HP615" id="2SU8oJdH$Pn">
    <property role="TrG5h" value="ApplicationDeclaration" />
    <node concept="2tJIrI" id="2SU8oJdH$XR" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdHAT_" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3clFbS" id="2SU8oJdHATC" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdHATD" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdH$Yl" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdHATZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrfwU" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrfxf" role="jymVt">
      <property role="TrG5h" value="getSytem" />
      <node concept="3clFbS" id="4gibKcMrfxi" role="3clF47" />
      <node concept="3Tm1VV" id="4gibKcMrfxj" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrfx4" role="3clF45">
        <ref role="3uigEE" node="2SU8oJdH$Ob" resolve="SystemDeclaration" />
      </node>
      <node concept="2AHcQZ" id="4gibKcMrfxI" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdH$Po" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdH$XJ" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
    </node>
  </node>
  <node concept="3HP615" id="2SU8oJdHTR3">
    <property role="TrG5h" value="DeviceDeclaration" />
    <node concept="2tJIrI" id="2SU8oJdHUMZ" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPdc5" role="jymVt">
      <property role="TrG5h" value="getSystem" />
      <node concept="3clFbS" id="3MncU7wPdc8" role="3clF47" />
      <node concept="3Tm1VV" id="3MncU7wPdc9" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPdbR" role="3clF45">
        <ref role="3uigEE" node="2SU8oJdH$Ob" resolve="SystemDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPdbF" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdHUNs" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3clFbS" id="2SU8oJdHUNv" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdHUNw" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIhMT" role="3clF45">
        <ref role="3uigEE" to="jweg:2SU8oJdIdgm" resolve="DeviceTypeDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdHUOJ" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIhNy" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3clFbS" id="2SU8oJdIhN_" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIhNA" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIhNd" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdIhNs" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdHUP_" resolve="ParameterAssigment" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdIhOd" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIhON" role="jymVt">
      <property role="TrG5h" value="getResources" />
      <node concept="3clFbS" id="2SU8oJdIhOQ" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIhOR" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIhOp" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdIhOE" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdIdeb" resolve="ResourceDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdIhPd" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIhQa" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3clFbS" id="2SU8oJdIhQd" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIhQe" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIhRZ" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdIhSG" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdHTR4" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPdbu" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
    </node>
  </node>
  <node concept="3HP615" id="2SU8oJdHTRH">
    <property role="TrG5h" value="DeviceTypeDeclaration" />
    <node concept="2tJIrI" id="2SU8oJdIdbN" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIdcf" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3clFbS" id="2SU8oJdIdci" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIdcj" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIdbW" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdIdc9" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdHUP3" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdIdcE" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdIi0R" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIi1d" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3clFbS" id="2SU8oJdIi1g" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIi1h" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIi11" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="4kSwwtS_q0w" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdIi2C" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIi36" role="jymVt">
      <property role="TrG5h" value="getResources" />
      <node concept="3clFbS" id="2SU8oJdIi39" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIi3a" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIi2N" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdIi33" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdIdeb" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdIi3z" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdHTRI" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdHTSU" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
    </node>
  </node>
  <node concept="3HP615" id="2SU8oJdHUP3">
    <property role="TrG5h" value="ParameterDeclaration" />
    <node concept="3Tm1VV" id="2SU8oJdHUP4" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2SU8oJdHUP_">
    <property role="TrG5h" value="ParameterAssigment" />
    <node concept="2tJIrI" id="2SU8oJdHUQf" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdHURv" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3clFbS" id="2SU8oJdHURy" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdHURz" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdHURi" role="3clF45">
        <ref role="3uigEE" node="31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdHUR8" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdHUQ_" role="jymVt">
      <property role="TrG5h" value="getParameter" />
      <node concept="3clFbS" id="2SU8oJdHUQC" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdHUQD" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIdoP" role="3clF45">
        <ref role="3uigEE" to="jweg:2SU8oJdIdjZ" resolve="ParameterDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdIdps" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIdpP" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="3clFbS" id="2SU8oJdIdpS" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIdpT" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIdpC" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdHUPA" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2SU8oJdIdeb">
    <property role="TrG5h" value="ResourceDeclaration" />
    <node concept="2tJIrI" id="2SU8oJdIdf7" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPy7U" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3clFbS" id="3MncU7wPy7X" role="3clF47" />
      <node concept="3Tm1VV" id="3MncU7wPy7Y" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPy7G" role="3clF45">
        <ref role="3uigEE" node="31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPy8B" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPy7x" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPlZA" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3clFbS" id="3MncU7wPlZD" role="3clF47" />
      <node concept="3Tm1VV" id="3MncU7wPlZE" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPlZr" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm00" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPnB2" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPnCn" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3clFbS" id="3MncU7wPnCq" role="3clF47" />
      <node concept="3Tm1VV" id="3MncU7wPnCr" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPnBc" role="3clF45">
        <ref role="3uigEE" to="jweg:2SU8oJdIhW2" resolve="ResourceTypeDescriptor" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPnE8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPnCN" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPnHx" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3clFbS" id="3MncU7wPnH$" role="3clF47" />
      <node concept="3Tm1VV" id="3MncU7wPnH_" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPnHf" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPnHt" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdHUP_" resolve="ParameterAssigment" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPnJb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdIdec" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdIdeZ" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
    </node>
  </node>
  <node concept="3HP615" id="2SU8oJdIdfg">
    <property role="TrG5h" value="ResourceTypeDeclaration" />
    <node concept="2tJIrI" id="2SU8oJdIdfU" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIhZK" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3clFbS" id="2SU8oJdIhZN" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIhZO" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIhZu" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdIhZG" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdHUP3" resolve="ParameterDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdIhZl" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIhY4" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3clFbS" id="2SU8oJdIhY7" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIhY8" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIhXT" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdIdfh" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdIdge" role="3HQHJm">
      <ref role="3uigEE" node="31Fn7oZJ7qm" resolve="NamedDeclaration" />
    </node>
  </node>
</model>

