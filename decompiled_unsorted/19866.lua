-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19866.luac 

-- params : ...
-- function num : 0
local l_0_0 = 256 - (string.byte)((pe.mmap_va)(pevars.sigaddr + 8, 1))
if (mp.readu_u32)((pe.mmap_va)((pe.get_regval)(pe.REG_EBP) - l_0_0, 4), 1) ~= 139 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 9, "\235")
return mp.INFECTED

