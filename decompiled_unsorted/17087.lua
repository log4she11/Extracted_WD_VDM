-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17087.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 55, "��")
;
(pe.set_regval)(pe.REG_EAX, (pe.get_regval)(pe.REG_EAX) - 1)
return mp.LOWFI

