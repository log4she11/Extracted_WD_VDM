-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17907.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 16, "��\144")
;
(pe.mmap_patch_va)(pevars.sigaddr + 42, "��")
;
(pe.mmap_patch_va)(pevars.sigaddr + 40, ";\203")
;
(pe.mmap_patch_va)(pevars.sigaddr + 20, "\000")
return mp.INFECTED

