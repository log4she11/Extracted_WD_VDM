-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15178.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("do_exhaustivehstr_rescan") then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
;
(mp.set_mpattribute)("MpRequestSMSM")
return mp.INFECTED

