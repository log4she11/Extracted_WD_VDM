-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16142.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 1 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

