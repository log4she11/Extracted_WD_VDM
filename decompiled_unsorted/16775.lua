-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16775.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and ((pesecs[1]).SizeOfRawData == 12288 or (pesecs[1]).SizeOfRawData == 16384) then
  return mp.INFECTED
end
return mp.CLEAN

