<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE AdapterType SYSTEM "https://www.holobloc.com/xml/LibraryElement.dtd">

<AdapterType Name="Left_EA">
  <InterfaceList>
    <EventInputs>
      <Event Name="E_I" />
      <Event Name="SS_I_E" />
    </EventInputs>
    <EventOutputs>
      <Event Name="E_O" />
      <Event Name="E_O_2" />
      <Event Name="SS_O_E" />
    </EventOutputs>
    <InputVars>
      <VarDeclaration Name="D_I" Type="INT" />
      <VarDeclaration Name="D_I_2" Type="STRING" />
      <VarDeclaration Name="SS_I_D" Type="DATE" />
    </InputVars>
    <OutputVars>
      <VarDeclaration Name="D_O" Type="BOOL" />
      <VarDeclaration Name="SS_O_D" Type="DATE" />
    </OutputVars>
  </InterfaceList>
</AdapterType>

