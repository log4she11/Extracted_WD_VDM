-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1024.luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:BrowserModifier:Win32/PerionSearchProtectVC32")
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
if mp.HSTR_WEIGHT >= 8 and pehdr.TimeDateStamp < 1430205845 then
  return mp.INFECTED
end
return mp.CLEAN

