-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2847.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  local l_0_3 = (mp.getfilesize)()
  if l_0_3 > 1024 then
    return mp.CLEAN
  end
  if l_0_2:match("Security Center Update - [0-9]+.job") and l_0_1:match("C:WINDOWSTasks") then
    (mp.set_mpattribute)("LUA:SuspiciousJobFile")
  end
end
do
  return mp.CLEAN
end

