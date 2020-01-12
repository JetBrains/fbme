<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.interfacepart)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ng" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
    </language>
    <language id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8">
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.jdk8.structure.DefaultModifier" flags="ng" index="2JFqV2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="4ZaR9mNlnNn">
    <property role="TrG5h" value="FBNetworkConnection" />
    <node concept="3Tm1VV" id="4ZaR9mNlnNo" role="1B3o_S" />
    <node concept="2tJIrI" id="6$FGuy5wmDO" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYR2t" role="jymVt">
      <property role="TrG5h" value="isTemplate" />
      <node concept="3clFbS" id="1HEL0zVYR2w" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYR2x" role="1B3o_S" />
      <node concept="10P_77" id="1HEL0zVYR1J" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1HEL0zVYNX_" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYO0f" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="3clFbS" id="1HEL0zVYO0i" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYO0j" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy5AFw7" role="3clF45">
        <ref role="3uigEE" node="6$FGuy5_Djq" resolve="ConnectionPath" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGFNg2m" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5wmIP" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3clFbS" id="6$FGuy5wmIS" role="3clF47" />
      <node concept="3Tm1VV" id="6$FGuy5wmIT" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5wmI6" role="3clF45" />
      <node concept="37vLTG" id="6$FGuy5wmOA" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="6$FGuy5AFxi" role="1tU5fm">
          <ref role="3uigEE" node="6$FGuy5_Djq" resolve="ConnectionPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW7x80" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW7xbI" role="jymVt">
      <property role="TrG5h" value="getSourcePort" />
      <node concept="3clFbS" id="4y$DvIW7xbL" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW7xbM" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIW7xaJ" role="3clF45">
        <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW7xdm" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW7xgx" role="jymVt">
      <property role="TrG5h" value="setSourcePort" />
      <node concept="3clFbS" id="4y$DvIW7xg$" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW7xg_" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW7xfn" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIW7xjf" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="4y$DvIW7xje" role="1tU5fm">
          <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW7xzz" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW7xlq" role="jymVt">
      <property role="TrG5h" value="getTargetPort" />
      <node concept="3clFbS" id="4y$DvIW7xlr" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW7xls" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIW7xlt" role="3clF45">
        <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW7xlp" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW7xlj" role="jymVt">
      <property role="TrG5h" value="setTargetPort" />
      <node concept="3clFbS" id="4y$DvIW7xlk" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW7xll" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW7xlm" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIW7xln" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="4y$DvIW7xlo" role="1tU5fm">
          <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW7xZE" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGFNgg3" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3clFbS" id="7qPnRGFNgg6" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGFNgg7" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGFNu3z" role="3clF45">
        <ref role="3uigEE" node="2R0WzquZm0W" resolve="EntryKind" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5wmLZ" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW7y4w" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3clFbS" id="4y$DvIW7y4z" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW7y4$" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW7y2E" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="7qPnRGGbtqv">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="FBInstancePortIdentity" />
    <node concept="312cEg" id="7qPnRGGbEPF" role="jymVt">
      <property role="TrG5h" value="myPosition" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGGbtP2" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGbtVl" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7qPnRGGbFBW" role="jymVt">
      <property role="TrG5h" value="myKind" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGGbFvi" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGbFBM" role="1tU5fm">
        <ref role="3uigEE" node="2R0WzquZm0W" resolve="EntryKind" />
      </node>
    </node>
    <node concept="312cEg" id="7qPnRGGbFOr" role="jymVt">
      <property role="TrG5h" value="myIsSource" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGGbFI5" role="1B3o_S" />
      <node concept="10P_77" id="7qPnRGGbFM$" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7qPnRGGm8mJ" role="jymVt">
      <property role="TrG5h" value="myView" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGGm7_n" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGm8hB" role="1tU5fm">
        <ref role="3uigEE" node="7qPnRGGlWfX" resolve="FBInstance" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGbFQt" role="jymVt" />
    <node concept="3clFbW" id="7qPnRGGbPYP" role="jymVt">
      <node concept="3cqZAl" id="7qPnRGGbPYQ" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGGbPYR" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGGbPYT" role="3clF47">
        <node concept="3clFbF" id="7qPnRGGbPYX" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGGbPYZ" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGGbPZ6" role="37vLTx">
              <ref role="3cqZAo" node="7qPnRGGbPYW" resolve="position" />
            </node>
            <node concept="37vLTw" id="7qPnRGGbS4m" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGGbEPF" resolve="myPosition" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGbPZ9" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGGbPZb" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGGbSxm" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGGbFBW" resolve="myKind" />
            </node>
            <node concept="37vLTw" id="7qPnRGGbPZi" role="37vLTx">
              <ref role="3cqZAo" node="7qPnRGGbPZ8" resolve="kind" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGbPZl" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGGbPZn" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGGbSJ6" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGGbFOr" resolve="myIsSource" />
            </node>
            <node concept="37vLTw" id="7qPnRGGbPZu" role="37vLTx">
              <ref role="3cqZAo" node="7qPnRGGbPZk" resolve="isSource" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGm972" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGGm9Vo" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGGma5l" role="37vLTx">
              <ref role="3cqZAo" node="7qPnRGGm6_W" resolve="view" />
            </node>
            <node concept="37vLTw" id="7qPnRGGm970" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGGm8mJ" resolve="myView" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGGm6_W" role="3clF46">
        <property role="TrG5h" value="view" />
        <node concept="3uibUv" id="7qPnRGGm6PF" role="1tU5fm">
          <ref role="3uigEE" node="7qPnRGGlWfX" resolve="FBInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGGbPYW" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="10Oyi0" id="7qPnRGGbPYV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7qPnRGGbPZ8" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="7qPnRGGbPZ7" role="1tU5fm">
          <ref role="3uigEE" node="2R0WzquZm0W" resolve="EntryKind" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGGbPZk" role="3clF46">
        <property role="TrG5h" value="isSource" />
        <node concept="10P_77" id="7qPnRGGbPZj" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGcjtc" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGck4n" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3Tm1VV" id="7qPnRGGck4p" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy5rFwE" role="3clF45">
        <ref role="3uigEE" node="7qPnRGGlWfX" resolve="FBInstance" />
      </node>
      <node concept="3clFbS" id="7qPnRGGck4r" role="3clF47">
        <node concept="3clFbF" id="7qPnRGGcl6W" role="3cqZAp">
          <node concept="37vLTw" id="7qPnRGGmaa9" role="3clFbG">
            <ref role="3cqZAo" node="7qPnRGGm8mJ" resolve="myView" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7qPnRGGck4s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsK6Zyn" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGck4v" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="7qPnRGGck4x" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGck4y" role="3clF45">
        <ref role="3uigEE" node="2R0WzquZm0W" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="7qPnRGGck4z" role="3clF47">
        <node concept="3clFbF" id="7qPnRGGclFh" role="3cqZAp">
          <node concept="37vLTw" id="7qPnRGGclFe" role="3clFbG">
            <ref role="3cqZAo" node="7qPnRGGbFBW" resolve="myKind" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5n77g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsK79x_" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsK6WST" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="10Oyi0" id="3IX4BsK6WSU" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsK6WSV" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsK6WSW" role="3clF47">
        <node concept="3clFbF" id="3IX4BsK6WSX" role="3cqZAp">
          <node concept="37vLTw" id="3IX4BsK6WSS" role="3clFbG">
            <ref role="3cqZAo" node="7qPnRGGbEPF" resolve="myPosition" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsK6Yck" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsK6WT5" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="10P_77" id="3IX4BsK6WT6" role="3clF45" />
      <node concept="3Tm1VV" id="3IX4BsK6WT7" role="1B3o_S" />
      <node concept="3clFbS" id="3IX4BsK6WT8" role="3clF47">
        <node concept="3clFbF" id="3IX4BsK6WT9" role="3cqZAp">
          <node concept="37vLTw" id="3IX4BsK6WT4" role="3clFbG">
            <ref role="3cqZAo" node="7qPnRGGbFOr" resolve="myIsSource" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6$FGuy5n7QE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGcjvm" role="jymVt" />
    <node concept="3Tm1VV" id="7qPnRGGbtqw" role="1B3o_S" />
    <node concept="3clFb_" id="7qPnRGGbFSP" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="7qPnRGGbFSQ" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGGbFSR" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGGbFSS" role="3clF47">
        <node concept="3clFbJ" id="7qPnRGGbFST" role="3cqZAp">
          <node concept="3clFbS" id="7qPnRGGbFSU" role="3clFbx">
            <node concept="3cpWs6" id="7qPnRGGbFSV" role="3cqZAp">
              <node concept="3clFbT" id="7qPnRGGbFSW" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7qPnRGGbFSX" role="3clFbw">
            <node concept="Xjq3P" id="7qPnRGGbFSO" role="3uHU7B" />
            <node concept="37vLTw" id="7qPnRGGbFSY" role="3uHU7w">
              <ref role="3cqZAo" node="7qPnRGGbFTl" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7qPnRGGbFSZ" role="3cqZAp">
          <node concept="3clFbS" id="7qPnRGGbFT0" role="3clFbx">
            <node concept="3cpWs6" id="7qPnRGGbFT1" role="3cqZAp">
              <node concept="3clFbT" id="7qPnRGGbFT2" role="3cqZAk" />
            </node>
          </node>
          <node concept="1eOMI4" id="7qPnRGGbMoJ" role="3clFbw">
            <node concept="3fqX7Q" id="7qPnRGGbMW4" role="1eOMHV">
              <node concept="2ZW3vV" id="7qPnRGGbNaS" role="3fr31v">
                <node concept="3uibUv" id="7qPnRGGbNhr" role="2ZW6by">
                  <ref role="3uigEE" node="7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
                </node>
                <node concept="37vLTw" id="7qPnRGGbN1j" role="2ZW6bz">
                  <ref role="3cqZAo" node="7qPnRGGbFTl" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGGbFTe" role="3cqZAp" />
        <node concept="3cpWs8" id="7qPnRGGbFTf" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGGbFTg" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="7qPnRGGbFTh" role="1tU5fm">
              <ref role="3uigEE" node="7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            </node>
            <node concept="10QFUN" id="7qPnRGGbFTi" role="33vP2m">
              <node concept="3uibUv" id="7qPnRGGbFTj" role="10QFUM">
                <ref role="3uigEE" node="7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
              </node>
              <node concept="37vLTw" id="7qPnRGGbFTk" role="10QFUP">
                <ref role="3cqZAo" node="7qPnRGGbFTl" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7qPnRGGbFTT" role="3cqZAp">
          <node concept="3y3z36" id="7qPnRGGbFTU" role="3clFbw">
            <node concept="2OqwBi" id="7qPnRGGbFTV" role="3uHU7w">
              <node concept="37vLTw" id="7qPnRGGbFTW" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGGbFTg" resolve="that" />
              </node>
              <node concept="2OwXpG" id="7qPnRGGbFTR" role="2OqNvi">
                <ref role="2Oxat5" node="7qPnRGGbFOr" resolve="myIsSource" />
              </node>
            </node>
            <node concept="37vLTw" id="7qPnRGGbFTS" role="3uHU7B">
              <ref role="3cqZAo" node="7qPnRGGbFOr" resolve="myIsSource" />
            </node>
          </node>
          <node concept="3clFbS" id="7qPnRGGbFTX" role="3clFbx">
            <node concept="3cpWs6" id="7qPnRGGbFTY" role="3cqZAp">
              <node concept="3clFbT" id="7qPnRGGbFTZ" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7qPnRGGmeyS" role="3cqZAp">
          <node concept="3clFbS" id="7qPnRGGmeyU" role="3clFbx">
            <node concept="3cpWs6" id="7qPnRGGmgKy" role="3cqZAp">
              <node concept="3clFbT" id="7qPnRGGmgNJ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="5FPxgJnrpB_" role="3clFbw">
            <node concept="2OqwBi" id="5FPxgJnrqJx" role="3fr31v">
              <node concept="37vLTw" id="5FPxgJnrpBF" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGGm8mJ" resolve="myView" />
              </node>
              <node concept="liA8E" id="5FPxgJnrx2o" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="5FPxgJnrxMA" role="37wK5m">
                  <node concept="37vLTw" id="5FPxgJnrxmi" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGGbFTg" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="5FPxgJnryHx" role="2OqNvi">
                    <ref role="2Oxat5" node="7qPnRGGm8mJ" resolve="myView" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7qPnRGGbFTt" role="3cqZAp">
          <node concept="3y3z36" id="7qPnRGGbFTu" role="3clFbw">
            <node concept="2OqwBi" id="7qPnRGGbFTv" role="3uHU7w">
              <node concept="37vLTw" id="7qPnRGGbFTo" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGGbFTg" resolve="that" />
              </node>
              <node concept="2OwXpG" id="7qPnRGGbFTr" role="2OqNvi">
                <ref role="2Oxat5" node="7qPnRGGbEPF" resolve="myPosition" />
              </node>
            </node>
            <node concept="37vLTw" id="7qPnRGGbFTs" role="3uHU7B">
              <ref role="3cqZAo" node="7qPnRGGbEPF" resolve="myPosition" />
            </node>
          </node>
          <node concept="3clFbS" id="7qPnRGGbFTw" role="3clFbx">
            <node concept="3cpWs6" id="7qPnRGGbFTx" role="3cqZAp">
              <node concept="3clFbT" id="7qPnRGGbFTy" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7qPnRGGbFTB" role="3cqZAp">
          <node concept="3clFbS" id="7qPnRGGbFTC" role="3clFbx">
            <node concept="3cpWs6" id="7qPnRGGbFTD" role="3cqZAp">
              <node concept="3clFbT" id="7qPnRGGbFTE" role="3cqZAk" />
            </node>
          </node>
          <node concept="3y3z36" id="6$FGuy6b0dC" role="3clFbw">
            <node concept="2OqwBi" id="6$FGuy6b1cA" role="3uHU7w">
              <node concept="37vLTw" id="6$FGuy6b0XI" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGGbFTg" resolve="that" />
              </node>
              <node concept="2OwXpG" id="6$FGuy6b27b" role="2OqNvi">
                <ref role="2Oxat5" node="7qPnRGGbFBW" resolve="myKind" />
              </node>
            </node>
            <node concept="37vLTw" id="6$FGuy6aYeS" role="3uHU7B">
              <ref role="3cqZAo" node="7qPnRGGbFBW" resolve="myKind" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGGbFU0" role="3cqZAp" />
        <node concept="3clFbF" id="7qPnRGGbFU1" role="3cqZAp">
          <node concept="3clFbT" id="7qPnRGGbFU2" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGGbFTl" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="7qPnRGGbFTm" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7qPnRGGbFTn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsK6Vy2" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGbFU3" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="7qPnRGGbFU4" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGGbFU5" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGGbFU6" role="3clF47">
        <node concept="3cpWs8" id="7qPnRGGbFU8" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGGbFU9" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="7qPnRGGbFUa" role="1tU5fm" />
            <node concept="1eOMI4" id="7qPnRGGbKSB" role="33vP2m">
              <node concept="3K4zz7" id="7qPnRGGbIov" role="1eOMHV">
                <node concept="3cmrfG" id="7qPnRGGbJmH" role="3K4E3e">
                  <property role="3cmrfH" value="17" />
                </node>
                <node concept="3cmrfG" id="7qPnRGGbJLv" role="3K4GZi">
                  <property role="3cmrfH" value="53" />
                </node>
                <node concept="37vLTw" id="7qPnRGGbHOw" role="3K4Cdx">
                  <ref role="3cqZAo" node="7qPnRGGbFOr" resolve="myIsSource" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGmahT" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGGmahU" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGGmahV" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGGbFU9" resolve="result" />
            </node>
            <node concept="3cpWs3" id="7qPnRGGmahW" role="37vLTx">
              <node concept="2OqwBi" id="7qPnRGGmcaN" role="3uHU7w">
                <node concept="37vLTw" id="7qPnRGGmbGz" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qPnRGGm8mJ" resolve="myView" />
                </node>
                <node concept="liA8E" id="7qPnRGGmdsD" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                </node>
              </node>
              <node concept="17qRlL" id="7qPnRGGmahY" role="3uHU7B">
                <node concept="3cmrfG" id="7qPnRGGmahZ" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="7qPnRGGmai0" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGGbFU9" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGbFUk" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGGbFUl" role="3clFbG">
            <node concept="37vLTw" id="7qPnRGGbFUm" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGGbFU9" resolve="result" />
            </node>
            <node concept="3cpWs3" id="7qPnRGGbFUn" role="37vLTx">
              <node concept="37vLTw" id="7qPnRGGbFUj" role="3uHU7w">
                <ref role="3cqZAo" node="7qPnRGGbEPF" resolve="myPosition" />
              </node>
              <node concept="17qRlL" id="7qPnRGGbFUh" role="3uHU7B">
                <node concept="3cmrfG" id="7qPnRGGbFUi" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="7qPnRGGbFUc" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGGbFU9" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGbFUt" role="3cqZAp">
          <node concept="37vLTI" id="7qPnRGGbFUu" role="3clFbG">
            <node concept="3cpWs3" id="7qPnRGGbFUv" role="37vLTx">
              <node concept="17qRlL" id="7qPnRGGbFUo" role="3uHU7B">
                <node concept="3cmrfG" id="7qPnRGGbFUp" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="7qPnRGGbFUq" role="3uHU7w">
                  <ref role="3cqZAo" node="7qPnRGGbFU9" resolve="result" />
                </node>
              </node>
              <node concept="2OqwBi" id="7qPnRGGbFU_" role="3uHU7w">
                <node concept="liA8E" id="7qPnRGGbFUD" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Enum.hashCode()" resolve="hashCode" />
                </node>
                <node concept="37vLTw" id="7qPnRGGbFUs" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qPnRGGbFBW" resolve="myKind" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7qPnRGGbFUE" role="37vLTJ">
              <ref role="3cqZAo" node="7qPnRGGbFU9" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGbFUY" role="3cqZAp">
          <node concept="37vLTw" id="7qPnRGGbFUZ" role="3clFbG">
            <ref role="3cqZAo" node="7qPnRGGbFU9" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7qPnRGGbFU7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGmiiI" role="jymVt" />
    <node concept="2YIFZL" id="7qPnRGGmjBO" role="jymVt">
      <property role="TrG5h" value="generatePorts" />
      <node concept="3clFbS" id="7qPnRGGmjC1" role="3clF47">
        <node concept="1Dw8fO" id="7qPnRGGmjC2" role="3cqZAp">
          <node concept="3clFbS" id="7qPnRGGmjC3" role="2LFqv$">
            <node concept="3clFbF" id="7qPnRGGmjC4" role="3cqZAp">
              <node concept="2OqwBi" id="7qPnRGGmjC5" role="3clFbG">
                <node concept="37vLTw" id="7qPnRGGmjC6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qPnRGGmjBS" resolve="result" />
                </node>
                <node concept="liA8E" id="7qPnRGGmjC7" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="7qPnRGGmjC8" role="37wK5m">
                    <node concept="1pGfFk" id="7qPnRGGmjC9" role="2ShVmc">
                      <ref role="37wK5l" node="7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
                      <node concept="37vLTw" id="7qPnRGGmkFz" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGGmkkO" resolve="fb" />
                      </node>
                      <node concept="37vLTw" id="7qPnRGGmjCb" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGGmjCe" resolve="portPosition" />
                      </node>
                      <node concept="37vLTw" id="7qPnRGGmjCc" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGGmjBX" resolve="kind" />
                      </node>
                      <node concept="37vLTw" id="7qPnRGGmjCd" role="37wK5m">
                        <ref role="3cqZAo" node="7qPnRGGmjBZ" resolve="isSource" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7qPnRGGmjCe" role="1Duv9x">
            <property role="TrG5h" value="portPosition" />
            <node concept="10Oyi0" id="7qPnRGGmjCf" role="1tU5fm" />
            <node concept="3cmrfG" id="7qPnRGGmjCg" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7qPnRGGmjCh" role="1Dwp0S">
            <node concept="37vLTw" id="7qPnRGGmjCi" role="3uHU7w">
              <ref role="3cqZAo" node="7qPnRGGmjBV" resolve="portsCount" />
            </node>
            <node concept="37vLTw" id="7qPnRGGmjCj" role="3uHU7B">
              <ref role="3cqZAo" node="7qPnRGGmjCe" resolve="portPosition" />
            </node>
          </node>
          <node concept="3uNrnE" id="7qPnRGGmjCk" role="1Dwrff">
            <node concept="37vLTw" id="7qPnRGGmjCl" role="2$L3a6">
              <ref role="3cqZAo" node="7qPnRGGmjCe" resolve="portPosition" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7qPnRGGmjBR" role="3clF45" />
      <node concept="37vLTG" id="7qPnRGGmjBS" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="7qPnRGGmjBT" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="6$FGuy5wqcM" role="11_B2D">
            <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGGmkkO" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="7qPnRGGmkuD" role="1tU5fm">
          <ref role="3uigEE" node="7qPnRGGlWfX" resolve="FBInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGGmjBV" role="3clF46">
        <property role="TrG5h" value="portsCount" />
        <node concept="10Oyi0" id="7qPnRGGmjBW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7qPnRGGmjBX" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="7qPnRGGmjBY" role="1tU5fm">
          <ref role="3uigEE" node="2R0WzquZm0W" resolve="EntryKind" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGGmjBZ" role="3clF46">
        <property role="TrG5h" value="isSource" />
        <node concept="10P_77" id="7qPnRGGmjC0" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="7qPnRGGmn90" role="1B3o_S" />
    </node>
    <node concept="3uibUv" id="6$FGuy5n6o0" role="EKbjA">
      <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
    </node>
  </node>
  <node concept="3HP615" id="7qPnRGGlWfX">
    <property role="TrG5h" value="FBInstance" />
    <node concept="2tJIrI" id="7qPnRGGlWlO" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGlWnJ" role="jymVt">
      <property role="TrG5h" value="getInstanceName" />
      <node concept="3clFbS" id="7qPnRGGlWnM" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGGlWnN" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGlWnd" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGlWo$" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGlWqW" role="jymVt">
      <property role="TrG5h" value="setInstanceName" />
      <node concept="3clFbS" id="7qPnRGGlWqZ" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGGlWr0" role="1B3o_S" />
      <node concept="3cqZAl" id="7qPnRGGlWqe" role="3clF45" />
      <node concept="37vLTG" id="7qPnRGGmsVb" role="3clF46">
        <property role="TrG5h" value="newName" />
        <node concept="3uibUv" id="7qPnRGGmsVa" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_D_3xXugb0" role="jymVt" />
    <node concept="3clFb_" id="2_D_3xXugBi" role="jymVt">
      <property role="TrG5h" value="isPrototype" />
      <node concept="3clFbS" id="2_D_3xXugBl" role="3clF47">
        <node concept="3clFbF" id="309fsJ6buzJ" role="3cqZAp">
          <node concept="3clFbT" id="309fsJ6buzI" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2_D_3xXugBm" role="1B3o_S" />
      <node concept="10P_77" id="2_D_3xXugqo" role="3clF45" />
      <node concept="2JFqV2" id="309fsJ6bu7f" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="309fsJ6buFF" role="jymVt" />
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
    <node concept="2tJIrI" id="1R4IoyQw7gO" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQw8aL" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3clFbS" id="1R4IoyQw8aO" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQw8aP" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_0sE" role="3clF45">
        <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="3DiEZ8TN8KD" role="jymVt" />
    <node concept="3clFb_" id="3DiEZ8TN9rs" role="jymVt">
      <property role="TrG5h" value="getPort" />
      <node concept="3clFbS" id="3DiEZ8TN9rv" role="3clF47">
        <node concept="3clFbF" id="3DiEZ8TNaUD" role="3cqZAp">
          <node concept="2ShNRf" id="3DiEZ8TNaUF" role="3clFbG">
            <node concept="1pGfFk" id="3DiEZ8TNaUG" role="2ShVmc">
              <ref role="37wK5l" node="7qPnRGGbPYP" resolve="FBInstancePortIdentity" />
              <node concept="Xjq3P" id="3DiEZ8TNaXl" role="37wK5m" />
              <node concept="2OqwBi" id="3DiEZ8TNbc6" role="37wK5m">
                <node concept="37vLTw" id="3DiEZ8TNb1v" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DiEZ8TN9KP" resolve="descriptor" />
                </node>
                <node concept="liA8E" id="3DiEZ8TNtKE" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:3DiEZ8TNgqG" resolve="getPosition" />
                </node>
              </node>
              <node concept="2OqwBi" id="3DiEZ8TNtX3" role="37wK5m">
                <node concept="37vLTw" id="3DiEZ8TNtP6" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DiEZ8TN9KP" resolve="descriptor" />
                </node>
                <node concept="liA8E" id="3DiEZ8TNulU" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:5fP$XwiOazh" resolve="getConnecitonKind" />
                </node>
              </node>
              <node concept="3fqX7Q" id="3DiEZ8TNARO" role="37wK5m">
                <node concept="2OqwBi" id="3DiEZ8TNARQ" role="3fr31v">
                  <node concept="37vLTw" id="3DiEZ8TNARR" role="2Oq$k0">
                    <ref role="3cqZAo" node="3DiEZ8TN9KP" resolve="descriptor" />
                  </node>
                  <node concept="liA8E" id="3DiEZ8TNARS" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:3DiEZ8TNwDw" resolve="isInput" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3DiEZ8TN9rw" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TN975" role="3clF45">
        <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="37vLTG" id="3DiEZ8TN9KP" role="3clF46">
        <property role="TrG5h" value="descriptor" />
        <node concept="3uibUv" id="3DiEZ8TN9Ox" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
        <node concept="2AHcQZ" id="3DiEZ8TN9RA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2JFqV2" id="3DiEZ8TN9SE" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="2_D_3xXurg6" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGlXro" role="jymVt">
      <property role="TrG5h" value="getPorts" />
      <node concept="3Tm1VV" id="7qPnRGGlXrp" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGlXrq" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="6$FGuy5wolO" role="11_B2D">
          <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="7qPnRGGlXrs" role="3clF47">
        <node concept="3cpWs8" id="7qPnRGGlXrt" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGGlXru" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="7qPnRGGlXrv" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="6$FGuy5woIY" role="11_B2D">
                <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
              </node>
            </node>
            <node concept="2ShNRf" id="7qPnRGGlXrx" role="33vP2m">
              <node concept="1pGfFk" id="7qPnRGGlXry" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="6$FGuy5wp8S" role="1pMfVU">
                  <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGGmtwM" role="3cqZAp" />
        <node concept="3cpWs8" id="1R4IoyQwrNx" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyQwrNy" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3uibUv" id="1R4IoyQ_0IS" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
            </node>
            <node concept="1rXfSq" id="1R4IoyQwrNz" role="33vP2m">
              <ref role="37wK5l" node="1R4IoyQw8aL" resolve="getType" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGmqld" role="3cqZAp">
          <node concept="2YIFZM" id="4ZaR9mNlrIC" role="3clFbG">
            <ref role="37wK5l" node="7qPnRGGmjBO" resolve="generatePorts" />
            <ref role="1Pybhc" node="7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            <node concept="37vLTw" id="7qPnRGGmqlf" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGGlXru" resolve="result" />
            </node>
            <node concept="Xjq3P" id="7qPnRGGmqlg" role="37wK5m" />
            <node concept="2OqwBi" id="7qPnRGGmrwe" role="37wK5m">
              <node concept="2OqwBi" id="1R4IoyQwrxC" role="2Oq$k0">
                <node concept="37vLTw" id="1R4IoyQwrN$" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQwrNy" resolve="type" />
                </node>
                <node concept="liA8E" id="1R4IoyQwrxF" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYKgq" resolve="getEventInputPorts" />
                </node>
              </node>
              <node concept="liA8E" id="7qPnRGGmrwi" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="Rm8GO" id="7qPnRGGmrwj" role="37wK5m">
              <ref role="1Px2BO" node="2R0WzquZm0W" resolve="EntryKind" />
              <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
            </node>
            <node concept="3clFbT" id="7qPnRGGmrwk" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGmqEw" role="3cqZAp">
          <node concept="2YIFZM" id="4ZaR9mNlrID" role="3clFbG">
            <ref role="37wK5l" node="7qPnRGGmjBO" resolve="generatePorts" />
            <ref role="1Pybhc" node="7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            <node concept="37vLTw" id="7qPnRGGmqEy" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGGlXru" resolve="result" />
            </node>
            <node concept="Xjq3P" id="7qPnRGGmqEz" role="37wK5m" />
            <node concept="2OqwBi" id="7qPnRGGmshL" role="37wK5m">
              <node concept="2OqwBi" id="1R4IoyQws7M" role="2Oq$k0">
                <node concept="37vLTw" id="1R4IoyQwseA" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQwrNy" resolve="type" />
                </node>
                <node concept="liA8E" id="1R4IoyQws7P" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYKjD" resolve="getEventOutputPorts" />
                </node>
              </node>
              <node concept="liA8E" id="7qPnRGGmshP" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="Rm8GO" id="7qPnRGGmshQ" role="37wK5m">
              <ref role="1Px2BO" node="2R0WzquZm0W" resolve="EntryKind" />
              <ref role="Rm8GQ" node="2R0WzquZm2Y" resolve="EVENT" />
            </node>
            <node concept="3clFbT" id="7qPnRGGmshR" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGmmaT" role="3cqZAp">
          <node concept="2YIFZM" id="4ZaR9mNlrIA" role="3clFbG">
            <ref role="37wK5l" node="7qPnRGGmjBO" resolve="generatePorts" />
            <ref role="1Pybhc" node="7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            <node concept="37vLTw" id="7qPnRGGmnDn" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGGlXru" resolve="result" />
            </node>
            <node concept="Xjq3P" id="7qPnRGGmopY" role="37wK5m" />
            <node concept="2OqwBi" id="7qPnRGGmnDo" role="37wK5m">
              <node concept="liA8E" id="7qPnRGGmnDs" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
              <node concept="2OqwBi" id="1R4IoyQwslF" role="2Oq$k0">
                <node concept="37vLTw" id="1R4IoyQwssl" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQwrNy" resolve="type" />
                </node>
                <node concept="liA8E" id="1R4IoyQwslI" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYNd7" resolve="getDataInputPorts" />
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="7qPnRGGmnDt" role="37wK5m">
              <ref role="1Px2BO" node="2R0WzquZm0W" resolve="EntryKind" />
              <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
            </node>
            <node concept="3clFbT" id="7qPnRGGmnDu" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbF" id="7qPnRGGmqjT" role="3cqZAp">
          <node concept="2YIFZM" id="4ZaR9mNlrIB" role="3clFbG">
            <ref role="37wK5l" node="7qPnRGGmjBO" resolve="generatePorts" />
            <ref role="1Pybhc" node="7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            <node concept="37vLTw" id="7qPnRGGmqjV" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGGlXru" resolve="result" />
            </node>
            <node concept="Xjq3P" id="7qPnRGGmqjW" role="37wK5m" />
            <node concept="2OqwBi" id="7qPnRGGmrRV" role="37wK5m">
              <node concept="2OqwBi" id="1R4IoyQwsxX" role="2Oq$k0">
                <node concept="37vLTw" id="1R4IoyQwsCJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQwrNy" resolve="type" />
                </node>
                <node concept="liA8E" id="1R4IoyQwsy0" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:1HEL0zVYNdd" resolve="getDataOutputPorts" />
                </node>
              </node>
              <node concept="liA8E" id="7qPnRGGmrRZ" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="Rm8GO" id="7qPnRGGmrS0" role="37wK5m">
              <ref role="1Px2BO" node="2R0WzquZm0W" resolve="EntryKind" />
              <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
            </node>
            <node concept="3clFbT" id="7qPnRGGmrS1" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BNTcOz" role="3cqZAp">
          <node concept="2YIFZM" id="6LU90BNTcO$" role="3clFbG">
            <ref role="37wK5l" node="7qPnRGGmjBO" resolve="generatePorts" />
            <ref role="1Pybhc" node="7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            <node concept="37vLTw" id="6LU90BNTcO_" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGGlXru" resolve="result" />
            </node>
            <node concept="Xjq3P" id="6LU90BNTcOA" role="37wK5m" />
            <node concept="2OqwBi" id="6LU90BNTcOB" role="37wK5m">
              <node concept="liA8E" id="6LU90BNTcOC" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
              <node concept="2OqwBi" id="1R4IoyQwsIv" role="2Oq$k0">
                <node concept="37vLTw" id="1R4IoyQwsIO" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQwrNy" resolve="type" />
                </node>
                <node concept="liA8E" id="1R4IoyQwsIy" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:6LU90BNRs9B" resolve="getSocketPorts" />
                </node>
              </node>
            </node>
            <node concept="Rm8GO" id="6LU90BNTgEv" role="37wK5m">
              <ref role="Rm8GQ" node="2R0WzquZm6t" resolve="ADAPTER" />
              <ref role="1Px2BO" node="2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="3clFbT" id="6LU90BNTcOF" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbF" id="6LU90BNTeDc" role="3cqZAp">
          <node concept="2YIFZM" id="6LU90BNTeDd" role="3clFbG">
            <ref role="37wK5l" node="7qPnRGGmjBO" resolve="generatePorts" />
            <ref role="1Pybhc" node="7qPnRGGbtqv" resolve="FBInstancePortIdentity" />
            <node concept="37vLTw" id="6LU90BNTeDe" role="37wK5m">
              <ref role="3cqZAo" node="7qPnRGGlXru" resolve="result" />
            </node>
            <node concept="Xjq3P" id="6LU90BNTeDf" role="37wK5m" />
            <node concept="2OqwBi" id="6LU90BNTeDg" role="37wK5m">
              <node concept="2OqwBi" id="1R4IoyQwsR4" role="2Oq$k0">
                <node concept="37vLTw" id="1R4IoyQwsRp" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQwrNy" resolve="type" />
                </node>
                <node concept="liA8E" id="1R4IoyQwsR7" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:6LU90BNRs9H" resolve="getPlugPorts" />
                </node>
              </node>
              <node concept="liA8E" id="6LU90BNTeDi" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
            <node concept="Rm8GO" id="6LU90BNTgQT" role="37wK5m">
              <ref role="Rm8GQ" node="2R0WzquZm6t" resolve="ADAPTER" />
              <ref role="1Px2BO" node="2R0WzquZm0W" resolve="EntryKind" />
            </node>
            <node concept="3clFbT" id="6LU90BNTeDk" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7qPnRGGlXsd" role="3cqZAp" />
        <node concept="3cpWs6" id="7qPnRGGlXse" role="3cqZAp">
          <node concept="37vLTw" id="7qPnRGGlXsf" role="3cqZAk">
            <ref role="3cqZAo" node="7qPnRGGlXru" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2JFqV2" id="7qPnRGGlXsh" role="2frcjj" />
      <node concept="2AHcQZ" id="4O0ojQq0Qgi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7qPnRGGlWfY" role="1B3o_S" />
    <node concept="3uibUv" id="4O0ojQq0PvS" role="3HQHJm">
      <ref role="3uigEE" node="4O0ojQq0P48" resolve="FBNetworkComponent" />
    </node>
  </node>
  <node concept="Qs71p" id="2R0WzquZm0W">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="EntryKind" />
    <node concept="QsSxf" id="2R0WzquZm2Y" role="Qtgdg">
      <property role="TrG5h" value="EVENT" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="2R0WzquZm4$" role="Qtgdg">
      <property role="TrG5h" value="DATA" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="2R0WzquZm6t" role="Qtgdg">
      <property role="TrG5h" value="ADAPTER" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="2R0WzquZm0X" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="6tmlia_XI2H">
    <property role="TrG5h" value="InterfaceEndpoint" />
    <node concept="2tJIrI" id="4y$DvIXqQyU" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXqMCJ" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3clFbS" id="4y$DvIXqMCM" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXqMCN" role="1B3o_S" />
      <node concept="10Oyi0" id="4y$DvIXqMwj" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6tmlia_XNrJ" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XSf0" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3clFbS" id="6tmlia_XSf3" role="3clF47" />
      <node concept="3Tm1VV" id="6tmlia_XSf4" role="1B3o_S" />
      <node concept="3uibUv" id="6tmlia_XS5u" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_XRVy" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_XOcQ" role="jymVt">
      <property role="TrG5h" value="getPorts" />
      <node concept="3Tm1VV" id="6tmlia_XOcS" role="1B3o_S" />
      <node concept="3uibUv" id="6tmlia_XOcT" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4O0ojQq0RFH" role="11_B2D">
          <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="6tmlia_XOcV" role="3clF47">
        <node concept="3clFbF" id="6tmlia_XOoV" role="3cqZAp">
          <node concept="2YIFZM" id="4O0ojQq1b_v" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="4O0ojQq1bY2" role="3PaCim">
              <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
            </node>
            <node concept="Xjq3P" id="4y$DvIVWpvr" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="2JFqV2" id="6tmlia_XOcW" role="2frcjj" />
      <node concept="2AHcQZ" id="6tmlia_XOcX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_XL9N" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIVWrwj" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3Tm1VV" id="4y$DvIVWrwl" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIVWrwm" role="3clF45">
        <ref role="3uigEE" node="4O0ojQq0P48" resolve="FBNetworkComponent" />
      </node>
      <node concept="3clFbS" id="4y$DvIVWrwo" role="3clF47">
        <node concept="3clFbF" id="4y$DvIVWrPu" role="3cqZAp">
          <node concept="Xjq3P" id="4y$DvIVWrPr" role="3clFbG" />
        </node>
      </node>
      <node concept="2JFqV2" id="4y$DvIVWrwp" role="2frcjj" />
      <node concept="2AHcQZ" id="4y$DvIVWrwq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6tmlia_XI2I" role="1B3o_S" />
    <node concept="3uibUv" id="4O0ojQq0S8C" role="3HQHJm">
      <ref role="3uigEE" node="4O0ojQq0P48" resolve="FBNetworkComponent" />
    </node>
    <node concept="3uibUv" id="4y$DvIVWn_k" role="3HQHJm">
      <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
    </node>
  </node>
  <node concept="3HP615" id="5FPxgJnz8uH">
    <property role="TrG5h" value="FBPortIdentity" />
    <node concept="2tJIrI" id="5FPxgJnz8vl" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq1drw" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3clFbS" id="4O0ojQq1drz" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQq1dr$" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq1dqY" role="3clF45">
        <ref role="3uigEE" node="4O0ojQq0P48" resolve="FBNetworkComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQq1dp_" role="jymVt" />
    <node concept="3clFb_" id="5FPxgJnz8w3" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="3clFbS" id="5FPxgJnz8w6" role="3clF47" />
      <node concept="3Tm1VV" id="5FPxgJnz8w7" role="1B3o_S" />
      <node concept="10P_77" id="5FPxgJnz8vU" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5FPxgJnz8wv" role="jymVt" />
    <node concept="3clFb_" id="5FPxgJnz8Ag" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3clFbS" id="5FPxgJnz8Aj" role="3clF47" />
      <node concept="3Tm1VV" id="5FPxgJnz8Ak" role="1B3o_S" />
      <node concept="3uibUv" id="5FPxgJnz8xM" role="3clF45">
        <ref role="3uigEE" node="2R0WzquZm0W" resolve="EntryKind" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5FPxgJnz8uI" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6$FGuy5_Djq">
    <property role="TrG5h" value="ConnectionPath" />
    <node concept="2tJIrI" id="6$FGuy5_DjZ" role="jymVt" />
    <node concept="312cEg" id="6$FGuy5_D_b" role="jymVt">
      <property role="TrG5h" value="myKind" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6$FGuy5_DrV" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy5_DtW" role="1tU5fm">
        <ref role="3uigEE" node="1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
      </node>
    </node>
    <node concept="312cEg" id="6$FGuy5_Dmu" role="jymVt">
      <property role="TrG5h" value="myDX1" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6$FGuy5_Dlg" role="1B3o_S" />
      <node concept="10Oyi0" id="6$FGuy5_Dmn" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6$FGuy5_DqQ" role="jymVt">
      <property role="TrG5h" value="myDY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6$FGuy5_DpB" role="1B3o_S" />
      <node concept="10Oyi0" id="6$FGuy5_DqH" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6$FGuy5_DoC" role="jymVt">
      <property role="TrG5h" value="myDX2" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6$FGuy5_Dnn" role="1B3o_S" />
      <node concept="10Oyi0" id="6$FGuy5_Dox" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="6$FGuy5_DAQ" role="jymVt" />
    <node concept="3clFbW" id="6$FGuy5_DFK" role="jymVt">
      <node concept="3cqZAl" id="6$FGuy5_DFL" role="3clF45" />
      <node concept="3clFbS" id="6$FGuy5_DFN" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5_DP$" role="3cqZAp">
          <node concept="37vLTI" id="6$FGuy5_EIp" role="3clFbG">
            <node concept="37vLTw" id="6$FGuy5_ELb" role="37vLTx">
              <ref role="3cqZAo" node="6$FGuy5_DHa" resolve="kind" />
            </node>
            <node concept="37vLTw" id="6$FGuy5_DPz" role="37vLTJ">
              <ref role="3cqZAo" node="6$FGuy5_D_b" resolve="myKind" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$FGuy5_EP0" role="3cqZAp">
          <node concept="37vLTI" id="6$FGuy5_Iy6" role="3clFbG">
            <node concept="37vLTw" id="6$FGuy5_IDh" role="37vLTx">
              <ref role="3cqZAo" node="6$FGuy5_DGT" resolve="dx1" />
            </node>
            <node concept="37vLTw" id="6$FGuy5_EOY" role="37vLTJ">
              <ref role="3cqZAo" node="6$FGuy5_Dmu" resolve="myDX1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$FGuy5_IQQ" role="3cqZAp">
          <node concept="37vLTI" id="6$FGuy5_MtG" role="3clFbG">
            <node concept="37vLTw" id="6$FGuy5_MIz" role="37vLTx">
              <ref role="3cqZAo" node="6$FGuy5_DJI" resolve="dy" />
            </node>
            <node concept="37vLTw" id="6$FGuy5_IQO" role="37vLTJ">
              <ref role="3cqZAo" node="6$FGuy5_DqQ" resolve="myDY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$FGuy5_MWq" role="3cqZAp">
          <node concept="37vLTI" id="6$FGuy5_QE2" role="3clFbG">
            <node concept="37vLTw" id="6$FGuy5_QLd" role="37vLTx">
              <ref role="3cqZAo" node="6$FGuy5_DLc" resolve="dx2" />
            </node>
            <node concept="37vLTw" id="6$FGuy5_MWo" role="37vLTJ">
              <ref role="3cqZAo" node="6$FGuy5_DoC" resolve="myDX2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy5HwCN" role="1B3o_S" />
      <node concept="37vLTG" id="6$FGuy5_DHa" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3uibUv" id="6$FGuy5_DHU" role="1tU5fm">
          <ref role="3uigEE" node="1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
        </node>
      </node>
      <node concept="37vLTG" id="6$FGuy5_DGT" role="3clF46">
        <property role="TrG5h" value="dx1" />
        <node concept="10Oyi0" id="6$FGuy5_DGS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6$FGuy5_DJI" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="6$FGuy5_DKw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6$FGuy5_DLc" role="3clF46">
        <property role="TrG5h" value="dx2" />
        <node concept="10Oyi0" id="6$FGuy5_DM0" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5_R58" role="jymVt" />
    <node concept="3clFbW" id="6$FGuy5_RCC" role="jymVt">
      <node concept="37vLTG" id="6$FGuy5_RKw" role="3clF46">
        <property role="TrG5h" value="dx1" />
        <node concept="10Oyi0" id="6$FGuy5_RKx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6$FGuy5_RKy" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="6$FGuy5_RKz" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6$FGuy5_RK$" role="3clF46">
        <property role="TrG5h" value="dx2" />
        <node concept="10Oyi0" id="6$FGuy5_RK_" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6$FGuy5_RCD" role="3clF45" />
      <node concept="3clFbS" id="6$FGuy5_RCF" role="3clF47">
        <node concept="1VxSAg" id="6$FGuy5_RO9" role="3cqZAp">
          <ref role="37wK5l" node="6$FGuy5_DFK" resolve="ConnectionPath" />
          <node concept="Rm8GO" id="6$FGuy5_RWU" role="37wK5m">
            <ref role="Rm8GQ" node="1HEL0zVYPHl" resolve="FourAngles" />
            <ref role="1Px2BO" node="1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
          </node>
          <node concept="37vLTw" id="6$FGuy5_S1f" role="37wK5m">
            <ref role="3cqZAo" node="6$FGuy5_RKw" resolve="dx1" />
          </node>
          <node concept="37vLTw" id="6$FGuy5_SaM" role="37wK5m">
            <ref role="3cqZAo" node="6$FGuy5_RKy" resolve="dy" />
          </node>
          <node concept="37vLTw" id="6$FGuy5_Sis" role="37wK5m">
            <ref role="3cqZAo" node="6$FGuy5_RK$" resolve="dx2" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy5_RCG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6$FGuy5_SxB" role="jymVt" />
    <node concept="3clFbW" id="6$FGuy5_SjL" role="jymVt">
      <node concept="37vLTG" id="6$FGuy5_SjM" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="6$FGuy5_SjN" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6$FGuy5_SjS" role="3clF45" />
      <node concept="3clFbS" id="6$FGuy5_SjT" role="3clF47">
        <node concept="1VxSAg" id="6$FGuy5_SjU" role="3cqZAp">
          <ref role="37wK5l" node="6$FGuy5_DFK" resolve="ConnectionPath" />
          <node concept="Rm8GO" id="6$FGuy5_SN7" role="37wK5m">
            <ref role="Rm8GQ" node="1HEL0zVYPrd" resolve="TwoAngles" />
            <ref role="1Px2BO" node="1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
          </node>
          <node concept="37vLTw" id="6$FGuy5_SjW" role="37wK5m">
            <ref role="3cqZAo" node="6$FGuy5_SjM" resolve="dx" />
          </node>
          <node concept="3cmrfG" id="6$FGuy5_TIr" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="3cmrfG" id="6$FGuy5_TRC" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy5_SjZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6$FGuy5_T0r" role="jymVt" />
    <node concept="3clFbW" id="6$FGuy5_SPt" role="jymVt">
      <node concept="3cqZAl" id="6$FGuy5_SPw" role="3clF45" />
      <node concept="3clFbS" id="6$FGuy5_SPx" role="3clF47">
        <node concept="1VxSAg" id="6$FGuy5_SPy" role="3cqZAp">
          <ref role="37wK5l" node="6$FGuy5_DFK" resolve="ConnectionPath" />
          <node concept="Rm8GO" id="6$FGuy5_Tmf" role="37wK5m">
            <ref role="Rm8GQ" node="1HEL0zVYOE0" resolve="Straight" />
            <ref role="1Px2BO" node="1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
          </node>
          <node concept="3cmrfG" id="6$FGuy5_UhD" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="3cmrfG" id="6$FGuy5_UFM" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="3cmrfG" id="6$FGuy5_V4I" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy5_SP_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6$FGuy5_RvC" role="jymVt" />
    <node concept="3Tm1VV" id="6$FGuy5_Djr" role="1B3o_S" />
    <node concept="3clFb_" id="6$FGuy5_Vkd" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3uibUv" id="6$FGuy5_Vke" role="3clF45">
        <ref role="3uigEE" node="1HEL0zVYOAC" resolve="ConnectionPath.Kind" />
      </node>
      <node concept="3Tm1VV" id="6$FGuy5_Vkf" role="1B3o_S" />
      <node concept="3clFbS" id="6$FGuy5_Vkg" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5_Vkh" role="3cqZAp">
          <node concept="37vLTw" id="6$FGuy5_Vkc" role="3clFbG">
            <ref role="3cqZAo" node="6$FGuy5_D_b" resolve="myKind" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5_VHJ" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5_Vkj" role="jymVt">
      <property role="TrG5h" value="getDX1" />
      <node concept="10Oyi0" id="6$FGuy5_Vkk" role="3clF45" />
      <node concept="3Tm1VV" id="6$FGuy5_Vkl" role="1B3o_S" />
      <node concept="3clFbS" id="6$FGuy5_Vkm" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5_Vkn" role="3cqZAp">
          <node concept="37vLTw" id="6$FGuy5_Vki" role="3clFbG">
            <ref role="3cqZAo" node="6$FGuy5_Dmu" resolve="myDX1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5_VUb" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5_Vkp" role="jymVt">
      <property role="TrG5h" value="getDY" />
      <node concept="10Oyi0" id="6$FGuy5_Vkq" role="3clF45" />
      <node concept="3Tm1VV" id="6$FGuy5_Vkr" role="1B3o_S" />
      <node concept="3clFbS" id="6$FGuy5_Vks" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5_Vkt" role="3cqZAp">
          <node concept="37vLTw" id="6$FGuy5_Vko" role="3clFbG">
            <ref role="3cqZAo" node="6$FGuy5_DqQ" resolve="myDY" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5_W6C" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5_Vkv" role="jymVt">
      <property role="TrG5h" value="getDX2" />
      <node concept="10Oyi0" id="6$FGuy5_Vkw" role="3clF45" />
      <node concept="3Tm1VV" id="6$FGuy5_Vkx" role="1B3o_S" />
      <node concept="3clFbS" id="6$FGuy5_Vky" role="3clF47">
        <node concept="3clFbF" id="6$FGuy5_Vkz" role="3cqZAp">
          <node concept="37vLTw" id="6$FGuy5_Vku" role="3clFbG">
            <ref role="3cqZAo" node="6$FGuy5_DoC" resolve="myDX2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy63_kH" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy63_Ku" role="jymVt">
      <property role="TrG5h" value="copyDX1" />
      <node concept="3clFbS" id="6$FGuy63_Kx" role="3clF47">
        <node concept="3clFbF" id="6$FGuy63Am9" role="3cqZAp">
          <node concept="2ShNRf" id="6$FGuy63APM" role="3clFbG">
            <node concept="1pGfFk" id="6$FGuy63B9y" role="2ShVmc">
              <ref role="37wK5l" node="6$FGuy5_DFK" resolve="ConnectionPath" />
              <node concept="37vLTw" id="6$FGuy63BdY" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5_D_b" resolve="myKind" />
              </node>
              <node concept="37vLTw" id="6$FGuy63Bsf" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy63A9r" resolve="dx1" />
              </node>
              <node concept="37vLTw" id="6$FGuy63BFO" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5_DqQ" resolve="myDY" />
              </node>
              <node concept="37vLTw" id="6$FGuy63C1A" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5_DoC" resolve="myDX2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy63_zu" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy63_Y6" role="3clF45">
        <ref role="3uigEE" node="6$FGuy5_Djq" resolve="ConnectionPath" />
      </node>
      <node concept="37vLTG" id="6$FGuy63A9r" role="3clF46">
        <property role="TrG5h" value="dx1" />
        <node concept="10Oyi0" id="6$FGuy63A9q" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy63Cng" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy63C8z" role="jymVt">
      <property role="TrG5h" value="copyDY" />
      <node concept="3clFbS" id="6$FGuy63C8$" role="3clF47">
        <node concept="3clFbF" id="6$FGuy63C8_" role="3cqZAp">
          <node concept="2ShNRf" id="6$FGuy63C8A" role="3clFbG">
            <node concept="1pGfFk" id="6$FGuy63C8B" role="2ShVmc">
              <ref role="37wK5l" node="6$FGuy5_DFK" resolve="ConnectionPath" />
              <node concept="37vLTw" id="6$FGuy63C8C" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5_D_b" resolve="myKind" />
              </node>
              <node concept="37vLTw" id="6$FGuy63Daf" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5_Dmu" resolve="myDX1" />
              </node>
              <node concept="37vLTw" id="6$FGuy63C8D" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy63C8I" resolve="dy" />
              </node>
              <node concept="37vLTw" id="6$FGuy63C8F" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5_DoC" resolve="myDX2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy63C8G" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy63C8H" role="3clF45">
        <ref role="3uigEE" node="6$FGuy5_Djq" resolve="ConnectionPath" />
      </node>
      <node concept="37vLTG" id="6$FGuy63C8I" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="6$FGuy63C8J" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy63Dx7" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy63Dhs" role="jymVt">
      <property role="TrG5h" value="copyDX2" />
      <node concept="3clFbS" id="6$FGuy63Dht" role="3clF47">
        <node concept="3clFbF" id="6$FGuy63Dhu" role="3cqZAp">
          <node concept="2ShNRf" id="6$FGuy63Dhv" role="3clFbG">
            <node concept="1pGfFk" id="6$FGuy63Dhw" role="2ShVmc">
              <ref role="37wK5l" node="6$FGuy5_DFK" resolve="ConnectionPath" />
              <node concept="37vLTw" id="6$FGuy63Dhx" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5_D_b" resolve="myKind" />
              </node>
              <node concept="37vLTw" id="6$FGuy63Dhy" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5_Dmu" resolve="myDX1" />
              </node>
              <node concept="37vLTw" id="6$FGuy63EBr" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy5_DqQ" resolve="myDY" />
              </node>
              <node concept="37vLTw" id="6$FGuy63Dhz" role="37wK5m">
                <ref role="3cqZAo" node="6$FGuy63DhB" resolve="dx2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6$FGuy63Dh_" role="1B3o_S" />
      <node concept="3uibUv" id="6$FGuy63DhA" role="3clF45">
        <ref role="3uigEE" node="6$FGuy5_Djq" resolve="ConnectionPath" />
      </node>
      <node concept="37vLTG" id="6$FGuy63DhB" role="3clF46">
        <property role="TrG5h" value="dx2" />
        <node concept="10Oyi0" id="6$FGuy63DhC" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5_V92" role="jymVt" />
    <node concept="Qs71p" id="1HEL0zVYOAC" role="jymVt">
      <property role="TrG5h" value="Kind" />
      <node concept="3Tm1VV" id="1HEL0zVYOAD" role="1B3o_S" />
      <node concept="QsSxf" id="1HEL0zVYOE0" role="Qtgdg">
        <property role="TrG5h" value="Straight" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="1HEL0zVYPrd" role="Qtgdg">
        <property role="TrG5h" value="TwoAngles" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="1HEL0zVYPHl" role="Qtgdg">
        <property role="TrG5h" value="FourAngles" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="4O0ojQq0P48">
    <property role="TrG5h" value="FBNetworkComponent" />
    <node concept="2tJIrI" id="4O0ojQq0PL_" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq0PNT" role="jymVt">
      <property role="TrG5h" value="getPorts" />
      <node concept="3clFbS" id="4O0ojQq0PNW" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQq0PNX" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQq0PMC" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4O0ojQq0PNK" role="11_B2D">
          <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXHsCr" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXHsD_" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3clFbS" id="4y$DvIXHsDC" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXHsDD" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXHsDl" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="4O0ojQq0P49" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2syzu7qIIiU">
    <property role="TrG5h" value="InlineValue" />
    <node concept="2tJIrI" id="2syzu7qIIrR" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qIJt_" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="3clFbS" id="2syzu7qIJtC" role="3clF47" />
      <node concept="3Tm1VV" id="2syzu7qIJtD" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qIJeV" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="2syzu7qIJ$a" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qIJ8K" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qIIIP" role="jymVt">
      <property role="TrG5h" value="getOpppositePort" />
      <node concept="3clFbS" id="2syzu7qIIIS" role="3clF47" />
      <node concept="3Tm1VV" id="2syzu7qIIIT" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qIIZD" role="3clF45">
        <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
      </node>
      <node concept="2AHcQZ" id="2syzu7qIIUb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qIIz6" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qIIs0" role="jymVt">
      <property role="TrG5h" value="getPorts" />
      <node concept="3Tm1VV" id="2syzu7qIIs1" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qIIs2" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="2syzu7qIIs3" role="11_B2D">
          <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
      </node>
      <node concept="3clFbS" id="2syzu7qIIs4" role="3clF47">
        <node concept="3clFbF" id="2syzu7qIIs5" role="3cqZAp">
          <node concept="2YIFZM" id="2syzu7qIIs6" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="2syzu7qIIs7" role="3PaCim">
              <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
            </node>
            <node concept="Xjq3P" id="2syzu7qIIs8" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qIIs9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2JFqV2" id="2syzu7qIIsa" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="2syzu7qIIsb" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qIIsc" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3Tm1VV" id="2syzu7qIIsd" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qIIse" role="3clF45">
        <ref role="3uigEE" node="4O0ojQq0P48" resolve="FBNetworkComponent" />
      </node>
      <node concept="3clFbS" id="2syzu7qIIsf" role="3clF47">
        <node concept="3clFbF" id="2syzu7qIIsg" role="3cqZAp">
          <node concept="Xjq3P" id="2syzu7qIIsh" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qIIsi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2JFqV2" id="2syzu7qIIsj" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="2syzu7qTfH$" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qTfNY" role="jymVt">
      <property role="TrG5h" value="isSource" />
      <node concept="3Tm1VV" id="2syzu7qTfO0" role="1B3o_S" />
      <node concept="10P_77" id="2syzu7qTfO1" role="3clF45" />
      <node concept="3clFbS" id="2syzu7qTfO2" role="3clF47">
        <node concept="3clFbF" id="2syzu7qTg8L" role="3cqZAp">
          <node concept="3clFbT" id="2syzu7qTg8K" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2JFqV2" id="2syzu7qTfO3" role="2frcjj" />
      <node concept="2AHcQZ" id="2syzu7qTfO4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2syzu7qTfO7" role="jymVt">
      <property role="TrG5h" value="getKind" />
      <node concept="3Tm1VV" id="2syzu7qTfO9" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qTfOa" role="3clF45">
        <ref role="3uigEE" node="2R0WzquZm0W" resolve="EntryKind" />
      </node>
      <node concept="3clFbS" id="2syzu7qTfOb" role="3clF47">
        <node concept="3clFbF" id="2syzu7qTfYE" role="3cqZAp">
          <node concept="Rm8GO" id="2syzu7qTfYD" role="3clFbG">
            <ref role="1Px2BO" node="2R0WzquZm0W" resolve="EntryKind" />
            <ref role="Rm8GQ" node="2R0WzquZm4$" resolve="DATA" />
          </node>
        </node>
      </node>
      <node concept="2JFqV2" id="2syzu7qTfOc" role="2frcjj" />
      <node concept="2AHcQZ" id="2syzu7qTfOd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2syzu7qIIiV" role="1B3o_S" />
    <node concept="3uibUv" id="2syzu7qIIj$" role="3HQHJm">
      <ref role="3uigEE" node="4O0ojQq0P48" resolve="FBNetworkComponent" />
    </node>
    <node concept="3uibUv" id="2syzu7qIIrJ" role="3HQHJm">
      <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
    </node>
  </node>
  <node concept="3HP615" id="1R4IoyQvXM6">
    <property role="TrG5h" value="FBNetwork" />
    <node concept="2tJIrI" id="1R4IoyQvXM$" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQvZqY" role="jymVt">
      <property role="TrG5h" value="getComponents" />
      <node concept="3clFbS" id="1R4IoyQvZr1" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQvZr2" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQvZqH" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="1R4IoyQvZqP" role="11_B2D">
          <ref role="3uigEE" node="4O0ojQq0P48" resolve="FBNetworkComponent" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQFhe2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQvZrz" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQvZsQ" role="jymVt">
      <property role="TrG5h" value="getConnections" />
      <node concept="3clFbS" id="1R4IoyQvZsT" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQvZsU" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQvZsc" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="1R4IoyQvZsH" role="11_B2D">
          <ref role="3uigEE" node="4ZaR9mNlnNn" resolve="FBNetworkConnection" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQFhc$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQFgZS" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQFh62" role="jymVt">
      <property role="TrG5h" value="addConnection" />
      <node concept="3clFbS" id="1R4IoyQFh65" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyQFh66" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQFh5q" role="3clF45">
        <ref role="3uigEE" node="4ZaR9mNlnNn" resolve="FBNetworkConnection" />
      </node>
      <node concept="37vLTG" id="1R4IoyQFh78" role="3clF46">
        <property role="TrG5h" value="sourcePort" />
        <node concept="3uibUv" id="1R4IoyQFh77" role="1tU5fm">
          <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQFhgH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQFh8S" role="3clF46">
        <property role="TrG5h" value="targetPort" />
        <node concept="3uibUv" id="1R4IoyQFh9R" role="1tU5fm">
          <ref role="3uigEE" node="5FPxgJnz8uH" resolve="FBPortIdentity" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQFhi5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQFhbg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQvXM7" role="1B3o_S" />
  </node>
</model>

