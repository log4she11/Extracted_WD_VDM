-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17260.luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:Rogue:Win32/Winwebsec_Lowfi")
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan_winwebsec")
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
return mp.CLEAN

