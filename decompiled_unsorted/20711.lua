-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20711.luac 

-- params : ...
-- function num : 0
if (pe.mmap_va)(pevars.sigaddr + 2, 4) == "��\004\000" or (pe.mmap_va)(pevars.sigaddr + 2, 4) == "\0005\f\000" or (pe.mmap_va)(pevars.sigaddr + 1, 1) == "\255" or (pe.mmap_va)(pevars.sigaddr + 1, 1) == "\254" then
  (pe.mmap_patch_va)(pevars.sigaddr + 6, "��")
  ;
  (pe.mmap_patch_va)(pevars.sigaddr + 11, "\235")
  ;
  (mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN

