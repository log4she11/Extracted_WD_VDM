-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15897.luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
;
(pe.set_peattribute)("deep_analysis", true)
;
(pe.reemulate)()
return mp.INFECTED

