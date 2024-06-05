local interfaceSpec = {
  numEIs = 2,
  EINames = {"event1", "event2"},
  EIWith = {},
  EIWithIndexes = {-1, -1},
  numEOs = 2,
  EONames = {"event3", "event4"},
  EOWith = {},
  EOWithIndexes = {-1, -1},
  numDIs = 2,
  DINames = {"data1", "data2"},
  DIDataTypeNames = {"BOOL", "INT"},
  numDOs = 2,
  DONames = {"data3", "data4"},
  DODataTypeNames = {"BOOL", "BOOL"}
}

return {interfaceSpec = interfaceSpec}