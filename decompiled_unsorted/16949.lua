-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16949.luac 

-- params : ...
-- function num : 0
if ((mp.getfilesize)() < 2048000 or (mp.getfilesize)() < 39845887 or (mp.getfilesize)() <= 40000000) and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN

