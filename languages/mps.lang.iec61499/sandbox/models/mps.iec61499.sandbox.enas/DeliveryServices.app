<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE SubAppType SYSTEM "../LibraryElement.dtd">
<SubAppType GUID="64B9D5C1F8FAC5A9" Name="DeliveryServices" Comment="Subapplication " Namespace="Main">
  <Attribute Name="Configuration.FB.IDCounter" Value="12" />
  <Identification Standard="61499-2" />
  <VersionInfo Organization="nxtControl GmbH" Version="0.0" Author="dmidro" Date="9/26/2018" Remarks="template" />
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
    <FB ID="1" Name="W1W2_FB" Type="W1W2" x="1620" y="240" Namespace="Main" />
    <FB ID="2" Name="W2W3_FB" Type="W2W3" x="1640" y="1260" Namespace="Main" />
    <FB ID="3" Name="W3W4_FB" Type="W3W4" x="1660" y="1900" Namespace="Main" />
    <FB ID="4" Name="W3W1_FB" Type="W3W1" x="1660" y="2640" Namespace="Main" />
    <FB ID="5" Name="W4W2_FB" Type="W4W2" x="1680" y="3320" Namespace="Main" />
    <FB ID="6" Name="S1_ON_MERGE" Type="E_MERGE" x="3140" y="920" Namespace="IEC61499.Standard" />
    <FB ID="7" Name="S2_ON_MERGE" Type="E_MERGE" x="3140" y="1300" Namespace="IEC61499.Standard" />
    <FB ID="8" Name="S3_DELIVERY_MERGE" Type="E_MERGE" x="3200" y="2520" Namespace="IEC61499.Standard" />
    <FB ID="9" Name="S5_ON_MERGE" Type="E_MERGE" x="3160" y="1720" Namespace="IEC61499.Standard" />
    <FB ID="10" Name="S2_OFF_MERGE" Type="E_MERGE" x="4480" y="820" Namespace="IEC61499.Standard" />
    <FB ID="11" Name="S1_OFF_MERGE" Type="E_MERGE" x="3760" y="260" Namespace="IEC61499.Standard" />
    <FB ID="12" Name="S5_OFF_MERGE" Type="E_MERGE" x="4280" y="2180" Namespace="IEC61499.Standard" />
    <EventConnections>
      <Connection Source="W1W2_FB.DONE" Destination="W1W2_DONE" dx1="50" />
      <Connection Source="W2W3_FB.DONE" Destination="W2W3_DONE" dx1="45.646" />
      <Connection Source="W3W4_FB.DONE" Destination="W3W4_DONE" dx1="45.646" />
      <Connection Source="W3W1_FB.DONE" Destination="W3W1_DONE" dx1="40.60425" />
      <Connection Source="W4W2_FB.DONE" Destination="W4W2_DONE" dx1="45.646" />
      <Connection Source="W1W2_FB.S1_ON" Destination="S1_ON_MERGE.EI1" dx1="125.646" />
      <Connection Source="W1W2_FB.S2_ON" Destination="S2_ON_MERGE.EI1" dx1="565.646" />
      <Connection Source="W1W2_FB.S3_DELIVERY" Destination="S3_DELIVERY_MERGE.EI1" dx1="85.646" />
      <Connection Source="W1W2_FB.SR_OUTPUT" Destination="SR_OUTPUT" dx1="65.646" />
      <Connection Source="W1W2_FB.REQ_CONFIG" Destination="CONFIG_FEED" dx1="40" />
      <Connection Source="CONFIG" Destination="W1W2_FB.CONFIG" dx1="63.04175" />
      <Connection Source="CONFIG" Destination="W3W4_FB.CONFIG" dx1="263.0417" />
      <Connection Source="CONFIG" Destination="W3W1_FB.CONFIG" dx1="263.0417" />
      <Connection Source="W1W2" Destination="W1W2_FB.TRIGGER" dx1="40" />
      <Connection Source="W2W3" Destination="W2W3_FB.TRIGGER" dx1="40" />
      <Connection Source="W3W4" Destination="W3W4_FB.TRIGGER" dx1="40" />
      <Connection Source="W3W1" Destination="W3W1_FB.TRIGGER" dx1="40" />
      <Connection Source="W4W2" Destination="W4W2_FB.TRIGGER" dx1="40" />
      <Connection Source="S3_DELIVERED" Destination="W1W2_FB.S3_DELIVERED" dx1="47.20825" />
      <Connection Source="S3_DELIVERED" Destination="W4W2_FB.S3_DELIVERED" dx1="107.2084" />
      <Connection Source="S1_SENSOR" Destination="W1W2_FB.S1_SENSOR" dx1="58.04169" />
      <Connection Source="S1_SENSOR" Destination="W4W2_FB.S1_SENSOR" dx1="178.0417" />
      <Connection Source="S2_SENSOR" Destination="W1W2_FB.S2_SENSOR" dx1="58.04169" />
      <Connection Source="S2_SENSOR" Destination="W4W2_FB.S2_SENSOR" dx1="178.0417" />
      <Connection Source="SR_SENSOR" Destination="W1W2_FB.SR_SENSOR" dx1="54.5" />
      <Connection Source="SR_SENSOR" Destination="W3W1_FB.SR_SENSOR" dx1="174.5" />
      <Connection Source="S5_DELIVERED" Destination="W2W3_FB.S5_DELIVERED" dx1="47.20825" />
      <Connection Source="S3_SENSOR" Destination="W2W3_FB.S3_SENSOR" dx1="39.99994" />
      <Connection Source="S4_SENSOR" Destination="W2W3_FB.S4_SENSOR" dx1="39.99994" />
      <Connection Source="S6_DELIVERED" Destination="W3W4_FB.S6_DELIVERED" dx1="47.20825" />
      <Connection Source="S5_SENSOR" Destination="W3W4_FB.S5_SENSOR" dx1="40" />
      <Connection Source="S5_SENSOR" Destination="W3W1_FB.S5_SENSOR" dx1="40" />
      <Connection Source="S6_SENSOR" Destination="W4W2_FB.S6_SENSOR" dx1="40" />
      <Connection Source="S1_ON_MERGE.EO" Destination="S1_ON" dx1="41.54175" />
      <Connection Source="W4W2_FB.S1_ON" Destination="S1_ON_MERGE.EI2" dx1="50" />
      <Connection Source="S2_ON_MERGE.EO" Destination="S2_ON" dx1="41.54175" />
      <Connection Source="W4W2_FB.S2_ON" Destination="S2_ON_MERGE.EI2">
        <Points>
          <Points>
            <X>606.0885</X>
            <Y>900</Y>
          </Points>
          <Points>
            <X>623.5885</X>
            <Y>900</Y>
          </Points>
          <Points>
            <X>623.5885</X>
            <Y>312.5</Y>
          </Points>
          <Points>
            <X>772.5</X>
            <Y>312.5</Y>
          </Points>
          <Points>
            <X>772.5</X>
            <Y>350</Y>
          </Points>
          <Points>
            <X>780</X>
            <Y>350</Y>
          </Points>
        </Points>
      </Connection>
      <Connection Source="W3W4_FB.S6_DELIVERY" Destination="S6_DELIVERY" dx1="50" />
      <Connection Source="W3W4_FB.S5_ON" Destination="S5_ON_MERGE.EI1" dx1="50" />
      <Connection Source="W2W3_FB.S3_ON" Destination="S3_ON" dx1="50" />
      <Connection Source="W2W3_FB.S4_ON" Destination="S4_ON" dx1="70" />
      <Connection Source="W2W3_FB.S5_DELIVERY" Destination="S5_DELIVERY" dx1="90" />
      <Connection Source="W3W1_FB.SR_INPUT" Destination="SR_INPUT" dx1="90" />
      <Connection Source="W3W4_FB.REQ_CONFIG" Destination="CONFIG_REJECT" dx1="110" />
      <Connection Source="W3W1_FB.REQ_CONFIG" Destination="CONFIG_DELIVERY" dx1="110" />
      <Connection Source="S3_DELIVERY_MERGE.EO" Destination="S3_DELIVERY" dx1="40" dx2="40" dy="-0.07275391" />
      <Connection Source="W4W2_FB.S3_DELIVERY" Destination="S3_DELIVERY_MERGE.EI2" dx1="90" />
      <Connection Source="S5_ON_MERGE.EO" Destination="S5_ON" dx1="41.54175" />
      <Connection Source="W3W1_FB.S5_ON" Destination="S5_ON_MERGE.EI2" dx1="80.60425" />
      <Connection Source="W4W2_FB.S6_ON" Destination="S6_ON" dx1="50" />
      <Connection Source="W1W2_FB.S1_OFF" Destination="S1_OFF_MERGE.EI1" dx1="90" />
      <Connection Source="W1W2_FB.S2_OFF" Destination="S2_OFF_MERGE.EI1" dx1="1085.646" />
      <Connection Source="S1_OFF_MERGE.EO" Destination="S1_OFF" dx1="41.5415" />
      <Connection Source="S2_OFF_MERGE.EO" Destination="S2_OFF" dx1="41.5415" />
      <Connection Source="W4W2_FB.S2_OFF" Destination="S2_OFF_MERGE.EI2">
        <Points>
          <Points>
            <X>606.0885</X>
            <Y>915</Y>
          </Points>
          <Points>
            <X>633.5885</X>
            <Y>915</Y>
          </Points>
          <Points>
            <X>633.5885</X>
            <Y>657.5</Y>
          </Points>
          <Points>
            <X>777.5</X>
            <Y>657.5</Y>
          </Points>
          <Points>
            <X>777.5</X>
            <Y>517.5</Y>
          </Points>
          <Points>
            <X>867.5</X>
            <Y>517.5</Y>
          </Points>
          <Points>
            <X>867.5</X>
            <Y>427.5</Y>
          </Points>
          <Points>
            <X>962.5</X>
            <Y>427.5</Y>
          </Points>
          <Points>
            <X>962.5</X>
            <Y>230</Y>
          </Points>
          <Points>
            <X>1115</X>
            <Y>230</Y>
          </Points>
        </Points>
      </Connection>
      <Connection Source="W4W2_FB.S1_OFF" Destination="S1_OFF_MERGE.EI2" dx1="90" />
      <Connection Source="W2W3_FB.S3_OFF" Destination="S3_OFF">
        <Points>
          <Points>
            <X>596.0885</X>
            <Y>340</Y>
          </Points>
          <Points>
            <X>622.5</X>
            <Y>340</Y>
          </Points>
          <Points>
            <X>622.5</X>
            <Y>407.5</Y>
          </Points>
          <Points>
            <X>862.5</X>
            <Y>407.5</Y>
          </Points>
          <Points>
            <X>862.5</X>
            <Y>349.963531</Y>
          </Points>
          <Points>
            <X>983.8698</X>
            <Y>349.963531</Y>
          </Points>
        </Points>
      </Connection>
      <Connection Source="W2W3_FB.S4_OFF" Destination="S4_OFF" dx1="85.646" />
      <Connection Source="W3W4_FB.S5_OFF" Destination="S5_OFF_MERGE.EI1" dx1="105.646" />
      <Connection Source="S5_OFF_MERGE.EO" Destination="S5_OFF" dx1="41.5415" />
      <Connection Source="W3W1_FB.S5_OFF" Destination="S5_OFF_MERGE.EI2" dx1="90" />
      <Connection Source="RESET" Destination="W1W2_FB.RESET" dx1="94.875" />
      <Connection Source="RESET" Destination="W2W3_FB.RESET" dx1="294.875" />
      <Connection Source="RESET" Destination="W3W4_FB.RESET" dx1="294.875" />
      <Connection Source="RESET" Destination="W3W1_FB.RESET" dx1="294.875" />
      <Connection Source="RESET" Destination="W4W2_FB.RESET" dx1="294.875" />
      <Connection Source="W4W2_FB.S6_OFF" Destination="S6_OFF" dx1="165.646" />
      <Connection Source="W1W2_FB.SR_OFF" Destination="SR_OFF" dx1="190" />
    </EventConnections>
    <DataConnections>
      <Connection Source="configurationID" Destination="W1W2_FB.configurationID" dx1="40" />
      <Connection Source="configurationID" Destination="W3W4_FB.configurationID" dx1="40" />
      <Connection Source="configurationID" Destination="W3W1_FB.configurationID" dx1="40" />
    </DataConnections>
    <Input Name="configurationID" x="540.0729" y="952" Type="Data" />
    <Input Name="CONFIG" x="553.0416" y="891.5626" Type="Event" />
    <Input Name="W1W2" x="558.8125" y="451.5625" Type="Event" />
    <Input Name="W2W3" x="598.8125" y="1271.562" Type="Event" />
    <Input Name="W3W4" x="598.8125" y="1911.562" Type="Event" />
    <Input Name="W3W1" x="598.8125" y="2651.562" Type="Event" />
    <Input Name="W4W2" x="638.8125" y="3331.562" Type="Event" />
    <Input Name="S3_DELIVERED" x="557.2084" y="511.5626" Type="Event" />
    <Input Name="S1_SENSOR" x="548.0417" y="571.5626" Type="Event" />
    <Input Name="S2_SENSOR" x="548.0417" y="631.5626" Type="Event" />
    <Input Name="SR_SENSOR" x="544.5" y="691.5626" Type="Event" />
    <Input Name="S5_DELIVERED" x="597.2084" y="1331.562" Type="Event" />
    <Input Name="S3_SENSOR" x="588.0417" y="1391.562" Type="Event" />
    <Input Name="S4_SENSOR" x="588.0417" y="1451.562" Type="Event" />
    <Input Name="S6_DELIVERED" x="597.2084" y="1971.562" Type="Event" />
    <Input Name="S5_SENSOR" x="608.0417" y="2031.562" Type="Event" />
    <Input Name="S6_SENSOR" x="628.0417" y="3391.562" Type="Event" />
    <Input Name="RESET" x="544.875" y="751.8542" Type="Event" />
    <Output Name="W1W2_DONE" x="2900" y="191.8542" Type="Event" />
    <Output Name="W2W3_DONE" x="2640" y="1451.562" Type="Event" />
    <Output Name="W3W4_DONE" x="2640" y="2031.562" Type="Event" />
    <Output Name="W3W1_DONE" x="2660" y="2651.562" Type="Event" />
    <Output Name="W4W2_DONE" x="2694.365" y="3571.416" Type="Event" />
    <Output Name="S1_ON" x="3520" y="911.5626" Type="Event" />
    <Output Name="S2_ON" x="3520" y="1311.562" Type="Event" />
    <Output Name="S3_DELIVERY" x="3540" y="2531.562" Type="Event" />
    <Output Name="SR_OUTPUT" x="3466.896" y="691.5626" Type="Event" />
    <Output Name="CONFIG_FEED" x="3455.042" y="751.4168" Type="Event" />
    <Output Name="S6_DELIVERY" x="2632.615" y="1971.562" Type="Event" />
    <Output Name="S5_ON" x="3540" y="1731.562" Type="Event" />
    <Output Name="S3_ON" x="2606.135" y="1271.562" Type="Event" />
    <Output Name="S4_ON" x="2606.135" y="1331.562" Type="Event" />
    <Output Name="S5_DELIVERY" x="2612.615" y="1391.562" Type="Event" />
    <Output Name="SR_INPUT" x="2650.594" y="2771.562" Type="Event" />
    <Output Name="CONFIG_REJECT" x="3415.042" y="2091.416" Type="Event" />
    <Output Name="CONFIG_DELIVERY" x="3415.042" y="2831.416" Type="Event" />
    <Output Name="S6_ON" x="2706.135" y="3331.562" Type="Event" />
    <Output Name="S1_OFF" x="4280" y="291.8542" Type="Event" />
    <Output Name="S2_OFF" x="4880" y="831.8542" Type="Event" />
    <Output Name="S3_OFF" x="3935.479" y="1371.854" Type="Event" />
    <Output Name="S4_OFF" x="3995.479" y="1631.854" Type="Event" />
    <Output Name="S5_OFF" x="4720" y="2211.854" Type="Event" />
    <Output Name="S6_OFF" x="2835.479" y="3431.854" Type="Event" />
    <Output Name="SR_OFF" x="3011.938" y="592" Type="Event" />
  </SubAppNetwork>
</SubAppType>