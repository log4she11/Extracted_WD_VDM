-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18064.luac 

-- params : ...
-- function num : 0
if (string.byte)((pe.mmap_va)(pevars.sigaddr + 2, 1), 1) == 233 then
  (pe.mmap_patch_va)(pevars.sigaddr + 2, "����\144")
else
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 2, "��")
end
return mp.INFECTED

