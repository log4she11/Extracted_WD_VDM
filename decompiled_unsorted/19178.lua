-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19178.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  (mp.set_mpattribute)("PUA:Block:lolMiner")
  return mp.INFECTED
end
if peattributes.amd64_image then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan_lolminer")
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_lolminer")
end
return mp.CLEAN

