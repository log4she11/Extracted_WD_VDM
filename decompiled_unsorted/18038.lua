-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18038.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 17, "��")
;
(pe.mmap_patch_va)(pevars.sigaddr + 3, "\254\255\255\127")
;
(pe.mmap_patch_va)(pevars.sigaddr + 7, "��")
;
(pe.set_regval)(pe.REG_EAX, 2147483647)
return mp.INFECTED

