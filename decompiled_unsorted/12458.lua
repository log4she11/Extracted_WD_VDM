-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12458.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)((pe.get_regval)(pe.REG_EIP) + 21, "\000\001\000\000")
return mp.INFECTED

