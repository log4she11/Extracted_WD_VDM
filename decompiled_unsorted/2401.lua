-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2401.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_0 == nil or #l_0_0 < 15 then
  return mp.CLEAN
end
local l_0_1 = (string.match)((string.lower)(l_0_0), "^player%d%d%d%d%d.+%.hta$")
if l_0_1 == nil or #l_0_1 < 15 then
  return mp.CLEAN
end
return mp.INFECTED

