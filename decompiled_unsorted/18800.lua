-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18800.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 6 and (pesecs[1]).SizeOfRawData > 1310720 and (pesecs[pehdr.NumberOfSections]).SizeOfRawData > 4194304 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
return mp.CLEAN

