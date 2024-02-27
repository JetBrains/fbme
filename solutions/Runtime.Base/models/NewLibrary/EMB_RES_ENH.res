<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE ResourceType SYSTEM "../LibraryElement.dtd">
<ResourceType Name="EMB_RES_ENH" Comment="Embedded Resource" Namespace="Runtime.Management">
  <Attribute Name="Runtime.Resource.ImplementingType" Value="Runtime.Management:EMB_RES_ENH" />
  <Identification Standard="61499-2" />
  <VersionInfo Organization="nxtControl GmbH" Version="0.0" Author="medusta" Date="2010-09-13" />
  <VarDeclaration Name="PRIO" Type="USINT" InitialValue="0" Comment="Resource event chain thread priority">
    <Attribute Name="ParameterEditor" Value="ComboBox{Enums=Normal = 0|RT Low = 1|RT High = 2}" />
  </VarDeclaration>
  <FBNetwork>
    <FB ID="2AC849E84957BF65" Name="START" Type="E_RESTART" x="120" y="200" Namespace="IEC61499.Standard" />
    <Input Name="PRIO">
      <Position>
        <X>27</X>
        <Y>179</Y>
      </Position>
      <IsType>Data</IsType>
    </Input>
  </FBNetwork>
</ResourceType>