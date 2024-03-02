local FB_STATE = 0
local ECC_START = 0
local ECC_S2 = 1
local EO_EO1 = 0
local DO_out = 67108864

local function alg_A1(fb)
  local VAR_out = fb[DO_out]
  local VAR_v
  VAR_v = 5
  if (VAR_v &gt; 4) then
    VAR_out = true
  else
    VAR_out = false
  end
  fb[DO_out] = VAR_out

end


local function enterECC_START(fb)
  fb[FB_STATE] = ECC_START
  return true
end

local function enterECC_S2(fb)
  fb[FB_STATE] = ECC_S2
  alg_A1(fb)
  fb(EO_EO1)
  return true
end


local function transition(fb, id)
  local STATE = fb[FB_STATE]
  local VAR_out = fb[DO_out]
  if ECC_START == STATE then
    if true and true then return enterECC_S2(fb)
    else return false
    end
  elseif ECC_S2 == STATE then

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
  numEIs = 0,
  EINames = {},
  EIWith = {},
  EIWithIndexes = {},
  numEOs = 1,
  EONames = {"EO1"},
  EOWith = {},
  EOWithIndexes = {-1},
  numDIs = 0,
  DINames = {},
  DIDataTypeNames = {},
  numDOs = 1,
  DONames = {"out"},
  DODataTypeNames = {"BOOL"},
  numAdapters = 0,
  adapterInstanceDefinition = {
  }
}

local internalVarsInformation = {
  numIntVars = 0,
  intVarsNames = {},
  intVarsDataTypeNames = {}
}

return {ECC = executeEvent, interfaceSpec = interfaceSpec, internalVarsInformation = internalVarsInformation}