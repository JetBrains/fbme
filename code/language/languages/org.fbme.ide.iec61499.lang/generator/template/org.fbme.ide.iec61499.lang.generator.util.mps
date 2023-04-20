<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:708b782d-113c-419f-b694-3872a997714c(org.fbme.ide.iec61499.lang.generator.util)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="kpbf" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text.impl(MPS.TextGen/)" />
    <import index="yfwt" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text.rt(MPS.TextGen/)" />
    <import index="ao3" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text(MPS.TextGen/)" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1217960179967" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowErrorMessage" flags="nn" index="2k5nB$" />
      <concept id="1217960314443" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowMessageBase" flags="nn" index="2k5Stg">
        <child id="1217960314448" name="messageText" index="2k5Stb" />
        <child id="1217960407512" name="referenceNode" index="2k6f33" />
      </concept>
      <concept id="1216860049633" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextType" flags="in" index="1iwH7U" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
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
    </language>
  </registry>
  <node concept="312cEu" id="463hhTc9vV">
    <property role="TrG5h" value="XmlAttributePrinter" />
    <node concept="2tJIrI" id="463hhTccha" role="jymVt" />
    <node concept="2YIFZL" id="463hhTccBB" role="jymVt">
      <property role="TrG5h" value="print0" />
      <node concept="3clFbS" id="463hhTccBD" role="3clF47">
        <node concept="3SKdUt" id="463hhTczse" role="3cqZAp">
          <node concept="1PaTwC" id="3D$ZgG8vr_Q" role="1aUNEU">
            <node concept="3oM_SD" id="3D$ZgG8vr_R" role="1PaTwD">
              <property role="3oM_SC" value="Attempted" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vr_S" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vr_T" role="1PaTwD">
              <property role="3oM_SC" value="customize" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vr_U" role="1PaTwD">
              <property role="3oM_SC" value="TextBufferImpl" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vr_V" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vr_W" role="1PaTwD">
              <property role="3oM_SC" value="custom" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vr_X" role="1PaTwD">
              <property role="3oM_SC" value="TextArea" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vr_Y" role="1PaTwD">
              <property role="3oM_SC" value="impl" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vr_Z" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrA0" role="1PaTwD">
              <property role="3oM_SC" value="escapes" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrA1" role="1PaTwD">
              <property role="3oM_SC" value="desired" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrA2" role="1PaTwD">
              <property role="3oM_SC" value="charactes" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="463hhTc$lA" role="3cqZAp">
          <node concept="1PaTwC" id="3D$ZgG8vrA3" role="1aUNEU">
            <node concept="3oM_SD" id="3D$ZgG8vrA4" role="1PaTwD">
              <property role="3oM_SC" value="But" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrA5" role="1PaTwD">
              <property role="3oM_SC" value="custom" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrA6" role="1PaTwD">
              <property role="3oM_SC" value="TextGenContext" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrA7" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrA8" role="1PaTwD">
              <property role="3oM_SC" value="working," />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrA9" role="1PaTwD">
              <property role="3oM_SC" value="also" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrAa" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrAb" role="1PaTwD">
              <property role="3oM_SC" value="able" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrAc" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrAd" role="1PaTwD">
              <property role="3oM_SC" value="instantiate" />
            </node>
            <node concept="3oM_SD" id="3D$ZgG8vrAe" role="1PaTwD">
              <property role="3oM_SC" value="TextGenTransitionContext" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="463hhTccEY" role="3cqZAp">
          <node concept="3cpWsn" id="463hhTccEZ" role="3cpWs9">
            <property role="TrG5h" value="textBuffer" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="463hhTccF0" role="1tU5fm">
              <ref role="3uigEE" to="ao3:~TextBuffer" resolve="TextBuffer" />
            </node>
            <node concept="2ShNRf" id="463hhTccGo" role="33vP2m">
              <node concept="1pGfFk" id="463hhTccUf" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextBufferImpl.&lt;init&gt;()" resolve="TextBufferImpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="463hhTcgGG" role="3cqZAp">
          <node concept="3cpWsn" id="463hhTcgGE" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="blc" />
            <node concept="3uibUv" id="463hhTcgMN" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~BufferLayoutConfiguration" resolve="BufferLayoutConfiguration" />
            </node>
            <node concept="2ShNRf" id="463hhTcgO1" role="33vP2m">
              <node concept="1pGfFk" id="463hhTcgVY" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~BufferLayoutConfiguration.&lt;init&gt;()" resolve="BufferLayoutConfiguration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="463hhTchf7" role="3cqZAp">
          <node concept="2OqwBi" id="463hhTchnJ" role="3clFbG">
            <node concept="37vLTw" id="463hhTchf5" role="2Oq$k0">
              <ref role="3cqZAo" node="463hhTcgGE" resolve="blc" />
            </node>
            <node concept="liA8E" id="463hhTchyz" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~BufferLayoutConfiguration.prepareBuffer(jetbrains.mps.text.TextBuffer)" resolve="prepareBuffer" />
              <node concept="37vLTw" id="463hhTchzs" role="37wK5m">
                <ref role="3cqZAo" node="463hhTccEZ" resolve="textBuffer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="463hhTcdaH" role="3cqZAp">
          <node concept="3cpWsn" id="463hhTcdaI" role="3cpWs9">
            <property role="TrG5h" value="tgc" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="463hhTcdaJ" role="1tU5fm">
              <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
            </node>
            <node concept="2ShNRf" id="463hhTcdcH" role="33vP2m">
              <node concept="YeOm9" id="463hhTcdke" role="2ShVmc">
                <node concept="1Y3b0j" id="463hhTcdkh" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="yfwt:~TextGenContext" resolve="TextGenContext" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="463hhTcdki" role="1B3o_S" />
                  <node concept="3clFb_" id="463hhTcdkk" role="jymVt">
                    <property role="TrG5h" value="getBuffer" />
                    <node concept="3Tm1VV" id="463hhTcdkl" role="1B3o_S" />
                    <node concept="2AHcQZ" id="463hhTcdkn" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                    <node concept="3uibUv" id="463hhTcdko" role="3clF45">
                      <ref role="3uigEE" to="ao3:~TextBuffer" resolve="TextBuffer" />
                    </node>
                    <node concept="3clFbS" id="463hhTcdkp" role="3clF47">
                      <node concept="3clFbF" id="463hhTcdsv" role="3cqZAp">
                        <node concept="37vLTw" id="463hhTcdsu" role="3clFbG">
                          <ref role="3cqZAo" node="463hhTccEZ" resolve="textBuffer" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="463hhTcdkr" role="jymVt">
                    <property role="TrG5h" value="getPrimaryInput" />
                    <node concept="3Tm1VV" id="463hhTcdks" role="1B3o_S" />
                    <node concept="3Tqbb2" id="463hhTcdur" role="3clF45" />
                    <node concept="3clFbS" id="463hhTcdkv" role="3clF47">
                      <node concept="3clFbF" id="463hhTcdtJ" role="3cqZAp">
                        <node concept="37vLTw" id="463hhTcdtI" role="3clFbG">
                          <ref role="3cqZAo" node="463hhTccBG" resolve="stNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="463hhTcewM" role="3cqZAp">
          <node concept="3cpWsn" id="463hhTcewN" role="3cpWs9">
            <property role="TrG5h" value="tgs" />
            <node concept="3uibUv" id="463hhTcewO" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
            </node>
            <node concept="2ShNRf" id="463hhTceAQ" role="33vP2m">
              <node concept="1pGfFk" id="463hhTceAE" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <node concept="37vLTw" id="463hhTceBq" role="37wK5m">
                  <ref role="3cqZAo" node="463hhTcdaI" resolve="tgc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="463hhTceHg" role="3cqZAp">
          <node concept="2OqwBi" id="463hhTceTO" role="3clFbG">
            <node concept="37vLTw" id="463hhTceHe" role="2Oq$k0">
              <ref role="3cqZAo" node="463hhTcewN" resolve="tgs" />
            </node>
            <node concept="liA8E" id="463hhTcf4Y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
              <node concept="37vLTw" id="463hhTcf72" role="37wK5m">
                <ref role="3cqZAo" node="463hhTccBG" resolve="stNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="463hhTcfM7" role="3cqZAp" />
        <node concept="3cpWs6" id="463hhTcfhZ" role="3cqZAp">
          <node concept="2OqwBi" id="463hhTciLn" role="3cqZAk">
            <node concept="2OqwBi" id="463hhTcikt" role="2Oq$k0">
              <node concept="2OqwBi" id="463hhTchOw" role="2Oq$k0">
                <node concept="37vLTw" id="463hhTchF1" role="2Oq$k0">
                  <ref role="3cqZAo" node="463hhTcgGE" resolve="blc" />
                </node>
                <node concept="liA8E" id="463hhTchZ_" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~BufferLayoutConfiguration.prepareSnapshot(jetbrains.mps.text.TextBuffer)" resolve="prepareSnapshot" />
                  <node concept="37vLTw" id="463hhTci7k" role="37wK5m">
                    <ref role="3cqZAo" node="463hhTccEZ" resolve="textBuffer" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="463hhTciwO" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~BufferSnapshot.getText()" resolve="getText" />
              </node>
            </node>
            <node concept="liA8E" id="463hhTciYH" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~CharSequence.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="463hhTccBF" role="3clF45" />
      <node concept="37vLTG" id="463hhTccBG" role="3clF46">
        <property role="TrG5h" value="stNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="463hhTccBH" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="463hhTccBE" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="463hhTc$QO" role="jymVt" />
    <node concept="2YIFZL" id="463hhTc_g0" role="jymVt">
      <property role="TrG5h" value="print" />
      <node concept="3clFbS" id="463hhTc_g3" role="3clF47">
        <node concept="3cpWs8" id="463hhTc_uG" role="3cqZAp">
          <node concept="3cpWsn" id="463hhTc_uH" role="3cpWs9">
            <property role="TrG5h" value="rtu" />
            <node concept="3uibUv" id="463hhTc_uI" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~RegularTextUnit" resolve="RegularTextUnit" />
            </node>
            <node concept="2ShNRf" id="463hhTc_wa" role="33vP2m">
              <node concept="1pGfFk" id="463hhTc_C2" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~RegularTextUnit.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="RegularTextUnit" />
                <node concept="37vLTw" id="463hhTc_CE" role="37wK5m">
                  <ref role="3cqZAo" node="463hhTc_rW" resolve="stNode" />
                </node>
                <node concept="3cpWs3" id="463hhTcA6M" role="37wK5m">
                  <node concept="Xl_RD" id="463hhTcA8j" role="3uHU7B" />
                  <node concept="2OqwBi" id="463hhTc_O4" role="3uHU7w">
                    <node concept="37vLTw" id="463hhTc_Ex" role="2Oq$k0">
                      <ref role="3cqZAo" node="463hhTc_rW" resolve="stNode" />
                    </node>
                    <node concept="iZEcu" id="463hhTcA4j" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="463hhTcAiZ" role="3cqZAp">
          <node concept="2OqwBi" id="463hhTcAx6" role="3clFbG">
            <node concept="37vLTw" id="463hhTcAiX" role="2Oq$k0">
              <ref role="3cqZAo" node="463hhTc_uH" resolve="rtu" />
            </node>
            <node concept="liA8E" id="463hhTcAGi" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~RegularTextUnit.generate()" resolve="generate" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7DSsXPFyu_N" role="3cqZAp">
          <node concept="3clFbS" id="7DSsXPFyu_P" role="3clFbx">
            <node concept="2Gpval" id="7DSsXPFBtMq" role="3cqZAp">
              <node concept="2GrKxI" id="7DSsXPFBtMs" role="2Gsz3X">
                <property role="TrG5h" value="message" />
              </node>
              <node concept="2OqwBi" id="7DSsXPFBufM" role="2GsD0m">
                <node concept="37vLTw" id="7DSsXPFBtOL" role="2Oq$k0">
                  <ref role="3cqZAo" node="463hhTc_uH" resolve="rtu" />
                </node>
                <node concept="liA8E" id="7DSsXPFBuBM" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~RegularTextUnit.getMessages()" resolve="getMessages" />
                </node>
              </node>
              <node concept="3clFbS" id="7DSsXPFBtMw" role="2LFqv$">
                <node concept="3clFbJ" id="7DSsXPFBuI3" role="3cqZAp">
                  <node concept="3clFbC" id="7DSsXPFBvLR" role="3clFbw">
                    <node concept="Rm8GO" id="7DSsXPFBwqY" role="3uHU7w">
                      <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                      <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                    </node>
                    <node concept="2OqwBi" id="7DSsXPFBuVX" role="3uHU7B">
                      <node concept="2GrUjf" id="7DSsXPFBuON" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7DSsXPFBtMs" resolve="message" />
                      </node>
                      <node concept="liA8E" id="7DSsXPFBvhD" role="2OqNvi">
                        <ref role="37wK5l" to="et5u:~IMessage.getKind()" resolve="getKind" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7DSsXPFBuI5" role="3clFbx">
                    <node concept="3clFbF" id="7DSsXPFBwxa" role="3cqZAp">
                      <node concept="2OqwBi" id="7DSsXPFBwDa" role="3clFbG">
                        <node concept="37vLTw" id="7DSsXPFBwx9" role="2Oq$k0">
                          <ref role="3cqZAo" node="7DSsXPFBrGo" resolve="ctx" />
                        </node>
                        <node concept="2k5nB$" id="7DSsXPFBwI_" role="2OqNvi">
                          <node concept="3cpWs3" id="7DSsXPFBygs" role="2k5Stb">
                            <node concept="Xl_RD" id="7DSsXPFByy6" role="3uHU7B">
                              <property role="Xl_RC" value="Unable to produce text:" />
                            </node>
                            <node concept="2OqwBi" id="7DSsXPFBwR6" role="3uHU7w">
                              <node concept="2GrUjf" id="7DSsXPFBwJH" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="7DSsXPFBtMs" resolve="message" />
                              </node>
                              <node concept="liA8E" id="7DSsXPFBxiq" role="2OqNvi">
                                <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="7DSsXPFBxDD" role="2k6f33">
                            <ref role="3cqZAo" node="463hhTc_rW" resolve="stNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7DSsXPFBzVF" role="3cqZAp">
              <node concept="10Nm6u" id="7DSsXPFB$A9" role="3cqZAk" />
            </node>
          </node>
          <node concept="3y3z36" id="7DSsXPFyIn6" role="3clFbw">
            <node concept="Rm8GO" id="7DSsXPFyIGb" role="3uHU7w">
              <ref role="Rm8GQ" to="ao3:~TextUnit$Status.Generated" resolve="Generated" />
              <ref role="1Px2BO" to="ao3:~TextUnit$Status" resolve="TextUnit.Status" />
            </node>
            <node concept="2OqwBi" id="7DSsXPFyvpR" role="3uHU7B">
              <node concept="37vLTw" id="7DSsXPFyuTn" role="2Oq$k0">
                <ref role="3cqZAo" node="463hhTc_uH" resolve="rtu" />
              </node>
              <node concept="liA8E" id="7DSsXPFyEF3" role="2OqNvi">
                <ref role="37wK5l" to="kpbf:~RegularTextUnit.getState()" resolve="getState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="463hhTdJeb" role="3cqZAp">
          <node concept="1rXfSq" id="23XkovWui$C" role="3cqZAk">
            <ref role="37wK5l" node="23XkovWuhk6" resolve="escapeXML" />
            <node concept="2ShNRf" id="23XkovWuj61" role="37wK5m">
              <node concept="1pGfFk" id="23XkovWuj62" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~String.&lt;init&gt;(byte[])" resolve="String" />
                <node concept="2OqwBi" id="23XkovWuj63" role="37wK5m">
                  <node concept="37vLTw" id="23XkovWuj64" role="2Oq$k0">
                    <ref role="3cqZAo" node="463hhTc_uH" resolve="rtu" />
                  </node>
                  <node concept="liA8E" id="23XkovWuj65" role="2OqNvi">
                    <ref role="37wK5l" to="kpbf:~RegularTextUnit.getBytes()" resolve="getBytes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="463hhTc_3D" role="1B3o_S" />
      <node concept="17QB3L" id="463hhTc_fG" role="3clF45" />
      <node concept="37vLTG" id="7DSsXPFBrGo" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="1iwH7U" id="7DSsXPFBrZS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="463hhTc_rW" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="stNode" />
        <node concept="3Tqbb2" id="463hhTc_sB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="23XkovWugWj" role="jymVt" />
    <node concept="2YIFZL" id="23XkovWuhk6" role="jymVt">
      <property role="TrG5h" value="escapeXML" />
      <node concept="3clFbS" id="23XkovWuhk9" role="3clF47">
        <node concept="3clFbF" id="23XkovWuhyw" role="3cqZAp">
          <node concept="37vLTI" id="23XkovWuhyx" role="3clFbG">
            <node concept="2OqwBi" id="23XkovWuhyy" role="37vLTx">
              <node concept="37vLTw" id="23XkovWuhyz" role="2Oq$k0">
                <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
              </node>
              <node concept="liA8E" id="23XkovWuhy$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="23XkovWuhy_" role="37wK5m">
                  <property role="Xl_RC" value="\n" />
                </node>
                <node concept="Xl_RD" id="23XkovWuhyA" role="37wK5m">
                  <property role="Xl_RC" value="&amp;#10;" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="23XkovWuhyB" role="37vLTJ">
              <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23XkovWuhyC" role="3cqZAp">
          <node concept="37vLTI" id="23XkovWuhyD" role="3clFbG">
            <node concept="2OqwBi" id="23XkovWuhyE" role="37vLTx">
              <node concept="37vLTw" id="23XkovWuhyF" role="2Oq$k0">
                <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
              </node>
              <node concept="liA8E" id="23XkovWuhyG" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="23XkovWuhyH" role="37wK5m">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
                <node concept="Xl_RD" id="23XkovWuhyI" role="37wK5m">
                  <property role="Xl_RC" value="&amp;#34;" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="23XkovWuhyJ" role="37vLTJ">
              <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23XkovWuhyK" role="3cqZAp">
          <node concept="37vLTI" id="23XkovWuhyL" role="3clFbG">
            <node concept="2OqwBi" id="23XkovWuhyM" role="37vLTx">
              <node concept="37vLTw" id="23XkovWuhyN" role="2Oq$k0">
                <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
              </node>
              <node concept="liA8E" id="23XkovWuhyO" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="23XkovWuhyP" role="37wK5m">
                  <property role="Xl_RC" value="&amp;" />
                </node>
                <node concept="Xl_RD" id="23XkovWuhyQ" role="37wK5m">
                  <property role="Xl_RC" value="&amp;#38;" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="23XkovWuhyR" role="37vLTJ">
              <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23XkovWuhyS" role="3cqZAp">
          <node concept="37vLTI" id="23XkovWuhyT" role="3clFbG">
            <node concept="2OqwBi" id="23XkovWuhyU" role="37vLTx">
              <node concept="37vLTw" id="23XkovWuhyV" role="2Oq$k0">
                <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
              </node>
              <node concept="liA8E" id="23XkovWuhyW" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="23XkovWuhyX" role="37wK5m">
                  <property role="Xl_RC" value="'" />
                </node>
                <node concept="Xl_RD" id="23XkovWuhyY" role="37wK5m">
                  <property role="Xl_RC" value="&amp;#39;" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="23XkovWuhyZ" role="37vLTJ">
              <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23XkovWuhz0" role="3cqZAp">
          <node concept="37vLTI" id="23XkovWuhz1" role="3clFbG">
            <node concept="2OqwBi" id="23XkovWuhz2" role="37vLTx">
              <node concept="37vLTw" id="23XkovWuhz3" role="2Oq$k0">
                <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
              </node>
              <node concept="liA8E" id="23XkovWuhz4" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="23XkovWuhz5" role="37wK5m">
                  <property role="Xl_RC" value="&lt;" />
                </node>
                <node concept="Xl_RD" id="23XkovWuhz6" role="37wK5m">
                  <property role="Xl_RC" value="&amp;#60;" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="23XkovWuhz7" role="37vLTJ">
              <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23XkovWuhz8" role="3cqZAp">
          <node concept="37vLTI" id="23XkovWuhz9" role="3clFbG">
            <node concept="2OqwBi" id="23XkovWuhza" role="37vLTx">
              <node concept="37vLTw" id="23XkovWuhzb" role="2Oq$k0">
                <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
              </node>
              <node concept="liA8E" id="23XkovWuhzc" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                <node concept="Xl_RD" id="23XkovWuhzd" role="37wK5m">
                  <property role="Xl_RC" value="&gt;" />
                </node>
                <node concept="Xl_RD" id="23XkovWuhze" role="37wK5m">
                  <property role="Xl_RC" value="&amp;#62;" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="23XkovWuhzf" role="37vLTJ">
              <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="23XkovWuhzg" role="3cqZAp">
          <node concept="37vLTw" id="23XkovWuhzh" role="3cqZAk">
            <ref role="3cqZAo" node="23XkovWuhvq" resolve="str" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="23XkovWuh97" role="1B3o_S" />
      <node concept="17QB3L" id="23XkovWuhuK" role="3clF45" />
      <node concept="37vLTG" id="23XkovWuhvq" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="23XkovWuhvp" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="463hhTczCg" role="jymVt" />
    <node concept="2tJIrI" id="463hhTczNT" role="jymVt" />
    <node concept="3Tm1VV" id="463hhTc9vW" role="1B3o_S" />
  </node>
</model>

