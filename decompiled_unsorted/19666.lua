-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19666.luac 

-- params : ...
-- function num : 0
if (pe.get_regval)(pe.REG_EBX) ~= 2147348480 then
  return mp.CLEAN
end
if (string.byte)((pe.mmap_va)(pevars.sigaddr + 13, 1)) == 117 then
  (pe.mmap_patch_va)(pevars.sigaddr + 13, "��")
else
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 13, "\235")
end
return mp.INFECTED

