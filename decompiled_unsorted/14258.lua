-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14258.luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("do_deep_rescan")
;
(pe.set_peattribute)("disable_apicall_limit", true)
return mp.INFECTED

