local EI_Event1 = 0
local EI_Event2 = 1
local EO_Event3 = 0
local EO_Event4 = 1
local DI_InputVar = 33554432
local DI_InputVar2 = 33554433
local DO_OutputVar = 67108864
local DO_OutputVar2 = 67108865

local interfaceSpec = {
  numEIs = 2,
  EINames = {"Event1", "Event2"},
  EIWith = {0, 255, 0, 255},
  EIWithIndexes = {0, 2},
  numEOs = 2,
  EONames = {"Event3", "Event4"},
  EOWith = {0, 255, 0, 255},
  EOWithIndexes = {0, 2},
  numDIs = 2,
  DINames = {"InputVar", "InputVar2"},
  DIDataTypeNames = {"BOOL", "BOOL"},
  numDOs = 2,
  DONames = {"OutputVar", "OutputVar2"},
  DODataTypeNames = {"BOOL", "BOOL"},
  numAdapters = 2,
  adapterInstanceDefinition = {
    {adapterNameID = "PLUG1", adapterTypeNameID = "Adapt", isPlug = true},
    {adapterNameID = "SOCKET1", adapterTypeNameID = "Adapt", isPlug = false}
  }
}

local fbnSpec = {
  internalFBs = {
    {fbNameID = "BB", fbTypeID = "BB"},
    {fbNameID = "BasicBlock", fbTypeID = "BasicBlock"}
  },
  parameters = {

  },
  eventConnections = {
    {srcID = "Event1", srcFBNum = -1, dstID = "input_event1", dstFBNum = 65537},
    {srcID = "output_event1", srcFBNum = 65537, dstID = "Event4", dstFBNum = -1},
    {srcID = "EVENT3", srcFBNum = 2, dstID = "Event3", dstFBNum = -1},
    {srcID = "EVENT4", srcFBNum = 2, dstID = "Event4", dstFBNum = -1},
    {srcID = "Event2", srcFBNum = -1, dstID = "EVENT1", dstFBNum = 2},
    {srcID = "CNF", srcFBNum = 1, dstID = "Event3", dstFBNum = -1}
  },
  fannedOutEventConnections = {
    {connectionNum = 0, dstID = "REQ", dstFBNum = 1},
    {connectionNum = 5, dstID = "output_event1", dstFBNum = 65536}
  },
  dataConnections = {
    {srcID = "InputVar2", srcFBNum = -1, dstID = "input_var", dstFBNum = 2},
    {srcID = "output_var", srcFBNum = 2, dstID = "output_data1", dstFBNum = 65536}
  },
  fannedOutDataConnections = {
    {dstID = "OutputVar2", dstFBNum = -1},
    {connectionNum = 1, dstID = "output_data3", dstFBNum = 65536}
  },
  numFBs = 2,
  numECons = 6,
  numFECons = 2,
  numDCons = 2,
  numFDCons = 2,
  numParams = 0
}

return {interfaceSpec = interfaceSpec, fbnSpec = fbnSpec}