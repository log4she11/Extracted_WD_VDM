-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/194.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcallEx("isCurrentProcessFriendly", isCurrentProcessFriendly)
if not l_0_0 then
  reportPcallEx()
  l_0_1 = false
end
if not l_0_1 then
  return mp.CLEAN
end
return mp.INFECTED

