<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6ee40bb-5720-41b4-abe8-a1a14952e769(org.fbme.ide.iec61499.lang.sandbox.ea_example)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang" version="0" />
    <use id="111cc10b-fa1e-4e11-8e9c-37e957c4043f" name="org.fbme.ide.richediting.lang" version="0" />
  </languages>
  <imports>
    <import index="7fvu" ref="r:fa98296a-e4fa-4f84-b917-968f5f770c4b(iec61499.4diac.stdlib)" />
    <import index="csiz" ref="r:12e75b4a-dbbe-461d-befc-80337254ab0f(org.fbme.ide.iec61499.lang.sandbox.standard)" />
  </imports>
  <registry>
    <language id="2046780a-246e-4cb0-90fe-56a2b7d92c54" name="org.fbme.ide.st.lang">
      <concept id="4280485643802103610" name="org.fbme.ide.st.lang.structure.BoolType" flags="ng" index="2zB9wT" />
      <concept id="3684630931968193376" name="org.fbme.ide.st.lang.structure.WStringLiteral" flags="ng" index="2RgKcJ">
        <property id="3684630931968193403" name="value" index="2RgKcO" />
      </concept>
      <concept id="2377145822810428096" name="org.fbme.ide.st.lang.structure.IntType" flags="ng" index="3r5wd7" />
      <concept id="2377145822810436887" name="org.fbme.ide.st.lang.structure.TimeType" flags="ng" index="3r5yig" />
      <concept id="4046047820616800572" name="org.fbme.ide.st.lang.structure.TimeLiteral" flags="ng" index="1GfuCM">
        <property id="4046047820616800574" name="value" index="1GfuCK" />
      </concept>
      <concept id="2693352324616754510" name="org.fbme.ide.st.lang.structure.StringType" flags="ng" index="1QCq3_" />
      <concept id="2693352324616822500" name="org.fbme.ide.st.lang.structure.StringLiteral" flags="ng" index="1QCEHf">
        <property id="2693352324616822501" name="value" index="1QCEHe" />
      </concept>
    </language>
    <language id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang">
      <concept id="4304617121958142676" name="org.fbme.ide.iec61499.lang.structure.TwoAngleConnectionPath" flags="ng" index="bR32z">
        <property id="4304617121958142702" name="dx" index="bR32p" />
      </concept>
      <concept id="4304617121958142617" name="org.fbme.ide.iec61499.lang.structure.StraightConnectionPath" flags="ng" index="bR33I" />
      <concept id="4304617121958159005" name="org.fbme.ide.iec61499.lang.structure.FourAngleConncetionPath" flags="ng" index="bR73E">
        <property id="4304617121958159011" name="dx2" index="bR73k" />
        <property id="4304617121958159008" name="dy" index="bR73n" />
        <property id="4304617121958159006" name="dx1" index="bR73D" />
      </concept>
      <concept id="5267258938134533910" name="org.fbme.ide.iec61499.lang.structure.AdapterNetworkDeclaration" flags="ng" index="2iASse">
        <child id="7561669834935925692" name="plugBlock" index="2GP0$q" />
        <child id="7561669834935925697" name="socketBlock" index="2GP0_B" />
      </concept>
      <concept id="4638275915577578977" name="org.fbme.ide.iec61499.lang.structure.InternalSocketDeclaration" flags="ng" index="2u7yaZ" />
      <concept id="2089083396006376419" name="org.fbme.ide.iec61499.lang.structure.ExtendedAdapterTypeDeclaration" flags="ng" index="2xRpA$">
        <child id="1881408560477943873" name="rightFbNetwork" index="6HEdv" />
        <child id="926353119522521423" name="internalFbPlugInterface" index="tr10e" />
        <child id="573009586004590360" name="internalNetworksInterface" index="2Xgs8Q" />
        <child id="6739364709441046431" name="outputRouter" index="13zCZw" />
        <child id="6739364709441046429" name="inputRouter" index="13zCZy" />
        <child id="7837436383331437378" name="internalFbSocketInterface" index="3mXm6v" />
        <child id="7837436383331490786" name="leftFbNetwork" index="3mXz4Z" />
      </concept>
      <concept id="4280485643802119831" name="org.fbme.ide.iec61499.lang.structure.StateDeclaration" flags="ng" index="2zAPAk">
        <child id="6110000670794348100" name="position" index="2WOQdS" />
      </concept>
      <concept id="4280485643801969830" name="org.fbme.ide.iec61499.lang.structure.EventDeclaration" flags="ng" index="2zBDe_">
        <child id="4280485643801969855" name="associatedVariables" index="2zBDeW" />
      </concept>
      <concept id="4280485643801969832" name="org.fbme.ide.iec61499.lang.structure.ParameterDeclaration" flags="ng" index="2zBDeF">
        <child id="4280485643802059164" name="type" index="2zB7qv" />
      </concept>
      <concept id="4280485643801969849" name="org.fbme.ide.iec61499.lang.structure.EventAssociation" flags="ng" index="2zBDeU">
        <reference id="4280485643801969850" name="declaration" index="2zBDeT" />
      </concept>
      <concept id="4280485643801969857" name="org.fbme.ide.iec61499.lang.structure.BasicFBTypeDeclaration" flags="ng" index="2zBDf2">
        <child id="4280485643802119997" name="states" index="2zAPwY" />
      </concept>
      <concept id="7561669834935924547" name="org.fbme.ide.iec61499.lang.structure.InternalPlugDeclaration" flags="ng" index="2GP0n_" />
      <concept id="2250044605250911586" name="org.fbme.ide.iec61499.lang.structure.DeviceDeclaration" flags="ng" index="2JYBV7">
        <reference id="2250044605250911589" name="type" index="2JYBV0" />
        <child id="2250044605250911600" name="resources" index="2JYBVl" />
        <child id="278175820329991923" name="parameters" index="180RAs" />
      </concept>
      <concept id="5481506291238376594" name="org.fbme.ide.iec61499.lang.structure.Connection" flags="ng" index="2RhMLZ">
        <child id="4304617121958732207" name="path" index="bPNfo" />
        <child id="5481506291238376648" name="destination" index="2RhMK_" />
        <child id="5481506291238376645" name="source" index="2RhMKC" />
      </concept>
      <concept id="3018159903918042962" name="org.fbme.ide.iec61499.lang.structure.DeclarationWithInterface" flags="ng" index="XJwsz">
        <child id="4280485643801969827" name="outputEvents" index="2zBDew" />
        <child id="4280485643801969825" name="inputEvents" index="2zBDey" />
        <child id="4280485643801969834" name="inputVariables" index="2zBDeD" />
        <child id="4280485643801969838" name="outputVariables" index="2zBDeH" />
      </concept>
      <concept id="3018159903918047621" name="org.fbme.ide.iec61499.lang.structure.AdapterTypeDeclaration" flags="ng" index="XJABO" />
      <concept id="6049904230683977455" name="org.fbme.ide.iec61499.lang.structure.Position" flags="ng" index="10YbkR">
        <property id="6049904230683977456" name="x" index="10YbkC" />
        <property id="6049904230683977458" name="y" index="10YbkE" />
      </concept>
      <concept id="6279537560535821563" name="org.fbme.ide.iec61499.lang.structure.SegmentDeclaration" flags="ng" index="16k8Fv">
        <reference id="6279537560535821566" name="type" index="16k8Fq" />
      </concept>
      <concept id="6279537560537435403" name="org.fbme.ide.iec61499.lang.structure.Link" flags="ng" index="16EYGJ">
        <reference id="6279537560537435409" name="segment" index="16EYGP" />
        <child id="6279537560537435404" name="resource" index="16EYGC" />
      </concept>
      <concept id="7837436383332404522" name="org.fbme.ide.iec61499.lang.structure.DeclarationWithInterfaceSection" flags="ng" index="3mx2vR" />
      <concept id="3589220129093680090" name="org.fbme.ide.iec61499.lang.structure.SocketDeclaration" flags="ng" index="3Iw0dE">
        <reference id="3589220129093680093" name="adapterType" index="3Iw0dH" />
        <child id="7816599728425115160" name="position" index="2oiVCh" />
      </concept>
      <concept id="3589220129094132068" name="org.fbme.ide.iec61499.lang.structure.AdapterConnection" flags="ng" index="3IAhBk" />
      <concept id="3589220129094133401" name="org.fbme.ide.iec61499.lang.structure.ComponentDataSource" flags="ng" index="3IAhSD" />
      <concept id="3589220129094143959" name="org.fbme.ide.iec61499.lang.structure.ComponentDataDestination" flags="ng" index="3IAvtB" />
      <concept id="3589220129093721141" name="org.fbme.ide.iec61499.lang.structure.PlugDeclaration" flags="ng" index="3IBQi5">
        <reference id="3589220129093721144" name="adapterType" index="3IBQi8" />
        <child id="7816599728425079530" name="position" index="2oiNrz" />
      </concept>
      <concept id="3588174944504668265" name="org.fbme.ide.iec61499.lang.structure.InternalAdapterFBDeclaration" flags="ng" index="3ISU9K">
        <child id="3588174944504668271" name="position" index="3ISU9Q" />
      </concept>
      <concept id="7558503085816725073" name="org.fbme.ide.iec61499.lang.structure.ComponentEndpoint" flags="ng" index="3JaoNj">
        <reference id="967875482185482523" name="component" index="1N5Pi4" />
      </concept>
      <concept id="554302972924733408" name="org.fbme.ide.iec61499.lang.structure.SystemDeclaration" flags="ng" index="3KFA1X">
        <child id="6279537560535846736" name="segments" index="16kM_O" />
        <child id="6279537560538025804" name="links" index="16GI_C" />
        <child id="554302972924735196" name="devices" index="3KFA_1" />
        <child id="554302972924735194" name="applications" index="3KFA_7" />
        <child id="554302972929127418" name="mappings" index="3KORhB" />
      </concept>
      <concept id="554302972924734114" name="org.fbme.ide.iec61499.lang.structure.ApplicationDeclaration" flags="ng" index="3KFAOZ" />
      <concept id="554302972929660960" name="org.fbme.ide.iec61499.lang.structure.ResourceReference" flags="ng" index="3KQLYX">
        <reference id="554302972929660961" name="device" index="3KQLYW" />
        <reference id="554302972929660963" name="resource" index="3KQLYY" />
      </concept>
      <concept id="554302972928529669" name="org.fbme.ide.iec61499.lang.structure.ApplicationFunctionBlockReference" flags="ng" index="3KU5ao">
        <reference id="554302972928570185" name="functionBlock" index="3KUfjk" />
        <child id="554302972928570183" name="application" index="3KUfjq" />
      </concept>
      <concept id="554302972928529668" name="org.fbme.ide.iec61499.lang.structure.Mapping" flags="ng" index="3KU5ap">
        <child id="554302972928570261" name="resource" index="3KUfg8" />
        <child id="554302972928570259" name="instance" index="3KUfge" />
      </concept>
      <concept id="554302972928529671" name="org.fbme.ide.iec61499.lang.structure.SystemApplicationReference" flags="ng" index="3KU5aq">
        <reference id="554302972928529672" name="application" index="3KU5al" />
      </concept>
      <concept id="554302972928570264" name="org.fbme.ide.iec61499.lang.structure.ResourceFunctionBlockReference" flags="ng" index="3KUfg5">
        <reference id="554302972930397634" name="functionBlock" index="3KLd9v" />
        <child id="554302972930397632" name="resource" index="3KLd9t" />
      </concept>
      <concept id="554302972921896510" name="org.fbme.ide.iec61499.lang.structure.DeclarationWithInterfaceAndAdapters" flags="ng" index="3LgDAz">
        <child id="8167217573769997767" name="plugs" index="3YHajr" />
        <child id="8167217573769997794" name="sockets" index="3YHajY" />
      </concept>
      <concept id="2693352324629967306" name="org.fbme.ide.iec61499.lang.structure.ParameterAssignment" flags="ng" index="1LUwhx">
        <reference id="2693352324629967307" name="decl" index="1LUwhw" />
        <child id="2693352324629967311" name="value" index="1LUwh$" />
      </concept>
      <concept id="2693352324629965912" name="org.fbme.ide.iec61499.lang.structure.ResourceDeclaration" flags="ng" index="1LUxBN">
        <reference id="2693352324629965913" name="type" index="1LUxBM" />
      </concept>
      <concept id="967875482185482517" name="org.fbme.ide.iec61499.lang.structure.ComponentEventEndpoint" flags="ng" index="1N5Pia">
        <reference id="967875482185482524" name="declaration" index="1N5Pi3" />
      </concept>
      <concept id="967875482185482492" name="org.fbme.ide.iec61499.lang.structure.ComponentDataEndpoint" flags="ng" index="1N5Plz">
        <reference id="967875482185482484" name="declaration" index="1N5PlF" />
      </concept>
      <concept id="967875482185433878" name="org.fbme.ide.iec61499.lang.structure.DataConnection" flags="ng" index="1N5Tq9" />
      <concept id="967875482185433869" name="org.fbme.ide.iec61499.lang.structure.EventConnection" flags="ng" index="1N5Tqi" />
      <concept id="967875482185433822" name="org.fbme.ide.iec61499.lang.structure.FunctionBlockDeclaration" flags="ng" index="1N5Tt1">
        <reference id="967875482185433823" name="type" index="1N5Tt0" />
        <child id="4304617121954520353" name="position" index="b_cXm" />
        <child id="6585350836361975776" name="parameters" index="2LNCDh" />
      </concept>
      <concept id="967875482185433821" name="org.fbme.ide.iec61499.lang.structure.CompositeFBTypeDeclaration" flags="ng" index="1N5Tt2" />
      <concept id="2693352324618654708" name="org.fbme.ide.iec61499.lang.structure.IWithFBNetwork" flags="ng" index="1QJEpv">
        <child id="3589220129094132063" name="adapterConnections" index="3IAhBJ" />
        <child id="967875482185482537" name="eventConnections" index="1N5PiQ" />
        <child id="967875482185482532" name="dataConnections" index="1N5PiV" />
        <child id="967875482185482529" name="functionBlocks" index="1N5PiY" />
      </concept>
      <concept id="8167217573768971186" name="org.fbme.ide.iec61499.lang.structure.ComponentEventDestination" flags="ng" index="3Yx0EI" />
      <concept id="8167217573768433448" name="org.fbme.ide.iec61499.lang.structure.ComponentEventSource" flags="ng" index="3YB4oO" />
      <concept id="8167217573767399865" name="org.fbme.ide.iec61499.lang.structure.FBPlugReference" flags="ng" index="3YV02_">
        <reference id="8167217573767399870" name="component" index="3YV02y" />
        <reference id="8167217573767399872" name="declaration" index="3YV03s" />
      </concept>
      <concept id="8167217573767369651" name="org.fbme.ide.iec61499.lang.structure.FBSocketReference" flags="ng" index="3YV9EJ">
        <reference id="8167217573767370701" name="declaration" index="3YV9Vh" />
        <reference id="8167217573767370699" name="component" index="3YV9Vn" />
      </concept>
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
  <node concept="3KFA1X" id="26BMqmV_xHa">
    <property role="TrG5h" value="BlinkyTest" />
    <node concept="16EYGJ" id="26BMqmV_xHb" role="16GI_C">
      <ref role="16EYGP" node="26BMqmV_xHc" resolve="Ethernet1" />
      <node concept="3KQLYX" id="26BMqmV_xHk" role="16EYGC">
        <ref role="3KQLYW" node="26BMqmV_xHi" resolve="Testee" />
      </node>
    </node>
    <node concept="16k8Fv" id="26BMqmV_xHc" role="16kM_O">
      <property role="TrG5h" value="Ethernet1" />
      <ref role="16k8Fq" to="7fvu:~Ethernet" resolve="Ethernet" />
    </node>
    <node concept="3KU5ap" id="26BMqmV_xHd" role="3KORhB">
      <node concept="3KU5ao" id="26BMqmV_xHl" role="3KUfge">
        <ref role="3KUfjk" node="26BMqmV_xHB" resolve="E_CYCLE" />
        <node concept="3KU5aq" id="26BMqmV_xHH" role="3KUfjq">
          <ref role="3KU5al" node="26BMqmV_xHj" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="26BMqmV_xHm" role="3KUfg8">
        <ref role="3KLd9v" node="26BMqmV_xIh" resolve="E_CYCLE" />
        <node concept="3KQLYX" id="26BMqmV_xHI" role="3KLd9t">
          <ref role="3KQLYW" node="26BMqmV_xHi" resolve="Testee" />
          <ref role="3KQLYY" node="26BMqmV_xHw" resolve="Blinky_RES2" />
        </node>
      </node>
    </node>
    <node concept="3KU5ap" id="26BMqmV_xHe" role="3KORhB">
      <node concept="3KU5ao" id="26BMqmV_xHn" role="3KUfge">
        <ref role="3KUfjk" node="26BMqmV_xHC" resolve="E_SR" />
        <node concept="3KU5aq" id="26BMqmV_xHJ" role="3KUfjq">
          <ref role="3KU5al" node="26BMqmV_xHj" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="26BMqmV_xHo" role="3KUfg8">
        <ref role="3KLd9v" node="26BMqmV_xIi" resolve="E_SR" />
        <node concept="3KQLYX" id="26BMqmV_xHK" role="3KLd9t">
          <ref role="3KQLYW" node="26BMqmV_xHi" resolve="Testee" />
          <ref role="3KQLYY" node="26BMqmV_xHw" resolve="Blinky_RES2" />
        </node>
      </node>
    </node>
    <node concept="3KU5ap" id="26BMqmV_xHf" role="3KORhB">
      <node concept="3KU5ao" id="26BMqmV_xHp" role="3KUfge">
        <ref role="3KUfjk" node="26BMqmV_xHD" resolve="E_SWITCH" />
        <node concept="3KU5aq" id="26BMqmV_xHL" role="3KUfjq">
          <ref role="3KU5al" node="26BMqmV_xHj" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="26BMqmV_xHq" role="3KUfg8">
        <ref role="3KLd9v" node="26BMqmV_xIj" resolve="E_SWITCH" />
        <node concept="3KQLYX" id="26BMqmV_xHM" role="3KLd9t">
          <ref role="3KQLYW" node="26BMqmV_xHi" resolve="Testee" />
          <ref role="3KQLYY" node="26BMqmV_xHw" resolve="Blinky_RES2" />
        </node>
      </node>
    </node>
    <node concept="3KU5ap" id="26BMqmV_xHg" role="3KORhB">
      <node concept="3KU5ao" id="26BMqmV_xHr" role="3KUfge">
        <ref role="3KUfjk" node="26BMqmV_xHF" resolve="BaseBlock1" />
        <node concept="3KU5aq" id="26BMqmV_xHN" role="3KUfjq">
          <ref role="3KU5al" node="26BMqmV_xHj" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="26BMqmV_xHs" role="3KUfg8">
        <ref role="3KLd9v" node="26BMqmV_xI1" resolve="BaseBlock1" />
        <node concept="3KQLYX" id="26BMqmV_xHO" role="3KLd9t">
          <ref role="3KQLYW" node="26BMqmV_xHi" resolve="Testee" />
          <ref role="3KQLYY" node="26BMqmV_xHv" resolve="Blinky_RES1" />
        </node>
      </node>
    </node>
    <node concept="3KU5ap" id="26BMqmV_xHh" role="3KORhB">
      <node concept="3KU5ao" id="26BMqmV_xHt" role="3KUfge">
        <ref role="3KUfjk" node="26BMqmV_xHG" resolve="BaseBlock2" />
        <node concept="3KU5aq" id="26BMqmV_xHP" role="3KUfjq">
          <ref role="3KU5al" node="26BMqmV_xHj" resolve="BlinkTestApp" />
        </node>
      </node>
      <node concept="3KUfg5" id="26BMqmV_xHu" role="3KUfg8">
        <ref role="3KLd9v" node="26BMqmV_xIm" resolve="BaseBlock2" />
        <node concept="3KQLYX" id="26BMqmV_xHQ" role="3KLd9t">
          <ref role="3KQLYW" node="26BMqmV_xHi" resolve="Testee" />
          <ref role="3KQLYY" node="26BMqmV_xHw" resolve="Blinky_RES2" />
        </node>
      </node>
    </node>
    <node concept="2JYBV7" id="26BMqmV_xHi" role="3KFA_1">
      <property role="TrG5h" value="Testee" />
      <ref role="2JYBV0" to="7fvu:~FORTE_PC" resolve="FORTE_PC" />
      <node concept="1LUxBN" id="26BMqmV_xHv" role="2JYBVl">
        <property role="TrG5h" value="Blinky_RES1" />
        <ref role="1LUxBM" to="7fvu:~EMB_RES" resolve="EMB_RES" />
        <node concept="1N5Tqi" id="26BMqmV_xHS" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xIX" role="2RhMKC">
            <ref role="1N5Pi4" node="26BMqmV_xHW" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.EO" resolve="EO" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xIY" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xHY" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EI" resolve="EI" />
          </node>
          <node concept="bR32z" id="5nQyOCHcQU4" role="bPNfo">
            <property role="bR32p" value="77.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="26BMqmV_xHT" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xJ0" role="2RhMKC">
            <ref role="1N5Pi4" node="26BMqmV_xHY" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO0" resolve="EO0" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xJ1" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xHX" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:~E_SR.S" resolve="S" />
          </node>
          <node concept="bR32z" id="5nQyOCHcQUh" role="bPNfo">
            <property role="bR32p" value="97.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="26BMqmV_xHU" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xJ3" role="2RhMKC">
            <ref role="1N5Pi4" node="26BMqmV_xHY" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO1" resolve="EO1" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xJ4" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xHX" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:~E_SR.R" resolve="R" />
          </node>
          <node concept="bR32z" id="5nQyOCHcQUj" role="bPNfo">
            <property role="bR32p" value="80.0" />
          </node>
        </node>
        <node concept="1N5Tq9" id="26BMqmV_xHV" role="1N5PiV">
          <node concept="3IAhSD" id="26BMqmV_xJ6" role="2RhMKC">
            <ref role="1N5Pi4" node="26BMqmV_xHX" resolve="E_SR" />
            <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
          </node>
          <node concept="3IAvtB" id="26BMqmV_xJ7" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xHY" resolve="E_SWITCH" />
            <ref role="1N5PlF" to="7fvu:~E_SWITCH.G" resolve="G" />
          </node>
          <node concept="bR73E" id="5nQyOCHcQTO" role="bPNfo">
            <property role="bR73D" value="73.0" />
            <property role="bR73n" value="56.0" />
            <property role="bR73k" value="170.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="26BMqmV_xHW" role="1N5PiY">
          <property role="TrG5h" value="E_CYCLE" />
          <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
          <node concept="10YbkR" id="26BMqmV_xJ9" role="b_cXm">
            <property role="10YbkC" value="683.0" />
            <property role="10YbkE" value="6.0" />
          </node>
          <node concept="1LUwhx" id="26BMqmV_xJa" role="2LNCDh">
            <ref role="1LUwhw" to="7fvu:~E_CYCLE.DT" resolve="DT" />
            <node concept="1GfuCM" id="26BMqmV_xKr" role="1LUwh$">
              <property role="1GfuCK" value="1000ms" />
            </node>
          </node>
        </node>
        <node concept="1N5Tt1" id="26BMqmV_xHX" role="1N5PiY">
          <property role="TrG5h" value="E_SR" />
          <ref role="1N5Tt0" to="7fvu:~E_SR" resolve="E_SR" />
          <node concept="10YbkR" id="26BMqmV_xJb" role="b_cXm">
            <property role="10YbkC" value="1649.0" />
            <property role="10YbkE" value="49.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="26BMqmV_xHY" role="1N5PiY">
          <property role="TrG5h" value="E_SWITCH" />
          <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
          <node concept="10YbkR" id="26BMqmV_xJc" role="b_cXm">
            <property role="10YbkC" value="1180.0" />
            <property role="10YbkE" value="-3.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="26BMqmV_xHZ" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xJd" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.COLD" resolve="COLD" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xJe" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xHW" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR32z" id="5nQyOCHcQTI" role="bPNfo">
            <property role="bR32p" value="26.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="26BMqmV_xI0" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xJg" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.WARM" resolve="WARM" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xJh" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xHW" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR32z" id="5nQyOCHcQTJ" role="bPNfo">
            <property role="bR32p" value="143.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="26BMqmV_xI1" role="1N5PiY">
          <property role="TrG5h" value="BaseBlock1" />
          <ref role="1N5Tt0" node="26BMqmV_xTt" resolve="BaseBlock" />
          <node concept="10YbkR" id="26BMqmV_xJj" role="b_cXm">
            <property role="10YbkC" value="146.0" />
            <property role="10YbkE" value="1003.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="~PUBLISH_2" role="1N5PiY">
          <property role="TrG5h" value="Publish_Left_EA_0" />
          <ref role="1N5Tt0" to="7fvu:~PUBLISH_2" resolve="PUBLISH_2" />
          <node concept="10YbkR" id="7Mtzx1Cxn_3" role="b_cXm">
            <property role="10YbkC" value="1739.0" />
            <property role="10YbkE" value="563.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="~SUBSCRIBE_1" role="1N5PiY">
          <property role="TrG5h" value="Subscribe_Left_EA_0" />
          <ref role="1N5Tt0" to="7fvu:~SUBSCRIBE_1" resolve="SUBSCRIBE_1" />
          <node concept="10YbkR" id="7Mtzx1Cxn_g" role="b_cXm">
            <property role="10YbkC" value="186.0" />
            <property role="10YbkE" value="556.0" />
          </node>
        </node>
      </node>
      <node concept="1LUxBN" id="26BMqmV_xHw" role="2JYBVl">
        <property role="TrG5h" value="Blinky_RES2" />
        <ref role="1LUxBM" to="7fvu:~EMB_RES" resolve="EMB_RES" />
        <node concept="1N5Tqi" id="26BMqmV_xId" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xJH" role="2RhMKC">
            <ref role="1N5Pi4" node="26BMqmV_xIh" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.EO" resolve="EO" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xJI" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xIj" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EI" resolve="EI" />
          </node>
          <node concept="bR32z" id="26BMqmV_xJJ" role="bPNfo">
            <property role="bR32p" value="123.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="26BMqmV_xIe" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xJK" role="2RhMKC">
            <ref role="1N5Pi4" node="26BMqmV_xIj" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO0" resolve="EO0" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xJL" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xIi" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:~E_SR.S" resolve="S" />
          </node>
          <node concept="bR33I" id="26BMqmV_xJM" role="bPNfo" />
        </node>
        <node concept="1N5Tqi" id="26BMqmV_xIf" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xJN" role="2RhMKC">
            <ref role="1N5Pi4" node="26BMqmV_xIj" resolve="E_SWITCH" />
            <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO1" resolve="EO1" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xJO" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xIi" resolve="E_SR" />
            <ref role="1N5Pi3" to="7fvu:~E_SR.R" resolve="R" />
          </node>
          <node concept="bR33I" id="26BMqmV_xJP" role="bPNfo" />
        </node>
        <node concept="1N5Tq9" id="26BMqmV_xIg" role="1N5PiV">
          <node concept="3IAhSD" id="26BMqmV_xJQ" role="2RhMKC">
            <ref role="1N5Pi4" node="26BMqmV_xIi" resolve="E_SR" />
            <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
          </node>
          <node concept="3IAvtB" id="26BMqmV_xJR" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xIj" resolve="E_SWITCH" />
            <ref role="1N5PlF" to="7fvu:~E_SWITCH.G" resolve="G" />
          </node>
          <node concept="bR73E" id="26BMqmV_xJS" role="bPNfo">
            <property role="bR73D" value="74.0" />
            <property role="bR73n" value="57.0" />
            <property role="bR73k" value="173.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="26BMqmV_xIh" role="1N5PiY">
          <property role="TrG5h" value="E_CYCLE" />
          <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
          <node concept="10YbkR" id="26BMqmV_xJT" role="b_cXm">
            <property role="10YbkC" value="886.0" />
            <property role="10YbkE" value="3.0" />
          </node>
          <node concept="1LUwhx" id="26BMqmV_xJU" role="2LNCDh">
            <ref role="1LUwhw" to="7fvu:~E_CYCLE.DT" resolve="DT" />
            <node concept="1GfuCM" id="26BMqmV_xKs" role="1LUwh$">
              <property role="1GfuCK" value="1000ms" />
            </node>
          </node>
        </node>
        <node concept="1N5Tt1" id="26BMqmV_xIi" role="1N5PiY">
          <property role="TrG5h" value="E_SR" />
          <ref role="1N5Tt0" to="7fvu:~E_SR" resolve="E_SR" />
          <node concept="10YbkR" id="26BMqmV_xJV" role="b_cXm">
            <property role="10YbkC" value="2107.0" />
            <property role="10YbkE" value="50.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="26BMqmV_xIj" role="1N5PiY">
          <property role="TrG5h" value="E_SWITCH" />
          <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
          <node concept="10YbkR" id="26BMqmV_xJW" role="b_cXm">
            <property role="10YbkC" value="1463.0" />
            <property role="10YbkE" value="49.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="26BMqmV_xIk" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xJX" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.COLD" resolve="COLD" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xJY" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xIh" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR32z" id="26BMqmV_xJZ" role="bPNfo">
            <property role="bR32p" value="59.0" />
          </node>
        </node>
        <node concept="1N5Tqi" id="26BMqmV_xIl" role="1N5PiQ">
          <node concept="3YB4oO" id="26BMqmV_xK0" role="2RhMKC">
            <ref role="1N5Pi4" to="7fvu:~EMB_RES.START" resolve="START" />
            <ref role="1N5Pi3" to="7fvu:~E_RESTART.WARM" resolve="WARM" />
          </node>
          <node concept="3Yx0EI" id="26BMqmV_xK1" role="2RhMK_">
            <ref role="1N5Pi4" node="26BMqmV_xIh" resolve="E_CYCLE" />
            <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
          </node>
          <node concept="bR32z" id="26BMqmV_xK2" role="bPNfo">
            <property role="bR32p" value="240.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="26BMqmV_xIm" role="1N5PiY">
          <property role="TrG5h" value="BaseBlock2" />
          <ref role="1N5Tt0" node="26BMqmV_xTt" resolve="BaseBlock" />
          <node concept="10YbkR" id="26BMqmV_xK3" role="b_cXm">
            <property role="10YbkC" value="1909.0" />
            <property role="10YbkE" value="1186.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="~PUBLISH_1" role="1N5PiY">
          <property role="TrG5h" value="Publish_Right_EA_0" />
          <ref role="1N5Tt0" to="7fvu:~PUBLISH_1" resolve="PUBLISH_1" />
          <node concept="10YbkR" id="7Mtzx1CxnAb" role="b_cXm">
            <property role="10YbkC" value="2140.0" />
            <property role="10YbkE" value="746.0" />
          </node>
        </node>
        <node concept="1N5Tt1" id="~SUBSCRIBE_2" role="1N5PiY">
          <property role="TrG5h" value="Subscribe_Right_EA_0" />
          <ref role="1N5Tt0" to="7fvu:~SUBSCRIBE_2" resolve="SUBSCRIBE_2" />
          <node concept="10YbkR" id="7Mtzx1CxnAk" role="b_cXm">
            <property role="10YbkC" value="583.0" />
            <property role="10YbkE" value="746.0" />
          </node>
        </node>
      </node>
      <node concept="1LUwhx" id="26BMqmV_xHx" role="180RAs">
        <ref role="1LUwhw" to="7fvu:~FORTE_PC.MGR_ID" resolve="MGR_ID" />
        <node concept="1QCEHf" id="26BMqmV_xIx" role="1LUwh$">
          <property role="1QCEHe" value="localhost:61499" />
        </node>
      </node>
    </node>
    <node concept="3KFAOZ" id="26BMqmV_xHj" role="3KFA_7">
      <property role="TrG5h" value="BlinkTestApp" />
      <node concept="3IAhBk" id="26BMqmV_xHy" role="3IAhBJ">
        <node concept="3YV02_" id="26BMqmV_xIy" role="2RhMKC">
          <ref role="3YV02y" node="26BMqmV_xHF" resolve="BaseBlock1" />
          <ref role="3YV03s" node="26BMqmV_xTu" resolve="plug" />
        </node>
        <node concept="3YV9EJ" id="26BMqmV_xIz" role="2RhMK_">
          <ref role="3YV9Vn" node="26BMqmV_xHG" resolve="BaseBlock2" />
          <ref role="3YV9Vh" node="26BMqmV_xTv" resolve="socket" />
        </node>
        <node concept="bR33I" id="26BMqmV_xI$" role="bPNfo" />
      </node>
      <node concept="1N5Tq9" id="26BMqmV_xHz" role="1N5PiV">
        <node concept="3IAhSD" id="26BMqmV_xI_" role="2RhMKC">
          <ref role="1N5Pi4" node="26BMqmV_xHC" resolve="E_SR" />
          <ref role="1N5PlF" to="7fvu:~E_SR.Q" resolve="Q" />
        </node>
        <node concept="3IAvtB" id="26BMqmV_xIA" role="2RhMK_">
          <ref role="1N5Pi4" node="26BMqmV_xHD" resolve="E_SWITCH" />
          <ref role="1N5PlF" to="7fvu:~E_SWITCH.G" resolve="G" />
        </node>
        <node concept="bR73E" id="26BMqmV_xIB" role="bPNfo">
          <property role="bR73D" value="70.0" />
          <property role="bR73n" value="77.0" />
          <property role="bR73k" value="70.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="26BMqmV_xH$" role="1N5PiQ">
        <node concept="3YB4oO" id="26BMqmV_xIC" role="2RhMKC">
          <ref role="1N5Pi4" node="26BMqmV_xHB" resolve="E_CYCLE" />
          <ref role="1N5Pi3" to="7fvu:~E_CYCLE.EO" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="26BMqmV_xID" role="2RhMK_">
          <ref role="1N5Pi4" node="26BMqmV_xHD" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EI" resolve="EI" />
        </node>
        <node concept="bR73E" id="26BMqmV_xIE" role="bPNfo">
          <property role="bR73D" value="119.0" />
          <property role="bR73n" value="527.0" />
          <property role="bR73k" value="73.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="26BMqmV_xH_" role="1N5PiQ">
        <node concept="3Yx0EI" id="26BMqmV_xIF" role="2RhMK_">
          <ref role="1N5Pi4" node="26BMqmV_xHC" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:~E_SR.R" resolve="R" />
        </node>
        <node concept="3YB4oO" id="26BMqmV_xIG" role="2RhMKC">
          <ref role="1N5Pi4" node="26BMqmV_xHD" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO1" resolve="EO1" />
        </node>
        <node concept="bR32z" id="26BMqmV_xIH" role="bPNfo">
          <property role="bR32p" value="136.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="26BMqmV_xHA" role="1N5PiQ">
        <node concept="3Yx0EI" id="26BMqmV_xII" role="2RhMK_">
          <ref role="1N5Pi4" node="26BMqmV_xHC" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:~E_SR.S" resolve="S" />
        </node>
        <node concept="3YB4oO" id="26BMqmV_xIJ" role="2RhMKC">
          <ref role="1N5Pi4" node="26BMqmV_xHD" resolve="E_SWITCH" />
          <ref role="1N5Pi3" to="7fvu:~E_SWITCH.EO0" resolve="EO0" />
        </node>
        <node concept="bR32z" id="26BMqmV_xIK" role="bPNfo">
          <property role="bR32p" value="136.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="26BMqmV_xHB" role="1N5PiY">
        <property role="TrG5h" value="E_CYCLE" />
        <ref role="1N5Tt0" to="7fvu:~E_CYCLE" resolve="E_CYCLE" />
        <node concept="10YbkR" id="26BMqmV_xIL" role="b_cXm">
          <property role="10YbkC" value="1213.0" />
          <property role="10YbkE" value="0.0" />
        </node>
        <node concept="1LUwhx" id="26BMqmV_xIM" role="2LNCDh">
          <ref role="1LUwhw" to="7fvu:~E_CYCLE.DT" resolve="DT" />
          <node concept="1GfuCM" id="26BMqmV_xKq" role="1LUwh$">
            <property role="1GfuCK" value="1000ms" />
          </node>
        </node>
      </node>
      <node concept="1N5Tt1" id="26BMqmV_xHC" role="1N5PiY">
        <property role="TrG5h" value="E_SR" />
        <ref role="1N5Tt0" to="7fvu:~E_SR" resolve="E_SR" />
        <node concept="10YbkR" id="26BMqmV_xIN" role="b_cXm">
          <property role="10YbkC" value="646.0" />
          <property role="10YbkE" value="243.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="26BMqmV_xHD" role="1N5PiY">
        <property role="TrG5h" value="E_SWITCH" />
        <ref role="1N5Tt0" to="7fvu:~E_SWITCH" resolve="E_SWITCH" />
        <node concept="10YbkR" id="26BMqmV_xIO" role="b_cXm">
          <property role="10YbkC" value="128.0" />
          <property role="10YbkE" value="265.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="26BMqmV_xHE" role="1N5PiQ">
        <node concept="3YB4oO" id="26BMqmV_xIP" role="2RhMKC">
          <ref role="1N5Pi4" node="26BMqmV_xHC" resolve="E_SR" />
          <ref role="1N5Pi3" to="7fvu:~E_SR.EO" resolve="EO" />
        </node>
        <node concept="3Yx0EI" id="26BMqmV_xIQ" role="2RhMK_">
          <ref role="1N5Pi4" node="26BMqmV_xHB" resolve="E_CYCLE" />
          <ref role="1N5Pi3" to="7fvu:~E_CYCLE.START" resolve="START" />
        </node>
        <node concept="bR32z" id="26BMqmV_xIR" role="bPNfo">
          <property role="bR32p" value="50.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="26BMqmV_xHF" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock1" />
        <ref role="1N5Tt0" node="26BMqmV_xTt" resolve="BaseBlock" />
        <node concept="10YbkR" id="26BMqmV_xIS" role="b_cXm">
          <property role="10YbkC" value="839.0" />
          <property role="10YbkE" value="1110.0" />
        </node>
      </node>
      <node concept="1N5Tt1" id="26BMqmV_xHG" role="1N5PiY">
        <property role="TrG5h" value="BaseBlock2" />
        <ref role="1N5Tt0" node="26BMqmV_xTt" resolve="BaseBlock" />
        <node concept="10YbkR" id="26BMqmV_xIT" role="b_cXm">
          <property role="10YbkC" value="1653.0" />
          <property role="10YbkE" value="1113.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="26BMqmV_xLd">
    <property role="TrG5h" value="Example" />
    <node concept="3IAhBk" id="5nQyOCHcQ_M" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQ_O" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_xLi" resolve="BaseBlock1" />
        <ref role="3YV03s" node="26BMqmV_xTu" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQ_P" role="2RhMK_">
        <ref role="3YV9Vn" node="5nQyOCHcQ$T" resolve="EA_inverter" />
        <ref role="3YV9Vh" node="5nQyOCHcQ$J" resolve="ea" />
      </node>
      <node concept="bR32z" id="5nQyOCHcQGB" role="bPNfo">
        <property role="bR32p" value="180.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_xLi" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock1" />
      <ref role="1N5Tt0" node="26BMqmV_xTt" resolve="BaseBlock" />
      <node concept="10YbkR" id="26BMqmV_xLs" role="b_cXm">
        <property role="10YbkC" value="423.0" />
        <property role="10YbkE" value="190.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_xLj" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock2" />
      <ref role="1N5Tt0" node="26BMqmV_xTt" resolve="BaseBlock" />
      <node concept="10YbkR" id="26BMqmV_xLt" role="b_cXm">
        <property role="10YbkC" value="2570.0" />
        <property role="10YbkE" value="199.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_xLk" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock3" />
      <ref role="1N5Tt0" node="26BMqmV_xTt" resolve="BaseBlock" />
      <node concept="10YbkR" id="26BMqmV_xLu" role="b_cXm">
        <property role="10YbkC" value="2596.0" />
        <property role="10YbkE" value="949.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="508A0MDcKj7" role="1N5PiY">
      <property role="TrG5h" value="BaseBlock4" />
      <ref role="1N5Tt0" node="26BMqmV_xTt" resolve="BaseBlock" />
      <node concept="10YbkR" id="508A0MDcKj8" role="b_cXm">
        <property role="10YbkC" value="426.0" />
        <property role="10YbkE" value="886.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="5nQyOCHcQ$T" role="1N5PiY">
      <property role="TrG5h" value="EA_si1" />
      <ref role="1N5Tt0" node="5nQyOCHcQ$H" resolve="EA_socket_inverter" />
      <node concept="10YbkR" id="5nQyOCHcQ$V" role="b_cXm">
        <property role="10YbkC" value="1263.0" />
        <property role="10YbkE" value="296.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="5nQyOCHcQ_a" role="1N5PiY">
      <property role="TrG5h" value="EA_si3" />
      <ref role="1N5Tt0" node="5nQyOCHcQ$H" resolve="EA_socket_inverter" />
      <node concept="10YbkR" id="5nQyOCHcQ_c" role="b_cXm">
        <property role="10YbkC" value="1230.0" />
        <property role="10YbkE" value="999.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="5nQyOCHcQ_t" role="1N5PiY">
      <property role="TrG5h" value="EA_si2" />
      <ref role="1N5Tt0" node="5nQyOCHcQ$H" resolve="EA_socket_inverter" />
      <node concept="10YbkR" id="5nQyOCHcQ_v" role="b_cXm">
        <property role="10YbkC" value="1266.0" />
        <property role="10YbkE" value="616.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="5nQyOCHcQ_W" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQ_Y" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_xLi" resolve="BaseBlock1" />
        <ref role="3YV03s" node="26BMqmV_xTu" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQ_Z" role="2RhMK_">
        <ref role="3YV9Vn" node="5nQyOCHcQ_t" resolve="EA_inverter" />
        <ref role="3YV9Vh" node="5nQyOCHcQ$J" resolve="ea" />
      </node>
      <node concept="bR32z" id="5nQyOCHcQGA" role="bPNfo">
        <property role="bR32p" value="180.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="5nQyOCHcQB4" role="1N5PiY">
      <property role="TrG5h" value="EA_si4" />
      <ref role="1N5Tt0" node="5nQyOCHcQ$H" resolve="EA_socket_inverter" />
      <node concept="10YbkR" id="5nQyOCHcQB6" role="b_cXm">
        <property role="10YbkC" value="1206.0" />
        <property role="10YbkE" value="1343.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="5nQyOCHcQBv" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQBx" role="2RhMKC">
        <ref role="3YV02y" node="508A0MDcKj7" resolve="BaseBlock4" />
        <ref role="3YV03s" node="26BMqmV_xTu" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQBy" role="2RhMK_">
        <ref role="3YV9Vn" node="5nQyOCHcQ_a" resolve="EA_inverter3" />
        <ref role="3YV9Vh" node="5nQyOCHcQ$J" resolve="ea" />
      </node>
      <node concept="bR32z" id="5nQyOCHcQGy" role="bPNfo">
        <property role="bR32p" value="154.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="5nQyOCHcQBL" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQBN" role="2RhMKC">
        <ref role="3YV02y" node="508A0MDcKj7" resolve="BaseBlock4" />
        <ref role="3YV03s" node="26BMqmV_xTu" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQBO" role="2RhMK_">
        <ref role="3YV9Vn" node="5nQyOCHcQB4" resolve="EA_inverter" />
        <ref role="3YV9Vh" node="5nQyOCHcQ$J" resolve="ea" />
      </node>
      <node concept="bR32z" id="5nQyOCHcQGz" role="bPNfo">
        <property role="bR32p" value="151.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="5nQyOCHcQHL" role="1N5PiY">
      <property role="TrG5h" value="EA_pi1" />
      <ref role="1N5Tt0" node="5nQyOCHcQGI" resolve="EA_plug_inverter" />
      <node concept="10YbkR" id="5nQyOCHcQHN" role="b_cXm">
        <property role="10YbkC" value="1839.0" />
        <property role="10YbkE" value="306.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="5nQyOCHcQK0" role="1N5PiY">
      <property role="TrG5h" value="EA_pi2" />
      <ref role="1N5Tt0" node="5nQyOCHcQGI" resolve="EA_plug_inverter" />
      <node concept="10YbkR" id="5nQyOCHcQK1" role="b_cXm">
        <property role="10YbkC" value="1959.0" />
        <property role="10YbkE" value="1056.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="5nQyOCHcQMc" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQMe" role="2RhMKC">
        <ref role="3YV02y" node="5nQyOCHcQK0" resolve="EA_pi2" />
        <ref role="3YV03s" node="5nQyOCHcQIq" resolve="ea" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQMf" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_xLk" resolve="BaseBlock3" />
        <ref role="3YV9Vh" node="26BMqmV_xTv" resolve="socket" />
      </node>
      <node concept="bR33I" id="5nQyOCHcQSi" role="bPNfo" />
    </node>
    <node concept="3IAhBk" id="5nQyOCHcQME" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQMG" role="2RhMKC">
        <ref role="3YV02y" node="5nQyOCHcQHL" resolve="EA_pi1" />
        <ref role="3YV03s" node="5nQyOCHcQIq" resolve="ea" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQMH" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_xLj" resolve="BaseBlock2" />
        <ref role="3YV9Vh" node="26BMqmV_xTv" resolve="socket" />
      </node>
      <node concept="bR32z" id="5nQyOCHcQRQ" role="bPNfo">
        <property role="bR32p" value="137.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="5nQyOCHcQOG" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQOI" role="2RhMKC">
        <ref role="3YV02y" node="5nQyOCHcQK0" resolve="EA_pi2" />
        <ref role="3YV03s" node="5nQyOCHcQIP" resolve="ea_inverted" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQOJ" role="2RhMK_">
        <ref role="3YV9Vn" node="5nQyOCHcQ_t" resolve="EA_si2" />
        <ref role="3YV9Vh" node="5nQyOCHcQ$N" resolve="ea_inverted" />
      </node>
      <node concept="bR73E" id="5nQyOCHcQSc" role="bPNfo">
        <property role="bR73D" value="50.0" />
        <property role="bR73n" value="-327.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="5nQyOCHcQPm" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQPo" role="2RhMKC">
        <ref role="3YV02y" node="5nQyOCHcQK0" resolve="EA_pi2" />
        <ref role="3YV03s" node="5nQyOCHcQIP" resolve="ea_inverted" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQPp" role="2RhMK_">
        <ref role="3YV9Vn" node="5nQyOCHcQB4" resolve="EA_si4" />
        <ref role="3YV9Vh" node="5nQyOCHcQ$N" resolve="ea_inverted" />
      </node>
      <node concept="bR73E" id="5nQyOCHcQS0" role="bPNfo">
        <property role="bR73D" value="63.0" />
        <property role="bR73n" value="340.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="5nQyOCHcQQi" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQQk" role="2RhMKC">
        <ref role="3YV02y" node="5nQyOCHcQHL" resolve="EA_pi1" />
        <ref role="3YV03s" node="5nQyOCHcQIP" resolve="ea_inverted" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQQl" role="2RhMK_">
        <ref role="3YV9Vn" node="5nQyOCHcQ$T" resolve="EA_si1" />
        <ref role="3YV9Vh" node="5nQyOCHcQ$N" resolve="ea_inverted" />
      </node>
      <node concept="bR73E" id="5nQyOCHcQQW" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="44.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="5nQyOCHcQQY" role="3IAhBJ">
      <node concept="3YV02_" id="5nQyOCHcQR0" role="2RhMKC">
        <ref role="3YV02y" node="5nQyOCHcQHL" resolve="EA_pi1" />
        <ref role="3YV03s" node="5nQyOCHcQIP" resolve="ea_inverted" />
      </node>
      <node concept="3YV9EJ" id="5nQyOCHcQR1" role="2RhMK_">
        <ref role="3YV9Vn" node="5nQyOCHcQ_a" resolve="EA_si3" />
        <ref role="3YV9Vh" node="5nQyOCHcQ$N" resolve="ea_inverted" />
      </node>
      <node concept="bR73E" id="5nQyOCHcQS2" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="467.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
  </node>
  <node concept="2zBDf2" id="26BMqmV_xTt">
    <property role="TrG5h" value="BaseBlock" />
    <node concept="3IBQi5" id="26BMqmV_xTu" role="3YHajr">
      <property role="TrG5h" value="plug" />
      <ref role="3IBQi8" node="7Mtzx1CxlMg" resolve="EA" />
      <node concept="10YbkR" id="26BMqmV_xTB" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="26BMqmV_xTv" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="7Mtzx1CxlMg" resolve="EA" />
      <node concept="10YbkR" id="26BMqmV_xTC" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="26BMqmV_xTw" role="2zBDeH">
      <property role="TrG5h" value="O_data" />
      <node concept="2zB9wT" id="26BMqmV_xTD" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="26BMqmV_xTx" role="2zBDeD">
      <property role="TrG5h" value="I_data" />
      <node concept="3r5wd7" id="26BMqmV_xTE" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_xTy" role="2zBDew">
      <property role="TrG5h" value="O_event" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_xTz" role="2zBDey">
      <property role="TrG5h" value="I_event" />
    </node>
    <node concept="2zAPAk" id="26BMqmV_xT_" role="2zAPwY">
      <property role="TrG5h" value="Test" />
      <node concept="10YbkR" id="26BMqmV_xTH" role="2WOQdS">
        <property role="10YbkC" value="2140.0" />
        <property role="10YbkE" value="1320.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="26BMqmV_xYA">
    <property role="TrG5h" value="CompositeBlock" />
    <node concept="2zBDe_" id="26BMqmV_xYE" role="2zBDew">
      <property role="TrG5h" value="O_event" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_xYF" role="2zBDey">
      <property role="TrG5h" value="I_event" />
    </node>
    <node concept="3IBQi5" id="26BMqmV_xYG" role="3YHajr">
      <property role="TrG5h" value="plug" />
      <ref role="3IBQi8" node="7Mtzx1CxlMg" resolve="EA" />
      <node concept="10YbkR" id="26BMqmV_xYN" role="2oiNrz">
        <property role="10YbkC" value="1533.0" />
        <property role="10YbkE" value="703.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="26BMqmV_xYH" role="3YHajY">
      <property role="TrG5h" value="socket" />
      <ref role="3Iw0dH" node="7Mtzx1CxlMg" resolve="EA" />
      <node concept="10YbkR" id="26BMqmV_xYO" role="2oiVCh">
        <property role="10YbkC" value="406.0" />
        <property role="10YbkE" value="603.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="26BMqmV_xZp">
    <property role="TrG5h" value="Example2" />
    <node concept="3IAhBk" id="6eoqirKpGJM" role="3IAhBJ">
      <node concept="3YV02_" id="6eoqirKpGJO" role="2RhMKC">
        <ref role="3YV02y" node="6eoqirKpGJw" resolve="CompositeBlock1" />
        <ref role="3YV03s" node="26BMqmV_xYG" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="6eoqirKpGJP" role="2RhMK_">
        <ref role="3YV9Vn" node="6eoqirKpGJ_" resolve="CompositeBlock2" />
        <ref role="3YV9Vh" node="26BMqmV_xYH" resolve="socket" />
      </node>
      <node concept="bR32z" id="6eoqirKpGJQ" role="bPNfo">
        <property role="bR32p" value="186.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="6eoqirKpGJw" role="1N5PiY">
      <property role="TrG5h" value="CompositeBlock1" />
      <ref role="1N5Tt0" node="26BMqmV_xYA" resolve="CompositeBlock" />
      <node concept="10YbkR" id="6eoqirKpGJy" role="b_cXm">
        <property role="10YbkC" value="1043.0" />
        <property role="10YbkE" value="879.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="6eoqirKpGJ_" role="1N5PiY">
      <property role="TrG5h" value="CompositeBlock2" />
      <ref role="1N5Tt0" node="26BMqmV_xYA" resolve="CompositeBlock" />
      <node concept="10YbkR" id="6eoqirKpGJB" role="b_cXm">
        <property role="10YbkC" value="1899.0" />
        <property role="10YbkE" value="953.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="6eoqirKpGJW" role="1N5PiY">
      <property role="TrG5h" value="CompositeBlock" />
      <ref role="1N5Tt0" node="26BMqmV_xYA" resolve="CompositeBlock" />
      <node concept="10YbkR" id="6eoqirKpGJY" role="b_cXm">
        <property role="10YbkC" value="1846.0" />
        <property role="10YbkE" value="1303.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="6eoqirKpGK5" role="3IAhBJ">
      <node concept="3YV02_" id="6eoqirKpGK7" role="2RhMKC">
        <ref role="3YV02y" node="6eoqirKpGJw" resolve="CompositeBlock1" />
        <ref role="3YV03s" node="26BMqmV_xYG" resolve="plug" />
      </node>
      <node concept="3YV9EJ" id="6eoqirKpGK8" role="2RhMK_">
        <ref role="3YV9Vn" node="6eoqirKpGJW" resolve="CompositeBlock" />
        <ref role="3YV9Vh" node="26BMqmV_xYH" resolve="socket" />
      </node>
      <node concept="bR32z" id="6eoqirKpGK9" role="bPNfo">
        <property role="bR32p" value="160.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="26BMqmV_y2Z">
    <property role="TrG5h" value="Production_Recipe" />
    <property role="3GE5qa" value="" />
    <node concept="2zBDeF" id="26BMqmV_y30" role="2zBDeH">
      <property role="TrG5h" value="Count" />
      <node concept="3r5wd7" id="26BMqmV_y38" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y31" role="2zBDew">
      <property role="TrG5h" value="Reset_All" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y32" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y33" role="2zBDey">
      <property role="TrG5h" value="INT" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y34" role="2zBDey">
      <property role="TrG5h" value="START" />
    </node>
    <node concept="3IBQi5" id="26BMqmV_y35" role="3YHajr">
      <property role="TrG5h" value="CurrentState" />
      <ref role="3IBQi8" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y39" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="26BMqmV_y36" role="3YHajr">
      <property role="TrG5h" value="Adp_DeliveryService" />
      <ref role="3IBQi8" node="26BMqmV_y6m" resolve="Enas_Adapter" />
      <node concept="10YbkR" id="26BMqmV_y3a" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="26BMqmV_y37" role="3YHajr">
      <property role="TrG5h" value="Adp_Jack" />
      <ref role="3IBQi8" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y3b" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="26BMqmV_y3c">
    <property role="TrG5h" value="DeliveryService" />
    <property role="3GE5qa" value="" />
    <node concept="3IBQi5" id="26BMqmV_y3d" role="3YHajr">
      <property role="TrG5h" value="CommandOut" />
      <ref role="3IBQi8" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y3g" role="2oiNrz">
        <property role="10YbkC" value="1450.0" />
        <property role="10YbkE" value="389.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="26BMqmV_y3e" role="3YHajr">
      <property role="TrG5h" value="Adp_Command" />
      <ref role="3IBQi8" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y3h" role="2oiNrz">
        <property role="10YbkC" value="710.0" />
        <property role="10YbkE" value="213.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="26BMqmV_y3f" role="3YHajY">
      <property role="TrG5h" value="Adp_DeliveryService" />
      <ref role="3Iw0dH" node="26BMqmV_y6m" resolve="Enas_Adapter" />
      <node concept="10YbkR" id="26BMqmV_y3i" role="2oiVCh">
        <property role="10YbkC" value="413.0" />
        <property role="10YbkE" value="809.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="26BMqmV_y3j">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="Pneumatics" />
    <node concept="3Iw0dE" id="26BMqmV_y3k" role="3YHajY">
      <property role="TrG5h" value="&gt;&gt;Input" />
      <ref role="3Iw0dH" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y3n" role="2oiVCh">
        <property role="10YbkC" value="763.0" />
        <property role="10YbkE" value="246.0" />
      </node>
    </node>
    <node concept="2zBDe_" id="26BMqmV_y3l" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y3m" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
  </node>
  <node concept="1N5Tt2" id="26BMqmV_y3o">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="EnasExample" />
    <node concept="3IAhBk" id="26BMqmV_y3p" role="3IAhBJ">
      <node concept="3YV02_" id="26BMqmV_y3H" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3t" resolve="Production_Recipe" />
        <ref role="3YV03s" node="26BMqmV_y36" resolve="Adp_DeliveryService" />
      </node>
      <node concept="3YV9EJ" id="26BMqmV_y3I" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3q" resolve="DeliveryService" />
        <ref role="3YV9Vh" node="26BMqmV_y3f" resolve="Adp_DeliveryService" />
      </node>
      <node concept="bR32z" id="26BMqmV_y3J" role="bPNfo">
        <property role="bR32p" value="221.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3q" role="1N5PiY">
      <property role="TrG5h" value="DeliveryService" />
      <ref role="1N5Tt0" node="26BMqmV_y3c" resolve="DeliveryService" />
      <node concept="10YbkR" id="26BMqmV_y3K" role="b_cXm">
        <property role="10YbkC" value="1336.0" />
        <property role="10YbkE" value="223.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3r" role="1N5PiY">
      <property role="TrG5h" value="Jack1" />
      <ref role="1N5Tt0" node="26BMqmV_y3j" resolve="Pneumatics" />
      <node concept="10YbkR" id="26BMqmV_y3L" role="b_cXm">
        <property role="10YbkC" value="1530.0" />
        <property role="10YbkE" value="513.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3s" role="1N5PiY">
      <property role="TrG5h" value="Jack2" />
      <ref role="1N5Tt0" node="26BMqmV_y3j" resolve="Pneumatics" />
      <node concept="10YbkR" id="26BMqmV_y3M" role="b_cXm">
        <property role="10YbkC" value="1530.0" />
        <property role="10YbkE" value="783.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3t" role="1N5PiY">
      <property role="TrG5h" value="Production_Recipe" />
      <ref role="1N5Tt0" node="26BMqmV_y2Z" resolve="Production_Recipe" />
      <node concept="10YbkR" id="26BMqmV_y3N" role="b_cXm">
        <property role="10YbkC" value="140.0" />
        <property role="10YbkE" value="313.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="26BMqmV_y3u" role="3IAhBJ">
      <node concept="3YV02_" id="26BMqmV_y3O" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3t" resolve="Production_Recipe" />
        <ref role="3YV03s" node="26BMqmV_y37" resolve="Adp_Jack" />
      </node>
      <node concept="3YV9EJ" id="26BMqmV_y3P" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3r" resolve="Jack1" />
        <ref role="3YV9Vh" node="26BMqmV_y3k" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="26BMqmV_y3Q" role="bPNfo">
        <property role="bR32p" value="324.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="26BMqmV_y3v" role="3IAhBJ">
      <node concept="3YV02_" id="26BMqmV_y3R" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3t" resolve="Production_Recipe" />
        <ref role="3YV03s" node="26BMqmV_y37" resolve="Adp_Jack" />
      </node>
      <node concept="3YV9EJ" id="26BMqmV_y3S" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3s" resolve="Jack2" />
        <ref role="3YV9Vh" node="26BMqmV_y3k" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="26BMqmV_y3T" role="bPNfo">
        <property role="bR32p" value="324.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3w" role="1N5PiY">
      <property role="TrG5h" value="Conveyor1" />
      <ref role="1N5Tt0" node="26BMqmV_y4x" resolve="Conveyor_SL_1_Adp" />
      <node concept="1LUwhx" id="26BMqmV_y3U" role="2LNCDh">
        <ref role="1LUwhw" node="26BMqmV_y4C" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="26BMqmV_y4r" role="1LUwh$">
          <property role="2RgKcO" value="1" />
        </node>
      </node>
      <node concept="10YbkR" id="26BMqmV_y3V" role="b_cXm">
        <property role="10YbkC" value="-99.0" />
        <property role="10YbkE" value="1153.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="26BMqmV_y3x" role="3IAhBJ">
      <node concept="3YV02_" id="26BMqmV_y3W" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3q" resolve="DeliveryService" />
        <ref role="3YV03s" node="26BMqmV_y3e" resolve="Adp_Command" />
      </node>
      <node concept="3YV9EJ" id="26BMqmV_y3X" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3w" resolve="Conveyor1" />
        <ref role="3YV9Vh" node="26BMqmV_y4B" resolve="&gt;&gt;CommandIp" />
      </node>
      <node concept="bR73E" id="26BMqmV_y3Y" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="660.0" />
        <property role="bR73k" value="160.0" />
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3y" role="1N5PiY">
      <property role="TrG5h" value="Conveyor2" />
      <ref role="1N5Tt0" node="26BMqmV_y4O" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="26BMqmV_y3Z" role="b_cXm">
        <property role="10YbkC" value="783.0" />
        <property role="10YbkE" value="1166.0" />
      </node>
      <node concept="1LUwhx" id="26BMqmV_y40" role="2LNCDh">
        <ref role="1LUwhw" node="26BMqmV_y4U" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="26BMqmV_y4s" role="1LUwh$">
          <property role="2RgKcO" value="2" />
        </node>
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3z" role="1N5PiY">
      <property role="TrG5h" value="Conveyor3" />
      <ref role="1N5Tt0" node="26BMqmV_y4O" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="26BMqmV_y41" role="b_cXm">
        <property role="10YbkC" value="1679.0" />
        <property role="10YbkE" value="1176.0" />
      </node>
      <node concept="1LUwhx" id="26BMqmV_y42" role="2LNCDh">
        <ref role="1LUwhw" node="26BMqmV_y4U" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="26BMqmV_y4t" role="1LUwh$">
          <property role="2RgKcO" value="3" />
        </node>
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3$" role="1N5PiY">
      <property role="TrG5h" value="Conveyor4" />
      <ref role="1N5Tt0" node="26BMqmV_y4O" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="26BMqmV_y43" role="b_cXm">
        <property role="10YbkC" value="2540.0" />
        <property role="10YbkE" value="1196.0" />
      </node>
      <node concept="1LUwhx" id="26BMqmV_y44" role="2LNCDh">
        <ref role="1LUwhw" node="26BMqmV_y4U" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="26BMqmV_y4u" role="1LUwh$">
          <property role="2RgKcO" value="4" />
        </node>
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3_" role="1N5PiY">
      <property role="TrG5h" value="Conveyor5" />
      <ref role="1N5Tt0" node="26BMqmV_y4O" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="26BMqmV_y45" role="b_cXm">
        <property role="10YbkC" value="283.0" />
        <property role="10YbkE" value="1759.0" />
      </node>
      <node concept="1LUwhx" id="26BMqmV_y46" role="2LNCDh">
        <ref role="1LUwhw" node="26BMqmV_y4U" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="26BMqmV_y4v" role="1LUwh$">
          <property role="2RgKcO" value="5" />
        </node>
      </node>
    </node>
    <node concept="1N5Tt1" id="26BMqmV_y3A" role="1N5PiY">
      <property role="TrG5h" value="Conveyor6" />
      <ref role="1N5Tt0" node="26BMqmV_y4O" resolve="Conveyor_S_Adp" />
      <node concept="10YbkR" id="26BMqmV_y47" role="b_cXm">
        <property role="10YbkC" value="1490.0" />
        <property role="10YbkE" value="1749.0" />
      </node>
      <node concept="1LUwhx" id="26BMqmV_y48" role="2LNCDh">
        <ref role="1LUwhw" node="26BMqmV_y4U" resolve="ConveyorNumber" />
        <node concept="2RgKcJ" id="26BMqmV_y4w" role="1LUwh$">
          <property role="2RgKcO" value="6" />
        </node>
      </node>
    </node>
    <node concept="3IAhBk" id="26BMqmV_y3B" role="3IAhBJ">
      <node concept="3YV02_" id="26BMqmV_y49" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3y" resolve="Conveyor2" />
        <ref role="3YV03s" node="26BMqmV_y4S" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="26BMqmV_y4a" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3z" resolve="Conveyor3" />
        <ref role="3YV9Vh" node="26BMqmV_y4T" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="26BMqmV_y4b" role="bPNfo">
        <property role="bR32p" value="130.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="26BMqmV_y3C" role="3IAhBJ">
      <node concept="3YV02_" id="26BMqmV_y4c" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3w" resolve="Conveyor1" />
        <ref role="3YV03s" node="26BMqmV_y4_" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="26BMqmV_y4d" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3y" resolve="Conveyor2" />
        <ref role="3YV9Vh" node="26BMqmV_y4T" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="26BMqmV_y4e" role="bPNfo">
        <property role="bR32p" value="53.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="26BMqmV_y3D" role="3IAhBJ">
      <node concept="3YV9EJ" id="26BMqmV_y4f" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3$" resolve="Conveyor4" />
        <ref role="3YV9Vh" node="26BMqmV_y4T" resolve="&gt;&gt;Input" />
      </node>
      <node concept="3YV02_" id="26BMqmV_y4g" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3z" resolve="Conveyor3" />
        <ref role="3YV03s" node="26BMqmV_y4S" resolve="&gt;&gt;Output" />
      </node>
      <node concept="bR32z" id="26BMqmV_y4h" role="bPNfo">
        <property role="bR32p" value="110.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="26BMqmV_y3E" role="3IAhBJ">
      <node concept="3YV02_" id="26BMqmV_y4i" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3$" resolve="Conveyor4" />
        <ref role="3YV03s" node="26BMqmV_y4S" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="26BMqmV_y4j" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3_" resolve="Conveyor5" />
        <ref role="3YV9Vh" node="26BMqmV_y4T" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR73E" id="26BMqmV_y4k" role="bPNfo">
        <property role="bR73D" value="130.0" />
        <property role="bR73n" value="70.0" />
        <property role="bR73k" value="177.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="26BMqmV_y3F" role="3IAhBJ">
      <node concept="3YV02_" id="26BMqmV_y4l" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3_" resolve="Conveyor5" />
        <ref role="3YV03s" node="26BMqmV_y4S" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="26BMqmV_y4m" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3A" resolve="Conveyor6" />
        <ref role="3YV9Vh" node="26BMqmV_y4T" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR32z" id="26BMqmV_y4n" role="bPNfo">
        <property role="bR32p" value="224.0" />
      </node>
    </node>
    <node concept="3IAhBk" id="26BMqmV_y3G" role="3IAhBJ">
      <node concept="3YV02_" id="26BMqmV_y4o" role="2RhMKC">
        <ref role="3YV02y" node="26BMqmV_y3A" resolve="Conveyor6" />
        <ref role="3YV03s" node="26BMqmV_y4S" resolve="&gt;&gt;Output" />
      </node>
      <node concept="3YV9EJ" id="26BMqmV_y4p" role="2RhMK_">
        <ref role="3YV9Vn" node="26BMqmV_y3w" resolve="Conveyor1" />
        <ref role="3YV9Vh" node="26BMqmV_y4A" resolve="&gt;&gt;Input" />
      </node>
      <node concept="bR73E" id="26BMqmV_y4q" role="bPNfo">
        <property role="bR73D" value="134.0" />
        <property role="bR73n" value="77.0" />
        <property role="bR73k" value="130.0" />
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="26BMqmV_y4x">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="Conveyor_SL_1_Adp" />
    <node concept="2zBDeF" id="26BMqmV_y4y" role="2zBDeH">
      <property role="TrG5h" value="DRIVE" />
      <node concept="3r5wd7" id="26BMqmV_y4H" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="26BMqmV_y4z" role="2zBDeH">
      <property role="TrG5h" value="SENSOR" />
      <node concept="3r5wd7" id="26BMqmV_y4I" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="26BMqmV_y4$" role="2zBDeH">
      <property role="TrG5h" value="STATE" />
      <node concept="3r5wd7" id="26BMqmV_y4J" role="2zB7qv" />
    </node>
    <node concept="3IBQi5" id="26BMqmV_y4_" role="3YHajr">
      <property role="TrG5h" value="&gt;&gt;Output" />
      <ref role="3IBQi8" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y4K" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="26BMqmV_y4A" role="3YHajY">
      <property role="TrG5h" value="&gt;&gt;Input" />
      <ref role="3Iw0dH" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y4L" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="26BMqmV_y4B" role="3YHajY">
      <property role="TrG5h" value="&gt;&gt;CommandIp" />
      <ref role="3Iw0dH" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y4M" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="26BMqmV_y4C" role="2zBDeD">
      <property role="TrG5h" value="ConveyorNumber" />
      <node concept="1QCq3_" id="26BMqmV_y4N" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y4D" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y4E" role="2zBDew">
      <property role="TrG5h" value="CNF" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y4F" role="2zBDew">
      <property role="TrG5h" value="E_State" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y4G" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
  </node>
  <node concept="1N5Tt2" id="26BMqmV_y4O">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="Conveyor_S_Adp" />
    <node concept="2zBDeF" id="26BMqmV_y4P" role="2zBDeH">
      <property role="TrG5h" value="DRIVE" />
      <node concept="3r5wd7" id="26BMqmV_y4Z" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="26BMqmV_y4Q" role="2zBDeH">
      <property role="TrG5h" value="SENSOR" />
      <node concept="3r5wd7" id="26BMqmV_y50" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="26BMqmV_y4R" role="2zBDeH">
      <property role="TrG5h" value="STATE" />
      <node concept="3r5wd7" id="26BMqmV_y51" role="2zB7qv" />
    </node>
    <node concept="3IBQi5" id="26BMqmV_y4S" role="3YHajr">
      <property role="TrG5h" value="&gt;&gt;Output" />
      <ref role="3IBQi8" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y52" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="26BMqmV_y4T" role="3YHajY">
      <property role="TrG5h" value="&gt;&gt;Input" />
      <ref role="3Iw0dH" node="26BMqmV_y6a" resolve="Enas_ea" />
      <node concept="10YbkR" id="26BMqmV_y53" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="2zBDeF" id="26BMqmV_y4U" role="2zBDeD">
      <property role="TrG5h" value="ConveyorNumber" />
      <node concept="1QCq3_" id="26BMqmV_y54" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y4V" role="2zBDew">
      <property role="TrG5h" value="INITO" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y4W" role="2zBDew">
      <property role="TrG5h" value="CNF" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y4X" role="2zBDew">
      <property role="TrG5h" value="E_State" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y4Y" role="2zBDey">
      <property role="TrG5h" value="INIT" />
    </node>
  </node>
  <node concept="2xRpA$" id="26BMqmV_y6a">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="Enas_ea" />
    <node concept="2zBDeF" id="74_85cSHVpO" role="2zBDeH">
      <property role="TrG5h" value="O_d" />
      <node concept="3r5wd7" id="74_85cSHVpS" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="74_85cSHVpH" role="2zBDeD">
      <property role="TrG5h" value="I_d" />
      <node concept="3r5wd7" id="74_85cSHVpL" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="74_85cSHVpx" role="2zBDew">
      <property role="TrG5h" value="O" />
    </node>
    <node concept="2zBDe_" id="74_85cSHVpl" role="2zBDey">
      <property role="TrG5h" value="I" />
    </node>
    <node concept="2zBDeF" id="74_85cSHVq5" role="13zCZw">
      <property role="TrG5h" value="router" />
      <node concept="3r5wd7" id="74_85cSHVq9" role="2zB7qv" />
    </node>
    <node concept="2iASse" id="74_85cSHVqm" role="3mXz4Z">
      <property role="TrG5h" value="Adapter_retry" />
      <node concept="2GP0n_" id="74_85cSHVqn" role="2GP0$q">
        <property role="TrG5h" value="Plug_Connection" />
        <node concept="10YbkR" id="74_85cSHVqo" role="3ISU9Q">
          <property role="10YbkC" value="0.0" />
          <property role="10YbkE" value="0.0" />
        </node>
      </node>
      <node concept="2u7yaZ" id="74_85cSHVqp" role="2GP0_B">
        <property role="TrG5h" value="Socket_Connection" />
        <node concept="10YbkR" id="74_85cSHVqq" role="3ISU9Q">
          <property role="10YbkC" value="0.0" />
          <property role="10YbkE" value="0.0" />
        </node>
      </node>
    </node>
    <node concept="2zBDeF" id="74_85cSHVKn" role="13zCZy">
      <property role="TrG5h" value="a" />
      <node concept="3r5wd7" id="74_85cSHVKr" role="2zB7qv" />
    </node>
  </node>
  <node concept="2zBDf2" id="26BMqmV_y6b">
    <property role="3GE5qa" value="enas.utils" />
    <property role="TrG5h" value="Retry_Block" />
    <node concept="2zBDe_" id="26BMqmV_y6c" role="2zBDew">
      <property role="TrG5h" value="Send" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y6d" role="2zBDey">
      <property role="TrG5h" value="Start" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y6e" role="2zBDey">
      <property role="TrG5h" value="Stop" />
    </node>
    <node concept="2zBDe_" id="26BMqmV_y6f" role="2zBDey">
      <property role="TrG5h" value="Set_Dt" />
    </node>
    <node concept="2zBDeF" id="26BMqmV_y6g" role="2zBDeD">
      <property role="TrG5h" value="Dt" />
      <node concept="3r5yig" id="26BMqmV_y6j" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="26BMqmV_y6h" role="2zBDeD">
      <property role="TrG5h" value="Attempts" />
      <node concept="3r5wd7" id="26BMqmV_y6k" role="2zB7qv" />
    </node>
    <node concept="2zAPAk" id="26BMqmV_y6i" role="2zAPwY">
      <property role="TrG5h" value="START" />
      <node concept="10YbkR" id="26BMqmV_y6l" role="2WOQdS">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
  </node>
  <node concept="XJABO" id="26BMqmV_y6m">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="Enas_Adapter" />
  </node>
  <node concept="2xRpA$" id="7Mtzx1CxlMg">
    <property role="TrG5h" value="EA" />
    <node concept="2zBDeF" id="7Mtzx1CxlMh" role="2zBDeH">
      <property role="TrG5h" value="Message" />
      <node concept="1QCq3_" id="7Mtzx1CxlMq" role="2zB7qv" />
    </node>
    <node concept="2zBDe_" id="7Mtzx1CxlMi" role="2zBDew">
      <property role="TrG5h" value="Send_Message" />
      <node concept="2zBDeU" id="6eoqirKpGop" role="2zBDeW">
        <ref role="2zBDeT" node="7Mtzx1CxlMh" resolve="Message" />
      </node>
    </node>
    <node concept="3mx2vR" id="7Mtzx1CxlMj" role="3mXm6v">
      <node concept="2zBDe_" id="7Mtzx1Cxm1F" role="2zBDey">
        <property role="TrG5h" value="Confirm" />
      </node>
      <node concept="2zBDe_" id="7Mtzx1CxlMr" role="2zBDew">
        <property role="TrG5h" value="Set_Delay" />
        <node concept="2zBDeU" id="6eoqirKpGot" role="2zBDeW">
          <ref role="2zBDeT" node="7Mtzx1CxlMs" resolve="Delay" />
        </node>
        <node concept="2zBDeU" id="6eoqirKpGov" role="2zBDeW">
          <ref role="2zBDeT" node="7Mtzx1CxlMt" resolve="Attempts" />
        </node>
      </node>
      <node concept="2zBDeF" id="7Mtzx1CxlMs" role="2zBDeH">
        <property role="TrG5h" value="Delay" />
        <node concept="3r5yig" id="7Mtzx1CxlMK" role="2zB7qv" />
      </node>
      <node concept="2zBDeF" id="7Mtzx1CxlMt" role="2zBDeH">
        <property role="TrG5h" value="Attempts" />
        <node concept="3r5wd7" id="7Mtzx1CxlML" role="2zB7qv" />
      </node>
    </node>
    <node concept="2zBDeF" id="7Mtzx1CxlMk" role="13zCZy">
      <property role="TrG5h" value="I_router" />
      <node concept="3r5wd7" id="7Mtzx1CxlMu" role="2zB7qv" />
    </node>
    <node concept="2zBDeF" id="7Mtzx1CxlMl" role="13zCZw">
      <property role="TrG5h" value="O_router" />
      <node concept="3r5wd7" id="7Mtzx1CxlMv" role="2zB7qv" />
    </node>
    <node concept="3mx2vR" id="7Mtzx1CxlMm" role="tr10e" />
    <node concept="2iASse" id="7Mtzx1CxlMn" role="3mXz4Z">
      <property role="TrG5h" value="network1" />
      <node concept="1N5Tt1" id="7Mtzx1CxlMw" role="1N5PiY">
        <property role="TrG5h" value="Retry_Block" />
        <ref role="1N5Tt0" node="26BMqmV_y6b" resolve="Retry_Block" />
        <node concept="10YbkR" id="7Mtzx1CxlMM" role="b_cXm">
          <property role="10YbkC" value="996.0" />
          <property role="10YbkE" value="320.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="7Mtzx1CxlMx" role="1N5PiV">
        <node concept="3IAhSD" id="7Mtzx1CxlMN" role="2RhMKC">
          <ref role="1N5Pi4" node="7Mtzx1CxlMz" resolve="Socket_Connection" />
          <ref role="1N5PlF" node="7Mtzx1CxlMh" resolve="Message" />
        </node>
        <node concept="3IAvtB" id="7Mtzx1CxlMO" role="2RhMK_">
          <ref role="1N5Pi4" node="7Mtzx1CxlMy" resolve="Plug_Connection" />
          <ref role="1N5PlF" node="7Mtzx1CxlMh" resolve="Message" />
        </node>
        <node concept="bR32z" id="7Mtzx1CxlMP" role="bPNfo">
          <property role="bR32p" value="80.0" />
        </node>
      </node>
      <node concept="2GP0n_" id="7Mtzx1CxlMy" role="2GP0$q">
        <property role="TrG5h" value="Plug_Connection" />
        <node concept="10YbkR" id="7Mtzx1CxlMQ" role="3ISU9Q">
          <property role="10YbkC" value="1659.0" />
          <property role="10YbkE" value="550.0" />
        </node>
      </node>
      <node concept="2u7yaZ" id="7Mtzx1CxlMz" role="2GP0_B">
        <property role="TrG5h" value="Socket_Connection" />
        <node concept="10YbkR" id="7Mtzx1CxlMR" role="3ISU9Q">
          <property role="10YbkC" value="193.0" />
          <property role="10YbkE" value="320.0" />
        </node>
      </node>
      <node concept="1N5Tq9" id="7Mtzx1CxlM$" role="1N5PiV">
        <node concept="3IAhSD" id="7Mtzx1CxlMS" role="2RhMKC">
          <ref role="1N5Pi4" node="7Mtzx1CxlMz" resolve="Socket_Connection" />
          <ref role="1N5PlF" node="7Mtzx1CxlMs" resolve="Delay" />
        </node>
        <node concept="3IAvtB" id="7Mtzx1CxlMT" role="2RhMK_">
          <ref role="1N5Pi4" node="7Mtzx1CxlMw" resolve="Retry_Block" />
          <ref role="1N5PlF" node="26BMqmV_y6g" resolve="Dt" />
        </node>
        <node concept="bR33I" id="7Mtzx1CxlMU" role="bPNfo" />
      </node>
      <node concept="1N5Tq9" id="7Mtzx1CxlM_" role="1N5PiV">
        <node concept="3IAhSD" id="7Mtzx1CxlMV" role="2RhMKC">
          <ref role="1N5PlF" node="7Mtzx1CxlMt" resolve="Attempts" />
          <ref role="1N5Pi4" node="7Mtzx1CxlMz" resolve="Socket_Connection" />
        </node>
        <node concept="3IAvtB" id="7Mtzx1CxlMW" role="2RhMK_">
          <ref role="1N5Pi4" node="7Mtzx1CxlMw" resolve="Retry_Block" />
          <ref role="1N5PlF" node="26BMqmV_y6h" resolve="Attempts" />
        </node>
        <node concept="bR33I" id="7Mtzx1CxlMX" role="bPNfo" />
      </node>
      <node concept="1N5Tqi" id="7Mtzx1CxlMA" role="1N5PiQ">
        <node concept="3YB4oO" id="7Mtzx1CxlMY" role="2RhMKC">
          <ref role="1N5Pi4" node="7Mtzx1CxlMw" resolve="Retry_Block" />
          <ref role="1N5Pi3" node="26BMqmV_y6c" resolve="Send" />
        </node>
        <node concept="3Yx0EI" id="7Mtzx1CxlMZ" role="2RhMK_">
          <ref role="1N5Pi3" node="7Mtzx1CxlMi" resolve="Send_Message" />
          <ref role="1N5Pi4" node="7Mtzx1CxlMy" resolve="Plug_Connection" />
        </node>
        <node concept="bR73E" id="7Mtzx1CxlN0" role="bPNfo">
          <property role="bR73D" value="133.0" />
          <property role="bR73n" value="96.0" />
          <property role="bR73k" value="133.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="7Mtzx1CxlMB" role="1N5PiQ">
        <node concept="3YB4oO" id="7Mtzx1CxlN1" role="2RhMKC">
          <ref role="1N5Pi4" node="7Mtzx1CxlMy" resolve="Plug_Connection" />
          <ref role="1N5Pi3" node="7Mtzx1CxlME" resolve="Confirm" />
        </node>
        <node concept="bR73E" id="7Mtzx1Cxmnn" role="bPNfo">
          <property role="bR73D" value="70.0" />
          <property role="bR73n" value="-317.0" />
          <property role="bR73k" value="130.0" />
        </node>
        <node concept="3Yx0EI" id="7Mtzx1Cxmno" role="2RhMK_">
          <ref role="1N5Pi4" node="7Mtzx1CxlMw" resolve="Retry_Block" />
          <ref role="1N5Pi3" node="26BMqmV_y6e" resolve="Stop" />
        </node>
      </node>
      <node concept="1N5Tqi" id="7Mtzx1CxlMC" role="1N5PiQ">
        <node concept="3YB4oO" id="7Mtzx1CxlN4" role="2RhMKC">
          <ref role="1N5Pi3" node="7Mtzx1CxlMi" resolve="Send_Message" />
          <ref role="1N5Pi4" node="7Mtzx1CxlMz" resolve="Socket_Connection" />
        </node>
        <node concept="3Yx0EI" id="7Mtzx1CxlN5" role="2RhMK_">
          <ref role="1N5Pi4" node="7Mtzx1CxlMw" resolve="Retry_Block" />
          <ref role="1N5Pi3" node="26BMqmV_y6d" resolve="Start" />
        </node>
        <node concept="bR33I" id="7Mtzx1CxlN6" role="bPNfo" />
      </node>
      <node concept="1N5Tqi" id="7Mtzx1CxlMD" role="1N5PiQ">
        <node concept="3YB4oO" id="7Mtzx1CxlN7" role="2RhMKC">
          <ref role="1N5Pi4" node="7Mtzx1CxlMz" resolve="Socket_Connection" />
          <ref role="1N5Pi3" node="7Mtzx1CxlMr" resolve="Set_Delay" />
        </node>
        <node concept="3Yx0EI" id="7Mtzx1CxlN8" role="2RhMK_">
          <ref role="1N5Pi4" node="7Mtzx1CxlMw" resolve="Retry_Block" />
          <ref role="1N5Pi3" node="26BMqmV_y6f" resolve="Set_Dt" />
        </node>
        <node concept="bR32z" id="7Mtzx1Cxmnp" role="bPNfo">
          <property role="bR32p" value="73.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="7Mtzx1Cxm1G" role="1N5PiQ">
        <node concept="3YB4oO" id="7Mtzx1Cxm1I" role="2RhMKC">
          <ref role="1N5Pi4" node="7Mtzx1CxlMy" resolve="Plug_Connection" />
          <ref role="1N5Pi3" node="7Mtzx1CxlME" resolve="Confirm" />
        </node>
        <node concept="3Yx0EI" id="7Mtzx1Cxm1J" role="2RhMK_">
          <ref role="1N5Pi3" node="7Mtzx1Cxm1F" resolve="Confirm" />
          <ref role="1N5Pi4" node="7Mtzx1CxlMz" resolve="Socket_Connection" />
        </node>
        <node concept="bR73E" id="7Mtzx1Cxmnm" role="bPNfo">
          <property role="bR73D" value="77.0" />
          <property role="bR73n" value="-310.0" />
          <property role="bR73k" value="40.0" />
        </node>
      </node>
    </node>
    <node concept="3mx2vR" id="7Mtzx1CxlMo" role="2Xgs8Q">
      <node concept="2zBDe_" id="7Mtzx1CxlME" role="2zBDew">
        <property role="TrG5h" value="Confirm" />
      </node>
    </node>
    <node concept="2iASse" id="7Mtzx1CxlMp" role="6HEdv">
      <property role="TrG5h" value="network2" />
      <node concept="1N5Tq9" id="7Mtzx1CxlMF" role="1N5PiV">
        <node concept="3IAhSD" id="7Mtzx1CxlNa" role="2RhMKC">
          <ref role="1N5Pi4" node="7Mtzx1CxlMI" resolve="Socket_Connection" />
          <ref role="1N5PlF" node="7Mtzx1CxlMh" resolve="Message" />
        </node>
        <node concept="3IAvtB" id="7Mtzx1CxlNb" role="2RhMK_">
          <ref role="1N5Pi4" node="7Mtzx1CxlMH" resolve="Plug_Connection" />
          <ref role="1N5PlF" node="7Mtzx1CxlMh" resolve="Message" />
        </node>
        <node concept="bR32z" id="7Mtzx1CxlNc" role="bPNfo">
          <property role="bR32p" value="177.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="7Mtzx1CxlMG" role="1N5PiQ">
        <node concept="3YB4oO" id="7Mtzx1CxlNd" role="2RhMKC">
          <ref role="1N5Pi4" node="7Mtzx1CxlMI" resolve="Socket_Connection" />
          <ref role="1N5Pi3" node="7Mtzx1CxlMi" resolve="Send_Message" />
        </node>
        <node concept="3Yx0EI" id="7Mtzx1CxlNe" role="2RhMK_">
          <ref role="1N5Pi4" node="7Mtzx1CxlMH" resolve="Plug_Connection" />
          <ref role="1N5Pi3" node="7Mtzx1CxlMi" resolve="Send_Message" />
        </node>
        <node concept="bR32z" id="7Mtzx1CxlNf" role="bPNfo">
          <property role="bR32p" value="177.0" />
        </node>
      </node>
      <node concept="2GP0n_" id="7Mtzx1CxlMH" role="2GP0$q">
        <property role="TrG5h" value="Plug_Connection" />
        <node concept="10YbkR" id="7Mtzx1CxlNg" role="3ISU9Q">
          <property role="10YbkC" value="1523.0" />
          <property role="10YbkE" value="350.0" />
        </node>
      </node>
      <node concept="2u7yaZ" id="7Mtzx1CxlMI" role="2GP0_B">
        <property role="TrG5h" value="Socket_Connection" />
        <node concept="10YbkR" id="7Mtzx1CxlNh" role="3ISU9Q">
          <property role="10YbkC" value="633.0" />
          <property role="10YbkE" value="356.0" />
        </node>
      </node>
      <node concept="1N5Tqi" id="7Mtzx1CxlMJ" role="1N5PiQ">
        <node concept="3YB4oO" id="7Mtzx1CxlNi" role="2RhMKC">
          <ref role="1N5Pi4" node="7Mtzx1CxlMI" resolve="Socket_Connection" />
          <ref role="1N5Pi3" node="7Mtzx1CxlMi" resolve="Send_Message" />
        </node>
        <node concept="3Yx0EI" id="7Mtzx1CxlNj" role="2RhMK_">
          <ref role="1N5Pi3" node="7Mtzx1CxlME" resolve="Confirm" />
          <ref role="1N5Pi4" node="7Mtzx1CxlMI" resolve="Socket_Connection" />
        </node>
        <node concept="bR73E" id="7Mtzx1CxlNk" role="bPNfo">
          <property role="bR73D" value="130.0" />
          <property role="bR73n" value="-113.0" />
          <property role="bR73k" value="134.0" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1N5Tt2" id="5nQyOCHcQ$H">
    <property role="TrG5h" value="EA_socket_inverter" />
    <node concept="3Iw0dE" id="5nQyOCHcQ$J" role="3YHajY">
      <property role="TrG5h" value="ea" />
      <ref role="3Iw0dH" node="7Mtzx1CxlMg" resolve="EA" />
      <node concept="10YbkR" id="5nQyOCHcQ$K" role="2oiVCh">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3Iw0dE" id="5nQyOCHcQ$N" role="3YHajY">
      <property role="TrG5h" value="ea_inverted" />
      <ref role="3Iw0dH" node="5nQyOCHcQCB" resolve="EA_inverted" />
      <node concept="10YbkR" id="5nQyOCHcQ$O" role="2oiVCh">
        <property role="10YbkC" value="716.0" />
        <property role="10YbkE" value="626.0" />
      </node>
    </node>
  </node>
  <node concept="2xRpA$" id="5nQyOCHcQCB">
    <property role="TrG5h" value="EA_inverted" />
  </node>
  <node concept="1N5Tt2" id="5nQyOCHcQGI">
    <property role="TrG5h" value="EA_plug_inverter" />
    <node concept="3IBQi5" id="5nQyOCHcQIq" role="3YHajr">
      <property role="TrG5h" value="ea" />
      <ref role="3IBQi8" node="7Mtzx1CxlMg" resolve="EA" />
      <node concept="10YbkR" id="5nQyOCHcQIr" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
    <node concept="3IBQi5" id="5nQyOCHcQIP" role="3YHajr">
      <property role="TrG5h" value="ea_inverted" />
      <ref role="3IBQi8" node="5nQyOCHcQCB" resolve="EA_inverted" />
      <node concept="10YbkR" id="5nQyOCHcQIQ" role="2oiNrz">
        <property role="10YbkC" value="0.0" />
        <property role="10YbkE" value="0.0" />
      </node>
    </node>
  </node>
</model>

