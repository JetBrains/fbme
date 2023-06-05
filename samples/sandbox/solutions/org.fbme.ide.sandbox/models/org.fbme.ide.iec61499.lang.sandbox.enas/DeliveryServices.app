<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE SubAppType SYSTEM "https://www.holobloc.com/xml/LibraryElement.dtd">

<SubAppType Name="DeliveryServices">
  <SubAppInterfaceList>
    <SubAppEventInputs>
      <SubAppEvent Name="CONFIG" />
      <SubAppEvent Name="W1W2" />
      <SubAppEvent Name="W2W3" />
      <SubAppEvent Name="W3W4" />
      <SubAppEvent Name="W3W1" />
      <SubAppEvent Name="W4W2" />
      <SubAppEvent Name="SR_SENSOR" />
      <SubAppEvent Name="S1_SENSOR" />
      <SubAppEvent Name="S2_SENSOR" />
      <SubAppEvent Name="S3_SENSOR" />
      <SubAppEvent Name="S3_DELIVERED" />
      <SubAppEvent Name="S4_SENSOR" />
      <SubAppEvent Name="S5_SENSOR" />
      <SubAppEvent Name="S5_DELIVERED" />
      <SubAppEvent Name="S6_SENSOR" />
      <SubAppEvent Name="S6_DELIVERED" />
      <SubAppEvent Name="RESET" />
    </SubAppEventInputs>
    <SubAppEventOutputs>
      <SubAppEvent Name="W1W2_DONE" />
      <SubAppEvent Name="W2W3_DONE" />
      <SubAppEvent Name="W3W4_DONE" />
      <SubAppEvent Name="W3W1_DONE" />
      <SubAppEvent Name="W4W2_DONE" />
      <SubAppEvent Name="CONFIG_FEED" />
      <SubAppEvent Name="CONFIG_REJECT" />
      <SubAppEvent Name="CONFIG_DELIVERY" />
      <SubAppEvent Name="SR_OUTPUT" />
      <SubAppEvent Name="SR_INPUT" />
      <SubAppEvent Name="S1_ON" />
      <SubAppEvent Name="S1_OFF" />
      <SubAppEvent Name="S2_ON" />
      <SubAppEvent Name="S2_OFF" />
      <SubAppEvent Name="S3_ON" />
      <SubAppEvent Name="S3_OFF" />
      <SubAppEvent Name="S3_DELIVERY" />
      <SubAppEvent Name="S4_ON" />
      <SubAppEvent Name="S4_OFF" />
      <SubAppEvent Name="S5_ON" />
      <SubAppEvent Name="S5_OFF" />
      <SubAppEvent Name="S5_DELIVERY" />
      <SubAppEvent Name="S6_ON" />
      <SubAppEvent Name="S6_OFF" />
      <SubAppEvent Name="S6_DELIVERY" />
      <SubAppEvent Name="SR_OFF" />
    </SubAppEventOutputs>
    <InputVars>
      <VarDeclaration Name="configurationID" Type="STRING" />
    </InputVars>
  </SubAppInterfaceList>
  <SubAppNetwork>
    <FB Name="W1W2_FB" Type="W1W2" x="1620" y="240" />
    <FB Name="W2W3_FB" Type="W2W3" x="1640" y="1260" />
    <FB Name="W3W4_FB" Type="W3W4" x="1660" y="1900" />
    <FB Name="W3W1_FB" Type="W3W1" x="1660" y="2640" />
    <FB Name="W4W2_FB" Type="W4W2" x="1680" y="3320" />
    <FB Name="S1_ON_MERGE" Type="E_MERGE" x="3711" y="1350" />
    <FB Name="S2_ON_MERGE" Type="E_MERGE" x="3726" y="2053" />
    <FB Name="S3_DELIVERY_MERGE" Type="E_MERGE" x="3642" y="3084" />
    <FB Name="S5_ON_MERGE" Type="E_MERGE" x="3730" y="2750" />
    <FB Name="S2_OFF_MERGE" Type="E_MERGE" x="3703" y="2434" />
    <FB Name="S1_OFF_MERGE" Type="E_MERGE" x="3719" y="1719" />
    <FB Name="S5_OFF_MERGE" Type="E_MERGE" x="4426" y="2303" />
    <DataConnections>
      <Connection Source="configurationID" Destination="W1W2_FB.configurationID" dx1="40" />
      <Connection Source="configurationID" Destination="W3W4_FB.configurationID" dx1="40" />
      <Connection Source="configurationID" Destination="W3W1_FB.configurationID" dx1="40" />
    </DataConnections>
    <EventConnections>
      <Connection Source="W1W2_FB.DONE" Destination="W1W2_DONE" dx1="30" />
      <Connection Source="W2W3_FB.DONE" Destination="W2W3_DONE" dx1="150" />
      <Connection Source="W3W4_FB.DONE" Destination="W3W4_DONE" dx1="84" />
      <Connection Source="W3W1_FB.DONE" Destination="W3W1_DONE" dx1="150" />
      <Connection Source="W4W2_FB.DONE" Destination="W4W2_DONE" dx1="230" />
      <Connection Source="W1W2_FB.S1_ON" Destination="S1_ON_MERGE.EI1" dx1="696" />
      <Connection Source="W1W2_FB.S2_ON" Destination="S2_ON_MERGE.EI1" dx1="1007" />
      <Connection Source="W1W2_FB.S3_DELIVERY" Destination="S3_DELIVERY_MERGE.EI1" dx1="346" />
      <Connection Source="W1W2_FB.SR_OUTPUT" Destination="SR_OUTPUT" dx1="326" />
      <Connection Source="W1W2_FB.REQ_CONFIG" Destination="CONFIG_FEED" dx1="223" />
      <Connection Source="CONFIG" Destination="W1W2_FB.CONFIG" dx1="63" />
      <Connection Source="CONFIG" Destination="W3W4_FB.CONFIG" dx1="263" />
      <Connection Source="CONFIG" Destination="W3W1_FB.CONFIG" dx1="263" />
      <Connection Source="W1W2" Destination="W1W2_FB.TRIGGER" dx1="40" />
      <Connection Source="W2W3" Destination="W2W3_FB.TRIGGER" dx1="40" />
      <Connection Source="W3W4" Destination="W3W4_FB.TRIGGER" dx1="40" />
      <Connection Source="W3W1" Destination="W3W1_FB.TRIGGER" dx1="40" />
      <Connection Source="W4W2" Destination="W4W2_FB.TRIGGER" dx1="40" />
      <Connection Source="S3_DELIVERED" Destination="W1W2_FB.S3_DELIVERED" dx1="47" />
      <Connection Source="S3_DELIVERED" Destination="W4W2_FB.S3_DELIVERED" dx1="107" />
      <Connection Source="S1_SENSOR" Destination="W1W2_FB.S1_SENSOR" dx1="58" />
      <Connection Source="S1_SENSOR" Destination="W4W2_FB.S1_SENSOR" dx1="178" />
      <Connection Source="S2_SENSOR" Destination="W1W2_FB.S2_SENSOR" dx1="58" />
      <Connection Source="S2_SENSOR" Destination="W4W2_FB.S2_SENSOR" dx1="178" />
      <Connection Source="SR_SENSOR" Destination="W1W2_FB.SR_SENSOR" dx1="54" />
      <Connection Source="SR_SENSOR" Destination="W3W1_FB.SR_SENSOR" dx1="174" />
      <Connection Source="S5_DELIVERED" Destination="W2W3_FB.S5_DELIVERED" dx1="47" />
      <Connection Source="S3_SENSOR" Destination="W2W3_FB.S3_SENSOR" dx1="39" />
      <Connection Source="S4_SENSOR" Destination="W2W3_FB.S4_SENSOR" dx1="39" />
      <Connection Source="S6_DELIVERED" Destination="W3W4_FB.S6_DELIVERED" dx1="47" />
      <Connection Source="S5_SENSOR" Destination="W3W4_FB.S5_SENSOR" dx1="40" />
      <Connection Source="S5_SENSOR" Destination="W3W1_FB.S5_SENSOR" dx1="40" />
      <Connection Source="S6_SENSOR" Destination="W4W2_FB.S6_SENSOR" dx1="40" />
      <Connection Source="S1_ON_MERGE.EO" Destination="S1_ON" dx1="134" />
      <Connection Source="W4W2_FB.S1_ON" Destination="S1_ON_MERGE.EI2" dx1="73" />
      <Connection Source="S2_ON_MERGE.EO" Destination="S2_ON" dx1="315" />
      <Connection Source="W4W2_FB.S2_ON" Destination="S2_ON_MERGE.EI2" dx1="442" />
      <Connection Source="W3W4_FB.S6_DELIVERY" Destination="S6_DELIVERY" dx1="50" />
      <Connection Source="W3W4_FB.S5_ON" Destination="S5_ON_MERGE.EI1" dx1="84" />
      <Connection Source="W2W3_FB.S3_ON" Destination="S3_ON" dx1="1626" />
      <Connection Source="W2W3_FB.S4_ON" Destination="S4_ON" dx1="70" />
      <Connection Source="W2W3_FB.S5_DELIVERY" Destination="S5_DELIVERY" dx1="90" />
      <Connection Source="W3W1_FB.SR_INPUT" Destination="SR_INPUT" dx1="1042" />
      <Connection Source="W3W4_FB.REQ_CONFIG" Destination="CONFIG_REJECT" dx1="223" />
      <Connection Source="W3W1_FB.REQ_CONFIG" Destination="CONFIG_DELIVERY" dx1="288" />
      <Connection Source="S3_DELIVERY_MERGE.EO" Destination="S3_DELIVERY" dx1="880" />
      <Connection Source="W4W2_FB.S3_DELIVERY" Destination="S3_DELIVERY_MERGE.EI2" dx1="538" />
      <Connection Source="S5_ON_MERGE.EO" Destination="S5_ON" dx1="376" />
      <Connection Source="W3W1_FB.S5_ON" Destination="S5_ON_MERGE.EI2" dx1="546" />
      <Connection Source="W4W2_FB.S6_ON" Destination="S6_ON" dx1="50" />
      <Connection Source="W1W2_FB.S1_OFF" Destination="S1_OFF_MERGE.EI1" dx1="61" />
      <Connection Source="W1W2_FB.S2_OFF" Destination="S2_OFF_MERGE.EI1" dx1="953" />
      <Connection Source="S1_OFF_MERGE.EO" Destination="S1_OFF" dx1="261" />
      <Connection Source="S2_OFF_MERGE.EO" Destination="S2_OFF" dx1="192" />
      <Connection Source="W4W2_FB.S2_OFF" Destination="S2_OFF_MERGE.EI2" dx1="476" />
      <Connection Source="W4W2_FB.S1_OFF" Destination="S1_OFF_MERGE.EI2" dx1="96" />
      <Connection Source="W2W3_FB.S3_OFF" Destination="S3_OFF" dx1="284" />
      <Connection Source="W2W3_FB.S4_OFF" Destination="S4_OFF" dx1="85" />
      <Connection Source="W3W4_FB.S5_OFF" Destination="S5_OFF_MERGE.EI1" dx1="96" />
      <Connection Source="S5_OFF_MERGE.EO" Destination="S5_OFF" dy="-676" dx2="153" dx1="153" />
      <Connection Source="W3W1_FB.S5_OFF" Destination="S5_OFF_MERGE.EI2" dx1="80" />
      <Connection Source="RESET" Destination="W1W2_FB.RESET" dx1="94" />
      <Connection Source="RESET" Destination="W2W3_FB.RESET" dx1="294" />
      <Connection Source="RESET" Destination="W3W4_FB.RESET" dx1="294" />
      <Connection Source="RESET" Destination="W3W1_FB.RESET" dx1="294" />
      <Connection Source="RESET" Destination="W4W2_FB.RESET" dx1="294" />
      <Connection Source="W4W2_FB.S6_OFF" Destination="S6_OFF" dx1="153" />
      <Connection Source="W1W2_FB.SR_OFF" Destination="SR_OFF" dx1="190" />
    </EventConnections>
  </SubAppNetwork>
</SubAppType>

