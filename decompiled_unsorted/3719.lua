-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3719.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 and l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_1 == "osinstallersetupd" and (string.find)(l_0_2, "/tmp", 1, true) ~= nil and (string.find)(l_0_2, "/resources", 1, true) ~= nil and (string.find)(l_0_2, "/frameworks/", 1, true) ~= nil then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

