-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16764.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 148000 and (mp.getfilesize)() < 162000 and epcode[1] == 232 and epcode[6] == 233 then
  return mp.INFECTED
end
return mp.CLEAN

