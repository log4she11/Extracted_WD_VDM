-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16417.luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("lua_codepatch_obfuscator_th_1")
;
(pe.mmap_patch_va)(pevars.sigaddr + 5, "��")
return mp.SUSPICIOUS

