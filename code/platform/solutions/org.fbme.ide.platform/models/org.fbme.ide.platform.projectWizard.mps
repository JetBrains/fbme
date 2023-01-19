<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9323096f-e22f-41d1-bc4e-66d2c0d81159(org.fbme.ide.platform.projectWizard)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="lz1h" ref="r:47803144-d0ed-4800-ae84-e83a292e3adb(jetbrains.mps.ide.ui.dialogs.modules)" />
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="v27p" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.startup(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="fpme" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench.dialogs.project.newproject(MPS.Workbench/)" />
    <import index="l5s7" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.ide.newSolutionDialog(MPS.Workbench/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="51vd" ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(mps.ide.persistence)" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
      <concept id="8974276187400029891" name="jetbrains.mps.lang.resources.structure.IconExpression" flags="nn" index="1QGGTA">
        <child id="8974276187400029893" name="icon" index="1QGGTw" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="5480835971642160908" name="jetbrains.mps.lang.actions.structure.NF_Model_CreateNewRootNodeOperation" flags="nn" index="15Ty1b" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1166648550386" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewRootNodeOperation" flags="nn" index="2xF2bX" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
    </language>
  </registry>
  <node concept="312cEu" id="7OBD32HG4Ey">
    <property role="TrG5h" value="IEC61499ProjectTemplate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7OBD32HGbyh" role="jymVt" />
    <node concept="312cEg" id="7OBD32Ib82W" role="jymVt">
      <property role="TrG5h" value="mySettings" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="P5kjNAXoBF" role="1B3o_S" />
      <node concept="3uibUv" id="7OBD32Ib7Vy" role="1tU5fm">
        <ref role="3uigEE" node="7OBD32IaLo3" resolve="SystemConfigSolutionSettings" />
      </node>
    </node>
    <node concept="2tJIrI" id="7EJeuytUf6M" role="jymVt" />
    <node concept="3clFbW" id="3qzmBf7dDoe" role="jymVt">
      <node concept="3cqZAl" id="3qzmBf7dDof" role="3clF45" />
      <node concept="3Tm1VV" id="3qzmBf7dDog" role="1B3o_S" />
      <node concept="3clFbS" id="3qzmBf7dDoh" role="3clF47">
        <node concept="3clFbF" id="3qzmBf7dDoi" role="3cqZAp">
          <node concept="37vLTI" id="3qzmBf7dDoj" role="3clFbG">
            <node concept="2OqwBi" id="3qzmBf7dDok" role="37vLTJ">
              <node concept="Xjq3P" id="3qzmBf7dDol" role="2Oq$k0" />
              <node concept="2OwXpG" id="3qzmBf7dDom" role="2OqNvi">
                <ref role="2Oxat5" node="7OBD32Ib82W" resolve="mySettings" />
              </node>
            </node>
            <node concept="37vLTw" id="7EJeuytTyMz" role="37vLTx">
              <ref role="3cqZAo" node="7EJeuytTvTL" resolve="settings" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7EJeuytTvTL" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="7EJeuytTvTK" role="1tU5fm">
          <ref role="3uigEE" node="7OBD32IaLo3" resolve="SystemConfigSolutionSettings" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3qzmBf7dBFf" role="jymVt" />
    <node concept="3clFb_" id="7OBD32IfGyv" role="jymVt">
      <property role="TrG5h" value="getSettings" />
      <node concept="3Tm1VV" id="7OBD32IfGyw" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32IfGyy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7OBD32IfGyz" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="7OBD32IfGy_" role="3clF47">
        <node concept="3clFbF" id="7OBD32Ii48N" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32Ii5Nr" role="3clFbG">
            <node concept="37vLTw" id="7OBD32Ii48L" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
            </node>
            <node concept="liA8E" id="7OBD32Iip8K" role="2OqNvi">
              <ref role="37wK5l" to="lz1h:g46k2sd8t3" resolve="reset" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7OBD32Ig2ZA" role="3cqZAp">
          <node concept="37vLTw" id="7OBD32Ig3tM" role="3cqZAk">
            <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32IfGyA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Ig7i2" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ig7OY" role="jymVt">
      <property role="TrG5h" value="setProjectPath" />
      <node concept="3Tm1VV" id="7OBD32Ig7OZ" role="1B3o_S" />
      <node concept="3cqZAl" id="7OBD32Ig7P1" role="3clF45" />
      <node concept="37vLTG" id="7OBD32Ig7P2" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="7OBD32Ig7P3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7OBD32Ig7P5" role="3clF47">
        <node concept="3clFbF" id="7OBD32Ig8Sn" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32Ig9XI" role="3clFbG">
            <node concept="37vLTw" id="7OBD32Ig8Sm" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
            </node>
            <node concept="liA8E" id="7OBD32IgbkT" role="2OqNvi">
              <ref role="37wK5l" to="lz1h:g46k2sd8rN" resolve="setProjectPath" />
              <node concept="37vLTw" id="7OBD32IgbHE" role="37wK5m">
                <ref role="3cqZAo" node="7OBD32Ig7P2" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ig7P6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Igd82" role="jymVt" />
    <node concept="2tJIrI" id="7OBD32IgdaT" role="jymVt" />
    <node concept="3clFb_" id="7OBD32IgdPM" role="jymVt">
      <property role="TrG5h" value="checkSettings" />
      <node concept="3Tm1VV" id="7OBD32IgdPO" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32IgdPQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7OBD32IgdPR" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7OBD32IgdPT" role="3clF47">
        <node concept="3clFbF" id="7OBD32Igfj2" role="3cqZAp">
          <node concept="2YIFZM" id="7OBD32Igfv1" role="3clFbG">
            <ref role="1Pybhc" to="l5s7:~NewModuleUtil" resolve="NewModuleUtil" />
            <ref role="37wK5l" to="l5s7:~NewModuleUtil.check(jetbrains.mps.project.MPSProject,java.lang.String,java.lang.String,java.lang.String)" resolve="check" />
            <node concept="10Nm6u" id="7OBD32IgfEP" role="37wK5m" />
            <node concept="10M0yZ" id="7OBD32Iggpu" role="37wK5m">
              <ref role="3cqZAo" to="z1c4:~MPSExtentions.DOT_SOLUTION" resolve="DOT_SOLUTION" />
              <ref role="1PxDUh" to="z1c4:~MPSExtentions" resolve="MPSExtentions" />
            </node>
            <node concept="2OqwBi" id="7OBD32IghK_" role="37wK5m">
              <node concept="37vLTw" id="7OBD32IggPR" role="2Oq$k0">
                <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
              </node>
              <node concept="liA8E" id="7OBD32Ig_8m" role="2OqNvi">
                <ref role="37wK5l" to="lz1h:g46k2scpfc" resolve="getModuleName" />
              </node>
            </node>
            <node concept="2OqwBi" id="7OBD32IgAPj" role="37wK5m">
              <node concept="37vLTw" id="7OBD32Ig_U8" role="2Oq$k0">
                <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
              </node>
              <node concept="liA8E" id="7OBD32IgUeH" role="2OqNvi">
                <ref role="37wK5l" to="lz1h:g46k2scpfz" resolve="getModuleLocation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="62uNvAbKI9L" role="3cqZAp">
          <node concept="10Nm6u" id="62uNvAbKK4Z" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32IgdPU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3V8WxCAjgiM" role="jymVt" />
    <node concept="3clFb_" id="3V8WxCAjjkX" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getStereotype" />
      <node concept="3clFbS" id="3V8WxCAjjl0" role="3clF47" />
      <node concept="3Tm1VV" id="3V8WxCAjhL_" role="1B3o_S" />
      <node concept="17QB3L" id="3V8WxCAjkHY" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7OBD32IfFK5" role="jymVt" />
    <node concept="3clFb_" id="7OBD32HGeKZ" role="jymVt">
      <property role="TrG5h" value="getTemplateFiller" />
      <node concept="3Tm1VV" id="7OBD32HGeL0" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32HGeL2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7OBD32HGeL3" role="3clF45">
        <ref role="3uigEE" to="fpme:~TemplateFiller" resolve="TemplateFiller" />
      </node>
      <node concept="3clFbS" id="7OBD32HGeL4" role="3clF47">
        <node concept="3clFbF" id="7OBD32HGf5n" role="3cqZAp">
          <node concept="2ShNRf" id="7OBD32HGf5l" role="3clFbG">
            <node concept="YeOm9" id="7OBD32HGuWN" role="2ShVmc">
              <node concept="1Y3b0j" id="7OBD32HGuWQ" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="fpme:~TemplateFiller" resolve="TemplateFiller" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="7OBD32HGuWR" role="1B3o_S" />
                <node concept="3clFb_" id="7OBD32HGuWT" role="jymVt">
                  <property role="TrG5h" value="fillProjectWithModules" />
                  <node concept="3Tm1VV" id="7OBD32HGuWU" role="1B3o_S" />
                  <node concept="3cqZAl" id="7OBD32HGuWW" role="3clF45" />
                  <node concept="37vLTG" id="7OBD32HGuWX" role="3clF46">
                    <property role="TrG5h" value="project" />
                    <node concept="3uibUv" id="7OBD32HGuWY" role="1tU5fm">
                      <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7OBD32HGuWZ" role="3clF47">
                    <node concept="3cpWs8" id="7OBD32HH2sx" role="3cqZAp">
                      <node concept="3cpWsn" id="7OBD32HH2sy" role="3cpWs9">
                        <property role="TrG5h" value="moduleName" />
                        <node concept="17QB3L" id="7OBD32HH2sr" role="1tU5fm" />
                        <node concept="2OqwBi" id="7OBD32HH2sz" role="33vP2m">
                          <node concept="37vLTw" id="3V8WxCAiFFX" role="2Oq$k0">
                            <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
                          </node>
                          <node concept="liA8E" id="7OBD32HH2s_" role="2OqNvi">
                            <ref role="37wK5l" to="lz1h:g46k2scpfc" resolve="getModuleName" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7OBD32HH2NB" role="3cqZAp">
                      <node concept="3cpWsn" id="7OBD32HH2NC" role="3cpWs9">
                        <property role="TrG5h" value="moduleLocation" />
                        <node concept="17QB3L" id="7OBD32HH2NA" role="1tU5fm" />
                        <node concept="2OqwBi" id="7OBD32HH2ND" role="33vP2m">
                          <node concept="37vLTw" id="3V8WxCAiI0q" role="2Oq$k0">
                            <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
                          </node>
                          <node concept="liA8E" id="7OBD32HH2NF" role="2OqNvi">
                            <ref role="37wK5l" to="lz1h:g46k2scpfz" resolve="getModuleLocation" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7OBD32HGw7t" role="3cqZAp">
                      <node concept="2OqwBi" id="7OBD32HGwNZ" role="3clFbG">
                        <node concept="2YIFZM" id="7OBD32HGwp$" role="2Oq$k0">
                          <ref role="37wK5l" to="v27p:~StartupManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                          <ref role="1Pybhc" to="v27p:~StartupManager" resolve="StartupManager" />
                          <node concept="2OqwBi" id="7OBD32HGGab" role="37wK5m">
                            <node concept="37vLTw" id="7OBD32HGwFn" role="2Oq$k0">
                              <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                            </node>
                            <node concept="liA8E" id="7OBD32HGIgt" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7OBD32HGx0N" role="2OqNvi">
                          <ref role="37wK5l" to="v27p:~StartupManager.registerPostStartupActivity(java.lang.Runnable)" resolve="registerPostStartupActivity" />
                          <node concept="1bVj0M" id="7OBD32HGx$E" role="37wK5m">
                            <node concept="3clFbS" id="7OBD32HGx$F" role="1bW5cS">
                              <node concept="3clFbF" id="7OBD32HGxXS" role="3cqZAp">
                                <node concept="2OqwBi" id="7OBD32HGzFc" role="3clFbG">
                                  <node concept="2OqwBi" id="7OBD32HGyzR" role="2Oq$k0">
                                    <node concept="37vLTw" id="7OBD32HGxXR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                                    </node>
                                    <node concept="liA8E" id="7OBD32HGzxQ" role="2OqNvi">
                                      <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7OBD32HG_4B" role="2OqNvi">
                                    <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                                    <node concept="1bVj0M" id="7OBD32HG_E9" role="37wK5m">
                                      <node concept="3clFbS" id="7OBD32HG_Ea" role="1bW5cS">
                                        <node concept="3cpWs8" id="7OBD32HGXOD" role="3cqZAp">
                                          <node concept="3cpWsn" id="7OBD32HGXOE" role="3cpWs9">
                                            <property role="TrG5h" value="solution" />
                                            <node concept="3uibUv" id="7OBD32HGXO$" role="1tU5fm">
                                              <ref role="3uigEE" to="z1c4:~Solution" resolve="Solution" />
                                            </node>
                                            <node concept="2YIFZM" id="7OBD32HGXOF" role="33vP2m">
                                              <ref role="37wK5l" to="l5s7:~NewModuleUtil.createSolution(java.lang.String,java.lang.String,jetbrains.mps.project.MPSProject)" resolve="createSolution" />
                                              <ref role="1Pybhc" to="l5s7:~NewModuleUtil" resolve="NewModuleUtil" />
                                              <node concept="37vLTw" id="7OBD32HH2sA" role="37wK5m">
                                                <ref role="3cqZAo" node="7OBD32HH2sy" resolve="moduleName" />
                                              </node>
                                              <node concept="37vLTw" id="7OBD32HH2NG" role="37wK5m">
                                                <ref role="3cqZAo" node="7OBD32HH2NC" resolve="moduleLocation" />
                                              </node>
                                              <node concept="37vLTw" id="7OBD32HGXOM" role="37wK5m">
                                                <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="7OBD32Ibu$A" role="3cqZAp">
                                          <node concept="3cpWsn" id="7OBD32Ibu$B" role="3cpWs9">
                                            <property role="TrG5h" value="root" />
                                            <node concept="3uibUv" id="7OBD32IbV$4" role="1tU5fm">
                                              <ref role="3uigEE" to="pa15:~DefaultModelRoot" resolve="DefaultModelRoot" />
                                            </node>
                                            <node concept="0kSF2" id="7OBD32IbXQE" role="33vP2m">
                                              <node concept="3uibUv" id="7OBD32IbXQH" role="0kSFW">
                                                <ref role="3uigEE" to="pa15:~DefaultModelRoot" resolve="DefaultModelRoot" />
                                              </node>
                                              <node concept="2OqwBi" id="7OBD32IbCnh" role="0kSFX">
                                                <node concept="2OqwBi" id="7OBD32IbBq9" role="2Oq$k0">
                                                  <node concept="2OqwBi" id="7OBD32IbxKI" role="2Oq$k0">
                                                    <node concept="37vLTw" id="7OBD32IbwIJ" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="7OBD32HGXOE" resolve="solution" />
                                                    </node>
                                                    <node concept="liA8E" id="7OBD32IbAVU" role="2OqNvi">
                                                      <ref role="37wK5l" to="z1c4:~AbstractModule.getModelRoots()" resolve="getModelRoots" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="7OBD32IbC0l" role="2OqNvi">
                                                    <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="7OBD32IbJcT" role="2OqNvi">
                                                  <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="7OBD32IbKDX" role="3cqZAp">
                                          <node concept="3cpWsn" id="7OBD32IbKE0" role="3cpWs9">
                                            <property role="TrG5h" value="model" />
                                            <node concept="H_c77" id="7OBD32IbKDV" role="1tU5fm" />
                                          </node>
                                        </node>
                                        <node concept="3J1_TO" id="7OBD32IhjP6" role="3cqZAp">
                                          <node concept="3clFbS" id="7OBD32IhjP8" role="1zxBo7">
                                            <node concept="3cpWs8" id="3V8WxCAjnsQ" role="3cqZAp">
                                              <node concept="3cpWsn" id="3V8WxCAjnsT" role="3cpWs9">
                                                <property role="TrG5h" value="stereotype" />
                                                <node concept="17QB3L" id="3V8WxCAjnsO" role="1tU5fm" />
                                                <node concept="1rXfSq" id="3V8WxCAjpyc" role="33vP2m">
                                                  <ref role="37wK5l" node="3V8WxCAjjkX" resolve="getStereotype" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="3V8WxCAjupW" role="3cqZAp">
                                              <node concept="3cpWsn" id="3V8WxCAjupX" role="3cpWs9">
                                                <property role="TrG5h" value="fullModelName" />
                                                <node concept="17QB3L" id="3V8WxCAju0o" role="1tU5fm" />
                                                <node concept="3K4zz7" id="3V8WxCAj$G_" role="33vP2m">
                                                  <node concept="3clFbC" id="3V8WxCAjzmd" role="3K4Cdx">
                                                    <node concept="10Nm6u" id="3V8WxCAj$cn" role="3uHU7w" />
                                                    <node concept="37vLTw" id="3V8WxCAjyy$" role="3uHU7B">
                                                      <ref role="3cqZAo" node="3V8WxCAjnsT" resolve="stereotype" />
                                                    </node>
                                                  </node>
                                                  <node concept="3cpWs3" id="3V8WxCAjAVN" role="3K4GZi">
                                                    <node concept="37vLTw" id="3V8WxCAjBMa" role="3uHU7w">
                                                      <ref role="3cqZAo" node="3V8WxCAjnsT" resolve="stereotype" />
                                                    </node>
                                                    <node concept="3cpWs3" id="3V8WxCAjupY" role="3uHU7B">
                                                      <node concept="37vLTw" id="3V8WxCAjuq0" role="3uHU7B">
                                                        <ref role="3cqZAo" node="7OBD32HH2sy" resolve="moduleName" />
                                                      </node>
                                                      <node concept="Xl_RD" id="3V8WxCAjupZ" role="3uHU7w">
                                                        <property role="Xl_RC" value="@" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="37vLTw" id="3V8WxCAjCiZ" role="3K4E3e">
                                                    <ref role="3cqZAo" node="7OBD32HH2sy" resolve="moduleName" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="7OBD32Ih$4V" role="3cqZAp">
                                              <node concept="37vLTI" id="7OBD32Ih$4X" role="3clFbG">
                                                <node concept="2OqwBi" id="7OBD32IbN1y" role="37vLTx">
                                                  <node concept="37vLTw" id="7OBD32IbMfa" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7OBD32Ibu$B" resolve="root" />
                                                  </node>
                                                  <node concept="liA8E" id="7OBD32IbZ0A" role="2OqNvi">
                                                    <ref role="37wK5l" to="pa15:~DefaultModelRoot.createModel(org.jetbrains.mps.openapi.model.SModelName,jetbrains.mps.extapi.persistence.SourceRoot,jetbrains.mps.extapi.persistence.datasource.DataSourceFactoryFromName,org.jetbrains.mps.openapi.persistence.ModelFactory)" resolve="createModel" />
                                                    <node concept="2ShNRf" id="7OBD32IbZLi" role="37wK5m">
                                                      <node concept="1pGfFk" id="7OBD32Ic2pr" role="2ShVmc">
                                                        <ref role="37wK5l" to="mhbf:~SModelName.&lt;init&gt;(java.lang.String)" resolve="SModelName" />
                                                        <node concept="37vLTw" id="3V8WxCAjuq1" role="37wK5m">
                                                          <ref role="3cqZAo" node="3V8WxCAjupX" resolve="fullModelName" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2OqwBi" id="7OBD32Idr1U" role="37wK5m">
                                                      <node concept="2OqwBi" id="7OBD32IdmmA" role="2Oq$k0">
                                                        <node concept="37vLTw" id="7OBD32Idl1C" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7OBD32Ibu$B" resolve="root" />
                                                        </node>
                                                        <node concept="liA8E" id="7OBD32Idnx6" role="2OqNvi">
                                                          <ref role="37wK5l" to="ends:~FileBasedModelRoot.getSourceRoots(jetbrains.mps.extapi.persistence.SourceRootKind)" resolve="getSourceRoots" />
                                                          <node concept="Rm8GO" id="7OBD32IdpYJ" role="37wK5m">
                                                            <ref role="1Px2BO" to="ends:~SourceRootKinds" resolve="SourceRootKinds" />
                                                            <ref role="Rm8GQ" to="ends:~SourceRootKinds.SOURCES" resolve="SOURCES" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="liA8E" id="7OBD32IdDwO" role="2OqNvi">
                                                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                                        <node concept="3cmrfG" id="7OBD32IdEsd" role="37wK5m">
                                                          <property role="3cmrfH" value="0" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="10M0yZ" id="7pEplJkvMyH" role="37wK5m">
                                                      <ref role="3cqZAo" to="51vd:7OBD32IcaQ$" resolve="DATASOURCE_FROM_NAME_FACTORY" />
                                                      <ref role="1PxDUh" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
                                                    </node>
                                                    <node concept="10M0yZ" id="7pEplJkvNG$" role="37wK5m">
                                                      <ref role="3cqZAo" to="51vd:1_Zi$XmmA7o" resolve="MODEL_FACTORY" />
                                                      <ref role="1PxDUh" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="37vLTw" id="7OBD32Ih$51" role="37vLTJ">
                                                  <ref role="3cqZAo" node="7OBD32IbKE0" resolve="model" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbH" id="7OBD32IhjP7" role="3cqZAp" />
                                          </node>
                                          <node concept="3uVAMA" id="7OBD32IhjP9" role="1zxBo5">
                                            <node concept="XOnhg" id="7OBD32IhjPb" role="1zc67B">
                                              <property role="3TUv4t" value="false" />
                                              <property role="TrG5h" value="e" />
                                              <node concept="nSUau" id="3RFMOXPrjNg" role="1tU5fm">
                                                <node concept="3uibUv" id="7OBD32Ihk_3" role="nSUat">
                                                  <ref role="3uigEE" to="pa15:~ModelCannotBeCreatedException" resolve="ModelCannotBeCreatedException" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="7OBD32IhjPf" role="1zc67A">
                                              <node concept="YS8fn" id="7OBD32IhlQj" role="3cqZAp">
                                                <node concept="2ShNRf" id="7OBD32IhmAr" role="YScLw">
                                                  <node concept="1pGfFk" id="7OBD32IhoXq" role="2ShVmc">
                                                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                                                    <node concept="Xl_RD" id="7OBD32IhpIP" role="37wK5m">
                                                      <property role="Xl_RC" value="Model can not be created" />
                                                    </node>
                                                    <node concept="37vLTw" id="7OBD32Ihw5x" role="37wK5m">
                                                      <ref role="3cqZAo" node="7OBD32IhjPb" resolve="e" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="7MmFhmejVF9" role="3cqZAp">
                                          <node concept="3cpWsn" id="7MmFhmejVFa" role="3cpWs9">
                                            <property role="TrG5h" value="initialNode" />
                                            <node concept="3Tqbb2" id="7MmFhmejUWi" role="1tU5fm" />
                                            <node concept="1rXfSq" id="7MmFhmejVFb" role="33vP2m">
                                              <ref role="37wK5l" node="7OBD32IiLxf" resolve="initModel" />
                                              <node concept="37vLTw" id="7MmFhmejVFc" role="37wK5m">
                                                <ref role="3cqZAo" node="7OBD32IbKE0" resolve="model" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="SmSpfeJq43" role="3cqZAp">
                                          <node concept="2OqwBi" id="SmSpfeJsRh" role="3clFbG">
                                            <node concept="2OqwBi" id="SmSpfeJrXh" role="2Oq$k0">
                                              <node concept="2OqwBi" id="SmSpfeJqYa" role="2Oq$k0">
                                                <node concept="37vLTw" id="SmSpfeJq41" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                                                </node>
                                                <node concept="liA8E" id="SmSpfeJrK9" role="2OqNvi">
                                                  <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="SmSpfeJsxL" role="2OqNvi">
                                                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="SmSpfeJtih" role="2OqNvi">
                                              <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
                                              <node concept="1bVj0M" id="SmSpfeJtW8" role="37wK5m">
                                                <node concept="3clFbS" id="SmSpfeJtW9" role="1bW5cS">
                                                  <node concept="3clFbF" id="7OBD32Ibq41" role="3cqZAp">
                                                    <node concept="2OqwBi" id="7OBD32IfmR3" role="3clFbG">
                                                      <node concept="2YIFZM" id="7OBD32IfyLf" role="2Oq$k0">
                                                        <ref role="37wK5l" to="kz9k:~NavigationSupport.getInstance()" resolve="getInstance" />
                                                        <ref role="1Pybhc" to="kz9k:~NavigationSupport" resolve="NavigationSupport" />
                                                      </node>
                                                      <node concept="liA8E" id="7OBD32IfzoQ" role="2OqNvi">
                                                        <ref role="37wK5l" to="kz9k:~NavigationSupport.openNode(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.model.SNode,boolean,boolean)" resolve="openNode" />
                                                        <node concept="37vLTw" id="7OBD32If$vh" role="37wK5m">
                                                          <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                                                        </node>
                                                        <node concept="37vLTw" id="7MmFhmejXZT" role="37wK5m">
                                                          <ref role="3cqZAo" node="7MmFhmejVFa" resolve="initialNode" />
                                                        </node>
                                                        <node concept="3clFbT" id="7OBD32IfEbA" role="37wK5m">
                                                          <property role="3clFbU" value="true" />
                                                        </node>
                                                        <node concept="3clFbT" id="7OBD32IfFlr" role="37wK5m" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbF" id="SmSpfeKegO" role="3cqZAp">
                                                    <node concept="2OqwBi" id="SmSpfeKegP" role="3clFbG">
                                                      <node concept="2YIFZM" id="SmSpfeKegQ" role="2Oq$k0">
                                                        <ref role="37wK5l" to="kz9k:~NavigationSupport.getInstance()" resolve="getInstance" />
                                                        <ref role="1Pybhc" to="kz9k:~NavigationSupport" resolve="NavigationSupport" />
                                                      </node>
                                                      <node concept="liA8E" id="SmSpfeKegR" role="2OqNvi">
                                                        <ref role="37wK5l" to="kz9k:~NavigationSupport.selectInTree(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.model.SNode,boolean)" resolve="selectInTree" />
                                                        <node concept="37vLTw" id="SmSpfeKegS" role="37wK5m">
                                                          <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                                                        </node>
                                                        <node concept="37vLTw" id="SmSpfeKegT" role="37wK5m">
                                                          <ref role="3cqZAo" node="7MmFhmejVFa" resolve="initialNode" />
                                                        </node>
                                                        <node concept="3clFbT" id="SmSpfeKegU" role="37wK5m" />
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
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32HGeL5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32IiI2y" role="jymVt" />
    <node concept="3clFb_" id="7OBD32IiLxf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="initModel" />
      <node concept="3clFbS" id="7OBD32IiLxi" role="3clF47" />
      <node concept="3Tqbb2" id="7MmFhmejUv7" role="3clF45" />
      <node concept="37vLTG" id="7OBD32IiMmB" role="3clF46">
        <property role="TrG5h" value="m" />
        <node concept="H_c77" id="7OBD32IiMmA" role="1tU5fm" />
      </node>
      <node concept="3Tmbuc" id="7OBD32IiN1O" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7OBD32IiNIk" role="jymVt" />
    <node concept="Wx3nA" id="7OBD32IiOPI" role="jymVt">
      <property role="TrG5h" value="SYSTEM_CONFIG_TEMPLATE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7OBD32IiS39" role="1tU5fm">
        <ref role="3uigEE" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
      </node>
      <node concept="2ShNRf" id="7OBD32IiUmx" role="33vP2m">
        <node concept="YeOm9" id="7OBD32IiXgw" role="2ShVmc">
          <node concept="1Y3b0j" id="7OBD32IiXgz" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
            <ref role="37wK5l" node="3qzmBf7dDoe" resolve="IEC61499ProjectTemplate" />
            <node concept="3clFb_" id="7OBD32HGbZq" role="jymVt">
              <property role="TrG5h" value="getName" />
              <node concept="3Tm1VV" id="7OBD32HGbZr" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32HGbZt" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="7OBD32HGbZu" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7OBD32HGbZv" role="3clF47">
                <node concept="3clFbF" id="7OBD32HGciL" role="3cqZAp">
                  <node concept="Xl_RD" id="7OBD32HGciK" role="3clFbG">
                    <property role="Xl_RC" value="System Configuration" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32HGbZw" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32HGbyq" role="jymVt" />
            <node concept="3clFb_" id="7OBD32HGbyD" role="jymVt">
              <property role="TrG5h" value="getDescription" />
              <node concept="3Tm1VV" id="7OBD32HGbyE" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32HGbyG" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="7OBD32HGbyH" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7OBD32HGbyI" role="3clF47">
                <node concept="3clFbF" id="7OBD32HGcxa" role="3cqZAp">
                  <node concept="Xl_RD" id="7OBD32HGcx9" role="3clFbG">
                    <property role="Xl_RC" value="System Configuration for IEC 61499 Standard " />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32HGbyJ" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32HGcC0" role="jymVt" />
            <node concept="3clFb_" id="7OBD32HGcFb" role="jymVt">
              <property role="TrG5h" value="getIcon" />
              <node concept="3Tm1VV" id="7OBD32HGcFc" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32HGcFe" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="7OBD32HGcFf" role="3clF45">
                <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
              </node>
              <node concept="3clFbS" id="7OBD32HGcFg" role="3clF47">
                <node concept="3clFbF" id="7OBD32HGes2" role="3cqZAp">
                  <node concept="1QGGTA" id="3qzmBf7cl84" role="3clFbG">
                    <node concept="1QGGSu" id="6wzd0wHUltr" role="1QGGTw">
                      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/platform/projectWizard/system_project.svg" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32HGcFh" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3V8WxCAjet5" role="jymVt" />
            <node concept="3clFb_" id="3V8WxCAjfrD" role="jymVt">
              <property role="TrG5h" value="getStereotype" />
              <node concept="3clFbS" id="3V8WxCAjfrG" role="3clF47">
                <node concept="3clFbF" id="3V8WxCAjlS2" role="3cqZAp">
                  <node concept="Xl_RD" id="3V8WxCAjlS1" role="3clFbG">
                    <property role="Xl_RC" value="system" />
                  </node>
                </node>
              </node>
              <node concept="17QB3L" id="3V8WxCAjf1N" role="3clF45" />
              <node concept="3Tm1VV" id="3V8WxCAjfT5" role="1B3o_S" />
            </node>
            <node concept="2tJIrI" id="7OBD32IjzT5" role="jymVt" />
            <node concept="3Tm1VV" id="7OBD32IiXg$" role="1B3o_S" />
            <node concept="3clFb_" id="7OBD32IiXHa" role="jymVt">
              <property role="TrG5h" value="initModel" />
              <node concept="3Tqbb2" id="7MmFhmejSo0" role="3clF45" />
              <node concept="37vLTG" id="7OBD32IiXHd" role="3clF46">
                <property role="TrG5h" value="m" />
                <node concept="H_c77" id="7OBD32IiXHe" role="1tU5fm" />
              </node>
              <node concept="3Tmbuc" id="7OBD32IiXHf" role="1B3o_S" />
              <node concept="3clFbS" id="7OBD32IiXHh" role="3clF47">
                <node concept="3cpWs8" id="7OBD32IiXV7" role="3cqZAp">
                  <node concept="3cpWsn" id="7OBD32IiXV8" role="3cpWs9">
                    <property role="TrG5h" value="config" />
                    <node concept="3Tqbb2" id="7OBD32IiXV9" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="7OBD32IiXVa" role="33vP2m">
                      <node concept="37vLTw" id="7OBD32IiY$G" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32IiXHd" resolve="m" />
                      </node>
                      <node concept="2xF2bX" id="7OBD32IiXVc" role="2OqNvi">
                        <ref role="I8UWU" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3V8WxCAj5TD" role="3cqZAp">
                  <node concept="3cpWsn" id="3V8WxCAj5TE" role="3cpWs9">
                    <property role="TrG5h" value="systemName" />
                    <node concept="3uibUv" id="3V8WxCAj4ZJ" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2OqwBi" id="3V8WxCAj5TF" role="33vP2m">
                      <node concept="2ShNRf" id="3V8WxCAj5TG" role="2Oq$k0">
                        <node concept="1pGfFk" id="3V8WxCAj5TH" role="2ShVmc">
                          <ref role="37wK5l" to="mhbf:~SModelName.&lt;init&gt;(java.lang.String)" resolve="SModelName" />
                          <node concept="2OqwBi" id="3V8WxCAj5TI" role="37wK5m">
                            <node concept="37vLTw" id="3V8WxCAj5TJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="7OBD32IiXHd" resolve="m" />
                            </node>
                            <node concept="LkI2h" id="3V8WxCAj5TK" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3V8WxCAj5TL" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7OBD32IiXVd" role="3cqZAp">
                  <node concept="37vLTI" id="7OBD32IiXVe" role="3clFbG">
                    <node concept="2OqwBi" id="7OBD32IiXVg" role="37vLTJ">
                      <node concept="37vLTw" id="7OBD32IiXVh" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32IiXV8" resolve="config" />
                      </node>
                      <node concept="3TrcHB" id="7OBD32IiXVi" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3V8WxCAj5TM" role="37vLTx">
                      <ref role="3cqZAo" node="3V8WxCAj5TE" resolve="systemName" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3V8WxCAjbDs" role="3cqZAp">
                  <node concept="3cpWsn" id="3V8WxCAjbDt" role="3cpWs9">
                    <property role="TrG5h" value="app" />
                    <node concept="3Tqbb2" id="3V8WxCAjbDj" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="3V8WxCAjbDu" role="33vP2m">
                      <node concept="2OqwBi" id="3V8WxCAjbDv" role="2Oq$k0">
                        <node concept="37vLTw" id="3V8WxCAjbDw" role="2Oq$k0">
                          <ref role="3cqZAo" node="7OBD32IiXV8" resolve="config" />
                        </node>
                        <node concept="3Tsc0h" id="3V8WxCAjbDx" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                        </node>
                      </node>
                      <node concept="2DeJg1" id="3pBR_pAX2EA" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3V8WxCAj4Wa" role="3cqZAp">
                  <node concept="37vLTI" id="3V8WxCAjd2c" role="3clFbG">
                    <node concept="3cpWs3" id="3V8WxCAje1x" role="37vLTx">
                      <node concept="Xl_RD" id="3V8WxCAjejA" role="3uHU7w">
                        <property role="Xl_RC" value="App" />
                      </node>
                      <node concept="37vLTw" id="3V8WxCAjd_c" role="3uHU7B">
                        <ref role="3cqZAo" node="3V8WxCAj5TE" resolve="systemName" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3V8WxCAjc$J" role="37vLTJ">
                      <node concept="37vLTw" id="3V8WxCAjbDz" role="2Oq$k0">
                        <ref role="3cqZAo" node="3V8WxCAjbDt" resolve="app" />
                      </node>
                      <node concept="3TrcHB" id="3V8WxCAjcLS" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7MmFhmejU5Y" role="3cqZAp">
                  <node concept="37vLTw" id="7MmFhmejUn2" role="3cqZAk">
                    <ref role="3cqZAo" node="7OBD32IiXV8" resolve="config" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32IiXHi" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2ShNRf" id="7EJeuytT_i$" role="37wK5m">
              <node concept="1pGfFk" id="7EJeuytU49V" role="2ShVmc">
                <ref role="37wK5l" node="7OBD32IaLWR" resolve="SystemConfigSolutionSettings" />
                <node concept="Xl_RD" id="7ok1qOu28MN" role="37wK5m">
                  <property role="Xl_RC" value="NewSystem" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32IjAEo" role="jymVt" />
    <node concept="Wx3nA" id="7OBD32Ijasz" role="jymVt">
      <property role="TrG5h" value="LIBRARY_TEMPLATE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7OBD32Ijas_" role="1tU5fm">
        <ref role="3uigEE" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
      </node>
      <node concept="2ShNRf" id="7OBD32IjasA" role="33vP2m">
        <node concept="YeOm9" id="7OBD32IjasB" role="2ShVmc">
          <node concept="1Y3b0j" id="7OBD32IjasC" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
            <ref role="37wK5l" node="3qzmBf7dDoe" resolve="IEC61499ProjectTemplate" />
            <node concept="3clFb_" id="7OBD32Ij_iu" role="jymVt">
              <property role="TrG5h" value="getName" />
              <node concept="3Tm1VV" id="7OBD32Ij_iv" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32Ij_iw" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="7OBD32Ij_ix" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7OBD32Ij_iy" role="3clF47">
                <node concept="3clFbF" id="7OBD32Ij_iz" role="3cqZAp">
                  <node concept="Xl_RD" id="7OBD32Ij_i$" role="3clFbG">
                    <property role="Xl_RC" value="Library" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32Ij_i_" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32Ij_iA" role="jymVt" />
            <node concept="3clFb_" id="7OBD32Ij_iB" role="jymVt">
              <property role="TrG5h" value="getDescription" />
              <node concept="3Tm1VV" id="7OBD32Ij_iC" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32Ij_iD" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="7OBD32Ij_iE" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7OBD32Ij_iF" role="3clF47">
                <node concept="3clFbF" id="7OBD32Ij_iG" role="3cqZAp">
                  <node concept="Xl_RD" id="7OBD32Ij_iH" role="3clFbG">
                    <property role="Xl_RC" value="Library of function block, adapter and subapplication types" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32Ij_iI" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3V8WxCAjlSw" role="jymVt" />
            <node concept="3clFb_" id="3V8WxCAjlUf" role="jymVt">
              <property role="TrG5h" value="getStereotype" />
              <node concept="3clFbS" id="3V8WxCAjlUg" role="3clF47">
                <node concept="3clFbF" id="3V8WxCAjlUh" role="3cqZAp">
                  <node concept="Xl_RD" id="3V8WxCAjlUi" role="3clFbG">
                    <property role="Xl_RC" value="library" />
                  </node>
                </node>
              </node>
              <node concept="17QB3L" id="3V8WxCAjlUj" role="3clF45" />
              <node concept="3Tm1VV" id="3V8WxCAjlUk" role="1B3o_S" />
            </node>
            <node concept="2tJIrI" id="7OBD32Ij_iJ" role="jymVt" />
            <node concept="3clFb_" id="7OBD32Ij_iK" role="jymVt">
              <property role="TrG5h" value="getIcon" />
              <node concept="3Tm1VV" id="7OBD32Ij_iL" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32Ij_iM" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="7OBD32Ij_iN" role="3clF45">
                <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
              </node>
              <node concept="3clFbS" id="7OBD32Ij_iO" role="3clF47">
                <node concept="3clFbF" id="6wzd0wHV3ut" role="3cqZAp">
                  <node concept="1QGGTA" id="6wzd0wHV3uu" role="3clFbG">
                    <node concept="1QGGSu" id="6wzd0wHV3uv" role="1QGGTw">
                      <property role="1iqoE4" value="${module}/icons/org/fbme/ide/platform/projectWizard/library_project.svg" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32Ij_iW" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32Ij$Za" role="jymVt" />
            <node concept="3Tm1VV" id="7OBD32IjasD" role="1B3o_S" />
            <node concept="3clFb_" id="7OBD32IjasE" role="jymVt">
              <property role="TrG5h" value="initModel" />
              <node concept="3Tqbb2" id="7MmFhmek0jZ" role="3clF45" />
              <node concept="37vLTG" id="7OBD32IjasG" role="3clF46">
                <property role="TrG5h" value="m" />
                <node concept="H_c77" id="7OBD32IjasH" role="1tU5fm" />
              </node>
              <node concept="3Tmbuc" id="7OBD32IjasI" role="1B3o_S" />
              <node concept="3clFbS" id="7OBD32IjasJ" role="3clF47">
                <node concept="3cpWs8" id="7OBD32IjasK" role="3cqZAp">
                  <node concept="3cpWsn" id="7OBD32IjasL" role="3cpWs9">
                    <property role="TrG5h" value="basicFBType" />
                    <node concept="3Tqbb2" id="7OBD32IjasM" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="7OBD32IjasN" role="33vP2m">
                      <node concept="37vLTw" id="7OBD32IjasO" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32IjasG" resolve="m" />
                      </node>
                      <node concept="15Ty1b" id="3pBR_pAX7zD" role="2OqNvi">
                        <ref role="I8UWU" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7OBD32IjasQ" role="3cqZAp">
                  <node concept="37vLTI" id="7OBD32IjasR" role="3clFbG">
                    <node concept="2OqwBi" id="7OBD32IjasS" role="37vLTJ">
                      <node concept="37vLTw" id="7OBD32IjasT" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32IjasL" resolve="basicFBType" />
                      </node>
                      <node concept="3TrcHB" id="7OBD32IjasU" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7OBD32Ijd9F" role="37vLTx">
                      <property role="Xl_RC" value="SampleBasicBFType" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7MmFhmejYGT" role="3cqZAp">
                  <node concept="37vLTw" id="7MmFhmejZDl" role="3cqZAk">
                    <ref role="3cqZAo" node="7OBD32IjasL" resolve="basicFBType" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32Ijat2" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2ShNRf" id="7EJeuytU6DA" role="37wK5m">
              <node concept="1pGfFk" id="7EJeuytU9IW" role="2ShVmc">
                <ref role="37wK5l" node="7OBD32IaLWR" resolve="SystemConfigSolutionSettings" />
                <node concept="Xl_RD" id="7ok1qOu21HF" role="37wK5m">
                  <property role="Xl_RC" value="NewLibrary" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7OBD32HG4Ez" role="1B3o_S" />
    <node concept="3uibUv" id="7OBD32IiG_q" role="EKbjA">
      <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
    </node>
  </node>
  <node concept="312cEu" id="7OBD32Ii_tb">
    <property role="TrG5h" value="IEC61499ProjectTemplateGroup" />
    <node concept="2tJIrI" id="7OBD32IjhPM" role="jymVt" />
    <node concept="Wx3nA" id="7OBD32Ijhnd" role="jymVt">
      <property role="TrG5h" value="TEMPLATES" />
      <node concept="3Tm6S6" id="7OBD32Ijhn5" role="1B3o_S" />
      <node concept="_YKpA" id="7OBD32Ijhn6" role="1tU5fm">
        <node concept="3uibUv" id="7OBD32Ijhn7" role="_ZDj9">
          <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
        </node>
      </node>
      <node concept="2ShNRf" id="7OBD32Ijhn8" role="33vP2m">
        <node concept="Tc6Ow" id="7OBD32Ijhn9" role="2ShVmc">
          <node concept="3uibUv" id="7OBD32Ijhna" role="HW$YZ">
            <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
          </node>
          <node concept="10M0yZ" id="7OBD32Ijhnb" role="HW$Y0">
            <ref role="1PxDUh" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
            <ref role="3cqZAo" node="7OBD32IiOPI" resolve="SYSTEM_CONFIG_TEMPLATE" />
          </node>
          <node concept="10M0yZ" id="7OBD32Ijhnc" role="HW$Y0">
            <ref role="1PxDUh" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
            <ref role="3cqZAo" node="7OBD32Ijasz" resolve="LIBRARY_TEMPLATE" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Ii_yK" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ii_z9" role="jymVt">
      <property role="TrG5h" value="getTemplates" />
      <node concept="3Tm1VV" id="7OBD32Ii_za" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32Ii_zc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7OBD32Ii_zd" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="7OBD32Ii_ze" role="11_B2D">
          <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
        </node>
      </node>
      <node concept="3clFbS" id="7OBD32Ii_zf" role="3clF47">
        <node concept="3clFbF" id="7OBD32IiAMW" role="3cqZAp">
          <node concept="37vLTw" id="7OBD32Ijhng" role="3clFbG">
            <ref role="3cqZAo" node="7OBD32Ijhnd" resolve="TEMPLATES" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ii_zg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Iji9M" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ijigr" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="7OBD32Ijigs" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32Ijigu" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7OBD32Ijigv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7OBD32Ijigw" role="3clF47">
        <node concept="3clFbF" id="7OBD32IjiBP" role="3cqZAp">
          <node concept="Xl_RD" id="7OBD32IjiBO" role="3clFbG">
            <property role="Xl_RC" value="IEC 61499" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ijigx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7EJeuytUhg4" role="jymVt" />
    <node concept="2YIFZL" id="7EJeuytUhYH" role="jymVt">
      <property role="TrG5h" value="addTemplate" />
      <node concept="3clFbS" id="7EJeuytUhYK" role="3clF47">
        <node concept="3clFbF" id="7EJeuytUix0" role="3cqZAp">
          <node concept="2OqwBi" id="7EJeuytUjPL" role="3clFbG">
            <node concept="37vLTw" id="7EJeuytUjaa" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32Ijhnd" resolve="TEMPLATES" />
            </node>
            <node concept="TSZUe" id="7EJeuytUksz" role="2OqNvi">
              <node concept="37vLTw" id="7EJeuytUkKY" role="25WWJ7">
                <ref role="3cqZAo" node="7EJeuytUilx" resolve="template" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7EJeuytUhql" role="1B3o_S" />
      <node concept="3cqZAl" id="7EJeuytUiaR" role="3clF45" />
      <node concept="37vLTG" id="7EJeuytUilx" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="7EJeuytUilw" role="1tU5fm">
          <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7EJeuytUA6P" role="jymVt" />
    <node concept="2YIFZL" id="7EJeuytUAJ7" role="jymVt">
      <property role="TrG5h" value="removeTemplate" />
      <node concept="3clFbS" id="7EJeuytUAJa" role="3clF47">
        <node concept="3clFbF" id="7EJeuytUBkf" role="3cqZAp">
          <node concept="2OqwBi" id="7EJeuytUBXw" role="3clFbG">
            <node concept="37vLTw" id="7EJeuytUBke" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32Ijhnd" resolve="TEMPLATES" />
            </node>
            <node concept="3dhRuq" id="7EJeuytUCBZ" role="2OqNvi">
              <node concept="37vLTw" id="7EJeuytUDlq" role="25WWJ7">
                <ref role="3cqZAo" node="7EJeuytUAZI" resolve="template" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7EJeuytUAmi" role="1B3o_S" />
      <node concept="3cqZAl" id="7EJeuytUAH0" role="3clF45" />
      <node concept="37vLTG" id="7EJeuytUAZI" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="7EJeuytUAZH" role="1tU5fm">
          <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7OBD32Ii_tc" role="1B3o_S" />
    <node concept="3uibUv" id="7OBD32Ii_xA" role="EKbjA">
      <ref role="3uigEE" to="fpme:~ProjectTemplatesGroup" resolve="ProjectTemplatesGroup" />
    </node>
  </node>
  <node concept="312cEu" id="7OBD32IaLo3">
    <property role="TrG5h" value="SystemConfigSolutionSettings" />
    <node concept="2tJIrI" id="7OBD32IaLy_" role="jymVt" />
    <node concept="312cEg" id="7ok1qOu1qrY" role="jymVt">
      <property role="TrG5h" value="myDefaultName" />
      <node concept="3Tm6S6" id="7ok1qOu1qrZ" role="1B3o_S" />
      <node concept="17QB3L" id="7ok1qOu1qs1" role="1tU5fm" />
    </node>
    <node concept="3Tm1VV" id="7OBD32IaLo4" role="1B3o_S" />
    <node concept="3uibUv" id="7OBD32IaLtp" role="1zkMxy">
      <ref role="3uigEE" to="lz1h:g46k2sbMn_" resolve="AbstractModuleCreationSettings" />
    </node>
    <node concept="2tJIrI" id="7ok1qOu1sry" role="jymVt" />
    <node concept="3clFbW" id="7OBD32IaLWR" role="jymVt">
      <node concept="3cqZAl" id="7OBD32IaLWS" role="3clF45" />
      <node concept="3Tm1VV" id="7OBD32IaLWT" role="1B3o_S" />
      <node concept="3clFbS" id="7OBD32IaLWV" role="3clF47">
        <node concept="XkiVB" id="7OBD32IaLWX" role="3cqZAp">
          <ref role="37wK5l" to="lz1h:g46k2sbOEA" resolve="AbstractModuleCreationSettings" />
          <node concept="10Nm6u" id="7OBD32Ibcdv" role="37wK5m" />
          <node concept="Xl_RD" id="7OBD32IaN66" role="37wK5m">
            <property role="Xl_RC" value="System configuration name:" />
          </node>
          <node concept="Xl_RD" id="7OBD32IaNGP" role="37wK5m">
            <property role="Xl_RC" value="Solution location:" />
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32IaNKW" role="3cqZAp" />
        <node concept="3clFbF" id="7OBD32IaOiE" role="3cqZAp">
          <node concept="1rXfSq" id="7OBD32Ib033" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
            <node concept="2ShNRf" id="7OBD32IaS18" role="37wK5m">
              <node concept="1pGfFk" id="7OBD32IaUvT" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                <node concept="3cmrfG" id="7OBD32IaVoi" role="37wK5m">
                  <property role="3cmrfH" value="400" />
                </node>
                <node concept="3cmrfG" id="7OBD32IaWzk" role="37wK5m">
                  <property role="3cmrfH" value="100" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OBD32IaXNV" role="3cqZAp">
          <node concept="1rXfSq" id="7OBD32IaXNT" role="3clFbG">
            <ref role="37wK5l" to="lz1h:g46k2sd8t3" resolve="reset" />
          </node>
        </node>
        <node concept="3clFbF" id="7ok1qOu1qs2" role="3cqZAp">
          <node concept="37vLTI" id="7ok1qOu1qs4" role="3clFbG">
            <node concept="37vLTw" id="7ok1qOu1qs7" role="37vLTJ">
              <ref role="3cqZAo" node="7ok1qOu1qrY" resolve="myDefaultName" />
            </node>
            <node concept="37vLTw" id="7ok1qOu1qs8" role="37vLTx">
              <ref role="3cqZAo" node="7ok1qOu1q8T" resolve="defaultName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ok1qOu1q8T" role="3clF46">
        <property role="TrG5h" value="defaultName" />
        <node concept="17QB3L" id="7ok1qOu1q8S" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32IaXXP" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ib3QT" role="jymVt">
      <property role="TrG5h" value="getDefaultModuleName" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tmbuc" id="7OBD32Ib3QV" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32Ib3QW" role="3clF45" />
      <node concept="3clFbS" id="7OBD32Ib3QX" role="3clF47">
        <node concept="3clFbF" id="7OBD32Ib4fm" role="3cqZAp">
          <node concept="37vLTw" id="7ok1qOu1rF_" role="3clFbG">
            <ref role="3cqZAo" node="7ok1qOu1qrY" resolve="myDefaultName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ib3QY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Ib09r" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ib1qM" role="jymVt">
      <property role="TrG5h" value="getDefaultModulePath" />
      <node concept="3Tmbuc" id="7OBD32Ib1qN" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32Ib1qO" role="3clF45" />
      <node concept="3clFbS" id="7OBD32Ib1r0" role="3clF47">
        <node concept="3clFbF" id="7OBD32Ib2BE" role="3cqZAp">
          <node concept="1rXfSq" id="7OBD32Ib2BD" role="3clFbG">
            <ref role="37wK5l" to="lz1h:7lPRUbxwHH2" resolve="getModuleRootPath" />
            <node concept="Xl_RD" id="7OBD32Ib3iS" role="37wK5m">
              <property role="Xl_RC" value="solutions" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ib1r1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

