-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17440.luac 

-- params : ...
-- function num : 0
if peattributes.isvbnative == true and (mp.getfilesize)() >= 102400 and (mp.getfilesize)() <= 1536000 and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN

