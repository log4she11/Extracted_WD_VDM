-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18570.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections > 6 and (string.find)((pesecs[5]).Name, "^%.data%d$") and (string.find)((pesecs[6]).Name, "^%.data%d$") and (pesecs[5]).Name ~= (pesecs[6]).Name then
  return mp.INFECTED
end
return mp.CLEAN

