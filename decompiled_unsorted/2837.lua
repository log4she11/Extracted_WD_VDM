-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2837.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = {}
  l_0_1["svchsot.exe"] = true
  l_0_1["server.exe"] = true
  l_0_1["svchoet.exe"] = true
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_1[l_0_2] then
    if (string.match)(l_0_3, "c:\\windows\\.+") or (string.match)(l_0_3, "\\start menu\\programs\\startup") then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
do
  return mp.CLEAN
end

