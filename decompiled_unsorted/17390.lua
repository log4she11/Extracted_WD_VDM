-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17390.luac 

-- params : ...
-- function num : 0
(pe.set_regval)(pe.REG_EAX, 11)
;
(pe.set_regval)(pe.REG_ECX, 1818588270)
;
(pe.mmap_patch_va)(pevars.sigaddr + 1, "����")
return mp.INFECTED

