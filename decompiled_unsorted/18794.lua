-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18794.luac 

-- params : ...
-- function num : 0
if peattributes.no_security and pehdr.NumberOfSections == 5 and (pesecs[2]).Name == ".rdata" and (pesecs[2]).SizeOfRawData > 20480 and (pesecs[2]).SizeOfRawData < 28672 then
  return mp.INFECTED
end
return mp.CLEAN

