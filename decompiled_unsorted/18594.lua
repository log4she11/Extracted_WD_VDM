-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18594.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
if peattributes.amd64_image then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan_swiminen")
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_swiminen")
end
return mp.CLEAN

