-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17560.luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("PEBMPAT:Deep_Analysis_VMM_Grow")
;
(mp.set_mpattribute)("lua_codepatch_obfuscator_tt_5")
;
(pe.mmap_patch_va)(pevars.sigaddr + 22, "��")
return mp.CLEAN

