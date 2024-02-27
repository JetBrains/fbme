<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE ResourceType SYSTEM "http://www.holobloc.com/xml/LibraryElement.dtd" >
<ResourceType Name="RMT_RES" Namespace="Runtime.Management" Comment="Resource for Remote Device Management" >
  <Identification Standard="61499 ITA" Description="Resource for Remote Device Management" />
  <Attribute Name="ObsoleteNamespace" Value="nxtControl.Management" />
  <VersionInfo Organization="nxtControl GmbH" Version="0.0" Author="medusta" Date="2008-01-29" />
  <VarDeclaration Name="MGR_ID" Type="WSTRING" InitialValue="127.0.0.1:61499" Comment="Device manager socket ID" />
  <VarDeclaration Name="HMI_ID" Type="WSTRING" InitialValue="0.0.0.0:61498" Comment="HMI server socket" />
  <VarDeclaration Name="WATCH_ID" Type="WSTRING" InitialValue="0.0.0.0:61497" Comment="Watch server socket" />
  <FBNetwork >
    <FB Name="START" Type="E_RESTART" Namespace="IEC61499.Standard" x="120" y="200" />
    <FB Name="MGR_FF" Type="E_SR" Namespace="IEC61499.Standard" x="640" y="200" />
    <FB Name="SNTPCLIENT" Type="SNTPCLIENT" Namespace="Runtime.System" x="1080" y="200" />
    <FB Name="KERNEL" Type="DMKRNL" Namespace="Runtime.Management" x="1100" y="1080" />
    <FB Name="WATCHSERVER" Type="WATCHSERVER" Namespace="Runtime.Server" x="1100" y="1740" />
    <FB Name="HMISERVER" Type="HMISERVER" Namespace="Runtime.Server" x="1120" y="2340" />
    <FB Name="BROADCASTINFO" Type="BROADCASTINFO" Namespace="Runtime.Management" x="1120" y="2940" />
    <FB Name="SYSLOGLOGGER" Type="SYSLOGLOGGER" Namespace="Runtime.System" x="1120" y="3540" />
    <EventConnections>
      <Connection Source="START.COLD" Destination="MGR_FF.S" />
      <Connection Source="START.WARM" Destination="MGR_FF.S" dx1="68.875" />
      <Connection Source="START.STOP" Destination="MGR_FF.R" dx1="70" />
      <Connection Source="MGR_FF.EO" Destination="SNTPCLIENT.INIT" />
      <Connection Source="SNTPCLIENT.INITO" Destination="SYSLOGLOGGER.INIT" dx1="33.45837" dx2="20" dy="742" />
      <Connection Source="SYSLOGLOGGER.INITO" Destination="KERNEL.INIT" dx1="33.45837" dx2="20" dy="742" />
      <Connection Source="KERNEL.INITO" Destination="WATCHSERVER.INIT" dx1="31.8335" dx2="20" dy="522" />
      <Connection Source="WATCHSERVER.INITO" Destination="HMISERVER.INIT" dx1="20" dx2="40" dy="362" />
      <Connection Source="HMISERVER.INITO" Destination="BROADCASTINFO.INIT" dx1="20" dx2="40" dy="362" />
    </EventConnections>
    <DataConnections>
      <Connection Source="MGR_FF.Q" Destination="SNTPCLIENT.QI" />
      <Connection Source="MGR_FF.Q" Destination="KERNEL.QI" dx1="98.35413" />
      <Connection Source="MGR_FF.Q" Destination="WATCHSERVER.QI" dx1="98.35413" />
      <Connection Source="MGR_FF.Q" Destination="HMISERVER.QI" dx1="98.35413" />
      <Connection Source="MGR_FF.Q" Destination="BROADCASTINFO.QI" dx1="98.35413" />
      <Connection Source="MGR_FF.Q" Destination="SYSLOGLOGGER.QI" dx1="98.35413" />
      <Connection Source="MGR_ID" Destination="KERNEL.ID" dx1="233.0209" />
      <Connection Source="WATCH_ID" Destination="WATCHSERVER.MGR_ID" dx1="144.1459" />
      <Connection Source="HMI_ID" Destination="HMISERVER.MGR_ID" dx1="142.3542" />      
    </DataConnections>
    <Input Name="MGR_ID">
      <Position>
        <X>27</X>
        <Y>179</Y>
      </Position>
      <IsType>true</IsType>
    </Input>
    <Input Name="HMI_ID">
      <Position>
        <X>30</X>
        <Y>238.036469</Y>
      </Position>
      <IsType>true</IsType>
    </Input>
    <Input Name="WATCH_ID">
      <Position>
        <X>25</X>
        <Y>208.036469</Y>
      </Position>
      <IsType>true</IsType>
    </Input>
  </FBNetwork>
</ResourceType>
