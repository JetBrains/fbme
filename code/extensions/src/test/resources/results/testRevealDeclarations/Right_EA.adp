<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE AdapterType SYSTEM "https://www.holobloc.com/xml/LibraryElement.dtd">

<AdapterType Name="Right_EA">
  <InterfaceList>
    <EventInputs>
      <Event Name="E_I" />
      <Event Name="PS_O_E" />
    </EventInputs>
    <EventOutputs>
      <Event Name="E_O" />
      <Event Name="E_O_2" />
      <Event Name="PS_I_E" />
    </EventOutputs>
    <InputVars>
      <VarDeclaration Name="D_I" Type="INT" />
      <VarDeclaration Name="D_I_2" Type="STRING" />
      <VarDeclaration Name="PS_O_D" Type="INT" />
    </InputVars>
    <OutputVars>
      <VarDeclaration Name="D_O" Type="BOOL" />
      <VarDeclaration Name="PS_I_D" Type="INT" />
    </OutputVars>
  </InterfaceList>
</AdapterType>

