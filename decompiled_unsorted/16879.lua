-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16879.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("do_exhaustivehstr_64bit_rescan") then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan")
end
if mp.HSTR_WEIGHT >= 14 then
  return mp.INFECTED
end
return mp.CLEAN

