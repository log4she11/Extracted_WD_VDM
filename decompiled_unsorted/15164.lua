-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15164.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 9, "��\127\a\000��\144")
;
(pe.mmap_patch_va)(pevars.sigaddr + 110, "��")
return mp.INFECTED

