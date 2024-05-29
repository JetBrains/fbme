<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE AdapterType SYSTEM "https://www.holobloc.com/xml/LibraryElement.dtd">

<AdapterType Name="RouterAdapter_EA">
  <InterfaceList>
    <EventInputs>
      <Event Name="I_event1">
        <With Var="I_router" />
      </Event>
      <Event Name="I_event2">
        <With Var="I_router" />
      </Event>
      <Event Name="S_I_Event1">
        <With Var="I_router" />
      </Event>
      <Event Name="S_I_Event2">
        <With Var="I_router" />
      </Event>
    </EventInputs>
    <EventOutputs>
      <Event Name="O_event1">
        <With Var="O_router" />
      </Event>
      <Event Name="O_event2">
        <With Var="O_router" />
      </Event>
      <Event Name="S_O_Event1">
        <With Var="O_router" />
      </Event>
      <Event Name="S_O_Event2">
        <With Var="O_router" />
      </Event>
    </EventOutputs>
    <InputVars>
      <VarDeclaration Name="I_data1" Type="INT" />
      <VarDeclaration Name="I_data2" Type="INT" />
      <VarDeclaration Name="S_I_data1" Type="INT" />
      <VarDeclaration Name="S_I_data2" Type="INT" />
      <VarDeclaration Name="I_router" Type="INT" />
    </InputVars>
    <OutputVars>
      <VarDeclaration Name="O_data1" Type="INT" />
      <VarDeclaration Name="O_data2" Type="INT" />
      <VarDeclaration Name="S_O_data1" Type="INT" />
      <VarDeclaration Name="S_O_data2" Type="INT" />
      <VarDeclaration Name="O_router" Type="INT" />
    </OutputVars>
  </InterfaceList>
</AdapterType>

