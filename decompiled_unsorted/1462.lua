-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1462.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MIXED:CERT:EnigmaSoftware") then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 13 then
  return mp.INFECTED
end
if peattributes.amd64_image then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan_enigmasoftware")
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_enigmasoftware")
end
return mp.CLEAN

