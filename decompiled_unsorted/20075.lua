-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20075.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 2, "��")
if (string.byte)((pe.mmap_va)(pevars.sigaddr + 5, 1), 1) == 157 then
  (pe.mmap_patch_va)(pevars.sigaddr + 5, "\149")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 11, "\002")
else
  ;
  (pe.mmap_patch_va)(pevars.sigaddr, "j\003Y��M")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 8, "\002")
end
return mp.INFECTED

