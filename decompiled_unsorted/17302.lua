-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17302.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and pehdr.NumberOfSections == 5 and (mp.getfilesize)() >= 65536 and (mp.getfilesize)() <= 1048576 then
  return mp.INFECTED
end
return mp.CLEAN

