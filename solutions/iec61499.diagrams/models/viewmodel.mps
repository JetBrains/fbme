<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(iec61499.diagrams.viewmodel)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <use id="96ee7a94-411d-4cf8-9b94-96cad7e52411" name="jetbrains.mps.baseLanguage.jdk7" version="0" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="kty4" ref="r:5e1cd7b8-f328-464d-9e2d-285cc1ce6935(iec61499.diagrams.viewmodel.fbnetwork)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ng" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
    <language id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8">
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.jdk8.structure.DefaultModifier" flags="ng" index="2JFqV2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="1HEL0zVYNFT">
    <property role="TrG5h" value="DiagramComponentView" />
    <node concept="2tJIrI" id="1HEL0zVYPVO" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYR7d" role="jymVt">
      <property role="TrG5h" value="getPorts" />
      <node concept="3clFbS" id="1HEL0zVYR7g" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYR7h" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYNOM" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="16syzq" id="6$FGuy5wn5Z" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wmTC" resolve="P" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_D_3xXsjrS" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGmvkD" role="jymVt">
      <property role="TrG5h" value="getX" />
      <node concept="3clFbS" id="7qPnRGGmvkE" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGGmvkF" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGmvkG" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4ZaR9mNmkU6" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGmvkH" role="jymVt">
      <property role="TrG5h" value="getY" />
      <node concept="3clFbS" id="7qPnRGGmvkI" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGGmvkJ" role="1B3o_S" />
      <node concept="10Oyi0" id="7qPnRGGmvkK" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1CY1mmBgd7N" role="jymVt" />
    <node concept="3clFb_" id="1CY1mmBgdam" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3clFbS" id="1CY1mmBgdap" role="3clF47" />
      <node concept="3Tm1VV" id="1CY1mmBgdaq" role="1B3o_S" />
      <node concept="3cqZAl" id="1CY1mmBgd9z" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="1HEL0zVYNFU" role="1B3o_S" />
    <node concept="16euLQ" id="6$FGuy5wmTC" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$FGuy5wn51" role="3ztrMU">
        <ref role="3uigEE" node="1HEL0zVYNIi" resolve="PortIdentity" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1HEL0zVYNHd">
    <property role="TrG5h" value="DiagramView" />
    <node concept="2tJIrI" id="1HEL0zVYNHJ" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGFlp_P" role="jymVt">
      <property role="TrG5h" value="getComponents" />
      <node concept="3clFbS" id="7qPnRGFlp_Q" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGFlp_R" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGFlp_S" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qPnRGFlpCo" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zVYNFT" resolve="DiagramComponentView" />
          <node concept="16syzq" id="6$FGuy5wr0e" role="11_B2D">
            <ref role="16sUi3" node="6$FGuy5wqW3" resolve="P" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGFlpEg" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGFlp_f" role="jymVt">
      <property role="TrG5h" value="getConnections" />
      <node concept="3clFbS" id="7qPnRGFlp_i" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGFlp_j" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGFlpyH" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qPnRGFlp_6" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zVYNQq" resolve="DiagramConnectionView" />
          <node concept="16syzq" id="6$FGuy5wr2A" role="11_B2D">
            <ref role="16sUi3" node="6$FGuy5wqW3" resolve="P" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVYNHL" role="jymVt" />
    <node concept="3clFb_" id="2_D_3xXuNr4" role="jymVt">
      <property role="TrG5h" value="addConnection" />
      <node concept="3clFbS" id="2_D_3xXuNr5" role="3clF47" />
      <node concept="3Tm1VV" id="2_D_3xXuNr6" role="1B3o_S" />
      <node concept="3cqZAl" id="2_D_3xXuNu$" role="3clF45" />
      <node concept="37vLTG" id="5FPxgJnyBrn" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="3uibUv" id="5FPxgJnyMsK" role="1tU5fm">
          <ref role="3uigEE" node="1HEL0zVYNQq" resolve="DiagramConnectionView" />
          <node concept="16syzq" id="6$FGuy5wr5B" role="11_B2D">
            <ref role="16sUi3" node="6$FGuy5wqW3" resolve="P" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1HEL0zVYNHe" role="1B3o_S" />
    <node concept="16euLQ" id="6$FGuy5wqW3" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$FGuy5wqYf" role="3ztrMU">
        <ref role="3uigEE" node="1HEL0zVYNIi" resolve="PortIdentity" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1HEL0zVYNIi">
    <property role="TrG5h" value="PortIdentity" />
    <node concept="3Tm1VV" id="1HEL0zVYNIj" role="1B3o_S" />
    <node concept="2tJIrI" id="1HEL0zVYR49" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYRaO" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3clFbS" id="1HEL0zVYRaR" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYRaS" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYRaD" role="3clF45">
        <ref role="3uigEE" node="1HEL0zVYNFT" resolve="DiagramComponentView" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGFNmrf" role="jymVt" />
  </node>
  <node concept="3HP615" id="1HEL0zVYNQq">
    <property role="TrG5h" value="DiagramConnectionView" />
    <node concept="2tJIrI" id="1HEL0zVYPYa" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYNSD" role="jymVt">
      <property role="TrG5h" value="getSourcePort" />
      <node concept="3clFbS" id="1HEL0zVYNSG" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYNSH" role="1B3o_S" />
      <node concept="16syzq" id="6$FGuy5wm2a" role="3clF45">
        <ref role="16sUi3" node="6$FGuy5wlZ1" resolve="P" />
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVYNT7" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYNWT" role="jymVt">
      <property role="TrG5h" value="getTargetPort" />
      <node concept="3clFbS" id="1HEL0zVYNWW" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYNWX" role="1B3o_S" />
      <node concept="16syzq" id="6$FGuy5wm3v" role="3clF45">
        <ref role="16sUi3" node="6$FGuy5wlZ1" resolve="P" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5wm46" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5wmch" role="jymVt">
      <property role="TrG5h" value="setSourcePort" />
      <node concept="3clFbS" id="6$FGuy5wmci" role="3clF47" />
      <node concept="3Tm1VV" id="6$FGuy5wmcj" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5wmck" role="3clF45" />
      <node concept="37vLTG" id="6$FGuy5wmcl" role="3clF46">
        <property role="TrG5h" value="sourcePort" />
        <node concept="16syzq" id="6$FGuy5wmcm" role="1tU5fm">
          <ref role="16sUi3" node="6$FGuy5wlZ1" resolve="P" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5wmuY" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5wm6A" role="jymVt">
      <property role="TrG5h" value="setTargetPort" />
      <node concept="3clFbS" id="6$FGuy5wm6D" role="3clF47" />
      <node concept="3Tm1VV" id="6$FGuy5wm6E" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5wm5O" role="3clF45" />
      <node concept="37vLTG" id="6$FGuy5wm99" role="3clF46">
        <property role="TrG5h" value="targetPort" />
        <node concept="16syzq" id="6$FGuy5wm98" role="1tU5fm">
          <ref role="16sUi3" node="6$FGuy5wlZ1" resolve="P" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5w218" role="jymVt" />
    <node concept="3clFb_" id="6$FGuy5w233" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3clFbS" id="6$FGuy5w236" role="3clF47" />
      <node concept="3Tm1VV" id="6$FGuy5w237" role="1B3o_S" />
      <node concept="3cqZAl" id="6$FGuy5w22x" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="1HEL0zVYNQr" role="1B3o_S" />
    <node concept="16euLQ" id="6$FGuy5wlZ1" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$FGuy5wm16" role="3ztrMU">
        <ref role="3uigEE" node="1HEL0zVYNIi" resolve="PortIdentity" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="309fsJ6aYiR">
    <property role="TrG5h" value="Moveable" />
    <node concept="2tJIrI" id="309fsJ6aYjh" role="jymVt" />
    <node concept="3clFb_" id="2_D_3xXsjvt" role="jymVt">
      <property role="TrG5h" value="moveable" />
      <node concept="3clFbS" id="2_D_3xXsjvw" role="3clF47">
        <node concept="3clFbF" id="4ZaR9mNmkLb" role="3cqZAp">
          <node concept="3clFbT" id="4ZaR9mNmkLa" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2_D_3xXsjvx" role="1B3o_S" />
      <node concept="10P_77" id="2_D_3xXsjuf" role="3clF45" />
      <node concept="2JFqV2" id="309fsJ6aYjq" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="4ZaR9mNml9k" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGmvkM" role="jymVt">
      <property role="TrG5h" value="setX" />
      <node concept="3clFbS" id="7qPnRGGmvkN" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGGmvkO" role="1B3o_S" />
      <node concept="3cqZAl" id="7qPnRGGmvkP" role="3clF45" />
      <node concept="37vLTG" id="7qPnRGGmvkQ" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7qPnRGGmvkR" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="309fsJ6aYjr" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="4ZaR9mNmkS$" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGmvkS" role="jymVt">
      <property role="TrG5h" value="setY" />
      <node concept="3clFbS" id="7qPnRGGmvkT" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGGmvkU" role="1B3o_S" />
      <node concept="3cqZAl" id="7qPnRGGmvkV" role="3clF45" />
      <node concept="37vLTG" id="7qPnRGGmvkW" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7qPnRGGmvkX" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="309fsJ6aYjs" role="2frcjj" />
    </node>
    <node concept="3Tm1VV" id="309fsJ6aYiS" role="1B3o_S" />
  </node>
</model>

