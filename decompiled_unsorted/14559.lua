-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14559.luac 

-- params : ...
-- function num : 0
local l_0_0 = (nri.GetConnectionString)()
if l_0_0:find("DestPort=3389;", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

