-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2136.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:len() < 6 then
  return mp.CLEAN
end
if (string.sub)(l_0_0, -5) == "..wsf" then
  return mp.INFECTED
end
return mp.CLEAN

