-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17209.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections > 3 and (pesecs[2]).PointerToRawData - (pesecs[1]).SizeOfRawData >= 12288 then
  return mp.INFECTED
end
return mp.CLEAN

