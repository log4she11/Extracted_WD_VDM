-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17855.luac 

-- params : ...
-- function num : 0
if peattributes.isexe and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 6 and (mp.getfilesize)() >= 65536 and (mp.getfilesize)() <= 3145728 then
  return mp.INFECTED
end
return mp.CLEAN

