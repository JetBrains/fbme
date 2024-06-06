<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE ResourceType SYSTEM "../LibraryElement.dtd">
<ResourceType Name="EMB_RES" Comment="A Simple Embedded Resource Type" Namespace="IEC61499.Management">
  <Attribute Name="ObsoleteNamespace" Value="IEC61499.Common" />
  <Attribute Name="Runtime.Resource.ImplementingType" Value="IEC61499.Management:EMB_RES" />
  <Identification Standard="61499-1" Function="Device Management" Description="A simple embedded resource" />
  <VersionInfo Organization="Rockwell Automation" Version="0.0" Author="JHC" Date="2001-01-04" />
  <CompilerInfo header="package fb.rt;">
    <Compiler Language="Java" Vendor="IBM" Product="VisualAge" Version="3.0" />
  </CompilerInfo>
  <FBNetwork>
    <FB ID="DFB9F1A9C17FBA1C" Name="START" Type="E_RESTART" x="100" y="100" Namespace="IEC61499.Standard" />
  </FBNetwork>
</ResourceType>