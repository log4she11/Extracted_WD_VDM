-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2177.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2 = ((bm.get_connection_string)()):find("DestIp=(.-;)")
if l_0_2 == nil then
  return mp.CLEAN
end
l_0_2 = ";" .. l_0_2
local l_0_3 = ";91.200.85.81;109.95.210.101;"
if l_0_3:find(l_0_2, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

