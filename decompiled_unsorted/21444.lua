-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21444.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr - 13, 64)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
if (mp.readu_u32)(l_0_0, 57) - 2 ~= l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (mp.readu_u32)(l_0_0, 10)
local l_0_3 = (mp.readu_u32)(l_0_0, 24)
local l_0_4 = (string.byte)(l_0_0, 19)
l_0_0 = (pe.mmap_va)(l_0_2, 4)
if (pe.get_api_id)((mp.readu_u32)(l_0_0, 1)) ~= 2185195070 then
  return mp.CLEAN
end
l_0_0 = (pe.mmap_va)(l_0_3, 4)
local l_0_5 = (pe.get_api_id)((mp.readu_u32)(l_0_0, 1))
if l_0_5 ~= 3267971814 then
  return mp.CLEAN
end
;
(pe.set_regval)(pe.REG_EBX, l_0_4)
;
(pe.mmap_patch_va)(l_0_1, "\221\a\005\000")
;
(pe.mmap_patch_va)(pevars.sigaddr, "��\144")
;
(pe.mmap_patch_va)(pevars.sigaddr + 21, "��")
return mp.INFECTED

