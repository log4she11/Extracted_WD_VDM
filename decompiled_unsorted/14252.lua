-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14252.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 4 and (pesecs[4]).Name == ".mdn" then
  return mp.INFECTED
end
return mp.CLEAN

