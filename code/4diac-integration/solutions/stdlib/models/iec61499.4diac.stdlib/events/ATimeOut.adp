<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE AdapterType SYSTEM "https://www.holobloc.com/xml/LibraryElement.dtd">

<AdapterType Name="ATimeOut">
  <InterfaceList>
    <EventInputs>
      <Event Name="TimeOut" />
    </EventInputs>
    <EventOutputs>
      <Event Name="START">
        <With Var="DT" />
      </Event>
      <Event Name="STOP" />
    </EventOutputs>
    <OutputVars>
      <VarDeclaration Name="DT" Type="TIME" />
    </OutputVars>
  </InterfaceList>
</AdapterType>

