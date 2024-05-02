<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE AdapterType SYSTEM "https://www.holobloc.com/xml/LibraryElement.dtd">

<AdapterType Name="Right_EA">
  <InterfaceList>
    <EventInputs>
      <Event Name="I_event1" />
      <Event Name="I_event2" />
      <Event Name="P_O_Event1" />
      <Event Name="P_O_Event2" />
    </EventInputs>
    <EventOutputs>
      <Event Name="O_event1" />
      <Event Name="O_event2" />
      <Event Name="P_I_Event1" />
      <Event Name="P_I_Event2" />
    </EventOutputs>
    <InputVars>
      <VarDeclaration Name="I_data1" Type="INT" />
      <VarDeclaration Name="I_data2" Type="INT" />
      <VarDeclaration Name="P_O_data1" Type="INT" />
      <VarDeclaration Name="P_O_data2" Type="INT" />
    </InputVars>
    <OutputVars>
      <VarDeclaration Name="O_data1" Type="INT" />
      <VarDeclaration Name="O_data2" Type="INT" />
      <VarDeclaration Name="P_I_data1" Type="INT" />
      <VarDeclaration Name="P_I_data2" Type="INT" />
    </OutputVars>
  </InterfaceList>
</AdapterType>

