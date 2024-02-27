local FB_STATE = 0
local ECC_START = 0
local ECC_STOP = 1
local ECC_EVAL = 2
local ECC_EVAL2 = 3
local EI_event_input1 = 0
local EI_event_input2 = 1
local EO_event_output1 = 0
local DI_variable_input_int = 33554432
local DO_variable_output_bool = 67108864
local DO_variable_output_int = 67108865
local IN_internal_variable1 = 268435456

local function alg_algorithm1(fb)
  local VAR_variable_output_bool = fb[DO_variable_output_bool]
  local VAR_variable_output_int = fb[DO_variable_output_int]
  local VAR_delta
  VAR_delta = 4
  VAR_variable_output_bool = true
  VAR_variable_output_int = (VAR_delta + 7)
  fb[DO_variable_output_bool] = VAR_variable_output_bool
  fb[DO_variable_output_int] = VAR_variable_output_int
end

local function alg_ALG_Var2(fb)
  local VAR_variable_output_bool = fb[DO_variable_output_bool]
  local VAR_variable_output_int = fb[DO_variable_output_int]
  local VAR_tmpVar
  local VAR_tmpVar2
  VAR_tmpVar = true
  VAR_tmpVar2 = "novalue"
  VAR_variable_output_bool = false
  VAR_variable_output_int = 0
  fb[DO_variable_output_bool] = VAR_variable_output_bool
  fb[DO_variable_output_int] = VAR_variable_output_int
end

local function enterECC_START(fb)
  fb[FB_STATE] = ECC_START
  return true
end

local function enterECC_STOP(fb)
  fb[FB_STATE] = ECC_STOP
  return true
end

local function enterECC_EVAL(fb)
  fb[FB_STATE] = ECC_EVAL
  alg_algorithm1(fb)
  fb(EO_event_output1)
  return true
end

local function enterECC_EVAL2(fb)
  fb[FB_STATE] = ECC_EVAL2
  alg_ALG_Var2(fb)
  fb(EO_event_output1)
  return true
end


local function transition(fb, id)
  local STATE = fb[FB_STATE]
  local VAR_variable_input_int = fb[DI_variable_input_int]
  local VAR_variable_output_bool = fb[DO_variable_output_bool]
  local VAR_variable_output_int = fb[DO_variable_output_int]
  local VAR_internal_variable1 = fb[IN_internal_variable1]
  if ECC_START == STATE then
    if true and true then return enterECC_STOP(fb)
    elseif EI_event_input1 == id and true then return enterECC_EVAL(fb)
    elseif EI_event_input2 == id and true then return enterECC_EVAL2(fb)
    else return false
    end
  elseif ECC_STOP == STATE then

  elseif ECC_EVAL == STATE then

  elseif ECC_EVAL2 == STATE then

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
  numEIs = 2,
  EINames = {"event_input1", "event_input2"},
  EIWith = {0, 255},
  EIWithIndexes = {0, -1},
  numEOs = 1,
  EONames = {"event_output1"},
  EOWith = {0, 255},
  EOWithIndexes = {0},
  numDIs = 1,
  DINames = {"variable_input_int"},
  DIDataTypeNames = {"INT"},
  numDOs = 2,
  DONames = {"variable_output_bool", "variable_output_int"},
  DODataTypeNames = {"BOOL", "INT"},
  numAdapters = 0,
  adapterInstanceDefinition = {
  }
}

local internalVarsInformation = {
  numIntVars = 1,
  intVarsNames = {"internal_variable1"},
  intVarsDataTypeNames = {"STRING"}
}

return {ECC = executeEvent, interfaceSpec = interfaceSpec, internalVarsInformation = internalVarsInformation}
