local interfaceSpec = {
  numEIs = 3,
  EINames = {"input_event1", "input_event2", "input_event3"},
  EIWith = {0, 255, 1, 255},
  EIWithIndexes = {0, 2, -1},
  numEOs = 2,
  EONames = {"output_event1", "output_event2"},
  EOWith = {0, 255, 1, 2, 255},
  EOWithIndexes = {0, 2},
  numDIs = 3,
  DINames = {"input_data1", "input_data2", "input_data3"},
  DIDataTypeNames = {"WSTRING", "TIME", "BOOL"},
  numDOs = 3,
  DONames = {"output_data1", "output_data2", "output_data3"},
  DODataTypeNames = {"DWORD", "INT", "BOOL"}
}

return {interfaceSpec = interfaceSpec}