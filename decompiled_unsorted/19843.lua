-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19843.luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:Adware:Win32/ZoomyLib.E")
if (mp.bitand)(mp.HSTR_WEIGHT, 64) > 0 and (mp.bitand)(mp.HSTR_WEIGHT, 56) > 0 and (mp.bitand)(mp.HSTR_WEIGHT, 7) > 0 then
  return mp.INFECTED
end
if not (mp.get_mpattribute)("do_exhaustivehstr_rescan") then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

