-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17388.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.find)((pe.mmap_va)(pevars.sigaddr, 64), "\187\000\000\002\000", 1, true) - 1
;
(pe.mmap_patch_va)(pevars.sigaddr + l_0_0, "����\144")
return mp.INFECTED

