<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4533029f-ece5-4846-96d2-78f236591d4d(org.fbme.ide.meta.editor.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpcb" ref="r:00000000-0000-4000-0000-011c89590297(jetbrains.mps.lang.editor.behavior)" />
    <import index="g3qn" ref="r:9a144fca-becd-4385-a025-398ace28742a(mps.lang.meta.editor.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1178870617262" name="jetbrains.mps.lang.typesystem.structure.CoerceExpression" flags="nn" index="1UaxmW">
        <child id="1178870894644" name="pattern" index="1Ub_4A" />
        <child id="1178870894645" name="nodeToCoerce" index="1Ub_4B" />
      </concept>
      <concept id="1178871491133" name="jetbrains.mps.lang.typesystem.structure.CoerceStrongExpression" flags="nn" index="1UdQGJ" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
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
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="3t1pVyvZbUt">
    <ref role="13h7C2" to="g3qn:3t1pVyvZafV" resolve="CellCreateOperationInlineEditor" />
    <node concept="13hLZK" id="3t1pVyvZbWP" role="13h7CW">
      <node concept="3clFbS" id="3t1pVyvZbWQ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3t1pVyvZd31" role="13h7CS">
      <property role="TrG5h" value="getConceptDeclaration" />
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpcb:67EYkym$wx3" resolve="getConceptDeclaration" />
      <node concept="3Tm1VV" id="3t1pVyvZd3d" role="1B3o_S" />
      <node concept="3clFbS" id="3t1pVyvZd3e" role="3clF47">
        <node concept="3cpWs8" id="3t1pVyvZpkE" role="3cqZAp">
          <node concept="3cpWsn" id="3t1pVyvZpkF" role="3cpWs9">
            <property role="TrG5h" value="cellCreateExpression" />
            <node concept="3Tqbb2" id="3t1pVyvZpkD" role="1tU5fm">
              <ref role="ehGHo" to="g3qn:3t1pVyvZ48U" resolve="CellCreateOperation" />
            </node>
            <node concept="1PxgMI" id="3t1pVyvZpkG" role="33vP2m">
              <node concept="2OqwBi" id="3t1pVyvZpkH" role="1m5AlR">
                <node concept="13iPFW" id="3t1pVyvZpkI" role="2Oq$k0" />
                <node concept="1mfA1w" id="3t1pVyvZpkJ" role="2OqNvi" />
              </node>
              <node concept="chp4Y" id="3Sv$YXY1gkq" role="3oSUPX">
                <ref role="cht4Q" to="g3qn:3t1pVyvZ48U" resolve="CellCreateOperation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3t1pVyvZq4p" role="3cqZAp">
          <node concept="3cpWsn" id="3t1pVyvZq4q" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3Tqbb2" id="3t1pVyvZq4m" role="1tU5fm">
              <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
            </node>
            <node concept="1UdQGJ" id="3t1pVyvZq4r" role="33vP2m">
              <node concept="1YaCAy" id="3t1pVyvZq4s" role="1Ub_4A">
                <property role="TrG5h" value="sNodeType" />
                <ref role="1YaFvo" to="tp25:gzTqbfa" resolve="SNodeType" />
              </node>
              <node concept="2OqwBi" id="3t1pVyvZq4t" role="1Ub_4B">
                <node concept="2OqwBi" id="3t1pVyvZq4u" role="2Oq$k0">
                  <node concept="37vLTw" id="3t1pVyvZq4v" role="2Oq$k0">
                    <ref role="3cqZAo" node="3t1pVyvZpkF" resolve="cellCreateExpression" />
                  </node>
                  <node concept="3TrEf2" id="3Sv$YXY1gCa" role="2OqNvi">
                    <ref role="3Tt5mk" to="g3qn:3t1pVyvZafA" resolve="contextNode" />
                  </node>
                </node>
                <node concept="3JvlWi" id="3t1pVyvZq4x" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3t1pVyvZqbj" role="3cqZAp">
          <node concept="2OqwBi" id="3t1pVyvZqkk" role="3cqZAk">
            <node concept="37vLTw" id="3t1pVyvZqfz" role="2Oq$k0">
              <ref role="3cqZAo" node="3t1pVyvZq4q" resolve="type" />
            </node>
            <node concept="3TrEf2" id="3t1pVyvZrkY" role="2OqNvi">
              <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3Sv$YXY1h48" role="3clF45">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
    </node>
  </node>
</model>

