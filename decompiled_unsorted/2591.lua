-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2591.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)) ~= "smalled.fon" then
    return mp.CLEAN
  end
  if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)) ~= "c:\\windows\\fonts" then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

