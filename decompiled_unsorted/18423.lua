-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18423.luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
if (mp.bitand)(mp.HSTR_WEIGHT, 240) > 0 then
  l_0_0 = 16
end
if (mp.bitand)(mp.HSTR_WEIGHT, 15) + l_0_0 >= 18 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan_prepscram")
return mp.CLEAN

