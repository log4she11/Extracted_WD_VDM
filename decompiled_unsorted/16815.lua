-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16815.luac 

-- params : ...
-- function num : 0
if peattributes.isvbnative == true and pehdr.NumberOfSections == 3 and (mp.getfilesize)() == 86016 then
  return mp.INFECTED
end
return mp.CLEAN

