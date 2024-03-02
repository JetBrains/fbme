local FB_STATE = 0
local ECC_START = 0
local ECC_Init = 1
local ECC_NormalOp = 2
local ECC_Initialized = 3
local ECC_DeInit = 4
local EI_INIT = 0
local EO_INITO = 0
local DI_QI = 33554432
local DO_QO = 67108864
local AEO_SOCKET1_input_event1 = 134283264
local AEO_SOCKET1_input_event2 = 134283265
local AEI_SOCKET1_output_event1 = 134283264
local AEI_SOCKET1_output_event2 = 134283265
local ADO_SOCKET1_input_data1 = 167837696
local ADO_SOCKET1_input_data2 = 167837697
local ADI_SOCKET1_output_data1 = 201392128
local ADI_SOCKET1_output_data2 = 201392129
local AEO_PLUG1_output_event1 = 134217728
local AEO_PLUG1_output_event2 = 134217729
local AEI_PLUG1_input_event1 = 134217728
local AEI_PLUG1_input_event2 = 134217729
local ADO_PLUG1_output_data1 = 167772160
local ADO_PLUG1_output_data2 = 167772161
local ADI_PLUG1_input_data1 = 201326592
local ADI_PLUG1_input_data2 = 201326593

local function alg_initialize(fb)
  local VAR_QO = fb[DO_QO]
  local VAR_QI = fb[DI_QI]
  VAR_QO = VAR_QI
  fb[DO_QO] = VAR_QO

end

local function alg_deInitialize(fb)
  local VAR_QO = fb[DO_QO]
  local VAR_SOCKET1_output_data2 = fb[ADI_SOCKET1_output_data2]
  VAR_QO = false
  VAR_SOCKET1_output_data2 = 5
  fb[DO_QO] = VAR_QO
  fb[ADI_SOCKET1_output_data2] = VAR_SOCKET1_output_data2

end

local function alg_normalOperation(fb)
  local VAR_QO = fb[DO_QO]
  local VAR_QI = fb[DI_QI]
  VAR_QO = VAR_QI
  if (true == VAR_QI) then
  end
  fb[DO_QO] = VAR_QO

end


local function enterECC_START(fb)
  fb[FB_STATE] = ECC_START
  return true
end

local function enterECC_Init(fb)
  fb[FB_STATE] = ECC_Init
  alg_initialize(fb)
  fb(EO_INITO)
  return true
end

local function enterECC_NormalOp(fb)
  fb[FB_STATE] = ECC_NormalOp
  alg_normalOperation(fb)
  return true
end

local function enterECC_Initialized(fb)
  fb[FB_STATE] = ECC_Initialized
  return true
end

local function enterECC_DeInit(fb)
  fb[FB_STATE] = ECC_DeInit
  alg_deInitialize(fb)
  fb(EO_INITO)
  return true
end


local function transition(fb, id)
  local STATE = fb[FB_STATE]
  local VAR_QI = fb[DI_QI]
  local VAR_QO = fb[DO_QO]
  local VAR_SOCKET1_input_data1 = fb[ADO_SOCKET1_input_data1]
  local VAR_SOCKET1_input_data2 = fb[ADO_SOCKET1_input_data2]
  local VAR_SOCKET1_output_data1 = fb[ADI_SOCKET1_output_data1]
  local VAR_SOCKET1_output_data2 = fb[ADI_SOCKET1_output_data2]
  local VAR_PLUG1_input_data1 = fb[ADI_PLUG1_input_data1]
  local VAR_PLUG1_input_data2 = fb[ADI_PLUG1_input_data2]
  local VAR_PLUG1_output_data1 = fb[ADO_PLUG1_output_data1]
  local VAR_PLUG1_output_data2 = fb[ADO_PLUG1_output_data2]
  if ECC_START == STATE then
   if EI_INIT == id and (true == VAR_QI) then return enterECC_Init(fb)
   else return false
   end
  elseif ECC_Init == STATE then
   if true and true then return enterECC_Initialized(fb)
   else return false
   end
  elseif ECC_NormalOp == STATE then
    if true and true then return enterECC_Initialized(fb)
    else return false
    end
  elseif ECC_Initialized == STATE then
    if true and true then return enterECC_NormalOp(fb)
    elseif EI_INIT == id and (false == VAR_QI) then return enterECC_DeInit(fb)
    else return false
    end
  elseif ECC_DeInit == STATE then
    if true and true then return enterECC_START(fb)
    else return false
    end
  else return false
  end
end

local function executeEvent(fb, id)
  local modified = transition(fb, id)
  while modified do
    modified = transition(fb, -1)
  end
end

local interfaceSpec = {
  numEIs = 1,
  EINames = {"INIT"},
  EIWith = {0, 255},
  EIWithIndexes = {0},
  numEOs = 1,
  EONames = {"INITO"},
  EOWith = {0, 255},
  EOWithIndexes = {0},
  numDIs = 1,
  DINames = {"QI"},
  DIDataTypeNames = {"BOOL"},
  numDOs = 1,
  DONames = {"QO"},
  DODataTypeNames = {"BOOL"},
  numAdapters = 2,
  adapterInstanceDefinition = {
    {adapterNameID = "PLUG1", adapterTypeNameID = "Adapt", isPlug = true},
    {adapterNameID = "SOCKET1", adapterTypeNameID = "Adapt", isPlug = false}
  }
}

local internalVarsInformation = {
  numIntVars = 0,
  intVarsNames = {},
  intVarsDataTypeNames = {}
}

return {ECC = executeEvent, interfaceSpec = interfaceSpec, internalVarsInformation = internalVarsInformation}