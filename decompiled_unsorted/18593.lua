-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18593.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 9 and (pesecs[pehdr.NumberOfSections]).Name == ".CN" and (pesecs[pevars.epsec]).SizeOfRawData >= 475136 and pevars.epsecwr == 1 then
  return mp.INFECTED
end
return mp.CLEAN

