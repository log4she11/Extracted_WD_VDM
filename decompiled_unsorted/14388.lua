-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14388.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 3, "\001\000")
;
(pe.mmap_patch_va)(pevars.sigaddr + 66, "\001\000")
return mp.INFECTED

