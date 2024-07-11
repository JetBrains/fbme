<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4516a0fb-4dd4-44dd-98a0-244a77d26ca2(WaterTank.water_tank)">
  <persistence version="9" />
  <languages>
    <use id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang" version="0" />
  </languages>
  <imports>
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="7fvu" ref="r:fa98296a-e4fa-4f84-b917-968f5f770c4b(iec61499.4diac.stdlib)" />
  </imports>
  <registry>
    <language id="6594f340-4d73-4027-b7d3-c6ca2e70a53b" name="org.fbme.ide.iec61499.lang">
      <concept id="1250729573110258851" name="org.fbme.ide.iec61499.lang.structure.HMIInterfaceTypeDeclaration" flags="ng" index="2q2Qt8" />
      <concept id="1250729573110258848" name="org.fbme.ide.iec61499.lang.structure.CATBlockTypeDeclaration" flags="ng" index="2q2Qtb">
        <property id="5995905333262986371" name="interfaceFileName" index="1rdL2x" />
        <reference id="1324733960932697423" name="blockDeclaration" index="3pa4fb" />
        <reference id="1324733960932697429" name="hmiInterfaceDeclaration" index="3pa4fh" />
      </concept>
      <concept id="967875482185433821" name="org.fbme.ide.iec61499.lang.structure.CompositeFBTypeDeclaration" flags="ng" index="1N5Tt2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2q2Qtb" id="6FcZ4ecQXrB">
    <property role="TrG5h" value="WaterTank" />
    <property role="1rdL2x" value="fff" />
    <ref role="3pa4fb" node="6FcZ4ecQXrC" resolve="WaterTank" />
    <ref role="3pa4fh" node="6FcZ4ecQXrD" resolve="WaterTankHMI" />
  </node>
  <node concept="1N5Tt2" id="6FcZ4ecQXrC">
    <property role="TrG5h" value="WaterTank" />
  </node>
  <node concept="2q2Qt8" id="6FcZ4ecQXrD">
    <property role="TrG5h" value="WaterTankHMI" />
  </node>
  <node concept="1N5Tt2" id="6FcZ4ecQXrE" />
</model>

