-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2029.luac 

-- params : ...
-- function num : 0
if (string.len)((mp.getfilename)()) == 15 then
  return mp.INFECTED
end
return mp.CLEAN

