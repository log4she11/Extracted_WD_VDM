-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20441.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 3, 4)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
l_0_0 = (pe.mmap_va)(pevars.sigaddr - 11, 11)
if (mp.readu_u32)(l_0_0, 2) ~= l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (mp.readu_u32)(l_0_0, 8)
l_0_0 = (pe.mmap_va)(l_0_2, 4)
local l_0_3 = (pe.get_api_id)((mp.readu_u32)(l_0_0, 1))
if l_0_3 ~= 1269389306 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(l_0_1, "\221\a")
return mp.INFECTED

