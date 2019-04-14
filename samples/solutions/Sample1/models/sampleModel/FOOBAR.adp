<?xml version = "1.0" encoding = "utf-8"?>
<!DOCTYPE AdapterType SYSTEM 'LibraryElement.dtd'>
<AdapterType Name="FOOBAR">
  <Identification Standard="61499-2" />
  <InterfaceList>
    <EventInputs>
      <Event Name="FOO">
        <With Var="D" />
      </Event>
    </EventInputs>
    <EventOutputs>
      <Event Name="BAR">
        <With Var="X" />
      </Event>
    </EventOutputs>
    <InputVars>
      <VarDeclaration Name="D" Type="BOOL" />
    </InputVars>
    <OutputVars>
      <VarDeclaration Name="X" Type="BOOL" />
    </OutputVars>
  </InterfaceList>
</AdapterType>