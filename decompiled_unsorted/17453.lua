-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17453.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + (string.find)((pe.mmap_va)(pevars.sigaddr, 64), "I��", 1, true) + 3, "��")
return mp.INFECTED

